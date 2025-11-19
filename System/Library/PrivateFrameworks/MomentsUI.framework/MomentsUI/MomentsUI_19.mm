uint64_t closure #1 in DBWriter.saveSuggestionsIntoDraft(_:context:renderedCount:publish:)(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v123 = a7;
  v116 = a5;
  LODWORD(v118) = a4;
  v120 = a3;
  v121 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v103 - v9);
  v11 = type metadata accessor for UUID();
  v117 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Date();
  v119 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v103 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v103 - v21;
  v23 = v122;
  result = specialized static DBWriter.draftSnapshot(context:)();
  v25 = v123;
  if (v23)
  {
    goto LABEL_27;
  }

  v115 = a1;
  v110 = v17;
  v111 = v11;
  v112 = v13;
  isa = v20;
  v108 = v10;
  v122 = result;
  static Date.now.getter();
  v26 = v120;
  if (v120 < 0)
  {
    __break(1u);
  }

  else
  {
    specialized static DBWriter._createDraftSnapshot(with:context:renderedCount:creationDate:)(v121, v115, v120, v22);
    v114 = 0;
    v109 = v14;
    v10 = v119;
    if (one-time initialization token for processing == -1)
    {
      goto LABEL_4;
    }
  }

  swift_once();
LABEL_4:
  v27 = type metadata accessor for Logger();
  v28 = __swift_project_value_buffer(v27, static CommonLogger.processing);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  v32 = isa;
  if (v31)
  {
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = v26;
    _os_log_impl(&dword_21607C000, v29, v30, "[saveSuggestionsIntoDraft] saveSuggestionsIntoDraft, n=%ld", v33, 0xCu);
    MEMORY[0x21CE94770](v33, -1, -1);
  }

  v34 = v109;
  if (v122)
  {
    v107 = v22;
    swift_retain_n();
    v35 = v121;

    v36 = Logger.logObject.getter();
    v37 = v122;
    v38 = v36;
    v39 = static os_log_type_t.default.getter();

    LODWORD(v105) = v39;
    v40 = os_log_type_enabled(v38, v39);
    v106 = v28;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v124 = v42;
      *v41 = 134218242;
      v103 = v42;
      v104 = v38;
      if (v35 >> 62)
      {
        v43 = __CocoaSet.count.getter();
      }

      else
      {
        v43 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v44 = v112;
      *(v41 + 4) = v43;

      *(v41 + 12) = 2080;
      v46 = v37 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
      (*(*v37 + 208))(v45);
      _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
      v47 = v111;
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (*(v117 + 8))(v44, v47);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v124);

      *(v41 + 14) = v51;
      v37 = v122;
      v52 = v104;
      _os_log_impl(&dword_21607C000, v104, v105, "[saveSuggestionsIntoDraft] deleting old draft snapshot, suggestions n=%ld, id=%s", v41, 0x16u);
      v53 = v103;
      __swift_destroy_boxed_opaque_existential_1(v103);
      MEMORY[0x21CE94770](v53, -1, -1);
      MEMORY[0x21CE94770](v41, -1, -1);

      v32 = isa;
    }

    else
    {

      v46 = v37 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    }

    v58 = *v37;
    v105 = v46;
    v58 += 57;
    v59 = *v58;
    v103 = v58;
    v104 = v59;
    (v59)(v54, v55, v56, v57);
    v22 = v107;
    v60 = static Date.> infix(_:_:)();
    v34 = v109;
    isa = v10[1].isa;
    isa(v32, v109);
    if ((v60 & 1) == 0)
    {
      v63 = v110;
      (v10[2].isa)(v110, v22, v34);
      v64 = v121;
      swift_bridgeObjectRetain_n();

      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();

      LODWORD(v120) = v66;
      if (os_log_type_enabled(v65, v66))
      {
        v119 = v65;
        v67 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v124 = v118;
        *v67 = 136315906;
        _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, 255, MEMORY[0x277CC9578]);
        v68 = dispatch thunk of CustomStringConvertible.description.getter();
        v70 = v69;
        v71 = v63;
        v72 = isa;
        isa(v71, v109);
        v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, &v124);
        v74 = v109;

        *(v67 + 4) = v73;
        *(v67 + 12) = 2080;
        (v104)(v75);
        v76 = dispatch thunk of CustomStringConvertible.description.getter();
        v77 = v32;
        v79 = v78;
        v72(v77, v74);
        v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v79, &v124);

        *(v67 + 14) = v80;
        *(v67 + 22) = 2048;
        if (v64 >> 62)
        {
          v81 = __CocoaSet.count.getter();
        }

        else
        {
          v81 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v82 = v111;
        v83 = v117;

        *(v67 + 24) = v81;

        *(v67 + 32) = 2080;
        v85 = v112;
        (*(*v122 + 208))(v84);
        _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
        v86 = dispatch thunk of CustomStringConvertible.description.getter();
        v88 = v87;
        (*(v83 + 8))(v85, v82);
        v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, &v124);

        *(v67 + 34) = v89;
        v90 = v119;
        _os_log_impl(&dword_21607C000, v119, v120, "[saveSuggestionsIntoDraft] new snapshots must be created after old ones, new=%s, old=%s, suggestions n=%ld, id=%s", v67, 0x2Au);
        v91 = v118;
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v91, -1, -1);
        MEMORY[0x21CE94770](v67, -1, -1);

        v22 = v107;
        v92 = isa;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v92 = isa;
        isa(v63, v34);
        v74 = v34;
      }

      lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError();
      v62 = swift_allocError();
      *v101 = 16;
      swift_willThrow();

      result = v92(v22, v74);
      goto LABEL_26;
    }

    type metadata accessor for DBSnapshot();
    _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, 255, type metadata accessor for DBSnapshot);
    dispatch thunk of ModelContext.delete<A>(_:)();
  }

  v61 = v114;
  dispatch thunk of ModelContext.save()();
  if (v61)
  {
    v62 = v61;
    (v10[1].isa)(v22, v34);

LABEL_26:
    v23 = v62;
    v25 = v123;
LABEL_27:
    *v25 = v23;
    return result;
  }

  if (v118)
  {
    v93 = v26;
    if (v121 >> 62)
    {
      v102 = __CocoaSet.count.getter();
      if (v102 < 0)
      {
        __break(1u);
      }

      v94 = v102;
      v34 = v109;
      v95 = v116;
      v10 = v119;
    }

    else
    {
      v94 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v95 = v116;
    }

    v96 = v108;
    v97 = type metadata accessor for TaskPriority();
    (*(*(v97 - 8) + 56))(v96, 1, 1, v97);
    v99 = _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBWriter and conformance DBWriter, v98, type metadata accessor for DBWriter);
    v100 = swift_allocObject();
    v100[2] = v95;
    v100[3] = v99;
    v100[4] = v93;
    v100[5] = v94;
    v100[6] = v95;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v96, &closure #1 in DBWriter.publishDraft(rendered:total:)partial apply, v100);

    return (v10[1].isa)(v22, v34);
  }

  else
  {
    (v10[1].isa)(v22, v34);
  }
}

uint64_t closure #1 in DBWriter.publishDraft(rendered:total:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](closure #1 in DBWriter.publishDraft(rendered:total:), a6, 0);
}

uint64_t closure #1 in DBWriter.publishDraft(rendered:total:)()
{
  if (one-time initialization token for processing != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static CommonLogger.processing);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v4;
    _os_log_impl(&dword_21607C000, v2, v3, "[saveSuggestionsIntoDraft] publishing draft, rendered n=%llu, suggestions n=%llu", v6, 0x16u);
    MEMORY[0x21CE94770](v6, -1, -1);
  }

  v7 = v0[4];

  v8 = *(v7 + 112);
  v0[5] = v8;

  return MEMORY[0x2822009F8](closure #1 in DBWriter.publishDraft(rendered:total:), v8, 0);
}

{
  v4.value = *(v0 + 16);
  v4.is_nil = 0;
  DBManager.setLatestLocalSnapshotSequence(_:_:)(0, v4);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #3 in static DBWriter.draftSnapshot(context:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_s6UInt64VGMd);
  v3 = *(v2 - 8);
  v17 = v2;
  v18 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMd);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGMd);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSnapshot> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v7 + 8))(v9, v6);
  v19 = 0;
  static PredicateExpressions.build_Arg<A>(_:)();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMd);
  a1[4] = lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance <> PredicateExpressions.Equal<A, B>();
  __swift_allocate_boxed_opaque_existential_1(a1);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<UInt64> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_s6UInt64VGMd);
  v14 = v17;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v18 + 8))(v5, v14);
  return (*(v11 + 8))(v13, v10);
}

uint64_t closure #2 in static DBWriter.fetchedSuggestion(uuid:context:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v17[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVGMd);
  v4 = *(v3 - 8);
  v18 = v3;
  v19 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGMd);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - v13;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v8 + 8))(v10, v7);
  type metadata accessor for UUID();
  static PredicateExpressions.build_Arg<A>(_:)();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGAC5ValueVy_AOGGMd);
  a2[4] = lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>> and conformance <> PredicateExpressions.Equal<A, B>();
  __swift_allocate_boxed_opaque_existential_1(a2);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<UUID> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVGMd);
  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
  v15 = v18;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v19 + 8))(v6, v15);
  return (*(v12 + 8))(v14, v11);
}

uint64_t closure #7 in static DBWriter._latestSnapshot(generation:prefetch:allowDraft:context:)@<X0>(void *a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v53 = a2;
  v50 = a1;
  v56 = a3;
  v57 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v3 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v49 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_s6UInt64VGMd);
  v61 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v6 = v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v41 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGMd);
  v60 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v41[0] = v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO10ComparisonVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMd);
  v13 = *(v12 - 8);
  v54 = v12;
  v55 = v13;
  v14 = MEMORY[0x28223BE20](v12);
  v52 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = *v50;
  v51 = v41 - v16;
  v46 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSnapshot> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v45 = v7;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v17 = *(v8 + 8);
  v47 = v8 + 8;
  v48 = v17;
  v17(v10, v7);
  v62 = *v53;
  static PredicateExpressions.build_Arg<A>(_:)();
  v18 = *MEMORY[0x277CC8FD8];
  v53 = *(v3 + 104);
  v19 = v49;
  v20 = v57;
  v53(v49, v18, v57);
  v44 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGMd);
  v43 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<UInt64> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_s6UInt64VGMd);
  v21 = v41[0];
  v22 = v6;
  v23 = v19;
  v24 = v58;
  v25 = v59;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  v26 = *(v3 + 8);
  v41[1] = v3 + 8;
  v42 = v26;
  v26(v23, v20);
  v27 = *(v61 + 8);
  v61 += 8;
  v27(v22, v25);
  v28 = *(v60 + 8);
  v60 += 8;
  v28(v21, v24);
  v29 = v45;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v48(v10, v29);
  v62 = 0;
  static PredicateExpressions.build_Arg<A>(_:)();
  v30 = v23;
  v31 = v57;
  v53(v23, *MEMORY[0x277CC8FC0], v57);
  v32 = v52;
  v34 = v58;
  v33 = v59;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  v42(v30, v31);
  v27(v22, v33);
  v28(v21, v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC10ComparisonVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AQGGAVGMd);
  v36 = v56;
  v56[3] = v35;
  v36[4] = lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Comparison<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>, PredicateExpressions.Comparison<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>> and conformance <> PredicateExpressions.Conjunction<A, B>, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC10ComparisonVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AQGGAVGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC10ComparisonVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AQGGAVGMR, lazy protocol witness table accessor for type PredicateExpressions.Comparison<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance <> PredicateExpressions.Comparison<A, B>);
  __swift_allocate_boxed_opaque_existential_1(v36);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Comparison<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance PredicateExpressions.Comparison<A, B>, &_s10Foundation20PredicateExpressionsO10ComparisonVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMd);
  v37 = v51;
  v38 = v54;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v39 = *(v55 + 8);
  v39(v32, v38);
  return (v39)(v37, v38);
}

uint64_t closure #6 in static DBWriter._latestSnapshot(generation:prefetch:allowDraft:context:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v52 = a2;
  v53 = a3;
  v45 = a1;
  v56 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SSSgGMd);
  v5 = *(v4 - 8);
  v54 = v4;
  v55 = v5;
  MEMORY[0x28223BE20](v4);
  v51 = v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC5ValueVy_ANGGMd);
  v8 = *(v7 - 8);
  v57 = v7;
  v58 = v8;
  MEMORY[0x28223BE20](v7);
  v50 = v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO10NilLiteralVy_SSGMd);
  v11 = *(v10 - 8);
  v46 = v10;
  v47 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMd);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGMd);
  v19 = *(v18 - 8);
  v42 = v18;
  v43 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = v40 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGMd);
  v23 = *(v22 - 8);
  v48 = v22;
  v49 = v23;
  MEMORY[0x28223BE20](v22);
  v24 = *v45;
  v44 = v40 - v25;
  v45 = v24;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSnapshot> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v26 = *(v15 + 8);
  v40[2] = v15 + 8;
  v41 = v26;
  v26(v17, v14);
  static PredicateExpressions.build_NilLiteral<A>()();
  v40[1] = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.NilLiteral<String> and conformance PredicateExpressions.NilLiteral<A>, &_s10Foundation20PredicateExpressionsO10NilLiteralVy_SSGMd);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  v27 = v42;
  v28 = v46;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v47 + 8))(v13, v28);
  v29 = *(v43 + 8);
  v29(v21, v27);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v41(v17, v14);
  v59 = v52;
  v60 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  v30 = v51;
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<String?> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SSSgGMd);
  v31 = v50;
  v32 = v54;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v55 + 8))(v30, v32);
  v29(v21, v27);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11DisjunctionVy_AC5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGAGy_AqC5ValueVy_APGGGMd);
  v34 = v56;
  v56[3] = v33;
  v34[4] = lazy protocol witness table accessor for type PredicateExpressions.Disjunction<PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>>> and conformance <> PredicateExpressions.Disjunction<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v34);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>> and conformance PredicateExpressions.Equal<A, B>, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>> and conformance PredicateExpressions.Equal<A, B>, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC5ValueVy_ANGGMd);
  v35 = v44;
  v36 = v31;
  v37 = v48;
  v38 = v57;
  static PredicateExpressions.build_Disjunction<A, B>(lhs:rhs:)();
  (*(v58 + 8))(v36, v38);
  return (*(v49 + 8))(v35, v37);
}

