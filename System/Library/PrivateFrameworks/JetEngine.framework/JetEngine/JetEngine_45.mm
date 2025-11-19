uint64_t sub_1AB3E4434()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1AB24EA20;
  }

  else
  {
    v2 = sub_1AB070C60;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB3E4548(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AB027554;

  return NativeIntentDispatcher.dispatcher<A, B>(for:asPartOf:)(a1);
}

uint64_t sub_1AB3E45E0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1AB027554;

  return NativeIntentDispatcher.dispatch<A>(_:objectGraph:configuration:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1AB3E46B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1AB027554;

  return NativeIntentDispatcher.dispatch<A>(_:objectGraph:configuration:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1AB3E47C0(uint64_t a1)
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
  v10[1] = sub_1AB027554;

  return sub_1AB3E4090(a1, v6, v7, v9, v8, v4, v5);
}

uint64_t sub_1AB3E4894(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1AB3E48DC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t ImpressionMetrics.ID.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1AB45F9E4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  JSONObject.subscript.getter(25705, 0xE200000000000000, v41);
  sub_1AB01EC0C(v41, v38);
  v8 = v39;
  if (!v39)
  {
    sub_1AB066D84(v41);
    sub_1AB014AC0(v38, &qword_1EB436BA0);
    goto LABEL_7;
  }

  v9 = v40;
  __swift_project_boxed_opaque_existential_1Tm(v38, v39);
  v10 = (*(v9 + 24))(v8, v9);
  v12 = v11;
  sub_1AB066D84(v41);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  if (!v12)
  {
LABEL_7:
    sub_1AB163664();
    swift_allocError();
    *v18 = xmmword_1AB4F4DA0;
    v19 = MEMORY[0x1E69E7CC0];
    *(v18 + 16) = 0x40000001F2016358uLL;
    *(v18 + 24) = v19;
    swift_willThrow();
    return sub_1AB066D84(a1);
  }

  v42 = v10;
  v34 = v5;
  JSONObject.subscript.getter(0x6973736572706D69, 0xEF7865646E496E6FLL, v41);
  sub_1AB01EC0C(v41, v38);
  v13 = v39;
  if (!v39)
  {
    sub_1AB066D84(v41);
    sub_1AB014AC0(v38, &qword_1EB436BA0);
    goto LABEL_9;
  }

  v14 = v40;
  __swift_project_boxed_opaque_existential_1Tm(v38, v39);
  v15 = (*(v14 + 40))(v13, v14);
  v17 = v16;
  sub_1AB066D84(v41);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  if (v17)
  {
LABEL_9:
    v15 = -1;
  }

  v37 = v15;
  JSONObject.subscript.getter(0x6449746E65726170, 0xE800000000000000, v41);
  sub_1AB01EC0C(v41, v38);
  v21 = v39;
  if (v39)
  {
    v22 = v40;
    __swift_project_boxed_opaque_existential_1Tm(v38, v39);
    v23 = (*(v22 + 24))(v21, v22);
    v35 = v24;
    v36 = v23;
    sub_1AB066D84(v41);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
  }

  else
  {
    sub_1AB066D84(v41);
    sub_1AB014AC0(v38, &qword_1EB436BA0);
    v35 = 0;
    v36 = 0;
  }

  JSONObject.subscript.getter(0x4449657571696E75, 0xE800000000000000, v41);
  sub_1AB01EC0C(v41, v38);
  v25 = v39;
  if (!v39)
  {
    sub_1AB066D84(v41);
    sub_1AB014AC0(v38, &qword_1EB436BA0);
LABEL_17:
    v30 = v37;
    if (v37 == -1)
    {
      sub_1AB45F9D4();
      v27 = sub_1AB45F9C4();
      v29 = v32;
      sub_1AB066D84(a1);
      result = (*(v34 + 8))(v7, v4);
    }

    else
    {
      v41[0] = v37;
      v27 = sub_1AB461C44();
      v29 = v31;
      result = sub_1AB066D84(a1);
    }

    goto LABEL_20;
  }

  v26 = v40;
  __swift_project_boxed_opaque_existential_1Tm(v38, v39);
  v27 = (*(v26 + 24))(v25, v26);
  v29 = v28;
  sub_1AB066D84(v41);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  if (!v29)
  {
    goto LABEL_17;
  }

  result = sub_1AB066D84(a1);
  v30 = v37;
LABEL_20:
  v33 = v35;
  *a2 = v36;
  a2[1] = v33;
  a2[2] = v42;
  a2[3] = v12;
  a2[4] = v30;
  a2[5] = v27;
  a2[6] = v29;
  return result;
}

void __swiftcall ImpressionMetrics.ID.init(parent:element:index:)(JetEngine::ImpressionMetrics::ID *__return_ptr retstr, Swift::String_optional parent, Swift::String element, Swift::Int index)
{
  v18[0] = element._object;
  countAndFlagsBits = element._countAndFlagsBits;
  object = parent.value._object;
  v7 = parent.value._countAndFlagsBits;
  v9 = sub_1AB45F9E4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (index == -1)
  {
    sub_1AB45F9D4();
    v13 = sub_1AB45F9C4();
    v15 = v16;
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v18[1] = index;
    v13 = sub_1AB461C44();
    v15 = v14;
  }

  retstr->parent.value._countAndFlagsBits = v7;
  retstr->parent.value._object = object;
  v17 = v18[0];
  retstr->element._countAndFlagsBits = countAndFlagsBits;
  retstr->element._object = v17;
  retstr->index = index;
  retstr->uniqueID.value._countAndFlagsBits = v13;
  retstr->uniqueID.value._object = v15;
}

void __swiftcall ImpressionMetrics.ID.init(element:)(JetEngine::ImpressionMetrics::ID *__return_ptr retstr, Swift::String element)
{
  object = element._object;
  countAndFlagsBits = element._countAndFlagsBits;
  v5 = sub_1AB45F9E4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB45F9D4();
  v9 = sub_1AB45F9C4();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  retstr->parent.value._countAndFlagsBits = 0;
  retstr->parent.value._object = 0;
  retstr->element._countAndFlagsBits = countAndFlagsBits;
  retstr->element._object = object;
  retstr->index = -1;
  retstr->uniqueID.value._countAndFlagsBits = v9;
  retstr->uniqueID.value._object = v11;
}

uint64_t ImpressionMetrics.ID.parent.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ImpressionMetrics.ID.parent.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ImpressionMetrics.ID.element.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ImpressionMetrics.ID.hash(into:)()
{
  v1 = *(v0 + 48);
  if (*(v0 + 8))
  {
    sub_1AB4620C4();
    sub_1AB460684();
  }

  else
  {
    sub_1AB4620C4();
  }

  sub_1AB460684();
  if (!v1)
  {
    return sub_1AB4620C4();
  }

  sub_1AB4620C4();

  return sub_1AB460684();
}

uint64_t ImpressionMetrics.ID.hashValue.getter()
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

uint64_t sub_1AB3E52B4()
{
  v1 = *(v0 + 48);
  if (*(v0 + 8))
  {
    sub_1AB4620C4();
    sub_1AB460684();
  }

  else
  {
    sub_1AB4620C4();
  }

  sub_1AB460684();
  if (!v1)
  {
    return sub_1AB4620C4();
  }

  sub_1AB4620C4();

  return sub_1AB460684();
}

uint64_t ImpressionMetrics.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x73646C656966, 0xE600000000000000, v43);
  sub_1AB01EC0C(v43, v40);
  v7 = v41;
  if (!v41)
  {

    sub_1AB066D84(v43);
    sub_1AB014AC0(v40, &qword_1EB436BA0);
    v35 = 0u;
    v36 = 0u;
    v37 = 0;
LABEL_12:
    sub_1AB014AC0(&v35, &qword_1EB436BC0);
LABEL_13:
    sub_1AB163664();
    swift_allocError();
    *v18 = xmmword_1AB4DD110;
    v19 = MEMORY[0x1E69E7CC0];
    *(v18 + 16) = 0x40000001F20162D0uLL;
    *(v18 + 24) = v19;
    swift_willThrow();
    return sub_1AB066D84(a1);
  }

  v8 = v42;
  __swift_project_boxed_opaque_existential_1Tm(v40, v41);
  (*(v8 + 160))(&v35, v7, v8);
  sub_1AB066D84(v43);
  __swift_destroy_boxed_opaque_existential_1Tm(v40);
  v9 = *(&v36 + 1);
  if (!*(&v36 + 1))
  {

    goto LABEL_12;
  }

  v10 = v37;
  __swift_project_boxed_opaque_existential_1Tm(&v35, *(&v36 + 1));
  v11 = (*(v10 + 32))(MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168], v9, v10);
  sub_1AB07CDB0(&v35);
  if (!v11)
  {

    goto LABEL_13;
  }

  JSONObject.subscript.getter(25705, 0xE200000000000000, v43);

  sub_1AB3D79C4(v43, &v35);
  v12 = *(&v36 + 1);
  if (*(&v36 + 1))
  {
    v44 = v39;
    v33 = v36;
    v34 = v38;
    v32 = v37;
    v31 = v35;
  }

  else
  {
    JSONObject.subscript.getter(0x73646C656966, 0xE600000000000000, v43);
    v40[0] = v6;

    ImpressionMetrics.ID.init(deserializing:using:)(v43, &v35);
    if (v3)
    {
      sub_1AB066D84(a1);
    }

    v31 = v35;
    v12 = *(&v36 + 1);
    v32 = v37;
    v33 = v36;
    v34 = v38;
    v44 = v39;
  }

  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, &v35);
  v40[0] = v6;
  ScalarDictionary.init(tryDeserializing:using:)(&v35, v40, v43);
  v30 = v43[0];
  JSONObject.subscript.getter(0x69466E6F6D6D6F63, 0xEC00000073646C65, v43);
  sub_1AB01EC0C(v43, v40);
  v13 = v41;
  if (v41)
  {
    v14 = v42;
    __swift_project_boxed_opaque_existential_1Tm(v40, v41);
    (*(v14 + 160))(&v35, v13, v14);
    sub_1AB066D84(v43);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    v15 = *(&v36 + 1);
    if (*(&v36 + 1))
    {
      v16 = v37;
      __swift_project_boxed_opaque_existential_1Tm(&v35, *(&v36 + 1));
      v17 = (*(v16 + 32))(MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168], v15, v16);
      sub_1AB07CDB0(&v35);
      if (v17)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else
  {
    sub_1AB066D84(v43);
    sub_1AB014AC0(v40, &qword_1EB436BA0);
    v35 = 0u;
    v36 = 0u;
    v37 = 0;
  }

  sub_1AB014AC0(&v35, &qword_1EB436BC0);
LABEL_19:
  v17 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);

LABEL_20:
  JSONObject.subscript.getter(0xD000000000000013, 0x80000001AB4FDD10, v43);
  sub_1AB01EC0C(v43, v40);
  v21 = v41;
  if (v41)
  {
    v22 = v42;
    __swift_project_boxed_opaque_existential_1Tm(v40, v41);
    (*(v22 + 160))(&v35, v21, v22);
    sub_1AB066D84(v43);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    v23 = *(&v36 + 1);
    if (*(&v36 + 1))
    {
      v24 = v37;
      __swift_project_boxed_opaque_existential_1Tm(&v35, *(&v36 + 1));
      v25 = (*(v24 + 32))(MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168], v23, v24);
      sub_1AB07CDB0(&v35);
      if (v25)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else
  {
    sub_1AB066D84(v43);
    sub_1AB014AC0(v40, &qword_1EB436BA0);
    v35 = 0u;
    v36 = 0u;
    v37 = 0;
  }

  sub_1AB014AC0(&v35, &qword_1EB436BC0);
LABEL_26:
  v25 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);

LABEL_27:

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v35 = v17;
  sub_1AB033AB8(v11, sub_1AB06BA1C, 0, isUniquelyReferenced_nonNull_native, &v35);

  if (v3)
  {

    __break(1u);
  }

  else
  {
    v27 = v35;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    *&v35 = v17;
    sub_1AB033AB8(v25, sub_1AB06BA1C, 0, v28, &v35);

    v29 = v35;
    result = sub_1AB066D84(a1);
    *a3 = v31;
    *(a3 + 16) = v33;
    *(a3 + 24) = v12;
    *(a3 + 32) = v32;
    *(a3 + 40) = v34;
    *(a3 + 48) = v44;
    *(a3 + 56) = v27;
    *(a3 + 64) = v30;
    *(a3 + 72) = v29;
  }

  return result;
}

__n128 ImpressionMetrics.id.setter(__int128 *a1)
{
  v5 = a1[1];
  v6 = *a1;
  v4 = a1[2];
  v2 = *(a1 + 6);

  *v1 = v6;
  *(v1 + 16) = v5;
  result = v4;
  *(v1 + 32) = v4;
  *(v1 + 48) = v2;
  return result;
}

uint64_t ImpressionMetrics.fields.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t ImpressionMetrics.custom.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 64) = v2;
  return result;
}

uint64_t ImpressionMetrics.clickLocationFields.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_1AB3E5BA4()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB3E5C68()
{
  sub_1AB460684();
}

uint64_t sub_1AB3E5D18()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB3E5DD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB3E8078();
  *a1 = result;
  return result;
}

void sub_1AB3E5E08(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6449746E65726170;
  v4 = 0xEF7865646E496E6FLL;
  v5 = 0x6973736572706D69;
  if (*v1 != 2)
  {
    v5 = 0x4449657571696E75;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 25705;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1AB3E5E88()
{
  v1 = 0x6449746E65726170;
  v2 = 0x6973736572706D69;
  if (*v0 != 2)
  {
    v2 = 0x4449657571696E75;
  }

  if (*v0)
  {
    v1 = 25705;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AB3E5F04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB3E8078();
  *a1 = result;
  return result;
}

uint64_t sub_1AB3E5F2C(uint64_t a1)
{
  v2 = sub_1AB3E7D00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3E5F68(uint64_t a1)
{
  v2 = sub_1AB3E7D00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImpressionMetrics.ID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v40 = a2;
  v4 = sub_1AB45F9E4();
  v42 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C678);
  v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3E7D00();
  sub_1AB462224();
  if (!v2)
  {
    v38 = v6;
    v10 = v41;
    v11 = v42;
    LOBYTE(v43) = 0;
    if (sub_1AB461AF4())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B938);
      v45 = 0;
      sub_1AB37DF54();
      sub_1AB461AC4();
      v12 = v4;
      v37 = v43;
      v39 = v44;
    }

    else
    {
      v37 = 0;
      v39 = 0;
      v12 = v4;
    }

    LOBYTE(v43) = 1;
    v13 = v7;
    v14 = sub_1AB461A84();
    v16 = v15;
    v36 = v14;
    LOBYTE(v43) = 2;
    v17 = sub_1AB461A44();
    if (v18)
    {
      v21 = -1;
    }

    else
    {
      v21 = v17;
    }

    v35 = v21;
    LOBYTE(v43) = 3;
    if (sub_1AB461AF4())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B938);
      v45 = 3;
      sub_1AB37DF54();
      sub_1AB461AC4();
      v34 = v16;
      v22 = v44;
      if (v44)
      {
        v23 = v43;
        (*(v10 + 8))(v9, v13);
        v19 = a1;
        v24 = v35;
LABEL_19:
        v30 = v40;
        v31 = v39;
        *v40 = v37;
        v30[1] = v31;
        v32 = v34;
        v30[2] = v36;
        v30[3] = v32;
        v30[4] = v24;
        v30[5] = v23;
        v30[6] = v22;
        return __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }
    }

    else
    {
      v34 = v16;
    }

    v33 = a1;
    v24 = v35;
    v25 = v38;
    if (v35 == -1)
    {
      sub_1AB45F9D4();
      v27 = sub_1AB45F9C4();
      v22 = v28;
      v29 = v12;
      v23 = v27;
      (*(v11 + 8))(v25, v29);
    }

    else
    {
      v43 = v35;
      v23 = sub_1AB461C44();
      v22 = v26;
    }

    (*(v10 + 8))(v9, v13);
    v19 = v33;
    goto LABEL_19;
  }

  v19 = a1;
  return __swift_destroy_boxed_opaque_existential_1Tm(v19);
}

uint64_t ImpressionMetrics.ID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C680);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v17 = v1[3];
  v18 = v9;
  v10 = v1[4];
  v15 = v1[5];
  v16 = v10;
  v14 = v1[6];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3E7D00();

  sub_1AB462274();
  v20 = v7;
  v21 = v8;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AC0);
  sub_1AB0C08E8(&qword_1EB438628);
  v11 = v19;
  sub_1AB461BF4();

  if (!v11)
  {
    v12 = v15;
    LOBYTE(v20) = 1;
    sub_1AB461BB4();
    LOBYTE(v20) = 2;
    sub_1AB461BE4();
    v20 = v12;
    v21 = v14;
    v22 = 3;
    sub_1AB461BF4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1AB3E666C()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB3E6748()
{
  sub_1AB460684();
}

uint64_t sub_1AB3E6810()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB3E68E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB3E802C();
  *a1 = result;
  return result;
}

