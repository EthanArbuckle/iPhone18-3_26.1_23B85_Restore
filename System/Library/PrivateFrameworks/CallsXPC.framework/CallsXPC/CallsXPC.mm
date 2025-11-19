uint64_t *XPCClient.init()()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A50, &qword_242A36198);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0;
  v0[2] = v2;
  v15[0] = sub_242A3532C();
  v3 = *(v1 + 88);
  v4 = *(v1 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v15[1] = type metadata accessor for TypedPayloadBox();
  swift_getFunctionTypeMetadata();
  v15[0] = sub_242A3533C();
  *(v0 + 6) = 0;
  v0[4] = 0;
  v5 = sub_242A3535C();
  sub_242A1D6B4(v15, (v0 + 4), v5);
  *(v0 + 10) = 0;
  v0[6] = 0;
  v0[7] = 0;
  v6 = v0[2];
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = v3;
  v8[4] = v7;
  v9 = *(v6 + 32);
  v10 = *(v6 + 40);
  *(v6 + 32) = sub_242A1D860;
  *(v6 + 40) = v8;

  sub_242A1D2CC(v9);

  v11 = v0[2];
  v12 = *(v11 + 48);
  v13 = *(v11 + 56);
  *(v11 + 48) = sub_242A260EC;
  *(v11 + 56) = 0;

  sub_242A1D2CC(v12);

  return v0;
}

uint64_t sub_242A1D2CC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_242A1D2DC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242A1D314()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_242A1D34C(uint64_t *a1)
{
  v1 = MEMORY[0x277D84F78] + 8;
  if (MEMORY[0x277D85020])
  {
    v2 = *a1;
    v3 = a1[1];
    sub_242A3532C();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for TypedPayloadBox();
    swift_getFunctionTypeMetadata();
    sub_242A3535C();
    return sub_242A3513C();
  }

  return v1;
}

uint64_t sub_242A1D44C()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A60, &qword_242A36260);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_242A1D47C(uint64_t *a1)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  v1 = *a1;
  sub_242A3557C();
  return sub_242A3513C();
}

uint64_t sub_242A1D588(uint64_t a1)
{
  v1 = *(a1 + 80);
  sub_242A3557C();
  result = sub_242A3513C();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_242A1D654()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void XPCClient.setCancellationHandler(_:)(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((v2 + 40));
  v5 = *(v2 + 48);
  if (v5)
  {
    v6 = *(v2 + 56);
    sub_242A1D2CC(v5);
  }

  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v8 = sub_242A32374;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *(v2 + 48) = v8;
  *(v2 + 56) = v7;
  sub_242A1D78C(a1);

  os_unfair_lock_unlock((v2 + 40));
}

uint64_t sub_242A1D78C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t TypedPayloadBox.init<A>(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = *(a3 + 8);
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(a4);
  v8 = *(a2 - 8);
  (*(v8 + 16))(boxed_opaque_existential_2, a1, a2);
  v9 = static XPCMessage.messageIdentifier.getter();
  v11 = v10;
  result = (*(v8 + 8))(a1, a2);
  *(a4 + 48) = v9;
  *(a4 + 56) = v11;
  return result;
}

uint64_t sub_242A1D880@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = sub_242A351AC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  (*(a2 + 56))(&v17, a1, a2);
  sub_242A3522C();
  sub_242A3519C();
  result = sub_242A3518C();
  if (!v3)
  {
    v10 = result;
    v11 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v12 = swift_allocObject();
    v12[2] = a1;
    v12[3] = a2;
    v12[4] = v11;

    sub_242A351BC();

    v13 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v14 = swift_allocObject();
    swift_weakInit();

    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = a2;
    v15[4] = v13;
    v15[5] = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_242A32798;
    *(v16 + 24) = v15;

    sub_242A351CC();

    sub_242A3520C();

    *a3 = v10;
  }

  return result;
}

uint64_t sub_242A1DB74()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_242A1DBB4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t XPCClient.sendSync<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, char *, uint64_t)@<X8>)
{
  v78 = a4;
  v5 = v4;
  v9 = *v4;
  v75 = sub_242A352CC();
  v77 = *(v75 - 8);
  v10 = *(v77 + 64);
  v11 = MEMORY[0x28223BE20](v75);
  v73 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v76 = &v68 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v74 = &v68 - v16;
  v17 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, a1, a2);
  v21 = *(v9 + 88);
  v22 = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  TypedPayloadBox.init<A>(value:)(v19, a2, a3, v88);
  v72 = v5;
  v25 = v5[2];
  v81 = v22;
  v82 = a2;
  v83 = v21;
  v84 = a3;
  v85 = v88;
  v71 = a2;
  swift_getAssociatedTypeWitness();

  v26 = v79;
  sub_242A1E468(sub_242A1E578, v80, v78);
  if (v26)
  {
    v79 = AssociatedConformanceWitness;

    v89 = v26;
    MEMORY[0x245D206F0](v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A08, &qword_242A35E80);
    v27 = v74;
    v28 = v75;
    if (swift_dynamicCast())
    {

      v29 = v76;
      v30 = v77;
      (*(v77 + 32))(v76, v27, v28);
      if (qword_280B1B358 != -1)
      {
        swift_once();
      }

      v31 = sub_242A3517C();
      __swift_project_value_buffer(v31, qword_280B1B7F8);
      v32 = *(v30 + 16);
      v33 = v73;
      v32(v73, v29, v28);
      v34 = sub_242A3515C();
      v35 = sub_242A3554C();
      v36 = os_log_type_enabled(v34, v35);
      v78 = v32;
      if (v36)
      {
        v37 = swift_slowAlloc();
        v38 = v32;
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v87 = v70;
        *v37 = 136315394;
        v86 = v71;
        MetatypeMetadata = swift_getMetatypeMetadata();
        v40 = sub_242A348EC(&v86, MetatypeMetadata);
        v74 = AssociatedTypeWitness;
        v42 = sub_242A2D920(v40, v41, &v87);

        *(v37 + 4) = v42;
        *(v37 + 12) = 2112;
        sub_242A1EC2C();
        swift_allocError();
        v43 = v73;
        v38(v44, v73, v28);
        v45 = _swift_stdlib_bridgeErrorToNSError();
        v46 = *(v77 + 8);
        v46(v43, v28);
        *(v37 + 14) = v45;
        v47 = v69;
        *v69 = v45;
        _os_log_impl(&dword_242A1C000, v34, v35, "Encountered XPC error when trying to send sync message %s error: %@", v37, 0x16u);
        sub_242A25820(v47, &qword_27ECD8A10, &qword_242A35DC0);
        MEMORY[0x245D20850](v47, -1, -1);
        v48 = v70;
        __swift_destroy_boxed_opaque_existential_0(v70);
        MEMORY[0x245D20850](v48, -1, -1);
        MEMORY[0x245D20850](v37, -1, -1);
      }

      else
      {

        v46 = *(v30 + 8);
        v46(v33, v28);
      }

      v60 = v72[2];

      os_unfair_lock_lock((v60 + 16));
      v61 = *(v60 + 24);
      *(v60 + 24) = 0;
      os_unfair_lock_unlock((v60 + 16));
      if (v61)
      {
        v87 = v61;
        v62 = *(v60 + 48);
        if (v62)
        {
          v63 = *(v60 + 56);

          v62(&v87);
          sub_242A1D2CC(v62);
        }
      }

      sub_242A1EC2C();
      swift_allocError();
      v64 = v76;
      v78(v65, v76, v28);
      swift_willThrow();
      v46(v64, v28);
    }

    else
    {

      if (qword_280B1B358 != -1)
      {
        swift_once();
      }

      v49 = sub_242A3517C();
      __swift_project_value_buffer(v49, qword_280B1B7F8);
      MEMORY[0x245D206F0](v26);
      v50 = sub_242A3515C();
      v51 = sub_242A3554C();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v89 = v54;
        *v52 = 136315394;
        v87 = v71;
        v55 = swift_getMetatypeMetadata();
        v56 = sub_242A348EC(&v87, v55);
        v58 = sub_242A2D920(v56, v57, &v89);

        *(v52 + 4) = v58;
        *(v52 + 12) = 2112;
        MEMORY[0x245D206F0](v26);
        v59 = _swift_stdlib_bridgeErrorToNSError();
        *(v52 + 14) = v59;
        *v53 = v59;
        _os_log_impl(&dword_242A1C000, v50, v51, "Failed to send sync message %s error: %@", v52, 0x16u);
        sub_242A25820(v53, &qword_27ECD8A10, &qword_242A35DC0);
        MEMORY[0x245D20850](v53, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v54);
        MEMORY[0x245D20850](v54, -1, -1);
        MEMORY[0x245D20850](v52, -1, -1);
      }

      swift_willThrow();
    }
  }

  else
  {
  }

  v66 = type metadata accessor for TypedPayloadBox();
  return (*(*(v66 - 8) + 8))(v88, v66);
}

void sub_242A1E468(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *v3;
  v9 = (v3 + *(*v3 + 88));
  os_unfair_lock_lock(v9);
  v10 = *(v8 + 80);
  sub_242A3557C();
  v11 = sub_242A3513C();
  sub_242A1E59C(v9 + *(v11 + 28), a1, a2, v4, &v12, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A08, &qword_242A35E80);
  j__os_unfair_lock_unlock(v9);
}

uint64_t sub_242A1E578@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_242A1F200(a1, v2[6], a2);
}

void sub_242A1E59C(char *a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v41 = a5;
  v38 = a3;
  v39 = a2;
  v37 = a6;
  v7 = *(*a4 + 80);
  v8 = sub_242A3557C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v35 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v32 - v17;
  v19 = *(v7 - 8);
  v20 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v22 = &v32 - v21;
  v40 = v9;
  v23 = *(v9 + 16);
  v36 = a1;
  v34 = v23;
  v23(v18, a1, v8);
  v33 = *(v19 + 48);
  if (v33(v18, 1, v7) != 1)
  {
    (*(v19 + 32))(v22, v18, v7);
    v31 = v42;
    v39(v22);
    v30 = v31;
    (*(v19 + 8))(v22, v7);
    goto LABEL_6;
  }

  v24 = v18;
  v25 = *(v40 + 8);
  v25(v24, v8);
  v26 = v42;
  sub_242A1F188();
  if (!v26)
  {
    v42 = 0;
    v27 = v36;
    v25(v36, v8);
    (*(v19 + 56))(v15, 0, 1, v7);
    (*(v40 + 32))(v27, v15, v8);
    v28 = v35;
    v34(v35, v27, v8);
    if (v33(v28, 1, v7) == 1)
    {
      __break(1u);
      return;
    }

    v29 = v42;
    v39(v28);
    v30 = v29;
    (*(v19 + 8))(v28, v7);
LABEL_6:
    v26 = v30;
    if (!v30)
    {
      return;
    }
  }

  *v41 = v26;
}

void XPCClient.setMessageHandler<A>(for:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_242A1E918(a1, a2, a3, a4, a5, sub_242A20178);
}

{
  sub_242A1E918(a1, a2, a3, a4, a5, sub_242A30274);
}

void sub_242A1E918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, void, uint64_t, void, uint64_t))
{
  v12 = *&v6->_os_unfair_lock_opaque;
  os_unfair_lock_lock(v6 + 6);
  a6(&v6[8], a2, a3, *(v12 + 80), a4, *(v12 + 88), a5);
  sub_242A3532C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox();
  swift_getFunctionTypeMetadata();
  sub_242A3535C();
  j__os_unfair_lock_unlock(v6 + 6);
}

void sub_242A1EB5C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_242A1EB70(a1, *v2, *(v2 + 8), *(v2 + 16));
}

void sub_242A1EB70(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  if (a4)
  {
    v6 = sub_242A352CC();
    sub_242A1EC2C();
    v7 = swift_allocError();
    (*(*(v6 - 8) + 16))(v8, a1, v6);
    a4(v7);
  }
}

unint64_t sub_242A1EC2C()
{
  result = qword_280B1B6E0[0];
  if (!qword_280B1B6E0[0])
  {
    sub_242A352CC();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B1B6E0);
  }

  return result;
}

uint64_t sub_242A1EC84(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_242A1EC90(a1);
}

uint64_t sub_242A1EC90(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      os_unfair_lock_lock(v3 + 6);
      sub_242A1EDDC(&v3[8], v5);
      type metadata accessor for XPCHostConnection();
      sub_242A3549C();
      os_unfair_lock_unlock(v3 + 6);
      os_unfair_lock_lock(v3 + 10);
      sub_242A1EEF8(&v3[12], v5, a1, &v6);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
      swift_getFunctionTypeMetadata2();
      sub_242A3557C();
      os_unfair_lock_unlock(v3 + 10);
    }
  }

  return result;
}

uint64_t sub_242A1EDDC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_242A3549C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_242A3553C();
}

uint64_t sub_242A1EEF8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v4 = result;
  v7 = *result;
  v6 = *(result + 8);
  if (*result)
  {
    v9 = a2;
    v8 = a3;

    v7(&v9, &v8);
    result = sub_242A1D2CC(v7);
  }

  *a4 = v7 == 0;
  *v4 = v7;
  v4[1] = v6;
  return result;
}

uint64_t XPCHostConnection.__deallocating_deinit()
{
  XPCHostConnection.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t XPCHostConnection.deinit()
{
  v1 = qword_280B1B7E8;
  v2 = sub_242A3512C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_280B1B7F0 + 8);

  v4 = *(v0 + qword_280B1B2C8);

  return v0;
}

uint64_t *__swift_allocate_boxed_opaque_existential_2(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_242A1F0C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_242A1F134()
{
  result = qword_280B1B350;
  if (!qword_280B1B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1B350);
  }

  return result;
}

