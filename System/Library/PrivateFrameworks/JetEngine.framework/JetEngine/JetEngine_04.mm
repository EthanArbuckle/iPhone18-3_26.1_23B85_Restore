uint64_t Lazy.wrappedValue.getter()
{
  sub_1AB461354();
  v0 = type metadata accessor for LazyValueWrapper();

  sub_1AB06BB5C(v0);
}

void sub_1AB06BB5C(uint64_t a1)
{
  v2 = *v1;
  v3[2] = *(a1 + 16);
  type metadata accessor for LazyValueWrapper.State();
  sub_1AB01A1F0(sub_1AB06BBD8, v3, v2);
}

uint64_t sub_1AB06BBF4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LazyValueWrapper.State();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v61 - v12);
  (*(v11 + 16))(&v61 - v12, a1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = v13;
      return (*(v7 + 32))(a3, v9, a2);
    }

    if (qword_1EB432418 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v40 = v74;
    v41 = v75;
    __swift_project_boxed_opaque_existential_1Tm(v73, v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1AB4D4720;
    v76 = sub_1AB0168A8(0, 46, 0, MEMORY[0x1E69E7CC0]);
    v43._countAndFlagsBits = 91;
    v43._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v43);
    MetatypeMetadata = swift_getMetatypeMetadata();
    v71[0] = a2;
    sub_1AB01522C(v71, v67);
    v68 = 0u;
    v69 = 0u;
    sub_1AB0169C4(v67, &v68);
    v70 = 0;
    v44 = v76;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1AB0168A8(0, *(v44 + 2) + 1, 1, v44);
    }

    v46 = *(v44 + 2);
    v45 = *(v44 + 3);
    if (v46 >= v45 >> 1)
    {
      v44 = sub_1AB0168A8((v45 > 1), v46 + 1, 1, v44);
    }

    *(v44 + 2) = v46 + 1;
    v47 = &v44[40 * v46];
    v48 = v68;
    v49 = v69;
    v47[64] = v70;
    *(v47 + 2) = v48;
    *(v47 + 3) = v49;
    v76 = v44;
    sub_1AB0167A8(v71);
    v50._countAndFlagsBits = 0xD00000000000002BLL;
    v50._object = 0x80000001AB5014E0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v50);
    swift_getErrorValue();
    v51 = v65;
    v52 = v66;
    MetatypeMetadata = v66;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v71);
    (*(*(v52 - 8) + 16))(boxed_opaque_existential_0, v51, v52);
    sub_1AB01522C(v71, v67);
    v68 = 0u;
    v69 = 0u;
    sub_1AB0169C4(v67, &v68);
    v70 = 0;
    v54 = v76;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_1AB0168A8(0, *(v54 + 2) + 1, 1, v54);
      v76 = v54;
    }

    v56 = *(v54 + 2);
    v55 = *(v54 + 3);
    if (v56 >= v55 >> 1)
    {
      v54 = sub_1AB0168A8((v55 > 1), v56 + 1, 1, v54);
    }

    *(v54 + 2) = v56 + 1;
    v57 = &v54[40 * v56];
    v58 = v68;
    v59 = v69;
    v57[64] = v70;
    *(v57 + 2) = v58;
    *(v57 + 3) = v59;
    v76 = v54;
    sub_1AB0167A8(v71);
    v60._countAndFlagsBits = 0;
    v60._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v60);
    *(v42 + 32) = v76;
    Logger.error(_:)(v42, v40, v41);

    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    return swift_willThrow();
  }

  else
  {
    v15 = (*(v11 + 8))(a1, v10);
    (*v13)(v15);
    if (!v3)
    {

      (*(v7 + 16))(a1, v9, a2);
      swift_storeEnumTagMultiPayload();
      return (*(v7 + 32))(a3, v9, a2);
    }

    if (qword_1EB432418 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v16 = v74;
    v17 = v75;
    v61 = __swift_project_boxed_opaque_existential_1Tm(v73, v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1AB4D4720;
    v76 = sub_1AB0168A8(0, 35, 0, MEMORY[0x1E69E7CC0]);
    v19._countAndFlagsBits = 91;
    v19._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    MetatypeMetadata = swift_getMetatypeMetadata();
    v71[0] = a2;
    sub_1AB01522C(v71, v67);
    v68 = 0u;
    v69 = 0u;
    sub_1AB0169C4(v67, &v68);
    v70 = 0;
    v20 = v76;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
    }

    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    if (v23 >= v22 >> 1)
    {
      v20 = sub_1AB0168A8((v22 > 1), v23 + 1, 1, v20);
    }

    *(v20 + 2) = v23 + 1;
    v24 = &v20[40 * v23];
    v25 = v68;
    v26 = v69;
    v24[64] = v70;
    *(v24 + 2) = v25;
    *(v24 + 3) = v26;
    v76 = v20;
    sub_1AB0167A8(v71);
    v27._object = 0x80000001AB501510;
    v27._countAndFlagsBits = 0xD000000000000020;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    swift_getErrorValue();
    v28 = v63;
    v29 = v64;
    MetatypeMetadata = v64;
    v30 = __swift_allocate_boxed_opaque_existential_0(v71);
    (*(*(v29 - 8) + 16))(v30, v28, v29);
    sub_1AB01522C(v71, v67);
    v68 = 0u;
    v69 = 0u;
    sub_1AB0169C4(v67, &v68);
    v70 = 0;
    v31 = v76;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1AB0168A8(0, *(v31 + 2) + 1, 1, v31);
      v76 = v31;
    }

    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_1AB0168A8((v32 > 1), v33 + 1, 1, v31);
    }

    *(v31 + 2) = v33 + 1;
    v34 = &v31[40 * v33];
    v35 = v68;
    v36 = v69;
    v34[64] = v70;
    *(v34 + 2) = v35;
    *(v34 + 3) = v36;
    v76 = v31;
    sub_1AB0167A8(v71);
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v37);
    *(v18 + 32) = v76;
    Logger.error(_:)(v18, v16, v62);

    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    *a1 = v3;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v38 = v3;
  }
}

uint64_t dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 16) + **(a7 + 16));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1AB027554;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1AB06C558()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AB06C5D0()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1AB3E255C;
  }

  else
  {
    v2 = sub_1AB069D08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB06C6E4()
{
  sub_1AB014A58(*(v0 + 136) + 40, v0 + 56, &qword_1EB439168);
  if (*(v0 + 80))
  {
    sub_1AB0149B0((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v1);
    v12 = (*(v2 + 16) + **(v2 + 16));
    v3 = swift_task_alloc();
    *(v0 + 144) = v3;
    *v3 = v0;
    v3[1] = sub_1AB0C6CBC;
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    v6 = *(v0 + 104);
    v7 = *(v0 + 112);
    v8 = *(v0 + 96);

    return v12(v8, v6, v7, v4, v5, v1, v2);
  }

  else
  {
    sub_1AB014AC0(v0 + 56, &qword_1EB439168);
    sub_1AB24F240();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1AB06C8C4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB06C900()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t MetricsFieldsAggregator.init(bag:accountProvider:bundle:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v16 = *a1;
  v7 = v16;
  swift_unknownObjectRetain();
  v8 = a3;
  sub_1AB0281A8(&v16, v8, &v12);
  *a4 = v12;
  if (qword_1ED4D0C18 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED4D3EC8;
  sub_1AB01494C(a2, &v12 + 8);
  *&v12 = v9;
  swift_bridgeObjectRetain_n();
  sub_1AB036C6C(&v12, 1682535268, 0xE400000000000000);
  sub_1AB039450(&v12);
  if (qword_1EB435750 != -1)
  {
    swift_once();
  }

  v10 = qword_1EB46C258;
  sub_1AB01494C(a2, &v12 + 8);
  *&v12 = v10;

  sub_1AB0357BC(&v12, 0x64656E6769537369, 0xEA00000000006E49);
  sub_1AB0394A4(&v12);
  sub_1AB01494C(a2, &v12 + 8);
  *&v12 = v9;
  sub_1AB035BBC(&v12, 0xD000000000000010, 0x80000001AB4FEB00);
  sub_1AB036010(&v12);
  sub_1AB01494C(a2, v15);
  *&v12 = 0x6449746E65696C63;
  *(&v12 + 1) = 0xE800000000000000;
  v13 = 0x646E655265676170;
  v14 = 0xEA00000000007265;
  v15[5] = v7;
  sub_1AB0394F8(&v12, 0xD000000000000012, 0x80000001AB4FF980);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return sub_1AB036064(&v12);
}

uint64_t sub_1AB06CB8C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38[3] = a4;
  v38[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a1, a4);
  v10 = *a2;
  v9 = a2[1];
  sub_1AB01494C(v38, &v33);
  sub_1AB0381B4(&v33, v10, v9, &v35);
  v11 = *(&v36 + 1);
  sub_1AB014AC0(&v35, &qword_1EB4375F8);
  if (v11)
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v12 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1AB4D4720;
    v32 = sub_1AB0168A8(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v14._object = 0x80000001AB500880;
    v14._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    v34 = &type metadata for MetricsFieldExclusionRequest;
    *&v33 = v10;
    *(&v33 + 1) = v9;
    sub_1AB01522C(&v33, v31);
    v35 = 0u;
    v36 = 0u;

    sub_1AB0169C4(v31, &v35);
    v37 = 1;
    v15 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1AB0168A8(0, *(v15 + 2) + 1, 1, v15);
      v32 = v15;
    }

    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1AB0168A8((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v17 + 1;
    v18 = &v15[40 * v17];
    v19 = v35;
    v20 = v36;
    v18[64] = v37;
    *(v18 + 2) = v19;
    *(v18 + 3) = v20;
    v32 = v15;
    sub_1AB014AC0(&v33, &unk_1EB437E60);
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    *(v13 + 32) = v32;
    v22 = sub_1AB461094();
    if (os_log_type_enabled(v12, v22))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v23 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v23[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v23 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v25 = swift_allocObject();
      *(v25 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v35 = v13;
      *(&v35 + 1) = sub_1AB0223E4;
      *&v36 = v25;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v26 = sub_1AB460484();
      v28 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1AB4D4720;
      *(v29 + 56) = MEMORY[0x1E69E6158];
      *(v29 + 64) = sub_1AB016854();
      *(v29 + 32) = v26;
      *(v29 + 40) = v28;
      sub_1AB45FF14();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v38);
}

uint64_t EventEmitter.addObserver(on:singleUse:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    swift_getAssociatedTypeWitness();
    v11 = type metadata accessor for SingleUseClosureEventObserver();
    sub_1AB01494C(a1, v20);
    v12 = swift_allocObject();

    sub_1AB353E94(v20, a3, a4);
    v20[0] = v12;
    v13 = *(a6 + 24);
    WitnessTable = swift_getWitnessTable();
    v13(v20, v11, WitnessTable, a5, a6);
  }

  else
  {
    sub_1AB01494C(a1, v19);
    swift_getAssociatedTypeWitness();
    sub_1AB0149B0(v19, v20);
    v20[5] = a3;
    v20[6] = a4;
    v16 = *(a6 + 24);
    v17 = type metadata accessor for ClosureEventObserver();

    v18 = swift_getWitnessTable();
    v16(v20, v17, v18, a5, a6);
    return (*(*(v17 - 8) + 8))(v20, v17);
  }
}

uint64_t sub_1AB06D1AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB06D1F8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB06D258()
{
  swift_beginAccess();
  type metadata accessor for EventSubscription();
  sub_1AB460A64();

  sub_1AB460A14();
  return swift_endAccess();
}

uint64_t MetricsPipeline.init(builderType:aggregator:linter:recorder:bag:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a6;
  sub_1AB01494C(a4, v23);
  sub_1AB01494C(a5, v22);
  *(a7 + 88) = 0u;
  *(a7 + 104) = 0;
  *(a7 + 72) = 0u;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = *a3;
  sub_1AB01494C(v23, a7 + 32);
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v18 = v13;
  swift_unknownObjectRetain();
  sub_1AB02A330(v19, &v18, v21);
  sub_1AB014AC0(v19, &qword_1EB436B50);
  swift_unknownObjectRelease();
  sub_1AB017CC4(v21, a7 + 72, &qword_1EB436B50);
  sub_1AB01494C(v22, a7 + 112);
  v14 = objc_opt_self();
  v15 = [v14 defaultCenter];
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  *(a7 + 152) = v15;
  *(a7 + 160) = 0;
  *(a7 + 192) = 0;
  *(a7 + 168) = MEMORY[0x1E69E7CD0];
  *(a7 + 176) = v13;
  v16 = [v14 defaultCenter];
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a4);
  *(a7 + 184) = v16;
  return result;
}

uint64_t sub_1AB06D4A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 192) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 193) = 1;
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

    *(result + 193) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB06D514(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 193))
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

uint64_t sub_1AB06D5AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *ActionDispatcher.init()@<X0>(uint64_t *a1@<X8>)
{
  a1[2] = 0;
  v2 = type metadata accessor for ActionImplementationBox();
  swift_getTupleTypeMetadata2();
  v3 = sub_1AB4609A4();
  v4 = sub_1AB014B20();
  v5 = sub_1AB06D700(v3, &type metadata for OpaqueMetatype, v2, v4);

  *a1 = v5;
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  a1[1] = result;
  return result;
}

uint64_t sub_1AB06D6B4()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB06D700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1AB4609F4())
  {
    sub_1AB461934();
    v13 = sub_1AB461924();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1AB4609F4();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1AB4609D4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1AB461644();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1AB186650(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t ActionDispatcher.add<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for ConcreteActionImplementationBox();
  (*(v5 + 16))(v7, a1, a3);
  v9 = sub_1AB020A10(v7);
  v11[0] = AssociatedTypeWitness;
  v11[1] = v9;
  type metadata accessor for ActionImplementationBox();
  sub_1AB014B20();
  sub_1AB4603C4();
  return sub_1AB460424();
}

uint64_t sub_1AB06DB94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1AB06DBD4()
{
  sub_1AB45F764();
  if (v0 <= 0x3F)
  {
    sub_1AB0556A4();
    if (v1 <= 0x3F)
    {
      sub_1AB06DC78();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1AB06DC78()
{
  if (!qword_1EB435610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB439A60);
    v0 = sub_1AB461354();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB435610);
    }
  }
}

void *BaseObjectGraph.init(name:dependencies:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3[3] = a1;
  v3[4] = a2;
  v3[2] = v4;
  return v3;
}

uint64_t sub_1AB06DD0C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB06DD48()
{
  sub_1AB4620A4();
  sub_1AB460684();
  return sub_1AB462104();
}

void sub_1AB06DD90(void *a1, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 2)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_1AB06DDB4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = a1[1];
  if (result)
  {
    *a2 = *a1;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ImpressionsCalculator.__allocating_init(configuration:tracker:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AB45F9E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 6;
  v10 = *a1;
  v12 = a1[1];
  v11 = a1[2];
  LOBYTE(a1) = *(a1 + 24);
  v20 = &type metadata for SystemDateProvider;
  v21 = &protocol witness table for SystemDateProvider;
  v13 = swift_allocObject();
  swift_weakInit();
  *(v13 + 256) = 1;
  *(v13 + 264) = 0u;
  *(v13 + 280) = 0u;
  *(v13 + 32) = v10;
  *(v13 + 40) = v12;
  *(v13 + 48) = v11;
  *(v13 + 56) = a1;
  *(v13 + 80) = 0u;
  *(v13 + 96) = 0u;
  *(v13 + 112) = 0u;
  *(v13 + 128) = 0;
  *(v13 + 64) = a2;
  *(v13 + 72) = a3;

  *(v13 + 24) = sub_1AB0755F8(MEMORY[0x1E69E7CC0]);
  sub_1AB01494C(v19, v13 + 136);
  sub_1AB45F9D4();
  v14 = sub_1AB45F9C4();
  v16 = v15;
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  *(v13 + 176) = v12;
  *(v13 + 184) = v11;
  *(v13 + 192) = 0;
  *(v13 + 200) = 1;
  *(v13 + 208) = v14;
  *(v13 + 216) = v16;
  *(v13 + 224) = 0u;
  *(v13 + 240) = 0u;
  return v13;
}

uint64_t sub_1AB06DF8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ActionDispatcher.add(contentsOf:)(uint64_t a1)
{
  v1 = *a1 + 64;
  v2 = 1 << *(*a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(*a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
    }

    v4 = *(v1 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      do
      {
LABEL_9:
        v4 &= v4 - 1;
        type metadata accessor for ActionImplementationBox();
        sub_1AB014B20();
        sub_1AB4603C4();

        result = sub_1AB460424();
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t MetricsFieldsContext.addValue<A>(_:forProperty:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  v9[3] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);

  return sub_1AB01AD48(v9, v5, v6);
}

uint64_t static ImpressionsCalculator.Configuration.half.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB434800 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v3 = qword_1EB434810;
  v2 = qword_1EB434818;
  v4 = byte_1EB434820;
  *a1 = qword_1EB434808;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
}

void sub_1AB06E234()
{
  qword_1EB434808 = 0x3FE0000000000000;
  qword_1EB434810 = 12341;
  qword_1EB434818 = 0xE200000000000000;
  byte_1EB434820 = 1;
}

uint64_t _sSS9JetEngineE11_unwrappingSSyp_tcfC_0(void *a1)
{
  sub_1AB0165C4(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A878);
  if (swift_dynamicCast())
  {
    sub_1AB0149B0(v8, v11);
    *&v8[0] = 0;
    *(&v8[0] + 1) = 0xE000000000000000;
    __swift_project_boxed_opaque_existential_1Tm(v11, v11[3]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v3 = *(AssociatedTypeWitness - 8);
    MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
    v5 = v8 - v4;
    sub_1AB4608B4();
    sub_1AB461D64();
    (*(v3 + 8))(v5, AssociatedTypeWitness);
    v6 = *&v8[0];
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_1AB06E484(v8);
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_1AB461D64();
    v6 = v11[0];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t sub_1AB06E484(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double static AutomationSemantics.tabBar(tabName:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4720;
  sub_1AB0165C4(a1, v4 + 32);
  *&v6 = &unk_1F1FF3438;
  *(&v6 + 1) = MEMORY[0x1E69E7CC0];
  sub_1AB06F948(v4, sub_1AB06E6CC, 0);
  result = COERCE_DOUBLE(&unk_1F1FF3438);
  *a2 = v6;
  return result;
}

uint64_t sub_1AB06E59C(uint64_t result, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, _OWORD *), uint64_t a6)
{
  v9 = result;
  if (!a2)
  {
LABEL_14:
    v12 = 0;
    v10 = 0;
LABEL_17:
    *v9 = a4;
    v9[1] = v12;
    v9[2] = a5;
    v9[3] = a6;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if (a3 < 0)
  {
    goto LABEL_19;
  }

  v11 = a2;
  v12 = 0;
  v13 = *(a4 + 16);
  v14 = 1;
  while (1)
  {
    if (v12 == v13)
    {
      v20 = 0u;
      v21 = 0u;
      v12 = v13;
      goto LABEL_9;
    }

    if (v12 >= *(a4 + 16))
    {
      break;
    }

    sub_1AB0165C4(a4 + 32 + 32 * v12++, &v20);
LABEL_9:
    v19[0] = v20;
    v19[1] = v21;
    if (!*(&v21 + 1))
    {
      v10 = v14 - 1;
      goto LABEL_17;
    }

    sub_1AB014B78(v19, v18);
    a5(v17, v18);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v15 = v17[1];
    *v11 = v17[0];
    v11[1] = v15;
    if (v10 == v14)
    {
      goto LABEL_17;
    }

    v11 += 2;
    if (__OFADD__(v14++, 1))
    {
      __break(1u);
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1AB06E6CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AB0165C4(a1, v5);
  result = _sSS9JetEngineE11_unwrappingSSyp_tcfC_0(v5);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AB06E708()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  if (v1 == v2)
  {
    v8 = 0u;
    v9 = 0u;
  }

  else
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    sub_1AB0165C4(*v0 + 32 * v1 + 32, &v8);
    v0[1] = v1 + 1;
  }

  v3 = v0[2];
  v7[0] = v8;
  v7[1] = v9;
  if (!*(&v9 + 1))
  {
    return 0;
  }

  sub_1AB014B78(v7, v6);
  v3(&v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v5;
}

uint64_t sub_1AB06E7C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AB027460;

  return sub_1AB06FCBC(a1, v6, v7, v8, v4, v5);
}

uint64_t sub_1AB06E890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[40] = a7;
  v8[41] = v7;
  v8[38] = a5;
  v8[39] = a6;
  v8[36] = a3;
  v8[37] = a4;
  v8[34] = a1;
  v8[35] = a2;
  v8[42] = swift_getAssociatedTypeWitness();
  v8[43] = type metadata accessor for IntentOutcome();
  v9 = sub_1AB461354();
  v8[44] = v9;
  v8[45] = *(v9 - 8);
  v8[46] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[47] = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for IntentOutcome();
  v8[48] = v11;
  v8[49] = *(v11 - 8);
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  v12 = sub_1AB461354();
  v8[52] = v12;
  v8[53] = *(v12 - 8);
  v8[54] = swift_task_alloc();
  v8[55] = *(AssociatedTypeWitness - 8);
  v8[56] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB06EB30, 0, 0);
}

uint64_t sub_1AB06EB30()
{
  v43 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 336);
  (*(*(v0 + 320) + 40))(*(v0 + 304));
  *(v0 + 264) = v2;
  swift_getExtendedExistentialTypeMetadata();
  v3 = swift_dynamicCast();
  v4 = *(v1 + 56);
  if (v3)
  {
    v6 = *(v0 + 440);
    v5 = *(v0 + 448);
    v7 = *(v0 + 432);
    v8 = *(v0 + 376);
    v40 = *(v0 + 312);
    v4(v7, 0, 1, v8);
    (*(v6 + 32))(v5, v7, v8);
    v39 = (*(v40 + 32) + **(v40 + 32));
    v9 = swift_task_alloc();
    *(v0 + 456) = v9;
    *v9 = v0;
    v9[1] = sub_1AB07577C;
    v10 = *(v0 + 448);
    v11 = *(v0 + 408);
    v12 = *(v0 + 312);
    v13 = *(v0 + 288);
    v14 = *(v0 + 296);

    return v39(v11, v10, v13, v14, v12);
  }

  else
  {
    v17 = *(v0 + 424);
    v16 = *(v0 + 432);
    v18 = *(v0 + 416);
    v4(v16, 1, 1, *(v0 + 376));
    (*(v17 + 8))(v16, v18);
    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1AB4D4720;
    v41 = sub_1AB0168A8(0, 50, 0, MEMORY[0x1E69E7CC0]);
    v20._countAndFlagsBits = 0x7420746E65746E49;
    v20._object = 0xED00006020657079;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    DynamicType = swift_getDynamicType();
    *(v0 + 160) = swift_getMetatypeMetadata();
    *(v0 + 136) = DynamicType;
    sub_1AB014A58(v0 + 136, v0 + 168, &unk_1EB437E60);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    sub_1AB017CC4(v0 + 168, v0 + 56, &unk_1EB437E60);
    *(v0 + 88) = 0;
    v22 = v41;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1AB0168A8(0, *(v41 + 2) + 1, 1, v41);
    }

    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_1AB0168A8((v23 > 1), v24 + 1, 1, v22);
    }

    v25 = *(v0 + 376);
    *(v22 + 2) = v24 + 1;
    v26 = &v22[40 * v24];
    v27 = *(v0 + 56);
    v28 = *(v0 + 72);
    v26[64] = *(v0 + 88);
    *(v26 + 2) = v27;
    *(v26 + 3) = v28;
    sub_1AB014AC0(v0 + 136, &unk_1EB437E60);
    v29._object = 0x80000001AB50DD10;
    v29._countAndFlagsBits = 0xD000000000000022;
    LogMessage.StringInterpolation.appendLiteral(_:)(v29);
    *(v0 + 224) = swift_getMetatypeMetadata();
    *(v0 + 200) = v25;
    sub_1AB014A58(v0 + 200, v0 + 232, &unk_1EB437E60);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_1AB017CC4(v0 + 232, v0 + 96, &unk_1EB437E60);
    *(v0 + 128) = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1AB0168A8(0, *(v22 + 2) + 1, 1, v22);
    }

    v31 = *(v22 + 2);
    v30 = *(v22 + 3);
    if (v31 >= v30 >> 1)
    {
      v22 = sub_1AB0168A8((v30 > 1), v31 + 1, 1, v22);
    }

    v32 = *(v0 + 336);
    v33 = *(v0 + 272);
    *(v22 + 2) = v31 + 1;
    v34 = &v22[40 * v31];
    v35 = *(v0 + 96);
    v36 = *(v0 + 112);
    v34[64] = *(v0 + 128);
    *(v34 + 2) = v35;
    *(v34 + 3) = v36;
    sub_1AB014AC0(v0 + 200, &unk_1EB437E60);
    v37._countAndFlagsBits = 96;
    v37._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v37);
    *(v19 + 32) = v22;
    v42 = 0;
    OSLogger.log(contentsOf:withLevel:)(v19, &v42);

    (*(*(v32 - 8) + 56))(v33, 1, 1, v32);

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t PageRenderMetricsPresenter.Configuration.withPrecision(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  result = sub_1AB06FCE4(v2, a2);
  *(a2 + 225) = v4;
  return result;
}

uint64_t type metadata accessor for PageRenderMetricsPresenter.State()
{
  result = qword_1ED4CFEA8;
  if (!qword_1ED4CFEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AB06F194()
{
  if (!qword_1EB433E98)
  {
    type metadata accessor for PageRenderEvent();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB438500);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB433E98);
    }
  }
}

char *sub_1AB06F230(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_1AB06F45C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1AB06F550()
{
  sub_1AB06F194();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PageRenderEvent();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1AB06F5C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A638);
  result = swift_allocObject();
  *(result + 40) = 0;
  v1 = MEMORY[0x1E69E7CC8];
  *(result + 16) = 50;
  *(result + 24) = v1;
  *(result + 32) = MEMORY[0x1E69E7CC0];
  qword_1EB46C200 = result;
  return result;
}

uint64_t sub_1AB06F690(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *DynamicImpressionsTracker.__allocating_init(_:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = a1[1];
  v4 = a1[2];
  v2[2] = *a1;
  v2[3] = v3;
  v2[4] = v4;
  v5 = type metadata accessor for ImpressionsTracking.AppearanceJournal();
  v6 = sub_1AB059040();
  v7 = MEMORY[0x1AC59B670](20, &type metadata for ImpressionMetrics.ID, v5, v6);
  v8 = MEMORY[0x1E69E7CC0];
  v2[5] = v7;
  v2[6] = v8;
  v2[7] = MEMORY[0x1E69E7CC8];
  return v2;
}

void static ActionMetrics.notInstrumented.getter(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC8];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
}

double AutomationSemantics.attribute(key:value:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A0B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  sub_1AB01522C(a3, v13);

  AutomationAttribute.init(key:value:)(a1, a2, v13, (inited + 32));
  v13[0] = v10;
  v13[1] = v9;

  sub_1AB05ED60(inited);
  result = v13[0];
  *a4 = *v13;
  return result;
}

uint64_t AutomationAttribute.init(key:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1AB01522C(a3, &v14);
  if (v15)
  {
    sub_1AB014B78(&v14, v13);
    sub_1AB0165C4(v13, v12);
    v8 = _sSS9JetEngineE11_unwrappingSSyp_tcfC_0(v12);
    v10 = v9;
    sub_1AB014AC0(a3, &unk_1EB437E60);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    result = sub_1AB014AC0(a3, &unk_1EB437E60);
    v8 = 0;
    v10 = 0;
  }

  *a4 = a1;
  a4[1] = a2;
  a4[2] = v8;
  a4[3] = v10;
  return result;
}

uint64_t sub_1AB06F948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 2);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v12 = *(v5 + 3) >> 1, v12 < v7))
  {
    if (v6 <= v7)
    {
      v13 = v6 + v4;
    }

    else
    {
      v13 = v6;
    }

    v5 = sub_1AB020904(isUniquelyReferenced_nonNull_native, v13, 1, v5);
    v12 = *(v5 + 3) >> 1;
  }

  v14 = *(v5 + 2);
  v15 = v12 - v14;
  v16 = sub_1AB06E59C(v30, &v5[16 * v14 + 32], v12 - v14, a1, a2, a3);
  if (v16 < v4)
  {
    goto LABEL_15;
  }

  if (v16)
  {
    v17 = *(v5 + 2);
    v18 = __OFADD__(v17, v16);
    v19 = v17 + v16;
    if (v18)
    {
      __break(1u);
LABEL_29:
      *(v5 + 2) = a2;
LABEL_30:
      v3 = a3;
      goto LABEL_13;
    }

    *(v5 + 2) = v19;
  }

  if (v16 == v15)
  {
LABEL_16:
    a3 = v3;
    a2 = *(v5 + 2);
    v21 = sub_1AB06E708();
    if (v22)
    {
      while (1)
      {
        v23 = *(v5 + 3);
        v24 = v23 >> 1;
        if ((v23 >> 1) < a2 + 1)
        {
          v27 = v21;
          v28 = v22;
          v29 = sub_1AB020904((v23 > 1), a2 + 1, 1, v5);
          v22 = v28;
          v5 = v29;
          v21 = v27;
          v24 = *(v5 + 3) >> 1;
        }

        if (a2 <= v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = a2;
        }

        v26 = &v5[16 * a2 + 40];
        while (v25 != a2)
        {
          *(v26 - 1) = v21;
          *v26 = v22;
          ++a2;
          v21 = sub_1AB06E708();
          v26 += 16;
          if (!v22)
          {
            goto LABEL_29;
          }
        }

        *(v5 + 2) = v25;
        a2 = v25;
      }
    }

    goto LABEL_30;
  }

LABEL_13:

  *v3 = v5;
  return result;
}