void sub_1AB3E6918(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE600000000000000;
  v6 = 0x6D6F74737563;
  v7 = 0xEC00000073646C65;
  v8 = 0x69466E6F6D6D6F63;
  if (v2 != 3)
  {
    v8 = 0xD000000000000013;
    v7 = 0x80000001AB4FDD10;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x73646C656966;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1AB3E69B0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6D6F74737563;
  v4 = 0x69466E6F6D6D6F63;
  if (v1 != 3)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x73646C656966;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AB3E6A44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB3E802C();
  *a1 = result;
  return result;
}

uint64_t sub_1AB3E6A6C(uint64_t a1)
{
  v2 = sub_1AB1F3B34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3E6AA8(uint64_t a1)
{
  v2 = sub_1AB1F3B34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImpressionMetrics.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C688);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v45 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB1F3B34();
  sub_1AB462224();
  if (!v2)
  {
    LOBYTE(v63) = 0;
    sub_1AB3E7D54();
    sub_1AB461AC4();
    v67 = v6;
    v56 = a2;
    v9 = v66[1];
    v55 = v66[0];
    v10 = v66[3];
    v54 = v66[2];
    v53 = v66[4];
    v52 = v66[5];
    v11 = v66[6];
    LOBYTE(v63) = 1;
    v12 = sub_1AB1BF694();
    sub_1AB461AC4();
    v47 = v12;
    v50 = v10;
    v51 = v9;
    sub_1AB01EC0C(v66, v60);
    v14 = v61;
    if (v61)
    {
      v48 = v11;
      v15 = v62;
      __swift_project_boxed_opaque_existential_1Tm(v60, v61);
      (*(v15 + 160))(&v63, v14, v15);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      v16 = *(&v64 + 1);
      if (*(&v64 + 1))
      {
        v17 = v65;
        __swift_project_boxed_opaque_existential_1Tm(&v63, *(&v64 + 1));
        v18 = (*(v17 + 32))(MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168], v16, v17);
        sub_1AB07CDB0(&v63);
        v19 = v67;
        if (v18)
        {
          LOBYTE(v63) = 2;
          if (sub_1AB461AF4())
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437B40);
            LOBYTE(v60[0]) = 2;
            sub_1AB1A1C08(qword_1EB4329D0);
            sub_1AB461AC4();
            v24 = v63;
          }

          else
          {
            v24 = MEMORY[0x1E69E7CC8];
          }

          v46 = v24;
          v25 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
          LOBYTE(v63) = 3;
          if ((sub_1AB461AF4() & 1) == 0)
          {
            goto LABEL_19;
          }

          LOBYTE(v57[0]) = 3;
          sub_1AB461AC4();
          sub_1AB01EC0C(v60, v57);
          v26 = v58;
          if (v58)
          {
            v27 = v59;
            __swift_project_boxed_opaque_existential_1Tm(v57, v58);
            (*(v27 + 160))(&v63, v26, v27);
            sub_1AB066D84(v60);
            __swift_destroy_boxed_opaque_existential_1Tm(v57);
            v28 = *(&v64 + 1);
            if (*(&v64 + 1))
            {
              v29 = v65;
              __swift_project_boxed_opaque_existential_1Tm(&v63, *(&v64 + 1));
              v25 = (*(v29 + 32))(MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168], v28, v29);
              sub_1AB07CDB0(&v63);
              if (v25)
              {
LABEL_19:
                v45 = v25;
                goto LABEL_23;
              }

LABEL_22:
              v45 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);

LABEL_23:
              v30 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
              LOBYTE(v63) = 4;
              if ((sub_1AB461AF4() & 1) == 0)
              {
                v31 = v45;
LABEL_33:

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v63 = v31;
                sub_1AB033AB8(v18, sub_1AB06BA1C, 0, isUniquelyReferenced_nonNull_native, &v63);

                v38 = v63;
                v39 = swift_isUniquelyReferenced_nonNull_native();
                *&v63 = v31;
                sub_1AB033AB8(v30, sub_1AB06BA1C, 0, v39, &v63);

                v40 = v63;
                sub_1AB066D84(v66);
                (*(v19 + 8))(v8, v5);
                v41 = v56;
                v42 = v51;
                *v56 = v55;
                v41[1] = v42;
                v43 = v50;
                v41[2] = v54;
                v41[3] = v43;
                v44 = v52;
                v41[4] = v53;
                v41[5] = v44;
                v41[6] = v48;
                v41[7] = v38;
                v41[8] = v46;
                v41[9] = v40;
                return __swift_destroy_boxed_opaque_existential_1Tm(a1);
              }

              LOBYTE(v57[0]) = 4;
              sub_1AB461AC4();
              v47 = v18;
              sub_1AB01EC0C(v60, v57);
              v32 = v58;
              if (v58)
              {
                v33 = v59;
                __swift_project_boxed_opaque_existential_1Tm(v57, v58);
                (*(v33 + 160))(&v63, v32, v33);
                sub_1AB066D84(v60);
                __swift_destroy_boxed_opaque_existential_1Tm(v57);
                v34 = *(&v64 + 1);
                if (*(&v64 + 1))
                {
                  v35 = v65;
                  __swift_project_boxed_opaque_existential_1Tm(&v63, *(&v64 + 1));
                  v36 = (*(v35 + 32))(MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168], v34, v35);
                  sub_1AB07CDB0(&v63);
                  v18 = v47;
                  v31 = v45;
                  if (v36)
                  {
                    v30 = v36;
                    goto LABEL_33;
                  }

LABEL_32:
                  v30 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);

                  goto LABEL_33;
                }
              }

              else
              {
                sub_1AB066D84(v60);
                sub_1AB014AC0(v57, &qword_1EB436BA0);
                v63 = 0u;
                v64 = 0u;
                v65 = 0;
              }

              sub_1AB014AC0(&v63, &qword_1EB436BC0);
              v18 = v47;
              v31 = v45;
              goto LABEL_32;
            }
          }

          else
          {
            sub_1AB066D84(v60);
            sub_1AB014AC0(v57, &qword_1EB436BA0);
            v63 = 0u;
            v64 = 0u;
            v65 = 0;
          }

          sub_1AB014AC0(&v63, &qword_1EB436BC0);
          goto LABEL_22;
        }

        v49 = v5;

        goto LABEL_12;
      }
    }

    else
    {

      sub_1AB014AC0(v60, &qword_1EB436BA0);
      v63 = 0u;
      v64 = 0u;
      v65 = 0;
    }

    v19 = v67;
    v49 = v5;
    sub_1AB014AC0(&v63, &qword_1EB436BC0);
LABEL_12:
    v20 = sub_1AB4616B4();
    swift_allocError();
    v22 = v21;
    v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938) + 48);
    *v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    v23 = sub_1AB4621E4();
    sub_1AB1F311C(1, v23);

    *&v63 = 0;
    *(&v63 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](96, 0xE100000000000000);
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0xD000000000000018, 0x80000001AB503040);
    sub_1AB461694();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    sub_1AB066D84(v66);
    (*(v19 + 8))(v8, v49);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t ImpressionMetrics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C690);
  v35 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[3];
  v25 = v1[2];
  v26 = v6;
  v9 = v1[4];
  v23 = v1[5];
  v24 = v9;
  v11 = v1[6];
  v10 = v1[7];
  v12 = v1[9];
  v21 = v1[8];
  v22 = v10;
  v20 = v12;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB1F3B34();

  sub_1AB462274();
  v30[0] = v26;
  v30[1] = v7;
  v30[2] = v25;
  v31 = v8;
  v32 = v24;
  v33 = v23;
  v34 = v11;
  LOBYTE(v28) = 0;
  sub_1AB3E7DA8();
  v13 = v5;
  v14 = v27;
  sub_1AB461BF4();
  if (v14)
  {

    return (*(v35 + 8))(v5, v3);
  }

  else
  {
    v16 = v21;
    v17 = v35;

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
    v29 = v18;
    *&v28 = v22;
    v31 = &type metadata for FoundationValue;
    v32 = &off_1F1FFB5A8;
    v30[0] = swift_allocObject();
    sub_1AB014B78(&v28, (v30[0] + 16));
    LOBYTE(v28) = 1;
    sub_1AB1BF9A0();

    sub_1AB461BF4();
    sub_1AB066D84(v30);
    v30[0] = v16;
    LOBYTE(v28) = 2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437B40);
    sub_1AB1A1C08(&qword_1EB437B90);
    sub_1AB461BF4();

    v29 = v18;
    *&v28 = v20;
    v31 = &type metadata for FoundationValue;
    v32 = &off_1F1FFB5A8;
    v30[0] = swift_allocObject();
    sub_1AB014B78(&v28, (v30[0] + 16));
    LOBYTE(v28) = 4;

    sub_1AB461BF4();
    sub_1AB066D84(v30);
    return (*(v17 + 8))(v13, v3);
  }
}

unint64_t ImpressionMetrics.init(id:fields:custom:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v18 = a1[6];
  v19 = a1[5];
  v20 = *a3;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  v13 = sub_1AB01B220(v11);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v12;
  sub_1AB033AB8(a2, sub_1AB06BA1C, 0, isUniquelyReferenced_nonNull_native, &v21);

  v15 = v21;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = v12;
  sub_1AB033AB8(v13, sub_1AB06BA1C, 0, v16, &v21);

  result = v21;
  *a4 = v6;
  a4[1] = v7;
  a4[2] = v8;
  a4[3] = v9;
  a4[4] = v10;
  a4[5] = v19;
  a4[6] = v18;
  a4[7] = v15;
  a4[8] = v20;
  a4[9] = result;
  return result;
}

uint64_t _s9JetEngine17ImpressionMetricsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  v4 = *(a1 + 48);
  v14 = *(a1 + 64);
  v15 = *(a1 + 56);
  v12 = *(a1 + 72);
  v5 = *a2;
  v6 = *(a2 + 24);
  v7 = *(a2 + 56);
  v13 = *(a2 + 64);
  v11 = *(a2 + 72);
  v20 = *(a2 + 48);
  v21 = v2;
  v22 = *(a1 + 8);
  v23 = v3;
  v24 = *(a1 + 32);
  v25 = v4;
  v16 = v5;
  v17 = *(a2 + 8);
  v18 = v6;
  v19 = *(a2 + 32);
  v8 = _s9JetEngine17ImpressionMetricsV2IDV2eeoiySbAE_AEtFZ_0(&v21, &v16);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if ((sub_1AB3B1A34(v15, v7, 3, 0) & 1) == 0)
  {
    return 0;
  }

  v9 = sub_1AB171280(v14, v13);

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  return sub_1AB3B1A34(v12, v11, 3, 0);
}

unint64_t sub_1AB3E7D00()
{
  result = qword_1EB432750;
  if (!qword_1EB432750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432750);
  }

  return result;
}

unint64_t sub_1AB3E7D54()
{
  result = qword_1EB432738;
  if (!qword_1EB432738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432738);
  }

  return result;
}

unint64_t sub_1AB3E7DA8()
{
  result = qword_1EB43C698;
  if (!qword_1EB43C698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C698);
  }

  return result;
}

unint64_t sub_1AB3E7E20()
{
  result = qword_1EB43C6A0;
  if (!qword_1EB43C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C6A0);
  }

  return result;
}

unint64_t sub_1AB3E7E78()
{
  result = qword_1EB43C6A8;
  if (!qword_1EB43C6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C6A8);
  }

  return result;
}

unint64_t sub_1AB3E7ED0()
{
  result = qword_1EB432758;
  if (!qword_1EB432758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432758);
  }

  return result;
}

unint64_t sub_1AB3E7F28()
{
  result = qword_1EB432760;
  if (!qword_1EB432760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432760);
  }

  return result;
}

unint64_t sub_1AB3E7F80()
{
  result = qword_1EB432740;
  if (!qword_1EB432740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432740);
  }

  return result;
}

unint64_t sub_1AB3E7FD8()
{
  result = qword_1EB432748;
  if (!qword_1EB432748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432748);
  }

  return result;
}

uint64_t sub_1AB3E802C()
{
  v0 = sub_1AB4619B4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AB3E8078()
{
  v0 = sub_1AB4619B4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

JetEngine::DaemonCacheEvictRequest __swiftcall DaemonCacheEvictRequest.init(cacheKey:fileName:)(Swift::String cacheKey, Swift::String fileName)
{
  *v2 = cacheKey;
  v2[1] = fileName;
  result.fileName = fileName;
  result.cacheKey = cacheKey;
  return result;
}

unint64_t JetPackAssetDaemonMessage.request.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for JetPackAssetDaemonMessage(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB3EFAD8(v2, v6, type metadata accessor for JetPackAssetDaemonMessage);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      *(a1 + 24) = &type metadata for DaemonRefreshTestAssetRequest;
      result = sub_1AB3E8740();
      *(a1 + 32) = result;
      break;
    case 2u:
      *(a1 + 24) = &type metadata for DaemonReadTestAssetRequest;
      result = sub_1AB3E86EC();
      *(a1 + 32) = result;
      break;
    case 3u:
      *(a1 + 24) = &type metadata for DaemonScheduleTaskRequest;
      result = sub_1AB3E8698();
      *(a1 + 32) = result;
      break;
    case 4u:
      *(a1 + 24) = &type metadata for DaemonPostInstallRequest;
      result = sub_1AB3E8644();
      *(a1 + 32) = result;
      break;
    case 5u:
      *(a1 + 24) = &type metadata for DaemonBagRefreshRequest;
      result = sub_1AB3E85F0();
      *(a1 + 32) = result;
      break;
    case 6u:
      v16 = *v6;
      *(a1 + 24) = &type metadata for DaemonPushInfoRequest;
      result = sub_1AB3E859C();
      *(a1 + 32) = result;
      *a1 = v16;
      break;
    case 7u:
      v13 = *v6;
      v14 = *(v6 + 1);
      v15 = v6[16];
      *(a1 + 24) = &type metadata for DaemonPushSubscriptionRequest;
      result = sub_1AB3E8548();
      goto LABEL_10;
    case 8u:
      v17 = *v6;
      *(a1 + 24) = &type metadata for DaemonPushDeleteRecordRequest;
      result = sub_1AB3E84F4();
      *(a1 + 32) = result;
      *a1 = v17;
      break;
    case 9u:
      v13 = *v6;
      v14 = *(v6 + 1);
      v15 = v6[16];
      *(a1 + 24) = &type metadata for DaemonPushResetRecordRequest;
      result = sub_1AB3E84A0();
LABEL_10:
      *(a1 + 32) = result;
      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v15;
      break;
    case 0xAu:
      *(a1 + 24) = &type metadata for DaemonPushClearRecordsRequest;
      result = sub_1AB3E844C();
      *(a1 + 32) = result;
      break;
    case 0xBu:
      v18 = *v6;
      v11 = *(v6 + 2);
      v10 = *(v6 + 3);
      *(a1 + 24) = &type metadata for DaemonCacheEvictRequest;
      *(a1 + 32) = sub_1AB3E83F8();
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v18;
      *(result + 32) = v11;
      *(result + 40) = v10;
      break;
    case 0xCu:
      *(a1 + 24) = type metadata accessor for DaemonGetAssetRequest(0);
      *(a1 + 32) = sub_1AB3EA1BC(&qword_1EB43C6B0, type metadata accessor for DaemonGetAssetRequest);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
      result = sub_1AB058FD8(v6, boxed_opaque_existential_0, type metadata accessor for DaemonGetAssetRequest);
      break;
    default:
      v8 = *v6;
      v7 = *(v6 + 1);
      *(a1 + 24) = &type metadata for DaemonPingRequest;
      result = sub_1AB3E8794();
      *(a1 + 32) = result;
      *a1 = v8;
      *(a1 + 8) = v7;
      break;
  }

  return result;
}

unint64_t sub_1AB3E83F8()
{
  result = qword_1EB43C6B8;
  if (!qword_1EB43C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C6B8);
  }

  return result;
}

unint64_t sub_1AB3E844C()
{
  result = qword_1EB43C6C0;
  if (!qword_1EB43C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C6C0);
  }

  return result;
}

unint64_t sub_1AB3E84A0()
{
  result = qword_1EB43C6C8;
  if (!qword_1EB43C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C6C8);
  }

  return result;
}

unint64_t sub_1AB3E84F4()
{
  result = qword_1EB43C6D0;
  if (!qword_1EB43C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C6D0);
  }

  return result;
}

unint64_t sub_1AB3E8548()
{
  result = qword_1EB43C6D8;
  if (!qword_1EB43C6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C6D8);
  }

  return result;
}

unint64_t sub_1AB3E859C()
{
  result = qword_1EB43C6E0;
  if (!qword_1EB43C6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C6E0);
  }

  return result;
}

unint64_t sub_1AB3E85F0()
{
  result = qword_1EB43C6E8;
  if (!qword_1EB43C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C6E8);
  }

  return result;
}

unint64_t sub_1AB3E8644()
{
  result = qword_1EB43C6F0;
  if (!qword_1EB43C6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C6F0);
  }

  return result;
}

unint64_t sub_1AB3E8698()
{
  result = qword_1EB43C6F8;
  if (!qword_1EB43C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C6F8);
  }

  return result;
}

unint64_t sub_1AB3E86EC()
{
  result = qword_1EB43C700;
  if (!qword_1EB43C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C700);
  }

  return result;
}

unint64_t sub_1AB3E8740()
{
  result = qword_1EB43C708;
  if (!qword_1EB43C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C708);
  }

  return result;
}

unint64_t sub_1AB3E8794()
{
  result = qword_1EB43C710;
  if (!qword_1EB43C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C710);
  }

  return result;
}