void sub_242A1F188()
{
  v1 = v0 + *(*v0 + 96);
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);
    sub_242A1D2CC(v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_242A1F200@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  *&v25 = a2;
  swift_getAssociatedTypeWitness();
  v20[1] = sub_242A1F134();
  v21 = sub_242A357BC();
  v4 = *(*(v21 - 1) + 64);
  MEMORY[0x28223BE20](v21);
  v23 = v20 - v5;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for XPCResult();
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - v8;
  v10 = sub_242A3532C();
  v28 = *(v10 - 8);
  v11 = *(v28 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox();
  swift_getWitnessTable();
  v15 = v26;
  result = sub_242A3521C();
  if (!v15)
  {
    v18 = v22;
    v17 = v23;
    v19 = v24;
    swift_getWitnessTable();
    sub_242A3530C();
    sub_242A239A8(v6, v17);
    (*(v18 + 8))(v9, v6);
    sub_242A23B18(v21, &v27, v19);
    return (*(v28 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_242A1F5E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  return sub_242A1FA74(a1, *(v1 + 32), *(v1 + 40));
}

void sub_242A1F5F0(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v12 = SecTaskCreateWithAuditToken(0, &token);
  if (v12)
  {
    v13 = v12;
    error = 0;
    v14 = sub_242A3538C();
    v15 = SecTaskCopyValueForEntitlement(v13, v14, &error);

    v16 = error;
    if (error)
    {
      if (qword_280B1B358 != -1)
      {
        swift_once();
      }

      v17 = sub_242A3517C();
      __swift_project_value_buffer(v17, qword_280B1B7F8);
      v18 = sub_242A3515C();
      v19 = sub_242A3554C();
      if (os_log_type_enabled(v18, v19))
      {
        v39 = a6;
        v20 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v40 = v38;
        *v20 = 136315394;
        *token.val = a1;
        *&token.val[2] = a2;
        *&token.val[4] = a3;
        *&token.val[6] = a4;
        type metadata accessor for audit_token_t(0);
        v21 = sub_242A353BC();
        v23 = sub_242A2D920(v21, v22, &v40);

        *(v20 + 4) = v23;
        *(v20 + 12) = 2080;
        *token.val = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8AC8, &unk_242A36D20);
        v24 = sub_242A353BC();
        v26 = sub_242A2D920(v24, v25, &v40);

        *(v20 + 14) = v26;
        _os_log_impl(&dword_242A1C000, v18, v19, "Could not get entitlement for %s: %s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D20850](v38, -1, -1);
        v27 = v20;
        a6 = v39;
        MEMORY[0x245D20850](v27, -1, -1);
      }

      swift_unknownObjectRelease();
      (*(*(a5 - 8) + 56))(a6, 1, 1, a5);
    }

    else
    {
      *token.val = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8AC0, &qword_242A36D18);
      v36 = swift_dynamicCast();
      (*(*(a5 - 8) + 56))(a6, v36 ^ 1u, 1, a5);
    }

    if (error)
    {
    }
  }

  else
  {
    if (qword_280B1B358 != -1)
    {
      swift_once();
    }

    v28 = sub_242A3517C();
    __swift_project_value_buffer(v28, qword_280B1B7F8);
    v29 = sub_242A3515C();
    v30 = sub_242A3554C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      error = v32;
      *token.val = a1;
      *v31 = 136315138;
      *&token.val[2] = a2;
      *&token.val[4] = a3;
      *&token.val[6] = a4;
      type metadata accessor for audit_token_t(0);
      v33 = sub_242A353BC();
      v35 = sub_242A2D920(v33, v34, &error);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_242A1C000, v29, v30, "Failed to create task for %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x245D20850](v32, -1, -1);
      MEMORY[0x245D20850](v31, -1, -1);
    }

    (*(*(a5 - 8) + 56))(a6, 1, 1, a5);
  }

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t get_enum_tag_for_layout_string_s5Error_pIeghg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_242A1FA74(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_242A3527C();
  }

  v6 = Strong;
  if (swift_getAssociatedTypeWitness() == &type metadata for OneToOne)
  {
    os_unfair_lock_lock((v6 + 24));
    sub_242A2B4B0((v6 + 32), &v10);
    type metadata accessor for XPCHostConnection();
    sub_242A3549C();
    os_unfair_lock_unlock((v6 + 24));
    if ((v10 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v10 = a1;

  v8 = a3(&v10);

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A30, &qword_242A35E98);
    v9 = sub_242A3525C();
    MEMORY[0x28223BE20](v9);
    type metadata accessor for XPCHost.Handler();
    swift_getWitnessTable();
    sub_242A3526C();
  }

  else
  {
LABEL_8:
    sub_242A3527C();
  }
}

void sub_242A1FCF0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = v5[5];
  v9 = v5[6];
  sub_242A1F5F0(a1, a2, a3, a4, v5[3], a5);
}

uint64_t sub_242A1FD4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_242A1FD7C(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  return result;
}

uint64_t sub_242A1FD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x277D85DE8];
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v8 = SecTaskCreateWithAuditToken(0, &token);
  if (!v8)
  {
    if (qword_280B1B358 != -1)
    {
      swift_once();
    }

    v14 = sub_242A3517C();
    __swift_project_value_buffer(v14, qword_280B1B7F8);
    v9 = sub_242A3515C();
    v15 = sub_242A3554C();
    if (os_log_type_enabled(v9, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v34 = v17;
      *v16 = 136315138;
      *token.val = a1;
      *&token.val[2] = a2;
      *&token.val[4] = a3;
      *&token.val[6] = a4;
      type metadata accessor for audit_token_t(0);
      v18 = sub_242A353BC();
      v20 = sub_242A2D920(v18, v19, &v34);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_242A1C000, v9, v15, "Failed to create task for %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x245D20850](v17, -1, -1);
      MEMORY[0x245D20850](v16, -1, -1);
    }

    goto LABEL_19;
  }

  v9 = v8;
  error = 0;
  v10 = SecTaskCopySigningIdentifier(v8, &error);
  if (!v10)
  {
    if (qword_280B1B358 != -1)
    {
      swift_once();
    }

    v21 = sub_242A3517C();
    __swift_project_value_buffer(v21, qword_280B1B7F8);
    v22 = sub_242A3515C();
    v23 = sub_242A3554C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v35 = v25;
      *v24 = 136315394;
      *token.val = a1;
      *&token.val[2] = a2;
      *&token.val[4] = a3;
      *&token.val[6] = a4;
      type metadata accessor for audit_token_t(0);
      v26 = sub_242A353BC();
      v28 = sub_242A2D920(v26, v27, &v35);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      swift_beginAccess();
      if (error)
      {
        *token.val = error;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8AC8, &unk_242A36D20);
        v29 = sub_242A353BC();
        v31 = v30;
      }

      else
      {
        v31 = 0xE300000000000000;
        v29 = 7104878;
      }

      v32 = sub_242A2D920(v29, v31, &v35);

      *(v24 + 14) = v32;
      _os_log_impl(&dword_242A1C000, v22, v23, "Could not get signing identifier for %s: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D20850](v25, -1, -1);
      MEMORY[0x245D20850](v24, -1, -1);
    }

    swift_beginAccess();
    if (error)
    {
    }

LABEL_19:

    result = 0;
    goto LABEL_20;
  }

  v11 = v10;
  v12 = sub_242A3539C();

  swift_beginAccess();
  if (error)
  {
  }

  result = v12;
LABEL_20:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_242A20178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  static XPCMessage.messageIdentifier.getter();
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = a2;
  v13[7] = a3;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = &unk_242A36298;
  v14[7] = v13;

  sub_242A3532C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox();
  swift_getFunctionTypeMetadata();
  sub_242A3535C();
  return sub_242A3537C();
}

uint64_t sub_242A20318()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_242A2035C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v12 = *(v0 + 96);
  (*(*(v0 + 120) + 16))(v1, *(v0 + 80), v3);
  v6 = v2 + 80;
  v5 = *(v2 + 80);
  v4 = *(v6 + 8);
  *(v0 + 136) = swift_getAssociatedTypeWitness();
  *(v0 + 144) = swift_getAssociatedConformanceWitness();
  TypedPayloadBox.init<A>(value:)(v1, v3, v12, v0 + 16);
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v12;
  *(v7 + 40) = v0 + 16;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  *v9 = v0;
  v9[1] = sub_242A2782C;
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v9, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_242A20BE8, v7, v10);
}

uint64_t sub_242A20504(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = sub_242A352CC();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v19[4] = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v19[6] = v19 - v16;
  MEMORY[0x28223BE20](v15);
  v17 = a2[2];
  v21 = *(v10 + 80);
  v22 = a4;
  v19[5] = a4;
  v23 = *(v10 + 88);
  v24 = a5;
  v25 = a3;
  v26 = a1;
  v19[7] = a1;

  os_unfair_lock_lock((v17 + 16));
  sub_242A20BF4((v17 + 24), sub_242A20CE0, v20, v17);
  os_unfair_lock_unlock((v17 + 16));
}

void *sub_242A20BF4(void *result, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  if (*result)
  {
    v11 = *result;

    a2(&v11);
  }

  v6 = *(a4 + 32);
  if (v6)
  {
    v7 = result;
    v8 = *(a4 + 40);

    v6(&v11, v9);
    result = sub_242A1D2CC(v6);
    if (!v4)
    {
      v10 = v11;
      *v7 = v11;
      v11 = v10;

      a2(&v11);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_242A20D0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v14[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A20, &unk_242A35DD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = *a1;
  (*(v6 + 16))(v14 - v8, a3, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v9, v5);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox();
  swift_getWitnessTable();
  sub_242A351DC();
}

uint64_t sub_242A20F00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A20, &unk_242A35DD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t TypedPayloadBox.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v17[0] = *(a2 + 24);
  type metadata accessor for TypedPayloadBox.CodingKeys();
  swift_getWitnessTable();
  v18 = sub_242A356EC();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v18);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_242A357EC();
  v11 = v3[5];
  __swift_project_boxed_opaque_existential_2(v3, v3[3]);
  v12 = v17[1];
  sub_242A211F0();
  if (v12)
  {
    return (*(v6 + 8))(v9, v18);
  }

  v14 = v3[6];
  v15 = v3[7];
  v19 = 0;
  swift_beginAccess();
  v16 = v18;
  sub_242A356CC();
  swift_endAccess();
  return (*(v6 + 8))(v9, v16);
}

uint64_t sub_242A211F0()
{
  swift_beginAccess();
  type metadata accessor for TypedPayloadBox.CodingKeys();
  swift_getWitnessTable();
  sub_242A356EC();
  sub_242A356DC();
  return swift_endAccess();
}

uint64_t sub_242A212E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_242A3581C();
  v11 = v10;
  v13 = *(a7 + 8);
  v12 = *(a7 + 16);
  v15[3] = type metadata accessor for TypedPayloadDecoder();
  v15[4] = &protocol witness table for TypedPayloadDecoder<A>;
  nullsub_1(v15, a5, v13, v12);
  swift_beginAccess();
  sub_242A213B8(v15, v9, v11);
  return swift_endAccess();
}

uint64_t sub_242A213B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_242A215B4(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_242A21460(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_242A23D38(a1);
    sub_242A34CFC(a2, a3, v10);

    return sub_242A23D38(v10);
  }

  return result;
}

uint64_t sub_242A21460(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_242A215CC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_242A34F64();
      v11 = v19;
      goto LABEL_8;
    }

    sub_242A233A8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_242A215CC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_242A3572C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_242A215B4(a1, v23);
  }

  else
  {
    sub_242A23724(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_242A215B4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_242A215CC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_242A3578C();
  sub_242A353DC();
  v6 = sub_242A357AC();

  return sub_242A2366C(a1, a2, v6);
}

void sub_242A21644(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 88);
  v6 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (AssociatedTypeWitness == &type metadata for OneToOne)
  {
    v18 = *a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A48, &qword_242A360C8);
    swift_allocObject();
    v19 = sub_242A3544C();
    *v20 = a2;
    sub_242A3549C();
    *a1 = v19;
  }

  else if (AssociatedTypeWitness == &type metadata for OneToMany)
  {
    sub_242A3549C();

    sub_242A3547C();
  }

  else
  {
    v8 = AssociatedTypeWitness;
    if (qword_280B1B358 != -1)
    {
      swift_once();
    }

    v9 = sub_242A3517C();
    __swift_project_value_buffer(v9, qword_280B1B7F8);
    v10 = sub_242A3515C();
    v11 = sub_242A3554C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136315138;
      v21 = v8;
      MetatypeMetadata = swift_getMetatypeMetadata();
      v15 = sub_242A348EC(&v21, MetatypeMetadata);
      v17 = sub_242A2D920(v15, v16, &v22);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_242A1C000, v10, v11, "Unsupported XPC interface kind %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x245D20850](v13, -1, -1);
      MEMORY[0x245D20850](v12, -1, -1);
    }
  }
}

double sub_242A218BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_242A227BC(a1, a2);
}

uint64_t sub_242A218C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v38 = a2;
  v7 = *v3;
  v8 = sub_242A3532C();
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v7 + 88);
  v13 = *(v7 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for TypedPayloadBox();
  WitnessTable = swift_getWitnessTable();
  nullsub_1(v17, v14, WitnessTable, v16);
  sub_242A3530C();
  v35 = v11;
  v36 = a3;
  v44[0] = v40;
  v44[1] = v41;
  v44[2] = v42;
  v44[3] = v43;
  os_unfair_lock_lock(v4 + 16);
  sub_242A23C00(v4 + 9, v44, &v40);
  type metadata accessor for XPCHost.MessageReply();
  v39[0] = v8;
  v39[1] = v14;
  v18 = v14;
  swift_getFunctionTypeMetadata();
  sub_242A3535C();
  sub_242A3557C();
  os_unfair_lock_unlock(v4 + 16);
  v19 = v40;
  v20 = v35;
  if (v40)
  {
    (*(v37 + 16))(v35, a1, v8);
    v19(&v40, v20, v44);
    if (!*(&v41 + 1))
    {
      sub_242A1D2CC(v19);
      v33 = v36;
      *(v36 + 32) = 0;
      *v33 = 0u;
      v33[1] = 0u;
      return (*(*(v14 - 8) + 8))(v44, v14);
    }

    v21 = v36;
    if (*(&v41 + 1) == 1)
    {
      if (sub_242A352EC())
      {
        sub_242A351FC();
      }
    }

    else if (*(&v41 + 1) != 2)
    {
      sub_242A1D2CC(v19);
      sub_242A215B4(&v40, v21);
      return (*(*(v14 - 8) + 8))(v44, v14);
    }

    sub_242A1D2CC(v19);
    *(v21 + 32) = 0;
    *v21 = 0u;
    *(v21 + 16) = 0u;
    return (*(*(v14 - 8) + 8))(v44, v14);
  }

  if (qword_280B1B358 != -1)
  {
    swift_once();
  }

  v22 = sub_242A3517C();
  __swift_project_value_buffer(v22, qword_280B1B7F8);
  v23 = *(v14 - 8);
  (*(v23 + 16))(&v40, v44, v14);
  v24 = sub_242A3515C();
  v25 = sub_242A3554C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v39[0] = v27;
    *v26 = 136315138;
    v28 = v43;
    v29 = *(v23 + 8);

    v29(&v40, v14);
    v30 = sub_242A2D920(v28, *(&v28 + 1), v39);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_242A1C000, v24, v25, "No handler was registered for message %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x245D20850](v27, -1, -1);
    MEMORY[0x245D20850](v26, -1, -1);
  }

  else
  {

    v29 = *(v23 + 8);
    v29(&v40, v14);
  }

  v31 = v36;
  *(v36 + 32) = 0;
  *v31 = 0u;
  v31[1] = 0u;
  return (v29)(v44, v18);
}

uint64_t sub_242A21E9C(uint64_t result, int a2, int a3)
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

uint64_t sub_242A21EEC(uint64_t a1, int a2)
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