JetEngine::PageID __swiftcall PageID.init(with:)(Swift::String with)
{
  v2 = v1;
  sub_1AB0273A8();
  v3 = sub_1AB461434();
  v5 = v4;

  v8 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v8 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    sub_1AB411ED4("JetEngine/PageID.swift", 0x16uLL, 2, 0x39uLL);
  }

  *v2 = v3;
  v2[1] = v5;
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

uint64_t sub_1AB06FBC0()
{
  v1 = v0[3];
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1AB06F45C;
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];

  return sub_1AB06E890(v9, v7, v8, v3, v5, v2, v6);
}

id sub_1AB06FC84()
{
  result = [objc_allocWithZone(_JEAtomicCounter) initWithInitialValue_];
  qword_1ED4D0080 = result;
  return result;
}

uint64_t sub_1AB06FCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB06FBC0, 0, 0);
}

void *PageRenderMetricsPresenter.init(configuration:)(uint64_t a1)
{
  v3 = sub_1AB4601B4();
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v76 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1AB4601F4();
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v74 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v71 = v66 - v7;
  v72 = type metadata accessor for PageRenderMetricsPresenter.State();
  MEMORY[0x1EEE9AC00](v72);
  v73 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB461174();
  v68 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PageRenderEvent();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[2] = 0x3FF0000000000000;
  v16 = *a1;
  v15 = *(a1 + 8);

  v80 = v14;
  v17 = sub_1AB0708BC(v16, v15, v14);
  v18 = *(a1 + 232);
  v81 = a1;
  v19 = *(a1 + 248);
  if (qword_1EB434B88 != -1)
  {
    v69 = v18;
    v17 = swift_once();
  }

  v20 = qword_1EB46C200;
  *&v21 = MEMORY[0x1EEE9AC00](v17);
  v66[-6] = v16;
  v66[-5] = v15;
  *&v66[-4] = v21;
  LOBYTE(v66[-2]) = v19;
  os_unfair_lock_lock(v20 + 10);
  sub_1AB06F624(&v20[4]);
  os_unfair_lock_unlock(v20 + 10);
  v1[3] = [objc_allocWithZone(_JEAtomicFlag) initWithInitialValue_];
  v70 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4384A8);
  swift_allocObject();
  v1[5] = sub_1AB03356C();
  sub_1AB016760(0, &qword_1ED4CFE60);
  sub_1AB016760(0, &qword_1ED4D2060);
  v22 = sub_1AB461124();
  v95 = MEMORY[0x1E69E7CC0];
  sub_1AB0727E8(&unk_1ED4CFE70, MEMORY[0x1E69E80B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4384B8);
  sub_1AB01561C(&unk_1ED4CFE80, &unk_1EB4384B8);
  sub_1AB4614E4();
  *&v69 = sub_1AB461184();

  (*(v68 + 8))(v11, v9);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384C8);
  v24 = v73;
  v25 = v73 + v23[12];
  v67 = (v73 + v23[16]);
  v68 = v23[20];
  sub_1AB072850(v80, v73, type metadata accessor for PageRenderEvent);
  v26 = v81;
  v27 = *(v81 + 16);
  v28 = *(v81 + 24);
  sub_1AB0560F8(v81 + 32, &v95);
  v29 = *(v26 + 225);
  LOBYTE(v26) = *(v26 + 226);
  *v25 = v27;
  *(v25 + 8) = v28;
  sub_1AB0560F8(&v95, v25 + 16);
  *(v25 + 209) = v29;
  *(v25 + 240) = v26;

  v30 = MEMORY[0x1E69E7CC0];
  *(v25 + 216) = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  sub_1AB0560F8(&v95, &v82);
  v31 = swift_allocObject();
  v32 = v93;
  *(v31 + 176) = v92;
  *(v31 + 192) = v32;
  *(v31 + 208) = v94;
  v33 = v89;
  *(v31 + 112) = v88;
  *(v31 + 128) = v33;
  v34 = v91;
  *(v31 + 144) = v90;
  *(v31 + 160) = v34;
  v35 = v85;
  *(v31 + 48) = v84;
  *(v31 + 64) = v35;
  v36 = v87;
  *(v31 + 80) = v86;
  *(v31 + 96) = v36;
  v37 = v83;
  *(v31 + 16) = v82;
  *(v31 + 32) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4384D0);
  v38 = swift_allocObject();
  v66[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v38 + 16) = v39;
  *(v38 + 24) = v30;
  v40 = sub_1AB460BE4();
  *(v38 + 32) = 0u;
  *(v38 + 48) = 0u;
  *(v38 + 57) = 0u;
  v41 = *(*(v40 - 8) + 56);
  v42 = v71;
  v41(v71, 1, 1, v40);
  v43 = swift_allocObject();
  v43[2] = 0;
  v43[3] = 0;
  v43[4] = &unk_1AB4DCBB0;
  v43[5] = v31;
  v43[6] = v38;

  sub_1AB39BBA8(0, 0, v42, &unk_1AB4DCBB8, v43);

  *(v25 + 224) = v38;
  sub_1AB0560F8(&v95, &v82);
  v44 = swift_allocObject();
  v45 = v93;
  *(v44 + 176) = v92;
  *(v44 + 192) = v45;
  *(v44 + 208) = v94;
  v46 = v89;
  *(v44 + 112) = v88;
  *(v44 + 128) = v46;
  v47 = v91;
  *(v44 + 144) = v90;
  *(v44 + 160) = v47;
  v48 = v85;
  *(v44 + 48) = v84;
  *(v44 + 64) = v48;
  v49 = v87;
  *(v44 + 80) = v86;
  *(v44 + 96) = v49;
  v50 = v83;
  *(v44 + 16) = v82;
  *(v44 + 32) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384E0);
  v51 = swift_allocObject();
  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  *(v51 + 16) = v52;
  *(v51 + 24) = MEMORY[0x1E69E7CC0];
  *(v51 + 32) = 0;
  v41(v42, 1, 1, v40);
  v53 = swift_allocObject();
  v53[2] = 0;
  v53[3] = 0;
  v53[4] = &unk_1AB4DCBC0;
  v53[5] = v44;
  v53[6] = v51;

  sub_1AB39BBA8(0, 0, v42, &unk_1AB4DCBC8, v53);

  sub_1AB056154(&v95);
  *(v25 + 232) = v51;
  v54 = v67;
  *v67 = 0;
  v54[2] = 0;
  v54[3] = 0;
  v54[1] = 0;
  *(v24 + v68) = v69;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384E8);
  v55 = swift_allocObject();
  *(v55 + ((*(*v55 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1AB072850(v24, v55 + *(*v55 + *MEMORY[0x1E69E6B68] + 16), type metadata accessor for PageRenderMetricsPresenter.State);
  v56 = v70;
  v70[4] = v55;
  v57 = qword_1EB434678;
  swift_unknownObjectRetain();
  v58 = v24;
  if (v57 != -1)
  {
    swift_once();
  }

  v59 = *(*(qword_1EB46C1F8 + OBJC_IVAR____TtC9JetEngine24ScenePhaseChangeObserver_multicastDelegate) + 16);

  os_unfair_lock_lock((v59 + 24));
  v60 = *(v59 + 16);
  v95 = v56;
  v96 = &off_1F1FFC190;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4384F0);
  [v60 addObject_];
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v59 + 24));

  swift_getObjectType();
  v61 = swift_allocObject();
  swift_weakInit();
  v99 = sub_1AB1EDDD0;
  v100 = v61;
  v95 = MEMORY[0x1E69E9820];
  v96 = 1107296256;
  v97 = sub_1AB01D528;
  v98 = &block_descriptor_41;
  v62 = _Block_copy(&v95);

  v63 = v74;
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v64 = v76;
  sub_1AB073BA0();
  sub_1AB4611D4();
  _Block_release(v62);
  (*(v78 + 8))(v64, v79);
  (*(v75 + 8))(v63, v77);

  sub_1AB4611F4();
  swift_unknownObjectRelease();
  sub_1AB073CB0(v58, type metadata accessor for PageRenderMetricsPresenter.State);
  sub_1AB073CB0(v80, type metadata accessor for PageRenderEvent);
  sub_1AB073D10(v81);
  return v56;
}

uint64_t sub_1AB0708BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MonotonicTimeReference();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  v12 = type metadata accessor for PageRenderEvent();
  *(a3 + *(v12 + 20)) = 0;
  if (qword_1ED4D0050 != -1)
  {
    swift_once();
  }

  v13 = off_1EB434B78;
  os_unfair_lock_lock(off_1EB434B78 + 8);
  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  os_unfair_lock_unlock(v13 + 8);
  _s9JetEngine18SystemDateProviderV3now10Foundation0D0Vvg_0();
  static MonotonicTime.now.getter(&v23);
  v16 = v23;
  v17 = &v11[*(v6 + 20)];
  *v17 = v23;
  v18 = v15 < v16.tv_sec;
  if (v15 == v16.tv_sec)
  {
    v18 = v14 < v16.tv_nsec;
  }

  if (v18)
  {
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    v19 = *&qword_1ED4D1F90;
    v20 = v16.tv_nsec / *&qword_1ED4D1F90 + v16.tv_sec - (v14 / *&qword_1ED4D1F90 + v15);
    sub_1AB070C64(v11, v9);
    sub_1AB45F944();
    MonotonicTime.init(timeInterval:)(*&v9[*(v6 + 20) + 8] / v19 + *&v9[*(v6 + 20)] - v20);
    sub_1AB044D4C(v9);
    *v17 = v23;
  }

  result = sub_1AB070C64(v11, a3);
  v22 = (a3 + *(v12 + 24));
  *v22 = a1;
  v22[1] = a2;
  return result;
}

uint64_t sub_1AB070AE0()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1AB3E25E4;
  }

  else
  {

    v2 = sub_1AB070C60;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB070BFC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB070C64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonotonicTimeReference();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AB070CE8()
{
  result = qword_1EB434D58[0];
  if (!qword_1EB434D58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB434D58);
  }

  return result;
}

