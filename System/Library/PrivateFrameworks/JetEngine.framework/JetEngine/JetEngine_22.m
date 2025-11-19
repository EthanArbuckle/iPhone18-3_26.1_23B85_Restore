uint64_t sub_1AB1B98A0(uint64_t a1)
{
  v3 = *(type metadata accessor for URLJetPackAssetFetcher() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1AB027460;

  return sub_1AB1B7B14(a1, v11, v12, v1 + v4, v8, v9, v10, v13);
}

uint64_t sub_1AB1B9A20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_28Tm()
{
  v1 = type metadata accessor for URLJetPackAssetFetcher();
  v13 = *(*(v1 - 8) + 80);
  v2 = (v13 + 32) & ~v13;
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v6 = v0 + v2;

  if (*(v0 + v2 + 8))
  {
  }

  v7 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 24);
  v9 = sub_1AB45F764();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  v11 = *(v0 + v7 + 8);
  if (v11 >> 60 != 15)
  {
    sub_1AB017254(*(v0 + v7), v11);
  }

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v13 | 7);
}

uint64_t sub_1AB1B9C40(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1AB017200(a1, a2);
  }

  return a1;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine27URLJetPackAssetFetcherErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1AB1B9C70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1AB1B9CB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

JSContext __swiftcall JSContext.init(name:virtualMachine:)(Swift::String name, JSVirtualMachine virtualMachine)
{
  result.super.isa = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithVirtualMachine_];
  if (result.super.isa)
  {
    v4 = result.super.isa;
    v5 = sub_1AB460514();

    [(objc_class *)v4 setName:v5];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id JSContext.propagateExceptionsToErrors<A>(_:)@<X0>(uint64_t (*a1)(void *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = v3;
  result = a1(v3);
  if (!v4)
  {
    result = [v3 exception];
    if (result)
    {
      v9 = result;
      [v5 setException_];
      sub_1AB0C3EF0();
      swift_allocError();
      v11 = v10;
      v12 = v9;
      JSError.init(_:)(v12, v11);
      swift_willThrow();

      return (*(*(a2 - 8) + 8))(a3, a2);
    }
  }

  return result;
}

void CompoundError.init(_:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    sub_1AB40BED8("JetEngine/CompoundError.swift", 0x1DuLL, 2, 0x15uLL);
  }

  *a2 = a1;
}

uint64_t CompoundError.errorDescription.getter()
{
  v1 = *(*v0 + 16);
  if (v1 == 1)
  {
    v3 = *(*v0 + 32);
    swift_getErrorValue();
    v4 = v3;
    v2 = sub_1AB462024();
  }

  else if (v1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437EE8);
    sub_1AB1BA140();
    v2 = sub_1AB460484();
  }

  else
  {
    return 0x1000000000000026;
  }

  return v2;
}

uint64_t sub_1AB1BA0F8@<X0>(uint64_t *a1@<X8>)
{
  swift_getErrorValue();
  result = sub_1AB462024();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1AB1BA140()
{
  result = qword_1EB432320;
  if (!qword_1EB432320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437EE8);
    sub_1AB1BA1C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432320);
  }

  return result;
}

unint64_t sub_1AB1BA1C4()
{
  result = qword_1EB4323B8;
  if (!qword_1EB4323B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4323B8);
  }

  return result;
}

unint64_t CompoundError.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AB4D4720;
    *(inited + 32) = sub_1AB460544();
    v6 = inited + 32;
    *(inited + 40) = v7;
    swift_getErrorValue();
    *(inited + 72) = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_0);
LABEL_8:
    v10 = sub_1AB01B220(inited);
    swift_setDeallocating();
    sub_1AB1BA43C(v6);
    return v10;
  }

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AB4D4720;
    *(inited + 32) = sub_1AB460544();
    v6 = inited + 32;
    *(inited + 40) = v9;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437EF0);
    *(inited + 48) = v1;

    goto LABEL_8;
  }

  v3 = MEMORY[0x1E69E7CC0];

  return sub_1AB01B220(v3);
}

uint64_t sub_1AB1BA3C4(uint64_t a1)
{
  v2 = sub_1AB1BA508();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1AB1BA400(uint64_t a1)
{
  v2 = sub_1AB1BA508();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1AB1BA43C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AB1BA4A4()
{
  result = qword_1EB433938;
  if (!qword_1EB433938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433938);
  }

  return result;
}

unint64_t sub_1AB1BA508()
{
  result = qword_1EB4332F0[0];
  if (!qword_1EB4332F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4332F0);
  }

  return result;
}

unint64_t sub_1AB1BA57C(uint64_t a1)
{
  if (*(v1 + 40))
  {
    if (qword_1EB435768 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v3 = v56;
    v4 = v57;
    __swift_project_boxed_opaque_existential_1Tm(v55, v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1AB4D4720;
    v54 = sub_1AB0168A8(0, 61, 0, MEMORY[0x1E69E7CC0]);
    v6._object = 0x80000001AB501D10;
    v6._countAndFlagsBits = 0xD000000000000019;
    LogMessage.StringInterpolation.appendLiteral(_:)(v6);
    v53 = MEMORY[0x1E69E6530];
    v52[0] = a1;
    sub_1AB01522C(v52, v48);
    v49 = 0u;
    v50 = 0u;
    sub_1AB0169C4(v48, &v49);
    v51 = 0;
    v7 = v54;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1AB0168A8(0, *(v7 + 2) + 1, 1, v7);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[40 * v9];
    v11 = v49;
    v12 = v50;
    v10[64] = v51;
    *(v10 + 2) = v11;
    *(v10 + 3) = v12;
    v54 = v7;
    sub_1AB0167A8(v52);
    v13 = "Cannot create child activity ";
    v14 = 0xD000000000000023;
LABEL_18:
    v24 = v13 | 0x8000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(*&v14);
    *(v5 + 32) = v54;
    Logger.error(_:)(v5, v3, v4);

    return __swift_destroy_boxed_opaque_existential_1Tm(v55);
  }

  v15 = v1;
  if (*(*(v1 + 16) + 16))
  {
    sub_1AB016558(a1);
    if (v16)
    {
      if (qword_1EB435768 != -1)
      {
        swift_once();
      }

      sub_1AB4622E4();
      v3 = v56;
      v4 = v57;
      __swift_project_boxed_opaque_existential_1Tm(v55, v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1AB4D4720;
      v54 = sub_1AB0168A8(0, 64, 0, MEMORY[0x1E69E7CC0]);
      v17._object = 0x80000001AB501D10;
      v17._countAndFlagsBits = 0xD000000000000019;
      LogMessage.StringInterpolation.appendLiteral(_:)(v17);
      v53 = MEMORY[0x1E69E6530];
      v52[0] = a1;
      sub_1AB01522C(v52, v48);
      v49 = 0u;
      v50 = 0u;
      sub_1AB0169C4(v48, &v49);
      v51 = 0;
      v18 = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1AB0168A8(0, *(v18 + 2) + 1, 1, v18);
      }

      v20 = *(v18 + 2);
      v19 = *(v18 + 3);
      if (v20 >= v19 >> 1)
      {
        v18 = sub_1AB0168A8((v19 > 1), v20 + 1, 1, v18);
      }

      *(v18 + 2) = v20 + 1;
      v21 = &v18[40 * v20];
      v22 = v49;
      v23 = v50;
      v21[64] = v51;
      *(v21 + 2) = v22;
      *(v21 + 3) = v23;
      v54 = v18;
      sub_1AB0167A8(v52);
      v13 = "Cannot activate activity ";
      v14 = 0xD000000000000026;
      goto LABEL_18;
    }
  }

  sub_1AB460184();
  v26 = sub_1AB460154();

  sub_1AB460124();
  sub_1AB460164();
  if (qword_1EB435768 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v27 = v56;
  v28 = v57;
  __swift_project_boxed_opaque_existential_1Tm(v55, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1AB4D4720;
  v54 = sub_1AB0168A8(0, 51, 0, MEMORY[0x1E69E7CC0]);
  v30._countAndFlagsBits = 0xD000000000000022;
  v30._object = 0x80000001AB501B50;
  LogMessage.StringInterpolation.appendLiteral(_:)(v30);
  v53 = MEMORY[0x1E69E6530];
  v52[0] = a1;
  sub_1AB01522C(v52, v48);
  v49 = 0u;
  v50 = 0u;
  sub_1AB0169C4(v48, &v49);
  v51 = 0;
  v31 = v54;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = sub_1AB0168A8(0, *(v31 + 2) + 1, 1, v31);
  }

  v33 = *(v31 + 2);
  v32 = *(v31 + 3);
  if (v33 >= v32 >> 1)
  {
    v31 = sub_1AB0168A8((v32 > 1), v33 + 1, 1, v31);
  }

  *(v31 + 2) = v33 + 1;
  v34 = &v31[40 * v33];
  v35 = v49;
  v36 = v50;
  v34[64] = v51;
  *(v34 + 2) = v35;
  *(v34 + 3) = v36;
  v54 = v31;
  sub_1AB0167A8(v52);
  v37._countAndFlagsBits = 0x74617265706F202CLL;
  v37._object = 0xEF203A44496E6F69;
  LogMessage.StringInterpolation.appendLiteral(_:)(v37);
  v38 = v15[3];
  v39 = v15[4];
  v53 = MEMORY[0x1E69E6158];
  v52[0] = v38;
  v52[1] = v39;
  sub_1AB01522C(v52, v48);
  v49 = 0u;
  v50 = 0u;

  sub_1AB0169C4(v48, &v49);
  v51 = 0;
  v40 = v54;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v40 = sub_1AB0168A8(0, *(v40 + 2) + 1, 1, v40);
    v54 = v40;
  }

  v42 = *(v40 + 2);
  v41 = *(v40 + 3);
  if (v42 >= v41 >> 1)
  {
    v40 = sub_1AB0168A8((v41 > 1), v42 + 1, 1, v40);
  }

  *(v40 + 2) = v42 + 1;
  v43 = &v40[40 * v42];
  v44 = v49;
  v45 = v50;
  v43[64] = v51;
  *(v43 + 2) = v44;
  *(v43 + 3) = v45;
  v54 = v40;
  sub_1AB0167A8(v52);
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v46);
  *(v29 + 32) = v54;
  Logger.debug(_:)(v29, v27, v28);

  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55[0] = v15[2];
  result = sub_1AB1D5B28(v26, a1, isUniquelyReferenced_nonNull_native);
  v15[2] = v55[0];
  return result;
}

uint64_t sub_1AB1BAC4C(uint64_t a1)
{
  v3 = sub_1AB460134();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v52[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + 40))
  {
    if (qword_1EB435768 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v8 = v60;
    v9 = v61;
    __swift_project_boxed_opaque_existential_1Tm(v59, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AB4D4720;
    v58 = sub_1AB0168A8(0, 61, 0, MEMORY[0x1E69E7CC0]);
    v11._object = 0x80000001AB501CA0;
    v11._countAndFlagsBits = 0xD000000000000019;
    LogMessage.StringInterpolation.appendLiteral(_:)(v11);
    v57 = MEMORY[0x1E69E6530];
    v56[0] = a1;
    sub_1AB01522C(v56, v52);
    v53 = 0u;
    v54 = 0u;
    sub_1AB0169C4(v52, &v53);
    v55 = 0;
    v12 = v58;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1AB0168A8(0, *(v12 + 2) + 1, 1, v12);
    }

    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_1AB0168A8((v13 > 1), v14 + 1, 1, v12);
    }

    *(v12 + 2) = v14 + 1;
    v15 = &v12[40 * v14];
    v16 = v53;
    v17 = v54;
    v15[64] = v55;
    *(v15 + 2) = v16;
    *(v15 + 3) = v17;
    v58 = v12;
    sub_1AB0167A8(v56);
    v18 = "Cannot create child activity ";
    v19 = 0xD000000000000023;
LABEL_29:
    v50 = v18 | 0x8000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(*&v19);
    *(v10 + 32) = v58;
    Logger.error(_:)(v10, v8, v9);

    return __swift_destroy_boxed_opaque_existential_1Tm(v59);
  }

  v20 = v1;
  if (!*(*(v1 + 16) + 16) || (v21 = v5, sub_1AB016558(a1), (v22 & 1) == 0))
  {
    if (qword_1EB435768 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v8 = v60;
    v9 = v61;
    __swift_project_boxed_opaque_existential_1Tm(v59, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AB4D4720;
    v58 = sub_1AB0168A8(0, 55, 0, MEMORY[0x1E69E7CC0]);
    v43._object = 0x80000001AB501CA0;
    v43._countAndFlagsBits = 0xD000000000000019;
    LogMessage.StringInterpolation.appendLiteral(_:)(v43);
    v57 = MEMORY[0x1E69E6530];
    v56[0] = a1;
    sub_1AB01522C(v56, v52);
    v53 = 0u;
    v54 = 0u;
    sub_1AB0169C4(v52, &v53);
    v55 = 0;
    v44 = v58;
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
    v48 = v53;
    v49 = v54;
    v47[64] = v55;
    *(v47 + 2) = v48;
    *(v47 + 3) = v49;
    v58 = v44;
    sub_1AB0167A8(v56);
    v18 = "Cannot complete activity ";
    v19 = 0xD00000000000001DLL;
    goto LABEL_29;
  }

  (*(v4 + 104))(v7, *MEMORY[0x1E6977AC8], v21);

  sub_1AB460174();
  (*(v4 + 8))(v7, v21);
  sub_1AB177204(a1);

  if (qword_1EB435768 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v23 = v60;
  v24 = v61;
  __swift_project_boxed_opaque_existential_1Tm(v59, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1AB4D4720;
  v58 = sub_1AB0168A8(0, 59, 0, MEMORY[0x1E69E7CC0]);
  v26._countAndFlagsBits = 0xD00000000000002ALL;
  v26._object = 0x80000001AB501CE0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  v57 = MEMORY[0x1E69E6530];
  v56[0] = a1;
  sub_1AB01522C(v56, v52);
  v53 = 0u;
  v54 = 0u;
  sub_1AB0169C4(v52, &v53);
  v55 = 0;
  v27 = v58;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
  }

  v29 = *(v27 + 2);
  v28 = *(v27 + 3);
  if (v29 >= v28 >> 1)
  {
    v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
  }

  *(v27 + 2) = v29 + 1;
  v30 = &v27[40 * v29];
  v31 = v53;
  v32 = v54;
  v30[64] = v55;
  *(v30 + 2) = v31;
  *(v30 + 3) = v32;
  v58 = v27;
  sub_1AB0167A8(v56);
  v33._countAndFlagsBits = 0x74617265706F202CLL;
  v33._object = 0xEF203A44496E6F69;
  LogMessage.StringInterpolation.appendLiteral(_:)(v33);
  v34 = *(v20 + 24);
  v35 = *(v20 + 32);
  v57 = MEMORY[0x1E69E6158];
  v56[0] = v34;
  v56[1] = v35;
  sub_1AB01522C(v56, v52);
  v53 = 0u;
  v54 = 0u;

  sub_1AB0169C4(v52, &v53);
  v55 = 0;
  v36 = v58;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v36 = sub_1AB0168A8(0, *(v36 + 2) + 1, 1, v36);
    v58 = v36;
  }

  v38 = *(v36 + 2);
  v37 = *(v36 + 3);
  if (v38 >= v37 >> 1)
  {
    v36 = sub_1AB0168A8((v37 > 1), v38 + 1, 1, v36);
  }

  *(v36 + 2) = v38 + 1;
  v39 = &v36[40 * v38];
  v40 = v53;
  v41 = v54;
  v39[64] = v55;
  *(v39 + 2) = v40;
  *(v39 + 3) = v41;
  v58 = v36;
  sub_1AB0167A8(v56);
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v42);
  *(v25 + 32) = v58;
  Logger.debug(_:)(v25, v23, v24);

  return __swift_destroy_boxed_opaque_existential_1Tm(v59);
}

uint64_t sub_1AB1BB3A8()
{
  if (*(v0 + 40))
  {
    if (qword_1EB435768 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v1 = v41;
    v2 = v42;
    __swift_project_boxed_opaque_existential_1Tm(v40, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1AB4D4720;
    *(&v35 + 1) = MEMORY[0x1E69E6158];
    *&v34 = 0xD00000000000003FLL;
    *(&v34 + 1) = 0x80000001AB501C60;
    *(v4 + 48) = 0u;
    *(v4 + 32) = 0u;
    sub_1AB0169C4(&v34, v4 + 32);
    *(v4 + 64) = 0;
    *(v3 + 32) = v4;
    Logger.error(_:)(v3, v1, v2);
  }

  else
  {
    v5 = v0;
    v6 = *(v0 + 16);
    if (*(v6 + 16))
    {
      if (qword_1EB435768 != -1)
      {
        swift_once();
      }

      sub_1AB4622E4();
      v7 = v41;
      v8 = v42;
      __swift_project_boxed_opaque_existential_1Tm(v40, v41);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1AB4D4720;
      v39 = sub_1AB0168A8(0, 77, 0, MEMORY[0x1E69E7CC0]);
      v10._countAndFlagsBits = 0;
      v10._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v10);
      v11 = *(v6 + 16);
      v38 = MEMORY[0x1E69E6530];
      v37[0] = v11;
      sub_1AB01522C(v37, v33);
      v34 = 0u;
      v35 = 0u;
      sub_1AB0169C4(v33, &v34);
      v36 = 0;
      v12 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1AB0168A8(0, *(v12 + 2) + 1, 1, v12);
      }

      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        v12 = sub_1AB0168A8((v13 > 1), v14 + 1, 1, v12);
      }

      *(v12 + 2) = v14 + 1;
      v15 = &v12[40 * v14];
      v16 = v34;
      v17 = v35;
      v15[64] = v36;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
      v39 = v12;
      sub_1AB0167A8(v37);
      v18._countAndFlagsBits = 0xD00000000000004CLL;
      v18._object = 0x80000001AB501BD0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      *(v9 + 32) = v39;
      Logger.warning(_:)(v9, v7, v8);

      __swift_destroy_boxed_opaque_existential_1Tm(v40);
    }

    sub_1AB460174();
    if (*v5)
    {
      sub_1AB460174();
    }

    *(v5 + 40) = 1;
    if (qword_1EB435768 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v19 = v41;
    v20 = v42;
    __swift_project_boxed_opaque_existential_1Tm(v40, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1AB4D4720;
    v39 = sub_1AB0168A8(0, 60, 0, MEMORY[0x1E69E7CC0]);
    v22._object = 0x80000001AB501C20;
    v22._countAndFlagsBits = 0xD00000000000003BLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    v23 = *(v5 + 24);
    v24 = *(v5 + 32);
    v38 = MEMORY[0x1E69E6158];
    v37[0] = v23;
    v37[1] = v24;
    sub_1AB01522C(v37, v33);
    v34 = 0u;
    v35 = 0u;

    sub_1AB0169C4(v33, &v34);
    v36 = 0;
    v25 = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1AB0168A8(0, *(v25 + 2) + 1, 1, v25);
      v39 = v25;
    }

    v27 = *(v25 + 2);
    v26 = *(v25 + 3);
    if (v27 >= v26 >> 1)
    {
      v25 = sub_1AB0168A8((v26 > 1), v27 + 1, 1, v25);
    }

    *(v25 + 2) = v27 + 1;
    v28 = &v25[40 * v27];
    v29 = v34;
    v30 = v35;
    v28[64] = v36;
    *(v28 + 2) = v29;
    *(v28 + 3) = v30;
    v39 = v25;
    sub_1AB0167A8(v37);
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v31);
    *(v21 + 32) = v39;
    Logger.debug(_:)(v21, v19, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v40);
}

uint64_t sub_1AB1BB8CC(uint64_t a1)
{
  if (*(v1 + 40))
  {
    if (qword_1EB435768 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v3 = v46;
    v4 = v47;
    __swift_project_boxed_opaque_existential_1Tm(v45, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1AB4D4720;
    v44 = sub_1AB0168A8(0, 65, 0, MEMORY[0x1E69E7CC0]);
    v6._object = 0x80000001AB501B80;
    v6._countAndFlagsBits = 0xD00000000000001DLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v6);
    v43 = MEMORY[0x1E69E6530];
    v42[0] = a1;
    sub_1AB01522C(v42, v38);
    v39 = 0u;
    v40 = 0u;
    sub_1AB0169C4(v38, &v39);
    v41 = 0;
    v7 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1AB0168A8(0, *(v7 + 2) + 1, 1, v7);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[40 * v9];
    v11 = v39;
    v12 = v40;
    v10[64] = v41;
    *(v10 + 2) = v11;
    *(v10 + 3) = v12;
    v44 = v7;
    sub_1AB0167A8(v42);
    v13._countAndFlagsBits = 0xD000000000000023;
    v13._object = 0x80000001AB501BA0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    *(v5 + 32) = v44;
    Logger.error(_:)(v5, v3, v4);

    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    return 0;
  }

  else
  {
    v15 = v1;
    sub_1AB460184();
    v16 = sub_1AB460154();

    v17 = v16;
    sub_1AB460124();
    if (qword_1EB435768 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v18 = v46;
    v19 = v47;
    __swift_project_boxed_opaque_existential_1Tm(v45, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1AB4D4720;
    v44 = sub_1AB0168A8(0, 51, 0, MEMORY[0x1E69E7CC0]);
    v21._countAndFlagsBits = 0xD000000000000022;
    v21._object = 0x80000001AB501B50;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    v43 = MEMORY[0x1E69E6530];
    v42[0] = a1;
    sub_1AB01522C(v42, v38);
    v39 = 0u;
    v40 = 0u;
    sub_1AB0169C4(v38, &v39);
    v41 = 0;
    v22 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1AB0168A8(0, *(v22 + 2) + 1, 1, v22);
    }

    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_1AB0168A8((v23 > 1), v24 + 1, 1, v22);
    }

    *(v22 + 2) = v24 + 1;
    v25 = &v22[40 * v24];
    v26 = v39;
    v27 = v40;
    v25[64] = v41;
    *(v25 + 2) = v26;
    *(v25 + 3) = v27;
    v44 = v22;
    sub_1AB0167A8(v42);
    v28._countAndFlagsBits = 0x74617265706F202CLL;
    v28._object = 0xEF203A44496E6F69;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    v29 = *(v15 + 24);
    v30 = *(v15 + 32);
    v43 = MEMORY[0x1E69E6158];
    v42[0] = v29;
    v42[1] = v30;
    sub_1AB01522C(v42, v38);
    v39 = 0u;
    v40 = 0u;

    sub_1AB0169C4(v38, &v39);
    v41 = 0;
    v31 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1AB0168A8(0, *(v31 + 2) + 1, 1, v31);
      v44 = v31;
    }

    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_1AB0168A8((v32 > 1), v33 + 1, 1, v31);
    }

    *(v31 + 2) = v33 + 1;
    v34 = &v31[40 * v33];
    v35 = v39;
    v36 = v40;
    v34[64] = v41;
    *(v34 + 2) = v35;
    *(v34 + 3) = v36;
    v44 = v31;
    sub_1AB0167A8(v42);
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v37);
    *(v20 + 32) = v44;
    Logger.debug(_:)(v20, v18, v19);

    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    return v17;
  }
}