double key path getter for DBManager.snapshotGeneration : DBManager@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t key path setter for DBManager.snapshotGeneration : DBManager()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for DBManager.pendingDBChanges : DBManager@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for DBManager.pendingDBChanges : DBManager()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = type metadata accessor for Date();
  v8 = MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  v31 = a2;
  if (a3 != a2)
  {
    v14 = (v11 + 8);
    v37 = *a4;
    v15 = v37 + 8 * a3 - 8;
    v16 = a1 - a3;
LABEL_5:
    v33 = v15;
    v34 = a3;
    v17 = *(v37 + 8 * a3);
    v32 = v16;
    v18 = v15;
    while (1)
    {
      v19 = *v18;
      v20 = *(*v17 + 456);

      v22 = v20(v21);
      v23 = v35;
      (*(*v19 + 456))(v22);
      v24 = static Date.> infix(_:_:)();
      v25 = *v14;
      v26 = v23;
      v27 = v36;
      (*v14)(v26, v36);
      v25(v13, v27);

      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v15 = v33 + 8;
        v16 = v32 - 1;
        if (v34 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v28 = *v18;
      v17 = v18[1];
      *v18 = v17;
      v18[1] = v28;
      --v18;
      if (__CFADD__(v16++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v8 = type metadata accessor for UUID();
  v9 = MEMORY[0x28223BE20](v8);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v48 = &v34 - v12;
  result = MEMORY[0x28223BE20](v11);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v14 + 16);
    v46 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v42 = (v14 + 32);
    v43 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      v45(v47, v21, v8);
      v24(v48, v23, v8);
      v25 = UUID.uuidString.getter();
      v27 = v26;
      if (v25 == UUID.uuidString.getter() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        result = (v22)(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = v39 + v35;
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v30 = *v18;
      (*v18)(v48, v8);
      result = (v30)(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v31)(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = v4;
  v114 = a1;
  v123 = type metadata accessor for Date();
  v9 = MEMORY[0x28223BE20](v123);
  v122 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v121 = &v108 - v13;
  v14 = a3;
  v15 = *(a3 + 8);
  if (v15 < 1)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_89:
    v5 = *v114;
    if (!*v114)
    {
      goto LABEL_128;
    }

    a4 = v17;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    }

    v124 = result;
    v104 = *(result + 16);
    if (v104 >= 2)
    {
      while (*v14)
      {
        a4 = *(result + 16 * v104);
        v105 = result;
        v106 = *(result + 16 * (v104 - 1) + 40);
        specialized _merge<A>(low:mid:high:buffer:by:)((*v14 + 8 * a4), (*v14 + 8 * *(result + 16 * (v104 - 1) + 32)), (*v14 + 8 * v106), v5);
        if (v6)
        {
        }

        if (v106 < a4)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = specialized _ArrayBuffer._consumeAndCreateNew()(v105);
        }

        if (v104 - 2 >= *(v105 + 2))
        {
          goto LABEL_116;
        }

        v107 = &v105[16 * v104];
        *v107 = a4;
        v107[1] = v106;
        v124 = v105;
        specialized Array.remove(at:)(v104 - 1);
        result = v124;
        v104 = *(v124 + 16);
        if (v104 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v16 = 0;
  v120 = (v12 + 8);
  v17 = MEMORY[0x277D84F90];
  v113 = a4;
  v109 = v14;
  while (1)
  {
    v18 = v16++;
    if (v16 >= v15)
    {
      v40 = v14;
    }

    else
    {
      v118 = v15;
      v111 = v17;
      v112 = v6;
      v19 = *v14;
      v20 = *(*v14 + 8 * v16);
      v116 = 8 * v18;
      v21 = (v19 + 8 * v18);
      v22 = *v21;
      v5 = (v21 + 2);
      v23 = *(*v20 + 456);

      v25 = v121;
      v26 = v23(v24);
      v14 = v122;
      (*(*v22 + 456))(v26);
      LODWORD(v119) = static Date.> infix(_:_:)();
      v27 = *v120;
      v28 = v123;
      (*v120)(v14, v123);
      v117 = v27;
      v27(v25, v28);

      v110 = v18;
      v29 = v18 + 2;
      while (1)
      {
        v16 = v118;
        if (v118 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *(**v5 + 456);

        v33 = v121;
        v34 = v31(v32);
        v35 = v122;
        (*(*v30 + 456))(v34);
        v36 = static Date.> infix(_:_:)() & 1;
        v37 = v35;
        v14 = v123;
        v38 = v117;
        v117(v37, v123);
        v38(v33, v14);

        ++v29;
        v5 += 8;
        if ((v119 & 1) != v36)
        {
          v16 = v29 - 1;
          break;
        }
      }

      v17 = v111;
      v6 = v112;
      a4 = v113;
      v18 = v110;
      v39 = v116;
      if (v119)
      {
        if (v16 < v110)
        {
          goto LABEL_119;
        }

        v40 = v109;
        if (v110 < v16)
        {
          v41 = 8 * v16 - 8;
          v42 = v16;
          v43 = v110;
          do
          {
            if (v43 != --v42)
            {
              v45 = *v40;
              if (!*v40)
              {
                goto LABEL_125;
              }

              v44 = *(v45 + v39);
              *(v45 + v39) = *(v45 + v41);
              *(v45 + v41) = v44;
            }

            ++v43;
            v41 -= 8;
            v39 += 8;
          }

          while (v43 < v42);
        }
      }

      else
      {
        v40 = v109;
      }
    }

    v46 = v40[1];
    if (v16 < v46)
    {
      if (__OFSUB__(v16, v18))
      {
        goto LABEL_118;
      }

      if (v16 - v18 < a4)
      {
        v47 = v18 + a4;
        if (__OFADD__(v18, a4))
        {
          goto LABEL_120;
        }

        if (v47 >= v46)
        {
          v47 = v40[1];
        }

        if (v47 < v18)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v16 != v47)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v16 < v18)
    {
      goto LABEL_117;
    }

    v60 = v17;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v17 = v60;
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v60 + 16) + 1, 1, v60);
      v17 = result;
    }

    v14 = *(v17 + 16);
    v61 = *(v17 + 24);
    a4 = v14 + 1;
    if (v14 >= v61 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v14 + 1, 1, v17);
      v17 = result;
    }

    *(v17 + 16) = a4;
    v62 = v17 + 16 * v14;
    *(v62 + 32) = v18;
    *(v62 + 40) = v16;
    v63 = *v114;
    if (!*v114)
    {
      goto LABEL_127;
    }

    if (v14)
    {
      while (1)
      {
        v5 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v64 = *(v17 + 32);
          v65 = *(v17 + 40);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_57:
          if (v67)
          {
            goto LABEL_106;
          }

          v80 = (v17 + 16 * a4);
          v82 = *v80;
          v81 = v80[1];
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_109;
          }

          v86 = (v17 + 32 + 16 * v5);
          v88 = *v86;
          v87 = v86[1];
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_113;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v5 = a4 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v90 = (v17 + 16 * a4);
        v92 = *v90;
        v91 = v90[1];
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_71:
        if (v85)
        {
          goto LABEL_108;
        }

        v93 = v17 + 16 * v5;
        v95 = *(v93 + 32);
        v94 = *(v93 + 40);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_111;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_78:
        v14 = v5 - 1;
        if (v5 - 1 >= a4)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*v40)
        {
          goto LABEL_124;
        }

        v101 = v17;
        a4 = *(v17 + 32 + 16 * v14);
        v102 = *(v17 + 32 + 16 * v5 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)((*v40 + 8 * a4), (*v40 + 8 * *(v17 + 32 + 16 * v5)), (*v40 + 8 * v102), v63);
        if (v6)
        {
        }

        if (v102 < a4)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = specialized _ArrayBuffer._consumeAndCreateNew()(v101);
        }

        if (v14 >= *(v101 + 2))
        {
          goto LABEL_103;
        }

        v103 = &v101[16 * v14];
        *(v103 + 4) = a4;
        *(v103 + 5) = v102;
        v124 = v101;
        result = specialized Array.remove(at:)(v5);
        v17 = v124;
        a4 = *(v124 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = v17 + 32 + 16 * a4;
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_104;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_105;
      }

      v75 = (v17 + 16 * a4);
      v77 = *v75;
      v76 = v75[1];
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_107;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_110;
      }

      if (v79 >= v71)
      {
        v97 = (v17 + 32 + 16 * v5);
        v99 = *v97;
        v98 = v97[1];
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_114;
        }

        if (v66 < v100)
        {
          v5 = a4 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v14 = v40;
    v15 = v40[1];
    a4 = v113;
    if (v16 >= v15)
    {
      goto LABEL_89;
    }
  }

  v111 = v17;
  v112 = v6;
  v119 = *v40;
  v14 = v119 + 8 * v16 - 8;
  v110 = v18;
  v48 = v18 - v16;
  v115 = v47;
LABEL_30:
  v117 = v14;
  v118 = v16;
  v5 = *(v119 + 8 * v16);
  v116 = v48;
  while (1)
  {
    v49 = *v14;
    v50 = *(*v5 + 456);

    v52 = v121;
    v53 = v50(v51);
    v54 = v122;
    (*(*v49 + 456))(v53);
    a4 = static Date.> infix(_:_:)();
    v55 = *v120;
    v56 = v54;
    v57 = v123;
    (*v120)(v56, v123);
    v55(v52, v57);

    if ((a4 & 1) == 0)
    {
LABEL_29:
      v16 = v118 + 1;
      v14 = v117 + 8;
      v48 = v116 - 1;
      if (v118 + 1 != v115)
      {
        goto LABEL_30;
      }

      v16 = v115;
      v17 = v111;
      v6 = v112;
      v40 = v109;
      v18 = v110;
      goto LABEL_37;
    }

    if (!v119)
    {
      break;
    }

    v58 = *v14;
    v5 = *(v14 + 8);
    *v14 = v5;
    *(v14 + 8) = v58;
    v14 -= 8;
    if (__CFADD__(v48++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

unint64_t specialized static DBWriter._latestSnapshotSequence(generation:context:nilFallback:loadedSuggestionCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(char *, uint64_t)@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v148) = a5;
  v126 = a4;
  v161 = a3;
  v143 = a2;
  v142 = a1;
  v127 = a6;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData16HistoryTombstoneVy9MomentsUI10DBSnapshotCGMd);
  v146 = *(v153 - 8);
  v6 = MEMORY[0x28223BE20](v153);
  v152 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v159 = &v116 - v8;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData20DefaultHistoryDeleteVy9MomentsUI10DBSnapshotCGMd);
  v145 = *(v149 - 8);
  v9 = MEMORY[0x28223BE20](v149);
  v156 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v157 = &v116 - v11;
  v150 = type metadata accessor for HistoryChange();
  v130 = *(v150 - 8);
  v12 = MEMORY[0x28223BE20](v150);
  v163 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v158 = &v116 - v14;
  v141 = type metadata accessor for DefaultHistoryTransaction();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v133 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9SwiftData25DefaultHistoryTransactionV_QPGSgMd);
  MEMORY[0x28223BE20](v16 - 8);
  v147 = (&v116 - v17);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData17HistoryDescriptorVyAA07DefaultC11TransactionVGMd);
  v125 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v129 = &v116 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGSgMd);
  MEMORY[0x28223BE20](v19 - 8);
  v160 = &v116 - v20;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI10DBSnapshotCGMd);
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v132 = (&v116 - v21);
  v22 = type metadata accessor for String.StandardComparator();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v116 - v27;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGMd);
  v144 = *(v137 - 8);
  v29 = v144;
  v30 = MEMORY[0x28223BE20](v137);
  v32 = &v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v116 - v33;
  swift_getKeyPath();
  static String.StandardComparator.localizedStandard.getter();
  (*(v23 + 16))(v26, v28, v22);
  SortDescriptor.init(_:comparator:order:)();
  (*(v23 + 8))(v28, v22);
  swift_getKeyPath();
  v35 = v32;
  SortDescriptor.init<A>(_:order:)();
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGMd);
  v36 = *(v154 - 8);
  v151 = *(v36 + 56);
  v155 = (v36 + 56);
  v37 = v160;
  (v151)(v160, 1, 1, v154);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGGMd);
  v38 = *(v29 + 72);
  v39 = v144;
  v40 = (*(v144 + 80) + 32) & ~*(v144 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_21658CA60;
  v42 = v41 + v40;
  v43 = *(v39 + 16);
  v131 = v34;
  v44 = v34;
  v45 = v39;
  v46 = v137;
  v43(v42, v44, v137);
  v43(v42 + v38, v35, v46);
  v47 = v132;
  v48 = v139;
  v49 = type metadata accessor for DBSnapshot();
  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, 255, type metadata accessor for DBSnapshot);
  FetchDescriptor.init(predicate:sortBy:)();
  FetchDescriptor.includePendingChanges.setter();
  FetchDescriptor.fetchLimit.setter();
  v164 = v142;
  v165 = v143;
  v171 = v49;
  Predicate.init(_:)();
  (v151)(v37, 0, 1, v154);
  FetchDescriptor.predicate.setter();
  v50 = v162;
  result = dispatch thunk of ModelContext.fetch<A>(_:)();
  v52 = v138;
  if (v50)
  {
    goto LABEL_2;
  }

  v54 = v147;
  LOBYTE(v55) = v148;
  v119 = 0;
  v117 = v35;
  if (result >> 62)
  {
    goto LABEL_65;
  }

  v56 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v57 = v150;
    v58 = v158;
    v59 = v141;
    v60 = v129;
    if (v56)
    {
      if ((result & 0xC000000000000001) != 0)
      {
        v63 = MEMORY[0x21CE93180](0);
        v61 = v138;
        v62 = v139;
      }

      else
      {
        v61 = v138;
        v62 = v139;
        if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v63 = *(result + 32);
      }

      v65 = (*(*v63 + 256))(v64);
      v67 = v66;
      v68 = (*(*v63 + 304))(v65);
      if (v55)
      {
        v69 = (*(*v63 + 352))();
        if (v70)
        {
          (*(*v63 + 376))(v69);
        }
      }

      v71 = (*(*v63 + 352))();
      v73 = v72;

      (*(v61 + 8))(v47, v62);
      v74 = *(v144 + 8);
      v75 = v137;
      v74(v117, v137);
      result = (v74)(v131, v75);
      if (v67)
      {

        v76 = 0;
        v77 = v73;
        v78 = v127;
        goto LABEL_56;
      }

      v82 = v126;
      v78 = v127;
      goto LABEL_59;
    }

    v79 = v140;

    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9SwiftData25DefaultHistoryTransactionV_QPGMd);
    (*(*(v80 - 8) + 56))(v54, 1, 1, v80);
    _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DefaultHistoryTransaction and conformance DefaultHistoryTransaction, 255, MEMORY[0x277CDD588]);
    HistoryDescriptor.init(predicate:)();
    v81 = v119;
    result = dispatch thunk of ModelContext.fetchHistory<A>(_:)();
    v119 = v81;
    if (v81)
    {
      (*(v125 + 8))(v60, v135);
      v52 = v138;
      v46 = v137;
      v45 = v144;
      v35 = v117;
      v48 = v139;
LABEL_2:
      (*(v52 + 8))(v47, v48);
      v53 = *(v45 + 8);
      v53(v35, v46);
      return (v53)(v131, v46);
    }

    v124 = *(result + 16);
    v83 = v139;
    if (!v124)
    {
      break;
    }

    v136 = 0;
    v118 = 0;
    v84 = 0;
    v122 = result + ((*(v79 + 80) + 32) & ~*(v79 + 80));
    v121 = v79 + 16;
    v120 = v79 + 8;
    v148 = v130 + 16;
    v161 = (v130 + 88);
    LODWORD(v160) = *MEMORY[0x277CDD4A8];
    v155 = (v130 + 96);
    v147 = (v145 + 32);
    v151 = v146 + 1;
    v146 = (v145 + 8);
    v47 = (v130 + 8);
    v85 = v149;
    v55 = v144;
    v86 = v133;
    v123 = result;
    v154 = v130 + 8;
    while (v84 < *(result + 16))
    {
      v88 = v140;
      v89 = *(v140 + 72);
      v134 = v84;
      (*(v140 + 16))(v86, v122 + v89 * v84, v59);
      v54 = DefaultHistoryTransaction.changes.getter();
      (*(v88 + 8))(v86, v59);
      v90 = *(v54 + 16);
      if (v90)
      {
        v91 = (*(v130 + 80) + 32) & ~*(v130 + 80);
        v128 = v54;
        v92 = v54 + v91;
        v54 = *(v130 + 72);
        v162 = *(v130 + 16);
        v93 = v162;
        v162(v58, v92, v57);
        while (1)
        {
          v95 = (*v161)(v58, v57);
          if (v95 == v160)
          {
            break;
          }

LABEL_27:
          (*v47)(v58, v57);
          v92 += v54;
          --v90;
          v93 = v162;
          if (!v90)
          {

            v55 = v144;
            goto LABEL_20;
          }

          v162(v58, v92, v57);
        }

        v96 = v54;
        v97 = v58;
        v98 = v163;
        v93(v163, v97, v57);
        (*v155)(v98, v57);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData13HistoryDelete_pMd);
        v99 = v157;
        if (swift_dynamicCast())
        {
          v100 = v156;
          (*v147)(v156, v99, v85);
          DefaultHistoryDelete.tombstone.getter();
          swift_getKeyPath();
          v101 = v85;
          v102 = v153;
          HistoryTombstone.subscript.getter();
          v103 = v159;

          v104 = v100;
          v105 = *v151;
          (*v151)(v103, v102);
          if (v170)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd);
            if (swift_dynamicCast())
            {
              v145 = v167;
              DefaultHistoryDelete.tombstone.getter();
              swift_getKeyPath();
              HistoryTombstone.subscript.getter();

              v105(v152, v153);
              v54 = v96;
              if (v170)
              {
                v106 = swift_dynamicCast();
                v57 = v150;
                v58 = v158;
                v47 = v154;
                if (v106)
                {
                  if (v167 == v142 && v168 == v143)
                  {

                    v85 = v149;
                    (*v146)(v156, v149);
                    goto LABEL_47;
                  }

                  v109 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  v85 = v149;
                  (*v146)(v156, v149);
                  if (v109)
                  {
LABEL_47:
                    v107 = v118;
                    if (v118 <= v145)
                    {
                      v107 = v145;
                    }

                    v108 = &v150;
                    goto LABEL_50;
                  }

                  goto LABEL_51;
                }

                v85 = v149;
                (*v146)(v156, v149);
              }

              else
              {
                v85 = v149;
                (*v146)(v156, v149);
                outlined destroy of UTType?(v169, &_ss8Sendable_pSgMd);
                v57 = v150;
                v58 = v158;
                v47 = v154;
              }

              v107 = v136;
              if (v136 <= v145)
              {
                v107 = v145;
              }

              v108 = &v166;
LABEL_50:
              *(v108 - 32) = v107;
LABEL_51:
              v94 = v163;
LABEL_26:
              __swift_destroy_boxed_opaque_existential_1(v94);
              goto LABEL_27;
            }

            v85 = v149;
            (*v146)(v156, v149);
          }

          else
          {
            (*v146)(v104, v101);
            outlined destroy of UTType?(v169, &_ss8Sendable_pSgMd);
            v85 = v101;
          }

          v54 = v96;
          v57 = v150;
          v94 = v163;
          v58 = v158;
        }

        else
        {
          v94 = v163;
          v58 = v158;
          v54 = v96;
        }

        v47 = v154;
        goto LABEL_26;
      }

LABEL_20:
      v84 = v134 + 1;
      v59 = v141;
      v86 = v133;
      v87 = v135;
      result = v123;
      if (v134 + 1 == v124)
      {

        v78 = v127;
        v83 = v139;
        v47 = v132;
        v68 = v118;
        v110 = v137;
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_65:
    v115 = result;
    v56 = __CocoaSet.count.getter();
    result = v115;
  }

  v136 = 0;
  v68 = 0;
  v110 = v137;
  v55 = v144;
  v87 = v135;
  v78 = v127;
LABEL_55:
  (*(v125 + 8))(v129, v87);
  (*(v138 + 8))(v47, v83);
  v111 = *(v55 + 8);
  v111(v117, v110);
  result = (v111)(v131, v110);
  v71 = 0;
  v77 = 1;
  v76 = v136;
LABEL_56:
  v82 = v126;
  if (v68)
  {
    v112 = v68;
    v113 = v71;
    goto LABEL_61;
  }

  v71 = 0;
  v73 = 1;
  v68 = v76;
LABEL_59:
  v112 = 0;
  v77 = 1;
  v113 = 0;
  if ((v82 & 1) == 0 || (v114 = 0, !v68))
  {
LABEL_61:
    v68 = v112;

    v112 = v142;
    v114 = result;
    v71 = v113;
    v73 = v77;
  }

  *v78 = v112;
  *(v78 + 8) = v114;
  *(v78 + 16) = v68;
  *(v78 + 24) = v71;
  *(v78 + 32) = v73 & 1;
  return result;
}

uint64_t specialized static DBWriter.draftSnapshot(context:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI10DBSnapshotCGMd);
  v3 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGMd);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v19[2] = type metadata accessor for DBSnapshot();
  Predicate.init(_:)();
  (*(v7 + 16))(v2, v9, v6);
  (*(v7 + 56))(v2, 0, 1, v6);
  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, 255, type metadata accessor for DBSnapshot);
  v10 = v5;
  FetchDescriptor.init(predicate:sortBy:)();
  v11 = v18;
  dispatch thunk of ModelContext.fetch<A>(_:)();
  if (v11)
  {
    (*(v3 + 8))(v5, v17);
    (*(v7 + 8))(v9, v6);
    return v5;
  }

  v12 = v17;

  v19[0] = specialized Array._copyToContiguousArray()(v13);
  specialized MutableCollection<>.sort(by:)(v19);

  v14 = v19[0];
  if ((v19[0] & 0x8000000000000000) == 0 && (v19[0] & 0x4000000000000000) == 0)
  {
    if (*(v19[0] + 16))
    {
      goto LABEL_7;
    }

LABEL_12:

    v5 = 0;
    goto LABEL_13;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x21CE93180](0, v14);
    goto LABEL_10;
  }

  if (*(v14 + 16))
  {
    v5 = *(v14 + 32);

LABEL_10:

LABEL_13:
    (*(v3 + 8))(v10, v12);
    (*(v7 + 8))(v9, v6);
    return v5;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t specialized static DBWriter._latestSnapshot(generation:prefetch:allowDraft:context:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  LODWORD(v7) = a4;
  LODWORD(v8) = a3;
  v93 = a1;
  v80 = a6;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGMd);
  v84 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = &v72[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v72[-v12];
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI10DBSnapshotCGMd);
  v83 = *(v99 - 8);
  v14 = MEMORY[0x28223BE20](v99);
  v95 = &v72[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v17 = &v72[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGMd);
  v89 = *(v18 - 8);
  v90 = v18;
  MEMORY[0x28223BE20](v18);
  v88 = &v72[-v19];
  if (one-time initialization token for database != -1)
  {
LABEL_52:
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static CommonLogger.database);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  v23 = os_log_type_enabled(v21, v22);
  v94 = a2;
  v85 = v17;
  v92 = a5;
  v79 = v7;
  LODWORD(v81) = v8;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v101 = v25;
    *v24 = 136446978;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000038, 0x800000021657FC20, &v101);
    *(v24 + 12) = 2080;
    *(v24 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, &v101);
    *(v24 + 22) = 1024;
    *(v24 + 24) = v8 & 1;
    *(v24 + 28) = 1024;
    *(v24 + 30) = v7 & 1;
    _os_log_impl(&dword_21607C000, v21, v22, "%{public}s generation=%s, prefetch=%{BOOL}d, allowDraft=%{BOOL}d", v24, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v25, -1, -1);
    MEMORY[0x21CE94770](v24, -1, -1);
  }

  v101 = -1;
  swift_getKeyPath();
  v26 = v88;
  SortDescriptor.init<A>(_:order:)();
  v27 = v90;
  SortDescriptor.order.setter();
  v29 = (v84 + 56);
  v28 = *(v84 + 56);
  v30 = v97;
  v28(v13, 1, 1, v97);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGGMd);
  v31 = v89;
  v32 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_21658CA50;
  (*(v31 + 16))(v33 + v32, v26, v27);
  v34 = type metadata accessor for DBSnapshot();
  v35 = _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, 255, type metadata accessor for DBSnapshot);
  v36 = v85;
  v98 = v35;
  FetchDescriptor.init(predicate:sortBy:)();
  FetchDescriptor.includePendingChanges.setter();
  v37 = FetchDescriptor.fetchLimit.setter();
  v7 = v72;
  MEMORY[0x28223BE20](v37);
  v38 = v94;
  *&v72[-16] = v93;
  *&v72[-8] = v38;
  v91 = v34;
  v100 = v34;
  Predicate.init(_:)();
  v86 = v28;
  v87 = v29;
  v28(v13, 0, 1, v30);
  FetchDescriptor.predicate.setter();
  if (v81)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_21658E210;
    *(v39 + 32) = swift_getKeyPath();
    FetchDescriptor.relationshipKeyPathsForPrefetching.setter();
  }

  v40 = v82;
  v41 = dispatch thunk of ModelContext.fetch<A>(_:)();
  v17 = v40;
  if (v40)
  {
    (*(v83 + 8))(v36, v99);
    return (*(v89 + 8))(v88, v90);
  }

  v43 = v41;
  if (v41 >> 62)
  {
LABEL_54:
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v73 = result == 0;
  v74 = result;
  if (!result)
  {

    v75 = 0;
    v78 = 0;
    v44 = 0;
    v77 = 1;
    goto LABEL_18;
  }

  if ((v43 & 0xC000000000000001) != 0)
  {
    v44 = MEMORY[0x21CE93180](0, v43);
LABEL_14:

    v46 = (*(*v44 + 664))(v45);
    v47 = *(*v44 + 304);
    if (v46)
    {

      v78 = (v47)(v48);
      v75 = (*(*v44 + 352))();
      v77 = v49;
    }

    else
    {
      v101 = v47();
      v78 = v47();
      v75 = (*(*v44 + 352))();
      v77 = v51;

      v44 = 0;
    }

LABEL_18:
    v76 = v7;
    if (v101)
    {
      v81 = (v83 + 8);
      v82 = (v84 + 16);
      v84 += 8;
      v7 = v87;
      while (!v44)
      {
        MEMORY[0x28223BE20](v50);
        *&v72[-16] = &v101;
        v52 = v96;
        Predicate.init(_:)();
        a2 = v97;
        (*v82)(v13, v52, v97);
        v8 = v86;
        v86(v13, 0, 1, a2);
        a5 = v91;
        FetchDescriptor.init(predicate:sortBy:)();
        FetchDescriptor.includePendingChanges.setter();
        v53 = FetchDescriptor.fetchLimit.setter();
        MEMORY[0x28223BE20](v53);
        v54 = v94;
        *&v72[-16] = v93;
        *&v72[-8] = v54;
        Predicate.init(_:)();
        v8(v13, 0, 1, a2);
        FetchDescriptor.predicate.setter();
        v55 = dispatch thunk of ModelContext.fetch<A>(_:)();
        v56 = v55;
        if (v55 >> 62)
        {
          if (!__CocoaSet.count.getter())
          {
LABEL_41:

            (*v81)(v95, v99);
            (*v84)(v96, v97);
            goto LABEL_42;
          }
        }

        else if (!*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        if ((v56 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x21CE93180](0, v56);
        }

        else
        {
          if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_52;
          }

          v44 = *(v56 + 32);
        }

        if ((*(*v44 + 664))(v57))
        {
          (*v81)(v95, v99);
          v50 = (*v84)(v96, v97);
        }

        else
        {
          v43 = (*(*v44 + 304))();

          (*v81)(v95, v99);
          v50 = (*v84)(v96, v97);
          if (!v43)
          {
            __break(1u);
            goto LABEL_54;
          }

          v44 = 0;
          v101 = v43 - 1;
        }

        if (!v101)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
LABEL_34:
      if (!v44)
      {
LABEL_42:
        v61 = v80;
        v62 = v85;
        if (v79)
        {
          v67 = specialized static DBWriter.draftSnapshot(context:)();
          v44 = v67;
          if (!v67)
          {
            v78 = 0;
            v66 = 0;
            v75 = 0;
            v77 = 1;
            goto LABEL_49;
          }

          v68 = *(*v67 + 352);

          v75 = v68(v69);
          v77 = v70;

          v78 = 0;
          goto LABEL_48;
        }

        v44 = 0;
        v66 = v73;
        goto LABEL_49;
      }
    }

    v58 = *(*v44 + 304);

    v60 = v58(v59);
    v61 = v80;
    v62 = v85;
    if (v74)
    {
      if (v60 != v78)
      {

        goto LABEL_48;
      }

      if (v77)
      {
        (*(*v44 + 376))();
        v63 = *(*v44 + 352);

        v75 = v63(v64);
        v77 = v65;

LABEL_48:
        v66 = 0;
        goto LABEL_49;
      }

      v66 = 0;
      v77 = 0;
    }

    else
    {

      v66 = 1;
    }

LABEL_49:
    (*(v83 + 8))(v62, v99);
    result = (*(v89 + 8))(v88, v90);
    v71 = v78;
    *v61 = v44;
    *(v61 + 8) = v71;
    *(v61 + 16) = v66;
    *(v61 + 24) = v75;
    *(v61 + 32) = v77 & 1;
    return result;
  }

  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v44 = *(v43 + 32);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

size_t specialized static DBWriter._createDraftSnapshot(with:context:renderedCount:creationDate:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a4;
  v43 = a3;
  v44 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v41 - v19;
  v42 = v6;
  (*(v6 + 56))(&v41 - v19, 1, 1, v5);
  (*(v12 + 16))(v17, v45, v11);
  specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)();
  Date.init(timeIntervalSinceNow:)();
  v21 = type metadata accessor for URL();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  type metadata accessor for DBSnapshot();
  swift_allocObject();

  v22 = v46;
  result = DBSnapshot.init(id:generation:sequence:creationDate:expiry:recommended:recent:blobFolderURL:isDraft:)(v20, 0, 0, 0, v17, v15, a1, MEMORY[0x277D84F90], v10, 1);
  if (!v22)
  {
    v24 = result;
    v25 = a1;
    v26 = v41;
    v27 = v42;
    v46 = 0;
    (*(*result + 360))(v43, 0);
    _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, 255, type metadata accessor for DBSnapshot);
    dispatch thunk of ModelContext.insert<A>(_:)();
    if (one-time initialization token for processing != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static CommonLogger.processing);
    v29 = v25;

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v47 = v45;
      *v32 = 134218242;
      if (v29 >> 62)
      {
        v33 = __CocoaSet.count.getter();
      }

      else
      {
        v33 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v32 + 4) = v33;

      *(v32 + 12) = 2080;
      v35 = v26;
      (*(*v24 + 208))(v34);
      _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      (*(v27 + 8))(v35, v5);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v47);

      *(v32 + 14) = v39;
      _os_log_impl(&dword_21607C000, v30, v31, "[createDraftSnapshot] created new draft snapshot, suggestions n=%ld, id=%s", v32, 0x16u);
      v40 = v45;
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x21CE94770](v40, -1, -1);
      MEMORY[0x21CE94770](v32, -1, -1);
    }

    else
    {
    }
  }

  return result;
}

uint64_t specialized static DBWriter._newSnapshotSequenceNumber(generation:context:)(uint64_t a1, unint64_t a2, uint64_t (**a3)(char *, uint64_t))
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized static DBWriter._latestSnapshotSequence(generation:context:nilFallback:loadedSuggestionCount:)(a1, a2, a3, 1, 0, v31);
  if (v3)
  {
    return v4;
  }

  v12 = v33;
  v4 = v33 + 1;
  if (v33 == -1)
  {
    __break(1u);
  }

  else
  {
    v30 = 0;
    if (v32)
    {

      return v4;
    }

    if (one-time initialization token for Log == -1)
    {
      goto LABEL_6;
    }
  }

  swift_once();
LABEL_6:
  v13 = __swift_project_value_buffer(v8, static DBWriter.Log);
  swift_beginAccess();
  (*(v9 + 16))(v11, v13, v8);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = v12;
    v17 = v16;
    v29 = swift_slowAlloc();
    v34 = v29;
    *v17 = 136447234;
    v28 = v15;
    swift_beginAccess();
    v18 = StaticString.description.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v34);
    v26 = v14;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x800000021657FBC0, &v34);
    *(v17 + 22) = 2050;
    *(v17 + 24) = v27;
    *(v17 + 32) = 2080;
    *(v17 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v34);
    *(v17 + 42) = 2050;
    *(v17 + 44) = v4;
    v22 = v26;
    _os_log_impl(&dword_21607C000, v26, v28, "%{public}s.%{public}s Migrating from legacy nil generation snapshot: (nil, %{public}llu) -> (%s, %{public}llu", v17, 0x34u);
    v23 = v29;
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v23, -1, -1);
    MEMORY[0x21CE94770](v17, -1, -1);
  }

  else
  {
  }

  (*(v9 + 8))(v11, v8);
  return v4;
}

