uint64_t sub_1D27B8AE8()
{
  type metadata accessor for PromptView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E68);
  return sub_1D28742B8();
}

uint64_t sub_1D27B8B6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E00);
  sub_1D2877618();
  swift_getKeyPath();
  sub_1D27B9E38(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719D8();

  sub_1D2877618();
  sub_1D27A11B4(0);
}

uint64_t sub_1D27B8C94(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E00);
  sub_1D2877618();
  sub_1D27A8294(v2 == 0);
}

uint64_t sub_1D27B8CF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E00);
  sub_1D2877618();
  sub_1D2877618();
  v3 = v7;
  swift_getKeyPath();
  v7 = v3;
  sub_1D27B9E38(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__prompt;
  swift_beginAccess();
  sub_1D22BD1D0(v3 + v4, v2, &qword_1EC6E1D50);

  sub_1D27A85F4();

  return sub_1D22BD238(v2, &qword_1EC6E1D50);
}

void sub_1D27B8E84()
{
  v0 = sub_1D23C7CA8();
  v1 = sub_1D2878068();
  v8 = sub_1D2878068();
  v2 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  if (*(v0 + 48))
  {
    sub_1D2870F68();
    v3 = sub_1D2878068();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E8054(v3, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  v5 = sub_1D2878068();
  v6 = sub_1D2418030(v2);

  if (v6)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22ED23C();
    sub_1D27B9E38(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
    v7 = sub_1D2877E78();
  }

  else
  {
    v7 = 0;
  }

  [objc_opt_self() asyncSendSignal:v8 toChannel:v1 withNullableUniqueStringID:v5 withPayload:v7];
}

uint64_t sub_1D27B9064()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E00);
  sub_1D2877618();
  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingConfirmed) == 1)
  {
    *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingConfirmed) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D27B9E38(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D27B91BC(uint64_t a1)
{
  v2 = type metadata accessor for PhotoSharingConfirmationParams(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D27B9218()
{
  result = qword_1ED89D958;
  if (!qword_1ED89D958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1E30);
    sub_1D27B92D4();
    sub_1D27B9E38(qword_1ED89E730, type metadata accessor for PhotoSharingConfirmationViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D958);
  }

  return result;
}

unint64_t sub_1D27B92D4()
{
  result = qword_1ED89DB20;
  if (!qword_1ED89DB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1E28);
    sub_1D27B9360();
    sub_1D26B5C4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DB20);
  }

  return result;
}

unint64_t sub_1D27B9360()
{
  result = qword_1ED89DE10;
  if (!qword_1ED89DE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1E20);
    sub_1D27B93EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DE10);
  }

  return result;
}

unint64_t sub_1D27B93EC()
{
  result = qword_1ED8A3A08[0];
  if (!qword_1ED8A3A08[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1E18);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8A3A08);
  }

  return result;
}

uint64_t sub_1D27B9450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D27B94B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D27B954C(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for PromptView();

  return sub_1D27B8C94(a1, a2);
}

unint64_t sub_1D27B95CC()
{
  result = qword_1ED89DA48;
  if (!qword_1ED89DA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1E58);
    sub_1D27B9658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DA48);
  }

  return result;
}

unint64_t sub_1D27B9658()
{
  result = qword_1ED89DCA0;
  if (!qword_1ED89DCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1E50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1E40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1E38);
    sub_1D28740A8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1E30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1E08);
    sub_1D27B9218();
    sub_1D27B9820(&qword_1ED8A1E18, sub_1D27B5BB8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DCA0);
  }

  return result;
}

uint64_t sub_1D27B9820(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1E08);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D27B9898()
{
  type metadata accessor for PromptView();

  return sub_1D27B8CF4();
}

unint64_t sub_1D27B9918()
{
  result = qword_1ED8A6CD0;
  if (!qword_1ED8A6CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6E1D40);
    sub_1D27B9E38(&qword_1ED8A6CE0, MEMORY[0x1E6968848]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A6CD0);
  }

  return result;
}

uint64_t sub_1D27B99CC()
{
  type metadata accessor for PromptView();

  return sub_1D27B8AE8();
}

uint64_t objectdestroyTm_36()
{
  v1 = type metadata accessor for PromptView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E00);
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1D2875E18();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v2 + v4, 1, v5))
    {
      (*(v6 + 8))(v2 + v4, v5);
    }
  }

  else
  {
  }

  v7 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBE98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D2874E88();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  sub_1D22EE66C(*(v2 + v1[7]), *(v2 + v1[7] + 8));
  v9 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1D2874438();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  v11 = v1[9];
  v12 = sub_1D2874E88();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v2 + v11, 1, v12))
  {
    (*(v13 + 8))(v2 + v11, v12);
  }

  return swift_deallocObject();
}

uint64_t sub_1D27B9DB8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PromptView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1D27B9E38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D27B9E98(void *a1)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v39 - v9;
  v11 = MEMORY[0x1D38A3810](a1, v8);
  if (v11 != sub_1D2873CE8())
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = sub_1D2878138();
  v15 = xpc_dictionary_get_value(a1, (v14 + 32));

  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = MEMORY[0x1D38A3810](v15);
  if (sub_1D2873CD8() == v16)
  {
    v31 = sub_1D2878138();
    string = xpc_dictionary_get_string(a1, (v31 + 32));

    if (string)
    {
      v33 = sub_1D28781E8();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1D287F500;
      *(v12 + 32) = v33;
      *(v12 + 40) = v35;
      swift_unknownObjectRelease();
      return v12;
    }

    sub_1D28726D8();
    v36 = sub_1D2873CA8();
    v37 = sub_1D2878A18();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1D226E000, v36, v37, "Failed to retrieve string value for country policy.", v38, 2u);
      MEMORY[0x1D38A3520](v38, -1, -1);
    }

    (*(v4 + 8))(v10, v3);
    goto LABEL_28;
  }

  if (sub_1D2873CC8() != v16)
  {
LABEL_28:
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  result = xpc_array_get_count(v15);
  if ((result & 0x8000000000000000) == 0)
  {
    v18 = result;
    v42 = v15;
    v39[1] = v1;
    if (result)
    {
      v41 = v3;
      v19 = 0;
      v20 = (v4 + 8);
      v12 = MEMORY[0x1E69E7CC0];
      *&v17 = 134217984;
      v40 = v17;
      do
      {
        v21 = v19;
        while (1)
        {
          if (v21 >= v18)
          {
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          v19 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_32;
          }

          if (xpc_array_get_string(v42, v21))
          {
            break;
          }

          sub_1D28726D8();
          v22 = sub_1D2873CA8();
          v23 = sub_1D2878A18();
          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            *v24 = v40;
            *(v24 + 4) = v21;
            _os_log_impl(&dword_1D226E000, v22, v23, "Failed to retrieve country policy at index [%ld]", v24, 0xCu);
            MEMORY[0x1D38A3520](v24, -1, -1);
          }

          result = (*v20)(v6, v41);
          ++v21;
          if (v19 == v18)
          {
            goto LABEL_30;
          }
        }

        v25 = sub_1D28781E8();
        v27 = v26;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D27CC674(0, *(v12 + 16) + 1, 1, v12);
          v12 = result;
        }

        v29 = *(v12 + 16);
        v28 = *(v12 + 24);
        if (v29 >= v28 >> 1)
        {
          result = sub_1D27CC674((v28 > 1), v29 + 1, 1, v12);
          v12 = result;
        }

        *(v12 + 16) = v29 + 1;
        v30 = v12 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
      }

      while (v19 != v18);
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

LABEL_30:
    swift_unknownObjectRelease();
    return v12;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1D27BA2D4()
{
  v29 = *MEMORY[0x1E69E9840];
  v0 = sub_1D2873CB8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v27 = 0;
  v28 = 0;
  domain_answer = os_eligibility_get_domain_answer();
  v12 = v28;
  if (v27 == 4)
  {
    v13 = domain_answer;
    if (domain_answer == sub_1D2874198())
    {
      if (v12)
      {
        v14 = swift_unknownObjectRetain();
        v24 = sub_1D27B9E98(v14);
        swift_unknownObjectRelease_n();
        return v24;
      }

      sub_1D28726D8();
      v21 = sub_1D2873CA8();
      v22 = sub_1D2878A08();
      if (!os_log_type_enabled(v21, v22))
      {

        (*(v1 + 8))(v9, v0);
        return MEMORY[0x1E69E7CC0];
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D226E000, v21, v22, "No context found with country policy.", v23, 2u);
      MEMORY[0x1D38A3520](v23, -1, -1);

      (*(v1 + 8))(v9, v0);
    }

    else
    {
      sub_1D28726D8();
      v18 = sub_1D2873CA8();
      v19 = sub_1D2878A08();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 67240192;
        *(v20 + 4) = v13;
        _os_log_impl(&dword_1D226E000, v18, v19, "Unable to read country policy, status: %{public}d", v20, 8u);
        MEMORY[0x1D38A3520](v20, -1, -1);
      }

      (*(v1 + 8))(v6, v0);
    }
  }

  else
  {
    sub_1D28726D8();
    v15 = sub_1D2873CA8();
    v16 = sub_1D2878A08();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D226E000, v15, v16, "AI not available. Cannot get country policy.", v17, 2u);
      MEMORY[0x1D38A3520](v17, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }

  swift_unknownObjectRelease();
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D27BA78C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
  v1 = sub_1D2878068();
  [v0 setString_];

  sub_1D2878958();
  return 0;
}

uint64_t sub_1D27BA86C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (__OFADD__(*a4, 1))
  {
    __break(1u);
  }

  else
  {
    ++*a4;
    return 1;
  }

  return result;
}

uint64_t sub_1D27BA888()
{
  v1 = *(v0 + 16);
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v1;
    return 1;
  }

  return result;
}

unint64_t sub_1D27BA8BC()
{
  result = qword_1EC6E1E70;
  if (!qword_1EC6E1E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1E70);
  }

  return result;
}

uint64_t type metadata accessor for ImagePlaygroundStyleEntity()
{
  result = qword_1EC6E1ED0;
  if (!qword_1EC6E1ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D27BAA20()
{
  result = qword_1EC6E1E90;
  if (!qword_1EC6E1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1E90);
  }

  return result;
}

uint64_t sub_1D27BAA80()
{
  v0 = sub_1D2872008();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ImagePlaygroundStyleEntity();
  __swift_allocate_value_buffer(v4, qword_1EC6E3FA0);
  v5 = __swift_project_value_buffer(v4, qword_1EC6E3FA0);
  MEMORY[0x1D389AA70]();
  return (*(v1 + 32))(v5, v3, v0);
}

uint64_t sub_1D27BAB78@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDB00);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v37 = &v33 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD958);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_1D2870EB8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1D2870EE8();
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v33 - v15;
  v17 = sub_1D28714E8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v33 - v22;
  sub_1D27BB0D4();
  sub_1D28714C8();
  sub_1D24DD48C(v16);
  v24 = type metadata accessor for PlaygroundImage();
  if ((*(*(v24 - 8) + 48))(v16, 1, v24) == 1)
  {
    sub_1D22BD238(v16, &unk_1EC6DE5A0);
  }

  else
  {
    v34 = v10;
    v25 = sub_1D2873AA8();
    (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
    v26 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v13);
    v28 = v27;
    sub_1D22BD238(v13, &qword_1EC6DAE70);
    sub_1D23D4DFC(v16);
    if (v28 >> 60 != 15)
    {
      sub_1D22D6CF8(v26, v28);
      sub_1D2870EA8();
      v33 = v26;
      v29 = v34;
      sub_1D2870EC8();
      (*(v18 + 16))(v20, v23, v17);
      (*(v18 + 56))(v5, 1, 1, v17);
      v31 = v36;
      v30 = v37;
      (*(v8 + 16))(v37, v29, v36);
      (*(v8 + 56))(v30, 0, 1, v31);
      sub_1D2870EF8();
      sub_1D22D6D4C(v33, v28);
      (*(v8 + 8))(v29, v31);
      return (*(v18 + 8))(v23, v17);
    }
  }

  (*(v18 + 16))(v20, v23, v17);
  (*(v18 + 56))(v5, 1, 1, v17);
  (*(v8 + 56))(v37, 1, 1, v36);
  sub_1D2870EF8();
  return (*(v18 + 8))(v23, v17);
}

uint64_t sub_1D27BB0D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - v4;
  v6 = sub_1D2871F38();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v14 - 8);
  if ((sub_1D2871F78() & 1) == 0)
  {
    return sub_1D24DCFF0();
  }

  sub_1D2877FE8();
  sub_1D28718C8();
  v15 = sub_1D28780E8();
  v17 = v16;
  if (sub_1D24DCFF0() == v15 && v18 == v17)
  {

LABEL_11:
    sub_1D2871F58();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1D22BD238(v5, &qword_1EC6D9D58);
      return 0;
    }

    else
    {
      (*(v7 + 32))(v12, v5, v6);
      v25 = sub_1D2871ED8();
      (*(v7 + 8))(v12, v6);
      return v25;
    }
  }

  v20 = sub_1D2879618();

  if (v20)
  {
    goto LABEL_11;
  }

  v29 = sub_1D24DCFF0();
  v30 = v21;
  MEMORY[0x1D38A0C50](10272, 0xE200000000000000);
  sub_1D2871F58();
  if ((*(v7 + 48))(v2, 1, v6) == 1)
  {
    sub_1D22BD238(v2, &qword_1EC6D9D58);
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  else
  {
    (*(v7 + 32))(v9, v2, v6);
    v26 = sub_1D2871ED8();
    v23 = v27;
    (*(v7 + 8))(v9, v6);
    v22 = v26;
  }

  MEMORY[0x1D38A0C50](v22, v23);

  MEMORY[0x1D38A0C50](41, 0xE100000000000000);
  return v29;
}

uint64_t sub_1D27BB55C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D2871F98();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D27BB5A4()
{
  result = qword_1EC6E1EB8;
  if (!qword_1EC6E1EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1EB8);
  }

  return result;
}