unint64_t sub_1AB3E87E8(char a1)
{
  result = 1735289200;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x7473655464616572;
      break;
    case 3:
      result = 0x656C756465686373;
      break;
    case 4:
      result = 0x74736E4974736F70;
      break;
    case 5:
      result = 0x6572666552676162;
      break;
    case 6:
      result = 0x6F666E4968737570;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x656C654468737570;
      break;
    case 9:
      result = 0x6573655268737570;
      break;
    case 10:
      result = 0x61656C4368737570;
      break;
    case 11:
      result = 0x6976456568636163;
      break;
    case 12:
      result = 7628135;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1AB3E8970(uint64_t a1)
{
  v2 = sub_1AB3EA5FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3E89AC(uint64_t a1)
{
  v2 = sub_1AB3EA5FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB3E89E8(uint64_t a1)
{
  v2 = sub_1AB3EA204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3E8A24(uint64_t a1)
{
  v2 = sub_1AB3EA204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB3E8A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB3F82DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AB3E8A9C(uint64_t a1)
{
  v2 = sub_1AB3EA114();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3E8AD8(uint64_t a1)
{
  v2 = sub_1AB3EA114();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB3E8B14(uint64_t a1)
{
  v2 = sub_1AB3EA168();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3E8B50(uint64_t a1)
{
  v2 = sub_1AB3EA168();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB3E8B8C(uint64_t a1)
{
  v2 = sub_1AB3EA944();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3E8BC8(uint64_t a1)
{
  v2 = sub_1AB3EA944();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB3E8C04(uint64_t a1)
{
  v2 = sub_1AB3EA6A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3E8C40(uint64_t a1)
{
  v2 = sub_1AB3EA6A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB3E8C7C(uint64_t a1)
{
  v2 = sub_1AB3EA2AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3E8CB8(uint64_t a1)
{
  v2 = sub_1AB3EA2AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB3E8CF4(uint64_t a1)
{
  v2 = sub_1AB3EA3FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3E8D30(uint64_t a1)
{
  v2 = sub_1AB3EA3FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB3E8D6C(uint64_t a1)
{
  v2 = sub_1AB3EA554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3E8DA8(uint64_t a1)
{
  v2 = sub_1AB3EA554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB3E8DE4(uint64_t a1)
{
  v2 = sub_1AB3EA354();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3E8E20(uint64_t a1)
{
  v2 = sub_1AB3EA354();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB3E8E5C(uint64_t a1)
{
  v2 = sub_1AB3EA4A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3E8E98(uint64_t a1)
{
  v2 = sub_1AB3EA4A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB3E8ED4(uint64_t a1)
{
  v2 = sub_1AB3EA7F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3E8F10(uint64_t a1)
{
  v2 = sub_1AB3EA7F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB3E8F4C(uint64_t a1)
{
  v2 = sub_1AB3EA89C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3E8F88(uint64_t a1)
{
  v2 = sub_1AB3EA89C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB3E8FC4(uint64_t a1)
{
  v2 = sub_1AB3EA74C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3E9000(uint64_t a1)
{
  v2 = sub_1AB3EA74C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JetPackAssetDaemonMessage.encode(to:)(void *a1)
{
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C718);
  v71 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v99 = v65 - v2;
  AssetRequest = type metadata accessor for DaemonGetAssetRequest(0);
  MEMORY[0x1EEE9AC00](AssetRequest);
  v98 = v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C720);
  v70 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v95 = v65 - v4;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C728);
  v69 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = v65 - v5;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C730);
  v68 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v91 = v65 - v6;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C738);
  v67 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = v65 - v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C740);
  v66 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = v65 - v8;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C748);
  v65[3] = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v85 = v65 - v9;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C750);
  v65[2] = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v83 = v65 - v10;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C758);
  v65[1] = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = v65 - v11;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C760);
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v78 = v65 - v12;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C768);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v75 = v65 - v13;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C770);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v15 = v65 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C778);
  v72 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v65 - v17;
  v19 = type metadata accessor for JetPackAssetDaemonMessage(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C780);
  v101[0] = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v23 = v65 - v22;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3EA114();
  v102 = v23;
  sub_1AB462274();
  sub_1AB3EFAD8(v101[1], v21, type metadata accessor for JetPackAssetDaemonMessage);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      LOBYTE(v104) = 1;
      sub_1AB3EA89C();
      v38 = v102;
      v37 = v103;
      sub_1AB461B24();
      sub_1AB3EA8F0();
      v39 = v74;
      sub_1AB461BF4();
      v40 = &v104;
      goto LABEL_14;
    case 2u:
      LOBYTE(v104) = 2;
      sub_1AB3EA7F4();
      v15 = v75;
      v38 = v102;
      v37 = v103;
      sub_1AB461B24();
      sub_1AB3EA848();
      v39 = v77;
      sub_1AB461BF4();
      v40 = &v107;
      goto LABEL_14;
    case 3u:
      LOBYTE(v104) = 3;
      sub_1AB3EA74C();
      v15 = v78;
      v38 = v102;
      v37 = v103;
      sub_1AB461B24();
      sub_1AB3EA7A0();
      v39 = v80;
      sub_1AB461BF4();
      v40 = &v108;
      goto LABEL_14;
    case 4u:
      LOBYTE(v104) = 4;
      sub_1AB3EA6A4();
      v15 = v81;
      v38 = v102;
      v37 = v103;
      sub_1AB461B24();
      sub_1AB3EA6F8();
      v39 = v82;
      sub_1AB461BF4();
      v40 = &v95;
      goto LABEL_14;
    case 5u:
      LOBYTE(v104) = 5;
      sub_1AB3EA5FC();
      v15 = v83;
      v38 = v102;
      v37 = v103;
      sub_1AB461B24();
      sub_1AB3EA650();
      v39 = v84;
      sub_1AB461BF4();
      v40 = &v96;
      goto LABEL_14;
    case 6u:
      v58 = *v21;
      LOBYTE(v104) = 6;
      sub_1AB3EA554();
      v59 = v85;
      v61 = v102;
      v60 = v103;
      sub_1AB461B24();
      LOBYTE(v104) = v58;
      sub_1AB3EA5A8();
      v62 = v86;
      sub_1AB461BF4();
      p_AssetRequest = &AssetRequest;
      goto LABEL_17;
    case 7u:
      v51 = *v21;
      v52 = *(v21 + 1);
      v53 = v21[16];
      LOBYTE(v104) = 7;
      sub_1AB3EA4A4();
      v54 = v87;
      v56 = v102;
      v55 = v103;
      sub_1AB461B24();
      v104 = v51;
      v105 = v52;
      LOBYTE(v106) = v53;
      sub_1AB3EA4F8();
      v57 = v88;
      sub_1AB461BF4();
      (*(v66 + 8))(v54, v57);
      (*(v101[0] + 8))(v56, v55);
      return sub_1AB3EA54C();
    case 8u:
      v64 = *v21;
      LOBYTE(v104) = 8;
      sub_1AB3EA3FC();
      v59 = v89;
      v61 = v102;
      v60 = v103;
      sub_1AB461B24();
      LODWORD(v104) = v64;
      sub_1AB3EA450();
      v62 = v90;
      sub_1AB461BF4();
      p_AssetRequest = &v99;
LABEL_17:
      (*(*(p_AssetRequest - 32) + 8))(v59, v62);
      return (*(v101[0] + 8))(v61, v60);
    case 9u:
      v44 = *v21;
      v45 = *(v21 + 1);
      v46 = v21[16];
      LOBYTE(v104) = 9;
      sub_1AB3EA354();
      v47 = v91;
      v49 = v102;
      v48 = v103;
      sub_1AB461B24();
      v104 = v44;
      v105 = v45;
      LOBYTE(v106) = v46;
      sub_1AB3EA3A8();
      v50 = v93;
      sub_1AB461BF4();
      (*(v68 + 8))(v47, v50);
      (*(v101[0] + 8))(v49, v48);
      return sub_1AB179CA0(v44, v45, v46);
    case 0xAu:
      LOBYTE(v104) = 10;
      sub_1AB3EA2AC();
      v15 = v92;
      v38 = v102;
      v37 = v103;
      sub_1AB461B24();
      sub_1AB3EA300();
      v39 = v94;
      sub_1AB461BF4();
      v40 = v101;
LABEL_14:
      (*(*(v40 - 32) + 8))(v15, v39);
      goto LABEL_15;
    case 0xBu:
      v30 = *v21;
      v29 = *(v21 + 1);
      v32 = *(v21 + 2);
      v31 = *(v21 + 3);
      LOBYTE(v104) = 11;
      sub_1AB3EA204();
      v33 = v95;
      v35 = v102;
      v34 = v103;
      sub_1AB461B24();
      v104 = v30;
      v105 = v29;
      v106 = v32;
      v107 = v31;
      sub_1AB3EA258();
      v36 = v96;
      sub_1AB461BF4();
      (*(v70 + 8))(v33, v36);
      (*(v101[0] + 8))(v35, v34);

    case 0xCu:
      v41 = v98;
      sub_1AB058FD8(v21, v98, type metadata accessor for DaemonGetAssetRequest);
      LOBYTE(v104) = 12;
      sub_1AB3EA168();
      v42 = v99;
      v38 = v102;
      v37 = v103;
      sub_1AB461B24();
      sub_1AB3EA1BC(&qword_1EB433C78, type metadata accessor for DaemonGetAssetRequest);
      v43 = v100;
      sub_1AB461BF4();
      (*(v71 + 8))(v42, v43);
      sub_1AB3EFB40(v41, type metadata accessor for DaemonGetAssetRequest);
LABEL_15:
      result = (*(v101[0] + 8))(v38, v37);
      break;
    default:
      v25 = *v21;
      v24 = *(v21 + 1);
      LOBYTE(v104) = 0;
      sub_1AB3EA944();
      v27 = v102;
      v26 = v103;
      sub_1AB461B24();
      v104 = v25;
      v105 = v24;
      sub_1AB3EA998();
      sub_1AB461BF4();
      (*(v72 + 8))(v18, v16);
      (*(v101[0] + 8))(v27, v26);

      break;
  }

  return result;
}

unint64_t sub_1AB3EA114()
{
  result = qword_1EB434308;
  if (!qword_1EB434308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB434308);
  }

  return result;
}

unint64_t sub_1AB3EA168()
{
  result = qword_1EB4342F0;
  if (!qword_1EB4342F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4342F0);
  }

  return result;
}

uint64_t sub_1AB3EA1BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1AB3EA204()
{
  result = qword_1EB43C788;
  if (!qword_1EB43C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C788);
  }

  return result;
}

unint64_t sub_1AB3EA258()
{
  result = qword_1EB43C790;
  if (!qword_1EB43C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C790);
  }

  return result;
}

unint64_t sub_1AB3EA2AC()
{
  result = qword_1EB43C798;
  if (!qword_1EB43C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C798);
  }

  return result;
}

unint64_t sub_1AB3EA300()
{
  result = qword_1EB43C7A0;
  if (!qword_1EB43C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C7A0);
  }

  return result;
}

unint64_t sub_1AB3EA354()
{
  result = qword_1EB43C7A8;
  if (!qword_1EB43C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C7A8);
  }

  return result;
}

unint64_t sub_1AB3EA3A8()
{
  result = qword_1EB43C7B0;
  if (!qword_1EB43C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C7B0);
  }

  return result;
}

unint64_t sub_1AB3EA3FC()
{
  result = qword_1EB43C7B8;
  if (!qword_1EB43C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C7B8);
  }

  return result;
}

unint64_t sub_1AB3EA450()
{
  result = qword_1EB43C7C0;
  if (!qword_1EB43C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C7C0);
  }

  return result;
}

unint64_t sub_1AB3EA4A4()
{
  result = qword_1EB43C7C8;
  if (!qword_1EB43C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C7C8);
  }

  return result;
}

unint64_t sub_1AB3EA4F8()
{
  result = qword_1EB43C7D0;
  if (!qword_1EB43C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C7D0);
  }

  return result;
}

unint64_t sub_1AB3EA554()
{
  result = qword_1EB43C7D8;
  if (!qword_1EB43C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C7D8);
  }

  return result;
}

unint64_t sub_1AB3EA5A8()
{
  result = qword_1EB43C7E0;
  if (!qword_1EB43C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C7E0);
  }

  return result;
}

unint64_t sub_1AB3EA5FC()
{
  result = qword_1EB43C7E8;
  if (!qword_1EB43C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C7E8);
  }

  return result;
}

unint64_t sub_1AB3EA650()
{
  result = qword_1EB43C7F0;
  if (!qword_1EB43C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C7F0);
  }

  return result;
}

unint64_t sub_1AB3EA6A4()
{
  result = qword_1EB43C7F8;
  if (!qword_1EB43C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C7F8);
  }

  return result;
}

unint64_t sub_1AB3EA6F8()
{
  result = qword_1EB43C800;
  if (!qword_1EB43C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C800);
  }

  return result;
}

unint64_t sub_1AB3EA74C()
{
  result = qword_1EB43C808;
  if (!qword_1EB43C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C808);
  }

  return result;
}

unint64_t sub_1AB3EA7A0()
{
  result = qword_1EB43C810;
  if (!qword_1EB43C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C810);
  }

  return result;
}

unint64_t sub_1AB3EA7F4()
{
  result = qword_1EB43C818;
  if (!qword_1EB43C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C818);
  }

  return result;
}

unint64_t sub_1AB3EA848()
{
  result = qword_1EB43C820;
  if (!qword_1EB43C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C820);
  }

  return result;
}

unint64_t sub_1AB3EA89C()
{
  result = qword_1EB43C828;
  if (!qword_1EB43C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C828);
  }

  return result;
}

unint64_t sub_1AB3EA8F0()
{
  result = qword_1EB43C830;
  if (!qword_1EB43C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C830);
  }

  return result;
}

unint64_t sub_1AB3EA944()
{
  result = qword_1EB43C838;
  if (!qword_1EB43C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C838);
  }

  return result;
}

unint64_t sub_1AB3EA998()
{
  result = qword_1EB43C840;
  if (!qword_1EB43C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C840);
  }

  return result;
}

uint64_t JetPackAssetDaemonMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v180 = a2;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C848);
  v149 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v179 = &v124 - v3;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C850);
  v148 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v174 = &v124 - v4;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C858);
  v147 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v173 = &v124 - v5;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C860);
  v146 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v172 = &v124 - v6;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C868);
  v145 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v171 = &v124 - v7;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C870);
  v144 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v170 = &v124 - v8;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C878);
  v143 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v169 = &v124 - v9;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C880);
  v142 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v168 = &v124 - v10;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C888);
  v141 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v167 = &v124 - v11;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C890);
  v140 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v178 = &v124 - v12;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C898);
  v139 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v165 = &v124 - v13;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C8A0);
  v138 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v166 = &v124 - v14;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C8A8);
  v151 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v164 = &v124 - v15;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C8B0);
  v181 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v17 = &v124 - v16;
  v182 = type metadata accessor for JetPackAssetDaemonMessage(0);
  MEMORY[0x1EEE9AC00](v182);
  v150 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v137 = (&v124 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v136 = &v124 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v135 = (&v124 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v134 = (&v124 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v133 = (&v124 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v132 = &v124 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v131 = &v124 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v130 = &v124 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v124 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v124 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v124 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v124 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v124 - v48;
  v50 = a1[3];
  v183 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v50);
  sub_1AB3EA114();
  v175 = v17;
  v51 = v191;
  sub_1AB462224();
  if (v51)
  {
LABEL_8:
    v68 = v183;
    return __swift_destroy_boxed_opaque_existential_1Tm(v68);
  }

  v125 = v46;
  v126 = v43;
  v127 = v40;
  v128 = v37;
  v52 = v176;
  v191 = 0;
  v54 = v178;
  v53 = v179;
  v129 = v49;
  v55 = v180;
  v56 = v177;
  v57 = v175;
  v58 = sub_1AB461AE4();
  v59 = (2 * *(v58 + 16)) | 1;
  v187 = v58;
  v188 = v58 + 32;
  v189 = 0;
  v190 = v59;
  v60 = sub_1AB19B328();
  if (v189 != v190 >> 1)
  {
LABEL_6:
    v65 = sub_1AB4616B4();
    swift_allocError();
    v67 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
    *v67 = v182;
    sub_1AB4619E4();
    sub_1AB461694();
    (*(*(v65 - 8) + 104))(v67, *MEMORY[0x1E69E6AF8], v65);
    swift_willThrow();
LABEL_7:
    (*(v181 + 8))(v57, v56);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  switch(v60)
  {
    case 0:
      LOBYTE(v184) = 0;
      sub_1AB3EA944();
      v61 = v164;
      v62 = v191;
      sub_1AB4619D4();
      if (v62)
      {
        goto LABEL_7;
      }

      sub_1AB3EC600();
      sub_1AB461AC4();
      (*(v151 + 8))(v61, v52);
      (*(v181 + 8))(v57, v56);
      swift_unknownObjectRelease();
      v63 = *(&v184 + 1);
      v64 = v125;
      *v125 = v184;
      v64[1] = v63;
      goto LABEL_34;
    case 1:
      LOBYTE(v184) = 1;
      sub_1AB3EA89C();
      v103 = v166;
      v104 = v191;
      sub_1AB4619D4();
      if (v104)
      {
        goto LABEL_7;
      }

      sub_1AB3EC5AC();
      v105 = v152;
      sub_1AB461AC4();
      (*(v138 + 8))(v103, v105);
      (*(v181 + 8))(v57, v56);
      swift_unknownObjectRelease();
      v64 = v126;
      goto LABEL_34;
    case 2:
      LOBYTE(v184) = 2;
      sub_1AB3EA7F4();
      v91 = v165;
      v92 = v191;
      sub_1AB4619D4();
      if (v92)
      {
        goto LABEL_7;
      }

      sub_1AB3EC558();
      v93 = v154;
      sub_1AB461AC4();
      v94 = v181;
      (*(v139 + 8))(v91, v93);
      (*(v94 + 8))(v57, v56);
      swift_unknownObjectRelease();
      v76 = v127;
      goto LABEL_35;
    case 3:
      LOBYTE(v184) = 3;
      sub_1AB3EA74C();
      v95 = v191;
      sub_1AB4619D4();
      if (v95)
      {
        goto LABEL_7;
      }

      sub_1AB3EC504();
      v96 = v153;
      sub_1AB461AC4();
      v97 = v181;
      (*(v140 + 8))(v54, v96);
      (*(v97 + 8))(v57, v56);
      swift_unknownObjectRelease();
      v64 = v128;
LABEL_34:
      swift_storeEnumTagMultiPayload();
      v85 = v64;
      break;
    case 4:
      LOBYTE(v184) = 4;
      sub_1AB3EA6A4();
      v77 = v167;
      v78 = v191;
      sub_1AB4619D4();
      if (v78)
      {
        goto LABEL_7;
      }

      sub_1AB3EC4B0();
      v79 = v155;
      sub_1AB461AC4();
      v80 = v181;
      (*(v141 + 8))(v77, v79);
      (*(v80 + 8))(v57, v56);
      swift_unknownObjectRelease();
      v76 = v130;
      goto LABEL_35;
    case 5:
      LOBYTE(v184) = 5;
      sub_1AB3EA5FC();
      v106 = v168;
      v107 = v191;
      sub_1AB4619D4();
      if (v107)
      {
        goto LABEL_7;
      }

      sub_1AB3EC45C();
      v108 = v156;
      sub_1AB461AC4();
      v109 = v181;
      (*(v142 + 8))(v106, v108);
      (*(v109 + 8))(v57, v56);
      swift_unknownObjectRelease();
      v76 = v131;
      goto LABEL_35;
    case 6:
      LOBYTE(v184) = 6;
      sub_1AB3EA554();
      v110 = v169;
      v111 = v191;
      sub_1AB4619D4();
      if (v111)
      {
        goto LABEL_7;
      }

      sub_1AB3EC408();
      v112 = v157;
      sub_1AB461AC4();
      v113 = v181;
      (*(v143 + 8))(v110, v112);
      (*(v113 + 8))(v57, v56);
      swift_unknownObjectRelease();
      v76 = v132;
      *v132 = v184;
      goto LABEL_35;
    case 7:
      LOBYTE(v184) = 7;
      sub_1AB3EA4A4();
      v98 = v170;
      v99 = v191;
      sub_1AB4619D4();
      if (v99)
      {
        goto LABEL_7;
      }

      sub_1AB3EC3B4();
      v100 = v158;
      sub_1AB461AC4();
      v101 = v181;
      (*(v144 + 8))(v98, v100);
      (*(v101 + 8))(v57, v56);
      swift_unknownObjectRelease();
      v102 = v185;
      v76 = v133;
      *v133 = v184;
      v76[16] = v102;
      goto LABEL_35;
    case 8:
      LOBYTE(v184) = 8;
      sub_1AB3EA3FC();
      v118 = v171;
      v119 = v191;
      sub_1AB4619D4();
      if (v119)
      {
        goto LABEL_7;
      }

      sub_1AB3EC360();
      v120 = v159;
      sub_1AB461AC4();
      v121 = v181;
      (*(v145 + 8))(v118, v120);
      (*(v121 + 8))(v57, v56);
      swift_unknownObjectRelease();
      v76 = v134;
      *v134 = v184;
      goto LABEL_35;
    case 9:
      LOBYTE(v184) = 9;
      sub_1AB3EA354();
      v86 = v172;
      v87 = v191;
      sub_1AB4619D4();
      if (v87)
      {
        goto LABEL_7;
      }

      sub_1AB3EC30C();
      v88 = v160;
      sub_1AB461AC4();
      v89 = v181;
      (*(v146 + 8))(v86, v88);
      (*(v89 + 8))(v57, v56);
      swift_unknownObjectRelease();
      v90 = v185;
      v76 = v135;
      *v135 = v184;
      v76[16] = v90;
      goto LABEL_35;
    case 10:
      LOBYTE(v184) = 10;
      sub_1AB3EA2AC();
      v114 = v173;
      v115 = v191;
      sub_1AB4619D4();
      if (v115)
      {
        goto LABEL_7;
      }

      sub_1AB3EC2B8();
      v116 = v161;
      sub_1AB461AC4();
      v117 = v181;
      (*(v147 + 8))(v114, v116);
      (*(v117 + 8))(v57, v56);
      swift_unknownObjectRelease();
      v76 = v136;
      goto LABEL_35;
    case 11:
      LOBYTE(v184) = 11;
      sub_1AB3EA204();
      v70 = v174;
      v71 = v191;
      sub_1AB4619D4();
      if (v71)
      {
        goto LABEL_7;
      }

      sub_1AB3EC264();
      v72 = v162;
      sub_1AB461AC4();
      v73 = v181;
      (*(v148 + 8))(v70, v72);
      (*(v73 + 8))(v57, v56);
      swift_unknownObjectRelease();
      v74 = v185;
      v75 = v186;
      v76 = v137;
      *v137 = v184;
      *(v76 + 2) = v74;
      *(v76 + 3) = v75;
LABEL_35:
      swift_storeEnumTagMultiPayload();
      v85 = v76;
      break;
    case 12:
      LOBYTE(v184) = 12;
      sub_1AB3EA168();
      v81 = v191;
      sub_1AB4619D4();
      if (v81)
      {
        goto LABEL_7;
      }

      type metadata accessor for DaemonGetAssetRequest(0);
      sub_1AB3EA1BC(&qword_1EB43C8B8, type metadata accessor for DaemonGetAssetRequest);
      v82 = v150;
      v83 = v163;
      sub_1AB461AC4();
      v84 = v181;
      (*(v149 + 8))(v53, v83);
      (*(v84 + 8))(v57, v56);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v85 = v82;
      break;
    default:
      goto LABEL_6;
  }

  v122 = v129;
  sub_1AB058FD8(v85, v129, type metadata accessor for JetPackAssetDaemonMessage);
  v123 = v183;
  sub_1AB058FD8(v122, v55, type metadata accessor for JetPackAssetDaemonMessage);
  v68 = v123;
  return __swift_destroy_boxed_opaque_existential_1Tm(v68);
}

unint64_t sub_1AB3EC264()
{
  result = qword_1EB43C8C0;
  if (!qword_1EB43C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C8C0);
  }

  return result;
}

unint64_t sub_1AB3EC2B8()
{
  result = qword_1EB43C8C8;
  if (!qword_1EB43C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C8C8);
  }

  return result;
}

unint64_t sub_1AB3EC30C()
{
  result = qword_1EB43C8D0;
  if (!qword_1EB43C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C8D0);
  }

  return result;
}