uint64_t sub_1AB1BBDCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB1BBE18(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1AB014B20();
  result = MEMORY[0x1AC59C180](v2, &type metadata for OpaqueMetatype, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_1AB2497C8(&v12, *(*(a1 + 48) + ((v10 << 9) | (8 * v11)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t PageMetrics.InvocationPoint.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
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

uint64_t PageMetrics.InvocationPoint.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462254();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1AB461E34();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t PageMetrics.InvocationPoint.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1AB1BC11C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
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

uint64_t PageMetrics.Instruction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v28);
  *&v25 = v6;
  MetricsData.init(deserializing:using:)(v28, &v25, &v29);
  if (!v3)
  {
    v7 = *(&v29 + 1);
    v21 = v29;
    v20 = v30;
    v8 = *(&v30 + 1);
    v9 = v31;
    v10 = v32;
    v33 = 0x80000001AB4FDD30;
    JSONObject.subscript.getter(0xD000000000000010, 0x80000001AB4FDD30, v28);
    sub_1AB014A58(v28, v22, &qword_1EB436BA0);
    v11 = v23;
    if (v23)
    {
      v19 = v7;
      v12 = v24;
      __swift_project_boxed_opaque_existential_1Tm(v22, v23);
      (*(v12 + 152))(&v25, v11, v12);
      sub_1AB066D84(v28);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      if (*(&v26 + 1))
      {
        v29 = v25;
        v30 = v26;
        v13 = v27;
        v31 = v27;
        v14 = *(&v26 + 1);
        __swift_project_boxed_opaque_existential_1Tm(&v29, *(&v26 + 1));
        v15 = (*(v13 + 56))(sub_1AB1BC4E8, 0, &type metadata for PageMetrics.InvocationPoint, v14, v13);
        v16 = sub_1AB1BEFC8(v15, sub_1AB1BFD20, &type metadata for PageMetrics.InvocationPoint, sub_1AB248AD8);

        sub_1AB066D84(a1);
        result = sub_1AB06A37C(&v29);
        *a3 = v21;
        *(a3 + 8) = v19;
        *(a3 + 16) = v20;
        *(a3 + 24) = v8;
        *(a3 + 32) = v9;
        *(a3 + 40) = v10;
        *(a3 + 48) = v16;
        return result;
      }
    }

    else
    {

      sub_1AB066D84(v28);
      sub_1AB014AC0(v22, &qword_1EB436BA0);
      v25 = 0u;
      v26 = 0u;
      v27 = 0;
    }

    sub_1AB014AC0(&v25, &qword_1EB437EF8);
    sub_1AB163664();
    swift_allocError();
    *v18 = 0xD000000000000010;
    v18[1] = v33;
    v18[2] = 0x20000001F1FFAAC8uLL;
    v18[3] = 0;
    swift_willThrow();
  }

  return sub_1AB066D84(a1);
}

uint64_t sub_1AB1BC4E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AB014A58(a1, v9, &qword_1EB436BA0);
  v3 = v10;
  if (v10)
  {
    v4 = v11;
    __swift_project_boxed_opaque_existential_1Tm(v9, v10);
    v5 = (*(v4 + 24))(v3, v4);
    v7 = v6;
    result = __swift_destroy_boxed_opaque_existential_1Tm(v9);
    if (v7)
    {
      *a2 = v5;
      a2[1] = v7;
      return result;
    }
  }

  else
  {
    result = sub_1AB014AC0(v9, &qword_1EB436BA0);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

__n128 PageMetrics.Instruction.init(data:invocationPoints:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 40);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *(a1 + 24);
  *(a3 + 24) = result;
  *(a3 + 40) = v4;
  *(a3 + 48) = a2;
  return result;
}

uint64_t PageMetrics.Instruction.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
}

__n128 PageMetrics.Instruction.data.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = a1[5];

  *v1 = v3;
  *(v1 + 8) = v4;
  *(v1 + 16) = v5;
  result = *(a1 + 3);
  *(v1 + 24) = result;
  *(v1 + 40) = v6;
  return result;
}

uint64_t PageMetrics.Instruction.invocationPoints.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t PageMetrics.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  JSONObject.subscript.getter(0x7463757274736E69, 0xEC000000736E6F69, &v23);

  v6 = sub_1AB37F884(&v23, v5);
  JSONObject.subscript.getter(0x6C65694665676170, 0xEA00000000007364, v22);
  sub_1AB014A58(v22, v19, &qword_1EB436BA0);
  v7 = v20;
  if (v20)
  {
    v8 = v21;
    __swift_project_boxed_opaque_existential_1Tm(v19, v20);
    (*(v8 + 160))(&v23, v7, v8);
    sub_1AB066D84(v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v9 = *(&v24 + 1);
    if (*(&v24 + 1))
    {
      v10 = v25;
      __swift_project_boxed_opaque_existential_1Tm(&v23, *(&v24 + 1));
      v11 = (*(v10 + 32))(MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168], v9, v10);
      sub_1AB07CDB0(&v23);
      goto LABEL_6;
    }
  }

  else
  {
    sub_1AB066D84(v22);
    sub_1AB014AC0(v19, &qword_1EB436BA0);
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
  }

  sub_1AB014AC0(&v23, &qword_1EB436BC0);
  v11 = 0;
LABEL_6:
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, &v23);
  v19[0] = v5;
  ScalarDictionary.init(tryDeserializing:using:)(&v23, v19, v22);
  v12 = v22[0];
  JSONObject.subscript.getter(0xD000000000000013, 0x80000001AB4FDD10, v22);
  sub_1AB014A58(v22, v19, &qword_1EB436BA0);
  v13 = v20;
  if (!v20)
  {
    sub_1AB066D84(v22);
    sub_1AB014AC0(v19, &qword_1EB436BA0);
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    goto LABEL_11;
  }

  v14 = v21;
  __swift_project_boxed_opaque_existential_1Tm(v19, v20);
  (*(v14 + 160))(&v23, v13, v14);
  sub_1AB066D84(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  v15 = *(&v24 + 1);
  if (!*(&v24 + 1))
  {
LABEL_11:
    sub_1AB014AC0(&v23, &qword_1EB436BC0);
    goto LABEL_12;
  }

  v16 = v25;
  __swift_project_boxed_opaque_existential_1Tm(&v23, *(&v24 + 1));
  v17 = (*(v16 + 32))(MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168], v15, v16);
  sub_1AB07CDB0(&v23);
  if (!v17)
  {
LABEL_12:
    v17 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
    sub_1AB066D84(a1);

    goto LABEL_13;
  }

  result = sub_1AB066D84(a1);
LABEL_13:
  *a3 = v6;
  a3[1] = v11;
  a3[2] = v12;
  a3[3] = v17;
  return result;
}

unint64_t static PageMetrics.notInstrumented.getter@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  result = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  *a1 = v2;
  a1[1] = 0;
  a1[2] = MEMORY[0x1E69E7CC8];
  a1[3] = result;
  return result;
}

uint64_t PageMetrics.instructions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PageMetrics.pageFields.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t PageMetrics.custom.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

uint64_t PageMetrics.clickLocationFields.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t PageMetrics.mergingWith(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = *v2;
  v9 = v2[2];
  v15 = MEMORY[0x1E69E7CC0];

  sub_1AB164E04(v8);
  sub_1AB164E04(v4);
  v10 = v15;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v9;
  sub_1AB1A16CC(v7, sub_1AB1794AC, 0, isUniquelyReferenced_nonNull_native, &v14);

  v12 = v14;

  *a2 = v10;
  a2[1] = v5;
  a2[2] = v12;
  a2[3] = v6;
  return result;
}

uint64_t PageMetrics._isEqual(to:)(uint64_t *a1)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = *v1;
  v6 = v1[1];
  v8 = v1[2];
  v7 = v1[3];
  if ((sub_1AB1BCE80(*a1, v5) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1AB3B1A34(v6, v2, 3, 0) & 1) == 0)
  {
    return 0;
  }

  v9 = sub_1AB171280(v8, v4);

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  return sub_1AB3B1A34(v7, v3, 3, 0);
}

uint64_t sub_1AB1BCE80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a1 + 16))
  {
    v3 = 0;
    v33 = a1 + 32;
    v34 = a2 + 32;
    v32 = *(a2 + 16);
    while (2)
    {
      if (v3 == v2)
      {
        return 1;
      }

      v4 = (v34 + 56 * v3);
      v6 = v4[5];
      v5 = v4[6];
      v8 = v4[3];
      v7 = v4[4];
      v9 = *(v4 + 16);
      v11 = *v4;
      v10 = v4[1];

      if (!v8)
      {
        return 1;
      }

      v37 = v5;
      v12 = v33 + 56 * v3;
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      v15 = *(v12 + 24);
      v39 = *(v12 + 40);
      v40 = *(v12 + 32);
      v38 = *(v12 + 48);
      if (v10)
      {
        if (!v13 || (v11 == *v12 ? (v16 = v10 == v13) : (v16 = 0), !v16 && (sub_1AB461DA4() & 1) == 0))
        {
LABEL_42:

LABEL_43:

          return 0;
        }
      }

      else if (v13)
      {
        goto LABEL_42;
      }

      if (v9 == v14)
      {

        if (sub_1AB3C7A90(v15, v8))
        {
          v35 = v6;
          v36 = v7;
          ++v3;
          v17 = 1 << *(v8 + 32);
          if (v17 < 64)
          {
            v18 = ~(-1 << v17);
          }

          else
          {
            v18 = -1;
          }

          v19 = v18 & *(v8 + 64);
          v20 = (v17 + 63) >> 6;

          v21 = 0;
          while (v19)
          {
LABEL_27:
            v24 = __clz(__rbit64(v19)) | (v21 << 6);
            v25 = (*(v8 + 48) + 16 * v24);
            v26 = *v25;
            v27 = v25[1];
            sub_1AB0165C4(*(v8 + 56) + 32 * v24, v45);
            v44[0] = v26;
            v44[1] = v27;
            sub_1AB0165C4(v45, v43);
            if (*(v15 + 16))
            {

              v28 = sub_1AB014DB4(v26, v27);
              if (v29)
              {
                sub_1AB0165C4(*(v15 + 56) + 32 * v28, &v41);
              }

              else
              {
                v41 = 0u;
                v42 = 0u;
              }
            }

            else
            {
              v41 = 0u;
              v42 = 0u;
            }

            v19 &= v19 - 1;
            v22 = sub_1AB3B1C48(v43, &v41, 3uLL, 0);
            sub_1AB014AC0(&v41, &unk_1EB437E60);
            sub_1AB014AC0(v43, &unk_1EB437E60);
            sub_1AB014AC0(v44, &qword_1EB43A620);
            if ((v22 & 1) == 0)
            {

              goto LABEL_43;
            }
          }

          while (1)
          {
            v23 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              __break(1u);
              goto LABEL_42;
            }

            if (v23 >= v20)
            {
              break;
            }

            v19 = *(v8 + 64 + 8 * v23);
            ++v21;
            if (v19)
            {
              v21 = v23;
              goto LABEL_27;
            }
          }

          if ((sub_1AB1BED5C(v36, v40) & 1) == 0 || (sub_1AB1BED5C(v35, v39) & 1) == 0)
          {

            goto LABEL_43;
          }

          v30 = sub_1AB1BED5C(v37, v38);

          v2 = v32;
          if (v30)
          {
            continue;
          }

          return 0;
        }
      }

      goto LABEL_42;
    }
  }

  return 0;
}

uint64_t sub_1AB1BD370(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 1635017060;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0x80000001AB4FDD30;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 1635017060;
  }

  if (*a2)
  {
    v6 = 0x80000001AB4FDD30;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AB461DA4();
  }

  return v8 & 1;
}

uint64_t sub_1AB1BD414()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB1BD494()
{
  sub_1AB460684();
}

uint64_t sub_1AB1BD500()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB1BD57C@<X0>(char *a1@<X8>)
{
  v2 = sub_1AB4619B4();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1AB1BD5DC(unint64_t *a1@<X8>)
{
  v2 = 0x80000001AB4FDD30;
  v3 = 1635017060;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1AB1BD618()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1AB1BD650@<X0>(char *a1@<X8>)
{
  v2 = sub_1AB4619B4();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1AB1BD6B4(uint64_t a1)
{
  v2 = sub_1AB1BF334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB1BD6F0(uint64_t a1)
{
  v2 = sub_1AB1BF334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PageMetrics.Instruction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437F00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB1BF334();
  sub_1AB462224();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v27 = 0;
  sub_1AB1A1A3C();
  sub_1AB461AC4();
  v9 = v21;
  v26 = v22;
  v19 = v23;
  v17 = v20;
  v18 = v24;
  v10 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437F10);
  v27 = 1;
  sub_1AB1BF388();
  sub_1AB461AC4();
  v11 = sub_1AB1BEFC8(v20, sub_1AB1BFD20, &type metadata for PageMetrics.InvocationPoint, sub_1AB248AD8);
  v16 = v9;
  v12 = v11;

  (*(v6 + 8))(v8, v5);
  v13 = v16;
  *a2 = v17;
  *(a2 + 8) = v13;
  *(a2 + 16) = v26;
  v14 = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v14;
  *(a2 + 40) = v10;
  *(a2 + 48) = v12;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t PageMetrics.Instruction.encode(to:)(void *a1)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437F38);
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v4 = &v16 - v3;
  v5 = v1[1];
  v19 = *v1;
  v27 = *(v1 + 16);
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v17 = v1[6];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB1BF334();

  sub_1AB462274();
  v9 = v20;
  v22[0] = v19;
  v22[1] = v5;
  v10 = v4;
  LOBYTE(v23) = v27;
  v24 = v6;
  v25 = v7;
  v26 = v8;
  v28 = 0;
  sub_1AB1A1BB4();
  v11 = v21;
  sub_1AB461BF4();

  if (v11)
  {
    return (*(v18 + 8))(v4, v9);
  }

  v13 = *(v17 + 2);
  if (v13)
  {
    v19 = v4;
    v14 = sub_1AB1B0044(v13, 0);
    v21 = sub_1AB1B1164(v22, v14 + 4, v13, v17);

    result = sub_1AB0309A4();
    if (v21 != v13)
    {
      __break(1u);
      return result;
    }

    v15 = v18;
    v10 = v19;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
    v15 = v18;
  }

  v22[0] = v14;
  v28 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437F10);
  sub_1AB1BF4E4();
  sub_1AB461BF4();

  return (*(v15 + 8))(v10, v9);
}

uint64_t sub_1AB1BDD30()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB1BDE00()
{
  sub_1AB460684();
}

uint64_t sub_1AB1BDEBC()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB1BDF88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB1BF0F4();
  *a1 = result;
  return result;
}

void sub_1AB1BDFB8(unint64_t *a1@<X8>)
{
  v2 = 0xEC000000736E6F69;
  v3 = 0x7463757274736E69;
  v4 = 0xE600000000000000;
  v5 = 0x6D6F74737563;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000013;
    v4 = 0x80000001AB4FDD10;
  }

  if (*v1)
  {
    v3 = 0x6C65694665676170;
    v2 = 0xEA00000000007364;
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

unint64_t sub_1AB1BE044()
{
  v1 = 0x7463757274736E69;
  v2 = 0x6D6F74737563;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0x6C65694665676170;
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

uint64_t sub_1AB1BE0CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB1BF0F4();
  *a1 = result;
  return result;
}

uint64_t sub_1AB1BE0F4(uint64_t a1)
{
  v2 = sub_1AB1BF640();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB1BE130(uint64_t a1)
{
  v2 = sub_1AB1BF640();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PageMetrics.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437F58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB1BF640();
  sub_1AB462224();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v32) = 0;
  if (sub_1AB461AF4())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437F68);
    LOBYTE(v29) = 0;
    sub_1AB1BF6E8();
    sub_1AB461AC4();
    v10 = v32;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  LOBYTE(v32) = 1;
  if ((sub_1AB461AF4() & 1) == 0)
  {
    v35 = 0;
    goto LABEL_15;
  }

  LOBYTE(v29) = 1;
  sub_1AB1BF694();
  sub_1AB461AC4();
  v25 = v10;
  sub_1AB014A58(&v32, v26, &qword_1EB436BA0);
  v11 = v27;
  if (!v27)
  {
    sub_1AB014AC0(v26, &qword_1EB436BA0);
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
    goto LABEL_13;
  }

  v12 = v28;
  __swift_project_boxed_opaque_existential_1Tm(v26, v27);
  (*(v12 + 160))(&v29, v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  v13 = *(&v30 + 1);
  if (!*(&v30 + 1))
  {
LABEL_13:
    sub_1AB066D84(&v32);
    sub_1AB014AC0(&v29, &qword_1EB436BC0);
    v35 = 0;
    goto LABEL_14;
  }

  v14 = v31;
  __swift_project_boxed_opaque_existential_1Tm(&v29, *(&v30 + 1));
  v35 = (*(v14 + 32))(MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168], v13, v14);
  sub_1AB066D84(&v32);
  sub_1AB07CDB0(&v29);
LABEL_14:
  v10 = v25;
LABEL_15:
  LOBYTE(v32) = 2;
  if (sub_1AB461AF4())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437B40);
    LOBYTE(v29) = 2;
    sub_1AB1A1C08(qword_1EB4329D0);
    sub_1AB461AC4();
    v25 = v10;
    v15 = v32;
  }

  else
  {
    v25 = v10;
    v15 = MEMORY[0x1E69E7CC8];
  }

  v24 = v15;
  v16 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  LOBYTE(v32) = 3;
  if (sub_1AB461AF4())
  {

    LOBYTE(v26[0]) = 3;
    sub_1AB1BF694();
    sub_1AB461AC4();
    sub_1AB014A58(&v29, v26, &qword_1EB436BA0);
    v18 = v27;
    v17 = v25;
    if (v27)
    {
      v19 = v28;
      __swift_project_boxed_opaque_existential_1Tm(v26, v27);
      (*(v19 + 160))(&v32, v18, v19);
      sub_1AB066D84(&v29);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      v20 = *(&v33 + 1);
      if (*(&v33 + 1))
      {
        v21 = v34;
        __swift_project_boxed_opaque_existential_1Tm(&v32, *(&v33 + 1));
        v16 = (*(v21 + 32))(MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168], v20, v21);
        sub_1AB07CDB0(&v32);
        if (v16)
        {
          (*(v6 + 8))(v8, v5);
          goto LABEL_28;
        }

LABEL_27:
        v16 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
        (*(v6 + 8))(v8, v5);

        goto LABEL_28;
      }
    }

    else
    {
      sub_1AB066D84(&v29);
      sub_1AB014AC0(v26, &qword_1EB436BA0);
      v32 = 0u;
      v33 = 0u;
      v34 = 0;
    }

    sub_1AB014AC0(&v32, &qword_1EB436BC0);
    goto LABEL_27;
  }

  (*(v6 + 8))(v8, v5);
  v17 = v25;