uint64_t sub_1AB070D54()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_1AB070D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v41 = a6;
  v58 = a5;
  v42 = a4;
  v11 = type metadata accessor for PageRenderEventActivityChange();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1AB460134();
  v38 = *(v14 - 8);
  v39 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB0715B8(a2, a3, v43);
  if (v43[1])
  {
    v40 = a1;
    v37 = v6;
    sub_1AB014AC0(v43, &qword_1EB438720);
    if (qword_1EB435768 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v17 = *(&v55 + 1);
    v34 = v56;
    v33 = __swift_project_boxed_opaque_existential_1Tm(&v54, *(&v55 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1AB4D4720;
    *&v44 = sub_1AB0168A8(0, 85, 0, MEMORY[0x1E69E7CC0]);
    v19._object = 0x80000001AB503530;
    v19._countAndFlagsBits = 0xD000000000000015;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    *&v48 = &type metadata for OperationID;
    v47[0] = a2;
    v47[1] = a3;
    sub_1AB014A58(v47, v46, &unk_1EB437E60);
    v49 = 0u;
    *v50 = 0u;

    sub_1AB0169C4(v46, &v49);
    v50[16] = 0;
    v20 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v11;
    v36 = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
      *&v44 = v20;
    }

    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    if (v23 >= v22 >> 1)
    {
      v20 = sub_1AB0168A8((v22 > 1), v23 + 1, 1, v20);
    }

    *(v20 + 2) = v23 + 1;
    v24 = &v20[40 * v23];
    v25 = v49;
    v26 = *v50;
    v24[64] = v50[16];
    *(v24 + 2) = v25;
    *(v24 + 3) = v26;
    *&v44 = v20;
    sub_1AB014AC0(v47, &unk_1EB437E60);
    v27._countAndFlagsBits = 0xD00000000000003FLL;
    v27._object = 0x80000001AB503550;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    *(v18 + 32) = v44;
    Logger.warning(_:)(v18, v17, v34);

    __swift_destroy_boxed_opaque_existential_1Tm(&v54);
    sub_1AB0715B8(a2, a3, &v44);
    v49 = v44;
    *v50 = v45[0];
    *&v50[9] = *(v45 + 9);
    if (*(&v44 + 1))
    {
      v29 = v38;
      v28 = v39;
      (*(v38 + 104))(v16, *MEMORY[0x1E6977AD0], v39);
      sub_1AB1BB3A8();
      (*(v29 + 8))(v16, v28);
      v13 = v36;
      if (*(&v49 + 1))
      {
        v54 = v49;
        v55 = *v50;
        v56 = *&v50[16];
        v57 = v50[24] & 1;
        sub_1AB071CFC(&v54, a2, a3, v46);
        sub_1AB014AC0(v46, &qword_1EB438720);
      }

      else
      {
        sub_1AB1F9240(a2, a3, &v54);
        sub_1AB014AC0(&v54, &qword_1EB438720);
      }

      v7 = v37;
    }

    else
    {
      sub_1AB1F9240(a2, a3, &v54);
      sub_1AB014AC0(&v54, &qword_1EB438720);
      v13 = v36;
      v7 = v37;
    }
  }

  sub_1AB071824(a2, a3, v41 & 1, v47);
  sub_1AB071CFC(v47, a2, a3, &v49);
  sub_1AB014AC0(&v49, &qword_1EB438720);
  v53 = v47[0];
  sub_1AB014AC0(&v53, &qword_1EB437668);

  v52 = v47[2];
  sub_1AB014AC0(&v52, &qword_1EB438718);
  v51 = v48;
  result = sub_1AB072794(&v51);
  if (qword_1EB4359C0 != -1)
  {
    result = swift_once();
  }

  if (byte_1EB435998 == 1)
  {
    if (qword_1EB435D80 != -1)
    {
      swift_once();
    }

    v31 = qword_1EB46C300;
    *v13 = a2;
    v13[1] = a3;
    swift_storeEnumTagMultiPayload();
    v32 = *(v31 + 16);

    [v32 lock];
    sub_1AB42C93C(v31, v13);
    if (v7)
    {

      result = [v32 unlock];
      __break(1u);
    }

    else
    {
      [v32 unlock];
      return sub_1AB1F9720(v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for PageRenderEventActivityChange()
{
  result = qword_1EB4345A0;
  if (!qword_1EB4345A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AB071470()
{
  sub_1AB0714F0();
  if (v0 <= 0x3F)
  {
    sub_1AB071550();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1AB0714F0()
{
  if (!qword_1EB4343B0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB4343B0);
    }
  }
}

void sub_1AB071550()
{
  if (!qword_1EB4341E8)
  {
    sub_1AB460134();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB4341E8);
    }
  }
}

uint64_t sub_1AB0715B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *(v3 + 8);
  if (!*(v6 + 16) || (v8 = result, result = sub_1AB0370A8(result, a2), (v9 & 1) == 0))
  {
    v12 = 0;
    v11 = 0;
    v15 = 0;
    v14 = 0;
    v16 = 0;
    v17 = 0;
LABEL_10:
    *a3 = v12;
    *(a3 + 8) = v11;
    *(a3 + 16) = v15;
    *(a3 + 24) = v14;
    *(a3 + 32) = v16;
    *(a3 + 40) = v17;
    return result;
  }

  v10 = *(v6 + 56) + 48 * result;
  v12 = *v10;
  v11 = *(v10 + 8);
  v13 = v8;
  v15 = *(v10 + 16);
  v14 = *(v10 + 24);
  v16 = *(v10 + 32);
  v17 = *(v10 + 40);
  v19 = *(v4 + 16);
  v18 = (v4 + 16);
  v28 = v13;
  v20 = sub_1AB1A7AB4(v13, a2, v19);
  if ((v21 & 1) == 0)
  {
    v22 = v20;

    sub_1AB3C1B5C(v22);

    v23 = *v18;

    result = swift_isUniquelyReferenced_nonNull_native();
    v29 = a2;
    if ((result & 1) == 0)
    {
      result = sub_1AB072640(0, *(v23 + 16) + 1, 1, v23);
      v23 = result;
    }

    v25 = *(v23 + 16);
    v24 = *(v23 + 24);
    v26 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      result = sub_1AB072640((v24 > 1), v25 + 1, 1, v23);
      v26 = v25 + 1;
      v23 = result;
    }

    *(v23 + 16) = v26;
    v27 = v23 + 16 * v25;
    *(v27 + 32) = v28;
    *(v27 + 40) = v29;
    *v18 = v23;
    goto LABEL_10;
  }

  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB5034B0);
  sub_1AB461824();
  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB5034D0);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB071824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W4>, uint64_t a4@<X8>)
{
  v22 = sub_1AB071AC0(MEMORY[0x1E69E7CC0]);
  sub_1AB460184();

  v8 = sub_1AB460154();
  v9 = 0;
  if ((a3 & 1) == 0)
  {
    v9 = sub_1AB460154();
    swift_retain_n();
    sub_1AB460124();
    sub_1AB460164();
  }

  sub_1AB460164();
  if (qword_1EB435768 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v30;
  v21 = v31;
  __swift_project_boxed_opaque_existential_1Tm(v29, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AB4D4720;
  v28 = sub_1AB0168A8(0, 45, 0, MEMORY[0x1E69E7CC0]);
  v12._object = 0x80000001AB501D60;
  v12._countAndFlagsBits = 0xD00000000000002CLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  v27[3] = MEMORY[0x1E69E6158];
  v27[0] = a1;
  v27[1] = a2;
  sub_1AB01522C(v27, v23);
  v24 = 0u;
  v25 = 0u;
  sub_1AB0169C4(v23, &v24);
  v26 = 0;
  v13 = v28;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1AB0168A8(0, *(v13 + 2) + 1, 1, v13);
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1AB0168A8((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[40 * v15];
  v17 = v24;
  v18 = v25;
  v16[64] = v26;
  *(v16 + 2) = v17;
  *(v16 + 3) = v18;
  v28 = v13;
  sub_1AB0167A8(v27);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  *(v11 + 32) = v28;
  Logger.debug(_:)(v11, v10, v21);

  result = __swift_destroy_boxed_opaque_existential_1Tm(v29);
  *a4 = v9;
  *(a4 + 8) = v8;
  *(a4 + 16) = v22;
  *(a4 + 24) = a1;
  *(a4 + 32) = a2;
  *(a4 + 40) = 0;
  return result;
}

void *sub_1AB071AC0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438178);
  v3 = sub_1AB461924();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1AB016558(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1AB016558(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB071BC8(uint64_t a1)
{
  v3[4] = &type metadata for OSLogger;
  v3[5] = &protocol witness table for OSLogger;
  if (qword_1ED4D2218 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1ED4D2220 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB2241F8((v1 + 16), v3);
  os_unfair_lock_unlock((v1 + 24));
  v3[1] = v3[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A268);
  swift_allocObject();
  result = sub_1AB4622D4();
  qword_1EB435658 = result;
  return result;
}

uint64_t sub_1AB071CFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = *a1;
  v44 = a1[2];
  v45 = v10;
  v43 = *(a1 + 3);

  sub_1AB014A58(&v44, v42, &qword_1EB438718);
  sub_1AB0720F0(&v43, v42);
  sub_1AB014A58(&v45, v42, &qword_1EB437668);
  sub_1AB07214C(a1, a2, a3, &v37);
  v11 = v38;
  if (!v38)
  {
    v25 = *(v4[1] + 16);
    if (v25)
    {
      v26 = *v4 >= v25;
    }

    else
    {
      v26 = 1;
    }

    if (!v26)
    {
      v27 = v4[2];
      if (v27[2])
      {
        v28 = v27[4];
        v29 = v27[5];

        sub_1AB3BE550(0, 1);
        sub_1AB177244(v28, v29, v42);

        sub_1AB014AC0(v42, &qword_1EB438720);
      }
    }

    v30 = v4[2];

    result = swift_isUniquelyReferenced_nonNull_native();
    v31 = a2;
    if ((result & 1) == 0)
    {
      result = sub_1AB072640(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v33 = *(v30 + 16);
    v32 = *(v30 + 24);
    if (v33 >= v32 >> 1)
    {
      result = sub_1AB072640((v32 > 1), v33 + 1, 1, v30);
      v30 = result;
    }

    v22 = 0;
    v12 = 0;
    v13 = 0;
    *(v30 + 16) = v33 + 1;
    v34 = v30 + 16 * v33;
    *(v34 + 32) = v31;
    *(v34 + 40) = a3;
    v5[2] = v30;
    v23 = 0uLL;
    goto LABEL_19;
  }

  v36 = v37;
  v35 = v39;
  v12 = v40;
  v13 = v41;
  v14 = (v4 + 2);
  v15 = sub_1AB1A7AB4(a2, a3, v4[2]);
  if ((v16 & 1) == 0)
  {
    sub_1AB3C1B5C(v15);

    v17 = *v14;

    result = swift_isUniquelyReferenced_nonNull_native();
    v19 = a2;
    if ((result & 1) == 0)
    {
      result = sub_1AB072640(0, *(v17 + 16) + 1, 1, v17);
      v17 = result;
    }

    v21 = *(v17 + 16);
    v20 = *(v17 + 24);
    v22 = v36;
    v23 = v35;
    if (v21 >= v20 >> 1)
    {
      result = sub_1AB072640((v20 > 1), v21 + 1, 1, v17);
      v23 = v35;
      v22 = v36;
      v17 = result;
    }

    *(v17 + 16) = v21 + 1;
    v24 = v17 + 16 * v21;
    *(v24 + 32) = v19;
    *(v24 + 40) = a3;
    *v14 = v17;
LABEL_19:
    *a4 = v22;
    *(a4 + 8) = v11;
    *(a4 + 16) = v23;
    *(a4 + 32) = v12;
    *(a4 + 40) = v13;
    return result;
  }

  v42[0] = 0;
  v42[1] = 0xE000000000000000;
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB5034B0);
  sub_1AB461824();
  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB5034D0);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

unint64_t sub_1AB07209C()
{
  result = qword_1EB434E10;
  if (!qword_1EB434E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB434E10);
  }

  return result;
}

unint64_t sub_1AB07214C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  result = sub_1AB0370A8(a2, a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v14;
  if (v12[3] < v18)
  {
    sub_1AB0722BC(v18, isUniquelyReferenced_nonNull_native);
    result = sub_1AB0370A8(a2, a3);
    if ((v5 & 1) == (v19 & 1))
    {
      goto LABEL_6;
    }

    result = sub_1AB461FC4();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v27 = result;
    sub_1AB1D880C();
    result = v27;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_1AB0725E4(result, a2, a3, a1, v12);

    v21 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v22 = 0uLL;
    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v20 = v12[7] + 48 * result;
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *(v20 + 24);
  v24 = *(v20 + 32);
  v25 = *(v20 + 40);
  v26 = a1[1];
  *v20 = *a1;
  *(v20 + 16) = v26;
  *(v20 + 25) = *(a1 + 25);
LABEL_11:
  *v6 = v12;
  *a4 = v21;
  *(a4 + 8) = v22;
  *(a4 + 24) = v23;
  *(a4 + 32) = v24;
  *(a4 + 40) = v25;
  return result;
}

uint64_t sub_1AB0722BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438170);
  v44 = a2;
  result = sub_1AB461914();
  v7 = result;
  if (*(v5 + 16))
  {
    v41 = v3;
    v42 = v5;
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
    v43 = result;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v47 = (v12 - 1) & v12;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = v24[1];
      v49 = *v24;
      v26 = *(v5 + 56) + 48 * v23;
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = *(v26 + 16);
      v46 = *(v26 + 24);
      v30 = *(v26 + 32);
      v45 = *(v26 + 40);
      if ((v44 & 1) == 0)
      {
      }

      v48 = v29;
      v31 = v28;
      v32 = v27;
      sub_1AB4620A4();
      sub_1AB460684();
      result = sub_1AB462104();
      v7 = v43;
      v33 = -1 << *(v43 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v16 = v48;
        v17 = v30;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v16 = v48;
      v17 = v30;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = (*(v43 + 48) + 16 * v15);
      *v18 = v49;
      v18[1] = v25;
      v19 = *(v43 + 56) + 48 * v15;
      *v19 = v32;
      *(v19 + 8) = v31;
      v12 = v47;
      *(v19 + 16) = v16;
      *(v19 + 24) = v46;
      *(v19 + 32) = v17;
      *(v19 + 40) = v45;
      ++*(v43 + 16);
      v5 = v42;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_33;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v9, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1AB0725E4(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 48 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  *(v6 + 25) = *(a4 + 25);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

char *sub_1AB072640(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439B78);
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

uint64_t sub_1AB07274C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1AB0727E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AB072850(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AB0728D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AB027554;

  return sub_1AB0729B4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1AB0729B4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 112) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 120) = v7;
  *v7 = v6;
  v7[1] = sub_1AB399704;

  return v9(v6 + 64);
}

uint64_t sub_1AB072AA8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AB027460;

  return sub_1AB072B44(a1, v1 + 16);
}

uint64_t sub_1AB072B44(uint64_t a1, uint64_t a2)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB072B64, 0, 0);
}

uint64_t sub_1AB072B64()
{
  v1 = *(*(v0 + 144) + 176);
  *(v0 + 152) = v1;
  if (v1)
  {
    if (qword_1ED4CFE50 != -1)
    {
      v31 = v1;
      swift_once();
      v1 = v31;
    }

    v2 = [v1 doubleForKey_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4385A0);
    v3 = swift_allocObject();
    *(v0 + 160) = v3;
    v3[2] = v2;
    v3[3] = sub_1AB07DCEC;
    v3[4] = 0;
    v4 = swift_task_alloc();
    *(v0 + 168) = v4;
    *v4 = v0;
    v4[1] = sub_1AB0A28DC;
    v5 = v3;
LABEL_16:

    return sub_1AB073108(v5);
  }

  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v6 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v6[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v6 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
  }

  v8 = *(v0 + 152);
  if (os_unfair_lock_opaque_low)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.01;
  }

  if (v8)
  {
    *(v0 + 176) = v9;
    if (qword_1ED4CFE48 != -1)
    {
      v32 = v8;
      swift_once();
      v8 = v32;
    }

    v10 = [v8 doubleForKey_];
    v11 = swift_allocObject();
    *(v11 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4385A0);
    v12 = swift_allocObject();
    *(v0 + 184) = v12;
    v12[2] = v10;
    v12[3] = sub_1AB1EEBE8;
    v12[4] = v11;
    v13 = swift_task_alloc();
    *(v0 + 192) = v13;
    *v13 = v0;
    v13[1] = sub_1AB1E6854;
    v5 = v12;
    goto LABEL_16;
  }

  if (qword_1ED4D01B0 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 136);
  v16 = qword_1ED4D3E40;
  v17 = *algn_1ED4D3E48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1AB4D47F0;
  *(v18 + 32) = v16;
  *(v18 + 40) = v17;
  *(v18 + 48) = 0x6E65725F65676170;
  *(v18 + 56) = 0xEB00000000726564;
  *(v0 + 16) = v18;
  *(v0 + 24) = sub_1AB027C78;
  *(v0 + 32) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438590);
  sub_1AB027E20();
  v19 = sub_1AB460484();
  v21 = v20;

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1AB4D47F0;
  *(v22 + 32) = v19;
  *(v22 + 40) = v21;
  *(v22 + 48) = 0x646563726F467369;
  *(v22 + 56) = 0xE800000000000000;
  *(v0 + 40) = v22;
  *(v0 + 48) = sub_1AB027C78;
  *(v0 + 56) = 0;

  v23 = sub_1AB460484();
  v25 = v24;

  *v15 = v23;
  *(v15 + 8) = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1AB4D47F0;
  *(v26 + 32) = v19;
  *(v26 + 40) = v21;
  *(v26 + 48) = 0xD000000000000011;
  *(v26 + 56) = 0x80000001AB4FFFF0;
  *(v0 + 64) = v26;
  *(v0 + 72) = sub_1AB027C78;
  *(v0 + 80) = 0;
  v27 = sub_1AB460484();
  v29 = v28;

  *(v15 + 16) = v27;
  *(v15 + 24) = v29;
  *(v15 + 32) = v9;
  *(v15 + 40) = 0x404E000000000000;
  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1AB0730D0()
{
  result = sub_1AB460514();
  qword_1ED4D3D20 = result;
  return result;
}

uint64_t sub_1AB073128()
{
  *(v0 + 296) = (*(**(v0 + 288) + 88))();

  return MEMORY[0x1EEE6DFA0](sub_1AB073918, 0, 0);
}

id sub_1AB0731B4()
{
  result = [objc_allocWithZone(type metadata accessor for ScenePhaseChangeObserver()) init];
  qword_1EB46C1F8 = result;
  return result;
}

uint64_t sub_1AB07330C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AB027554;

  return sub_1AB0733E8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1AB0733E8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = v6;
  v7[1] = sub_1AB0A27C8;

  return v9(v6 + 40);
}

uint64_t sub_1AB0734DC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AB027554;

  return sub_1AB073578(a1, v1 + 16);
}

uint64_t sub_1AB073578(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB0736E0, 0, 0);
}

void sub_1AB073598()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  if (qword_1EB434698 != -1)
  {
    swift_once();
  }

  [v2 addObserver:v0 selector:? name:? object:?];

  v3 = [v1 defaultCenter];
  v4 = v3;
  if (qword_1EB434680 != -1)
  {
    swift_once();
    v3 = v4;
  }

  [v3 addObserver:v0 selector:? name:? object:?];
}

uint64_t sub_1AB0736E0()
{
  v1 = *(*(v0 + 24) + 176);
  if (v1)
  {
    if (qword_1EB434410 != -1)
    {
      v7 = *(*(v0 + 24) + 176);
      swift_once();
      v1 = v7;
    }

    v2 = [v1 BOOLForKey_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438580);
    v3 = swift_allocObject();
    *(v0 + 32) = v3;
    v3[2] = v2;
    v3[3] = sub_1AB07D3BC;
    v3[4] = 0;
    v4 = swift_task_alloc();
    *(v0 + 40) = v4;
    *v4 = v0;
    v4[1] = sub_1AB0A26A8;

    return (sub_1AB073D40)(v3);
  }

  else
  {
    **(v0 + 16) = 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1AB073870()
{
  result = sub_1AB460514();
  qword_1EB4346A0 = result;
  return result;
}

uint64_t sub_1AB0738A8()
{
  result = sub_1AB460514();
  qword_1EB46C1F0 = result;
  return result;
}

uint64_t sub_1AB0738E0()
{
  result = sub_1AB460514();
  qword_1EB434688 = result;
  return result;
}

uint64_t sub_1AB073918()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1AB0A1F68;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB0739E4(v2);
  sub_1AB014AC0(v2, &qword_1EB439FF0);

  return MEMORY[0x1EEE6DEC8](v1);
}

void sub_1AB0739E4(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  if (*(v1 + 33) > 1u)
  {
    if (*(v1 + 33) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA36C(v4);
      v16 = v4;
      v17 = v5;
      v18 = 2;
    }

    else
    {
      v19 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA36C(v4);
      v16 = v4;
      v17 = v5;
      v18 = 3;
    }

    sub_1AB06DD90(v16, v17, v18);
  }

  else if (*(v1 + 33))
  {
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB4364A0(v4, v5 & 1);
  }

  else
  {
    sub_1AB014A58(a1, v20, &qword_1EB439FF0);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1AB073C8C(0, v4[2] + 1, 1, v4);
    }

    v7 = v4[2];
    v6 = v4[3];
    if (v7 >= v6 >> 1)
    {
      v4 = sub_1AB073C8C((v6 > 1), v7 + 1, 1, v4);
    }

    v4[2] = v7 + 1;
    v8 = &v4[10 * v7];
    v8[2] = v20[0];
    v9 = v20[1];
    v10 = v20[2];
    v11 = v21[0];
    *(v8 + 89) = *(v21 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    v12 = *(v1 + 24);
    *(v1 + 24) = v4;
    v13 = *(v1 + 33);
    v14 = *(v1 + 32);
    *(v1 + 32) = 0;
    sub_1AB06DD90(v12, v14, v13);
    os_unfair_lock_unlock(v3 + 4);
  }
}

uint64_t sub_1AB073BA0()
{
  sub_1AB4601B4();
  sub_1AB0727E8(&qword_1ED4D2050, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
  sub_1AB01561C(&qword_1ED4D1FB0, &qword_1EB438540);
  return sub_1AB4614E4();
}

uint64_t sub_1AB073CB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AB073D60()
{
  *(v0 + 296) = (*(**(v0 + 288) + 88))();

  return MEMORY[0x1EEE6DFA0](sub_1AB073DEC, 0, 0);
}

uint64_t sub_1AB073DEC()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1AB0A20BC;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB073EB8(v2);
  sub_1AB014AC0(v2, &unk_1EB437920);

  return MEMORY[0x1EEE6DEC8](v1);
}

void sub_1AB073EB8(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA93C(v4);
      v15 = v4;
      v16 = 2;
    }

    else
    {
      v17 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA93C(v4);
      v15 = v4;
      v16 = 3;
    }

    sub_1AB074080(v15, v16);
  }

  else if (*(v1 + 32))
  {
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB4386B8(v4);
  }

  else
  {
    sub_1AB014A58(a1, v21, &unk_1EB437920);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1AB07405C(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v18 = v4;
      v19 = v4[2];
      v20 = sub_1AB07405C((v6 > 1), v5 + 1, 1, v18);
      v5 = v19;
      v4 = v20;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v21[0];
    v9 = v21[1];
    v10 = v21[2];
    v11 = v22[0];
    *(v8 + 89) = *(v22 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    v12 = *(v1 + 24);
    *(v1 + 24) = v4;
    v13 = *(v1 + 32);
    *(v1 + 32) = 0;
    sub_1AB074080(v12, v13);
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1AB074080(void *a1, char a2)
{
  if (a2 == 3 || a2 == 2)
  {
  }

  else if (!a2)
  {
  }
}

BOOL PageRenderMetricsPresenter.isCollecting.getter()
{
  v1 = type metadata accessor for PageRenderMetricsPresenter.State();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 32);
  v5 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_1AB072850(v4 + v5, v3, type metadata accessor for PageRenderMetricsPresenter.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = type metadata accessor for PageRenderMetricsPresenter.State;
  if (EnumCaseMultiPayload != 1)
  {
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384C8) + 48);
    swift_unknownObjectRelease();
    sub_1AB074218(&v3[v9]);
    v8 = type metadata accessor for PageRenderEvent;
  }

  sub_1AB073CB0(v3, v8);
  os_unfair_lock_unlock((v4 + v6));
  return EnumCaseMultiPayload != 1;
}

uint64_t sub_1AB07425C(uint64_t a1, char a2)
{
  v5 = type metadata accessor for PageRenderMetricsPresenter.State();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PageRenderEvent();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB072850(a1, v7, type metadata accessor for PageRenderMetricsPresenter.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1AB073CB0(v7, type metadata accessor for PageRenderMetricsPresenter.State);
  }

  v43[1] = v5;
  v45 = v2;
  sub_1AB073CB0(a1, type metadata accessor for PageRenderMetricsPresenter.State);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384C8);
  v13 = &v7[v12[12]];
  v14 = &v7[v12[16]];
  v44 = *v14;
  v15 = *(v14 + 1);
  v16 = a2;
  v18 = *(v14 + 2);
  v17 = *(v14 + 3);
  v46 = v15;
  v47 = v17;
  v70 = *&v7[v12[20]];
  result = sub_1AB0746C0(v7, v10);
  v19 = *(v13 + 13);
  v66 = *(v13 + 12);
  v67 = v19;
  v68 = *(v13 + 14);
  v69 = v13[240];
  v20 = *(v13 + 9);
  v62 = *(v13 + 8);
  v63 = v20;
  v21 = *(v13 + 11);
  v64 = *(v13 + 10);
  v65 = v21;
  v22 = *(v13 + 5);
  v58 = *(v13 + 4);
  v59 = v22;
  v23 = *(v13 + 7);
  v60 = *(v13 + 6);
  v61 = v23;
  v24 = *(v13 + 1);
  v54 = *v13;
  v55 = v24;
  v25 = *(v13 + 3);
  v56 = *(v13 + 2);
  v57 = v25;
  if (v16 < 0)
  {
    v26 = __CFADD__(v18, 1);
    v27 = v18 + 1;
    if (!v26)
    {
      LOBYTE(v13) = v16;
      v43[0] = v27;
      if (v27 != 1)
      {
        goto LABEL_9;
      }

      if (qword_1ED4CFFC8 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v43[0] = v18;
  while (1)
  {
    v31 = v46 + 1;
    if (v46 != -1)
    {
      break;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
LABEL_8:
    v50 = xmmword_1ED4D3D30;
    v51 = byte_1ED4D3D40;
    v52 = qword_1ED4D3D48;
    v53 = byte_1ED4D3D50;
    v28 = &v10[*(v8 + 6)];
    v29 = *v28;
    v30 = v28[1];
    static MonotonicTime.now.getter(&v49);
    v48 = v49;
    v8 = &v50;
    result = PageRenderField<>.startTime(for:at:)(v29, v30, &v48);
LABEL_9:
    if (v13)
    {
      v26 = __CFADD__(v47++, 1);
      if (v26)
      {
        __break(1u);
        return result;
      }
    }
  }

  if (!v46)
  {
    swift_getObjectType();
    sub_1AB461204();
  }

  v32 = a1 + v12[12];
  v33 = a1 + v12[16];
  v34 = v12[20];
  sub_1AB072850(v10, a1, type metadata accessor for PageRenderEvent);
  v35 = v67;
  *(v32 + 192) = v66;
  *(v32 + 208) = v35;
  *(v32 + 224) = v68;
  *(v32 + 240) = v69;
  v36 = v63;
  *(v32 + 128) = v62;
  *(v32 + 144) = v36;
  v37 = v65;
  *(v32 + 160) = v64;
  *(v32 + 176) = v37;
  v38 = v59;
  *(v32 + 64) = v58;
  *(v32 + 80) = v38;
  v39 = v61;
  *(v32 + 96) = v60;
  *(v32 + 112) = v39;
  v40 = v55;
  *v32 = v54;
  *(v32 + 16) = v40;
  v41 = v57;
  *(v32 + 32) = v56;
  *(v32 + 48) = v41;
  *v33 = v44;
  v42 = v43[0];
  *(v33 + 8) = v31;
  *(v33 + 16) = v42;
  *(v33 + 24) = v47;
  *(a1 + v34) = v70;
  swift_storeEnumTagMultiPayload();
  return sub_1AB073CB0(v10, type metadata accessor for PageRenderEvent);
}

void PageRenderMetricsPresenter.start(_:)(char *a1)
{
  v2 = *(v1 + 32);
  v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  v5 = *a1;
  os_unfair_lock_lock((v2 + v4));
  sub_1AB07425C(v2 + v3, v5);

  os_unfair_lock_unlock((v2 + v4));
}

uint64_t sub_1AB0746C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageRenderEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1AB07473C(char *a1, uint64_t a2, void (*a3)(os_unfair_lock_s *))
{
  v4 = *(*&a1[OBJC_IVAR____TtC9JetEngine24ScenePhaseChangeObserver_multicastDelegate] + 16);
  v5 = a1;
  os_unfair_lock_lock(v4 + 6);
  a3(v4 + 4);
  os_unfair_lock_unlock(v4 + 6);
}

uint64_t sub_1AB0747B8(id *a1)
{
  v1 = [*a1 allObjects];
  v2 = sub_1AB460954();

  if (v2 >> 62)
  {
    goto LABEL_14;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (!__OFSUB__(v3--, 1))
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1AC59C990](v3, v2);
LABEL_5:
        swift_getObjectType();
        swift_conformsToProtocol2();
        swift_unknownObjectRelease();
        if (!v3)
        {
        }
      }

      else
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_12;
        }

        if (v3 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          swift_unknownObjectRetain();
          goto LABEL_5;
        }

LABEL_13:
        __break(1u);
LABEL_14:
        v3 = sub_1AB4618F4();
        if (!v3)
        {
        }
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }
}

uint64_t sub_1AB0748E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1AB074928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AB027554;

  return NativeIntentDispatcher.dispatch<A>(_:objectGraph:)(a1, a2, a3, a4, a5);
}