uint64_t sub_1D27BB608(uint64_t a1)
{
  v2 = sub_1D27BB7A4(&qword_1EC6DD978);

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1D27BB6A8(uint64_t a1)
{
  v2 = sub_1D27BB7A4(&qword_1EC6E1EB0);

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t sub_1D27BB738()
{
  result = sub_1D2872008();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D27BB7A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ImagePlaygroundStyleEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for CameraPickerView()
{
  result = qword_1ED8A35F0;
  if (!qword_1ED8A35F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D27BB864()
{
  sub_1D27BB940(319, &qword_1ED89D088, &unk_1EC6DE5A0, &unk_1D287F0E0, MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    sub_1D27BB940(319, &qword_1ED89DFB8, &unk_1EC6E15F0, &unk_1D28A2D00, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D27BB940(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D27BB9A4(uint64_t a1)
{
  result = sub_1D27BBF70(qword_1ED8A3600);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D27BBA1C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2875628();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BC8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for CameraPickerView();
  sub_1D22BD1D0(v1 + *(v10 + 20), v9, &qword_1EC6D9BC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1D27BBFB4(v9, a1);
  }

  sub_1D2878A28();
  v12 = sub_1D28762E8();
  sub_1D2873BE8();

  sub_1D2875618();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

id sub_1D27BBBF4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCAD0]) init];
  [v0 setSourceType_];
  [v0 setCameraDevice_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1EF0);
  sub_1D28762D8();
  [v0 setDelegate_];

  return v0;
}

uint64_t sub_1D27BBC98@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E15F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1600);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  sub_1D22BD1D0(v1, &v13 - v7, &unk_1EC6E1600);
  sub_1D27BBA1C(v5);
  v9 = type metadata accessor for CameraPickerCoordinator();
  v10 = objc_allocWithZone(v9);
  sub_1D22BD1D0(v8, v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal23CameraPickerCoordinator__selectedImage, &unk_1EC6E1600);
  sub_1D22BD1D0(v5, v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal23CameraPickerCoordinator__presentationMode, &unk_1EC6E15F0);
  v13.receiver = v10;
  v13.super_class = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  sub_1D22BD238(v5, &unk_1EC6E15F0);
  result = sub_1D22BD238(v8, &unk_1EC6E1600);
  *a1 = v11;
  return result;
}

uint64_t sub_1D27BBE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D27BBF70(&qword_1EC6E1EE8);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1D27BBEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D27BBF70(&qword_1EC6E1EE8);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1D27BBF2C()
{
  sub_1D27BBF70(&qword_1EC6E1EE8);
  sub_1D2876218();
  __break(1u);
}

uint64_t sub_1D27BBF70(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CameraPickerView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D27BBFB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E15F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D27BC024()
{
  result = type metadata accessor for PromptTextField();
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

uint64_t sub_1D27BC0C0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1D2878838();
  if (!v19)
  {
    return sub_1D2878458();
  }

  v41 = v19;
  v45 = sub_1D2879298();
  v32 = sub_1D28792A8();
  sub_1D2879248();
  result = sub_1D2878818();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1D28788B8();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1D2879288();
      result = sub_1D2878878();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D27BC4E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_1D2870F78();
  v3(a2);
}

void sub_1D27BC534()
{
  type metadata accessor for PromptText();
  sub_1D2877538();

  JUMPOUT(0x1D389FF60);
}

id sub_1D27BC580(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v100 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v107 = &v84 - v6;
  v7 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v106 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v105 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2874158();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v104 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D2873FA8();
  v102 = *(v13 - 8);
  v103 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D2878EA8();
  v16 = *(v15 - 8);
  v109 = v15;
  v110 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v84 - v19;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F20);
  MEMORY[0x1EEE9AC00](v95);
  v22 = &v84 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F28);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v108 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v94 = &v84 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v84 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v84 - v31;
  v33 = sub_1D28740A8();
  v34 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v35 = v2 + *(a2 + 32);
  v96 = *(a2 + 16);
  v36 = sub_1D27BD2B8(v35);
  v97 = v37;
  v98 = v36;
  v38 = sub_1D2873F48();
  v99 = objc_opt_self();
  v39 = [v99 labelColor];
  [v38 setTintColor_];

  v40 = (v3 + *(a2 + 36));
  if (v40[1])
  {
    v87 = v40[1];
    v91 = v20;
    v92 = a2;
    v93 = v3;
    v84 = *v40;
    v89 = v34;
    v41 = sub_1D2873F48();
    sub_1D2878EC8();

    v90 = v33;
    sub_1D2874008();
    v43 = v109;
    v42 = v110;
    v44 = *(v110 + 56);
    v86 = v110 + 56;
    v85 = v44;
    v44(v29, 0, 1, v109);
    v45 = *(v95 + 48);
    sub_1D22BD1D0(v32, v22, &qword_1EC6E1F28);
    sub_1D22BD1D0(v29, &v22[v45], &qword_1EC6E1F28);
    v46 = *(v42 + 48);
    if (v46(v22, 1, v43) == 1)
    {
      sub_1D22BD238(v29, &qword_1EC6E1F28);
      sub_1D22BD238(v32, &qword_1EC6E1F28);
      v47 = v46(&v22[v45], 1, v43);
      v48 = v93;
      a2 = v92;
      if (v47 == 1)
      {
        sub_1D22BD238(v22, &qword_1EC6E1F28);
        v20 = v91;
        v3 = v48;
        v34 = v89;
LABEL_9:
        sub_1D2878E28();
        v51 = a2;
        v52 = sub_1D2878068();
        v53 = [objc_opt_self() _systemImageNamed_];

        sub_1D2878E88();
        v54 = v88;
        sub_1D2874008();
        sub_1D2878E08();
        v55 = v110;
        v56 = *(v110 + 8);
        v57 = v54;
        v58 = v109;
        v56(v57, v109);
        sub_1D2878E18();
        v59 = sub_1D2873F48();
        v60 = *(v55 + 16);
        v61 = v108;
        v60(v108, v20, v58);
        v85(v61, 0, 1, v58);
        sub_1D2878ED8();

        a2 = v51;
        v56(v20, v58);
        goto LABEL_10;
      }
    }

    else
    {
      v49 = v94;
      sub_1D22BD1D0(v22, v94, &qword_1EC6E1F28);
      if (v46(&v22[v45], 1, v43) != 1)
      {
        v20 = v91;
        (*(v42 + 32))(v91, &v22[v45], v43);
        sub_1D27C2FC8(&qword_1ED89CC28, MEMORY[0x1E69DC598]);
        LODWORD(v95) = sub_1D2877F98();
        v50 = *(v42 + 8);
        v50(v20, v43);
        sub_1D22BD238(v29, &qword_1EC6E1F28);
        sub_1D22BD238(v32, &qword_1EC6E1F28);
        v50(v49, v43);
        sub_1D22BD238(v22, &qword_1EC6E1F28);
        v3 = v93;
        a2 = v92;
        v34 = v89;
        if ((v95 & 1) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      sub_1D22BD238(v29, &qword_1EC6E1F28);
      sub_1D22BD238(v32, &qword_1EC6E1F28);
      (*(v42 + 8))(v49, v43);
      v48 = v93;
      a2 = v92;
    }

    sub_1D22BD238(v22, &qword_1EC6E1F20);
    v20 = v91;
    v3 = v48;
    v34 = v89;
  }

LABEL_10:
  v62 = v34;
  v63 = v99;
  v64 = v3;
  v65 = [v99 clearColor];
  [v62 setBackgroundColor_];

  swift_getWitnessTable();
  sub_1D28760C8();
  v66 = a2;
  sub_1D28760B8();
  type metadata accessor for PromptTextField.Coordinator();
  swift_getWitnessTable();
  sub_1D2874098();
  sub_1D2873F38();
  sub_1D2874018();
  v67 = sub_1D2878068();
  v68 = [objc_opt_self() systemImageNamed_];

  sub_1D2878E88();
  v69 = [v63 tintColor];
  sub_1D2878E68();
  v70 = sub_1D2873F78();
  v71 = v109;
  v72 = v110;
  v73 = v108;
  (*(v110 + 16))(v108, v20, v109);
  (*(v72 + 56))(v73, 0, 1, v71);
  sub_1D2878ED8();

  sub_1D2873F58();
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBB60);
  v113 = sub_1D22BB9D8(&qword_1ED89CF68, &qword_1EC6DBB60);
  v111 = vdupq_n_s64(1uLL);
  sub_1D2873F98();
  (*(v102 + 104))(v101, *MEMORY[0x1E69DBEB8], v103);
  sub_1D2873F68();
  sub_1D2874028();
  v74 = sub_1D2873F08();
  sub_1D27BD428();
  sub_1D2874168();

  v75 = sub_1D2873F18();
  v76 = sub_1D2878068();
  [v75 setAccessibilityIdentifier_];

  v77 = sub_1D2873F78();
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v78 = qword_1ED8B0058;
  sub_1D28718C8();
  sub_1D28780E8();
  v79 = sub_1D2878068();

  [v77 setAccessibilityLabel_];

  LODWORD(v80) = 1132068864;
  [v62 setContentCompressionResistancePriority:0 forAxis:v80];
  v81 = v107;
  sub_1D22BD1D0(v64 + *(v66 + 48), v107, &qword_1EC6D9C10);
  v82 = sub_1D27C2B30(v81);
  sub_1D22BD238(v81, &qword_1EC6D9C10);
  [v62 _setMaximumContentSizeCategory_];

  (*(v72 + 8))(v20, v71);
  return v62;
}

uint64_t sub_1D27BD2B8(uint64_t a1)
{
  v2 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1D2878048();
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

uint64_t sub_1D27BD428()
{
  v0 = sub_1D2874178();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2874138();
  sub_1D2874188();
  (*(v1 + 104))(v3, *MEMORY[0x1E69DC080], v0);
  sub_1D2874148();
  v4 = [objc_opt_self() clearColor];
  sub_1D2874108();
  sub_1D2874128();
  return sub_1D2874118();
}

void sub_1D27BD53C(uint64_t *a1)
{
  swift_getWitnessTable();
  sub_1D28760C8();
  sub_1D28760B8();
  sub_1D27BD5C4(a1, v1);
}

void sub_1D27BD5C4(uint64_t *a1, uint64_t a2)
{
  v195 = a1;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v7 = type metadata accessor for PromptAmbiguity.Candidate();
  v182 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v168 = &v161 - v8;
  v174 = v9;
  v169 = sub_1D2878F18();
  v181 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v178 = &v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v185 = &v161 - v12;
  v177 = type metadata accessor for AmbiguityData();
  v180 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v176 = &v161 - v13;
  v175 = sub_1D28740B8();
  v171 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v184 = &v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for PromptAmbiguity();
  v193 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v188 = &v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v161 - v17;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F20);
  MEMORY[0x1EEE9AC00](v165);
  v164 = (&v161 - v19);
  v196 = sub_1D2878EA8();
  v192 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v172 = &v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v183 = &v161 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F28);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v163 = &v161 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v189 = (&v161 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v190 = (&v161 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v187 = &v161 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v173 = &v161 - v32;
  v170 = sub_1D2875628();
  v167 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v166 = &v161 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for PromptText();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = (&v161 - v36);
  v38 = *((v5 & v4) + 0x58);
  swift_beginAccess();
  v186 = v6;
  v39 = type metadata accessor for PromptTextField();
  (*(*(v39 - 8) + 24))(&v2[v38], a2, v39);
  swift_endAccess();
  sub_1D27BC534();
  v41 = *v37;
  v40 = v37[1];
  v42 = *(v35 + 8);
  sub_1D2870F68();
  v42(v37, v34);
  sub_1D27BC534();
  v194 = *(v37 + *(v34 + 32));
  sub_1D2870F68();
  v43 = v37;
  v44 = v39;
  v45 = v41;
  v42(v43, v34);
  v46 = sub_1D2873F78();
  v47 = v44;
  [v46 setEnabled_];

  sub_1D2873FE8();
  v48 = sub_1D2873F18();
  v49 = [v48 text];

  if (!v49)
  {
    goto LABEL_7;
  }

  v50 = sub_1D28780A8();
  v52 = v51;

  if (v45 == v50 && v40 == v52)
  {

    goto LABEL_8;
  }

  v53 = sub_1D2879618();

  if (v53)
  {
  }

  else
  {
LABEL_7:
    v54 = sub_1D2873F18();
    v55 = sub_1D2878068();

    [v54 setText_];
  }

LABEL_8:
  v56 = sub_1D2873F18();
  [v56 setKeyboardAppearance_];

  LODWORD(v56) = *(a2 + v44[14]);
  v57 = sub_1D2873F18();
  v58 = v57;
  v59 = v194;
  v60 = v189;
  if (v56 == 1)
  {
    [v57 setKeyboardType_];

    v61 = sub_1D2873F18();
    [v61 setKeyboardAppearance_];
    v62 = v190;
  }

  else
  {
    v63 = (a2 + v47[15]);
    v64 = *v63;
    if (*(v63 + 8) == 1)
    {
      v65 = *v63;
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v66 = sub_1D28762E8();
      sub_1D2873BE8();

      v67 = v166;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D22EE66C(v64, 0);
      (*(v167 + 8))(v67, v170);
      v65 = v197;
    }

    if (v65 == 5)
    {
      v68 = 0;
    }

    else
    {
      v68 = 13;
    }

    [v58 setKeyboardType_];

    v61 = sub_1D2873F18();
    v69 = *v63;
    if (*(v63 + 8) == 1)
    {
      v70 = *v63;
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v71 = sub_1D28762E8();
      sub_1D2873BE8();

      v72 = v166;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D22EE66C(v69, 0);
      (*(v167 + 8))(v72, v170);
      v70 = v197;
    }

    v62 = v190;
    [v61 setSupportsAdaptiveImageGlyph_];
  }

  sub_1D27BD2B8(a2 + v47[8]);
  sub_1D2873F38();
  if (*(a2 + v47[9] + 8))
  {
    v73 = sub_1D2873F48();
    v74 = v173;
    sub_1D2878EC8();

    if ((*(v192 + 48))(v74, 1, v196) || (v96 = sub_1D2878E78()) == 0)
    {
      sub_1D22BD238(v74, &qword_1EC6E1F28);
    }

    else
    {
      v97 = v96;
      sub_1D22BD238(v74, &qword_1EC6E1F28);
      v98 = sub_1D2878068();
      v99 = [objc_opt_self() _systemImageNamed_];

      LOBYTE(v98) = [v97 isEqual_];
      v59 = v194;
      if (v98)
      {
        goto LABEL_34;
      }
    }

    v75 = v183;
    sub_1D2878E28();
    v76 = sub_1D2878068();
    v77 = [objc_opt_self() _systemImageNamed_];

    sub_1D2878E88();
    sub_1D28740A8();
    v78 = v172;
    sub_1D2874008();
    sub_1D2878E08();
    v79 = v192;
    v80 = *(v192 + 8);
    v81 = v78;
    v82 = v196;
    v80(v81, v196);
    sub_1D2878E18();
    v83 = sub_1D2873F48();
    v84 = v187;
    (*(v79 + 16))(v187, v75, v82);
    (*(v79 + 56))(v84, 0, 1, v82);
    sub_1D2878ED8();

    v85 = sub_1D2873F48();
    [v85 setNeedsUpdateConfiguration];

    v80(v75, v82);
    goto LABEL_34;
  }

  v86 = sub_1D2873F48();
  sub_1D2878EC8();

  v172 = sub_1D28740A8();
  sub_1D2874008();
  v87 = v164;
  v88 = v192;
  v89 = v196;
  v173 = *(v192 + 56);
  (v173)(v60, 0, 1, v196);
  v90 = *(v165 + 48);
  sub_1D22BD1D0(v62, v87, &qword_1EC6E1F28);
  v91 = v89;
  sub_1D22BD1D0(v60, v87 + v90, &qword_1EC6E1F28);
  v92 = v88;
  v93 = v87;
  v94 = *(v92 + 48);
  if (v94(v93, 1, v91) == 1)
  {
    sub_1D22BD238(v60, &qword_1EC6E1F28);
    sub_1D22BD238(v62, &qword_1EC6E1F28);
    v95 = v94(v93 + v90, 1, v196);
    v59 = v194;
    if (v95 == 1)
    {
      sub_1D22BD238(v93, &qword_1EC6E1F28);
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v100 = v163;
  sub_1D22BD1D0(v93, v163, &qword_1EC6E1F28);
  if (v94(v93 + v90, 1, v91) == 1)
  {
    sub_1D22BD238(v189, &qword_1EC6E1F28);
    sub_1D22BD238(v190, &qword_1EC6E1F28);
    (*(v192 + 8))(v100, v196);
    v59 = v194;
LABEL_32:
    sub_1D22BD238(v93, &qword_1EC6E1F20);
LABEL_33:
    v101 = sub_1D2873F48();
    v102 = v187;
    sub_1D2874008();
    (v173)(v102, 0, 1, v196);
    sub_1D2878ED8();

    v103 = sub_1D2873F48();
    [v103 setNeedsUpdateConfiguration];

    goto LABEL_34;
  }

  v147 = v93;
  v148 = v192;
  v149 = v147 + v90;
  v150 = v183;
  (*(v192 + 32))(v183, v149, v91);
  sub_1D27C2FC8(&qword_1ED89CC28, MEMORY[0x1E69DC598]);
  v151 = sub_1D2877F98();
  v152 = *(v148 + 8);
  v152(v150, v91);
  sub_1D22BD238(v189, &qword_1EC6E1F28);
  sub_1D22BD238(v190, &qword_1EC6E1F28);
  v152(v100, v91);
  sub_1D22BD238(v147, &qword_1EC6E1F28);
  v59 = v194;
  if ((v151 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_34:
  v104 = v195;
  sub_1D2873FF8();
  v105 = v179;
  v106 = sub_1D2878498();
  v107 = v169;
  v108 = v188;
  if (v106)
  {
    v109 = 0;
    v192 = v193 + 16;
    v190 = (v193 + 32);
    v110 = v182 + 56;
    v173 = v181 + 16;
    v172 = (v182 + 48);
    v167 = v182 + 32;
    v166 = (v182 + 16);
    v165 = v182 + 8;
    ++v171;
    v189 = (v193 + 8);
    v164 = (v181 + 8);
    v191 = v18;
    v183 = v180 + 8;
    v170 = v182 + 56;
    do
    {
      v113 = sub_1D2878478();
      sub_1D2878418();
      if (v113)
      {
        (*(v193 + 16))(v18, v59 + ((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v109, v105);
      }

      else
      {
        v140 = sub_1D28791A8();
        if (v162 != 8)
        {
          goto LABEL_101;
        }

        v197 = v140;
        v113 = v140;
        (*v192)(v18, &v197, v105);
        swift_unknownObjectRelease();
      }

      if (__OFADD__(v109, 1))
      {
        __break(1u);
        goto LABEL_68;
      }

      v196 = v109 + 1;
      v114 = v107;
      (*v190)(v108, v18, v105);
      v115 = sub_1D2873F18();
      v116 = *v108;
      v117 = v108[1];
      v118 = [v115 beginningOfDocument];
      v119 = [v115 positionFromPosition:v118 offset:v116];

      if (v119)
      {
        v120 = [v115 &selRef:v119 editorDidChangeHasSignificantEdits:v117];
        v107 = v114;
        if (v120)
        {
          v121 = v120;
          v122 = [v115 textRangeFromPosition:v119 toPosition:v120];

          v111 = v196;
          v187 = v122;
          if (v122)
          {
            v123 = v188;
            v124 = *(v188 + 2);
            v125 = v185;
            v126 = v174;
            v181 = *v110;
            (v181)(v185, 1, 1, v174);
            v127 = v176;
            v128 = v125;
            v129 = v126;
            sub_1D27BEF18(v124, v128, v176);
            v182 = v124;
            sub_1D2870F68();
            v130 = v184;
            v131 = v107;
            v132 = v177;
            v104 = v195;
            sub_1D2873FB8();
            v180 = *v183;
            (v180)(v127, v132);
            v133 = &v123[*(v105 + 32)];
            v134 = v129;
            v135 = v178;
            (*v173)(v178, v133, v131);
            if ((*v172)(v135, 1, v134) == 1)
            {

              (*v171)(v130, v175);
              v108 = v188;
              v105 = v179;
              (*v189)(v188, v179);
              (*v164)(v135, v131);
              v110 = v170;
              v107 = v131;
            }

            else
            {
              v136 = v168;
              (*v167)(v168, v135, v134);
              v137 = v185;
              (*v166)(v185, v136, v134);
              v138 = v170;
              (v181)(v137, 0, 1, v134);
              sub_1D27BEF18(v182, v137, v127);
              sub_1D2870F68();
              v139 = v184;
              sub_1D2873F88();

              (v180)(v127, v132);
              v107 = v169;
              (*v165)(v136, v134);
              (*v171)(v139, v175);
              v108 = v188;
              v105 = v179;
              (*v189)(v188, v179);
              v110 = v138;
            }
          }

          else
          {
            v108 = v188;
            (*v189)(v188, v105);
            v104 = v195;
          }

          goto LABEL_38;
        }

        v108 = v188;
        (*v189)(v188, v105);
      }

      else
      {

        (*v189)(v108, v105);
        v107 = v114;
      }

      v104 = v195;
      v111 = v196;
LABEL_38:
      v59 = v194;
      v112 = sub_1D2878498();
      ++v109;
      v18 = v191;
    }

    while (v111 != v112);
  }

  v141 = MEMORY[0x1E69E7CC0];

  v142 = sub_1D2873F18();
  v110 = &selRef_begin;
  v104 = [v142 subviews];

  v113 = sub_1D22BCFD0(0, &qword_1ED89CCB8);
  v105 = sub_1D28783E8();

  v197 = v141;
  if (v105 >> 62)
  {
    goto LABEL_70;
  }

  for (i = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D2879368())
  {
    v196 = v113;
    v110 = 0;
    while (1)
    {
      if ((v105 & 0xC000000000000001) != 0)
      {
        v144 = MEMORY[0x1D38A1C30](v110, v105);
      }

      else
      {
        if (v110 >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        v144 = *(v105 + 8 * v110 + 32);
      }

      v145 = v144;
      v113 = v110 + 1;
      if (__OFADD__(v110, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v104 = &v197;
        sub_1D2879228();
        sub_1D2879268();
        sub_1D2879278();
        sub_1D2879238();
      }

      else
      {
      }

      ++v110;
      if (v113 == i)
      {
        v113 = v196;
        v146 = v197;
        v110 = 0x1E8400000;
        goto LABEL_72;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    ;
  }

  v146 = MEMORY[0x1E69E7CC0];
LABEL_72:

  if ((v146 & 0x8000000000000000) == 0 && (v146 & 0x4000000000000000) == 0)
  {
    if (*(v146 + 16))
    {
      goto LABEL_75;
    }

LABEL_90:

    return;
  }

  if (!sub_1D2879368())
  {
    goto LABEL_90;
  }

LABEL_75:
  if ((v146 & 0xC000000000000001) != 0)
  {
    v153 = MEMORY[0x1D38A1C30](0, v146);
  }

  else
  {
    if (!*(v146 + 16))
    {
      __break(1u);
LABEL_95:
      v155 = MEMORY[0x1D38A1C30](0, v105);
      goto LABEL_83;
    }

    v153 = *(v146 + 32);
  }

  v104 = v153;

  v154 = [v104 *(v110 + 1160)];
  v105 = sub_1D28783E8();

  if (v105 >> 62)
  {
    if (!sub_1D2879368())
    {
      goto LABEL_97;
    }
  }

  else if (!*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_97;
  }

  if ((v105 & 0xC000000000000001) != 0)
  {
    goto LABEL_95;
  }

  if (!*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_99;
  }

  v155 = *(v105 + 32);
LABEL_83:
  v156 = v155;

  v157 = [v156 *(v110 + 1160)];

  v113 = sub_1D28783E8();
  if (!(v113 >> 62))
  {
    if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_85;
    }

LABEL_97:

    return;
  }

  if (!sub_1D2879368())
  {
    goto LABEL_97;
  }

LABEL_85:
  if ((v113 & 0xC000000000000001) != 0)
  {
LABEL_99:
    v158 = MEMORY[0x1D38A1C30](0, v113);
    goto LABEL_88;
  }

  if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v158 = *(v113 + 32);
LABEL_88:
    v159 = v158;

    v160 = v159;
    [v160 setIsAccessibilityElement_];

    return;
  }

  __break(1u);
LABEL_101:
  __break(1u);
}

uint64_t sub_1D27BEF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for AmbiguityData() + 28);
  type metadata accessor for PromptAmbiguity.Candidate();
  v6 = sub_1D2878F18();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

void sub_1D27BEFB4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = &v35 - v7;
  v8 = *((v5 & v4) + 0x50);
  v9 = type metadata accessor for PromptText();
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v37 = (&v35 - v10);
  v11 = type metadata accessor for PromptTextField();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - v13;
  type metadata accessor for AmbiguityData();
  sub_1D2873F28();
  sub_1D2873FD8();
  sub_1D2873EF8();
  v15 = sub_1D2878448();

  v43 = a1;
  v44 = v15;
  v42 = v8;
  v16 = sub_1D28784C8();
  v17 = type metadata accessor for PromptAmbiguity();
  WitnessTable = swift_getWitnessTable();
  v36 = sub_1D27BC0C0(sub_1D27C24EC, v41, v16, v17, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v19);
  v20 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  swift_beginAccess();
  (*(v12 + 16))(v14, &v2[v20], v11);
  v21 = sub_1D2873F18();
  v22 = [v21 text];

  if (v22)
  {
    v23 = sub_1D28780A8();
    v25 = v24;

    v26 = sub_1D2873F18();
    v27 = [v26 attributedText];

    if (v27)
    {

      v28 = v38;
      sub_1D2871348();
      v29 = sub_1D2871318();
      (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
      v30 = sub_1D2873F18();
      v31 = [v30 selectedRange];
      v33 = v32;

      v34 = v37;
      sub_1D2743750(v23, v25, v28, v36, v31, v33, 0, v37);
      sub_1D27C27CC(v34);
      (*(v39 + 8))(v34, v40);
      (*(v12 + 8))(v14, v11);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D27BF3F8(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v32 = a3;
  type metadata accessor for PromptAmbiguity.Candidate();
  v30 = sub_1D2878F18();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v24 - v5;
  v33 = a2;
  v6 = type metadata accessor for AmbiguityData();
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v24 - v10);
  v12 = sub_1D2873F18();
  v26 = sub_1D2873EF8();
  v31 = a1;
  v13 = sub_1D2873EE8();
  v14 = [v12 beginningOfDocument];
  v15 = [v13 start];
  v16 = [v12 offsetFromPosition:v14 toPosition:v15];

  v17 = [v12 beginningOfDocument];
  v18 = [v13 end];
  v19 = [v12 offsetFromPosition:v17 toPosition:v18];

  v25 = v16;
  v20 = v19 - v16;
  if (__OFSUB__(v19, v16))
  {
    __break(1u);
  }

  else
  {
    sub_1D2873ED8();
    v21 = *v11;
    v22 = *(v27 + 8);
    sub_1D2870F68();
    v22(v11, v6);
    sub_1D2873ED8();
    v23 = v29;
    (*(v28 + 16))(v29, &v8[*(v6 + 28)], v30);
    v22(v8, v6);
    sub_1D279E460(v25, v20, v21, v23, v32);
  }
}

void sub_1D27BF708()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = sub_1D2873F18();
  v4 = [v3 isFirstResponder];

  if (!v4)
  {
    return;
  }

  v5 = v0 + *((*v2 & *v0) + 0x58);
  swift_beginAccess();
  v6 = *&v5[*(type metadata accessor for PromptTextField() + 40)];
  sub_1D2870F78();
  v7 = sub_1D2873F18();
  v8 = [v7 text];

  if (!v8)
  {
    goto LABEL_44;
  }

  v9 = sub_1D28780A8();
  v11 = v10;

  v12 = sub_1D2873F18();
  v13 = [v12 selectedRange];
  v15 = v14;

  v16 = v6(v9, v11, v13, v15, 0);

  v17 = *((*v2 & *v1) + 0x60);
  v18 = *(v1 + v17);
  if (v18)
  {
    sub_1D2870F68();
    sub_1D2870F68();
    v19 = sub_1D23377AC(v16, v18);

    if (v19)
    {

LABEL_35:

      return;
    }
  }

  else
  {
    sub_1D2870F68();
  }

  *(v1 + v17) = v16;

  v20 = *(v16 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  if (!v20)
  {
LABEL_25:

    v33 = *(v21 + 2);
    if (v33 >= 3)
    {
      sub_1D268EB80(v21, (v21 + 32), 0, 5uLL);
      v35 = v34;

      v33 = *(v35 + 16);
      v21 = v35;
    }

    if (v33)
    {
      v48 = MEMORY[0x1E69E7CC0];
      sub_1D2879258();
      type metadata accessor for PromptUITextSuggestion();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v37 = (v21 + 32);
      do
      {
        sub_1D233F0D4(v37, &v45);
        v39 = sub_1D2878068();
        v40 = sub_1D2878068();
        v41 = [ObjCClassFromMetadata textSuggestionWithInputText:v39 searchText:v40];

        v42 = v41;
        v43 = sub_1D2878068();
        [v42 setDisplayText_];

        if (v46)
        {
          v44 = v46;
          [v42 setImage_];
        }

        v38 = OBJC_IVAR____TtC23ImagePlaygroundInternal22PromptUITextSuggestion_representedObject;
        swift_beginAccess();
        sub_1D27C28A4(&v47, v42 + v38);
        swift_endAccess();
        sub_1D233F130(&v45);
        sub_1D2879228();
        sub_1D2879268();
        sub_1D2879278();
        sub_1D2879238();
        v37 += 96;
        --v33;
      }

      while (v33);

      if (!(v48 >> 62))
      {
        goto LABEL_33;
      }
    }

    else
    {

      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
LABEL_33:
        sub_1D2870F68();
        sub_1D2879668();
        sub_1D22BCFD0(0, &unk_1ED89CD80);
LABEL_34:

        sub_1D2873FC8();
        goto LABEL_35;
      }
    }

    sub_1D22BCFD0(0, &unk_1ED89CD80);
    sub_1D2870F68();
    sub_1D28793A8();

    goto LABEL_34;
  }

  v22 = 0;
  v23 = v16 + 48;
  while (v22 < *(v16 + 16))
  {
    v24 = *v23;
    v25 = *(*v23 + 16);
    v26 = *(v21 + 2);
    v27 = v26 + v25;
    if (__OFADD__(v26, v25))
    {
      goto LABEL_40;
    }

    sub_1D2870F68();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v27 <= *(v21 + 3) >> 1)
    {
      if (*(v24 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v26 <= v27)
      {
        v29 = v26 + v25;
      }

      else
      {
        v29 = v26;
      }

      v21 = sub_1D27CDD60(isUniquelyReferenced_nonNull_native, v29, 1, v21);
      if (*(v24 + 16))
      {
LABEL_21:
        if ((*(v21 + 3) >> 1) - *(v21 + 2) < v25)
        {
          goto LABEL_42;
        }

        swift_arrayInitWithCopy();

        if (v25)
        {
          v30 = *(v21 + 2);
          v31 = __OFADD__(v30, v25);
          v32 = v30 + v25;
          if (v31)
          {
            goto LABEL_43;
          }

          *(v21 + 2) = v32;
        }

        goto LABEL_10;
      }
    }

    if (v25)
    {
      goto LABEL_41;
    }

LABEL_10:
    ++v22;
    v23 += 24;
    if (v20 == v22)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_40:
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

uint64_t sub_1D27BFCA8(char *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v3 = type metadata accessor for PromptTextField();
  (*(*(v3 - 8) + 8))(&a1[v2], v3);
}

id sub_1D27BFDA8@<X0>(void *a1@<X8>)
{
  result = sub_1D27BEEDC();
  *a1 = result;
  return result;
}

uint64_t sub_1D27BFDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, WitnessTable);
}

uint64_t sub_1D27BFE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, WitnessTable);
}

void sub_1D27BFEC8()
{
  swift_getWitnessTable();
  sub_1D2875A98();
  __break(1u);
}

void sub_1D27BFF08(uint64_t a1)
{
  sub_1D27BF708();

  sub_1D27BEFB4(a1);
}

uint64_t sub_1D27BFF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a3;
  v72 = a1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x50);
  v6 = type metadata accessor for PromptAmbiguity.Candidate();
  v69 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v64 - v9;
  v70 = v10;
  v11 = sub_1D2878F18();
  v12 = *(v11 - 8);
  v79 = v11;
  v80 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v78 = &v64 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F00);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v64 - v18;
  v66 = v5;
  v20 = type metadata accessor for AmbiguityData();
  v21 = sub_1D2878F18();
  v76 = *(v21 - 8);
  v77 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v64 - v25;
  v27 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v64 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F08);
  v73 = a2;
  sub_1D2873ED8();
  v81 = v30;
  swift_dynamicCast();
  sub_1D22BD1D0(v75, v19, &qword_1EC6E1F00);
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v19, 1, v31) == 1)
  {
    sub_1D22BD238(v19, &qword_1EC6E1F00);
    (*(v27 + 56))(v26, 1, 1, v20);
  }

  else
  {
    sub_1D2873ED8();
    (*(v32 + 8))(v19, v31);
    sub_1D23C3FAC(&v82, &v83);
    swift_dynamicCast();
    (*(v27 + 56))(v26, 0, 1, v20);
  }

  v34 = v76;
  v33 = v77;
  v35 = *(v76 + 16);
  v75 = v26;
  v35(v23, v26, v77);
  v36 = (*(v27 + 48))(v23, 1, v20);
  v38 = v78;
  v37 = v79;
  v39 = v70;
  v68 = v20;
  if (v36 == 1)
  {
    (*(v34 + 8))(v23, v33);
    v40 = v69;
    (*(v69 + 56))(v38, 1, 1, v39);
    v41 = *(v80 + 16);
  }

  else
  {
    v41 = *(v80 + 16);
    v41(v78, &v23[*(v20 + 28)], v79);
    (*(v27 + 8))(v23, v20);
    v40 = v69;
  }

  v42 = *v81;
  *&v83 = *v81;
  v41(v14, v38, v37);
  v43 = (*(v40 + 48))(v14, 1, v39);
  v71 = v27;
  if (v43 == 1)
  {
    v44 = *(v80 + 8);
    sub_1D2870F68();
    v45 = v44(v14, v37);
  }

  else
  {
    v46 = v67;
    v47 = (*(v40 + 32))(v67, v14, v39);
    *&v82 = v42;
    MEMORY[0x1EEE9AC00](v47);
    v62 = v66;
    v63 = v46;
    sub_1D28784C8();
    swift_bridgeObjectRetain_n();
    swift_getWitnessTable();
    v48 = sub_1D2878358();

    if ((v48 & 1) == 0)
    {
      (*(v40 + 16))(v65, v46, v39);
      sub_1D28784A8();
    }

    v45 = (*(v40 + 8))(v46, v39);
  }

  *&v82 = v83;
  MEMORY[0x1EEE9AC00](v45);
  v49 = v72;
  *(&v64 - 6) = v38;
  *(&v64 - 5) = v49;
  v50 = v73;
  *(&v64 - 4) = v74;
  *(&v64 - 3) = v50;
  v62 = v81;
  v51 = sub_1D28784C8();
  v52 = sub_1D22BCFD0(0, &unk_1ED89CC30);
  WitnessTable = swift_getWitnessTable();
  v55 = sub_1D27BC0C0(sub_1D27C2944, (&v64 - 8), v51, v52, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v54);

  v56 = v68;
  if (v55 >> 62)
  {
    sub_1D22BCFD0(0, &qword_1EC6E1F10);
    sub_1D2870F68();
    v57 = sub_1D28793A8();
  }

  else
  {
    sub_1D2870F68();
    sub_1D2879668();
    sub_1D22BCFD0(0, &qword_1EC6E1F10);
    v57 = v55;
  }

  v58 = v79;
  v59 = v71;

  sub_1D22BCFD0(0, &qword_1EC6E1F18);
  v62 = v57;
  v60 = sub_1D2878CD8();
  (*(v80 + 8))(v78, v58);
  (*(v76 + 8))(v75, v77);
  (*(v59 + 8))(v81, v56);
  return v60;
}

uint64_t sub_1D27C0868@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v61 = a7;
  v56 = a5;
  v57 = a6;
  v54 = a3;
  v63 = a2;
  v8 = *MEMORY[0x1E69E7D40] & *a4;
  v55 = a4;
  v9 = *(v8 + 80);
  v10 = type metadata accessor for PromptAmbiguity.Candidate();
  v11 = *(v10 - 8);
  v59 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v43 - v12;
  v60 = v9;
  v65 = type metadata accessor for AmbiguityData();
  v58 = *(v65 - 8);
  v53 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v43 - v13;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F08);
  v48 = *(v51 - 8);
  v47 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v64 = &v43 - v14;
  v15 = sub_1D2878F18();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v43 - v18);
  v21 = *a1;
  v20 = a1[1];
  v22 = a1[2];
  (*(v16 + 16))(&v43 - v18, v63, v15, v17);
  v62 = v11;
  v63 = v10;
  v23 = (*(v11 + 48))(v19, 1, v10);
  v52 = v21;
  v49 = v20;
  v50 = v22;
  if (v23 == 1)
  {
    v24 = *(v16 + 8);
    sub_1D2870F68();
    v25 = v22;
    v24(v19, v15);
  }

  else
  {
    v45 = a1;
    v26 = *v19;
    v27 = v19[1];
    v28 = *(v62 + 8);
    sub_1D2870F68();
    v29 = v22;
    sub_1D2870F68();
    v28(v19, v63);
    if (v21 == v26 && v20 == v27)
    {

      v46 = 1;
      a1 = v45;
      goto LABEL_11;
    }

    v31 = sub_1D2879618();

    a1 = v45;
    if (v31)
    {
      v46 = 1;
      goto LABEL_11;
    }
  }

  v46 = 0;
LABEL_11:
  v45 = sub_1D22BCFD0(0, &unk_1ED89CC30);
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = v48;
  v33 = v51;
  (*(v48 + 16))(v64, v56, v51);
  v34 = v58;
  (*(v58 + 16))(v66, v57, v65);
  v36 = v62;
  v35 = v63;
  (*(v62 + 16))(v67, a1, v63);
  v37 = (*(v32 + 80) + 40) & ~*(v32 + 80);
  v38 = (v47 + v37 + *(v34 + 80)) & ~*(v34 + 80);
  v39 = (v53 + *(v36 + 80) + v38) & ~*(v36 + 80);
  v40 = swift_allocObject();
  v41 = v54;
  *(v40 + 2) = v60;
  *(v40 + 3) = v41;
  *(v40 + 4) = v44;
  (*(v32 + 32))(&v40[v37], v64, v33);
  (*(v34 + 32))(&v40[v38], v66, v65);
  (*(v36 + 32))(&v40[v39], v67, v35);
  result = sub_1D2878DF8();
  *v61 = result;
  return result;
}

void sub_1D27C0E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v26 = a5;
  v7 = type metadata accessor for PromptAmbiguity.Candidate();
  v8 = sub_1D2878F18();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AmbiguityData();
  v27 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v14 = sub_1D28740B8();
  v24 = *(v14 - 8);
  v25 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F08);
      sub_1D2873EC8();
      v21 = *v26;
      v22 = a6;
      v23 = *(v7 - 8);
      (*(v23 + 16))(v10, v22, v7);
      (*(v23 + 56))(v10, 0, 1, v7);
      sub_1D27BEF18(v21, v10, v13);
      sub_1D2870F68();
      sub_1D2873F88();
      (*(v27 + 8))(v13, v11);
      (*(v24 + 8))(v16, v25);
      sub_1D27BEFB4(v20);

      v18 = v20;
    }
  }
}