uint64_t TypedPayloadBox.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v41 = a4;
  v7 = type metadata accessor for TypedPayloadBox.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_242A356AC();
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v13 = (*(a3 + 8))(a2, a3);
  v15 = a1[3];
  v14 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_2(a1, v15);
  v16 = v43;
  sub_242A357DC();
  if (v16)
  {

    v20 = v51;
  }

  else
  {
    v43 = WitnessTable;
    v17 = v42;
    LOBYTE(v45[0]) = 0;
    v18 = sub_242A3567C();
    v22 = v19;
    v40 = v9;
    v23 = *(v13 + 16);
    v24 = v17;
    v39 = v18;
    if (v23 && (v25 = sub_242A215CC(v18, v19), (v26 & 1) != 0))
    {
      v38 = v22;
      sub_242A237BC(*(v13 + 56) + 40 * v25, v45);

      sub_242A215B4(v45, v46);
      v27 = v47;
      v28 = v48;
      __swift_project_boxed_opaque_existential_2(v46, v47);
      v44 = 1;
      (*(v28 + 8))(v45, v12, &v44, v7, v43, v27, v28);
      v29 = v51;
      (*(v24 + 8))(v12, v40);
      sub_242A23BE8(v45, v49);
      *&v50 = v39;
      *(&v50 + 1) = v38;
      __swift_destroy_boxed_opaque_existential_0(v46);
      v34 = v49[1];
      v35 = v41;
      *v41 = v49[0];
      v35[1] = v34;
      v36 = v50;
      v35[2] = v49[2];
      v35[3] = v36;
    }

    else
    {

      v30 = sub_242A355FC();
      swift_allocError();
      v43 = v12;
      v32 = v31;
      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A70, qword_242A36910) + 48);
      *v32 = MEMORY[0x277D84F70] + 8;
      v29 = v51;
      v33 = v51[4];
      __swift_project_boxed_opaque_existential_2(v51, v51[3]);
      sub_242A357CC();
      *&v45[0] = 0;
      *(&v45[0] + 1) = 0xE000000000000000;
      sub_242A355CC();

      *&v45[0] = 0xD000000000000015;
      *(&v45[0] + 1) = 0x8000000242A36FE0;
      MEMORY[0x245D20070](v39, v22);

      MEMORY[0x245D20070](0xD000000000000010, 0x8000000242A37000);
      sub_242A355EC();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84170], v30);
      swift_willThrow();
      (*(v24 + 8))(v43, v40);
    }

    v20 = v29;
  }

  return __swift_destroy_boxed_opaque_existential_0(v20);
}

uint64_t static XPCMessages._typedPayloadDecoderMap.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = MEMORY[0x277D84F98];
  if (a1)
  {
    v6 = 0;
    v7 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v8 = a3 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      sub_242A212E4(*(v7 + 8 * v6), &v10, a1, a2, *(v7 + 8 * v6), a3, *(v8 + 8 * v6));
      ++v6;
    }

    while (a1 != v6);
  }

  swift_beginAccess();
  return v10;
}

double (*sub_242A224A0(uint64_t a1, uint64_t a2, uint64_t a3))@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(*v3 + 80);
  v7 = *(*v3 + 88);
  type metadata accessor for XPCHostConnection();

  v9 = XPCHostConnection.__allocating_init(session:bundleIdentifier:)(v8, a2, a3);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v6;
  v12[3] = v7;
  v12[4] = v10;
  v12[5] = v11;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v6;
  v15[3] = v7;
  v15[4] = v13;
  v15[5] = v14;
  os_unfair_lock_lock((v3 + 24));
  sub_242A21644((v3 + 32), v9);
  sub_242A3549C();
  os_unfair_lock_unlock((v3 + 24));

  return sub_242A218BC;
}

double (*sub_242A226B0@<X0>(uint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>))@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[2];
  result = sub_242A224A0(a1, v4, v5);
  *a2 = result;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v10;
  return result;
}

uint64_t XPCHostConnection.__allocating_init(session:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_242A3511C();
  *(v9 + qword_280B1B2C8) = a1;
  v10 = (v9 + qword_280B1B7F0);
  *v10 = a2;
  v10[1] = a3;
  return v9;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_242A22780(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  return sub_242A22794(a1, *v2);
}

double sub_242A227BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_242A218C8(a1, Strong, a2);

      return result;
    }
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void *__swift_project_boxed_opaque_existential_2(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_242A228CC(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_242A2295C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t TypedPayloadBox.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 118;
  }

  else
  {
    return 110;
  }
}

uint64_t sub_242A22A48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v78 = a4;
  v7 = type metadata accessor for XPCResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v76 = v7;
  v69 = sub_242A356AC();
  v68 = *(v69 - 8);
  v8 = *(v68 + 64);
  MEMORY[0x28223BE20](v69);
  v77 = &v64 - v9;
  v10 = type metadata accessor for XPCResult.SuccessCodingKeys();
  v11 = swift_getWitnessTable();
  v73 = v10;
  v72 = v11;
  v67 = sub_242A356AC();
  v66 = *(v67 - 8);
  v12 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v74 = &v64 - v13;
  type metadata accessor for XPCResult.CodingKeys();
  v82 = swift_getWitnessTable();
  v14 = sub_242A356AC();
  v15 = *(v14 - 8);
  v80 = v14;
  v81 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v64 - v17;
  v70 = a2;
  v71 = a3;
  v19 = type metadata accessor for XPCResult();
  v79 = *(v19 - 8);
  v20 = *(v79 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v64 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v64 - v27;
  v29 = a1;
  v30 = a1[3];
  v31 = a1[4];
  v90 = v29;
  __swift_project_boxed_opaque_existential_2(v29, v30);
  v32 = v83;
  sub_242A357DC();
  if (!v32)
  {
    v83 = v26;
    v65 = v23;
    v82 = v28;
    v33 = v80;
    v34 = v18;
    *&v84 = sub_242A3569C();
    sub_242A3549C();
    swift_getWitnessTable();
    *&v88 = sub_242A3559C();
    *(&v88 + 1) = v35;
    *&v89 = v36;
    *(&v89 + 1) = v37;
    sub_242A3558C();
    swift_getWitnessTable();
    sub_242A3550C();
    v38 = v84;
    if (v84 == 2 || (v64 = v88, v84 = v88, v85 = v89, (sub_242A3552C() & 1) == 0))
    {
      v46 = sub_242A355FC();
      swift_allocError();
      v48 = v47;
      v49 = v33;
      v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A70, qword_242A36910) + 48);
      *v48 = v19;
      sub_242A3566C();
      sub_242A355EC();
      (*(*(v46 - 8) + 104))(v48, *MEMORY[0x277D84160], v46);
      swift_willThrow();
      (*(v81 + 8))(v18, v49);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v38)
      {
        LOBYTE(v84) = 1;
        v39 = v77;
        v40 = v18;
        sub_242A3565C();
        v41 = v78;
        v42 = v79;
        v43 = v81;
        sub_242A347D8();
        v44 = v39;
        v45 = v69;
        sub_242A3568C();
        (*(v68 + 8))(v44, v45);
        (*(v43 + 8))(v40, v33);
        swift_unknownObjectRelease();
        v57 = v85;
        v58 = v86;
        v59 = v87;
        v60 = v65;
        *v65 = v84;
        v60[1] = v57;
        *(v60 + 4) = v58;
        *(v60 + 5) = v59;
        swift_storeEnumTagMultiPayload();
        v61 = *(v42 + 32);
        v62 = v82;
        v61(v82, v60, v19);
      }

      else
      {
        LOBYTE(v84) = 0;
        v51 = v74;
        v52 = v34;
        sub_242A3565C();
        v53 = v81;
        v54 = v79;
        v55 = v67;
        sub_242A3568C();
        (*(v66 + 8))(v51, v55);
        (*(v53 + 8))(v52, v33);
        swift_unknownObjectRelease();
        v63 = v83;
        swift_storeEnumTagMultiPayload();
        v61 = *(v54 + 32);
        v62 = v82;
        v61(v82, v63, v19);
        v41 = v78;
      }

      v61(v41, v62, v19);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v90);
}