unint64_t sub_1AB3EC360()
{
  result = qword_1EB43C8D8;
  if (!qword_1EB43C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C8D8);
  }

  return result;
}

unint64_t sub_1AB3EC3B4()
{
  result = qword_1EB43C8E0;
  if (!qword_1EB43C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C8E0);
  }

  return result;
}

unint64_t sub_1AB3EC408()
{
  result = qword_1EB43C8E8;
  if (!qword_1EB43C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C8E8);
  }

  return result;
}

unint64_t sub_1AB3EC45C()
{
  result = qword_1EB43C8F0;
  if (!qword_1EB43C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C8F0);
  }

  return result;
}

unint64_t sub_1AB3EC4B0()
{
  result = qword_1EB43C8F8;
  if (!qword_1EB43C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C8F8);
  }

  return result;
}

unint64_t sub_1AB3EC504()
{
  result = qword_1EB43C900;
  if (!qword_1EB43C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C900);
  }

  return result;
}

unint64_t sub_1AB3EC558()
{
  result = qword_1EB43C908;
  if (!qword_1EB43C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C908);
  }

  return result;
}

unint64_t sub_1AB3EC5AC()
{
  result = qword_1EB43C910;
  if (!qword_1EB43C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C910);
  }

  return result;
}

unint64_t sub_1AB3EC600()
{
  result = qword_1EB43C918;
  if (!qword_1EB43C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C918);
  }

  return result;
}

uint64_t DaemonPingRequest.messageText.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t DaemonPingRequest.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AB4615D4();

  MEMORY[0x1AC59BA20](v1, v2);
  return 0xD00000000000001BLL;
}

uint64_t DaemonPingRequest.message.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for JetPackAssetDaemonMessage(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AB3EC7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x546567617373656DLL && a2 == 0xEB00000000747865)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AB461DA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AB3EC840(uint64_t a1)
{
  v2 = sub_1AB3EC9F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3EC87C(uint64_t a1)
{
  v2 = sub_1AB3EC9F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonPingRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C920);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3EC9F4();
  sub_1AB462274();
  sub_1AB461BB4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1AB3EC9F4()
{
  result = qword_1EB43C928;
  if (!qword_1EB43C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C928);
  }

  return result;
}

uint64_t DaemonPingRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C930);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3EC9F4();
  sub_1AB462224();
  if (!v2)
  {
    v9 = sub_1AB461A84();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1AB3ECBBC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for JetPackAssetDaemonMessage(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AB3ECC28(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C920);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3EC9F4();
  sub_1AB462274();
  sub_1AB461BB4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1AB3ECD64()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AB4615D4();

  MEMORY[0x1AC59BA20](v1, v2);
  return 0xD00000000000001BLL;
}

uint64_t DaemonRefreshTestAssetRequest.message.getter()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AB3ECE44(uint64_t a1)
{
  v2 = sub_1AB3ECF00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3ECE80(uint64_t a1)
{
  v2 = sub_1AB3ECF00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1AB3ECF00()
{
  result = qword_1EB43C940;
  if (!qword_1EB43C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C940);
  }

  return result;
}

uint64_t sub_1AB3ECF54()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DaemonReadTestAssetRequest.message.getter()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AB3ED064(uint64_t a1)
{
  v2 = sub_1AB3ED120();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3ED0A0(uint64_t a1)
{
  v2 = sub_1AB3ED120();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1AB3ED120()
{
  result = qword_1EB43C950;
  if (!qword_1EB43C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C950);
  }

  return result;
}

uint64_t sub_1AB3ED174()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DaemonReadTestAssetResponse.token.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

JetEngine::DaemonReadTestAssetResponse __swiftcall DaemonReadTestAssetResponse.init(token:)(JetEngine::DaemonReadTestAssetResponse token)
{
  v2 = *(token.token.token._countAndFlagsBits + 16);
  v3 = *(token.token.token._countAndFlagsBits + 24);
  *v1 = *token.token.token._countAndFlagsBits;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return token;
}

uint64_t sub_1AB3ED28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AB461DA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AB3ED310(uint64_t a1)
{
  v2 = sub_1AB3ED514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3ED34C(uint64_t a1)
{
  v2 = sub_1AB3ED514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonReadTestAssetResponse.encode(to:)(void *a1)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C958);
  v3 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v5 = &v11 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[3];
  v11 = v1[2];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3ED514();

  sub_1AB462274();
  v13 = v6;
  v14 = v7;
  v15 = v11;
  v16 = v8;
  sub_1AB18D7A4();
  v9 = v12;
  sub_1AB461BF4();

  return (*(v3 + 8))(v5, v9);
}

unint64_t sub_1AB3ED514()
{
  result = qword_1EB43C960;
  if (!qword_1EB43C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C960);
  }

  return result;
}

uint64_t DaemonReadTestAssetResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C968);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3ED514();
  sub_1AB462224();
  if (!v2)
  {
    sub_1AB18CF40();
    sub_1AB461AC4();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = v14;
    *a2 = v12;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

JetEngine::DaemonScheduleTime __swiftcall DaemonScheduleTime.init(scheduleAfter:scheduleBefore:)(Swift::Double scheduleAfter, Swift::Double scheduleBefore)
{
  *v2 = scheduleAfter;
  v2[1] = scheduleBefore;
  result.scheduleBefore = scheduleBefore;
  result.scheduleAfter = scheduleAfter;
  return result;
}

uint64_t sub_1AB3ED768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x656C756465686373 && a2 == 0xED00007265746641;
  if (v5 || (sub_1AB461DA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xEE0065726F666542)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AB461DA4();

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

uint64_t sub_1AB3ED84C(uint64_t a1)
{
  v2 = sub_1AB3EDA4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3ED888(uint64_t a1)
{
  v2 = sub_1AB3EDA4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonScheduleTime.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C970);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3EDA4C();
  sub_1AB462274();
  v8[15] = 0;
  sub_1AB461BD4();
  if (!v1)
  {
    v8[14] = 1;
    sub_1AB461BD4();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1AB3EDA4C()
{
  result = qword_1EB43C978;
  if (!qword_1EB43C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C978);
  }

  return result;
}

uint64_t DaemonScheduleTime.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C980);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3EDA4C();
  sub_1AB462224();
  if (!v2)
  {
    v16 = 0;
    sub_1AB461AA4();
    v10 = v9;
    v15 = 1;
    sub_1AB461AA4();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

__n128 DaemonScheduleTaskResponse.schedule.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

JetEngine::DaemonScheduleTaskResponse __swiftcall DaemonScheduleTaskResponse.init(schedule:)(JetEngine::DaemonScheduleTaskResponse schedule)
{
  v2 = *(*&schedule.schedule.is_nil + 16);
  v3 = **&schedule.schedule.is_nil;
  *v1 = **&schedule.schedule.is_nil;
  *(v1 + 16) = v2;
  schedule.schedule.value.scheduleAfter = *&v3;
  return schedule;
}

uint64_t sub_1AB3EDCB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C756465686373 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AB461DA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AB3EDD40(uint64_t a1)
{
  v2 = sub_1AB3EDF18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3EDD7C(uint64_t a1)
{
  v2 = sub_1AB3EDF18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonScheduleTaskResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C988);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v8 = *v1;
  v7 = v1[1];
  HIDWORD(v10) = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3EDF18();
  sub_1AB462274();
  v11 = v8;
  v12 = v7;
  v13 = BYTE4(v10);
  sub_1AB3EDF6C();
  sub_1AB461B84();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1AB3EDF18()
{
  result = qword_1EB43C990;
  if (!qword_1EB43C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C990);
  }

  return result;
}

unint64_t sub_1AB3EDF6C()
{
  result = qword_1EB43C998;
  if (!qword_1EB43C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C998);
  }

  return result;
}

uint64_t DaemonScheduleTaskResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C9A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3EDF18();
  sub_1AB462224();
  if (!v2)
  {
    sub_1AB3EE138();
    sub_1AB461A54();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1AB3EE138()
{
  result = qword_1EB43C9A8;
  if (!qword_1EB43C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C9A8);
  }

  return result;
}

uint64_t DaemonScheduleTaskRequest.message.getter()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AB3EE220(uint64_t a1)
{
  v2 = sub_1AB3EE2DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3EE25C(uint64_t a1)
{
  v2 = sub_1AB3EE2DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1AB3EE2DC()
{
  result = qword_1EB43C9B8;
  if (!qword_1EB43C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C9B8);
  }

  return result;
}

uint64_t sub_1AB3EE330()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DaemonPostInstallRequest.message.getter()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AB3EE438(uint64_t a1)
{
  v2 = sub_1AB3EE4F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3EE474(uint64_t a1)
{
  v2 = sub_1AB3EE4F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1AB3EE4F4()
{
  result = qword_1EB43C9C8;
  if (!qword_1EB43C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C9C8);
  }

  return result;
}

uint64_t sub_1AB3EE548()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DaemonBagRefreshRequest.message.getter()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AB3EE650(uint64_t a1)
{
  v2 = sub_1AB3EE70C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3EE68C(uint64_t a1)
{
  v2 = sub_1AB3EE70C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1AB3EE70C()
{
  result = qword_1EB43C9D8;
  if (!qword_1EB43C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C9D8);
  }

  return result;
}

uint64_t sub_1AB3EE788()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DaemonPushInfoRequest.message.getter@<X0>(_BYTE *a1@<X8>)
{
  *a1 = *v1;
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AB3EE8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4D746361706D6F63 && a2 == 0xEB0000000065646FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AB461DA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AB3EE950(uint64_t a1)
{
  v2 = sub_1AB3EEB00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3EE98C(uint64_t a1)
{
  v2 = sub_1AB3EEB00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonPushInfoRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C9E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3EEB00();
  sub_1AB462274();
  sub_1AB461BC4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1AB3EEB00()
{
  result = qword_1EB43C9E8;
  if (!qword_1EB43C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C9E8);
  }

  return result;
}

uint64_t DaemonPushInfoRequest.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C9F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3EEB00();
  sub_1AB462224();
  if (!v2)
  {
    v9 = sub_1AB461A94();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1AB3EECAC@<X0>(_BYTE *a1@<X8>)
{
  *a1 = *v1;
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AB3EED10(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C9E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3EEB00();
  sub_1AB462274();
  sub_1AB461BC4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t DaemonPushInfoResponse.environment.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DaemonPushInfoResponse.apsLastKnownConnectedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DaemonPushInfoResponse(0) + 28);

  return sub_1AB19C16C(v3, a1);
}

uint64_t DaemonPushInfoResponse.controlChannelID.getter()
{
  v1 = *(v0 + *(type metadata accessor for DaemonPushInfoResponse(0) + 32));

  return v1;
}

uint64_t DaemonPushInfoResponse.init(environment:records:subscribedChannelIDs:apsLastKnownConnectedDate:controlChannelID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  v12 = type metadata accessor for DaemonPushInfoResponse(0);
  result = sub_1AB167244(a5, a8 + *(v12 + 28));
  v14 = (a8 + *(v12 + 32));
  *v14 = a6;
  v14[1] = a7;
  return result;
}

unint64_t sub_1AB3EEFB4()
{
  v1 = *v0;
  v2 = 0x6D6E6F7269766E65;
  v3 = 0xD000000000000019;
  if (v1 != 3)
  {
    v3 = 0xD000000000000010;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = 0x7364726F636572;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AB3EF068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB3F8710(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AB3EF090(uint64_t a1)
{
  v2 = sub_1AB3EF3F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3EF0CC(uint64_t a1)
{
  v2 = sub_1AB3EF3F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonPushInfoResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C9F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3EF3F0();
  sub_1AB462274();
  LOBYTE(v11) = 0;
  sub_1AB461BB4();
  if (!v2)
  {
    v11 = *(v3 + 16);
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CA08);
    sub_1AB3EF9A0(&qword_1EB43CA10, sub_1AB3EF444);
    sub_1AB461BF4();
    v11 = *(v3 + 24);
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436FB0);
    sub_1AB3EFA6C(&qword_1EB43CA20);
    sub_1AB461BF4();
    type metadata accessor for DaemonPushInfoResponse(0);
    LOBYTE(v11) = 3;
    sub_1AB45F9B4();
    sub_1AB3EA1BC(&qword_1ED4D0B88, MEMORY[0x1E6969530]);
    sub_1AB461B84();
    LOBYTE(v11) = 4;
    sub_1AB461B44();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1AB3EF3F0()
{
  result = qword_1EB43CA00;
  if (!qword_1EB43CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CA00);
  }

  return result;
}

unint64_t sub_1AB3EF444()
{
  result = qword_1EB43CA18;
  if (!qword_1EB43CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CA18);
  }

  return result;
}

uint64_t DaemonPushInfoResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CA28);
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  v10 = type metadata accessor for DaemonPushInfoResponse(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3EF3F0();
  v28 = v9;
  sub_1AB462224();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v13 = v26;
  v24 = v10;
  LOBYTE(v30) = 0;
  v14 = sub_1AB461A84();
  v16 = v15;
  *v12 = v14;
  v12[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CA08);
  v29 = 1;
  sub_1AB3EF9A0(&qword_1EB43CA30, sub_1AB3EFA18);
  sub_1AB461AC4();
  v23[1] = v16;
  v12[2] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436FB0);
  v29 = 2;
  sub_1AB3EFA6C(&qword_1EB43CA40);
  v23[0] = 0;
  sub_1AB461AC4();
  v12[3] = v30;
  sub_1AB45F9B4();
  LOBYTE(v30) = 3;
  sub_1AB3EA1BC(&unk_1ED4D0770, MEMORY[0x1E6969530]);
  sub_1AB461A54();
  v17 = v24;
  sub_1AB167244(v6, v12 + *(v24 + 28));
  LOBYTE(v30) = 4;
  v18 = sub_1AB461A14();
  v20 = v19;
  (*(v13 + 8))(v28, v27);
  v21 = (v12 + *(v17 + 32));
  *v21 = v18;
  v21[1] = v20;
  sub_1AB3EFAD8(v12, v25, type metadata accessor for DaemonPushInfoResponse);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1AB3EFB40(v12, type metadata accessor for DaemonPushInfoResponse);
}

uint64_t sub_1AB3EF9A0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43CA08);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AB3EFA18()
{
  result = qword_1EB43CA38;
  if (!qword_1EB43CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CA38);
  }

  return result;
}

uint64_t sub_1AB3EFA6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB436FB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AB3EFAD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AB3EFB40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AB3EFBD0()
{
  if (*v0)
  {
    return 0x7263736275736E75;
  }

  else
  {
    return 0x6269726373627573;
  }
}

uint64_t sub_1AB3EFC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6269726373627573 && a2 == 0xE900000000000065;
  if (v6 || (sub_1AB461DA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7263736275736E75 && a2 == 0xEB00000000656269)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AB461DA4();

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

uint64_t sub_1AB3EFD00(uint64_t a1)
{
  v2 = sub_1AB3F0158();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3EFD3C(uint64_t a1)
{
  v2 = sub_1AB3F0158();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB3EFD78(uint64_t a1)
{
  v2 = sub_1AB3F0200();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3EFDB4(uint64_t a1)
{
  v2 = sub_1AB3F0200();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB3EFDF0(uint64_t a1)
{
  v2 = sub_1AB3F01AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3EFE2C(uint64_t a1)
{
  v2 = sub_1AB3F01AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonPushSubscriptionRequest.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CA48);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v20 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CA50);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CA58);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = *v1;
  v23 = v1[1];
  v24 = v12;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3F0158();
  sub_1AB462274();
  if (v13)
  {
    v26 = 1;
    sub_1AB3F01AC();
    v14 = v20;
    sub_1AB461B24();
    v15 = v22;
    sub_1AB461B44();
    (*(v21 + 8))(v14, v15);
  }

  else
  {
    v25 = 0;
    sub_1AB3F0200();
    sub_1AB461B24();
    v16 = v19;
    sub_1AB461BB4();
    (*(v18 + 8))(v7, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1AB3F0158()
{
  result = qword_1EB43CA60;
  if (!qword_1EB43CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CA60);
  }

  return result;
}

unint64_t sub_1AB3F01AC()
{
  result = qword_1EB43CA68;
  if (!qword_1EB43CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CA68);
  }

  return result;
}

unint64_t sub_1AB3F0200()
{
  result = qword_1EB43CA70;
  if (!qword_1EB43CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CA70);
  }

  return result;
}

uint64_t DaemonPushSubscriptionRequest.State.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CA78);
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v4 = &v35 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CA80);
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CA88);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - v10;
  v12 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v12);
  sub_1AB3F0158();
  v13 = v39;
  sub_1AB462224();
  if (!v13)
  {
    v14 = v38;
    v39 = v9;
    v15 = sub_1AB461AE4();
    v16 = (2 * *(v15 + 16)) | 1;
    v41 = v15;
    v42 = v15 + 32;
    v43 = 0;
    v44 = v16;
    v17 = sub_1AB19B730();
    v18 = v11;
    if (v17 == 2 || v43 != v44 >> 1)
    {
      v22 = sub_1AB4616B4();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
      *v24 = &type metadata for DaemonPushSubscriptionRequest.State;
      sub_1AB4619E4();
      sub_1AB461694();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v39 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v17)
      {
        v45 = v17;
        v46 = 1;
        sub_1AB3F01AC();
        v19 = v4;
        sub_1AB4619D4();
        v20 = v39;
        v21 = v37;
        v35 = v18;
        v29 = sub_1AB461A14();
        v33 = v32;
        (*(v36 + 8))(v19, v14);
        (*(v20 + 8))(v35, v8);
      }

      else
      {
        v26 = v17;
        v46 = 0;
        sub_1AB3F0200();
        v27 = v7;
        sub_1AB4619D4();
        v28 = v39;
        v21 = v37;
        v45 = v26;
        v30 = v18;
        v31 = v5;
        v29 = sub_1AB461A84();
        v33 = v34;
        (*(v35 + 1))(v27, v31);
        (*(v28 + 8))(v30, v8);
      }

      swift_unknownObjectRelease();
      *v21 = v29;
      *(v21 + 8) = v33;
      *(v21 + 16) = v45 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v40);
}

unint64_t DaemonPushSubscriptionRequest.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[2])
  {
    if (!v2)
    {
      return 0xD000000000000026;
    }

    sub_1AB4615D4();

    v4 = 0xD000000000000024;
  }

  else
  {
    sub_1AB4615D4();

    v4 = 0xD000000000000020;
  }

  MEMORY[0x1AC59BA20](v1, v2);
  return v4;
}

uint64_t sub_1AB3F092C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AB461DA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AB3F09B0(uint64_t a1)
{
  v2 = sub_1AB3F0BA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3F09EC(uint64_t a1)
{
  v2 = sub_1AB3F0BA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonPushSubscriptionRequest.encode(to:)(void *a1)
{
  v11[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CA90);
  v3 = *(v11[0] - 8);
  MEMORY[0x1EEE9AC00](v11[0]);
  v5 = v11 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3F0818();
  sub_1AB3F0BA0();
  sub_1AB462274();
  v11[1] = v6;
  v11[2] = v7;
  v12 = v8;
  sub_1AB3F0BF4();
  v9 = v11[0];
  sub_1AB461BF4();
  sub_1AB3EA54C();
  return (*(v3 + 8))(v5, v9);
}

unint64_t sub_1AB3F0BA0()
{
  result = qword_1EB43CA98;
  if (!qword_1EB43CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CA98);
  }

  return result;
}

unint64_t sub_1AB3F0BF4()
{
  result = qword_1EB43CAA0;
  if (!qword_1EB43CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CAA0);
  }

  return result;
}

uint64_t DaemonPushSubscriptionRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CAA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3F0BA0();
  sub_1AB462224();
  if (!v2)
  {
    sub_1AB3F0DC0();
    sub_1AB461AC4();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1AB3F0DC0()
{
  result = qword_1EB43CAB0;
  if (!qword_1EB43CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CAB0);
  }

  return result;
}

unint64_t DaemonPushDeleteRecordRequest.description.getter()
{
  sub_1AB4615D4();

  v0 = sub_1AB461C44();
  MEMORY[0x1AC59BA20](v0);

  return 0xD00000000000002FLL;
}

uint64_t DaemonPushDeleteRecordRequest.message.getter@<X0>(_DWORD *a1@<X8>)
{
  *a1 = *v1;
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AB3F0F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AB461DA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AB3F0FE0(uint64_t a1)
{
  v2 = sub_1AB3F1190();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3F101C(uint64_t a1)
{
  v2 = sub_1AB3F1190();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonPushDeleteRecordRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CAB8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3F1190();
  sub_1AB462274();
  sub_1AB461C04();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1AB3F1190()
{
  result = qword_1EB43CAC0;
  if (!qword_1EB43CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CAC0);
  }

  return result;
}

uint64_t DaemonPushDeleteRecordRequest.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CAC8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3F1190();
  sub_1AB462224();
  if (!v2)
  {
    v9 = sub_1AB461AD4();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1AB3F1338@<X0>(_DWORD *a1@<X8>)
{
  *a1 = *v1;
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AB3F139C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CAB8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3F1190();
  sub_1AB462274();
  sub_1AB461C04();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1AB3F14D8(uint64_t a1)
{
  v2 = sub_1AB3F1B24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3F1514(uint64_t a1)
{
  v2 = sub_1AB3F1B24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB3F1550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AB461DA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AB3F15D0(uint64_t a1)
{
  v2 = sub_1AB3F1B78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3F160C(uint64_t a1)
{
  v2 = sub_1AB3F1B78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB3F1648()
{
  if (*v0)
  {
    return 0x656E6E6168437962;
  }

  else
  {
    return 1682536802;
  }
}

uint64_t sub_1AB3F1684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1682536802 && a2 == 0xE400000000000000;
  if (v5 || (sub_1AB461DA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E6E6168437962 && a2 == 0xEB0000000064496CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AB461DA4();

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

uint64_t sub_1AB3F1764(uint64_t a1)
{
  v2 = sub_1AB3F1AD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3F17A0(uint64_t a1)
{
  v2 = sub_1AB3F1AD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonPushResetRecordRequest.Target.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CAD0);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v21 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CAD8);
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CAE0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = v1[1];
  v24 = *v1;
  v18 = v12;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3F1AD0();
  sub_1AB462274();
  if (v13)
  {
    v26 = 1;
    sub_1AB3F1B24();
    v14 = v21;
    sub_1AB461B24();
    v15 = v23;
    sub_1AB461BB4();
    (*(v22 + 8))(v14, v15);
  }

  else
  {
    v25 = 0;
    sub_1AB3F1B78();
    sub_1AB461B24();
    v16 = v20;
    sub_1AB461C04();
    (*(v19 + 8))(v7, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1AB3F1AD0()
{
  result = qword_1EB43CAE8;
  if (!qword_1EB43CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CAE8);
  }

  return result;
}

unint64_t sub_1AB3F1B24()
{
  result = qword_1EB43CAF0;
  if (!qword_1EB43CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CAF0);
  }

  return result;
}

unint64_t sub_1AB3F1B78()
{
  result = qword_1EB43CAF8;
  if (!qword_1EB43CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CAF8);
  }

  return result;
}

uint64_t DaemonPushResetRecordRequest.Target.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CB00);
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v4 = &v36 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CB08);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CB10);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - v10;
  v12 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v12);
  sub_1AB3F1AD0();
  v13 = v40;
  sub_1AB462224();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v41);
  }

  v14 = v39;
  v40 = v9;
  v15 = sub_1AB461AE4();
  v16 = (2 * *(v15 + 16)) | 1;
  v42 = v15;
  v43 = v15 + 32;
  v44 = 0;
  v45 = v16;
  v17 = sub_1AB19B730();
  v18 = v11;
  if (v17 == 2 || v44 != v45 >> 1)
  {
    v22 = sub_1AB4616B4();
    swift_allocError();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
    *v24 = &type metadata for DaemonPushResetRecordRequest.Target;
    sub_1AB4619E4();
    sub_1AB461694();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v40 + 8))(v11, v8);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v41);
  }

  if (v17)
  {
    v46 = v17;
    v47 = 1;
    sub_1AB3F1B24();
    v19 = v4;
    sub_1AB4619D4();
    v20 = v40;
    v21 = v38;
    v29 = sub_1AB461A84();
    v36 = v30;
    v33 = v29;
    (*(v37 + 8))(v19, v14);
    (*(v20 + 8))(v11, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = v17;
    v47 = 0;
    sub_1AB3F1B78();
    v27 = v7;
    sub_1AB4619D4();
    v28 = v40;
    v46 = v26;
    v31 = v27;
    v32 = v18;
    v34 = sub_1AB461AD4();
    (*(v36 + 8))(v31, v5);
    (*(v28 + 8))(v32, v8);
    swift_unknownObjectRelease();
    v36 = 0;
    v33 = v34;
    v21 = v38;
  }

  v35 = v36;
  *v21 = v33;
  *(v21 + 8) = v35;
  *(v21 + 16) = v46 & 1;
  return __swift_destroy_boxed_opaque_existential_1Tm(v41);
}

uint64_t sub_1AB3F219C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return a1();
}

unint64_t DaemonPushResetRecordRequest.description.getter()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = v0[1];
    v5 = 0;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000038, 0x80000001AB50DF40);
    MEMORY[0x1AC59BA20](v1, v2);
  }

  else
  {
    sub_1AB4615D4();

    v5 = 0xD00000000000002ELL;
    v3 = sub_1AB461C44();
    MEMORY[0x1AC59BA20](v3);
  }

  return v5;
}