void sub_1D27C10F0(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = [objc_opt_self() activeKeyboard];
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = *(v4 + 80);
    v8[3] = v7;
    v8[4] = v6;
    v8[5] = a1;
    v17 = sub_1D27C2914;
    v18 = v8;
    *&v15 = MEMORY[0x1E69E9820];
    *(&v15 + 1) = 1107296256;
    *&v16 = sub_1D27BC4E0;
    *(&v16 + 1) = &block_descriptor_47;
    v9 = _Block_copy(&v15);
    v10 = v6;
    v11 = a1;

    [v10 acceptAutocorrectionWithCompletionHandler_];
    _Block_release(v9);
  }

  else
  {
    v12 = v1 + *((*v3 & *v1) + 0x58);
    swift_beginAccess();
    v13 = type metadata accessor for PromptTextField();
    if (v12[*(v13 + 28)] == 1)
    {
      v14 = *&v12[*(v13 + 44)];
      if (v14)
      {
        v17 = 0;
        v15 = 0u;
        v16 = 0u;
        sub_1D2870F78();
        v14(&v15);
        sub_1D22A576C(v14);
        sub_1D22BD238(&v15, &unk_1EC6E1D30);
      }
    }
  }
}

uint64_t sub_1D27C1314(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_1D2877B48();
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2877B68();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_1D22BCFD0(0, &qword_1ED89CD50);
    v23 = sub_1D2878AB8();
    v15 = swift_allocObject();
    v15[2] = a3;
    v15[3] = a4;
    v15[4] = v14;
    aBlock[4] = sub_1D27C2938;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D23DFBA8;
    aBlock[3] = &block_descriptor_10;
    v16 = _Block_copy(aBlock);
    v17 = a3;
    v18 = a4;
    v22 = v14;
    sub_1D2877B58();
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D27C2FC8(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
    v19 = v24;
    v21 = v9;
    sub_1D22BB9D8(&qword_1ED89CEB0, &unk_1EC6DAE80);
    sub_1D2879088();
    v20 = v23;
    MEMORY[0x1D38A1540](0, v12, v8, v16);
    _Block_release(v16);

    (*(v19 + 8))(v8, v6);
    (*(v10 + 8))(v12, v21);
  }

  return result;
}