uint64_t sub_242A23290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_242A232C4(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_242A232C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_242A356FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_242A356FC();

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

uint64_t sub_242A233A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8AD8, &qword_242A36E68);
  v36 = a2;
  result = sub_242A3563C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_242A215B4(v25, v37);
      }

      else
      {
        sub_242A237BC(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_242A3578C();
      sub_242A353DC();
      result = sub_242A357AC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_242A215B4(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

unint64_t sub_242A2366C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_242A356FC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_242A23724(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_242A215B4(a4, a5[7] + 40 * a1);
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

uint64_t sub_242A237BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *TypedPayloadDecoder.decode<A>(fromDecodingContainer:forKey:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  *(a2 + 24) = *(a1 + 16);
  *(a2 + 32) = *(a1 + 24);
  __swift_allocate_boxed_opaque_existential_2(a2);
  sub_242A356AC();
  result = sub_242A3568C();
  if (v2)
  {
    return __swift_deallocate_boxed_opaque_existential_2(a2);
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

uint64_t sub_242A23944(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_242A23958(*v1);
}

uint64_t sub_242A23958(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_242A239A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(v6 + 1);
    v9 = *(v6 + 4);
    v10 = *(v6 + 5);
    *a2 = *v6;
    *(a2 + 16) = v8;
    *(a2 + 32) = v9;
    *(a2 + 40) = v10;
    v11 = *(a1 + 16);
  }

  else
  {
    (*(*(*(a1 + 16) - 8) + 32))(a2, v6, *(a1 + 16));
  }

  sub_242A1F134();
  sub_242A357BC();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_242A23B18@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  v7 = a1[4];
  return swift_willThrowTypedImpl();
}

_OWORD *sub_242A23BE8(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

double sub_242A23C00@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  type metadata accessor for XPCHost.MessageReply();

  *&v8 = sub_242A3532C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  *(&v8 + 1) = type metadata accessor for TypedPayloadBox();
  swift_getFunctionTypeMetadata();
  sub_242A3536C();

  result = *&v8;
  *a3 = v8;
  return result;
}

uint64_t sub_242A23D38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8AD0, &qword_242A36E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242A23DA0(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v3();
  v5 = sub_242A3532C();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void sub_242A23E40(uint64_t a1@<X0>, char *a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v77 = a4;
  v78 = a3;
  v81 = a2;
  v74 = a1;
  v82 = a7;
  v68[2] = swift_getAssociatedTypeWitness();
  v68[1] = swift_getAssociatedConformanceWitness();
  v68[0] = swift_getAssociatedConformanceWitness();
  v80 = type metadata accessor for XPCResult();
  v79 = *(v80 - 8);
  v9 = *(v79 + 64);
  v10 = MEMORY[0x28223BE20](v80);
  v73 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v76 = v68 - v12;
  v72 = type metadata accessor for ReceivedMessage();
  v75 = *(v72 - 8);
  v13 = *(v75 + 64);
  MEMORY[0x28223BE20](v72);
  v71 = v68 - v14;
  v70 = sub_242A3557C();
  v69 = *(v70 - 8);
  v15 = *(v69 + 64);
  v16 = MEMORY[0x28223BE20](v70);
  v18 = v68 - v17;
  v19 = *(a5 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v23 = v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v68 - v24;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v26 = v19;
  v27 = v81;
  v28 = type metadata accessor for TypedPayloadBox();
  v29 = *(a6 + 8);
  v30 = *(a6 + 16);
  TypedPayloadBox.unbox<A>(as:)(a5, v18);
  if ((*(v26 + 48))(v18, 1, a5) == 1)
  {
    (*(v69 + 8))(v18, v70);
    if (qword_280B1B358 != -1)
    {
      swift_once();
    }

    v31 = sub_242A3517C();
    __swift_project_value_buffer(v31, qword_280B1B7F8);
    v32 = *(v28 - 8);
    v33 = *(v32 + 16);
    v33(v85, v27, v28);
    v34 = sub_242A3515C();
    v35 = sub_242A3554C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v84 = v37;
      *v36 = 136315394;
      v33(v83, v85, v28);
      v38 = sub_242A348EC(v83, v28);
      v40 = v39;
      v41 = sub_242A3557C();
      (*(*(v41 - 8) + 8))(v83, v41);
      (*(v32 + 8))(v85, v28);
      v42 = sub_242A2D920(v38, v40, &v84);

      *(v36 + 4) = v42;
      *(v36 + 12) = 2080;
      v83[0] = a5;
      MetatypeMetadata = swift_getMetatypeMetadata();
      v44 = sub_242A348EC(v83, MetatypeMetadata);
      v46 = sub_242A2D920(v44, v45, &v84);

      *(v36 + 14) = v46;
      _os_log_impl(&dword_242A1C000, v34, v35, "Failed to unbox message %s as type %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D20850](v37, -1, -1);
      MEMORY[0x245D20850](v36, -1, -1);
    }

    else
    {

      (*(v32 + 8))(v85, v28);
    }

    v62 = v82;
    *(v82 + 32) = 0;
    *v62 = 0u;
    v62[1] = 0u;
  }

  else
  {
    v47 = *(v26 + 32);
    v47(v25, v18, a5);
    v48 = v26;
    v49 = *(v26 + 16);
    v81 = v25;
    v49(v23, v25, a5);
    v50 = sub_242A352DC();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v57 = v71;
    v47(v71, v23, a5);
    v58 = v72;
    v59 = &v57[*(v72 + 36)];
    *v59 = v50;
    v59[1] = v52;
    v59[2] = v54;
    v59[3] = v56;
    v60 = v73;
    v78(v57);
    v61 = v58;
    v63 = v80;
    swift_storeEnumTagMultiPayload();
    v64 = v79;
    v65 = v76;
    (*(v79 + 32))(v76, v60, v63);
    v66 = v82;
    *(v82 + 24) = v63;
    v66[4] = swift_getWitnessTable();
    boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v66);
    (*(v64 + 32))(boxed_opaque_existential_2, v65, v63);
    (*(v75 + 8))(v57, v61);
    (*(v48 + 8))(v81, a5);
  }
}

uint64_t sub_242A24688(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t TypedPayloadBox.unbox<A>(as:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_242A24688(v3, &v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A68, &qword_242A36308);
  v6 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a2, v6 ^ 1u, 1, a1);
}

uint64_t sub_242A24788(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_242A24794(a1);
}

uint64_t sub_242A24794(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + 16);

    os_unfair_lock_lock((v4 + 16));
    v5 = *(v4 + 24);
    *(v4 + 24) = 0;
    os_unfair_lock_unlock((v4 + 16));
    if (v5)
    {
      v13 = v5;
      v6 = *(v4 + 48);
      if (v6)
      {
        v7 = *(v4 + 56);

        v6(&v13);

        sub_242A1D2CC(v6);
      }

      else
      {
      }
    }

    os_unfair_lock_lock((v3 + 40));
    v9 = *(v3 + 48);
    v8 = *(v3 + 56);
    if (v9)
    {
      v10 = sub_242A352CC();
      sub_242A1EC2C();
      v11 = swift_allocError();
      (*(*(v10 - 8) + 16))(v12, a1, v10);
      v13 = v11;

      v9(&v13);
      sub_242A1D2CC(v9);
    }

    *(v3 + 48) = v9;
    *(v3 + 56) = v8;
    os_unfair_lock_unlock((v3 + 40));
  }

  return result;
}

uint64_t sub_242A2494C(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for XPCResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v48 = v7;
  v52 = sub_242A356EC();
  v50 = *(v52 - 8);
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v49 = v41 - v9;
  v10 = type metadata accessor for XPCResult.SuccessCodingKeys();
  v11 = swift_getWitnessTable();
  v43 = v10;
  v41[1] = v11;
  v12 = sub_242A356EC();
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = *(v45 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v42 = v41 - v15;
  v44 = *(v4 - 8);
  v16 = *(v44 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v41[0] = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 - 1);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v22 = (v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = v4;
  v51 = v6;
  type metadata accessor for XPCResult.CodingKeys();
  swift_getWitnessTable();
  v62 = sub_242A356EC();
  v55 = *(v62 - 8);
  v23 = *(v55 + 64);
  MEMORY[0x28223BE20](v62);
  v25 = v41 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_242A357EC();
  (*(v19 + 16))(v22, v54, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v22;
    v28 = v22[1];
    v30 = v22[2];
    v29 = v22[3];
    v32 = v22[4];
    v31 = v22[5];
    LOBYTE(v56) = 1;
    v33 = v49;
    sub_242A356BC();
    v56 = v27;
    v57 = v28;
    v58 = v30;
    v59 = v29;
    v60 = v32;
    v61 = v31;
    sub_242A3482C();
    v34 = v52;
    sub_242A356DC();
    (*(v50 + 8))(v33, v34);
    (*(v55 + 8))(v25, v62);
  }

  else
  {
    v36 = v44;
    v37 = v41[0];
    v38 = v53;
    (*(v44 + 32))(v41[0], v22, v53);
    LOBYTE(v56) = 0;
    v39 = v42;
    sub_242A356BC();
    v40 = v46;
    sub_242A356DC();
    (*(v45 + 8))(v39, v40);
    (*(v36 + 8))(v37, v38);
    return (*(v55 + 8))(v25, v62);
  }
}

double sub_242A24F1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v103 = a4;
  v98 = a3;
  v94 = a1;
  v108 = a9;
  v102 = sub_242A3532C();
  v99 = *(v102 - 8);
  v16 = *(v99 + 64);
  MEMORY[0x28223BE20](v102);
  v93 = v17;
  v96 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A38, &qword_242A36078);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v106 = &v88 - v20;
  v107 = type metadata accessor for ReceivedMessage();
  v95 = *(v107 - 8);
  v21 = *(v95 + 64);
  v22 = MEMORY[0x28223BE20](v107);
  v92 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v23;
  MEMORY[0x28223BE20](v22);
  v105 = &v88 - v24;
  v90 = sub_242A3557C();
  v89 = *(v90 - 8);
  v25 = *(v89 + 64);
  v26 = MEMORY[0x28223BE20](v90);
  v28 = &v88 - v27;
  v29 = *(a6 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v26);
  v33 = &v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v104 = &v88 - v34;
  swift_getAssociatedTypeWitness();
  v100 = a7;
  v97 = a5;
  swift_getAssociatedConformanceWitness();
  v35 = type metadata accessor for TypedPayloadBox();
  v36 = *(a8 + 8);
  v37 = *(a8 + 16);
  v101 = a8;
  TypedPayloadBox.unbox<A>(as:)(a6, v28);
  v38 = *(v29 + 48);
  v109 = a6;
  if (v38(v28, 1, a6) == 1)
  {
    (*(v89 + 8))(v28, v90);
    if (qword_280B1B358 != -1)
    {
      swift_once();
    }

    v39 = sub_242A3517C();
    __swift_project_value_buffer(v39, qword_280B1B7F8);
    v40 = *(v35 - 8);
    v41 = *(v40 + 16);
    v41(v112, a2, v35);
    v42 = sub_242A3515C();
    v43 = sub_242A3554C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v111 = v45;
      *v44 = 136315394;
      v41(v110, v112, v35);
      v46 = sub_242A348EC(v110, v35);
      v48 = v47;
      v49 = sub_242A3557C();
      (*(*(v49 - 8) + 8))(v110, v49);
      (*(v40 + 8))(v112, v35);
      v50 = sub_242A2D920(v46, v48, &v111);

      *(v44 + 4) = v50;
      *(v44 + 12) = 2080;
      *v110 = v109;
      MetatypeMetadata = swift_getMetatypeMetadata();
      v52 = sub_242A348EC(v110, MetatypeMetadata);
      v54 = sub_242A2D920(v52, v53, &v111);

      *(v44 + 14) = v54;
      _os_log_impl(&dword_242A1C000, v42, v43, "Failed to unbox message %s as type %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D20850](v45, -1, -1);
      MEMORY[0x245D20850](v44, -1, -1);
    }

    else
    {

      (*(v40 + 8))(v112, v35);
    }

    v87 = v108;
    v108[4] = 0;
    result = 0.0;
    *v87 = 0u;
    v87[1] = 0u;
  }

  else
  {
    v90 = a11;
    v89 = a10;
    v88 = v29;
    v55 = *(v29 + 32);
    v56 = v104;
    v57 = v109;
    v55(v104, v28, v109);
    v58 = v56;
    v59 = v57;
    (*(v29 + 16))(v33, v58, v57);
    v60 = v94;
    v61 = sub_242A352DC();
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v68 = v105;
    v55(v105, v33, v59);
    v69 = v107;
    v70 = &v68[*(v107 + 36)];
    *v70 = v61;
    v70[1] = v63;
    v70[2] = v65;
    v70[3] = v67;
    v71 = sub_242A354FC();
    (*(*(v71 - 8) + 56))(v106, 1, 1, v71);
    v72 = v95;
    v73 = v92;
    (*(v95 + 16))(v92, v68, v69);
    v74 = v99;
    v75 = v96;
    v76 = v102;
    (*(v99 + 16))(v96, v60, v102);
    v77 = (*(v72 + 80) + 80) & ~*(v72 + 80);
    v78 = (v91 + *(v74 + 80) + v77) & ~*(v74 + 80);
    v79 = swift_allocObject();
    *(v79 + 2) = 0;
    *(v79 + 3) = 0;
    v80 = v109;
    *(v79 + 4) = v97;
    *(v79 + 5) = v80;
    v81 = v101;
    *(v79 + 6) = v100;
    *(v79 + 7) = v81;
    v82 = v103;
    *(v79 + 8) = v98;
    *(v79 + 9) = v82;
    v83 = &v79[v77];
    v84 = v107;
    (*(v72 + 32))(v83, v73, v107);
    (*(v74 + 32))(&v79[v78], v75, v76);

    sub_242A2EAA0(0, 0, v106, v90, v79);

    (*(v72 + 8))(v105, v84);
    (*(v88 + 8))(v104, v80);
    v85 = v108;
    *v108 = 0;
    v85[1] = 0;
    v85[2] = 0;
    *&result = 2;
    *(v85 + 3) = xmmword_242A35E70;
  }

  return result;
}

uint64_t sub_242A25820(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_242A25880(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_242A271C0;

  return sub_242A25938(a1, v5);
}

uint64_t sub_242A25938(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_242A27698;

  return v7(a1);
}

uint64_t sub_242A25A30(uint64_t a1)
{
  v3 = v2;
  v4 = v1[5];
  v20 = v1[4];
  v5 = v1[7];
  v17 = v1[6];
  v6 = *(type metadata accessor for ReceivedMessage() - 8);
  v7 = (*(v6 + 80) + 80) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_242A3532C() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[8];
  v14 = v1[9];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_242A271C0;

  return sub_242A25BC8(a1, v11, v12, v13, v14, v1 + v7, v1 + v10);
}

uint64_t sub_242A25BC8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 72) = a7;
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v7 + 80) = v10;
  *v10 = v7;
  v10[1] = sub_242A25CDC;

  return v12(a6);
}

uint64_t sub_242A25CDC()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_242A2D744;
  }

  else
  {
    v3 = sub_242A25DF0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_242A25DF0()
{
  v1 = *(v0 + 72);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0;
  *(v0 + 16) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A28, &qword_242A36090);
  sub_242A25EAC();
  sub_242A352FC();
  sub_242A26D50(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_242A25EAC()
{
  result = qword_280B1AF98;
  if (!qword_280B1AF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A28, &qword_242A36090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1AF98);
  }

  return result;
}

uint64_t XPCClient.__deallocating_deinit()
{
  XPCClient.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void *XPCClient.deinit()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[2];

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  *(v3 + 24) = 0;
  os_unfair_lock_unlock((v3 + 16));
  if (v4)
  {
    v13[0] = v4;
    v5 = *(v3 + 48);
    if (v5)
    {
      v6 = *(v3 + 56);

      v5(v13);
      sub_242A1D2CC(v5);
    }
  }

  v7 = v1[2];

  v13[0] = sub_242A3532C();
  v10 = v2 + 80;
  v9 = *(v2 + 80);
  v8 = *(v10 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13[1] = type metadata accessor for TypedPayloadBox();
  swift_getFunctionTypeMetadata();
  sub_242A3535C();
  v11 = sub_242A3514C();
  sub_242A26414(v11);
  sub_242A25820((v1 + 6), &qword_27ECD8A58, &qword_242A361B0);
  return v1;
}

uint64_t sub_242A26120()
{
  sub_242A26178();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_242A26178()
{
  v1 = v0;
  v2 = v0 + *(*v0 + 88);
  v3 = *(*v0 + 80);
  sub_242A3557C();
  v4 = *(sub_242A3513C() + 28);
  v5 = sub_242A3514C();
  sub_242A26414(v5);
  v6 = (v1 + *(*v1 + 96));
  v7 = v6[1];
  sub_242A1D2CC(*v6);
  v8 = (v1 + *(*v1 + 104));
  v9 = v8[1];
  sub_242A1D2CC(*v8);
  return v0;
}

uint64_t sub_242A26244()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v13 = *(v0 + 104);
  (*(*(v0 + 128) + 16))(v1, *(v0 + 88), v3);
  v6 = v2 + 80;
  v5 = *(v2 + 80);
  v4 = *(v6 + 8);
  *(v0 + 144) = swift_getAssociatedTypeWitness();
  *(v0 + 152) = swift_getAssociatedConformanceWitness();
  TypedPayloadBox.init<A>(value:)(v1, v3, v13, v0 + 16);
  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v13;
  *(v7 + 40) = v0 + 16;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  *(v0 + 168) = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v9 = v0;
  v9[1] = sub_242A28834;
  v11 = *(v0 + 80);

  return MEMORY[0x2822008A0](v11, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_242A26424, v7, AssociatedTypeWitness);
}

uint64_t sub_242A2644C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = sub_242A352CC();
  v19 = *(v11 - 8);
  v12 = *(v19 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v14 = MEMORY[0x28223BE20](v13);
  v18[8] = v18 - v15;
  MEMORY[0x28223BE20](v14);
  v16 = a2[2];
  v21 = *(v10 + 80);
  v22 = a4;
  v23 = *(v10 + 88);
  v24 = a5;
  v18[7] = a5;
  v25 = a3;
  v26 = a1;

  os_unfair_lock_lock((v16 + 16));
  sub_242A20BF4((v16 + 24), sub_242A271E0, v20, v16);
  os_unfair_lock_unlock((v16 + 16));
}

uint64_t sub_242A26B94(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A78, &qword_242A36540);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_242A26CE0();
  sub_242A357EC();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_242A26CE0()
{
  result = qword_280B1AFB0;
  if (!qword_280B1AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1AFB0);
  }

  return result;
}

uint64_t sub_242A26D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  return result;
}

uint64_t sub_242A26DA0(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A20, &unk_242A35DD0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_242A26E1C(a1, v4);
}

uint64_t sub_242A26E1C(uint64_t a1, uint64_t a2)
{
  v28[1] = a2;
  v3 = sub_242A352CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_242A3532C();
  v28[0] = *(v8 - 8);
  v9 = *(v28[0] + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A18, &qword_242A35DC8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v28 - v14;
  sub_242A32970(a1, v28 - v14, &qword_27ECD8A18, &qword_242A35DC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v7, v15, v3);
    sub_242A1EC2C();
    v16 = swift_allocError();
    (*(v4 + 16))(v17, v7, v3);
    v29 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A20, &unk_242A35DD0);
    sub_242A354BC();
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v19 = v28[0];
    (*(v28[0] + 32))(v11, v15, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A28, &qword_242A36090);
    sub_242A27790(&qword_280B1AFB8);
    sub_242A3530C();
    if (v35 == 1)
    {
      v21 = v29;
      v20 = v30;
      v22 = v31;
      v23 = v32;
      v24 = v33;
      v25 = v34;
      sub_242A1F134();
      v26 = swift_allocError();
      *v27 = v21;
      v27[1] = v20;
      v27[2] = v22;
      v27[3] = v23;
      v27[4] = v24;
      v27[5] = v25;
      v29 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A20, &unk_242A35DD0);
      sub_242A354BC();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A20, &unk_242A35DD0);
      sub_242A354CC();
    }

    return (*(v19 + 8))(v11, v8);
  }
}

uint64_t sub_242A2720C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A18, &qword_242A35DC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242A2727C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_242A27370(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a7;
  v24 = a2;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
  v12 = sub_242A354DC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  v23 = *a1;
  (*(v13 + 16))(&v21 - v15, a3, v12);
  v17 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a4;
  *(v18 + 3) = a5;
  v19 = v22;
  *(v18 + 4) = a6;
  *(v18 + 5) = v19;
  (*(v13 + 32))(&v18[v17], v16, v12);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox();
  swift_getWitnessTable();
  sub_242A351DC();
}

uint64_t sub_242A275B8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
  v3 = sub_242A354DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v0 + v6, v3);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_242A27698()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_242A27790(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A28, &qword_242A36090);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242A2782C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_242A29900;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_242A27948;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_242A27948()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = type metadata accessor for TypedPayloadBox();
  (*(*(v4 - 8) + 8))(v0 + 2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_242A279EC(uint64_t a1)
{
  v3 = v2;
  v4 = v1[5];
  v20 = v1[4];
  v5 = v1[7];
  v17 = v1[6];
  v6 = *(type metadata accessor for ReceivedMessage() - 8);
  v7 = (*(v6 + 80) + 80) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_242A3532C() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[8];
  v14 = v1[9];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_242A2727C;

  return sub_242A27B84(a1, v11, v12, v13, v14, v1 + v7, v1 + v10);
}

uint64_t sub_242A27B84(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a7;
  v7[3] = swift_getAssociatedTypeWitness();
  v7[4] = swift_getAssociatedConformanceWitness();
  v7[5] = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for XPCResult();
  v7[6] = v10;
  v11 = *(v10 - 8);
  v7[7] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v7[8] = v13;
  v7[9] = swift_task_alloc();
  v17 = (a4 + *a4);
  v14 = a4[1];
  v15 = swift_task_alloc();
  v7[10] = v15;
  *v15 = v7;
  v15[1] = sub_242A27D94;

  return v17(v13, a6);
}

uint64_t sub_242A27D94()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_242A2C9A0;
  }

  else
  {
    v3 = sub_242A27EA8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_242A27EA8()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  swift_storeEnumTagMultiPayload();
  (*(v4 + 32))(v2, v1, v3);
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[2];
  swift_getWitnessTable();
  sub_242A352FC();
  (*(v8 + 8))(v5, v7);

  v10 = v0[1];

  return v10();
}