uint64_t specialized closure #1 in DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:)(uint64_t a1, uint64_t a2, uint64_t (**a3)(char *, uint64_t), uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v76 = a3;
  v70 = a6;
  v71 = a5;
  v74 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9SwiftData25DefaultHistoryTransactionV_QPGSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v73 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData17HistoryDescriptorVyAA07DefaultC11TransactionVGMd);
  v11 = *(v10 - 8);
  v67 = v10;
  v68 = v11;
  MEMORY[0x28223BE20](v10);
  v69 = &v62 - v12;
  v13 = type metadata accessor for Date();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v72 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  *a4 = a1;
  v24 = v74;
  a4[1] = v74;
  v25 = v76;

  v26 = v75;
  result = specialized static DBWriter.draftSnapshot(context:)();
  if (!v26)
  {
    v28 = v24;
    v65 = v18;
    v66 = v15;
    v29 = v72;
    v30 = v73;
    if (result)
    {
      v75 = result;
      v31 = v28;
      v63 = specialized static DBWriter._newSnapshotSequenceNumber(generation:context:)(v23, v28, v25);
      v64 = 0;
      if (v63 == 1)
      {
        UUID.init()();
        v32 = UUID.uuidString.getter();
        v34 = v33;
        (*(v20 + 8))(v22, v19);
        v35 = v71;
        v74 = v32;
        *v71 = v32;
        v35[1] = v34;

        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v36 = __swift_project_value_buffer(v16, static DBWriter.Log);
        swift_beginAccess();
        v37 = v29;
        v38 = *(v29 + 16);
        v39 = v65;
        v38(v65, v36, v16);

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.info.getter();

        v42 = v34;
        if (os_log_type_enabled(v40, v41))
        {
          v43 = v37;
          v44 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v77 = v62;
          *v44 = 136446722;
          v45 = v41;
          swift_beginAccess();
          v46 = StaticString.description.getter();
          v48 = v16;
          v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v77);

          *(v44 + 4) = v49;
          *(v44 + 12) = 2082;
          *(v44 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x800000021657F9F0, &v77);
          *(v44 + 22) = 2080;
          v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v42, &v77);

          *(v44 + 24) = v50;
          _os_log_impl(&dword_21607C000, v40, v45, "%{public}s.%{public}s Rotating new snapshot generation: %s", v44, 0x20u);
          v51 = v62;
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v51, -1, -1);
          MEMORY[0x21CE94770](v44, -1, -1);

          (*(v43 + 8))(v39, v48);
          v30 = v73;
        }

        else
        {

          (*(v37 + 8))(v39, v16);
        }

        v54 = v67;
        v53 = v68;
        v52 = v71;
      }

      else
      {
        v52 = v71;
        *v71 = v23;
        v52[1] = v31;

        v54 = v67;
        v53 = v68;
      }

      v56 = *v52;
      v55 = v52[1];
      v57 = v75;
      v58 = *(*v75 + 264);

      v58(v56, v55);
      (*(*v57 + 312))(v63);
      specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)();
      v59 = v66;
      Date.init(timeIntervalSinceNow:)();
      (*(*v57 + 416))(v59);
      *v70 = v57;

      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9SwiftData25DefaultHistoryTransactionV_QPGMd);
      (*(*(v60 - 8) + 56))(v30, 1, 1, v60);
      type metadata accessor for DefaultHistoryTransaction();
      _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DefaultHistoryTransaction and conformance DefaultHistoryTransaction, 255, MEMORY[0x277CDD588]);
      v61 = v69;
      HistoryDescriptor.init(predicate:)();
      dispatch thunk of ModelContext.deleteHistory<A>(_:)();
      (*(v53 + 8))(v61, v54);
    }
  }

  return result;
}

uint64_t specialized static DBWriter._snapshotAnalytics(_:_:_:snapshotEventReason:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, _BYTE *a5)
{
  *(v5 + 32) = a2;
  *(v5 + 40) = a4;
  *(v5 + 153) = a3;
  *(v5 + 24) = a1;
  v7 = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v5 + 48) = v7;
  *(v5 + 56) = *(v7 - 8);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  v8 = type metadata accessor for Date();
  *(v5 + 104) = v8;
  *(v5 + 112) = *(v8 - 8);
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 154) = *a5;

  return MEMORY[0x2822009F8](specialized static DBWriter._snapshotAnalytics(_:_:_:snapshotEventReason:), 0, 0);
}

uint64_t specialized static DBWriter._snapshotAnalytics(_:_:_:snapshotEventReason:)()
{
  v46 = v0;
  if (one-time initialization token for analytics != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static CommonLogger.analytics);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 154);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v45 = v6;
    *v5 = 136446722;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x800000021657FC60, &v45);
    *(v5 + 12) = 2080;
    if (v4 == 7)
    {
      v7 = 0xE300000000000000;
      v8 = 7104878;
    }

    else
    {
      *(v0 + 152) = *(v0 + 154);
      v8 = String.init<A>(describing:)();
      v7 = v9;
    }

    v10 = *(v0 + 24);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v45);

    *(v5 + 14) = v11;
    *(v5 + 22) = 2080;
    *(v0 + 16) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI10DBSnapshotCSgMd);
    v12 = Optional.debugDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v45);

    *(v5 + 24) = v14;
    _os_log_impl(&dword_21607C000, v2, v3, "[DBWriter.%{public}s] creating snapshot event: snapshotEventReason=%s, snapshot=%s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v6, -1, -1);
    MEMORY[0x21CE94770](v5, -1, -1);

    if (!*(v0 + 24))
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (!*(v0 + 24))
    {
      goto LABEL_15;
    }
  }

  v15 = *(v0 + 153);
  if (v15)
  {

    v16 = *(v0 + 32);
  }

  else
  {
    v18 = *(v0 + 112);
    v17 = *(v0 + 120);
    v19 = *(v0 + 104);
    v20 = *(v0 + 32);

    Date.init()();
    Date.timeIntervalSince(_:)();
    v22 = v21;
    (*(v18 + 8))(v17, v19);
    v16 = v20 + v22;
    v15 = *(v0 + 153);
  }

  v24 = *(v0 + 88);
  v23 = *(v0 + 96);
  v26 = *(v0 + 48);
  v25 = *(v0 + 56);
  LOBYTE(v45) = *(v0 + 154);

  DBSnapshotAnalytics.SnapshotEvent.init(snapshot:reason:processingTime:)(v27, &v45, *&v16, v15 & 1, v23);
  outlined init with copy of DateInterval?(v23, v24, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  v28 = (*(v25 + 48))(v24, 1, v26);
  v29 = *(v0 + 88);
  if (v28 == 1)
  {
    outlined destroy of UTType?(*(v0 + 96), &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);

    outlined destroy of UTType?(v29, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
LABEL_15:

    v30 = *(v0 + 8);

    return v30();
  }

  v32 = *(v0 + 154);
  outlined init with take of DBSnapshotAnalytics.SnapshotEvent(*(v0 + 88), *(v0 + 72));
  if (v32 != 5)
  {
    outlined init with copy of DBSnapshotAnalytics.SnapshotEvent(*(v0 + 72), *(v0 + 64));
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 64);
    if (v35)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v45 = v38;
      *v37 = 136446466;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x800000021657FC60, &v45);
      *(v37 + 12) = 2080;
      v39 = DBSnapshotAnalytics.SnapshotEvent.description.getter();
      v41 = v40;
      outlined destroy of DBSnapshotAnalytics.SnapshotEvent(v36);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v45);

      *(v37 + 14) = v42;
      _os_log_impl(&dword_21607C000, v33, v34, "[DBWriter.%{public}s] Sending snapshot event to analytics\n%s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v38, -1, -1);
      MEMORY[0x21CE94770](v37, -1, -1);
    }

    else
    {

      outlined destroy of DBSnapshotAnalytics.SnapshotEvent(v36);
    }

    DBSnapshotAnalytics.SnapshotEvent.send()();
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v43 = (*((*MEMORY[0x277D85000] & *static MomentsUIManager.shared) + 0x78))();
  v44 = OBJC_IVAR____TtC9MomentsUI12CloudManager_dbSnapshotEventSubject;
  *(v0 + 128) = v43;
  *(v0 + 136) = v44;

  return MEMORY[0x2822009F8](specialized static DBWriter._snapshotAnalytics(_:_:_:snapshotEventReason:), v43, 0);
}

{
  v0[18] = *(v0[16] + v0[17]);
  return MEMORY[0x2822009F8](specialized static DBWriter._snapshotAnalytics(_:_:_:snapshotEventReason:), 0, 0);
}

{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[6];
  v5 = v0[7];
  outlined init with copy of DBSnapshotAnalytics.SnapshotEvent(v3, v2);
  (*(v5 + 56))(v2, 0, 1, v4);
  PassthroughSubject.send(_:)();

  outlined destroy of UTType?(v2, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  outlined destroy of DBSnapshotAnalytics.SnapshotEvent(v3);
  outlined destroy of UTType?(v1, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);

  v6 = v0[1];

  return v6();
}

unint64_t specialized static DBWriter.fetchedSuggestion(uuid:context:)(uint64_t a1, uint64_t a2)
{
  v19[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI12DBSuggestionCGMd);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMd);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v19 - v12;
  v19[4] = a1;
  v19[7] = type metadata accessor for DBSuggestion();
  Predicate.init(_:)();
  (*(v11 + 16))(v5, v13, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, 255, type metadata accessor for DBSuggestion);
  FetchDescriptor.init(predicate:sortBy:)();
  FetchDescriptor.fetchLimit.setter();
  v14 = v19[1];
  result = dispatch thunk of ModelContext.fetch<A>(_:)();
  if (v14)
  {
    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v10);
    return v6;
  }

  v16 = v6;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    v6 = 0;
    goto LABEL_11;
  }

  v17 = result;
  v18 = __CocoaSet.count.getter();
  result = v17;
  if (!v18)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x21CE93180](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(result + 32);

LABEL_8:

LABEL_11:
    (*(v7 + 8))(v9, v16);
    (*(v11 + 8))(v13, v10);
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #2 in DBWriter.latestSnapshots()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #2 in DBWriter.latestSnapshots()(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #2 in DBWriter.pruneSnapshotsTo(_:)(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #2 in DBWriter.pruneSnapshotsTo(_:)(a1, a2, v2);
}

unint64_t lazy protocol witness table accessor for type DBWriter.FetchError and conformance DBWriter.FetchError()
{
  result = lazy protocol witness table cache variable for type DBWriter.FetchError and conformance DBWriter.FetchError;
  if (!lazy protocol witness table cache variable for type DBWriter.FetchError and conformance DBWriter.FetchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBWriter.FetchError and conformance DBWriter.FetchError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBWriter.FetchError and conformance DBWriter.FetchError;
  if (!lazy protocol witness table cache variable for type DBWriter.FetchError and conformance DBWriter.FetchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBWriter.FetchError and conformance DBWriter.FetchError);
  }

  return result;
}

uint64_t partial apply for closure #2 in closure #1 in DBWriter.latestSuggestions(uiLaunch:allowDraft:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #2 in closure #1 in DBWriter.latestSuggestions(uiLaunch:allowDraft:)(a1, v4, v5, v6, v7);
}

uint64_t partial apply for closure #2 in DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:)(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #2 in DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:)(a1, a2, v2);
}

uint64_t partial apply for closure #2 in DBWriter.deleteSnapshotsMain(snapshots:)(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #2 in DBWriter.pruneSnapshotsTo(_:)(a1, a2, v2);
}

uint64_t partial apply for closure #1 in DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:)(a1, a2, a3, v6, v7, v8, v9, v10);
}

uint64_t specialized static DBWriter._mapAssetData(_:context:)(unint64_t a1, uint64_t a2)
{
  v15 = type metadata accessor for PersistentIdentifier();
  v4 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x277D84F90];
  if (!(a1 >> 62))
  {
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_23:
  v18 = a1 & 0xFFFFFFFFFFFFFF8;
  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v8 = 0;
  v16 = a2;
  v17 = a1 & 0xC000000000000001;
  v14 = (v4 + 1);
  result = MEMORY[0x277D84F90];
  do
  {
    v13 = result;
    for (i = v8; ; ++i)
    {
      if (v17)
      {
        MEMORY[0x21CE93180](i, a1);
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *(v18 + 16))
        {
          goto LABEL_22;
        }

        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      a2 = v7;
      type metadata accessor for DBAssetData();
      _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, 255, type metadata accessor for DBAssetData);
      if (!PersistentModel.modelContext.getter())
      {
        break;
      }

      result = PersistentModel.modelContext.getter();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v11 = result;

      if (v11 == v16)
      {
        break;
      }

      PersistentModel.persistentModelID.getter();
      v4 = dispatch thunk of ModelContext.model(for:)();

      (*v14)(v6, v15);
      if (swift_dynamicCastClass())
      {
        break;
      }

      swift_unknownObjectRelease();
      if (v8 == v7)
      {
        return v13;
      }
    }

    v4 = &v19;
    MEMORY[0x21CE92260]();
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = v19;
  }

  while (v8 != v7);
  return result;
}

uint64_t specialized static DBWriter._mapSuggestions(_:context:)(unint64_t a1, uint64_t a2)
{
  v23 = type metadata accessor for PersistentIdentifier();
  v4 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x277D84F90];
  if (!(a1 >> 62))
  {
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_26:
  v26 = a1 & 0xFFFFFFFFFFFFFF8;
  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v8 = 0;
  v24 = a2;
  v25 = a1 & 0xC000000000000001;
  v22 = (v4 + 1);
  result = MEMORY[0x277D84F90];
  do
  {
    v21 = result;
    for (i = v8; ; ++i)
    {
      if (v25)
      {
        v11 = MEMORY[0x21CE93180](i, a1);
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (i >= *(v26 + 16))
        {
          goto LABEL_25;
        }

        v11 = *(a1 + 8 * i + 32);

        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      a2 = v7;
      type metadata accessor for DBSuggestion();
      _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, 255, type metadata accessor for DBSuggestion);
      if (!PersistentModel.modelContext.getter())
      {
        break;
      }

      v12 = PersistentModel.modelContext.getter();
      if (v12)
      {
        v27 = v24;
        v28 = v12;
        type metadata accessor for ModelContext();
        _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type ModelContext and conformance ModelContext, 255, MEMORY[0x277CDD490]);
        v13 = dispatch thunk of static Equatable.== infix(_:_:)();

        if (v13)
        {
          goto LABEL_20;
        }
      }

      PersistentModel.persistentModelID.getter();
      v4 = dispatch thunk of ModelContext.model(for:)();
      (*v22)(v6, v23);
      v15 = swift_dynamicCastClass();

      if (v15)
      {
        goto LABEL_20;
      }

      swift_unknownObjectRelease();
      v7 = a2;
      if (v8 == a2)
      {
        return v21;
      }
    }

    v16 = *(*v11 + 1160);

    v18 = v16(v17);
    if (v18)
    {
      v19 = specialized static DBWriter._mapAssetData(_:context:)(v18, v24);

      (*(*v11 + 1168))(v19);
    }

LABEL_20:
    v4 = &v29;
    MEMORY[0x21CE92260](v14);
    v7 = a2;
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v7 = a2;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = v29;
  }

  while (v8 != v7);
  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Disjunction<PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>>> and conformance <> PredicateExpressions.Disjunction<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Disjunction<PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>>> and conformance <> PredicateExpressions.Disjunction<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Disjunction<PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>>> and conformance <> PredicateExpressions.Disjunction<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11DisjunctionVy_AC5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGAGy_AqC5ValueVy_APGGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>> and conformance <> PredicateExpressions.Equal<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>> and conformance <> PredicateExpressions.Equal<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Disjunction<PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>>> and conformance <> PredicateExpressions.Disjunction<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>> and conformance <> PredicateExpressions.Equal<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>> and conformance <> PredicateExpressions.Equal<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>> and conformance <> PredicateExpressions.Equal<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.NilLiteral<String> and conformance PredicateExpressions.NilLiteral<A>, &_s10Foundation20PredicateExpressionsO10NilLiteralVy_SSGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>> and conformance <> PredicateExpressions.Equal<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?> and conformance <> PredicateExpressions.KeyPath<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?> and conformance <> PredicateExpressions.KeyPath<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?> and conformance <> PredicateExpressions.KeyPath<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGMd);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSnapshot> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?> and conformance <> PredicateExpressions.KeyPath<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>> and conformance <> PredicateExpressions.Equal<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>> and conformance <> PredicateExpressions.Equal<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>> and conformance <> PredicateExpressions.Equal<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC5ValueVy_ANGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<String?> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>> and conformance <> PredicateExpressions.Equal<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<String?> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<String?> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<String?> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SSSgGMd);
    lazy protocol witness table accessor for type String? and conformance <A> A?();
    lazy protocol witness table accessor for type String? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<String?> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AEy_AEy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGATGATGATGMd);
    lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}> and conformance <> PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AEy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGATGATGMd);
    lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}> and conformance <> PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGATGMd);
    lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGMR, lazy protocol witness table accessor for type PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}> and conformance <> PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>);
    lazy protocol witness table accessor for type PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}> and conformance <> PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}> and conformance <> PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}> and conformance <> PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}> and conformance <> PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ALG_QPGMd);
    lazy protocol witness table accessor for type PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>> and conformance <A> PredicateExpressions.Value<A>();
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}> and conformance <> PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGMd);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Predicate<Pack{DBSuggestion}> and conformance Predicate<Pack{repeat A}>, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMd);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Predicate<Pack{DBSuggestion}> and conformance Predicate<Pack{repeat A}>, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?>, UInt, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?>, UInt, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?>, UInt, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSuSgGSuAC16SequenceContainsVy_AC5ValueVy_SaySuGGAKy_SuGGSbGAUy_SbGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?>, UInt, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?>, UInt, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?>, UInt, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?>, UInt, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?>, UInt, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSuSgGSuAC16SequenceContainsVy_AC5ValueVy_SaySuGGAIy_SuGGSbGMd);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>> and conformance <> PredicateExpressions.SequenceContains<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?>, UInt, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?> and conformance <> PredicateExpressions.KeyPath<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?> and conformance <> PredicateExpressions.KeyPath<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?> and conformance <> PredicateExpressions.KeyPath<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSuSgGMd);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?> and conformance <> PredicateExpressions.KeyPath<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>> and conformance <> PredicateExpressions.SequenceContains<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>> and conformance <> PredicateExpressions.SequenceContains<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>> and conformance <> PredicateExpressions.SequenceContains<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_SaySuGGAC8VariableVy_SuGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.Value<[UInt]> and conformance <A> PredicateExpressions.Value<A>();
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<UInt> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_SuGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>> and conformance <> PredicateExpressions.SequenceContains<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<[UInt]> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<[UInt]> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<[UInt]> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SaySuGGMd);
    lazy protocol witness table accessor for type [UInt] and conformance <A> [A]();
    lazy protocol witness table accessor for type [UInt] and conformance <A> [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<[UInt]> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [UInt] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [UInt] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySuGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [UInt] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySuGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC8NotEqualVy_AKy_SiGAC5ValueVy_SiGGSbGAVy_SbGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC8NotEqualVy_AIy_SiGAC5ValueVy_SiGGSbGMd);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>> and conformance <> PredicateExpressions.NotEqual<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?> and conformance <> PredicateExpressions.KeyPath<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?> and conformance <> PredicateExpressions.KeyPath<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?> and conformance <> PredicateExpressions.KeyPath<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGMd);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?> and conformance <> PredicateExpressions.KeyPath<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>> and conformance <> PredicateExpressions.NotEqual<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>> and conformance <> PredicateExpressions.NotEqual<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>> and conformance <> PredicateExpressions.NotEqual<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO8NotEqualVy_AC8VariableVy_SiGAC5ValueVy_SiGGMd);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<Int> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_SiGMd);
    lazy protocol witness table accessor for type PredicateExpressions.Value<Int> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>> and conformance <> PredicateExpressions.NotEqual<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<Int> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<Int> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<Int> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SiGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<Int> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAL10DBSnapshotCGSgGArC21SequenceContainsWhereVy_AKy_ARGAC5EqualVy_AIy_AKy_AQGs6UInt64VGAC5ValueVy_A0_GGGSbGA3_y_SbGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAJ10DBSnapshotCGSgGApC21SequenceContainsWhereVy_AIy_APGAC5EqualVy_AGy_AIy_AOGs6UInt64VGAC5ValueVy_AZGGGSbGMd);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>> and conformance <> PredicateExpressions.SequenceContainsWhere<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?> and conformance <> PredicateExpressions.KeyPath<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?> and conformance <> PredicateExpressions.KeyPath<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?> and conformance <> PredicateExpressions.KeyPath<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAH10DBSnapshotCGSgGMd);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?> and conformance <> PredicateExpressions.KeyPath<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>> and conformance <> PredicateExpressions.SequenceContainsWhere<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>> and conformance <> PredicateExpressions.SequenceContainsWhere<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>> and conformance <> PredicateExpressions.SequenceContainsWhere<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI10DBSnapshotCGGAC5EqualVy_AC7KeyPathVy_AGy_AJGs6UInt64VGAC5ValueVy_ASGGGMd);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<[DBSnapshot]> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI10DBSnapshotCGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance <> PredicateExpressions.Equal<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>> and conformance <> PredicateExpressions.SequenceContainsWhere<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance <> PredicateExpressions.Equal<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance <> PredicateExpressions.Equal<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance <> PredicateExpressions.Equal<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<UInt64> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance <> PredicateExpressions.Equal<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64> and conformance <> PredicateExpressions.KeyPath<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64> and conformance <> PredicateExpressions.KeyPath<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64> and conformance <> PredicateExpressions.KeyPath<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGMd);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSnapshot> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64> and conformance <> PredicateExpressions.KeyPath<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<UInt64> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<UInt64> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<UInt64> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_s6UInt64VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<UInt64> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC16SequenceContainsVy_AC5ValueVy_SaySiGGAKy_SiGGSbGAUy_SbGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC16SequenceContainsVy_AC5ValueVy_SaySiGGAIy_SiGGSbGMd);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>> and conformance <> PredicateExpressions.SequenceContains<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>> and conformance <> PredicateExpressions.SequenceContains<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>> and conformance <> PredicateExpressions.SequenceContains<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>> and conformance <> PredicateExpressions.SequenceContains<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_SaySiGGAC8VariableVy_SiGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.Value<[Int]> and conformance <A> PredicateExpressions.Value<A>();
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<Int> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_SiGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>> and conformance <> PredicateExpressions.SequenceContains<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<[Int]> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<[Int]> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<[Int]> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SaySiGGMd);
    lazy protocol witness table accessor for type [Int] and conformance <A> [A]();
    lazy protocol witness table accessor for type [Int] and conformance <A> [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<[Int]> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Int] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [Int] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Int] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Int] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [Int] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Int] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Int] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?>, Date, PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?>, Date, PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?>, Date, PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4DateVSgGAqC10ComparisonVy_AKy_AQGAC5ValueVy_AQGGSbGAXy_SbGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?>, Date, PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?>, Date, PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?>, Date, PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?>, Date, PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?>, Date, PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4DateVSgGAoC10ComparisonVy_AIy_AOGAC5ValueVy_AOGGSbGMd);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>> and conformance <> PredicateExpressions.Comparison<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?>, Date, PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?> and conformance <> PredicateExpressions.KeyPath<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?> and conformance <> PredicateExpressions.KeyPath<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?> and conformance <> PredicateExpressions.KeyPath<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4DateVSgGMd);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?> and conformance <> PredicateExpressions.KeyPath<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>> and conformance <> PredicateExpressions.Comparison<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>> and conformance <> PredicateExpressions.Comparison<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>> and conformance <> PredicateExpressions.Comparison<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO10ComparisonVy_AC8VariableVy_AA4DateVGAC5ValueVy_AIGGMd);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<Date> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_AA4DateVGMd);
    lazy protocol witness table accessor for type PredicateExpressions.Value<Date> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>> and conformance <> PredicateExpressions.Comparison<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<Date> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<Date> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<Date> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_AA4DateVGMd);
    v1 = MEMORY[0x277CC9578];
    _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, 255, MEMORY[0x277CC9578]);
    _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, 255, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<Date> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?>, UUID, PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?>, UUID, PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?>, UUID, PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVSgGAqGy_AIy_AOSayAL10DBSnapshotCGSgGAvC11ConjunctionVy_AC5EqualVy_AKy_AQGAC5ValueVy_AQGGAC21SequenceContainsWhereVy_AKy_AVGA0_y_AIy_AKy_AUGs6UInt64VGA3_y_A11_GGGGSbGSbGA3_y_SbGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?>, UUID, PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?>, UUID, PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?>, UUID, PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?>, UUID, PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?>, UUID, PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVSgGAoEy_AGy_AMSayAJ10DBSnapshotCGSgGAtC11ConjunctionVy_AC5EqualVy_AIy_AOGAC5ValueVy_AOGGAC21SequenceContainsWhereVy_AIy_ATGAZy_AGy_AIy_ASGs6UInt64VGA1_y_A9_GGGGSbGSbGMd);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?>, UUID, PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?> and conformance <> PredicateExpressions.KeyPath<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?> and conformance <> PredicateExpressions.KeyPath<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?> and conformance <> PredicateExpressions.KeyPath<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVSgGMd);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?> and conformance <> PredicateExpressions.KeyPath<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAJ10DBSnapshotCGSgGApC11ConjunctionVy_AC5EqualVy_AIy_AA4UUIDVGAC5ValueVy_AXGGAC21SequenceContainsWhereVy_AIy_APGAVy_AGy_AIy_AOGs6UInt64VGA_y_A7_GGGGSbGMd);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>> and conformance <> PredicateExpressions.Conjunction<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>> and conformance <> PredicateExpressions.Conjunction<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>> and conformance <> PredicateExpressions.Conjunction<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>> and conformance <> PredicateExpressions.Conjunction<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC5EqualVy_AC8VariableVy_AA4UUIDVGAC5ValueVy_AKGGAC21SequenceContainsWhereVy_AIy_Say9MomentsUI10DBSnapshotCGGAGy_AC7KeyPathVy_AIy_AUGs6UInt64VGANy_A0_GGGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>> and conformance <> PredicateExpressions.Equal<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>> and conformance <> PredicateExpressions.SequenceContainsWhere<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>> and conformance <> PredicateExpressions.Conjunction<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>> and conformance <> PredicateExpressions.Equal<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>> and conformance <> PredicateExpressions.Equal<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>> and conformance <> PredicateExpressions.Equal<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC8VariableVy_AA4UUIDVGAC5ValueVy_AIGGMd);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<UUID> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_AA4UUIDVGMd);
    lazy protocol witness table accessor for type PredicateExpressions.Value<UUID> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>> and conformance <> PredicateExpressions.Equal<A, B>);
  }

  return result;
}