uint64_t sub_1D27C164C(void *a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E69E7D40];
  [a1 removeAutocorrectPrompt];
  [a1 updateLayout];
  v6 = sub_1D2873F18();
  v7 = [v6 markedTextRange];

  if (v7)
  {

    v8 = sub_1D2873F18();
    [v8 unmarkText];
  }

  v9 = a3 + *((*v5 & *a3) + 0x58);
  swift_beginAccess();
  result = type metadata accessor for PromptTextField();
  if (v9[*(result + 28)] == 1)
  {
    v11 = *&v9[*(result + 44)];
    if (v11)
    {
      v13 = 0;
      memset(v12, 0, sizeof(v12));
      sub_1D2870F78();
      v11(v12);
      sub_1D22A576C(v11);
      return sub_1D22BD238(v12, &unk_1EC6E1D30);
    }
  }

  return result;
}

void sub_1D27C17CC(uint64_t a1, void *a2)
{
  v5 = MEMORY[0x1E69E7D40];
  type metadata accessor for PromptUITextSuggestion();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal22PromptUITextSuggestion_representedObject;
    v8 = v6;
    swift_beginAccess();
    sub_1D22BD1D0(v8 + v7, &v16, &unk_1EC6E1D30);
    if (v17)
    {
      sub_1D22D79FC(&v16, v18);
      v9 = v2 + *((*v5 & *v2) + 0x58);
      swift_beginAccess();
      v10 = type metadata accessor for PromptTextField();
      if (v9[*(v10 + 28)] == 1)
      {
        v11 = *&v9[*(v10 + 44)];
        if (v11)
        {
          sub_1D22D7044(v18, &v16);
          v12 = a2;
          sub_1D22A58B8(v11);
          v11(&v16);
          sub_1D22A576C(v11);

          sub_1D22BD238(&v16, &unk_1EC6E1D30);
        }
      }

      __swift_destroy_boxed_opaque_existential_0(v18);
      return;
    }

    sub_1D22BD238(&v16, &unk_1EC6E1D30);
  }

  v13 = [a2 inputText];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1D2873F18();
    [v15 setText_];

    sub_1D27BF708();
    sub_1D27BEFB4(a1);
  }
}

uint64_t sub_1D27C19E4(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  sub_1D22BCFD0(0, &qword_1ED89CCB8);
  v4 = a1;
  v5 = v1;
  sub_1D2877938();
  sub_1D2878CE8();

  return 1;
}

void sub_1D27C1AAC(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = sub_1D2874158();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1D2873F08();
  v6 = a2 + *((*v3 & *a2) + 0x58);
  swift_beginAccess();
  v7 = type metadata accessor for PromptTextField();
  if (v6[*(v7 + 56)] == 1)
  {
    sub_1D2874138();
  }

  else
  {
    sub_1D28740F8();
  }

  sub_1D2874168();

  v8 = sub_1D2873F18();
  v9 = v8;
  if (v6[*(v7 + 56)])
  {
    v10 = 0;
  }

  else
  {
    v10 = 13;
  }

  [v8 setKeyboardAppearance_];
}

uint64_t sub_1D27C1C04(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = *((v4 & v3) + 0x50);
  v6[3] = v5;
  v6[4] = a1;
  sub_1D22BCFD0(0, &qword_1ED89CCB8);
  v7 = a1;
  sub_1D2877938();
  sub_1D2878CE8();
}

void sub_1D27C1D14()
{
  v0 = type metadata accessor for PromptTextField();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9[-v2];
  v4 = sub_1D2874158();
  MEMORY[0x1EEE9AC00](v4 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_1D2873F08();
    v8 = v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0x58);
    swift_beginAccess();
    if (v8[*(v0 + 56)] == 1)
    {
      sub_1D2874138();
    }

    else
    {
      (*(v1 + 16))(v3, v8, v0);
      sub_1D27BD428();
      (*(v1 + 8))(v3, v0);
    }

    sub_1D2874168();
  }
}

uint64_t sub_1D27C1EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE4C068](a1, ObjectType, a3);
}

uint64_t sub_1D27C1F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE4C040](a1, a2, ObjectType, a4);
}

uint64_t sub_1D27C1FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE4C060](a1, ObjectType, a3);
}

uint64_t sub_1D27C2014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE4C038](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_1D27C2084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE4C048](a1, a2, ObjectType, a4);
}

uint64_t sub_1D27C20E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE4C050](a1, a2, ObjectType, a4);
}

void sub_1D27C227C()
{
  type metadata accessor for PromptText();
  sub_1D2877538();
  if (v0 <= 0x3F)
  {
    sub_1D2878048();
    if (v1 <= 0x3F)
    {
      sub_1D27C2468(319, qword_1ED8A6D28, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1D22BFAB4();
        if (v3 <= 0x3F)
        {
          sub_1D24BA3D8();
          if (v4 <= 0x3F)
          {
            sub_1D27C2410();
            if (v5 <= 0x3F)
            {
              sub_1D27C2468(319, &qword_1ED89E040, &type metadata for CreationViewStyle, MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D27C2410()
{
  if (!qword_1ED89DE60)
  {
    sub_1D2874E88();
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89DE60);
    }
  }
}

void sub_1D27C2468(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D27C250C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for PromptAmbiguity.Candidate();
  v5 = sub_1D2878F18();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (v21 - v8);
  (*(v6 + 16))(v21 - v8, &v1[*(a1 + 28)], v5, v7);
  v10 = *(v4 - 8);
  if ((*(v10 + 48))(v9, 1, v4) == 1)
  {
    (*(v6 + 8))(v9, v5);
    v11 = objc_opt_self();
    v21[1] = *v1;
    MEMORY[0x1EEE9AC00](v11);
    v21[-2] = v3;
    KeyPath = swift_getKeyPath();
    v13 = sub_1D28784C8();
    sub_1D2870F68();
    WitnessTable = swift_getWitnessTable();
    sub_1D27BC0C0(sub_1D27C360C, KeyPath, v13, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v15);

    v16 = sub_1D28783C8();

    v17 = [v11 localizedStringByJoiningStrings_];

    v18 = sub_1D28780A8();
  }

  else
  {
    v18 = *v9;
    v19 = *(v10 + 8);
    sub_1D2870F68();
    v19(v9, v4);
  }

  return v18;
}

uint64_t sub_1D27C27CC(uint64_t a1)
{
  v2 = type metadata accessor for PromptText();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - v4, a1, v2, v3);
  sub_1D2877538();
  return sub_1D28774F8();
}

uint64_t sub_1D27C28A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D27C296C(void *a1)
{
  v2 = *(v1 + 24);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D2879618() & 1;
  }
}

void sub_1D27C29C4(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F08) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(type metadata accessor for AmbiguityData() - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for PromptAmbiguity.Candidate() - 8);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v12 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  sub_1D27C0E04(a1, v10, v11, v1 + v4, (v1 + v7), v12);
}

id sub_1D27C2B30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_1D2874E88();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  sub_1D22BD1D0(a1, v4, &qword_1EC6D9C10);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D22BD238(v4, &qword_1EC6D9C10);
    return 0;
  }

  (*(v6 + 32))(v11, v4, v5);
  (*(v6 + 16))(v8, v11, v5);
  v13 = (*(v6 + 88))(v8, v5);
  if (v13 == *MEMORY[0x1E697E718])
  {
    v14 = MEMORY[0x1E69DDC68];
  }

  else if (v13 == *MEMORY[0x1E697E6F0])
  {
    v14 = MEMORY[0x1E69DDC88];
  }

  else if (v13 == *MEMORY[0x1E697E6F8])
  {
    v14 = MEMORY[0x1E69DDC78];
  }

  else if (v13 == *MEMORY[0x1E697E6E8])
  {
    v14 = MEMORY[0x1E69DDC70];
  }

  else if (v13 == *MEMORY[0x1E697E708])
  {
    v14 = MEMORY[0x1E69DDC60];
  }

  else if (v13 == *MEMORY[0x1E697E720])
  {
    v14 = MEMORY[0x1E69DDC58];
  }

  else if (v13 == *MEMORY[0x1E697E728])
  {
    v14 = MEMORY[0x1E69DDC50];
  }

  else if (v13 == *MEMORY[0x1E697E6C0])
  {
    v14 = MEMORY[0x1E69DDC40];
  }

  else if (v13 == *MEMORY[0x1E697E6C8])
  {
    v14 = MEMORY[0x1E69DDC38];
  }

  else if (v13 == *MEMORY[0x1E697E6D0])
  {
    v14 = MEMORY[0x1E69DDC30];
  }

  else if (v13 == *MEMORY[0x1E697E6D8])
  {
    v14 = MEMORY[0x1E69DDC28];
  }

  else
  {
    if (v13 != *MEMORY[0x1E697E6E0])
    {
      v17 = *(v6 + 8);
      v17(v11, v5);
      v17(v8, v5);
      return 0;
    }

    v14 = MEMORY[0x1E69DDC20];
  }

  v15 = *(v6 + 8);
  v16 = *v14;
  v15(v11, v5);
  return v16;
}

id sub_1D27C2EE4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x1E69E7D40];
  *&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x60)] = 0;
  v5 = *((*v4 & *v1) + 0x58);
  v6 = type metadata accessor for PromptTextField();
  (*(*(v6 - 8) + 16))(&v1[v5], a1, v6);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1D27C2FC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D27C3040()
{
  type metadata accessor for PromptAmbiguity.Candidate();
  result = sub_1D28784C8();
  if (v1 <= 0x3F)
  {
    result = sub_1D2878F18();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D27C30DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = v6 - 1;
  v8 = *(v4 + 80);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v8 | 7;
  v11 = a2 - v9;
  if (a2 <= v9)
  {
    goto LABEL_29;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) - (((-25 - v8) | v8) + ((-9 - v8) | v10)) - 2;
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 < 2)
    {
LABEL_29:
      if ((v7 & 0x80000000) != 0)
      {
        v19 = a1 + v10 + 8;
        if ((v5 & 0x80000000) != 0)
        {
          v21 = (*(v4 + 48))((v8 + (((v19 & ~v10) + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8);
        }

        else
        {
          v20 = *((v19 & ~v10) + 8);
          if (v20 >= 0xFFFFFFFF)
          {
            LODWORD(v20) = -1;
          }

          v21 = v20 + 1;
        }

        if (v21 >= 2)
        {
          return v21 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_29;
  }

LABEL_18:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (*(*(*(a3 + 16) - 8) + 64) - (((-25 - v8) | v8) + ((-9 - v8) | v10)) != 2)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v9 + (v12 | v17) + 1;
}

void sub_1D27C32E0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = v9 - 1;
  if ((v9 - 1) <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v9 - 1;
  }

  v12 = *(v6 + 80);
  v13 = ((v12 + 24) & ~v12) + *(*(*(a4 + 16) - 8) + 64);
  v14 = v13 + ((v12 + 8) & ~(v12 | 7));
  v15 = a3 >= v11;
  v16 = a3 - v11;
  if (v16 != 0 && v15)
  {
    if (v14 <= 3)
    {
      v20 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
      if (HIWORD(v20))
      {
        v17 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v17 = v21;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v11 < a2)
  {
    v18 = ~v11 + a2;
    if (v14 < 4)
    {
      v19 = (v18 >> (8 * v14)) + 1;
      if (v14)
      {
        v22 = v18 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_61:
              if (v17 == 2)
              {
                *&a1[v14] = v19;
              }

              else
              {
                *&a1[v14] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_58;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_61;
      }
    }

LABEL_58:
    if (v17)
    {
      a1[v14] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v14] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v17)
  {
    goto LABEL_33;
  }

  a1[v14] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v10 & 0x80000000) != 0)
  {
    v24 = (&a1[(v12 | 7) + 8] & ~(v12 | 7));
    if (v10 >= a2)
    {
      if ((v8 & 0x80000000) != 0)
      {
        v28 = *(v7 + 56);
        v29 = a2 + 1;

        v28((v12 + 8 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v12, v29);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *v24 = a2 - 0x7FFFFFFF;
        *((&a1[(v12 | 7) + 8] & ~(v12 | 7)) + 8) = 0;
      }

      else
      {
        *((&a1[(v12 | 7) + 8] & ~(v12 | 7)) + 8) = a2;
      }
    }

    else
    {
      if (v13 <= 3)
      {
        v25 = ~(-1 << (8 * v13));
      }

      else
      {
        v25 = -1;
      }

      if (v13)
      {
        v26 = v25 & (a2 - v9);
        if (v13 <= 3)
        {
          v27 = v13;
        }

        else
        {
          v27 = 4;
        }

        bzero(v24, v13);
        if (v27 > 2)
        {
          if (v27 == 3)
          {
            *v24 = v26;
            v24[2] = BYTE2(v26);
          }

          else
          {
            *v24 = v26;
          }
        }

        else if (v27 == 1)
        {
          *v24 = v26;
        }

        else
        {
          *v24 = v26;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v23 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v23 = a2 - 1;
    }

    *a1 = v23;
  }
}

int *ConversationContextItem.init(timestamp:messageContent:senderHandle:senderDisplayName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1D2583794(a1, a8);
  result = type metadata accessor for ConversationContextItem();
  v16 = (a8 + result[5]);
  *v16 = a2;
  v16[1] = a3;
  v17 = (a8 + result[6]);
  *v17 = a4;
  v17[1] = a5;
  v18 = (a8 + result[7]);
  *v18 = a6;
  v18[1] = a7;
  return result;
}

uint64_t type metadata accessor for ConversationContextItem()
{
  result = qword_1EC6E1F30;
  if (!qword_1EC6E1F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D27C3744()
{
  sub_1D27C37D0();
  if (v0 <= 0x3F)
  {
    sub_1D238DF94();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D27C37D0()
{
  if (!qword_1ED8A6CB8)
  {
    sub_1D2871798();
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8A6CB8);
    }
  }
}

void sub_1D27C3828(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F58);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - v4;
  v6 = objc_opt_self();
  v7 = *MEMORY[0x1E6987608];
  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  aBlock[4] = sub_1D27C4170;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D27BC4E0;
  aBlock[3] = &block_descriptor_48;
  v10 = _Block_copy(aBlock);

  [v6 requestAccessForMediaType:v7 completionHandler:v10];
  _Block_release(v10);
}

uint64_t sub_1D27C39F4()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

uint64_t sub_1D27C3B30()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

uint64_t type metadata accessor for CameraAuthViewModel()
{
  result = qword_1EC6E1F48;
  if (!qword_1EC6E1F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D27C3D80()
{
  v0[2] = sub_1D2878568();
  v0[3] = sub_1D2878558();
  v2 = sub_1D28784F8();
  v0[4] = v2;
  v0[5] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D27C3E18, v2, v1);
}

uint64_t sub_1D27C3E18()
{
  v1 = [objc_opt_self() authorizationStatusForMediaType_];
  if (v1)
  {
    if (v1 == 3)
    {
    }

    else
    {

      sub_1D22D76CC();
      swift_willThrowTypedImpl();
    }

    v2 = v0[1];

    return v2();
  }

  else
  {
    v3 = sub_1D2878558();
    v0[6] = v3;
    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_1D27C3F9C;
    v5 = MEMORY[0x1E69E85E0];
    v6 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DDE0](v0 + 8, v3, v5, 0xD00000000000001CLL, 0x80000001D28C3310, sub_1D27C3828, 0, v6);
  }
}

uint64_t sub_1D27C3F9C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1D27C40E0, v3, v2);
}

uint64_t sub_1D27C40E0()
{

  if ((*(v0 + 64) & 1) == 0)
  {
    sub_1D22D76CC();
    swift_willThrowTypedImpl();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D27C4170()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F58);
  return sub_1D2878518();
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

unint64_t sub_1D27C4244()
{
  result = qword_1EC6E1F60;
  if (!qword_1EC6E1F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1F60);
  }

  return result;
}

uint64_t sub_1D27C42FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D27C4350(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D27C43A8()
{
  result = qword_1EC6E1F68;
  if (!qword_1EC6E1F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1F68);
  }

  return result;
}

double sub_1D27C440C@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1D2876FE8();
  sub_1D2876FE8();
  sub_1D2876FF8();
  sub_1D2876FE8();
  sub_1D2876FE8();
  sub_1D2876FF8();
  sub_1D2876558();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetMidX(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetMidY(v15);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetWidth(v16);
  sub_1D2876548();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

double sub_1D27C4574@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 16);
  result = *(v2 + 24) + a2;
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = result;
  return result;
}

double sub_1D27C4594@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1D27C440C(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_1D27C4604(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1D2874228();
  return sub_1D24DA5F4;
}

uint64_t sub_1D27C468C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D27C4854();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1D27C46F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D27C4854();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1D27C4754(uint64_t a1)
{
  v2 = sub_1D27C4854();

  return MEMORY[0x1EEDE4410](a1, v2);
}

unint64_t sub_1D27C47A4()
{
  result = qword_1ED89E5B0;
  if (!qword_1ED89E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89E5B0);
  }

  return result;
}

unint64_t sub_1D27C47FC()
{
  result = qword_1ED89E5A0;
  if (!qword_1ED89E5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89E5A0);
  }

  return result;
}

unint64_t sub_1D27C4854()
{
  result = qword_1ED89E598;
  if (!qword_1ED89E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89E598);
  }

  return result;
}

unint64_t sub_1D27C48C4()
{
  result = qword_1ED89E5A8;
  if (!qword_1ED89E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89E5A8);
  }

  return result;
}

uint64_t sub_1D27C4918(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1D27C4960(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1D27C49D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D27C7734(&qword_1EC6D8390, type metadata accessor for ContextualMenuViewModel);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 56);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D27C4A80()
{
  swift_getKeyPath();
  sub_1D27C7734(&qword_1EC6D8390, type metadata accessor for ContextualMenuViewModel);
  sub_1D28719D8();
}

uint64_t sub_1D27C4B50@<X0>(uint64_t a1@<X8>)
{
  v175 = a1;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F78);
  v172 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v163 = &v156 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v174 = &v156 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v179 = &v156 - v6;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F88);
  v170 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v166 = &v156 - v7;
  v158 = sub_1D2877568();
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v165 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v164 = &v156 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F90);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v173 = &v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v190 = &v156 - v14;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F98);
  v161 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v167 = &v156 - v15;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1FA0);
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v160 = &v156 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v159 = &v156 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1FA8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v188 = &v156 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v194 = &v156 - v22;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC998);
  v189 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v156 = &v156 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v176 = &v156 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE810);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v186 = &v156 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v187 = &v156 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v193 = &v156 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v192 = &v156 - v33;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99D8);
  MEMORY[0x1EEE9AC00](v177);
  v185 = &v156 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v156 - v36;
  v38 = v1[1];
  v196 = *v1;
  v197 = v38;
  v198 = *(v1 + 32);
  v39 = sub_1D2875798();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v46 = qword_1ED8B0058;
  v47 = swift_allocObject();
  v48 = v1[1];
  *(v47 + 16) = *v1;
  *(v47 + 32) = v48;
  *(v47 + 48) = *(v1 + 32);
  MEMORY[0x1EEE9AC00](v47);
  *(&v156 - 8) = v39;
  *(&v156 - 7) = v41;
  *(&v156 - 48) = v43 & 1;
  *(&v156 - 5) = v45;
  *(&v156 - 4) = v46;
  v182 = v46;
  *(&v156 - 3) = 0xD000000000000014;
  *(&v156 - 2) = 0x80000001D28B90C0;
  sub_1D2870F78();
  sub_1D27C7514(&v196, &v195);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8);
  v50 = sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
  v181 = v49;
  v180 = v50;
  sub_1D2877368();

  v51 = v196;
  v52 = sub_1D269650C();
  KeyPath = swift_getKeyPath();
  v54 = swift_allocObject();
  *(v54 + 16) = v52 & 1;
  v55 = &v37[*(v177 + 36)];
  *v55 = KeyPath;
  v55[1] = sub_1D22C03D8;
  v55[2] = v54;
  swift_getKeyPath();
  v195 = v51;
  v184 = sub_1D27C7734(&qword_1EC6D8390, type metadata accessor for ContextualMenuViewModel);
  sub_1D28719E8();

  Strong = swift_unknownObjectWeakLoadStrong();
  v191 = v37;
  if (Strong && (v57 = sub_1D245E898(), swift_unknownObjectRelease(), v57))
  {
    v58 = sub_1D2875798();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v65 = swift_allocObject();
    v66 = v197;
    *(v65 + 16) = v196;
    *(v65 + 32) = v66;
    *(v65 + 48) = v198;
    MEMORY[0x1EEE9AC00](v65);
    *(&v156 - 8) = v58;
    *(&v156 - 7) = v60;
    *(&v156 - 48) = v62 & 1;
    v67 = v182;
    *(&v156 - 5) = v64;
    *(&v156 - 4) = v67;
    *(&v156 - 3) = 0xD000000000000013;
    *(&v156 - 2) = 0x80000001D28B9060;
    sub_1D27C7514(&v196, &v195);
    sub_1D2870F78();
    v68 = v176;
    sub_1D2877368();

    v69 = v183;
    (*(v189 + 32))(v192, v68, v183);
    v70 = 0;
  }

  else
  {
    v70 = 1;
    v69 = v183;
  }

  v71 = v169;
  v72 = *(v189 + 56);
  v73 = 1;
  v72(v192, v70, 1, v69);
  if (sub_1D269680C())
  {
    v74 = swift_allocObject();
    v75 = v197;
    *(v74 + 16) = v196;
    *(v74 + 32) = v75;
    *(v74 + 48) = v198;
    MEMORY[0x1EEE9AC00](v74);
    *(&v156 - 2) = &v196;
    sub_1D27C7514(&v196, &v195);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1FC8);
    sub_1D27C7590();
    sub_1D2877368();
    swift_getKeyPath();
    v195 = v51;
    sub_1D28719E8();

    if (swift_unknownObjectWeakLoadStrong() && (v76 = sub_1D2302E00(), swift_unknownObjectRelease(), (v76 & 1) != 0) || (swift_getKeyPath(), v195 = v51, sub_1D28719E8(), , !swift_unknownObjectWeakLoadStrong()) || (v77 = off_1F4DC5600, type metadata accessor for ComposingViewModel(0), v78 = v77(), swift_unknownObjectRelease(), (v78 & 1) == 0))
    {
      v79 = 1;
    }

    else
    {
      v79 = sub_1D269650C();
    }

    v80 = swift_getKeyPath();
    v81 = swift_allocObject();
    *(v81 + 16) = v79 & 1;
    v82 = v160;
    (*(v161 + 32))(v160, v167, v162);
    v83 = (v82 + *(v71 + 36));
    *v83 = v80;
    v83[1] = sub_1D22C04E0;
    v83[2] = v81;
    v84 = v159;
    sub_1D22EC9BC(v82, v159, &qword_1EC6E1FA0);
    sub_1D22EC9BC(v84, v194, &qword_1EC6E1FA0);
    v73 = 0;
  }

  v85 = 1;
  (*(v168 + 56))(v194, v73, 1, v71);
  if (sub_1D26969A0())
  {
    v86 = sub_1D2875798();
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v93 = swift_allocObject();
    v169 = v72;
    v94 = v197;
    *(v93 + 16) = v196;
    *(v93 + 32) = v94;
    *(v93 + 48) = v198;
    MEMORY[0x1EEE9AC00](v93);
    *(&v156 - 8) = v86;
    *(&v156 - 7) = v88;
    *(&v156 - 48) = v90 & 1;
    v95 = v182;
    *(&v156 - 5) = v92;
    *(&v156 - 4) = v95;
    *(&v156 - 3) = 0x6C69636E6570;
    *(&v156 - 2) = 0xE600000000000000;
    sub_1D27C7514(&v196, &v195);
    sub_1D2870F78();
    v96 = v176;
    sub_1D2877368();
    v69 = v183;

    v72 = v169;

    (*(v189 + 32))(v193, v96, v69);
    v85 = 0;
  }

  v97 = 1;
  v72(v193, v85, 1, v69);
  swift_getKeyPath();
  v195 = v51;
  sub_1D28719E8();

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    if (os_variant_has_internal_content())
    {
      v98 = v164;
      sub_1D2877558();
      v99 = sub_1D2875798();
      v101 = v100;
      v103 = v102;
      v105 = v104;
      v106 = swift_allocObject();
      v107 = v197;
      *(v106 + 16) = v196;
      *(v106 + 32) = v107;
      *(v106 + 48) = v198;
      MEMORY[0x1EEE9AC00](v106);
      *(&v156 - 8) = v99;
      *(&v156 - 7) = v101;
      *(&v156 - 48) = v103 & 1;
      v108 = v182;
      *(&v156 - 5) = v105;
      *(&v156 - 4) = v108;
      *(&v156 - 3) = 0x6275622E74786574;
      *(&v156 - 2) = 0xEB00000000656C62;
      sub_1D27C7514(&v196, &v195);
      sub_1D2870F78();
      v109 = v176;
      sub_1D2877368();

      v110 = v157;
      v111 = *(v157 + 16);
      v112 = v165;
      v113 = v158;
      v111(v165, v98, v158);
      v114 = v189;
      v115 = *(v189 + 16);
      v184 = v51;
      v116 = v156;
      v117 = v109;
      v118 = v183;
      v115(v156, v117, v183);
      v111(v166, v112, v113);
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1FC0);
      v120 = v166;
      v115(&v166[*(v119 + 48)], v116, v118);
      v121 = *(v114 + 8);
      v121(v176, v118);
      v122 = *(v110 + 8);
      v122(v164, v113);
      v123 = v116;
      v51 = v184;
      v121(v123, v118);
      v122(v165, v113);
      sub_1D22EC9BC(v120, v190, &qword_1EC6E1F88);
      v97 = 0;
    }
  }

  v124 = v191;
  v125 = 1;
  (*(v170 + 56))(v190, v97, 1, v171);
  if (sub_1D269669C())
  {
    v126 = sub_1D2875798();
    v128 = v127;
    v130 = v129;
    v132 = v131;
    v133 = *(v51 + 16);
    v134 = *(v51 + 24);
    v135 = swift_allocObject();
    v136 = v197;
    *(v135 + 16) = v196;
    *(v135 + 32) = v136;
    *(v135 + 48) = v198;
    MEMORY[0x1EEE9AC00](v135);
    *(&v156 - 8) = v126;
    *(&v156 - 7) = v128;
    *(&v156 - 48) = v130 & 1;
    v137 = v182;
    *(&v156 - 5) = v132;
    *(&v156 - 4) = v137;
    *(&v156 - 3) = v133;
    *(&v156 - 2) = v134;
    v124 = v191;
    sub_1D27C7514(&v196, &v195);
    sub_1D2870F78();
    v138 = v163;
    sub_1D2877368();

    LOBYTE(v128) = sub_1D269650C();
    v139 = swift_getKeyPath();
    v140 = swift_allocObject();
    *(v140 + 16) = v128 & 1;
    v141 = (v138 + *(v177 + 36));
    *v141 = v139;
    v141[1] = sub_1D22C04E0;
    v141[2] = v140;
    v142 = (v138 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1FB8) + 36));
    v143 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FF0) + 28);
    sub_1D2875968();
    v144 = sub_1D2875998();
    (*(*(v144 - 8) + 56))(v142 + v143, 0, 1, v144);
    *v142 = swift_getKeyPath();
    *(v138 + *(v178 + 36)) = sub_1D2875D98();
    sub_1D22EC9BC(v138, v179, &qword_1EC6E1F78);
    v125 = 0;
  }

  v145 = v179;
  (*(v172 + 56))(v179, v125, 1, v178);
  v146 = v185;
  sub_1D22BD1D0(v124, v185, &qword_1EC6D99D8);
  v147 = v187;
  sub_1D22BD1D0(v192, v187, &qword_1EC6DE810);
  v148 = v188;
  sub_1D22BD1D0(v194, v188, &qword_1EC6E1FA8);
  v149 = v186;
  sub_1D22BD1D0(v193, v186, &qword_1EC6DE810);
  v150 = v190;
  v151 = v173;
  sub_1D22BD1D0(v190, v173, &qword_1EC6E1F90);
  v152 = v174;
  sub_1D22BD1D0(v145, v174, &qword_1EC6E1F80);
  v153 = v175;
  sub_1D22BD1D0(v146, v175, &qword_1EC6D99D8);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1FB0);
  sub_1D22BD1D0(v147, v153 + v154[12], &qword_1EC6DE810);
  sub_1D22BD1D0(v148, v153 + v154[16], &qword_1EC6E1FA8);
  sub_1D22BD1D0(v149, v153 + v154[20], &qword_1EC6DE810);
  sub_1D22BD1D0(v151, v153 + v154[24], &qword_1EC6E1F90);
  sub_1D22BD1D0(v152, v153 + v154[28], &qword_1EC6E1F80);
  sub_1D22BD238(v145, &qword_1EC6E1F80);
  sub_1D22BD238(v150, &qword_1EC6E1F90);
  sub_1D22BD238(v193, &qword_1EC6DE810);
  sub_1D22BD238(v194, &qword_1EC6E1FA8);
  sub_1D22BD238(v192, &qword_1EC6DE810);
  sub_1D22BD238(v191, &qword_1EC6D99D8);
  sub_1D22BD238(v152, &qword_1EC6E1F80);
  sub_1D22BD238(v151, &qword_1EC6E1F90);
  sub_1D22BD238(v186, &qword_1EC6DE810);
  sub_1D22BD238(v188, &qword_1EC6E1FA8);
  sub_1D22BD238(v187, &qword_1EC6DE810);
  return sub_1D22BD238(v185, &qword_1EC6D99D8);
}