uint64_t sub_242A27FA4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
  v7 = *(sub_242A354DC() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_242A2808C(a1, v8);
}

uint64_t sub_242A2808C(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v38 = a2;
  v34 = sub_242A352CC();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v35 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v33 = sub_242A1F134();
  v4 = sub_242A357BC();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = &v29 - v6;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for XPCResult();
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = sub_242A3532C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A18, &qword_242A35DC8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - v18;
  sub_242A32970(v37, &v29 - v18, &qword_27ECD8A18, &qword_242A35DC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v35;
    v20 = v36;
    v22 = v34;
    (*(v36 + 32))(v35, v19, v34);
    sub_242A1EC2C();
    v23 = swift_allocError();
    (*(v20 + 16))(v24, v21, v22);
    v39 = v23;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
    sub_242A354DC();
    sub_242A354BC();
    return (*(v20 + 8))(v21, v22);
  }

  else
  {
    v26 = v12;
    (*(v12 + 32))(v15, v19, v11);
    swift_getWitnessTable();
    sub_242A3530C();
    v27 = v30;
    sub_242A239A8(v7, v30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
    v28 = sub_242A354DC();
    sub_242A285D4(v27, v28, &type metadata for XPCResultError);
    (*(v31 + 8))(v27, v32);
    (*(v29 + 8))(v10, v7);
    return (*(v26 + 8))(v15, v11);
  }
}

uint64_t sub_242A285D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[1] = a2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v8);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_242A357BC();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v25 - v18;
  (*(v20 + 16))(v25 - v18, a1, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *(v12 + 32);
    v21(v15, v19, a3);
    v22 = swift_allocError();
    v21(v23, v15, a3);
    v25[3] = v22;
    return sub_242A354BC();
  }

  else
  {
    (*(v6 + 32))(v10, v19, v5);
    return sub_242A354CC();
  }
}

uint64_t sub_242A28834()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_242A2A3A8;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_242A28950;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_242A28950()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = type metadata accessor for TypedPayloadBox();
  (*(*(v4 - 8) + 8))(v0 + 2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t *XPCHost.init(requestHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;
  v6 = sub_242A3524C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v3[2] = 0;
  v8 = *(v5 + 80);
  v9 = *(v5 + 88);
  type metadata accessor for XPCHostConnection();
  v25 = sub_242A3534C();
  *(v3 + 6) = 0;
  v3[4] = 0;
  v10 = sub_242A3549C();
  (*(*(v10 - 8) + 32))(v3 + 4, &v25, v10);
  v25 = 0;
  v26 = 0;
  *(v3 + 10) = 0;
  v3[7] = 0;
  v3[6] = 0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
  swift_getFunctionTypeMetadata2();
  v11 = sub_242A3557C();
  (*(*(v11 - 8) + 32))(v3 + 6, &v25, v11);
  type metadata accessor for XPCHost.MessageReply();
  v25 = sub_242A3532C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v26 = type metadata accessor for TypedPayloadBox();
  swift_getFunctionTypeMetadata();
  v25 = sub_242A3533C();
  *(v3 + 16) = 0;
  v3[9] = 0;
  v12 = sub_242A3535C();
  (*(*(v12 - 8) + 32))(v3 + 9, &v25, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v8;
  v14[3] = v9;
  v14[4] = v13;
  v14[5] = a1;
  v14[6] = a2;
  v15 = *(v9 + 56);

  v15(&v25, v8, v9);
  sub_242A3523C();
  v16 = sub_242A352BC();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = v27;
  v20 = sub_242A3529C();
  if (v19)
  {
  }

  else
  {
    v21 = v20;

    v22 = v3[2];
    v3[2] = v21;
  }

  return v3;
}

uint64_t sub_242A28DC8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242A28E00()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_242A28E40(uint64_t *a1)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for XPCHostConnection();
  sub_242A3549C();
  return sub_242A3513C();
}

uint64_t sub_242A28E98(uint64_t *a1)
{
  v1 = MEMORY[0x277D84F78] + 8;
  if (MEMORY[0x277D85020])
  {
    v2 = *a1;
    v3 = a1[1];
    type metadata accessor for XPCHostConnection();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
    swift_getFunctionTypeMetadata2();
    sub_242A3557C();
    return sub_242A3513C();
  }

  return v1;
}

uint64_t sub_242A28F28(uint64_t *a1)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for XPCHost.MessageReply();
  sub_242A3532C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox();
  swift_getFunctionTypeMetadata();
  sub_242A3535C();
  return sub_242A3513C();
}

uint64_t sub_242A2903C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
  v3 = sub_242A354DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v0 + v6, v3);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_242A2910C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A20, &unk_242A35DD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_242A291A0()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_242A291D8()
{
  sub_242A26D50(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_242A2921C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_242A29270()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_242A292A8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[8];

  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  v4 = v0[16];

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_242A2933C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_242A332F8(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t XPCHostConnection.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_280B1B7E8;
  v4 = sub_242A3512C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t XPCHostConnection.bundleIdentifier.getter()
{
  v1 = *(v0 + qword_280B1B7F0);
  v2 = *(v0 + qword_280B1B7F0 + 8);

  return v1;
}

uint64_t XPCHostConnection.init(session:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_242A3511C();
  *(v3 + qword_280B1B2C8) = a1;
  v7 = (v3 + qword_280B1B7F0);
  *v7 = a2;
  v7[1] = a3;
  return v3;
}

uint64_t XPCHostConnection.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v9);
  v11 = *(v6 + 88);
  v12 = *(v6 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  TypedPayloadBox.init<A>(value:)(v9, a2, a3, v16);
  v13 = *(v3 + qword_280B1B2C8);
  v14 = type metadata accessor for TypedPayloadBox();
  swift_getWitnessTable();
  sub_242A351EC();
  return (*(*(v14 - 8) + 8))(v16, v14);
}

{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v4[14] = *v3;
  v5 = *(a2 - 8);
  v4[15] = v5;
  v6 = *(v5 + 64) + 15;
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242A29758, 0, 0);
}

uint64_t sub_242A29758()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v11 = *(v0 + 96);
  (*(*(v0 + 120) + 16))(v1, *(v0 + 80), v3);
  v6 = v2 + 80;
  v5 = *(v2 + 80);
  v4 = *(v6 + 8);
  *(v0 + 136) = swift_getAssociatedTypeWitness();
  *(v0 + 144) = swift_getAssociatedConformanceWitness();
  TypedPayloadBox.init<A>(value:)(v1, v3, v11, v0 + 16);
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v11;
  *(v7 + 40) = v0 + 16;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  *v9 = v0;
  v9[1] = sub_242A2782C;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_242A29900()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];

  v5 = type metadata accessor for TypedPayloadBox();
  (*(*(v5 - 8) + 8))(v0 + 2, v5);

  v6 = v0[1];
  v7 = v0[21];

  return v6();
}

uint64_t sub_242A299B8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A20, &unk_242A35DD0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = *(a2 + qword_280B1B2C8);
  (*(v8 + 16))(&v18 - v10, a1, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v11, v7);
  v15 = *(v6 + 88);
  v16 = *(v6 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox();
  swift_getWitnessTable();
  sub_242A351DC();
}

uint64_t sub_242A29D70(uint64_t a1)
{
  v2 = sub_242A352CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_242A3532C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A18, &qword_242A35DC8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  sub_242A2720C(a1, &v27 - v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v15, v2);
    sub_242A2B18C(qword_280B1B6E0, MEMORY[0x277D855E8]);
    v16 = swift_allocError();
    (*(v3 + 16))(v17, v6, v2);
    v28 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A20, &unk_242A35DD0);
    sub_242A354BC();
    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v8 + 32))(v11, v15, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A28, &qword_242A36090);
    sub_242A2B250();
    sub_242A3530C();
    if (v34 == 1)
    {
      v19 = v28;
      v20 = v29;
      v21 = v30;
      v22 = v31;
      v23 = v32;
      v24 = v33;
      sub_242A1F134();
      v25 = swift_allocError();
      *v26 = v19;
      v26[1] = v20;
      v26[2] = v21;
      v26[3] = v22;
      v26[4] = v23;
      v26[5] = v24;
      v28 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A20, &unk_242A35DD0);
      sub_242A354BC();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A20, &unk_242A35DD0);
      sub_242A354CC();
    }

    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t XPCHostConnection.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v5[15] = *v4;
  v6 = *(a3 - 8);
  v5[16] = v6;
  v7 = *(v6 + 64) + 15;
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242A2A1DC, 0, 0);
}

uint64_t sub_242A2A1DC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v13 = *(v0 + 104);
  (*(*(v0 + 128) + 16))(v1, *(v0 + 88), v3);
  v6 = v2 + 80;
  v5 = *(v2 + 80);
  v4 = *(v6 + 8);
  *(v0 + 144) = swift_getAssociatedTypeWitness();
  *(v0 + 152) = swift_getAssociatedConformanceWitness();
  TypedPayloadBox.init<A>(value:)(v1, v3, v13, v0 + 16);
  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v13;
  *(v7 + 40) = v0 + 16;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  *(v0 + 168) = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v9 = v0;
  v9[1] = sub_242A28834;
  v11 = *(v0 + 80);

  return MEMORY[0x2822008A0](v11, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_242A2A860, v7, AssociatedTypeWitness);
}

uint64_t sub_242A2A3A8()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];

  v5 = type metadata accessor for TypedPayloadBox();
  (*(*(v5 - 8) + 8))(v0 + 2, v5);

  v6 = v0[1];
  v7 = v0[22];

  return v6();
}

uint64_t sub_242A2A460(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v22 = a3;
  v8 = *a2;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
  v9 = sub_242A354DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v20 - v12;
  v14 = *(a2 + qword_280B1B2C8);
  v15 = *(v10 + 16);
  v20[2] = a1;
  v15(v20 - v12, a1, v9);
  v16 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = *(v8 + 80);
  *(v17 + 3) = a4;
  v20[1] = a4;
  v18 = v21;
  *(v17 + 4) = *(v8 + 88);
  *(v17 + 5) = v18;
  (*(v10 + 32))(&v17[v16], v13, v9);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox();
  swift_getWitnessTable();
  sub_242A351DC();
}

uint64_t sub_242A2A86C(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v35 = a2;
  v2 = sub_242A352CC();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v32 = sub_242A1F134();
  v6 = sub_242A357BC();
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v29 = &v28 - v8;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for XPCResult();
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  v13 = sub_242A3532C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A18, &qword_242A35DC8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v28 - v20;
  sub_242A2720C(v34, &v28 - v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = v33;
    (*(v33 + 32))(v5, v21, v2);
    sub_242A2B18C(qword_280B1B6E0, MEMORY[0x277D855E8]);
    v23 = swift_allocError();
    (*(v22 + 16))(v24, v5, v2);
    v36 = v23;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
    sub_242A354DC();
    sub_242A354BC();
    return (*(v22 + 8))(v5, v2);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    swift_getWitnessTable();
    sub_242A3530C();
    v26 = v29;
    sub_242A239A8(v9, v29);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
    v27 = sub_242A354DC();
    sub_242A285D4(v26, v27, &type metadata for XPCResultError);
    (*(v30 + 8))(v26, v31);
    (*(v28 + 8))(v12, v9);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_242A2AE34()
{
  result = sub_242A3512C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_242A2AF14(uint64_t a1, int a2)
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

uint64_t sub_242A2AF34(uint64_t result, int a2, int a3)
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

uint64_t sub_242A2AFBC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
  v7 = *(sub_242A354DC() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_242A2A86C(a1, v8);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_242A2B0DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A10, &qword_242A35DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_242A2B18C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_242A2B1D4(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A20, &unk_242A35DD0) - 8) + 80);

  return sub_242A29D70(a1);
}

unint64_t sub_242A2B250()
{
  result = qword_280B1AFB8;
  if (!qword_280B1AFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A28, &qword_242A36090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1AFB8);
  }

  return result;
}

void sub_242A2B2C8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t *__swift_deallocate_boxed_opaque_existential_2(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x245D20850);
  }

  return result;
}

uint64_t sub_242A2B38C(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_242A2B3DC(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t XPCHost.__allocating_init(requestHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  XPCHost.init(requestHandler:)(a1, a2);
  return v4;
}

uint64_t sub_242A2B4B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  type metadata accessor for XPCHostConnection();
  sub_242A3549C();
  swift_getWitnessTable();
  result = sub_242A3552C();
  *a2 = result & 1;
  return result;
}

Swift::Void __swiftcall XPCHost.start()()
{
  v1 = v0;
  v2 = *v0;
  if (qword_280B1B358 != -1)
  {
    swift_once();
  }

  v3 = sub_242A3517C();
  __swift_project_value_buffer(v3, qword_280B1B7F8);
  v4 = sub_242A3515C();
  v5 = sub_242A3555C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v13 = *(v2 + 80);
    MetatypeMetadata = swift_getMetatypeMetadata();
    v9 = sub_242A348EC(&v13, MetatypeMetadata);
    v11 = sub_242A2D920(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_242A1C000, v4, v5, "Starting XPC host for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x245D20850](v7, -1, -1);
    MEMORY[0x245D20850](v6, -1, -1);
  }

  if (v1[2])
  {
    v12 = v1[2];

    sub_242A352AC();
  }
}

void *XPCHost.deinit()
{
  v1 = v0;
  v2 = *v0;
  if (v0[2])
  {

    sub_242A3528C();

    v3 = v0[2];
  }

  v4 = *(v2 + 80);
  v5 = *(v2 + 88);
  type metadata accessor for XPCHostConnection();
  sub_242A3549C();
  v6 = *(sub_242A3514C() + 16);
  sub_242A3556C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
  swift_getFunctionTypeMetadata2();
  sub_242A3557C();
  v7 = *(sub_242A3514C() + 16);
  sub_242A3556C();
  type metadata accessor for XPCHost.MessageReply();
  sub_242A3532C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox();
  swift_getFunctionTypeMetadata();
  sub_242A3535C();
  v8 = *(sub_242A3514C() + 16);
  sub_242A3556C();
  return v1;
}

uint64_t XPCHost.__deallocating_deinit()
{
  XPCHost.deinit();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

void XPCHost.setCancellationHandler(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  os_unfair_lock_lock(v2 + 10);
  sub_242A2BC44(v2 + 6, a1, a2, *(v5 + 80), *(v5 + 88));
  type metadata accessor for XPCHostConnection();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
  swift_getFunctionTypeMetadata2();
  sub_242A3557C();

  os_unfair_lock_unlock(v2 + 10);
}

uint64_t sub_242A2BC44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  if (v10)
  {
    v11 = a1[1];
    sub_242A1D2CC(v10);
  }

  if (a2)
  {
    v12 = swift_allocObject();
    v12[2] = a4;
    v12[3] = a5;
    v12[4] = a2;
    v12[5] = a3;
    v13 = sub_242A2E720;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  *a1 = v13;
  a1[1] = v12;
  return sub_242A1D78C(a2);
}

uint64_t XPCHost.ConnectionRequest.bundleIdentifier.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A30, &qword_242A35E98);
  sub_242A3525C();
  return v3;
}