uint64_t NativeIntentDispatcher.dispatch<A>(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v8 = type metadata accessor for IntentOutcome();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = *(AssociatedTypeWitness - 8);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB069B4C, 0, 0);
}

uint64_t sub_1AB074B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[21] = a5;
  v6[22] = v5;
  v6[19] = a3;
  v6[20] = a4;
  v6[17] = a1;
  v6[18] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB068000, 0, 0);
}

uint64_t sub_1AB074B94()
{
  *(v0 + 248) = (*(**(v0 + 240) + 88))();
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  v2 = type metadata accessor for Promise();
  WitnessTable = swift_getWitnessTable();
  *v1 = v0;
  v1[1] = sub_1AB075C14;
  v4 = *(v0 + 232);

  return Future.result.getter(v4, v2, WitnessTable);
}

uint64_t sub_1AB074C9C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);

  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v5 = v4(v1, 1, v2);
  v6 = *(v0 + 232);
  v7 = *(v0 + 208);
  if (v5 == 1)
  {
    (*(v0 + 192))();
    if (v4(v6, 1, v7) != 1)
    {
      (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    }
  }

  else
  {
    (*(v3 + 32))(*(v0 + 184), *(v0 + 232), *(v0 + 208));
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1AB074DF4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1AB074E20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = sub_1AB461354();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44 - v11;
  v13 = *v4;
  if (*(v13 + 16) && (v15 = *a1, v14 = a1[1], v16 = sub_1AB014DB4(v15, v14), (v17 & 1) != 0))
  {
    sub_1AB0165C4(*(v13 + 56) + 32 * v16, &v48);
    sub_1AB014B78(&v48, v53);
    sub_1AB0165C4(v53, &v48);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      v18 = *(a2 - 8);
      v19 = *(v18 + 56);
      v19(v12, 0, 1, a2);
      (*(v18 + 32))(a4, v12, a2);
      return (v19)(a4, 0, 1, a2);
    }

    else
    {
      v22 = *(a2 - 8);
      v23 = *(v22 + 56);
      v45 = v22 + 56;
      v46 = v23;
      v23(v12, 1, 1, a2);
      (*(v10 + 8))(v12, v9);
      if (qword_1ED4D1FC0 != -1)
      {
        swift_once();
      }

      v24 = qword_1ED4D1FC8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1AB4D47F0;
      v52 = sub_1AB0168A8(0, 27, 0, MEMORY[0x1E69E7CC0]);
      v26._object = 0x80000001AB501040;
      v26._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v51[3] = type metadata accessor for MetricsFieldsContext.Property();
      v51[0] = v15;
      v51[1] = v14;
      sub_1AB01522C(v51, v47);
      v48 = 0u;
      v49 = 0u;

      sub_1AB0169C4(v47, &v48);
      v50 = 1;
      v27 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
        v52 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v48;
      v32 = v49;
      v30[64] = v50;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v52 = v27;
      sub_1AB0167A8(v51);
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      *(v25 + 32) = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v34 = swift_allocObject();
      v44 = xmmword_1AB4D4720;
      *(v34 + 16) = xmmword_1AB4D4720;
      v35 = MEMORY[0x1E69E6158];
      *(&v49 + 1) = MEMORY[0x1E69E6158];
      *&v48 = 0xD000000000000027;
      *(&v48 + 1) = 0x80000001AB501060;
      *(v34 + 48) = 0u;
      *(v34 + 32) = 0u;
      sub_1AB0169C4(&v48, v34 + 32);
      *(v34 + 64) = 0;
      *(v25 + 40) = v34;
      v36 = sub_1AB461094();
      if (os_log_type_enabled(v24, v36))
      {
        if (qword_1EB4359F8 != -1)
        {
          swift_once();
        }

        v37 = off_1EB435A00;
        os_unfair_lock_lock(off_1EB435A00 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v37[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v37 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v39 = swift_allocObject();
        *(v39 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v48 = v25;
        *(&v48 + 1) = a3;
        *&v49 = v39;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
        sub_1AB016A34();
        v40 = sub_1AB460484();
        v42 = v41;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
        v43 = swift_allocObject();
        *(v43 + 16) = v44;
        *(v43 + 56) = v35;
        *(v43 + 64) = sub_1AB016854();
        *(v43 + 32) = v40;
        *(v43 + 40) = v42;
        sub_1AB45FF14();
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      return v46(a4, 1, 1, a2);
    }
  }

  else
  {
    v21 = *(*(a2 - 8) + 56);

    return v21(a4, 1, 1, a2);
  }
}

uint64_t MetricsFieldsContext.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1AB074E20(a1, a2, sub_1AB01A8D8, a3);
}

{
  return sub_1AB074E20(a1, a2, sub_1AB0223E4, a3);
}

uint64_t sub_1AB0754C0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[5];
  ObjectType = swift_getObjectType();
  v7 = v2[3];
  v18[0] = v2[2];
  v18[1] = v7;

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
  Preferences.subscript.getter(v18, ObjectType, v8, v5, &v19);

  v10 = v19;
  if (!v19)
  {
    *a2 = 0u;
    a2[1] = 0u;
    return result;
  }

  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v11);
  v13 = (*(v12 + 8))(v11, v12);
  if (!*(v10 + 16))
  {

    goto LABEL_7;
  }

  v15 = sub_1AB014DB4(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_7:
    *a2 = 0u;
    a2[1] = 0u;
  }

  sub_1AB0165C4(*(v10 + 56) + 32 * v15, a2);
}

unint64_t sub_1AB0755F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438098);
    v3 = sub_1AB461924();

    for (i = (a1 + 56); ; i += 8)
    {
      v5 = *i;
      v6 = i[3];
      v7 = i[4];
      *v15 = *(i - 3);
      *&v15[8] = *(i - 1);
      *&v15[24] = v5;
      v16 = *(i + 1);
      v17 = v6;

      result = sub_1AB077384(v15);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 56 * result;
      v11 = *&v15[16];
      *v10 = *v15;
      *(v10 + 16) = v11;
      *(v10 + 32) = v16;
      *(v10 + 48) = v17;
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

void static AutomationSemantics.accountButton()(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = &unk_1F1FF38F8;
  a1[1] = v1;
}

uint64_t sub_1AB07577C()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_1AB3E4170;
  }

  else
  {
    v2 = sub_1AB075890;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB075890()
{
  (*(v0[49] + 16))(v0[50], v0[51], v0[48]);
  if (swift_dynamicCast())
  {
    v2 = v0[55];
    v1 = v0[56];
    v4 = v0[46];
    v3 = v0[47];
    v5 = v0[43];
    v6 = v0[34];
    (*(v0[49] + 8))(v0[51], v0[48]);
    (*(v2 + 8))(v1, v3);
    v7 = *(v5 - 8);
    (*(v7 + 56))(v4, 0, 1, v5);
    (*(v7 + 32))(v6, v4, v5);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v11 = v0[45];
    v10 = v0[46];
    v12 = v0[44];
    (*(*(v0[43] - 8) + 56))(v10, 1, 1, v0[43]);
    (*(v11 + 8))(v10, v12);
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD00000000000001BLL, 0x80000001AB50DD40);
    v13 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v13);

    MEMORY[0x1AC59BA20](0xD000000000000029, 0x80000001AB50DD60);
    v14 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v14);

    MEMORY[0x1AC59BA20](96, 0xE100000000000000);
    return sub_1AB461884();
  }
}

uint64_t _s9JetEngine11IntentModelPAAE010_canonicalcD0AaB_pvg_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_0, v3, a1);
}

uint64_t sub_1AB075BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB06C6E4, 0, 0);
}

uint64_t sub_1AB075C14()
{
  *(*v1 + 264) = v0;

  if (v0)
  {

    v2 = sub_1AB3E0358;
  }

  else
  {
    v2 = sub_1AB074C9C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t getEnumTagSinglePayload for DependencyCycleError.Creator(uint64_t a1, int a2)
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

uint64_t _s9JetEngine6ModelsO18HTTPTemplateActionV8FormBodyV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1AB461DA4();
  }
}

uint64_t PageMetrics.init(instructions:pageFields:custom:clickLocationFields:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *a3;
  *a5 = result;
  a5[1] = a2;
  a5[2] = v5;
  a5[3] = a4;
  return result;
}