void sub_1D27C62D8()
{
  swift_getKeyPath();
  sub_1D27C7734(&qword_1EC6D8390, type metadata accessor for ContextualMenuViewModel);
  sub_1D28719E8();

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1D231F5E8();
    swift_unknownObjectRelease();
  }

  v0 = sub_1D23C7CA8();
  v1 = sub_1D2878068();
  v2 = sub_1D2878068();
  v3 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  if (*(v0 + 48))
  {
    sub_1D2870F68();
    v4 = sub_1D2878068();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E8054(v4, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  v6 = sub_1D2878068();
  v7 = sub_1D2418030(v3);

  if (v7)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22ED23C();
    sub_1D27C7734(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
    v8 = sub_1D2877E78();
  }

  else
  {
    v8 = 0;
  }

  [objc_opt_self() asyncSendSignal:v2 toChannel:v1 withNullableUniqueStringID:v6 withPayload:v8];
}

void sub_1D27C653C()
{
  swift_getKeyPath();
  sub_1D27C7734(&qword_1EC6D8390, type metadata accessor for ContextualMenuViewModel);
  sub_1D28719E8();

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1D2313D08();
    swift_unknownObjectRelease();
  }

  v0 = sub_1D23C7CA8();
  v1 = sub_1D2878068();
  v2 = sub_1D2878068();
  v3 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  if (*(v0 + 48))
  {
    sub_1D2870F68();
    v4 = sub_1D2878068();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E8054(v4, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  v6 = sub_1D2878068();
  v7 = sub_1D2418030(v3);

  if (v7)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22ED23C();
    sub_1D27C7734(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
    v8 = sub_1D2877E78();
  }

  else
  {
    v8 = 0;
  }

  [objc_opt_self() asyncSendSignal:v2 toChannel:v1 withNullableUniqueStringID:v6 withPayload:v8];
}

uint64_t sub_1D27C67A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1FE8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v50 - v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1FF0);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8);
  v53 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v50 - v6;
  v7 = sub_1D2875628();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1FE0);
  MEMORY[0x1EEE9AC00](v50);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  v16 = *a1;
  swift_getKeyPath();
  v60 = v16;
  sub_1D27C7734(&qword_1EC6D8390, type metadata accessor for ContextualMenuViewModel);
  sub_1D28719E8();

  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = sub_1D2302E00();
    swift_unknownObjectRelease();
    if (v17)
    {
      v61 = *(a1 + 16);
      v18 = a1[1];
      v60 = v18;
      if (v61 == 1)
      {
        v19 = v18;
      }

      else
      {
        sub_1D22BD1D0(&v60, v58, &qword_1EC6DC9B8);
        sub_1D2878A28();
        v35 = sub_1D28762E8();
        sub_1D2873BE8();

        sub_1D2875618();
        swift_getAtKeyPath();
        sub_1D22BD238(&v60, &qword_1EC6DC9B8);
        (*(v8 + 8))(v10, v7);
        v19 = v59;
      }

      v23 = v51;
      if (v19 == 5 || v19 == 6)
      {
        v36 = sub_1D2875798();
        v38 = v37;
        v40 = v39;
        if (qword_1ED89E0E8 == -1)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v36 = sub_1D2875798();
        v38 = v41;
        v40 = v42;
        if (qword_1ED89E0E8 == -1)
        {
LABEL_20:
          MEMORY[0x1EEE9AC00](v36);
          *(&v50 - 8) = v43;
          *(&v50 - 7) = v38;
          *(&v50 - 48) = v44 & 1;
          *(&v50 - 5) = v40;
          *(&v50 - 4) = 0;
          *(&v50 - 3) = 0;
          *(&v50 - 2) = v45;
          MEMORY[0x1EEE9AC00](v43);
          *(&v50 - 2) = 0x72616D6B63656863;
          *(&v50 - 1) = 0xE90000000000006BLL;
          sub_1D2877248();
          goto LABEL_21;
        }
      }

      v49 = v36;
      swift_once();
      v36 = v49;
      goto LABEL_20;
    }
  }

  v61 = *(a1 + 16);
  v20 = a1[1];
  v60 = v20;
  if (v61 == 1)
  {
    v21 = v20;
  }

  else
  {
    sub_1D22BD1D0(&v60, v58, &qword_1EC6DC9B8);
    sub_1D2878A28();
    v22 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22BD238(&v60, &qword_1EC6DC9B8);
    (*(v8 + 8))(v10, v7);
    v21 = v59;
  }

  v23 = v51;
  if (v21 != 5 && v21 != 6)
  {
    v24 = sub_1D2875798();
    v26 = v33;
    v28 = v34;
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

  v24 = sub_1D2875798();
  v26 = v25;
  v28 = v27;
  if (qword_1ED89E0E8 != -1)
  {
LABEL_22:
    v48 = v24;
    swift_once();
    v24 = v48;
  }

LABEL_11:
  MEMORY[0x1EEE9AC00](v24);
  *(&v50 - 8) = v29;
  *(&v50 - 7) = v26;
  *(&v50 - 48) = v30 & 1;
  *(&v50 - 5) = v28;
  *(&v50 - 4) = 0;
  *(&v50 - 3) = 0;
  *(&v50 - 2) = v31;
  MEMORY[0x1EEE9AC00](v29);
  *(&v50 - 2) = 0xD000000000000015;
  *(&v50 - 1) = v32;
  sub_1D2877248();
  v15 = v12;
LABEL_21:

  v46 = v53;
  (*(v53 + 16))(v54, v23, v5);
  swift_storeEnumTagMultiPayload();
  sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
  sub_1D2875AF8();
  (*(v46 + 8))(v23, v5);
  sub_1D22BD1D0(v15, v55, &qword_1EC6E1FE0);
  swift_storeEnumTagMultiPayload();
  sub_1D27C7614();
  sub_1D2875AF8();
  return sub_1D22BD238(v15, &qword_1EC6E1FE0);
}

uint64_t sub_1D27C725C()
{
  swift_getKeyPath();
  sub_1D27C7734(&qword_1EC6D8390, type metadata accessor for ContextualMenuViewModel);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1D22F7DF4();
    v2 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context);
    v3 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_accessibilityDescription);
    v4 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_accessibilityDescription + 8);
    sub_1D2870F68();
    v5 = sub_1D2673EFC();
    sub_1D22CC500(v3, v4, v5, v6);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D27C7388(uint64_t *a1)
{
  v2 = sub_1D2871CA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_getKeyPath();
  v8[1] = v6;
  sub_1D27C7734(&qword_1EC6D8390, type metadata accessor for ContextualMenuViewModel);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(v3 + 104))(v5, *MEMORY[0x1E699C1D8], v2);
    sub_1D2333D2C(v5);
    swift_unknownObjectRelease();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

unint64_t sub_1D27C7590()
{
  result = qword_1EC6E1FD0;
  if (!qword_1EC6E1FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1FC8);
    sub_1D27C7614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1FD0);
  }

  return result;
}

unint64_t sub_1D27C7614()
{
  result = qword_1EC6E1FD8;
  if (!qword_1EC6E1FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1FE0);
    sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1FD8);
  }

  return result;
}