uint64_t sub_1AB3F22C8@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  type metadata accessor for JetPackAssetDaemonMessage(0);
  swift_storeEnumTagMultiPayload();

  return a1(v3, v4, v5);
}

uint64_t sub_1AB3F2368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746567726174 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AB461DA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AB3F23EC(uint64_t a1)
{
  v2 = sub_1AB3F25DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3F2428(uint64_t a1)
{
  v2 = sub_1AB3F25DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonPushResetRecordRequest.encode(to:)(void *a1)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CB18);
  v3 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v5 = &v11 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB179C90(v6, v7, v8);
  sub_1AB3F25DC();
  sub_1AB462274();
  v12 = v6;
  v13 = v7;
  v14 = v8;
  sub_1AB3F2630();
  v9 = v11;
  sub_1AB461BF4();
  sub_1AB179CA0(v12, v13, v14);
  return (*(v3 + 8))(v5, v9);
}

unint64_t sub_1AB3F25DC()
{
  result = qword_1EB43CB20;
  if (!qword_1EB43CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CB20);
  }

  return result;
}

unint64_t sub_1AB3F2630()
{
  result = qword_1EB43CB28;
  if (!qword_1EB43CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CB28);
  }

  return result;
}

uint64_t DaemonPushResetRecordRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CB30);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3F25DC();
  sub_1AB462224();
  if (!v2)
  {
    sub_1AB3F27FC();
    sub_1AB461AC4();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1AB3F27FC()
{
  result = qword_1EB43CB38;
  if (!qword_1EB43CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CB38);
  }

  return result;
}

uint64_t sub_1AB3F286C@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  type metadata accessor for JetPackAssetDaemonMessage(0);
  swift_storeEnumTagMultiPayload();

  return a1(v3, v4, v5);
}

uint64_t DaemonPushClearRecordsRequest.message.getter()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AB3F2990(uint64_t a1)
{
  v2 = sub_1AB3F2B6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3F29CC(uint64_t a1)
{
  v2 = sub_1AB3F2B6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB3F2A4C(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  a4();
  sub_1AB462274();
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1AB3F2B6C()
{
  result = qword_1EB43CB48;
  if (!qword_1EB43CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CB48);
  }

  return result;
}

uint64_t sub_1AB3F2BC0()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AB3F2C48(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  a6();
  sub_1AB462274();
  return (*(v9 + 8))(v11, v8);
}

uint64_t DaemonCacheEvictRequest.cacheKey.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DaemonCacheEvictRequest.fileName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DaemonCacheEvictRequest.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD000000000000034, 0x80000001AB508740);
  MEMORY[0x1AC59BA20](v3, v4);
  MEMORY[0x1AC59BA20](0x6568636163202C20, 0xED0000203A79654BLL);
  MEMORY[0x1AC59BA20](v1, v2);
  return 0;
}

uint64_t DaemonCacheEvictRequest.message.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  type metadata accessor for JetPackAssetDaemonMessage(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AB3F2F14()
{
  if (*v0)
  {
    return 0x656D614E656C6966;
  }

  else
  {
    return 0x79654B6568636163;
  }
}

uint64_t sub_1AB3F2F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79654B6568636163 && a2 == 0xE800000000000000;
  if (v6 || (sub_1AB461DA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AB461DA4();

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

uint64_t sub_1AB3F3024(uint64_t a1)
{
  v2 = sub_1AB3F3230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3F3060(uint64_t a1)
{
  v2 = sub_1AB3F3230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonCacheEvictRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CB50);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3F3230();
  sub_1AB462274();
  v12 = 0;
  v8 = v10[3];
  sub_1AB461BB4();
  if (!v8)
  {
    v11 = 1;
    sub_1AB461BB4();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1AB3F3230()
{
  result = qword_1EB43CB58;
  if (!qword_1EB43CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CB58);
  }

  return result;
}

uint64_t DaemonCacheEvictRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CB60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3F3230();
  sub_1AB462224();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = 0;
  v9 = sub_1AB461A84();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1AB461A84();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1AB3F3484@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  type metadata accessor for JetPackAssetDaemonMessage(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AB3F3520()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD000000000000034, 0x80000001AB508740);
  MEMORY[0x1AC59BA20](v3, v4);
  MEMORY[0x1AC59BA20](0x6568636163202C20, 0xED0000203A79654BLL);
  MEMORY[0x1AC59BA20](v1, v2);
  return 0;
}

uint64_t DaemonCacheEvictResponse.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AB4619B4();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1AB3F3654()
{
  sub_1AB4620A4();
  sub_1AB460684();
  return sub_1AB462104();
}

uint64_t sub_1AB3F36C0()
{
  sub_1AB4620A4();
  sub_1AB460684();
  return sub_1AB462104();
}

uint64_t sub_1AB3F3710@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AB4619B4();

  *a1 = v2 != 0;
  return result;
}

unint64_t DaemonGetAssetRequest.description.getter()
{
  sub_1AB4615D4();

  v0 = sub_1AB45F614();
  MEMORY[0x1AC59BA20](v0);

  return 0xD000000000000013;
}

uint64_t DaemonGetAssetRequest.message.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1AB3EFAD8(v1, a1, type metadata accessor for DaemonGetAssetRequest);
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AB3F3978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74657373416C7275 && a2 == 0xEF74736575716552)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AB461DA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AB3F3A08(uint64_t a1)
{
  v2 = sub_1AB3F3BF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3F3A44(uint64_t a1)
{
  v2 = sub_1AB3F3BF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonGetAssetRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CB68);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3F3BF8();
  sub_1AB462274();
  type metadata accessor for URLJetPackAssetRequest();
  sub_1AB3EA1BC(&qword_1EB433B70, type metadata accessor for URLJetPackAssetRequest);
  sub_1AB461BF4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1AB3F3BF8()
{
  result = qword_1EB433C90[0];
  if (!qword_1EB433C90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB433C90);
  }

  return result;
}

uint64_t DaemonGetAssetRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for URLJetPackAssetRequest();
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CB70);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  AssetRequest = type metadata accessor for DaemonGetAssetRequest(0);
  MEMORY[0x1EEE9AC00](AssetRequest - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3F3BF8();
  sub_1AB462224();
  if (!v2)
  {
    v12 = v15;
    sub_1AB3EA1BC(&qword_1EB43CB78, type metadata accessor for URLJetPackAssetRequest);
    v13 = v17;
    sub_1AB461AC4();
    (*(v16 + 8))(v8, v6);
    sub_1AB058FD8(v13, v11, type metadata accessor for URLJetPackAssetRequest);
    sub_1AB058FD8(v11, v12, type metadata accessor for DaemonGetAssetRequest);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1AB3F3EC0@<X0>(uint64_t a1@<X8>)
{
  sub_1AB3EFAD8(v1, a1, type metadata accessor for DaemonGetAssetRequest);
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AB3F3F3C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CB68);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3F3BF8();
  sub_1AB462274();
  type metadata accessor for URLJetPackAssetRequest();
  sub_1AB3EA1BC(&qword_1EB433B70, type metadata accessor for URLJetPackAssetRequest);
  sub_1AB461BF4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1AB3F40B4()
{
  sub_1AB4615D4();

  v0 = sub_1AB45F614();
  MEMORY[0x1AC59BA20](v0);

  return 0xD000000000000013;
}

uint64_t sub_1AB3F41AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7465737361 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AB461DA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AB3F4230(uint64_t a1)
{
  v2 = sub_1AB3F4420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3F426C(uint64_t a1)
{
  v2 = sub_1AB3F4420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonGetAssetResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CB80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3F4420();
  sub_1AB462274();
  type metadata accessor for XPCJetAsset();
  sub_1AB3EA1BC(&qword_1EB43CB88, type metadata accessor for XPCJetAsset);
  sub_1AB461BF4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1AB3F4420()
{
  result = qword_1EB433C30;
  if (!qword_1EB433C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433C30);
  }

  return result;
}

uint64_t DaemonGetAssetResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for XPCJetAsset();
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CB90);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  AssetResponse = type metadata accessor for DaemonGetAssetResponse(0);
  MEMORY[0x1EEE9AC00](AssetResponse - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3F4420();
  sub_1AB462224();
  if (!v2)
  {
    v12 = v15;
    sub_1AB3EA1BC(&qword_1EB4341C8, type metadata accessor for XPCJetAsset);
    v13 = v17;
    sub_1AB461AC4();
    (*(v16 + 8))(v8, v6);
    sub_1AB058FD8(v13, v11, type metadata accessor for XPCJetAsset);
    sub_1AB058FD8(v11, v12, type metadata accessor for DaemonGetAssetResponse);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1AB3F4760()
{
  result = qword_1EB43CBA0;
  if (!qword_1EB43CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CBA0);
  }

  return result;
}

unint64_t sub_1AB3F47F4()
{
  result = qword_1EB43CBA8;
  if (!qword_1EB43CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CBA8);
  }

  return result;
}

unint64_t sub_1AB3F484C()
{
  result = qword_1EB43CBB0;
  if (!qword_1EB43CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CBB0);
  }

  return result;
}

unint64_t sub_1AB3F48A4()
{
  result = qword_1EB43CBB8;
  if (!qword_1EB43CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CBB8);
  }

  return result;
}

