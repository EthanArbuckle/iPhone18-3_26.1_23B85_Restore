uint64_t AudioAnalysis.loudness.getter()
{
  if (qword_1EC7E9778 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC1C8, &qword_1D561FEF8);
  OUTLINED_FUNCTION_3_198();
  sub_1D552808C(v0);
  OUTLINED_FUNCTION_0_262();
  sub_1D552808C(v1);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t AudioAnalysis.eventTimes.getter()
{
  if (qword_1EC7E9758 != -1)
  {
    OUTLINED_FUNCTION_26_78();
  }

  OUTLINED_FUNCTION_1_197();
  sub_1D552808C(v0);
  OUTLINED_FUNCTION_0_262();
  sub_1D552808C(v1);
  OUTLINED_FUNCTION_57_0();

  return sub_1D560EC28();
}

uint64_t AudioAnalysis.tonality.getter()
{
  if (qword_1EC7E9788 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC1D8, &qword_1D561FF00);
  OUTLINED_FUNCTION_3_198();
  sub_1D552808C(v0);
  OUTLINED_FUNCTION_0_262();
  sub_1D552808C(v1);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t AudioAnalysis.beatsPerMinute.getter()
{
  if (qword_1EC7E9760 != -1)
  {
    OUTLINED_FUNCTION_25_68();
  }

  OUTLINED_FUNCTION_1_197();
  sub_1D552808C(v0);
  OUTLINED_FUNCTION_0_262();
  sub_1D552808C(v1);
  OUTLINED_FUNCTION_57_0();

  return sub_1D560EC28();
}

uint64_t sub_1D55216A0(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC1A0, &qword_1D561FEF0);
  OUTLINED_FUNCTION_3_198();
  sub_1D552808C(v4);
  OUTLINED_FUNCTION_0_262();
  sub_1D552808C(v5);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t AudioAnalysis.fades.getter()
{
  if (qword_1EC7E9798 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_197();
  sub_1D552808C(v0);
  OUTLINED_FUNCTION_0_262();
  sub_1D552808C(v1);
  OUTLINED_FUNCTION_57_0();

  return sub_1D560EC28();
}

uint64_t AudioAnalysis.loudnessCurve.getter()
{
  if (qword_1EC7E97A0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_197();
  sub_1D552808C(v0);
  OUTLINED_FUNCTION_0_262();
  sub_1D552808C(v1);
  OUTLINED_FUNCTION_57_0();

  return sub_1D560EC28();
}

uint64_t AudioAnalysis.phrases.getter()
{
  if (qword_1EC7E97B0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC1F0, &qword_1D561FF08);
  OUTLINED_FUNCTION_1_197();
  sub_1D552808C(v0);
  OUTLINED_FUNCTION_0_262();
  sub_1D552808C(v1);
  OUTLINED_FUNCTION_36_1();
  if (v3)
  {
    return v3;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t AudioAnalysis.vocalActivities.getter()
{
  if (qword_1EC7E97A8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC200, &qword_1D561FF10);
  OUTLINED_FUNCTION_1_197();
  sub_1D552808C(v0);
  OUTLINED_FUNCTION_0_262();
  sub_1D552808C(v1);
  OUTLINED_FUNCTION_36_1();
  if (v3)
  {
    return v3;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t AudioAnalysis.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t AudioAnalysis.propertyProvider.getter()
{
  v0 = *(type metadata accessor for AudioAnalysis() + 20);
  v1 = sub_1D5611AB8();
  OUTLINED_FUNCTION_14(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_42_51();

  return v5(v4);
}

uint64_t static AudioAnalysis.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for AudioAnalysis() + 20);

  return sub_1D5611A78();
}

uint64_t AudioAnalysis.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for AudioAnalysis() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_18_93();
  sub_1D552808C(v4);
  return sub_1D5614CB8();
}

uint64_t AudioAnalysis.hashValue.getter()
{
  OUTLINED_FUNCTION_164();
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for AudioAnalysis() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_18_93();
  sub_1D552808C(v4);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D5521D48(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  v4 = *v2;
  v5 = v2[1];
  sub_1D5614E28();
  v6 = *(a2 + 20);
  sub_1D5611AB8();
  sub_1D552808C(&qword_1EC7ECF08);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D5521DEC@<X0>(uint64_t *a1@<X8>)
{
  result = AudioAnalysis.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AudioAnalysis.subscript.getter(void *a1)
{
  return sub_1D5521E54(a1, MEMORY[0x1E69750B8]);
}

{
  return sub_1D5521E54(a1, MEMORY[0x1E6975378]);
}

{
  v1 = (*a1 + *MEMORY[0x1E6975138]);
  v2 = v1[1];
  v3 = v1[2];
  sub_1D560DAB8();
  OUTLINED_FUNCTION_17_92();
  sub_1D552808C(v4);
  OUTLINED_FUNCTION_20_96(&qword_1EC7F26A0);
  OUTLINED_FUNCTION_0_262();
  sub_1D552808C(v5);
  v7 = v1[3];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D5521E54(void *a1, void *a2)
{
  v2 = *a1 + *a2;
  v3 = *(v2 + 8);
  OUTLINED_FUNCTION_17_92();
  sub_1D552808C(v4);
  OUTLINED_FUNCTION_20_96(&qword_1EC7F26A0);
  OUTLINED_FUNCTION_0_262();
  sub_1D552808C(v5);
  v6 = *(v2 + 16);
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D5522044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6975438] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_1D552808C(&qword_1EC7F26A0);
  v12 = sub_1D552808C(&qword_1EC7F2670);
  *v10 = v4;
  v10[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v11, a4, v12);
}

uint64_t sub_1D5522178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975430] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D552808C(&qword_1EC7F26A0);
  v14 = sub_1D552808C(&qword_1EC7F2670);
  *v12 = v5;
  v12[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D55222BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975428] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D552808C(&qword_1EC7F26A0);
  v14 = sub_1D552808C(&qword_1EC7F2670);
  *v12 = v5;
  v12[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D552242C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC240, &unk_1D5620070);
  swift_getKeyPath();
  sub_1D55282E8();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C6F8 = v0;
  return result;
}

uint64_t type metadata accessor for AudioAnalysis()
{
  result = qword_1EDD57AA8;
  if (!qword_1EDD57AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1D55224E8@<D0>(_OWORD *a1@<X8>)
{
  AudioAnalysis.eventTimes.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1D5522524()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC240, &unk_1D5620070);
  swift_getKeyPath();
  sub_1D5528294();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C700 = v0;
  return result;
}

uint64_t sub_1D55225BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC240, &unk_1D5620070);
  swift_getKeyPath();
  sub_1D5528244(&unk_1EC7F8018);
  v6 = sub_1D560D188();

  *a5 = v6;
  return result;
}

uint64_t sub_1D5522684()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC240, &unk_1D5620070);
  swift_getKeyPath();
  sub_1D5528244(&unk_1EC7F8030);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C718 = v0;
  return result;
}

uint64_t sub_1D5522740()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC240, &unk_1D5620070);
  swift_getKeyPath();
  sub_1D5528244(&unk_1EC7F8028);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C728 = v0;
  return result;
}

uint64_t sub_1D55227C4@<X0>(uint64_t a1@<X8>)
{
  result = AudioAnalysis.tonality.getter();
  *(a1 + 4) = v4;
  *a1 = v3;
  return result;
}

double sub_1D5522830@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  a1(v7);
  v3 = v8;
  v4 = v9;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v3;
  *(a2 + 33) = v4;
  return result;
}

uint64_t sub_1D5522880()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC240, &unk_1D5620070);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D55281F0();
  v0 = sub_1D560D138();

  qword_1EC7F7D38 = v0;
  return result;
}

double sub_1D5522930@<D0>(uint64_t a1@<X8>)
{
  AudioAnalysis.fades.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1D5522998()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC240, &unk_1D5620070);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D552819C();
  v0 = sub_1D560D138();

  qword_1EC7F7D40 = v0;
  return result;
}

double sub_1D5522A58@<D0>(uint64_t a1@<X8>)
{
  AudioAnalysis.loudnessCurve.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1D5522AC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC240, &unk_1D5620070);
  swift_getKeyPath();
  sub_1D5528124(&unk_1EC7F7FF8);
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C738 = v0;
  return result;
}

uint64_t sub_1D5522B6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC240, &unk_1D5620070);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D5528124(&unk_1EC7F8008);
  v0 = sub_1D560D128();

  qword_1EC7F7D48 = v0;
  return result;
}

uint64_t static AudioAnalysis.catalogFilterID(for:)()
{
  swift_getKeyPath();
  sub_1D56159B8();
  v0 = sub_1D5614D18();

  if (v0)
  {
    return sub_1D5610A08();
  }

  OUTLINED_FUNCTION_57_3();
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000021, 0x80000001D567F020);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D5522DBC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t AudioAnalysis.init(from:)(uint64_t *a1)
{
  type metadata accessor for AudioAnalysis();
  sub_1D4E628D4(a1, v5);
  OUTLINED_FUNCTION_4_153();
  sub_1D552808C(v2);
  OUTLINED_FUNCTION_16_97();
  sub_1D552808C(v3);
  OUTLINED_FUNCTION_21_81(&unk_1EC7F7D90);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AudioAnalysis.encode(to:)()
{
  type metadata accessor for AudioAnalysis();
  OUTLINED_FUNCTION_4_153();
  sub_1D552808C(v0);
  OUTLINED_FUNCTION_16_97();
  sub_1D552808C(v1);
  OUTLINED_FUNCTION_21_81(&unk_1EC7F7D90);
  OUTLINED_FUNCTION_39_52();
  return sub_1D5612688();
}

unint64_t AudioAnalysis.description.getter()
{
  sub_1D5615B68();

  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v3);

  MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
  return 0xD000000000000013;
}

uint64_t sub_1D5523088()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5620080;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6974FD8], v0);
  v6(v5 + v2, *MEMORY[0x1E6974FC8], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6974FD0], v0);
  qword_1EC7F7D50 = v4;
  return result;
}

uint64_t static AudioAnalysis.preferredIdentifierKinds.getter()
{
  if (qword_1EC7E97B8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D5523224()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7F7D58);
  __swift_project_value_buffer(v0, qword_1EC7F7D58);
  type metadata accessor for AudioAnalysis();
  sub_1D552808C(&qword_1EC7F26A0);
  return sub_1D560D988();
}

uint64_t sub_1D55232E4()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7F7D70);
  v1 = OUTLINED_FUNCTION_71();
  v3 = __swift_project_value_buffer(v1, v2);
  if (qword_1EC7E97C0 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EC7F7D58);
  v5 = *(*(v0 - 8) + 16);

  return v5(v3, v4, v0);
}

uint64_t AudioAnalysis.CompositeAttribute.beginning.getter(uint64_t a1)
{
  v1 = *(a1 + 52);
  v2 = *(a1 + 16);
  v3 = sub_1D56158D8();
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_42_51();

  return v7(v6);
}

uint64_t AudioAnalysis.CompositeAttribute.ending.getter(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 16);
  v3 = sub_1D56158D8();
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_42_51();

  return v7(v6);
}

BOOL static AudioAnalysis.CompositeAttribute.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v64 = a4;
  v65 = a5;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_37_51(v12, v54);
  v13 = sub_1D56158D8();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v59 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v54 - v21);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v24 = OUTLINED_FUNCTION_4(TupleTypeMetadata2);
  v63 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13();
  v62 = v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v54 - v30;
  v60 = *(a6 + 8);
  if ((sub_1D5614D18() & 1) == 0)
  {
    return 0;
  }

  v58 = v10;
  v66 = a3;
  v67 = v64;
  v68 = v65;
  v69 = a6;
  v57 = type metadata accessor for AudioAnalysis.CompositeAttribute();
  v32 = *(v57 + 52);
  v33 = *(TupleTypeMetadata2 + 48);
  v64 = a1;
  v65 = v16;
  v34 = a1 + v32;
  v35 = *(v16 + 16);
  v35(v31, v34, v13);
  v35(&v31[v33], a2 + v32, v13);
  OUTLINED_FUNCTION_10(v31);
  if (v37)
  {
    OUTLINED_FUNCTION_10(&v31[v33]);
    if (v37)
    {
      v56 = TupleTypeMetadata2;
      v36 = OUTLINED_FUNCTION_46_43();
      v22(v36);
      goto LABEL_12;
    }

LABEL_10:
    (*(v63 + 8))(v31, TupleTypeMetadata2);
    return 0;
  }

  v35(v22, v31, v13);
  OUTLINED_FUNCTION_10(&v31[v33]);
  if (v37)
  {
    (*(v58 + 8))(v22, a3);
    goto LABEL_10;
  }

  v56 = TupleTypeMetadata2;
  v38 = v58;
  v39 = v61;
  (*(v58 + 32))(v61, &v31[v33], a3);
  v55 = sub_1D5614D18();
  v40 = *(v38 + 8);
  v40(v39, a3);
  v40(v22, a3);
  v41 = OUTLINED_FUNCTION_46_43();
  v22(v41);
  if ((v55 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v42 = *(v57 + 56);
  v43 = *(v56 + 48);
  v44 = v62;
  v35(v62, v64 + v42, v13);
  v45 = a2 + v42;
  v46 = v44;
  v35((v44 + v43), v45, v13);
  OUTLINED_FUNCTION_10(v44);
  if (v37)
  {
    OUTLINED_FUNCTION_10(v44 + v43);
    if (v37)
    {
      (v22)(v44, v13);
      return 1;
    }

    goto LABEL_20;
  }

  v47 = v59;
  v35(v59, v46, v13);
  OUTLINED_FUNCTION_10(v46 + v43);
  if (v48)
  {
    (*(v58 + 8))(v47, a3);
LABEL_20:
    (*(v63 + 8))(v46, v56);
    return 0;
  }

  v50 = v58;
  v51 = v61;
  (*(v58 + 32))(v61, v46 + v43, a3);
  v52 = sub_1D5614D18();
  v53 = *(v50 + 8);
  v53(v51, a3);
  v53(v47, a3);
  (v22)(v46, v13);
  return (v52 & 1) != 0;
}

uint64_t sub_1D55239BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852399981 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E696E6E69676562 && a2 == 0xE900000000000067;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x676E69646E65 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1D5616168();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1D5523AD0(char a1)
{
  if (!a1)
  {
    return 1852399981;
  }

  if (a1 == 1)
  {
    return 0x6E696E6E69676562;
  }

  return 0x676E69646E65;
}

BOOL sub_1D5523B20(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return OUTLINED_FUNCTION_18_12(*a1, *a2);
}

uint64_t sub_1D5523B38(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1D4F2F628(*v1);
}

uint64_t sub_1D5523B48(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_1D4EA72BC(a1, *v2);
}

uint64_t sub_1D5523B58(uint64_t a1, void *a2)
{
  sub_1D56162D8();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_1D4EA72BC(v9, *v2);
  return sub_1D5616328();
}

uint64_t sub_1D5523BA4(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1D5523AD0(*v1);
}

uint64_t sub_1D5523BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_1D55239BC(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1D5523BE8(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = *v1;
  return OUTLINED_FUNCTION_148_3();
}

uint64_t sub_1D5523C10@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_1D4F6A7E0();
  *a2 = result;
  return result;
}

uint64_t sub_1D5523C44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D5523C98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void AudioAnalysis.CompositeAttribute.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v4 = *(v3 + 16);
  v19 = *(v3 + 32);
  v20 = v4;
  v18 = v3;
  v21 = v4;
  v22 = v19;
  type metadata accessor for AudioAnalysis.CompositeAttribute.CodingKeys();
  OUTLINED_FUNCTION_15_95();
  swift_getWitnessTable();
  v5 = sub_1D56160D8();
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  v13 = v2[4];
  OUTLINED_FUNCTION_23_23(v2, v2[3]);
  sub_1D56163D8();
  LOBYTE(v21) = 0;
  OUTLINED_FUNCTION_63_3();
  sub_1D56160C8();
  if (!v0)
  {
    v14 = v18;
    v15 = *(v18 + 52);
    LOBYTE(v21) = 1;
    OUTLINED_FUNCTION_63_3();
    sub_1D5616068();
    v16 = *(v14 + 56);
    LOBYTE(v21) = 2;
    OUTLINED_FUNCTION_63_3();
    sub_1D5616068();
  }

  (*(v7 + 8))(v12, v5);
  OUTLINED_FUNCTION_26();
}

uint64_t AudioAnalysis.CompositeAttribute.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 40);
  sub_1D5614CB8();
  v7 = *(a2 + 52);
  sub_1D56158D8();
  OUTLINED_FUNCTION_39_52();
  sub_1D56158F8();
  v8 = v3 + *(a2 + 56);
  OUTLINED_FUNCTION_39_52();
  return sub_1D56158F8();
}

uint64_t AudioAnalysis.CompositeAttribute.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_164();
  AudioAnalysis.CompositeAttribute.hash(into:)(v3, a1);
  return sub_1D5616328();
}