uint64_t XPCHost.ConnectionRequest.value<A>(_:forEntitlement:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  sub_242A3557C();
  return sub_242A3525C();
}

uint64_t XPCHost<>.connection.getter()
{
  v1 = *v0;
  os_unfair_lock_lock(v0 + 6);
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  sub_242A2BE8C(v0 + 4);
  type metadata accessor for XPCHostConnection();
  sub_242A3549C();
  sub_242A3557C();
  os_unfair_lock_unlock(v0 + 6);
  return v5;
}

uint64_t sub_242A2BE8C(uint64_t *a1)
{
  v2 = *a1;
  type metadata accessor for XPCHostConnection();
  sub_242A3549C();
  swift_getWitnessTable();
  return sub_242A3551C();
}

void XPCHost<>.withConnections(perform:)(void (*a1)(uint64_t))
{
  v3 = v2;
  v5 = *&v1->_os_unfair_lock_opaque;
  os_unfair_lock_lock(v1 + 6);
  v6 = *(v5 + 80);
  v7 = *(v5 + 88);
  v8 = *&v1[8]._os_unfair_lock_opaque;

  if (v3)
  {
    type metadata accessor for XPCHostConnection();
    sub_242A3549C();
    os_unfair_lock_unlock(v1 + 6);
    __break(1u);
    return;
  }

  type metadata accessor for XPCHostConnection();
  sub_242A3549C();
  os_unfair_lock_unlock(v1 + 6);
  if (!sub_242A3548C())
  {
    goto LABEL_11;
  }

  v9 = 0;
  while (1)
  {
    v10 = sub_242A3546C();
    sub_242A3545C();
    if ((v10 & 1) == 0)
    {
      break;
    }

    v11 = *(v8 + 8 * v9 + 32);

    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_10;
    }

LABEL_6:
    a1(v11);

    ++v9;
    if (v12 == sub_242A3548C())
    {
      goto LABEL_11;
    }
  }

  v11 = sub_242A355DC();
  v12 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
LABEL_11:
}

void XPCHost<>.withConnections(filteredBy:perform:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = *v3;
  os_unfair_lock_lock(v3 + 6);
  v7 = *(v6 + 80);
  v8 = *(v6 + 88);
  sub_242A2C288(v3 + 4, &v14);
  if (v4)
  {
    type metadata accessor for XPCHostConnection();
    sub_242A3549C();
    os_unfair_lock_unlock(v3 + 6);
    __break(1u);
    return;
  }

  type metadata accessor for XPCHostConnection();
  sub_242A3549C();
  os_unfair_lock_unlock(v3 + 6);
  v9 = v14;
  if (!sub_242A3548C())
  {
    goto LABEL_11;
  }

  v10 = 0;
  while (1)
  {
    v11 = sub_242A3546C();
    sub_242A3545C();
    if ((v11 & 1) == 0)
    {
      break;
    }

    v12 = *(v9 + 8 * v10 + 32);

    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_10;
    }

LABEL_6:
    a3(v12);

    ++v10;
    if (v13 == sub_242A3548C())
    {
      goto LABEL_11;
    }
  }

  v12 = sub_242A355DC();
  v13 = v10 + 1;
  if (!__OFADD__(v10, 1))
  {
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
LABEL_11:
}

uint64_t sub_242A2C288@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  type metadata accessor for XPCHostConnection();
  sub_242A3549C();

  swift_getWitnessTable();
  result = sub_242A3561C();
  *a2 = result;
  return result;
}

void XPCHost<>.withFirstConnection(where:perform:)(uint64_t a1, uint64_t a2, void (*a3)())
{
  v6 = *v3;
  os_unfair_lock_lock(v3 + 6);
  v7 = *(v6 + 80);
  v8 = *(v6 + 88);
  sub_242A2C484(v3 + 4);
  type metadata accessor for XPCHostConnection();
  sub_242A3549C();
  sub_242A3557C();
  os_unfair_lock_unlock(v3 + 6);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    a3();
  }
}

uint64_t sub_242A2C484(uint64_t *a1)
{
  v2 = *a1;
  type metadata accessor for XPCHostConnection();
  sub_242A3549C();

  swift_getWitnessTable();
  sub_242A3540C();
}

void XPCHost.setMessageHandler<A>(for:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_242A2D368(a1, a2, a3, a4, a5, sub_242A2C57C);
}

{
  sub_242A2D368(a1, a2, a3, a4, a5, sub_242A2C7F4);
}

{
  sub_242A2D368(a1, a2, a3, a4, a5, sub_242A2CAB0);
}

{
  sub_242A2D368(a1, a2, a3, a4, a5, sub_242A2D598);
}

uint64_t sub_242A2C57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  static XPCMessage.messageIdentifier.getter();
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = a2;
  v13[7] = a3;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = sub_242A23E10;
  v14[7] = v13;
  type metadata accessor for XPCHost.MessageReply();

  sub_242A3532C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox();
  swift_getFunctionTypeMetadata();
  sub_242A3535C();
  return sub_242A3537C();
}

uint64_t sub_242A2C728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  result = type metadata accessor for ReceivedMessage();
  v13 = (a7 + *(result + 36));
  *v13 = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  return result;
}

uint64_t sub_242A2C7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  static XPCMessage.messageIdentifier.getter();
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = a2;
  v13[7] = a3;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = sub_242A277E0;
  v14[7] = v13;
  type metadata accessor for XPCHost.MessageReply();

  sub_242A3532C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox();
  swift_getFunctionTypeMetadata();
  sub_242A3535C();
  return sub_242A3537C();
}

uint64_t sub_242A2C9A0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  sub_242A32E44(*(v0 + 72));

  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 16);
  swift_getWitnessTable();
  sub_242A352FC();
  (*(v8 + 8))(v5, v7);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_242A2CAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  static XPCMessage.messageIdentifier.getter();
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = a2;
  v13[7] = a3;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = sub_242A2E56C;
  v14[7] = v13;
  type metadata accessor for XPCHost.MessageReply();

  sub_242A3532C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox();
  swift_getFunctionTypeMetadata();
  sub_242A3535C();
  return sub_242A3537C();
}

void sub_242A2CC5C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  *&v67 = a4;
  *&v68 = a3;
  v64 = a1;
  v70 = a7;
  v66 = type metadata accessor for ReceivedMessage();
  v69 = *(v66 - 8);
  v10 = *(v69 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v61 - v11;
  v63 = sub_242A3557C();
  v62 = *(v63 - 8);
  v12 = *(v62 + 64);
  v13 = MEMORY[0x28223BE20](v63);
  v15 = &v61 - v14;
  v16 = *(a5 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v61 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v61 - v20;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v22 = type metadata accessor for TypedPayloadBox();
  v23 = *(a6 + 8);
  v24 = *(a6 + 16);
  TypedPayloadBox.unbox<A>(as:)(a5, v15);
  if ((*(v16 + 48))(v15, 1, a5) == 1)
  {
    v25 = a5;
    (*(v62 + 8))(v15, v63);
    if (qword_280B1B358 != -1)
    {
      swift_once();
    }

    v26 = sub_242A3517C();
    __swift_project_value_buffer(v26, qword_280B1B7F8);
    v27 = *(v22 - 8);
    v28 = *(v27 + 16);
    v28(&v73, a2, v22);
    v29 = sub_242A3515C();
    v30 = sub_242A3554C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v72 = v32;
      *v31 = 136315394;
      v28(v71, &v73, v22);
      v33 = sub_242A348EC(v71, v22);
      v35 = v34;
      v36 = sub_242A3557C();
      (*(*(v36 - 8) + 8))(v71, v36);
      (*(v27 + 8))(&v73, v22);
      v37 = sub_242A2D920(v33, v35, &v72);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2080;
      *&v71[0] = v25;
      MetatypeMetadata = swift_getMetatypeMetadata();
      v39 = sub_242A348EC(v71, MetatypeMetadata);
      v41 = sub_242A2D920(v39, v40, &v72);

      *(v31 + 14) = v41;
      _os_log_impl(&dword_242A1C000, v29, v30, "Failed to unbox message %s as type %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D20850](v32, -1, -1);
      MEMORY[0x245D20850](v31, -1, -1);
    }

    else
    {

      (*(v27 + 8))(&v73, v22);
    }

    v56 = v70;
    *(v70 + 32) = 0;
    *v56 = 0u;
    v56[1] = 0u;
  }

  else
  {
    v42 = *(v16 + 32);
    v43 = v21;
    v42(v21, v15, a5);
    v44 = v61;
    (*(v16 + 16))(v61, v43, a5);
    v45 = sub_242A352DC();
    v47 = v46;
    v49 = v48;
    v64 = v50;
    v51 = v65;
    v42(v65, v44, a5);
    v52 = v66;
    v53 = &v51[*(v66 + 36)];
    *v53 = v45;
    v53[1] = v47;
    v54 = v64;
    v53[2] = v49;
    v53[3] = v54;
    (v68)(v51);
    v55 = v43;
    v68 = 0u;
    v67 = 0u;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A28, &qword_242A36090);
    v58 = v70;
    *(v70 + 24) = v57;
    v58[4] = sub_242A25EAC();
    v59 = swift_allocObject();
    *v58 = v59;
    v60 = v67;
    *(v59 + 16) = v68;
    *(v59 + 32) = v60;
    *(v59 + 48) = 0;
    *(v59 + 56) = 0;
    *(v59 + 64) = 0;
    (*(v69 + 8))(v51, v52);
    (*(v16 + 8))(v55, a5);
  }
}

void sub_242A2D368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, void, uint64_t, void, uint64_t))
{
  v12 = *&v6->_os_unfair_lock_opaque;
  os_unfair_lock_lock(v6 + 16);
  a6(&v6[18], a2, a3, *(v12 + 80), a4, *(v12 + 88), a5);
  type metadata accessor for XPCHost.MessageReply();
  sub_242A3532C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox();
  swift_getFunctionTypeMetadata();
  sub_242A3535C();

  os_unfair_lock_unlock(v6 + 16);
}

uint64_t sub_242A2D598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  static XPCMessage.messageIdentifier.getter();
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = a2;
  v13[7] = a3;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = sub_242A24EC0;
  v14[7] = v13;
  type metadata accessor for XPCHost.MessageReply();

  sub_242A3532C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox();
  swift_getFunctionTypeMetadata();
  sub_242A3535C();
  return sub_242A3537C();
}

uint64_t sub_242A2D744()
{
  v10 = v0;
  v1 = *(v0 + 88);
  sub_242A2E8D8(v8);

  v2 = v9;
  v3 = v8[1];
  v4 = v8[2];
  v5 = *(v0 + 72);
  *(v0 + 16) = v8[0];
  *(v0 + 32) = v3;
  *(v0 + 48) = v4;
  *(v0 + 64) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A28, &qword_242A36090);
  sub_242A25EAC();
  sub_242A352FC();
  sub_242A26D50(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t ReceivedMessage.auditToken.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  result = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  return result;
}