uint64_t ImpressionsCalculator.isVisible.setter(char a1)
{
  v3 = a1 & 1;
  v4 = sub_1AB45F9B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v9 = *(v1 + 256);
  *(v1 + 256) = a1;
  if (v9 != v3)
  {
    v10 = sub_1AB0761E0();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = *(v1 + 160);
    v18 = *(v1 + 168);
    __swift_project_boxed_opaque_existential_1Tm((v1 + 136), v17);
    (*(v18 + 8))(v17, v18);
    sub_1AB0763B0(v7, v10, v12, v14, v16);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t ImpressionsCalculator.viewBounds.setter(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1AB45F9B4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1AB460224();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v4[33] = a1;
  v4[34] = a2;
  v4[35] = a3;
  v4[36] = a4;
  sub_1AB015664();
  *v17 = sub_1AB461124();
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8020], v14);
  v18 = sub_1AB460244();
  result = (*(v15 + 8))(v17, v14);
  if (v18)
  {
    result = swift_beginAccess();
    if (*(v5 + 256) == 1)
    {
      v20 = sub_1AB0761E0();
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v27 = *(v5 + 20);
      v28 = *(v5 + 21);
      __swift_project_boxed_opaque_existential_1Tm(v5 + 17, v27);
      (*(v28 + 8))(v27, v28);
      sub_1AB0763B0(v13, v20, v22, v24, v26);
      return (*(v11 + 8))(v13, v10);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1AB0761E0()
{
  swift_beginAccess();
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(v0 + 104);
    if (v7)
    {
      v8 = *(v0 + 128);
      v9 = *(v0 + 96);
      v26 = *(v0 + 80);
      v27 = v9;
      v28 = v7;
      v29 = *(v0 + 112);
      v30 = v8;
      swift_beginAccess();
      v10 = *(v6 + 24);
      if (*(v10 + 16))
      {
        v11 = sub_1AB077384(&v26);
        if (v12)
        {
          v13 = *(*(v10 + 56) + 8 * v11);
          swift_endAccess();
          v14 = swift_beginAccess();
          v15 = v13[23];
          v21 = v13[24];
          v16 = v13[25];
          v17 = v13[26];
          v31.origin.x = sub_1AB0761E0(v14);
          y = v31.origin.y;
          x = v31.origin.x;
          height = v31.size.height;
          width = v31.size.width;
          MinX = CGRectGetMinX(v31);
          v32.origin.x = v15;
          v32.origin.y = v21;
          v32.size.width = v16;
          v32.size.height = v17;
          v19 = MinX - CGRectGetMinX(v32);
          v33.origin.x = v1;
          v33.origin.y = v2;
          v33.size.width = v3;
          v33.size.height = v4;
          v1 = v19 + CGRectGetMinX(v33);
          v34.origin.y = y;
          v34.origin.x = x;
          v34.size.width = width;
          v34.size.height = height;
          CGRectGetMinY(v34);
          v35.size.width = v16;
          v35.origin.x = v15;
          v35.origin.y = v21;
          v35.size.height = v17;
          CGRectGetMinY(v35);
          v36.origin.x = v1;
          v36.origin.y = v2;
          v36.size.width = v3;
          v36.size.height = v4;
          CGRectGetMinY(v36);

          return v1;
        }
      }

      swift_endAccess();
    }
  }

  return v1;
}

uint64_t sub_1AB0763B0(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  swift_beginAccess();
  v11 = *(v5 + 24);
  v14 = *(v11 + 64);
  v13 = v11 + 64;
  v12 = v14;
  v15 = 1 << *(*(v5 + 24) + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;

  v20 = 0;
  if (v17)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
    }

    v17 = *(v13 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      do
      {
LABEL_9:
        v17 &= v17 - 1;

        sub_1AB0779CC(v22, a1, a2, a3, a4, a5);
      }

      while (v17);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t BaseObjectGraph.deinit()
{

  return v0;
}

double sub_1AB076514@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AB4D4720;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *&v27 = a5;
  *(&v27 + 1) = MEMORY[0x1E69E7CC0];

  sub_1AB06F948(v12, sub_1AB06E6CC, 0);
  v21 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A0B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D47F0;
  sub_1AB01522C(a3, v26);
  sub_1AB01522C(v26, &v24);
  if (v25)
  {
    sub_1AB014B78(&v24, v23);
    sub_1AB0165C4(v23, v22);
    v14 = _sSS9JetEngineE11_unwrappingSSyp_tcfC_0(v22);
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    sub_1AB0167A8(v26);
  }

  else
  {
    sub_1AB0167A8(v26);
    v14 = 0;
    v16 = 0;
  }

  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v14;
  *(inited + 56) = v16;
  sub_1AB01522C(a4, v26);
  sub_1AB01522C(v26, &v24);
  if (v25)
  {
    sub_1AB014B78(&v24, v23);
    sub_1AB0165C4(v23, v22);
    v17 = _sSS9JetEngineE11_unwrappingSSyp_tcfC_0(v22);
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    sub_1AB0167A8(v26);
  }

  else
  {
    sub_1AB0167A8(v26);
    v17 = 0;
    v19 = 0;
  }

  *(inited + 64) = 0x6449746E65726170;
  *(inited + 72) = 0xE800000000000000;
  *(inited + 80) = v17;
  *(inited + 88) = v19;
  *v26 = v21;
  sub_1AB05ED60(inited);
  result = v26[0];
  *a6 = *v26;
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

uint64_t ImpressionMetrics.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v3;
}

Swift::Void __swiftcall ImpressionsCalculator.changeImpressionableBounds(_:forElementWithID:)(__C::CGRect _, JetEngine::ImpressionMetrics::ID *forElementWithID)
{
  height = _.size.height;
  width = _.size.width;
  y = _.origin.y;
  x = _.origin.x;
  v8 = sub_1AB45F9B4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  v12 = sub_1AB460224();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) + 64);
  element = forElementWithID->element;
  v33[0] = forElementWithID->parent;
  v33[1] = element;
  v33[2] = *&forElementWithID->index;
  object = forElementWithID->uniqueID.value._object;
  swift_beginAccess();
  v17 = *(v2 + 24);
  if (*(v17 + 16) && (v18 = sub_1AB077384(v33), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);
    swift_endAccess();
    swift_beginAccess();
    v21 = *(v20 + 168);
    if (v21)
    {
      swift_beginAccess();
      *(v21 + 264) = x;
      *(v21 + 272) = y;
      *(v21 + 280) = width;
      *(v21 + 288) = height;
      sub_1AB015664();

      *v15 = sub_1AB461124();
      (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
      v22 = sub_1AB460244();
      (*(v13 + 8))(v15, v12);
      if (v22)
      {
        swift_beginAccess();
        if (*(v21 + 256) == 1)
        {
          v23 = sub_1AB0761E0();
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v30 = *(v21 + 160);
          v31 = *(v21 + 168);
          __swift_project_boxed_opaque_existential_1Tm((v21 + 136), v30);
          (*(v31 + 8))(v30, v31);
          sub_1AB0763B0(v11, v23, v25, v27, v29);

          (*(v9 + 8))(v11, v8);
        }

        else
        {
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_1AB076B1C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);
  sub_1AB4620A4();
  sub_1AB4620C4();
  if (v1)
  {
    sub_1AB460684();
  }

  sub_1AB460684();
  sub_1AB4620C4();
  if (v2)
  {
    sub_1AB460684();
  }

  return sub_1AB462104();
}

uint64_t ImpressionsCalculator.addElement(_:at:position:)(_OWORD *a1, uint64_t a2, char a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v8 = v7;
  v70 = sub_1AB45F9B4();
  v16 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[1];
  *v79 = *a1;
  *&v79[16] = v19;
  v20 = a1[3];
  v80 = a1[2];
  v81 = v20;
  v82 = a1[4];
  v74 = *v79;
  v71 = *&v79[8];
  v75 = *&v79[8];
  v76 = *(&v19 + 1);
  v77 = v80;
  v78 = v20;
  swift_beginAccess();
  v21 = *(v8 + 24);
  v22 = *(v21 + 16);

  if (v22 && (v23 = sub_1AB077384(&v74), (v24 & 1) != 0))
  {
    v25 = *(*(v21 + 56) + 8 * v23);
    swift_endAccess();

    swift_beginAccess();
    v26 = v25[23];
    v27 = v25[24];
    v28 = v25[25];
    v29 = v25[26];

    v83.origin.x = v26;
    v83.origin.y = v27;
    v83.size.width = v28;
    v83.size.height = v29;
    v90.origin.x = a4;
    v90.origin.y = a5;
    v90.size.width = a6;
    v90.size.height = a7;
    if (CGRectEqualToRect(v83, v90))
    {
    }

    v25[23] = a4;
    v25[24] = a5;
    v25[25] = a6;
    v25[26] = a7;
    sub_1AB3CFBFC();
    v58 = sub_1AB0761E0();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v65 = *(v8 + 160);
    v66 = *(v8 + 168);
    __swift_project_boxed_opaque_existential_1Tm((v8 + 136), v65);
    (*(v66 + 8))(v65, v66);
    sub_1AB0779CC(v25, v18, v58, v60, v62, v64);
  }

  else
  {
    swift_endAccess();
    v31 = *(v8 + 32);
    v32 = *(v8 + 56);
    type metadata accessor for ImpressionsTracking.ImpressionableItem();
    v33 = swift_allocObject();
    v34 = *v79;
    *(v33 + 88) = *&v79[16];
    v35 = v81;
    *(v33 + 104) = v80;
    *(v33 + 120) = v35;
    *(v33 + 136) = v82;
    *(v33 + 168) = 0;
    *(v33 + 72) = v34;
    *(v33 + 161) = 1;
    *(v33 + 184) = a4;
    *(v33 + 192) = a5;
    *(v33 + 200) = a6;
    *(v33 + 208) = a7;
    *(v33 + 16) = v31;
    *(v33 + 24) = v32;
    sub_1AB077170(v79, v73);
    v84.origin.x = a4;
    v84.origin.y = a5;
    v84.size.width = a6;
    v84.size.height = a7;
    v36 = v31 * CGRectGetWidth(v84);
    v85.origin.x = a4;
    v85.origin.y = a5;
    v85.size.width = a6;
    v85.size.height = a7;
    v37 = v31 * CGRectGetHeight(v85);
    v86.origin.x = a4;
    v86.origin.y = a5;
    v86.size.width = a6;
    v86.size.height = a7;
    MinX = CGRectGetMinX(v86);
    v68 = v36;
    v39 = v36 + MinX;
    v40 = 0.0;
    *&v71 = v39 + 0.0;
    v87.origin.x = a4;
    v87.origin.y = a5;
    v87.size.width = a6;
    v87.size.height = a7;
    MinY = CGRectGetMinY(v87);
    v69 = v37;
    v42 = v37 + MinY + 0.0;
    v43 = a7;
    v44 = fabs(v31 + -0.5);
    if (v44 >= 0.01)
    {
      v88.origin.x = a4;
      v88.origin.y = a5;
      v67 = v42;
      v88.size.width = a6;
      v88.size.height = v43;
      v40 = CGRectGetMaxX(v88) - v68 + 0.0;
      v89.origin.x = a4;
      v89.origin.y = a5;
      v89.size.width = a6;
      v89.size.height = v43;
      MaxY = CGRectGetMaxY(v89);
      v42 = v67;
      v46 = MaxY - v69 + 0.0;
      v45 = v31 > 0.5;
    }

    else
    {
      v45 = 0;
      v46 = 0.0;
    }

    *(v33 + 32) = v71;
    *(v33 + 40) = v42;
    *(v33 + 48) = v40;
    *(v33 + 56) = v46;
    *(v33 + 64) = v44 < 0.01;
    *(v33 + 65) = v45;
    *(v33 + 176) = 0;
    *(v33 + 152) = a2;
    *(v33 + 160) = a3 & 1;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = *(v8 + 24);
    *(v8 + 24) = 0x8000000000000000;
    sub_1AB0771CC(v33, &v74, isUniquelyReferenced_nonNull_native);

    *(v8 + 24) = v72;
    swift_endAccess();
    v49 = sub_1AB0761E0();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = *(v8 + 160);
    v57 = *(v8 + 168);
    __swift_project_boxed_opaque_existential_1Tm((v8 + 136), v56);
    (*(v57 + 8))(v56, v57);
    sub_1AB0779CC(v33, v18, v49, v51, v53, v55);
  }

  return (*(v16 + 8))(v18, v70);
}

uint64_t sub_1AB0771E0(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v6 = v4;
  v10 = *v4;
  v11 = sub_1AB077384(a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_1AB077620(v16, a3 & 1, a4);
      v11 = sub_1AB077384(a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1AB461FC4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1AB1DA370(a4);
      v11 = v19;
    }
  }

  v21 = *v6;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    v23 = v21[6] + 56 * v11;
    v24 = *a2;
    v25 = *(a2 + 16);
    v26 = *(a2 + 32);
    *(v23 + 48) = *(a2 + 48);
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    *v23 = v24;
    *(v21[7] + 8 * v11) = a1;
    v27 = v21[2];
    v15 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v15)
    {
      v21[2] = v28;
      return sub_1AB077970(a2, v29);
    }

    goto LABEL_15;
  }

  *(v21[7] + 8 * v11) = a1;
}

unint64_t sub_1AB077384(uint64_t *a1)
{
  v2 = a1[1];
  sub_1AB4620A4();
  sub_1AB4620C4();
  if (v2)
  {
    sub_1AB460684();
  }

  v3 = a1[6];
  sub_1AB460684();
  sub_1AB4620C4();
  if (v3)
  {
    sub_1AB460684();
  }

  v4 = sub_1AB462104();

  return sub_1AB077458(a1, v4);
}

unint64_t sub_1AB077458(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v23 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = v2;
    v6 = ~v3;
    v7 = a1[1];
    v8 = a1[2];
    v9 = a1[3];
    v20 = a1[5];
    v21 = *a1;
    v22 = a1[6];
    v10 = *(v5 + 48);
    do
    {
      v11 = (v10 + 56 * v4);
      v12 = *v11;
      v13 = v11[1];
      v15 = v11[5];
      v14 = v11[6];
      v16 = v11[2] == v8 && v11[3] == v9;
      if (!v16 && (sub_1AB461DA4() & 1) == 0)
      {
        goto LABEL_4;
      }

      if (v13)
      {
        if (!v7)
        {
          goto LABEL_4;
        }

        v17 = v12 == v21 && v13 == v7;
        if (!v17 && (sub_1AB461DA4() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v7)
      {
        goto LABEL_4;
      }

      if (v14)
      {
        if (v22)
        {
          v18 = v15 == v20 && v14 == v22;
          if (v18 || (sub_1AB461DA4() & 1) != 0)
          {
            return v4;
          }
        }
      }

      else if (!v22)
      {
        return v4;
      }

LABEL_4:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v23 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1AB0775CC()
{
  result = qword_1EB4355F8;
  if (!qword_1EB4355F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4355F8);
  }

  return result;
}

uint64_t sub_1AB077620(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v39 = a2;
  result = sub_1AB461914();
  v8 = result;
  if (*(v6 + 16))
  {
    v37 = v3;
    v38 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v22 = v19 | (v9 << 6);
      v23 = *(v6 + 56);
      v24 = (*(v6 + 48) + 56 * v22);
      v25 = v24[1];
      v42 = *v24;
      v26 = v24[3];
      v43 = v24[2];
      v40 = v24[4];
      v27 = v24[6];
      v41 = v24[5];
      v28 = *(v23 + 8 * v22);
      if ((v39 & 1) == 0)
      {
      }

      sub_1AB4620A4();
      sub_1AB4620C4();
      if (v25)
      {
        sub_1AB460684();
      }

      sub_1AB460684();
      sub_1AB4620C4();
      if (v27)
      {
        sub_1AB460684();
      }

      result = sub_1AB462104();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v17 = v28;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v17 = v28;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = (*(v8 + 48) + 56 * v16);
      *v18 = v42;
      v18[1] = v25;
      v18[2] = v43;
      v18[3] = v26;
      v18[4] = v40;
      v18[5] = v41;
      v18[6] = v27;
      *(*(v8 + 56) + 8 * v16) = v17;
      ++*(v8 + 16);
      v6 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v4 = v37;
      goto LABEL_37;
    }

    v36 = 1 << *(v6 + 32);
    v4 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v6 + 16) = 0;
  }

LABEL_37:
  *v4 = v8;
  return result;
}

uint64_t sub_1AB0779CC(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  swift_beginAccess();
  if (*(v6 + 256) == 1)
  {
    v109.origin.x = a3;
    v109.origin.y = a4;
    v109.size.width = a5;
    v109.size.height = a6;
    if (ImpressionsTracking.ImpressionableItem.isImpressed(in:)(v109))
    {
      swift_beginAccess();
      if (*(a1 + 161) == 1)
      {
        v13 = *(v6 + 72);
        ObjectType = swift_getObjectType();
        v15 = *(a1 + 88);
        v16 = *(a1 + 120);
        v91 = *(a1 + 104);
        v92 = v16;
        v93 = *(a1 + 136);
        v89 = *(a1 + 72);
        v90 = v15;
        v17 = *(a1 + 88);
        v18 = *(a1 + 120);
        v86 = *(a1 + 104);
        v87 = v18;
        v88 = *(a1 + 136);
        v84 = *(a1 + 72);
        v85 = v17;
        v19 = *(v6 + 176);
        v20 = *(v6 + 192);
        v21 = *(v6 + 240);
        v22 = *(v6 + 208);
        v97 = *(v6 + 224);
        v98 = v21;
        v23 = *(v6 + 192);
        v24 = *(v6 + 208);
        v25 = *(v6 + 176);
        v94 = v19;
        v95 = v23;
        v96 = v22;
        v26 = *(a1 + 152);
        v27 = *(a1 + 160);
        v81 = v24;
        v82 = v97;
        v83 = *(v6 + 240);
        v79 = v25;
        v80 = v20;
        v28 = *(v13 + 16);
        sub_1AB077170(&v89, &v104);
        sub_1AB0786FC(&v94, &v104);
        v28(&v84, a2, v26, v27, &v79, ObjectType, v13);
        v101 = v81;
        v102 = v82;
        v103 = v83;
        v99 = v79;
        v100 = v80;
        sub_1AB079CF0(&v99);
        v106 = v86;
        v107 = v87;
        v108 = v88;
        v104 = v84;
        v105 = v85;
        v29 = sub_1AB079D44(&v104);
        *(a1 + 161) = 0;
        sub_1AB079D98(v29);
      }
    }

    else
    {
      v45 = swift_beginAccess();
      if ((*(a1 + 161) & 1) == 0)
      {
        *(a1 + 161) = 1;
        sub_1AB079D98(v45);
        v46 = *(v6 + 72);
        v47 = swift_getObjectType();
        v48 = *(a1 + 88);
        v49 = *(a1 + 120);
        v91 = *(a1 + 104);
        v92 = v49;
        v93 = *(a1 + 136);
        v89 = *(a1 + 72);
        v90 = v48;
        v50 = *(a1 + 88);
        v51 = *(a1 + 120);
        v86 = *(a1 + 104);
        v87 = v51;
        v88 = *(a1 + 136);
        v84 = *(a1 + 72);
        v85 = v50;
        v52 = *(v6 + 176);
        v53 = *(v6 + 192);
        v54 = *(v6 + 240);
        v55 = *(v6 + 208);
        v97 = *(v6 + 224);
        v98 = v54;
        v56 = *(v6 + 192);
        v57 = *(v6 + 208);
        v58 = *(v6 + 176);
        v94 = v52;
        v95 = v56;
        v96 = v55;
        v81 = v57;
        v82 = v97;
        v83 = *(v6 + 240);
        v79 = v58;
        v80 = v53;
        v59 = *(v46 + 40);
        sub_1AB077170(&v89, &v104);
        sub_1AB0786FC(&v94, &v104);
        v59(&v84, a2, &v79, v47, v46);
        v101 = v81;
        v102 = v82;
        v103 = v83;
        v99 = v79;
        v100 = v80;
        sub_1AB079CF0(&v99);
        v106 = v86;
        v107 = v87;
        v108 = v88;
        v104 = v84;
        v105 = v85;
        sub_1AB079D44(&v104);
      }
    }

    result = swift_beginAccess();
    v60 = *(a1 + 168);
    if (v60)
    {
      result = swift_beginAccess();
      if (*(v60 + 256) == 1)
      {

        v61 = sub_1AB0761E0();
        v63 = v62;
        v65 = v64;
        v67 = v66;
        swift_beginAccess();
        v68 = *(v60 + 24);
        v71 = *(v68 + 64);
        v70 = v68 + 64;
        v69 = v71;
        v72 = 1 << *(*(v60 + 24) + 32);
        v73 = -1;
        if (v72 < 64)
        {
          v73 = ~(-1 << v72);
        }

        v74 = v73 & v69;
        v75 = (v72 + 63) >> 6;

        v76 = 0;
        if (v74)
        {
          goto LABEL_19;
        }

        while (1)
        {
          v77 = v76 + 1;
          if (__OFADD__(v76, 1))
          {
            break;
          }

          if (v77 >= v75)
          {
          }

          v74 = *(v70 + 8 * v77);
          ++v76;
          if (v74)
          {
            v76 = v77;
            do
            {
LABEL_19:
              v74 &= v74 - 1;

              sub_1AB0779CC(v78, a2, v61, v63, v65, v67);
            }

            while (v74);
            continue;
          }
        }

        __break(1u);
      }
    }
  }

  else
  {
    result = swift_beginAccess();
    if ((*(a1 + 161) & 1) == 0)
    {
      *(a1 + 161) = 1;
      sub_1AB079D98(result);
      v31 = *(v6 + 72);
      v32 = swift_getObjectType();
      v33 = *(a1 + 88);
      v34 = *(a1 + 120);
      v91 = *(a1 + 104);
      v92 = v34;
      v93 = *(a1 + 136);
      v89 = *(a1 + 72);
      v90 = v33;
      v35 = *(a1 + 88);
      v36 = *(a1 + 120);
      v86 = *(a1 + 104);
      v87 = v36;
      v88 = *(a1 + 136);
      v84 = *(a1 + 72);
      v85 = v35;
      v37 = *(v6 + 176);
      v38 = *(v6 + 192);
      v39 = *(v6 + 240);
      v40 = *(v6 + 208);
      v97 = *(v6 + 224);
      v98 = v39;
      v41 = *(v6 + 192);
      v42 = *(v6 + 208);
      v43 = *(v6 + 176);
      v94 = v37;
      v95 = v41;
      v96 = v40;
      v81 = v42;
      v82 = v97;
      v83 = *(v6 + 240);
      v79 = v43;
      v80 = v38;
      v44 = *(v31 + 40);
      sub_1AB077170(&v89, &v104);
      sub_1AB0786FC(&v94, &v104);
      v44(&v84, a2, &v79, v32, v31);
      v101 = v81;
      v102 = v82;
      v103 = v83;
      v99 = v79;
      v100 = v80;
      sub_1AB079CF0(&v99);
      v106 = v86;
      v107 = v87;
      v108 = v88;
      v104 = v84;
      v105 = v85;
      return sub_1AB079D44(&v104);
    }
  }

  return result;
}

Swift::Bool __swiftcall ImpressionsTracking.ImpressionableItem.isImpressed(in:)(__C::CGRect in)
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  swift_beginAccess();
  if (*(v1 + 200) != 0.0 || *(v1 + 208) != 0.0)
  {
    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = height;
    v7 = CGRectGetWidth(v57);
    v8 = CGRectGetWidth(*(v1 + 184));
    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = width;
    v58.size.height = height;
    v9 = CGRectGetHeight(v58);
    v10 = CGRectGetHeight(*(v1 + 184));
    if (v8 <= v7)
    {
      if (v10 <= v9)
      {
        v19 = *(v1 + 32);
        v20 = *(v1 + 40);
        v22 = *(v1 + 48);
        v21 = *(v1 + 56);
        v23 = *(v1 + 64);
        v24 = *(v1 + 65);
LABEL_37:
        v51 = v19;
        v52 = v20;
        v53 = v22;
        v54 = v21;
        v55 = v23;
        v56 = v24;
        v6 = sub_1AB0783F0(x, y, width, height);
        return v6 & 1;
      }

      MinX = CGRectGetMinX(*(v1 + 184));
      v62.origin.x = x;
      v62.origin.y = y;
      v62.size.width = width;
      v62.size.height = height;
      MinY = CGRectGetMinY(v62);
      v27 = CGRectGetWidth(*(v1 + 184));
      v63.origin.x = x;
      v63.origin.y = y;
      v63.size.width = width;
      v63.size.height = height;
      v13 = CGRectGetHeight(v63);
      v28 = CGRectGetMinY(*(v1 + 184));
      v64.origin.x = x;
      v64.origin.y = y;
      v64.size.width = width;
      v64.size.height = height;
      v29 = v28 - CGRectGetMinY(v64);
      v30 = CGRectGetHeight(*(v1 + 184));
      if (v29 <= 0.0)
      {
        v37 = v29 + v30;
        if (v37 >= 0.0)
        {
          v31 = 0.0;
          v17 = 1;
        }

        else
        {
          v17 = 0;
          v31 = v37;
        }
      }

      else
      {
        v17 = 0;
        v31 = v29;
      }

      swift_beginAccess();
      if (*(v1 + 176) == 1 && *(v1 + 24) == 1)
      {
        v38 = 0.01;
      }

      else
      {
        v38 = *(v1 + 16);
      }

      v39 = MinX;
      v40 = MinY;
      v41 = v27;
      v42 = 0.0;
      v43 = v31;
    }

    else
    {
      if (v10 > v9)
      {
        swift_beginAccess();
        if (*(v1 + 176) == 1 && (*(v1 + 24) & 1) != 0)
        {
          v25 = 0.01;
        }

        else
        {
          v25 = *(v1 + 16);
        }

        v65.origin.x = x;
        v65.origin.y = y;
        v65.size.width = width;
        v65.size.height = height;
        v32 = v25 * CGRectGetWidth(v65);
        v66.origin.x = x;
        v66.origin.y = y;
        v66.size.width = width;
        v66.size.height = height;
        v33 = v25 * CGRectGetHeight(v66);
        v67.origin.x = x;
        v67.origin.y = y;
        v67.size.width = width;
        v67.size.height = height;
        v47 = v32 + CGRectGetMinX(v67);
        v68.origin.x = x;
        v68.origin.y = y;
        v68.size.width = width;
        v68.size.height = height;
        v34 = v33 + CGRectGetMinY(v68);
        v35 = fabs(v25 + -0.5);
        v23 = v35 < 0.01;
        if (v35 < 0.01)
        {
          v24 = 0;
          v22 = 0.0;
          v21 = 0.0;
        }

        else
        {
          v69.origin.x = x;
          v69.origin.y = y;
          v69.size.width = width;
          v69.size.height = height;
          v22 = CGRectGetMaxX(v69) - v32 + 0.0;
          v70.origin.x = x;
          v70.origin.y = y;
          v70.size.width = width;
          v70.size.height = height;
          v21 = CGRectGetMaxY(v70) - v33 + 0.0;
          v24 = v25 > 0.5;
        }

        v19 = v47 + 0.0;
        v20 = v34 + 0.0;
        x = *(v1 + 184);
        y = *(v1 + 192);
        width = *(v1 + 200);
        height = *(v1 + 208);
        goto LABEL_37;
      }

      v59.origin.x = x;
      v59.origin.y = y;
      v59.size.width = width;
      v59.size.height = height;
      v45 = CGRectGetMinX(v59);
      v11 = CGRectGetMinY(*(v1 + 184));
      v60.origin.x = x;
      v60.origin.y = y;
      v60.size.width = width;
      v60.size.height = height;
      v12 = CGRectGetWidth(v60);
      v13 = CGRectGetHeight(*(v1 + 184));
      v14 = CGRectGetMinX(*(v1 + 184));
      v61.origin.x = x;
      v61.origin.y = y;
      v61.size.width = width;
      v61.size.height = height;
      v15 = v14 - CGRectGetMinX(v61);
      v16 = CGRectGetHeight(*(v1 + 184));
      if (v15 <= 0.0)
      {
        v36 = v15 + v16;
        if (v36 >= 0.0)
        {
          v18 = 0.0;
          v17 = 1;
        }

        else
        {
          v17 = 0;
          v18 = v36;
        }
      }

      else
      {
        v17 = 0;
        v18 = v15;
      }

      swift_beginAccess();
      if (*(v1 + 176) == 1 && *(v1 + 24) == 1)
      {
        v38 = 0.01;
      }

      else
      {
        v38 = *(v1 + 16);
      }

      v39 = v45;
      v40 = v11;
      v41 = v12;
      v42 = v18;
      v43 = 0.0;
    }

    sub_1AB3CF8D4(v42, v43, v17, v48, v39, v40, v41, v13, v38);
    v19 = *v48;
    v20 = *&v48[1];
    v22 = *&v48[2];
    v21 = *&v48[3];
    v23 = v49;
    v24 = v50;
    goto LABEL_37;
  }

  v6 = 0;
  return v6 & 1;
}

uint64_t sub_1AB0783F0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (*(v4 + 32))
  {
    return CGRectContainsPoint(*&a1, *v4);
  }

  v26 = *(v4 + 24);
  v27 = *(v4 + 16);
  MaxX = CGRectGetMaxX(*&a1);
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  MaxY = CGRectGetMaxY(v28);
  v12 = MaxY;
  v13 = *(v4 + 8);
  if (*v4 >= MaxX)
  {
    if (v13 >= MaxY)
    {
      if (v27 >= MaxX)
      {
        if (v26 < MaxY)
        {
          v35.origin.x = a1;
          v35.origin.y = a2;
          v35.size.width = a3;
          v35.size.height = a4;
          CGRectGetMinY(v35);
        }

        return 0;
      }

      v32.origin.x = a1;
      v32.origin.y = a2;
      v32.size.width = a3;
      v32.size.height = a4;
      MinX = CGRectGetMinX(v32);
      if (v26 < v12)
      {
        v33.origin.x = a1;
        v33.origin.y = a2;
        v33.size.width = a3;
        v33.size.height = a4;
        v23 = CGRectGetMinY(v33) <= v26;
        if (MinX > v27)
        {
          return 0;
        }

        result = 0;
        goto LABEL_31;
      }

      if (MinX > v27)
      {
        return 0;
      }

      result = 0;
      goto LABEL_48;
    }

    v15 = 0;
  }

  else
  {
    v29.origin.x = a1;
    v29.origin.y = a2;
    v29.size.width = a3;
    v29.size.height = a4;
    v14 = *v4;
    v15 = CGRectGetMinX(v29) <= v14;
    if (v13 >= v12)
    {
      if (v27 < MaxX)
      {
        v16 = v27;
        v17 = 0;
LABEL_11:
        v31.origin.x = a1;
        v31.origin.y = a2;
        v31.size.width = a3;
        v31.size.height = a4;
        v19 = CGRectGetMinX(v31);
        v20 = v19 <= v16;
        if (v26 < v12)
        {
          v21 = v26;
          goto LABEL_25;
        }

        if (v15)
        {
          if (v19 > v16)
          {
            v25 = *(v4 + 33);
            if (!v17)
            {
              return 0;
            }

            return (v25 & 1) == 0;
          }

          if (!v17)
          {
            return 0;
          }

          return (*(v4 + 33) & 1) == 0;
        }

        result = v17;
        if (v19 > v16)
        {
          return 0;
        }

LABEL_48:
        if ((*(v4 + 33) & 1) == 0)
        {
          return result;
        }

        return 0;
      }

      if (v26 >= v12)
      {
        return 0;
      }

      v21 = v26;
      v20 = 0;
      v17 = 0;
      goto LABEL_25;
    }
  }

  v30.origin.x = a1;
  v30.origin.y = a2;
  v30.size.width = a3;
  v30.size.height = a4;
  MinY = CGRectGetMinY(v30);
  v17 = MinY <= v13;
  if (v27 < MaxX)
  {
    v16 = v27;
    goto LABEL_11;
  }

  if (v26 >= v12)
  {
    if (!v15 || MinY > v13)
    {
      return 0;
    }

    return (*(v4 + 33) & 1) == 0;
  }

  v21 = v26;
  v20 = 0;
LABEL_25:
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  v24 = CGRectGetMinY(v34);
  v23 = v24 <= v21;
  if (!v15)
  {
    result = v17;
    if (!v20)
    {
      return 0;
    }

LABEL_31:
    if ((*(v4 + 33) & 1) == 0)
    {
      if (!v23)
      {
        return result;
      }

      return 1;
    }

    return 0;
  }

  if (!v20)
  {
    v25 = *(v4 + 33);
    if (!v17)
    {
      return (*(v4 + 33) & 1) == 0 && v24 <= v21;
    }

    return (v25 & 1) == 0;
  }

  if (v17)
  {
    if (v24 <= v21)
    {
      return 1;
    }

    return (*(v4 + 33) & 1) == 0;
  }

  if (*(v4 + 33))
  {
    return 0;
  }

  result = 0;
  if (v24 <= v21)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1AB078758(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a3;
  v3 = *(a3 + 24);
  v6 = *(a3 + 16);
  v7 = v3;
  v8 = *(a3 + 25);
  v9 = *(a3 + 41);
  *v10 = *(a3 + 57);
  *&v10[15] = *(a3 + 72);
  return DynamicImpressionsTracker.elementDidEnterView(_:on:at:with:)(a1, a2, v6, v3 & 1, &v5);
}

uint64_t DynamicImpressionsTracker.elementDidEnterView(_:on:with:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a3;
  v3 = *(a3 + 24);
  v6 = *(a3 + 16);
  v7 = v3;
  v8 = *(a3 + 25);
  v9 = *(a3 + 41);
  *v10 = *(a3 + 57);
  *&v10[15] = *(a3 + 72);
  return DynamicImpressionsTracker.elementDidEnterView(_:on:at:with:)(a1, a2, v6, v3 & 1, &v5);
}

uint64_t sub_1AB078834@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v7 = a1[1];
  v87 = *a1;
  v88 = v7;
  v89 = a1[2];
  v90 = *(a1 + 6);
  v91[0] = v87;
  v8 = *(&v87 + 1);
  swift_beginAccess();
  v9 = *(v3 + 56);
  if (!*(v9 + 16))
  {
    sub_1AB078F08(v91, v82);
LABEL_11:
    swift_endAccess();
    v16 = *(&v91[0] + 1);
    if (*(&v91[0] + 1))
    {
      v17 = *&v91[0];
    }

    else
    {
      v17 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437EC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AB4D4720;
    v19 = v90;
    v21 = v88;
    v20 = v89;
    *(inited + 32) = v87;
    *(inited + 48) = v21;
    *(inited + 64) = v20;
    *(inited + 80) = v19;
    *(inited + 88) = a2;
    sub_1AB077970(&v87, &v83);
    v22 = sub_1AB078F78(inited);
    swift_setDeallocating();
    sub_1AB014AC0(inited + 32, &qword_1EB437EC8);
    goto LABEL_15;
  }

  if (*(&v87 + 1))
  {
    v10 = v87;
  }

  else
  {
    v10 = 0;
  }

  sub_1AB078F08(v91, v82);
  sub_1AB078F08(v91, v82);
  sub_1AB078F08(v91, v82);
  v11 = sub_1AB07926C(v10, v8);
  if ((v12 & 1) == 0)
  {
    sub_1AB014AC0(v91, &qword_1EB439AC0);
    sub_1AB014AC0(v91, &qword_1EB439AC0);
    goto LABEL_11;
  }

  v13 = *(*(v9 + 56) + 8 * v11);
  swift_endAccess();
  v14 = *(v13 + 16);

  if (v14)
  {
    sub_1AB077384(&v87);
    if (v15)
    {
      sub_1AB014AC0(v91, &qword_1EB439AC0);
LABEL_30:

      v38 = v91[0];
      swift_beginAccess();
      v39 = *(v4 + 56);
      if (*(v39 + 16))
      {
        if (*(&v38 + 1))
        {
          v40 = v38;
        }

        else
        {
          v40 = 0;
        }

        v41 = sub_1AB07926C(v40, *(&v38 + 1));
        v43 = v42;
        sub_1AB014AC0(v91, &qword_1EB439AC0);
        if (v43)
        {
          v44 = *(*(v39 + 56) + 8 * v41);
          swift_endAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v83 = v44;
          sub_1AB1D59D4(a2, &v87, isUniquelyReferenced_nonNull_native);
          v22 = v83;
          v16 = *(&v91[0] + 1);
          if (*(&v91[0] + 1))
          {
            v17 = *&v91[0];
          }

          else
          {
            v17 = 0;
          }

LABEL_15:
          swift_beginAccess();
          v23 = swift_isUniquelyReferenced_nonNull_native();
          v82[0] = *(v4 + 56);
          *(v4 + 56) = 0x8000000000000000;
          sub_1AB0790CC(v22, v17, v16, v23);
          sub_1AB014AC0(v91, &qword_1EB439AC0);
          *(v4 + 56) = v82[0];
          goto LABEL_40;
        }
      }

      else
      {
        sub_1AB014AC0(v91, &qword_1EB439AC0);
      }

      sub_1AB014AC0(v91, &qword_1EB439AC0);
LABEL_40:
      result = swift_endAccess();
      v47 = 3;
LABEL_41:
      *a3 = v47;
      return result;
    }
  }

  v24 = 0;
  v25 = v13 + 64;
  v26 = 1 << *(v13 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v13 + 64);
  v29 = (v26 + 63) >> 6;
  while (v28)
  {
    v30 = v24;
LABEL_25:
    v31 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    if (*(*(v13 + 56) + ((v30 << 9) | (8 * v31))) == a2)
    {
      v79 = a3;
      swift_bridgeObjectRetain_n();
      sub_1AB014AC0(v91, &qword_1EB439AC0);
      sub_1AB014AC0(v91, &qword_1EB439AC0);

      v32 = 0;
      v33 = 1 << *(v13 + 32);
      v34 = -1;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      v35 = v34 & *(v13 + 64);
      v36 = (v33 + 63) >> 6;
      v37 = MEMORY[0x1E69E7CC8];
      v80 = v36;
      while (v35)
      {
        v49 = v32;
LABEL_49:
        v50 = __clz(__rbit64(v35)) | (v49 << 6);
        v51 = *(v13 + 56);
        v52 = *(v13 + 48) + 56 * v50;
        v54 = *(v52 + 16);
        v53 = *(v52 + 32);
        v55 = *v52;
        v56 = *(v52 + 48);
        v84 = v54;
        v85 = v53;
        v83 = v55;
        v86 = v56;
        v57 = *(v51 + 8 * v50);
        if (v57 >= a2)
        {
          v58 = __OFADD__(v57++, 1);
          if (v58)
          {
            goto LABEL_67;
          }
        }

        sub_1AB077970(&v83, v82);
        v59 = swift_isUniquelyReferenced_nonNull_native();
        v82[0] = v37;
        v60 = sub_1AB077384(&v83);
        v62 = v37[2];
        v63 = (v61 & 1) == 0;
        v58 = __OFADD__(v62, v63);
        v64 = v62 + v63;
        if (v58)
        {
          goto LABEL_66;
        }

        v65 = v61;
        if (v37[3] >= v64)
        {
          if ((v59 & 1) == 0)
          {
            v73 = v60;
            sub_1AB1D8218();
            v60 = v73;
          }
        }

        else
        {
          sub_1AB1D2A9C(v64, v59);
          v60 = sub_1AB077384(&v83);
          if ((v65 & 1) != (v66 & 1))
          {
            goto LABEL_69;
          }
        }

        v35 &= v35 - 1;
        if (v65)
        {
          v48 = v60;
          sub_1AB1B0358(&v83);
          v37 = v82[0];
          *(*(v82[0] + 56) + 8 * v48) = v57;
        }

        else
        {
          v37 = v82[0];
          *(v82[0] + 8 * (v60 >> 6) + 64) |= 1 << v60;
          v67 = v37[6] + 56 * v60;
          v68 = v86;
          v70 = v84;
          v69 = v85;
          *v67 = v83;
          *(v67 + 16) = v70;
          *(v67 + 32) = v69;
          *(v67 + 48) = v68;
          *(v37[7] + 8 * v60) = v57;
          v71 = v37[2];
          v58 = __OFADD__(v71, 1);
          v72 = v71 + 1;
          if (v58)
          {
            goto LABEL_68;
          }

          v37[2] = v72;
        }

        v32 = v49;
        v36 = v80;
      }

      while (1)
      {
        v49 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_65;
        }

        if (v49 >= v36)
        {

          v74 = swift_isUniquelyReferenced_nonNull_native();
          v82[0] = v37;
          sub_1AB1D59D4(a2, &v87, v74);
          v75 = v82[0];
          v76 = *(&v91[0] + 1);
          if (*(&v91[0] + 1))
          {
            v77 = *&v91[0];
          }

          else
          {
            v77 = 0;
          }

          swift_beginAccess();
          v78 = swift_isUniquelyReferenced_nonNull_native();
          v81 = *(v4 + 56);
          *(v4 + 56) = 0x8000000000000000;
          sub_1AB0790CC(v75, v77, v76, v78);
          sub_1AB014AC0(v91, &qword_1EB439AC0);
          *(v4 + 56) = v81;
          result = swift_endAccess();
          v47 = 0;
          a3 = v79;
          goto LABEL_41;
        }

        v35 = *(v25 + 8 * v49);
        ++v32;
        if (v35)
        {
          goto LABEL_49;
        }
      }
    }
  }

  while (1)
  {
    v30 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v30 >= v29)
    {

      sub_1AB014AC0(v91, &qword_1EB439AC0);

      goto LABEL_30;
    }

    v28 = *(v25 + 8 * v30);
    ++v24;
    if (v28)
    {
      v24 = v30;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

uint64_t sub_1AB078F08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AB078F78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4381B8);
    v3 = sub_1AB461924();

    for (i = (a1 + 56); ; i += 8)
    {
      v5 = *i;
      v6 = i[3];
      v7 = i[4];
      *v15 = *(i - 3);
      *&v15[8] = *(i - 1);
      *&v15[24] = v5;
      v16 = *(i + 1);
      v17 = v6;

      result = sub_1AB077384(v15);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 56 * result;
      v11 = *&v15[16];
      *v10 = *v15;
      *(v10 + 16) = v11;
      *(v10 + 32) = v16;
      *(v10 + 48) = v17;
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

uint64_t sub_1AB0790CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1AB07926C(a2, a3);
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
      sub_1AB0793CC(v16, a4 & 1, &qword_1EB4381B0);
      v11 = sub_1AB07926C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1AB461FC4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1AB1D80BC(&qword_1EB4381B0);
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

unint64_t sub_1AB07926C(uint64_t a1, uint64_t a2)
{
  sub_1AB4620A4();
  if (a2)
  {
    MEMORY[0x1AC59D3F0](1);
    sub_1AB460684();
  }

  else
  {
    MEMORY[0x1AC59D3F0](0);
  }

  v4 = sub_1AB462104();

  return sub_1AB079300(a1, a2, v4);
}

unint64_t sub_1AB079300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_1AB461DA4() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_1AB0793CC(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v31 = a2;
  result = sub_1AB461914();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 56) + 8 * v20);
      v32 = *(*(v6 + 48) + 16 * v20);
      v22 = *(*(v6 + 48) + 16 * v20 + 8);
      if ((v31 & 1) == 0)
      {
      }

      sub_1AB4620A4();
      if (v22)
      {
        MEMORY[0x1AC59D3F0](1);
        sub_1AB460684();
      }

      else
      {
        MEMORY[0x1AC59D3F0](0);
      }

      result = sub_1AB462104();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v32;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_36;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v3;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_36:
  *v4 = v8;
  return result;
}

unint64_t sub_1AB0796A0()
{
  result = qword_1EB432580;
  if (!qword_1EB432580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432580);
  }

  return result;
}

char *sub_1AB0796F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43A070);
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