void AudioAnalysis.CompositeAttribute.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v50 = v11;
  v12 = sub_1D56158D8();
  v52 = OUTLINED_FUNCTION_4(v12);
  v53 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13();
  v51 = v16;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v56 = &v48 - v19;
  v54 = *(v8 - 8);
  v20 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_37_51(v21, v48);
  v62 = v8;
  v63 = v6;
  v64 = v4;
  v65 = v2;
  type metadata accessor for AudioAnalysis.CompositeAttribute.CodingKeys();
  OUTLINED_FUNCTION_15_95();
  swift_getWitnessTable();
  v60 = sub_1D5616008();
  OUTLINED_FUNCTION_4(v60);
  v55 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v48 - v26;
  v58 = v8;
  v61 = v6;
  v62 = v8;
  v63 = v6;
  v64 = v4;
  v65 = v2;
  v28 = type metadata accessor for AudioAnalysis.CompositeAttribute();
  OUTLINED_FUNCTION_4(v28);
  v49 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v48 - v33;
  v35 = v10[4];
  OUTLINED_FUNCTION_23_23(v10, v10[3]);
  v59 = v27;
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v37 = v55;
    v36 = v56;
    v48 = v34;
    v66 = v10;
    LOBYTE(v62) = 0;
    v39 = v57;
    v38 = v58;
    sub_1D5615FD8();
    (*(v54 + 32))(v48, v39, v38);
    LOBYTE(v62) = 1;
    sub_1D5615F78();
    v40 = v28;
    v41 = *(v28 + 52);
    v42 = v48;
    v43 = v36;
    v44 = v52;
    v57 = *(v53 + 32);
    v57(&v48[v41], v43, v52);
    LOBYTE(v62) = 2;
    v45 = v59;
    sub_1D5615F78();
    (*(v37 + 8))(v45, v60);
    v57(v42 + *(v40 + 56), v51, v44);
    v46 = v40;
    v47 = v49;
    (*(v49 + 16))(v50, v42, v46);
    __swift_destroy_boxed_opaque_existential_1(v66);
    (*(v47 + 8))(v42, v46);
  }

  OUTLINED_FUNCTION_26();
}

void sub_1D5524428(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  v5 = a2[5];
  AudioAnalysis.CompositeAttribute.init(from:)();
}

uint64_t sub_1D552447C(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  AudioAnalysis.CompositeAttribute.hash(into:)(v4, a2);
  return sub_1D5616328();
}

uint64_t AudioAnalysis.BeatsPerMinute.beginning.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t AudioAnalysis.BeatsPerMinute.ending.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t AudioAnalysis.BeatsPerMinute.percentDeviation.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t static AudioAnalysis.BeatsPerMinute.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return OUTLINED_FUNCTION_29_4();
  }

  v2 = *(a2 + 16);
  v3 = *(a2 + 48);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return OUTLINED_FUNCTION_29_4();
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return OUTLINED_FUNCTION_29_4();
    }
  }

  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      return OUTLINED_FUNCTION_29_4();
    }
  }

  else
  {
    if (*(a1 + 24) == *(a2 + 24))
    {
      v4 = *(a2 + 32);
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return OUTLINED_FUNCTION_29_4();
    }
  }

  if (*(a1 + 48))
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      return OUTLINED_FUNCTION_29_4();
    }
  }

  else
  {
    if (*(a1 + 40) != *(a2 + 40))
    {
      v3 = 1;
    }

    if (v3)
    {
      return OUTLINED_FUNCTION_29_4();
    }
  }

  return 1;
}

uint64_t sub_1D552457C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852399981 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E696E6E69676562 && a2 == 0xE900000000000067;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E69646E65 && a2 == 0xE600000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x80000001D56905A0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1D5616168();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1D55246E0(char a1)
{
  result = 1852399981;
  switch(a1)
  {
    case 1:
      result = 0x6E696E6E69676562;
      break;
    case 2:
      result = 0x676E69646E65;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5524780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D552457C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D55247A8(uint64_t a1)
{
  v2 = sub_1D5526C7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D55247E4(uint64_t a1)
{
  v2 = sub_1D5526C7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AudioAnalysis.BeatsPerMinute.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7D98, &qword_1D566F950);
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_31();
  v10 = *v0;
  v20 = *(v0 + 16);
  v18 = v0[3];
  v19 = v0[1];
  v17 = *(v0 + 32);
  v16 = v0[5];
  v15 = *(v0 + 48);
  v11 = v3[4];
  OUTLINED_FUNCTION_23_23(v3, v3[3]);
  sub_1D5526C7C();
  sub_1D56163D8();
  OUTLINED_FUNCTION_22_14();
  sub_1D56160B8();
  if (!v1)
  {
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_22_14();
    sub_1D5616058();
    OUTLINED_FUNCTION_22_14();
    sub_1D5616058();
    OUTLINED_FUNCTION_22_14();
    sub_1D5616048();
  }

  v12 = *(v6 + 8);
  v13 = OUTLINED_FUNCTION_134_0();
  v14(v13);
  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_26();
}

uint64_t AudioAnalysis.BeatsPerMinute.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  MEMORY[0x1DA6EC0D0](*v0);
  if (v2 == 1)
  {
    sub_1D56162F8();
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_9:
    sub_1D56162F8();
    if (!v6)
    {
      goto LABEL_4;
    }

    return sub_1D56162F8();
  }

  sub_1D56162F8();
  MEMORY[0x1DA6EC0D0](v1);
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_3:
  sub_1D56162F8();
  MEMORY[0x1DA6EC0D0](v3);
  if (v6)
  {
    return sub_1D56162F8();
  }

LABEL_4:
  sub_1D56162F8();
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return MEMORY[0x1DA6EC100](v7);
}

uint64_t AudioAnalysis.BeatsPerMinute.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = *(v0 + 48);
  OUTLINED_FUNCTION_164();
  MEMORY[0x1DA6EC0D0](v2);
  sub_1D56162F8();
  if (v3 != 1)
  {
    MEMORY[0x1DA6EC0D0](v1);
  }

  sub_1D56162F8();
  if (!v5)
  {
    MEMORY[0x1DA6EC0D0](v4);
  }

  if (v7)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x1DA6EC100](v8);
  }

  return sub_1D5616328();
}

void AudioAnalysis.BeatsPerMinute.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7DA8, &qword_1D566F958);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  OUTLINED_FUNCTION_13_4();
  sub_1D5526C7C();
  OUTLINED_FUNCTION_19_24();
  if (!v0)
  {
    OUTLINED_FUNCTION_10_90();
    v11 = sub_1D5615FC8();
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_10_90();
    v12 = sub_1D5615F68();
    v22 = v13;
    OUTLINED_FUNCTION_10_90();
    v14 = sub_1D5615F68();
    HIDWORD(v20) = v15;
    v21 = v14;
    OUTLINED_FUNCTION_10_90();
    v16 = sub_1D5615F58();
    v17 = v10;
    v19 = v18;
    (*(v5 + 8))(v17, v3);
    *v2 = v11;
    *(v2 + 8) = v12;
    *(v2 + 16) = v22 & 1;
    *(v2 + 24) = v21;
    *(v2 + 32) = BYTE4(v20) & 1;
    *(v2 + 40) = v16;
    *(v2 + 48) = v19 & 1;
  }

  OUTLINED_FUNCTION_47_48();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5524D88()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v2);
  sub_1D56162F8();
  if (v3 != 1)
  {
    MEMORY[0x1DA6EC0D0](v1);
  }

  sub_1D56162F8();
  if (!v5)
  {
    MEMORY[0x1DA6EC0D0](v4);
  }

  if (v7)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x1DA6EC100](v8);
  }

  return sub_1D5616328();
}

uint64_t static AudioAnalysis.Statistics.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return a1[2] == a2[2];
  }

  else
  {
    return OUTLINED_FUNCTION_29_4();
  }
}

uint64_t sub_1D5524EBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1801545072 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1D5616168();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1D5524FCC(char a1)
{
  if (!a1)
  {
    return 0x65756C6176;
  }

  if (a1 == 1)
  {
    return 0x65676E6172;
  }

  return 1801545072;
}

uint64_t sub_1D5525014(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D5525068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5524EBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5525090(uint64_t a1)
{
  v2 = sub_1D5526CD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D55250CC(uint64_t a1)
{
  v2 = sub_1D5526CD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AudioAnalysis.Statistics.encode(to:)()
{
  OUTLINED_FUNCTION_54_40();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7DB0, &qword_1D566F960);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31();
  v10 = *v0;
  v9 = v0[1];
  v11 = v0[2];
  v12 = *(v2 + 24);
  v13 = *(v2 + 32);
  v14 = OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_23_23(v14, v15);
  sub_1D5526CD0();
  OUTLINED_FUNCTION_15_35();
  OUTLINED_FUNCTION_22_14();
  sub_1D56160A8();
  if (!v1)
  {
    OUTLINED_FUNCTION_22_14();
    sub_1D56160A8();
    OUTLINED_FUNCTION_22_14();
    sub_1D56160A8();
  }

  v16 = *(v5 + 8);
  v17 = OUTLINED_FUNCTION_134_0();
  return v18(v17);
}

uint64_t AudioAnalysis.Statistics.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA6EC100](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1DA6EC100](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  return MEMORY[0x1DA6EC100](*&v5);
}

uint64_t AudioAnalysis.Statistics.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_40_55();
  OUTLINED_FUNCTION_40_55();
  OUTLINED_FUNCTION_40_55();
  return sub_1D5616328();
}

uint64_t AudioAnalysis.Statistics.init(from:)()
{
  OUTLINED_FUNCTION_26_20();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7DC0, &qword_1D566F968);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_4();
  sub_1D5526CD0();
  OUTLINED_FUNCTION_19_24();
  if (!v0)
  {
    OUTLINED_FUNCTION_6_33();
    sub_1D5615FB8();
    v7 = v6;
    OUTLINED_FUNCTION_6_33();
    sub_1D5615FB8();
    v10 = v9;
    OUTLINED_FUNCTION_6_33();
    sub_1D5615FB8();
    v12 = v11;
    v13 = OUTLINED_FUNCTION_3_32();
    v14(v13);
    *v1 = v7;
    v1[1] = v10;
    v1[2] = v12;
  }

  return OUTLINED_FUNCTION_47_48();
}

uint64_t sub_1D55254F0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D56162D8();
  if (v1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1;
  }

  MEMORY[0x1DA6EC100](*&v4);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1DA6EC100](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1DA6EC100](*&v6);
  return sub_1D5616328();
}

uint64_t static AudioAnalysis.EventTimes.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1D4EFA0D0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_71();

  return sub_1D4EFA0D0(v4, v5);
}

uint64_t sub_1D55255E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7563634F74616562 && a2 == 0xEE007365636E6572;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x727563634F726162 && a2 == 0xED00007365636E65)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D55256BC(char a1)
{
  if (a1)
  {
    return 0x727563634F726162;
  }

  else
  {
    return 0x7563634F74616562;
  }
}

uint64_t sub_1D552572C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D55255E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5525754(uint64_t a1)
{
  v2 = sub_1D5526D24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5525790(uint64_t a1)
{
  v2 = sub_1D5526D24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AudioAnalysis.EventTimes.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7DC8, &unk_1D566F970);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31();
  v9 = *v0;
  v15 = v0[1];
  v10 = v2[4];
  OUTLINED_FUNCTION_23_23(v2, v2[3]);
  v11 = sub_1D5526D24();

  OUTLINED_FUNCTION_63_3();
  sub_1D56163D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED6E0, &qword_1D5625870);
  OUTLINED_FUNCTION_28_70(&unk_1EC7ED6E8);
  OUTLINED_FUNCTION_22_14();
  sub_1D56160C8();

  if (!v11)
  {
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
  }

  v12 = *(v5 + 8);
  v13 = OUTLINED_FUNCTION_134_0();
  v14(v13);
  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_26();
}

void AudioAnalysis.EventTimes.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1D4F07ACC(a1, v2);
  v4 = OUTLINED_FUNCTION_71();

  sub_1D4F07ACC(v4, v5);
}

uint64_t AudioAnalysis.EventTimes.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_164();
  sub_1D4F07ACC(v4, v1);
  sub_1D4F07ACC(v4, v2);
  return sub_1D5616328();
}

void AudioAnalysis.EventTimes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7DD8, &qword_1D566F980);
  OUTLINED_FUNCTION_4(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v24 - v21;
  OUTLINED_FUNCTION_13_4();
  sub_1D5526D24();
  OUTLINED_FUNCTION_63_3();
  sub_1D5616398();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v24 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED6E0, &qword_1D5625870);
    v25 = 0;
    OUTLINED_FUNCTION_27_74(&unk_1EC7ED6F8);
    OUTLINED_FUNCTION_32_63();
    v25 = 1;
    OUTLINED_FUNCTION_32_63();
    (*(v17 + 8))(v22, v15);
    v23 = v24;
    *v24 = a10;
    v23[1] = a10;

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5525BDC()
{
  v3 = *v0;
  sub_1D56162D8();
  AudioAnalysis.EventTimes.hash(into:)(v2);
  return sub_1D5616328();
}

__n128 AudioAnalysis.Fades.fadeIn.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 AudioAnalysis.Fades.fadeOut.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t static AudioAnalysis.Fades.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return OUTLINED_FUNCTION_29_4();
  }

  if (a1[3] == a2[3])
  {
    return a1[2] == a2[2];
  }

  return 0;
}

uint64_t static AudioAnalysis.TimeRange.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 == *a2)
  {
    return a1[1] == a2[1];
  }

  else
  {
    return OUTLINED_FUNCTION_29_4();
  }
}

uint64_t sub_1D5525C98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E4965646166 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74754F65646166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D5525D5C(char a1)
{
  if (a1)
  {
    return 0x74754F65646166;
  }

  else
  {
    return 0x6E4965646166;
  }
}

uint64_t sub_1D5525D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5525C98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5525DC0(uint64_t a1)
{
  v2 = sub_1D5526D78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5525DFC(uint64_t a1)
{
  v2 = sub_1D5526D78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AudioAnalysis.Fades.encode(to:)()
{
  OUTLINED_FUNCTION_54_40();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7DE0, &qword_1D566F988);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31();
  v9 = *v0;
  v10 = v0[1];
  v11 = v0[2];
  v12 = v0[3];
  v13 = *(v2 + 24);
  v14 = *(v2 + 32);
  v15 = OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_23_23(v15, v16);
  sub_1D5526D78();
  OUTLINED_FUNCTION_15_35();
  sub_1D5526DCC();
  OUTLINED_FUNCTION_22_14();
  sub_1D56160C8();
  if (!v1)
  {
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
  }

  v17 = *(v5 + 8);
  v18 = OUTLINED_FUNCTION_134_0();
  return v19(v18);
}

uint64_t AudioAnalysis.Fades.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA6EC100](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1DA6EC100](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1DA6EC100](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x1DA6EC100](*&v7);
}

uint64_t AudioAnalysis.Fades.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_40_55();
  OUTLINED_FUNCTION_40_55();
  OUTLINED_FUNCTION_40_55();
  OUTLINED_FUNCTION_40_55();
  return sub_1D5616328();
}

uint64_t AudioAnalysis.Fades.init(from:)()
{
  OUTLINED_FUNCTION_26_20();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7DF8, &qword_1D566F990);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_4();
  sub_1D5526D78();
  OUTLINED_FUNCTION_19_24();
  if (!v0)
  {
    sub_1D5526E20();
    OUTLINED_FUNCTION_10_90();
    sub_1D5615FD8();
    OUTLINED_FUNCTION_10_90();
    sub_1D5615FD8();
    v6 = OUTLINED_FUNCTION_3_32();
    v7(v6);
    *v1 = v9;
    v1[1] = v9;
  }

  return OUTLINED_FUNCTION_47_48();
}

uint64_t sub_1D552625C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D56162D8();
  if (v1 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v1;
  }

  MEMORY[0x1DA6EC100](*&v5);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x1DA6EC100](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x1DA6EC100](*&v7);
  if (v4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v4;
  }

  MEMORY[0x1DA6EC100](*&v8);
  return sub_1D5616328();
}

uint64_t sub_1D5526314(uint64_t a1)
{
  v2 = sub_1D5526E74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5526350(uint64_t a1)
{
  v2 = sub_1D5526E74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AudioAnalysis.TimeRange.encode(to:)()
{
  OUTLINED_FUNCTION_54_40();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7E08, &qword_1D566F998);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31();
  v10 = *v0;
  v9 = v0[1];
  v11 = *(v2 + 24);
  v12 = *(v2 + 32);
  v13 = OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_23_23(v13, v14);
  sub_1D5526E74();
  OUTLINED_FUNCTION_15_35();
  OUTLINED_FUNCTION_22_14();
  sub_1D56160A8();
  if (!v1)
  {
    OUTLINED_FUNCTION_22_14();
    sub_1D56160A8();
  }

  v15 = *(v5 + 8);
  v16 = OUTLINED_FUNCTION_134_0();
  v17(v16);
  OUTLINED_FUNCTION_64_3();
}

uint64_t AudioAnalysis.TimeRange.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA6EC100](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x1DA6EC100](*&v3);
}

uint64_t AudioAnalysis.TimeRange.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_40_55();
  OUTLINED_FUNCTION_40_55();
  return sub_1D5616328();
}

uint64_t AudioAnalysis.TimeRange.init(from:)()
{
  OUTLINED_FUNCTION_26_20();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7E18, &qword_1D566F9A0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_4();
  sub_1D5526E74();
  OUTLINED_FUNCTION_19_24();
  if (!v0)
  {
    OUTLINED_FUNCTION_6_33();
    sub_1D5615FB8();
    v7 = v6;
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_6_33();
    sub_1D5615FB8();
    v9 = v8;
    v10 = OUTLINED_FUNCTION_3_32();
    v11(v10);
    *v1 = v7;
    v1[1] = v9;
  }

  return OUTLINED_FUNCTION_47_48();
}

uint64_t AudioAnalysis.LoudnessCurve.samplingFrequency.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t static AudioAnalysis.LoudnessCurve.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (!v6)
    {
      return OUTLINED_FUNCTION_29_4();
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v9 = v6;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return OUTLINED_FUNCTION_29_4();
    }
  }

  return sub_1D4EFA0D0(v5, v7);
}