uint64_t _s9MomentsUI8DBWriterCACScAAAWlTm_0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Comparison<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance <> PredicateExpressions.Comparison<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Comparison<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance <> PredicateExpressions.Comparison<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Comparison<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance <> PredicateExpressions.Comparison<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO10ComparisonVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<UInt64> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Comparison<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance <> PredicateExpressions.Comparison<A, B>);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t closure #1 in DBWriter.publishDraft(rendered:total:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in DBWriter.publishDraft(rendered:total:)(a1, v4, v5, v6, v7, v8);
}

uint64_t outlined init with take of DBSnapshotAnalytics.SnapshotEvent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DBMotionActivityModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseImage:steps:motionTypeRawValue:subtitle:renderState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, unint64_t a13, unsigned __int8 *a14)
{
  v59 = a8;
  v69 = a7;
  v62 = a6;
  v63 = a5;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v53 - v19;
  v55 = type metadata accessor for DateInterval();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v68 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v56 = *a14;
  v60 = v23;
  v27 = *(v23 + 16);
  v57 = &v53 - v28;
  v66 = a1;
  v27();
  v58 = v26;
  v65 = a2;
  v61 = v22;
  (v27)(v26, a2, v22);
  v29 = a3;
  if (a3)
  {
    v54 = a3;
  }

  else
  {
    if (one-time initialization token for zero != -1)
    {
      swift_once();
    }

    v54 = static ScreenSize.zero;
  }

  v30 = v59;
  v31 = v67;
  v32 = *(a4 + 16);
  v64 = v29;
  if (v32)
  {
    v71 = MEMORY[0x277D84F90];
    v33 = v29;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
    v34 = v71;
    v35 = *(v71 + 16);
    v36 = 32;
    do
    {
      v37 = *(a4 + v36);
      v71 = v34;
      v38 = *(v34 + 24);
      if (v35 >= v38 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v35 + 1, 1);
        v34 = v71;
      }

      *(v34 + 16) = v35 + 1;
      *(v34 + v35 + 32) = v37;
      ++v36;
      ++v35;
      --v32;
    }

    while (v32);

    v31 = v67;
  }

  else
  {
    v39 = v29;

    v34 = MEMORY[0x277D84F90];
  }

  outlined init with copy of DateInterval?(v69, v20);
  v40 = v53;
  v41 = *(v53 + 48);
  v42 = v55;
  if (v41(v20, 1, v55) == 1)
  {
    DateInterval.init()();
    if (v41(v20, 1, v42) != 1)
    {
      outlined destroy of UTType?(v20, &_s10Foundation12DateIntervalVSgMd);
    }
  }

  else
  {
    (*(v40 + 32))(v68, v20, v42);
  }

  if (v30)
  {
    v43 = v30;
    v44 = specialized static DBAssetModel.baseImage2DB(_:)(v30);
  }

  else
  {
    v44 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v43 = 0;
  }

  v45 = 0xE000000000000000;
  if (v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = 0xE000000000000000;
  }

  if (v62)
  {
    v47 = v63;
  }

  else
  {
    v47 = 0;
  }

  if (a13)
  {
    v48 = a12;
  }

  else
  {
    v48 = 0;
  }

  if (a13)
  {
    v45 = a13;
  }

  v70 = v56;
  v49 = (*(v31 + 424))(v57, v58, v54, v34, v47, v46, v68, v44, a9, a10, a11 & 1, v48, v45, &v70);

  outlined destroy of UTType?(v69, &_s10Foundation12DateIntervalVSgMd);
  v50 = v61;
  v51 = *(v60 + 8);
  v51(v65, v61);
  v51(v66, v50);
  return v49;
}

uint64_t static DBMotionActivityModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue);
  v3 = *(a1 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue + 8);
  result = *(a2 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue + 8);
  if ((v3 & 1) == 0)
  {
    return (*v2 == *(a2 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue)) & ~result;
  }

  return result;
}

void DBMotionActivityModel.motionActivity.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue + 8);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue);
  }

  *a1 = v3;
  *(a1 + 8) = v2;
}

uint64_t DBMotionActivityModel.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_subtitle);

  return v1;
}

MomentsUI::DBMotionActivityModel::CodingKeys_optional __swiftcall DBMotionActivityModel.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBMotionActivityModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t DBMotionActivityModel.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x7370657473;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x656C746974627573;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DBMotionActivityModel.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000012;
  v4 = 0x80000002165764C0;
  v5 = 0xE800000000000000;
  if (v2 == 1)
  {
    v5 = 0x80000002165764C0;
  }

  else
  {
    v3 = 0x656C746974627573;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x7370657473;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0xD000000000000012;
  if (*a2 != 1)
  {
    v8 = 0x656C746974627573;
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7370657473;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DBMotionActivityModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DBMotionActivityModel.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBMotionActivityModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DBMotionActivityModel.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DBMotionActivityModel.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DBMotionActivityModel.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x80000002165764C0;
  v5 = 0xD000000000000012;
  if (v2 != 1)
  {
    v5 = 0x656C746974627573;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7370657473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance DBMotionActivityModel.CodingKeys()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x656C746974627573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7370657473;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance DBMotionActivityModel.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized DBMotionActivityModel.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBMotionActivityModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBMotionActivityModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DBMotionActivityModel.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI21DBMotionActivityModelC10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for DBMotionActivityModel();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v17[0]) = 0;
    *(v1 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_steps) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v17[0]) = 1;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v10 = v1 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue;
    *v10 = v9;
    *(v10 + 8) = v11 & 1;
    LOBYTE(v17[0]) = 2;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v14 = (v1 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_subtitle);
    *v14 = v12;
    v14[1] = v15;
    KeyedDecodingContainer.superDecoder()();
    v3 = DBAssetModel.init(from:)(v17);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t DBMotionActivityModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI21DBMotionActivityModelC10CodingKeysOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-1] - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v9[0]) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    LOBYTE(v9[0]) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v9[0]) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    KeyedEncodingContainer.superEncoder()();
    DBAssetModel.encode(to:)(v9);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return (*(v4 + 8))(v6, v3);
}

Swift::Int DBMotionActivityModel.metadataHash.getter()
{
  Hasher.init()();
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue);
    Hasher._combine(_:)(1u);
    MEMORY[0x21CE937C0](v1);
  }

  return Hasher.finalize()();
}

uint64_t DBMotionActivityModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:steps:motionTypeRawValue:subtitle:renderState:)(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t, uint64_t), void (**a4)(char *, uint64_t, uint64_t, uint64_t), unsigned int (**a5)(uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, char a11, uint64_t a12, void (**a13)(void), unsigned __int8 *a14)
{
  swift_allocObject();
  v19 = specialized DBMotionActivityModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:steps:motionTypeRawValue:subtitle:renderState:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11 & 1, a12, a13, a14);

  return v19;
}

uint64_t DBMotionActivityModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:steps:motionTypeRawValue:subtitle:renderState:)(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t, uint64_t), void (**a4)(char *, uint64_t, uint64_t, uint64_t), unsigned int (**a5)(uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, char a11, uint64_t a12, void (**a13)(void), unsigned __int8 *a14)
{
  v15 = specialized DBMotionActivityModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:steps:motionTypeRawValue:subtitle:renderState:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11 & 1, a12, a13, a14);

  return v15;
}

uint64_t DBMotionActivityModel.deinit()
{
  v0 = DBAssetModel.deinit();

  return v0;
}

uint64_t DBMotionActivityModel.__deallocating_deinit()
{
  DBAssetModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized DBMotionActivityModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:steps:motionTypeRawValue:subtitle:renderState:)(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t, uint64_t), void (**a4)(char *, uint64_t, uint64_t, uint64_t), unsigned int (**a5)(uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, unsigned __int8 a11, uint64_t a12, void (**a13)(void), unsigned __int8 *a14)
{
  v15 = v14;
  *&v127 = a8;
  v116 = a7;
  *&v128 = a6;
  v122 = a5;
  v121 = a4;
  v120 = a3;
  v118 = a13;
  v117 = a12;
  LODWORD(v114) = a11;
  v112 = a10;
  v125 = *v15;
  v108 = type metadata accessor for Date();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v104 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v19 - 8);
  v126 = &v97 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
  MEMORY[0x28223BE20](v21 - 8);
  v124 = &v97 - v22;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd);
  v111 = *(v123 - 8);
  v23 = MEMORY[0x28223BE20](v123);
  v99 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v98 = &v97 - v25;
  v26 = type metadata accessor for DateInterval();
  v115 = v26;
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v113 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for UUID();
  v30 = MEMORY[0x28223BE20](v29);
  v119 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v97 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v97 - v35;
  LODWORD(v110) = *a14;
  *(v15 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_steps) = a9;
  v37 = v15 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue;
  *v37 = v112;
  *(v37 + 8) = v114 & 1;
  v38 = (v15 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_subtitle);
  v39 = v118;
  *v38 = v117;
  v38[1] = v39;
  v114 = v40;
  v41 = *(v40 + 16);
  v106 = a1;
  v41(&v97 - v35, a1, v29);
  v105 = a2;
  v41(v34, a2, v29);
  v117 = type metadata accessor for DBAssetModel();
  static DBAssetModel.subscript.getter(v125, &v130);
  LODWORD(v118) = v130;
  v103 = v27;
  v42 = *(v27 + 16);
  v43 = v113;
  v42(v113, v116, v26);
  *(v15 + 16) = 0;
  v112 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id;
  v101 = v36;
  v41((v15 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id), v36, v29);
  v109 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID;
  v102 = v34;
  v125 = v29;
  v41((v15 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID), v34, v29);
  *(v15 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass) = v118;
  v44 = v120;
  *(v15 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport) = v120;
  *(v15 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_supportedStyles) = v121;
  v45 = (v15 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);
  v46 = v128;
  *v45 = v122;
  v45[1] = v46;
  v42((v15 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval), v43, v115);
  v47 = v44;
  v48 = specialized Dictionary.compactMapValues<A>(_:)(v127);
  v100 = 0;
  *(v15 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel__assetDataID) = v48;
  v112 = MEMORY[0x277D84F90];
  *(v15 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children) = MEMORY[0x277D84F90];
  v49 = v48;
  swift_beginAccess();
  v109 = v15;
  *(v15 + 16) = v110;
  v50 = v127 + 64;
  v51 = 1 << *(v127 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & *(v127 + 64);
  v54 = (v51 + 63) >> 6;
  v122 = (v114 + 48);
  v118 = (v114 + 32);
  v121 = (v111 + 56);
  v120 = (v111 + 48);
  v110 = v49;

  v55 = 0;
  v56 = v126;
  v117 = v54;
  while (v53)
  {
    v57 = v55;
LABEL_9:
    v58 = __clz(__rbit64(v53)) | (v57 << 6);
    v59 = *(*(v127 + 56) + 8 * v58);
    v60 = *(*v59 + 192);
    *&v128 = *(*(v127 + 48) + 16 * v58 + 8);

    v60(v61);
    v62 = v125;
    if ((*v122)(v56, 1, v125) == 1)
    {
      outlined destroy of UTType?(v56, &_s10Foundation4UUIDVSgMd);
      v63 = v124;
      v64 = v123;
      (*v121)(v124, 1, 1, v123);
    }

    else
    {
      v65 = *v118;
      (*v118)(v119, v126, v62);
      v64 = v123;
      v66 = *(v123 + 48);
      v54 = v117;
      v63 = v124;
      v65();
      v56 = v126;
      *(v63 + v66) = v59;
      (*v121)(v63, 0, 1, v64);
    }

    v53 &= v53 - 1;

    if ((*v120)(v63, 1, v64) == 1)
    {
      outlined destroy of UTType?(v63, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
      v55 = v57;
    }

    else
    {
      v67 = v98;
      outlined init with take of (UUID, DBAssetData)(v63, v98);
      outlined init with take of (UUID, DBAssetData)(v67, v99);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v112 + 16) + 1, 1, v112);
      }

      v69 = *(v112 + 16);
      v68 = *(v112 + 24);
      v70 = v111;
      if (v69 >= v68 >> 1)
      {
        v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v68 > 1, v69 + 1, 1, v112);
        v70 = v111;
        v112 = v72;
      }

      v71 = v112;
      *(v112 + 16) = v69 + 1;
      outlined init with take of (UUID, DBAssetData)(v99, v71 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v69);
      v55 = v57;
    }
  }

  while (1)
  {
    v57 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      __break(1u);

      v95 = *(v114 + 8);
      v96 = v125;
      v95(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMR[v112], v125);
      v95(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMR[v109], v96);

      (*(v103 + 8))(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMR[v50], v115);
      swift_deallocPartialClassInstance();
      __break(1u);
      goto LABEL_25;
    }

    if (v57 >= v54)
    {
      break;
    }

    v53 = *(v50 + 8 * v57);
    ++v55;
    if (v53)
    {
      goto LABEL_9;
    }
  }

  v73 = v114;
  if (*(v112 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI11DBAssetDataCGMd);
    v74 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v74 = MEMORY[0x277D84F98];
  }

  v75 = v109;
  v129 = v74;

  v77 = v100;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v76, 1, &v129);
  if (!v77)
  {

    v78 = v129;
    v79 = swift_allocObject();
    *(v79 + 16) = v78;
    v80 = (v75 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataLookup);
    *v80 = partial apply for closure #3 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    v80[1] = v79;
    v81 = swift_allocObject();
    *(v81 + 16) = v78;
    v82 = (v75 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataGet);
    *v82 = partial apply for closure #4 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    v82[1] = v81;
    v83 = (v75 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetURLGet);
    *v83 = closure #3 in DBAssetModel.init(from:);
    v83[1] = 0;
    v84 = swift_allocObject();
    *(v84 + 16) = v110;
    swift_beginAccess();
    v128 = *v80;
    swift_beginAccess();
    v127 = *v82;
    swift_beginAccess();
    v85 = *v83;
    v86 = v83[1];
    v87 = v75 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetData;
    *v87 = partial apply for closure #6 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    *(v87 + 8) = v84;
    v88 = v127;
    *(v87 + 16) = v128;
    *(v87 + 32) = v88;
    *(v87 + 48) = v85;
    *(v87 + 56) = v86;

    v89 = v104;
    static Date.now.getter();
    v90 = *(v103 + 8);
    v91 = v115;
    v90(v116, v115);
    v92 = *(v73 + 8);
    v93 = v125;
    v92(v105, v125);
    v92(v106, v93);
    v90(v113, v91);
    v92(v102, v93);
    v92(v101, v93);
    (*(v107 + 32))(v75 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_creationDate, v89, v108);
    return v75;
  }