uint64_t objectdestroyTm_37()
{

  sub_1D22EE66C(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D27C7734(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D27C77BC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v22 = result;
    v23 = a3;
    v21 = v5;
    while (v7 < *(v4 + 16))
    {
      sub_1D22D7044(v8, v27);
      v10 = v6(v27);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_0(v27);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_1D22D79FC(v27, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D23D8528(0, *(v9 + 16) + 1, 1);
          v9 = v28;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1D23D8528((v12 > 1), v13 + 1, 1);
        }

        v14 = v25;
        v15 = v26;
        v16 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
        MEMORY[0x1EEE9AC00](v16);
        v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v19 + 16))(v18);
        sub_1D2564390(v13, v18, &v28, v14, v15);
        result = __swift_destroy_boxed_opaque_existential_0(v24);
        v9 = v28;
        v6 = v22;
        v4 = v23;
        v5 = v21;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_0(v27);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v9;
  }

  return result;
}

void sub_1D27C79EC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v29 = a5;
  v40 = a4(0);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v39 = &v29 - v13;
  v36 = *(a3 + 16);
  if (v36)
  {
    v14 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x1E69E7CC0];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v14 < *(a3 + 16))
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = *(v11 + 72);
      v17 = a3;
      v18 = a3 + v15 + v16 * v14;
      v19 = v11;
      v20 = a1;
      v21 = v39;
      (*(v11 + 16))(v39, v18, v40, v12);
      v22 = v21;
      a1 = v20;
      v23 = v20(v22);
      if (v5)
      {
        (*v33)(v39, v40);

        return;
      }

      if (v23)
      {
        v24 = *v34;
        (*v34)(v37, v39, v40);
        v25 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29(0, *(v25 + 16) + 1, 1);
          v25 = v41;
        }

        v28 = *(v25 + 16);
        v27 = *(v25 + 24);
        if (v28 >= v27 >> 1)
        {
          v29(v27 > 1, v28 + 1, 1);
          v25 = v41;
        }

        *(v25 + 16) = v28 + 1;
        v38 = v25;
        v24((v25 + v15 + v28 * v16), v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        (*v33)(v39, v40);
        a3 = v17;
      }

      ++v14;
      v11 = v19;
      if (v36 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
LABEL_14:
  }
}

uint64_t VisualSummarizationClient.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_1D2873DE8();
  swift_allocObject();
  *(v0 + 24) = sub_1D2873DD8();
  *(v0 + 16) = sub_1D27D8C8C() & 1;
  return v0;
}

Swift::Void __swiftcall VisualSummarizationClient.prewarm()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_1D2873D98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  v12 = MEMORY[0x1E69C9AC0];
  if (!*(v0 + 16))
  {
    v12 = MEMORY[0x1E69C9AC8];
  }

  (*(v5 + 104))(v11, *v12, v4, v9);
  sub_1D28785B8();
  v13 = sub_1D28785F8();
  (*(*(v13 - 8) + 56))(v3, 0, 1, v13);
  v14 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v7, v11, v4);
  v15 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = v14;
  (*(v5 + 32))(&v16[v15], v7, v4);
  sub_1D26D0310(0, 0, v3, &unk_1D28A72C0, v16);

  sub_1D22BD238(v3, &qword_1EC6D8E60);
  (*(v5 + 8))(v11, v4);
}

uint64_t VisualSummarizationClient.summarizeContext(from:textualContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v7 = sub_1D2873D88();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  v8 = sub_1D2873D08();
  v6[17] = v8;
  v6[18] = *(v8 - 8);
  v6[19] = swift_task_alloc();
  v9 = sub_1D2871818();
  v6[20] = v9;
  v6[21] = *(v9 - 8);
  v6[22] = swift_task_alloc();
  v10 = sub_1D2873EB8();
  v6[23] = v10;
  v6[24] = *(v10 - 8);
  v6[25] = swift_task_alloc();
  v11 = sub_1D2873D28();
  v6[26] = v11;
  v6[27] = *(v11 - 8);
  v6[28] = swift_task_alloc();
  v12 = sub_1D2873CB8();
  v6[29] = v12;
  v6[30] = *(v12 - 8);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D27C8284, 0, 0);
}

uint64_t sub_1D27C8284()
{
  v60 = v0;
  if (qword_1ED8A4928 == -1)
  {
    if (sub_1D23CD2F4())
    {
      goto LABEL_3;
    }

LABEL_19:
    v51 = v0[8];
    *v51 = 0;
    *(v51 + 8) = 0;
    *(v51 + 16) = 0;
    *(v51 + 24) = 1;
    *(v51 + 32) = 0;
LABEL_20:

    v52 = v0[1];

    return v52();
  }

  swift_once();
  if ((sub_1D23CD2F4() & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_3:
  sub_1D2872588();
  sub_1D2870F68();
  sub_1D2870F68();
  v1 = sub_1D2873CA8();
  v2 = sub_1D28789F8();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[34];
  v6 = v0[29];
  v5 = v0[30];
  if (v3)
  {
    v7 = v0[11];
    v55 = v0[12];
    v9 = v0[9];
    v8 = v0[10];
    v57 = v0[34];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v59[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_1D23D7C84(v9, v8, v59);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1D23D7C84(v7, v55, v59);
    _os_log_impl(&dword_1D226E000, v1, v2, "summarizeContext inputs — title: %s - textualContext: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v11, -1, -1);
    MEMORY[0x1D38A3520](v10, -1, -1);

    v12 = *(v5 + 8);
    v12(v57, v6);
  }

  else
  {

    v12 = *(v5 + 8);
    v12(v4, v6);
  }

  v0[35] = v12;
  v14 = v0[11];
  v13 = v0[12];
  v15 = v0[10];
  v59[0] = v0[9];
  v59[1] = v15;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](32, 0xE100000000000000);
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v14, v13);

  v16 = sub_1D27BA78C();

  if (v16 < 10)
  {
    sub_1D2872588();
    v17 = sub_1D2873CA8();
    v18 = sub_1D28789F8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = 10;
      _os_log_impl(&dword_1D226E000, v17, v18, "Unable to summarize the context, combined text is less than %ld words. Falling back to the original text.", v19, 0xCu);
      MEMORY[0x1D38A3520](v19, -1, -1);
    }

    v20 = v0[32];
    v21 = v0[29];
    v23 = v0[11];
    v22 = v0[12];
    v24 = v0[8];

    v12(v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D287F500;
    *(v25 + 32) = v23;
    *(v25 + 40) = v22;
    *v24 = v25;
    *(v24 + 8) = v23;
    *(v24 + 16) = v22;
    *(v24 + 24) = 1;
    *(v24 + 32) = 0;
    swift_bridgeObjectRetain_n();
    goto LABEL_20;
  }

  sub_1D2870F68();
  sub_1D2870F68();
  sub_1D2873D18();
  sub_1D2872588();
  sub_1D2870F68();
  sub_1D2870F68();
  v26 = sub_1D2873CA8();
  v27 = sub_1D28789F8();

  v28 = os_log_type_enabled(v26, v27);
  v29 = v0[33];
  v30 = v0[29];
  if (v28)
  {
    v54 = v0[11];
    v56 = v0[12];
    v32 = v0[9];
    v31 = v0[10];
    v58 = v0[33];
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v59[0] = v34;
    *v33 = 136315394;
    *(v33 + 4) = sub_1D23D7C84(v32, v31, v59);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_1D23D7C84(v54, v56, v59);
    _os_log_impl(&dword_1D226E000, v26, v27, "summarizeContext inputs — title: %s - textualContext: %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v34, -1, -1);
    MEMORY[0x1D38A3520](v33, -1, -1);

    v35 = v58;
  }

  else
  {

    v35 = v29;
  }

  v12(v35, v30);
  v37 = v0[21];
  v36 = v0[22];
  v38 = v0[20];
  v39 = v0[15];
  v40 = v0[16];
  v41 = v0[13];
  v42 = v0[14];
  sub_1D2871808();
  v43 = sub_1D28717B8();
  v45 = v44;
  v0[36] = v44;
  (*(v37 + 8))(v36, v38);
  v46 = MEMORY[0x1E69C9AB0];
  if (!*(v41 + 16))
  {
    v46 = MEMORY[0x1E69C9AB8];
  }

  (*(v39 + 104))(v40, *v46, v42);
  sub_1D2873CF8();
  v47 = swift_task_alloc();
  v0[37] = v47;
  *v47 = v0;
  v47[1] = sub_1D27C8914;
  v48 = v0[28];
  v49 = v0[25];
  v50 = v0[19];

  return MEMORY[0x1EEE33600](v49, v43, v45, v48, v50);
}

uint64_t sub_1D27C8914()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  *(*v1 + 304) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1D27C8BF8;
  }

  else
  {
    v5 = sub_1D27C8AA8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D27C8AA8()
{
  v17 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  sub_1D27CB754(v4, v0[11], v0[12], 0, &v13);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v14;
  v8 = v15;
  v9 = v16;
  v10 = v0[8];
  *v10 = v13;
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  *(v10 + 32) = v9;

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D27C8BF8()
{
  v48 = v0;
  v1 = *(v0 + 304);
  sub_1D2872588();
  v2 = v1;
  v3 = v1;
  v4 = sub_1D2873CA8();
  v5 = sub_1D2878A18();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 304);
    v45 = *(v0 + 248);
    v46 = *(v0 + 280);
    v44 = *(v0 + 232);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v47 = v8;
    *v7 = 136315650;
    swift_getErrorValue();
    v9 = sub_1D2879748();
    v11 = sub_1D23D7C84(v9, v10, &v47);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = sub_1D28714A8();
    v13 = [v12 domain];

    v14 = sub_1D28780A8();
    v16 = v15;

    v17 = sub_1D23D7C84(v14, v16, &v47);

    *(v7 + 14) = v17;
    *(v7 + 22) = 2048;
    v18 = sub_1D28714A8();
    v19 = [v18 code];

    *(v7 + 24) = v19;
    _os_log_impl(&dword_1D226E000, v4, v5, "Unable to summarize Notes context with error: %s - domain: %s - code: %ld. Falling back to returning the original text.", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);

    v46(v45, v44);
  }

  else
  {
    v20 = *(v0 + 304);
    v21 = *(v0 + 280);
    v22 = *(v0 + 248);
    v23 = *(v0 + 232);

    v21(v22, v23);
  }

  v24 = *(v0 + 304);
  *(v0 + 40) = v24;
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  type metadata accessor for SummarizationClientError(0);
  if ((swift_dynamicCast() & 1) != 0 && (v26 = *(v0 + 48), v27 = sub_1D27D1268(), v26, v27))
  {
    v29 = *(v0 + 216);
    v28 = *(v0 + 224);
    v30 = *(v0 + 208);

    (*(v29 + 8))(v28, v30);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v35 = *(v0 + 304);
    v37 = *(v0 + 216);
    v36 = *(v0 + 224);
    v38 = *(v0 + 208);
    v40 = *(v0 + 88);
    v39 = *(v0 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1D287F500;
    *(v31 + 32) = v40;
    *(v31 + 40) = v39;
    sub_1D2870F68();

    (*(v37 + 8))(v36, v38);
    v32 = *(v0 + 88);
    v33 = *(v0 + 96);
    sub_1D2870F68();
    v34 = 1;
  }

  v41 = *(v0 + 64);
  *v41 = v31;
  *(v41 + 8) = v32;
  *(v41 + 16) = v33;
  *(v41 + 24) = v34;
  *(v41 + 32) = 0;

  v42 = *(v0 + 8);

  return v42();
}

uint64_t VisualSummarizationClient.summarizeContext(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_1D2873D88();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = sub_1D2873D08();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = sub_1D2871818();
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v8 = sub_1D2873EB8();
  v4[21] = v8;
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();
  v9 = sub_1D2873D28();
  v4[24] = v9;
  v4[25] = *(v9 - 8);
  v4[26] = swift_task_alloc();
  v10 = sub_1D2873CB8();
  v4[27] = v10;
  v4[28] = *(v10 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D27C92C0, 0, 0);
}

uint64_t sub_1D27C92C0()
{
  v40 = v0;
  if (qword_1ED8A4928 == -1)
  {
    if (sub_1D23CD1EC())
    {
      goto LABEL_3;
    }

LABEL_15:
    v35 = v0[8];
    *v35 = 0;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0;
    *(v35 + 24) = 1;
    *(v35 + 32) = 0;
LABEL_16:

    v36 = v0[1];

    return v36();
  }

  swift_once();
  if ((sub_1D23CD1EC() & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  sub_1D2872588();
  sub_1D2870F68();
  v1 = sub_1D2873CA8();
  v2 = sub_1D28789F8();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[31];
  v5 = v0[27];
  v6 = v0[28];
  if (v3)
  {
    v8 = v0[9];
    v7 = v0[10];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v39 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1D23D7C84(v8, v7, &v39);
    _os_log_impl(&dword_1D226E000, v1, v2, "summarizeContext inputs — text: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1D38A3520](v10, -1, -1);
    MEMORY[0x1D38A3520](v9, -1, -1);
  }

  v11 = *(v6 + 8);
  v11(v4, v5);
  v0[32] = v11;
  if (sub_1D27BA78C() < 10)
  {
    sub_1D2872588();
    v12 = sub_1D2873CA8();
    v13 = sub_1D28789F8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = 10;
      _os_log_impl(&dword_1D226E000, v12, v13, "Unable to summarize the text which is less than %ld words. Falling back to the original text.", v14, 0xCu);
      MEMORY[0x1D38A3520](v14, -1, -1);
    }

    v15 = v0[30];
    v16 = v0[27];
    v18 = v0[9];
    v17 = v0[10];
    v19 = v0[8];

    v11(v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D287F500;
    *(v20 + 32) = v18;
    *(v20 + 40) = v17;
    *v19 = v20;
    *(v19 + 8) = v18;
    *(v19 + 16) = v17;
    *(v19 + 24) = 1;
    *(v19 + 32) = 0;
    swift_bridgeObjectRetain_n();
    goto LABEL_16;
  }

  v22 = v0[19];
  v21 = v0[20];
  v23 = v0[18];
  v24 = v0[13];
  v25 = v0[14];
  v26 = v0[11];
  v38 = v0[12];
  sub_1D2870F68();
  sub_1D2873D18();
  sub_1D2871808();
  v27 = sub_1D28717B8();
  v29 = v28;
  v0[33] = v28;
  (*(v22 + 8))(v21, v23);
  v30 = MEMORY[0x1E69C9AB0];
  if (!*(v26 + 16))
  {
    v30 = MEMORY[0x1E69C9AB8];
  }

  (*(v24 + 104))(v25, *v30, v38);
  sub_1D2873CF8();
  v31 = swift_task_alloc();
  v0[34] = v31;
  *v31 = v0;
  v31[1] = sub_1D27C9740;
  v32 = v0[26];
  v33 = v0[23];
  v34 = v0[17];

  return MEMORY[0x1EEE33600](v33, v27, v29, v32, v34);
}

uint64_t sub_1D27C9740()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  *(*v1 + 280) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1D27C9A14;
  }

  else
  {
    v5 = sub_1D27C98D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D27C98D4()
{
  v17 = v0;
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[21];
  v6 = v0[22];
  sub_1D27CB754(v4, v0[9], v0[10], 0, &v13);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v14;
  v8 = v15;
  v9 = v16;
  v10 = v0[8];
  *v10 = v13;
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  *(v10 + 32) = v9;

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D27C9A14()
{
  v42 = v0;
  v1 = *(v0 + 280);
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  sub_1D2872588();
  v2 = v1;
  v3 = v1;
  v4 = sub_1D2873CA8();
  v5 = sub_1D2878A18();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 280);
    v39 = *(v0 + 232);
    v40 = *(v0 + 256);
    v38 = *(v0 + 216);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v41 = v8;
    *v7 = 136315650;
    swift_getErrorValue();
    v9 = sub_1D2879748();
    v11 = sub_1D23D7C84(v9, v10, &v41);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = sub_1D28714A8();
    v13 = [v12 domain];

    v14 = sub_1D28780A8();
    v16 = v15;

    v17 = sub_1D23D7C84(v14, v16, &v41);

    *(v7 + 14) = v17;
    *(v7 + 22) = 2048;
    v18 = sub_1D28714A8();
    v19 = [v18 code];

    *(v7 + 24) = v19;
    _os_log_impl(&dword_1D226E000, v4, v5, "Unable to summarize text context with error: %s - domain: %s - code: %ld. Falling back to returning the original text.", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);

    v40(v39, v38);
  }

  else
  {
    v20 = *(v0 + 280);
    v21 = *(v0 + 256);
    v22 = *(v0 + 232);
    v23 = *(v0 + 216);

    v21(v22, v23);
  }

  v24 = *(v0 + 280);
  *(v0 + 40) = v24;
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  type metadata accessor for SummarizationClientError(0);
  if ((swift_dynamicCast() & 1) != 0 && (v26 = *(v0 + 48), v27 = sub_1D27D1268(), v26, v27))
  {

    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v32 = *(v0 + 280);
    v34 = *(v0 + 72);
    v33 = *(v0 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D287F500;
    *(v28 + 32) = v34;
    *(v28 + 40) = v33;
    sub_1D2870F68();

    v29 = *(v0 + 72);
    v30 = *(v0 + 80);
    sub_1D2870F68();
    v31 = 1;
  }

  v35 = *(v0 + 64);
  *v35 = v28;
  *(v35 + 8) = v29;
  *(v35 + 16) = v30;
  *(v35 + 24) = v31;
  *(v35 + 32) = 0;

  v36 = *(v0 + 8);

  return v36();
}

uint64_t VisualSummarizationClient.init()()
{
  sub_1D2873DE8();
  swift_allocObject();
  *(v0 + 24) = sub_1D2873DD8();
  *(v0 + 16) = sub_1D27D8C8C() & 1;
  return v0;
}

uint64_t sub_1D27C9E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v6 = sub_1D2871818();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2138);
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D27C9F50, 0, 0);
}

uint64_t sub_1D27C9F50()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    sub_1D2870F78();

    v6 = sub_1D2873D78();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_1D2871808();
    sub_1D28717B8();
    (*(v5 + 8))(v2, v4);
    sub_1D2873DA8();

    sub_1D22BD238(v3, &qword_1EC6E2138);
  }

  **(v0 + 40) = Strong == 0;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t VisualSummarizationClient.summarizeContext(from:precomputedSummary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
  v5[11] = swift_task_alloc();
  v6 = sub_1D2871798();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2008);
  v5[15] = swift_task_alloc();
  v7 = sub_1D2873E78();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v8 = sub_1D2873D68();
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();
  v9 = sub_1D2873D88();
  v5[23] = v9;
  v5[24] = *(v9 - 8);
  v5[25] = swift_task_alloc();
  v10 = sub_1D2873D48();
  v5[26] = v10;
  v5[27] = *(v10 - 8);
  v5[28] = swift_task_alloc();
  v11 = sub_1D2871818();
  v5[29] = v11;
  v5[30] = *(v11 - 8);
  v5[31] = swift_task_alloc();
  v12 = sub_1D2873EB8();
  v5[32] = v12;
  v5[33] = *(v12 - 8);
  v5[34] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2010);
  v5[35] = v13;
  v5[36] = *(v13 - 8);
  v5[37] = swift_task_alloc();
  v14 = sub_1D2873CB8();
  v5[38] = v14;
  v5[39] = *(v14 - 8);
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v15 = type metadata accessor for ConversationContextItem();
  v5[42] = v15;
  v5[43] = *(v15 - 8);
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D27CA580, 0, 0);
}