uint64_t sub_1D5526734(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D5526780(uint64_t a1)
{
  v2 = sub_1D5526EC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D55267BC(uint64_t a1)
{
  v2 = sub_1D5526EC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AudioAnalysis.LoudnessCurve.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_54_40();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7E20, &qword_1D566F9A8);
  OUTLINED_FUNCTION_4(v3);
  v15 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31();
  v8 = *v0;
  v9 = *(v0 + 8);
  v14 = v0[2];
  v10 = v2[4];
  OUTLINED_FUNCTION_23_23(v2, v2[3]);
  sub_1D5526EC8();
  sub_1D56163D8();
  OUTLINED_FUNCTION_22_14();
  sub_1D5616048();
  if (!v1)
  {
    OUTLINED_FUNCTION_7_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED6E0, &qword_1D5625870);
    OUTLINED_FUNCTION_28_70(&unk_1EC7ED6E8);
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
  }

  v11 = *(v15 + 8);
  v12 = OUTLINED_FUNCTION_134_0();
  v13(v12);
  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_26();
}

void AudioAnalysis.LoudnessCurve.hash(into:)(uint64_t a1)
{
  v3 = v1[2];
  if (*(v1 + 8) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v4 = *v1;
    sub_1D56162F8();
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x1DA6EC100](v5);
  }

  sub_1D4F07ACC(a1, v3);
}

uint64_t AudioAnalysis.LoudnessCurve.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  OUTLINED_FUNCTION_164();
  if (v2 == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1DA6EC100](v4);
  }

  sub_1D4F07ACC(v6, v3);
  return sub_1D5616328();
}

void AudioAnalysis.LoudnessCurve.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_20();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7E30, &qword_1D566F9B0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_4();
  sub_1D5526EC8();
  OUTLINED_FUNCTION_19_24();
  if (!v0)
  {
    OUTLINED_FUNCTION_6_33();
    v6 = sub_1D5615F58();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED6E0, &qword_1D5625870);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_27_74(&unk_1EC7ED6F8);
    OUTLINED_FUNCTION_10_90();
    sub_1D5615FD8();
    v9 = OUTLINED_FUNCTION_3_32();
    v10(v9);
    *v1 = v6;
    *(v1 + 8) = v8 & 1;
    *(v1 + 16) = v11;
  }

  OUTLINED_FUNCTION_47_48();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5526C24()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4[9] = *v0;
  v5 = v1;
  v6 = v2;
  sub_1D56162D8();
  AudioAnalysis.LoudnessCurve.hash(into:)(v4);
  return sub_1D5616328();
}

unint64_t sub_1D5526C7C()
{
  result = qword_1EC7F7DA0;
  if (!qword_1EC7F7DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7DA0);
  }

  return result;
}

unint64_t sub_1D5526CD0()
{
  result = qword_1EC7F7DB8;
  if (!qword_1EC7F7DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7DB8);
  }

  return result;
}

unint64_t sub_1D5526D24()
{
  result = qword_1EC7F7DD0;
  if (!qword_1EC7F7DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7DD0);
  }

  return result;
}

unint64_t sub_1D5526D78()
{
  result = qword_1EC7F7DE8;
  if (!qword_1EC7F7DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7DE8);
  }

  return result;
}

unint64_t sub_1D5526DCC()
{
  result = qword_1EC7F7DF0;
  if (!qword_1EC7F7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7DF0);
  }

  return result;
}

unint64_t sub_1D5526E20()
{
  result = qword_1EC7F7E00;
  if (!qword_1EC7F7E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7E00);
  }

  return result;
}

unint64_t sub_1D5526E74()
{
  result = qword_1EC7F7E10;
  if (!qword_1EC7F7E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7E10);
  }

  return result;
}

unint64_t sub_1D5526EC8()
{
  result = qword_1EC7F7E28;
  if (!qword_1EC7F7E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7E28);
  }

  return result;
}

unint64_t sub_1D5526FCC()
{
  result = qword_1EC7F7E38;
  if (!qword_1EC7F7E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7E38);
  }

  return result;
}

unint64_t sub_1D5527024()
{
  result = qword_1EC7F7E40;
  if (!qword_1EC7F7E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7E40);
  }

  return result;
}

unint64_t sub_1D552707C()
{
  result = qword_1EC7F7E48;
  if (!qword_1EC7F7E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7E48);
  }

  return result;
}

unint64_t sub_1D55270D4()
{
  result = qword_1EC7F7E50;
  if (!qword_1EC7F7E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7E50);
  }

  return result;
}

unint64_t sub_1D552712C()
{
  result = qword_1EC7F7E58;
  if (!qword_1EC7F7E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7E58);
  }

  return result;
}

unint64_t sub_1D5527184()
{
  result = qword_1EC7F7E60[0];
  if (!qword_1EC7F7E60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC7F7E60);
  }

  return result;
}

uint64_t sub_1D552721C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v2 = sub_1D56158D8();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t sub_1D55272B4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = *(v5 + 64);
  if (v7)
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = v8 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    return __swift_getEnumTagSinglePayload(a1, v7, v4);
  }

  v11 = ((v9 + *(v6 + 80) + ((v8 + *(v6 + 80)) & ~*(v6 + 80))) & ~*(v6 + 80)) + v9;
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v14 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v14 < 2)
    {
LABEL_22:
      if (v7)
      {
        return __swift_getEnumTagSinglePayload(a1, v7, v4);
      }

      return 0;
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_22;
  }

LABEL_14:
  v15 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v15 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    switch(v11)
    {
      case 2:
        LODWORD(v11) = *a1;
        break;
      case 3:
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v11) = *a1;
        break;
      default:
        LODWORD(v11) = *a1;
        break;
    }
  }

  return v7 + (v11 | v15) + 1;
}

void sub_1D5527418(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = *(v7 + 80);
  v11 = (v9 + v10) & ~v10;
  if (!v8)
  {
    ++v9;
  }

  v12 = (v9 + v10 + v11) & ~v10;
  v13 = v12 + v9;
  v14 = 8 * (v12 + v9);
  v15 = a3 >= v8;
  v16 = a3 - v8;
  if (v16 != 0 && v15)
  {
    if (v13 <= 3)
    {
      v20 = ((v16 + ~(-1 << v14)) >> v14) + 1;
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

  if (v8 >= a2)
  {
    switch(v17)
    {
      case 1:
        a1[v13] = 0;
        if (a2)
        {
          goto LABEL_26;
        }

        break;
      case 2:
        *&a1[v13] = 0;
        if (a2)
        {
          goto LABEL_26;
        }

        break;
      case 3:
LABEL_39:
        __break(1u);
        break;
      case 4:
        *&a1[v13] = 0;
        goto LABEL_25;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:

          __swift_storeEnumTagSinglePayload(a1, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v18 = ~v8 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> v14) + 1;
      if (v13)
      {
        v22 = v18 & ~(-1 << v14);
        bzero(a1, v13);
        if (v13 == 3)
        {
          *a1 = v22;
          a1[2] = BYTE2(v22);
        }

        else if (v13 == 2)
        {
          *a1 = v22;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
    }

    switch(v17)
    {
      case 1:
        a1[v13] = v19;
        break;
      case 2:
        *&a1[v13] = v19;
        break;
      case 3:
        goto LABEL_39;
      case 4:
        *&a1[v13] = v19;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1D5527644(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5527664(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = (a2 - 1);
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

  *(result + 49) = v3;
  return result;
}

uint64_t sub_1D55276D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D55276F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

_BYTE *sub_1D552777C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_35(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AudioAnalysis.BeatsPerMinute.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D5527940(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_35(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D5527A28()
{
  result = qword_1EC7F7F68;
  if (!qword_1EC7F7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7F68);
  }

  return result;
}

unint64_t sub_1D5527A80()
{
  result = qword_1EC7F7F70;
  if (!qword_1EC7F7F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7F70);
  }

  return result;
}

unint64_t sub_1D5527AD8()
{
  result = qword_1EC7F7F78;
  if (!qword_1EC7F7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7F78);
  }

  return result;
}

unint64_t sub_1D5527B30()
{
  result = qword_1EC7F7F80;
  if (!qword_1EC7F7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7F80);
  }

  return result;
}

unint64_t sub_1D5527B88()
{
  result = qword_1EC7F7F88;
  if (!qword_1EC7F7F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7F88);
  }

  return result;
}

unint64_t sub_1D5527BE0()
{
  result = qword_1EC7F7F90;
  if (!qword_1EC7F7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7F90);
  }

  return result;
}

unint64_t sub_1D5527C38()
{
  result = qword_1EC7F7F98;
  if (!qword_1EC7F7F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7F98);
  }

  return result;
}

unint64_t sub_1D5527C90()
{
  result = qword_1EC7F7FA0;
  if (!qword_1EC7F7FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7FA0);
  }

  return result;
}

unint64_t sub_1D5527CE8()
{
  result = qword_1EC7F7FA8;
  if (!qword_1EC7F7FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7FA8);
  }

  return result;
}

unint64_t sub_1D5527D40()
{
  result = qword_1EC7F7FB0;
  if (!qword_1EC7F7FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7FB0);
  }

  return result;
}

unint64_t sub_1D5527D98()
{
  result = qword_1EC7F7FB8;
  if (!qword_1EC7F7FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7FB8);
  }

  return result;
}

unint64_t sub_1D5527DF0()
{
  result = qword_1EC7F7FC0;
  if (!qword_1EC7F7FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7FC0);
  }

  return result;
}

unint64_t sub_1D5527E48()
{
  result = qword_1EC7F7FC8;
  if (!qword_1EC7F7FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7FC8);
  }

  return result;
}

unint64_t sub_1D5527EA0()
{
  result = qword_1EC7F7FD0;
  if (!qword_1EC7F7FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7FD0);
  }

  return result;
}

unint64_t sub_1D5527EF8()
{
  result = qword_1EC7F7FD8;
  if (!qword_1EC7F7FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7FD8);
  }

  return result;
}

unint64_t sub_1D5527F50()
{
  result = qword_1EC7F7FE0;
  if (!qword_1EC7F7FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7FE0);
  }

  return result;
}

unint64_t sub_1D5527FA8()
{
  result = qword_1EC7F7FE8;
  if (!qword_1EC7F7FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7FE8);
  }

  return result;
}

unint64_t sub_1D5528000()
{
  result = qword_1EC7F7FF0;
  if (!qword_1EC7F7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7FF0);
  }

  return result;
}

unint64_t sub_1D552808C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D55280D0()
{
  result = qword_1EC7F8000;
  if (!qword_1EC7F8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F8000);
  }

  return result;
}

unint64_t sub_1D5528124(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    v6();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D552819C()
{
  result = qword_1EC7F8010;
  if (!qword_1EC7F8010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F8010);
  }

  return result;
}

unint64_t sub_1D55281F0()
{
  result = qword_1EC7F8020;
  if (!qword_1EC7F8020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F8020);
  }

  return result;
}

unint64_t sub_1D5528244(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D5528294()
{
  result = qword_1EC7F8038;
  if (!qword_1EC7F8038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F8038);
  }

  return result;
}

unint64_t sub_1D55282E8()
{
  result = qword_1EC7F8040;
  if (!qword_1EC7F8040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F8040);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_20_96(uint64_t a1)
{

  return sub_1D552808C(a1);
}

uint64_t OUTLINED_FUNCTION_25_68()
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_28_70(uint64_t a1)
{

  return sub_1D4FECCC0(a1);
}

unint64_t SpatialTimingInformation.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = v0[4];
  v6 = *(v0 + 40);
  v7 = v0[6];
  v8 = v0[8];
  v23 = *(v0 + 72);
  v19 = v0[10];
  v25 = *(v0 + 88);
  v9 = v0[12];
  v10 = *(v0 + 105);
  v11 = *(v0 + 106);
  v12 = v0[14];
  v20 = *(v0 + 56);
  v21 = *(v0 + 120);
  v13 = v0[16];
  v22 = *(v0 + 136);
  v24 = v0[20];
  if ((v0[13] & 1) == 0)
  {
    OUTLINED_FUNCTION_0_230();
    sub_1D5615B68();
    OUTLINED_FUNCTION_4_154();
    OUTLINED_FUNCTION_3_199();
    sub_1D5615568();
    OUTLINED_FUNCTION_1_198();
  }

  if (v10 != 2)
  {
    OUTLINED_FUNCTION_0_230();
    sub_1D5615B68();

    v26 = 0xD000000000000012;
    v27 = 0x80000001D56906C0;
    if (v10)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v10)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    MEMORY[0x1DA6EAC70](v14, v15);

    OUTLINED_FUNCTION_1_198();
  }

  if (v11 == 2)
  {
    if (v2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_230();
    sub_1D5615B68();

    v26 = 0xD000000000000011;
    v27 = 0x80000001D56906A0;
    if (v11)
    {
      v17 = 1702195828;
    }

    else
    {
      v17 = 0x65736C6166;
    }

    if (v11)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    MEMORY[0x1DA6EAC70](v17, v18);

    OUTLINED_FUNCTION_1_198();

    if (v2)
    {
LABEL_13:
      if (v4)
      {
        goto LABEL_14;
      }

      goto LABEL_35;
    }
  }

  OUTLINED_FUNCTION_0_230();
  sub_1D5615B68();
  OUTLINED_FUNCTION_4_154();
  OUTLINED_FUNCTION_3_199();
  sub_1D5615568();
  OUTLINED_FUNCTION_1_198();

  if (v4)
  {
LABEL_14:
    if (v6)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_35:
  OUTLINED_FUNCTION_0_230();
  sub_1D5615B68();
  OUTLINED_FUNCTION_4_154();
  MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D5690660);
  sub_1D5615568();
  OUTLINED_FUNCTION_1_198();

  if ((v6 & 1) == 0)
  {
LABEL_15:
    OUTLINED_FUNCTION_0_230();
    sub_1D5615B68();
    OUTLINED_FUNCTION_4_154();
    MEMORY[0x1DA6EAC70](0xD00000000000001ALL, 0x80000001D5690640);
    sub_1D5615568();
    OUTLINED_FUNCTION_1_198();
  }

LABEL_16:
  if ((v20 & 1) == 0)
  {
    OUTLINED_FUNCTION_0_230();
    sub_1D5615B68();
    OUTLINED_FUNCTION_4_154();
    OUTLINED_FUNCTION_3_199();
    sub_1D5615568();
    OUTLINED_FUNCTION_1_198();
  }

  if ((v21 & 1) == 0)
  {
    OUTLINED_FUNCTION_0_230();
    sub_1D5615B68();
    OUTLINED_FUNCTION_4_154();
    MEMORY[0x1DA6EAC70](0x656D697420200A2CLL, 0xEF203A7466697244);
    sub_1D5615568();
    MEMORY[0x1DA6EAC70](v26, v27);
  }

  if ((v22 & 1) == 0)
  {
    OUTLINED_FUNCTION_0_230();
    sub_1D5615B68();
    OUTLINED_FUNCTION_4_154();
    MEMORY[0x1DA6EAC70](0x656D697420200A2CLL, 0xEF203A706D617473);
    sub_1D5615568();
    OUTLINED_FUNCTION_1_198();
  }

  if ((v23 & 1) == 0)
  {
    OUTLINED_FUNCTION_0_230();
    sub_1D5615B68();
    OUTLINED_FUNCTION_4_154();
    MEMORY[0x1DA6EAC70](0xD000000000000011, 0x80000001D5690600);
    sub_1D5615568();
    OUTLINED_FUNCTION_1_198();
  }

  if ((v25 & 1) == 0)
  {
    OUTLINED_FUNCTION_0_230();
    sub_1D5615B68();
    OUTLINED_FUNCTION_4_154();
    MEMORY[0x1DA6EAC70](0x4F646E6520200A2CLL, 0xEF203A7465736666);
    sub_1D5615568();
    OUTLINED_FUNCTION_1_198();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2648, &qword_1D5648AB0);
  sub_1D55289A0();
  sub_1D56155F8();

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return 0xD000000000000019;
}

unint64_t sub_1D55289A0()
{
  result = qword_1EC7F8048;
  if (!qword_1EC7F8048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F2648, &qword_1D5648AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F8048);
  }

  return result;
}

uint64_t SpatialTimingInformation.spatialLeadingSilence.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t SpatialTimingInformation.spatialTrailingSilence.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t SpatialTimingInformation.stereoLeadingSilence.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t SpatialTimingInformation.stereoTrailingSilence.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t SpatialTimingInformation.startOffset.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t SpatialTimingInformation.endOffset.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t SpatialTimingInformation.alignmentDurationLimit.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t SpatialTimingInformation.timeDrift.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t SpatialTimingInformation.timestamp.getter()
{
  result = *(v0 + 128);
  v2 = *(v0 + 136);
  return result;
}

uint64_t SpatialTimingInformation.version.getter()
{
  result = *(v0 + 144);
  v2 = *(v0 + 152);
  return result;
}