LABEL_25:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t specialized DBMotionActivityModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBMotionActivityModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for DBMotionActivityModel()
{
  result = type metadata singleton initialization cache for DBMotionActivityModel;
  if (!type metadata singleton initialization cache for DBMotionActivityModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay9MomentsUI11MapLocationCG_AF0F9ViewModel_ps5NeverOTg5(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v7;
    }

    v19 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v8 = 0;
    v7 = v19;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CE93180](v8, a3);
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a3 + 8 * v8 + 32);
      }

      v17 = v10;
      a1(&v18, &v17);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v11 = v18;
      v19 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        v15 = v18;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v11 = v15;
        v7 = v19;
      }

      *(v7 + 16) = v13 + 1;
      *(v7 + 16 * v13 + 32) = v11;
      ++v8;
      if (v9 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_So10CKRecordIDCs5NeverOTg5(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = a3;
    v28 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v25 = v6 + 56;
    v7 = _HashTable.startBucket.getter();
    v8 = 0;
    v9 = *(v6 + 36);
    v22 = v6 + 64;
    v23 = v4;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v6 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v25 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (v9 != *(v6 + 36))
      {
        goto LABEL_24;
      }

      v12 = (*(v6 + 48) + 16 * v7);
      v13 = v12[1];
      v26[0] = *v12;
      v26[1] = v13;

      a1(&v27, v26);
      if (v3)
      {
        goto LABEL_28;
      }

      v14 = v6;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 = 1 << *(v6 + 32);
      if (v7 >= v10)
      {
        goto LABEL_25;
      }

      v15 = *(v25 + 8 * v11);
      if ((v15 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      if (v9 != *(v6 + 36))
      {
        goto LABEL_27;
      }

      v16 = v15 & (-2 << (v7 & 0x3F));
      if (v16)
      {
        v10 = __clz(__rbit64(v16)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v11 << 6;
        v18 = v11 + 1;
        v19 = (v22 + 8 * v11);
        while (v18 < (v10 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            outlined consume of Set<UIScene>.Index._Variant(v7, v9, 0);
            v10 = __clz(__rbit64(v20)) + v17;
            goto LABEL_19;
          }
        }

        outlined consume of Set<UIScene>.Index._Variant(v7, v9, 0);
LABEL_19:
        v6 = v14;
      }

      ++v8;
      v7 = v10;
      v3 = 0;
      if (v8 == v23)
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
LABEL_28:

    __break(1u);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOs5NeverOTg5(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v37 = a2;
  v35 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  MEMORY[0x28223BE20](v35);
  v40 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v43 = MEMORY[0x277D84F90];
    v9 = v5;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v41 = v43;
    v39 = a3 + 56;
    v10 = _HashTable.startBucket.getter();
    v11 = 0;
    v33 = v9 + 32;
    v34 = v9;
    v31 = a3 + 64;
    v32 = v7;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a3 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v39 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_23;
      }

      v15 = *(a3 + 36);
      v16 = a3;
      v17 = (*(a3 + 48) + 16 * v10);
      v18 = v17[1];
      v42[0] = *v17;
      v42[1] = v18;

      v36(v42);
      v38 = v3;
      if (v3)
      {
        goto LABEL_27;
      }

      v19 = v41;
      v43 = v41;
      v21 = *(v41 + 16);
      v20 = *(v41 + 24);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
        v19 = v43;
      }

      *(v19 + 16) = v21 + 1;
      v22 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v41 = v19;
      (*(v34 + 32))(v19 + v22 + *(v34 + 72) * v21, v40, v35);
      v12 = 1 << *(v16 + 32);
      if (v10 >= v12)
      {
        goto LABEL_24;
      }

      v23 = *(v39 + 8 * v14);
      if ((v23 & (1 << v10)) == 0)
      {
        goto LABEL_25;
      }

      a3 = v16;
      if (v15 != *(v16 + 36))
      {
        goto LABEL_26;
      }

      v24 = v23 & (-2 << (v10 & 0x3F));
      if (v24)
      {
        v12 = __clz(__rbit64(v24)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v13 = v32;
      }

      else
      {
        v25 = v14 << 6;
        v26 = v14 + 1;
        v13 = v32;
        v27 = (v31 + 8 * v14);
        while (v26 < (v12 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            outlined consume of Set<UIScene>.Index._Variant(v10, v15, 0);
            v12 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        outlined consume of Set<UIScene>.Index._Variant(v10, v15, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      v3 = v38;
      if (v11 == v13)
      {
        return v41;
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

uint64_t static MapsUtilities.canFitIn(viewStyle:mapViewModels:)(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  v10 = 6;
  v3 = static MapsUtilities.normalizedPositionsWithin(viewStyle:mapViewModels:)(&v10, a2);
  if (!v3)
  {
    return 2;
  }

  if (v2 <= 3)
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        goto LABEL_6;
      }

LABEL_10:

      return 0;
    }

LABEL_11:
    v4 = specialized closure #1 in _NativeDictionary.filter(_:);
    v5 = specialized closure #1 in _NativeDictionary.filter(_:);
    goto LABEL_13;
  }

  if (v2 == 4)
  {
    v4 = specialized closure #1 in _NativeDictionary.filter(_:);
    v5 = specialized closure #1 in _NativeDictionary.filter(_:);
    goto LABEL_13;
  }

  if (v2 == 5)
  {
    goto LABEL_11;
  }

  if (v2 != 6)
  {
    goto LABEL_10;
  }

LABEL_6:
  v4 = specialized closure #1 in _NativeDictionary.filter(_:);
  v5 = specialized closure #1 in _NativeDictionary.filter(_:);
LABEL_13:
  v7 = v3;
  v8 = *(specialized _NativeDictionary.filter(_:)(v3, v4, v5) + 16);

  v9 = *(v7 + 16);

  return v8 == v9;
}

uint64_t static MapsUtilities.dedupedConsolidatedMapViewModels(viewport:viewStyle:mapViewModels:)(_BYTE *a1, uint64_t a2, double a3, double a4)
{
  if (!a2)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  if (v5 < 2)
  {
    return 0;
  }

  LOBYTE(v93) = *a1;
  static MapsUtilities.viewportRegion(for:mapViewModels:)(&v93, a2, &v94);
  if (v96)
  {
    return 0;
  }

  v88 = v95;
  v91 = v94;
  v10 = MEMORY[0x277D84F90];
  v11 = 0;
  v93 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI18HashableCoordinateV_AC12MapViewModel_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  do
  {
    v94 = *(a2 + 32 + 16 * v11);
    v12 = v94;
    closure #1 in static MapsUtilities.dedupedConsolidatedMapViewModels(viewport:viewStyle:mapViewModels:)(&v93, &v94);
    ++v11;
  }

  while (v5 != v11);
  v13 = v93;
  v94 = v91;
  v95 = v88;
  v93 = v10;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v14 = v93;
  v15 = (a2 + 40);
  do
  {
    v16 = *(v15 - 1);
    v17 = *v15;
    ObjectType = swift_getObjectType();
    v19 = *(v17 + 32);
    v20 = v16;
    v21 = v19(ObjectType, v17);
    v22 = (*(*v21 + 168))(v21);
    v23 = (*(*v21 + 192))();

    v93 = v14;
    v25 = *(v14 + 16);
    v24 = *(v14 + 24);
    if (v25 >= v24 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
      v14 = v93;
    }

    *(v14 + 16) = v25 + 1;
    v26 = v14 + 16 * v25;
    *(v26 + 32) = v22;
    *(v26 + 40) = v23;
    v15 += 2;
    --v5;
  }

  while (v5);
  v27 = specialized static MapsUtilities.normalizedPositionsWithin(region:coordinates:)(&v94, v14);

  v29 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MomentsUI18HashableCoordinateV_SD4KeysVyAFSo7CGPointV_GTt0g5(v28);
  v93 = v29;
  v30 = (v29 + 16);
  if (!*(v29 + 16))
  {
    v86 = MEMORY[0x277D84F90];
    goto LABEL_48;
  }

  v31 = 25.0 / a3;
  v86 = MEMORY[0x277D84F90];
  v8 = &unk_2811A6000;
  v32 = 25.0 / a4;
  do
  {
    while (1)
    {
      v33 = _HashTable.startBucket.getter();
      if (v33 == 1 << *(v29 + 32))
      {
        goto LABEL_48;
      }

      specialized Set.subscript.getter(v33, *(v29 + 36), v29, &v94);
      if (!*v30)
      {
        goto LABEL_80;
      }

      v34 = v94;
      v35 = _HashTable.startBucket.getter();
      specialized Set._Variant.remove(at:)(v35, *(v29 + 36), &v94);
      if (*(v27 + 16))
      {
        v36 = specialized __RawDictionaryStorage.find<A>(_:)(*&v34, *(&v34 + 1));
        if (v37)
        {
          break;
        }
      }

      if (one-time initialization token for viewModel != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static CommonLogger.viewModel);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 134217984;
        v94 = v34;
        *(v41 + 4) = HashableCoordinate.hashValue.getter();
        _os_log_impl(&dword_21607C000, v39, v40, "[dedupedConsolidatedMapViewModels] coordinate has invalid valu hash=%ld", v41, 0xCu);
        MEMORY[0x21CE94770](v41, -1, -1);
      }

      v29 = v93;
      v30 = (v93 + 16);
      if (!*(v93 + 16))
      {
        goto LABEL_48;
      }
    }

    v42 = (*(v27 + 56) + 16 * v36);
    v43 = *v42;
    v44 = v42[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI18HashableCoordinateVGMd);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_21658CA50;
    *(v45 + 32) = v34;
    v85 = v45;
    v46 = v93 + 56;
    v47 = 1 << *(v93 + 32);
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    else
    {
      v48 = -1;
    }

    v49 = v48 & *(v93 + 56);
    v50 = (v47 + 63) >> 6;
    v89 = v93;

    v51 = 0;
    while (v49)
    {
LABEL_36:
      v56 = __clz(__rbit64(v49));
      v49 &= v49 - 1;
      v62 = *(*(v89 + 48) + ((v51 << 10) | (16 * v56)));
      v57 = *(*(v89 + 48) + ((v51 << 10) | (16 * v56)) + 8);
      if (!*(v27 + 16))
      {
        goto LABEL_30;
      }

      v87 = *(*(v89 + 48) + ((v51 << 10) | (16 * v56)));
      v58 = specialized __RawDictionaryStorage.find<A>(_:)(*&v62, *(&v62 + 1));
      v62 = v87;
      if ((v59 & 1) == 0)
      {
        goto LABEL_30;
      }

      v60 = (*(v27 + 56) + 16 * v58);
      if (vabdd_f64(v43, *v60) < v31 && vabdd_f64(v44, v60[1]) < v32)
      {
        v53 = *(v85 + 16);
        v52 = *(v85 + 24);
        v54 = v53 + 1;
        if (v53 >= v52 >> 1)
        {
          v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v85);
          v54 = v53 + 1;
          v62 = v87;
          v85 = v61;
        }

        *(v85 + 16) = v54;
        *(v85 + 16 * v53 + 32) = v62;
LABEL_30:
        specialized Set._Variant.remove(_:)(&v94, *&v62, v57);
      }
    }

    while (1)
    {
      v55 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        goto LABEL_81;
      }

      if (v55 >= v50)
      {
        break;
      }

      v49 = *(v46 + 8 * v55);
      ++v51;
      if (v49)
      {
        v51 = v55;
        goto LABEL_36;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v86[2] + 1, 1, v86);
    }

    v64 = v86[2];
    v63 = v86[3];
    if (v64 >= v63 >> 1)
    {
      v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v86);
    }

    v86[2] = v64 + 1;
    v86[v64 + 4] = v85;
    v29 = v93;
    v30 = (v93 + 16);
  }

  while (*(v93 + 16));
LABEL_48:

  v65 = v86;
  v90 = v86[2];
  if (!v90)
  {

    v8 = MEMORY[0x277D84F90];
LABEL_78:

    return v8;
  }

  v66 = 0;
  v8 = MEMORY[0x277D84F90];
  while (2)
  {
    if (v66 < v65[2])
    {
      v68 = v86[v66 + 4];
      v69 = *(v68 + 16);
      if (v69 != 1)
      {
        goto LABEL_59;
      }

      if (v13[2])
      {
        v70 = specialized __RawDictionaryStorage.find<A>(_:)(*(v68 + 32), *(v68 + 40));
        if (v71)
        {
          v72 = v13[7] + 16 * v70;
          v73 = *(v72 + 8);
          v74 = *v72;
          goto LABEL_72;
        }

        v69 = *(v68 + 16);
LABEL_59:
        if (v69)
        {
LABEL_60:

          v75 = (v68 + 40);
          v76 = MEMORY[0x277D84F90];
          do
          {
            if (v13[2])
            {
              v77 = specialized __RawDictionaryStorage.find<A>(_:)(*(v75 - 1), *v75);
              if (v78)
              {
                v92 = *(v13[7] + 16 * v77);
                v79 = v92;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v76[2] + 1, 1, v76);
                }

                v81 = v76[2];
                v80 = v76[3];
                if (v81 >= v80 >> 1)
                {
                  v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1, v76);
                }

                v76[2] = v81 + 1;
                *&v76[2 * v81 + 4] = v92;
              }
            }

            v75 += 2;
            --v69;
          }

          while (v69);

          v65 = v86;
        }

        else
        {
          v76 = MEMORY[0x277D84F90];
        }

        v74 = static MapsUtilities.combinedMapViewModels(_:)(v76);
        v73 = v82;

        if (v74)
        {
LABEL_72:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
          }

          v84 = v8[2];
          v83 = v8[3];
          if (v84 >= v83 >> 1)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1, v8);
          }

          v8[2] = v84 + 1;
          v67 = &v8[2 * v84];
          v67[4] = v74;
          v67[5] = v73;
        }

        if (++v66 == v90)
        {

          goto LABEL_78;
        }

        continue;
      }

      v69 = 1;
      goto LABEL_60;
    }

    break;
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t static MapsUtilities.normalizedPositionsWithin(viewStyle:mapViewModels:)(unsigned __int8 *a1, void *a2)
{
  if (a2 && (v3 = a2[2]) != 0)
  {
    v4 = *a1;
    if (v3 == 1)
    {
      v5 = a2[4];
      v6 = a2[5];
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 32);

      v9 = v5;
      v10 = v8(ObjectType, v6);

      v11 = (*(*v10 + 168))();

      v12 = v9;
      v13 = v8(ObjectType, v6);

      v14 = (*(*v13 + 192))();

      v15 = 0.003;
      v16 = 0.003;
LABEL_16:
      v106 = v11 + fabs(v15 * 0.25) * 0.5;
      v29 = v14 - fabs(v16) * 0.5;
      v30 = v11 + fabs(v15 * 0.5) * 0.5;
      v22 = MEMORY[0x277D84F98];
      v31 = a2 + 5;
      v105 = v11 + fabs(v15) * 0.5;
      v107 = v4;
      while (1)
      {
        v34 = *(v31 - 1);
        v33 = *v31;
        if (v4 == 2)
        {
          break;
        }

        if (v4 == 5)
        {
          v58 = swift_getObjectType();
          v59 = *(v33 + 32);
          v37 = v34;
          v60 = v59(v58, v33);
          v61 = v59(v58, v33);
          v62 = (*(*v61 + 168))(v61);
          v63 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v62 longitude:(*(*v61 + 192))()];

          [v63 coordinate];
          v65 = v64;
          v67 = v66;

          v46 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory(vabdd_f64(v67, v29) / v16, vabdd_f64(v65, v106) / (v15 * 0.25));
          v48 = v68;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v108[0] = v22;
          v50 = specialized __RawDictionaryStorage.find<A>(_:)(v60);
          v71 = v22[2];
          v72 = (v70 & 1) == 0;
          v54 = __OFADD__(v71, v72);
          v73 = v71 + v72;
          if (v54)
          {
            goto LABEL_59;
          }

          v74 = v70;
          if (v22[3] < v73)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v73, isUniquelyReferenced_nonNull_native);
            v50 = specialized __RawDictionaryStorage.find<A>(_:)(v60);
            v4 = v107;
            if ((v74 & 1) != (v75 & 1))
            {
              goto LABEL_64;
            }

LABEL_40:
            v22 = v108[0];
            if ((v74 & 1) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_17;
          }

          v4 = v107;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_40;
          }

          v102 = v50;
          specialized _NativeDictionary.copy()();
          v50 = v102;
          v22 = v108[0];
          if ((v74 & 1) == 0)
          {
LABEL_41:
            v22[(v50 >> 6) + 8] |= 1 << v50;
            *(v22[6] + 8 * v50) = v60;
            v97 = (v22[7] + 16 * v50);
            *v97 = v46;
            *(v97 + 1) = v48;

            v98 = v22[2];
            v54 = __OFADD__(v98, 1);
            v96 = v98 + 1;
            if (v54)
            {
              goto LABEL_62;
            }

            goto LABEL_47;
          }
        }

        else
        {
          if (v4 == 4)
          {
            break;
          }

          v76 = swift_getObjectType();
          v77 = *(v33 + 32);
          v37 = v34;
          v78 = v77(v76, v33);
          v79 = v77(v76, v33);
          v80 = (*(*v79 + 168))(v79);
          v81 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v80 longitude:(*(*v79 + 192))()];

          [v81 coordinate];
          v83 = v82;
          v85 = v84;

          v46 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory(vabdd_f64(v85, v29) / v16, vabdd_f64(v83, v105) / v15);
          v48 = v86;
          v87 = swift_isUniquelyReferenced_nonNull_native();
          v108[0] = v22;
          v50 = specialized __RawDictionaryStorage.find<A>(_:)(v78);
          v89 = v22[2];
          v90 = (v88 & 1) == 0;
          v54 = __OFADD__(v89, v90);
          v91 = v89 + v90;
          if (v54)
          {
            goto LABEL_58;
          }

          v92 = v88;
          if (v22[3] < v91)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v91, v87);
            v50 = specialized __RawDictionaryStorage.find<A>(_:)(v78);
            v4 = v107;
            if ((v92 & 1) != (v93 & 1))
            {
LABEL_64:
              type metadata accessor for MapLocation();
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }

LABEL_45:
            v22 = v108[0];
            if ((v92 & 1) == 0)
            {
              goto LABEL_46;
            }

            goto LABEL_17;
          }

          v4 = v107;
          if (v87)
          {
            goto LABEL_45;
          }

          v103 = v50;
          specialized _NativeDictionary.copy()();
          v50 = v103;
          v22 = v108[0];
          if ((v92 & 1) == 0)
          {
LABEL_46:
            v22[(v50 >> 6) + 8] |= 1 << v50;
            *(v22[6] + 8 * v50) = v78;
            v99 = (v22[7] + 16 * v50);
            *v99 = v46;
            *(v99 + 1) = v48;

            v100 = v22[2];
            v54 = __OFADD__(v100, 1);
            v96 = v100 + 1;
            if (v54)
            {
              goto LABEL_61;
            }

            goto LABEL_47;
          }
        }

LABEL_17:
        v32 = (v22[7] + 16 * v50);
        *v32 = v46;
        *(v32 + 1) = v48;

LABEL_18:
        v31 += 2;
        if (!--v3)
        {

          return v22;
        }
      }

      v35 = swift_getObjectType();
      v36 = *(v33 + 32);
      v37 = v34;
      v38 = v36(v35, v33);
      v39 = v36(v35, v33);
      v40 = (*(*v39 + 168))(v39);
      v41 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v40 longitude:(*(*v39 + 192))()];

      [v41 coordinate];
      v43 = v42;
      v45 = v44;

      v46 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory(vabdd_f64(v45, v29) / v16, vabdd_f64(v43, v30) / (v15 * 0.5));
      v48 = v47;
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v108[0] = v22;
      v50 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
      v52 = v22[2];
      v53 = (v51 & 1) == 0;
      v54 = __OFADD__(v52, v53);
      v55 = v52 + v53;
      if (v54)
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v56 = v51;
      if (v22[3] < v55)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v55, v49);
        v50 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
        v4 = v107;
        if ((v56 & 1) != (v57 & 1))
        {
          goto LABEL_64;
        }

LABEL_35:
        v22 = v108[0];
        if ((v56 & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_17;
      }

      v4 = v107;
      if (v49)
      {
        goto LABEL_35;
      }

      v101 = v50;
      specialized _NativeDictionary.copy()();
      v50 = v101;
      v22 = v108[0];
      if ((v56 & 1) == 0)
      {
LABEL_36:
        v22[(v50 >> 6) + 8] |= 1 << v50;
        *(v22[6] + 8 * v50) = v38;
        v94 = (v22[7] + 16 * v50);
        *v94 = v46;
        *(v94 + 1) = v48;

        v95 = v22[2];
        v54 = __OFADD__(v95, 1);
        v96 = v95 + 1;
        if (v54)
        {
          goto LABEL_60;
        }

LABEL_47:
        v22[2] = v96;
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    static MapsUtilities.boundingRegion(for:)(v23, v108);
    if ((v109 & 1) == 0)
    {
      v15 = *&v108[2];
      v11 = *v108;
      v14 = *&v108[1];
      v16 = *&v108[3] * 1.3;
      goto LABEL_16;
    }

    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static CommonLogger.viewModel);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v108[0] = v28;
      *v27 = 136446466;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, 0x800000021657FCF0, v108);
      *(v27 + 12) = 2048;

      *(v27 + 14) = v3;

      _os_log_impl(&dword_21607C000, v25, v26, "MapsUtilities.%{public}s: Unable to set a bounding region (mapViewModels count=%ld. Returning nil", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x21CE94770](v28, -1, -1);
      MEMORY[0x21CE94770](v27, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    if (one-time initialization token for viewModel != -1)
    {
LABEL_63:
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static CommonLogger.viewModel);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v108[0] = v21;
      *v20 = 136446210;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, 0x800000021657FCF0, v108);
      _os_log_impl(&dword_21607C000, v18, v19, "MapsUtilities.%{public}s: No map view models provided. Returning nil.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x21CE94770](v21, -1, -1);
      MEMORY[0x21CE94770](v20, -1, -1);
    }
  }

  return 0;
}

double MapsUtilities.BoundingRegion.topLeftCoordinate.getter()
{
  __asm { FMOV            V2.2D, #0.5 }

  *&result = *&vaddq_f64(*v0, vmulq_f64(vabsq_f64(v0[1]), _Q2));
  return result;
}

CGPoint __swiftcall MapsUtilities.BoundingRegion.normalizedPositionFromTopLeft(coordinate:)(__C::CLLocationCoordinate2D coordinate)
{
  destructiveProjectEnumData for SuggestionRanking.VisibilityCategory(vabdd_f64(coordinate.longitude, v1[1] - fabs(v1[3]) * 0.5) / v1[3], vabdd_f64(coordinate.latitude, *v1 + fabs(v1[2]) * 0.5) / v1[2]);
  result.y = v3;
  result.x = v2;
  return result;
}

MomentsUI::MapsUtilities::BoundingRegion __swiftcall MapsUtilities.BoundingRegion.multipliedLongitudeBy(_:)(Swift::Double a1)
{
  v3 = v2[2];
  v4 = v2[3] * a1;
  v5 = *v2;
  *v1 = *v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  result.latitudeDelta = *&v5;
  result.centerLongitude = v3;
  result.centerLatitude = v4;
  return result;
}

MomentsUI::MapsUtilities::BoundingRegion __swiftcall MapsUtilities.BoundingRegion.init(centerLatitude:centerLongitude:latitudeDelta:longitudeDelta:)(Swift::Double centerLatitude, Swift::Double centerLongitude, Swift::Double latitudeDelta, Swift::Double longitudeDelta)
{
  *v4 = centerLatitude;
  v4[1] = centerLongitude;
  v4[2] = latitudeDelta;
  v4[3] = longitudeDelta;
  result.longitudeDelta = longitudeDelta;
  result.latitudeDelta = latitudeDelta;
  result.centerLongitude = centerLongitude;
  result.centerLatitude = centerLatitude;
  return result;
}

void static MapsUtilities.boundingRegion(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static MapsUtilities.naiveBoundingRegion(for:)(a1, v14);
  v4 = v14[0];
  v3 = v14[1];
  v6 = v15;
  v5 = v16;
  v7 = v17;
  if (v17)
  {
    *a2 = v14[0];
    *(a2 + 8) = v3;
    *(a2 + 16) = v6;
    *(a2 + 24) = v5;
  }

  else
  {
    if (v15 > v16)
    {
      v8 = v15;
    }

    else
    {
      v8 = v16;
    }

    if (v8 >= 0.003)
    {
      *a2 = *v14 + v8 * -0.125;
      *(a2 + 8) = v3;
      *(a2 + 16) = v8 * 1.4 * 1.125;
      *(a2 + 24) = v8 * 1.4;
    }

    else
    {
      if (one-time initialization token for viewModel != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static CommonLogger.viewModel);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v14[0] = v13;
        *v12 = 136446722;
        *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000021657FD30, v14);
        *(v12 + 12) = 2048;
        *(v12 + 14) = v8;
        *(v12 + 22) = 2048;
        *(v12 + 24) = 0x3F689374BC6A7EFALL;
        _os_log_impl(&dword_21607C000, v10, v11, "MapsUtilities.%{public}s Auto-selected span length(%f) is shorter than minimum zoom length (%f). Setting zoom length to the minimum.", v12, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x21CE94770](v13, -1, -1);
        MEMORY[0x21CE94770](v12, -1, -1);
      }

      *a2 = v4;
      *(a2 + 8) = v3;
      *(a2 + 16) = xmmword_21659B070;
    }
  }

  *(a2 + 32) = v7;
}

void static MapsUtilities.naiveBoundingRegion(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && (v2 = *(a1 + 16), v2 >= 2))
  {
    v3 = (a1 + 40);
    v4 = MEMORY[0x277D84F90];
    v25 = *(a1 + 16);
    do
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 32);
      v9 = v5;
      v10 = v8(ObjectType, v6);
      v11 = (*(*v10 + 168))(v10);
      v12 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v11 longitude:(*(*v10 + 192))()];

      [v12 coordinate];
      v14 = v13;
      v16 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      }

      v18 = *(v4 + 2);
      v17 = *(v4 + 3);
      if (v18 >= v17 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v4);
      }

      *(v4 + 2) = v18 + 1;
      v19 = &v4[16 * v18 + 32];
      *v19 = v14;
      *(v19 + 1) = v16;
      v3 += 2;
      --v2;
    }

    while (v2);
    v20 = [objc_opt_self() polygonWithCoordinates:v4 + 32 count:v25];

    [v20 boundingMapRect];
    v28 = MKCoordinateRegionForMapRect(v27);
    latitude = v28.center.latitude;
    longitude = v28.center.longitude;
    latitudeDelta = v28.span.latitudeDelta;
    longitudeDelta = v28.span.longitudeDelta;

    *a2 = latitude;
    *(a2 + 8) = longitude;
    *(a2 + 16) = latitudeDelta;
    *(a2 + 24) = longitudeDelta;
    *(a2 + 32) = 0;
  }

  else
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1;
  }
}

void static MapsUtilities.viewportRegion(for:mapViewModels:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2 || *(a2 + 16) < 2uLL)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 1;
    return;
  }

  v4 = *a1;
  static MapsUtilities.boundingRegion(for:)(a2, v10);
  v5 = v10[1];
  v7 = *&v10[2];
  v6 = v11;
  if (v12)
  {
    *a3 = v10[0];
    *(a3 + 8) = v5;
    *(a3 + 16) = v7;
    *(a3 + 24) = v6;
    *(a3 + 32) = 1;
    return;
  }

  v8 = v11 * 1.3;
  if (v4 != 2)
  {
    if (v4 == 5)
    {
      v9 = 0.25;
      goto LABEL_11;
    }

    if (v4 != 4)
    {
      *a3 = v10[0];
      *(a3 + 8) = v5;
      *(a3 + 16) = v7;
      goto LABEL_13;
    }
  }

  v9 = 0.5;
LABEL_11:
  *a3 = v10[0];
  *(a3 + 8) = v5;
  *(a3 + 16) = v7 * v9;
LABEL_13:
  *(a3 + 24) = v8;
  *(a3 + 32) = 0;
}