uint64_t sub_242A2D850(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_242A2D8C4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_242A2D920(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_242A2D920(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_242A2D9EC(v11, 0, 0, 1, a1, a2);
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
    sub_242A2E750(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_242A2D9EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_242A2DAF8(a5, a6);
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
    result = sub_242A3560C();
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

uint64_t sub_242A2DAF8(uint64_t a1, unint64_t a2)
{
  v4 = sub_242A2DB44(a1, a2);
  sub_242A2DC74(&unk_285539AA8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_242A2DB44(uint64_t a1, unint64_t a2)
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

  v6 = sub_242A2DD60(v5, 0);
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

  result = sub_242A3560C();
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
        v10 = sub_242A353FC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_242A2DD60(v10, 0);
        result = sub_242A355BC();
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

uint64_t sub_242A2DC74(uint64_t result)
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

  result = sub_242A2DDD4(result, v12, 1, v3);
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

void *sub_242A2DD60(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A40, &qword_242A360C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_242A2DDD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A40, &qword_242A360C0);
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

_BYTE **sub_242A2DEC8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_242A2DF88()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_242A2E078(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_242A2E0C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_242A2E114(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for audit_token_t(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_242A2E19C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 32;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFFC;
  if ((v6 & 0xFFFFFFFC) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_242A2E2A0(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 32;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 3) & 0xFFFFFFFC) == 0xFFFFFFE0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 3) & 0xFFFFFFFC) == 0xFFFFFFE0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 3) & 0xFFFFFFFC) != 0xFFFFFFE0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_242A2E424()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_8CallsXPC7XPCHostC12MessageReply33_486BE1C75C58B5FF152E39684162B14CLLOyx_G(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_242A2E48C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242A2E4E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

double sub_242A2E540(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(v0 + 5);
  v2 = *(v0 + 7);
  v3 = *(type metadata accessor for ReceivedMessage() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 80) & ~v4;
  v6 = *(v3 + 64);
  v7 = sub_242A3532C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v5 + v6 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = v4 | v9;
  v13 = *(v0 + 2);
  swift_unknownObjectRelease();
  v14 = *(v0 + 9);

  (*(*(v1 - 8) + 8))(&v0[v5], v1);
  (*(v8 + 8))(&v0[v10], v7);

  return MEMORY[0x2821FE8E8](v0, v10 + v11, v12 | 7);
}

uint64_t sub_242A2E6F0(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return v2(*a1) & 1;
}

uint64_t sub_242A2E720(void *a1, void *a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  return v3(*a1, *a2);
}

uint64_t sub_242A2E750(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_75Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_242A2E7F0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_242A2E82C(uint64_t *a1, int a2)
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

uint64_t sub_242A2E874(uint64_t result, int a2, int a3)
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

uint64_t sub_242A2E8D8@<X0>(uint64_t a1@<X8>)
{
  swift_getErrorValue();
  v2 = sub_242A3573C();
  v4 = v3;
  ErrorValue = swift_getErrorValue();
  v6 = *(*(v18[5] - 8) + 64);
  MEMORY[0x28223BE20](ErrorValue);
  (*(v8 + 16))(v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_242A353AC();
  v11 = v10;
  v12 = swift_getErrorValue();
  v13 = *(*(v18[1] - 8) + 64);
  MEMORY[0x28223BE20](v12);
  (*(v15 + 16))(v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_242A353BC();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v9;
  *(a1 + 24) = v11;
  *(a1 + 32) = result;
  *(a1 + 40) = v17;
  *(a1 + 48) = 1;
  return result;
}

uint64_t sub_242A2EAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A38, &qword_242A36078);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_242A32970(a3, v27 - v11, &qword_27ECD8A38, &qword_242A36078);
  v13 = sub_242A354FC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_242A25820(v12, &qword_27ECD8A38, &qword_242A36078);
  }

  else
  {
    sub_242A354EC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_242A354AC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_242A353CC() + 32;
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

      sub_242A25820(a3, &qword_27ECD8A38, &qword_242A36078);

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

  sub_242A25820(a3, &qword_27ECD8A38, &qword_242A36078);
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

uint64_t XPCClient.__allocating_init()()
{
  v0 = swift_allocObject();
  XPCClient.init()();
  return v0;
}

double sub_242A2EDD8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_242A3532C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      a2[1] = 0u;
      a2[2] = 0u;
      *a2 = 0u;

      return result;
    }

    if (sub_242A3531C())
    {
      sub_242A351FC();
    }

    else
    {
      (*(v5 + 16))(v8, a1, v4);
      sub_242A2EF70(v8);
    }
  }

  result = 0.0;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_242A2EF70(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A38, &qword_242A36078);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v38[-1] - v7;
  v9 = sub_242A3532C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v38[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = swift_allocBox();
  v15 = v14;
  (*(v10 + 32))(v14, a1, v9);
  (*(v10 + 16))(v13, v15, v9);
  v16 = *(v4 + 88);
  v17 = *(v4 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = type metadata accessor for TypedPayloadBox();
  swift_getWitnessTable();
  sub_242A3530C();
  (*(v10 + 8))(v13, v9);
  v43[0] = v39;
  v43[1] = v40;
  v43[2] = v41;
  v43[3] = v42;
  os_unfair_lock_lock(v2 + 6);
  sub_242A31D5C(v2 + 4, v43, &v39);
  v38[0] = v9;
  v38[1] = v18;
  swift_getFunctionTypeMetadata();
  sub_242A3535C();
  sub_242A3557C();
  j__os_unfair_lock_unlock(v2 + 6);
  v19 = v39;
  if (v39)
  {
    v20 = *(&v39 + 1);
    v21 = swift_allocObject();
    v21[2] = v17;
    v21[3] = v16;
    v21[4] = v19;
    v21[5] = v20;
    v22 = sub_242A354FC();
    (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
    v23 = *(v18 - 8);
    (*(v23 + 16))(&v39, v43, v18);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    *(v24 + 32) = v17;
    *(v24 + 40) = v16;
    v25 = v40;
    *(v24 + 72) = v39;
    *(v24 + 88) = v25;
    v26 = v42;
    *(v24 + 104) = v41;
    *(v24 + 48) = &unk_242A362D0;
    *(v24 + 56) = v21;
    *(v24 + 64) = v37;
    *(v24 + 120) = v26;

    sub_242A2EAA0(0, 0, v8, &unk_242A362E0, v24);

    (*(v23 + 8))(v43, v18);
  }

  else
  {
    if (qword_280B1B358 != -1)
    {
      swift_once();
    }

    v28 = sub_242A3517C();
    __swift_project_value_buffer(v28, qword_280B1B7F8);
    v29 = *(v18 - 8);
    (*(v29 + 16))(&v39, v43, v18);
    v30 = sub_242A3515C();
    v31 = sub_242A3554C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v38[0] = v33;
      *v32 = 136315138;
      v34 = v42;
      v35 = *(v29 + 8);

      v35(&v39, v18);
      v36 = sub_242A2D920(v34, *(&v34 + 1), v38);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_242A1C000, v30, v31, "No handler was registered for message %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x245D20850](v33, -1, -1);
      MEMORY[0x245D20850](v32, -1, -1);
    }

    else
    {

      v35 = *(v29 + 8);
      v35(&v39, v18);
    }

    v35(v43, v18);
  }
}

double sub_242A2F62C@<D0>(void (*a1)(uint64_t *__return_ptr)@<X1>, uint64_t a2@<X8>)
{
  a1(v11);
  v3 = v12;
  if (v12)
  {
    v4 = v13;
    v5 = __swift_project_boxed_opaque_existential_2(v11, v12);
    v9 = v3;
    v10 = v4;
    boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(&v8);
    (*(*(v3 - 8) + 16))(boxed_opaque_existential_2, v5, v3);
    sub_242A215B4(&v8, a2);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

Swift::Void __swiftcall XPCClient.destroyConnection()()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
  os_unfair_lock_unlock((v1 + 16));
  if (v2)
  {
    v5 = v2;
    v3 = *(v1 + 48);
    if (v3)
    {
      v4 = *(v1 + 56);

      v3(&v5);

      sub_242A1D2CC(v3);
    }

    else
    {
    }
  }
}

uint64_t sub_242A2F798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = a7;
  v8[33] = a8;
  v8[30] = a5;
  v8[31] = a6;
  v8[28] = a3;
  v8[29] = a4;
  v8[26] = a1;
  v8[27] = a2;
  v10 = sub_242A3557C();
  v8[34] = v10;
  v11 = *(v10 - 8);
  v8[35] = v11;
  v12 = *(v11 + 64) + 15;
  v8[36] = swift_task_alloc();
  v13 = *(a6 - 8);
  v8[37] = v13;
  v14 = *(v13 + 64) + 15;
  v8[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242A2F8BC, 0, 0);
}

uint64_t sub_242A2F8BC()
{
  v40 = v0;
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[30];
  v6 = v0[31];
  v7 = v0[27];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for TypedPayloadBox();
  v9 = *(v4 + 8);
  v10 = *(v4 + 16);
  TypedPayloadBox.unbox<A>(as:)(v6, v1);
  if ((*(v2 + 48))(v1, 1, v6) == 1)
  {
    (*(v0[35] + 8))(v0[36], v0[34]);
    if (qword_280B1B358 != -1)
    {
      swift_once();
    }

    v11 = v0[27];
    v12 = sub_242A3517C();
    __swift_project_value_buffer(v12, qword_280B1B7F8);
    v13 = *(v8 - 8);
    v14 = *(v13 + 16);
    v14(v0 + 2, v11, v8);
    v15 = sub_242A3515C();
    v16 = sub_242A3554C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[31];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v39 = v19;
      *v18 = 136315394;
      v14(v0 + 10, (v0 + 2), v8);
      v20 = sub_242A348EC((v0 + 10), v8);
      v22 = v21;
      v23 = sub_242A3557C();
      (*(*(v23 - 8) + 8))(v0 + 10, v23);
      (*(v13 + 8))(v0 + 2, v8);
      v24 = sub_242A2D920(v20, v22, &v39);

      *(v18 + 4) = v24;
      *(v18 + 12) = 2080;
      v0[25] = v17;
      MetatypeMetadata = swift_getMetatypeMetadata();
      v26 = sub_242A348EC((v0 + 25), MetatypeMetadata);
      v28 = sub_242A2D920(v26, v27, &v39);

      *(v18 + 14) = v28;
      _os_log_impl(&dword_242A1C000, v15, v16, "Failed to unbox message %s as type %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D20850](v19, -1, -1);
      MEMORY[0x245D20850](v18, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v0 + 2, v8);
    }

    v35 = v0[38];
    v36 = v0[36];

    v37 = v0[1];

    return v37();
  }

  else
  {
    v29 = v0[28];
    (*(v0[37] + 32))(v0[38], v0[36], v0[31]);
    v38 = (v29 + *v29);
    v30 = v29[1];
    v31 = swift_task_alloc();
    v0[39] = v31;
    *v31 = v0;
    v31[1] = sub_242A2FD44;
    v32 = v0[38];
    v33 = v0[29];

    return v38(v32);
  }
}

uint64_t sub_242A2FD44()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_242A2FFB0;
  }

  else
  {
    v3 = sub_242A2FE58;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_242A2FE58()
{
  v1 = *(v0 + 208);
  if (sub_242A352EC())
  {
    *(v0 + 144) = 0u;
    v3 = *(v0 + 296);
    v2 = *(v0 + 304);
    v4 = *(v0 + 248);
    v5 = *(v0 + 208);
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A28, &qword_242A36090);
    sub_242A27790(&qword_280B1AF98);
    sub_242A352FC();
    sub_242A26D50(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192));
    (*(v3 + 8))(v2, v4);
  }

  else
  {
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 248));
    sub_242A26D50(0, 0, 0, 0, 0, 0, 0);
  }

  v6 = *(v0 + 304);
  v7 = *(v0 + 288);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_242A2FFB0()
{
  v20 = v0;
  v1 = *(v0 + 320);
  sub_242A2E8D8(v18);

  v3 = v18[0];
  v2 = v18[1];
  v5 = v18[2];
  v4 = v18[3];
  v7 = v18[4];
  v6 = v18[5];
  v8 = v19;
  v9 = *(v0 + 208);
  if (sub_242A352EC())
  {
    *(v0 + 144) = v3;
    v10 = *(v0 + 296);
    v16 = *(v0 + 248);
    v17 = *(v0 + 304);
    v11 = *(v0 + 208);
    *(v0 + 152) = v2;
    *(v0 + 160) = v5;
    *(v0 + 168) = v4;
    *(v0 + 176) = v7;
    *(v0 + 184) = v6;
    *(v0 + 192) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A28, &qword_242A36090);
    sub_242A27790(&qword_280B1AF98);
    sub_242A352FC();
    sub_242A26D50(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192));
    (*(v10 + 8))(v17, v16);
  }

  else
  {
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 248));
    sub_242A26D50(v3, v2, v5, v4, v7, v6, v8);
  }

  v12 = *(v0 + 304);
  v13 = *(v0 + 288);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_242A30144(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a2;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_242A32A90;

  return v10(a2, a3);
}

uint64_t sub_242A30274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  static XPCMessage.messageIdentifier.getter();
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = a2;
  v13[7] = a3;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = &unk_242A36270;
  v14[7] = v13;

  sub_242A3532C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox();
  swift_getFunctionTypeMetadata();
  sub_242A3535C();
  return sub_242A3537C();
}

uint64_t sub_242A30414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a7;
  v8[26] = a8;
  v8[23] = a5;
  v8[24] = a6;
  v8[21] = a3;
  v8[22] = a4;
  v8[19] = a1;
  v8[20] = a2;
  v8[27] = swift_getAssociatedTypeWitness();
  v8[28] = swift_getAssociatedConformanceWitness();
  v8[29] = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for XPCResult();
  v8[30] = v10;
  v11 = *(v10 - 8);
  v8[31] = v11;
  v12 = *(v11 + 64) + 15;
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v13 = sub_242A3557C();
  v8[34] = v13;
  v14 = *(v13 - 8);
  v8[35] = v14;
  v15 = *(v14 + 64) + 15;
  v8[36] = swift_task_alloc();
  v16 = *(a6 - 8);
  v8[37] = v16;
  v17 = *(v16 + 64) + 15;
  v8[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242A30630, 0, 0);
}

uint64_t sub_242A30630()
{
  v43 = v0;
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[20];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for TypedPayloadBox();
  v9 = *(v4 + 8);
  v10 = *(v4 + 16);
  TypedPayloadBox.unbox<A>(as:)(v6, v1);
  if ((*(v2 + 48))(v1, 1, v6) == 1)
  {
    (*(v0[35] + 8))(v0[36], v0[34]);
    if (qword_280B1B358 != -1)
    {
      swift_once();
    }

    v11 = v0[20];
    v12 = sub_242A3517C();
    __swift_project_value_buffer(v12, qword_280B1B7F8);
    v13 = *(v8 - 8);
    v14 = *(v13 + 16);
    v14(v0 + 2, v11, v8);
    v15 = sub_242A3515C();
    v16 = sub_242A3554C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[24];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v42 = v19;
      *v18 = 136315394;
      v14(v0 + 10, (v0 + 2), v8);
      v20 = sub_242A348EC((v0 + 10), v8);
      v22 = v21;
      v23 = sub_242A3557C();
      (*(*(v23 - 8) + 8))(v0 + 10, v23);
      (*(v13 + 8))(v0 + 2, v8);
      v24 = sub_242A2D920(v20, v22, &v42);

      *(v18 + 4) = v24;
      *(v18 + 12) = 2080;
      v0[18] = v17;
      MetatypeMetadata = swift_getMetatypeMetadata();
      v26 = sub_242A348EC((v0 + 18), MetatypeMetadata);
      v28 = sub_242A2D920(v26, v27, &v42);

      *(v18 + 14) = v28;
      _os_log_impl(&dword_242A1C000, v15, v16, "Failed to unbox message %s as type %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D20850](v19, -1, -1);
      MEMORY[0x245D20850](v18, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v0 + 2, v8);
    }

    v36 = v0[38];
    v37 = v0[36];
    v39 = v0[32];
    v38 = v0[33];

    v40 = v0[1];

    return v40();
  }

  else
  {
    v29 = v0[21];
    (*(v0[37] + 32))(v0[38], v0[36], v0[24]);
    v41 = (v29 + *v29);
    v30 = v29[1];
    v31 = swift_task_alloc();
    v0[39] = v31;
    *v31 = v0;
    v31[1] = sub_242A30AD0;
    v32 = v0[38];
    v33 = v0[32];
    v34 = v0[22];

    return v41(v33, v32);
  }
}

uint64_t sub_242A30AD0()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_242A30D20;
  }

  else
  {
    v3 = sub_242A30BE4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_242A30BE4()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  swift_storeEnumTagMultiPayload();
  (*(v4 + 32))(v2, v1, v3);
  v6 = v0[37];
  v5 = v0[38];
  v7 = v0[33];
  v8 = v0[30];
  v9 = v0[31];
  v10 = v0[24];
  v11 = v0[19];
  swift_getWitnessTable();
  sub_242A352FC();
  (*(v9 + 8))(v7, v8);
  (*(v6 + 8))(v5, v10);
  v12 = v0[38];
  v13 = v0[36];
  v15 = v0[32];
  v14 = v0[33];

  v16 = v0[1];

  return v16();
}

uint64_t sub_242A30D20()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = *(v0 + 216);
  sub_242A32E44(*(v0 + 264));

  v6 = *(v0 + 296);
  v5 = *(v0 + 304);
  v7 = *(v0 + 264);
  v8 = *(v0 + 240);
  v9 = *(v0 + 248);
  v10 = *(v0 + 192);
  v11 = *(v0 + 152);
  swift_getWitnessTable();
  sub_242A352FC();
  (*(v9 + 8))(v7, v8);
  (*(v6 + 8))(v5, v10);
  v12 = *(v0 + 304);
  v13 = *(v0 + 288);
  v15 = *(v0 + 256);
  v14 = *(v0 + 264);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_242A30E48(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a2;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_242A30F50;

  return v10(a2, a3);
}

uint64_t sub_242A30F50()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v6 = *v0;

  v3 = sub_242A3532C();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t XPCClient.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v5[15] = *v4;
  v6 = *(a3 - 8);
  v5[16] = v6;
  v7 = *(v6 + 64) + 15;
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242A26244, 0, 0);
}

uint64_t XPCClient.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v4[14] = *v3;
  v5 = *(a2 - 8);
  v4[15] = v5;
  v6 = *(v5 + 64) + 15;
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242A2035C, 0, 0);
}