void static SpatialTimingInformation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 105);
  v4 = *(a1 + 106);
  v5 = *(a1 + 128);
  v39 = *(a1 + 168);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  v13 = *(a2 + 64);
  v14 = *(a2 + 72);
  v15 = *(a2 + 80);
  v16 = *(a2 + 88);
  v17 = *(a2 + 96);
  v18 = *(a2 + 104);
  v19 = *(a2 + 105);
  v20 = *(a2 + 106);
  v21 = *(a2 + 112);
  v22 = *(a2 + 120);
  v23 = *(a2 + 128);
  v24 = *(a2 + 136);
  v25 = *(a2 + 144);
  v26 = *(a2 + 152);
  v27 = *(a2 + 160);
  v28 = *(a2 + 168);
  if (*(a1 + 8))
  {
    if (!v6)
    {
      return;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v29 = v6;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      return;
    }
  }

  if (*(a1 + 24))
  {
    if (!v8)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 16) == v7)
    {
      v30 = v8;
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      return;
    }
  }

  if (*(a1 + 40))
  {
    if (!v10)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 32) == v9)
    {
      v31 = v10;
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      return;
    }
  }

  if (*(a1 + 56))
  {
    if (!v12)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 48) == v11)
    {
      v32 = v12;
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
      return;
    }
  }

  if (*(a1 + 72))
  {
    if (!v14)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 64) == v13)
    {
      v33 = v14;
    }

    else
    {
      v33 = 1;
    }

    if (v33)
    {
      return;
    }
  }

  if (*(a1 + 88))
  {
    if (!v16)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 80) == v15)
    {
      v34 = v16;
    }

    else
    {
      v34 = 1;
    }

    if (v34)
    {
      return;
    }
  }

  if (*(a1 + 104))
  {
    if (!v18)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 96) == v17)
    {
      v35 = v18;
    }

    else
    {
      v35 = 1;
    }

    if (v35)
    {
      return;
    }
  }

  if (v3 == 2)
  {
    if (v19 != 2)
    {
      return;
    }
  }

  else if (v19 == 2 || ((v19 ^ v3) & 1) != 0)
  {
    return;
  }

  if (v4 == 2)
  {
    if (v20 != 2)
    {
      return;
    }
  }

  else if (v20 == 2 || ((v20 ^ v4) & 1) != 0)
  {
    return;
  }

  if (*(a1 + 120))
  {
    if (!v22)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 112) == v21)
    {
      v36 = v22;
    }

    else
    {
      v36 = 1;
    }

    if (v36)
    {
      return;
    }
  }

  if (*(a1 + 136))
  {
    if (!v24)
    {
      return;
    }
  }

  else
  {
    if (v5 == v23)
    {
      v37 = v24;
    }

    else
    {
      v37 = 1;
    }

    if (v37)
    {
      return;
    }
  }

  if (*(a1 + 152))
  {
    if (!v26)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 144) == v25)
    {
      v38 = v26;
    }

    else
    {
      v38 = 1;
    }

    if (v38)
    {
      return;
    }
  }

  if (sub_1D4F0B2DC(*(a1 + 160), v27, v5))
  {

    sub_1D4F286E0();
  }
}

void SpatialTimingInformation.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v36 = *(v2 + 24);
  v30 = v2[2];
  v31 = v2[4];
  v32 = v2[6];
  v37 = *(v2 + 40);
  v38 = *(v2 + 56);
  v39 = *(v2 + 72);
  v33 = v2[8];
  v34 = v2[10];
  v4 = v2[12];
  v40 = *(v2 + 88);
  v41 = *(v2 + 104);
  v42 = *(v2 + 105);
  v5 = *(v2 + 106);
  v6 = v2[14];
  v7 = *(v2 + 120);
  v8 = v2[16];
  v9 = *(v2 + 136);
  v35 = v2[18];
  v10 = *(v2 + 152);
  if (*(v2 + 8) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v29 = *(v2 + 106);
    v11 = *(v2 + 120);
    v12 = v2[14];
    v13 = *(v2 + 136);
    v14 = v2[16];
    v15 = *(v2 + 152);
    v16 = v2[12];
    v17 = v2[20];
    v18 = v2[21];
    v19 = *v2;
    sub_1D56162F8();
    if ((v19 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v4 = v16;
    v10 = v15;
    v8 = v14;
    v9 = v13;
    v6 = v12;
    v7 = v11;
    v5 = v29;
    MEMORY[0x1DA6EC100](v20);
  }

  sub_1D56162F8();
  if (!v36)
  {
    v21 = OUTLINED_FUNCTION_7_142(v30);
    MEMORY[0x1DA6EC100](v21);
  }

  sub_1D56162F8();
  if (!v37)
  {
    v22 = OUTLINED_FUNCTION_7_142(v31);
    MEMORY[0x1DA6EC100](v22);
  }

  sub_1D56162F8();
  if (!v38)
  {
    v23 = OUTLINED_FUNCTION_7_142(v32);
    MEMORY[0x1DA6EC100](v23);
  }

  sub_1D56162F8();
  if (!v39)
  {
    v24 = OUTLINED_FUNCTION_7_142(v33);
    MEMORY[0x1DA6EC100](v24);
  }

  sub_1D56162F8();
  if (!v40)
  {
    v25 = OUTLINED_FUNCTION_7_142(v34);
    MEMORY[0x1DA6EC100](v25);
  }

  if (v41)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v26 = v4;
    }

    else
    {
      v26 = 0;
    }

    MEMORY[0x1DA6EC100](v26);
  }

  if (v42 != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (v5 != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (v7)
  {
    sub_1D56162F8();
    if (!v9)
    {
      goto LABEL_29;
    }
  }

  else
  {
    sub_1D56162F8();
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v28 = v6;
    }

    else
    {
      v28 = 0;
    }

    MEMORY[0x1DA6EC100](v28);
    if (!v9)
    {
LABEL_29:
      sub_1D56162F8();
      if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v27 = v8;
      }

      else
      {
        v27 = 0;
      }

      MEMORY[0x1DA6EC100](v27);
      if (!v10)
      {
        goto LABEL_33;
      }

      goto LABEL_39;
    }
  }

  sub_1D56162F8();
  if (!v10)
  {
LABEL_33:
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](v35);
    goto LABEL_40;
  }

LABEL_39:
  sub_1D56162F8();
LABEL_40:
  sub_1D4F0B2F4(a1);

  sub_1D4F31AC0();
}

uint64_t SpatialTimingInformation.hashValue.getter()
{
  sub_1D56162D8();
  SpatialTimingInformation.hash(into:)(v1);
  return sub_1D5616328();
}

uint64_t sub_1D5529078()
{
  sub_1D56162D8();
  SpatialTimingInformation.hash(into:)(v1);
  return sub_1D5616328();
}

void SpatialTimingInformation.init(from:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v25 = a2;
  v28 = sub_1D5611C78();
  v4 = OUTLINED_FUNCTION_4(v28);
  v24 = v5;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2610, &unk_1D5648880);
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v20 = &v24 - v19;
  sub_1D4E628D4(a1, v27);
  sub_1D5612D38();
  OUTLINED_FUNCTION_2_193(&qword_1EC7F8050);
  OUTLINED_FUNCTION_6_155(&qword_1EC7F8058);
  sub_1D5610768();
  if (v2)
  {
    __src[0] = v2;
    v21 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v22 = v28;
    if (swift_dynamicCast())
    {

      v23 = v24;
      (*(v24 + 32))(v12, v10, v22);
      sub_1D5615C18();
      swift_allocError();
      sub_1D5611C68();
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(a1);
      (*(v23 + 8))(v12, v22);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }
  }

  else
  {
    sub_1D5431B8C(__src);
    __swift_destroy_boxed_opaque_existential_1(a1);
    (*(v16 + 8))(v20, v13);
    memcpy(v25, __src, 0xB0uLL);
  }
}

uint64_t SpatialTimingInformation.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2610, &unk_1D5648880);
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = &__dst[-v7];
  memcpy(__dst, v0, sizeof(__dst));
  sub_1D54328C8(v8);
  OUTLINED_FUNCTION_2_193(&qword_1EC7F8050);
  OUTLINED_FUNCTION_6_155(&qword_1EC7F8058);
  sub_1D5610778();
  return (*(v4 + 8))(v8, v1);
}

unint64_t SpatialTimingInformation.description.getter()
{
  v1 = *(v0 + 160);
  sub_1D5615B68();

  v2 = MEMORY[0x1DA6EAF70](v1, &type metadata for SpatialOffset);
  MEMORY[0x1DA6EAC70](v2);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD000000000000022;
}

uint64_t sub_1D5529598(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5612D38();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D55295E0()
{
  result = qword_1EC7F8060;
  if (!qword_1EC7F8060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F8060);
  }

  return result;
}

uint64_t sub_1D552963C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 160);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D552967C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 160) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D5529764(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *(v2 + qword_1EC7F8068);
  v7 = *(*v2 + qword_1EDD76F00);
  v6 = *(*v2 + qword_1EDD76F00 + 8);
  swift_getAssociatedTypeWitness();

  v8 = sub_1D560CC48();
  v19 = v5;
  if (v8)
  {
    v18 = v8;
    sub_1D5615C78();
    v9 = sub_1D5614D18();

    if (v9)
    {
      v10 = *(v3 + qword_1EC7F8070);
      if (v10[2] || (v15 = v3 + qword_1EC7F8078, (v16 = *(v3 + qword_1EC7F8078)) == 0))
      {
        v11 = sub_1D560CC38();
        v12 = sub_1D5529940(v10, v11 & 1);
        if (v12)
        {
          v13 = v12;
          if ([v12 sortDescriptor])
          {
            MEMORY[0x1DA6EAF30]();
            sub_1D4E6C078(*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
            sub_1D56151F8();
            v14 = *a2;

            *a2 = v14;
          }

          else
          {
          }
        }
      }

      else
      {
        v17 = *(v15 + 1);

        v16(a2);
        sub_1D4EA7420(v16);
      }
    }
  }

  else
  {
  }
}

id sub_1D5529940(void *a1, char a2)
{
  result = a1[2];
  if (result)
  {
    if (result == 1)
    {
      v6 = a1[4];
      v5 = a1[5];
      sub_1D5529C0C();

      return sub_1D5529A1C(v6, v5, a2 & 1);
    }

    else
    {
      sub_1D5529C0C();

      return sub_1D5529A98(v7, a2 & 1);
    }
  }

  return result;
}

void sub_1D55299CC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1D55299EC();
}

id sub_1D5529A1C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1D5614D38();

  v6 = [v4 initWithKey:v5 isAscending:a3 & 1];

  return v6;
}

id sub_1D5529A98(uint64_t a1, char a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = sub_1D5615158();

  v5 = [v3 initWithKeyPath:v4 isAscending:a2 & 1];

  return v5;
}

uint64_t sub_1D5529B14()
{
  v1 = *(v0 + qword_1EC7F8068);

  v2 = *(v0 + qword_1EC7F8070);

  v3 = *(v0 + qword_1EC7F8078);
  v4 = *(v0 + qword_1EC7F8078 + 8);

  return sub_1D4EA7420(v3);
}

uint64_t sub_1D5529B68()
{
  v0 = sub_1D560CCD8();
  v1 = *(v0 + qword_1EC7F8068);

  v2 = *(v0 + qword_1EC7F8070);

  v3 = *(v0 + qword_1EC7F8078 + 8);
  sub_1D4EA7420(*(v0 + qword_1EC7F8078));
  return v0;
}

uint64_t sub_1D5529BC4()
{
  v0 = sub_1D5529B68();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

unint64_t sub_1D5529C0C()
{
  result = qword_1EDD525F0;
  if (!qword_1EDD525F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD525F0);
  }

  return result;
}

uint64_t Artist.PlayableItem.init<A>(_:configuration:sharedRelatedItemStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v154 = a3;
  v155 = a5;
  v156 = a2;
  v157 = a6;
  v136 = sub_1D5614408();
  v8 = OUTLINED_FUNCTION_4(v136);
  v135 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v147 = v12;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA58, &unk_1D5634110);
  v13 = OUTLINED_FUNCTION_4(v134);
  v133 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v17);
  v132 = &v118 - v18;
  OUTLINED_FUNCTION_70_0();
  v146 = sub_1D560FD68();
  v19 = OUTLINED_FUNCTION_4(v146);
  v131 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_0();
  v145 = v23;
  OUTLINED_FUNCTION_70_0();
  v130 = sub_1D5614898();
  v24 = OUTLINED_FUNCTION_4(v130);
  v129 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_0();
  v144 = v28;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
  v29 = OUTLINED_FUNCTION_4(v143);
  v127 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v33);
  v126 = &v118 - v34;
  OUTLINED_FUNCTION_70_0();
  v142 = sub_1D5610588();
  v35 = OUTLINED_FUNCTION_4(v142);
  v125 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_0();
  v141 = v39;
  v158 = a4;
  v152 = *(a4 - 8);
  v40 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5_0();
  v153 = v42;
  OUTLINED_FUNCTION_70_0();
  v140 = sub_1D5613AF8();
  v43 = OUTLINED_FUNCTION_4(v140);
  v139 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  v151 = v47;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB48, &unk_1D5630FE0);
  v48 = OUTLINED_FUNCTION_4(v150);
  v138 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v52);
  v149 = &v118 - v53;
  OUTLINED_FUNCTION_70_0();
  v54 = sub_1D560F308();
  v55 = OUTLINED_FUNCTION_4(v54);
  v57 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_5_0();
  v61 = v60;
  OUTLINED_FUNCTION_70_0();
  v62 = sub_1D560F688();
  v63 = OUTLINED_FUNCTION_4(v62);
  v65 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_59_0();
  v70 = v68 - v69;
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v118 - v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8080, &qword_1D5670E98);
  sub_1D5610648();
  (*(v65 + 16))(v70, v73, v62);
  v75 = (*(v65 + 88))(v70, v62);
  v76 = *MEMORY[0x1E6975798];
  v148 = a1;
  if (v75 == v76)
  {
    v77 = OUTLINED_FUNCTION_13_99(v65);
    v78(v77);
    v122 = v57;
    v79 = *(v57 + 32);
    v121 = v61;
    v120 = v54;
    v79(v61, v70, v54);
    sub_1D552AF60(&qword_1EDD53418, MEMORY[0x1E6975660]);
    v80 = v149;
    sub_1D5610598();
    v81 = v138;
    (*(v138 + 16))(v137, v80, v150);
    v82 = v152;
    v83 = v156;
    v84 = v158;
    (*(v152 + 16))(v153, v156, v158);
    sub_1D5613B08();
    (*(v82 + 8))(v83, v84);
    OUTLINED_FUNCTION_24_0(v74);
    (*(v85 + 8))(v148, v74);
    (*(v81 + 8))(v149, v150);
    (*(v122 + 8))(v121, v120);
    (*(v65 + 8))(v73, v62);
    v86 = OUTLINED_FUNCTION_8_134(&v163);
    v87(v86, v151, v140);
LABEL_8:
    type metadata accessor for Artist.PlayableItem();
    return swift_storeEnumTagMultiPayload();
  }

  v88 = v65;
  v89 = v74;
  v151 = v73;
  v90 = v156;
  v91 = v158;
  v92 = v75 == *MEMORY[0x1E69757A8];
  v123 = v62;
  if (v92)
  {
    v93 = v88;
    v94 = OUTLINED_FUNCTION_13_99(v88);
    v95(v94);
    v96 = v125;
    (*(v125 + 32))(v141, v70, v142);
    sub_1D552AF60(&qword_1EDD53310, MEMORY[0x1E6975CF0]);
    v97 = v126;
    sub_1D5610598();
    v98 = v127;
    (*(v127 + 16))(v124, v97, v143);
    v99 = v152;
    (*(v152 + 16))(v153, v90, v91);
    sub_1D56148A8();
    (*(v99 + 8))(v90, v91);
    OUTLINED_FUNCTION_24_0(v89);
    (*(v100 + 8))(v148, v89);
    (*(v98 + 8))(v97, v143);
    (*(v96 + 8))(v141, v142);
    (*(v93 + 8))(v151, v123);
    v101 = OUTLINED_FUNCTION_8_134(v161);
    v102(v101, v144, v130);
    goto LABEL_8;
  }

  if (v75 == *MEMORY[0x1E69757A0])
  {
    v103 = v156;
    v119 = v88;
    v104 = OUTLINED_FUNCTION_13_99(v88);
    v105(v104);
    v106 = v131;
    (*(v131 + 32))(v145, v70, v146);
    sub_1D552AF60(&qword_1EDD53368, MEMORY[0x1E6975B30]);
    v107 = v132;
    sub_1D5610598();
    v108 = v133;
    v109 = v134;
    (*(v133 + 16))(v128, v107, v134);
    v110 = v152;
    v111 = v103;
    v112 = v103;
    v113 = v158;
    (*(v152 + 16))(v153, v111, v158);
    sub_1D5614418();
    (*(v110 + 8))(v112, v113);
    OUTLINED_FUNCTION_24_0(v89);
    (*(v114 + 8))(v148, v89);
    (*(v108 + 8))(v107, v109);
    (*(v106 + 8))(v145, v146);
    (*(v119 + 8))(v151, v123);
    v115 = OUTLINED_FUNCTION_8_134(&v162);
    v116(v115, v147, v136);
    goto LABEL_8;
  }

  v159 = 0;
  v160 = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD00000000000002CLL, 0x80000001D56907C0);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](0xD000000000000036, 0x80000001D56907F0);
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t Artist.PlayableItem.convertToCloudResource<A>(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v108 = a1;
  v109 = a2;
  v110 = a3;
  v111 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA58, &unk_1D5634110);
  v5 = OUTLINED_FUNCTION_4(v4);
  v105 = v6;
  v106 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v104 = &v94 - v9;
  OUTLINED_FUNCTION_70_0();
  v10 = sub_1D5614408();
  v11 = OUTLINED_FUNCTION_4(v10);
  v102 = v12;
  v103 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v101 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
  v17 = OUTLINED_FUNCTION_4(v16);
  v99 = v18;
  v100 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v97 = &v94 - v21;
  OUTLINED_FUNCTION_70_0();
  v98 = sub_1D5614898();
  v22 = OUTLINED_FUNCTION_4(v98);
  v96 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_0();
  v95 = v26;
  OUTLINED_FUNCTION_70_0();
  v27 = sub_1D560F688();
  v28 = OUTLINED_FUNCTION_4(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB48, &unk_1D5630FE0);
  v34 = OUTLINED_FUNCTION_4(v33);
  v94 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v39 = &v94 - v38;
  v40 = sub_1D5613AF8();
  v41 = OUTLINED_FUNCTION_4(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5();
  v48 = v47 - v46;
  v49 = type metadata accessor for Artist.PlayableItem();
  OUTLINED_FUNCTION_24_0(v49);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5();
  sub_1D4F51070(v107, v54 - v53);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v107 = v30 + 8;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v57 = v95;
      v56 = v96;
      v58 = OUTLINED_FUNCTION_6_156();
      v59 = v98;
      v60(v58);
      v61 = v97;
      OUTLINED_FUNCTION_11_124();
      sub_1D5614638();
      v62 = v100;
      sub_1D5610648();
      v63 = *MEMORY[0x1E69757A8];
      v64 = OUTLINED_FUNCTION_10_128();
      v65(v64);
      OUTLINED_FUNCTION_3_200();
      sub_1D552AF60(v66, v67);
      OUTLINED_FUNCTION_9_130();
      sub_1D5610598();
      v68 = OUTLINED_FUNCTION_4_155();
      v69(v68);
      (*(v99 + 8))(v61, v62);
      return (*(v56 + 8))(v57, v59);
    }

    else
    {
      v81 = v101;
      v80 = v102;
      v82 = OUTLINED_FUNCTION_6_156();
      v83 = v103;
      v84(v82);
      v85 = v104;
      OUTLINED_FUNCTION_11_124();
      sub_1D5614328();
      v86 = v106;
      sub_1D5610648();
      v87 = *MEMORY[0x1E69757A0];
      v88 = OUTLINED_FUNCTION_10_128();
      v89(v88);
      OUTLINED_FUNCTION_3_200();
      sub_1D552AF60(v90, v91);
      OUTLINED_FUNCTION_9_130();
      sub_1D5610598();
      v92 = OUTLINED_FUNCTION_4_155();
      v93(v92);
      (*(v105 + 8))(v85, v86);
      return (*(v80 + 8))(v81, v83);
    }
  }

  else
  {
    v71 = OUTLINED_FUNCTION_6_156();
    v72(v71);
    OUTLINED_FUNCTION_11_124();
    sub_1D56139D8();
    sub_1D5610648();
    v73 = *MEMORY[0x1E6975798];
    v74 = OUTLINED_FUNCTION_10_128();
    v75(v74);
    OUTLINED_FUNCTION_3_200();
    sub_1D552AF60(v76, v77);
    OUTLINED_FUNCTION_9_130();
    sub_1D5610598();
    v78 = OUTLINED_FUNCTION_4_155();
    v79(v78);
    (*(v94 + 8))(v39, v33);
    return (*(v43 + 8))(v48, v40);
  }
}