char *static MapsUtilities.combinedMapViewModels(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v64 - v3;
  v5 = type metadata accessor for DateInterval();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v64 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v64 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v64 - v16;
  static MapsUtilities.naiveBoundingRegion(for:)(a1, v81);
  if (v82)
  {
    return 0;
  }

  v18 = a1[2];
  if (!v18)
  {
    return 0;
  }

  v72 = v4;
  v70 = v9;
  v76 = v15;
  v73 = v12;
  v19 = v81[0];
  v20 = a1[4];
  v21 = a1[5];
  ObjectType = swift_getObjectType();
  v23 = *(v21 + 32);
  v77 = v20;
  *&v74 = ObjectType;
  v24 = ObjectType;
  v25 = v6;
  *&v75 = v21;
  v26 = v23(v24, v21);
  (*(*v26 + 216))();

  DateInterval.init()();
  type metadata accessor for MapLocation();
  v27 = swift_allocObject();
  UUID.init()();
  *(v27 + OBJC_IVAR____TtC9MomentsUI11MapLocation_mapItem) = 0;
  v78 = v5;
  *(v27 + OBJC_IVAR____TtC9MomentsUI11MapLocation_pinType) = 0;
  *(v27 + OBJC_IVAR____TtC9MomentsUI11MapLocation_confidenceLevel) = 0;
  *(v27 + OBJC_IVAR____TtC9MomentsUI11MapLocation_horizontalUncertainty) = 0;
  *(v27 + OBJC_IVAR____TtC9MomentsUI11MapLocation_clusterCount) = 1;
  v28 = (v27 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v27 + OBJC_IVAR____TtC9MomentsUI11MapLocation_city);
  *v29 = 0;
  v29[1] = 0;
  *(v27 + OBJC_IVAR____TtC9MomentsUI11MapLocation_latitude) = v19;
  *(v27 + OBJC_IVAR____TtC9MomentsUI11MapLocation_longitude) = *(&v19 + 1);
  v71 = *(v6 + 16);
  v71(v27 + OBJC_IVAR____TtC9MomentsUI11MapLocation_dateInterval, v17, v78);
  v30 = OBJC_IVAR____TtC9MomentsUI11MapLocation_mapItem;
  swift_beginAccess();
  *(v27 + v30) = 0;
  v31 = OBJC_IVAR____TtC9MomentsUI11MapLocation_pinType;
  swift_beginAccess();
  *(v27 + v31) = 4;
  v32 = v77;

  v33 = *(v6 + 8);
  v33(v17, v78);
  v34 = *&v32[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport];
  if (!v34 || (v69 = v6 + 16, (v35 = *&v32[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles]) == 0))
  {

    return 0;
  }

  v66 = v33;
  v67 = v6 + 8;
  v36 = *(v75 + 8);
  v37 = *(v36 + 24);
  v68 = v34;

  v38 = v72;
  v37(v74, v36);
  v39 = v78;
  if ((*(v25 + 48))(v38, 1, v78) == 1)
  {

    outlined destroy of DateInterval?(v38);
    return 0;
  }

  v65 = v35;
  (*(v25 + 32))(v76, v38, v39);
  (*(v75 + 56))(v81, v74);
  v74 = v81[1];
  v75 = v81[0];
  v42 = v82;
  *&v79[0] = MEMORY[0x277D84F90];
  v43 = a1 + 5;
  do
  {
    v44 = *(v43 - 1);
    v45 = *v43;
    v46 = swift_getObjectType();
    v47 = *(v45 + 32);
    v48 = v44;
    v47(v46, v45);

    MEMORY[0x21CE92260]();
    if (*((*&v79[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v79[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v43 += 2;
    --v18;
  }

  while (v18);
  v49 = *&v79[0];
  v50 = v73;
  v51 = v78;
  v52 = v71;
  v71(v73, v76, v78);
  if (v49 >> 62)
  {
    v53 = __CocoaSet.count.getter();
  }

  else
  {
    v53 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v54 = v68;
  if (v53 <= 0)
  {

    v40 = 0;
    v61 = v66;
  }

  else
  {
    v55 = v70;
    v52(v70, v50, v51);
    v79[1] = v74;
    v79[0] = v75;
    v80 = v42;
    v56 = objc_allocWithZone(type metadata accessor for MutableMapViewModel());
    v57 = v50;
    v58 = v54;
    v59 = v65;

    v40 = specialized MutableMapViewModel.init(viewport:styles:location:dateInterval:pinGlyph:pinColor:)(v58, v59, v27, v55, 0, v79);

    if (v53 == 1)
    {
    }

    else
    {
      MEMORY[0x28223BE20](v60);
      *(&v64 - 4) = v58;
      *(&v64 - 3) = v59;
      *(&v64 - 2) = v57;
      v62 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay9MomentsUI11MapLocationCG_AF0F9ViewModel_ps5NeverOTg5(partial apply for closure #1 in MutableMapViewModel.init(viewport:styles:representativeLocation:represenativeColor:locations:dateInterval:), (&v64 - 6), v49);

      v63 = OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_mapViewModels;
      swift_beginAccess();
      *&v40[v63] = v62;
      v51 = v78;
    }

    v61 = v66;

    MutableMapViewModel.adjustTitleAndSubtitleIfNeeded()();
  }

  v61(v76, v51);
  v61(v73, v51);
  return v40;
}

void closure #1 in static MapsUtilities.dedupedConsolidatedMapViewModels(viewport:viewStyle:mapViewModels:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 32);
  v7 = v6(ObjectType, v4);
  v8 = (*(*v7 + 168))(v7);
  v9 = (*(*v7 + 192))();

  v10 = *a1;
  if (*(*a1 + 16))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9);
    if (v12)
    {
      v13 = *(v10 + 56) + 16 * v11;
      v29 = *(v13 + 8);
      v14 = one-time initialization token for viewModel;
      v15 = *v13;
      if (v14 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static CommonLogger.viewModel);
      v17 = v15;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v27 = swift_slowAlloc();
        *v27 = 134217984;
        v20 = swift_getObjectType();
        v28 = v19;
        v21 = (*(v29 + 32))(v20);
        (*(*v21 + 168))(v21);
        (*(*v21 + 192))();

        *(v27 + 4) = HashableCoordinate.hashValue.getter();

        _os_log_impl(&dword_21607C000, v18, v28, "[dedupedConsolidatedMapViewModels] Duplicate pin location detected at coordinate hash=%ld", v27, 0xCu);
        MEMORY[0x21CE94770](v27, -1, -1);
      }

      else
      {

        v18 = v17;
      }
    }
  }

  v22 = v6(ObjectType, v4);
  v23 = (*(*v22 + 168))(v22);
  v24 = (*(*v22 + 192))();

  v25 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, v4, isUniquelyReferenced_nonNull_native, v23, v24);
  *a1 = v30;
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy9MomentsUI11MapLocationCSo7CGPointVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_9i4UI11kl5C_So7M4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjLIsgnndzo_Tf1nc_n03_s9i106UI13MapsUtilitiesV8canFitIn9viewStyle13mapViewModelsSbSgAA05AssetK5ModelC0I0O_SayAA03MapkN0_pGSgtFZSbAA0O8l6C3key_vM16V5valuet_tXEfU1_Tf1nnc_nTm(v12, v7, v5, a3);
  result = MEMORY[0x21CE94770](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

unint64_t *specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
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
    v11 = v10 | (v5 << 6);
LABEL_11:
    v14 = *(*(a3 + 56) + 16 * v11 + 8);
    if (v14 > 0.375 && v14 < 0.625)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v10 = v9 | (v5 << 6);
LABEL_11:
    v13 = *(*(a3 + 56) + 16 * v10 + 8);
    if (v13 > 0.25 && v13 < 0.45)
    {
      *(result + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v4, a3);
      }
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= ((v6 + 63) >> 6))
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v4, a3);
    }

    v12 = *(a3 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v8 = (v12 - 1) & v12;
      v10 = __clz(__rbit64(v12)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

{
  v4 = 0;
  v5 = 0;
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
    v11 = v10 | (v5 << 6);
LABEL_11:
    v14 = *(*(a3 + 56) + 16 * v11 + 8);
    if (v14 > 0.1 && v14 < 0.75)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy9MomentsUI11MapLocationCSo7CGPointVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_9i4UI11kl5C_So7M4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjLIsgnndzo_Tf1nc_n03_s9i106UI13MapsUtilitiesV8canFitIn9viewStyle13mapViewModelsSbSgAA05AssetK5ModelC0I0O_SayAA03MapkN0_pGSgtFZSbAA0O8l6C3key_vM16V5valuet_tXEfU1_Tf1nnc_nTm(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MomentsUI11MapLocationCSo7CGPointVGMd);
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v33 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = (*(v4 + 56) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    Hasher.init(_seed:)();
    v21 = *(*v17 + 264);

    v21(v34);
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v9 + 48) + 8 * v25) = v17;
    v30 = (*(v9 + 56) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    v10 = v33;
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
      v33 = (v15 - 1) & v15;
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

unint64_t specialized Set._Variant.remove(at:)@<X0>(unint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((a1 & 0x8000000000000000) != 0 || (v9 = *v4, 1 << *(*v4 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v9 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v9 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = *v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
LABEL_10:
    specialized _NativeSet.copy()();
    v9 = v11;
  }

  *a3 = *(*(v9 + 48) + 16 * a1);
  result = specialized _NativeSet._delete(at:)(a1);
  *v4 = v11;
  return result;
}

uint64_t specialized Set.subscript.getter@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
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
    *a4 = *(*(a3 + 48) + 16 * result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x21CE93070](a1, a2, v7);
      type metadata accessor for UIScene();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for UIScene();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v15;
    v8 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
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

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t specialized static MapsUtilities.normalizedPositionsWithin(region:coordinates:)(double *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

  v3 = a1[2];
  v4 = a1[3];
  v5 = *a1 + fabs(v3) * 0.5;
  v6 = a1[1] - fabs(v4) * 0.5;
  v7 = (a2 + 40);
  v8 = MEMORY[0x277D84F98];
  while (1)
  {
    v10 = *(v7 - 1);
    v11 = *v7;
    v12 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory(vabdd_f64(*v7, v6) / v4, vabdd_f64(v10, v5) / v3);
    v14 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
    v18 = v8[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (v8[3] < v21)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, isUniquelyReferenced_nonNull_native);
      v16 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      if (v22)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v28 = v16;
    specialized _NativeDictionary.copy()();
    v16 = v28;
    if (v22)
    {
LABEL_3:
      v9 = (v8[7] + 16 * v16);
      *v9 = v12;
      *(v9 + 1) = v14;
      goto LABEL_4;
    }

LABEL_11:
    v8[(v16 >> 6) + 8] |= 1 << v16;
    v24 = (v8[6] + 16 * v16);
    *v24 = v10;
    v24[1] = v11;
    v25 = (v8[7] + 16 * v16);
    *v25 = v12;
    *(v25 + 1) = v14;
    v26 = v8[2];
    v20 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v20)
    {
      goto LABEL_18;
    }

    v8[2] = v27;
LABEL_4:
    v7 += 2;
    if (!--v2)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t type metadata accessor for UIScene()
{
  result = lazy cache variable for type metadata for UIScene;
  if (!lazy cache variable for type metadata for UIScene)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIScene);
  }

  return result;
}

void *LabeledImageView.init(viewModel:style:)(void *a1, char *a2)
{
  swift_getObjectType();
  v5 = *a2;
  v6 = OBJC_IVAR____TtC9MomentsUI16LabeledImageView_contentView;
  *&v2[v6] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v7 = OBJC_IVAR____TtC9MomentsUI16LabeledImageView_imageView;
  *&v2[v7] = [objc_allocWithZone(type metadata accessor for RoundImageView()) init];
  v8 = OBJC_IVAR____TtC9MomentsUI16LabeledImageView_backgroundImageView;
  v9 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v9 setContentMode_];
  *&v2[v8] = v9;
  v10 = OBJC_IVAR____TtC9MomentsUI16LabeledImageView_spotlightView;
  *&v2[v10] = [objc_allocWithZone(type metadata accessor for RouteSpotlightView()) init];
  *&v2[OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel] = 0;
  *&v2[OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel] = 0;
  *&v2[OBJC_IVAR____TtC9MomentsUI16LabeledImageView_tertiaryLabel] = 0;
  *&v2[OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primarySecondaryLabelStack] = 0;
  *&v2[OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryTertiaryLabelStack] = 0;
  *&v2[OBJC_IVAR____TtC9MomentsUI16LabeledImageView_reusedStackView] = 0;
  v11 = *MEMORY[0x277D76560];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v39._object = 0x800000021657FD50;
  v14._countAndFlagsBits = 0x7974697669746341;
  v14._object = 0xEE00746573734120;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v39._countAndFlagsBits = 0xD00000000000002ELL;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v39);

  v17 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
  v18 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v19 = a1;
  *&v2[v17] = [v18 init];
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
  v21 = type metadata accessor for UUID();
  (*(*(v21 - 8) + 56))(&v2[v20], 1, 1, v21);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v2[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = v5;
  v38.receiver = v2;
  v38.super_class = type metadata accessor for AssetView();
  v22 = objc_msgSendSuper2(&v38, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v23 = MEMORY[0x277D85000];
  v24 = *((*MEMORY[0x277D85000] & *v22) + 0xE8);
  v25 = v22;
  v24();
  AssetView.setFallBackView()();
  [v25 setIsAccessibilityElement_];
  v26 = [v25 accessibilityTraits];
  if ((v11 & ~v26) != 0)
  {
    v27 = v11;
  }

  else
  {
    v27 = 0;
  }

  [v25 setAccessibilityTraits_];
  v28 = MEMORY[0x21CE91FC0](v16._countAndFlagsBits, v16._object);

  [v25 setAccessibilityLabel_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_21658CA50;
  v30 = type metadata accessor for UITraitUserInterfaceStyle();
  v31 = MEMORY[0x277D74BF0];
  *(v29 + 32) = v30;
  *(v29 + 40) = v31;
  v32 = v25;
  MEMORY[0x21CE92C30](v29, sel_handleTraitChange);
  swift_unknownObjectRelease();

  [v32 handleTraitChange];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];

  [v32 setClipsToBounds_];
  v37 = v5;
  v33 = *((*v23 & *v19) + 0x108);
  v34 = v32;
  v35 = v33(&v37);
  (*((*v23 & *v34) + 0x260))(v35);
  LabeledImageView.addConstraints()();
  (*((*v23 & *v34) + 0x270))();

  return v22;
}

uint64_t LabeledImageView.updateViews(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](LabeledImageView.updateViews(for:), v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);

  return MEMORY[0x2822009F8](LabeledImageView.updateViews(for:), v4, v3);
}

uint64_t LabeledImageView.updateViews(for:)()
{
  v1 = v0[3];
  v0[7] = *(v1 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_imageView);
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x278);
  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = LabeledImageView.updateViews(for:);
  v4 = v0[2];

  return v6(v4);
}

{
  v1 = v0[9];
  v2 = v0[7];

  v3 = *(v2 + OBJC_IVAR____TtC9MomentsUI14RoundImageView_imageView);
  if (v1)
  {
    v1 = v0[9];
    v4 = v3;
    v5 = [v1 imageWithRenderingMode_];
  }

  else
  {
    v6 = v3;
    v5 = 0;
  }

  [v3 setImage_];

  v7 = v0[1];

  return v7();
}

uint64_t LabeledImageView.handleTraitLight()(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, a2, v9);
}

Swift::Void __swiftcall LabeledImageView.hideViews()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView) setHidden_];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x158))(v1);
  [v2 setHidden_];
}

Swift::Void __swiftcall LabeledImageView.showViews()()
{
  AssetView.showViews()();
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x158))();
  [v1 setHidden_];
}

uint64_t LabeledImageView.updateAndShowViews()()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](LabeledImageView.updateAndShowViews(), v3, v2);
}

{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel);
  v3 = MEMORY[0x277D85000];
  if (v2)
  {
    v4 = *((*MEMORY[0x277D85000] & *v1) + 0x188);
    v5 = v2;
    v6 = v4();
    if (v7)
    {
      v8 = MEMORY[0x21CE91FC0](v6);
    }

    else
    {
      v8 = 0;
    }

    [v5 setText_];

    v9 = v0[2];
  }

  else
  {
    v9 = v0[2];
  }

  v0[6] = v1;
  v10 = (*((*v3 & *v9) + 0x1B8))();
  if (v10)
  {
    v11 = v10;
    v12 = *(v0[2] + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel);
    if (v12)
    {
      v13 = v12;
      [v13 setAttributedText_];
    }
  }

  v14 = (*((*v3 & *v0[2]) + 0x1B0))();
  if (v15)
  {
    v16 = v15;
    v17 = *(v0[2] + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel);
    if (v17)
    {
      v18 = v14;
      v19 = v17;
      v20 = MEMORY[0x21CE91FC0](v18, v16);

      [v19 setText_];
    }

    else
    {
    }
  }

  v21 = v0[2];
  v22 = *(v21 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_tertiaryLabel);
  if (v22)
  {
    v23 = *((*v3 & *v21) + 0x1E8);
    v24 = v22;
    v25 = v23();
    if (v26)
    {
      v27 = MEMORY[0x21CE91FC0](v25);
    }

    else
    {
      v27 = 0;
    }

    [v24 setText_];

    v21 = v0[2];
  }

  v28 = [v21 traitCollection];
  v29 = [v28 userInterfaceStyle];

  v30 = *((*v3 & *v21) + 0x280);
  v33 = (v30 + *v30);
  v31 = swift_task_alloc();
  v0[7] = v31;
  *v31 = v0;
  v31[1] = LabeledImageView.updateAndShowViews();

  return v33(v29);
}

{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](LabeledImageView.updateAndShowViews(), v3, v2);
}

{
  v1 = *(v0 + 16);

  (*((*MEMORY[0x277D85000] & *v1) + 0xF0))(v2);
  v3 = *(v0 + 8);

  return v3();
}

id LabeledImageView.contentView.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI16LabeledImageView_contentView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void LabeledImageView.primaryLabelConfiguration.getter()
{
  v0 = [objc_opt_self() labelColor];
  [v0 colorWithAlphaComponent_];

  v1 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v2 = [v1 fontDescriptorWithSymbolicTraits_];

  if (v2)
  {
    [objc_opt_self() fontWithDescriptor:v2 size:0.0];
  }

  v3 = objc_opt_self();
  v4 = [v3 preferredFontForTextStyle_];
  v5 = [v4 fontDescriptor];
  v6 = [v5 fontDescriptorWithSymbolicTraits_];

  if (v6)
  {
    v7 = [v3 fontWithDescriptor:v6 size:0.0];
  }

  else
  {
    __break(1u);
  }
}

void LabeledImageView.secondaryLabelConfiguration.getter(SEL *a1)
{
  [objc_opt_self() *a1];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle_];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];

  if (v4)
  {
    v5 = [v1 fontWithDescriptor:v4 size:0.0];

    specialized static CommonTheme.Font.subheadlineMedium.getter();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall LabeledImageView.addSubViews()()
{
  [v0 addSubview_];
  v1 = [v0 addSubview_];
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x158);
  v4 = (v3)(v1);
  [v0 addSubview_];

  v5 = v3();
  [v5 addSubview_];

  v6 = *((*v2 & *v0) + 0x268);

  v6();
}

Swift::Void __swiftcall LabeledImageView.updateStackView()()
{
  v2 = OBJC_IVAR____TtC9MomentsUI16LabeledImageView_reusedStackView;
  v3 = [*(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_reusedStackView) removeFromSuperview];
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v6 = v5(&v105, v3);
  if (((1 << v105) & 0x34) == 0)
  {
    if (((1 << v105) & 0x83) != 0)
    {
      v7 = *&v2[v0];
      if (v7)
      {
        [v7 setHidden_];
      }

      v8 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel);
      if (v8)
      {
        [v8 setHidden_];
      }

      v9 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel);
      if (v9)
      {

        [v9 setHidden_];
      }

      return;
    }

    if ((*((*v4 & *v0) + 0x1C8))(v6))
    {
      v33 = (*((*v4 & *v0) + 0x190))();
      v103 = v34;
      v104 = v33;
      v25 = v35;
      v37 = v36;
      v38 = (v5)(&v105);
      v39 = v25;
      if (v105 != 6)
      {
        v5(&v105, v38);
        if (v105 == 8)
        {
          v39 = v25;
        }

        else
        {
          v39 = v103;
        }
      }

      v40 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
      [v40 setFont_];
      [v40 setTextColor_];
      [v40 setPreferredVibrancy_];
      [v40 setLineBreakMode_];
      [v40 setNumberOfLines_];
      [v40 setTextAlignment_];
      [v40 setAdjustsFontForContentSizeCategory_];
      [v40 setMaximumContentSizeCategory_];
      v41 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel);
      *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel) = v40;
      v42 = v40;

      v43 = *((*v4 & *v0) + 0x158);
      v44 = v43();
      v102 = v42;
      [v44 addSubview_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI18LabelConfigurationVGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21658CA60;
      *(inited + 32) = (*((*v4 & *v0) + 0x1C0))();
      *(inited + 40) = v46;
      *(inited + 48) = v47;
      *(inited + 56) = v48;
      *(inited + 64) = (*((*v4 & *v0) + 0x1F0))();
      *(inited + 72) = v49;
      *(inited + 80) = v50;
      *(inited + 88) = v51;
      v52 = specialized static LabeledImageView.createVerticalLabelStack(with:alignment:)(inited, 3);
      v1 = v53;
      swift_setDeallocating();
      v54 = swift_arrayDestroy();
      v55 = (v43)(v54);
      [v55 addSubview_];

      v56 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryTertiaryLabelStack);
      *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryTertiaryLabelStack) = v52;
      v26 = v52;

      if (v1 >> 62)
      {
        goto LABEL_59;
      }

      v57 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v57)
      {
LABEL_86:
        v59 = (v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel);
        v96 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel);
        *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel) = 0;

        goto LABEL_87;
      }

LABEL_26:
      if ((v1 & 0xC000000000000001) != 0)
      {
LABEL_66:
        v86 = MEMORY[0x21CE93180](0, v1);
        v59 = (v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel);
        v87 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel);
        *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel) = v86;

        if (v57 != 1)
        {
          v63 = MEMORY[0x21CE93180](1, v1);
          goto LABEL_31;
        }

        goto LABEL_87;
      }

      v19 = v1 & 0xFFFFFFFFFFFFFF8;
      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v58 = *(v1 + 32);
        v59 = (v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel);
        v60 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel);
        *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel) = v58;
        v61 = v58;

        if (v57 != 1)
        {
          if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
          {
            v63 = *(v1 + 40);
LABEL_31:
            v64 = v63;

LABEL_88:
            v97 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_tertiaryLabel);
            *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_tertiaryLabel) = v64;

            if (*v59)
            {
              v98 = *v59;
              [v98 setHidden_];
            }

            goto LABEL_91;
          }

LABEL_73:
          __break(1u);
          while (1)
          {
            __break(1u);
LABEL_75:
            v22 = v62;
            if (!v62)
            {
              goto LABEL_76;
            }

LABEL_13:
            if ((v19 & 0xC000000000000001) != 0)
            {
              goto LABEL_56;
            }

            v26 = (v19 & 0xFFFFFFFFFFFFFF8);
            if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v27 = *(v19 + 32);
              v28 = (v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel);
              v29 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel);
              *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel) = v27;
              v30 = v27;

              if (v22 == 1)
              {
                goto LABEL_77;
              }

              if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
              {
                v31 = *(v19 + 40);
                goto LABEL_18;
              }

              goto LABEL_69;
            }

            __break(1u);
LABEL_59:
            v84 = __CocoaSet.count.getter();
            if ((v84 & 0x8000000000000000) == 0)
            {
              v57 = v84;
              if (v84)
              {
                goto LABEL_26;
              }

              goto LABEL_86;
            }

            __break(1u);
LABEL_61:
            v19 = __CocoaSet.count.getter();
            if (!v19)
            {
              goto LABEL_62;
            }