LABEL_28:
  v22 = v35;
  *a2 = v17;
  a2[1] = v22;
  a2[2] = v24;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t PageMetrics.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437F90);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = *v1;
  v29 = v1[1];
  v7 = v1[3];
  v23 = v1[2];
  v8 = a1[3];
  v9 = a1;
  v11 = &v22 - v10;
  __swift_project_boxed_opaque_existential_1Tm(v9, v8);
  sub_1AB1BF640();

  v12 = v4;
  sub_1AB462274();
  v26[0] = v6;
  LOBYTE(v24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437F68);
  sub_1AB1BF844();
  sub_1AB461BF4();
  if (v2)
  {

    return (*(v5 + 8))(v11, v4);
  }

  v14 = v23;

  v15 = v29;
  if (!v29)
  {
    v24 = 0u;
    v25 = 0u;
    v17 = v5;
    v18 = v7;
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
  *&v24 = v15;
  *(&v25 + 1) = v16;
  v17 = v5;
  v18 = v7;
  if (!v16)
  {
LABEL_7:

    sub_1AB014AC0(&v24, &unk_1EB437E60);
    v21 = 0;
    v20 = 0;
    v19 = 0;
    goto LABEL_8;
  }

  v19 = swift_allocObject();
  sub_1AB014B78(&v24, (v19 + 16));

  v20 = &off_1F1FFB5A8;
  v21 = &type metadata for FoundationValue;
LABEL_8:
  v26[0] = v19;
  v26[1] = 0;
  v26[2] = 0;
  v27 = v21;
  v28 = v20;
  LOBYTE(v24) = 1;
  sub_1AB1BF9A0();
  sub_1AB461BF4();
  sub_1AB066D84(v26);
  v26[0] = v14;
  LOBYTE(v24) = 2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437B40);
  sub_1AB1A1C08(&qword_1EB437B90);
  sub_1AB461BF4();

  *(&v25 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
  *&v24 = v18;
  v27 = &type metadata for FoundationValue;
  v28 = &off_1F1FFB5A8;
  v26[0] = swift_allocObject();
  sub_1AB014B78(&v24, (v26[0] + 16));
  LOBYTE(v24) = 3;

  sub_1AB461BF4();
  sub_1AB066D84(v26);
  return (*(v17 + 8))(v11, v12);
}

uint64_t PageMetrics.Instruction._isEqual(to:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = v1[1];
  v10 = *(v1 + 16);
  v11 = v1[3];
  v12 = v1[4];
  v14 = v1[5];
  v13 = v1[6];
  v23 = *v1;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = v12;
  v28 = v14;
  v18[0] = v2;
  v18[1] = v3;
  v19 = v4;
  v20 = v5;
  v21 = v6;
  v22 = v8;

  v15 = MetricsData._isEqual(to:)(v18);

  if (v15)
  {
    v16 = sub_1AB1BED5C(v13, v7);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1AB1BED5C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1AB4620A4();

    sub_1AB460684();
    v16 = sub_1AB462104();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1AB461DA4() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

unint64_t PageMetrics.init(instructions:pageFields:custom:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v7 = *a3;
  result = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  *a4 = a1;
  a4[1] = a2;
  a4[2] = v7;
  a4[3] = result;
  return result;
}

uint64_t sub_1AB1BEFC8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x1AC59C180](v7, a3, v8);
  v14 = result;
  if (v7)
  {
    v10 = (a1 + 40);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;

      a4(v13, v12, v11);

      v10 += 2;
      --v7;
    }

    while (v7);
    return v14;
  }

  return result;
}

uint64_t sub_1AB1BF06C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1AB1BFD74();
  result = MEMORY[0x1AC59C180](v2, &type metadata for JSONBridgingConfiguration.ModelDescriptor, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;

      sub_1AB248AF4(&v7, v6);

      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1AB1BF0F4()
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

uint64_t sub_1AB1BF140(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1AC59C180](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1AB248C34(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1AB1BF1D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1AB1BFC24();
  result = MEMORY[0x1AC59C180](v2, &type metadata for MetricsIdentifierScheme, v3);
  v12 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 48);
      v13[2] = *(v5 + 32);
      v13[3] = v6;
      v14 = *(v5 + 64);
      v7 = *(v5 + 16);
      v13[0] = *v5;
      v13[1] = v7;
      sub_1AB09DF1C(v13, v10);
      sub_1AB249330(v8, v13);
      v10[2] = v8[2];
      v10[3] = v8[3];
      v11 = v9;
      v10[0] = v8[0];
      v10[1] = v8[1];
      sub_1AB09DEB0(v10);
      v5 += 72;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_1AB1BF2A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1AC59C180](v2, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0]);
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_1AB02B4BC(v4, v5);
      sub_1AB2498C4(v6, v5);
      sub_1AB02B2E4(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_1AB1BF334()
{
  result = qword_1EB437F08;
  if (!qword_1EB437F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437F08);
  }

  return result;
}

unint64_t sub_1AB1BF388()
{
  result = qword_1EB437F18;
  if (!qword_1EB437F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437F10);
    sub_1AB1BF40C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437F18);
  }

  return result;
}

unint64_t sub_1AB1BF40C()
{
  result = qword_1EB437F20;
  if (!qword_1EB437F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437F28);
    sub_1AB1BF490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437F20);
  }

  return result;
}

unint64_t sub_1AB1BF490()
{
  result = qword_1EB437F30;
  if (!qword_1EB437F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437F30);
  }

  return result;
}

unint64_t sub_1AB1BF4E4()
{
  result = qword_1EB437F40;
  if (!qword_1EB437F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437F10);
    sub_1AB1BF568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437F40);
  }

  return result;
}

unint64_t sub_1AB1BF568()
{
  result = qword_1EB437F48;
  if (!qword_1EB437F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437F28);
    sub_1AB1BF5EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437F48);
  }

  return result;
}

unint64_t sub_1AB1BF5EC()
{
  result = qword_1EB437F50;
  if (!qword_1EB437F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437F50);
  }

  return result;
}

unint64_t sub_1AB1BF640()
{
  result = qword_1EB437F60;
  if (!qword_1EB437F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437F60);
  }

  return result;
}

unint64_t sub_1AB1BF694()
{
  result = qword_1EB433400;
  if (!qword_1EB433400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433400);
  }

  return result;
}

unint64_t sub_1AB1BF6E8()
{
  result = qword_1EB437F70;
  if (!qword_1EB437F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437F68);
    sub_1AB1BF76C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437F70);
  }

  return result;
}

unint64_t sub_1AB1BF76C()
{
  result = qword_1EB437F78;
  if (!qword_1EB437F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437F80);
    sub_1AB1BF7F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437F78);
  }

  return result;
}

unint64_t sub_1AB1BF7F0()
{
  result = qword_1EB437F88;
  if (!qword_1EB437F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437F88);
  }

  return result;
}

unint64_t sub_1AB1BF844()
{
  result = qword_1EB437F98;
  if (!qword_1EB437F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437F68);
    sub_1AB1BF8C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437F98);
  }

  return result;
}

unint64_t sub_1AB1BF8C8()
{
  result = qword_1EB437FA0;
  if (!qword_1EB437FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437F80);
    sub_1AB1BF94C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437FA0);
  }

  return result;
}

unint64_t sub_1AB1BF94C()
{
  result = qword_1EB437FA8;
  if (!qword_1EB437FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437FA8);
  }

  return result;
}

unint64_t sub_1AB1BF9A0()
{
  result = qword_1EB433408;
  if (!qword_1EB433408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433408);
  }

  return result;
}

unint64_t sub_1AB1BFA18()
{
  result = qword_1EB437FB0;
  if (!qword_1EB437FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437FB0);
  }

  return result;
}

unint64_t sub_1AB1BFA70()
{
  result = qword_1EB437FB8;
  if (!qword_1EB437FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437FB8);
  }

  return result;
}

unint64_t sub_1AB1BFAC8()
{
  result = qword_1EB437FC0;
  if (!qword_1EB437FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437FC0);
  }

  return result;
}

unint64_t sub_1AB1BFB20()
{
  result = qword_1EB437FC8;
  if (!qword_1EB437FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437FC8);
  }

  return result;
}

unint64_t sub_1AB1BFB78()
{
  result = qword_1EB437FD0;
  if (!qword_1EB437FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437FD0);
  }

  return result;
}

unint64_t sub_1AB1BFBD0()
{
  result = qword_1EB437FD8;
  if (!qword_1EB437FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437FD8);
  }

  return result;
}

unint64_t sub_1AB1BFC24()
{
  result = qword_1EB4325C8[0];
  if (!qword_1EB4325C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4325C8);
  }

  return result;
}

unint64_t sub_1AB1BFC78()
{
  result = qword_1ED4D0498;
  if (!qword_1ED4D0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D0498);
  }

  return result;
}

unint64_t sub_1AB1BFCCC()
{
  result = qword_1ED4D0490;
  if (!qword_1ED4D0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D0490);
  }

  return result;
}

unint64_t sub_1AB1BFD20()
{
  result = qword_1EB435600;
  if (!qword_1EB435600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435600);
  }

  return result;
}

unint64_t sub_1AB1BFD74()
{
  result = qword_1EB437FE0;
  if (!qword_1EB437FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437FE0);
  }

  return result;
}

uint64_t sub_1AB1BFE18@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_1AB460054();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_sessionIfValid;
  swift_beginAccess();
  sub_1AB014A58(v1 + v6, &v47, &qword_1EB437FE8);
  if (v48)
  {
    return sub_1AB0149B0(&v47, a1);
  }

  v38 = a1;
  sub_1AB014AC0(&v47, &qword_1EB437FE8);
  if (qword_1EB433A50 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v48;
  v39 = v49;
  __swift_project_boxed_opaque_existential_1Tm(&v47, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AB4D4720;
  v50 = sub_1AB0168A8(0, 26, 0, MEMORY[0x1E69E7CC0]);
  v10._object = 0x80000001AB502170;
  v10._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  v11 = *(v1 + 128);
  v12 = *(v1 + 136);
  v46 = MEMORY[0x1E69E6158];
  v45[0] = v11;
  v45[1] = v12;
  sub_1AB014A58(v45, v41, &unk_1EB437E60);
  v42 = 0u;
  v43 = 0u;

  sub_1AB017CC4(v41, &v42, &unk_1EB437E60);
  v44 = 0;
  v13 = v50;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1AB0168A8(0, *(v13 + 2) + 1, 1, v13);
    v50 = v13;
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1AB0168A8((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[40 * v15];
  v17 = v42;
  v18 = v43;
  v16[64] = v44;
  *(v16 + 2) = v17;
  *(v16 + 3) = v18;
  v50 = v13;
  sub_1AB014AC0(v45, &unk_1EB437E60);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  *(v9 + 32) = v50;
  Logger.info(_:)(v9, v8, v39);

  __swift_destroy_boxed_opaque_existential_1Tm(&v47);
  if (qword_1EB4359C0 != -1)
  {
    swift_once();
  }

  if (byte_1EB435998 != 1 || (v20 = *(v3 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_xpcSessionProviderFactory)) == 0)
  {
    v22 = sub_1AB460084();
    v23 = *(v3 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_workQueue);

    v24 = v23;

    sub_1AB460044();
    v25 = sub_1AB460034();
    if (v2)
    {
      goto LABEL_16;
    }

    v48 = v22;
    v49 = &protocol witness table for XPCSession;
    *&v47 = v25;
LABEL_23:
    sub_1AB0149B0(&v47, v38);
    sub_1AB01494C(v38, &v47);
    swift_beginAccess();
    sub_1AB017CC4(&v47, v3 + v6, &qword_1EB437FE8);
    return swift_endAccess();
  }

  v20(&v47, v21);
  if (!v2)
  {
    sub_1AB0177B8(v20);
    goto LABEL_23;
  }

  sub_1AB0177B8(v20);
LABEL_16:
  sub_1AB4622E4();
  v26 = v48;
  v27 = v49;
  __swift_project_boxed_opaque_existential_1Tm(&v47, v48);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1AB4D4720;
  v50 = sub_1AB0168A8(0, 43, 0, MEMORY[0x1E69E7CC0]);
  v29._countAndFlagsBits = 0xD00000000000002ALL;
  v29._object = 0x80000001AB502190;
  LogMessage.StringInterpolation.appendLiteral(_:)(v29);
  swift_getErrorValue();
  v46 = v40;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v45);
  (*(*(v40 - 8) + 16))(boxed_opaque_existential_0);
  sub_1AB014A58(v45, v41, &unk_1EB437E60);
  v42 = 0u;
  v43 = 0u;
  sub_1AB017CC4(v41, &v42, &unk_1EB437E60);
  v44 = 0;
  v31 = v50;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = sub_1AB0168A8(0, *(v31 + 2) + 1, 1, v31);
    v50 = v31;
  }

  v33 = *(v31 + 2);
  v32 = *(v31 + 3);
  if (v33 >= v32 >> 1)
  {
    v31 = sub_1AB0168A8((v32 > 1), v33 + 1, 1, v31);
  }

  *(v31 + 2) = v33 + 1;
  v34 = &v31[40 * v33];
  v35 = v42;
  v36 = v43;
  v34[64] = v44;
  *(v34 + 2) = v35;
  *(v34 + 3) = v36;
  v50 = v31;
  sub_1AB014AC0(v45, &unk_1EB437E60);
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v37);
  *(v28 + 32) = v50;
  Logger.error(_:)(v28, v26, v27);

  __swift_destroy_boxed_opaque_existential_1Tm(&v47);
  return swift_willThrow();
}

uint64_t sub_1AB1C04D0(uint64_t a1)
{
  v2 = v1;
  if (qword_1EB433A50 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v4 = *(&v26 + 1);
  v5 = v27;
  __swift_project_boxed_opaque_existential_1Tm(&v25, *(&v26 + 1));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AB4D4720;
  v24 = sub_1AB0168A8(0, 41, 0, MEMORY[0x1E69E7CC0]);
  v7._object = 0x80000001AB5021C0;
  v7._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v8 = sub_1AB4600A4();
  v23[3] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, a1, v8);
  sub_1AB014A58(v23, v19, &unk_1EB437E60);
  v20 = 0u;
  v21 = 0u;
  sub_1AB017CC4(v19, &v20, &unk_1EB437E60);
  v22 = 0;
  v10 = v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1AB0168A8(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1AB0168A8((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[40 * v12];
  v14 = v20;
  v15 = v21;
  v13[64] = v22;
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  v24 = v10;
  sub_1AB014AC0(v23, &unk_1EB437E60);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v6 + 32) = v24;
  Logger.error(_:)(v6, v4, v5);

  __swift_destroy_boxed_opaque_existential_1Tm(&v25);
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v17 = OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_sessionIfValid;
  swift_beginAccess();
  sub_1AB017CC4(&v25, v2 + v17, &qword_1EB437FE8);
  return swift_endAccess();
}

uint64_t DaemonSessionImplementation.__allocating_init(xpcServiceName:signposter:requestSizeLimit:timeout:xpcSessionProviderFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, double a8)
{
  v34 = a6;
  v35 = a7;
  v30 = a5;
  v31 = a4;
  v29[0] = a3;
  v33 = sub_1AB4610E4();
  MEMORY[0x1EEE9AC00](v33);
  v32 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AB4601F4();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v29[1] = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1AB461114();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  swift_defaultActor_initialize();
  v20 = v19 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_sessionIfValid;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  *(v19 + 128) = a1;
  *(v19 + 136) = a2;
  v21 = OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_signposter;
  v22 = sub_1AB45FFC4();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v19 + v21, a3, v22);
  v24 = 0x100000;
  if ((v30 & 1) == 0)
  {
    v24 = v31;
  }

  *(v19 + 112) = v24;
  *(v19 + 120) = a8;
  v31 = sub_1AB015664();
  v36 = a1;
  v37 = a2;

  MEMORY[0x1AC59BA20](0x6575516B726F772ELL, 0xEA00000000006575);
  (*(v16 + 104))(v18, *MEMORY[0x1E69E8098], v15);
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1AB01CA48(&qword_1ED4D1F50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439770);
  sub_1AB033860();
  sub_1AB4614E4();
  v25 = sub_1AB461154();
  (*(v23 + 8))(v29[0], v22);
  *(v19 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_workQueue) = v25;
  v26 = (v19 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_xpcSessionProviderFactory);
  v27 = v35;
  *v26 = v34;
  v26[1] = v27;
  return v19;
}

uint64_t DaemonSessionImplementation.init(xpcServiceName:signposter:requestSizeLimit:timeout:xpcSessionProviderFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, double a8)
{
  v9 = v8;
  v36 = a6;
  v37 = a7;
  v32 = a5;
  v33 = a4;
  v31 = a3;
  v35 = sub_1AB4610E4();
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1AB4601F4();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v30 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1AB461114();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v21 = v9 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_sessionIfValid;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0;
  *(v9 + 128) = a1;
  *(v9 + 136) = a2;
  v22 = OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_signposter;
  v23 = sub_1AB45FFC4();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v9 + v22, a3, v23);
  v25 = 0x100000;
  if ((v32 & 1) == 0)
  {
    v25 = v33;
  }

  *(v9 + 112) = v25;
  *(v9 + 120) = a8;
  v33 = sub_1AB015664();
  v38 = a1;
  v39 = a2;

  MEMORY[0x1AC59BA20](0x6575516B726F772ELL, 0xEA00000000006575);
  (*(v18 + 104))(v20, *MEMORY[0x1E69E8098], v17);
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1AB01CA48(&qword_1ED4D1F50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439770);
  sub_1AB033860();
  sub_1AB4614E4();
  v26 = sub_1AB461154();
  (*(v24 + 8))(v31, v23);
  *(v9 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_workQueue) = v26;
  v27 = (v9 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_xpcSessionProviderFactory);
  v28 = v37;
  *v27 = v36;
  v27[1] = v28;
  return v9;
}

uint64_t DaemonSessionImplementation.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[117] = v4;
  v5[116] = a4;
  v5[115] = a3;
  v5[114] = a2;
  v5[113] = a1;
  v7 = sub_1AB4600A4();
  v5[118] = v7;
  v5[119] = *(v7 - 8);
  v5[120] = swift_task_alloc();
  v5[121] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for DaemonResponse();
  v5[122] = v8;
  v5[123] = *(v8 - 8);
  v5[124] = swift_task_alloc();
  v5[125] = swift_task_alloc();
  v9 = sub_1AB45FF84();
  v5[126] = v9;
  v5[127] = *(v9 - 8);
  v5[128] = swift_task_alloc();
  v5[129] = swift_task_alloc();
  v5[130] = *(a3 - 8);
  v5[131] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB1C10E4, v4, 0);
}

uint64_t sub_1AB1C10E4()
{
  v51 = v0;
  v49 = *(*(v0 + 1040) + 16);
  v49(*(v0 + 1048), *(v0 + 912), *(v0 + 920));
  sub_1AB45FF74();
  v1 = sub_1AB45FFA4();
  v2 = sub_1AB461234();
  v3 = sub_1AB461314();
  v4 = *(v0 + 1048);
  v5 = *(v0 + 1040);
  if (v3)
  {
    v6 = *(v0 + 920);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v50 = v8;
    *v7 = 136315138;
    v9 = sub_1AB461C44();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_1AB030D2C(v9, v11, &v50);

    *(v7 + 4) = v12;
    v13 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v1, v2, v13, "DaemonSession.send", "request=%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1AC59F020](v8, -1, -1);
    MEMORY[0x1AC59F020](v7, -1, -1);
  }

  else
  {
    v14 = *(v0 + 920);

    (*(v5 + 8))(v4, v14);
  }

  v15 = *(v0 + 1032);
  v16 = *(v0 + 1016);
  v17 = *(v0 + 1008);
  v18 = *(v0 + 928);
  v19 = *(v0 + 920);
  (*(v16 + 16))(*(v0 + 1024), v15, v17);
  sub_1AB460014();
  swift_allocObject();
  *(v0 + 1056) = sub_1AB460004();
  (*(v16 + 8))(v15, v17);
  v20 = (*(v18 + 96))(v19, v18);
  if ((v21 & 1) != 0 || (v22 = *(v0 + 936), v23 = *(v22 + 112), v23 >= v20))
  {
    if (qword_1EB433A50 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 920);
    v27 = *(v0 + 912);
    *(v0 + 1064) = qword_1EB433A40;
    sub_1AB4622E4();
    v28 = *(v0 + 200);
    v29 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 176), v28);
    *(v0 + 1072) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1AB4D4720;
    v50 = sub_1AB0168A8(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v31._countAndFlagsBits = 0xD00000000000001BLL;
    v31._object = 0x80000001AB501DB0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v31);
    *(v0 + 816) = v26;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 792));
    v49(boxed_opaque_existential_0, v27, v26);
    sub_1AB014A58(v0 + 792, v0 + 728, &unk_1EB437E60);
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    sub_1AB017CC4(v0 + 728, v0 + 336, &unk_1EB437E60);
    *(v0 + 368) = 0;
    v33 = v50;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
    }

    v35 = *(v33 + 2);
    v34 = *(v33 + 3);
    if (v35 >= v34 >> 1)
    {
      v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
    }

    *(v33 + 2) = v35 + 1;
    v36 = &v33[40 * v35];
    v37 = *(v0 + 336);
    v38 = *(v0 + 352);
    v36[64] = *(v0 + 368);
    *(v36 + 2) = v37;
    *(v36 + 3) = v38;
    v50 = v33;
    sub_1AB014AC0(v0 + 792, &unk_1EB437E60);
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v39);
    *(v30 + 32) = v50;
    Logger.debug(_:)(v30, v28, v29);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
    sub_1AB1BFE18(v0 + 56);
    v40 = *(v0 + 936);
    v41 = *(v0 + 912);
    v42 = sub_1AB01CA48(&qword_1EB433AA8, type metadata accessor for DaemonSessionImplementation);
    v43 = swift_task_alloc();
    *(v0 + 1080) = v43;
    *(v43 + 16) = *(v0 + 920);
    *(v43 + 32) = v40;
    *(v43 + 40) = v0 + 56;
    *(v43 + 48) = v41;
    v44 = swift_task_alloc();
    *(v0 + 1088) = v44;
    *v44 = v0;
    v44[1] = sub_1AB1C2120;
    v45 = *(v0 + 992);
    v46 = *(v0 + 976);

    return MEMORY[0x1EEE6DE38](v45, v40, v42, 0x293A5F28646E6573, 0xE800000000000000, sub_1AB1C5DEC, v43, v46);
  }

  else
  {
    v24 = v20;
    type metadata accessor for DaemonError();
    sub_1AB01CA48(qword_1EB432BB8, type metadata accessor for DaemonError);
    swift_allocError();
    *v25 = v24;
    v25[1] = v23;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1AB1C39FC(v22, "DaemonSession.send", 18, 2);

    v47 = *(v0 + 8);

    return v47();
  }
}