uint64_t sub_1D552AEF4()
{
  sub_1D552AF60(&qword_1EC7EC290, type metadata accessor for Artist.PlayableItem);

  return sub_1D5612668();
}

uint64_t sub_1D552AF60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D552AFA8()
{
  v1 = sub_1D56126B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x1E6976588])
  {
    return 30;
  }

  if (v6 == *MEMORY[0x1E69765A8])
  {
    return 8;
  }

  if (v6 == *MEMORY[0x1E6976590])
  {
    return 10;
  }

  if (v6 == *MEMORY[0x1E69765A0])
  {
    return 12;
  }

  if (v6 == *MEMORY[0x1E6976598])
  {
    return 23;
  }

  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D552B17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 32);
  return sub_1D552B14C();
}

uint64_t sub_1D552B188(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  type metadata accessor for LRUDictionary.Container();
  swift_getWitnessTable();
  return sub_1D560C678() & 1;
}

uint64_t sub_1D552B250(void *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  return sub_1D552B188(a1, a2);
}

uint64_t sub_1D552B2AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  sub_1D5614CB8();
  v5 = (v2 + *(a2 + 52));
  if (*(v5 + 8) == 1)
  {
    return sub_1D56162F8();
  }

  v7 = *v5;
  sub_1D56162F8();
  return MEMORY[0x1DA6EC0D0](v7);
}

uint64_t sub_1D552B31C()
{
  OUTLINED_FUNCTION_0_263();
  sub_1D552B2AC(v2, v0);
  return sub_1D5616328();
}

uint64_t sub_1D552B374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1D56162D8();
  sub_1D552B2AC(v6, a2);
  return sub_1D5616328();
}

uint64_t sub_1D552B3C8(uint64_t a1, void *a2)
{
  if (*(v2 + 48) == 1)
  {
    sub_1D56162F8();
    sub_1D56162F8();
  }

  else
  {
    v4 = *(v2 + 40);
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](v4);
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](v4);
  }

  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  type metadata accessor for LRUDictionary.Container();
  swift_getWitnessTable();
  return sub_1D560C668();
}

uint64_t sub_1D552B4C8()
{
  OUTLINED_FUNCTION_0_263();
  sub_1D552B3C8(v2, v0);
  return sub_1D5616328();
}

uint64_t sub_1D552B520(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1D56162D8();
  sub_1D552B3C8(v6, a2);
  return sub_1D5616328();
}

void *sub_1D552B5BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = sub_1D552B894;
  v24 = &v25;
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a3;
  __src[3] = a5;
  type metadata accessor for LRUDictionary.Container();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  __src[0] = sub_1D4FD9450(sub_1D552B994, v17, a4, TupleTypeMetadata2, MEMORY[0x1E69E73E0], a6, MEMORY[0x1E69E7410], v12);
  sub_1D56152D8();
  swift_getWitnessTable();
  v13 = sub_1D560C628();
  sub_1D552CD1C(v13, v14, v15, 0, 1, 0, 1, 0, __src, 0);
  (*(*(a4 - 8) + 8))(a1, a4);
  return memcpy(a7, __src, 0x41uLL);
}

uint64_t sub_1D552B76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v14 - 8) + 16))(v11, v15, v14);
  (*(v9 + 16))(v13, a4, a6);
  return sub_1D552CE90(v13, 0, 1, a6, a2);
}

uint64_t sub_1D552B894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[4];
  v6 = v4[5];
  v8 = v4[6];
  return sub_1D552B76C(a1, a2, a3, a4, v4[2], v4[3]);
}

uint64_t sub_1D552B8C4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  type metadata accessor for LRUDictionary.Container();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a3, a3 + *(TupleTypeMetadata2 + 48), a1, a1 + v6);
}

uint64_t sub_1D552B994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 64);
  return sub_1D552B8C4(a1, *(v2 + 56), a2);
}

uint64_t sub_1D552B9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v17 = (*(a2 + 8))(a1);
  }

  else
  {
    v17 = 0;
  }

  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = a3 + 40;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = *(v5 - 8);
      v8 = (*(*v5 + 8))();
      v10 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = *(v6 + 16);
        sub_1D4F00DD8();
        v6 = v14;
      }

      v11 = *(v6 + 16);
      if (v11 >= *(v6 + 24) >> 1)
      {
        sub_1D4F00DD8();
        v6 = v15;
      }

      *(v6 + 16) = v11 + 1;
      v12 = v6 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v10;
      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return v17;
}

uint64_t sub_1D552BB24(uint64_t a1, uint64_t a2, char a3, int64x2_t *a4, uint64_t a5, uint64_t a6, char a7, int64x2_t *a8)
{
  if ((a3 & 1) == 0)
  {
    if (a7)
    {
      return 0;
    }

    if (a1 != a5 || a2 != a6)
    {
      return 0;
    }

    return sub_1D4EFA2E4(a4, a8);
  }

  if (a7)
  {
    return sub_1D4EFA2E4(a4, a8);
  }

  return 0;
}

void sub_1D552BB54(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](a2);
    MEMORY[0x1DA6EC0D0](a3);
  }

  sub_1D4F068DC(a1, a5);
}

uint64_t sub_1D552BBC8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1D56162D8();
  sub_1D56162F8();
  if ((a3 & 1) == 0)
  {
    MEMORY[0x1DA6EC0D0](a1);
    MEMORY[0x1DA6EC0D0](a2);
  }

  sub_1D4F068DC(v9, a4);
  return sub_1D5616328();
}

uint64_t sub_1D552BCB8()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  sub_1D56162D8();
  sub_1D56162F8();
  if (v3 != 1)
  {
    MEMORY[0x1DA6EC0D0](v2);
    MEMORY[0x1DA6EC0D0](v1);
  }

  sub_1D4F068DC(v6, v4);
  return sub_1D5616328();
}

uint64_t sub_1D552BD4C()
{
  v1 = *(v0 + 32);
  if (v1 < 0)
  {
    v3 = 0x80000001D5690870;
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0x6F727265204C5153;
    v3 = 0xE900000000000072;
  }

  MEMORY[0x1DA6EAC70](v2, v3);
  v4 = sub_1D552BE98(*v0, *(v0 + 8), *(v0 + 16) & 1, *(v0 + 24));
  MEMORY[0x1DA6EAC70](v4);

  OUTLINED_FUNCTION_0_264();

  if (v1 < 0)
  {
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  }

  else
  {
    MEMORY[0x1DA6EAC70](8250, 0xE200000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    OUTLINED_FUNCTION_0_264();
  }

  return 0;
}

uint64_t sub_1D552BE98(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    sub_1D5615B68();

    v5 = sub_1D5100E20();
    MEMORY[0x1DA6EAC70](v5);

    MEMORY[0x1DA6EAC70](8236, 0xE200000000000000);
    MEMORY[0x1DA6EAC70](0xD000000000000010, 0x80000001D56908B0);
  }

  v6 = *(a4 + 16);
  if (v6)
  {
    sub_1D5615B68();

    v7 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v7);

    MEMORY[0x1DA6EAC70](0x696E69616D657220, 0xEF7065747320676ELL);
    if (v6 == 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = 115;
    }

    if (v6 == 1)
    {
      v9 = 0xE000000000000000;
    }

    else
    {
      v9 = 0xE100000000000000;
    }

    MEMORY[0x1DA6EAC70](v8, v9);

    OUTLINED_FUNCTION_0_264();
  }

  else
  {
    MEMORY[0x1DA6EAC70](0xD000000000000012, 0x80000001D5690890);
  }

  return 0;
}

uint64_t sub_1D552C06C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1D552C0B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 2 * -a2;
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D552C118(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32) & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *(result + 16) &= 1uLL;
  *(result + 32) = v2;
  return result;
}

unint64_t sub_1D552C15C()
{
  result = qword_1EC7F8090[0];
  if (!qword_1EC7F8090[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC7F8090);
  }

  return result;
}

uint64_t sub_1D552C1B0(uint64_t a1)
{
  v2 = *(a1 + 24);
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v58 = v9 - v8;
  v11 = *(v10 + 16);
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v56 = sub_1D56158D8();
  OUTLINED_FUNCTION_1_0();
  v53 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13();
  v55 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v50 - v27;
  v65 = 0;
  v66 = 0xE000000000000000;
  if (sub_1D552CF44(a1))
  {
    v29 = 6109787;
    v30 = 0xE300000000000000;
  }

  else
  {
    MEMORY[0x1DA6EAC70](91, 0xE100000000000000);
    v31 = sub_1D55331E8(a1);
    v50[1] = v32;
    v50[2] = v31;
    v61 = v31;
    v62 = v32;
    v50[0] = v33;
    v63 = v33;
    v64 = v34;
    v35 = *(a1 + 32);
    v57 = v2;
    v36 = _s8IteratorVMa();
    v53 += 4;
    v54 = v36;
    v51 = (v4 + 32);
    v52 = (v13 + 32);
    v37 = (v4 + 8);
    v38 = (v13 + 8);
    for (i = 1; ; i = 0)
    {
      v40 = v55;
      sub_1D55332D8(v54, v55);
      (*v53)(v28, v40, v56);
      if (__swift_getEnumTagSinglePayload(v28, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v41 = TupleTypeMetadata2;
      v42 = *(TupleTypeMetadata2 + 48);
      (*v52)(v19, v28, v11);
      (*v51)(v58, &v28[v42], v57);
      if ((i & 1) == 0)
      {
        OUTLINED_FUNCTION_3_201();
      }

      v59 = 0;
      v60 = 0xE000000000000000;
      sub_1D5616138();
      MEMORY[0x1DA6EAC70](8250, 0xE200000000000000);
      v43 = v19;
      v44 = v58;
      v45 = v11;
      v46 = v57;
      sub_1D5616138();
      MEMORY[0x1DA6EAC70](v59, v60);

      v47 = v44;
      v19 = v43;
      v48 = v46;
      v11 = v45;
      (*v37)(v47, v48);
      (*v38)(v43, v45);
      TupleTypeMetadata2 = v41;
    }

    v29 = 93;
    v30 = 0xE100000000000000;
  }

  MEMORY[0x1DA6EAC70](v29, v30);
  return v65;
}

uint64_t sub_1D552C59C(uint64_t a1)
{
  v2 = *(a1 + 24);
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v75 = v9 - v8;
  v72 = v10;
  v11 = v10[2];
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v76 = v18 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v71 = sub_1D56158D8();
  OUTLINED_FUNCTION_1_0();
  *&v74 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13();
  v70 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v62 - v26;
  v81[0] = 0;
  v81[1] = 0xE000000000000000;
  sub_1D5615B68();

  strcpy(v81, "LRUDictionary<");
  HIBYTE(v81[1]) = -18;
  v77 = v11;
  v28 = sub_1D5616458();
  MEMORY[0x1DA6EAC70](v28);

  OUTLINED_FUNCTION_3_201();
  v64 = v2;
  v29 = sub_1D5616458();
  MEMORY[0x1DA6EAC70](v29);

  MEMORY[0x1DA6EAC70](10302, 0xE200000000000000);
  v82 = v81[0];
  v83 = v81[1];
  v73 = v1;
  if ((*(v1 + 64) & 1) == 0)
  {
    v30 = *(v73 + 56);
    v81[0] = 0;
    v81[1] = 0xE000000000000000;
    sub_1D5615B68();

    strcpy(v81, "maximumCount: ");
    HIBYTE(v81[1]) = -18;
    v79 = v30;
    v31 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v31);

    OUTLINED_FUNCTION_3_201();
    MEMORY[0x1DA6EAC70](v81[0], v81[1]);
  }

  if ((*(v73 + 48) & 1) == 0)
  {
    v32 = *(v73 + 40);
    v81[0] = 0;
    v81[1] = 0xE000000000000000;
    sub_1D5615B68();

    strcpy(v81, "maximumCost: ");
    HIWORD(v81[1]) = -4864;
    v79 = v32;
    v33 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v33);

    OUTLINED_FUNCTION_3_201();
    MEMORY[0x1DA6EAC70](v81[0], v81[1]);
  }

  v34 = sub_1D552CF44(v72);
  v35 = v64;
  if (v34)
  {
    v36 = 6109787;
    v37 = 0xE300000000000000;
  }

  else
  {
    MEMORY[0x1DA6EAC70](91, 0xE100000000000000);
    v38 = v72;
    v63 = sub_1D55331E8(v72);
    v81[0] = v63;
    v81[1] = v39;
    v62[2] = v39;
    v62[1] = v40;
    v81[2] = v40;
    v81[3] = v41;
    v42 = v38[4];
    v43 = _s8IteratorVMa();
    v44 = (v74 + 32);
    v68 = (v13 + 32);
    v69 = v43;
    v67 = (v4 + 32);
    v66 = (v13 + 16);
    v65 = (v4 + 16);
    v45 = (v4 + 8);
    v46 = (v13 + 8);
    v47 = 1;
    v74 = xmmword_1D561C050;
    while (1)
    {
      v48 = v70;
      sub_1D55332D8(v69, v70);
      (*v44)(v27, v48, v71);
      if (__swift_getEnumTagSinglePayload(v27, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v49 = TupleTypeMetadata2;
      v50 = *(TupleTypeMetadata2 + 48);
      (*v68)(v76, v27, v77);
      (*v67)(v75, &v27[v50], v35);
      if ((v47 & 1) == 0)
      {
        OUTLINED_FUNCTION_3_201();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
      v51 = swift_allocObject();
      *(v51 + 16) = v74;
      v52 = v77;
      *(v51 + 56) = v77;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v51 + 32));
      v54 = v76;
      (*v66)(boxed_opaque_existential_0, v76, v52);
      OUTLINED_FUNCTION_2_194();
      sub_1D5615AF8();

      MEMORY[0x1DA6EAC70](8250, 0xE200000000000000);
      v55 = sub_1D552CFE8(v54, v72);
      if ((v56 & 1) == 0)
      {
        v78 = v55;
        v79 = 9256;
        v80 = 0xE200000000000000;
        v57 = sub_1D56160F8();
        MEMORY[0x1DA6EAC70](v57);

        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
        MEMORY[0x1DA6EAC70](v79, v80);
        v35 = v64;
      }

      v58 = swift_allocObject();
      *(v58 + 16) = v74;
      *(v58 + 56) = v35;
      v59 = __swift_allocate_boxed_opaque_existential_0((v58 + 32));
      v60 = v75;
      (*v65)(v59, v75, v35);
      OUTLINED_FUNCTION_2_194();
      sub_1D5615AF8();

      (*v45)(v60, v35);
      (*v46)(v76, v77);
      v47 = 0;
      TupleTypeMetadata2 = v49;
    }

    v36 = 93;
    v37 = 0xE100000000000000;
  }

  MEMORY[0x1DA6EAC70](v36, v37);
  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v82;
}

uint64_t sub_1D552CCB0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_xq_Ri_zRi0_zRi__Ri0__r0_lyxq_Isegnn_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1D552CD1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  type metadata accessor for LRUDictionary.Container();
  swift_getTupleTypeMetadata2();
  sub_1D56151C8();
  sub_1D560C618();

  __src[2] = a1;
  __src[3] = a2;
  __src[4] = a3;
  __src[5] = a4;
  LOBYTE(__src[6]) = a5 & 1;
  __src[7] = a6;
  LOBYTE(__src[8]) = a7 & 1;
  __src[0] = a8;
  __src[1] = a10;
  v14 = type metadata accessor for LRUDictionary();
  sub_1D552D1DC(v14);

  return memcpy(a9, __src, 0x41uLL);
}