LABEL_37:
            v22 = 0;
            v57 = v25 & 0xC000000000000001;
            v1 = v25 & 0xFFFFFFFFFFFFFF8;
            v2 = &unk_27821E000;
            do
            {
              if (v57)
              {
                v74 = MEMORY[0x21CE93180](v22, v25);
              }

              else
              {
                if (v22 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_53;
                }

                v74 = *(v25 + 8 * v22 + 32);
              }

              v75 = v74;
              v76 = (v22 + 1);
              if (__OFADD__(v22, 1))
              {
                __break(1u);
LABEL_53:
                __break(1u);
                goto LABEL_54;
              }

              v26 = (*((*MEMORY[0x277D85000] & *v0) + 0x158))();
              [v26 addSubview_];

              ++v22;
            }

            while (v76 != v19);
            if ((v19 & 0x8000000000000000) != 0)
            {
              __break(1u);
              goto LABEL_66;
            }

            v2 = v101;
            if (v57)
            {
              goto LABEL_70;
            }

            if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_73;
            }

            v77 = *(v25 + 32);
            v78 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel);
            *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel) = v77;
            v79 = v77;

            if (v19 == 1)
            {
              goto LABEL_63;
            }

            if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
            {
              v80 = *(v25 + 40);
              goto LABEL_51;
            }
          }
        }

LABEL_87:

        v64 = 0;
        goto LABEL_88;
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      v88 = MEMORY[0x21CE93180](0, v25);
      v89 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel);
      *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel) = v88;

      if (v19 != 1)
      {
        v80 = MEMORY[0x21CE93180](1, v25);
LABEL_51:
        v81 = v80;

        goto LABEL_64;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI18LabelConfigurationVGMd);
      v65 = swift_initStackObject();
      *(v65 + 16) = xmmword_21658CA60;
      *(v65 + 32) = (*((*v4 & *v0) + 0x190))();
      *(v65 + 40) = v66;
      *(v65 + 48) = v67;
      *(v65 + 56) = v68;
      *(v65 + 64) = (*((*v4 & *v0) + 0x1C0))();
      *(v65 + 72) = v69;
      *(v65 + 80) = v70;
      *(v65 + 88) = v71;
      v72 = (v5)(&v105);
      if (v105 == 6)
      {
        v73 = 1;
      }

      else
      {
        v5(&v105, v72);
        v73 = v105 == 8;
      }

      v25 = specialized static LabeledImageView.createLabels(with:preferLargeFont:centered:)(v65, v73, 1);
      swift_setDeallocating();
      swift_arrayDestroy();
      v101 = v2;
      if (v25 >> 62)
      {
        goto LABEL_61;
      }

      v19 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_37;
      }

LABEL_62:
      v85 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel);
      *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel) = 0;

      v2 = v101;
    }

LABEL_63:

    v81 = 0;
LABEL_64:
    v25 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel);
    *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel) = v81;
LABEL_91:

    v99 = *&v2[v0];
    if (v99)
    {
      [v99 setHidden_];
    }

    v100 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel);
    if (v100)
    {
      [v100 setHidden_];
    }

    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI18LabelConfigurationVGMd);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_21658CA60;
  *(v10 + 32) = (*((*v4 & *v0) + 0x190))();
  *(v10 + 40) = v11;
  *(v10 + 48) = v12;
  *(v10 + 56) = v13;
  *(v10 + 64) = (*((*v4 & *v0) + 0x1C0))();
  *(v10 + 72) = v14;
  *(v10 + 80) = v15;
  *(v10 + 88) = v16;
  v17 = specialized static LabeledImageView.createVerticalLabelStack(with:alignment:)(v10, 1);
  v19 = v18;
  swift_setDeallocating();
  v20 = swift_arrayDestroy();
  v21 = (*((*v4 & *v0) + 0x158))(v20);
  v22 = v17;
  [v21 addSubview_];

  v23 = *&v2[v0];
  *&v2[v0] = v22;

  v24 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primarySecondaryLabelStack);
  *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primarySecondaryLabelStack) = v22;
  v25 = v22;

  if (!(v19 >> 62))
  {
    v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_13;
    }

LABEL_76:
    v28 = (v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel);
    v90 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel);
    *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel) = 0;

    goto LABEL_77;
  }

LABEL_54:
  v62 = __CocoaSet.count.getter();
  if ((v62 & 0x8000000000000000) == 0)
  {
    goto LABEL_75;
  }

  __break(1u);
LABEL_56:
  v82 = MEMORY[0x21CE93180](0, v19);
  v28 = (v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel);
  v83 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel);
  *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel) = v82;

  if (v22 != 1)
  {
    v31 = MEMORY[0x21CE93180](1, v19);
LABEL_18:
    v32 = v31;

    goto LABEL_78;
  }

LABEL_77:

  v32 = 0;
LABEL_78:
  v91 = OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel;
  v92 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel);
  *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel) = v32;

  v93 = *&v2[v0];
  if (v93)
  {
    [v93 setHidden_];
  }

  if (*v28)
  {
    [*v28 setHidden_];
  }

  v94 = *(v0 + v91);
  if (v94)
  {
    v95 = v94;
    [v95 setHidden_];
  }
}

Swift::Void __swiftcall LabeledImageView.configureFallback()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView);
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x230))();
  v3 = MEMORY[0x21CE91FC0](v2);

  v4 = [objc_opt_self() _systemImageNamed_];

  [v1 setImage_];
}

uint64_t LabeledImageView.image(style:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](LabeledImageView.image(style:), v4, v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 96) = a1;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);

  return MEMORY[0x2822009F8](LabeledImageView.image(style:), v6, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  *(*v1 + 128) = a1;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);

  return MEMORY[0x2822009F8](LabeledImageView.image(style:), v6, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  *(*v1 + 160) = a1;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);

  return MEMORY[0x2822009F8](LabeledImageView.image(style:), v6, v5);
}

uint64_t LabeledImageView.image(style:)()
{
  v49 = v0;
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & **(v0 + 32)) + 0x70);
  v3 = v2();
  *(v0 + 64) = v3;
  if (!v3)
  {
    goto LABEL_20;
  }

  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (v6)
  {
    v7 = (*(v6 + 72))(ObjectType, v6);
    *(v0 + 72) = v7;
    if (v7)
    {
      v8 = *(v0 + 32);
      v9 = (*((*v1 & *v8) + 0x88))();
      v10 = (*((*v1 & *v8) + 0xD8))(v9);
      v11 = v2();
      if (v11)
      {
        v12 = *(v11 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
        v13 = v11;
        v14 = v12;
      }

      else
      {
        v12 = 0;
      }

      *(v0 + 80) = v12;
      v22 = swift_task_alloc();
      *(v0 + 88) = v22;
      *v22 = v0;
      v22[1] = LabeledImageView.image(style:);
      v23 = *(v0 + 24);
      v24 = (v0 + 170);
LABEL_30:

      return Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)(v24, v23, v10, v12, 0x7473286567616D69, 0xED0000293A656C79);
    }

    goto LABEL_16;
  }

  v15 = swift_conformsToProtocol2();
  if (v15)
  {
    v16 = (*(v15 + 120))(ObjectType, v15);
    *(v0 + 104) = v16;
    if (v16)
    {
      v17 = *(v0 + 32);
      v18 = (*((*v1 & *v17) + 0x88))();
      v10 = (*((*v1 & *v17) + 0xD8))(v18);
      v19 = v2();
      if (v19)
      {
        v12 = *(v19 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
        v20 = v19;
        v21 = v12;
      }

      else
      {
        v12 = 0;
      }

      *(v0 + 112) = v12;
      v32 = swift_task_alloc();
      *(v0 + 120) = v32;
      *v32 = v0;
      v32[1] = LabeledImageView.image(style:);
      v23 = *(v0 + 24);
      v24 = (v0 + 169);
      goto LABEL_30;
    }

    goto LABEL_16;
  }

  v25 = swift_conformsToProtocol2();
  if (!v25)
  {

LABEL_20:

    if (one-time initialization token for views != -1)
    {
      swift_once();
    }

    v33 = *(v0 + 32);
    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static CommonLogger.views);
    v35 = v33;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v48 = v39;
      *v38 = 136315138;
      v40 = (v2)(v39);
      *(v0 + 16) = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI14AssetViewModelCSgMd);
      v41 = Optional.debugDescription.getter();
      v43 = v42;

      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v48);

      *(v38 + 4) = v44;
      _os_log_impl(&dword_21607C000, v36, v37, "unknown viewModel %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x21CE94770](v39, -1, -1);
      MEMORY[0x21CE94770](v38, -1, -1);
    }

    goto LABEL_25;
  }

  v26 = (*(v25 + 40))(ObjectType, v25);
  *(v0 + 136) = v26;
  if (v26)
  {
    v27 = *(v0 + 32);
    v28 = (*((*v1 & *v27) + 0x88))();
    v10 = (*((*v1 & *v27) + 0xD8))(v28);
    v29 = v2();
    if (v29)
    {
      v12 = *(v29 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
      v30 = v29;
      v31 = v12;
    }

    else
    {
      v12 = 0;
    }

    *(v0 + 144) = v12;
    v47 = swift_task_alloc();
    *(v0 + 152) = v47;
    *v47 = v0;
    v47[1] = LabeledImageView.image(style:);
    v23 = *(v0 + 24);
    v24 = (v0 + 168);
    goto LABEL_30;
  }

LABEL_16:

LABEL_25:
  v45 = *(v0 + 8);

  return v45(0);
}

{
  v1 = v0[8];

  v2 = v0[12];
  v3 = v0[1];

  return v3(v2);
}

{
  v1 = v0[8];

  v2 = v0[16];
  v3 = v0[1];

  return v3(v2);
}

{
  v1 = v0[8];

  v2 = v0[20];
  v3 = v0[1];

  return v3(v2);
}

uint64_t LabeledImageView.title.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = (*((*v1 & *v2) + 0xD0))();

  return v4;
}

void key path setter for LabeledImageView.contentView : LabeledImageView(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9MomentsUI16LabeledImageView_contentView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

Swift::Void __swiftcall LabeledImageView.addConstraints()()
{
  v1 = v0;
  [*&v0[OBJC_IVAR____TtC9MomentsUI16LabeledImageView_backgroundImageView] setTranslatesAutoresizingMaskIntoConstraints_];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  [*&v0[OBJC_IVAR____TtC9MomentsUI16LabeledImageView_spotlightView] setTranslatesAutoresizingMaskIntoConstraints_];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x158);
  v5 = (v4)(v2);
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];

  v6 = *((*v3 & *v0) + 0x88);
  v7 = v6((&v92 + 4));
  v8 = dbl_21659B2A8[SBYTE4(v92)];
  v9 = dbl_21659B2F0[SBYTE4(v92)];
  v10 = (v4)(v7);
  UIView.fillSuper(horizontalMargin:verticalMargin:)(v8, v9);

  v11 = *&v1[OBJC_IVAR____TtC9MomentsUI16LabeledImageView_imageView];
  v12 = (v6)((&v92 + 3), [v11 setTranslatesAutoresizingMaskIntoConstraints_]);
  if (!BYTE3(v92))
  {
    goto LABEL_4;
  }

  v12 = (v6)((&v92 + 2), v12);
  v13 = BYTE2(v92);
  if (BYTE2(v92) == 1)
  {
    goto LABEL_6;
  }

  v12 = (v6)((&v92 + 1), v12);
  if (BYTE1(v92) != 7)
  {
    v87 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21658E180;
    v15 = [v11 widthAnchor];
    v16 = [v11 heightAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    *(v14 + 32) = v17;
    v18 = [v11 widthAnchor];
    v19 = v4();
    v20 = [v19 widthAnchor];

    v21 = [v18 constraintLessThanOrEqualToAnchor_];
    *(v14 + 40) = v21;
    type metadata accessor for NSLayoutConstraint();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v87 activateConstraints_];

    v13 = 0;
  }

  else
  {
LABEL_4:
    v13 = 1;
  }

LABEL_6:
  v23 = *&v1[OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primarySecondaryLabelStack];
  if (v23)
  {
    v24 = v23;
    v25 = [v11 superview];
    v26 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    if (v25)
    {
      v27 = v25;
      [v11 setTranslatesAutoresizingMaskIntoConstraints_];
      v28 = [v11 leadingAnchor];
      v29 = [v27 leadingAnchor];
      v30 = [v28 constraintEqualToAnchor_];

      v26 = &selRef_setDeliversTouchesForGesturesToSuperview_;
      [v30 setConstant_];
      if (v30)
      {
        [v30 setActive_];
      }
    }

    v31 = [v11 superview];
    if (v31)
    {
      v32 = v31;
      [v11 setTranslatesAutoresizingMaskIntoConstraints_];
      v33 = [v11 centerYAnchor];
      v34 = [v32 centerYAnchor];
      v35 = [v33 constraintEqualToAnchor_];

      v26 = &selRef_setDeliversTouchesForGesturesToSuperview_;
      [v35 setConstant_];
      if (v35)
      {
        [v35 setActive_];
      }
    }

    v36 = [v11 superview];
    if (v36)
    {
      v37 = v36;
      [v11 setTranslatesAutoresizingMaskIntoConstraints_];
      v38 = [v11 topAnchor];
      v39 = [v37 topAnchor];
      v40 = [v38 constraintEqualToAnchor_];

      v26 = &selRef_setDeliversTouchesForGesturesToSuperview_;
      [v40 setConstant_];
      if (v40)
      {
        [v40 setActive_];
      }
    }

    v41 = [v11 superview];
    if (v41)
    {
      v42 = v41;
      [v11 setTranslatesAutoresizingMaskIntoConstraints_];
      v43 = [v11 bottomAnchor];
      v44 = [v42 bottomAnchor];
      v45 = [v43 constraintEqualToAnchor_];

      v26 = &selRef_setDeliversTouchesForGesturesToSuperview_;
      if (v45)
      {
        [v45 setConstant_];
        [v45 setActive_];
      }
    }

    v46 = v24;
    v6(&v89);
    v47 = 8.0;
    if (v89 - 3 <= 5)
    {
      v47 = dbl_21659B338[(v89 - 3)];
    }

    [v46 setTranslatesAutoresizingMaskIntoConstraints_];
    v48 = [v46 leadingAnchor];
    v49 = [v11 trailingAnchor];
    v50 = [v48 constraintEqualToAnchor_];

    [v50 setConstant_];
    [v50 v26[8]];

    v51 = [v46 superview];
    if (v51)
    {
      v52 = v51;
      [v46 setTranslatesAutoresizingMaskIntoConstraints_];
      v53 = [v46 trailingAnchor];
      v54 = [v52 trailingAnchor];
      v55 = [v53 constraintEqualToAnchor_];

      [v55 setConstant_];
      [v55 v26[8]];
    }

    v56 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_21658E180;
    v58 = [v11 heightAnchor];
    v59 = [v46 heightAnchor];

    v60 = [v58 constraintGreaterThanOrEqualToAnchor_];
    *(v57 + 32) = v60;
    v61 = [v46 centerYAnchor];

    v62 = [v11 centerYAnchor];
    v63 = [v61 constraintEqualToAnchor_];

    *(v57 + 40) = v63;
    type metadata accessor for NSLayoutConstraint();
    v88 = Array._bridgeToObjectiveC()().super.isa;

    [v56 activateConstraints_];
    goto LABEL_32;
  }

  v64 = OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel;
  v65 = *&v1[OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel];
  if (v65)
  {
    v66 = *&v1[OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryTertiaryLabelStack];
    if (v66)
    {
      v46 = v65;
      v88 = v66;
      [(objc_class *)v88 setAlignment:3];
      v67 = v46;
      v68 = v11;
      v69 = v88;
LABEL_31:
      LabeledImageView.alignLabelImageView(label:viewBelowLabel:viewBelowView:)(v67, v68, v69);
LABEL_32:

      return;
    }
  }

  if (v13)
  {
    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);
  }

  else
  {
    (v6)(&v92, v12);
    if (v92 <= 8u && ((1 << v92) & 0x148) != 0)
    {
      v70 = *&v1[v64];
      if (!v70)
      {
        return;
      }

      v71 = *&v1[OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel];
      if (!v71)
      {
        return;
      }

      v46 = v70;
      v69 = v71;
      v88 = v69;
      v67 = v46;
      v68 = v11;
      goto LABEL_31;
    }

    if (one-time initialization token for views != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static CommonLogger.views);
    v73 = v1;
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v91 = v77;
      *v76 = 136315394;
      v78 = [v73 description];
      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = v80;

      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, &v91);

      *(v76 + 4) = v82;
      *(v76 + 12) = 2080;
      (v6)(&v90, v83);
      v84 = String.init<A>(describing:)();
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, &v91);

      *(v76 + 14) = v86;
      _os_log_impl(&dword_21607C000, v74, v75, "[%s] skipping adding constraints for style=%s", v76, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v77, -1, -1);
      MEMORY[0x21CE94770](v76, -1, -1);
    }
  }
}

id LabeledImageView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t closure #1 in LabeledImageView.handleTraitLight()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](closure #1 in LabeledImageView.handleTraitLight(), v6, v5);
}

uint64_t closure #1 in LabeledImageView.handleTraitLight()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong traitCollection];
    v4 = [v3 userInterfaceStyle];

    v5 = *((*MEMORY[0x277D85000] & *v2) + 0x280);
    v9 = (v5 + *v5);
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = closure #1 in LabeledImageView.handleTraitLight();

    return v9(v4);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](closure #1 in LabeledImageView.handleTraitLight(), v3, v2);
}

uint64_t closure #1 in LabeledImageView.handleTraitDark()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](closure #1 in LabeledImageView.handleTraitDark(), v6, v5);
}

uint64_t closure #1 in LabeledImageView.handleTraitDark()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong traitCollection];
    v4 = [v3 userInterfaceStyle];

    v5 = *((*MEMORY[0x277D85000] & *v2) + 0x280);
    v9 = (v5 + *v5);
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = closure #1 in LabeledImageView.handleTraitDark();

    return v9(v4);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](closure #1 in LabeledImageView.handleTraitDark(), v3, v2);
}

{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

id LabeledImageView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void LabeledImageView.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_reusedStackView);
}

id LabeledImageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LabeledImageView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for AssetViewBase.init(viewModel:style:) in conformance LabeledImageView@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  result = (*(v3 + 600))(a1, &v6);
  *a3 = result;
  return result;
}

void LabeledImageView.alignLabelImageView(label:viewBelowLabel:viewBelowView:)(void *a1, void *a2, void *a3)
{
  v7 = [a1 superview];
  v8 = &selRef_setDeliversTouchesForGesturesToSuperview_;
  if (v7)
  {
    v9 = v7;
    [a1 setTranslatesAutoresizingMaskIntoConstraints_];
    v10 = [a1 topAnchor];
    v11 = [v9 topAnchor];
    v12 = [v10 constraintEqualToAnchor_];

    v8 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    [v12 setConstant_];
    if (v12)
    {
      [v12 setActive_];
    }
  }

  v57 = *((*MEMORY[0x277D85000] & *v3) + 0x88);
  v57((&v59 + 5));
  v13 = 6.0;
  if ((BYTE5(v59) - 3) <= 3u)
  {
    v13 = dbl_21659B368[(BYTE5(v59) - 3)];
  }

  v14 = [a1 superview];
  if (v14)
  {
    v15 = v14;
    [a1 setTranslatesAutoresizingMaskIntoConstraints_];
    v16 = [a1 leadingAnchor];
    v17 = [v15 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor_];

    v8 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    [v18 setConstant_];
    if (v18)
    {
      [v18 setActive_];
    }
  }

  v57((&v59 + 4));
  v19 = 6.0;
  if ((BYTE4(v59) - 3) <= 3u)
  {
    v19 = dbl_21659B368[(BYTE4(v59) - 3)];
  }

  v20 = [a1 superview];
  if (v20)
  {
    v21 = v20;
    [a1 setTranslatesAutoresizingMaskIntoConstraints_];
    v22 = [a1 trailingAnchor];
    v23 = [v21 trailingAnchor];
    v24 = [v22 constraintEqualToAnchor_];

    v8 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    [v24 setConstant_];
    if (v24)
    {
      [v24 setActive_];
    }
  }

  (v57)((&v59 + 3), [a1 setTextAlignment_]);
  v25 = 8.0;
  if (BYTE3(v59) - 3 <= 5)
  {
    v25 = dbl_21659B338[(BYTE3(v59) - 3)];
  }

  [a2 setTranslatesAutoresizingMaskIntoConstraints_];
  v26 = [a2 topAnchor];
  v27 = [a1 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  [v28 setConstant_];
  [v28 v8[8]];

  v29 = [a2 superview];
  if (v29)
  {
    v30 = v29;
    [a2 &off_27821E5B8 + 2];
    v31 = [a2 centerXAnchor];
    v32 = [v30 centerXAnchor];
    v33 = [v31 &selRef_safeAreaLayoutGuide + 5];

    [v33 setConstant_];
    [v33 setActive_];

    v8 = &selRef_setDeliversTouchesForGesturesToSuperview_;
  }

  v34 = [a2 widthAnchor];
  v35 = [a2 heightAnchor];
  v36 = [v34 &selRef_safeAreaLayoutGuide + 5];

  [v36 v8[8]];
  v57((&v59 + 2));
  v37 = 8.0;
  if (BYTE2(v59) - 3 <= 5)
  {
    v37 = dbl_21659B338[(BYTE2(v59) - 3)];
  }

  [a3 &off_27821E5B8 + 2];
  v38 = [a3 topAnchor];
  v39 = [a2 bottomAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  [v40 setConstant_];
  [v40 v8[8]];

  v41 = [a3 superview];
  if (v41)
  {
    v42 = v41;
    [a3 &off_27821E5B8 + 2];
    v43 = [a3 bottomAnchor];
    v44 = [v42 bottomAnchor];
    v45 = [v43 &selRef_safeAreaLayoutGuide + 5];

    if (v45)
    {
      [v45 setConstant_];
      [v45 v8[8]];
    }
  }

  v57((&v59 + 1));
  v46 = 6.0;
  if ((BYTE1(v59) - 3) <= 3u)
  {
    v46 = dbl_21659B368[(BYTE1(v59) - 3)];
  }

  v47 = [a3 superview];
  if (v47)
  {
    v48 = v47;
    [a3 &off_27821E5B8 + 2];
    v49 = [a3 leadingAnchor];
    v50 = [v48 leadingAnchor];
    v51 = [v49 constraintEqualToAnchor_];

    [v51 setConstant_];
    [v51 v8[8]];
  }

  v57(&v59);
  v52 = 6.0;
  if ((v59 - 3) <= 3u)
  {
    v52 = dbl_21659B368[(v59 - 3)];
  }

  v53 = [a3 superview];
  if (v53)
  {
    v58 = v53;
    [a3 &off_27821E5B8 + 2];
    v54 = [a3 trailingAnchor];
    v55 = [v58 trailingAnchor];
    v56 = [v54 constraintEqualToAnchor_];

    [v56 setConstant_];
    [v56 v8[8]];
  }
}

uint64_t partial apply for closure #1 in LabeledImageView.handleTraitLight()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in LabeledImageView.handleTraitLight()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in LabeledImageView.handleTraitDark()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in LabeledImageView.handleTraitDark()(a1, v4, v5, v6);
}

uint64_t specialized static LabeledImageView.createLabels(with:preferLargeFont:centered:)(uint64_t a1, char a2, char a3)
{
  v4 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v23 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = 4;
    if (a3)
    {
      v8 = 1;
    }

    v20 = *MEMORY[0x277D76808];
    v21 = v8;
    v9 = (a1 + 56);
    do
    {
      v10 = *(v9 - 3);
      v11 = *(v9 - 2);
      v12 = *(v9 - 1);
      v13 = *v9;
      v14 = objc_allocWithZone(MEMORY[0x277D756B8]);
      v22 = v12;
      v15 = v10;
      v16 = v11;
      v17 = [v14 init];
      v18 = v17;
      if (a2)
      {
        v19 = v12;
      }

      else
      {
        v19 = v11;
      }

      [v17 setFont_];
      [v18 setTextColor_];
      [v18 setPreferredVibrancy_];
      [v18 setLineBreakMode_];
      [v18 setNumberOfLines_];
      [v18 setTextAlignment_];
      [v18 setAdjustsFontForContentSizeCategory_];
      [v18 setMaximumContentSizeCategory_];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v9 += 4;
      --v4;
    }

    while (v4);
    return v23;
  }

  return result;
}