uint64_t sub_1D27CA580()
{
  v110 = v0;
  v1 = v0[7];
  v102 = sub_1D27D1AFC(v1);
  v107 = sub_1D27D23E0(v102);
  v0[46] = v107;
  sub_1D27D2998(v1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[43];
    v5 = (v0[45] + *(v0[42] + 20));
    v6 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = *(v4 + 72);
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = v0[45];
      sub_1D27D2F44(v6, v10);
      v11 = *v5;
      v12 = v5[1];
      sub_1D2870F68();
      sub_1D27D2FA8(v10);
      if (v12)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D27CC674(0, *(v8 + 2) + 1, 1, v8);
        }

        v14 = *(v8 + 2);
        v13 = *(v8 + 3);
        if (v14 >= v13 >> 1)
        {
          v8 = sub_1D27CC674((v13 > 1), v14 + 1, 1, v8);
        }

        *(v8 + 2) = v14 + 1;
        v9 = &v8[16 * v14];
        *(v9 + 4) = v11;
        *(v9 + 5) = v12;
      }

      v6 += v7;
      --v3;
    }

    while (v3);

    v15 = *(v8 + 2);
    if (v15)
    {
LABEL_11:
      v16 = 0;
      v17 = (v8 + 40);
      while (v16 < *(v8 + 2))
      {
        ++v16;
        v19 = *(v17 - 1);
        v18 = *v17;
        v109[0] = 0;
        v109[1] = 0xE000000000000000;
        sub_1D2870F68();
        sub_1D2870F68();
        MEMORY[0x1D38A0C50](32, 0xE100000000000000);
        sub_1D2870F68();
        MEMORY[0x1D38A0C50](v19, v18);

        v17 += 2;
        if (v15 == v16)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_46;
    }
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
    v15 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v15)
    {
      goto LABEL_11;
    }
  }

LABEL_16:
  v0[47] = 0;
  v0[48] = 0xE000000000000000;
  v21 = v0[8];
  v20 = v0[9];

  v22 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v22 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v23 = v0[8];
    v24 = v0[6];

    *v24 = 0;
    *(v24 + 8) = v23;
    *(v24 + 16) = v20;
    *(v24 + 24) = 1;
    *(v24 + 32) = v107;
    sub_1D2870F68();
LABEL_48:

    v92 = v0[1];

    return v92();
  }

  if (qword_1ED8A4928 != -1)
  {
LABEL_46:
    swift_once();
    if ((sub_1D23D0160() & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_22;
  }

  if ((sub_1D23D0160() & 1) == 0)
  {
LABEL_47:
    v91 = v0[6];

    *v91 = 0;
    *(v91 + 8) = 0;
    *(v91 + 16) = 0xE000000000000000;
    *(v91 + 24) = 1;
    *(v91 + 32) = v107;
    goto LABEL_48;
  }

LABEL_22:
  sub_1D2872588();
  sub_1D2870F68();
  v25 = sub_1D2873CA8();
  v26 = sub_1D28789F8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = v0[41];
    v28 = v0[42];
    v30 = v0[38];
    v29 = v0[39];
    v31 = v0[7];
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v109[0] = v33;
    *v32 = 136315138;
    v34 = MEMORY[0x1D38A0EB0](v31, v28);
    v36 = sub_1D23D7C84(v34, v35, v109);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_1D226E000, v25, v26, "summarizeContext inputs — conversationContextItems: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x1D38A3520](v33, -1, -1);
    MEMORY[0x1D38A3520](v32, -1, -1);
  }

  else
  {
    v27 = v0[41];
    v30 = v0[38];
    v29 = v0[39];
  }

  v37 = *(v29 + 8);
  v37(v27, v30);
  v0[49] = v37;
  v38 = v0[7];
  v39 = *(v38 + 16);
  if (v39)
  {
    v40 = v0[43];
    v108 = v0[42];
    v41 = v0[21];
    v42 = v0[17];
    v97 = v0[15];
    v43 = v0[13];
    v109[0] = MEMORY[0x1E69E7CC0];
    sub_1D23D8CB0(0, v39, 0);
    v44 = v109[0];
    v45 = v38 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v96 = *MEMORY[0x1E69C9B18];
    v100 = (v43 + 48);
    v101 = (v42 + 16);
    v94 = v42;
    v95 = (v43 + 32);
    v99 = (v42 + 8);
    v98 = *(v40 + 72);
    do
    {
      v104 = v45;
      v105 = v44;
      v46 = v0[44];
      sub_1D27D2F44(v45, v46);
      v47 = (v46 + *(v108 + 24));
      v48 = v47[1];
      v49 = v0[15];
      if (v48)
      {
        *v49 = *v47;
        *(v97 + 8) = v48;
        v50 = sub_1D2873E38();
        v51 = *(v50 - 8);
        (*(v51 + 104))(v49, v96, v50);
        (*(v51 + 56))(v49, 0, 1, v50);
      }

      else
      {
        v52 = sub_1D2873E38();
        (*(*(v52 - 8) + 56))(v49, 1, 1, v52);
      }

      v53 = v0[19];
      v54 = v0[10];
      sub_1D2870F68();
      sub_1D2870F68();
      sub_1D2873E48();
      v55 = swift_task_alloc();
      *(v55 + 16) = v54;
      *(v55 + 24) = v53;
      sub_1D2870F68();
      sub_1D27C79EC(sub_1D27D3004, v55, v102, MEMORY[0x1E69C9B20], sub_1D23D8CF4);
      v57 = v56;

      if (*(v57 + 16))
      {
        v58 = *v101;
      }

      else
      {
        v59 = v0[19];
        v60 = v0[16];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DACB0);
        v61 = (*(v94 + 80) + 32) & ~*(v94 + 80);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_1D287F500;
        v58 = *(v94 + 16);
        v58(v62 + v61, v59, v60);
      }

      v63 = v0[44];
      v65 = v0[11];
      v64 = v0[12];
      v58(v0[18], v0[19], v0[16]);
      sub_1D22BD1D0(v63, v65, &unk_1EC6DAE40);
      v66 = *v100;
      v67 = (*v100)(v65, 1, v64);
      v69 = v0[11];
      v68 = v0[12];
      v103 = v39;
      if (v67 == 1)
      {
        sub_1D2871778();
        if (v66(v69, 1, v68) != 1)
        {
          sub_1D22BD238(v0[11], &unk_1EC6DAE40);
        }
      }

      else
      {
        (*v95)(v0[14], v69, v68);
      }

      v70 = v0[44];
      v71 = v0[19];
      v72 = v0[16];
      sub_1D2870F68();
      sub_1D2873D58();
      sub_1D27D2FA8(v70);
      (*v99)(v71, v72);
      v44 = v105;
      v109[0] = v105;
      v74 = *(v105 + 16);
      v73 = *(v105 + 24);
      if (v74 >= v73 >> 1)
      {
        sub_1D23D8CB0(v73 > 1, v74 + 1, 1);
        v44 = v109[0];
      }

      v75 = v0[22];
      v76 = v0[20];
      *(v44 + 16) = v74 + 1;
      (*(v41 + 32))(v44 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v74, v75, v76);
      v45 = v104 + v98;
      --v39;
    }

    while (v103 != 1);
  }

  v77 = v0[30];
  v78 = v0[31];
  v79 = v0[29];
  v81 = v0[24];
  v80 = v0[25];
  v106 = v0[23];
  v82 = v0[10];
  sub_1D27D31B8(&qword_1EC6E2018, MEMORY[0x1E69C9A68]);
  sub_1D2873E18();
  sub_1D2871808();
  v83 = sub_1D28717B8();
  v85 = v84;
  v0[50] = v84;
  (*(v77 + 8))(v78, v79);
  v86 = MEMORY[0x1E69C9AB0];
  if (!*(v82 + 16))
  {
    v86 = MEMORY[0x1E69C9AB8];
  }

  (*(v81 + 104))(v80, *v86, v106);
  sub_1D2873D38();
  v87 = swift_task_alloc();
  v0[51] = v87;
  *v87 = v0;
  v87[1] = sub_1D27CB0A0;
  v88 = v0[37];
  v89 = v0[34];
  v90 = v0[28];

  return MEMORY[0x1EEE335F8](v89, v83, v85, v88, v90);
}

uint64_t sub_1D27CB0A0()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  (*(v2[27] + 8))(v2[28], v2[26]);

  if (v0)
  {

    v3 = sub_1D27CB3E4;
  }

  else
  {
    v3 = sub_1D27CB228;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D27CB228()
{
  v17 = v0;
  v1 = *(v0 + 288);
  v12 = *(v0 + 296);
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  v6 = *(v0 + 48);
  sub_1D27CB754(v3, *(v0 + 376), *(v0 + 384), *(v0 + 368), &v13);

  (*(v5 + 8))(v3, v4);
  (*(v1 + 8))(v12, v2);
  v7 = v14;
  v8 = v15;
  v9 = v16;
  *v6 = v13;
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  *(v6 + 32) = v9;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D27CB3E4()
{
  v33 = v0;
  v1 = v0[52];
  sub_1D2872588();
  v2 = v1;
  v3 = v1;
  v4 = sub_1D2873CA8();
  v5 = sub_1D2878A18();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[52];
    v30 = v0[40];
    v31 = v0[49];
    v29 = v0[38];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32[0] = v8;
    *v7 = 136315650;
    swift_getErrorValue();
    v9 = sub_1D2879748();
    v11 = sub_1D23D7C84(v9, v10, v32);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = sub_1D28714A8();
    v13 = [v12 domain];

    v14 = sub_1D28780A8();
    v16 = v15;

    v17 = sub_1D23D7C84(v14, v16, v32);

    *(v7 + 14) = v17;
    *(v7 + 22) = 2048;
    v18 = sub_1D28714A8();
    v19 = [v18 code];

    *(v7 + 24) = v19;
    _os_log_impl(&dword_1D226E000, v4, v5, "Unable to summarize Messages context with error: %s - domain: %s - code: %ld", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);

    v31(v30, v29);
  }

  else
  {
    v20 = v0[52];
    v21 = v0[49];
    v22 = v0[40];
    v23 = v0[38];

    v21(v22, v23);
  }

  v25 = v0[36];
  v24 = v0[37];
  v26 = v0[35];
  swift_willThrow();
  (*(v25 + 8))(v24, v26);

  v27 = v0[1];

  return v27();
}

uint64_t sub_1D27CB754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void (*a4)(char *, uint64_t, uint64_t)@<X3>, void (**a5)(char *, uint64_t, uint64_t)@<X8>)
{
  v93 = a5;
  v94 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2130);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v95 = &v81 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D40);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v92 = &v81 - v11;
  v12 = sub_1D2873CB8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v81 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v81 - v19;
  v99 = sub_1D28712C8();
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1D2871318();
  v22 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v84 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v81 - v25;
  v27 = sub_1D2873E98();
  v91 = v22;
  if (v27)
  {
    v28 = a2;
    v29 = *(v27 + 16);
    if (v29)
    {
      v87 = v20;
      v88 = v12;
      v85 = v17;
      v86 = a1;
      v82 = v13;
      v89 = a3;
      v90 = v28;
      v101[0] = MEMORY[0x1E69E7CC0];
      v30 = v27;
      sub_1D23D81B8(0, v29, 0);
      v31 = v101[0];
      v32 = *(v22 + 16);
      v33 = *(v22 + 80);
      v81 = v30;
      v34 = v30 + ((v33 + 32) & ~v33);
      v96 = *(v22 + 72);
      v97 = v32;
      do
      {
        v35 = v100;
        v97(v26, v34, v100);
        sub_1D28712B8();
        sub_1D27D31B8(&qword_1ED8A6CF0, MEMORY[0x1E6968678]);
        v36 = sub_1D28782D8();
        v38 = v37;
        (*(v22 + 8))(v26, v35);
        v101[0] = v31;
        v40 = *(v31 + 16);
        v39 = *(v31 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1D23D81B8((v39 > 1), v40 + 1, 1);
          v31 = v101[0];
        }

        *(v31 + 16) = v40 + 1;
        v41 = v31 + 16 * v40;
        *(v41 + 32) = v36;
        *(v41 + 40) = v38;
        v34 += v96;
        --v29;
      }

      while (v29);
      v97 = v31;

      v17 = v85;
      a1 = v86;
      a3 = v89;
      a2 = v90;
      v20 = v87;
      v12 = v88;
      v13 = v82;
    }

    else
    {

      v97 = MEMORY[0x1E69E7CC0];
      a2 = v28;
    }
  }

  else
  {
    v97 = MEMORY[0x1E69E7CC0];
  }

  sub_1D2872588();
  v42 = sub_1D2873CA8();
  v43 = sub_1D28789F8();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v101[0] = v96;
    *v44 = 136315138;
    v87 = v20;
    v45 = sub_1D2870F68();
    v46 = MEMORY[0x1D38A0E70](v45, MEMORY[0x1E69E6158]);
    v88 = v12;
    v89 = a3;
    v90 = a2;
    v47 = v46;
    v49 = v48;

    v50 = sub_1D23D7C84(v47, v49, v101);

    *(v44 + 4) = v50;
    a3 = v89;
    a2 = v90;
    v12 = v88;
    _os_log_impl(&dword_1D226E000, v42, v43, "summarizeContext outputs — visualConcepts: %s", v44, 0xCu);
    v51 = v96;
    __swift_destroy_boxed_opaque_existential_0(v96);
    MEMORY[0x1D38A3520](v51, -1, -1);
    MEMORY[0x1D38A3520](v44, -1, -1);

    v52 = *(v13 + 8);
    v53 = v87;
  }

  else
  {

    v52 = *(v13 + 8);
    v53 = v20;
  }

  v96 = v52;
  v52(v53, v12);
  v54 = v92;
  sub_1D2873E88();
  v55 = v91;
  v56 = v100;
  if ((*(v91 + 48))(v54, 1, v100) != 1)
  {
    v57 = v84;
    (*(v55 + 32))(v84, v54, v56);
    sub_1D28712B8();
    sub_1D27D31B8(&qword_1ED8A6CF0, MEMORY[0x1E6968678]);
    a2 = sub_1D28782D8();
    a3 = v58;
    (*(v55 + 8))(v57, v56);
    sub_1D2870F68();
    goto LABEL_17;
  }

  sub_1D22BD238(v54, &unk_1EC6E1D40);
  if (a3)
  {
    swift_bridgeObjectRetain_n();
LABEL_17:
    sub_1D2872588();
    sub_1D2870F68();
    v59 = sub_1D2873CA8();
    v60 = sub_1D28789F8();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v85 = v17;
      v86 = a1;
      v63 = v62;
      v101[0] = v62;
      *v61 = 136315138;
      v64 = v12;
      v65 = a3;
      v66 = sub_1D23D7C84(a2, a3, v101);

      *(v61 + 4) = v66;
      a3 = v65;
      _os_log_impl(&dword_1D226E000, v59, v60, "summarizeContext outputs — visualTopLine: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x1D38A3520](v63, -1, -1);
      MEMORY[0x1D38A3520](v61, -1, -1);

      v67 = v85;
      v68 = v64;
    }

    else
    {

      v67 = v17;
      v68 = v12;
    }

    (v96)(v67, v68);
    goto LABEL_21;
  }

  v77 = v83;
  sub_1D2872588();
  v78 = sub_1D2873CA8();
  v79 = sub_1D28789F8();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&dword_1D226E000, v78, v79, "summarizeContext outputs — visualTopLine is nil", v80, 2u);
    MEMORY[0x1D38A3520](v80, -1, -1);
  }

  (v96)(v77, v12);
  a2 = 0;
  a3 = 0;
LABEL_21:
  sub_1D2870F68();
  v69 = v95;
  sub_1D2873EA8();
  v70 = sub_1D2873E08();
  v71 = *(v70 - 8);
  if ((*(v71 + 48))(v69, 1, v70) == 1)
  {
    sub_1D22BD238(v95, &qword_1EC6E2130);
    v72 = 1;
  }

  else
  {
    v73 = v95;
    v72 = sub_1D2873DF8();
    (*(v71 + 8))(v73, v70);
  }

  v74 = v93;
  *v93 = v97;
  v74[1] = a2;
  v74[2] = a3;
  *(v74 + 24) = v72 & 1;
  v75 = v94;
  sub_1D2870F68();

  v74[4] = v75;
  return result;
}

uint64_t sub_1D27CC0B4(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = sub_1D2871798();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  sub_1D22BD1D0(a1, v8, &unk_1EC6DAE40);
  v16 = *(v10 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1D2871778();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1D22BD238(v8, &unk_1EC6DAE40);
    }
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
  }

  sub_1D22BD1D0(v21, v5, &unk_1EC6DAE40);
  if (v16(v5, 1, v9) == 1)
  {
    sub_1D2871778();
    if (v16(v5, 1, v9) != 1)
    {
      sub_1D22BD238(v5, &unk_1EC6DAE40);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v5, v9);
  }

  v17 = sub_1D2871748();
  v18 = *(v10 + 8);
  v18(v12, v9);
  v18(v15, v9);
  return v17 & 1;
}

void sub_1D27CC398(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationContextItem();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!a1)
  {

    return;
  }

  if (*(a2 + 16) >= a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = *(a2 + 16);
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1D23D8C6C(0, v8, 0);
  v9 = v21;
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v20[1] = a2;
    v13 = a2 + v12;
    v14 = *(v5 + 72);
    do
    {
      sub_1D27D2F44(v13, v7);
      v16 = *(v9 + 16);
      if (v16 < a1)
      {
        v21 = v9;
        v15 = *(v9 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1D23D8C6C(v15 > 1, v16 + 1, 1);
          v9 = v21;
        }

        *(v9 + 16) = v16 + 1;
        sub_1D27D30F0(v7, v9 + v12 + v16 * v14);
      }

      else
      {
        if (v11 >= v16)
        {
          __break(1u);
          goto LABEL_27;
        }

        sub_1D27D3154(v7, v9 + v12 + v14 * v11);
        if ((v11 + 1) < a1)
        {
          ++v11;
        }

        else
        {
          v11 = 0;
        }
      }

      v13 += v14;
      --v10;
    }

    while (v10);

    if (!v11)
    {
      return;
    }

    v17 = *(v9 + 16);
    v20[2] = MEMORY[0x1E69E7CC0];
    sub_1D23D8C6C(0, v17, 0);
    if (v17 >= v11)
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      v18 = *(v9 + 16);
      if (v18 >= v11 && v18 >= v17)
      {
        v19 = sub_1D2870F78();
        sub_1D27D0C14(v19, v9 + v12, v11, (2 * v17) | 1);
        sub_1D27D0C14(v9, v9 + v12, 0, (2 * v11) | 1);
        return;
      }

      goto LABEL_30;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }
}