uint64_t sub_1AB1C2120()
{
  v2 = *v1;
  *(*v1 + 1096) = v0;

  v3 = *(v2 + 936);

  if (v0)
  {
    v4 = sub_1AB1C2FB8;
  }

  else
  {
    v4 = sub_1AB1C2268;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1AB1C2268()
{
  v1 = *(v0 + 976);
  (*(*(v0 + 984) + 32))(*(v0 + 1000), *(v0 + 992), v1);
  sub_1AB4622E4();
  v2 = *(v0 + 280);
  v93 = *(v0 + 288);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 256), v2);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4D4720;
  v98 = sub_1AB0168A8(0, 36, 0, MEMORY[0x1E69E7CC0]);
  v4._countAndFlagsBits = 0xD000000000000023;
  v4._object = 0x80000001AB501E50;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  v5 = sub_1AB36ED2C(v1);
  *(v0 + 784) = MEMORY[0x1E69E6158];
  *(v0 + 760) = v5;
  *(v0 + 768) = v6;
  sub_1AB014A58(v0 + 760, v0 + 824, &unk_1EB437E60);
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  sub_1AB017CC4(v0 + 824, v0 + 416, &unk_1EB437E60);
  *(v0 + 448) = 0;
  v7 = v98;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1AB0168A8(0, *(v98 + 2) + 1, 1, v98);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = *(v0 + 1096);
  v11 = *(v0 + 976);
  v12 = *(v0 + 904);
  *(v7 + 2) = v9 + 1;
  v13 = &v7[40 * v9];
  v14 = *(v0 + 416);
  v15 = *(v0 + 432);
  v13[64] = *(v0 + 448);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  sub_1AB014AC0(v0 + 760, &unk_1EB437E60);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v3 + 32) = v7;
  Logger.info(_:)(v3, v2, v93);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
  _s9JetEngine14DaemonResponseO3getxyAA0cD12CodableErrorVYKF(v11, (v0 + 16), v12);
  if (!v10)
  {
    v43 = *(v0 + 936);
    (*(*(v0 + 984) + 8))(*(v0 + 1000), *(v0 + 976));
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
    sub_1AB1C39FC(v43, "DaemonSession.send", 18, 2);

    v44 = *(v0 + 8);
    goto LABEL_29;
  }

  v17 = *(v0 + 1000);
  v18 = *(v0 + 984);
  v19 = *(v0 + 976);
  v20 = *(v0 + 48);
  sub_1AB1C5D4C();
  v91 = *(v0 + 32);
  v94 = *(v0 + 16);
  v21 = swift_allocError();
  *v22 = v94;
  *(v22 + 16) = v91;
  *(v22 + 32) = v20;
  (*(v18 + 8))(v17, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  *(v0 + 888) = v21;
  v23 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
  if (swift_dynamicCast())
  {
    v24 = *(v0 + 968);
    v25 = *(v0 + 960);
    v26 = *(v0 + 952);
    v27 = *(v0 + 944);

    (*(v26 + 32))(v25, v24, v27);
    sub_1AB4622E4();
    v92 = *(v0 + 328);
    v95 = *(v0 + 320);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 296), v95);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1AB4D4720;
    v99 = sub_1AB0168A8(0, 24, 0, MEMORY[0x1E69E7CC0]);
    v29._object = 0x80000001AB501E30;
    v29._countAndFlagsBits = 0xD000000000000017;
    LogMessage.StringInterpolation.appendLiteral(_:)(v29);
    *(v0 + 656) = v27;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 632));
    v90 = *(v26 + 16);
    v90(boxed_opaque_existential_0, v25, v27);
    sub_1AB014A58(v0 + 632, v0 + 696, &unk_1EB437E60);
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    sub_1AB017CC4(v0 + 696, v0 + 456, &unk_1EB437E60);
    *(v0 + 488) = 0;
    v31 = v99;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1AB0168A8(0, *(v99 + 2) + 1, 1, v99);
    }

    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_1AB0168A8((v32 > 1), v33 + 1, 1, v31);
    }

    v34 = *(v0 + 960);
    v35 = *(v0 + 952);
    v36 = *(v0 + 944);
    v88 = *(v0 + 936);
    *(v31 + 2) = v33 + 1;
    v37 = &v31[40 * v33];
    v38 = *(v0 + 456);
    v39 = *(v0 + 472);
    v37[64] = *(v0 + 488);
    *(v37 + 2) = v38;
    *(v37 + 3) = v39;
    sub_1AB014AC0(v0 + 632, &unk_1EB437E60);
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v40);
    *(v28 + 32) = v31;
    Logger.error(_:)(v28, v95, v92);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 296);
    type metadata accessor for DaemonError();
    sub_1AB01CA48(qword_1EB432BB8, type metadata accessor for DaemonError);
    swift_allocError();
    v90(v41, v34, v36);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v35 + 8))(v34, v36);
    v42 = *(v0 + 888);
  }

  else
  {

    *(v0 + 880) = v21;
    v45 = v21;
    if (!swift_dynamicCast())
    {

      sub_1AB4622E4();
      v64 = *(v0 + 160);
      v97 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 136), v64);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_1AB4D4720;
      v101 = sub_1AB0168A8(0, 48, 0, MEMORY[0x1E69E7CC0]);
      v66._countAndFlagsBits = 0xD00000000000002FLL;
      v66._object = 0x80000001AB501DD0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v66);
      swift_getErrorValue();
      v67 = *(v0 + 856);
      v68 = *(v0 + 864);
      *(v0 + 688) = v68;
      v69 = __swift_allocate_boxed_opaque_existential_0((v0 + 664));
      (*(*(v68 - 8) + 16))(v69, v67, v68);
      sub_1AB014A58(v0 + 664, v0 + 536, &unk_1EB437E60);
      *(v0 + 376) = 0u;
      *(v0 + 392) = 0u;
      sub_1AB017CC4(v0 + 536, v0 + 376, &unk_1EB437E60);
      *(v0 + 408) = 0;
      v70 = v101;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = sub_1AB0168A8(0, *(v101 + 2) + 1, 1, v101);
      }

      v72 = *(v70 + 2);
      v71 = *(v70 + 3);
      if (v72 >= v71 >> 1)
      {
        v70 = sub_1AB0168A8((v71 > 1), v72 + 1, 1, v70);
      }

      v73 = *(v0 + 936);
      *(v70 + 2) = v72 + 1;
      v74 = &v70[40 * v72];
      v75 = *(v0 + 376);
      v76 = *(v0 + 392);
      v74[64] = *(v0 + 408);
      *(v74 + 2) = v75;
      *(v74 + 3) = v76;
      sub_1AB014AC0(v0 + 664, &unk_1EB437E60);
      v77._countAndFlagsBits = 0;
      v77._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v77);
      *(v65 + 32) = v70;
      Logger.error(_:)(v65, v64, v97);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
      type metadata accessor for DaemonError();
      sub_1AB01CA48(qword_1EB432BB8, type metadata accessor for DaemonError);
      swift_allocError();
      v79 = v78;
      v80 = v21;
      sub_1AB19EFF8(v21, v79);
      swift_willThrow();

      v81 = v73;
      goto LABEL_28;
    }

    v47 = *(v0 + 96);
    v46 = *(v0 + 104);
    v49 = *(v0 + 112);
    v48 = *(v0 + 120);
    v50 = *(v0 + 128);
    sub_1AB4622E4();
    v87 = *(v0 + 248);
    v89 = *(v0 + 240);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 216), v89);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1AB4D4720;
    v100 = sub_1AB0168A8(0, 40, 0, MEMORY[0x1E69E7CC0]);
    v52._countAndFlagsBits = 0xD000000000000027;
    v52._object = 0x80000001AB501E00;
    LogMessage.StringInterpolation.appendLiteral(_:)(v52);
    *(v0 + 592) = &type metadata for DaemonResponseCodableError;
    v53 = swift_allocObject();
    *(v0 + 568) = v53;
    v96 = v47;
    v53[2] = v47;
    v53[3] = v46;
    v53[4] = v49;
    v53[5] = v48;
    v53[6] = v50;
    sub_1AB014A58(v0 + 568, v0 + 600, &unk_1EB437E60);
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;

    sub_1AB017CC4(v0 + 600, v0 + 496, &unk_1EB437E60);
    *(v0 + 528) = 0;
    v54 = v100;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_1AB0168A8(0, *(v100 + 2) + 1, 1, v100);
    }

    v56 = *(v54 + 2);
    v55 = *(v54 + 3);
    if (v56 >= v55 >> 1)
    {
      v54 = sub_1AB0168A8((v55 > 1), v56 + 1, 1, v54);
    }

    *(v54 + 2) = v56 + 1;
    v57 = &v54[40 * v56];
    v58 = *(v0 + 496);
    v59 = *(v0 + 512);
    v57[64] = *(v0 + 528);
    *(v57 + 2) = v58;
    *(v57 + 3) = v59;
    sub_1AB014AC0(v0 + 568, &unk_1EB437E60);
    v60._countAndFlagsBits = 0;
    v60._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v60);
    *(v51 + 32) = v54;
    Logger.error(_:)(v51, v89, v87);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 216);
    v61 = sub_1AB36EF94();
    v88 = *(v0 + 936);
    if (v61)
    {
      v62 = v61;

      type metadata accessor for DaemonError();
      sub_1AB01CA48(qword_1EB432BB8, type metadata accessor for DaemonError);
      swift_allocError();
      *v63 = v62;
    }

    else
    {
      type metadata accessor for DaemonError();
      sub_1AB01CA48(qword_1EB432BB8, type metadata accessor for DaemonError);
      swift_allocError();
      v83 = v82;
      v84 = swift_allocError();
      *v85 = v96;
      v85[1] = v46;
      v85[2] = v49;
      v85[3] = v48;
      v85[4] = v50;
      *v83 = v84;
    }

    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v42 = *(v0 + 880);
  }

  v81 = v88;
LABEL_28:
  sub_1AB1C39FC(v81, "DaemonSession.send", 18, 2);

  v44 = *(v0 + 8);
LABEL_29:

  return v44();
}

uint64_t sub_1AB1C2FB8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  v1 = *(v0 + 1096);
  *(v0 + 888) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 968);
    v4 = *(v0 + 960);
    v5 = *(v0 + 952);
    v6 = *(v0 + 944);

    (*(v5 + 32))(v4, v3, v6);
    sub_1AB4622E4();
    v70 = *(v0 + 328);
    v71 = *(v0 + 320);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 296), v71);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1AB4D4720;
    v74 = sub_1AB0168A8(0, 24, 0, MEMORY[0x1E69E7CC0]);
    v8._object = 0x80000001AB501E30;
    v8._countAndFlagsBits = 0xD000000000000017;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    *(v0 + 656) = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 632));
    v66 = *(v5 + 16);
    v66(boxed_opaque_existential_0, v4, v6);
    sub_1AB014A58(v0 + 632, v0 + 696, &unk_1EB437E60);
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    sub_1AB017CC4(v0 + 696, v0 + 456, &unk_1EB437E60);
    *(v0 + 488) = 0;
    v10 = v74;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1AB0168A8(0, *(v74 + 2) + 1, 1, v74);
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1AB0168A8((v11 > 1), v12 + 1, 1, v10);
    }

    v13 = *(v0 + 960);
    v14 = *(v0 + 952);
    v15 = *(v0 + 944);
    v65 = *(v0 + 936);
    *(v10 + 2) = v12 + 1;
    v16 = &v10[40 * v12];
    v17 = *(v0 + 456);
    v18 = *(v0 + 472);
    v16[64] = *(v0 + 488);
    *(v16 + 2) = v17;
    *(v16 + 3) = v18;
    sub_1AB014AC0(v0 + 632, &unk_1EB437E60);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    *(v7 + 32) = v10;
    Logger.error(_:)(v7, v71, v70);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 296);
    type metadata accessor for DaemonError();
    sub_1AB01CA48(qword_1EB432BB8, type metadata accessor for DaemonError);
    swift_allocError();
    v66(v20, v13, v15);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v14 + 8))(v13, v15);

    v21 = v65;
  }

  else
  {

    *(v0 + 880) = v1;
    v22 = v1;
    if (swift_dynamicCast())
    {
      v72 = (v0 + 880);

      v24 = *(v0 + 96);
      v23 = *(v0 + 104);
      v26 = *(v0 + 112);
      v25 = *(v0 + 120);
      v27 = *(v0 + 128);
      sub_1AB4622E4();
      v67 = *(v0 + 248);
      v68 = *(v0 + 240);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 216), v68);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1AB4D4720;
      v75 = sub_1AB0168A8(0, 40, 0, MEMORY[0x1E69E7CC0]);
      v29._countAndFlagsBits = 0xD000000000000027;
      v29._object = 0x80000001AB501E00;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      *(v0 + 592) = &type metadata for DaemonResponseCodableError;
      v30 = swift_allocObject();
      *(v0 + 568) = v30;
      v30[2] = v24;
      v30[3] = v23;
      v30[4] = v26;
      v30[5] = v25;
      v30[6] = v27;
      sub_1AB014A58(v0 + 568, v0 + 600, &unk_1EB437E60);
      *(v0 + 496) = 0u;
      *(v0 + 512) = 0u;

      sub_1AB017CC4(v0 + 600, v0 + 496, &unk_1EB437E60);
      *(v0 + 528) = 0;
      v31 = v75;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1AB0168A8(0, *(v75 + 2) + 1, 1, v75);
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_1AB0168A8((v32 > 1), v33 + 1, 1, v31);
      }

      *(v31 + 2) = v33 + 1;
      v34 = &v31[40 * v33];
      v35 = *(v0 + 496);
      v36 = *(v0 + 512);
      v34[64] = *(v0 + 528);
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      sub_1AB014AC0(v0 + 568, &unk_1EB437E60);
      v37._countAndFlagsBits = 0;
      v37._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      *(v28 + 32) = v31;
      Logger.error(_:)(v28, v68, v67);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 216);
      v38 = sub_1AB36EF94();
      v39 = *(v0 + 936);
      if (v38)
      {
        v40 = v38;

        type metadata accessor for DaemonError();
        sub_1AB01CA48(qword_1EB432BB8, type metadata accessor for DaemonError);
        swift_allocError();
        *v41 = v40;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v21 = v39;
      }

      else
      {
        type metadata accessor for DaemonError();
        sub_1AB01CA48(qword_1EB432BB8, type metadata accessor for DaemonError);
        swift_allocError();
        v69 = v39;
        v60 = v59;
        sub_1AB1C5D4C();
        v61 = swift_allocError();
        *v62 = v24;
        v62[1] = v23;
        v62[2] = v26;
        v62[3] = v25;
        v62[4] = v27;
        *v60 = v61;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v21 = v69;
      }
    }

    else
    {

      sub_1AB4622E4();
      v42 = *(v0 + 160);
      v73 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 136), v42);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1AB4D4720;
      v76 = sub_1AB0168A8(0, 48, 0, MEMORY[0x1E69E7CC0]);
      v44._countAndFlagsBits = 0xD00000000000002FLL;
      v44._object = 0x80000001AB501DD0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      swift_getErrorValue();
      v45 = *(v0 + 856);
      v46 = *(v0 + 864);
      *(v0 + 688) = v46;
      v47 = __swift_allocate_boxed_opaque_existential_0((v0 + 664));
      (*(*(v46 - 8) + 16))(v47, v45, v46);
      sub_1AB014A58(v0 + 664, v0 + 536, &unk_1EB437E60);
      *(v0 + 376) = 0u;
      *(v0 + 392) = 0u;
      sub_1AB017CC4(v0 + 536, v0 + 376, &unk_1EB437E60);
      *(v0 + 408) = 0;
      v48 = v76;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_1AB0168A8(0, *(v76 + 2) + 1, 1, v76);
      }

      v50 = *(v48 + 2);
      v49 = *(v48 + 3);
      if (v50 >= v49 >> 1)
      {
        v48 = sub_1AB0168A8((v49 > 1), v50 + 1, 1, v48);
      }

      v51 = *(v0 + 936);
      *(v48 + 2) = v50 + 1;
      v52 = &v48[40 * v50];
      v53 = *(v0 + 376);
      v54 = *(v0 + 392);
      v52[64] = *(v0 + 408);
      *(v52 + 2) = v53;
      *(v52 + 3) = v54;
      sub_1AB014AC0(v0 + 664, &unk_1EB437E60);
      v55._countAndFlagsBits = 0;
      v55._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v55);
      *(v43 + 32) = v48;
      Logger.error(_:)(v43, v42, v73);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
      type metadata accessor for DaemonError();
      sub_1AB01CA48(qword_1EB432BB8, type metadata accessor for DaemonError);
      swift_allocError();
      v57 = v56;
      v58 = v1;
      sub_1AB19EFF8(v1, v57);
      swift_willThrow();

      v21 = v51;
    }
  }

  sub_1AB1C39FC(v21, "DaemonSession.send", 18, 2);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_1AB1C39FC(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v21 = a2;
  v5 = sub_1AB45FFD4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1AB45FF84();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1AB45FFA4();
  sub_1AB45FFF4();
  v20 = sub_1AB461224();
  result = sub_1AB461314();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v10 + 8))(v12, v9);
  }

  if ((a4 & 1) == 0)
  {
    v15 = v21;
    if (v21)
    {
LABEL_9:

      sub_1AB460024();

      if ((*(v6 + 88))(v8, v5) == *MEMORY[0x1E69E93E8])
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v13, v20, v18, v15, v16, v17, 2u);
      MEMORY[0x1AC59F020](v17, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v21 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v21 & 0xFFFFF800) != 0xD800)
  {
    if (v21 >> 16 <= 0x10)
    {
      v15 = &v22;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1AB1C3CA4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a4;
  v57 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v56 = &v42 - v10;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v51 = a6;
  swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for DaemonResponse();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
  v52 = v11;
  v59 = sub_1AB460B24();
  v12 = *(v59 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v42 - v17;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = swift_allocObject();
  v58 = v19;
  *(v19 + 16) = 0;
  v42 = v19 + 16;
  *(v19 + 20) = 0;
  v20 = sub_1AB460BE4();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  sub_1AB01494C(a3, &v60);
  v21 = *(v12 + 16);
  v47 = v12 + 16;
  v50 = v21;
  v49 = v18;
  v21(v15, v57, v59);
  v22 = sub_1AB01CA48(&qword_1EB433AA8, type metadata accessor for DaemonSessionImplementation);
  v23 = *(v12 + 80);
  v24 = swift_allocObject();
  v46 = v13;
  v25 = v24;
  v24[2] = a2;
  v24[3] = v22;
  v43 = a5;
  v24[4] = a5;
  v26 = v51;
  v24[5] = v51;
  v24[6] = a2;
  v45 = sub_1AB1C60A0;
  v27 = v58;
  v24[7] = sub_1AB1C60A0;
  v24[8] = v27;
  sub_1AB0149B0(&v60, (v24 + 9));
  v28 = *(v12 + 32);
  v28(v25 + ((v23 + 112) & ~v23), v15, v59);
  swift_retain_n();
  swift_retain_n();
  v29 = sub_1AB2313A4(0, 0, v49, &unk_1AB4DB190, v25);
  v49 = a3[3];
  v44 = a3[4];
  v48 = __swift_project_boxed_opaque_existential_1Tm(a3, v49);
  v30 = v43;
  (*(v26 + 88))(v43, v26);
  v31 = v59;
  v50(v15, v57, v59);
  v32 = (v23 + 56) & ~v23;
  v33 = swift_allocObject();
  v33[2] = v30;
  v33[3] = v26;
  v33[4] = v45;
  v33[5] = v27;
  v33[6] = v29;
  v28(v33 + v32, v15, v31);
  v34 = v44;
  v35 = *(v44 + 8);
  v36 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v38 = v52;
  WitnessTable = swift_getWitnessTable();
  v40 = v56;
  v35(v56, sub_1AB1C6270, v33, v36, v38, AssociatedConformanceWitness, WitnessTable, v49, v34);
  (*(v54 + 8))(v40, v36);
}

uint64_t sub_1AB1C4624(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16));
  v2 = *(a1 + 20);
  if ((v2 & 1) == 0)
  {
    *(a1 + 20) = 1;
  }

  os_unfair_lock_unlock((a1 + 16));
  return v2 ^ 1u;
}