uint64_t sub_1AB079810(uint64_t a1)
{
  if (qword_1ED4D2218 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1ED4D2220 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB019150((v1 + 16), &v5);
  os_unfair_lock_unlock((v1 + 24));
  v6 = &type metadata for OSLogger;
  v7 = &protocol witness table for OSLogger;
  v2 = type metadata accessor for OptionalLogger();
  v3 = swift_allocObject();
  result = sub_1AB0149B0(&v5, v3 + 16);
  *(v3 + 56) = 0x6973736572706D49;
  *(v3 + 64) = 0xEB00000000736E6FLL;
  *(v3 + 72) = 0;
  qword_1ED4D3E68 = v2;
  unk_1ED4D3E70 = &protocol witness table for OptionalLogger;
  qword_1ED4D3E50 = v3;
  return result;
}

Swift::Void __swiftcall OptionalLogger.log(contentsOf:withLevel:)(Swift::OpaquePointer contentsOf, JetEngine::LogMessageLevel withLevel)
{
  v4 = *withLevel;
  if (qword_1ED4D03F0 != -1)
  {
    swift_once();
  }

  v5 = unk_1ED4D0400;
  ObjectType = swift_getObjectType();
  v7 = *(v2 + 64);
  v11[0] = *(v2 + 56);
  v11[1] = v7;

  Preferences.subscript.getter(v11, ObjectType, &type metadata for OptionalLogger.Key, v5, &protocol witness table for OptionalLogger.Key, &v12);

  v8 = v12;
  if (v12 == 4)
  {
    v8 = *(v2 + 72);
  }

  if (v8 >= v4)
  {
    v9 = *(v2 + 40);
    v10 = *(v2 + 48);
    __swift_project_boxed_opaque_existential_1Tm((v2 + 16), v9);
    LOBYTE(v11[0]) = v4;
    (*(v10 + 8))(contentsOf._rawValue, v11, v9, v10);
  }
}

uint64_t sub_1AB079AC4()
{
  if (qword_1ED4D1D40 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED4D1A00;
  v1 = qword_1ED4D03E8;

  if (v1 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED4D3E78;
  v2 = unk_1ED4D3E80;
  type metadata accessor for NestedPreferences();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v0;
  v4[5] = &protocol witness table for LocalPreferences;
  qword_1ED4D03F8 = v4;
  unk_1ED4D0400 = &off_1F2006A80;
}

uint64_t sub_1AB079BB0()
{
  if (qword_1ED4D19D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED4D19E0;
  v0 = *algn_1ED4D19E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AB4D47F0;
  *(v2 + 32) = v1;
  *(v2 + 40) = v0;
  strcpy((v2 + 48), "loggerSettings");
  *(v2 + 63) = -18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438590);
  sub_1AB027E20();
  v3 = sub_1AB460484();
  v5 = v4;

  qword_1ED4D3E78 = v3;
  unk_1ED4D3E80 = v5;
  return result;
}

uint64_t sub_1AB079D98()
{
  v1 = sub_1AB45F9B4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v0 + 161))
  {
    result = swift_beginAccess();
    v6 = *(v0 + 168);
    if (!v6)
    {
      return result;
    }

    result = swift_beginAccess();
    v7 = *(v6 + 256);
    *(v6 + 256) = 0;
    if (v7 != 1)
    {
      return result;
    }

LABEL_7:

    v9 = sub_1AB0761E0();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = *(v6 + 160);
    v17 = *(v6 + 168);
    __swift_project_boxed_opaque_existential_1Tm((v6 + 136), v16);
    (*(v17 + 8))(v16, v17);
    sub_1AB0763B0(v4, v9, v11, v13, v15);

    return (*(v2 + 8))(v4, v1);
  }

  result = swift_beginAccess();
  v6 = *(v0 + 168);
  if (v6)
  {
    result = swift_beginAccess();
    v8 = *(v6 + 256);
    *(v6 + 256) = 1;
    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t ImpressionMetrics.ID.element.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ImpressionsCalculator.childCalculator(for:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v31[0] = *a1;
  v31[1] = v2;
  v31[2] = *(a1 + 32);
  v32 = *(a1 + 48);
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (*(v3 + 16) && (v4 = sub_1AB077384(v31), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    swift_endAccess();
    swift_beginAccess();
    if (*(v6 + 168))
    {
    }

    else
    {

      v24 = ImpressionsCalculator.makeChildCalculator(for:)(v31);

      return v24;
    }
  }

  else
  {
    swift_endAccess();
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v8 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1AB4D47F0;
    v30 = sub_1AB0168A8(0, 40, 0, MEMORY[0x1E69E7CC0]);
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v10);

    sub_1AB4604F4();
    sub_1AB02F088();
    v11 = sub_1AB4607B4();
    v13 = v12;
    swift_getObjectType();
    *&v27 = sub_1AB462314();
    *(&v27 + 1) = v14;
    MEMORY[0x1AC59BA20](7876666, 0xE300000000000000);
    MEMORY[0x1AC59BA20](v11, v13);

    v15 = MEMORY[0x1E69E6158];
    v26 = MEMORY[0x1E69E6158];

    v25 = v27;
    v27 = 0u;
    v28 = 0u;
    sub_1AB0169C4(&v25, &v27);
    v29 = 0;
    v16 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1AB0168A8(0, *(v16 + 2) + 1, 1, v16);
    }

    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1AB0168A8((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v19 = &v16[40 * v18];
    v20 = v27;
    v21 = v28;
    v19[64] = v29;
    *(v19 + 2) = v20;
    *(v19 + 3) = v21;
    v30 = v16;
    v22._object = 0x80000001AB50F8C0;
    v22._countAndFlagsBits = 0xD000000000000027;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    *(v9 + 32) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1AB4D4720;
    *(&v28 + 1) = v15;
    *&v27 = 0xD00000000000002BLL;
    *(&v27 + 1) = 0x80000001AB50F890;
    *(v23 + 48) = 0u;
    *(v23 + 32) = 0u;
    sub_1AB0169C4(&v27, v23 + 32);
    *(v23 + 64) = 0;
    *(v9 + 40) = v23;
    *&v27 = v8;
    LOBYTE(v25) = 0;
    OSLogger.log(contentsOf:withLevel:)(v9, &v25);

    return 0;
  }
}

uint64_t ImpressionsCalculator.makeChildCalculator(for:)(uint64_t *a1)
{
  v2 = v1;
  v99 = sub_1AB460224();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v97 = (&v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v102 = sub_1AB45F9B4();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v100 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AB45F9E4();
  *&v96 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 1);
  v110[0] = *a1;
  v10 = *(a1 + 2);
  v110[1] = v9;
  v110[2] = v10;
  v11 = a1[6];
  v111 = v11;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  v16 = a1[5];
  *&v95 = a1[4];
  v94 = v16;
  swift_beginAccess();
  v17 = *(v2 + 24);
  if (!*(v17 + 16) || (v18 = sub_1AB077384(v110), (v19 & 1) == 0))
  {
    swift_endAccess();
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v60 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1AB4D47F0;
    v103 = sub_1AB0168A8(0, 40, 0, MEMORY[0x1E69E7CC0]);
    v62._countAndFlagsBits = 0;
    v62._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v62);

    *&v104 = sub_1AB4604F4();
    sub_1AB02F088();
    v63 = sub_1AB4607B4();
    v65 = v64;
    swift_getObjectType();
    *&v104 = sub_1AB462314();
    *(&v104 + 1) = v66;
    MEMORY[0x1AC59BA20](7876666, 0xE300000000000000);
    MEMORY[0x1AC59BA20](v63, v65);

    v67 = v104;
    v68 = MEMORY[0x1E69E6158];
    v108 = MEMORY[0x1E69E6158];

    v107 = v67;
    v104 = 0u;
    v105 = 0u;
    sub_1AB0169C4(&v107, &v104);
    v106 = 0;
    v69 = v103;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v69 = sub_1AB0168A8(0, *(v69 + 2) + 1, 1, v69);
    }

    v71 = *(v69 + 2);
    v70 = *(v69 + 3);
    if (v71 >= v70 >> 1)
    {
      v69 = sub_1AB0168A8((v70 > 1), v71 + 1, 1, v69);
    }

    *(v69 + 2) = v71 + 1;
    v72 = &v69[40 * v71];
    v73 = v104;
    v74 = v105;
    v72[64] = v106;
    *(v72 + 2) = v73;
    *(v72 + 3) = v74;
    v103 = v69;
    v75._object = 0x80000001AB50F860;
    v75._countAndFlagsBits = 0xD000000000000027;
    LogMessage.StringInterpolation.appendLiteral(_:)(v75);
    *(v61 + 32) = v103;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1AB4D4720;
    *(&v105 + 1) = v68;
    *&v104 = 0xD00000000000002BLL;
    *(&v104 + 1) = 0x80000001AB50F890;
    *(v76 + 48) = 0u;
    *(v76 + 32) = 0u;
    sub_1AB0169C4(&v104, v76 + 32);
    *(v76 + 64) = 0;
    *(v61 + 40) = v76;
    *&v104 = v60;
    LOBYTE(v107) = 0;
    OSLogger.log(contentsOf:withLevel:)(v61, &v107);

    return 0;
  }

  v93 = *(*(v17 + 56) + 8 * v18);
  swift_endAccess();
  v20 = *(v2 + 32);
  v89 = *(v2 + 40);
  v21 = v89;
  v87 = *(v2 + 48);
  v88 = *(v2 + 56);
  v108 = &type metadata for SystemDateProvider;
  v109 = &protocol witness table for SystemDateProvider;
  v22 = swift_allocObject();
  v90 = v6;
  v92 = *(v2 + 64);
  swift_weakInit();
  *(v22 + 264) = 0u;
  v91 = (v22 + 264);
  *(v22 + 256) = 1;
  *(v22 + 280) = 0u;
  *(v22 + 32) = v20;
  v23 = v87;
  *(v22 + 40) = v21;
  *(v22 + 48) = v23;
  *(v22 + 56) = v88;
  *(v22 + 80) = v12;
  *(v22 + 88) = v13;
  *(v22 + 96) = v14;
  *(v22 + 104) = v15;
  v24 = v94;
  *(v22 + 112) = v95;
  *(v22 + 120) = v24;
  *(v22 + 128) = v11;
  *(v22 + 64) = v92;
  v25 = v23;
  swift_bridgeObjectRetain_n();

  sub_1AB077970(v110, &v104);
  swift_unknownObjectRetain();
  *(v22 + 24) = sub_1AB0755F8(MEMORY[0x1E69E7CC0]);
  sub_1AB01494C(&v107, v22 + 136);
  sub_1AB45F9D4();
  v26 = sub_1AB45F9C4();
  v28 = v27;
  (*(v96 + 8))(v8, v90);
  __swift_destroy_boxed_opaque_existential_1Tm(&v107);
  LOBYTE(v104) = 1;
  *(v22 + 176) = v89;
  *(v22 + 184) = v25;
  *(v22 + 192) = 0;
  *(v22 + 200) = 1;
  *(v22 + 208) = v26;
  *(v22 + 216) = v28;
  *(v22 + 224) = 0u;
  *(v22 + 240) = 0u;
  v94 = (v22 + 256);
  swift_beginAccess();
  v29 = *(v22 + 256);
  *(v22 + 256) = 0;
  v30 = v102;
  v31 = v101;
  v32 = v100;
  if (v29 == 1)
  {
    v33 = sub_1AB0761E0();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = *(v22 + 160);
    v41 = *(v22 + 168);
    __swift_project_boxed_opaque_existential_1Tm((v22 + 136), v40);
    (*(v41 + 8))(v40, v41);
    sub_1AB0763B0(v32, v33, v35, v37, v39);
    (*(v31 + 8))(v32, v30);
  }

  swift_weakAssign();

  v43 = v93;
  sub_1AB07AD28(v42);
  swift_beginAccess();
  v96 = *(v43 + 184);
  v95 = *(v43 + 200);
  v44 = v91;
  swift_beginAccess();
  v45 = v95;
  *v44 = v96;
  v44[1] = v45;
  sub_1AB015664();
  v46 = sub_1AB461124();
  v47 = v97;
  *v97 = v46;
  v48 = v98;
  v49 = v99;
  (*(v98 + 104))(v47, *MEMORY[0x1E69E8020], v99);
  LOBYTE(v44) = sub_1AB460244();
  result = (*(v48 + 8))(v47, v49);
  if (v44)
  {
    if (*v94 == 1)
    {
      v51 = sub_1AB0761E0();
      v53 = v52;
      v55 = v54;
      v57 = v56;
      v58 = *(v22 + 160);
      v59 = *(v22 + 168);
      __swift_project_boxed_opaque_existential_1Tm((v22 + 136), v58);
      (*(v59 + 8))(v58, v59);
      sub_1AB0763B0(v32, v51, v53, v55, v57);

      (*(v31 + 8))(v32, v30);
    }

    else
    {
    }

    v77 = sub_1AB0761E0();
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v84 = *(v2 + 160);
    v85 = *(v2 + 168);
    __swift_project_boxed_opaque_existential_1Tm((v2 + 136), v84);
    (*(v85 + 8))(v84, v85);
    sub_1AB0779CC(v43, v32, v77, v79, v81, v83);

    (*(v31 + 8))(v32, v30);
    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB07AD28(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1AB45F9B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v1 + 168);
  if (v8)
  {
    swift_beginAccess();
    v9 = *(v8 + 256);
    *(v8 + 256) = 0;
    if (v9 == 1)
    {

      v10 = sub_1AB0761E0();
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = *(v8 + 160);
      v18 = *(v8 + 168);
      __swift_project_boxed_opaque_existential_1Tm((v8 + 136), v17);
      (*(v18 + 8))(v17, v18);
      sub_1AB0763B0(v7, v10, v12, v14, v16);

      (*(v5 + 8))(v7, v4);
    }
  }

  *(v1 + 168) = a1;

  v19 = *(v1 + 168) != 0;
  swift_beginAccess();
  *(v2 + 176) = v19;
  sub_1AB07AF14();
  return sub_1AB079D98();
}

void sub_1AB07AF14()
{
  swift_beginAccess();
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  swift_beginAccess();
  if (*(v0 + 176) == 1 && (*(v0 + 24) & 1) != 0)
  {
    v5 = 0.01;
  }

  else
  {
    v5 = *(v0 + 16);
  }

  v17.origin.x = v1;
  v17.origin.y = v2;
  v17.size.width = v3;
  v17.size.height = v4;
  v6 = v5 * CGRectGetWidth(v17);
  v18.origin.x = v1;
  v18.origin.y = v2;
  v18.size.width = v3;
  v18.size.height = v4;
  v15 = v5 * CGRectGetHeight(v18);
  v19.origin.x = v1;
  v19.origin.y = v2;
  v19.size.width = v3;
  v19.size.height = v4;
  MinX = CGRectGetMinX(v19);
  v20.origin.x = v1;
  v20.origin.y = v2;
  v20.size.width = v3;
  v20.size.height = v4;
  MinY = CGRectGetMinY(v20);
  v8 = fabs(v5 + -0.5);
  if (v8 >= 0.01)
  {
    v21.origin.x = v1;
    v21.origin.y = v2;
    v14 = MinY;
    v21.size.width = v3;
    v21.size.height = v4;
    v13 = CGRectGetMaxX(v21) - v6 + 0.0;
    v22.origin.x = v1;
    v22.origin.y = v2;
    v22.size.width = v3;
    v22.size.height = v4;
    v11 = CGRectGetMaxY(v22) - v15 + 0.0;
    v9 = v5 > 0.5;
    v12 = v15;
    v10 = v13;
    MinY = v14;
  }

  else
  {
    v9 = 0;
    v10 = 0.0;
    v11 = 0.0;
    v12 = v15;
  }

  *(v0 + 32) = v6 + MinX + 0.0;
  *(v0 + 40) = v12 + MinY + 0.0;
  *(v0 + 48) = v10;
  *(v0 + 56) = v11;
  *(v0 + 64) = v8 < 0.01;
  *(v0 + 65) = v9;
}

uint64_t sub_1AB07B0D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t _s9JetEngine17ImpressionMetricsV2IDV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[5];
  v5 = a1[6];
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[5];
  v9 = a2[6];
  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1AB461DA4() & 1) == 0)
  {
    return 0;
  }

  if (!v3)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (!v6 || (v2 != v7 || v3 != v6) && (sub_1AB461DA4() & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  result = (v5 | v9) == 0;
  if (v5 && v9)
  {
    if (v4 == v8 && v5 == v9)
    {
      return 1;
    }

    else
    {

      return sub_1AB461DA4();
    }
  }

  return result;
}

void sub_1AB07B27C(uint64_t a1)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437770);
  v26 = *(v2 - 8);
  v25[2] = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = v25 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439810);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v25 - v8);
  v10 = v1[2];
  os_unfair_lock_lock(v10 + 4);
  v11 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v11, v9, &unk_1EB439810);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v9, &unk_1EB439810);
    os_unfair_lock_unlock(v10 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v13 = *v9;
    sub_1AB014A58(v29, v6, &unk_1EB437770);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v6, v1 + v11, &unk_1EB439810);
    swift_endAccess();
    os_unfair_lock_unlock(v10 + 4);
    v14 = *(v13 + 16);
    if (v14)
    {
      v25[1] = v13;
      v15 = v13 + 32;
      do
      {
        sub_1AB014A58(v15, v36, &unk_1EB437780);
        sub_1AB014A58(v36, v33, &unk_1EB437780);
        v17 = v33[0];
        if (v35)
        {
          v16 = v28;
          sub_1AB014A58(v29, v28, &unk_1EB437770);
          sub_1AB017FB8(v16, *(*(v17 + 64) + 40), &unk_1EB437770);
          swift_continuation_throwingResume();
          sub_1AB014AC0(v36, &unk_1EB437780);
        }

        else
        {
          v18 = v33[1];

          sub_1AB0149B0(&v34, v30);
          v19 = v31;
          v20 = v32;
          v27 = __swift_project_boxed_opaque_existential_1Tm(v30, v31);
          v21 = v28;
          sub_1AB014A58(v29, v28, &unk_1EB437770);
          v22 = (*(v26 + 80) + 32) & ~*(v26 + 80);
          v23 = swift_allocObject();
          *(v23 + 16) = v17;
          *(v23 + 24) = v18;
          sub_1AB017FB8(v21, v23 + v22, &unk_1EB437770);
          v24 = *(v20 + 8);

          v24(sub_1AB43BC0C, v23, v19, v20);

          sub_1AB014AC0(v36, &unk_1EB437780);
          __swift_destroy_boxed_opaque_existential_1Tm(v30);
        }

        v15 += 80;
        --v14;
      }

      while (v14);
    }
  }
}