uint64_t sub_1D552CE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for LRUDictionary.Container();
  v9 = a5 + *(result + 52);
  *v9 = a2;
  *(v9 + 8) = a3 & 1;
  return result;
}

uint64_t sub_1D552CF44(uint64_t a1)
{
  v5 = *(v1 + 32);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for LRUDictionary.Container();
  sub_1D5615D18();
  swift_getWitnessTable();
  return sub_1D5615678() & 1;
}

uint64_t sub_1D552CFE8(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  v23[0] = a2[2];
  v23[1] = v3;
  v23[2] = v3;
  v23[3] = v4;
  v5 = type metadata accessor for LRUDictionary.Container();
  v6 = sub_1D56158D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v23 - v10;
  v12 = *(v5 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = v23 - v14;
  v16 = v2[2];
  v17 = v2[3];
  v18 = v2[4];
  sub_1D560C698();
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    (*(v7 + 8))(v11, v6);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v15, v11, v5);
    v20 = &v15[*(v5 + 52)];
    v19 = *v20;
    v21 = v20[8];
    (*(v12 + 8))(v15, v5);
  }

  return v19;
}

uint64_t sub_1D552D1DC(void *a1)
{
  v2 = a1;
  v4 = a1[3];
  v5 = a1[4];
  v130 = a1[2];
  v3 = v130;
  v131 = v4;
  v132 = v4;
  v133 = v5;
  v6 = type metadata accessor for LRUDictionary.Container();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v94 - v10;
  v118 = v4;
  v12 = *(v4 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v117 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = v3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v119 = *(TupleTypeMetadata2 - 8);
  v15 = *(v119 + 64);
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v114 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v116 = &v94 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v115 = &v94 - v20;
  result = MEMORY[0x1EEE9AC00](v19);
  v22 = v1;
  v24 = &v94 - v23;
  v25 = v1[7];
  v26 = *(v1 + 64);
  if ((v26 & 1) == 0)
  {
    v27 = v1[4];
    v28 = v22[4];
    v103 = v22;
    v102 = v26;
    result = sub_1D5615CE8();
    LOBYTE(v26) = v102;
    v22 = v103;
    if (v25 < result)
    {
      result = sub_1D5615CE8();
      v98 = result - v25;
      if (__OFSUB__(result, v25))
      {
        goto LABEL_43;
      }

      v96 = v25;
      v29 = v103;
      v30 = *v103;
      if (*v103)
      {
        v95 = v2;
        v121 = v11;
        v100 = v12;
        v99 = v7;
        v97 = v15;
        v31 = v103[1];
        v32 = v103[3];
        v130 = v103[2];
        v131 = v32;
        v132 = v27;
        v122 = v30;
        v113 = v31;
        sub_1D4EA73A4(v30);
        v101 = v5;
        sub_1D560C688();

        swift_getWitnessTable();
        v33 = sub_1D5615088();
        v34 = TupleTypeMetadata2;
        v35 = sub_1D5615178();
        v130 = v35;
        if (v35 != sub_1D5615208())
        {
          v111 = *(v34 + 48);
          v110 = (v120 - 2);
          v109 = (v99 + 32);
          v108 = (v100 + 16);
          v107 = (v99 + 8);
          v106 = (v100 + 8);
          v105 = (v119 + 8);
          v112 = (v119 + 16);
          v104 = (v119 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          do
          {
            v65 = sub_1D56151E8();
            sub_1D56151A8();
            if (v65)
            {
              v66 = *(v119 + 16);
              v66(v24, v33 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v35, v34);
            }

            else
            {
              result = sub_1D5615BB8();
              if (v97 != 8)
              {
                goto LABEL_45;
              }

              v125 = result;
              v66 = *v112;
              (*v112)(v24, &v125, v34);
              swift_unknownObjectRelease();
            }

            sub_1D56152C8();
            v67 = *(v34 + 48);
            v68 = v120;
            v69 = *(v120 - 1);
            v70 = v115;
            (*(v69 + 32))(v115, v24, v120);
            (*v109)(&v70[v67], v111 + v24, v6);
            v71 = v116;
            v66(v116, v70, TupleTypeMetadata2);
            v72 = *(TupleTypeMetadata2 + 48);
            v73 = v24;
            v74 = v117;
            v75 = v118;
            (*v108)(v117, &v71[v72], v118);
            (*v107)(&v71[v72], v6);
            (v122)(v70, v74);
            v76 = v74;
            v24 = v73;
            (*v106)(v76, v75);
            (*v105)(v70, TupleTypeMetadata2);
            v77 = v71;
            v34 = TupleTypeMetadata2;
            (*(v69 + 8))(v77, v68);
            v78 = sub_1D5615208();
            v35 = v130;
          }

          while (v130 != v78);
        }

        sub_1D4EA7420(v122);

        v5 = v101;
        v15 = v97;
        v7 = v99;
        v12 = v100;
        v11 = v121;
        v2 = v95;
        v29 = v103;
      }

      sub_1D560C688();
      result = sub_1D560C608();
      v22 = v29;
      v25 = v96;
      LOBYTE(v26) = v102;
    }
  }

  if (v22[6])
  {
    return result;
  }

  v36 = v25;
  v37 = *v22;
  v38 = v22[1];
  v39 = v2;
  v41 = v22 + 2;
  v40 = v22[2];
  v42 = v22[3];
  v45 = v22 + 4;
  v43 = v22[4];
  v44 = v45[1];
  v129 = 0;
  v128 = v26;
  v113 = v37;
  v130 = v37;
  v131 = v38;
  v112 = v38;
  v109 = v40;
  v132 = v40;
  v133 = v42;
  v110 = v42;
  v111 = v43;
  v134 = v43;
  v135 = v44;
  v136 = 0;
  v137 = v36;
  v138 = v26;
  result = sub_1D552DF9C(v39);
  if (v44 >= result)
  {
    return result;
  }

  v46 = __OFSUB__(result, v44);
  v47 = result - v44;
  if (v46)
  {
    goto LABEL_44;
  }

  v103 = v41;
  v121 = v11;
  v100 = v12;
  v97 = v15;
  v124[0] = v109;
  v124[1] = v110;
  v124[2] = v111;
  v48 = sub_1D560C638();

  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1DA6EAAC0](&v125, v48, WitnessTable);
  v50 = v125;
  v51 = v126;

  v52 = sub_1D5615CE8();

  v122 = v6;
  v101 = v5;
  if (!v52)
  {
LABEL_21:

    v60 = v100;
    v61 = v113;
    if (v113)
    {
      v125 = v109;
      v126 = v110;
      v127 = v111;

      sub_1D4EA73A4(v61);
      sub_1D560C688();
      swift_getWitnessTable();
      v104 = v52;
      v62 = sub_1D5615088();
      v63 = TupleTypeMetadata2;
      v64 = sub_1D5615178();
      v125 = v64;
      if (v64 != sub_1D5615208())
      {
        v121 = *(v63 + 48);
        v111 = v120 - 2;
        v110 = (v7 + 32);
        v109 = (v60 + 16);
        v108 = (v7 + 8);
        v107 = (v60 + 8);
        v106 = (v119 + 8);
        v105 = (v119 + 16);
        v79 = v117;
        do
        {
          v80 = sub_1D56151E8();
          sub_1D56151A8();
          v81 = v114;
          if (v80)
          {
            v82 = *(v119 + 16);
            (v82)(v114, v62 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v64, v63);
          }

          else
          {
            result = sub_1D5615BB8();
            if (v97 != 8)
            {
              goto LABEL_46;
            }

            v124[0] = result;
            v82 = *v105;
            (*v105)(v81, v124, v63);
            swift_unknownObjectRelease();
          }

          sub_1D56152C8();
          v83 = *(v63 + 48);
          v84 = v120;
          v85 = *(v120 - 1);
          v86 = v115;
          (*(v85 + 32))(v115, v81, v120);
          v87 = &v121[v81];
          v88 = v122;
          (*v110)(&v86[v83], v87, v122);
          v89 = v116;
          (v82)(v116, v86, TupleTypeMetadata2);
          v90 = *(TupleTypeMetadata2 + 48);
          v91 = v118;
          (*v109)(v79, &v89[v90], v118);
          (*v108)(&v89[v90], v88);
          (v113)(v86, v79);
          (*v107)(v79, v91);
          v92 = v86;
          v63 = TupleTypeMetadata2;
          (*v106)(v92, TupleTypeMetadata2);
          (*(v85 + 8))(v89, v84);
          v93 = sub_1D5615208();
          v64 = v125;
        }

        while (v125 != v93);
      }

      sub_1D4EA7420(v113);
    }

    sub_1D560C688();
    return sub_1D560C608();
  }

  v107 = v51;
  v108 = v50;
  v53 = 0;
  v54 = &v121[v6[13]];
  v99 = v7;
  v55 = (v7 + 8);
  v104 = v52;
  v56 = v52;
  while (1)
  {
    v46 = __OFSUB__(v56--, 1);
    if (v46)
    {
      break;
    }

    v57 = v121;
    result = sub_1D5615D28();
    if (__OFADD__(v53, 1))
    {
      goto LABEL_41;
    }

    v58 = *v54;
    v59 = v54[8];
    result = (*v55)(v57, v6);
    if ((v59 & 1) == 0)
    {
      v46 = __OFSUB__(v47, v58);
      v47 -= v58;
      if (v46)
      {
        goto LABEL_42;
      }
    }

    if (v47 < 1)
    {
      v52 = v53 + 1;
      v7 = v99;
      goto LABEL_21;
    }

    ++v53;
    v6 = v122;
    if (!v56)
    {
      v7 = v99;
      v52 = v104;
      goto LABEL_21;
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
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1D552DF9C(void *a1)
{
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];

  type metadata accessor for LRUDictionary.Container();
  sub_1D560C638();
  swift_getWitnessTable();
  sub_1D5615078();

  return v2;
}

uint64_t sub_1D552E0AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  result = type metadata accessor for LRUDictionary.Container();
  v7 = (a2 + *(result + 52));
  if (*(v7 + 8))
  {
    v8 = 0;
  }

  else
  {
    v8 = *v7;
  }

  v9 = __OFADD__(v5, v8);
  v10 = v5 + v8;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *a3 = v10;
  }

  return result;
}

uint64_t sub_1D552E128@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  return sub_1D552E0AC(a1, a2, a3);
}

void sub_1D552E148(uint64_t a1)
{
  v1 = *(a1 + 32);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1D502E814();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unsigned __int8 *sub_1D552E1D0(unsigned __int8 *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    v7 = (a2 - v5 + 255) >> 8;
    if (v6 <= 3)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = 2;
    }

    if (v8 >= 0x10000)
    {
      v9 = 4;
    }

    else
    {
      v9 = 2;
    }

    if (v8 < 0x100)
    {
      v9 = 1;
    }

    if (v8 >= 2)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    switch(v10)
    {
      case 1:
        v11 = result[v6];
        if (result[v6])
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v11 = *&result[v6];
        if (*&result[v6])
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v11 = *&result[v6];
        if (!v11)
        {
          goto LABEL_22;
        }

LABEL_18:
        v12 = (v11 - 1) << (8 * v6);
        if (v6 <= 3)
        {
          v13 = *result;
        }

        else
        {
          v12 = 0;
          v13 = *result;
        }

        return (v5 + (v13 | v12) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return __swift_getEnumTagSinglePayload(result, v5, v4);
        }

        return 0;
    }
  }

  return __swift_getEnumTagSinglePayload(result, v5, v4);
}

void sub_1D552E2EC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_28;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_28;
        }

        break;
      case 3:
LABEL_35:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_27;
      default:
LABEL_27:
        if (a2)
        {
LABEL_28:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    bzero(a1, v8);
    if (v8 <= 3)
    {
      v14 = (v13 >> 8) + 1;
    }

    else
    {
      v14 = 1;
    }

    if (v8 > 3)
    {
      *a1 = v13;
    }

    else
    {
      *a1 = v13;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_35;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1D552E49C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8140, &qword_1D5671400);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1D5616428();
  qword_1EDD58C10 = result;
  return result;
}

uint64_t sub_1D552E500()
{
  if (qword_1EDD58C20 != -1)
  {
    swift_once();
  }

  sub_1D5616438();
  return v1;
}

uint64_t sub_1D552E568(char a1)
{
  swift_defaultActor_initialize();
  *(v1 + 120) = xmmword_1D56712C0;
  *(v1 + 136) = xmmword_1D56712D0;
  *(v1 + 152) = 1;
  *(v1 + 160) = *sub_1D560C6A8();
  *(v1 + 112) = a1 & 1;

  return v1;
}

uint64_t sub_1D552E5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D552E5F0, a3, 0);
}

uint64_t sub_1D552E5F0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_1D55319D4();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(MEMORY[0x1E69E88D0] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_1D552E6F0;
  v7 = v0[2];
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v7, v1, v3, 0x293A5F286E7572, 0xE700000000000000, sub_1D5531A28, v4, v8);
}

uint64_t sub_1D552E6F0()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1D552E804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActorQueue.TaskState();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v11[*(v7 + 28)];
  sub_1D56154F8();
  v13 = *(v7 + 32);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8118, &qword_1D5671310);
  (*(*(v14 - 8) + 16))(&v11[v13], a1, v14);
  *v11 = a2;
  swift_beginAccess();
  result = *(a3 + 160);
  v16 = *(result + 24);
  v17 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(a3 + 160);
    if (*(v19 + 16) < v17 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D5530DE0(isUniquelyReferenced_nonNull_native, v17);
      v19 = *(a3 + 160);
    }

    sub_1D553100C((v19 + 16), v19 + ((*(v8 + 80) + 40) & ~*(v8 + 80)), v11);
    swift_endAccess();
    sub_1D552E9A0();
    return sub_1D552FA18(v11);
  }

  return result;
}

uint64_t sub_1D552E9A0()
{
  if (*(v0 + 112) == 1)
  {
    result = swift_beginAccess();
    if (*(*(v0 + 160) + 24))
    {
      swift_beginAccess();
      sub_1D552F270((v0 + 160));
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1D552EA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D5615458();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v14 = *(*(v13 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v21 - v16;
  if (*(a3 + 112) == 1)
  {
    v18 = *(v10 + 16);
    v18(v17, a2, v7);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v7);
    v18(&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
    v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v20 = swift_allocObject();
    *(v20 + 2) = 0;
    *(v20 + 3) = 0;
    *(v20 + 4) = a3;
    (*(v10 + 32))(&v20[v19], &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    *&v20[(v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8] = a4;

    sub_1D51EC8B4(0, 0, v17, &unk_1D56713D0, v20);
  }

  return result;
}

uint64_t sub_1D552EC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D552EC24, a4, 0);
}

uint64_t sub_1D552EC24()
{
  v1 = v0[2];
  sub_1D552EC88(v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1D552EC88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8128, &unk_1D56713D8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - v8;
  v10 = type metadata accessor for ActorQueue.TaskState();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v36 - v17);
  if (*(v3 + 112) != 1 || (*(v3 + 152) & 1) == 0 && *(v3 + 144) == a2)
  {
    return result;
  }

  v36 = result;
  v37 = v9;
  v38 = v6;
  v39 = a1;
  swift_beginAccess();
  v19 = *(v3 + 160);

  for (i = 0; ; ++i)
  {
    v21 = v19[3];
    if (i == v21)
    {
    }

    if (i >= v21)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    v22 = v19[4];
    v23 = i + v22 >= v19[2] ? v19[2] : 0;
    v24 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v25 = *(v11 + 72);
    sub_1D552F9B4(v19 + v24 + (i + v22 - v23) * v25, v18);
    v26 = *v18;
    result = sub_1D552FA18(v18);
    if (v26 == a2)
    {
      break;
    }
  }

  swift_beginAccess();
  result = *(v3 + 160);
  if (i >= *(result + 24))
  {
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v37;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D5531578();
  }

  v29 = *(v3 + 160);
  v30 = *(v29 + 32);
  if (v30 + i >= *(v29 + 16))
  {
    v31 = *(v29 + 16);
  }

  else
  {
    v31 = 0;
  }

  v32 = *(v38 + 48);
  v33 = (v30 - v31 + i) * v25;
  sub_1D5531670(v29 + v24 + v33, &v28[v32]);
  sub_1D5531670(&v28[v32], v15);
  v34 = *(v36 + 20);
  v35 = sub_1D5615458();
  (*(*(v35 - 8) + 24))(&v15[v34], v39, v35);
  sub_1D552F9B4(v15, *(v3 + 160) + v24 + v33);
  sub_1D552FA18(v15);
  swift_endAccess();
  return sub_1D552E9A0();
}

uint64_t sub_1D552EF80()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8118, &qword_1D5671310);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8138, &qword_1D56713F8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v27 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - v18;
  swift_beginAccess();
  if (*(*(v0 + 160) + 24) < 1)
  {
    v21 = type metadata accessor for ActorQueue.TaskState();
    v22 = v19;
    v23 = 1;
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D5531578();
    }

    v20 = *(v0 + 160);
    v21 = type metadata accessor for ActorQueue.TaskState();
    sub_1D55316D4((v20 + 16), v20 + ((*(*(v21 - 8) + 80) + 40) & ~*(*(v21 - 8) + 80)), v19);
    v22 = v19;
    v23 = 0;
  }

  __swift_storeEnumTagSinglePayload(v22, v23, 1, v21);
  swift_endAccess();
  sub_1D5531A30(v19, v17);
  type metadata accessor for ActorQueue.TaskState();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v21);
  if (EnumTagSinglePayload == 1)
  {
    sub_1D5531AA0(v17);
    v25 = 0;
  }

  else
  {
    v25 = *v17;
    sub_1D552FA18(v17);
  }

  *(v1 + 144) = v25;
  *(v1 + 152) = EnumTagSinglePayload == 1;
  sub_1D5531A30(v19, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v21) == 1)
  {
    sub_1D5531AA0(v19);
    v19 = v14;
  }

  else
  {
    (*(v5 + 16))(v9, &v14[*(v21 + 24)], v2);
    sub_1D552FA18(v14);
    sub_1D5615358();
    (*(v5 + 8))(v9, v2);
  }

  return sub_1D5531AA0(v19);
}