unint64_t sub_1AB3F4938()
{
  result = qword_1EB43CBC0;
  if (!qword_1EB43CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CBC0);
  }

  return result;
}

unint64_t sub_1AB3F4990()
{
  result = qword_1EB43CBC8;
  if (!qword_1EB43CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CBC8);
  }

  return result;
}

unint64_t sub_1AB3F49E8()
{
  result = qword_1EB43CBD0;
  if (!qword_1EB43CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CBD0);
  }

  return result;
}

unint64_t sub_1AB3F4A7C()
{
  result = qword_1EB43CBD8;
  if (!qword_1EB43CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CBD8);
  }

  return result;
}

unint64_t sub_1AB3F4B10()
{
  result = qword_1EB43CBE0;
  if (!qword_1EB43CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CBE0);
  }

  return result;
}

unint64_t sub_1AB3F4BA4()
{
  result = qword_1EB43CBE8;
  if (!qword_1EB43CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CBE8);
  }

  return result;
}

unint64_t sub_1AB3F4CC8()
{
  result = qword_1EB43CC00;
  if (!qword_1EB43CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CC00);
  }

  return result;
}

unint64_t sub_1AB3F4D5C()
{
  result = qword_1EB43CC08;
  if (!qword_1EB43CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CC08);
  }

  return result;
}

unint64_t sub_1AB3F4DF0()
{
  result = qword_1EB43CC10;
  if (!qword_1EB43CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CC10);
  }

  return result;
}

unint64_t sub_1AB3F4E84()
{
  result = qword_1EB43CC18;
  if (!qword_1EB43CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CC18);
  }

  return result;
}

unint64_t sub_1AB3F4F18()
{
  result = qword_1EB43CC20;
  if (!qword_1EB43CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CC20);
  }

  return result;
}

unint64_t sub_1AB3F4F70()
{
  result = qword_1EB43CC28;
  if (!qword_1EB43CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CC28);
  }

  return result;
}

unint64_t sub_1AB3F4FC8()
{
  result = qword_1EB43CC30;
  if (!qword_1EB43CC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CC30);
  }

  return result;
}

uint64_t sub_1AB3F505C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1AB3F50B0()
{
  result = qword_1EB43CC38;
  if (!qword_1EB43CC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CC38);
  }

  return result;
}

unint64_t sub_1AB3F5108()
{
  result = qword_1EB43CC40;
  if (!qword_1EB43CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CC40);
  }

  return result;
}

uint64_t sub_1AB3F51EC(void *a1)
{
  a1[1] = sub_1AB3EA1BC(&qword_1EB43CC58, type metadata accessor for DaemonGetAssetRequest);
  a1[2] = sub_1AB3EA1BC(&qword_1EB43C8B8, type metadata accessor for DaemonGetAssetRequest);
  result = sub_1AB3EA1BC(&qword_1EB433C78, type metadata accessor for DaemonGetAssetRequest);
  a1[3] = result;
  return result;
}

uint64_t sub_1AB3F52B0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CB80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3F4420();
  sub_1AB462274();
  type metadata accessor for XPCJetAsset();
  sub_1AB3EA1BC(&qword_1EB43CB88, type metadata accessor for XPCJetAsset);
  sub_1AB461BF4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1AB3F5428()
{
  result = type metadata accessor for DaemonGetAssetRequest(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DaemonScheduleTaskResponse(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DaemonScheduleTaskResponse(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

void sub_1AB3F5614()
{
  sub_1AB3F5778(319, &qword_1EB43CC70, &type metadata for AssetPushSubscriptionRecord, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1AB3F5720();
    if (v1 <= 0x3F)
    {
      sub_1AB2EBE10();
      if (v2 <= 0x3F)
      {
        sub_1AB3F5778(319, &qword_1EB4359F0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1AB3F5720()
{
  if (!qword_1EB43CC78)
  {
    v0 = sub_1AB460E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB43CC78);
    }
  }
}

void sub_1AB3F5778(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_151Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_152Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1AB3F59AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JetPackAssetDaemonMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JetPackAssetDaemonMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AB3F5DC0()
{
  result = qword_1EB43CC80;
  if (!qword_1EB43CC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CC80);
  }

  return result;
}

unint64_t sub_1AB3F5E18()
{
  result = qword_1EB43CC88;
  if (!qword_1EB43CC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CC88);
  }

  return result;
}

unint64_t sub_1AB3F5E70()
{
  result = qword_1EB43CC90;
  if (!qword_1EB43CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CC90);
  }

  return result;
}

unint64_t sub_1AB3F5EC8()
{
  result = qword_1EB43CC98;
  if (!qword_1EB43CC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CC98);
  }

  return result;
}

unint64_t sub_1AB3F5F20()
{
  result = qword_1EB43CCA0;
  if (!qword_1EB43CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CCA0);
  }

  return result;
}

unint64_t sub_1AB3F5F78()
{
  result = qword_1EB43CCA8;
  if (!qword_1EB43CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CCA8);
  }

  return result;
}

unint64_t sub_1AB3F5FD0()
{
  result = qword_1EB43CCB0;
  if (!qword_1EB43CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CCB0);
  }

  return result;
}

unint64_t sub_1AB3F6028()
{
  result = qword_1EB43CCB8;
  if (!qword_1EB43CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CCB8);
  }

  return result;
}

unint64_t sub_1AB3F6080()
{
  result = qword_1EB43CCC0;
  if (!qword_1EB43CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CCC0);
  }

  return result;
}

unint64_t sub_1AB3F60D8()
{
  result = qword_1EB43CCC8;
  if (!qword_1EB43CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CCC8);
  }

  return result;
}

unint64_t sub_1AB3F6130()
{
  result = qword_1EB43CCD0;
  if (!qword_1EB43CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CCD0);
  }

  return result;
}

unint64_t sub_1AB3F6188()
{
  result = qword_1EB43CCD8;
  if (!qword_1EB43CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CCD8);
  }

  return result;
}

unint64_t sub_1AB3F61E0()
{
  result = qword_1EB43CCE0;
  if (!qword_1EB43CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CCE0);
  }

  return result;
}

unint64_t sub_1AB3F6238()
{
  result = qword_1EB43CCE8;
  if (!qword_1EB43CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CCE8);
  }

  return result;
}

unint64_t sub_1AB3F6290()
{
  result = qword_1EB43CCF0;
  if (!qword_1EB43CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CCF0);
  }

  return result;
}

unint64_t sub_1AB3F62E8()
{
  result = qword_1EB43CCF8;
  if (!qword_1EB43CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CCF8);
  }

  return result;
}

unint64_t sub_1AB3F6340()
{
  result = qword_1EB43CD00;
  if (!qword_1EB43CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CD00);
  }

  return result;
}

unint64_t sub_1AB3F6398()
{
  result = qword_1EB43CD08;
  if (!qword_1EB43CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CD08);
  }

  return result;
}

unint64_t sub_1AB3F63F0()
{
  result = qword_1EB43CD10;
  if (!qword_1EB43CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CD10);
  }

  return result;
}

unint64_t sub_1AB3F6448()
{
  result = qword_1EB43CD18;
  if (!qword_1EB43CD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CD18);
  }

  return result;
}

unint64_t sub_1AB3F64A0()
{
  result = qword_1EB43CD20;
  if (!qword_1EB43CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CD20);
  }

  return result;
}

unint64_t sub_1AB3F64F8()
{
  result = qword_1EB43CD28;
  if (!qword_1EB43CD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CD28);
  }

  return result;
}

unint64_t sub_1AB3F6550()
{
  result = qword_1EB43CD30;
  if (!qword_1EB43CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CD30);
  }

  return result;
}

unint64_t sub_1AB3F65A8()
{
  result = qword_1EB43CD38;
  if (!qword_1EB43CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CD38);
  }

  return result;
}

unint64_t sub_1AB3F6600()
{
  result = qword_1EB43CD40;
  if (!qword_1EB43CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CD40);
  }

  return result;
}

unint64_t sub_1AB3F6658()
{
  result = qword_1EB43CD48;
  if (!qword_1EB43CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CD48);
  }

  return result;
}

unint64_t sub_1AB3F66B0()
{
  result = qword_1EB43CD50;
  if (!qword_1EB43CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CD50);
  }

  return result;
}

unint64_t sub_1AB3F6708()
{
  result = qword_1EB43CD58;
  if (!qword_1EB43CD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CD58);
  }

  return result;
}

unint64_t sub_1AB3F6760()
{
  result = qword_1EB43CD60;
  if (!qword_1EB43CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CD60);
  }

  return result;
}

unint64_t sub_1AB3F67B8()
{
  result = qword_1EB43CD68;
  if (!qword_1EB43CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CD68);
  }

  return result;
}

unint64_t sub_1AB3F6810()
{
  result = qword_1EB43CD70;
  if (!qword_1EB43CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CD70);
  }

  return result;
}

unint64_t sub_1AB3F6868()
{
  result = qword_1EB43CD78;
  if (!qword_1EB43CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CD78);
  }

  return result;
}

unint64_t sub_1AB3F68C0()
{
  result = qword_1EB433C20;
  if (!qword_1EB433C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433C20);
  }

  return result;
}

unint64_t sub_1AB3F6918()
{
  result = qword_1EB433C28;
  if (!qword_1EB433C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433C28);
  }

  return result;
}

unint64_t sub_1AB3F6970()
{
  result = qword_1EB433C80;
  if (!qword_1EB433C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433C80);
  }

  return result;
}

unint64_t sub_1AB3F69C8()
{
  result = qword_1EB433C88;
  if (!qword_1EB433C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433C88);
  }

  return result;
}

unint64_t sub_1AB3F6A20()
{
  result = qword_1EB43CD80;
  if (!qword_1EB43CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CD80);
  }

  return result;
}

unint64_t sub_1AB3F6A78()
{
  result = qword_1EB43CD88;
  if (!qword_1EB43CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CD88);
  }

  return result;
}

unint64_t sub_1AB3F6AD0()
{
  result = qword_1EB43CD90;
  if (!qword_1EB43CD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CD90);
  }

  return result;
}

unint64_t sub_1AB3F6B28()
{
  result = qword_1EB43CD98;
  if (!qword_1EB43CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CD98);
  }

  return result;
}

unint64_t sub_1AB3F6B80()
{
  result = qword_1EB43CDA0;
  if (!qword_1EB43CDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CDA0);
  }

  return result;
}

unint64_t sub_1AB3F6BD8()
{
  result = qword_1EB43CDA8;
  if (!qword_1EB43CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CDA8);
  }

  return result;
}

unint64_t sub_1AB3F6C30()
{
  result = qword_1EB43CDB0;
  if (!qword_1EB43CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CDB0);
  }

  return result;
}

unint64_t sub_1AB3F6C88()
{
  result = qword_1EB43CDB8;
  if (!qword_1EB43CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CDB8);
  }

  return result;
}

unint64_t sub_1AB3F6CE0()
{
  result = qword_1EB43CDC0;
  if (!qword_1EB43CDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CDC0);
  }

  return result;
}

unint64_t sub_1AB3F6D38()
{
  result = qword_1EB43CDC8;
  if (!qword_1EB43CDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CDC8);
  }

  return result;
}

unint64_t sub_1AB3F6D90()
{
  result = qword_1EB43CDD0;
  if (!qword_1EB43CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CDD0);
  }

  return result;
}

unint64_t sub_1AB3F6DE8()
{
  result = qword_1EB43CDD8;
  if (!qword_1EB43CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CDD8);
  }

  return result;
}

unint64_t sub_1AB3F6E40()
{
  result = qword_1EB43CDE0;
  if (!qword_1EB43CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CDE0);
  }

  return result;
}

unint64_t sub_1AB3F6E98()
{
  result = qword_1EB43CDE8;
  if (!qword_1EB43CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CDE8);
  }

  return result;
}

unint64_t sub_1AB3F6EF0()
{
  result = qword_1EB43CDF0;
  if (!qword_1EB43CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CDF0);
  }

  return result;
}

unint64_t sub_1AB3F6F48()
{
  result = qword_1EB43CDF8;
  if (!qword_1EB43CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CDF8);
  }

  return result;
}

unint64_t sub_1AB3F6FA0()
{
  result = qword_1EB43CE00;
  if (!qword_1EB43CE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CE00);
  }

  return result;
}

unint64_t sub_1AB3F6FF8()
{
  result = qword_1EB43CE08;
  if (!qword_1EB43CE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CE08);
  }

  return result;
}

unint64_t sub_1AB3F7050()
{
  result = qword_1EB43CE10;
  if (!qword_1EB43CE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CE10);
  }

  return result;
}

unint64_t sub_1AB3F70A8()
{
  result = qword_1EB43CE18;
  if (!qword_1EB43CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CE18);
  }

  return result;
}

unint64_t sub_1AB3F7100()
{
  result = qword_1EB43CE20;
  if (!qword_1EB43CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CE20);
  }

  return result;
}

unint64_t sub_1AB3F7158()
{
  result = qword_1EB43CE28;
  if (!qword_1EB43CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CE28);
  }

  return result;
}

unint64_t sub_1AB3F71B0()
{
  result = qword_1EB43CE30;
  if (!qword_1EB43CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CE30);
  }

  return result;
}

unint64_t sub_1AB3F7208()
{
  result = qword_1EB43CE38;
  if (!qword_1EB43CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CE38);
  }

  return result;
}

unint64_t sub_1AB3F7260()
{
  result = qword_1EB43CE40;
  if (!qword_1EB43CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CE40);
  }

  return result;
}

unint64_t sub_1AB3F72B8()
{
  result = qword_1EB43CE48;
  if (!qword_1EB43CE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CE48);
  }

  return result;
}

unint64_t sub_1AB3F7310()
{
  result = qword_1EB43CE50;
  if (!qword_1EB43CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CE50);
  }

  return result;
}

unint64_t sub_1AB3F7368()
{
  result = qword_1EB43CE58;
  if (!qword_1EB43CE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CE58);
  }

  return result;
}

unint64_t sub_1AB3F73C0()
{
  result = qword_1EB43CE60;
  if (!qword_1EB43CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CE60);
  }

  return result;
}

unint64_t sub_1AB3F7418()
{
  result = qword_1EB43CE68;
  if (!qword_1EB43CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CE68);
  }

  return result;
}

unint64_t sub_1AB3F7470()
{
  result = qword_1EB43CE70;
  if (!qword_1EB43CE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CE70);
  }

  return result;
}

unint64_t sub_1AB3F74C8()
{
  result = qword_1EB43CE78;
  if (!qword_1EB43CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CE78);
  }

  return result;
}

unint64_t sub_1AB3F7520()
{
  result = qword_1EB43CE80;
  if (!qword_1EB43CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CE80);
  }

  return result;
}

unint64_t sub_1AB3F7578()
{
  result = qword_1EB43CE88;
  if (!qword_1EB43CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CE88);
  }

  return result;
}

unint64_t sub_1AB3F75D0()
{
  result = qword_1EB43CE90;
  if (!qword_1EB43CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CE90);
  }

  return result;
}

unint64_t sub_1AB3F7628()
{
  result = qword_1EB43CE98;
  if (!qword_1EB43CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CE98);
  }

  return result;
}

unint64_t sub_1AB3F7680()
{
  result = qword_1EB43CEA0;
  if (!qword_1EB43CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CEA0);
  }

  return result;
}

unint64_t sub_1AB3F76D8()
{
  result = qword_1EB43CEA8;
  if (!qword_1EB43CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CEA8);
  }

  return result;
}

unint64_t sub_1AB3F7730()
{
  result = qword_1EB43CEB0;
  if (!qword_1EB43CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CEB0);
  }

  return result;
}

unint64_t sub_1AB3F7788()
{
  result = qword_1EB43CEB8;
  if (!qword_1EB43CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CEB8);
  }

  return result;
}