unint64_t specialized static LabeledImageView.createVerticalLabelStack(with:alignment:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v4 setAxis_];
  [v4 setAlignment_];
  result = specialized static LabeledImageView.createLabels(with:preferLargeFont:centered:)(a1, 0, a2 == 3);
  v6 = result;
  if (!(result >> 62))
  {
    v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

    return v4;
  }

  result = __CocoaSet.count.getter();
  v7 = result;
  if (!result)
  {
    return v4;
  }

LABEL_3:
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x21CE93180](i, v6);
      }

      else
      {
        v9 = *(v6 + 8 * i + 32);
      }

      v10 = v9;
      [v4 addArrangedSubview_];
    }

    return v4;
  }

  __break(1u);
  return result;
}

void specialized LabeledImageView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI16LabeledImageView_contentView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v2 = OBJC_IVAR____TtC9MomentsUI16LabeledImageView_imageView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for RoundImageView()) init];
  v3 = OBJC_IVAR____TtC9MomentsUI16LabeledImageView_backgroundImageView;
  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v4 setContentMode_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9MomentsUI16LabeledImageView_spotlightView;
  *(v0 + v5) = [objc_allocWithZone(type metadata accessor for RouteSpotlightView()) init];
  *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_tertiaryLabel) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primarySecondaryLabelStack) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryTertiaryLabelStack) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_reusedStackView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for LabeledImageView()
{
  result = type metadata singleton initialization cache for LabeledImageView;
  if (!type metadata singleton initialization cache for LabeledImageView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LabelConfiguration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for LabelConfiguration(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of LabeledImageView.image(style:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x278);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return v7(a1);
}

uint64_t dispatch thunk of LabeledImageView.updateViews(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x280);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterImage(imageSource:outputURL:);

  return v7(a1);
}

id Blob.__allocating_init(dataFuture:dataURLFuture:assetClass:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(), uint64_t (*a4)(), char *a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = v11;
  v13 = *a5;
  if (a1)
  {
    v14 = &v11[OBJC_IVAR____TtC9MomentsUI4Blob__dataFuture];
    *v14 = a1;
    *(v14 + 1) = a2;
    if (!a3)
    {
      a4 = 0;
      a3 = closure #3 in DBAssetModel.init(from:);
    }
  }

  else
  {
    if (!a3)
    {
      swift_deallocPartialClassInstance();
      return 0;
    }

    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    v16 = &v12[OBJC_IVAR____TtC9MomentsUI4Blob__dataFuture];
    *v16 = partial apply for closure #1 in Blob.init(dataFuture:dataURLFuture:assetClass:);
    v16[1] = v15;
  }

  v17 = &v12[OBJC_IVAR____TtC9MomentsUI4Blob__dataURLFuture];
  *v17 = a3;
  v17[1] = a4;
  v12[OBJC_IVAR____TtC9MomentsUI4Blob__assetClass] = v13;
  v19.receiver = v12;
  v19.super_class = v5;
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t Blob._dataFuture.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI4Blob__dataFuture);

  return v1;
}

uint64_t Blob.data.getter()
{
  result = (*(v0 + OBJC_IVAR____TtC9MomentsUI4Blob__dataFuture))();
  if (v2 >> 60 == 15)
  {
    return 0;
  }

  return result;
}

uint64_t Blob._dataURLFuture.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI4Blob__dataURLFuture);
  outlined copy of (@escaping @callee_guaranteed () -> (@unowned UInt?))?(v1, *(v0 + OBJC_IVAR____TtC9MomentsUI4Blob__dataURLFuture + 8));
  return v1;
}

uint64_t Blob.dataURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v17 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC9MomentsUI4Blob__dataURLFuture);
  if (v10)
  {
    v10(v7);
    v11 = type metadata accessor for URL();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v6, 1, v11) != 1)
    {
      (*(v12 + 32))(v9, v6, v11);
      (*(v12 + 56))(v9, 0, 1, v11);
      goto LABEL_7;
    }
  }

  else
  {
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  }

  type metadata accessor for URL();
  v13 = *(v11 - 8);
  (*(v13 + 56))(v9, 1, 1, v11);
  if ((*(v13 + 48))(v6, 1, v11) != 1)
  {
    outlined destroy of UTType?(v6, &_s10Foundation3URLVSgMd);
  }

LABEL_7:
  type metadata accessor for URL();
  v14 = *(v11 - 8);
  if ((*(v14 + 48))(v9, 1, v11) == 1)
  {
    outlined destroy of UTType?(v9, &_s10Foundation3URLVSgMd);
    v15 = 1;
  }

  else
  {
    (*(v14 + 32))(a1, v9, v11);
    v15 = 0;
  }

  return (*(v14 + 56))(a1, v15, 1, v11);
}

void Blob.assetClass.getter(BOOL *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI4Blob__assetClass);
  if (v2 == 2)
  {
    *a1 = *(v1 + OBJC_IVAR____TtC9MomentsUI4Blob__dataURLFuture) != 0;
  }

  else
  {
    *a1 = v2 & 1;
  }
}

uint64_t Blob.AssetDataKeys.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Blob.AssetDataKeys.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Blob.AssetDataKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Blob.AssetDataKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Blob.AssetDataKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance Blob.AssetDataKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

id Blob.__allocating_init(data:assetClass:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = objc_allocWithZone(v3);
  LOBYTE(a3) = *a3;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = &v7[OBJC_IVAR____TtC9MomentsUI4Blob__dataFuture];
  *v9 = partial apply for closure #1 in Image.init(imageLightData:imageDarkData:isGlyph:assetClass:);
  v9[1] = v8;
  v10 = &v7[OBJC_IVAR____TtC9MomentsUI4Blob__dataURLFuture];
  *v10 = closure #3 in DBAssetModel.init(from:);
  v10[1] = 0;
  v7[OBJC_IVAR____TtC9MomentsUI4Blob__assetClass] = a3;
  v12.receiver = v7;
  v12.super_class = v3;
  return objc_msgSendSuper2(&v12, sel_init);
}

id Blob.init(data:assetClass:)(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = &v3[OBJC_IVAR____TtC9MomentsUI4Blob__dataFuture];
  *v8 = closure #1 in Image.init(imageLightData:imageDarkData:isGlyph:assetClass:)partial apply;
  v8[1] = v7;
  v9 = &v3[OBJC_IVAR____TtC9MomentsUI4Blob__dataURLFuture];
  *v9 = closure #3 in DBAssetModel.init(from:);
  v9[1] = 0;
  v3[OBJC_IVAR____TtC9MomentsUI4Blob__assetClass] = v6;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for Blob();
  return objc_msgSendSuper2(&v11, sel_init);
}

id Blob.__allocating_init(dataURL:assetClass:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = objc_allocWithZone(v3);
  v10 = *a2;
  (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v13 = swift_allocObject();
  *(v13 + 16) = _s9MomentsUI5ImageC13imageLightURL0d4DarkF07isGlyph10assetClassAC10Foundation0F0V_AJSgSbSgAA11DBAssetDataC05AssetK0OtcfcAJycfU_TA_0;
  *(v13 + 24) = v12;
  v14 = &v9[OBJC_IVAR____TtC9MomentsUI4Blob__dataURLFuture];
  *v14 = _s10Foundation3URLVIegr_ACSgIegr_TRTA_0;
  v14[1] = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = _s9MomentsUI5ImageC13imageLightURL0d4DarkF07isGlyph10assetClassAC10Foundation0F0V_AJSgSbSgAA11DBAssetDataC05AssetK0OtcfcAJycfU_TA_0;
  *(v15 + 24) = v12;
  v16 = &v9[OBJC_IVAR____TtC9MomentsUI4Blob__dataFuture];
  *v16 = partial apply for closure #2 in Blob.init(dataURL:assetClass:);
  v16[1] = v15;
  v9[OBJC_IVAR____TtC9MomentsUI4Blob__assetClass] = v10;
  v19.receiver = v9;
  v19.super_class = v3;

  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v7 + 8))(a1, v6);
  return v17;
}

id Blob.init(dataURL:assetClass:)(uint64_t a1, char *a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = *a2;
  (*(v6 + 16))(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v11 = swift_allocObject();
  *(v11 + 16) = closure #1 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
  *(v11 + 24) = v10;
  v12 = &v2[OBJC_IVAR____TtC9MomentsUI4Blob__dataURLFuture];
  *v12 = thunk for @escaping @callee_guaranteed () -> (@out URL)partial apply;
  v12[1] = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = closure #1 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
  *(v13 + 24) = v10;
  v14 = &v2[OBJC_IVAR____TtC9MomentsUI4Blob__dataFuture];
  *v14 = closure #2 in Blob.init(dataURL:assetClass:)partial apply;
  v14[1] = v13;
  v2[OBJC_IVAR____TtC9MomentsUI4Blob__assetClass] = v8;
  v15 = type metadata accessor for Blob();
  v18.receiver = v2;
  v18.super_class = v15;

  v16 = objc_msgSendSuper2(&v18, sel_init);
  (*(v6 + 8))(a1, v5);
  return v16;
}

uint64_t closure #2 in Blob.init(dataURL:assetClass:)(void (*a1)(uint64_t))
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v4);
  v7 = Data.init(contentsOf:options:)();
  (*(v3 + 8))(v6, v2);
  return v7;
}

id Blob.init(dataFuture:dataURLFuture:assetClass:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(), uint64_t (*a4)(), char *a5)
{
  v7 = a3;
  v8 = *a5;
  if (a1)
  {
    v9 = &v5[OBJC_IVAR____TtC9MomentsUI4Blob__dataFuture];
    *v9 = a1;
    v9[1] = a2;
    if (!a3)
    {
      a4 = 0;
      v7 = closure #3 in DBAssetModel.init(from:);
    }
  }

  else
  {
    if (!a3)
    {
      type metadata accessor for Blob();
      swift_deallocPartialClassInstance();
      return 0;
    }

    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = a4;
    v11 = &v5[OBJC_IVAR____TtC9MomentsUI4Blob__dataFuture];
    *v11 = closure #1 in Blob.init(dataFuture:dataURLFuture:assetClass:)partial apply;
    v11[1] = v10;
  }

  v12 = &v5[OBJC_IVAR____TtC9MomentsUI4Blob__dataURLFuture];
  *v12 = v7;
  v12[1] = a4;
  v5[OBJC_IVAR____TtC9MomentsUI4Blob__assetClass] = v8;
  v14.receiver = v5;
  v14.super_class = type metadata accessor for Blob();
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t closure #1 in Blob.init(dataFuture:dataURLFuture:assetClass:)(void (*a1)(uint64_t))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  a1(v7);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of UTType?(v4, &_s10Foundation3URLVSgMd);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v11 = Data.init(contentsOf:options:)();
    (*(v6 + 8))(v9, v5);
    return v11;
  }
}

id Blob.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Blob.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Blob();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t specialized static Blob.blob2DB(_:ext:)(void *a1, uint64_t a2, uint64_t a3)
{
  v144 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v127 - v6;
  v8 = type metadata accessor for URL.DirectoryHint();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v143 = (v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for UUID();
  v147 = *(v11 - 8);
  v148 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v146 = v127 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = v127 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v22 = MEMORY[0x28223BE20](v21);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v127 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = (v127 - v27);
  MEMORY[0x28223BE20](v26);
  v30 = MEMORY[0x28223BE20](v127 - v29);
  v31 = MEMORY[0x28223BE20](v30);
  v37 = v127 - v36;
  if (a1)
  {
    v135 = v8;
    v136 = v9;
    v131 = v32;
    v139 = a3;
    v141 = v31;
    v145 = v35;
    object = v34;
    v142 = v18;
    v133 = v33;
    v137 = v14;
    v140 = v7;
    v38 = MEMORY[0x277D85000];
    v39 = *((*MEMORY[0x277D85000] & *a1) + 0x70);
    v40 = a1;
    v39();
    v41 = type metadata accessor for URL();
    v42 = *(v41 - 8);
    v43 = *(v42 + 48);
    v44 = v43(v37, 1, v41);
    countAndFlagsBits = v43;
    if (v44 != 1)
    {
      v137 = URL.path.getter();
      v133 = v53;
      v54 = *(v42 + 8);
      v131 = (v42 + 8);
      v129 = v54;
      v55 = (v54)(v37, v41);
      v56 = *((*v38 & *v40) + 0x78);
      v134 = v40;
      v56(&v157, v55);
      v57 = v157;
      v58 = *(v42 + 56);
      v58(v145, 1, 1, v41);
      v59 = v142;
      UUID.init()();
      v58(v28, 1, 1, v41);
      (*(v136 + 104))(v143, *MEMORY[0x277CC91D8], v135);
      v60 = v141;
      URL.init(filePath:directoryHint:relativeTo:)();
      v58(v60, 0, 1, v41);
      v61 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();
      v62 = (v61 == 2) | v61;
      v63 = UUID.uuidString.getter();
      LODWORD(v135) = v57;
      v156 = v57;
      v126 = v62 & 1;
      v64 = v145;
      specialized static CloudSyncAssetData._fillInBlanks(id:sha256:size:inlineData:fileURL:fileExt:assetClass:blobFolderURL:allowLazyLoading:dryRun:)(v63, v65, 0, 0xF000000000000000, 0, 1, 0, 0xF000000000000000, &v149, v60, v144, v139, &v156, v145, v126, 0);
      v130 = v149;
      v144 = v150;
      v143 = v151;
      v139 = v152;
      v137 = v153;
      v133 = v154;
      v136 = v155;

      outlined init with copy of URL?(v64, v25);
      if (countAndFlagsBits(v25, 1, v41) == 1)
      {
        outlined destroy of UTType?(v25, &_s10Foundation3URLVSgMd);
        countAndFlagsBits = 0;
        object = 0;
      }

      else
      {
        v79 = URL.path(percentEncoded:)(1);
        countAndFlagsBits = v79._countAndFlagsBits;
        object = v79._object;
        v129(v25, v41);
      }

      v80 = *(v147 + 16);
      v80(v146, v59, v148);
      v81 = type metadata accessor for DBAssetData();
      v82 = swift_allocObject();
      *(v82 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI07DBAssetB0C_AGQo_Md);
      v83 = lazy protocol witness table accessor for type DBAssetData and conformance DBAssetData(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
      v149 = v81;
      v150 = v81;
      v151 = v83;
      v152 = v83;
      *(v82 + 80) = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1((v82 + 48));
      static PersistentModel.createBackingData<A>()();
      *(v82 + 16) = 16843009;
      *(v82 + 20) = 257;
      *(v82 + 22) = 1;
      *(v82 + 32) = 0;
      *(v82 + 24) = 0;
      v131 = (v82 + 24);
      __swift_project_boxed_opaque_existential_1((v82 + 48), *(v82 + 72));
      swift_getKeyPath();
      v149 = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBSuggestionCGSgMd);
      type metadata accessor for DBSuggestion();
      lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
      dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

      *(v82 + 40) = 0;
      ObservationRegistrar.init()();
      v84 = v140;
      v85 = v148;
      v80(v140, v146, v148);
      (*(v147 + 56))(v84, 0, 1, v85);
      v149 = v82;
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v129 = lazy protocol witness table accessor for type DBAssetData and conformance DBAssetData(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      outlined destroy of UTType?(v84, &_s10Foundation4UUIDVSgMd);
      v149 = v82;
      v87 = swift_getKeyPath();
      MEMORY[0x28223BE20](v87);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v149 = v82;
      v88 = swift_getKeyPath();
      MEMORY[0x28223BE20](v88);
      v89 = v144;
      v90 = v143;
      outlined copy of Data._Representation(v144, v143);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      outlined consume of Data._Representation(v89, v90);

      v149 = v82;
      v91 = swift_getKeyPath();
      MEMORY[0x28223BE20](v91);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v149 = v82;
      v92 = swift_getKeyPath();
      MEMORY[0x28223BE20](v92);
      v93 = v139;
      v94 = v137;
      outlined copy of Data?(v139, v137);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      outlined consume of Data?(v93, v94);

      v149 = v82;
      v95 = swift_getKeyPath();
      MEMORY[0x28223BE20](v95);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v96 = v131;
      swift_beginAccess();
      *v96 = countAndFlagsBits;
      *(v82 + 32) = object;

      DBAssetData.refreshAssetLoaded()();
      outlined consume of Data?(v93, v94);
      outlined consume of Data._Representation(v144, v143);
      v97 = *(v147 + 8);
      v98 = v148;
      v97(v146, v148);
      outlined destroy of UTType?(v141, &_s10Foundation3URLVSgMd);
      v97(v142, v98);
      v99 = v145;
      goto LABEL_28;
    }

    v143 = v41;
    v145 = (v42 + 48);
    v45 = outlined destroy of UTType?(v37, &_s10Foundation3URLVSgMd);
    result = (*((*v38 & *v40) + 0x68))(v45);
    v48 = result;
    v49 = v47;
    v50 = v47 >> 62;
    if ((v47 >> 62) <= 1)
    {
      if (!v50)
      {
        v51 = BYTE6(v47);
        if (!BYTE6(v47))
        {
          goto LABEL_21;
        }

        goto LABEL_15;
      }

      v100 = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v51 = v100;
        if (v100 <= 0)
        {
          goto LABEL_21;
        }

LABEL_15:
        v68 = *((*v38 & *v40) + 0x78);
        v134 = v40;
        v142 = v51;
        v68(&v157);
        v69 = v157;
        v70 = *(v42 + 56);
        v71 = v133;
        v72 = v143;
        v70(v133, 1, 1, v143);
        UUID.init()();
        v73 = object;
        v70(object, 1, 1, v72);
        v74 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();
        LOBYTE(v70) = (v74 == 2) | v74;
        v75 = UUID.uuidString.getter();
        v128 = v69;
        v156 = v69;
        specialized static CloudSyncAssetData._fillInBlanks(id:sha256:size:inlineData:fileURL:fileExt:assetClass:blobFolderURL:allowLazyLoading:dryRun:)(v75, v76, 0, 0xF000000000000000, v142, 0, v48, v49, &v149, v73, v144, v139, &v156, v71, v70 & 1, 0);
        v127[1] = v149;
        v144 = v150;
        v142 = v151;
        v139 = v152;
        v135 = v153;
        v129 = v154;
        v130 = v155;

        v77 = v131;
        outlined init with copy of URL?(v71, v131);
        v78 = countAndFlagsBits(v77, 1, v72);
        v141 = v49;
        v136 = v48;
        if (v78 == 1)
        {
          outlined destroy of UTType?(v77, &_s10Foundation3URLVSgMd);
          v145 = 0;
          countAndFlagsBits = 0;
        }

        else
        {
          v106 = URL.path(percentEncoded:)(1);
          v145 = v106._countAndFlagsBits;
          countAndFlagsBits = v106._object;
          (*(v42 + 8))(v77, v72);
        }

        v107 = *(v147 + 16);
        v107(v146, v137, v148);
        v108 = type metadata accessor for DBAssetData();
        v82 = swift_allocObject();
        *(v82 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI07DBAssetB0C_AGQo_Md);
        v109 = lazy protocol witness table accessor for type DBAssetData and conformance DBAssetData(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
        v149 = v108;
        v150 = v108;
        v151 = v109;
        v152 = v109;
        *(v82 + 80) = swift_getOpaqueTypeConformance2();
        __swift_allocate_boxed_opaque_existential_1((v82 + 48));
        static PersistentModel.createBackingData<A>()();
        *(v82 + 16) = 16843009;
        *(v82 + 20) = 257;
        *(v82 + 22) = 1;
        *(v82 + 32) = 0;
        *(v82 + 24) = 0;
        v143 = (v82 + 24);
        __swift_project_boxed_opaque_existential_1((v82 + 48), *(v82 + 72));
        swift_getKeyPath();
        v149 = MEMORY[0x277D84F90];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBSuggestionCGSgMd);
        type metadata accessor for DBSuggestion();
        lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
        dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

        *(v82 + 40) = 0;
        ObservationRegistrar.init()();
        v110 = v140;
        v111 = v148;
        v107(v140, v146, v148);
        (*(v147 + 56))(v110, 0, 1, v111);
        v149 = v82;
        v112 = swift_getKeyPath();
        MEMORY[0x28223BE20](v112);
        lazy protocol witness table accessor for type DBAssetData and conformance DBAssetData(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        outlined destroy of UTType?(v110, &_s10Foundation4UUIDVSgMd);
        v149 = v82;
        v113 = swift_getKeyPath();
        MEMORY[0x28223BE20](v113);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        v149 = v82;
        v114 = swift_getKeyPath();
        MEMORY[0x28223BE20](v114);
        v115 = v144;
        v116 = v142;
        outlined copy of Data._Representation(v144, v142);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        outlined consume of Data._Representation(v115, v116);

        v149 = v82;
        v117 = swift_getKeyPath();
        MEMORY[0x28223BE20](v117);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        v149 = v82;
        v118 = swift_getKeyPath();
        MEMORY[0x28223BE20](v118);
        v119 = v139;
        v120 = v135;
        outlined copy of Data?(v139, v135);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        outlined consume of Data?(v119, v120);

        v149 = v82;
        v121 = swift_getKeyPath();
        MEMORY[0x28223BE20](v121);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        v122 = v143;
        swift_beginAccess();
        *v122 = v145;
        *(v82 + 32) = countAndFlagsBits;

        DBAssetData.refreshAssetLoaded()();
        outlined consume of Data._Representation(v136, v141);
        outlined consume of Data?(v119, v120);
        outlined consume of Data._Representation(v144, v142);
        v123 = *(v147 + 8);
        v124 = v148;
        v123(v146, v148);
        outlined destroy of UTType?(object, &_s10Foundation3URLVSgMd);
        v123(v137, v124);
        v99 = v133;
LABEL_28:
        outlined destroy of UTType?(v99, &_s10Foundation3URLVSgMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_9MomentsUI11DBAssetDataCtGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21658CA50;
        *(inited + 32) = 0x626F6C622D2DLL;
        *(inited + 40) = 0xE600000000000000;
        *(inited + 48) = v82;

        v105 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        outlined destroy of UTType?(inited + 32, &_sSS_9MomentsUI11DBAssetDataCtMd);

        return v105;
      }

      goto LABEL_31;
    }

    if (v50 == 2)
    {
      v67 = *(result + 16);
      v66 = *(result + 24);
      v51 = v66 - v67;
      if (__OFSUB__(v66, v67))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      if (v51 > 0)
      {
        goto LABEL_15;
      }
    }

LABEL_21:
    if (one-time initialization token for views != -1)
    {
      swift_once();
    }

    v101 = type metadata accessor for Logger();
    __swift_project_value_buffer(v101, static CommonLogger.views);
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&dword_21607C000, v102, v103, "[blob2DB] unexpected empty blob", v104, 2u);
      MEMORY[0x21CE94770](v104, -1, -1);
    }

    v105 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    outlined consume of Data._Representation(v48, v49);
    return v105;
  }

  v52 = MEMORY[0x277D84F90];

  return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(v52);
}