void JESignpostArgumentsFromString(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v17 = a1;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  v9 = v17;
  v10 = [v17 UTF8String];
  v11 = [v17 lengthOfBytesUsingEncoding:4];
  if (v10)
  {
    v12 = v11;
    if (v11)
    {
      v13 = 0;
      v14 = 0;
      v18[0] = a5;
      v18[1] = a4;
      v15 = 8;
      v18[2] = a3;
      v18[3] = a2;
      do
      {
        if (v12 >= v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = v12;
        }

        if (v14 >= v12)
        {
          break;
        }

        if (!(v16 + v13))
        {
          break;
        }

        memcpy(v18[v14 / 8], (v10 + v14), v16 + v13);
        v14 += 8;
        v15 += 8;
        v13 -= 8;
      }

      while (v14 != 32);
    }
  }
}

uint64_t sub_1AB07B870(uint64_t *a1, void (*a2)(uint64_t *, double))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437770);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  v10 = *a1;
  a2(&v10, v5);
  sub_1AB07B27C(v7);
  return sub_1AB014AC0(v7, &unk_1EB437770);
}

uint64_t sub_1AB07B95C@<X0>(char *a1@<X0>, timespec *a2@<X8>)
{
  v38 = a2;
  v39 = a1;
  v2 = sub_1AB45F9B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v32 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = type metadata accessor for MonotonicTimeReference();
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s9JetEngine18SystemDateProviderV3now10Foundation0D0Vvg_0();
  static MonotonicTime.now.getter(v41);
  v17 = &v16[*(v14 + 28)];
  *v17 = v41[0];
  v18 = *(v3 + 16);
  v19 = v18(v12, v16, v2);
  v20 = v43;
  (v39)(v41, v19);
  if (v20)
  {
    (*(v3 + 8))(v12, v2);
    return sub_1AB044D4C(v16);
  }

  else
  {
    v33 = v3;
    v34 = v18;
    v35 = 0;
    v39 = v12;
    v43 = v9;
    v22 = v36;
    v23 = v41[1];
    v24 = v38;
    *v38 = v41[0];
    v24[1] = v23;
    v24[2].tv_sec = v42;
    static MonotonicTime.now.getter(v41);
    v25 = v41[0];
    tv_sec = v17->tv_sec;
    tv_nsec = v17->tv_nsec;
    v41[0].tv_sec = tv_sec;
    v41[0].tv_nsec = tv_nsec;
    v40 = v25;
    sub_1AB044C10(v41, &v40);
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    v28 = v43;
    sub_1AB45F934();
    v29 = v39;
    v30 = v34;
    v34(v22, v39, v2);
    v30(v37, v28, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437770);
    sub_1AB45F224();
    v31 = *(v33 + 8);
    v31(v28, v2);
    v31(v29, v2);
    return sub_1AB044D4C(v16);
  }
}

uint64_t sub_1AB07BCBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for MonotonicTimeReference();
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1AB45F9B4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v33[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33[-v14];
  static MonotonicTime.now.getter(&v45);
  v16 = v45;
  v40 = *(v6 + 16);
  v40(v15, a1, v5);
  tv_nsec = v16.tv_nsec;
  tv_sec = v16.tv_sec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  sub_1AB45F934();
  sub_1AB049958(&qword_1ED4D1380, MEMORY[0x1E6969530]);
  v17 = v12;
  if ((sub_1AB4604A4() & 1) == 0)
  {
    v18 = sub_1AB461084();
    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v19 = qword_1EB435668;
    v20 = v39;
    sub_1AB053F94(a1, v39, type metadata accessor for MonotonicTimeReference);
    if (os_log_type_enabled(v19, v18))
    {
      v21 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v44 = v36;
      *v21 = 136446466;
      v45 = *&v20[*(v3 + 20)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438A28);
      v34 = v18;
      v22 = sub_1AB4605E4();
      v35 = v19;
      v24 = v23;
      sub_1AB04A54C(v20, type metadata accessor for MonotonicTimeReference);
      v25 = sub_1AB030D2C(v22, v24, &v44);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      v45.tv_sec = tv_sec;
      v45.tv_nsec = tv_nsec;
      v26 = sub_1AB4605E4();
      v28 = sub_1AB030D2C(v26, v27, &v44);

      *(v21 + 14) = v28;
      _os_log_impl(&dword_1AB012000, v35, v34, "Bad JS request times %{public}s..%{public}s", v21, 0x16u);
      v29 = v36;
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v29, -1, -1);
      MEMORY[0x1AC59F020](v21, -1, -1);
    }

    else
    {
      sub_1AB04A54C(v20, type metadata accessor for MonotonicTimeReference);
    }

    v17 = v15;
  }

  v30 = v40;
  v40(v41, v15, v5);
  v30(v42, v17, v5);
  sub_1AB45F224();
  v31 = *(v6 + 8);
  v31(v12, v5);
  return (v31)(v15, v5);
}

void sub_1AB07C18C(uint64_t a1)
{
  v3 = type metadata accessor for JSResponse();
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = v4;
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4378F0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v29 - v9);
  v11 = v1[2];
  os_unfair_lock_lock(v11 + 4);
  v12 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v12, v10, &unk_1EB4378F0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v10, &unk_1EB4378F0);
    os_unfair_lock_unlock(v11 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v14 = *v10;
    sub_1AB03C4FC(a1, v7, type metadata accessor for JSResponse);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v7, v1 + v12, &unk_1EB4378F0);
    swift_endAccess();
    os_unfair_lock_unlock(v11 + 4);
    v15 = *(v14 + 16);
    if (v15)
    {
      v29 = v14;
      v16 = v14 + 32;
      v17 = &unk_1EB4397D0;
      v30 = a1;
      do
      {
        sub_1AB014A58(v16, v42, v17);
        sub_1AB014A58(v42, v39, v17);
        v19 = v39[0];
        if (v41)
        {
          v18 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for JSResponse);
          sub_1AB03C5CC(v18, *(*(v19 + 64) + 40), type metadata accessor for JSResponse);
          swift_continuation_throwingResume();
          sub_1AB014AC0(v42, v17);
        }

        else
        {
          v20 = v39[1];

          sub_1AB0149B0(&v40, v36);
          v21 = v37;
          v33 = v38;
          v34 = __swift_project_boxed_opaque_existential_1Tm(v36, v37);
          v22 = v17;
          v23 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for JSResponse);
          v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
          v25 = swift_allocObject();
          *(v25 + 16) = v19;
          *(v25 + 24) = v20;
          v26 = v23;
          v17 = v22;
          sub_1AB03C5CC(v26, v25 + v24, type metadata accessor for JSResponse);
          v27 = v33;
          v28 = *(v33 + 8);

          v28(sub_1AB08BEC4, v25, v21, v27);

          a1 = v30;

          sub_1AB014AC0(v42, v17);
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
        }

        v16 += 80;
        --v15;
      }

      while (v15);
    }
  }
}

uint64_t sub_1AB07C664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_1AB014A58(a1, &v35, &qword_1EB436BA0);
  v10 = *(&v36 + 1);
  if (!*(&v36 + 1))
  {
    sub_1AB066D84(a1);

    v13 = &qword_1EB436BA0;
    v14 = &v35;
LABEL_5:
    sub_1AB014AC0(v14, v13);
    return MEMORY[0x1E69E7CC0];
  }

  v11 = v37;
  __swift_project_boxed_opaque_existential_1Tm(&v35, *(&v36 + 1));
  v12 = (*(v11 + 128))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(&v35);
  if ((v12 & 1) == 0)
  {
    sub_1AB014A58(a1, v29, &qword_1EB436BA0);
    v15 = v30;
    if (v30)
    {
      v16 = v31;
      __swift_project_boxed_opaque_existential_1Tm(v29, v30);
      (*(v16 + 152))(&v32, v15, v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      if (*(&v33 + 1))
      {
        v35 = v32;
        v36 = v33;
        v37 = v34;
        v17 = sub_1AB06A28C(&v35, &v32);
        MEMORY[0x1EEE9AC00](v17);
        v28[2] = a2;
        v18 = *(&v33 + 1);
        v19 = v34;
        __swift_project_boxed_opaque_existential_1Tm(&v32, *(&v33 + 1));
        v20 = (*(v19 + 56))(a3, v28, a4, v18, v19);

        sub_1AB066D84(a1);
        sub_1AB06A37C(&v35);
        sub_1AB06A37C(&v32);
        return v20;
      }
    }

    else
    {
      sub_1AB014AC0(v29, &qword_1EB436BA0);
      v32 = 0u;
      v33 = 0u;
      v34 = 0;
    }

    sub_1AB014AC0(&v32, &qword_1EB437EF8);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    sub_1AB3D85D8(0xD000000000000027, 0x80000001AB4FFF70, a2, &v35);

    sub_1AB014A58(&v35, &v32, &qword_1EB436EC0);
    v23 = *(&v33 + 1);
    if (*(&v33 + 1))
    {
      v24 = v34;
      __swift_project_boxed_opaque_existential_1Tm(&v32, *(&v33 + 1));
      sub_1AB163664();
      v25 = swift_allocError();
      v26 = MEMORY[0x1E69E7CC0];
      *v27 = v22;
      v27[1] = v26;
      v27[2] = 0;
      v27[3] = 0;
      (*(v24 + 8))(v22, v25, v23, v24);
      sub_1AB066D84(a1);
      sub_1AB014AC0(&v35, &qword_1EB436EC0);

      __swift_destroy_boxed_opaque_existential_1Tm(&v32);
      return MEMORY[0x1E69E7CC0];
    }

    sub_1AB066D84(a1);
    sub_1AB014AC0(&v35, &qword_1EB436EC0);
    v14 = &v32;
    v13 = &qword_1EB436EC0;
    goto LABEL_5;
  }

  sub_1AB066D84(a1);

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1AB07CA28(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  JSONObject.subscript.getter(0x6E656469636E6924, 0xEA00000000007374, v17);
  sub_1AB014A58(v17, v11, &qword_1EB436BA0);
  v3 = v12;
  if (v12)
  {
    v4 = v13;
    __swift_project_boxed_opaque_existential_1Tm(v11, v12);
    (*(v4 + 152))(&v14, v3, v4);
    sub_1AB066D84(v17);
    v5 = __swift_destroy_boxed_opaque_existential_1Tm(v11);
    if (*(&v15 + 1))
    {
      v18 = v14;
      v19 = v15;
      v20 = v16;
      MEMORY[0x1EEE9AC00](v5);
      v10[2] = v2;
      v6 = *(&v19 + 1);
      v7 = v20;
      __swift_project_boxed_opaque_existential_1Tm(&v18, *(&v19 + 1));
      v8 = (*(v7 + 56))(sub_1AB3A2410, v10, &type metadata for JSIncident, v6, v7);
      sub_1AB06A37C(&v18);
      return v8;
    }
  }

  else
  {
    sub_1AB066D84(v17);
    sub_1AB014AC0(v11, &qword_1EB436BA0);
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
  }

  sub_1AB014AC0(&v14, &qword_1EB437EF8);
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1AB07CBE4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4378F0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  v7 = *(*a1 + 96);
  swift_beginAccess();
  sub_1AB014A58(a1 + v7, v6, &unk_1EB4378F0);
  LOBYTE(a1) = swift_getEnumCaseMultiPayload() != 0;
  result = sub_1AB014AC0(v6, &unk_1EB4378F0);
  *a2 = a1;
  return result;
}

void *sub_1AB07CD0C@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *sub_1AB07CD50@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t JSPackageIndex.properties.getter()
{
  type metadata accessor for JSPackageIndex();
}

uint64_t JSPackageIndex.init(deserializing:using:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{

  JSONObject.subscript.getter(29546, 0xE200000000000000, &v27);
  sub_1AB01EC0C(&v27, v24);
  v6 = v25;
  if (v25)
  {
    v7 = v26;
    __swift_project_boxed_opaque_existential_1Tm(v24, v25);
    v8 = (*(v7 + 24))(v6, v7);
    v10 = v9;
    sub_1AB066D84(&v27);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    sub_1AB066D84(&v27);
    sub_1AB014AC0(v24, &qword_1EB436BA0);
    v8 = 0;
    v10 = 0;
  }

  v11 = type metadata accessor for JSPackageIndex();
  v12 = (a3 + *(v11 + 20));
  *v12 = v8;
  v12[1] = v10;
  v13 = sub_1AB45F764();
  v14 = *(v13 - 8);
  (*(v14 + 16))(a3, a2, v13);
  JSONObject.subscript.getter(0x69747265706F7270, 0xEA00000000007365, v24);
  sub_1AB01EC0C(v24, v21);
  v15 = v22;
  if (!v22)
  {
    sub_1AB066D84(v24);
    sub_1AB014AC0(v21, &qword_1EB436BA0);
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
    goto LABEL_9;
  }

  v16 = v23;
  __swift_project_boxed_opaque_existential_1Tm(v21, v22);
  (*(v16 + 160))(&v27, v15, v16);
  sub_1AB066D84(v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  v17 = *(&v28 + 1);
  if (!*(&v28 + 1))
  {
LABEL_9:
    sub_1AB014AC0(&v27, &qword_1EB436BC0);
    goto LABEL_10;
  }

  v18 = v29;
  __swift_project_boxed_opaque_existential_1Tm(&v27, *(&v28 + 1));
  v19 = (*(v18 + 32))(MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168], v17, v18);
  sub_1AB07CDB0(&v27);
  if (!v19)
  {
LABEL_10:
    v19 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
    (*(v14 + 8))(a2, v13);
    sub_1AB066D84(a1);

    goto LABEL_11;
  }

  (*(v14 + 8))(a2, v13);
  result = sub_1AB066D84(a1);
LABEL_11:
  *(a3 + *(v11 + 24)) = v19;
  return result;
}

uint64_t sub_1AB07D128(void *a1)
{
  sub_1AB016760(0, qword_1ED4D1BA0);
  sub_1AB4603C4();
  v2 = a1;
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

double JSONObject.dictionary.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1AB01EC0C(v1, v6);
  v3 = v7;
  if (v7)
  {
    v4 = v8;
    __swift_project_boxed_opaque_existential_1Tm(v6, v7);
    (*(v4 + 160))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
    sub_1AB014AC0(v6, &qword_1EB436BA0);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void sub_1AB07D35C(__CFRunLoopTimer *a1)
{
  v2 = CFRunLoopGetCurrent();
  CFRunLoopAddTimer(v2, a1, *MEMORY[0x1E695E8E0]);
}

id sub_1AB07D3BC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [a1 BOOLValue];
  *a2 = result;
  return result;
}

uint64_t sub_1AB07D43C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1AB45F244();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437770);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AB07D5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a2;
  v6[4] = 0;

  sub_1AB0484A4(a3, v6);
}

uint64_t sub_1AB07D668(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1AB45F244();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437770);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void sub_1AB07D798(void *a1)
{
  v1 = [a1 JSGlobalContextRef];

  JSGarbageCollect(v1);
}

uint64_t Promise.isResolved.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_1AB07CD50(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1AB07D830@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1;
  v4 = *a1;
  v5 = type metadata accessor for Promise.State();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  v9 = *(v4 + 96);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v2[v9], v5);
  LOBYTE(v2) = swift_getEnumCaseMultiPayload() != 0;
  result = (*(v6 + 8))(v8, v5);
  *a2 = v2;
  return result;
}

uint64_t sub_1AB07D99C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1AB395EB0;
  }

  else
  {
    v2 = sub_1AB07DAB0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB07DAB0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  Promise.resolve(_:)(v1);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB07DB64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AB07DBAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t AMSURLSession.init(process:bag:urlProtocol:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_1AB07E504;

  return sub_1AB04E6F0(a1, a2, a3);
}

void *Bag.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  return sub_1AB04EAD8(a1, &selRef_doubleForKey_, &qword_1EB4385A0, sub_1AB07DCEC, a2);
}

{
  return sub_1AB04EAD8(a1, &selRef_BOOLForKey_, &unk_1EB438580, sub_1AB07D3BC, a2);
}

{
  return sub_1AB04EAD8(a1, &selRef_dictionaryForKey_, &qword_1EB4386E0, sub_1AB098790, a2);
}

{
  return sub_1AB04EAD8(a1, &selRef_stringForKey_, &unk_1EB4395C0, sub_1AB08A8AC, a2);
}