unint64_t sub_1AB3F77E0()
{
  result = qword_1EB43CEC0;
  if (!qword_1EB43CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CEC0);
  }

  return result;
}

unint64_t sub_1AB3F7838()
{
  result = qword_1EB43CEC8;
  if (!qword_1EB43CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CEC8);
  }

  return result;
}

unint64_t sub_1AB3F7890()
{
  result = qword_1EB43CED0;
  if (!qword_1EB43CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CED0);
  }

  return result;
}

unint64_t sub_1AB3F78E8()
{
  result = qword_1EB43CED8;
  if (!qword_1EB43CED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CED8);
  }

  return result;
}

unint64_t sub_1AB3F7940()
{
  result = qword_1EB4342D0;
  if (!qword_1EB4342D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4342D0);
  }

  return result;
}

unint64_t sub_1AB3F7998()
{
  result = qword_1EB4342D8;
  if (!qword_1EB4342D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4342D8);
  }

  return result;
}

unint64_t sub_1AB3F79F0()
{
  result = qword_1EB434320;
  if (!qword_1EB434320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB434320);
  }

  return result;
}

unint64_t sub_1AB3F7A48()
{
  result = qword_1EB434328;
  if (!qword_1EB434328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB434328);
  }

  return result;
}

unint64_t sub_1AB3F7AA0()
{
  result = qword_1EB434310;
  if (!qword_1EB434310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB434310);
  }

  return result;
}

unint64_t sub_1AB3F7AF8()
{
  result = qword_1EB434318;
  if (!qword_1EB434318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB434318);
  }

  return result;
}

unint64_t sub_1AB3F7B50()
{
  result = qword_1EB434250;
  if (!qword_1EB434250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB434250);
  }

  return result;
}

unint64_t sub_1AB3F7BA8()
{
  result = qword_1EB434258;
  if (!qword_1EB434258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB434258);
  }

  return result;
}

unint64_t sub_1AB3F7C00()
{
  result = qword_1EB434260;
  if (!qword_1EB434260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB434260);
  }

  return result;
}

unint64_t sub_1AB3F7C58()
{
  result = qword_1EB434268;
  if (!qword_1EB434268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB434268);
  }

  return result;
}

unint64_t sub_1AB3F7CB0()
{
  result = qword_1EB434290;
  if (!qword_1EB434290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB434290);
  }

  return result;
}

unint64_t sub_1AB3F7D08()
{
  result = qword_1EB434298;
  if (!qword_1EB434298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB434298);
  }

  return result;
}

unint64_t sub_1AB3F7D60()
{
  result = qword_1EB4342C0;
  if (!qword_1EB4342C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4342C0);
  }

  return result;
}

unint64_t sub_1AB3F7DB8()
{
  result = qword_1EB4342C8;
  if (!qword_1EB4342C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4342C8);
  }

  return result;
}

unint64_t sub_1AB3F7E10()
{
  result = qword_1EB434240;
  if (!qword_1EB434240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB434240);
  }

  return result;
}

unint64_t sub_1AB3F7E68()
{
  result = qword_1EB434248;
  if (!qword_1EB434248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB434248);
  }

  return result;
}

unint64_t sub_1AB3F7EC0()
{
  result = qword_1EB434270;
  if (!qword_1EB434270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB434270);
  }

  return result;
}

unint64_t sub_1AB3F7F18()
{
  result = qword_1EB434278;
  if (!qword_1EB434278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB434278);
  }

  return result;
}

unint64_t sub_1AB3F7F70()
{
  result = qword_1EB4342A0;
  if (!qword_1EB4342A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4342A0);
  }

  return result;
}

unint64_t sub_1AB3F7FC8()
{
  result = qword_1EB4342A8;
  if (!qword_1EB4342A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4342A8);
  }

  return result;
}

unint64_t sub_1AB3F8020()
{
  result = qword_1EB4342B0;
  if (!qword_1EB4342B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4342B0);
  }

  return result;
}

unint64_t sub_1AB3F8078()
{
  result = qword_1EB4342B8;
  if (!qword_1EB4342B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4342B8);
  }

  return result;
}

unint64_t sub_1AB3F80D0()
{
  result = qword_1EB434280;
  if (!qword_1EB434280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB434280);
  }

  return result;
}

unint64_t sub_1AB3F8128()
{
  result = qword_1EB434288;
  if (!qword_1EB434288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB434288);
  }

  return result;
}

unint64_t sub_1AB3F8180()
{
  result = qword_1EB4342E0;
  if (!qword_1EB4342E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4342E0);
  }

  return result;
}

unint64_t sub_1AB3F81D8()
{
  result = qword_1EB4342E8;
  if (!qword_1EB4342E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4342E8);
  }

  return result;
}

unint64_t sub_1AB3F8230()
{
  result = qword_1EB4342F8;
  if (!qword_1EB4342F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4342F8);
  }

  return result;
}

unint64_t sub_1AB3F8288()
{
  result = qword_1EB434300;
  if (!qword_1EB434300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB434300);
  }

  return result;
}