uint64_t sub_1AB1C4668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[62] = v13;
  v8[63] = v14;
  v8[60] = a7;
  v8[61] = a8;
  v8[58] = a5;
  v8[59] = a6;
  v8[57] = a4;
  v10 = sub_1AB4617E4();
  v8[64] = v10;
  v8[65] = *(v10 - 8);
  v8[66] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB1C4740, a4, 0);
}

uint64_t sub_1AB1C4740()
{
  if (qword_1EB433A50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 456);
  *(v0 + 536) = qword_1EB433A40;
  sub_1AB4622E4();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v2);
  *(v0 + 544) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4720;
  v19 = sub_1AB0168A8(0, 49, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001AB502030;
  v5._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v6 = *(v1 + 120);
  *(v0 + 552) = v6;
  *(v0 + 280) = MEMORY[0x1E69E63B0];
  *(v0 + 256) = v6;
  sub_1AB014A58(v0 + 256, v0 + 288, &unk_1EB437E60);
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  sub_1AB017CC4(v0 + 288, v0 + 176, &unk_1EB437E60);
  *(v0 + 208) = 0;
  v7 = v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[40 * v9];
  v11 = *(v0 + 176);
  v12 = *(v0 + 192);
  v10[64] = *(v0 + 208);
  *(v10 + 2) = v11;
  *(v10 + 3) = v12;
  sub_1AB014AC0(v0 + 256, &unk_1EB437E60);
  v13._countAndFlagsBits = 0x73646E6F63657320;
  v13._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  *(v4 + 32) = v7;
  Logger.debug(_:)(v4, v2, v3);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v14 = sub_1AB462284();
  v16 = v15;
  sub_1AB461FF4();
  v17 = swift_task_alloc();
  *(v0 + 560) = v17;
  *v17 = v0;
  v17[1] = sub_1AB1C4A44;

  return sub_1AB23D90C(v14, v16, 0, 0, 1);
}

uint64_t sub_1AB1C4A44()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *(*v1 + 520);
  v5 = *(*v1 + 512);
  *(*v1 + 568) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 456);
  if (v0)
  {
    v7 = sub_1AB1C50B0;
  }

  else
  {
    v7 = sub_1AB1C4BCC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1AB1C4BCC()
{
  v1 = *(v0 + 552);
  sub_1AB4622E4();
  v2 = *(v0 + 120);
  v26 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 96), v2);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4D4720;
  v27 = sub_1AB0168A8(0, 80, 0, MEMORY[0x1E69E7CC0]);
  v4._countAndFlagsBits = 0xD00000000000002BLL;
  v4._object = 0x80000001AB5020B0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  *(v0 + 376) = MEMORY[0x1E69E63B0];
  *(v0 + 352) = v1;
  sub_1AB014A58(v0 + 352, v0 + 384, &unk_1EB437E60);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  sub_1AB017CC4(v0 + 384, v0 + 216, &unk_1EB437E60);
  *(v0 + 248) = 0;
  v5 = v27;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1AB0168A8((v6 > 1), v7 + 1, 1, v5);
  }

  v8 = *(v0 + 464);
  *(v5 + 2) = v7 + 1;
  v9 = &v5[40 * v7];
  v10 = *(v0 + 216);
  v11 = *(v0 + 232);
  v9[64] = *(v0 + 248);
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  sub_1AB014AC0(v0 + 352, &unk_1EB437E60);
  v12._object = 0x80000001AB5020E0;
  v12._countAndFlagsBits = 0xD000000000000024;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  *(v3 + 32) = v5;
  Logger.error(_:)(v3, v2, v26);

  v13 = __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
  if (v8(v13))
  {
    v14 = *(v0 + 552);
    v15 = *(v0 + 480);
    sub_1AB4622E4();
    v16 = *(v0 + 160);
    v17 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 136), v16);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1AB4D4720;
    *(v0 + 440) = MEMORY[0x1E69E6158];
    *(v0 + 416) = 0xD000000000000023;
    *(v0 + 424) = 0x80000001AB502110;
    *(v19 + 48) = 0u;
    *(v19 + 32) = 0u;
    sub_1AB017CC4(v0 + 416, v19 + 32, &unk_1EB437E60);
    *(v19 + 64) = 0;
    *(v18 + 32) = v19;
    Logger.info(_:)(v18, v16, v17);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
    v20 = v15[3];
    v21 = v15[4];
    __swift_project_boxed_opaque_existential_1Tm(v15, v20);
    (*(v21 + 16))(0xD000000000000024, 0x80000001AB502140, v20, v21);
    type metadata accessor for DaemonError();
    sub_1AB01CA48(qword_1EB432BB8, type metadata accessor for DaemonError);
    v22 = swift_allocError();
    *v23 = v14;
    swift_storeEnumTagMultiPayload();
    *(v0 + 448) = v22;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for DaemonResponse();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
    sub_1AB460B24();
    sub_1AB460B04();
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1AB1C50B0()
{
  v1 = v0[71];
  sub_1AB4622E4();
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 7, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  v0[43] = MEMORY[0x1E69E6158];
  v0[40] = 0xD00000000000004BLL;
  v0[41] = 0x80000001AB502060;
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  sub_1AB017CC4((v0 + 40), v5 + 32, &unk_1EB437E60);
  *(v5 + 64) = 0;
  *(v4 + 32) = v5;
  Logger.debug(_:)(v4, v2, v3);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 7));

  v6 = v0[1];

  return v6();
}

uint64_t sub_1AB1C5224(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v42 = a4;
  v45 = a3;
  v46 = a2;
  v44 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v40 = type metadata accessor for DaemonResponse();
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
  v38 = sub_1AB462184();
  v41 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v6 = (&v37 - v5);
  if (qword_1EB433A50 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v7 = v57;
  v8 = v58;
  __swift_project_boxed_opaque_existential_1Tm(v56, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v9 = swift_allocObject();
  v47 = xmmword_1AB4D4720;
  *(v9 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v10 = swift_allocObject();
  *(v10 + 16) = v47;
  *(&v50 + 1) = MEMORY[0x1E69E6158];
  *&v49 = 0xD00000000000002DLL;
  *(&v49 + 1) = 0x80000001AB501F80;
  *(v10 + 48) = 0u;
  *(v10 + 32) = 0u;
  sub_1AB017CC4(&v49, v10 + 32, &unk_1EB437E60);
  *(v10 + 64) = 0;
  *(v9 + 32) = v10;
  Logger.debug(_:)(v9, v7, v8);

  v11 = __swift_destroy_boxed_opaque_existential_1Tm(v56);
  if ((v46(v11) & 1) == 0)
  {
    sub_1AB4622E4();
    v32 = v57;
    v33 = v58;
    __swift_project_boxed_opaque_existential_1Tm(v56, v57);
    v34 = swift_allocObject();
    *(v34 + 16) = v47;
    v35 = swift_allocObject();
    *(v35 + 16) = v47;
    *(&v50 + 1) = MEMORY[0x1E69E6158];
    *&v49 = 0xD000000000000044;
    *(&v49 + 1) = 0x80000001AB501FB0;
    *(v35 + 48) = 0u;
    *(v35 + 32) = 0u;
    sub_1AB017CC4(&v49, v35 + 32, &unk_1EB437E60);
    *(v35 + 64) = 0;
    *(v34 + 32) = v35;
    Logger.debug(_:)(v34, v32, v33);
LABEL_11:

    return __swift_destroy_boxed_opaque_existential_1Tm(v56);
  }

  sub_1AB460CA4();
  v12 = sub_1AB460B24();
  v13 = v44;
  sub_1AB1C58BC(v44, v12);
  v14 = v41;
  v15 = v13;
  v16 = v38;
  (*(v41 + 16))(v6, v15, v38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v6;
    sub_1AB4622E4();
    v18 = v57;
    v19 = v58;
    __swift_project_boxed_opaque_existential_1Tm(v56, v57);
    v20 = swift_allocObject();
    *(v20 + 16) = v47;
    v55 = sub_1AB0168A8(0, 45, 0, MEMORY[0x1E69E7CC0]);
    v21._object = 0x80000001AB502000;
    v21._countAndFlagsBits = 0xD00000000000002CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    swift_getErrorValue();
    v22 = v52;
    v23 = v53;
    v54[3] = v53;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v54);
    (*(*(v23 - 8) + 16))(boxed_opaque_existential_0, v22, v23);
    sub_1AB014A58(v54, v48, &unk_1EB437E60);
    v49 = 0u;
    v50 = 0u;
    sub_1AB017CC4(v48, &v49, &unk_1EB437E60);
    v51 = 0;
    v25 = v55;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1AB0168A8(0, *(v25 + 2) + 1, 1, v25);
      v55 = v25;
    }

    v27 = *(v25 + 2);
    v26 = *(v25 + 3);
    if (v27 >= v26 >> 1)
    {
      v25 = sub_1AB0168A8((v26 > 1), v27 + 1, 1, v25);
    }

    *(v25 + 2) = v27 + 1;
    v28 = &v25[40 * v27];
    v29 = v49;
    v30 = v50;
    v28[64] = v51;
    *(v28 + 2) = v29;
    *(v28 + 3) = v30;
    v55 = v25;
    sub_1AB014AC0(v54, &unk_1EB437E60);
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v31);
    *(v20 + 32) = v55;
    Logger.error(_:)(v20, v18, v19);

    goto LABEL_11;
  }

  return (*(v14 + 8))(v6, v16);
}

uint64_t sub_1AB1C58BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AB462184();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v15, v9);
    return sub_1AB460B04();
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    return sub_1AB460B14();
  }
}

uint64_t DaemonSessionImplementation.deinit()
{

  v1 = OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_signposter;
  v2 = sub_1AB45FFC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1AB014AC0(v0 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_sessionIfValid, &qword_1EB437FE8);

  sub_1AB0177B8(*(v0 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_xpcSessionProviderFactory));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t DaemonSessionImplementation.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_signposter;
  v2 = sub_1AB45FFC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1AB014AC0(v0 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_sessionIfValid, &qword_1EB437FE8);

  sub_1AB0177B8(*(v0 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_xpcSessionProviderFactory));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1AB1C5C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AB027460;

  return DaemonSessionImplementation.send<A>(_:)(a1, a2, a3, a4);
}

unint64_t sub_1AB1C5D4C()
{
  result = qword_1EB432EC8;
  if (!qword_1EB432EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432EC8);
  }

  return result;
}

uint64_t type metadata accessor for DaemonSessionImplementation()
{
  result = qword_1EB433A98;
  if (!qword_1EB433A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of DaemonSession.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1AB027460;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1AB1C5F9C()
{
  result = sub_1AB45FFC4();
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

uint64_t sub_1AB1C60A8(uint64_t a1)
{
  v3 = v2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for DaemonResponse();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
  v4 = *(sub_1AB460B24() - 8);
  v5 = (*(v4 + 80) + 112) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1AB027460;

  return sub_1AB1C4668(a1, v6, v7, v8, v9, v10, (v1 + 9), v1 + v5);
}

uint64_t sub_1AB1C6270(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for DaemonResponse();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
  v3 = *(sub_1AB460B24() - 8);
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_1AB1C5224(a1, v4, v5, v6, v7);
}

uint64_t JSRoute.service.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t JSRoute.function.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t JSRoute.description.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x1AC59BA20](46, 0xE100000000000000);
  MEMORY[0x1AC59BA20](v1, v2);
  return v4;
}

uint64_t static JSRoute.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1AB461DA4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
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

__n128 _JSONObjectDecoder.init(wrapping:with:at:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = *a1;
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t _JSONObjectDecoder.unkeyedContainer()@<X0>(uint64_t *a1@<X8>)
{
  v3 = v2;
  sub_1AB0B9254(v1, v9);
  v6 = *(v1 + 40);
  v5 = *(v1 + 48);
  a1[3] = &type metadata for _JSONObjectUnkeyedDecodingContainer;
  a1[4] = sub_1AB1C692C();
  v7 = swift_allocObject();
  *a1 = v7;

  result = sub_1AB1C663C(v9, v6, v5, (v7 + 16));
  if (v3)
  {
    return __swift_deallocate_boxed_opaque_existential_2(a1);
  }

  return result;
}

uint64_t sub_1AB1C663C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_1AB0BDDF4(0xD00000000000002BLL, 0x80000001AB5021F0, a2);
  if (v8 == 2 || (v8 & 1) == 0)
  {
    sub_1AB01EC0C(a1, &v27);
    v14 = *(&v28 + 1);
    if (*(&v28 + 1))
    {
      v15 = v29;
      __swift_project_boxed_opaque_existential_1Tm(&v27, *(&v28 + 1));
      (v15[19])(&v30, v14, v15);
      __swift_destroy_boxed_opaque_existential_1Tm(&v27);
      v16 = *(&v31 + 1);
      if (*(&v31 + 1))
      {
        result = sub_1AB066D84(a1);
        v17 = *(&v30 + 1);
        v18 = v30;
        v19 = v31;
        v20 = v32;
LABEL_11:
        *a4 = v18;
        a4[1] = v17;
        a4[2] = v19;
        a4[3] = v16;
        a4[4] = v20;
        goto LABEL_12;
      }
    }

    else
    {
      sub_1AB014AC0(&v27, &qword_1EB436BA0);
    }

    v18 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) init];
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438018);
    result = sub_1AB066D84(a1);
    v19 = 0;
    v20 = &off_1F2000AF8;
    v17 = sub_1AB384CF0;
    goto LABEL_11;
  }

  sub_1AB01EC0C(a1, v24);
  v9 = v25;
  if (v25)
  {
    v10 = v26;
    __swift_project_boxed_opaque_existential_1Tm(v24, v25);
    (*(v10 + 152))(&v27, v9, v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    if (*(&v28 + 1))
    {
      result = sub_1AB066D84(a1);
      v12 = v29;
      v32 = v29;
      v13 = v28;
      v30 = v27;
      v31 = v28;
      *a4 = v27;
      *(a4 + 1) = v13;
      a4[4] = v12;
LABEL_12:
      a4[5] = a2;
      a4[6] = a3;
      a4[7] = 0;
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(v24, &qword_1EB436BA0);
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
  }

  sub_1AB014AC0(&v27, &qword_1EB437EF8);
  v21 = sub_1AB4616B4();
  swift_allocError();
  v23 = v22;
  sub_1AB461694();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6B00], v21);
  swift_willThrow();
  return sub_1AB066D84(a1);
}

unint64_t sub_1AB1C692C()
{
  result = qword_1EB432E90;
  if (!qword_1EB432E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432E90);
  }

  return result;
}

uint64_t _JSONObjectDecoder.singleValueContainer()@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for _JSONObjectSingleValueDecodingContainer;
  a1[4] = sub_1AB0BCFE8();
  v3 = swift_allocObject();
  *a1 = v3;
  sub_1AB0B9254(v1, v3 + 16);
  v4 = *(v1 + 48);
  *(v3 + 56) = *(v1 + 40);
  *(v3 + 64) = v4;
}

uint64_t sub_1AB1C6A08@<X0>(uint64_t *a1@<X8>)
{
  v3 = v2;
  sub_1AB0B9254(v1, v9);
  v6 = *(v1 + 40);
  v5 = *(v1 + 48);
  a1[3] = &type metadata for _JSONObjectUnkeyedDecodingContainer;
  a1[4] = sub_1AB1C692C();
  v7 = swift_allocObject();
  *a1 = v7;

  result = sub_1AB1C663C(v9, v6, v5, (v7 + 16));
  if (v3)
  {
    return __swift_deallocate_boxed_opaque_existential_2(a1);
  }

  return result;
}

uint64_t sub_1AB1C6AD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1AB1C6B20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB1C6B80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AB1C6BC8(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_1AB1C6C14()
{
  v1 = v0;
  sub_1AB01EC0C(v0, v11);
  v2 = v12;
  if (!v12)
  {
LABEL_6:
    sub_1AB014AC0(v11, &qword_1EB436BA0);
    goto LABEL_7;
  }

  v3 = v13;
  __swift_project_boxed_opaque_existential_1Tm(v11, v12);
  v4 = (*(v3 + 96))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  if (v4)
  {
    sub_1AB01EC0C(v1, v11);
    v5 = v12;
    if (v12)
    {
      v6 = v13;
      __swift_project_boxed_opaque_existential_1Tm(v11, v12);
      LOBYTE(v7) = (*(v6 + 88))(v5, v6);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      if (v7 != 2)
      {
        return v7 & 1;
      }

      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_7:
  v7 = sub_1AB4616B4();
  swift_allocError();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
  *v9 = MEMORY[0x1E69E6370];

  sub_1AB461694();
  (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6AF8], v7);
  swift_willThrow();
  return v7 & 1;
}

double sub_1AB1C6DE4()
{
  sub_1AB01EC0C(v0, v21);
  v2 = v22;
  if (!v22)
  {
    sub_1AB014AC0(v21, &qword_1EB436BA0);
    goto LABEL_16;
  }

  v3 = v23;
  __swift_project_boxed_opaque_existential_1Tm(v21, v22);
  v4 = (*(v3 + 32))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  if (!v4)
  {
LABEL_16:
    v10 = sub_1AB4616B4();
    swift_allocError();
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
    *v12 = MEMORY[0x1E69E63B0];

    sub_1AB461694();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69E6AF8], v10);
    swift_willThrow();
    return v1;
  }

  if (*MEMORY[0x1E695E4D0])
  {
    v5 = v4 == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v5 = 0;
  }

  if (v5 || (*MEMORY[0x1E695E4C0] ? (v6 = v4 == *MEMORY[0x1E695E4C0]) : (v6 = 0), v6))
  {

    goto LABEL_16;
  }

  v21[0] = v4;
  v7 = v4;
  swift_getAtKeyPath();

  v1 = v24;
  v8 = sub_1AB460DE4();
  sub_1AB083ACC();
  v9 = v7;
  LOBYTE(v7) = sub_1AB4612C4();

  if ((v7 & 1) == 0)
  {
    v14 = sub_1AB4616B4();
    swift_allocError();
    v16 = v15;
    v21[0] = 0;
    v21[1] = 0xE000000000000000;

    sub_1AB4615D4();

    strcpy(v21, "Parsed number ");
    HIBYTE(v21[1]) = -18;
    v17 = [v9 description];
    v18 = sub_1AB460544();
    v20 = v19;

    MEMORY[0x1AC59BA20](v18, v20);

    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB5022E0);
    MEMORY[0x1AC59BA20](0x656C62756F44, 0xE600000000000000);
    sub_1AB461694();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6B00], v14);
    swift_willThrow();
  }

  return v1;
}