uint64_t XPCClient.sendSync<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v79 = sub_242A352CC();
  v81 = *(v79 - 8);
  v8 = *(v81 + 64);
  v9 = MEMORY[0x28223BE20](v79);
  v77 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v80 = &v71 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v78 = &v71 - v14;
  v15 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, a1, a2);
  v19 = *(v7 + 88);
  v20 = *(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = v17;
  v24 = AssociatedConformanceWitness;
  TypedPayloadBox.init<A>(value:)(v23, a2, a3, v91);
  v25 = v3[2];
  v84 = v20;
  v85 = a2;
  v76 = a2;
  v86 = v19;
  v87 = a3;
  v88 = v91;

  os_unfair_lock_lock((v25 + 16));
  v26 = v82;
  sub_242A20BF4((v25 + 24), sub_242A323A0, v83, v25);
  v27 = (v25 + 16);
  if (v26)
  {
    os_unfair_lock_unlock(v27);

    v92 = v26;
    MEMORY[0x245D206F0](v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A08, &qword_242A35E80);
    v28 = v78;
    v29 = v79;
    if (swift_dynamicCast())
    {
      v82 = v24;
      v75 = AssociatedTypeWitness;
      v74 = v3;

      v30 = v80;
      v31 = v81;
      (*(v81 + 32))(v80, v28, v29);
      if (qword_280B1B358 != -1)
      {
        swift_once();
      }

      v32 = sub_242A3517C();
      __swift_project_value_buffer(v32, qword_280B1B7F8);
      v33 = v77;
      v34 = v30;
      v35 = *(v31 + 16);
      v35(v77, v34, v29);
      v36 = sub_242A3515C();
      v37 = sub_242A3554C();
      v38 = os_log_type_enabled(v36, v37);
      v78 = v35;
      if (v38)
      {
        v39 = swift_slowAlloc();
        v40 = v35;
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v90 = v73;
        *v39 = 136315394;
        v89 = v76;
        MetatypeMetadata = swift_getMetatypeMetadata();
        v42 = sub_242A348EC(&v89, MetatypeMetadata);
        v43 = v29;
        v45 = sub_242A2D920(v42, v44, &v90);

        *(v39 + 4) = v45;
        *(v39 + 12) = 2112;
        sub_242A1EC2C();
        swift_allocError();
        v46 = v77;
        v40(v47, v77, v29);
        v48 = _swift_stdlib_bridgeErrorToNSError();
        v49 = *(v81 + 8);
        v49(v46, v43);
        *(v39 + 14) = v48;
        v50 = v72;
        *v72 = v48;
        v29 = v43;
        _os_log_impl(&dword_242A1C000, v36, v37, "Encountered XPC error when trying to send sync message %s error: %@", v39, 0x16u);
        sub_242A25820(v50, &qword_27ECD8A10, &qword_242A35DC0);
        MEMORY[0x245D20850](v50, -1, -1);
        v51 = v73;
        __swift_destroy_boxed_opaque_existential_0(v73);
        MEMORY[0x245D20850](v51, -1, -1);
        MEMORY[0x245D20850](v39, -1, -1);
      }

      else
      {

        v49 = *(v31 + 8);
        v49(v33, v29);
      }

      v63 = v74[2];

      os_unfair_lock_lock((v63 + 16));
      v64 = *(v63 + 24);
      *(v63 + 24) = 0;
      os_unfair_lock_unlock((v63 + 16));
      if (v64)
      {
        v90 = v64;
        v65 = *(v63 + 48);
        if (v65)
        {
          v66 = *(v63 + 56);

          v65(&v90);
          sub_242A1D2CC(v65);
        }
      }

      sub_242A1EC2C();
      swift_allocError();
      v67 = v80;
      (v78)(v68, v80, v29);
      swift_willThrow();
      v49(v67, v29);
    }

    else
    {

      if (qword_280B1B358 != -1)
      {
        swift_once();
      }

      v52 = sub_242A3517C();
      __swift_project_value_buffer(v52, qword_280B1B7F8);
      MEMORY[0x245D206F0](v26);
      v53 = sub_242A3515C();
      v54 = sub_242A3554C();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v92 = v82;
        *v55 = 136315394;
        v90 = v76;
        v57 = swift_getMetatypeMetadata();
        v58 = sub_242A348EC(&v90, v57);
        v60 = sub_242A2D920(v58, v59, &v92);

        *(v55 + 4) = v60;
        *(v55 + 12) = 2112;
        MEMORY[0x245D206F0](v26);
        v61 = _swift_stdlib_bridgeErrorToNSError();
        *(v55 + 14) = v61;
        *v56 = v61;
        _os_log_impl(&dword_242A1C000, v53, v54, "Failed to send sync message %s error: %@", v55, 0x16u);
        sub_242A25820(v56, &qword_27ECD8A10, &qword_242A35DC0);
        MEMORY[0x245D20850](v56, -1, -1);
        v62 = v82;
        __swift_destroy_boxed_opaque_existential_0(v82);
        MEMORY[0x245D20850](v62, -1, -1);
        MEMORY[0x245D20850](v55, -1, -1);
      }

      swift_willThrow();
    }
  }

  else
  {
    os_unfair_lock_unlock(v27);
  }

  v69 = type metadata accessor for TypedPayloadBox();
  return (*(*(v69 - 8) + 8))(v91, v69);
}

uint64_t sub_242A31AB0(uint64_t *a1)
{
  v3 = sub_242A3532C();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox();
  swift_getWitnessTable();
  result = sub_242A3521C();
  if (!v1)
  {
    v9 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A28, &qword_242A36090);
    sub_242A27790(&qword_280B1AFB8);
    sub_242A3530C();
    if (v24 == 1)
    {
      v16 = v20;
      v17 = v21;
      v18 = v22;
      v19 = v23;
      sub_242A1F134();
      swift_willThrowTypedImpl();
      v14 = v17;
      v15 = v16;
      v10 = v18;
      v11 = v19;
      swift_allocError();
      v12 = v14;
      *v13 = v15;
      *(v13 + 16) = v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v11;
    }

    return (*(v9 + 8))(v6, v3);
  }

  return result;
}

double sub_242A31D5C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);

  *&v8 = sub_242A3532C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  *(&v8 + 1) = type metadata accessor for TypedPayloadBox();
  swift_getFunctionTypeMetadata();
  sub_242A3536C();

  result = *&v8;
  *a3 = v8;
  return result;
}

uint64_t sub_242A31E7C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_242A2727C;

  return v7();
}

uint64_t sub_242A31F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a5;
  v7[7] = a7;
  v7[5] = a4;
  v8 = sub_242A3532C();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v7[9] = v9;
  v10 = *(v9 + 64) + 15;
  v7[10] = swift_task_alloc();
  v7[11] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_242A32054, 0, 0);
}

uint64_t sub_242A32054()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[5];
  swift_beginAccess();
  (*(v4 + 16))(v1, v2, v3);
  v12 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_242A32190;
  v8 = v0[10];
  v10 = v0[6];
  v9 = v0[7];

  return v12(v8, v9);
}

uint64_t sub_242A32190()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_242A322A0(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_242A32300(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_242A32374(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_242A323A0(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_242A31AB0(a1);
}

uint64_t sub_242A323F0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_242A271C0;

  return sub_242A30414(a1, a2, v11, v10, v6, v7, v8, v9);
}

void sub_242A324C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_242A2727C;

  JUMPOUT(0x242A30E48);
}

uint64_t sub_242A325C4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_242A271C0;

  return sub_242A2F798(a1, a2, v11, v10, v6, v7, v8, v9);
}

void sub_242A3269C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_242A271C0;

  JUMPOUT(0x242A30144);
}

double sub_242A32798@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_242A2EDD8(a1, a2);
}

uint64_t sub_242A327AC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_242A271C0;

  return sub_242A31E7C(a1, a2, v9);
}

uint64_t sub_242A32884(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_242A271C0;

  return sub_242A31F7C(a1, v6, v7, v8, v9, v10, (v1 + 9));
}

uint64_t sub_242A32970(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_242A329D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_242A2727C;

  return sub_242A25938(a1, v5);
}

uint64_t sub_242A32A98@<X0>(char *a1@<X8>)
{
  v2 = sub_242A3564C();

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

uint64_t sub_242A32B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_242A32B88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_242A32BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_242A32C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_242A32CE0@<X0>(uint64_t *a1@<X8>)
{
  result = TypedPayloadBox.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_242A32D20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_242A32D74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t TypedPayloadBox.name.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_242A32E44@<X0>(uint64_t *a1@<X8>)
{
  swift_getErrorValue();
  v2 = sub_242A3573C();
  v4 = v3;
  ErrorValue = swift_getErrorValue();
  v6 = *(*(v19[5] - 8) + 64);
  MEMORY[0x28223BE20](ErrorValue);
  (*(v8 + 16))(v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_242A353AC();
  v11 = v10;
  v12 = swift_getErrorValue();
  v13 = *(*(v19[1] - 8) + 64);
  MEMORY[0x28223BE20](v12);
  (*(v15 + 16))(v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_242A353BC();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v9;
  a1[3] = v11;
  a1[4] = v16;
  a1[5] = v17;
  type metadata accessor for XPCResult();
  return swift_storeEnumTagMultiPayload();
}

void XPCResultError.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getErrorValue();
  *a2 = sub_242A3573C();
  a2[1] = v4;
  ErrorValue = swift_getErrorValue();
  v6 = *(*(v17[5] - 8) + 64);
  MEMORY[0x28223BE20](ErrorValue);
  (*(v8 + 16))(v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  a2[2] = sub_242A353AC();
  a2[3] = v9;
  v10 = swift_getErrorValue();
  v11 = *(*(v17[1] - 8) + 64);
  MEMORY[0x28223BE20](v10);
  (*(v13 + 16))(v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_242A353BC();
  v16 = v15;

  a2[4] = v14;
  a2[5] = v16;
}

uint64_t sub_242A33224(char a1)
{
  sub_242A3578C();
  MEMORY[0x245D20420](a1 & 1);
  return sub_242A357AC();
}

BOOL sub_242A3326C(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_242A331EC(*a1, *a2);
}

uint64_t sub_242A33284(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_242A33224(*v1);
}

uint64_t sub_242A33298(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_242A331FC(a1, *v2);
}

uint64_t sub_242A332AC(uint64_t a1, void *a2)
{
  sub_242A3578C();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_242A331FC(v8, *v2);
  return sub_242A357AC();
}

uint64_t sub_242A332F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_242A356FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_242A33368@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_242A343D4();
  *a2 = result;
  return result;
}

uint64_t sub_242A3339C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_242A333F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_242A3344C@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_242A33444();
  *a2 = result & 1;
  return result;
}

uint64_t sub_242A33484(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_242A334D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_242A3352C()
{
  sub_242A3578C();
  MEMORY[0x245D20420](0);
  return sub_242A357AC();
}

uint64_t sub_242A33570()
{
  sub_242A3578C();
  MEMORY[0x245D20420](0);
  return sub_242A357AC();
}

uint64_t sub_242A335B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_242A33604(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_242A33664@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_242A336A0(uint64_t a1)
{
  v2 = sub_242A26CE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242A336DC(uint64_t a1)
{
  v2 = sub_242A26CE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CodableVoid.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A78, &qword_242A36540);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_242A26CE0();
  sub_242A357EC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t XPCResultError.localizedDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t XPCResultError.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t XPCResultError.debugDescription.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_242A338F8()
{
  v1 = *v0;
  sub_242A3578C();
  MEMORY[0x245D20420](v1);
  return sub_242A357AC();
}

uint64_t sub_242A3396C()
{
  v1 = *v0;
  sub_242A3578C();
  MEMORY[0x245D20420](v1);
  return sub_242A357AC();
}

unint64_t sub_242A339B0()
{
  v1 = 0x7470697263736564;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_242A33A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242A343DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242A33A54(uint64_t a1)
{
  v2 = sub_242A33C90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242A33A90(uint64_t a1)
{
  v2 = sub_242A33C90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t XPCResultError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A80, &qword_242A36548);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_242A33C90();
  sub_242A357EC();
  v18 = 0;
  v13 = v15[5];
  sub_242A356CC();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_242A356CC();
  v16 = 2;
  sub_242A356CC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_242A33C90()
{
  result = qword_27ECD8A88;
  if (!qword_27ECD8A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD8A88);
  }

  return result;
}

uint64_t XPCResultError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A90, &qword_242A36550);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_242A33C90();
  sub_242A357DC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = 0;
  v11 = sub_242A3567C();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_242A3567C();
  v23 = v14;
  v25 = 2;
  v15 = sub_242A3567C();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_242A33F9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_242A33FCC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
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

uint64_t sub_242A34010(uint64_t a1, int a2)
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

uint64_t sub_242A34058(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for XPCResultError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCResultError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_242A34220()
{
  result = qword_27ECD8A98;
  if (!qword_27ECD8A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD8A98);
  }

  return result;
}

unint64_t sub_242A34278()
{
  result = qword_27ECD8AA0;
  if (!qword_27ECD8AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD8AA0);
  }

  return result;
}

unint64_t sub_242A342D0()
{
  result = qword_27ECD8AA8;
  if (!qword_27ECD8AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD8AA8);
  }

  return result;
}

unint64_t sub_242A34328()
{
  result = qword_280B1AFA0;
  if (!qword_280B1AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1AFA0);
  }

  return result;
}

unint64_t sub_242A34380()
{
  result = qword_280B1AFA8;
  if (!qword_280B1AFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1AFA8);
  }

  return result;
}

uint64_t sub_242A343DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x8000000242A37020 == a2;
  if (v3 || (sub_242A356FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_242A356FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242A37040 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_242A356FC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_242A34508(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 48;
  if (*(v3 + 64) > 0x30uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_242A34620(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x30)
  {
    v5 = 48;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_242A347D8()
{
  result = qword_27ECD8AB0;
  if (!qword_27ECD8AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD8AB0);
  }

  return result;
}

unint64_t sub_242A3482C()
{
  result = qword_27ECD8AB8;
  if (!qword_27ECD8AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD8AB8);
  }

  return result;
}

uint64_t sub_242A348EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_242A3557C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - v8;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  (*(v5 + 16))(v9, a1, v4);
  if ((*(v10 + 48))(v9, 1, a2) == 1)
  {
    (*(v5 + 8))(v9, v4);
    return 7104878;
  }

  else
  {
    (*(v10 + 32))(v16, v9, a2);
    (*(v10 + 16))(v14, v16, a2);
    v18 = sub_242A353BC();
    (*(v10 + 8))(v16, a2);
    return v18;
  }
}

uint64_t sub_242A34B10()
{
  v0 = sub_242A3517C();
  __swift_allocate_value_buffer(v0, qword_280B1B7F8);
  __swift_project_value_buffer(v0, qword_280B1B7F8);
  return sub_242A3516C();
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_242A34C14(uint64_t a1, int a2)
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

uint64_t sub_242A34C5C(uint64_t result, int a2, int a3)
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

double sub_242A34CFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_242A215CC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_242A34F64();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_242A215B4((*(v12 + 56) + 40 * v9), a3);
    sub_242A34DA8(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_242A34DA8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_242A355AC() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_242A3578C();

      sub_242A353DC();
      v15 = sub_242A357AC();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_242A34F64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8AD8, &qword_242A36E68);
  v2 = *v0;
  v3 = sub_242A3562C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v25 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_242A237BC(*(v2 + 56) + 40 * v17, v26);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_242A215B4(v26, *(v4 + 56) + v22);
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

        v1 = v25;
        goto LABEL_21;
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
    return sub_242A3510C();
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}