uint64_t sub_1AB3F82DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1735289200 && a2 == 0xE400000000000000;
  if (v3 || (sub_1AB461DA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001AB50DFE0 == a2 || (sub_1AB461DA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7473655464616572 && a2 == 0xED00007465737341 || (sub_1AB461DA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xEC0000006B736154 || (sub_1AB461DA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74736E4974736F70 && a2 == 0xEB000000006C6C61 || (sub_1AB461DA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6572666552676162 && a2 == 0xEA00000000006873 || (sub_1AB461DA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F666E4968737570 && a2 == 0xE800000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001AB50E000 == a2 || (sub_1AB461DA4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C654468737570 && a2 == 0xEA00000000006574 || (sub_1AB461DA4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6573655268737570 && a2 == 0xE900000000000074 || (sub_1AB461DA4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x61656C4368737570 && a2 == 0xE900000000000072 || (sub_1AB461DA4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6976456568636163 && a2 == 0xEA00000000007463 || (sub_1AB461DA4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 7628135 && a2 == 0xE300000000000000)
  {

    return 12;
  }

  else
  {
    v6 = sub_1AB461DA4();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1AB3F8710(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65;
  if (v4 || (sub_1AB461DA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7364726F636572 && a2 == 0xE700000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001AB50E020 == a2 || (sub_1AB461DA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001AB50E040 == a2 || (sub_1AB461DA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001AB50E060 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1AB461DA4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1AB3F88D0()
{
  result = qword_1EB43CEE0;
  if (!qword_1EB43CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CEE0);
  }

  return result;
}

uint64_t type metadata accessor for SentryEvent()
{
  result = qword_1EB433940;
  if (!qword_1EB433940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AB3F8A84()
{
  sub_1AB45F9B4();
  if (v0 <= 0x3F)
  {
    sub_1AB0556A4();
    if (v1 <= 0x3F)
    {
      sub_1AB3F8BA4(319, &qword_1EB432D48, &qword_1EB436F98);
      if (v2 <= 0x3F)
      {
        sub_1AB3F8BA4(319, &qword_1EB4333F8, &qword_1EB43CEE8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1AB3F8BA4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1AB461354();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AB3F8BF8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB3F8C5C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1AB461DA4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1AB3F8CD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a2;
  v11 = a5;
  type metadata accessor for SentryArray.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1AB461C14();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462274();
  v14 = v12;
  sub_1AB460A64();
  v13 = v11;
  swift_getWitnessTable();
  sub_1AB461BF4();
  return (*(v7 + 8))(v9, v6);
}

void *sub_1AB3F8E84(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = a3;
  type metadata accessor for SentryArray.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1AB461B04();
  v12 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462224();
  if (!v3)
  {
    v9 = v12;
    sub_1AB460A64();
    v14 = v13;
    swift_getWitnessTable();
    sub_1AB461AC4();
    (*(v9 + 8))(v7, v5);
    v8 = v15;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t sub_1AB3F9088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB3F8C5C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1AB3F90C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AB3F9114(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void *sub_1AB3F9168@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1AB3F8E84(a1, *(a2 + 16), *(a2 + 24));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_1AB3F927C()
{
  result = qword_1EB43CEF0;
  if (!qword_1EB43CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CEF0);
  }

  return result;
}

uint64_t sub_1AB3F92D0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x74736575716572;
    v7 = 7038067;
    if (a1 != 10)
    {
      v7 = 118;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6D6E6F7269766E65;
    v9 = 1936154996;
    if (a1 != 7)
    {
      v9 = 0x6F69747065637865;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x64695F746E657665;
    v2 = 0x6D726F6674616C70;
    v3 = 0x657361656C6572;
    if (a1 != 4)
    {
      v3 = 1953720676;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x7463656A6F7270;
    if (a1 != 1)
    {
      v4 = 0x6D617473656D6974;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1AB3F943C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1AB3F92D0(*a1);
  v5 = v4;
  if (v3 == sub_1AB3F92D0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AB461DA4();
  }

  return v8 & 1;
}

uint64_t sub_1AB3F94C4()
{
  v1 = *v0;
  sub_1AB4620A4();
  sub_1AB3F92D0(v1);
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB3F9528()
{
  sub_1AB3F92D0(*v0);
  sub_1AB460684();
}

uint64_t sub_1AB3F957C()
{
  v1 = *v0;
  sub_1AB4620A4();
  sub_1AB3F92D0(v1);
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB3F95DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB3FA9BC();
  *a1 = result;
  return result;
}

uint64_t sub_1AB3F960C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AB3F92D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AB3F9654@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB3FA9BC();
  *a1 = result;
  return result;
}

uint64_t sub_1AB3F967C(uint64_t a1)
{
  v2 = sub_1AB3FA41C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3F96B8(uint64_t a1)
{
  v2 = sub_1AB3FA41C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB3F96F4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CEF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20[-v7 - 8];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3FA41C();
  sub_1AB462274();
  v20[0] = 0;
  sub_1AB461BB4();
  if (!v2)
  {
    v20[0] = 1;
    sub_1AB461BB4();
    v9 = type metadata accessor for SentryEvent();
    v20[0] = 2;
    sub_1AB45F9B4();
    sub_1AB05DA4C(&qword_1ED4D0B88);
    sub_1AB461BF4();
    v10 = (v3 + v9[7]);
    v12 = *v10;
    v11 = v10[1];
    *v20 = v12;
    *&v20[8] = v11;
    v22 = 3;
    sub_1AB3FA470();
    sub_1AB461BF4();
    v20[0] = 4;
    sub_1AB461B44();
    v20[0] = 5;
    sub_1AB461B44();
    v20[0] = 6;
    sub_1AB461B44();
    *v20 = *(v3 + v9[11]);
    v22 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436F98);
    sub_1AB3FA5C0(&qword_1EB4323E0);
    sub_1AB461B84();
    *v20 = *(v3 + v9[12]);
    v22 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CEE8);
    sub_1AB3FA62C(qword_1EB432B30);
    sub_1AB461B84();
    v13 = v3 + v9[13];
    *v20 = *v13;
    *&v20[8] = *(v13 + 8);
    v22 = 9;
    sub_1AB3FA4C4();
    sub_1AB461BF4();
    v14 = (v3 + v9[14]);
    v15 = *v14;
    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    *v20 = v15;
    *&v20[16] = v17;
    v21 = v16;
    v22 = 10;
    sub_1AB3FA518();
    sub_1AB461BF4();
    v20[0] = 11;
    sub_1AB461BE4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1AB3F9B60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_1AB45F9B4();
  v44 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CF00);
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v9 = type metadata accessor for SentryEvent();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v11 + *(v12 + 60)) = 1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3FA41C();
  v47 = v8;
  v13 = v48;
  sub_1AB462224();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v41 = v9;
  v42 = a1;
  v40 = v3;
  v48 = v11;
  v49[0] = 0;
  v14 = v45;
  v15 = sub_1AB461A84();
  v16 = v48;
  *v48 = v15;
  *(v16 + 1) = v17;
  v49[0] = 1;
  *(v16 + 2) = sub_1AB461A84();
  *(v16 + 3) = v18;
  v49[0] = 2;
  sub_1AB05DA4C(&unk_1ED4D0770);
  v19 = v5;
  v20 = v40;
  v39 = 0;
  sub_1AB461AC4();
  v21 = v41;
  (*(v44 + 32))(&v16[v41[6]], v19, v20);
  v51 = 3;
  sub_1AB3FA56C();
  sub_1AB461AC4();
  v22 = *&v49[8];
  v23 = &v16[v21[7]];
  *v23 = *v49;
  *(v23 + 1) = v22;
  v49[0] = 4;
  v24 = sub_1AB461A14();
  v25 = &v16[v21[8]];
  *v25 = v24;
  v25[1] = v26;
  v49[0] = 5;
  v27 = sub_1AB461A14();
  v28 = &v16[v21[9]];
  *v28 = v27;
  v28[1] = v29;
  v49[0] = 6;
  v30 = sub_1AB461A14();
  v31 = &v16[v21[10]];
  *v31 = v30;
  v31[1] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436F98);
  v51 = 7;
  sub_1AB3FA5C0(&qword_1EB43CF10);
  sub_1AB461A54();
  LODWORD(v39) = 1;
  *(v48 + v41[11]) = *v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CEE8);
  v51 = 8;
  sub_1AB3FA62C(&qword_1EB43CF18);
  sub_1AB461A54();
  *(v48 + v41[12]) = *v49;
  v51 = 9;
  sub_1AB3FA67C();
  sub_1AB461AC4();
  v33 = v48 + v41[13];
  *v33 = *v49;
  *(v33 + 8) = *&v49[8];
  v51 = 10;
  sub_1AB3FA6D0();
  sub_1AB461AC4();
  (*(v14 + 8))(v47, v46);
  v34 = *&v49[16];
  v35 = v50;
  v36 = v48;
  v37 = v48 + v41[14];
  *v37 = *v49;
  *(v37 + 2) = v34;
  *(v37 + 3) = v35;
  sub_1AB3FA724(v36, v43);
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  return sub_1AB3FA788(v36);
}

unint64_t sub_1AB3FA41C()
{
  result = qword_1EB432B28;
  if (!qword_1EB432B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432B28);
  }

  return result;
}

unint64_t sub_1AB3FA470()
{
  result = qword_1EB432B10;
  if (!qword_1EB432B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432B10);
  }

  return result;
}

unint64_t sub_1AB3FA4C4()
{
  result = qword_1EB432A58;
  if (!qword_1EB432A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432A58);
  }

  return result;
}

unint64_t sub_1AB3FA518()
{
  result = qword_1EB4323F0;
  if (!qword_1EB4323F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4323F0);
  }

  return result;
}

unint64_t sub_1AB3FA56C()
{
  result = qword_1EB43CF08;
  if (!qword_1EB43CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CF08);
  }

  return result;
}

uint64_t sub_1AB3FA5C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB436F98);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AB3FA62C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43CEE8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AB3FA67C()
{
  result = qword_1EB43CF20;
  if (!qword_1EB43CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CF20);
  }

  return result;
}

unint64_t sub_1AB3FA6D0()
{
  result = qword_1EB43CF28;
  if (!qword_1EB43CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CF28);
  }

  return result;
}

uint64_t sub_1AB3FA724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SentryEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB3FA788(uint64_t a1)
{
  v2 = type metadata accessor for SentryEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AB3FA7FC()
{
  result = qword_1EB432B08;
  if (!qword_1EB432B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432B08);
  }

  return result;
}

unint64_t sub_1AB3FA864()
{
  result = qword_1EB43CF30;
  if (!qword_1EB43CF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CF30);
  }

  return result;
}

unint64_t sub_1AB3FA910()
{
  result = qword_1EB432B18;
  if (!qword_1EB432B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432B18);
  }

  return result;
}

unint64_t sub_1AB3FA968()
{
  result = qword_1EB432B20;
  if (!qword_1EB432B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432B20);
  }

  return result;
}

uint64_t sub_1AB3FA9BC()
{
  v0 = sub_1AB4619B4();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

void Account.subscript.getter(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v8 = *v2;
  v5 = v8;
  v6 = swift_readAtKeyPath();
  (*(*(*(v4 + *MEMORY[0x1E69E6F98] + 8) - 8) + 16))(a2);
  v6(v7, 0);
}

uint64_t Account.cookies(for:)()
{
  v1 = *v0;
  v2 = sub_1AB45F654();
  v3 = [v1 ams:v2 cookiesForURL:?];

  sub_1AB016760(0, &qword_1EB433498);
  v4 = sub_1AB460954();

  return v4;
}

void Account.subscript.getter()
{
  v1 = *v0;
  swift_getAtKeyPath();
}

uint64_t Account.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  sub_1AB3FB118(a1, a2);
  v4 = *(*(*(v3 + *MEMORY[0x1E69E6F98] + 8) - 8) + 8);

  return v4(a1);
}

void (*Account.subscript.modify(void *a1, uint64_t *a2))(void ***a1, char a2)
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
  v8 = *(*a2 + *MEMORY[0x1E69E6F98] + 8);
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
  Account.subscript.getter(a2, v11);
  return sub_1AB3FADCC;
}

void sub_1AB3FADCC(void ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (v6[2])((*a1)[4], v4, v5);

    sub_1AB3FB118(v3, v7);
    v8 = v6[1];
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {

    sub_1AB3FB118(v4, v7);
    (v6[1])(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

double Account.value(forFlag:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if ([*v2 ams:a1 accountFlagValueForAccountFlag:?])
  {
    sub_1AB461494();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t Account.setValue(_:forFlag:)(void *a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v6 = *v2;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [*v2 copy];
    sub_1AB461494();
    swift_unknownObjectRelease();
    sub_1AB016760(0, &qword_1EB432328);
    swift_dynamicCast();
    v6 = v8;

    *v2 = v8;
  }

  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  [v6 ams:sub_1AB461D84() setAccountFlagValue:a2 forAccountFlag:?];
  return swift_unknownObjectRelease();
}

uint64_t Account.storefront(for:)(uint64_t a1)
{
  v2 = [*v1 ams:a1 storefrontForMediaType:?];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1AB460544();

  return v4;
}

uint64_t _s9JetEngine7AccountV02acC4CopySo9ACAccountCvg_0()
{
  [*v0 copy];
  sub_1AB461494();
  swift_unknownObjectRelease();
  sub_1AB016760(0, &qword_1EB432328);
  swift_dynamicCast();
  return v2;
}

uint64_t sub_1AB3FB118(uint64_t a1, void *a2)
{
  v4 = *(*a2 + *MEMORY[0x1E69E6F98] + 8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v12 - v6;
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v9 = *v2;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [*v2 copy];
    sub_1AB461494();
    swift_unknownObjectRelease();
    swift_dynamicCast();
    v9 = v12[1];

    *v2 = v9;
  }

  (*(v5 + 16))(v7, a1, v4);
  v12[2] = v9;
  v10 = v9;
  swift_setAtReferenceWritableKeyPath();
}

uint64_t static StartUpPerformanceEvent.Checkpoint.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (*a1 == v2)
    {
      return 1;
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

uint64_t StartUpPerformanceEvent.Checkpoint.hash(into:)()
{
  v1 = *v0;
  if (*v0)
  {
    MEMORY[0x1AC59D3F0](0);
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x1AC59D3F0](v1);
}

uint64_t StartUpPerformanceEvent.Checkpoint.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  if (v1)
  {
    MEMORY[0x1AC59D3F0](0);
  }

  else
  {
    v1 = 1;
  }

  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t sub_1AB3FB3CC()
{
  v1 = *v0;
  sub_1AB4620A4();
  if (v1)
  {
    MEMORY[0x1AC59D3F0](0);
  }

  else
  {
    v1 = 1;
  }

  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t sub_1AB3FB42C()
{
  v1 = *v0;
  if (*v0)
  {
    MEMORY[0x1AC59D3F0](0);
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x1AC59D3F0](v1);
}

uint64_t sub_1AB3FB470()
{
  v1 = *v0;
  sub_1AB4620A4();
  if (v1)
  {
    MEMORY[0x1AC59D3F0](0);
  }

  else
  {
    v1 = 1;
  }

  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t sub_1AB3FB4CC(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (*a1 == v2)
    {
      return 1;
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

void *static StartUpPerformanceEvent.forLazy(domain:withCheckpoints:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    sub_1AB4124BC("JetEngine/StartUpPerformanceEvent.swift", 0x27uLL, 2, 0x5CuLL);
  }

  swift_allocObject();

  return sub_1AB030FCC(a1, a2);
}

uint64_t StartUpPerformanceEvent.deinit()
{
  v1 = *(v0 + 48);

  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));

  if (v2 == 1)
  {
    sub_1AB3FB5EC();
  }

  return v0;
}

uint64_t sub_1AB3FB5EC()
{
  v1 = v0;
  v2 = sub_1AB460134();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 48);

  os_unfair_lock_lock((v6 + 20));
  sub_1AB3FB970((v6 + 16), &v21);
  os_unfair_lock_unlock((v6 + 20));
  v7 = v21;

  if (v7 == 1)
  {
    (*(v3 + 104))(v5, *MEMORY[0x1E6977AC8], v2);
    sub_1AB460174();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v9 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AB4D4720;
    v25 = sub_1AB0168A8(0, 55, 0, MEMORY[0x1E69E7CC0]);
    v11._object = 0x80000001AB50E150;
    v11._countAndFlagsBits = 0xD000000000000036;
    LogMessage.StringInterpolation.appendLiteral(_:)(v11);
    v12 = *(v1 + 48);
    v24[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CF58);
    v24[0] = v12;
    sub_1AB01522C(v24, v20);
    v21 = 0u;
    v22 = 0u;

    sub_1AB0169C4(v20, &v21);
    v23 = 0;
    v13 = v25;
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
    v17 = v21;
    v18 = v22;
    v16[64] = v23;
    *(v16 + 2) = v17;
    *(v16 + 3) = v18;
    v25 = v13;
    sub_1AB0167A8(v24);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    *(v10 + 32) = v25;
    *&v21 = v9;
    LOBYTE(v24[0]) = 0;
    OSLogger.log(contentsOf:withLevel:)(v10, v24);
  }
}

uint64_t StartUpPerformanceEvent.__deallocating_deinit()
{
  v1 = *(v0 + 48);

  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));

  if (v2 == 1)
  {
    sub_1AB3FB5EC();
  }

  return swift_deallocClassInstance();
}

_BYTE *sub_1AB3FB970@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v3 = result;
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v4 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1AB4D4720;
    v19 = MEMORY[0x1E69E6158];
    v16 = 0xD000000000000024;
    v17 = 0x80000001AB50E190;
    *(v6 + 48) = 0u;
    *(v6 + 32) = 0u;
    sub_1AB0169C4(&v16, v6 + 32);
    *(v6 + 64) = 0;
    *(v5 + 32) = v6;
    v7 = sub_1AB461094();
    if (os_log_type_enabled(v4, v7))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v8 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v8[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v8 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v10 = swift_allocObject();
      *(v10 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      v16 = v5;
      v17 = sub_1AB0223E4;
      v18 = v10;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v11 = sub_1AB460484();
      v13 = v12;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1AB4D4720;
      *(v14 + 56) = MEMORY[0x1E69E6158];
      *(v14 + 64) = sub_1AB016854();
      *(v14 + 32) = v11;
      *(v14 + 40) = v13;
      sub_1AB45FF14();
    }

    *v3 = 2;
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  *a2 = v15;
  return result;
}

unint64_t sub_1AB3FBC74()
{
  result = qword_1EB43CF38;
  if (!qword_1EB43CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CF38);
  }

  return result;
}

uint64_t MetricsFieldInclusionRequest.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{

  sub_1AB01EC0C(a1, v12);
  v4 = v13;
  if (v13)
  {
    v5 = v14;
    __swift_project_boxed_opaque_existential_1Tm(v12, v13);
    v6 = (*(v5 + 24))(v4, v5);
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    if (v8)
    {
      result = sub_1AB066D84(a1);
      *a2 = v6;
      a2[1] = v8;
      return result;
    }
  }

  else
  {
    sub_1AB18977C(v12);
  }

  sub_1AB163664();
  swift_allocError();
  v10 = MEMORY[0x1E69E7CC0];
  *v11 = &type metadata for MetricsFieldInclusionRequest;
  v11[1] = v10;
  v11[2] = 0;
  v11[3] = 0;
  swift_willThrow();
  return sub_1AB066D84(a1);
}

uint64_t MetricsFieldInclusionRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462204();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1Tm(v9, v9[3]);
    v5 = sub_1AB461DB4();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t MetricsFieldInclusionRequest.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462254();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1AB461E34();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t MetricsFieldInclusionRequest.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

void static MetricsFieldInclusionRequest.pageReferrer.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "pageReferrer");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void JSValue.subscript.setter(void *a1)
{
  v2 = a1;
  v3 = sub_1AB460514();

  [v1 setValue:v2 forProperty:v3];
}

Swift::Bool __swiftcall JSValue.hasValue(forProperty:)(Swift::String forProperty)
{
  v2 = sub_1AB460514();
  v3 = [v1 valueForProperty_];

  if (v3)
  {
    if ([v3 isUndefined])
    {

      return 0;
    }

    else
    {
      v5 = [v3 isNull];

      return v5 ^ 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t JSValue.BOOL.getter()
{
  if ([v0 isBoolean])
  {
    return [v0 toBool];
  }

  else
  {
    return 2;
  }
}

id JSValue.number.getter()
{
  if ([v0 isNumber])
  {
    return [v0 toNumber];
  }

  else
  {
    return 0;
  }
}

void JSValue.subscript.getter()
{
  v1 = sub_1AB460514();
  v2 = [v0 valueForProperty_];

  if (!v2)
  {
    __break(1u);
  }
}

uint64_t JSValue.int.getter()
{
  if ([v0 isNumber])
  {
    return [v0 toInt32];
  }

  else
  {
    return 0;
  }
}

uint64_t JSValue.uint.getter()
{
  if ([v0 isNumber])
  {
    return [v0 toUInt32];
  }

  else
  {
    return 0;
  }
}

uint64_t JSValue.double.getter()
{
  if (![v0 isNumber])
  {
    return 0;
  }

  [v0 toDouble];
  return v1;
}

id JSValue.subscript.getter(uint64_t a1)
{
  result = [v1 valueAtIndex_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

int64_t JSValue.propertyNames.getter()
{
  if (![v0 isObject])
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = [v0 context];
  if (result)
  {
    v2 = result;
    v3 = [result JSGlobalContextRef];

    v4 = JSObjectCopyPropertyNames(v3, [v0 JSValueRef]);
    result = JSPropertyNameArrayGetCount(v4);
    if (result < 0)
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v5 = result;
    v6 = MEMORY[0x1E69E7CC0];
    if (result)
    {
      v16 = MEMORY[0x1E69E7CC0];
      sub_1AB03BD38(0, result, 0);
      v7 = 0;
      v6 = v16;
      v8 = *MEMORY[0x1E695E480];
      do
      {
        result = JSPropertyNameArrayGetNameAtIndex(v4, v7);
        if (!result)
        {
          goto LABEL_16;
        }

        result = JSStringCopyCFString(v8, result);
        if (!result)
        {
          goto LABEL_17;
        }

        v9 = result;
        v10 = sub_1AB460544();
        v12 = v11;

        v14 = *(v16 + 16);
        v13 = *(v16 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1AB03BD38((v13 > 1), v14 + 1, 1);
        }

        ++v7;
        *(v16 + 16) = v14 + 1;
        v15 = v16 + 16 * v14;
        *(v15 + 32) = v10;
        *(v15 + 40) = v12;
      }

      while (v5 != v7);
    }

    JSPropertyNameArrayRelease(v4);
    return v6;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t JSValue.date.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  if ([v2 isDate])
  {
    v8 = [v2 toDate];
    if (v8)
    {
      v9 = v8;
      sub_1AB45F984();

      v10 = sub_1AB45F9B4();
      (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
    }

    else
    {
      v14 = sub_1AB45F9B4();
      (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    }

    return sub_1AB167244(v7, a1);
  }

  else
  {
    v11 = sub_1AB45F9B4();
    v12 = *(*(v11 - 8) + 56);

    return v12(a1, 1, 1, v11);
  }
}

void sub_1AB3FC6D8(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1AB460514();
  v5 = [v3 valueForProperty_];

  if (v5)
  {
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }
}

void sub_1AB3FC740(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1AB460514();
  [v3 setValue:v2 forProperty:v4];
}

void JSValue.subscript.modify(void *a1, uint64_t a2, uint64_t a3)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = sub_1AB460514();
  v6 = [v3 valueForProperty_];

  if (v6)
  {
    *a1 = v6;
  }

  else
  {
    __break(1u);
  }
}

void sub_1AB3FC838(uint64_t a1, char a2)
{
  v7 = *a1;
  v4 = *(a1 + 24);
  if (a2)
  {
    v5 = v7;
    v6 = sub_1AB460514();
    [v4 setValue:v5 forProperty:v6];
  }

  else
  {
    v5 = sub_1AB460514();
    [v4 setValue:v7 forProperty:v5];
  }
}

id sub_1AB3FC908@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = [*a1 valueAtIndex_];
  if (result)
  {
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void JSValue.subscript.setter(void *a1, uint64_t a2)
{
  [v2 setValue:a1 atIndex:a2];
}

void (*JSValue.subscript.modify(void (**a1)(id *a1), void (*a2)(id *a1)))(id *a1)
{
  a1[1] = a2;
  a1[2] = v2;
  result = [v2 valueAtIndex_];
  if (result)
  {
    *a1 = result;
    return sub_1AB3FCA04;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1AB3FCA04(id *a1)
{
  v1 = *a1;
  [a1[2] setValue_atIndex_];
}

uint64_t JSValue.url.getter@<X0>(uint64_t a1@<X8>)
{
  if ([v1 isString] && (v3 = objc_msgSend(v1, sel_toString)) != 0)
  {
    v4 = v3;
    sub_1AB460544();

    sub_1AB45F714();
  }

  else
  {
    v6 = sub_1AB45F764();
    v7 = *(*(v6 - 8) + 56);

    return v7(a1, 1, 1, v6);
  }
}

uint64_t MetricsEventType.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462204();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1Tm(v9, v9[3]);
    v5 = sub_1AB461DB4();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t MetricsEventType.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462254();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1AB461E34();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t MetricsEventType.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

void static MetricsEventType.playActivity.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "playActivity");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void static MetricsEventType.seekActivity.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "seekActivity");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t JetPackAssetCacheStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t JetPackAssetStandardCachePolicy.status(for:dateProvider:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1AB45F9B4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  v13 = a1 + *(type metadata accessor for JetPackAsset(0) + 20);
  result = sub_1AB3FD26C(v13);
  if (result)
  {
    goto LABEL_2;
  }

  v30 = v7;
  result = type metadata accessor for JetPackAsset.Metadata(0);
  v16 = (v13 + *(result + 44));
  if ((v16[40] & 1) == 0)
  {
    sub_1AB45F904();
    v29 = a3;
    v17 = a2[3];
    v18 = a2[4];
    __swift_project_boxed_opaque_existential_1Tm(a2, v17);
    (*(v18 + 8))(v17, v18);
    sub_1AB05D094();
    v19 = sub_1AB4604B4();
    v20 = *(v30 + 8);
    v20(v10, v6);
    result = (v20)(v12, v6);
    a3 = v29;
    if (v19)
    {
      v15 = 3;
      goto LABEL_12;
    }
  }

  if (v16[8] & 1) == 0 && (sub_1AB45F904(), v29 = a3, v21 = a2[3], v22 = a2[4], __swift_project_boxed_opaque_existential_1Tm(a2, v21), (*(v22 + 8))(v21, v22), sub_1AB05D094(), v23 = sub_1AB4604B4(), v24 = *(v30 + 8), v24(v10, v6), result = (v24)(v12, v6), a3 = v29, (v23))
  {
LABEL_2:
    v15 = 2;
  }

  else
  {
    v15 = 0;
    if ((v16[24] & 1) == 0)
    {
      sub_1AB45F904();
      v25 = a2[3];
      v26 = a2[4];
      __swift_project_boxed_opaque_existential_1Tm(a2, v25);
      (*(v26 + 8))(v25, v26);
      sub_1AB05D094();
      v27 = sub_1AB4604B4();
      v28 = *(v30 + 8);
      v28(v10, v6);
      result = (v28)(v12, v6);
      if (v27)
      {
        v15 = 1;
      }
    }
  }

LABEL_12:
  *a3 = v15;
  return result;
}

uint64_t sub_1AB3FD26C(uint64_t a1)
{
  v2 = type metadata accessor for JetPackAsset.Metadata(0);
  v3 = *(a1 + v2[11] + 41);
  if (v3 >= 4)
  {
LABEL_11:

    v6 = 0;
    return v6 & 1;
  }

  v4 = sub_1AB461DA4();

  if (v4)
  {
    goto LABEL_4;
  }

  v5 = (a1 + v2[7]);
  if (v5[3])
  {
    goto LABEL_4;
  }

  v7 = *v5;
  v8 = v5[1];
  v9 = v5[2];
  if (qword_1ED4D0408 != -1)
  {
    swift_once();
  }

  if (v7 != xmmword_1ED4D3E90)
  {
    goto LABEL_26;
  }

  v10 = *(&xmmword_1ED4D3E90 + 1);
  v26 = qword_1ED4D3EA0;
  if (v3 <= 1 && v3)
  {
    goto LABEL_16;
  }

  v11 = sub_1AB461DA4();

  if (v11)
  {
    goto LABEL_17;
  }

  if (v3 == 2)
  {
    goto LABEL_16;
  }

  v12 = sub_1AB461DA4();

  if (v12)
  {
    goto LABEL_17;
  }

  if (v3 > 1)
  {
LABEL_16:

LABEL_17:
    if (v8 == v10)
    {
      goto LABEL_18;
    }

LABEL_26:
    v6 = 1;
    return v6 & 1;
  }

  v25 = sub_1AB461DA4();

  if ((v25 & 1) != 0 && v8 != v10)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (v3 != 2)
  {
    v13 = sub_1AB461DA4();

    if (v13)
    {
      goto LABEL_25;
    }

    if (v3 <= 1)
    {
      v14 = sub_1AB461DA4();

      if ((v14 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }
  }

LABEL_25:
  if (v9 != v26)
  {
    goto LABEL_26;
  }

LABEL_28:
  if (v3 <= 2)
  {
    v16 = sub_1AB461DA4();

    if ((v16 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  v17 = (a1 + v2[8]);
  v18 = v17[1];
  if (v18)
  {
    v19 = *v17;
    v20 = JEGestaltGetBuildVersion();
    v21 = sub_1AB460544();
    v23 = v22;

    if (v19 != v21 || v18 != v23)
    {
      v24 = sub_1AB461DA4();

      v6 = v24 ^ 1;
      return v6 & 1;
    }

    goto LABEL_11;
  }

LABEL_4:
  v6 = 0;
  return v6 & 1;
}

unint64_t sub_1AB3FD744()
{
  result = qword_1EB43CF60;
  if (!qword_1EB43CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CF60);
  }

  return result;
}

Swift::Bool __swiftcall jet_debug_tooling_os_variant_has_internal_content()()
{
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v0 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v0[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v0 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
  }

  return os_unfair_lock_opaque_low & 1;
}

uint64_t static JetDebugTooling.isRunningFromTest.getter()
{
  if (qword_1EB4359C0 != -1)
  {
    swift_once();
  }

  return byte_1EB435998;
}

uint64_t sub_1AB3FD8B0(uint64_t a1, unint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  *&v40 = a1;
  *(&v40 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CF70);
  if (swift_dynamicCast())
  {
    sub_1AB0149B0(__src, &v41);
    __swift_project_boxed_opaque_existential_1Tm(&v41, v42);
    sub_1AB45F534();
    __src[0] = v40;
    __swift_destroy_boxed_opaque_existential_1Tm(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1AB3FF034(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1AB461714();
  }

  sub_1AB3FE178(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1AB3FE874(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v10 = sub_1AB3FE240(sub_1AB3FF09C);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1AB45F7F4();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1AB3FE0FC(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1AB460734();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1AB460764();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1AB461714();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1AB3FE0FC(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1AB460744();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      sub_1AB45F804();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    sub_1AB45F804();
    sub_1AB03BD58(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_1AB03BD58(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_1AB017200(*&__src[0], *(&__src[0] + 1));

  sub_1AB017254(v32, *(&v32 + 1));
  return v32;
}