float sub_1AB1C7158()
{
  sub_1AB01EC0C(v0, v21);
  v2 = v22;
  if (!v22)
  {
    sub_1AB014AC0(v21, &qword_1EB436BA0);
    goto LABEL_16;
  }

  v3 = v23;
  __swift_project_boxed_opaque_existential_1Tm(v21, v22);
  v4 = (*(v3 + 32))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  if (!v4)
  {
LABEL_16:
    v10 = sub_1AB4616B4();
    swift_allocError();
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
    *v12 = MEMORY[0x1E69E6448];

    sub_1AB461694();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69E6AF8], v10);
    swift_willThrow();
    return v1;
  }

  if (*MEMORY[0x1E695E4D0])
  {
    v5 = v4 == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v5 = 0;
  }

  if (v5 || (*MEMORY[0x1E695E4C0] ? (v6 = v4 == *MEMORY[0x1E695E4C0]) : (v6 = 0), v6))
  {

    goto LABEL_16;
  }

  v21[0] = v4;
  v7 = v4;
  swift_getAtKeyPath();

  v1 = v24;
  v8 = sub_1AB460E24();
  sub_1AB083ACC();
  v9 = v7;
  LOBYTE(v7) = sub_1AB4612C4();

  if ((v7 & 1) == 0)
  {
    v14 = sub_1AB4616B4();
    swift_allocError();
    v16 = v15;
    v21[0] = 0;
    v21[1] = 0xE000000000000000;

    sub_1AB4615D4();

    strcpy(v21, "Parsed number ");
    HIBYTE(v21[1]) = -18;
    v17 = [v9 description];
    v18 = sub_1AB460544();
    v20 = v19;

    MEMORY[0x1AC59BA20](v18, v20);

    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB5022E0);
    MEMORY[0x1AC59BA20](0x74616F6C46, 0xE500000000000000);
    sub_1AB461694();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6B00], v14);
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1AB1C74CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  sub_1AB01EC0C(v6, v31);
  v12 = v32;
  if (!v32)
  {
    sub_1AB014AC0(v31, &qword_1EB436BA0);
    goto LABEL_16;
  }

  v30 = a6;
  v13 = v33;
  __swift_project_boxed_opaque_existential_1Tm(v31, v32);
  v14 = (*(v13 + 32))(v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  if (!v14)
  {
LABEL_16:
    v20 = sub_1AB4616B4();
    swift_allocError();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
    *v22 = a3;

    sub_1AB461694();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    return a1;
  }

  if (*MEMORY[0x1E695E4D0])
  {
    v15 = v14 == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v15 = 0;
  }

  if (v15 || (*MEMORY[0x1E695E4C0] ? (v16 = v14 == *MEMORY[0x1E695E4C0]) : (v16 = 0), v16))
  {

    goto LABEL_16;
  }

  v31[0] = v14;
  v17 = v14;
  swift_getAtKeyPath();

  a1 = v34;
  v18 = a4(v34);
  sub_1AB083ACC();
  v19 = v17;
  LOBYTE(v17) = sub_1AB4612C4();

  if ((v17 & 1) == 0)
  {
    v24 = sub_1AB4616B4();
    swift_allocError();
    a1 = v25;
    v31[0] = 0;
    v31[1] = 0xE000000000000000;

    sub_1AB4615D4();

    strcpy(v31, "Parsed number ");
    HIBYTE(v31[1]) = -18;
    v26 = [v19 description];
    v27 = sub_1AB460544();
    v29 = v28;

    MEMORY[0x1AC59BA20](v27, v29);

    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB5022E0);
    MEMORY[0x1AC59BA20](a5, v30);
    sub_1AB461694();
    (*(*(v24 - 8) + 104))(a1, *MEMORY[0x1E69E6B00], v24);
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1AB1C7848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  sub_1AB01EC0C(v6, v31);
  v12 = v32;
  if (!v32)
  {
    sub_1AB014AC0(v31, &qword_1EB436BA0);
    goto LABEL_16;
  }

  v30 = a6;
  v13 = v33;
  __swift_project_boxed_opaque_existential_1Tm(v31, v32);
  v14 = (*(v13 + 32))(v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  if (!v14)
  {
LABEL_16:
    v20 = sub_1AB4616B4();
    swift_allocError();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
    *v22 = a3;

    sub_1AB461694();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    return a1;
  }

  if (*MEMORY[0x1E695E4D0])
  {
    v15 = v14 == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v15 = 0;
  }

  if (v15 || (*MEMORY[0x1E695E4C0] ? (v16 = v14 == *MEMORY[0x1E695E4C0]) : (v16 = 0), v16))
  {

    goto LABEL_16;
  }

  v31[0] = v14;
  v17 = v14;
  swift_getAtKeyPath();

  a1 = v34;
  v18 = a4(v34);
  sub_1AB083ACC();
  v19 = v17;
  LOBYTE(v17) = sub_1AB4612C4();

  if ((v17 & 1) == 0)
  {
    v24 = sub_1AB4616B4();
    swift_allocError();
    a1 = v25;
    v31[0] = 0;
    v31[1] = 0xE000000000000000;

    sub_1AB4615D4();

    strcpy(v31, "Parsed number ");
    HIBYTE(v31[1]) = -18;
    v26 = [v19 description];
    v27 = sub_1AB460544();
    v29 = v28;

    MEMORY[0x1AC59BA20](v27, v29);

    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB5022E0);
    MEMORY[0x1AC59BA20](a5, v30);
    sub_1AB461694();
    (*(*(v24 - 8) + 104))(a1, *MEMORY[0x1E69E6B00], v24);
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1AB1C7BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  sub_1AB01EC0C(v6, v31);
  v12 = v32;
  if (!v32)
  {
    sub_1AB014AC0(v31, &qword_1EB436BA0);
    goto LABEL_16;
  }

  v30 = a6;
  v13 = v33;
  __swift_project_boxed_opaque_existential_1Tm(v31, v32);
  v14 = (*(v13 + 32))(v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  if (!v14)
  {
LABEL_16:
    v20 = sub_1AB4616B4();
    swift_allocError();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
    *v22 = a3;

    sub_1AB461694();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    return a1;
  }

  if (*MEMORY[0x1E695E4D0])
  {
    v15 = v14 == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v15 = 0;
  }

  if (v15 || (*MEMORY[0x1E695E4C0] ? (v16 = v14 == *MEMORY[0x1E695E4C0]) : (v16 = 0), v16))
  {

    goto LABEL_16;
  }

  v31[0] = v14;
  v17 = v14;
  swift_getAtKeyPath();

  a1 = v34;
  v18 = a4(v34);
  sub_1AB083ACC();
  v19 = v17;
  LOBYTE(v17) = sub_1AB4612C4();

  if ((v17 & 1) == 0)
  {
    v24 = sub_1AB4616B4();
    swift_allocError();
    a1 = v25;
    v31[0] = 0;
    v31[1] = 0xE000000000000000;

    sub_1AB4615D4();

    strcpy(v31, "Parsed number ");
    HIBYTE(v31[1]) = -18;
    v26 = [v19 description];
    v27 = sub_1AB460544();
    v29 = v28;

    MEMORY[0x1AC59BA20](v27, v29);

    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB5022E0);
    MEMORY[0x1AC59BA20](a5, v30);
    sub_1AB461694();
    (*(*(v24 - 8) + 104))(a1, *MEMORY[0x1E69E6B00], v24);
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1AB1C7F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  sub_1AB01EC0C(v6, v31);
  v12 = v32;
  if (!v32)
  {
    sub_1AB014AC0(v31, &qword_1EB436BA0);
    goto LABEL_16;
  }

  v30 = a6;
  v13 = v33;
  __swift_project_boxed_opaque_existential_1Tm(v31, v32);
  v14 = (*(v13 + 32))(v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  if (!v14)
  {
LABEL_16:
    v20 = sub_1AB4616B4();
    swift_allocError();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
    *v22 = a3;

    sub_1AB461694();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    return a1;
  }

  if (*MEMORY[0x1E695E4D0])
  {
    v15 = v14 == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v15 = 0;
  }

  if (v15 || (*MEMORY[0x1E695E4C0] ? (v16 = v14 == *MEMORY[0x1E695E4C0]) : (v16 = 0), v16))
  {

    goto LABEL_16;
  }

  v31[0] = v14;
  v17 = v14;
  swift_getAtKeyPath();

  a1 = v34;
  v18 = a4(v34);
  sub_1AB083ACC();
  v19 = v17;
  LOBYTE(v17) = sub_1AB4612C4();

  if ((v17 & 1) == 0)
  {
    v24 = sub_1AB4616B4();
    swift_allocError();
    a1 = v25;
    v31[0] = 0;
    v31[1] = 0xE000000000000000;

    sub_1AB4615D4();

    strcpy(v31, "Parsed number ");
    HIBYTE(v31[1]) = -18;
    v26 = [v19 description];
    v27 = sub_1AB460544();
    v29 = v28;

    MEMORY[0x1AC59BA20](v27, v29);

    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB5022E0);
    MEMORY[0x1AC59BA20](a5, v30);
    sub_1AB461694();
    (*(*(v24 - 8) + 104))(a1, *MEMORY[0x1E69E6B00], v24);
    swift_willThrow();
  }

  return a1;
}

double sub_1AB1C82BC()
{
  swift_getKeyPath();
  v0 = sub_1AB1C6DE4();

  return v0;
}

float sub_1AB1C8318()
{
  swift_getKeyPath();
  v0 = sub_1AB1C7158();

  return v0;
}

uint64_t sub_1AB1C8374()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1AB1C74CC(KeyPath, *(v0 + 48), MEMORY[0x1E69E6530], MEMORY[0x1E6969E50], 7630409, 0xE300000000000000);

  return v2;
}

uint64_t sub_1AB1C83F8()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1AB1C7848(KeyPath, *(v0 + 48), MEMORY[0x1E69E7230], MEMORY[0x1E696A0C0], 947154505, 0xE400000000000000);

  return v2;
}

uint64_t sub_1AB1C847C()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1AB1C7BC4(KeyPath, *(v0 + 48), MEMORY[0x1E69E7290], MEMORY[0x1E696A0C8], 0x3631746E49, 0xE500000000000000);

  return v2;
}

uint64_t sub_1AB1C8504()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1AB1C7F40(KeyPath, *(v0 + 48), MEMORY[0x1E69E72F0], MEMORY[0x1E696A0D8], 0x3233746E49, 0xE500000000000000);

  return v2;
}

uint64_t sub_1AB1C858C()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1AB1C74CC(KeyPath, *(v0 + 48), MEMORY[0x1E69E7360], MEMORY[0x1E696A100], 0x3436746E49, 0xE500000000000000);

  return v2;
}

uint64_t sub_1AB1C862C()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1AB1C74CC(KeyPath, *(v0 + 48), MEMORY[0x1E69E6810], MEMORY[0x1E696A038], 1953384789, 0xE400000000000000);

  return v2;
}

uint64_t sub_1AB1C86B0()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1AB1C7848(KeyPath, *(v0 + 48), MEMORY[0x1E69E7508], MEMORY[0x1E696A120], 0x38746E4955, 0xE500000000000000);

  return v2;
}

uint64_t sub_1AB1C8738()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1AB1C7BC4(KeyPath, *(v0 + 48), MEMORY[0x1E69E75F8], MEMORY[0x1E696A128], 0x3631746E4955, 0xE600000000000000);

  return v2;
}

uint64_t sub_1AB1C87C0()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1AB1C7F40(KeyPath, *(v0 + 48), MEMORY[0x1E69E7668], MEMORY[0x1E696A130], 0x3233746E4955, 0xE600000000000000);

  return v2;
}

uint64_t sub_1AB1C8848()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1AB1C74CC(KeyPath, *(v0 + 48), MEMORY[0x1E69E76D8], MEMORY[0x1E696A140], 0x3436746E4955, 0xE600000000000000);

  return v2;
}

uint64_t sub_1AB1C88E8()
{
  v1 = v0;
  sub_1AB01EC0C(v0, v11);
  v2 = v12;
  if (!v12)
  {
    sub_1AB014AC0(v11, &qword_1EB436BA0);
    return sub_1AB4609A4();
  }

  v3 = v13;
  __swift_project_boxed_opaque_existential_1Tm(v11, v12);
  v4 = (*(v3 + 104))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  if ((v4 & 1) == 0)
  {
    return sub_1AB4609A4();
  }

  sub_1AB01EC0C(v1, v11);
  v5 = v12;
  if (v12)
  {
    v6 = v13;
    __swift_project_boxed_opaque_existential_1Tm(v11, v12);
    v7 = (*(v6 + 112))(v5, v6);
    v8 = __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    v8 = sub_1AB014AC0(v11, &qword_1EB436BA0);
    v7 = MEMORY[0x1E69E7CC0];
  }

  v11[0] = v7;
  MEMORY[0x1EEE9AC00](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  sub_1AB1CC6E4();
  v10 = sub_1AB460814();

  return v10;
}

uint64_t sub_1AB1C8AAC()
{
  v0 = sub_1AB462294();
  JSONObject.subscript.getter(v0, v1, v10);

  sub_1AB01EC0C(v10, v7);
  v2 = v8;
  if (v8)
  {
    v3 = v9;
    __swift_project_boxed_opaque_existential_1Tm(v7, v8);
    v4 = (*(v3 + 128))(v2, v3);
    sub_1AB066D84(v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    v5 = v4 ^ 1;
  }

  else
  {
    sub_1AB066D84(v10);
    sub_1AB014AC0(v7, &qword_1EB436BA0);
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1AB1C8B8C()
{
  v0 = sub_1AB462294();
  JSONObject.subscript.getter(v0, v1, v9);

  sub_1AB01EC0C(v9, v6);
  v2 = v7;
  if (v7)
  {
    v3 = v8;
    __swift_project_boxed_opaque_existential_1Tm(v6, v7);
    v4 = (*(v3 + 128))(v2, v3);
    sub_1AB066D84(v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
    sub_1AB066D84(v9);
    sub_1AB014AC0(v6, &qword_1EB436BA0);
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t sub_1AB1C8C70(uint64_t a1, uint64_t a2)
{
  sub_1AB0BBD60(a1, sub_1AB1C8CC8, 0, a2);
  if (!v2)
  {
    v3 = v5;
  }

  return v3 & 1;
}

uint64_t sub_1AB1C8CC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB1C6C14();
  if (!v1)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_1AB1C8D00(uint64_t a1, uint64_t a2)
{
  result = sub_1AB0BBD60(a1, sub_1AB1C8D54, 0, a2);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1AB1C8D54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AB01EC0C(a1, v12);
  v3 = v13;
  if (v13)
  {
    v4 = v14;
    __swift_project_boxed_opaque_existential_1Tm(v12, v13);
    v5 = (*(v4 + 24))(v3, v4);
    v7 = v6;
    result = __swift_destroy_boxed_opaque_existential_1Tm(v12);
    if (v7)
    {
      *a2 = v5;
      a2[1] = v7;
      return result;
    }
  }

  else
  {
    sub_1AB014AC0(v12, &qword_1EB436BA0);
  }

  v9 = sub_1AB4616B4();
  swift_allocError();
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
  *v11 = MEMORY[0x1E69E6158];

  sub_1AB461694();
  (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69E6AF8], v9);
  return swift_willThrow();
}

double sub_1AB1C8EC8(uint64_t a1, uint64_t a2)
{
  sub_1AB0BBD60(a1, sub_1AB1C8F1C, 0, a2);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1AB1C8F1C@<X0>(double *a1@<X8>)
{
  swift_getKeyPath();
  v3 = sub_1AB1C6DE4();

  if (!v1)
  {
    *a1 = v3;
  }

  return result;
}

float sub_1AB1C8F9C(uint64_t a1, uint64_t a2)
{
  sub_1AB0BBD60(a1, sub_1AB1C8FF0, 0, a2);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1AB1C8FF0@<X0>(float *a1@<X8>)
{
  swift_getKeyPath();
  v3 = sub_1AB1C7158();

  if (!v1)
  {
    *a1 = v3;
  }

  return result;
}

uint64_t sub_1AB1C9070@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1AB1C74CC(KeyPath, a1, MEMORY[0x1E69E6530], MEMORY[0x1E6969E50], 7630409, 0xE300000000000000);

  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1AB1C9110@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1AB1C7848(KeyPath, a1, MEMORY[0x1E69E7230], MEMORY[0x1E696A0C0], 947154505, 0xE400000000000000);

  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1AB1C91B0@<X0>(uint64_t a1@<X1>, _WORD *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1AB1C7BC4(KeyPath, a1, MEMORY[0x1E69E7290], MEMORY[0x1E696A0C8], 0x3631746E49, 0xE500000000000000);

  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1AB1C9254@<X0>(uint64_t a1@<X1>, _DWORD *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1AB1C7F40(KeyPath, a1, MEMORY[0x1E69E72F0], MEMORY[0x1E696A0D8], 0x3233746E49, 0xE500000000000000);

  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1AB1C92F8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1AB1C74CC(KeyPath, a1, MEMORY[0x1E69E7360], MEMORY[0x1E696A100], 0x3436746E49, 0xE500000000000000);

  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1AB1C939C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1AB1C74CC(KeyPath, a1, MEMORY[0x1E69E6810], MEMORY[0x1E696A038], 1953384789, 0xE400000000000000);

  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1AB1C943C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, void *))
{
  result = sub_1AB0BBD60(a1, a3, 0, a2);
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1AB1C947C@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1AB1C7848(KeyPath, a1, MEMORY[0x1E69E7508], MEMORY[0x1E696A120], 0x38746E4955, 0xE500000000000000);

  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1AB1C9520(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, void *))
{
  result = sub_1AB0BBD60(a1, a3, 0, a2);
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1AB1C9560@<X0>(uint64_t a1@<X1>, _WORD *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1AB1C7BC4(KeyPath, a1, MEMORY[0x1E69E75F8], MEMORY[0x1E696A128], 0x3631746E4955, 0xE600000000000000);

  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1AB1C9604(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, void *))
{
  result = sub_1AB0BBD60(a1, a3, 0, a2);
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1AB1C9644@<X0>(uint64_t a1@<X1>, _DWORD *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1AB1C7F40(KeyPath, a1, MEMORY[0x1E69E7668], MEMORY[0x1E696A130], 0x3233746E4955, 0xE600000000000000);

  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1AB1C96E8(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, void *))
{
  result = sub_1AB0BBD60(a1, a3, 0, a2);
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1AB1C9728@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1AB1C74CC(KeyPath, a1, MEMORY[0x1E69E76D8], MEMORY[0x1E696A140], 0x3436746E4955, 0xE600000000000000);

  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1AB1C97CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 + 24);
  v9[2] = *(a3 + 16);
  v9[3] = a4;
  v9[4] = v7;
  v9[5] = a5;
  v9[7] = a1;
  sub_1AB461B04();
  return sub_1AB0BBD60(a2, sub_1AB1CC5C4, v9, a3);
}

uint64_t sub_1AB1C9858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v13 = a1;
  sub_1AB01EC0C(a1, v25);
  v14 = v26;
  if (v26)
  {
    v28 = v13;
    v15 = v27;
    __swift_project_boxed_opaque_existential_1Tm(v25, v26);
    v9 = v8;
    v13 = v28;
    v16 = (*(v15 + 128))(v14, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    if ((v16 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1AB014AC0(v25, &qword_1EB436BA0);
  }

  v17 = sub_1AB0BDDF4(0xD00000000000002BLL, 0x80000001AB5021F0, *(a3 + 40));
  if (v17 != 2 && (v17 & 1) != 0)
  {
    v18 = sub_1AB4616B4();
    swift_allocError();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
    *v20 = a4;

    sub_1AB461694();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69E6B08], v18);
    return swift_willThrow();
  }

LABEL_8:
  sub_1AB0B9254(v13, v24);
  v22 = *(a3 + 40);

  result = sub_1AB0BBAE0(v24, v22, a2, a8, v25);
  if (!v9)
  {
    type metadata accessor for _JSONObjectKeyedDecodingContainer();
    swift_getWitnessTable();
    return sub_1AB461B14();
  }

  return result;
}

uint64_t sub_1AB1C9AE8(uint64_t a1, uint64_t a2)
{
  v5[1] = *(a2 + 16);
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438008);
  return sub_1AB0BBD60(a1, sub_1AB1CC5A4, v5, a2);
}

uint64_t sub_1AB1C9B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v29 = a4;
  v8 = v7;
  sub_1AB01EC0C(a1, v26);
  v14 = v27;
  if (v27)
  {
    v15 = v28;
    __swift_project_boxed_opaque_existential_1Tm(v26, v27);
    v16 = (*(v15 + 128))(v14, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    if ((v16 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1AB014AC0(v26, &qword_1EB436BA0);
  }

  v17 = sub_1AB0BDDF4(0xD00000000000002BLL, 0x80000001AB5021F0, *(a3 + 40));
  if (v17 != 2 && (v17 & 1) != 0)
  {
    v18 = sub_1AB4616B4();
    swift_allocError();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438010);
    v20[3] = a5;
    v20[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, v29, a5);

    sub_1AB461694();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69E6AF0], v18);
    return swift_willThrow();
  }

LABEL_8:
  sub_1AB0B9254(a1, v26);
  v23 = *(a3 + 40);
  a7[3] = &type metadata for _JSONObjectUnkeyedDecodingContainer;
  a7[4] = sub_1AB1C692C();
  v24 = swift_allocObject();
  *a7 = v24;

  result = sub_1AB1C663C(v26, v23, a2, (v24 + 16));
  if (v8)
  {
    return __swift_deallocate_boxed_opaque_existential_2(a7);
  }

  return result;
}

uint64_t sub_1AB1C9DE4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  JSONObject.subscript.getter(0x7265707573, 0xE500000000000000, v19);
  v4 = sub_1AB1F3034(0x7265707573, 0xE500000000000000, 1, *(v1 + 48));
  sub_1AB01EC0C(v19, v16);
  v5 = v17;
  if (v17)
  {
    v6 = v18;
    __swift_project_boxed_opaque_existential_1Tm(v16, v17);
    v7 = (*(v6 + 128))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1AB014AC0(v16, &qword_1EB436BA0);
  }

  v8 = sub_1AB0BDDF4(0xD00000000000002BLL, 0x80000001AB5021F0, *(v2 + 40));
  if (v8 != 2 && (v8 & 1) != 0)
  {
    v9 = sub_1AB4616B4();
    swift_allocError();
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
    *v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438000);
    sub_1AB461694();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69E6B08], v9);
    swift_willThrow();
    return sub_1AB066D84(v19);
  }

LABEL_8:
  a1[3] = &type metadata for _JSONObjectDecoder;
  a1[4] = sub_1AB0BB6F8();
  v13 = swift_allocObject();
  *a1 = v13;
  v14 = v19[1];
  *(v13 + 16) = v19[0];
  *(v13 + 32) = v14;
  v15 = *(v2 + 40);
  *(v13 + 48) = v20;
  *(v13 + 56) = v15;
  *(v13 + 64) = v4;
}

uint64_t sub_1AB1CA028(uint64_t a1, uint64_t a2)
{
  v5[1] = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438000);
  return sub_1AB0BBD60(a1, sub_1AB1CC584, v5, a2);
}

uint64_t sub_1AB1CA0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1AB01EC0C(a1, v17);
  v8 = v18;
  if (v18)
  {
    v9 = v19;
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    v10 = (*(v9 + 128))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    if ((v10 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1AB014AC0(v17, &qword_1EB436BA0);
  }

  v11 = sub_1AB0BDDF4(0xD00000000000002BLL, 0x80000001AB5021F0, *(a3 + 40));
  if (v11 != 2 && (v11 & 1) != 0)
  {
    v12 = sub_1AB4616B4();
    swift_allocError();
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
    *v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438000);

    sub_1AB461694();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x1E69E6B08], v12);
    return swift_willThrow();
  }

LABEL_8:
  a4[3] = &type metadata for _JSONObjectDecoder;
  a4[4] = sub_1AB0BB6F8();
  v16 = swift_allocObject();
  *a4 = v16;
  sub_1AB0B9254(a1, v16 + 16);
  *(v16 + 56) = *(a3 + 40);
  *(v16 + 64) = a2;
}