uint64_t sub_1D552F270(uint64_t *a1)
{
  v3 = type metadata accessor for ActorQueue.TaskState();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D5531578();
  }

  v9 = *a1;
  v10 = *(v4 + 80);
  v11 = (v10 + 40) & ~v10;
  result = sub_1D5531770((*a1 + 16), *a1 + v11);
  if (!v1 && (result & 1) != 0)
  {
    v13 = *(v9 + 24);
    if ((v13 & 0x8000000000000000) == 0)
    {

      if (v13)
      {
        v14 = sub_1D56151D8();
        *(v14 + 16) = v13;
      }

      else
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      v15 = (v10 + 32) & ~v10;
      v28[1] = v13;
      v29 = 0;
      v28[0] = v14 + v15;
      result = sub_1D5531830((v9 + 16), v9 + v11, v28, &v29);
      if (v13 < v29)
      {
        goto LABEL_30;
      }

      *(v14 + 16) = v29;

      v30 = v14;
      result = sub_1D552F4E0(&v30);
      v16 = v30;
      v27 = *(v9 + 24);
      if (v27 < 0)
      {
        goto LABEL_31;
      }

      v17 = v15;
      v18 = 0;
      v19 = *(v30 + 16);
      v25 = v30 + v17;
      v26 = v19;
      while (1)
      {
        if (v27 == v18 || v26 == v18)
        {
        }

        if (v18 >= *(v16 + 16))
        {
          break;
        }

        v21 = *(v4 + 72);
        result = sub_1D552F9B4(v25 + v21 * v18, v7);
        if (v18 >= *(v9 + 24))
        {
          goto LABEL_28;
        }

        v22 = *a1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D5531578();
        }

        v9 = *a1;
        v23 = *(*a1 + 32);
        if ((v18 + v23) >= *(*a1 + 16))
        {
          v24 = *(*a1 + 16);
        }

        else
        {
          v24 = 0;
        }

        sub_1D5531970(v7, v9 + v11 + (v18 + v23 - v24) * v21);
        result = sub_1D552FA18(v7);
        ++v18;
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D552F4E0(uint64_t *a1)
{
  v2 = *(type metadata accessor for ActorQueue.TaskState() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D54FBDAC(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1D552FA74(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_1D552F588()
{
  v1 = *(v0 + 160);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for ActorQueue.TaskState()
{
  result = qword_1EDD58BD0;
  if (!qword_1EDD58BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D552F658()
{
  sub_1D5615458();
  if (v0 <= 0x3F)
  {
    sub_1D552F6EC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D552F6EC()
{
  if (!qword_1EDD52740)
  {
    v0 = sub_1D5615368();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD52740);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ActorQueue.TaskOrder(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D552F830()
{
  result = qword_1EC7F8120;
  if (!qword_1EC7F8120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F8120);
  }

  return result;
}

uint64_t sub_1D552F884(uint64_t a1)
{
  v4 = *(sub_1D5615458() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D4ECF3E8;

  return sub_1D552EC00(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1D552F9B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActorQueue.TaskState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D552FA18(uint64_t a1)
{
  v2 = type metadata accessor for ActorQueue.TaskState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D552FA74(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D56160E8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ActorQueue.TaskState();
        v6 = sub_1D56151D8();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ActorQueue.TaskState() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D552FDC0(v8, v9, a1, v4);
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
    return sub_1D552FBA4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D552FBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ActorQueue.TaskState();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v29 - v14);
  result = MEMORY[0x1EEE9AC00](v13);
  v19 = (&v29 - v18);
  v31 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v23 = -v21;
    v24 = a1 - a3;
    v36 = v20;
    v30 = v21;
    v25 = v20 + v21 * a3;
    while (2)
    {
      v34 = v22;
      v35 = a3;
      v32 = v25;
      v33 = v24;
      do
      {
        sub_1D552F9B4(v25, v19);
        sub_1D552F9B4(v22, v15);
        v26 = *(v8 + 20);
        if (sub_1D5615408())
        {
          v27 = sub_1D56153E8();
        }

        else
        {
          v27 = *v19 < *v15;
        }

        sub_1D552FA18(v15);
        result = sub_1D552FA18(v19);
        if ((v27 & 1) == 0)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return result;
        }

        sub_1D5531670(v25, v12);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1D5531670(v12, v22);
        v22 += v23;
        v25 += v23;
      }

      while (!__CFADD__(v24++, 1));
      a3 = v35 + 1;
      v22 = v34 + v30;
      v24 = v33 - 1;
      v25 = v32 + v30;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1D552FDC0(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v123 = a1;
  v6 = type metadata accessor for ActorQueue.TaskState();
  v131 = *(v6 - 8);
  v7 = *(v131 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v126 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v137 = &v117 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v117 - v13);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v117 - v16);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v128 = (&v117 - v19);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = (&v117 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v26 = (&v117 - v24);
  v133 = a3;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_107:
    a4 = *v123;
    if (!*v123)
    {
      goto LABEL_147;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_109:
      v109 = (v29 + 16);
      for (i = *(v29 + 16); i >= 2; *v109 = i)
      {
        if (!*v133)
        {
          goto LABEL_144;
        }

        v111 = (v29 + 16 * i);
        v112 = *v111;
        v113 = &v109[2 * i];
        v114 = v113[1];
        v115 = v136;
        sub_1D5530708(*v133 + *(v131 + 72) * *v111, *v133 + *(v131 + 72) * *v113, *v133 + *(v131 + 72) * v114, a4);
        v136 = v115;
        if (v115)
        {
          break;
        }

        if (v114 < v112)
        {
          goto LABEL_132;
        }

        if (i - 2 >= *v109)
        {
          goto LABEL_133;
        }

        *v111 = v112;
        v111[1] = v114;
        v116 = *v109 - i;
        if (*v109 < i)
        {
          goto LABEL_134;
        }

        i = *v109 - 1;
        memmove(v113, v113 + 2, 16 * v116);
      }

LABEL_105:

      return;
    }

LABEL_141:
    v29 = sub_1D5530B8C(v29);
    goto LABEL_109;
  }

  v118 = a4;
  v119 = v25;
  v28 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  v138 = v6;
  v120 = &v117 - v24;
  v121 = v23;
  v127 = v17;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v124 = v28;
    if (v28 + 1 < v27)
    {
      v129 = v27;
      v32 = *v133;
      v33 = *(v131 + 72);
      v135 = v28 + 1;
      sub_1D552F9B4(v32 + v33 * v31, v26);
      v132 = v33;
      sub_1D552F9B4(v32 + v33 * v30, v23);
      v34 = *(v6 + 20);
      v35 = sub_1D5615408();
      v122 = v29;
      if (v35)
      {
        LODWORD(v130) = sub_1D56153E8();
      }

      else
      {
        LODWORD(v130) = *v26 < *v23;
      }

      sub_1D552FA18(v23);
      sub_1D552FA18(v26);
      v36 = v30 + 2;
      v37 = v132 * (v30 + 2);
      v38 = v32 + v37;
      v39 = v135;
      v40 = v132 * v135;
      v41 = v32 + v132 * v135;
      v42 = v119;
      do
      {
        v29 = v36;
        v43 = v39;
        a4 = v40;
        v44 = v37;
        if (v36 >= v129)
        {
          break;
        }

        v134 = v36;
        v135 = v39;
        sub_1D552F9B4(v38, v42);
        v45 = v128;
        sub_1D552F9B4(v41, v128);
        v46 = *(v6 + 20);
        v47 = (sub_1D5615408() & 1) != 0 ? sub_1D56153E8() : *v42 < *v45;
        sub_1D552FA18(v45);
        sub_1D552FA18(v42);
        v48 = v47 & 1;
        v29 = v134;
        v43 = v135;
        v36 = v134 + 1;
        v38 += v132;
        v41 += v132;
        v39 = v135 + 1;
        v40 = a4 + v132;
        v37 = v44 + v132;
        v6 = v138;
      }

      while ((v130 & 1) == v48);
      if (v130)
      {
        v30 = v124;
        if (v29 < v124)
        {
          goto LABEL_138;
        }

        if (v124 >= v29)
        {
          v31 = v29;
          v29 = v122;
          goto LABEL_33;
        }

        v49 = v124 * v132;
        do
        {
          if (v30 != v43)
          {
            v135 = v43;
            v50 = *v133;
            if (!*v133)
            {
              goto LABEL_145;
            }

            sub_1D5531670(v50 + v49, v126);
            v51 = v49 < a4 || v50 + v49 >= (v50 + v44);
            if (v51)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v49 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1D5531670(v126, v50 + a4);
            v43 = v135;
          }

          ++v30;
          a4 -= v132;
          v44 -= v132;
          v49 += v132;
        }

        while (v30 < v43--);
        v31 = v29;
        v29 = v122;
        v6 = v138;
      }

      else
      {
        v31 = v29;
        v29 = v122;
      }

      v30 = v124;
    }

LABEL_33:
    v53 = v133[1];
    if (v31 < v53)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_137;
      }

      if (v31 - v30 < v118)
      {
        break;
      }
    }

LABEL_54:
    if (v31 < v30)
    {
      goto LABEL_136;
    }

    v135 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v106 = *(v29 + 16);
      sub_1D4F01D2C();
      v29 = v107;
    }

    v63 = *(v29 + 16);
    v64 = v63 + 1;
    v28 = v135;
    if (v63 >= *(v29 + 24) >> 1)
    {
      sub_1D4F01D2C();
      v28 = v135;
      v29 = v108;
    }

    *(v29 + 16) = v64;
    v65 = v29 + 32;
    v66 = (v29 + 32 + 16 * v63);
    *v66 = v124;
    v66[1] = v28;
    v134 = *v123;
    if (!v134)
    {
      goto LABEL_146;
    }

    if (v63)
    {
      while (1)
      {
        v67 = v64 - 1;
        v68 = (v65 + 16 * (v64 - 1));
        v69 = (v29 + 16 * v64);
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v70 = *(v29 + 32);
          v71 = *(v29 + 40);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_74:
          if (v73)
          {
            goto LABEL_123;
          }

          v85 = *v69;
          v84 = v69[1];
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_126;
          }

          v89 = v68[1];
          v90 = v89 - *v68;
          if (__OFSUB__(v89, *v68))
          {
            goto LABEL_129;
          }

          if (__OFADD__(v87, v90))
          {
            goto LABEL_131;
          }

          if (v87 + v90 >= v72)
          {
            if (v72 < v90)
            {
              v67 = v64 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        if (v64 < 2)
        {
          goto LABEL_125;
        }

        v92 = *v69;
        v91 = v69[1];
        v80 = __OFSUB__(v91, v92);
        v87 = v91 - v92;
        v88 = v80;
LABEL_89:
        if (v88)
        {
          goto LABEL_128;
        }

        v94 = *v68;
        v93 = v68[1];
        v80 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v80)
        {
          goto LABEL_130;
        }

        if (v95 < v87)
        {
          goto LABEL_103;
        }

LABEL_96:
        if (v67 - 1 >= v64)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*v133)
        {
          goto LABEL_143;
        }

        v99 = v14;
        v100 = v29;
        v101 = (v65 + 16 * (v67 - 1));
        v102 = *v101;
        v103 = v67;
        v104 = (v65 + 16 * v67);
        v29 = v104[1];
        v105 = v136;
        sub_1D5530708(*v133 + *(v131 + 72) * *v101, *v133 + *(v131 + 72) * *v104, *v133 + *(v131 + 72) * v29, v134);
        v136 = v105;
        if (v105)
        {
          goto LABEL_105;
        }

        if (v29 < v102)
        {
          goto LABEL_118;
        }

        a4 = *(v100 + 16);
        if (v103 > a4)
        {
          goto LABEL_119;
        }

        *v101 = v102;
        v101[1] = v29;
        if (v103 >= a4)
        {
          goto LABEL_120;
        }

        v64 = a4 - 1;
        memmove(v104, v104 + 2, 16 * (a4 - 1 - v103));
        v29 = v100;
        *(v100 + 16) = a4 - 1;
        v28 = v135;
        v14 = v99;
        v17 = v127;
        if (a4 <= 2)
        {
          goto LABEL_103;
        }
      }

      v74 = v65 + 16 * v64;
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_121;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_122;
      }

      v81 = v69[1];
      v82 = v81 - *v69;
      if (__OFSUB__(v81, *v69))
      {
        goto LABEL_124;
      }

      v80 = __OFADD__(v72, v82);
      v83 = v72 + v82;
      if (v80)
      {
        goto LABEL_127;
      }

      if (v83 >= v77)
      {
        v97 = *v68;
        v96 = v68[1];
        v80 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v80)
        {
          goto LABEL_135;
        }

        if (v72 < v98)
        {
          v67 = v64 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_74;
    }

LABEL_103:
    v27 = v133[1];
    v6 = v138;
    v26 = v120;
    v23 = v121;
    if (v28 >= v27)
    {
      goto LABEL_107;
    }
  }

  v54 = v30 + v118;
  if (__OFADD__(v30, v118))
  {
    goto LABEL_139;
  }

  if (v54 >= v53)
  {
    v54 = v133[1];
  }

  if (v54 < v30)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v31 == v54)
  {
    goto LABEL_54;
  }

  v122 = v29;
  v55 = *v133;
  v56 = *(v131 + 72);
  v57 = *v133 + v56 * (v31 - 1);
  v58 = -v56;
  v59 = v30 - v31;
  v125 = v56;
  a4 = v55 + v31 * v56;
  v129 = v54;
LABEL_42:
  v134 = v57;
  v135 = v31;
  v130 = a4;
  v132 = v59;
  while (1)
  {
    sub_1D552F9B4(a4, v17);
    sub_1D552F9B4(v57, v14);
    v60 = *(v6 + 20);
    if (sub_1D5615408())
    {
      v61 = sub_1D56153E8();
    }

    else
    {
      v61 = *v17 < *v14;
    }

    sub_1D552FA18(v14);
    sub_1D552FA18(v17);
    if ((v61 & 1) == 0)
    {
      v6 = v138;
LABEL_52:
      v31 = v135 + 1;
      v57 = v134 + v125;
      v59 = v132 - 1;
      a4 = v130 + v125;
      if (v135 + 1 == v129)
      {
        v31 = v129;
        v29 = v122;
        v30 = v124;
        goto LABEL_54;
      }

      goto LABEL_42;
    }

    if (!v55)
    {
      break;
    }

    v62 = v137;
    sub_1D5531670(a4, v137);
    v6 = v138;
    swift_arrayInitWithTakeFrontToBack();
    sub_1D5531670(v62, v57);
    v57 += v58;
    a4 += v58;
    v51 = __CFADD__(v59++, 1);
    if (v51)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

uint64_t sub_1D5530708(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = type metadata accessor for ActorQueue.TaskState();
  v8 = *(*(v53 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v53);
  v51 = (&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v9);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v47 - v13);
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = (&v47 - v17);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return result;
  }

  v21 = a2 - a1;
  v22 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v22)
  {
    goto LABEL_67;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_68;
  }

  v25 = v21 / v20;
  v56 = a1;
  v55 = a4;
  v26 = v23 / v20;
  if (v21 / v20 >= v23 / v20)
  {
    v49 = v16;
    sub_1D4F038AC(a2, v23 / v20, a4);
    v33 = a4 + v26 * v20;
    v34 = -v20;
    v35 = v33;
    v52 = -v20;
LABEL_40:
    v50 = a2 + v34;
    v36 = a3;
    v47 = v35;
    while (1)
    {
      if (v33 <= a4)
      {
        v56 = a2;
        v54 = v35;
        goto LABEL_65;
      }

      if (a2 <= a1)
      {
        break;
      }

      v48 = v35;
      v37 = v33 + v34;
      v38 = v49;
      sub_1D552F9B4(v33 + v34, v49);
      v39 = v51;
      sub_1D552F9B4(v50, v51);
      v40 = *(v53 + 20);
      if (sub_1D5615408())
      {
        v41 = sub_1D56153E8();
      }

      else
      {
        v41 = *v38 < *v39;
      }

      v42 = v39;
      a3 = v36 + v52;
      sub_1D552FA18(v42);
      sub_1D552FA18(v38);
      if (v41)
      {
        if (v36 < a2 || a3 >= a2)
        {
          a2 = v50;
          swift_arrayInitWithTakeFrontToBack();
          v35 = v48;
          v34 = v52;
        }

        else
        {
          v35 = v48;
          v22 = v36 == a2;
          v45 = v50;
          a2 = v50;
          v34 = v52;
          if (!v22)
          {
            v46 = v48;
            swift_arrayInitWithTakeBackToFront();
            a2 = v45;
            v35 = v46;
          }
        }

        goto LABEL_40;
      }

      if (v36 < v33 || a3 >= v33)
      {
        swift_arrayInitWithTakeFrontToBack();
        v36 = a3;
        v33 = v37;
        v35 = v37;
        v34 = v52;
      }

      else
      {
        v35 = v37;
        v22 = v33 == v36;
        v36 = a3;
        v33 = v37;
        v34 = v52;
        if (!v22)
        {
          swift_arrayInitWithTakeBackToFront();
          v36 = a3;
          v33 = v37;
          v35 = v37;
        }
      }
    }

    v56 = a2;
    v54 = v47;
  }

  else
  {
    sub_1D4F038AC(a1, v21 / v20, a4);
    v27 = a4 + v25 * v20;
    v54 = v27;
    while (a4 < v27 && a2 < a3)
    {
      sub_1D552F9B4(a2, v18);
      sub_1D552F9B4(a4, v14);
      v29 = *(v53 + 20);
      if (sub_1D5615408())
      {
        v30 = sub_1D56153E8();
      }

      else
      {
        v30 = *v18 < *v14;
      }

      sub_1D552FA18(v14);
      sub_1D552FA18(v18);
      if (v30)
      {
        if (a1 < a2 || a1 >= a2 + v20)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v20;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v20)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v55 = a4 + v20;
        a4 += v20;
      }

      a1 += v20;
      v56 = a1;
    }
  }

LABEL_65:
  sub_1D5530BD0(&v56, &v55, &v54, type metadata accessor for ActorQueue.TaskState);
  return 1;
}

uint64_t sub_1D5530BD0(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  v10 = v5 + (v6 - v5) / v8 * v8;
  if (v4 < v5 || v4 >= v10)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1D5530CB4(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1D5530CE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAD08, &qword_1D561DAF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_3(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_1D5530DE0(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = (*v2 + 16);
  v8 = *v7;
  v9 = type metadata accessor for ActorQueue.TaskState();
  v10 = v9;
  if (v8 >= a2)
  {
    v16 = *(v9 - 8);
    v17 = *(v16 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8130, &qword_1D56713E8);
    v18 = *(v16 + 72);
    v15 = swift_allocObject();
    v19 = *(v6 + 24);
    *(v15 + 16) = v8;
    *(v15 + 24) = v19;
    if (v19 >= 1)
    {
      sub_1D5531468(v15 + 16, v15 + ((v17 + 40) & ~v17), v7, v6 + ((v17 + 40) & ~v17));
    }
  }

  else
  {
    sub_1D560C6B8();
    v11 = *(v10 - 8);
    v12 = *(v11 + 80);
    if (a1)
    {
      v13 = *(v6 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8130, &qword_1D56713E8);
      v14 = *(v11 + 72);
      v15 = swift_allocObject();
      *(v15 + 16) = sub_1D55311E8();
      *(v15 + 24) = v13;
      *(v15 + 32) = 0;
      if (v13 >= 1)
      {
        sub_1D55310C8(v15 + 16, v15 + ((v12 + 40) & ~v12), v7, v6 + ((v12 + 40) & ~v12));
        *(v6 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8130, &qword_1D56713E8);
      v20 = *(v11 + 72);
      v15 = swift_allocObject();
      v21 = sub_1D55311E8();
      v22 = *(v6 + 24);
      *(v15 + 16) = v21;
      *(v15 + 24) = v22;
      *(v15 + 32) = 0;
      if (v22 >= 1)
      {
        sub_1D5531344(v15 + 16, v15 + ((v12 + 40) & ~v12), v7, v6 + ((v12 + 40) & ~v12));
      }
    }
  }

  *v3 = v15;
  return result;
}

void *sub_1D553100C(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = type metadata accessor for ActorQueue.TaskState();
        result = sub_1D552F9B4(a3, a2 + *(*(v10 - 8) + 72) * v5);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_1D55310C8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_24;
  }

  v7 = a3[1];
  v8 = *(type metadata accessor for ActorQueue.TaskState() - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = v5;
      v11 = a4;
      goto LABEL_6;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = 0;
  v9 = 0;
  v10 = v7;
LABEL_6:
  if (v9)
  {
    v12 = v5 < v7;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v8 + 72);
  if (v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if (v10 >= 1)
  {
    if (a4)
    {
      v15 = a4 + v13 * v4;
      v16 = a2;
      sub_1D4F038AC(v15, v10, a2);
      goto LABEL_16;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = 0;
  v16 = a2;
LABEL_16:
  if (v5 < v7 && v9 >= 1)
  {
    if (v14)
    {
      sub_1D4F038AC(v14, v9, v16 + v13 * v10);
      return;
    }

LABEL_26:
    __break(1u);
  }
}

uint64_t sub_1D55311E8()
{
  v1 = _swift_stdlib_malloc_size_3(v0);
  v2 = type metadata accessor for ActorQueue.TaskState();
  v4 = *(v2 - 8);
  result = v2 - 8;
  v5 = *(v4 + 80);
  v6 = *(v4 + 72);
  if (v6)
  {
    v7 = v1 - ((v5 + 40) & ~v5);
    if (v6 != -1 || v7 != 0x8000000000000000)
    {
      return v7 / v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D5531284@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[2];
  v5 = *result - v4;
  if (__OFSUB__(*result, v4))
  {
    __break(1u);
  }

  else
  {
    v7 = result[1];
    v8 = type metadata accessor for ActorQueue.TaskState();
    v10 = *(v8 - 8);
    result = (v8 - 8);
    v9 = v10;
    if (v5 >= v7)
    {
      v11 = 0;
      v12 = 0;
      v13 = v7;
LABEL_6:
      *a3 = a2 + *(v9 + 72) * v4;
      *(a3 + 8) = v13;
      *(a3 + 16) = v11;
      *(a3 + 24) = v12;
      *(a3 + 32) = v5 >= v7;
      return result;
    }

    v12 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v13 = v5;
      v11 = a2;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void sub_1D5531344(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  v8 = *(type metadata accessor for ActorQueue.TaskState() - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = v5;
      v11 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = 0;
  v9 = 0;
  v10 = v7;
LABEL_6:
  v12 = *(v8 + 72);
  if (v10 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v9 >= 1)
  {
    if (v11)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_1D5531468(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  v8 = *(type metadata accessor for ActorQueue.TaskState() - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = v5;
      v11 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = 0;
  v9 = 0;
  v10 = v7;
LABEL_6:
  if (v10 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = *(v8 + 72) * v4;
  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v9 >= 1)
  {
    if (v11)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_1D5531578()
{
  v1 = *v0;
  v2 = type metadata accessor for ActorQueue.TaskState();
  v3 = *(v1 + 16);
  v4 = *(v2 - 8);
  v5 = *(v4 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8130, &qword_1D56713E8);
  v6 = *(v4 + 72);
  v7 = swift_allocObject();
  v8 = *(v1 + 24);
  *(v7 + 16) = v3;
  *(v7 + 24) = v8;
  if (v8 >= 1)
  {
    sub_1D5531468(v7 + 16, v7 + ((v5 + 40) & ~v5), (v1 + 16), v1 + ((v5 + 40) & ~v5));
  }

  *v0 = v7;
  return result;
}

uint64_t sub_1D5531670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActorQueue.TaskState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D55316D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[2];
  v7 = type metadata accessor for ActorQueue.TaskState();
  result = sub_1D5531670(a2 + *(*(v7 - 8) + 72) * v6, a3);
  v9 = a1[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = a1[1];
    if (v11 >= *a1)
    {
      v11 = 0;
    }

    a1[2] = v11;
    if (!__OFSUB__(v12, 1))
    {
      a1[1] = v12 - 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1D5531770(uint64_t *result, uint64_t a2)
{
  v3 = result[2];
  v4 = *result;
  v5 = result[1] + v3;
  if (*result >= v5)
  {
    if (v5 < v3)
    {
      __break(1u);
    }

    else
    {
      v7 = type metadata accessor for ActorQueue.TaskState();
      v9 = *(v7 - 8);
      result = (v7 - 8);
      v8 = v9;
      if (!__OFSUB__(v5, v3))
      {
        v10[0] = a2 + *(v8 + 72) * v3;
        v10[1] = v5 - v3;
        result = sub_1D552FA74(v10);
        if (v2)
        {
          return result;
        }

        return (v4 < v5);
      }
    }

    __break(1u);
    return result;
  }

  return (v4 < v5);
}

uint64_t sub_1D5531830(void *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = sub_1D5531284(a1, a2, &v17);
  v7 = v18;
  if (v18 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v17)
  {
    if (v18)
    {
      v8 = *a3;
      type metadata accessor for ActorQueue.TaskState();
      result = swift_arrayInitWithCopy();
    }
  }

  v9 = *a4 + v7;
  if (__OFADD__(*a4, v7))
  {
    goto LABEL_20;
  }

  *a4 = v9;
  if (v21)
  {
    return result;
  }

  v10 = v20;
  if (__OFADD__(v7, v20))
  {
    goto LABEL_21;
  }

  v11 = v20;
  if (v7 + v20 < v7)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v12 = v19;
  v13 = *a3;
  if (v13)
  {
    v14 = type metadata accessor for ActorQueue.TaskState();
    v15 = *(v14 - 8);
    result = v14 - 8;
    v16 = v13 + *(v15 + 72) * v7;
    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else if (!v19)
  {
    goto LABEL_16;
  }

  if (v10)
  {
    if (v11 < v10)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    type metadata accessor for ActorQueue.TaskState();
    result = swift_arrayInitWithCopy();
    v9 = *a4;
  }

LABEL_16:
  if (__OFADD__(v9, v10))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *a4 = v9 + v10;
  return result;
}

uint64_t sub_1D5531970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActorQueue.TaskState();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D55319D4()
{
  result = qword_1EDD58B70[0];
  if (!qword_1EDD58B70[0])
  {
    type metadata accessor for ActorQueue();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD58B70);
  }

  return result;
}

uint64_t sub_1D5531A30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8138, &qword_1D56713F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5531AA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8138, &qword_1D56713F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5531B0C()
{
  v0 = sub_1D5615EF8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D5531B58(char a1)
{
  if (a1)
  {
    return 0x436D756D6978616DLL;
  }

  else
  {
    return 0x656761726F7473;
  }
}

uint64_t sub_1D5531BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D5531C34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D5531CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D5531D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D5531D80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D5531B0C();
  *a2 = result;
  return result;
}

uint64_t sub_1D5531DB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5531B58(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D5531DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1D5531B08(a1, a2, a3[2], a3[3], a3[4]);
  *a4 = result;
  return result;
}

uint64_t sub_1D5531E18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D5531E6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void sub_1D5531EC0()
{
  OUTLINED_FUNCTION_25_1();
  v27 = v1;
  v2 = v0;
  v24 = v4;
  v25 = v3;
  v6 = v5;
  v8 = v7[3];
  v22 = v7[2];
  v9 = v7[4];
  _s10CodingKeysOMa_0();
  OUTLINED_FUNCTION_1_199();
  swift_getWitnessTable();
  v23 = sub_1D56160D8();
  OUTLINED_FUNCTION_4(v23);
  v26 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  v16 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1D56163D8();
  v35 = *(v2 + 16);
  v36 = *(v2 + 32);
  v31 = v22;
  v32 = v8;
  v33 = v8;
  v34 = v9;
  type metadata accessor for LRUDictionary.Container();
  sub_1D560C688();
  v30 = v24;
  v17 = v23;
  WitnessTable = swift_getWitnessTable();
  v28 = v25;
  v29 = WitnessTable;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_143();
  v19 = v27;
  sub_1D56160C8();
  if (v19)
  {
    (*(v26 + 8))(v15, v17);
  }

  else
  {
    v20 = v26;
    v31 = *(v2 + 56);
    LOBYTE(v32) = *(v2 + 64);
    LOBYTE(v35) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3CE8, &unk_1D56611E0);
    sub_1D5532DF8();
    OUTLINED_FUNCTION_4_156();
    v31 = *(v2 + 40);
    LOBYTE(v32) = *(v2 + 48);
    LOBYTE(v35) = 2;
    OUTLINED_FUNCTION_4_156();
    (*(v20 + 8))(v15, v17);
  }

  OUTLINED_FUNCTION_26();
}

void sub_1D5532138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 16);
  v4 = *(a3 - 8);
  sub_1D5531EC0();
}

void sub_1D5532158()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v21 = v7;
  _s10CodingKeysOMa_0();
  OUTLINED_FUNCTION_1_199();
  swift_getWitnessTable();
  v22 = sub_1D5616008();
  OUTLINED_FUNCTION_4(v22);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v23 = v4;
  v24 = v2;
  v25 = v2;
  type metadata accessor for LRUDictionary.Container();
  swift_getTupleTypeMetadata2();
  sub_1D56151C8();
  sub_1D560C618();
  v11 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1D5616398();
  if (v0)
  {

    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    sub_1D560C688();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1D5615FD8();

    v12 = v4;
    LOBYTE(v23) = 1;
    v13 = sub_1D5615F68();
    v15 = v14;
    v16 = sub_1D5615F68();
    v18 = v17;
    v19 = OUTLINED_FUNCTION_3_202();
    v20(v19, v22);
    __swift_destroy_boxed_opaque_existential_1(0);
    *v21 = 0;
    *(v21 + 8) = 0;
    *(v21 + 16) = v12;
    *(v21 + 24) = v24;
    *(v21 + 32) = v25;
    *(v21 + 40) = v16;
    *(v21 + 48) = v18 & 1;
    *(v21 + 49) = v23;
    *(v21 + 52) = *(&v23 + 3);
    *(v21 + 56) = v13;
    *(v21 + 64) = v15 & 1;
  }

  OUTLINED_FUNCTION_26();
}

void sub_1D55324C8(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = *(a2 - 16);
  v5 = *(a2 - 8);
  v8 = a1[2];
  v7 = a1[3];
  v9 = a1[4];
  sub_1D5532158();
  if (!v3)
  {
    memcpy(a3, __src, 0x41uLL);
  }
}

uint64_t sub_1D5532528()
{
  v0 = sub_1D5615EF8();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D553257C(char a1)
{
  if (a1)
  {
    return 1953722211;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1D55325A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D553261C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D5532688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D55326F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D5532768@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D5532528();
  *a2 = result;
  return result;
}

uint64_t sub_1D5532798@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D553257C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D55327CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1D5532524(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a4 = result;
  return result;
}

uint64_t sub_1D5532800(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D5532854(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void sub_1D55328A8()
{
  OUTLINED_FUNCTION_25_1();
  v23 = v2;
  v24 = v1;
  v22 = v0;
  v4 = v3;
  v6 = v5;
  v7 = *(v3 + 16);
  v21 = *(v3 + 32);
  v25 = v7;
  v26 = v21;
  _s10CodingKeysOMa();
  OUTLINED_FUNCTION_2_195();
  v8 = sub_1D56160D8();
  OUTLINED_FUNCTION_4(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  v16 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v17 = v22;
  sub_1D56163D8();
  LOBYTE(v25) = 0;
  v18 = v24;
  sub_1D56160C8();
  if (!v18)
  {
    v19 = (v17 + *(v4 + 52));
    v20 = *v19;
    LOBYTE(v19) = *(v19 + 8);
    *&v25 = v20;
    BYTE8(v25) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3CE8, &unk_1D56611E0);
    sub_1D5532DF8();
    OUTLINED_FUNCTION_7_143();
    sub_1D56160C8();
  }

  (*(v10 + 8))(v15, v8);
  OUTLINED_FUNCTION_26();
}

void sub_1D5532A64()
{
  OUTLINED_FUNCTION_25_1();
  v48 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v43 = v12;
  v45 = *(v4 - 8);
  v13 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v15;
  v51 = v16;
  v52 = v17;
  v53 = v18;
  _s10CodingKeysOMa();
  OUTLINED_FUNCTION_2_195();
  v49 = sub_1D5616008();
  OUTLINED_FUNCTION_4(v49);
  v44 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v50 = v9;
  v51 = v7;
  v46 = v5;
  v52 = v5;
  v53 = v3;
  v23 = type metadata accessor for LRUDictionary.Container();
  OUTLINED_FUNCTION_4(v23);
  v42 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - v28;
  v30 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v31 = v29;
    v32 = v45;
    LOBYTE(v50) = 0;
    v33 = v46;
    v34 = v47;
    sub_1D5615FD8();
    (*(v32 + 32))(v31, v34, v33);
    LOBYTE(v50) = 1;
    v35 = sub_1D5615F68();
    LOBYTE(v34) = v36;
    v37 = &v31[*(v23 + 52)];
    v48 = v31;
    v38 = OUTLINED_FUNCTION_3_202();
    v39(v38, v49);
    *v37 = v35;
    v37[8] = v34 & 1;
    v40 = v42;
    v41 = v48;
    (*(v42 + 16))(v43, v48, v23);
    __swift_destroy_boxed_opaque_existential_1(v11);
    (*(v40 + 8))(v41, v23);
  }

  OUTLINED_FUNCTION_26();
}

void sub_1D5532DB8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_1D5532A64();
}

unint64_t sub_1D5532DF8()
{
  result = qword_1EC7F8148[0];
  if (!qword_1EC7F8148[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F3CE8, &unk_1D56611E0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC7F8148);
  }

  return result;
}

_BYTE *sub_1D5532E8C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D5532F58(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}