uint64_t VisualSummarizationClient.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *sub_1D27CC674(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D27CC904(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2108);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D27CCAC0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2028);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D27CCC1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2140);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D27CCF3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAB60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1D27CD088(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E20A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D27CD1C4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

void *sub_1D27CD3E8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1D27CD54C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 48);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[48 * v9])
    {
      memmove(v13, v14, 48 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1D27CD668(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E20E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D27CD788(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DACA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D27CD920(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2118);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D27CDA40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAB88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1D27CDB58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2100);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1D27CDC5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1D27CDD60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF890);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D27CDE80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2160);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1D27CDFE8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
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
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
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

size_t sub_1D27CE1D0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
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

char *sub_1D27CE3AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAD08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1D27CE4B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2148);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D27CE5D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E20F0);
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

void *sub_1D27CE6D8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = a4[3];
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = a4[2];
  if (v8 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    v11[2] = v9;
    v11[3] = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (v6)
  {
    if (v11 != a4 || v11 + 4 >= &a4[2 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 16 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC608);
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1D27CE804(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

size_t sub_1D27CE888(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC80);
  v4 = *(sub_1D2872008() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D27CE9A8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAB90);
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
  v4[3] = 2 * (v9 >> 3);
  return result;
}

size_t sub_1D27CEA98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5) - 8);
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

void *sub_1D27CEB98(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10);
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

void sub_1D27CEC20(void **a1)
{
  v2 = *(type metadata accessor for ConversationContextItem() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D286FD8C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D27CECC8(v5);
  *a1 = v3;
}

void sub_1D27CECC8(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D28795B8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ConversationContextItem();
        v6 = sub_1D2878468();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ConversationContextItem() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D27CF2BC(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D27CEDF4(0, v2, 1, a1);
  }
}

void sub_1D27CEDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v56 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v43 - v11;
  v12 = sub_1D2871798();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v43 - v16;
  v53 = type metadata accessor for ConversationContextItem();
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v60 = &v43 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v58 = &v43 - v22;
  v45 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v24 = *(v21 + 72);
    v25 = (v13 + 48);
    v54 = (v13 + 32);
    v26 = (v13 + 8);
    v27 = v23 + v24 * (a3 - 1);
    v50 = -v24;
    v51 = v23;
    v28 = a1 - a3;
    v44 = v24;
    v29 = v23 + v24 * a3;
LABEL_5:
    v48 = v27;
    v49 = a3;
    v46 = v29;
    v47 = v28;
    v30 = v57;
    while (1)
    {
      v31 = v58;
      sub_1D27D2F44(v29, v58);
      sub_1D27D2F44(v27, v60);
      sub_1D22BD1D0(v31, v30, &unk_1EC6DAE40);
      v32 = *v25;
      if ((*v25)(v30, 1, v12) == 1)
      {
        sub_1D2871778();
        v33 = v32(v30, 1, v12);
        v34 = v56;
        if (v33 != 1)
        {
          sub_1D22BD238(v57, &unk_1EC6DAE40);
        }
      }

      else
      {
        (*v54)(v59, v30, v12);
        v34 = v56;
      }

      sub_1D22BD1D0(v60, v34, &unk_1EC6DAE40);
      if (v32(v34, 1, v12) == 1)
      {
        v35 = v55;
        sub_1D2871778();
        if (v32(v34, 1, v12) != 1)
        {
          sub_1D22BD238(v34, &unk_1EC6DAE40);
        }
      }

      else
      {
        v35 = v55;
        (*v54)(v55, v34, v12);
      }

      v36 = v59;
      v37 = sub_1D2871748();
      v38 = v35;
      v39 = v37;
      v40 = *v26;
      (*v26)(v38, v12);
      v40(v36, v12);
      sub_1D27D2FA8(v60);
      sub_1D27D2FA8(v58);
      v30 = v57;
      if ((v39 & 1) == 0)
      {
LABEL_4:
        a3 = v49 + 1;
        v27 = v48 + v44;
        v28 = v47 - 1;
        v29 = v46 + v44;
        if (v49 + 1 == v45)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v51)
      {
        break;
      }

      v41 = v52;
      sub_1D27D30F0(v29, v52);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D27D30F0(v41, v27);
      v27 += v50;
      v29 += v50;
      if (__CFADD__(v28++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D27CF2BC(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v145 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v168 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v141 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v141 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v141 - v15;
  v17 = sub_1D2871798();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v141 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v174 = &v141 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v155 = &v141 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v161 = &v141 - v26;
  v166 = type metadata accessor for ConversationContextItem();
  v159 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v149 = &v141 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v165 = &v141 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v175 = &v141 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v173 = &v141 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v141 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v160 = &v141 - v38;
  MEMORY[0x1EEE9AC00](v39);
  MEMORY[0x1EEE9AC00](v40);
  v43 = a3;
  if (a3[1] < 1)
  {
    v46 = MEMORY[0x1E69E7CC0];
    v47 = v147;
    v48 = v43;
LABEL_114:
    a4 = *v145;
    if (!*v145)
    {
      goto LABEL_155;
    }

    v18 = v46;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v134 = v18;
LABEL_117:
      v176 = v134;
      v18 = *(v134 + 2);
      if (v18 >= 2)
      {
        do
        {
          v135 = *v48;
          if (!*v48)
          {
            goto LABEL_153;
          }

          v136 = v48;
          v48 = (v18 - 1);
          v137 = *&v134[16 * v18];
          v138 = v134;
          v139 = *&v134[16 * v18 + 24];
          sub_1D27D01DC(v135 + *(v159 + 72) * v137, v135 + *(v159 + 72) * *&v134[16 * v18 + 16], v135 + *(v159 + 72) * v139, a4);
          if (v47)
          {
            break;
          }

          if (v139 < v137)
          {
            goto LABEL_142;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v138 = sub_1D269163C(v138);
          }

          if (v18 - 2 >= *(v138 + 2))
          {
            goto LABEL_143;
          }

          v140 = &v138[16 * v18];
          *v140 = v137;
          *(v140 + 1) = v139;
          v176 = v138;
          sub_1D26915B0(v48);
          v134 = v176;
          v18 = *(v176 + 2);
          v48 = v136;
        }

        while (v18 > 1);
      }

LABEL_125:

      return;
    }

LABEL_149:
    v134 = sub_1D269163C(v18);
    goto LABEL_117;
  }

  v44 = a3[1];
  v142 = &v141 - v41;
  v143 = v42;
  v172 = v10;
  v141 = a4;
  v45 = 0;
  v171 = (v18 + 48);
  v170 = (v18 + 32);
  v169 = (v18 + 8);
  v46 = MEMORY[0x1E69E7CC0];
  v157 = v16;
  v158 = v13;
  v167 = v20;
  v156 = v36;
  v47 = v147;
  v48 = v43;
  v49 = v44;
  v146 = v43;
  while (1)
  {
    v50 = v45;
    v150 = v46;
    if (v45 + 1 >= v49)
    {
      v49 = v45 + 1;
    }

    else
    {
      v51 = *v48;
      v52 = *(v159 + 72);
      v53 = v45;
      v54 = v51 + v52 * (v45 + 1);
      v147 = v47;
      v55 = v142;
      sub_1D27D2F44(v54, v142);
      v56 = v143;
      sub_1D27D2F44(v51 + v52 * v53, v143);
      v57 = v147;
      LODWORD(v164) = sub_1D27CC0B4(v55, v56);
      v147 = v57;
      if (v57)
      {
        sub_1D27D2FA8(v56);
        sub_1D27D2FA8(v55);

        return;
      }

      sub_1D27D2FA8(v56);
      sub_1D27D2FA8(v55);
      v144 = v53;
      a4 = v53 + 2;
      v18 = v51 + v52 * (v53 + 2);
      v162 = v49;
      v163 = v52;
      while (v49 != a4)
      {
        v62 = v160;
        sub_1D27D2F44(v18, v160);
        sub_1D27D2F44(v54, v36);
        v63 = v157;
        sub_1D22BD1D0(v62, v157, &unk_1EC6DAE40);
        v64 = *v171;
        if ((*v171)(v63, 1, v17) == 1)
        {
          sub_1D2871778();
          if (v64(v63, 1, v17) != 1)
          {
            sub_1D22BD238(v157, &unk_1EC6DAE40);
          }
        }

        else
        {
          (*v170)(v161, v63, v17);
        }

        v65 = v158;
        sub_1D22BD1D0(v36, v158, &unk_1EC6DAE40);
        if (v64(v65, 1, v17) == 1)
        {
          v58 = v155;
          sub_1D2871778();
          if (v64(v65, 1, v17) != 1)
          {
            sub_1D22BD238(v158, &unk_1EC6DAE40);
          }
        }

        else
        {
          v58 = v155;
          (*v170)(v155, v65, v17);
        }

        v59 = v161;
        v60 = sub_1D2871748();
        v61 = *v169;
        (*v169)(v58, v17);
        v61(v59, v17);
        v36 = v156;
        sub_1D27D2FA8(v156);
        sub_1D27D2FA8(v160);
        ++a4;
        v49 = v162;
        v18 += v163;
        v54 += v163;
        if ((v164 ^ v60))
        {
          v49 = a4 - 1;
          break;
        }
      }

      v47 = v147;
      v48 = v146;
      v50 = v144;
      if (v164)
      {
        if (v49 < v144)
        {
          goto LABEL_148;
        }

        if (v144 < v49)
        {
          v66 = v163;
          a4 = v163 * (v49 - 1);
          v67 = v49 * v163;
          v162 = v49;
          v68 = v49;
          v69 = v144;
          v70 = v144 * v163;
          do
          {
            if (v69 != --v68)
            {
              v18 = *v146;
              if (!*v146)
              {
                goto LABEL_152;
              }

              sub_1D27D30F0(v18 + v70, v149);
              if (v70 < a4 || v18 + v70 >= v18 + v67)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v70 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D27D30F0(v149, v18 + a4);
            }

            ++v69;
            a4 -= v66;
            v67 -= v66;
            v70 += v66;
          }

          while (v69 < v68);
          v47 = v147;
          v48 = v146;
          v36 = v156;
          v50 = v144;
          v49 = v162;
        }
      }
    }

    v71 = v48[1];
    if (v49 >= v71)
    {
      goto LABEL_42;
    }

    if (__OFSUB__(v49, v50))
    {
      goto LABEL_145;
    }

    if (v49 - v50 >= v141)
    {
LABEL_42:
      a4 = v49;
      if (v49 < v50)
      {
        goto LABEL_144;
      }

      goto LABEL_43;
    }

    if (__OFADD__(v50, v141))
    {
      goto LABEL_146;
    }

    if (v50 + v141 >= v71)
    {
      a4 = v48[1];
    }

    else
    {
      a4 = v50 + v141;
    }

    if (a4 < v50)
    {
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    if (v49 == a4)
    {
      goto LABEL_42;
    }

    v147 = v47;
    v117 = *v48;
    v118 = *(v159 + 72);
    v119 = *v48 + v118 * (v49 - 1);
    v163 = -v118;
    v144 = v50;
    v120 = v50 - v49;
    v164 = v117;
    v148 = v118;
    v18 = v117 + v49 * v118;
    v121 = v168;
    v151 = a4;
LABEL_95:
    v162 = v49;
    v152 = v18;
    v153 = v120;
    v154 = v119;
    v122 = v119;
LABEL_96:
    v123 = v173;
    sub_1D27D2F44(v18, v173);
    sub_1D27D2F44(v122, v175);
    v124 = v172;
    sub_1D22BD1D0(v123, v172, &unk_1EC6DAE40);
    v125 = *v171;
    if ((*v171)(v124, 1, v17) == 1)
    {
      sub_1D2871778();
      if (v125(v124, 1, v17) != 1)
      {
        sub_1D22BD238(v172, &unk_1EC6DAE40);
      }
    }

    else
    {
      (*v170)(v174, v124, v17);
    }

    sub_1D22BD1D0(v175, v121, &unk_1EC6DAE40);
    v126 = v125(v121, 1, v17);
    v127 = v167;
    if (v126 == 1)
    {
      sub_1D2871778();
      v128 = v17;
      if (v125(v121, 1, v17) != 1)
      {
        sub_1D22BD238(v121, &unk_1EC6DAE40);
      }
    }

    else
    {
      (*v170)(v167, v121, v17);
      v128 = v17;
    }

    v129 = v174;
    v130 = sub_1D2871748();
    v131 = *v169;
    (*v169)(v127, v128);
    v131(v129, v128);
    sub_1D27D2FA8(v175);
    sub_1D27D2FA8(v173);
    if (v130)
    {
      break;
    }

    v121 = v168;
    v17 = v128;
LABEL_94:
    v49 = v162 + 1;
    v119 = v154 + v148;
    v120 = v153 - 1;
    v18 = v152 + v148;
    a4 = v151;
    if (v162 + 1 != v151)
    {
      goto LABEL_95;
    }

    v47 = v147;
    v48 = v146;
    v36 = v156;
    v50 = v144;
    if (v151 < v144)
    {
      goto LABEL_144;
    }

LABEL_43:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v151 = a4;
    if (isUniquelyReferenced_nonNull_native)
    {
      v46 = v150;
    }

    else
    {
      v46 = sub_1D2691650(0, *(v150 + 2) + 1, 1, v150);
    }

    a4 = *(v46 + 2);
    v73 = *(v46 + 3);
    v18 = a4 + 1;
    if (a4 >= v73 >> 1)
    {
      v46 = sub_1D2691650((v73 > 1), a4 + 1, 1, v46);
    }

    *(v46 + 2) = v18;
    v74 = &v46[16 * a4];
    v75 = v151;
    *(v74 + 4) = v50;
    *(v74 + 5) = v75;
    v164 = *v145;
    if (!v164)
    {
      goto LABEL_154;
    }

    if (a4)
    {
      while (2)
      {
        v76 = v18 - 1;
        if (v18 >= 4)
        {
          v81 = &v46[16 * v18 + 32];
          v82 = *(v81 - 64);
          v83 = *(v81 - 56);
          v87 = __OFSUB__(v83, v82);
          v84 = v83 - v82;
          if (v87)
          {
            goto LABEL_131;
          }

          v86 = *(v81 - 48);
          v85 = *(v81 - 40);
          v87 = __OFSUB__(v85, v86);
          v79 = v85 - v86;
          v80 = v87;
          if (v87)
          {
            goto LABEL_132;
          }

          v88 = &v46[16 * v18];
          v90 = *v88;
          v89 = *(v88 + 1);
          v87 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v87)
          {
            goto LABEL_134;
          }

          v87 = __OFADD__(v79, v91);
          v92 = v79 + v91;
          if (v87)
          {
            goto LABEL_137;
          }

          if (v92 >= v84)
          {
            v110 = &v46[16 * v76 + 32];
            v112 = *v110;
            v111 = *(v110 + 1);
            v87 = __OFSUB__(v111, v112);
            v113 = v111 - v112;
            if (v87)
            {
              goto LABEL_141;
            }

            if (v79 < v113)
            {
              v76 = v18 - 2;
            }
          }

          else
          {
LABEL_62:
            if (v80)
            {
              goto LABEL_133;
            }

            v93 = &v46[16 * v18];
            v95 = *v93;
            v94 = *(v93 + 1);
            v96 = __OFSUB__(v94, v95);
            v97 = v94 - v95;
            v98 = v96;
            if (v96)
            {
              goto LABEL_136;
            }

            v99 = &v46[16 * v76 + 32];
            v101 = *v99;
            v100 = *(v99 + 1);
            v87 = __OFSUB__(v100, v101);
            v102 = v100 - v101;
            if (v87)
            {
              goto LABEL_139;
            }

            if (__OFADD__(v97, v102))
            {
              goto LABEL_140;
            }

            if (v97 + v102 < v79)
            {
              goto LABEL_76;
            }

            if (v79 < v102)
            {
              v76 = v18 - 2;
            }
          }
        }

        else
        {
          if (v18 == 3)
          {
            v77 = *(v46 + 4);
            v78 = *(v46 + 5);
            v87 = __OFSUB__(v78, v77);
            v79 = v78 - v77;
            v80 = v87;
            goto LABEL_62;
          }

          v103 = &v46[16 * v18];
          v105 = *v103;
          v104 = *(v103 + 1);
          v87 = __OFSUB__(v104, v105);
          v97 = v104 - v105;
          v98 = v87;
LABEL_76:
          if (v98)
          {
            goto LABEL_135;
          }

          v106 = &v46[16 * v76];
          v108 = *(v106 + 4);
          v107 = *(v106 + 5);
          v87 = __OFSUB__(v107, v108);
          v109 = v107 - v108;
          if (v87)
          {
            goto LABEL_138;
          }

          if (v109 < v97)
          {
            break;
          }
        }

        a4 = v76 - 1;
        if (v76 - 1 >= v18)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
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
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        if (!*v48)
        {
          goto LABEL_151;
        }

        v114 = v46;
        v18 = *&v46[16 * a4 + 32];
        v115 = *&v46[16 * v76 + 40];
        sub_1D27D01DC(*v48 + *(v159 + 72) * v18, *v48 + *(v159 + 72) * *&v46[16 * v76 + 32], *v48 + *(v159 + 72) * v115, v164);
        if (v47)
        {
          goto LABEL_125;
        }

        if (v115 < v18)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v114 = sub_1D269163C(v114);
        }

        if (a4 >= *(v114 + 2))
        {
          goto LABEL_130;
        }

        v116 = &v114[16 * a4];
        *(v116 + 4) = v18;
        *(v116 + 5) = v115;
        v176 = v114;
        sub_1D26915B0(v76);
        v46 = v176;
        v18 = *(v176 + 2);
        if (v18 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v49 = v48[1];
    v45 = v151;
    if (v151 >= v49)
    {
      goto LABEL_114;
    }
  }

  if (v164)
  {
    v132 = v165;
    sub_1D27D30F0(v18, v165);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D27D30F0(v132, v122);
    v122 += v163;
    v18 += v163;
    v133 = __CFADD__(v120++, 1);
    v121 = v168;
    v17 = v128;
    if (v133)
    {
      goto LABEL_94;
    }

    goto LABEL_96;
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}