uint64_t sub_1AB1CA5B4()
{
  result = sub_1AB461ED4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AB1CA604()
{
  result = sub_1AB461EE4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AB1CA6AC()
{
  result = sub_1AB461F14();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AB1CA6FC()
{
  result = sub_1AB461EF4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AB1CA83C()
{
  result = sub_1AB461F24();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AB1CA88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

void *sub_1AB1CA954()
{
  v1 = *(v0 + 56);
  v2 = sub_1AB1F3034(v1, 0, 0, *(v0 + 48));
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1Tm(v0, v3);
  if (v1 >= (*(v4 + 16))(v3, v4))
  {
    v7 = sub_1AB4616B4();
    swift_allocError();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
    *v9 = MEMORY[0x1E69E7CA0] + 8;
    sub_1AB461694();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B08], v7);
    swift_willThrow();
  }

  else
  {
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
    __swift_project_boxed_opaque_existential_1Tm(v0, v5);
    (*(v6 + 24))(v1, v5, v6);
  }

  return v2;
}

uint64_t sub_1AB1CAAE4()
{
  v1 = v0;
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1Tm(v0, v3);
  if (v2 >= (*(v4 + 16))(v3, v4))
  {
    sub_1AB1F3034(v2, 0, 0, *(v0 + 48));
    v11 = sub_1AB4616B4();
    swift_allocError();
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
    *v13 = MEMORY[0x1E69E7CA0] + 8;
    sub_1AB461694();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6B08], v11);
    swift_willThrow();
    return v10 & 1;
  }

  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1Tm(v0, v5);
  (*(v6 + 24))(v18, v2, v5, v6);
  sub_1AB01EC0C(v18, v15);
  v7 = v16;
  if (!v16)
  {
    sub_1AB066D84(v18);
    sub_1AB014AC0(v15, &qword_1EB436BA0);
    goto LABEL_7;
  }

  v8 = v17;
  __swift_project_boxed_opaque_existential_1Tm(v15, v16);
  v9 = (*(v8 + 128))(v7, v8);
  sub_1AB066D84(v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  if (v9)
  {
LABEL_7:
    *(v1 + 56) = v2 + 1;
    v10 = 1;
    return v10 & 1;
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1AB1CAD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v77 = a1;
  v78 = a4;
  v79 = *(a2 - 8);
  v80 = a3;
  MEMORY[0x1EEE9AC00](a1);
  v75 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  MEMORY[0x1EEE9AC00](v74);
  v8 = v66 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v66 - v10;
  v12 = sub_1AB461354();
  v76 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v66 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v66 - v19;
  v21 = v90;
  result = sub_1AB1CA954();
  if (v21)
  {
    return result;
  }

  v72 = v20;
  v66[1] = v11;
  v67 = v18;
  v68 = v15;
  v69 = v8;
  v70 = v12;
  v90 = v4;
  v73 = result;
  v71 = 0;
  sub_1AB01EC0C(v89, v84);
  v23 = v85;
  if (v85)
  {
    v24 = v86;
    __swift_project_boxed_opaque_existential_1Tm(v84, v85);
    v25 = (*(v24 + 128))(v23, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
    if ((v25 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1AB014AC0(v84, &qword_1EB436BA0);
  }

  v26 = sub_1AB0BDDF4(0xD00000000000002BLL, 0x80000001AB5021F0, *(v90 + 5));
  if (v26 != 2 && (v26 & 1) != 0)
  {

    v27 = sub_1AB4616B4();
    swift_allocError();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
    *v29 = v77;

    sub_1AB461694();
    v30 = MEMORY[0x1E69E6B08];
    goto LABEL_34;
  }

LABEL_9:
  sub_1AB0B9254(v89, v84);
  v31 = v72;
  v32 = a2;
  if (swift_dynamicCast())
  {
    sub_1AB066D84(v89);

    v33 = v79;
    (*(v79 + 56))(v31, 0, 1, a2);
    result = (*(v33 + 32))(v78, v31, a2);
    v34 = v90;
    v35 = *(v90 + 7);
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (!v36)
    {
LABEL_11:
      *(v34 + 7) = v37;
      return result;
    }

    __break(1u);
    goto LABEL_37;
  }

  v80 = *(v79 + 56);
  v80(v31, 1, 1, a2);
  v38 = v76 + 8;
  v39 = v70;
  v76 = *(v76 + 8);
  (v76)(v31, v70);
  v40 = sub_1AB45F764();
  v41 = v77;
  v42 = v90;
  if (v40 == v77)
  {
    v47 = v40;
    sub_1AB01EC0C(v89, v84);
    v48 = v85;
    if (v85)
    {
      v32 = v38;
      v39 = v86;
      __swift_project_boxed_opaque_existential_1Tm(v84, v85);
      (*(v39 + 24))(v48, v39);
      v50 = v49;
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      if (v50)
      {
        sub_1AB45F714();

        v42 = v67;
        if (swift_dynamicCast())
        {
          sub_1AB066D84(v89);

          v80(v42, 0, 1, a2);
          result = (*(v79 + 32))(v78, v42, a2);
          v34 = v90;
          v51 = *(v90 + 7);
          v36 = __OFADD__(v51, 1);
          v37 = v51 + 1;
          if (!v36)
          {
            goto LABEL_11;
          }

          __break(1u);
          goto LABEL_24;
        }

        v80(v42, 1, 1, a2);
        (v76)(v42, v70);
        v27 = sub_1AB4616B4();
        swift_allocError();
        v29 = v65;
        sub_1AB461694();
        v30 = MEMORY[0x1E69E6B00];
LABEL_34:
        (*(*(v27 - 8) + 104))(v29, *v30, v27);
        swift_willThrow();
        return sub_1AB066D84(v89);
      }
    }

    else
    {
      sub_1AB014AC0(v84, &qword_1EB436BA0);
    }

    v27 = sub_1AB4616B4();
    swift_allocError();
    v29 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
    *v29 = v47;
    sub_1AB461694();
    v30 = MEMORY[0x1E69E6AF8];
    goto LABEL_34;
  }

  result = sub_1AB45F9B4();
  if (result == v41)
  {
LABEL_24:
    v52 = result;
    sub_1AB01EC0C(v89, v84);
    v53 = v85;
    if (v85)
    {
      v54 = v86;
      __swift_project_boxed_opaque_existential_1Tm(v84, v85);
      v55 = *(v54 + 144);
      v56 = v54;
      v42 = v90;
      v55(v53, v56);
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
    }

    else
    {
      sub_1AB014AC0(v84, &qword_1EB436BA0);
      (*(*(v52 - 8) + 56))(v69, 1, 1, v52);
    }

    v58 = v78;
    v59 = v68;
    if (!swift_dynamicCast())
    {
      v80(v59, 1, 1, v32);
      (v76)(v59, v39);
      v62 = sub_1AB4616B4();
      swift_allocError();
      v64 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
      *v64 = v52;
      sub_1AB461694();
      (*(*(v62 - 8) + 104))(v64, *MEMORY[0x1E69E6AF8], v62);
      swift_willThrow();
      return sub_1AB066D84(v89);
    }

    sub_1AB066D84(v89);

    v80(v59, 0, 1, v32);
    result = (*(v79 + 32))(v58, v59, v32);
    v60 = *(v42 + 7);
    v36 = __OFADD__(v60, 1);
    v61 = v60 + 1;
    if (!v36)
    {
      *(v42 + 7) = v61;
      return result;
    }

    goto LABEL_38;
  }

  sub_1AB0B9254(v89, v84);
  v87 = *(v42 + 5);
  v88 = v73;
  v82 = &type metadata for _JSONObjectDecoder;
  v83 = sub_1AB0BB6F8();
  v81 = swift_allocObject();
  sub_1AB0BB74C(v84, v81 + 16);

  v43 = v75;
  v44 = v71;
  sub_1AB460E14();
  sub_1AB0BCB6C(v84);
  result = sub_1AB066D84(v89);
  if (!v44)
  {
    v45 = *(v42 + 7);
    v36 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (!v36)
    {
      *(v42 + 7) = v46;
      return (*(v79 + 32))(v78, v43, a2);
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AB1CB7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1AB1CA954();
  if (!v4)
  {
    v9 = result;
    v28 = 0;
    sub_1AB01EC0C(v27, v24);
    v10 = v25;
    if (v25)
    {
      v11 = v26;
      __swift_project_boxed_opaque_existential_1Tm(v24, v25);
      v12 = (*(v11 + 128))(v10, v11);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      if ((v12 & 1) == 0)
      {
LABEL_9:
        sub_1AB0B9254(v27, v23);
        v17 = *(v5 + 40);

        v18 = v17;
        v19 = v28;
        sub_1AB0BBAE0(v23, v18, v9, a3, v24);
        if (v19)
        {
          return sub_1AB066D84(v27);
        }

        type metadata accessor for _JSONObjectKeyedDecodingContainer();
        swift_getWitnessTable();
        sub_1AB461B14();
        result = sub_1AB066D84(v27);
        v20 = *(v5 + 56);
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          __break(1u);
        }

        else
        {
          *(v5 + 56) = v22;
        }

        return result;
      }
    }

    else
    {
      sub_1AB014AC0(v24, &qword_1EB436BA0);
    }

    v13 = sub_1AB0BDDF4(0xD00000000000002BLL, 0x80000001AB5021F0, *(v5 + 40));
    if (v13 != 2 && (v13 & 1) != 0)
    {

      v14 = sub_1AB4616B4();
      swift_allocError();
      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
      *v16 = a1;

      sub_1AB461694();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6B08], v14);
      swift_willThrow();
      return sub_1AB066D84(v27);
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1AB1CBA50@<X0>(void *a1@<X8>)
{
  v3 = v1;
  result = sub_1AB1CA954();
  if (!v2)
  {
    v6 = result;
    sub_1AB01EC0C(v26, &v22);
    v7 = *(&v23 + 1);
    if (*(&v23 + 1))
    {
      v8 = v24;
      __swift_project_boxed_opaque_existential_1Tm(&v22, *(&v23 + 1));
      v9 = (*(v8 + 128))(v7, v8);
      __swift_destroy_boxed_opaque_existential_1Tm(&v22);
      if ((v9 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_1AB014AC0(&v22, &qword_1EB436BA0);
    }

    v10 = sub_1AB0BDDF4(0xD00000000000002BLL, 0x80000001AB5021F0, *(v3 + 40));
    if (v10 != 2 && (v10 & 1) != 0)
    {
      v11 = sub_1AB4616B4();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
      *v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438008);
      sub_1AB461694();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6B08], v11);
      swift_willThrow();
      return sub_1AB066D84(v26);
    }

LABEL_9:
    sub_1AB0B9254(v26, v21);
    v14 = *(v3 + 40);

    result = sub_1AB1C663C(v21, v14, v6, &v22);
    v15 = *(v3 + 56);
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      __break(1u);
      return result;
    }

    *(v3 + 56) = v17;
    a1[3] = &type metadata for _JSONObjectUnkeyedDecodingContainer;
    a1[4] = sub_1AB1C692C();
    v18 = swift_allocObject();
    *a1 = v18;
    v19 = v23;
    v18[1] = v22;
    v18[2] = v19;
    v20 = v25;
    v18[3] = v24;
    v18[4] = v20;
    return sub_1AB066D84(v26);
  }

  return result;
}

uint64_t sub_1AB1CBCC4@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1;
  result = sub_1AB1CA954();
  if (!v2)
  {
    v6 = result;
    sub_1AB01EC0C(v21, v18);
    v7 = v19;
    if (v19)
    {
      v8 = v20;
      __swift_project_boxed_opaque_existential_1Tm(v18, v19);
      v9 = (*(v8 + 128))(v7, v8);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      if ((v9 & 1) == 0)
      {
LABEL_9:
        a1[3] = &type metadata for _JSONObjectDecoder;
        a1[4] = sub_1AB0BB6F8();
        v14 = swift_allocObject();
        *a1 = v14;
        sub_1AB0B9254(v21, v14 + 16);
        *(v14 + 56) = *(v3 + 40);
        *(v14 + 64) = v6;

        result = sub_1AB066D84(v21);
        v15 = *(v3 + 56);
        v16 = __OFADD__(v15, 1);
        v17 = v15 + 1;
        if (v16)
        {
          __break(1u);
        }

        else
        {
          *(v3 + 56) = v17;
        }

        return result;
      }
    }

    else
    {
      sub_1AB014AC0(v18, &qword_1EB436BA0);
    }

    v10 = sub_1AB0BDDF4(0xD00000000000002BLL, 0x80000001AB5021F0, *(v3 + 40));
    if (v10 != 2 && (v10 & 1) != 0)
    {
      v11 = sub_1AB4616B4();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
      *v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438000);
      sub_1AB461694();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6B08], v11);
      swift_willThrow();
      return sub_1AB066D84(v21);
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1AB1CBEFC()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

BOOL sub_1AB1CBF54()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v2);
  return v1 >= (*(v3 + 16))(v2, v3);
}

uint64_t sub_1AB1CBFD8()
{
  v2 = v0;
  sub_1AB1CA954();
  if (v1)
  {
    return v0 & 1;
  }

  LOBYTE(v0) = sub_1AB1C6C14();
  sub_1AB066D84(v7);

  v4 = *(v2 + 56);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (!v5)
  {
    *(v2 + 56) = v6;
    return v0 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB1CC20C()
{
  result = sub_1AB461CC4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AB1CC25C()
{
  result = sub_1AB461CD4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AB1CC304()
{
  result = sub_1AB461D04();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AB1CC354()
{
  result = sub_1AB461CE4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AB1CC494()
{
  result = sub_1AB461D14();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AB1CC4E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

unint64_t sub_1AB1CC6E4()
{
  result = qword_1EB4334A0;
  if (!qword_1EB4334A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4366C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4334A0);
  }

  return result;
}

uint64_t sub_1AB1CC748()
{
  v2 = v0;
  sub_1AB1CA954();
  if (v1)
  {
    return v0;
  }

  sub_1AB01EC0C(v16, v13);
  v3 = v14;
  if (!v14)
  {
    sub_1AB014AC0(v13, &qword_1EB436BA0);
    goto LABEL_7;
  }

  v4 = v15;
  __swift_project_boxed_opaque_existential_1Tm(v13, v14);
  v0 = (*(v4 + 24))(v3, v4);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  if (!v6)
  {
LABEL_7:
    v0 = sub_1AB4616B4();
    swift_allocError();
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
    *v12 = MEMORY[0x1E69E6158];
    sub_1AB461694();
    (*(*(v0 - 8) + 104))(v12, *MEMORY[0x1E69E6AF8], v0);
    swift_willThrow();
    sub_1AB066D84(v16);
    return v0;
  }

  sub_1AB066D84(v16);

  v8 = *(v2 + 56);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (!v9)
  {
    *(v2 + 56) = v10;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB1CC8FC()
{
  swift_getKeyPath();
  sub_1AB1CA954();
  if (v1)
  {
  }

  sub_1AB1C6DE4();

  result = sub_1AB066D84(v6);
  v3 = *(v0 + 56);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 56) = v5;
  }

  return result;
}

uint64_t sub_1AB1CC9C4()
{
  swift_getKeyPath();
  sub_1AB1CA954();
  if (v1)
  {
  }

  sub_1AB1C7158();

  result = sub_1AB066D84(v6);
  v3 = *(v0 + 56);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 56) = v5;
  }

  return result;
}

uint64_t sub_1AB1CCA8C()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v4 = sub_1AB1CA954();
  if (v1)
  {

    return v0;
  }

  v0 = sub_1AB1C74CC(KeyPath, v4, MEMORY[0x1E69E6530], MEMORY[0x1E6969E50], 7630409, 0xE300000000000000);

  result = sub_1AB066D84(v9);
  v6 = *(v2 + 56);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (!v7)
  {
    *(v2 + 56) = v8;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB1CCB7C()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v4 = sub_1AB1CA954();
  if (v1)
  {

    return v0;
  }

  v0 = sub_1AB1C7848(KeyPath, v4, MEMORY[0x1E69E7230], MEMORY[0x1E696A0C0], 947154505, 0xE400000000000000);

  result = sub_1AB066D84(v9);
  v6 = *(v2 + 56);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (!v7)
  {
    *(v2 + 56) = v8;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB1CCC6C()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v4 = sub_1AB1CA954();
  if (v1)
  {

    return v0;
  }

  v0 = sub_1AB1C7BC4(KeyPath, v4, MEMORY[0x1E69E7290], MEMORY[0x1E696A0C8], 0x3631746E49, 0xE500000000000000);

  result = sub_1AB066D84(v9);
  v6 = *(v2 + 56);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (!v7)
  {
    *(v2 + 56) = v8;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB1CCD60()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v4 = sub_1AB1CA954();
  if (v1)
  {

    return v0;
  }

  v0 = sub_1AB1C7F40(KeyPath, v4, MEMORY[0x1E69E72F0], MEMORY[0x1E696A0D8], 0x3233746E49, 0xE500000000000000);

  result = sub_1AB066D84(v9);
  v6 = *(v2 + 56);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (!v7)
  {
    *(v2 + 56) = v8;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB1CCE54()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v4 = sub_1AB1CA954();
  if (v1)
  {

    return v0;
  }

  v0 = sub_1AB1C74CC(KeyPath, v4, MEMORY[0x1E69E7360], MEMORY[0x1E696A100], 0x3436746E49, 0xE500000000000000);

  result = sub_1AB066D84(v9);
  v6 = *(v2 + 56);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (!v7)
  {
    *(v2 + 56) = v8;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB1CCF48()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v4 = sub_1AB1CA954();
  if (v1)
  {

    return v0;
  }

  v0 = sub_1AB1C74CC(KeyPath, v4, MEMORY[0x1E69E6810], MEMORY[0x1E696A038], 1953384789, 0xE400000000000000);

  result = sub_1AB066D84(v9);
  v6 = *(v2 + 56);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (!v7)
  {
    *(v2 + 56) = v8;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB1CD038()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v4 = sub_1AB1CA954();
  if (v1)
  {

    return v0;
  }

  v0 = sub_1AB1C7848(KeyPath, v4, MEMORY[0x1E69E7508], MEMORY[0x1E696A120], 0x38746E4955, 0xE500000000000000);

  result = sub_1AB066D84(v9);
  v6 = *(v2 + 56);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (!v7)
  {
    *(v2 + 56) = v8;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB1CD12C()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v4 = sub_1AB1CA954();
  if (v1)
  {

    return v0;
  }

  v0 = sub_1AB1C7BC4(KeyPath, v4, MEMORY[0x1E69E75F8], MEMORY[0x1E696A128], 0x3631746E4955, 0xE600000000000000);

  result = sub_1AB066D84(v9);
  v6 = *(v2 + 56);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (!v7)
  {
    *(v2 + 56) = v8;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB1CD220()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v4 = sub_1AB1CA954();
  if (v1)
  {

    return v0;
  }

  v0 = sub_1AB1C7F40(KeyPath, v4, MEMORY[0x1E69E7668], MEMORY[0x1E696A130], 0x3233746E4955, 0xE600000000000000);

  result = sub_1AB066D84(v9);
  v6 = *(v2 + 56);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (!v7)
  {
    *(v2 + 56) = v8;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB1CD314()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v4 = sub_1AB1CA954();
  if (v1)
  {

    return v0;
  }

  v0 = sub_1AB1C74CC(KeyPath, v4, MEMORY[0x1E69E76D8], MEMORY[0x1E696A140], 0x3436746E4955, 0xE600000000000000);

  result = sub_1AB066D84(v9);
  v6 = *(v2 + 56);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (!v7)
  {
    *(v2 + 56) = v8;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.init(_partiallyDeserializing:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1AB0B9254(a1, v11);
  v10 = *a2;

  v8 = Array<A>.init(tryDeserializing:using:)(v11, &v10, a3, a4);

  sub_1AB066D84(a1);
  return v8;
}

uint64_t sub_1AB1CD494@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = Array<A>.init(_partiallyDeserializing:using:)(a1, a2, *(a3 + 16), *(a4 - 8));
  *a5 = result;
  return result;
}

uint64_t Dictionary<>.init(_partiallyDeserializing:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1AB014A58(a1, &v27, &qword_1EB436BA0);
  v8 = *(&v28 + 1);
  if (!*(&v28 + 1))
  {
    sub_1AB014AC0(&v27, &qword_1EB436BA0);
    goto LABEL_7;
  }

  v9 = v29;
  __swift_project_boxed_opaque_existential_1Tm(&v27, *(&v28 + 1));
  v10 = (*(v9 + 128))(v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(&v27);
  if (v10)
  {
LABEL_7:
    v13 = sub_1AB4602A4();

    sub_1AB066D84(a1);
    return v13;
  }

  sub_1AB014A58(a1, v21, &qword_1EB436BA0);
  v11 = v22;
  if (v22)
  {
    v12 = v23;
    __swift_project_boxed_opaque_existential_1Tm(v21, v22);
    (*(v12 + 160))(&v24, v11, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    if (*(&v25 + 1))
    {
      v27 = v24;
      v28 = v25;
      v29 = v26;
      sub_1AB163BD0(&v27, &v24);
      v21[0] = *a2;

      v13 = Dictionary<>.init(tryDeserializing:using:)(&v24, v21, a3, a4);

      sub_1AB066D84(a1);
      sub_1AB07CDB0(&v27);
      return v13;
    }
  }

  else
  {
    sub_1AB014AC0(v21, &qword_1EB436BA0);
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
  }

  sub_1AB014AC0(&v24, &qword_1EB436BC0);
  v14 = sub_1AB4603C4();
  sub_1AB3D85D8(0xD000000000000027, 0x80000001AB4FFF70, *a2, &v27);
  sub_1AB014A58(&v27, &v24, &qword_1EB436EC0);
  v15 = *(&v25 + 1);
  if (*(&v25 + 1))
  {
    v16 = v26;
    __swift_project_boxed_opaque_existential_1Tm(&v24, *(&v25 + 1));
    sub_1AB163664();
    v17 = swift_allocError();
    v18 = MEMORY[0x1E69E7CC0];
    *v19 = v14;
    v19[1] = v18;
    v19[2] = 0;
    v19[3] = 0;
    (*(v16 + 8))(v14, v17, v15, v16);

    __swift_destroy_boxed_opaque_existential_1Tm(&v24);
  }

  else
  {
    sub_1AB014AC0(&v24, &qword_1EB436EC0);
  }

  v13 = sub_1AB4602A4();

  sub_1AB066D84(a1);
  sub_1AB014AC0(&v27, &qword_1EB436EC0);
  return v13;
}

uint64_t sub_1AB1CD808@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = Dictionary<>.init(_partiallyDeserializing:using:)(a1, a2, *(a3 + 24), *(a4 - 8));
  *a5 = result;
  return result;
}

uint64_t Optional<A>.init(_partiallyDeserializing:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1AB0B9254(a1, v11);
  v10 = *a2;
  v8 = *(a4 + 16);

  v8(v11, &v10, a3, a4);

  return sub_1AB066D84(a1);
}

JetEngine::JSONContext __swiftcall JSONContext.init(userInfo:)(Swift::OpaquePointer userInfo)
{
  v60 = v1;
  v71 = sub_1AB461864();
  v3 = *(v71 - 8);
  v4 = MEMORY[0x1EEE9AC00](v71);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438020);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v59 - v12;
  v75 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
  sub_1AB460344();
  v13 = 0;
  v63 = v3;
  rawValue = userInfo._rawValue;
  v16 = *(userInfo._rawValue + 8);
  v15 = userInfo._rawValue + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v61 = v3 + 16;
  v69 = v6;
  v70 = (v3 + 32);
  v21 = (v3 + 8);
  v22 = v11;
  v65 = v20;
  v66 = v21;
  v68 = v11;
  while (v19)
  {
    v25 = v13;
LABEL_16:
    v29 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v30 = v29 | (v25 << 6);
    v32 = v63;
    v31 = rawValue;
    v33 = v62;
    v34 = v71;
    (*(v63 + 16))(v62, rawValue[6] + *(v63 + 72) * v30, v71);
    sub_1AB0165C4(v31[7] + 32 * v30, v74);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438028);
    v36 = *(v35 + 48);
    v37 = *(v32 + 32);
    v22 = v68;
    v37(v68, v33, v34);
    sub_1AB014B78(v74, (v22 + v36));
    (*(*(v35 - 8) + 56))(v22, 0, 1, v35);
    v28 = v67;
    v6 = v69;
LABEL_17:
    sub_1AB1DA624(v22, v28);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438028);
    if ((*(*(v38 - 8) + 48))(v28, 1, v38) == 1)
    {

      *v60 = v75;
      return result;
    }

    v39 = *(v38 + 48);
    (*v70)(v6, v28, v71);
    sub_1AB014B78((v28 + v39), v74);
    v40 = sub_1AB461854();
    v42 = v41;
    sub_1AB0165C4(v74, v73);
    v43 = v75;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = v43;
    v75 = 0x8000000000000000;
    v46 = sub_1AB014DB4(v40, v42);
    v47 = *(v43 + 16);
    v48 = (v45 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      goto LABEL_32;
    }

    v50 = v45;
    if (*(v43 + 24) >= v49)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v45)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1AB0676CC();
        if (v50)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1AB01AF68(v49, isUniquelyReferenced_nonNull_native);
      v51 = sub_1AB014DB4(v40, v42);
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_34;
      }

      v46 = v51;
      if (v50)
      {
LABEL_4:

        v23 = v72;
        v24 = (v72[7] + 32 * v46);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        sub_1AB014B78(v73, v24);
        __swift_destroy_boxed_opaque_existential_1Tm(v74);
        v6 = v69;
        (*v66)(v69, v71);
        goto LABEL_5;
      }
    }

    v23 = v72;
    v72[(v46 >> 6) + 8] |= 1 << v46;
    v53 = (v23[6] + 16 * v46);
    *v53 = v40;
    v53[1] = v42;
    sub_1AB014B78(v73, (v23[7] + 32 * v46));
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    v6 = v69;
    (*v66)(v69, v71);
    v54 = v23[2];
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_33;
    }

    v23[2] = v56;
LABEL_5:

    v75 = v23;
    v22 = v68;
    v20 = v65;
  }

  if (v20 <= v13 + 1)
  {
    v26 = v13 + 1;
  }

  else
  {
    v26 = v20;
  }

  v27 = v26 - 1;
  v28 = v67;
  while (1)
  {
    v25 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v25 >= v20)
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438028);
      (*(*(v57 - 8) + 56))(v22, 1, 1, v57);
      v19 = 0;
      v13 = v27;
      goto LABEL_17;
    }

    v19 = *&v15[8 * v25];
    ++v13;
    if (v19)
    {
      v13 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result.storage._rawValue = sub_1AB461FC4();
  __break(1u);
  return result;
}

uint64_t sub_1AB1CDED8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1AB014B78(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_1AB1D5700(v7, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1AB02B2E4(a2);
    *v2 = v6;
  }

  else
  {
    sub_1AB014AC0(a1, &unk_1EB437E60);
    sub_1AB177018(a2, v7);
    sub_1AB02B2E4(a2);
    return sub_1AB014AC0(v7, &unk_1EB437E60);
  }

  return result;
}

uint64_t sub_1AB1CDF94(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1AB0771E0(a1, a2, isUniquelyReferenced_nonNull_native, &qword_1EB4381C0);
    result = sub_1AB1B0358(a2);
    *v2 = v13;
  }

  else
  {
    v8 = sub_1AB077384(a2);
    v10 = v9;
    result = sub_1AB1B0358(a2);
    if (v10)
    {
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v14 = *v3;
      if (!v11)
      {
        sub_1AB1DA370(&qword_1EB4381C0);
        v12 = v14;
      }

      result = sub_1AB191868(v8, v12);
      *v3 = v12;
    }
  }

  return result;
}

uint64_t sub_1AB1CE0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1AB0149B0(a1, v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    v7 = v17;
    v8 = v18;
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    v10 = MEMORY[0x1EEE9AC00](v9);
    v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v13 + 16))(v12, v10);
    sub_1AB220408(v12, a2, a3, isUniquelyReferenced_nonNull_native, &v15, v7, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);

    *v3 = v15;
  }

  else
  {
    sub_1AB014AC0(a1, &qword_1EB438160);
    sub_1AB177328(a2, a3, v16);

    return sub_1AB014AC0(v16, &qword_1EB438160);
  }

  return result;
}

uint64_t sub_1AB1CE244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1AB1D5DFC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1AB014DB4(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1AB1DA064(&qword_1EB436EE8);
        v14 = v16;
      }

      result = sub_1AB19037C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1AB1CE34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for JetPackAsset(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_1AB014AC0(a1, &qword_1EB437E40);
    sub_1AB177368(a2, a3, v9);

    return sub_1AB014AC0(v9, &qword_1EB437E40);
  }

  else
  {
    sub_1AB05DB9C(a1, v13, type metadata accessor for JetPackAsset);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1AB1D5F98(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

_OWORD *sub_1AB1CE520(uint64_t a1, char a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1AB014B78(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1AB1D60FC(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_1AB014AC0(a1, &unk_1EB437E60);
    v7 = sub_1AB1D0ECC(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1AB1D8F68();
        v11 = v13;
      }

      sub_1AB014B78((*(v11 + 56) + 32 * v9), v14);
      sub_1AB190718(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_1AB014AC0(v14, &unk_1EB437E60);
  }

  return result;
}

_OWORD *sub_1AB1CE624(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1AB014B78(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1AB1D6228(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_1AB014AC0(a1, &unk_1EB437E60);
    v7 = sub_1AB016558(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1AB01A034();
        v11 = v13;
      }

      sub_1AB014B78((*(v11 + 56) + 32 * v9), v14);
      sub_1AB0951B0(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_1AB014AC0(v14, &unk_1EB437E60);
  }

  return result;
}

uint64_t sub_1AB1CE728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    v10[0] = *a1;
    v10[1] = v6;
    v11 = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1AB1D6508(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_1AB014AC0(a1, &qword_1EB438078);
    sub_1AB1774C0(a2, a3, v10);

    return sub_1AB014AC0(v10, &qword_1EB438078);
  }

  return result;
}

uint64_t sub_1AB1CE800(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 1852793705;
    }

    else
    {
      v3 = 0x6E6572646C696863;
    }

    if (v2 == 2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x656C746974;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0xE400000000000000;
  v8 = 1852793705;
  if (a2 != 2)
  {
    v8 = 0x6E6572646C696863;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v6 = 0x656C746974;
    v5 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AB461DA4();
  }

  return v11 & 1;
}

uint64_t sub_1AB1CE924(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x79726575516C7275;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x79646F426E6F736ALL;
    }

    else
    {
      v4 = 0x79646F426D726F66;
    }

    v5 = 0xE800000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x726564616568;
    }

    else
    {
      v4 = 0x79726575516C7275;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0x79646F426E6F736ALL;
  if (a2 != 2)
  {
    v7 = 0x79646F426D726F66;
  }

  if (a2)
  {
    v2 = 0x726564616568;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1AB461DA4();
  }

  return v10 & 1;
}

uint64_t sub_1AB1CEA60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1954047348;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6D754E656E6F6870;
    }

    else
    {
      v4 = 0x506C616D69636564;
    }

    if (v3 == 2)
    {
      v5 = 0xEB00000000726562;
    }

    else
    {
      v5 = 0xEA00000000006461;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C69616D65;
    }

    else
    {
      v4 = 1954047348;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x6D754E656E6F6870;
  v8 = 0xEB00000000726562;
  if (a2 != 2)
  {
    v7 = 0x506C616D69636564;
    v8 = 0xEA00000000006461;
  }

  if (a2)
  {
    v2 = 0x6C69616D65;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AB461DA4();
  }

  return v11 & 1;
}

uint64_t sub_1AB1CEBAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x74696157636E7973;
  v5 = 0xEC000000656D6954;
  if (a1 != 5)
  {
    v4 = 0xD000000000000012;
    v5 = 0x80000001AB4FE460;
  }

  v6 = 0xE500000000000000;
  v7 = 0x7465736572;
  if (a1 != 3)
  {
    v7 = 0x676E697473697865;
    v6 = 0xEC000000796C6E4FLL;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x656D695474696177;
  if (a1 != 1)
  {
    v9 = 0x6C6F506568636163;
    v8 = 0xEB00000000796369;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1702125924;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x656D695474696177)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xEB00000000796369;
        if (v10 != 0x6C6F506568636163)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1702125924)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_37;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7465736572)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v13 = 0x676E697473697865;
    v14 = 2037149263;
LABEL_34:
    v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v10 != v13)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (a2 == 5)
  {
    v13 = 0x74696157636E7973;
    v14 = 1701669204;
    goto LABEL_34;
  }

  v12 = 0x80000001AB4FE460;
  if (v10 != 0xD000000000000012)
  {
LABEL_39:
    v15 = sub_1AB461DA4();
    goto LABEL_40;
  }

LABEL_37:
  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v15 = 1;
LABEL_40:

  return v15 & 1;
}

uint64_t sub_1AB1CEDEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x7470697263736564;
    }

    else
    {
      v4 = 1701869940;
    }

    if (v2)
    {
      v3 = 0xEB000000006E6F69;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x6E696C5F706C6568;
    v3 = 0xE90000000000006BLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x64656C646E6168;
  }

  else
  {
    v4 = 0x69746568746E7973;
    v3 = 0xE900000000000063;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7470697263736564;
    }

    else
    {
      v9 = 1701869940;
    }

    if (a2)
    {
      v8 = 0xEB000000006E6F69;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x64656C646E6168;
    if (a2 != 3)
    {
      v6 = 0x69746568746E7973;
      v5 = 0xE900000000000063;
    }

    if (a2 == 2)
    {
      v7 = 0x6E696C5F706C6568;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE90000000000006BLL;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1AB461DA4();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1AB1CEF98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x63617073656D616ELL;
  v4 = a1;
  v5 = 0xE800000000000000;
  v6 = 0x6E6170736566696CLL;
  v7 = 0x74616C6572726F63;
  v8 = 0xEC000000736E6F69;
  if (a1 != 4)
  {
    v7 = 0x6E6F697461746F72;
    v8 = 0xE800000000000000;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE400000000000000;
  v10 = 1701869940;
  if (a1 != 1)
  {
    v10 = 0x736369706F74;
    v9 = 0xE600000000000000;
  }

  if (!a1)
  {
    v10 = 0x63617073656D616ELL;
    v9 = 0xE900000000000065;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x6E6170736566696CLL)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEC000000736E6F69;
      if (v11 != 0x74616C6572726F63)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x6E6F697461746F72)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE400000000000000;
        if (v11 != 1701869940)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE600000000000000;
      v3 = 0x736369706F74;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_1AB461DA4();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_1AB1CF168(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736302;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656D697270;
    }

    else
    {
      v4 = 0x6D726F6674616C70;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x746C7561666564;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x656D697270;
  if (a2 != 2)
  {
    v8 = 0x6D726F6674616C70;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x746C7561666564;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AB461DA4();
  }

  return v11 & 1;
}

uint64_t sub_1AB1CF29C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x657373696D736964;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6669636570736E75;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (v4 == 2)
    {
      v6 = 0xEB00000000646569;
    }

    else
    {
      v6 = 0x80000001AB4FE3A0;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x756F72676B636162;
    }

    else
    {
      v5 = 0x657373696D736964;
    }

    if (v4)
    {
      v6 = 0xEA0000000000646ELL;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  v7 = 0x6669636570736E75;
  v8 = 0x80000001AB4FE3A0;
  if (a2 == 2)
  {
    v8 = 0xEB00000000646569;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (a2)
  {
    v3 = 0x756F72676B636162;
    v2 = 0xEA0000000000646ELL;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AB461DA4();
  }

  return v11 & 1;
}

uint64_t sub_1AB1CF3F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6449746E65726170;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEF7865646E496E6FLL;
    v4 = 0xE800000000000000;
    if (a1 == 2)
    {
      v6 = 0x6973736572706D69;
    }

    else
    {
      v6 = 0x4449657571696E75;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xE200000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 25705;
    }

    else
    {
      v6 = 0x6449746E65726170;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6973736572706D69;
  v10 = 0xEF7865646E496E6FLL;
  if (a2 != 2)
  {
    v9 = 0x4449657571696E75;
    v10 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 25705;
    v8 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1AB461DA4();
  }

  return v13 & 1;
}

uint64_t sub_1AB1CF538(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x73646C656966;
    }

    else
    {
      v5 = 25705;
    }

    if (v2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE200000000000000;
    }
  }

  else
  {
    v3 = 0x69466E6F6D6D6F63;
    v4 = 0xEC00000073646C65;
    if (a1 != 3)
    {
      v3 = 0xD000000000000013;
      v4 = 0x80000001AB4FDD10;
    }

    if (a1 == 2)
    {
      v5 = 0x6D6F74737563;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x73646C656966;
    }

    else
    {
      v11 = 25705;
    }

    if (a2)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = 0xE200000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x69466E6F6D6D6F63;
    v8 = 0x80000001AB4FDD10;
    if (a2 == 3)
    {
      v8 = 0xEC00000073646C65;
    }

    else
    {
      v7 = 0xD000000000000013;
    }

    if (a2 == 2)
    {
      v9 = 0x6D6F74737563;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_1AB461DA4();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_1AB1CF6BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656D616E656C6966;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6F6E656E696CLL;
    }

    else
    {
      v4 = 0x6F6E6C6F63;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E6F6974636E7566;
    }

    else
    {
      v4 = 0x656D616E656C6966;
    }

    v5 = 0xE800000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x6F6E656E696CLL;
  if (a2 != 2)
  {
    v7 = 0x6F6E6C6F63;
    v6 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6E6F6974636E7566;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE800000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1AB461DA4();
  }

  return v10 & 1;
}

uint64_t sub_1AB1CF7F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v6 = 0xE800000000000000;
      v5 = 0x6D6574497473696CLL;
    }

    else
    {
      if (a1 == 4)
      {
        v5 = 0xD000000000000013;
      }

      else
      {
        v5 = 0xD000000000000010;
      }

      if (v2 == 4)
      {
        v6 = 0x80000001AB4FDE50;
      }

      else
      {
        v6 = 0x80000001AB4FDE70;
      }
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x63696D616E7964;
    if (a1 != 1)
    {
      v4 = 0x6F6C61646E617473;
      v3 = 0xEA0000000000656ELL;
    }

    if (a1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v7 = 0xE800000000000000;
      if (v5 != 0x6D6574497473696CLL)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (a2 == 4)
      {
        v8 = 0xD000000000000013;
      }

      else
      {
        v8 = 0xD000000000000010;
      }

      if (a2 == 4)
      {
        v7 = 0x80000001AB4FDE50;
      }

      else
      {
        v7 = 0x80000001AB4FDE70;
      }

      if (v5 != v8)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v7 = 0xE700000000000000;
      if (v5 != 0x63696D616E7964)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v7 = 0xEA0000000000656ELL;
      if (v5 != 0x6F6C61646E617473)
      {
LABEL_39:
        v9 = sub_1AB461DA4();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    if (v5 != 0x6E776F6E6B6E75)
    {
      goto LABEL_39;
    }
  }

  if (v6 != v7)
  {
    goto LABEL_39;
  }

  v9 = 1;
LABEL_40:

  return v9 & 1;
}

uint64_t sub_1AB1CF9F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x695F646165726874;
  v5 = 0xE900000000000064;
  v6 = 0x6172746B63617473;
  v7 = 0xEA00000000006563;
  if (a1 != 4)
  {
    v6 = 0x73696E616863656DLL;
    v7 = 0xE90000000000006DLL;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE500000000000000;
  v9 = 0x65756C6176;
  if (a1 != 1)
  {
    v9 = 0x656C75646F6DLL;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1701869940;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE900000000000064;
      if (v10 != 0x695F646165726874)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEA00000000006563;
      if (v10 != 0x6172746B63617473)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE90000000000006DLL;
      if (v10 != 0x73696E616863656DLL)
      {
LABEL_34:
        v13 = sub_1AB461DA4();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x65756C6176)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C75646F6DLL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1701869940)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1AB1CFBE0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000736E6F69;
  v3 = 0x7463757274736E69;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6D6F74737563;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0x80000001AB4FDD10;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6C65694665676170;
    }

    else
    {
      v5 = 0x7463757274736E69;
    }

    if (v4)
    {
      v6 = 0xEA00000000007364;
    }

    else
    {
      v6 = 0xEC000000736E6F69;
    }
  }

  v7 = 0x6D6F74737563;
  v8 = 0x80000001AB4FDD10;
  if (a2 == 2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (a2)
  {
    v3 = 0x6C65694665676170;
    v2 = 0xEA00000000007364;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AB461DA4();
  }

  return v11 & 1;
}

uint64_t sub_1AB1CFD28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6C46646C756F6873;
    }

    else
    {
      v3 = 0x6369706F74;
    }

    if (v2)
    {
      v4 = 0xEB00000000687375;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x73646C656966;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6E6964756C636E69;
    }

    else
    {
      v3 = 0x6E6964756C637865;
    }

    v4 = 0xEF73646C65694667;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x6C46646C756F6873;
    }

    else
    {
      v8 = 0x6369706F74;
    }

    if (a2)
    {
      v7 = 0xEB00000000687375;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    if (v3 != v8)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0x6E6964756C636E69;
    if (a2 != 3)
    {
      v5 = 0x6E6964756C637865;
    }

    if (a2 == 2)
    {
      v6 = 0x73646C656966;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xEF73646C65694667;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  if (v4 != v7)
  {
LABEL_34:
    v9 = sub_1AB461DA4();
    goto LABEL_35;
  }

  v9 = 1;
LABEL_35:

  return v9 & 1;
}