{
  return sub_1AB04EAD8(a1, &selRef_integerForKey_, &unk_1EB4386C0, sub_1AB0D08A8, a2);
}

{
  return sub_1AB04EAD8(a1, &selRef_URLForKey_, &qword_1EB4386D0, sub_1AB098298, a2);
}

{
  return sub_1AB04EAD8(a1, &selRef_arrayForKey_, &qword_1EB4386D8, sub_1AB3E0724, a2);
}

id sub_1AB07DCEC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [a1 doubleValue];
  *a2 = v4;
  return result;
}

uint64_t Bag.Value.current(or:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = sub_1AB461354();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - v10 + 16;
  (*(**v3 + 96))(v9);
  v12 = *(v6 - 8);
  if ((*(v12 + 48))(v11, 1, v6) != 1)
  {
    return (*(v12 + 32))(a3, v11, v6);
  }

  (*(v8 + 8))(v11, v7);
  if (qword_1ED4D0488 != -1)
  {
    swift_once();
  }

  v13 = qword_1ED4D3EA8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v14 = swift_allocObject();
  v18 = xmmword_1AB4D4720;
  *(v14 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v15 = swift_allocObject();
  *(v15 + 16) = v18;
  v19[3] = MEMORY[0x1E69E6158];
  v19[0] = 0xD00000000000001CLL;
  v19[1] = 0x80000001AB50DAE0;
  *(v15 + 48) = 0u;
  *(v15 + 32) = 0u;
  sub_1AB0169C4(v19, v15 + 32);
  *(v15 + 64) = 0;
  *(v14 + 32) = v15;
  v19[0] = v13;
  v20 = 0;
  OSLogger.log(contentsOf:withLevel:)(v14, &v20);

  return a1(v16);
}

uint64_t EventEmitter.addObserver<A>(on:target:method:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1AB01494C(a1, v15);
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();

  sub_1AB07E370(v15, a3, a4, v16);
  v11 = *(a7 + 24);
  v12 = type metadata accessor for MethodEventObserver();
  WitnessTable = swift_getWitnessTable();
  v11(v16, v12, WitnessTable, a5, a7);
  return (*(*(v12 - 8) + 8))(v16, v12);
}

uint64_t sub_1AB07E370@<X0>(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  swift_unknownObjectWeakInit();
  sub_1AB0149B0(a1, a4);
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectRelease();
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
  return result;
}

uint64_t sub_1AB07E3F8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB07E448(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1AB45F764();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1AB07E504(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  swift_unknownObjectRelease();

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

void sub_1AB07E640()
{
  sub_1AB0556A4();
  if (v0 <= 0x3F)
  {
    sub_1AB018E60();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1AB07E72C(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(v5 + 32) == 3)
  {
    os_unfair_lock_unlock(v8 + 4);
    return;
  }

  if (*(v5 + 32))
  {
    goto LABEL_14;
  }

  v9 = *(v5 + 24);
  *(v5 + 24) = a1;
  *(v5 + 32) = 1;
  v24 = a1;
  os_unfair_lock_unlock(v8 + 4);
  v10 = v9[2];
  if (v10)
  {
    v11 = 0;
    v12 = (v9 + 4);
    v22 = a2;
    while (v11 < v10)
    {
      sub_1AB014A58(v12, v31, a2);
      sub_1AB014A58(v31, v28, a2);
      v14 = v28[0];
      if (v30)
      {
        **(*(v28[0] + 64) + 40) = v24;
        v13 = v24;
        swift_continuation_throwingResume();
      }

      else
      {
        v15 = v28[1];

        sub_1AB0149B0(&v29, v25);
        v17 = v26;
        v16 = v27;
        __swift_project_boxed_opaque_existential_1Tm(v25, v26);
        v18 = swift_allocObject();
        v18[2] = v14;
        v18[3] = v15;
        v18[4] = v24;
        v19 = *(v16 + 8);
        v20 = v24;

        v21 = v16;
        a2 = v22;
        v19(a5, v18, v17, v21);

        __swift_destroy_boxed_opaque_existential_1Tm(v25);
      }

      ++v11;
      sub_1AB014AC0(v31, a2);
      v10 = v9[2];
      v12 += 80;
      if (v11 == v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    sub_1AB461884();
    __break(1u);
    return;
  }

LABEL_11:
  sub_1AB0171C8(v9, 0);
}

uint64_t sub_1AB07E98C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 32);
  v4 = *(a2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v6 = v3[3];
    v7 = v3[4];
    __swift_project_boxed_opaque_existential_1Tm(v3, v6);
    result = (*(v7 + 8))(a1, v6, v7);
    v3 = v5;
    if (v9 >> 60 != 15)
    {
      return result;
    }
  }

  return 0;
}

uint64_t type metadata accessor for ValidatedJetPackAssetLocations.URLLocation()
{
  result = qword_1ED4D0270;
  if (!qword_1ED4D0270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AB07EA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AB45F764();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AB07EB74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB07EC00(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AB45F9B4();
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB45FB64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v13);
  v14 = (*(v12 + 24))(v13, v12);
  v15 = v14;
  if (!a3)
  {

LABEL_9:
    sub_1AB45FB54();
    _s9JetEngine18SystemDateProviderV3now10Foundation0D0Vvg_0();
    v20 = sub_1AB45FB24();
    (*(v24 + 8))(v7, v25);
    (*(v9 + 8))(v11, v8);
    v21 = ((v20 * 0x7777777777777777) >> 64) - v20;
    v28[3] = MEMORY[0x1E69E6530];
    v28[0] = (v21 >> 5) + (v21 >> 63);
    v22 = a1[3];
    v23 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v22);
    (*(v23 + 16))(v28, 0x656E6F7A656D6974, 0xEE0074657366664FLL, v22, v23);
    return __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  if (!*(v14 + 16))
  {
  }

  v16 = sub_1AB014DB4(0x707954746E657665, 0xE900000000000065);
  if ((v17 & 1) == 0)
  {
  }

  sub_1AB0165C4(*(v15 + 56) + 32 * v16, v28);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v18 = sub_1AB07EF00(v26, v27, a3);

  if (v18)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1AB07EF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AB0165C4(a1, v6);

  return sub_1AB01AD48(v6, a2, a3);
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

uint64_t sub_1AB07EFD0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v5);
  v7 = (*(v6 + 24))(v5, v6);
  v8 = v7;
  if (!a3)
  {

LABEL_9:
    v21[0] = 1597071153;
    v21[1] = 0xE400000000000000;
    v13 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
    v14 = [v13 je_base62String];

    v15 = sub_1AB460544();
    v17 = v16;

    MEMORY[0x1AC59BA20](v15, v17);

    v21[3] = MEMORY[0x1E69E6158];
    v18 = a1[3];
    v19 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v18);
    (*(v19 + 16))(v21, 0x7645746E65696C63, 0xED00006449746E65, v18, v19);
    return __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  if (!*(v7 + 16))
  {
  }

  v9 = sub_1AB014DB4(0x707954746E657665, 0xE900000000000065);
  if ((v10 & 1) == 0)
  {
  }

  sub_1AB0165C4(*(v8 + 56) + 32 * v9, v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v11 = sub_1AB07EF00(v20);

  if (v11)
  {
    goto LABEL_9;
  }

  return result;
}

void EventTimeMetricsFieldProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v3 = sub_1AB45F9B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s9JetEngine18SystemDateProviderV3now10Foundation0D0Vvg_0();
  if (qword_1ED4D0C40 != -1)
  {
    v7 = swift_once();
  }

  v8 = qword_1EB4354A8;
  MEMORY[0x1EEE9AC00](v7);
  v14[-2] = v6;
  os_unfair_lock_lock((v8 + 24));
  sub_1AB07F4D4((v8 + 16), v14);
  os_unfair_lock_unlock((v8 + 24));
  if (v1)
  {
    __break(1u);
  }

  else
  {
    v9 = v14[0];
    (*(v4 + 8))(v6, v3);
    v14[3] = sub_1AB016760(0, &qword_1ED4D1940);
    v14[0] = v9;
    v10 = *(a1 + 24);
    v11 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v10);
    v12 = *(v11 + 16);
    v13 = v9;
    v12(v14, 0x6D6954746E657665, 0xE900000000000065, v10, v11);

    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }
}

id sub_1AB07F4F0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = sub_1AB45F914();
  v6 = [v4 serverTimeFromDate_];

  sub_1AB016760(0, &qword_1ED4D1048);
  v7 = *a1;
  v8 = v6;
  LOBYTE(v5) = sub_1AB4612C4();

  if (v5)
  {
    [v8 doubleValue];
    v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];

    v8 = v10;
  }

  *a1 = v8;
  *a2 = v8;
  return v8;
}

uint64_t LanguagesMetricFieldProvider.addMetricsFields(into:using:)(void *a1)
{
  v3 = *v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v4);
  v6 = (*(v5 + 24))(v4, v5);
  v7 = v6;
  if (!v3)
  {

LABEL_9:
    v12 = sub_1AB45FA34();
    v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
    v16[0] = v12;
    v13 = a1[3];
    v14 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v13);
    (*(v14 + 16))(v16, 0x6175676E614C736FLL, 0xEB00000000736567, v13, v14);
    return __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  if (!*(v6 + 16))
  {
  }

  v8 = sub_1AB014DB4(0x707954746E657665, 0xE900000000000065);
  if ((v9 & 1) == 0)
  {
  }

  sub_1AB0165C4(*(v7 + 56) + 32 * v8, v16);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v10 = sub_1AB07EF00(v15);

  if (v10)
  {
    goto LABEL_9;
  }

  return result;
}

void sub_1AB07F7DC()
{
  if (qword_1EB4359C0 != -1)
  {
    swift_once();
  }

  if ((byte_1EB435998 & 1) == 0)
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v0 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1AB4D4720;
    v3 = MEMORY[0x1E69E6158];
    *(&v56 + 1) = MEMORY[0x1E69E6158];
    *&aBlock = 0xD000000000000027;
    *(&aBlock + 1) = 0x80000001AB507D70;
    *(v2 + 48) = 0u;
    *(v2 + 32) = 0u;
    sub_1AB0169C4(&aBlock, v2 + 32);
    *(v2 + 64) = 0;
    *(v1 + 32) = v2;
    *&aBlock = v0;
    LOBYTE(v60[0]) = 3;
    OSLogger.log(contentsOf:withLevel:)(v1, v60);

    if (qword_1ED4D0810 != -1)
    {
      swift_once();
    }

    v4 = *(off_1ED4D0818 + 2);
    os_unfair_recursive_lock_lock_with_options();
    v5 = v4[2];
    if (v5)
    {
      v7 = v4[3];
      v6 = v4[4];
      v8 = v5;
      v9 = v7;
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      v11 = [objc_opt_self() currentProcess];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437548);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1AB4DE160;
      v13 = sub_1AB460514();
      v14 = sub_1AB460514();
      v15 = [objc_opt_self() attributeWithDomain:v13 name:v14];

      *(v12 + 32) = v15;
      v16 = objc_allocWithZone(type metadata accessor for ProcessAssertion.JetRBSAssertion());
      v17 = sub_1AB460514();
      sub_1AB02BEC4();
      v18 = sub_1AB460934();

      v19 = [v16 initWithExplanation:v17 target:v11 attributes:v18];

      v20 = objc_allocWithZone(_JEAtomicCounter);
      v21 = v19;
      v22 = [v20 initWithInitialValue_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439188);
      v6 = swift_allocObject();
      *(v6 + 16) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
      *(v6 + 24) = v10;
      v57 = sub_1AB2527B8;
      v58 = v6;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v56 = sub_1AB2527C0;
      *(&v56 + 1) = &block_descriptor_26;
      v23 = _Block_copy(&aBlock);

      [v21 setInvalidationHandler_];
      _Block_release(v23);

      v24 = v4[2];
      v25 = v4[3];
      v4[2] = v21;
      v4[3] = v22;
      v4[4] = v6;
      v26 = v21;
      v27 = v22;

      v8 = v26;
      v9 = v27;
      sub_1AB05D770(v24, v25);
    }

    os_unfair_recursive_lock_unlock();
    *&aBlock = v8;
    *(&aBlock + 1) = v9;
    *&v56 = v6;
    ProcessAssertion.acquire()();
    if (v28)
    {
      v29 = qword_1ED4D1FC8;
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1AB4D47F0;
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1AB4D4720;
      *(&v56 + 1) = v3;
      *&aBlock = 0xD000000000000030;
      *(&aBlock + 1) = 0x80000001AB505C20;
      *(v31 + 48) = 0u;
      *(v31 + 32) = 0u;
      sub_1AB0169C4(&aBlock, v31 + 32);
      *(v31 + 64) = 0;
      *(v30 + 32) = v31;
      v66 = sub_1AB0168A8(0, 9, 0, MEMORY[0x1E69E7CC0]);
      v32._countAndFlagsBits = 0x203A6E6F73616572;
      v32._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      swift_getErrorValue();
      v33 = v64;
      v34 = v65;
      v61 = v65;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v60);
      (*(v34[-1].Description + 2))(boxed_opaque_existential_0, v33, v34);
      sub_1AB014A58(v60, v63, &unk_1EB437E60);
      aBlock = 0u;
      v56 = 0u;
      sub_1AB0169C4(v63, &aBlock);
      LOBYTE(v57) = 0;
      v36 = v66;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1AB0168A8(0, *(v36 + 2) + 1, 1, v36);
        v66 = v36;
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1AB0168A8((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[40 * v38];
      v40 = aBlock;
      v41 = v56;
      v39[64] = v57;
      *(v39 + 2) = v40;
      *(v39 + 3) = v41;
      v66 = v36;
      sub_1AB014AC0(v60, &unk_1EB437E60);
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v42);
      *(v30 + 40) = v66;
      *&aBlock = v29;
      LOBYTE(v60[0]) = 0;
      OSLogger.log(contentsOf:withLevel:)(v30, v60);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439190);
      v43 = swift_allocObject();
      v61 = &type metadata for SyncTaskScheduler;
      v62 = &protocol witness table for SyncTaskScheduler;
      sub_1AB01494C(v60, &aBlock);
      v58 = sub_1AB2C8CA0;
      v59 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439198);
      v44 = swift_allocObject();
      *(v44 + 72) = 0;
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      sub_1AB014A58(&aBlock, v44 + 16, &qword_1EB4391A0);
      sub_1AB014AC0(&aBlock, &qword_1EB4391A0);
      *(v43 + 16) = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB4391A8);
      v45 = swift_allocObject();
      *(v45 + 16) = v43;
      v46 = *(v6 + 16);

      [v46 lock];
      swift_beginAccess();
      v47 = *(v6 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v6 + 24) = v47;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v52 = v47[2];

        v53 = sub_1AB02EBBC(0, v52 + 1, 1, v47);
        *(v6 + 24) = v53;

        v47 = v53;
      }

      v50 = v47[2];
      v49 = v47[3];
      v51 = v50 + 1;
      if (v50 >= v49 >> 1)
      {
        v54 = sub_1AB02EBBC((v49 > 1), v50 + 1, 1, v47);
        v51 = v50 + 1;
        v47 = v54;
      }

      v47[2] = v51;
      v47[v50 + 4] = v45;
      *(v6 + 24) = v47;
      swift_endAccess();

      [v46 unlock];
    }
  }
}

void sub_1AB0800FC(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  if (*(v1 + 40) > 1u)
  {
    if (*(v1 + 40) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA39C(v4);
      v16 = v4;
      v17 = v5;
      v18 = 2;
    }

    else
    {
      v19 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA39C(v4);
      v16 = v4;
      v17 = v5;
      v18 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 40))
  {

    os_unfair_lock_unlock(v3 + 4);
    sub_1AB4364D0(v4, v5);
    v16 = v4;
    v17 = v5;
    v18 = 1;
LABEL_12:
    sub_1AB0802EC(v16, v17, v18);
    return;
  }

  sub_1AB014A58(a1, v20, &unk_1EB437970);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB0802C8(0, v4[2] + 1, 1, v4);
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1AB0802C8((v6 > 1), v7 + 1, 1, v4);
  }

  v4[2] = v7 + 1;
  v8 = &v4[10 * v7];
  v8[2] = v20[0];
  v9 = v20[1];
  v10 = v20[2];
  v11 = v21[0];
  *(v8 + 89) = *(v21 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  v13 = *(v1 + 32);
  *(v1 + 24) = v4;
  *(v1 + 32) = 0;
  v14 = *(v1 + 40);
  *(v1 + 40) = 0;
  sub_1AB0802EC(v12, v13, v14);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1AB0802EC(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2 || a3 == 3)
    {
    }
  }

  else
  {
    if (!a3)
    {

      goto LABEL_6;
    }

    if (a3 == 1)
    {

LABEL_6:
    }
  }
}

uint64_t MetricsPipeline.process(_:using:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = sub_1AB4601C4();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB4601B4();
  v59 = *(v8 - 8);
  v60 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB4601F4();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v15 = *a1;
  v14 = *(a1 + 8);
  v16 = *(a1 + 16);
  v18 = *(a1 + 24);
  v17 = *(a1 + 32);
  v19 = *(a1 + 40);
  v20 = *a2;
  if (*(v3 + 160) != 1 || v14)
  {
    v55 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v56 = v13;
    v57 = v11;
    if (v14 && (sub_1AB05CF1C(v15, v14, *(v3 + 168)) & 1) != 0)
    {
      *&v70 = v15;
      *(&v70 + 1) = v14;
      LOBYTE(v71) = v16;
      *(&v71 + 1) = v18;
      *&v72[0] = v17;
      *(&v72[0] + 1) = v19;

      sub_1AB15F640(1682535268, 0xE400000000000000, &v83);
    }

    else
    {
      *&v70 = v15;
      *(&v70 + 1) = v14;
      LOBYTE(v71) = v16;
      *(&v71 + 1) = v18;
      *&v72[0] = v17;
      *(&v72[0] + 1) = v19;
    }

    v83 = v70;
    v84 = v71;
    v85 = v72[0];
    v26 = *(v3 + 8);
    v27 = *(v26 + 8);
    v81 = *v3;
    v25 = v81;
    v82 = v26;
    __swift_allocate_boxed_opaque_existential_0(v80);

    v27(v28, v25, v26);
    if (*(&v83 + 1))
    {
      *(&v71 + 1) = MEMORY[0x1E69E6158];
      v70 = v83;
      sub_1AB014B78(&v70, &v65);
      swift_bridgeObjectRetain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v79[0] = v20;
      sub_1AB01AE18(&v65, 0xD000000000000019, 0x80000001AB4FF760, isUniquelyReferenced_nonNull_native);

      v20 = *&v79[0];
    }

    else
    {
    }

    v31 = *(&v85 + 1);
    v30 = v85;
    v32 = *(v3 + 24);
    *&v70 = *(v3 + 16);
    *(&v70 + 1) = v32;
    *&v65 = v20;

    sub_1AB069018(v30, v31, v80, &v65);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B58);
    v23 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    v34 = MEMORY[0x1E69E7CC0];
    *(v23 + 16) = v33;
    *(v23 + 24) = v34;
    *(v23 + 32) = 0;
    *(v23 + 40) = 0;
    sub_1AB07F7DC();
    if (qword_1ED4D0CE0 != -1)
    {
      swift_once();
    }

    v54 = qword_1ED4D0CE8;
    v35 = *(v3 + 192);
    sub_1AB01494C(v80, v79);
    sub_1AB0800C4(v3, &v70);
    v36 = swift_allocObject();
    sub_1AB0149B0(v79, v36 + 16);
    v37 = v74;
    *(v36 + 152) = v75;
    v38 = v77;
    *(v36 + 168) = v76;
    *(v36 + 184) = v38;
    *(v36 + 200) = v78;
    v39 = v72[1];
    *(v36 + 88) = v72[0];
    *(v36 + 104) = v39;
    *(v36 + 120) = v73;
    *(v36 + 136) = v37;
    v40 = v71;
    *(v36 + 56) = v70;
    *(v36 + 72) = v40;
    v41 = v84;
    *(v36 + 216) = v83;
    *(v36 + 232) = v41;
    *(v36 + 248) = v85;
    *(v36 + 264) = v20;
    *(v36 + 272) = v35;
    *(v36 + 280) = v23;
    v68 = sub_1AB08181C;
    v69 = v36;
    *&v65 = MEMORY[0x1E69E9820];
    *(&v65 + 1) = 1107296256;
    v66 = sub_1AB01D528;
    v67 = &block_descriptor_3;
    v42 = _Block_copy(&v65);

    v43 = v55;
    _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
    v64 = v34;
    sub_1AB0204A8(&qword_1ED4D2050, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
    sub_1AB01561C(&qword_1ED4D1FB0, &qword_1EB438540);
    v44 = v58;
    v45 = v60;
    sub_1AB4614E4();
    MEMORY[0x1AC59C480](0, v43, v44, v42);
    _Block_release(v42);
    (*(v59 + 8))(v44, v45);
    (*(v56 + 8))(v43, v57);

    v46 = sub_1AB016760(0, &qword_1ED4D2060);
    v48 = v61;
    v47 = v62;
    v49 = v63;
    (*(v62 + 104))(v61, *MEMORY[0x1E69E7FA0], v63);
    v50 = sub_1AB461164();
    (*(v47 + 8))(v48, v49);
    v67 = v46;
    v68 = &protocol witness table for OS_dispatch_queue;
    *&v65 = v50;
    v51 = swift_allocObject();
    v51[2] = sub_1AB15F1F0;
    v51[3] = 0;
    v51[4] = v23;
    v52 = swift_allocObject();
    v52[2] = sub_1AB15F1F0;
    v52[3] = 0;
    v52[4] = v23;
    *&v70 = sub_1AB1603B0;
    *(&v70 + 1) = v51;
    *&v71 = sub_1AB1603B0;
    *(&v71 + 1) = v52;
    sub_1AB01494C(&v65, v72);
    BYTE8(v73) = 0;
    swift_retain_n();

    sub_1AB0800FC(&v70);

    sub_1AB014AC0(&v70, &unk_1EB437970);
    __swift_destroy_boxed_opaque_existential_1Tm(v80);
    __swift_destroy_boxed_opaque_existential_1Tm(&v65);
  }

  else
  {
    sub_1AB1603E0();
    v21 = swift_allocError();
    *v22 = 0;
    *(v22 + 8) = 0;
    *(v22 + 16) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B58);
    v23 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v23 + 16) = v24;
    *(v23 + 24) = v21;
    *(v23 + 32) = 0;
    *(v23 + 40) = 2;
  }

  return v23;
}