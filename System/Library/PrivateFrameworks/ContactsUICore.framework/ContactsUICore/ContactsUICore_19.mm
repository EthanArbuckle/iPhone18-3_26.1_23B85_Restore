uint64_t sub_1A3439F80(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1A343A07C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1A31EE4BC(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CAD00);
  if (swift_dynamicCast())
  {
    if (v2 == v8 && v3 == v9)
    {

      v6 = 0;
    }

    else
    {
      v5 = sub_1A34CDE30();

      v6 = v5 ^ 1;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t SharedProfileLinkAnimationCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x3FF0000000000000;
  sub_1A34C99D0();
  return v0;
}

double sub_1A343A1BC()
{
  swift_getKeyPath();
  sub_1A343A508();
  sub_1A34C99A0();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_1A343A240(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A343A508();
    sub_1A34C9990();
  }

  return result;
}

void (*sub_1A343A33C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14ContactsUICore37SharedProfileLinkAnimationCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1A343A508();
  sub_1A34C99A0();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A34C99C0();

  v4[7] = sub_1A3340E34();
  return sub_1A343A444;
}

void sub_1A343A444(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A34C99B0();

  free(v1);
}

uint64_t SharedProfileLinkAnimationCoordinator.init()()
{
  *(v0 + 16) = 0x3FF0000000000000;
  sub_1A34C99D0();
  return v0;
}

unint64_t sub_1A343A508()
{
  result = qword_1EB0C2F70;
  if (!qword_1EB0C2F70)
  {
    type metadata accessor for SharedProfileLinkAnimationCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2F70);
  }

  return result;
}

uint64_t type metadata accessor for SharedProfileLinkAnimationCoordinator()
{
  result = qword_1EB0C2F60;
  if (!qword_1EB0C2F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A343A5AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t SharedProfileLinkAnimationCoordinator.deinit()
{
  v1 = OBJC_IVAR____TtC14ContactsUICore37SharedProfileLinkAnimationCoordinator___observationRegistrar;
  v2 = sub_1A34C99E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SharedProfileLinkAnimationCoordinator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14ContactsUICore37SharedProfileLinkAnimationCoordinator___observationRegistrar;
  v2 = sub_1A34C99E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A343A704()
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

void sub_1A343A864(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_1A343A8B0()
{
  if ([v0 imageOrientation])
  {
    v1 = [objc_allocWithZone(MEMORY[0x1E69DCA80]) init];
    [v11 scale];
    [v1 setScale_];
    [v11 size];
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize:v1 format:{v2, v3}];
    v5 = swift_allocObject();
    *(v5 + 16) = v11;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1A343AAEC;
    *(v6 + 24) = v5;
    aBlock[4] = sub_1A343AB48;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A343A864;
    aBlock[3] = &block_descriptor_24;
    v7 = _Block_copy(aBlock);
    v8 = v11;
    sub_1A34C9010();

    v9 = [v4 imageWithActions_];

    _Block_release(v7);
    LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

    if (v1)
    {
      __break(1u);
    }

    else
    {
      return v9;
    }
  }

  else
  {

    return v11;
  }

  return result;
}

id sub_1A343AAEC()
{
  v1 = *(v0 + 16);
  [v1 size];

  return [v1 drawInRect_];
}

uint64_t ContactCardViewConfiguration.init(isMailVIP:highlightedLabeledValueIdentifiers:shouldColorEmphasizeHighlightedProperties:favorites:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

void *ContactCardViewConfiguration.favorites.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t _s14ContactsUICore28ContactCardViewConfigurationV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 3);
  v4 = *(a2 + 3);
  v5 = a2[16];
  v6 = a1[16];
  v7 = sub_1A33BA84C(*(a1 + 1), *(a2 + 1));
  result = 0;
  if ((v7 & 1) != 0 && ((v5 ^ v6) & 1) == 0)
  {
    if (v3)
    {
      if (v4)
      {
        sub_1A343ACEC();
        v8 = v4;
        v9 = v3;
        v10 = sub_1A34CD830();

        if (v10)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_1A343ACEC()
{
  result = qword_1EB0CB778;
  if (!qword_1EB0CB778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB0CB778);
  }

  return result;
}

uint64_t RemoteCatalystClient.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EB0EDEA0;
  v4 = sub_1A34C9780();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoteCatalystClient.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_1EB0EDEA8;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*RemoteCatalystClient.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_1EB0EDEA8;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A32BDC04;
}

Swift::Void __swiftcall RemoteCatalystClient.handleServerDisconnect()()
{
  v1 = v0 + qword_1EB0EDEA8;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

id RemoteCatalystClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemoteCatalystClient.init()()
{
  ObjectType = swift_getObjectType();
  sub_1A34C8A90();
  *&v0[qword_1EB0EDEA8 + 8] = 0;
  swift_unknownObjectWeakInit();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1A343B028(char *a1)
{
  ObjectType = swift_getObjectType();
  sub_1A34C8A90();
  *&a1[qword_1EB0EDEA8 + 8] = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = a1;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1A343B094()
{
  v1 = qword_1EB0EDEA0;
  v2 = sub_1A34C9780();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = v0 + qword_1EB0EDEA8;

  return sub_1A31F08B0(v3);
}

id RemoteCatalystClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A343B144(uint64_t a1)
{
  v2 = qword_1EB0EDEA0;
  v3 = sub_1A34C9780();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = a1 + qword_1EB0EDEA8;

  return sub_1A31F08B0(v4);
}

uint64_t type metadata accessor for RemoteCatalystClient()
{
  result = qword_1EB0CB780;
  if (!qword_1EB0CB780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A343B20C()
{
  result = sub_1A34C9780();
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

uint64_t type metadata accessor for NewPosterView()
{
  result = qword_1EB0C2858;
  if (!qword_1EB0C2858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A343B334()
{
  sub_1A343B3B8();
  if (v0 <= 0x3F)
  {
    sub_1A33B3BA0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A343B3B8()
{
  if (!qword_1EB0C1FD0)
  {
    v0 = type metadata accessor for PendingUserInputRequest();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C1FD0);
    }
  }
}

uint64_t sub_1A343B410(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A343B458(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_1A343B4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    MEMORY[0x1EEE9AC00](a1);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2A0);
    v5 = *(v3 + *(v4 + 40));
    MEMORY[0x1EEE9AC00](v4);
    v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
    v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v5 + v7));
    sub_1A343BC3C(v5 + v6);
    os_unfair_lock_unlock((v5 + v7));
  }

  else
  {
    v8 = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2A0) + 40));
    v9 = *(*v8 + *MEMORY[0x1E69E6B68] + 16);
    v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v8 + v10));
    sub_1A329A8F0(v8 + v9);

    os_unfair_lock_unlock((v8 + v10));
  }
}

uint64_t sub_1A343B6A0@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2A0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v27 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_1A343B980(v1, v6);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  sub_1A343B9F0(v6, v9 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB790);
  sub_1A34CC940();
  v28 = v36;
  v27 = v37;
  v10 = v38;
  v11 = v1 + *(v3 + 44);
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  v14 = *(v11 + 32);
  v15 = *(&v36 + 1) & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
  v17 = *v11;
  v16 = *(v11 + 8);
  v18 = v1 + *(type metadata accessor for NewPosterView() + 20);
  v19 = *v18;
  v20 = *(v18 + 8);
  LOBYTE(v30) = v19;
  *(&v30 + 1) = v20;
  v21 = v17;

  v22 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  sub_1A34CC760();
  v23 = v36;
  v24 = v37;
  v25 = sub_1A34CBA90();
  *&v36 = v28;
  *(&v36 + 1) = v15;
  v37 = v27;
  *&v38 = v10;
  *(&v38 + 1) = v16;
  *&v39 = v12;
  *(&v39 + 1) = v13;
  *&v40 = v14;
  *(&v40 + 1) = v17;
  *v41 = v23;
  v41[16] = v24;
  v41[17] = 1;
  v41[18] = v25;
  v34 = v40;
  *v35 = v23;
  *&v35[15] = *&v41[15];
  v30 = v36;
  v31 = v27;
  v33 = v39;
  v32 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAD40);
  sub_1A343BAD4();
  sub_1A34CC420();
  return sub_1A343BB60(&v36);
}

void sub_1A343B974(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_1A343B980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A343B9F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A343BAD4()
{
  result = qword_1EB0CAD48;
  if (!qword_1EB0CAD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CAD40);
    sub_1A33F41F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAD48);
  }

  return result;
}

uint64_t sub_1A343BB60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAD40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A343BBC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5810);
  return sub_1A34CD400();
}

uint64_t sub_1A343BC68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1A343BCB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A343BD30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB8E8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v11 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB8F0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v11 - v5);
  v7 = *(v0 + 8);
  v8 = *(v0 + 16);
  if (v8 > 1)
  {
    *v3 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
    swift_storeEnumTagMultiPayload();
    v10 = v3 + *(type metadata accessor for BackgroundRepresentationModifier() + 20);
    *v10 = v7;
    v10[8] = v8;
    sub_1A328D790(v3, v6, &qword_1EB0CB8E8);
    swift_storeEnumTagMultiPayload();
    sub_1A31EE004(v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6FF8);
    sub_1A31F3B10();
    sub_1A343E85C();
    sub_1A34CB3E0();
    return sub_1A3288FDC(v3, &qword_1EB0CB8E8);
  }

  else
  {
    *v6 = v7;
    swift_storeEnumTagMultiPayload();
    sub_1A31EE004(v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6FF8);
    sub_1A31F3B10();
    sub_1A343E85C();
    return sub_1A34CB3E0();
  }
}

uint64_t sub_1A343BF6C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB898);
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v55 = (&v55 - v4);
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  LOBYTE(v70) = *v1;
  v5 = v70;
  v71 = v6;
  LOBYTE(v72) = v7;
  sub_1A343BD30();
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB8A0) + 36);
  *v8 = 0x3FF0000000000000;
  *(v8 + 8) = 0;
  v9 = sub_1A34CCC80();
  v11 = v10;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB8A8) + 36);
  v62 = a1;
  v13 = a1 + v12;
  v59 = v7;
  sub_1A343C3B8(v5, a1 + v12);
  v14 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB8B0) + 36));
  *v14 = v9;
  v14[1] = v11;
  v15 = sub_1A34CCC80();
  v58 = v16;
  if (v5 == 1)
  {
    v17 = sub_1A34CB570();
    sub_1A34CA670();
    v18 = v82;
    v19 = v82 * 0.5 + -6.0;
    v21 = v83;
    v20 = v84;
    v23 = v85;
    v22 = v86;
    v25 = sub_1A34CCC80();
    v26 = v18;
    v27 = 0x10000000000;
    v28 = 0xC018000000000000;
    v29 = v17;
  }

  else
  {
    v28 = 0;
    v26 = 0.0;
    v20 = 0;
    v23 = 0;
    v22 = 0;
    v25 = 0;
    v24 = 0;
    v29 = 0;
    v27 = 0;
    v21 = 0;
    v19 = 0.0;
  }

  v56 = v24;
  v57 = v22;
  v30 = v27 | v29;
  *&v64 = v28;
  *(&v64 + 1) = v19;
  *&v65 = v26;
  *(&v65 + 1) = v21;
  *&v66 = v20;
  *(&v66 + 1) = v23;
  *&v67 = v22;
  *(&v67 + 1) = v27 | v29;
  *&v68 = v25;
  *(&v68 + 1) = v24;
  v31 = v20;
  v32 = v58;
  *&v69 = v15;
  *(&v69 + 1) = v58;
  v33 = v26;
  v34 = v28;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB8B8);
  v36 = (v62 + *(v35 + 36));
  v37 = v67;
  v36[2] = v66;
  v36[3] = v37;
  v38 = v69;
  v36[4] = v68;
  v36[5] = v38;
  v39 = v65;
  *v36 = v64;
  v36[1] = v39;
  v70 = v34;
  v71 = v19;
  v72 = v33;
  v73 = v21;
  v74 = v31;
  v75 = v23;
  v76 = v57;
  v77 = v30;
  v78 = v25;
  v79 = v56;
  v80 = v15;
  v81 = v32;
  sub_1A328D790(&v64, &v63, &qword_1EB0CB8C0);
  sub_1A3288FDC(&v70, &qword_1EB0CB8C0);
  v40 = sub_1A34CCC80();
  v42 = v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB8C8);
  v44 = v62 + *(v43 + 36);
  if (v59 == 1)
  {
    v45 = sub_1A34CC640();
    sub_1A34CC500();
    v46 = sub_1A34CC540();

    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB8D8) + 36);
    v48 = *MEMORY[0x1E6981DB8];
    v49 = sub_1A34CCD00();
    v50 = v55;
    (*(*(v49 - 8) + 104))(v55 + v47, v48, v49);
    *v50 = v45;
    v50[1] = v46;
    v51 = v61;
    *(v50 + *(v61 + 36)) = xmmword_1A34F45D0;
    sub_1A329D98C(v50, v44, &qword_1EB0CB898);
    v52 = 0;
  }

  else
  {
    v52 = 1;
    v51 = v61;
  }

  (*(v60 + 56))(v44, v52, 1, v51);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB8D0);
  v54 = (v44 + *(result + 36));
  *v54 = v40;
  v54[1] = v42;
  return result;
}

uint64_t sub_1A343C3B8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB8E0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  if (a1)
  {
    v9 = *(v5 + 56);

    return v9(a2, 1, 1, v4, v6);
  }

  else
  {
    v24 = v5;
    sub_1A34CC500();
    v11 = sub_1A34CC540();

    sub_1A34CA670();
    v12 = v27;
    v13 = v29;
    v14 = v30;
    v15 = v31;
    v16 = sub_1A34CCC80();
    v18 = v17;
    v19 = *(v4 + 36);
    v20 = *MEMORY[0x1E6981DB8];
    v21 = sub_1A34CCD00();
    v22 = v28;
    (*(*(v21 - 8) + 104))(&v8[v19], v20, v21);
    *v8 = v12 * 0.5;
    *(v8 + 1) = v12;
    *(v8 + 2) = v22;
    *(v8 + 3) = v13;
    *(v8 + 4) = v14;
    *(v8 + 5) = v15;
    *(v8 + 6) = v11;
    *(v8 + 28) = 256;
    *(v8 + 58) = v25;
    *(v8 + 31) = v26;
    *(v8 + 8) = v16;
    *(v8 + 9) = v18;
    sub_1A320F3AC(v8, a2);
    return (*(v24 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_1A343C618@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB798);
  MEMORY[0x1EEE9AC00](v32);
  v3 = &v31 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB7A0);
  v5 = *(v4 - 8);
  v34 = v4;
  v35 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB7A8);
  v8 = *(v7 - 8);
  v36 = v7;
  v37 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v31 - v9;
  v10 = *(v1 + 48);
  v46 = *(v1 + 32);
  v47 = v10;
  v48 = *(v1 + 64);
  v49 = *(v1 + 80);
  v11 = *(v1 + 16);
  *v45 = *v1;
  *&v45[16] = v11;
  *v3 = sub_1A34CB280();
  *(v3 + 1) = 0x4036000000000000;
  v3[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB7B0);
  sub_1A343CAD0(v45, &v3[*(v12 + 44)]);
  v42[0] = *v45;
  *(v42 + 9) = *&v45[9];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB7B8);
  MEMORY[0x1A58EE120](&v40, v13);
  v43 = v40;
  v44 = v41;
  v14 = swift_allocObject();
  v15 = v47;
  *(v14 + 48) = v46;
  *(v14 + 64) = v15;
  *(v14 + 80) = v48;
  *(v14 + 96) = v49;
  v16 = *&v45[16];
  *(v14 + 16) = *v45;
  *(v14 + 32) = v16;
  sub_1A343E258(v45, v42);
  v17 = sub_1A3284D0C(&qword_1EB0CB7C0, &qword_1EB0CB798);
  v18 = sub_1A32EC0B4();
  v19 = v32;
  sub_1A34CC3B0();

  sub_1A31ECC9C(v43, v44);
  sub_1A3288FDC(v3, &qword_1EB0CB798);
  v39 = v45;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB7C8);
  *&v42[0] = v19;
  *(&v42[0] + 1) = &type metadata for AvatarBackgroundRepresentation;
  *&v42[1] = v17;
  *(&v42[1] + 1) = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CB7D0);
  v23 = sub_1A343E298();
  *&v42[0] = v22;
  *(&v42[0] + 1) = v23;
  v24 = swift_getOpaqueTypeConformance2();
  v26 = v33;
  v25 = v34;
  v27 = v31;
  sub_1A34CC380();
  (*(v35 + 8))(v27, v25);
  v40 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD00000000000001DLL, 0x80000001A35121A0);
  v41 = v28;
  *&v42[0] = v25;
  *(&v42[0] + 1) = v20;
  *&v42[1] = OpaqueTypeConformance2;
  *(&v42[1] + 1) = v24;
  swift_getOpaqueTypeConformance2();
  sub_1A328A95C();
  v29 = v36;
  sub_1A34CC040();

  return (*(v37 + 8))(v26, v29);
}

uint64_t sub_1A343CAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB820);
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v59 = &v59 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB828);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v73 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v59 - v7;
  v69 = sub_1A34CB4A0();
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1A34CCAB0();
  v9 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v11 = (&v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1A34CCAE0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB830);
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v62 = &v59 - v16;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB838) - 8;
  MEMORY[0x1EEE9AC00](v64);
  v70 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v63 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - v21;
  v60 = a1;
  *v11 = *(a1 + 80);
  v11[1] = 0x7FF0000000000000;
  (*(v9 + 104))(v11, *MEMORY[0x1E697D748], v61);
  sub_1A34CCAF0();
  v23 = sub_1A34CD3A0();
  *(v23 + 16) = 4;
  v24 = v23 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v25 = *(v13 + 16);
  v25(v24, v15, v12);
  v26 = *(v13 + 72);
  v25(v24 + v26, v15, v12);
  v25(v24 + 2 * v26, v15, v12);
  v27 = v24 + 3 * v26;
  v28 = v22;
  v29 = v60;
  v25(v27, v15, v12);
  v30 = v15;
  v31 = v65;
  (*(v13 + 8))(v30, v12);
  v75 = v29;
  sub_1A34CB280();
  LODWORD(v76) = 0;
  sub_1A343E918(&unk_1EB0C07A8, MEMORY[0x1E697FCB0]);
  sub_1A34CE040();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB840);
  sub_1A343E528();
  v32 = v62;
  sub_1A34CCD20();
  LOBYTE(v9) = sub_1A34CBAA0();
  v33 = *(v29 + 64);
  sub_1A34CA460();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v63;
  (*(v66 + 32))(v63, v32, v68);
  v43 = v42 + *(v64 + 44);
  *v43 = v9;
  *(v43 + 8) = v35;
  *(v43 + 16) = v37;
  *(v43 + 24) = v39;
  *(v43 + 32) = v41;
  *(v43 + 40) = 0;
  sub_1A329D98C(v42, v28, &qword_1EB0CB838);
  v44 = 1;
  if (v33)
  {
    *v85 = *v29;
    *&v85[9] = *(v29 + 9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB7B8);
    sub_1A34CC930();
    v45 = v76;
    v46 = v77;
    v47 = v78;
    v48 = v79;
    swift_getKeyPath();
    *v85 = v45;
    *&v85[8] = v46;
    *&v85[16] = v47;
    v85[24] = v48;
    sub_1A34CC920();

    sub_1A31ECC9C(v47, v48);
    v81 = v83;
    v82 = v84;
    sub_1A34CC980();
    v49 = v87;
    if (v87)
    {
      v50 = v88;
      v51 = v86;
      KeyPath = swift_getKeyPath();
      v76 = v51;
      v77 = v49;
      v78 = v50;
      v79 = KeyPath;
      v80 = xmmword_1A34F72F0;
      sub_1A343E694();
      sub_1A34C9010();
      sub_1A34C9010();
      sub_1A34C9010();
      v53 = v59;
      sub_1A34CC1F0();

      sub_1A329D98C(v53, v31, &qword_1EB0CB820);
      v44 = 0;
    }

    else
    {
      v44 = 1;
    }
  }

  (*(v71 + 56))(v31, v44, 1, v72);
  v54 = v70;
  sub_1A328D790(v28, v70, &qword_1EB0CB838);
  v55 = v73;
  sub_1A328D790(v31, v73, &qword_1EB0CB828);
  v56 = v74;
  sub_1A328D790(v54, v74, &qword_1EB0CB838);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB870);
  sub_1A328D790(v55, v56 + *(v57 + 48), &qword_1EB0CB828);
  sub_1A3288FDC(v31, &qword_1EB0CB828);
  sub_1A3288FDC(v28, &qword_1EB0CB838);
  sub_1A3288FDC(v55, &qword_1EB0CB828);
  return sub_1A3288FDC(v54, &qword_1EB0CB838);
}

uint64_t sub_1A343D428(uint64_t a1)
{
  v8 = sub_1A33B742C(*(a1 + 56));
  swift_getKeyPath();
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = *(a1 + 80);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1A343E6E8;
  *(v5 + 24) = v2;
  sub_1A343E258(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB858);
  sub_1A3284D0C(&qword_1EB0CB888, &qword_1EB0CB880);
  sub_1A343E5AC();
  return sub_1A34CC9C0();
}

uint64_t sub_1A343D5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB868);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-v8];
  v10 = *a2;
  LOBYTE(a2) = *(a2 + 8);
  v11 = swift_allocObject();
  v12 = *(a3 + 48);
  *(v11 + 48) = *(a3 + 32);
  *(v11 + 64) = v12;
  *(v11 + 80) = *(a3 + 64);
  v13 = *(a3 + 80);
  v14 = *(a3 + 16);
  *(v11 + 16) = *a3;
  *(v11 + 32) = v14;
  *(v11 + 96) = v13;
  *(v11 + 104) = v10;
  *(v11 + 112) = a2;
  *(v11 + 120) = a1;
  v17 = a3;
  v18 = a1;
  v19 = v10;
  v20 = a2;
  sub_1A343E258(a3, v21);
  sub_1A31EE004(v10, a2);
  sub_1A343E744();
  sub_1A34CC790();
  sub_1A3284D0C(&qword_1EB0CB860, &qword_1EB0CB868);
  sub_1A34CC1F0();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1A343D79C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v16[0] = *a1;
  *(v16 + 9) = *(a1 + 9);
  *v15 = *a1;
  *&v15[9] = *(a1 + 9);
  v13 = a2;
  v14 = a3;
  sub_1A328D790(v16, &v11, &qword_1EB0CB7B8);
  sub_1A31EE004(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB7B8);
  sub_1A34CC910();
  v8 = *&v15[16];
  v9 = v15[24];

  sub_1A31ECC9C(v8, v9);
  *v15 = *(a1 + 32);
  *&v15[16] = *(a1 + 48);
  v11 = a4;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB818);
  return sub_1A34CC750();
}

uint64_t sub_1A343D8B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unsigned __int8 a3@<W3>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB818);
  sub_1A34CC740();
  *a4 = (v9 == a1) & ~v10;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return sub_1A31EE004(a2, a3);
}

uint64_t sub_1A343D954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB818);
  result = sub_1A34CC740();
  if (v7 == 1)
  {
    sub_1A339D9A8(v4, v5, *(a3 + 56));
    return sub_1A34CC750();
  }

  return result;
}

uint64_t sub_1A343DA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB7F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v28 = v26 - v6;
  v7 = sub_1A34CB460();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB7E0);
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB7D0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v26 - v16;
  if (*(a1 + 64))
  {
    v18 = sub_1A34CB430();
    v26[0] = v11;
    MEMORY[0x1EEE9AC00](v18);
    v26[1] = a2;
    v26[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB7F8);
    sub_1A343E394();
    sub_1A34CA680();
    v11 = v26[0];
    v19 = sub_1A3284D0C(&qword_1EB0CB7E8, &qword_1EB0CB7E0);
    v20 = v28;
    MEMORY[0x1A58ECCD0](v10, v8, v19);
    (*(v5 + 16))(v13, v20, v4);
    (*(v5 + 56))(v13, 0, 1, v4);
    v29 = v8;
    v30 = v19;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1A58ECCE0](v13, v4, OpaqueTypeConformance2);
    sub_1A320F054(v13);
    (*(v5 + 8))(v20, v4);
    (*(v27 + 8))(v10, v8);
  }

  else
  {
    (*(v5 + 56))(v13, 1, 1, v4, v15);
    v22 = sub_1A3284D0C(&qword_1EB0CB7E8, &qword_1EB0CB7E0);
    v29 = v8;
    v30 = v22;
    v23 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1A58ECCE0](v13, v4, v23);
    sub_1A320F054(v13);
  }

  v24 = sub_1A343E298();
  MEMORY[0x1A58ECCD0](v17, v11, v24);
  return sub_1A320F054(v17);
}

uint64_t sub_1A343DE68(uint64_t a1)
{
  sub_1A34CD450();
  sub_1A343E258(a1, &v12);
  v2 = sub_1A34CD440();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E85E0];
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = *(a1 + 48);
  *(v3 + 64) = *(a1 + 32);
  *(v3 + 80) = v5;
  *(v3 + 96) = *(a1 + 64);
  *(v3 + 112) = *(a1 + 80);
  v6 = *(a1 + 16);
  *(v3 + 32) = *a1;
  *(v3 + 48) = v6;
  sub_1A343E258(a1, &v12);
  v7 = sub_1A34CD440();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v4;
  v9 = *(a1 + 48);
  *(v8 + 64) = *(a1 + 32);
  *(v8 + 80) = v9;
  *(v8 + 96) = *(a1 + 64);
  *(v8 + 112) = *(a1 + 80);
  v10 = *(a1 + 16);
  *(v8 + 32) = *a1;
  *(v8 + 48) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB810);
  sub_1A34CC940();
  v13 = 0;
  sub_1A343E450();
  v14 = 0;
  v15 = 0;
  sub_1A34CC1F0();
}

uint64_t sub_1A343E00C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB818);
  result = sub_1A34CC740();
  if (v7 == 1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB7B8);
    MEMORY[0x1A58EE120](&v6, v3);
    v4 = v7;
    if (v7 > 1u)
    {
      v5 = 0;
    }

    else
    {
      v5 = v6;
      sub_1A31EE004(v6, v7);
      v4 = v7;
    }

    result = sub_1A31ECC9C(v6, v4);
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1A343E0E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = *a1;
  *v12 = *(a4 + 32);
  *&v12[16] = *(a4 + 48);
  *&v9[0] = 0;
  BYTE8(v9[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB818);
  sub_1A34CC750();
  *v12 = *v4;
  *&v12[9] = *(v4 + 9);
  v9[0] = *v4;
  *(v9 + 9) = *(v4 + 9);
  sub_1A34C9010();
  sub_1A328D790(v12, v8, &qword_1EB0CB7B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB7B8);
  MEMORY[0x1A58EE120](&v10);
  sub_1A31ECC9C(v10, v11);
  v10 = v5;
  v11 = 4 * (v5 == 0);
  *v8 = *v12;
  *&v8[9] = *&v12[9];
  sub_1A34CC910();
  v6 = *&v8[16];
  LOBYTE(v4) = v8[24];

  return sub_1A31ECC9C(v6, v4);
}

unint64_t sub_1A343E298()
{
  result = qword_1EB0CB7D8;
  if (!qword_1EB0CB7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CB7D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CB7E0);
    sub_1A3284D0C(&qword_1EB0CB7E8, &qword_1EB0CB7E0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB7D8);
  }

  return result;
}

unint64_t sub_1A343E394()
{
  result = qword_1EB0CB800;
  if (!qword_1EB0CB800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CB7F8);
    sub_1A343E450();
    sub_1A343E918(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB800);
  }

  return result;
}

unint64_t sub_1A343E450()
{
  result = qword_1EB0CB808;
  if (!qword_1EB0CB808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB808);
  }

  return result;
}

uint64_t objectdestroy_5Tm()
{
  swift_unknownObjectRelease();

  sub_1A31ECC9C(*(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

unint64_t sub_1A343E528()
{
  result = qword_1EB0CB848;
  if (!qword_1EB0CB848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CB840);
    sub_1A343E5AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB848);
  }

  return result;
}

unint64_t sub_1A343E5AC()
{
  result = qword_1EB0CB850;
  if (!qword_1EB0CB850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CB858);
    sub_1A3284D0C(&qword_1EB0CB860, &qword_1EB0CB868);
    sub_1A343E918(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB850);
  }

  return result;
}

unint64_t sub_1A343E694()
{
  result = qword_1EB0CB878;
  if (!qword_1EB0CB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB878);
  }

  return result;
}

unint64_t sub_1A343E744()
{
  result = qword_1EB0CB890;
  if (!qword_1EB0CB890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB890);
  }

  return result;
}

uint64_t sub_1A343E798(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A343E7EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1A343E85C()
{
  result = qword_1EB0CB8F8;
  if (!qword_1EB0CB8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CB8E8);
    sub_1A31F0C74();
    sub_1A343E918(qword_1EB0C1640, type metadata accessor for BackgroundRepresentationModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB8F8);
  }

  return result;
}

uint64_t sub_1A343E918(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A343E960()
{
  result = qword_1EB0CB900;
  if (!qword_1EB0CB900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CB8C8);
    sub_1A343EA18();
    sub_1A3284D0C(&qword_1EB0CB940, &qword_1EB0CB8D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB900);
  }

  return result;
}

unint64_t sub_1A343EA18()
{
  result = qword_1EB0CB908;
  if (!qword_1EB0CB908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CB8B8);
    sub_1A343EAD0();
    sub_1A3284D0C(&qword_1EB0CB938, &qword_1EB0CB8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB908);
  }

  return result;
}

unint64_t sub_1A343EAD0()
{
  result = qword_1EB0CB910;
  if (!qword_1EB0CB910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CB8A8);
    sub_1A343EB88();
    sub_1A3284D0C(&qword_1EB0CB930, &qword_1EB0CB8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB910);
  }

  return result;
}

unint64_t sub_1A343EB88()
{
  result = qword_1EB0CB918;
  if (!qword_1EB0CB918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CB8A0);
    sub_1A343EC14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB918);
  }

  return result;
}

unint64_t sub_1A343EC14()
{
  result = qword_1EB0CB920;
  if (!qword_1EB0CB920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CB928);
    sub_1A31F3B10();
    sub_1A343E85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB920);
  }

  return result;
}

uint64_t MonogramPosterProvider.__allocating_init(contact:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void *sub_1A343ECE0()
{
  result = sub_1A343ED00();
  qword_1EB0CB948 = result;
  return result;
}

void *sub_1A343ED00()
{
  if (qword_1EB0C4B08 != -1)
  {
    swift_once();
  }

  v1[6] = xmmword_1EB0EE010;
  v1[7] = *&qword_1EB0EE020;
  v2 = byte_1EB0EE030;
  v1[2] = xmmword_1EB0EDFD0;
  v1[3] = unk_1EB0EDFE0;
  v1[4] = xmmword_1EB0EDFF0;
  v1[5] = unk_1EB0EE000;
  v1[0] = xmmword_1EB0EDFB0;
  v1[1] = unk_1EB0EDFC0;
  return sub_1A343F354(v1);
}

void *sub_1A343EF04()
{
  v2 = *(v0 + 16);
  if ([v2 isKeyAvailable_] && objc_msgSend(v2, sel_contactType) == 1 || (v3 = objc_msgSend(objc_opt_self(), sel_stringFromContact_style_, v2, 1002)) == 0)
  {
    v8 = 0;
    v7 = 0xE000000000000000;
  }

  else
  {
    v4 = v3;
    v5 = sub_1A34CD110();
    v7 = v6;

    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v8;
  }

  if (v9)
  {
    memset(v31, 0, sizeof(v31));
    v10 = v2;
    sub_1A34604B4(v10, v31, v30);

    v11 = sub_1A343F354(v30);
    if (!v1)
    {
      v28 = v11;
      sub_1A335DA80(v30);
      return v28;
    }

    sub_1A335DA80(v30);
    if (qword_1EB0C4A88 != -1)
    {
      swift_once();
    }

    v12 = sub_1A34CA250();
    __swift_project_value_buffer(v12, qword_1EB0CB950);
    sub_1A34C9010();
    v13 = v1;
    v14 = sub_1A34CA230();
    v15 = sub_1A34CD660();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136315394;
      v18 = [v10 identifier];
      v19 = sub_1A34CD110();
      v21 = v20;

      v22 = sub_1A31EE23C(v19, v21, &v29);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2080;
      v23 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69B0);
      v24 = sub_1A34CD160();
      v26 = sub_1A31EE23C(v24, v25, &v29);

      *(v16 + 14) = v26;
      _os_log_impl(&dword_1A31E6000, v14, v15, "Failed to create monogram wallpaper for contact %s. Error: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1A58F1010](v17, -1, -1);
      MEMORY[0x1A58F1010](v16, -1, -1);
    }
  }

  else
  {
    if (qword_1EB0C4A80 != -1)
    {
      swift_once();
    }

    if (qword_1EB0CB948)
    {
      return qword_1EB0CB948;
    }

    sub_1A343F578();
    swift_allocError();
  }

  return swift_willThrow();
}

uint64_t MonogramPosterProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A343F2D4()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0CB950);
  __swift_project_value_buffer(v0, qword_1EB0CB950);
  return sub_1A34CA240();
}

void *sub_1A343F354(__int128 *a1)
{
  v3 = sub_1A33EA2AC(MEMORY[0x1E69E7CC0]);
  v4 = [objc_allocWithZone(CNUIPRSMutablePosterConfiguration) init];
  v24[0] = 0xD00000000000002CLL;
  v24[1] = 0x80000001A350EE80;
  v25 = v3;
  v26 = v4;
  sub_1A34CDA40();
  v5 = v24;
  sub_1A34911BC(a1, v23);
  sub_1A32F7584(v23);
  v6 = v25;
  if (v1)
  {
  }

  else
  {
    v7 = objc_opt_self();
    v8 = sub_1A3444DEC(v6, v4);
    v9 = sub_1A34CD0E0();
    v10 = [v7 finalizedConfiguration:v8 forExtensionIdentifier:v9];

    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = sub_1A3444DEC(v6, v4);
    }

    v12 = sub_1A3444A44(v11, 0);
    v14 = v13;
    v16 = v15;
    sub_1A343F6BC();
    v18 = sub_1A3385224((v12 & 0xFFFFFFFF00000001), v14 & 1, v16);
    v20 = v19;
    v21 = objc_allocWithZone(MEMORY[0x1E695CFC8]);
    v22 = sub_1A34C9680();
    v5 = [v21 initWithPosterArchiveData_];

    sub_1A31EC234(v18, v20);
  }

  return v5;
}

unint64_t sub_1A343F578()
{
  result = qword_1EB0CB968;
  if (!qword_1EB0CB968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB968);
  }

  return result;
}

unint64_t sub_1A343F668()
{
  result = qword_1EB0CB970;
  if (!qword_1EB0CB970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB970);
  }

  return result;
}

unint64_t sub_1A343F6BC()
{
  result = qword_1EB0C6D88;
  if (!qword_1EB0C6D88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB0C6D88);
  }

  return result;
}

id sub_1A343F718()
{
  v1 = [*v0 wrappedView];

  return v1;
}

uint64_t sub_1A343F750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A343F898();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A343F7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A343F898();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A343F818()
{
  sub_1A343F898();
  sub_1A34CB3A0();
  __break(1u);
}

unint64_t sub_1A343F844()
{
  result = qword_1EB0CB978;
  if (!qword_1EB0CB978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB978);
  }

  return result;
}

unint64_t sub_1A343F898()
{
  result = qword_1EB0CB980;
  if (!qword_1EB0CB980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB980);
  }

  return result;
}

double sub_1A343F8EC(double a1, double a2, double a3, double a4)
{
  if (a3 == 0.0 && a1 == 0.0)
  {
    return 0.0;
  }

  v5 = a1 / a3;
  if ((a4 != 0.0 || a2 != 0.0) && a2 / a4 < v5)
  {
    v5 = a2 / a4;
  }

  result = 0.0;
  if (a3 != 0.0)
  {
    return v5 * a3;
  }

  return result;
}

uint64_t sub_1A343F978(void *a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB9E0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3442EC8();
  sub_1A34CDFA0();
  v15 = a2;
  HIBYTE(v14) = 0;
  sub_1A33E4A94();
  sub_1A34CDDC0();
  if (!v4)
  {
    v15 = a3;
    HIBYTE(v14) = 1;
    sub_1A34CDDC0();
    v15 = a4;
    HIBYTE(v14) = 2;
    sub_1A34CDDC0();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1A343FB68(double a1, double a2, double a3)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1A58EF770](*&a1);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x1A58EF770](*&v5);
  if (a3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = a3;
  }

  return MEMORY[0x1A58EF770](*&v6);
}

uint64_t sub_1A343FBD4()
{
  v1 = 0x59737569646172;
  if (*v0 != 1)
  {
    v1 = 0x616D676973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x58737569646172;
  }
}

uint64_t sub_1A343FC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A34415F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A343FC54(uint64_t a1)
{
  v2 = sub_1A3442EC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A343FC90(uint64_t a1)
{
  v2 = sub_1A3442EC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1A343FCCC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3441708(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_1A343FD4C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1A34CDF20();
  sub_1A343FB68(v1, v2, v3);
  return sub_1A34CDF70();
}

uint64_t sub_1A343FDBC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1A34CDF20();
  sub_1A343FB68(v1, v2, v3);
  return sub_1A34CDF70();
}

uint64_t sub_1A343FE28()
{
  sub_1A34CDF20();
  sub_1A34CD1C0();

  return sub_1A34CDF70();
}

uint64_t sub_1A343FEEC()
{
  sub_1A34CD1C0();
}

uint64_t sub_1A343FF9C()
{
  sub_1A34CDF20();
  sub_1A34CD1C0();

  return sub_1A34CDF70();
}

uint64_t sub_1A344005C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A344192C();
  *a1 = result;
  return result;
}

void sub_1A344008C(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x726574656D616964;
  v4 = 0xEA00000000007375;
  v5 = 0x6964615272756C62;
  if (*v1 != 2)
  {
    v5 = 0x7974696361706FLL;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x726F6C6F63;
    v2 = 0xE500000000000000;
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

uint64_t sub_1A344010C()
{
  v1 = 0x726574656D616964;
  v2 = 0x6964615272756C62;
  if (*v0 != 2)
  {
    v2 = 0x7974696361706FLL;
  }

  if (*v0)
  {
    v1 = 0x726F6C6F63;
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

uint64_t sub_1A3440188@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A344192C();
  *a1 = result;
  return result;
}

uint64_t sub_1A34401B0(uint64_t a1)
{
  v2 = sub_1A3442F1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A34401EC(uint64_t a1)
{
  v2 = sub_1A3442F1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3440228(void *a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB9E8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3442F1C();
  sub_1A34CDFA0();
  *v17 = a2;
  v18 = 0;
  sub_1A33E4A94();
  sub_1A34CDDC0();
  if (!v4)
  {
    v17[0] = sub_1A32E98C0();
    v17[1] = v13;
    v17[2] = v14;
    v17[3] = v15;
    v18 = 1;
    sub_1A32EBF3C();
    sub_1A34CDDC0();
    *v17 = a3;
    v18 = 2;
    sub_1A34CDDC0();
    *v17 = a4;
    v18 = 3;
    sub_1A34CDDC0();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1A3440450(double a1, double a2, double a3)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1A58EF770](*&a1);
  sub_1A34CC4C0();
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x1A58EF770](*&v5);
  if (a3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = a3;
  }

  return MEMORY[0x1A58EF770](*&v6);
}

uint64_t sub_1A34404CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1A3441978(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = result;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1A3440524(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[2];
  v2 = a2[3];
  v5 = a1[2];
  v4 = a1[3];
  v6 = sub_1A34CC460() & (v5 == v3);
  if (v4 == v2)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A344058C()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  sub_1A34CDF20();
  sub_1A3440450(v1, v2, v3);
  return sub_1A34CDF70();
}

uint64_t sub_1A3440608()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  sub_1A34CDF20();
  sub_1A3440450(v1, v2, v3);
  return sub_1A34CDF70();
}

uint64_t sub_1A3440670()
{
  sub_1A34CDF20();
  sub_1A34CD1C0();
  return sub_1A34CDF70();
}

uint64_t sub_1A34406D4()
{
  sub_1A34CDF20();
  sub_1A34CD1C0();
  return sub_1A34CDF70();
}

uint64_t sub_1A3440720@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1A34CDC80();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1A34407A0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1A34CDC80();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1A34407F8(uint64_t a1)
{
  v2 = sub_1A3442F70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3440834(uint64_t a1)
{
  v2 = sub_1A3442F70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3440870(void *a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB9F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3442F70();
  sub_1A34CDFA0();
  v9 = *(a2 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v21[1] = v2;
    v22 = v6;
    v23 = v5;
    v28 = MEMORY[0x1E69E7CC0];
    sub_1A32EBC74(0, v9, 0);
    sub_1A31EC930();
    v10 = v28;
    v11 = a2 + 32;
    do
    {
      v26 = 0;
      v27 = 0;
      v24 = 0;
      v25 = 0;
      swift_retain_n();
      v12 = sub_1A34CD800();
      [v12 getRed:&v27 green:&v26 blue:&v25 alpha:&v24];

      v14 = v26;
      v13 = v27;
      v16 = v24;
      v15 = v25;
      v28 = v10;
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1A32EBC74((v17 > 1), v18 + 1, 1);
        v10 = v28;
      }

      *(v10 + 16) = v18 + 1;
      v19 = (v10 + 32 * v18);
      v19[4] = v13;
      v19[5] = v14;
      v19[6] = v15;
      v19[7] = v16;
      v11 += 8;
      --v9;
    }

    while (v9);
    v6 = v22;
    v5 = v23;
  }

  v28 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6B58);
  sub_1A32EBFE4(&unk_1EB0C02B0, sub_1A32EBF3C);
  sub_1A34CDDC0();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A3440B3C(uint64_t a1)
{
  sub_1A34CDF20();
  v2 = *(a1 + 16);
  MEMORY[0x1A58EF750](v2);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      v3 += 8;
      sub_1A34C9010();
      sub_1A34CC4C0();

      --v2;
    }

    while (v2);
  }

  return sub_1A34CDF70();
}

void *sub_1A3440BC0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1A3441D08(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1A3440C1C()
{
  v1 = *v0;
  result = MEMORY[0x1A58EF750](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 32;
    do
    {
      v4 += 8;
      sub_1A34C9010();
      sub_1A34CC4C0();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1A3440C88()
{
  v1 = *v0;
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      v3 += 8;
      sub_1A34C9010();
      sub_1A34CC4C0();

      --v2;
    }

    while (v2);
  }

  return sub_1A34CDF70();
}

uint64_t sub_1A3440D08(uint64_t a1)
{
  v2 = v1;
  MEMORY[0x1A58EF750](*v2);
  MEMORY[0x1A58EF750](*(v2 + 8));
  sub_1A3441384(a1, *(v2 + 16));
  if (*(v2 + 48) == 1)
  {
    sub_1A34CDF40();
    if (*(v2 + 64))
    {
LABEL_3:
      v5 = *(v2 + 72);
      v4 = *(v2 + 80);
      v6 = *(v2 + 56);
      sub_1A34CDF40();
      if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      MEMORY[0x1A58EF770](v7);
      sub_1A34CC4C0();
      if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v8 = v5;
      }

      else
      {
        v8 = 0;
      }

      MEMORY[0x1A58EF770](v8);
      if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v9 = v4;
      }

      else
      {
        v9 = 0;
      }

      MEMORY[0x1A58EF770](v9);
      goto LABEL_24;
    }
  }

  else
  {
    v11 = *(v2 + 32);
    v10 = *(v2 + 40);
    v12 = *(v2 + 24);
    sub_1A34CDF40();
    if ((v12 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    MEMORY[0x1A58EF770](v13);
    if ((v11 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    MEMORY[0x1A58EF770](v14);
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v15 = v10;
    }

    else
    {
      v15 = 0;
    }

    MEMORY[0x1A58EF770](v15);
    if (*(v2 + 64))
    {
      goto LABEL_3;
    }
  }

  sub_1A34CDF40();
LABEL_24:
  v16 = *(v2 + 88);
  v17 = *(v16 + 16);
  result = MEMORY[0x1A58EF750](v17);
  if (v17)
  {
    v19 = v16 + 32;
    do
    {
      v19 += 8;
      sub_1A34C9010();
      sub_1A34CC4C0();

      --v17;
    }

    while (v17);
  }

  return result;
}

unint64_t sub_1A3440E3C()
{
  v1 = *v0;
  v2 = 0x6874646977;
  v3 = 0xD000000000000015;
  v4 = 0xD000000000000018;
  if (v1 != 4)
  {
    v4 = 0xD000000000000024;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746867696568;
  if (v1 != 1)
  {
    v5 = 0x73746E696F70;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A3440EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A3442070(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A3440F18(uint64_t a1)
{
  v2 = sub_1A344277C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3440F54(uint64_t a1)
{
  v2 = sub_1A344277C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3440F90(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_1A344148C(v9, v10) & 1;
}

uint64_t sub_1A3440FEC()
{
  sub_1A34CDF20();
  sub_1A3440D08(v1);
  return sub_1A34CDF70();
}

uint64_t sub_1A3441030()
{
  sub_1A34CDF20();
  sub_1A3440D08(v1);
  return sub_1A34CDF70();
}

uint64_t sub_1A344106C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB998);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A344277C();
  sub_1A34CDFA0();
  v11[0] = 0;
  sub_1A34CDDB0();
  if (!v2)
  {
    v11[0] = 1;
    sub_1A34CDDB0();
    *v11 = *(v3 + 16);
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB990);
    sub_1A3442988(&qword_1EB0C0298, sub_1A3442A00);
    sub_1A34CDDC0();
    *v11 = *(v3 + 24);
    *&v11[9] = *(v3 + 33);
    v12 = 3;
    sub_1A3442A54();
    sub_1A34CDD70();
    v9 = *(v3 + 72);
    *v11 = *(v3 + 56);
    *&v11[16] = v9;
    v12 = 4;
    sub_1A3442AA8();
    sub_1A34CDD70();
    *v11 = *(v3 + 88);
    v12 = 5;
    sub_1A3442AFC();
    sub_1A34CDDC0();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_1A3441320@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1A3442268(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_1A3441384(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1A58EF750](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v6 = v5[2];
      v7 = v5[3];
      v8 = v5[4];
      v9 = v5[5];
      v10 = v5[6];
      sub_1A34CDF40();
      sub_1A34C9010();
      sub_1A34CCDF0();
      sub_1A34CC4C0();
      if (v6 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v6;
      }

      MEMORY[0x1A58EF770](*&v11);
      if (v7 == 0.0)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = v7;
      }

      MEMORY[0x1A58EF770](*&v12);
      if (v8 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v8;
      }

      MEMORY[0x1A58EF770](*&v13);
      if (v9 == 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v9;
      }

      MEMORY[0x1A58EF770](*&v14);
      if (v10 == 0.0)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = v10;
      }

      MEMORY[0x1A58EF770](*&v15);

      v5 += 9;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1A344148C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || (sub_1A3426BE0(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v4 = a2;
  v5 = a1;
  if (*(a1 + 48))
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 48))
    {
      return 0;
    }

    v6 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
    if (!v6 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  v8 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (!v8)
    {
      return 0;
    }

    if (*(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }

    v10 = *(a1 + 72);
    v9 = *(a1 + 80);
    v12 = *(a2 + 72);
    v11 = *(a2 + 80);
    sub_1A34C9010();
    sub_1A34C9010();
    v13 = sub_1A34CC460();

    if ((v13 & 1) == 0)
    {
      return 0;
    }

    if (v10 != v12)
    {
      return 0;
    }

    v5 = a1;
    v4 = a2;
    if (v9 != v11)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v14 = *(v5 + 88);
  v15 = *(v4 + 88);

  return sub_1A3426DAC(v14, v15);
}

uint64_t sub_1A34415F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x58737569646172 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A34CDE30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x59737569646172 && a2 == 0xE700000000000000 || (sub_1A34CDE30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616D676973 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A34CDE30();

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

double sub_1A3441708(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB9C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3442EC8();
  sub_1A34CDF90();
  v9 = 0;
  sub_1A33E4B6C();
  sub_1A34CDD30();
  v6 = v10;
  v9 = 1;
  sub_1A34CDD30();
  v9 = 2;
  sub_1A34CDD30();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

uint64_t sub_1A344192C()
{
  v0 = sub_1A34CDC80();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1A3441978(void *a1)
{
  v2 = sub_1A34CC450();
  v15 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB9D0);
  v5 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v7 = &v12 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3442F1C();
  sub_1A34CDF90();
  v13 = v4;
  v14 = v2;
  v17 = 0;
  sub_1A33E4B6C();
  v8 = v16;
  sub_1A34CDD30();
  v17 = 1;
  sub_1A32EC05C();
  sub_1A34CDD30();
  v9 = v5;
  (*(v15 + 104))(v13, *MEMORY[0x1E69814D8], v14);
  v11 = sub_1A34CC580();
  v17 = 2;
  sub_1A34CDD30();
  v17 = 3;
  sub_1A34CDD30();
  (*(v9 + 8))(v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

void *sub_1A3441D08(void *a1)
{
  v3 = sub_1A34CC450();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB9D8);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3442F70();
  sub_1A34CDF90();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6B58);
    sub_1A32EBFE4(&qword_1EB0C02A8, sub_1A32EC05C);
    v11 = v24;
    sub_1A34CDD30();
    v12 = v11;
    v14 = v27;
    v15 = *(v27 + 16);
    if (v15)
    {
      v20 = v9;
      v21 = 0;
      v22 = a1;
      v26 = MEMORY[0x1E69E7CC0];
      sub_1A34CDB70();
      v25 = *MEMORY[0x1E69814D8];
      v16 = *(v4 + 104);
      v19 = v14;
      v17 = v14 + 56;
      do
      {
        v16(v6, v25, v3);
        sub_1A34CC580();
        sub_1A34CDB50();
        sub_1A34CDB80();
        sub_1A34CDB90();
        sub_1A34CDB60();
        v17 += 32;
        --v15;
      }

      while (v15);
      (*(v23 + 8))(v20, v24);

      v10 = v26;
      a1 = v22;
    }

    else
    {
      v18 = v12;

      (*(v23 + 8))(v9, v18);
      v10 = MEMORY[0x1E69E7CC0];
    }
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

uint64_t sub_1A3442070(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A34CDE30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_1A34CDE30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73746E696F70 && a2 == 0xE600000000000000 || (sub_1A34CDE30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A3512250 == a2 || (sub_1A34CDE30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A3512270 == a2 || (sub_1A34CDE30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001A3512290 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A34CDE30();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1A3442268@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB988);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A344277C();
  sub_1A34CDF90();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v39) = 0;
  v9 = sub_1A34CDD20();
  LOBYTE(v39) = 1;
  v10 = sub_1A34CDD20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB990);
  LOBYTE(v33) = 2;
  sub_1A3442988(&qword_1EB0C0290, sub_1A34427D0);
  sub_1A34CDD30();
  v32 = v39;
  LOBYTE(v33) = 3;
  sub_1A3442824();
  sub_1A34CDCE0();
  v31 = v39;
  v30 = v40;
  v29 = v41;
  v52 = v42;
  LOBYTE(v33) = 4;
  sub_1A3442878();
  sub_1A34CDCE0();
  v27 = v39;
  v28 = v40;
  v26 = v41;
  v25 = v42;
  LOBYTE(v39) = 5;
  sub_1A34428CC();
  sub_1A34CDCE0();
  if (v51)
  {
    v24 = v51;
  }

  else
  {
    if (qword_1EB0C4BB8 != -1)
    {
      swift_once();
    }

    v24 = qword_1EB0EE178;
  }

  (*(v6 + 8))(v8, v5);
  v23 = v9;
  *&v33 = v9;
  v22 = v10;
  *(&v33 + 1) = v10;
  *&v34 = v32;
  *(&v34 + 1) = v31;
  *&v35 = v30;
  *(&v35 + 1) = v29;
  v12 = v52;
  LOBYTE(v36) = v52;
  v13 = v27;
  v14 = v28;
  *(&v36 + 1) = v27;
  *&v37 = v28;
  v15 = v26;
  v16 = v25;
  *(&v37 + 1) = v26;
  *&v38 = v25;
  v17 = v24;
  *(&v38 + 1) = v24;
  sub_1A3442920(&v33, &v39);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v39 = v23;
  v40 = v22;
  v41 = v32;
  v42 = v31;
  v43 = v30;
  v44 = v29;
  v45 = v12;
  v46 = v13;
  v47 = v14;
  v48 = v15;
  v49 = v16;
  v50 = v17;
  result = sub_1A3442958(&v39);
  v18 = v36;
  a2[2] = v35;
  a2[3] = v18;
  v19 = v38;
  a2[4] = v37;
  a2[5] = v19;
  v20 = v34;
  *a2 = v33;
  a2[1] = v20;
  return result;
}

unint64_t sub_1A344277C()
{
  result = qword_1EB0C2620;
  if (!qword_1EB0C2620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2620);
  }

  return result;
}

unint64_t sub_1A34427D0()
{
  result = qword_1EB0C2668;
  if (!qword_1EB0C2668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2668);
  }

  return result;
}

unint64_t sub_1A3442824()
{
  result = qword_1EB0C2590;
  if (!qword_1EB0C2590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2590);
  }

  return result;
}

unint64_t sub_1A3442878()
{
  result = qword_1EB0C25B8;
  if (!qword_1EB0C25B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C25B8);
  }

  return result;
}

unint64_t sub_1A34428CC()
{
  result = qword_1EB0C2568;
  if (!qword_1EB0C2568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2568);
  }

  return result;
}

uint64_t sub_1A3442988(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CB990);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3442A00()
{
  result = qword_1EB0C2670;
  if (!qword_1EB0C2670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2670);
  }

  return result;
}

unint64_t sub_1A3442A54()
{
  result = qword_1EB0C2598;
  if (!qword_1EB0C2598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2598);
  }

  return result;
}

unint64_t sub_1A3442AA8()
{
  result = qword_1EB0C25C0;
  if (!qword_1EB0C25C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C25C0);
  }

  return result;
}

unint64_t sub_1A3442AFC()
{
  result = qword_1EB0C2570;
  if (!qword_1EB0C2570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2570);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GradientDefinition.CenterMovementConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A3442BB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A3442BF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A3442C64()
{
  result = qword_1EB0CB9A0;
  if (!qword_1EB0CB9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB9A0);
  }

  return result;
}

unint64_t sub_1A3442CBC()
{
  result = qword_1EB0CB9A8;
  if (!qword_1EB0CB9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB9A8);
  }

  return result;
}

unint64_t sub_1A3442D14()
{
  result = qword_1EB0CB9B0;
  if (!qword_1EB0CB9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB9B0);
  }

  return result;
}

unint64_t sub_1A3442D6C()
{
  result = qword_1EB0CB9B8;
  if (!qword_1EB0CB9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB9B8);
  }

  return result;
}

unint64_t sub_1A3442DC4()
{
  result = qword_1EB0CB9C0;
  if (!qword_1EB0CB9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB9C0);
  }

  return result;
}

unint64_t sub_1A3442E1C()
{
  result = qword_1EB0C2610;
  if (!qword_1EB0C2610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2610);
  }

  return result;
}

unint64_t sub_1A3442E74()
{
  result = qword_1EB0C2618;
  if (!qword_1EB0C2618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2618);
  }

  return result;
}

unint64_t sub_1A3442EC8()
{
  result = qword_1EB0C25B0;
  if (!qword_1EB0C25B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C25B0);
  }

  return result;
}

unint64_t sub_1A3442F1C()
{
  result = qword_1EB0C25D8;
  if (!qword_1EB0C25D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C25D8);
  }

  return result;
}

unint64_t sub_1A3442F70()
{
  result = qword_1EB0C2588;
  if (!qword_1EB0C2588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2588);
  }

  return result;
}

unint64_t sub_1A3442FF8()
{
  result = qword_1EB0CB9F8;
  if (!qword_1EB0CB9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB9F8);
  }

  return result;
}

unint64_t sub_1A3443050()
{
  result = qword_1EB0CBA00;
  if (!qword_1EB0CBA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CBA00);
  }

  return result;
}

unint64_t sub_1A34430A8()
{
  result = qword_1EB0CBA08;
  if (!qword_1EB0CBA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CBA08);
  }

  return result;
}

unint64_t sub_1A3443100()
{
  result = qword_1EB0C2578;
  if (!qword_1EB0C2578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2578);
  }

  return result;
}

unint64_t sub_1A3443158()
{
  result = qword_1EB0C2580;
  if (!qword_1EB0C2580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2580);
  }

  return result;
}

unint64_t sub_1A34431B0()
{
  result = qword_1EB0C25C8;
  if (!qword_1EB0C25C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C25C8);
  }

  return result;
}

unint64_t sub_1A3443208()
{
  result = qword_1EB0C25D0;
  if (!qword_1EB0C25D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C25D0);
  }

  return result;
}

unint64_t sub_1A3443260()
{
  result = qword_1EB0C25A0;
  if (!qword_1EB0C25A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C25A0);
  }

  return result;
}

unint64_t sub_1A34432B8()
{
  result = qword_1EB0C25A8;
  if (!qword_1EB0C25A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C25A8);
  }

  return result;
}

void sub_1A344331C()
{
  v44[1] = *MEMORY[0x1E69E9840];
  v1 = [v0 wallpaper];
  if (v1)
  {
    v2 = v1;
    if (qword_1EB0C1260 != -1)
    {
      swift_once();
    }

    v3 = sub_1A34CA250();
    __swift_project_value_buffer(v3, qword_1EB0ECFC0);
    v4 = v2;
    v5 = v0;
    v6 = sub_1A34CA230();
    v7 = sub_1A34CD660();

    if (!os_log_type_enabled(v6, v7))
    {

LABEL_22:
      v35 = objc_opt_self();
      v36 = [v4 posterArchiveData];
      v37 = sub_1A34C9690();
      v39 = v38;

      v40 = sub_1A34C9680();
      sub_1A31EC234(v37, v39);
      v44[0] = 0;
      v41 = [v35 unarchiveCNConfigurationFromData:v40 error:v44];

      if (v41)
      {
        v42 = v44[0];
        sub_1A3444A44(v41, [v4 contentIsSensitive]);
      }

      else
      {
        v43 = v44[0];
        sub_1A34C9580();

        swift_willThrow();
      }

      return;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v44[0] = v9;
    *v8 = 136315394;
    v10 = [v5 identifier];
    v11 = sub_1A34CD110();
    v13 = v12;

    v14 = sub_1A31EE23C(v11, v13, v44);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2048;
    v15 = [v4 &selRef_meChanged_ + 3];
    v16 = sub_1A34C9690();
    v18 = v17;

    v19 = v18;
    v20 = v18 >> 62;
    if ((v18 >> 62) > 1)
    {
      if (v20 != 2)
      {
        sub_1A31EC234(v16, v18);

        v21 = 0;
        goto LABEL_21;
      }

      v34 = *(v16 + 16);
      v33 = *(v16 + 24);
      sub_1A31EC234(v16, v19);

      v21 = v33 - v34;
      if (!__OFSUB__(v33, v34))
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    else if (!v20)
    {
      sub_1A31EC234(v16, v18);

      v21 = BYTE6(v18);
LABEL_21:
      *(v8 + 14) = v21;

      _os_log_impl(&dword_1A31E6000, v6, v7, "Processing wallpaper for contact %s, posterArchiveData size: %ld bytes", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1A58F1010](v9, -1, -1);
      MEMORY[0x1A58F1010](v8, -1, -1);

      goto LABEL_22;
    }

    sub_1A31EC234(v16, v19);

    LODWORD(v21) = HIDWORD(v16) - v16;
    if (__OFSUB__(HIDWORD(v16), v16))
    {
      __break(1u);
    }

    v21 = v21;
    goto LABEL_21;
  }

  if (qword_1EB0C1260 != -1)
  {
    swift_once();
  }

  v22 = sub_1A34CA250();
  __swift_project_value_buffer(v22, qword_1EB0ECFC0);
  v23 = v0;
  v24 = sub_1A34CA230();
  v25 = sub_1A34CD660();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v44[0] = v27;
    *v26 = 136315138;
    v28 = [v23 identifier];
    v29 = sub_1A34CD110();
    v31 = v30;

    v32 = sub_1A31EE23C(v29, v31, v44);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_1A31E6000, v24, v25, "No wallpaper found for contact %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1A58F1010](v27, -1, -1);
    MEMORY[0x1A58F1010](v26, -1, -1);
  }
}

BOOL sub_1A3443820(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v42 = a1;
  v43 = a4;
  v45 = a3;
  v7 = sub_1A34C9780();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C60C8);
  MEMORY[0x1EEE9AC00](v46);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C60D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v44 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v41 - v21;
  *&v24 = MEMORY[0x1EEE9AC00](v23).n128_u64[0];
  v26 = &v41 - v25;
  v27 = [a6 serverUUID];
  if (v27)
  {
    v28 = v27;
    sub_1A34C9760();

    v29 = *(v8 + 56);
    v29(v22, 0, 1, v7);
  }

  else
  {
    v29 = *(v8 + 56);
    v29(v22, 1, 1, v7);
  }

  sub_1A3445038(v22, v26);
  v30 = [v45 serverUUID];
  if (v30)
  {
    v31 = v30;
    sub_1A34C9760();

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v29(v16, v32, 1, v7);
  sub_1A3445038(v16, v19);
  v33 = *(v46 + 48);
  sub_1A32F3F98(v26, v11);
  sub_1A32F3F98(v19, &v11[v33]);
  v34 = *(v8 + 48);
  if (v34(v11, 1, v7) != 1)
  {
    v35 = v44;
    sub_1A32F3F98(v11, v44);
    if (v34(&v11[v33], 1, v7) != 1)
    {
      v37 = v41;
      (*(v8 + 32))(v41, &v11[v33], v7);
      sub_1A34450A8();
      v38 = v35;
      v39 = sub_1A34CD040();
      v40 = *(v8 + 8);
      v40(v37, v7);
      sub_1A3288FDC(v19, &qword_1EB0C60D0);
      sub_1A3288FDC(v26, &qword_1EB0C60D0);
      v40(v38, v7);
      sub_1A3288FDC(v11, &qword_1EB0C60D0);
      if (v39)
      {
        return (v43 ^ v42) >> 32 != 0;
      }

      return 1;
    }

    sub_1A3288FDC(v19, &qword_1EB0C60D0);
    sub_1A3288FDC(v26, &qword_1EB0C60D0);
    (*(v8 + 8))(v35, v7);
LABEL_12:
    sub_1A3288FDC(v11, &qword_1EB0C60C8);
    return 1;
  }

  sub_1A3288FDC(v19, &qword_1EB0C60D0);
  sub_1A3288FDC(v26, &qword_1EB0C60D0);
  if (v34(&v11[v33], 1, v7) != 1)
  {
    goto LABEL_12;
  }

  sub_1A3288FDC(v11, &qword_1EB0C60D0);
  return (v43 ^ v42) >> 32 != 0;
}

unint64_t sub_1A3443CF8()
{
  v31[1] = *MEMORY[0x1E69E9840];
  if (qword_1EB0C1260 != -1)
  {
    swift_once();
  }

  v1 = sub_1A34CA250();
  __swift_project_value_buffer(v1, qword_1EB0ECFC0);
  v2 = v0;
  v3 = sub_1A34CA230();
  v4 = sub_1A34CD660();
  if (!os_log_type_enabled(v3, v4))
  {

    goto LABEL_16;
  }

  v5 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  v31[0] = v6;
  *v5 = 136315394;
  v7 = [v2 identifier];
  v8 = sub_1A34CD110();
  v10 = v9;

  v11 = sub_1A31EE23C(v8, v10, v31);

  *(v5 + 4) = v11;
  *(v5 + 12) = 2048;
  v12 = [v2 &selRef_iCloudSignedInToUseNicknames + 1];
  v13 = sub_1A34C9690();
  v15 = v14;

  v16 = v15;
  v17 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v17 != 2)
    {
      sub_1A31EC234(v13, v15);

      v18 = 0;
      goto LABEL_15;
    }

    v20 = *(v13 + 16);
    v19 = *(v13 + 24);
    sub_1A31EC234(v13, v16);

    v18 = v19 - v20;
    if (!__OFSUB__(v19, v20))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    sub_1A31EC234(v13, v16);

    LODWORD(v18) = HIDWORD(v13) - v13;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
      __break(1u);
    }

    v18 = v18;
    goto LABEL_15;
  }

  if (v17)
  {
    goto LABEL_12;
  }

  sub_1A31EC234(v13, v15);

  v18 = BYTE6(v15);
LABEL_15:
  *(v5 + 14) = v18;

  _os_log_impl(&dword_1A31E6000, v3, v4, "Processing wallpaper for contact %s, posterArchiveData size: %ld bytes", v5, 0x16u);
  __swift_destroy_boxed_opaque_existential_0(v6);
  MEMORY[0x1A58F1010](v6, -1, -1);
  MEMORY[0x1A58F1010](v5, -1, -1);

LABEL_16:
  v21 = objc_opt_self();
  v22 = [v2 posterData];
  v23 = sub_1A34C9690();
  v25 = v24;

  v26 = sub_1A34C9680();
  sub_1A31EC234(v23, v25);
  v31[0] = 0;
  v27 = [v21 unarchiveCNConfigurationFromData:v26 error:v31];

  if (v27)
  {
    v28 = v31[0];
    return sub_1A3444A44(v27, 0) & 0xFFFFFFFF00000001;
  }

  else
  {
    v30 = v31[0];
    sub_1A34C9580();

    return swift_willThrow();
  }
}

uint64_t sub_1A3444058()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0ECFC0);
  __swift_project_value_buffer(v0, qword_1EB0ECFC0);
  return sub_1A34CA240();
}

uint64_t sub_1A34440D8(uint64_t a1, int a2, int a3, id a4)
{
  v20[5] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v5 = [a4 loadUserInfoWithError_];
  v6 = v20[0];
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = v5;
  v8 = sub_1A34CCF90();
  v9 = v6;

  if (*(v8 + 16))
  {
    v10 = sub_1A33DB3BC(a1);
    if (v11)
    {
      sub_1A31EE354(*(v8 + 56) + 32 * v10, v20);
      if (swift_dynamicCast())
      {

        sub_1A34C9450();
        swift_allocObject();
        sub_1A34C9440();
        sub_1A3444D44();
        sub_1A34C9430();

        return sub_1A31EC234(v18, v19);
      }
    }
  }

  v13 = *(v8 + 16);
  if (!v13)
  {

    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v14 = sub_1A34445B4(*(v8 + 16), 0);
  v15 = sub_1A34448DC(v20, (v14 + 4), v13, v8);
  sub_1A33BEE40();
  if (v15 == v13)
  {
LABEL_11:
    sub_1A3363B78();
    swift_allocError();
    *v17 = v14;
    return swift_willThrow();
  }

  __break(1u);
LABEL_9:
  v16 = v6;
  sub_1A34C9580();

  return swift_willThrow();
}

uint64_t sub_1A3444304(uint64_t a1, int a2, int a3, id a4)
{
  v20[5] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v5 = [a4 loadUserInfoWithError_];
  v6 = v20[0];
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = v5;
  v8 = sub_1A34CCF90();
  v9 = v6;

  if (*(v8 + 16))
  {
    v10 = sub_1A33DB3BC(a1);
    if (v11)
    {
      sub_1A31EE354(*(v8 + 56) + 32 * v10, v20);
      if (swift_dynamicCast())
      {

        sub_1A34C9450();
        swift_allocObject();
        sub_1A34C9440();
        sub_1A3444D98();
        sub_1A34C9430();

        return sub_1A31EC234(v18, v19);
      }
    }
  }

  v13 = *(v8 + 16);
  if (!v13)
  {

    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v14 = sub_1A34445B4(*(v8 + 16), 0);
  v15 = sub_1A34448DC(v20, (v14 + 4), v13, v8);
  sub_1A33BEE40();
  if (v15 == v13)
  {
LABEL_11:
    sub_1A3363B78();
    swift_allocError();
    *v17 = v14;
    return swift_willThrow();
  }

  __break(1u);
LABEL_9:
  v16 = v6;
  sub_1A34C9580();

  return swift_willThrow();
}

void *sub_1A3444530(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5708);
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

void *sub_1A34445B4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBA10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_1A3444644(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
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

uint64_t sub_1A34446CC(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_20:
    v10 = 0;
    v17 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v11 = v19 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v12 = 0;
    goto LABEL_31;
  }

  sub_1A34CD9A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
  result = sub_1A34CD580();
  v4 = v24;
  v8 = v25;
  v9 = v26;
  v10 = v27;
  v11 = v28;
  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_31;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v21 = v9;
  v22 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (v4 < 0)
  {
    if (!sub_1A34CD9E0())
    {
      goto LABEL_29;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
    swift_dynamicCast();
    result = v23;
    if (!v23)
    {
      goto LABEL_29;
    }

LABEL_16:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_29;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  v14 = v10;
  if (v11)
  {
LABEL_12:
    v11 &= v11 - 1;
    result = sub_1A34C9010();
    if (!result)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_12;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v20 = v10 + 1;
  }

  else
  {
    v20 = v13;
  }

  v10 = v20 - 1;
LABEL_29:
  v9 = v21;
  v7 = v22;
LABEL_31:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_1A34448DC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_1A33CAF7C(*(a4 + 48) + 40 * (v17 | (v12 << 6)), v22);
      v18 = v23;
      v19 = v22[1];
      *v11 = v22[0];
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1A3444A44(void *a1, char a2)
{
  v4 = objc_allocWithZone(CNUIPRSPosterConfigurationAttributes);
  v5 = a1;
  v6 = [v4 initWithCNConfiguration_];
  v7 = [v6 extensionIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1A34CD110();
    v11 = v10;

    if (v9 == 0xD000000000000028 && 0x80000001A350EF00 == v11)
    {
    }

    else
    {
      v13 = sub_1A34CDE30();

      if ((v13 & 1) == 0)
      {
        return a2 & 1;
      }
    }

    *&v18 = 0xD000000000000012;
    *(&v18 + 1) = 0x80000001A350AF00;
    sub_1A34CDA40();
    sub_1A34440D8(v22, a2 & 1, 0, v5);
    sub_1A32F7584(v22);
    v18 = v23;
    v19 = v24;
    v20 = v25;
    v21 = v26;
    if (v24 >> 60 == 15)
    {
      v15 = 0;
    }

    else
    {
      v15 = sub_1A34C9680();
    }

    if (v20 >> 60 == 15)
    {
      v16 = 0;
    }

    else
    {
      v16 = sub_1A34C9680();
    }

    v17 = [objc_opt_self() metadataWithAvatarRecordData:v15 poseConfigurationData:{v16, v18, v19}];

    if (v17)
    {
      [v17 hasTallContent];
      sub_1A33E4BF8(&v18);
    }

    else
    {
      sub_1A33E4BF8(&v18);
    }
  }

  else
  {
  }

  return a2 & 1;
}

unint64_t sub_1A3444D44()
{
  result = qword_1EB0C1D58;
  if (!qword_1EB0C1D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1D58);
  }

  return result;
}

unint64_t sub_1A3444D98()
{
  result = qword_1EB0C1A50;
  if (!qword_1EB0C1A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1A50);
  }

  return result;
}

id sub_1A3444DEC(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = sub_1A34CCF70();
  v19[0] = 0;
  v4 = [v2 storeUserInfo:v3 error:v19];

  if (v4)
  {
    v5 = v19[0];
  }

  else
  {
    v6 = v19[0];
    v7 = sub_1A34C9580();

    swift_willThrow();
    if (qword_1EB0C1260 != -1)
    {
      swift_once();
    }

    v8 = sub_1A34CA250();
    __swift_project_value_buffer(v8, qword_1EB0ECFC0);
    v9 = v7;
    v10 = sub_1A34CA230();
    v11 = sub_1A34CD640();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19[0] = v13;
      *v12 = 136315138;
      v14 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69B0);
      v15 = sub_1A34CD170();
      v17 = sub_1A31EE23C(v15, v16, v19);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1A31E6000, v10, v11, "Error storing user info in mutable poster configuration: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1A58F1010](v13, -1, -1);
      MEMORY[0x1A58F1010](v12, -1, -1);
    }

    else
    {
    }
  }

  return v2;
}

uint64_t sub_1A3445038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C60D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A34450A8()
{
  result = qword_1EB0C2A38;
  if (!qword_1EB0C2A38)
  {
    sub_1A34C9780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2A38);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14ContactsUICore24PosterConfigurationErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1A3445178()
{
  sub_1A34455F8();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A3445200(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 9) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((a1 + v6 + 9) & ~v6);
      }

      v15 = *(a1 + 8);
      if (v15 > 1)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1A3445384(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 9) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 9] & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFE)
  {
    a1[8] = 0;
    *a1 = a2 - 255;
  }

  else
  {
    a1[8] = -a2;
  }
}

void sub_1A34455F8()
{
  if (!qword_1EB0C1178)
  {
    type metadata accessor for VisualIdentityEditorViewModel();
    v0 = sub_1A34CA5F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C1178);
    }
  }
}

uint64_t sub_1A3445694@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3452CB0(&qword_1EB0C19F8, type metadata accessor for UserInputRequestCoordinator);
  sub_1A34C99A0();

  swift_beginAccess();
  return sub_1A328D790(v3 + 16, a2, &qword_1EB0C57F8);
}

uint64_t sub_1A3445764(uint64_t a1)
{
  sub_1A328D790(a1, v2, &qword_1EB0C57F8);
  swift_getKeyPath();
  sub_1A3452CB0(&qword_1EB0C19F8, type metadata accessor for UserInputRequestCoordinator);
  sub_1A34C9990();

  return sub_1A3288FDC(v2, &qword_1EB0C57F8);
}

uint64_t sub_1A344586C(uint64_t a1)
{
  v2[30] = v1;
  v2[26] = a1;
  v2[31] = sub_1A34CD450();
  v2[32] = sub_1A34CD440();
  v4 = sub_1A34CD3E0();
  v2[33] = v4;
  v2[34] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A344590C, v4, v3);
}

uint64_t sub_1A344590C()
{
  v1 = v0[30];
  swift_getKeyPath();
  v0[27] = v1;
  v0[35] = OBJC_IVAR____TtC14ContactsUICore27UserInputRequestCoordinator___observationRegistrar;
  v0[36] = sub_1A3452CB0(&qword_1EB0C19F8, type metadata accessor for UserInputRequestCoordinator);
  sub_1A34C99A0();

  swift_beginAccess();
  sub_1A328D790(v1 + 16, (v0 + 2), &qword_1EB0C57F8);
  if (v0[5])
  {
    sub_1A31EE4BC((v0 + 2), (v0 + 17));
    sub_1A3288FDC((v0 + 2), &qword_1EB0C57F8);
    v2 = v0[20];
    v3 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v2);
    (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0((v0 + 17));
  }

  else
  {
    sub_1A3288FDC((v0 + 2), &qword_1EB0C57F8);
  }

  v4 = v0[30];
  v5 = sub_1A34CD440();
  v0[37] = v5;
  v6 = swift_task_alloc();
  v0[38] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v0 + 26;
  v7 = swift_task_alloc();
  v0[39] = v7;
  v8 = sub_1A3452328();
  *v7 = v0;
  v7[1] = sub_1A3445B5C;
  v9 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 25, v5, v9, 0x2874736575716572, 0xEB00000000293A5FLL, sub_1A345231C, v6, v8);
}

uint64_t sub_1A3445B5C()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = *(v2 + 264);
    v4 = *(v2 + 272);
    v5 = sub_1A3445DA4;
  }

  else
  {

    v3 = *(v2 + 264);
    v4 = *(v2 + 272);
    v5 = sub_1A3445C80;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3445C80()
{
  v1 = *(v0 + 240);

  *(v0 + 128) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 96) = 0u;
  swift_getKeyPath();
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 96;
  *(v0 + 232) = v1;
  sub_1A34C9990();

  sub_1A3288FDC(v0 + 96, &qword_1EB0C57F8);
  v3 = *(v0 + 200);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1A3445DA4()
{
  v1 = *(v0 + 240);

  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  swift_getKeyPath();
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 56;
  *(v0 + 224) = v1;
  sub_1A34C9990();

  sub_1A3288FDC(v0 + 56, &qword_1EB0C57F8);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A3445ED8(char a1)
{
  *(v2 + 248) = v1;
  *(v2 + 336) = a1;
  *(v2 + 256) = sub_1A34CD450();
  *(v2 + 264) = sub_1A34CD440();
  v4 = sub_1A34CD3E0();
  *(v2 + 272) = v4;
  *(v2 + 280) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A3445F78, v4, v3);
}

uint64_t sub_1A3445F78()
{
  v1 = v0[31];
  swift_getKeyPath();
  v0[28] = v1;
  v0[36] = OBJC_IVAR____TtC14ContactsUICore27UserInputRequestCoordinator___observationRegistrar;
  v0[37] = sub_1A3452CB0(&qword_1EB0C19F8, type metadata accessor for UserInputRequestCoordinator);
  sub_1A34C99A0();

  swift_beginAccess();
  sub_1A328D790(v1 + 16, (v0 + 2), &qword_1EB0C57F8);
  if (v0[5])
  {
    sub_1A31EE4BC((v0 + 2), (v0 + 17));
    sub_1A3288FDC((v0 + 2), &qword_1EB0C57F8);
    v2 = v0[20];
    v3 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v2);
    (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0((v0 + 17));
  }

  else
  {
    sub_1A3288FDC((v0 + 2), &qword_1EB0C57F8);
  }

  v4 = v0[31];
  v5 = sub_1A34CD440();
  v0[38] = v5;
  v6 = swift_task_alloc();
  v0[39] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v0 + 42;
  v7 = swift_task_alloc();
  v0[40] = v7;
  *v7 = v0;
  v7[1] = sub_1A34461C4;
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 22, v5, v8, 0x2874736575716572, 0xEB00000000293A5FLL, sub_1A3452790, v6, &type metadata for PhotoPickerResult);
}

uint64_t sub_1A34461C4()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = sub_1A3446410;
  }

  else
  {

    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = sub_1A34462E8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A34462E8()
{
  v1 = *(v0 + 248);

  *(v0 + 128) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 96) = 0u;
  swift_getKeyPath();
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 96;
  *(v0 + 240) = v1;
  sub_1A34C9990();

  sub_1A3288FDC(v0 + 96, &qword_1EB0C57F8);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  v6 = *(v0 + 8);

  return v6(v3, v4, v5);
}

uint64_t sub_1A3446410()
{
  v1 = *(v0 + 248);

  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  swift_getKeyPath();
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 56;
  *(v0 + 232) = v1;
  sub_1A34C9990();

  sub_1A3288FDC(v0 + 56, &qword_1EB0C57F8);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A3446544(uint64_t a1, __int16 a2)
{
  *(v3 + 224) = a1;
  *(v3 + 232) = v2;
  *(v3 + 320) = a2 & 1;
  *(v3 + 321) = HIBYTE(a2) & 1;
  *(v3 + 240) = sub_1A34CD450();
  *(v3 + 248) = sub_1A34CD440();
  v5 = sub_1A34CD3E0();
  *(v3 + 256) = v5;
  *(v3 + 264) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A34465F0, v5, v4);
}

uint64_t sub_1A34465F0()
{
  v1 = v0[29];
  swift_getKeyPath();
  v0[25] = v1;
  v0[34] = OBJC_IVAR____TtC14ContactsUICore27UserInputRequestCoordinator___observationRegistrar;
  v0[35] = sub_1A3452CB0(&qword_1EB0C19F8, type metadata accessor for UserInputRequestCoordinator);
  sub_1A34C99A0();

  swift_beginAccess();
  sub_1A328D790(v1 + 16, (v0 + 2), &qword_1EB0C57F8);
  if (v0[5])
  {
    sub_1A31EE4BC((v0 + 2), (v0 + 17));
    sub_1A3288FDC((v0 + 2), &qword_1EB0C57F8);
    v2 = v0[20];
    v3 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v2);
    (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0((v0 + 17));
  }

  else
  {
    sub_1A3288FDC((v0 + 2), &qword_1EB0C57F8);
  }

  v4 = v0[29];
  v5 = sub_1A34CD440();
  v0[36] = v5;
  v6 = swift_task_alloc();
  v0[37] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v0 + 40;
  v7 = swift_task_alloc();
  v0[38] = v7;
  *v7 = v0;
  v7[1] = sub_1A344683C;
  v8 = v0[28];
  v9 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v8, v5, v9, 0x2874736575716572, 0xEB00000000293A5FLL, sub_1A3452860, v6, &type metadata for PhotoCaptureResult);
}

uint64_t sub_1A344683C()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_1A3446A80;
  }

  else
  {

    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_1A3446960;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3446960()
{
  v1 = *(v0 + 232);

  *(v0 + 128) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 96) = 0u;
  swift_getKeyPath();
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 96;
  *(v0 + 216) = v1;
  sub_1A34C9990();

  sub_1A3288FDC(v0 + 96, &qword_1EB0C57F8);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A3446A80()
{
  v1 = *(v0 + 232);

  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  swift_getKeyPath();
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 56;
  *(v0 + 208) = v1;
  sub_1A34C9990();

  sub_1A3288FDC(v0 + 56, &qword_1EB0C57F8);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A3446BB4(uint64_t a1)
{
  *(v2 + 288) = v1;
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 296) = sub_1A34CD450();
  *(v2 + 304) = sub_1A34CD440();
  v5 = sub_1A34CD3E0();
  *(v2 + 312) = v5;
  *(v2 + 320) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A3446C60, v5, v4);
}

uint64_t sub_1A3446C60()
{
  v1 = v0[36];
  swift_getKeyPath();
  v0[41] = OBJC_IVAR____TtC14ContactsUICore27UserInputRequestCoordinator___observationRegistrar;
  v0[33] = v1;
  v0[42] = sub_1A3452CB0(&qword_1EB0C19F8, type metadata accessor for UserInputRequestCoordinator);
  sub_1A34C99A0();

  swift_beginAccess();
  sub_1A328D790(v1 + 16, (v0 + 7), &qword_1EB0C57F8);
  if (v0[10])
  {
    sub_1A31EE4BC((v0 + 7), (v0 + 22));
    sub_1A3288FDC((v0 + 7), &qword_1EB0C57F8);
    v2 = v0[25];
    v3 = v0[26];
    __swift_project_boxed_opaque_existential_1(v0 + 22, v2);
    (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0((v0 + 22));
  }

  else
  {
    sub_1A3288FDC((v0 + 7), &qword_1EB0C57F8);
  }

  v4 = v0[36];
  v5 = sub_1A34CD440();
  v0[43] = v5;
  v6 = swift_task_alloc();
  v0[44] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v0 + 2;
  v7 = swift_task_alloc();
  v0[45] = v7;
  *v7 = v0;
  v7[1] = sub_1A3446E98;
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 27, v5, v8, 0x2874736575716572, 0xEB00000000293A5FLL, sub_1A3452390, v6, &type metadata for PosterConfiguration);
}

uint64_t sub_1A3446E98()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = *(v2 + 312);
    v4 = *(v2 + 320);
    v5 = sub_1A34470F0;
  }

  else
  {

    v3 = *(v2 + 312);
    v4 = *(v2 + 320);
    v5 = sub_1A3446FBC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3446FBC()
{
  v1 = *(v0 + 288);

  *(v0 + 168) = 0;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  swift_getKeyPath();
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 136;
  *(v0 + 280) = v1;
  sub_1A34C9990();

  sub_1A3288FDC(v0 + 136, &qword_1EB0C57F8);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 216) | (*(v0 + 220) << 32);
  v6 = *(v0 + 8);

  return v6(v5, v3, v4);
}

uint64_t sub_1A34470F0()
{
  v1 = *(v0 + 288);

  *(v0 + 128) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 96) = 0u;
  swift_getKeyPath();
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 96;
  *(v0 + 272) = v1;
  sub_1A34C9990();

  sub_1A3288FDC(v0 + 96, &qword_1EB0C57F8);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A3447228(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57B8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57C0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21[-v12];
  v14 = *(v10 + 16);
  v14(&v21[-v12], a1, v9, v11);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2C8);
  v25[3] = v15;
  v25[4] = &off_1F161CF70;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  *(boxed_opaque_existential_1 + *(v15 + 36)) = a3;
  v17 = a3;
  sub_1A34C8A90();
  (v14)(v8, v13, v9);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57C8);
  (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBA28);
  v19 = swift_allocObject();
  *(v19 + ((*(*v19 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v10 + 8))(v13, v9);
  sub_1A328D790(v8, v19 + *(*v19 + *MEMORY[0x1E69E6B68] + 16), &qword_1EB0C57B8);
  sub_1A3288FDC(v8, &qword_1EB0C57B8);
  *(boxed_opaque_existential_1 + *(v15 + 40)) = v19;
  swift_getKeyPath();
  v22 = a2;
  v23 = v25;
  v24 = a2;
  sub_1A3452CB0(&qword_1EB0C19F8, type metadata accessor for UserInputRequestCoordinator);
  sub_1A34C9990();

  return sub_1A3288FDC(v25, &qword_1EB0C57F8);
}

uint64_t sub_1A34475B4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57D8);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v20[-v12];
  v14 = *(v10 + 16);
  v14(&v20[-v12], a1, v9, v11);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9748);
  v24[3] = v15;
  v24[4] = &off_1F161CF70;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  *(boxed_opaque_existential_1 + *(v15 + 36)) = a3;
  sub_1A34C8A90();
  (v14)(v8, v13, v9);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57E0);
  (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBA70);
  v18 = swift_allocObject();
  *(v18 + ((*(*v18 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v10 + 8))(v13, v9);
  sub_1A328D790(v8, v18 + *(*v18 + *MEMORY[0x1E69E6B68] + 16), &qword_1EB0C57D0);
  sub_1A3288FDC(v8, &qword_1EB0C57D0);
  *(boxed_opaque_existential_1 + *(v15 + 40)) = v18;
  swift_getKeyPath();
  v21 = a2;
  v22 = v24;
  v23 = a2;
  sub_1A3452CB0(&qword_1EB0C19F8, type metadata accessor for UserInputRequestCoordinator);
  sub_1A34C9990();

  return sub_1A3288FDC(v24, &qword_1EB0C57F8);
}

uint64_t sub_1A344793C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57E8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8990);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21[-v12];
  v14 = *(v10 + 16);
  v14(&v21[-v12], a1, v9, v11);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8978);
  v25[3] = v15;
  v25[4] = &off_1F161CF70;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  v17 = boxed_opaque_existential_1 + *(v15 + 36);
  *v17 = a3 & 1;
  v17[1] = HIBYTE(a3) & 1;
  sub_1A34C8A90();
  (v14)(v8, v13, v9);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C57F0);
  (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBA80);
  v19 = swift_allocObject();
  *(v19 + ((*(*v19 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v10 + 8))(v13, v9);
  sub_1A328D790(v8, v19 + *(*v19 + *MEMORY[0x1E69E6B68] + 16), &qword_1EB0C57E8);
  sub_1A3288FDC(v8, &qword_1EB0C57E8);
  *(boxed_opaque_existential_1 + *(v15 + 40)) = v19;
  swift_getKeyPath();
  v22 = a2;
  v23 = v25;
  v24 = a2;
  sub_1A3452CB0(&qword_1EB0C19F8, type metadata accessor for UserInputRequestCoordinator);
  sub_1A34C9990();

  return sub_1A3288FDC(v25, &qword_1EB0C57F8);
}

uint64_t sub_1A3447CD4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v25 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5808);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5810);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  v13 = *(v9 + 16);
  v13(&v24 - v11, a1, v8, v10);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2A0);
  v29[3] = v14;
  v29[4] = &off_1F161CF70;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  v16 = boxed_opaque_existential_1 + *(v14 + 36);
  v32 = *a3;
  v31 = *(a3 + 1);
  v17 = a3[4];
  v30 = a3[3];
  v18 = *a3;
  v19 = *(a3 + 1);
  *(v16 + 4) = v17;
  *v16 = v18;
  *(v16 + 1) = v19;
  sub_1A328D790(&v32, v28, &qword_1EB0CAE58);
  sub_1A34523C8(&v31, v28);
  sub_1A328D790(&v30, v28, &qword_1EB0C6DA0);
  v20 = v17;
  sub_1A34C8A90();
  (v13)(v7, v12, v8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5818);
  (*(*(v21 - 8) + 56))(v7, 0, 1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBA30);
  v22 = swift_allocObject();
  *(v22 + ((*(*v22 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v9 + 8))(v12, v8);
  sub_1A328D790(v7, v22 + *(*v22 + *MEMORY[0x1E69E6B68] + 16), &qword_1EB0C5808);
  sub_1A3288FDC(v7, &qword_1EB0C5808);
  *(boxed_opaque_existential_1 + *(v14 + 40)) = v22;
  swift_getKeyPath();
  v26 = v25;
  v27 = v29;
  v28[0] = v25;
  sub_1A3452CB0(&qword_1EB0C19F8, type metadata accessor for UserInputRequestCoordinator);
  sub_1A34C9990();

  return sub_1A3288FDC(v29, &qword_1EB0C57F8);
}

uint64_t sub_1A34480D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A34CD890();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1A344813C(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  sub_1A34CA780();
  sub_1A34CBE90();
}

uint64_t sub_1A3448238()
{
  v1[4] = v0;
  type metadata accessor for VisualIdentity(0);
  v1[5] = swift_task_alloc();
  sub_1A34CD450();
  v1[6] = sub_1A34CD440();
  v3 = sub_1A34CD3E0();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A34482FC, v3, v2);
}

uint64_t sub_1A34482FC()
{
  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_visualIdentityProducer);
  v3 = *(v1 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_visualIdentityProducer + 8);
  v4 = *(v1 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_visualIdentityProducer + 16);
  swift_getKeyPath();
  v0[9] = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel___observationRegistrar;
  v0[2] = v1;
  v0[10] = sub_1A3452CB0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v5 = *(v1 + 40);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1A3448468;
  v7 = v0[5];

  return sub_1A3449978(v7, v5, v2, v3, v4);
}

uint64_t sub_1A3448468()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_1A34485A4;
  }

  else
  {
    v5 = sub_1A3452D1C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A34485A4()
{
  v19 = v0;

  if (qword_1EB0C1250 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_1A34CA250();
  __swift_project_value_buffer(v2, qword_1EB0ECFA8);
  v3 = v1;
  v4 = sub_1A34CA230();
  v5 = sub_1A34CD660();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 96);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBA78);
    v11 = sub_1A34CE050();
    v13 = sub_1A31EE23C(v11, v12, &v18);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_1A31E6000, v4, v5, "Could not create new visual identity of type: %s error: %@", v8, 0x16u);
    sub_1A3288FDC(v9, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1A58F1010](v10, -1, -1);
    MEMORY[0x1A58F1010](v8, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1A34487D4()
{
  v1[4] = v0;
  type metadata accessor for VisualIdentity(0);
  v1[5] = swift_task_alloc();
  sub_1A34CD450();
  v1[6] = sub_1A34CD440();
  v3 = sub_1A34CD3E0();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A3448898, v3, v2);
}

uint64_t sub_1A3448898()
{
  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_visualIdentityProducer);
  v3 = *(v1 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_visualIdentityProducer + 8);
  v4 = *(v1 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_visualIdentityProducer + 16);
  swift_getKeyPath();
  v0[9] = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel___observationRegistrar;
  v0[2] = v1;
  v0[10] = sub_1A3452CB0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v5 = *(v1 + 40);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1A3448A04;
  v7 = v0[5];

  return sub_1A344A77C(v7, v5, v2, v3, v4);
}

uint64_t sub_1A3448A04()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_1A3448B40;
  }

  else
  {
    v5 = sub_1A3452D1C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A3448B40()
{
  v19 = v0;

  if (qword_1EB0C1250 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_1A34CA250();
  __swift_project_value_buffer(v2, qword_1EB0ECFA8);
  v3 = v1;
  v4 = sub_1A34CA230();
  v5 = sub_1A34CD660();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 96);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBA68);
    v11 = sub_1A34CE050();
    v13 = sub_1A31EE23C(v11, v12, &v18);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_1A31E6000, v4, v5, "Could not create new visual identity of type: %s error: %@", v8, 0x16u);
    sub_1A3288FDC(v9, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1A58F1010](v10, -1, -1);
    MEMORY[0x1A58F1010](v8, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1A3448D70()
{
  v1[4] = v0;
  type metadata accessor for VisualIdentity(0);
  v1[5] = swift_task_alloc();
  sub_1A34CD450();
  v1[6] = sub_1A34CD440();
  v3 = sub_1A34CD3E0();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A3448E34, v3, v2);
}

uint64_t sub_1A3448E34()
{
  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_visualIdentityProducer);
  v3 = *(v1 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_visualIdentityProducer + 8);
  v4 = *(v1 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_visualIdentityProducer + 16);
  swift_getKeyPath();
  v0[9] = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel___observationRegistrar;
  v0[2] = v1;
  v0[10] = sub_1A3452CB0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v5 = *(v1 + 40);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1A3448FA0;
  v7 = v0[5];

  return sub_1A344B3E8(v7, v5, v2, v3, v4);
}

uint64_t sub_1A3448FA0()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_1A34491AC;
  }

  else
  {
    v5 = sub_1A34490DC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A34490DC()
{
  v1 = v0[5];
  v2 = v0[4];

  swift_getKeyPath();
  v0[3] = v2;
  sub_1A34C99A0();

  sub_1A3359340(v1, (*(v2 + 40) & 1) == 0);
  sub_1A3336D48(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A34491AC()
{
  v19 = v0;

  if (qword_1EB0C1250 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_1A34CA250();
  __swift_project_value_buffer(v2, qword_1EB0ECFA8);
  v3 = v1;
  v4 = sub_1A34CA230();
  v5 = sub_1A34CD660();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 96);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBA20);
    v11 = sub_1A34CE050();
    v13 = sub_1A31EE23C(v11, v12, &v18);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_1A31E6000, v4, v5, "Could not create new visual identity of type: %s error: %@", v8, 0x16u);
    sub_1A3288FDC(v9, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1A58F1010](v10, -1, -1);
    MEMORY[0x1A58F1010](v8, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1A34493DC()
{
  v1[4] = v0;
  type metadata accessor for VisualIdentity(0);
  v1[5] = swift_task_alloc();
  sub_1A34CD450();
  v1[6] = sub_1A34CD440();
  v3 = sub_1A34CD3E0();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A34494A0, v3, v2);
}

uint64_t sub_1A34494A0()
{
  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_visualIdentityProducer);
  v3 = *(v1 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_visualIdentityProducer + 8);
  v4 = *(v1 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_visualIdentityProducer + 16);
  swift_getKeyPath();
  v0[9] = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel___observationRegistrar;
  v0[2] = v1;
  v0[10] = sub_1A3452CB0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v5 = *(v1 + 40);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1A344960C;
  v7 = v0[5];

  return sub_1A344BDF8(v7, v5, v2, v3, v4);
}

uint64_t sub_1A344960C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_1A3449748;
  }

  else
  {
    v5 = sub_1A3452D1C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A3449748()
{
  v19 = v0;

  if (qword_1EB0C1250 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_1A34CA250();
  __swift_project_value_buffer(v2, qword_1EB0ECFA8);
  v3 = v1;
  v4 = sub_1A34CA230();
  v5 = sub_1A34CD660();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 96);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBA38);
    v11 = sub_1A34CE050();
    v13 = sub_1A31EE23C(v11, v12, &v18);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_1A31E6000, v4, v5, "Could not create new visual identity of type: %s error: %@", v8, 0x16u);
    sub_1A3288FDC(v9, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1A58F1010](v10, -1, -1);
    MEMORY[0x1A58F1010](v8, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1A3449978(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 552) = a5;
  *(v5 + 98) = a4;
  *(v5 + 544) = a3;
  *(v5 + 97) = a2;
  *(v5 + 536) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A34499A8, 0, 0);
}

uint64_t sub_1A34499A8()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 544);
    sub_1A34C9010();
    v2 = swift_task_alloc();
    *(v0 + 592) = v2;
    *v2 = v0;
    v2[1] = sub_1A3449E0C;
    v3 = v0 + 408;
    v4 = 1;
    v5 = sub_1A3446544;
  }

  else
  {
    v6 = *(v0 + 544);
    sub_1A34C9010();
    v7 = swift_task_alloc();
    *(v0 + 560) = v7;
    *v7 = v0;
    v7[1] = sub_1A3449B14;
    v4 = *(v0 + 552);
    v3 = v0 + 104;
    v5 = sub_1A33635D8;
  }

  return v5(v3, v4);
}

uint64_t sub_1A3449B14()
{
  v2 = *v1;
  *(v2 + 568) = v0;

  if (v0)
  {
    v3 = *(v2 + 544);

    return MEMORY[0x1EEE6DFA0](sub_1A3449DF4, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v2 + 576) = v4;
    *v4 = v2;
    v4[1] = sub_1A3449CA4;
    v5 = *(v2 + 552);
    v6 = *(v2 + 98);
    v7 = *(v2 + 544);

    return sub_1A33617D4(v2 + 336, v7, v6, v5, v2 + 104);
  }
}

uint64_t sub_1A3449CA4()
{
  v2 = *(*v1 + 544);
  *(*v1 + 584) = v0;

  if (v0)
  {
    v3 = sub_1A344A718;
  }

  else
  {
    v3 = sub_1A344A5A0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A3449E0C()
{
  *(*v1 + 600) = v0;

  if (v0)
  {
    v2 = sub_1A344A100;
  }

  else
  {
    v2 = sub_1A3449F20;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A3449F20()
{
  v1 = *(v0 + 424);
  *(v0 + 472) = *(v0 + 408);
  *(v0 + 488) = v1;
  *(v0 + 504) = *(v0 + 440);
  *(v0 + 513) = *(v0 + 449);
  v3 = *(v0 + 480);
  v2 = *(v0 + 488);
  v4 = swift_task_alloc();
  *(v0 + 608) = v4;
  *v4 = v0;
  v4[1] = sub_1A3449FEC;
  v5 = *(v0 + 552);
  v6 = *(v0 + 98);
  v7 = *(v0 + 544);

  return sub_1A33611DC(v0 + 264, v7, v6, v5, v3, v2);
}

uint64_t sub_1A3449FEC()
{
  *(*v1 + 616) = v0;

  if (v0)
  {
    v2 = sub_1A344A528;
  }

  else
  {
    v2 = sub_1A344A170;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A344A100()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A344A170()
{
  v1 = *(v0 + 544);
  sub_1A3363C94(v0 + 472);
  v2 = *(v0 + 312);
  *(v0 + 224) = *(v0 + 296);
  *(v0 + 240) = v2;
  *(v0 + 256) = *(v0 + 328);
  v3 = *(v0 + 280);
  *(v0 + 192) = *(v0 + 264);
  *(v0 + 208) = v3;

  v4 = swift_task_alloc();
  *(v0 + 624) = v4;
  *v4 = v0;
  v4[1] = sub_1A344A25C;

  return sub_1A33638F4(v0 + 16, v0 + 192);
}

uint64_t sub_1A344A25C()
{
  *(*v1 + 632) = v0;

  if (v0)
  {
    v2 = sub_1A344A4C4;
  }

  else
  {
    v2 = sub_1A344A370;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A344A370()
{
  v1 = *(v0 + 536);
  v16 = *(v0 + 96);
  v15 = *(v0 + 48);
  v13 = *(v0 + 80);
  v14 = *(v0 + 64);
  v11 = *(v0 + 16);
  v12 = *(v0 + 32);
  sub_1A34C8A90();
  v2 = type metadata accessor for VisualIdentity(0);
  v3 = (v1 + v2[7]);
  v3[3] = &type metadata for PhotosAvatarSource;
  v3[4] = &off_1F1622140;
  v4 = swift_allocObject();
  *v3 = v4;
  *(v4 + 16) = v11;
  *(v4 + 32) = v12;
  *(v4 + 48) = v15;
  *(v4 + 64) = v14;
  *(v4 + 80) = v13;
  *(v4 + 96) = v16;
  v5 = (v1 + v2[8]);
  v5[3] = &type metadata for PosterConfigurationSource;
  v5[4] = &off_1F16220A8;
  v6 = swift_allocObject();
  *v5 = v6;
  *(v6 + 80) = *(v0 + 256);
  v7 = *(v0 + 240);
  *(v6 + 48) = *(v0 + 224);
  *(v6 + 64) = v7;
  v8 = *(v0 + 208);
  *(v6 + 16) = *(v0 + 192);
  *(v6 + 32) = v8;
  *(v1 + v2[5]) = 1;
  *(v1 + v2[6]) = 0;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1A344A4C4()
{
  sub_1A335D9D0(v0 + 192);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A344A528()
{

  sub_1A3363C94(v0 + 472);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A344A5A0()
{
  v1 = *(v0 + 384);
  *(v0 + 224) = *(v0 + 368);
  *(v0 + 240) = v1;
  *(v0 + 256) = *(v0 + 400);
  v2 = *(v0 + 352);
  *(v0 + 192) = *(v0 + 336);
  *(v0 + 208) = v2;
  v3 = *(v0 + 536);
  v18 = *(v0 + 184);
  v15 = *(v0 + 120);
  v17 = *(v0 + 136);
  v16 = *(v0 + 152);
  v13 = *(v0 + 104);
  v14 = *(v0 + 168);
  sub_1A34C8A90();
  v4 = type metadata accessor for VisualIdentity(0);
  v5 = (v3 + v4[7]);
  v5[3] = &type metadata for PhotosAvatarSource;
  v5[4] = &off_1F1622140;
  v6 = swift_allocObject();
  *v5 = v6;
  *(v6 + 16) = v13;
  *(v6 + 32) = v15;
  *(v6 + 48) = v17;
  *(v6 + 64) = v16;
  *(v6 + 80) = v14;
  *(v6 + 96) = v18;
  v7 = (v3 + v4[8]);
  v7[3] = &type metadata for PosterConfigurationSource;
  v7[4] = &off_1F16220A8;
  v8 = swift_allocObject();
  *v7 = v8;
  *(v8 + 80) = *(v0 + 256);
  v9 = *(v0 + 240);
  *(v8 + 48) = *(v0 + 224);
  *(v8 + 64) = v9;
  v10 = *(v0 + 208);
  *(v8 + 16) = *(v0 + 192);
  *(v8 + 32) = v10;
  *(v3 + v4[5]) = 1;
  *(v3 + v4[6]) = 0;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1A344A718()
{
  sub_1A3363554(v0 + 104);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A344A77C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 600) = a5;
  *(v5 + 98) = a4;
  *(v5 + 592) = a3;
  *(v5 + 97) = a2;
  *(v5 + 584) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A344A7AC, 0, 0);
}

uint64_t sub_1A344A7AC()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 592);
    sub_1A34C9010();
    v2 = swift_task_alloc();
    *(v0 + 664) = v2;
    *v2 = v0;
    v2[1] = sub_1A344AD28;
    v3 = *(v0 + 600);
    v4 = *(v0 + 98);
    v5 = *(v0 + 592);

    return sub_1A3362878(v0 + 440, v5, v4, v3);
  }

  else
  {
    v7 = *(v0 + 592);
    sub_1A34C9010();
    v8 = swift_task_alloc();
    *(v0 + 608) = v8;
    *v8 = v0;
    v8[1] = sub_1A344A910;
    v9 = *(v0 + 98);

    return sub_1A3445ED8(v9);
  }
}

uint64_t sub_1A344A910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 616) = v3;

  if (v3)
  {
    v9 = sub_1A344ACBC;
  }

  else
  {
    v8[78] = a3;
    v8[79] = a2;
    v8[80] = a1;
    v9 = sub_1A344AA50;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1A344AA50()
{
  *&v7 = *(v0 + 624);
  *(&v7 + 1) = v7;
  *&v8 = *(v0 + 640);
  *(&v8 + 1) = *(v0 + 632);
  v1 = v7;
  sub_1A3362D58();
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 1;
  *(v0 + 16) = v7;
  *(v0 + 32) = v8;
  *(v0 + 272) = 1;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 192) = v7;
  *(v0 + 208) = v8;
  sub_1A336351C(v0 + 16, v0 + 280);
  sub_1A3363554(v0 + 192);
  v2 = swift_task_alloc();
  *(v0 + 648) = v2;
  *v2 = v0;
  v2[1] = sub_1A344AB6C;
  v3 = *(v0 + 600);
  v4 = *(v0 + 98);
  v5 = *(v0 + 592);

  return sub_1A33617D4(v0 + 512, v5, v4, v3, v0 + 16);
}

uint64_t sub_1A344AB6C()
{
  v2 = *(*v1 + 592);
  *(*v1 + 656) = v0;

  if (v0)
  {
    v3 = sub_1A344B384;
  }

  else
  {
    v3 = sub_1A344B218;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A344ACBC()
{
  v1 = *(v0 + 592);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A344AD28()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  if (v0)
  {
    v3 = *(v2 + 592);

    v4 = sub_1A344B200;
  }

  else
  {
    v4 = sub_1A344AE4C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A344AE4C()
{
  v1 = *(v0 + 592);
  *(v0 + 432) = *(v0 + 504);
  v2 = *(v0 + 488);
  *(v0 + 400) = *(v0 + 472);
  *(v0 + 416) = v2;
  v3 = *(v0 + 456);
  *(v0 + 368) = *(v0 + 440);
  *(v0 + 384) = v3;

  v4 = swift_task_alloc();
  *(v0 + 680) = v4;
  *v4 = v0;
  v4[1] = sub_1A344AF28;

  return sub_1A33638F4(v0 + 104, v0 + 368);
}

uint64_t sub_1A344AF28()
{
  *(*v1 + 688) = v0;

  if (v0)
  {
    v2 = sub_1A344B19C;
  }

  else
  {
    v2 = sub_1A344B03C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A344B03C()
{
  v1 = *(v0 + 584);
  v16 = *(v0 + 184);
  v13 = *(v0 + 120);
  v15 = *(v0 + 136);
  v14 = *(v0 + 152);
  v11 = *(v0 + 104);
  v12 = *(v0 + 168);
  sub_1A34C8A90();
  v2 = type metadata accessor for VisualIdentity(0);
  v3 = (v1 + v2[7]);
  v3[3] = &type metadata for PhotosAvatarSource;
  v3[4] = &off_1F1622140;
  v4 = swift_allocObject();
  *v3 = v4;
  *(v4 + 16) = v11;
  *(v4 + 32) = v13;
  *(v4 + 48) = v15;
  *(v4 + 64) = v14;
  *(v4 + 80) = v12;
  *(v4 + 96) = v16;
  v5 = (v1 + v2[8]);
  v5[3] = &type metadata for PosterConfigurationSource;
  v5[4] = &off_1F16220A8;
  v6 = swift_allocObject();
  *v5 = v6;
  *(v6 + 80) = *(v0 + 432);
  v7 = *(v0 + 416);
  *(v6 + 48) = *(v0 + 400);
  *(v6 + 64) = v7;
  v8 = *(v0 + 384);
  *(v6 + 16) = *(v0 + 368);
  *(v6 + 32) = v8;
  *(v1 + v2[5]) = 1;
  *(v1 + v2[6]) = 0;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1A344B19C()
{
  sub_1A335D9D0(v0 + 368);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A344B218()
{
  v1 = *(v0 + 560);
  *(v0 + 400) = *(v0 + 544);
  *(v0 + 416) = v1;
  *(v0 + 432) = *(v0 + 576);
  v2 = *(v0 + 528);
  *(v0 + 368) = *(v0 + 512);
  *(v0 + 384) = v2;
  v3 = *(v0 + 584);
  v18 = *(v0 + 96);
  v17 = *(v0 + 48);
  v15 = *(v0 + 80);
  v16 = *(v0 + 64);
  v13 = *(v0 + 16);
  v14 = *(v0 + 32);
  sub_1A34C8A90();
  v4 = type metadata accessor for VisualIdentity(0);
  v5 = (v3 + v4[7]);
  v5[3] = &type metadata for PhotosAvatarSource;
  v5[4] = &off_1F1622140;
  v6 = swift_allocObject();
  *v5 = v6;
  *(v6 + 16) = v13;
  *(v6 + 32) = v14;
  *(v6 + 48) = v17;
  *(v6 + 64) = v16;
  *(v6 + 80) = v15;
  *(v6 + 96) = v18;
  v7 = (v3 + v4[8]);
  v7[3] = &type metadata for PosterConfigurationSource;
  v7[4] = &off_1F16220A8;
  v8 = swift_allocObject();
  *v7 = v8;
  *(v8 + 80) = *(v0 + 432);
  v9 = *(v0 + 416);
  *(v8 + 48) = *(v0 + 400);
  *(v8 + 64) = v9;
  v10 = *(v0 + 384);
  *(v8 + 16) = *(v0 + 368);
  *(v8 + 32) = v10;
  *(v3 + v4[5]) = 1;
  *(v3 + v4[6]) = 0;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1A344B384()
{
  sub_1A3363554(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A344B3E8(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 240) = a3;
  *(v5 + 248) = a5;
  *(v5 + 321) = a4;
  *(v5 + 320) = a2;
  *(v5 + 232) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A344B414, 0, 0);
}

uint64_t sub_1A344B414()
{
  if (*(v0 + 320))
  {
    v1 = *(v0 + 240);
    sub_1A34C9010();
    v2 = swift_task_alloc();
    *(v0 + 304) = v2;
    *v2 = v0;
    v2[1] = sub_1A344B904;
    v3 = *(v0 + 321);
    v4 = *(v0 + 240);
    v5 = *(v0 + 248);

    return sub_1A341A4C0(v0 + 88, v4, v3, v5);
  }

  else
  {
    v7 = *(v0 + 240);
    sub_1A34C9010();
    v8 = swift_task_alloc();
    *(v0 + 256) = v8;
    *v8 = v0;
    v8[1] = sub_1A344B568;

    return sub_1A344586C(0);
  }
}

uint64_t sub_1A344B568(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v5 = sub_1A344B898;
  }

  else
  {
    *(v4 + 272) = a1;
    v5 = sub_1A344B690;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A344B690()
{
  v8 = v0;
  v1 = v0[34];
  v6 = 0;
  v7 = -1;
  type metadata accessor for MemojiAvatarSource();
  swift_allocObject();
  v2 = sub_1A341C270(v1, &v6);
  v0[35] = v2;

  v3 = swift_task_alloc();
  v0[36] = v3;
  *v3 = v0;
  v3[1] = sub_1A344B774;
  v4 = v0[30];

  return sub_1A34198E8((v0 + 20), v4, v2);
}

uint64_t sub_1A344B774()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_1A344BD80;
  }

  else
  {

    v3 = sub_1A344BC6C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A344B898()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A344B904()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = *(v2 + 240);

    v4 = sub_1A344BC54;
  }

  else
  {
    v4 = sub_1A344BA24;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A344BA24()
{
  v28 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 240);
  v3 = *(v0 + 104);
  v4 = *(v0 + 136);
  *(v0 + 48) = *(v0 + 120);
  *(v0 + 64) = v4;
  *(v0 + 80) = *(v0 + 152);
  *(v0 + 16) = *(v0 + 88);
  *(v0 + 32) = v3;

  v5 = sub_1A341C868((*(v0 + 24) | (*(v0 + 28) << 32)), *(v0 + 32), *(v0 + 40));
  if (v1)
  {
    goto LABEL_2;
  }

  v10 = v6;
  v11 = v7;
  v12 = v8;
  if (!v5)
  {
    sub_1A3363B78();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
    sub_1A31EEE60(v10, v11);

LABEL_2:
    sub_1A335D9D0(v0 + 16);
    v9 = *(v0 + 8);
    goto LABEL_5;
  }

  v13 = v5;
  v14 = v12;
  v26 = sub_1A34CC440();
  v27 = 0;
  v15 = type metadata accessor for MemojiAvatarSource();
  swift_allocObject();
  v16 = sub_1A341C270(v13, &v26);

  sub_1A31EEE60(v10, v11);
  v17 = *(v0 + 232);
  sub_1A34C8A90();
  v18 = type metadata accessor for VisualIdentity(0);
  v19 = (v17 + v18[7]);
  v19[3] = v15;
  v19[4] = &off_1F1627328;
  *v19 = v16;
  v20 = (v17 + v18[8]);
  v20[3] = &type metadata for PosterConfigurationSource;
  v20[4] = &off_1F16220A8;
  v21 = swift_allocObject();
  *v20 = v21;
  *(v21 + 80) = *(v0 + 80);
  v22 = *(v0 + 64);
  *(v21 + 48) = *(v0 + 48);
  *(v21 + 64) = v22;
  v23 = *(v0 + 32);
  *(v21 + 16) = *(v0 + 16);
  *(v21 + 32) = v23;
  *(v17 + v18[5]) = 1;
  *(v17 + v18[6]) = 0;
  v9 = *(v0 + 8);
LABEL_5:

  return v9();
}

uint64_t sub_1A344BC6C()
{
  v1 = *(v0 + 208);
  *(v0 + 48) = *(v0 + 192);
  *(v0 + 64) = v1;
  v2 = *(v0 + 232);
  *(v0 + 80) = *(v0 + 224);
  v3 = *(v0 + 176);
  *(v0 + 16) = *(v0 + 160);
  *(v0 + 32) = v3;
  v4 = *(v0 + 280);
  sub_1A34C8A90();
  v5 = type metadata accessor for VisualIdentity(0);
  v6 = (v2 + v5[7]);
  v6[3] = type metadata accessor for MemojiAvatarSource();
  v6[4] = &off_1F1627328;
  *v6 = v4;
  v7 = (v2 + v5[8]);
  v7[3] = &type metadata for PosterConfigurationSource;
  v7[4] = &off_1F16220A8;
  v8 = swift_allocObject();
  *v7 = v8;
  *(v8 + 80) = *(v0 + 80);
  v9 = *(v0 + 64);
  *(v8 + 48) = *(v0 + 48);
  *(v8 + 64) = v9;
  v10 = *(v0 + 32);
  *(v8 + 16) = *(v0 + 16);
  *(v8 + 32) = v10;
  *(v2 + v5[5]) = 1;
  *(v2 + v5[6]) = 0;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1A344BD80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A344BDF8(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 528) = a5;
  *(v5 + 146) = a4;
  *(v5 + 520) = a3;
  *(v5 + 145) = a2;
  *(v5 + 512) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A344BE28, 0, 0);
}

uint64_t sub_1A344BE28()
{
  v1 = *(v0 + 520);
  if (*(v0 + 145))
  {
    v2 = v1;
    sub_1A34C9010();
    v3 = swift_task_alloc();
    *(v0 + 568) = v3;
    *v3 = v0;
    v3[1] = sub_1A344C2CC;
    v4 = *(v0 + 528);
    v5 = *(v0 + 146);
    v6 = *(v0 + 520);

    return sub_1A345F0AC(v0 + 224, v6, v5, v4);
  }

  else
  {
    v8 = v1;
    sub_1A34C9010();
    v9 = swift_task_alloc();
    *(v0 + 536) = v9;
    *v9 = v0;
    v9[1] = sub_1A344BF70;
    v10 = *(v0 + 520);

    return sub_1A345F730(v0 + 424, v10);
  }
}

uint64_t sub_1A344BF70()
{
  v2 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v3 = *(v2 + 520);

    v4 = sub_1A344C2B4;
  }

  else
  {
    v4 = sub_1A344C094;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A344C094()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 440);
  v3 = *(v0 + 448);
  v4 = *(v0 + 456);
  *(v0 + 368) = *(v0 + 424);
  *(v0 + 376) = v1;
  *(v0 + 384) = v2;
  *(v0 + 392) = v3;
  *(v0 + 400) = v4;
  *(v0 + 408) = *(v0 + 464);
  v5 = swift_task_alloc();
  *(v0 + 552) = v5;
  *v5 = v0;
  v5[1] = sub_1A344C164;
  v6 = *(v0 + 528);
  v7 = *(v0 + 146);
  v8 = *(v0 + 520);

  return sub_1A345F9C8(v0 + 296, v8, v7, v6, v0 + 368);
}

uint64_t sub_1A344C164()
{
  v2 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v3 = sub_1A344C898;
  }

  else
  {
    v3 = sub_1A344C700;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A344C2CC()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  if (v0)
  {
    v3 = *(v2 + 520);

    v4 = sub_1A344C6E8;
  }

  else
  {
    v4 = sub_1A344C3F0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A344C3F0()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 520);
  v3 = *(v0 + 224);
  *(v0 + 168) = *(v0 + 240);
  v4 = *(v0 + 272);
  *(v0 + 184) = *(v0 + 256);
  *(v0 + 200) = v4;
  *(v0 + 216) = *(v0 + 288);
  *(v0 + 152) = v3;

  sub_1A346077C(*(v0 + 160), *(v0 + 168), *(v0 + 176), v0 + 16);
  if (v1)
  {
    sub_1A335D9D0(v0 + 152);
    v5 = *(v0 + 8);
  }

  else
  {
    if (*(v0 + 32))
    {
      v6 = *(v0 + 104);

      v7 = 2;
    }

    else
    {
      if (qword_1ED854B20 != -1)
      {
        swift_once();
      }

      v6 = qword_1ED857E20;
      v7 = byte_1ED857E28;
      sub_1A31EE004(qword_1ED857E20, byte_1ED857E28);
    }

    *(v0 + 480) = *(v0 + 128);
    sub_1A31EE004(v6, v7);
    sub_1A3340250(v0 + 480, v0 + 496);
    if (qword_1ED8549E0 != -1)
    {
      swift_once();
    }

    v8 = byte_1ED8549E8;
    v9 = qword_1ED8549F0;
    v10 = qword_1ED8549F8;
    sub_1A31ECC9C(v6, v7);
    sub_1A335DA80(v0 + 16);
    v11 = *(v0 + 480);
    v12 = *(v0 + 488);
    *(v0 + 368) = v6;
    *(v0 + 376) = v7;
    *(v0 + 384) = v11;
    *(v0 + 392) = v12;
    *(v0 + 400) = v8;
    *(v0 + 408) = v9;
    *(v0 + 416) = v10;
    v13 = *(v0 + 512);
    sub_1A34C8A90();
    v14 = type metadata accessor for VisualIdentity(0);
    v15 = (v13 + v14[7]);
    v15[3] = &type metadata for MonogramAvatarSource;
    v15[4] = &off_1F1629A00;
    v16 = swift_allocObject();
    *v15 = v16;
    v17 = *(v0 + 368);
    v18 = *(v0 + 384);
    v19 = *(v0 + 392);
    v20 = *(v0 + 400);
    *(v16 + 16) = v17;
    v21 = *(v0 + 376);
    *(v16 + 24) = v21;
    *(v16 + 32) = v18;
    *(v16 + 40) = v19;
    *(v16 + 48) = v20;
    *(v16 + 56) = *(v0 + 408);
    v22 = (v13 + v14[8]);
    v22[3] = &type metadata for PosterConfigurationSource;
    v22[4] = &off_1F16220A8;
    v23 = swift_allocObject();
    *v22 = v23;
    v24 = *(v0 + 152);
    *(v23 + 80) = *(v0 + 216);
    v25 = *(v0 + 200);
    *(v23 + 48) = *(v0 + 184);
    *(v23 + 64) = v25;
    v26 = *(v0 + 168);
    *(v23 + 16) = v24;
    *(v23 + 32) = v26;
    sub_1A31EE004(v17, v21);

    sub_1A31ECC9C(v17, v21);

    *(v13 + v14[5]) = 1;
    *(v13 + v14[6]) = 0;
    v5 = *(v0 + 8);
  }

  return v5();
}

uint64_t sub_1A344C700()
{
  *(v0 + 216) = *(v0 + 360);
  v1 = *(v0 + 296);
  *(v0 + 168) = *(v0 + 312);
  v2 = *(v0 + 344);
  *(v0 + 184) = *(v0 + 328);
  *(v0 + 200) = v2;
  *(v0 + 152) = v1;
  v3 = *(v0 + 512);
  sub_1A34C8A90();
  v4 = type metadata accessor for VisualIdentity(0);
  v5 = (v3 + v4[7]);
  v5[3] = &type metadata for MonogramAvatarSource;
  v5[4] = &off_1F1629A00;
  v6 = swift_allocObject();
  *v5 = v6;
  v7 = *(v0 + 368);
  v8 = *(v0 + 384);
  v9 = *(v0 + 392);
  v10 = *(v0 + 400);
  *(v6 + 16) = v7;
  v11 = *(v0 + 376);
  *(v6 + 24) = v11;
  *(v6 + 32) = v8;
  *(v6 + 40) = v9;
  *(v6 + 48) = v10;
  *(v6 + 56) = *(v0 + 408);
  v12 = (v3 + v4[8]);
  v12[3] = &type metadata for PosterConfigurationSource;
  v12[4] = &off_1F16220A8;
  v13 = swift_allocObject();
  *v12 = v13;
  *(v13 + 80) = *(v0 + 216);
  v14 = *(v0 + 168);
  v15 = *(v0 + 200);
  *(v13 + 48) = *(v0 + 184);
  *(v13 + 64) = v15;
  *(v13 + 16) = *(v0 + 152);
  *(v13 + 32) = v14;
  sub_1A31EE004(v7, v11);

  sub_1A31ECC9C(v7, v11);

  *(v3 + v4[5]) = 1;
  *(v3 + v4[6]) = 0;
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1A344C898()
{
  sub_1A31ECC9C(*(v0 + 368), *(v0 + 376));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A344C90C()
{
  v1[7] = v0;
  type metadata accessor for VisualIdentity(0);
  v1[8] = swift_task_alloc();
  sub_1A34CD450();
  v1[9] = sub_1A34CD440();
  v3 = sub_1A34CD3E0();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A344C9D0, v3, v2);
}

uint64_t sub_1A344C9D0()
{
  v2 = v0[7];
  v1 = v0[8];
  swift_getKeyPath();
  v0[12] = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel___observationRegistrar;
  v0[5] = v2;
  v0[13] = sub_1A3452CB0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v3 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__currentIdentity;
  swift_beginAccess();
  sub_1A3300BB8(v2 + v3, v1);
  v4 = *(v2 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_visualIdentityProducer);
  v5 = *(v2 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_visualIdentityProducer + 8);
  v6 = *(v2 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_visualIdentityProducer + 16);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1A344CB54;
  v8 = v0[8];

  return sub_1A344CF98(0, v8, v4, v5, v6);
}

uint64_t sub_1A344CB54()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_1A344CD60;
  }

  else
  {
    v5 = sub_1A344CC90;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A344CC90()
{
  v1 = v0[8];
  v2 = v0[7];

  swift_getKeyPath();
  v0[6] = v2;
  sub_1A34C99A0();

  sub_1A3359340(v1, (*(v2 + 40) & 1) == 0);
  sub_1A3336D48(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A344CD60()
{
  v20 = v0;
  v1 = v0[8];

  sub_1A3336D48(v1);
  if (qword_1EB0C1250 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v3 = sub_1A34CA250();
  __swift_project_value_buffer(v3, qword_1EB0ECFA8);
  v4 = v2;
  v5 = sub_1A34CA230();
  v6 = sub_1A34CD660();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[15];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBA18);
    v12 = sub_1A34CE050();
    v14 = sub_1A31EE23C(v12, v13, &v19);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_1A31E6000, v5, v6, "Could not create new visual identity of type: %s error: %@", v9, 0x16u);
    sub_1A3288FDC(v10, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1A58F1010](v11, -1, -1);
    MEMORY[0x1A58F1010](v9, -1, -1);
  }

  else
  {
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1A344CF98(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 144) = a3;
  *(v5 + 152) = a5;
  *(v5 + 201) = a4;
  *(v5 + 136) = a2;
  *(v5 + 200) = a1;
  v6 = sub_1A34C9780();
  *(v5 + 160) = v6;
  *(v5 + 168) = *(v6 - 8);
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = type metadata accessor for VisualIdentity(0);
  *(v5 + 192) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A344D094, 0, 0);
}

uint64_t sub_1A344D094()
{
  v1 = *(v0 + 136);
  v2 = *(*(v0 + 184) + 24);
  if (*(v1 + v2) == 1)
  {
    v3 = *(v0 + 192);
    v5 = *(v0 + 168);
    v4 = *(v0 + 176);
    v6 = *(v0 + 160);
    v7 = *(v0 + 200);
    sub_1A3300BB8(*(v0 + 136), v3);
    sub_1A34C8A90();
    (*(v5 + 40))(v3, v4, v6);
    sub_1A34521B8(v3, v1);
    *(v1 + v2) = 0;
    if (v7)
    {
      if ([*(v0 + 144) isKeyAvailable_] && objc_msgSend(*(v0 + 144), sel_contactType) == 1 || (v8 = objc_msgSend(objc_opt_self(), sel_stringFromContact_style_, *(v0 + 144), 1002)) == 0)
      {
        v10 = 0;
        v12 = 0xE000000000000000;
      }

      else
      {
        v9 = v8;
        v10 = sub_1A34CD110();
        v12 = v11;
      }

      if (qword_1ED854B20 != -1)
      {
        swift_once();
      }

      v26 = qword_1ED857E20;
      v27 = byte_1ED857E28;
      sub_1A31EE004(qword_1ED857E20, byte_1ED857E28);
      if (qword_1ED8549E0 != -1)
      {
        swift_once();
      }

      v28 = *(v0 + 184);
      v29 = *(v0 + 136);
      v30 = byte_1ED8549E8;
      v31 = qword_1ED8549F0;
      v32 = qword_1ED8549F8;
      *(v0 + 80) = &type metadata for MonogramAvatarSource;
      *(v0 + 88) = &off_1F1629A00;
      v33 = swift_allocObject();
      *(v0 + 56) = v33;
      *(v33 + 16) = v26;
      *(v33 + 24) = v27;
      *(v33 + 32) = v10;
      *(v33 + 40) = v12;
      *(v33 + 48) = v30;
      *(v33 + 56) = v31;
      *(v33 + 64) = v32;
      v34 = *(v28 + 28);
      __swift_destroy_boxed_opaque_existential_0(v29 + v34);
      sub_1A31EE568((v0 + 56), v29 + v34);
      return sub_1A34CDC10();
    }

    v13 = *(v0 + 184);
    v14 = *(v0 + 144);
    v15 = *(v0 + 136);
    *(v0 + 120) = &type metadata for PosterConfigurationSource;
    *(v0 + 128) = &off_1F16220A8;
    v16 = swift_allocObject();
    *(v0 + 96) = v16;
    sub_1A34913A0(v14, v16 + 16);
    v17 = *(v13 + 32);
    __swift_destroy_boxed_opaque_existential_0(v15 + v17);
    sub_1A31EE568((v0 + 96), v15 + v17);
  }

  else if (*(v0 + 200))
  {
    return sub_1A34CDC10();
  }

  *(v0 + 40) = &type metadata for EmojiAvatarSource;
  *(v0 + 48) = &off_1F162A430;
  v18 = swift_allocObject();
  *(v0 + 16) = v18;
  if (qword_1EB0C1790 != -1)
  {
    v35 = v18;
    swift_once();
    v18 = v35;
  }

  v19 = *(v0 + 184);
  v20 = *(v0 + 136);
  v21 = qword_1EB0ED130;
  *(v18 + 16) = 2174263280;
  *(v18 + 24) = 0xA400000000000000;
  *(v18 + 32) = v21;
  v22 = byte_1EB0ED138;
  *(v18 + 40) = byte_1EB0ED138;
  sub_1A31EE004(v21, v22);
  v23 = *(v19 + 28);
  __swift_destroy_boxed_opaque_existential_0(v20 + v23);
  sub_1A31EE568((v0 + 16), v20 + v23);
  *(v20 + *(v19 + 20)) = 0;

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1A344D4A0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8D50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v23 - v7;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5468);
  MEMORY[0x1EEE9AC00](v27);
  v10 = v23 - v9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBA40);
  MEMORY[0x1EEE9AC00](v26);
  v12 = v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBA48);
  v24 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v23 - v14;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBA50);
  MEMORY[0x1EEE9AC00](v25);
  v17 = v23 - v16;
  v18 = [objc_opt_self() isSourceTypeAvailable_];
  if (v18)
  {
    v23[2] = v23;
    MEMORY[0x1EEE9AC00](v18);
    v23[-2] = a1;
    LOBYTE(v23[-1]) = a2 & 1;
    v23[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5660);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBA58);
    sub_1A3284D0C(&unk_1EB0C0590, &unk_1EB0C5660);
    sub_1A3284D0C(&unk_1EB0C0358, &qword_1EB0CBA58);
    sub_1A34CBC70();
    sub_1A3284D0C(&qword_1EB0C0600, &qword_1EB0CBA48);
    sub_1A34CC1F0();
    (*(v24 + 8))(v15, v13);
    v19 = &qword_1EB0CBA50;
    sub_1A328D790(v17, v12, &qword_1EB0CBA50);
    swift_storeEnumTagMultiPayload();
    sub_1A3452560();
    sub_1A32B51E4();
    sub_1A34CB3E0();
    v20 = v17;
  }

  else
  {
    v21 = swift_allocObject();
    *(v21 + 16) = a1;
    *(v21 + 24) = a2 & 1;
    sub_1A34C9010();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5660);
    sub_1A3284D0C(&unk_1EB0C0590, &unk_1EB0C5660);
    sub_1A34CC790();
    sub_1A3284D0C(&unk_1EB0C0500, &unk_1EB0C8D50);
    sub_1A34CC1F0();
    (*(v6 + 8))(v8, v5);
    v19 = &qword_1EB0C5468;
    sub_1A328D790(v10, v12, &qword_1EB0C5468);
    swift_storeEnumTagMultiPayload();
    sub_1A3452560();
    sub_1A32B51E4();
    sub_1A34CB3E0();
    v20 = v10;
  }

  return sub_1A3288FDC(v20, v19);
}

uint64_t sub_1A344DA98@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8D50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5468);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v40 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v39 = v35 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v38 = v35 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v36 = v35 - v16;
  v17 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000012, 0x80000001A35123C0);
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  v37 = a2 & 1;
  *(v20 + 24) = a2 & 1;
  v48 = v17;
  v49 = v19;
  v45 = &v48;
  v46 = 0x6172656D6163;
  v47 = 0xE600000000000000;
  sub_1A34C9010();
  v35[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5660);
  v35[2] = sub_1A3284D0C(&unk_1EB0C0590, &unk_1EB0C5660);
  sub_1A34CC790();

  sub_1A3284D0C(&unk_1EB0C0500, &unk_1EB0C8D50);
  sub_1A34CC1F0();
  v21 = *(v6 + 8);
  v35[1] = v6 + 8;
  v21(v8, v5);
  v22 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000019, 0x80000001A35123E0);
  v24 = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = v37;
  v48 = v22;
  v49 = v24;
  v42 = &v48;
  v43 = 0xD000000000000019;
  v44 = 0x80000001A35123A0;
  sub_1A34C9010();
  sub_1A34CC790();

  v26 = v38;
  sub_1A34CC1F0();
  v21(v8, v5);
  v27 = v36;
  v28 = v39;
  sub_1A328D790(v36, v39, &qword_1EB0C5468);
  v29 = v40;
  sub_1A328D790(v26, v40, &qword_1EB0C5468);
  v30 = v28;
  v31 = v28;
  v32 = v41;
  sub_1A328D790(v30, v41, &qword_1EB0C5468);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBA60);
  sub_1A328D790(v29, v32 + *(v33 + 48), &qword_1EB0C5468);
  sub_1A3288FDC(v26, &qword_1EB0C5468);
  sub_1A3288FDC(v27, &qword_1EB0C5468);
  sub_1A3288FDC(v29, &qword_1EB0C5468);
  return sub_1A3288FDC(v31, &qword_1EB0C5468);
}

uint64_t sub_1A344DFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 96) = a5;
  *(v5 + 24) = a4;
  v6 = sub_1A34CB0B0();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();
  sub_1A34CD450();
  *(v5 + 56) = sub_1A34CD440();
  v8 = sub_1A34CD3E0();
  *(v5 + 64) = v8;
  *(v5 + 72) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A344E0A0, v8, v7);
}

uint64_t sub_1A344E0A0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 24);
  sub_1A34C9010();
  if ((v1 & 1) == 0)
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    sub_1A34CD650();
    v6 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v3, v5);
    v2 = *(v0 + 16);
  }

  *(v0 + 80) = v2;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_1A344E1F0;

  return sub_1A3448238();
}

uint64_t sub_1A344E1F0()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1A3452CF8, v3, v2);
}

uint64_t sub_1A344E334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 96) = a5;
  *(v5 + 24) = a4;
  v6 = sub_1A34CB0B0();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();
  sub_1A34CD450();
  *(v5 + 56) = sub_1A34CD440();
  v8 = sub_1A34CD3E0();
  *(v5 + 64) = v8;
  *(v5 + 72) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A344E42C, v8, v7);
}

uint64_t sub_1A344E42C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 24);
  sub_1A34C9010();
  if ((v1 & 1) == 0)
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    sub_1A34CD650();
    v6 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v3, v5);
    v2 = *(v0 + 16);
  }

  *(v0 + 80) = v2;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_1A344E1F0;

  return sub_1A34487D4();
}

uint64_t sub_1A344E57C()
{
  sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000015, 0x80000001A3512380);
  sub_1A328A95C();
  return sub_1A34CC6C0();
}

uint64_t sub_1A344E620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 96) = a5;
  *(v5 + 24) = a4;
  v6 = sub_1A34CB0B0();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();
  sub_1A34CD450();
  *(v5 + 56) = sub_1A34CD440();
  v8 = sub_1A34CD3E0();
  *(v5 + 64) = v8;
  *(v5 + 72) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A344E718, v8, v7);
}

uint64_t sub_1A344E718()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 24);
  sub_1A34C9010();
  if ((v1 & 1) == 0)
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    sub_1A34CD650();
    v6 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v3, v5);
    v2 = *(v0 + 16);
  }

  *(v0 + 80) = v2;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_1A344E1F0;

  return sub_1A3448D70();
}

uint64_t sub_1A344E8BC@<X0>(uint64_t a1@<X8>)
{
  sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000016, 0x80000001A3512340);
  sub_1A328A95C();
  result = sub_1A34CBE30();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1A344E93C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8D50);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - v3;
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_1A34C9010();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5660);
  sub_1A3284D0C(&unk_1EB0C0590, &unk_1EB0C5660);
  sub_1A34CC790();
  sub_1A3284D0C(&unk_1EB0C0500, &unk_1EB0C8D50);
  sub_1A34CC1F0();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1A344EB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 96) = a5;
  *(v5 + 24) = a4;
  v6 = sub_1A34CB0B0();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();
  sub_1A34CD450();
  *(v5 + 56) = sub_1A34CD440();
  v8 = sub_1A34CD3E0();
  *(v5 + 64) = v8;
  *(v5 + 72) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A344EC2C, v8, v7);
}

uint64_t sub_1A344EC2C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 24);
  sub_1A34C9010();
  if ((v1 & 1) == 0)
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    sub_1A34CD650();
    v6 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v3, v5);
    v2 = *(v0 + 16);
  }

  *(v0 + 80) = v2;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_1A344E1F0;

  return sub_1A34493DC();
}

uint64_t sub_1A344ED7C()
{
  sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000018, 0x80000001A3512360);
  sub_1A328A95C();
  return sub_1A34CC6C0();
}

uint64_t sub_1A344EE08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8D50);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - v3;
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_1A34C9010();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5660);
  sub_1A3284D0C(&unk_1EB0C0590, &unk_1EB0C5660);
  sub_1A34CC790();
  sub_1A3284D0C(&unk_1EB0C0500, &unk_1EB0C8D50);
  sub_1A34CC1F0();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1A344EFF8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_1A34CD4A0();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1A34CD450();
  sub_1A34C9010();
  v11 = sub_1A34CD440();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2 & 1;
  sub_1A32C0B38(0, 0, v9, a4, v12);
}

uint64_t sub_1A344F124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 96) = a5;
  *(v5 + 24) = a4;
  v6 = sub_1A34CB0B0();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();
  sub_1A34CD450();
  *(v5 + 56) = sub_1A34CD440();
  v8 = sub_1A34CD3E0();
  *(v5 + 64) = v8;
  *(v5 + 72) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A344F21C, v8, v7);
}

uint64_t sub_1A344F21C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 24);
  sub_1A34C9010();
  if ((v1 & 1) == 0)
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    sub_1A34CD650();
    v6 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v3, v5);
    v2 = *(v0 + 16);
  }

  *(v0 + 80) = v2;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_1A344F36C;

  return sub_1A344C90C();
}

uint64_t sub_1A344F36C()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1A344F4B0, v3, v2);
}

uint64_t sub_1A344F4B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A344F56C@<X0>(uint64_t a1@<X8>)
{
  sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000015, 0x80000001A35122C0);
  sub_1A328A95C();
  result = sub_1A34CBE30();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1A344F5EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8D50);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - v3;
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_1A34C9010();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5660);
  sub_1A3284D0C(&unk_1EB0C0590, &unk_1EB0C5660);
  sub_1A34CC790();
  sub_1A3284D0C(&unk_1EB0C0500, &unk_1EB0C8D50);
  sub_1A34CC1F0();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1A344F7E4@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v26[3] = a2;
  v27 = a1;
  v29 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA450);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v26 - v5;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5F20);
  v7 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v9 = v26 - v8;
  v10 = sub_1A34CB410();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A34CB650();
  sub_1A34CA7E0();
  v14 = v32;
  v15 = *(v11 + 8);
  v15(v13, v10);
  if (v33)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v14;
  }

  sub_1A34CB650();
  sub_1A34CA7D0();
  v18 = v17;
  v15(v13, v10);
  sub_1A34CAC80();
  v19 = sub_1A34CADD0();
  v20 = sub_1A3452CB0(&qword_1EB0C0970, MEMORY[0x1E697ED30]);
  sub_1A34CA710();
  sub_1A34CAC80();
  v30 = v19;
  v31 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A34CA730();
  (*(v4 + 8))(v6, v3);
  if (sub_1A34CAC80())
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v16 - v18 + 100.0;
  }

  v30 = v3;
  v31 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v28;
  MEMORY[0x1A58EBF40](v28, v23, 0.0, v22);
  return (*(v7 + 8))(v9, v24);
}

uint64_t sub_1A344FB94()
{
  v1 = sub_1A34CB0B0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  sub_1A34C9010();
  if ((v6 & 1) == 0)
  {
    sub_1A34CD650();
    v7 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1A344FCD4(uint64_t a1, char a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBB48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBB50);
  v6 = sub_1A3284D0C(&qword_1EB0CBB58, &qword_1EB0CBB48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5F20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0CA450);
  sub_1A34CADD0();
  sub_1A3452CB0(&qword_1EB0C0970, MEMORY[0x1E697ED30]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1A58ED790](sub_1A3452CA8, v3, v4, v5, v6, OpaqueTypeConformance2);
}

uint64_t sub_1A344FEC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v123 = a1;
  v114 = *(a1 + 16);
  v3 = sub_1A34CAC30();
  v124 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v116 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v115 = &v108 - v6;
  v7 = sub_1A34CD890();
  v127 = *(v7 - 8);
  v128 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v126 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v125 = &v108 - v10;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBAC8);
  MEMORY[0x1EEE9AC00](v118);
  v138 = &v108 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6388);
  MEMORY[0x1EEE9AC00](v12);
  v136 = (&v108 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBAD0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v135 = &v108 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBAD8);
  MEMORY[0x1EEE9AC00](v16);
  v137 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v142 = (&v108 - v19);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBAE0);
  MEMORY[0x1EEE9AC00](v117);
  v120 = &v108 - v20;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBAE8);
  MEMORY[0x1EEE9AC00](v119);
  v22 = &v108 - v21;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBA88);
  MEMORY[0x1EEE9AC00](v121);
  v122 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v139 = v2;
  v140 = &v108 - v25;
  v26 = sub_1A344FB94();
  swift_getKeyPath();
  *&v166[0] = v26;
  v27 = sub_1A3452CB0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v28 = *(v26 + 40);
  v141 = v3;
  if (v28)
  {
  }

  else
  {
    swift_getKeyPath();
    *&v166[0] = v26;
    sub_1A34C99A0();

    v29 = *(v26 + 42);

    if (v29 == 2)
    {
      KeyPath = swift_getKeyPath();
      type metadata accessor for VisualIdentityEditorViewModel();
      *v22 = sub_1A34CA600();
      v22[8] = v31 & 1;
      *(v22 + 2) = swift_getKeyPath();
      v22[24] = 0;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBB18);
      v33 = v32[14];
      *&v22[v33] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5478);
      swift_storeEnumTagMultiPayload();
      v34 = &v22[v32[15]];
      *v34 = swift_getKeyPath();
      v34[8] = 0;
      v35 = &v22[v32[16]];
      LOBYTE(v164[0]) = 0;
      sub_1A34CC730();
      v36 = *(&v166[0] + 1);
      *v35 = v166[0];
      *(v35 + 1) = v36;
      v38 = v32[18];
      v37 = v32[19];
      *&v22[v32[17]] = KeyPath;
      v22[v38] = 1;
      v22[v37] = 1;
      v39 = swift_getKeyPath();
      v40 = v120;
      v41 = &v22[*(v119 + 36)];
      *v41 = v39;
      *(v41 + 4) = 513;
      v41[10] = 1;
      sub_1A328D790(v22, v40, &qword_1EB0CBAE8);
      swift_storeEnumTagMultiPayload();
      sub_1A3452A54();
      sub_1A3284D0C(&qword_1EB0CBB30, &qword_1EB0CBAC8);
      sub_1A34CB3E0();
      sub_1A3288FDC(v22, &qword_1EB0CBAE8);
      goto LABEL_6;
    }
  }

  v42 = swift_getKeyPath();
  type metadata accessor for VisualIdentityEditorViewModel();
  v43 = sub_1A34CA600();
  v44 = v142;
  *v142 = v43;
  *(v44 + 8) = v45 & 1;
  v133 = v12;
  v46 = v27;
  v47 = *(v16 + 60);
  v134 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBAF0);
  v132 = *(*(v48 - 8) + 56);
  v132(v44 + v47, 1, 1, v48);
  v44[2] = v42;
  v44[3] = sub_1A34CA600();
  *(v44 + 32) = v49 & 1;
  v50 = sub_1A34CB290();
  v51 = v136;
  *v136 = v50;
  *(v51 + 8) = 0;
  *(v51 + 16) = 1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6380);
  sub_1A34510B8(v51 + *(v52 + 44));
  sub_1A3284D0C(&qword_1EB0C2EA0, &qword_1EB0C6388);
  v53 = v135;
  sub_1A34CC1F0();
  sub_1A3288FDC(v51, &qword_1EB0C6388);
  v132(v53, 0, 1, v48);
  sub_1A34529E4(v53, v44 + v134);
  v136 = swift_getKeyPath();
  v135 = sub_1A34CA600();
  v112 = v54;
  v111 = sub_1A34CA600();
  LODWORD(v134) = v55 & 1;
  v133 = swift_getKeyPath();
  v56 = sub_1A34CA600();
  LOBYTE(v47) = v57;
  v58 = sub_1A34CA600();
  LOBYTE(v53) = v59;
  LODWORD(v132) = sub_1A34CBAB0();
  v60 = sub_1A344FB94();
  swift_getKeyPath();
  *&v166[0] = v60;
  sub_1A34C99A0();

  sub_1A34CA460();
  v173 = v47 & 1;
  v171 = 1;
  v168 = 0;
  *&v156 = v56;
  BYTE8(v156) = v47 & 1;
  *(&v156 + 9) = *v172;
  HIDWORD(v156) = *&v172[3];
  *&v157 = v133;
  *(&v157 + 1) = v58;
  LOBYTE(v158) = v53 & 1;
  BYTE1(v158) = 1;
  WORD3(v158) = v170;
  *(&v158 + 2) = *&v169[7];
  BYTE8(v158) = v132;
  HIDWORD(v158) = *&v169[3];
  *(&v158 + 9) = *v169;
  *&v159 = v61;
  *(&v159 + 1) = v62;
  *&v160 = v63;
  *(&v160 + 1) = v64;
  v161 = 0;
  v110 = swift_getKeyPath();
  v65 = sub_1A34CA600();
  v130 = v65;
  LOBYTE(v60) = v66;
  v113 = v46;
  v67 = sub_1A34CA600();
  LOBYTE(v44) = v68 & 1;
  v131 = swift_getKeyPath();
  v163 = v60 & 1;
  v162 = 1;
  v132 = swift_getKeyPath();
  v133 = sub_1A34CA600();
  v109 = v69;
  v70 = v137;
  sub_1A328D790(v142, v137, &qword_1EB0CBAD8);
  v152 = v158;
  v153 = v159;
  v154 = v160;
  v155 = v161;
  v150 = v156;
  v151 = v157;
  v71 = v163;
  LOBYTE(v46) = v162;
  v72 = v70;
  v73 = v138;
  sub_1A328D790(v72, v138, &qword_1EB0CBAD8);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBAF8);
  v75 = v73 + v74[12];
  v76 = v136;
  *v75 = v135;
  *(v75 + 8) = v112 & 1;
  v77 = v111;
  *(v75 + 16) = v76;
  *(v75 + 24) = v77;
  *(v75 + 32) = v134;
  *(v75 + 33) = 1;
  v78 = v74[16];
  v79 = v152;
  v80 = v153;
  v164[2] = v152;
  v164[3] = v153;
  v81 = v151;
  v164[0] = v150;
  v164[1] = v151;
  v82 = v154;
  v164[4] = v154;
  v83 = v73 + v78;
  *v83 = v150;
  *(v83 + 16) = v81;
  v165 = v155;
  *(v83 + 80) = v155;
  *(v83 + 48) = v80;
  *(v83 + 64) = v82;
  *(v83 + 32) = v79;
  v84 = v73 + v74[20];
  *v84 = v65;
  *(v84 + 8) = v71;
  *(v84 + 16) = v110;
  *(v84 + 24) = v67;
  *(v84 + 32) = v44;
  *(v84 + 33) = v46;
  v85 = v132;
  *(v84 + 40) = v131;
  *(v84 + 48) = &unk_1F161BE90;
  v86 = v73 + v74[24];
  *v86 = v133;
  *(v86 + 8) = v109 & 1;
  *(v86 + 16) = v85;
  *(v86 + 24) = 257;
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A328D790(&v156, v166, &qword_1EB0CBB00);
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  LOBYTE(v60) = v134;
  sub_1A320F5D4(v77, v134);
  sub_1A328D790(v164, v166, &qword_1EB0CBB00);
  sub_1A34C9010();
  sub_1A34C9010();
  v108 = v67;
  sub_1A320F5D4(v67, v44);
  sub_1A34C9010();

  sub_1A320F5E8(v67, v44);

  v166[2] = v152;
  v166[3] = v153;
  v166[4] = v154;
  v167 = v155;
  v166[0] = v150;
  v166[1] = v151;
  sub_1A3288FDC(v166, &qword_1EB0CBB00);

  sub_1A320F5E8(v77, v60);
  sub_1A3288FDC(v137, &qword_1EB0CBAD8);
  v87 = v138;
  sub_1A328D790(v138, v120, &qword_1EB0CBAC8);
  swift_storeEnumTagMultiPayload();
  sub_1A3452A54();
  sub_1A3284D0C(&qword_1EB0CBB30, &qword_1EB0CBAC8);
  sub_1A34CB3E0();

  sub_1A3288FDC(&v156, &qword_1EB0CBB00);

  sub_1A3288FDC(v87, &qword_1EB0CBAC8);
  sub_1A3288FDC(v142, &qword_1EB0CBAD8);
LABEL_6:
  v88 = sub_1A344FB94();
  swift_getKeyPath();
  *&v166[0] = v88;
  sub_1A34C99A0();

  v89 = MEMORY[0x1E697E5D8];
  if (*(v88 + 40))
  {

    v90 = v141;
LABEL_10:
    v93 = v123;
    sub_1A34CBAA0();
    v94 = *(v93 + 24);
    v95 = v116;
    sub_1A34CC370();
    v142 = v94;
    v148 = v94;
    v149 = v89;
    WitnessTable = swift_getWitnessTable();
    v97 = v115;
    sub_1A3345BC8(v95, v90, WitnessTable);
    v98 = v124;
    v99 = *(v124 + 8);
    v99(v95, v90);
    sub_1A3345BC8(v97, v90, WitnessTable);
    v99(v97, v90);
    v92 = v126;
    (*(v98 + 32))(v126, v95, v90);
    (*(v98 + 56))(v92, 0, 1, v90);
    goto LABEL_11;
  }

  swift_getKeyPath();
  *&v166[0] = v88;
  sub_1A34C99A0();

  v91 = *(v88 + 42);

  v90 = v141;
  if (v91 != 2)
  {
    goto LABEL_10;
  }

  v92 = v126;
  (*(v124 + 56))(v126, 1, 1, v141);
  v142 = *(v123 + 24);
  v143 = v142;
  v144 = v89;
  swift_getWitnessTable();
LABEL_11:
  v101 = v127;
  v100 = v128;
  v102 = *(v127 + 16);
  v103 = v125;
  v102(v125, v92, v128);
  v104 = *(v101 + 8);
  v104(v92, v100);
  v105 = v140;
  v106 = v122;
  sub_1A328D790(v140, v122, &qword_1EB0CBA88);
  *&v166[0] = v106;
  v102(v92, v103, v100);
  *(&v166[0] + 1) = v92;
  *&v164[0] = v121;
  *(&v164[0] + 1) = v100;
  *&v156 = sub_1A3452B38();
  v146 = v142;
  v147 = MEMORY[0x1E697E5D8];
  v145 = swift_getWitnessTable();
  *(&v156 + 1) = swift_getWitnessTable();
  sub_1A33D22C4(v166, 2uLL, v164);
  v104(v103, v100);
  sub_1A3288FDC(v105, &qword_1EB0CBA88);
  v104(v92, v100);
  return sub_1A3288FDC(v106, &qword_1EB0CBA88);
}

uint64_t sub_1A34510B8@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5988);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v47 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v43 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v43 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v43 - v8;
  v49 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0x415F45534F4F4843, 0xEE004F544F48505FLL);
  v50 = v9;
  sub_1A328A95C();
  v10 = sub_1A34CBE30();
  v12 = v11;
  v14 = v13;
  sub_1A34CBB20();
  sub_1A34CBB70();
  sub_1A34CBBC0();

  v15 = sub_1A34CBE10();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_1A328A9B0(v10, v12, v14 & 1);

  v49 = v15;
  v50 = v17;
  v51 = v19 & 1;
  v52 = v21;
  v22 = v44;
  sub_1A34CC1F0();
  sub_1A328A9B0(v15, v17, v19 & 1);

  v49 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000022, 0x80000001A3512490);
  v50 = v23;
  v24 = sub_1A34CBE30();
  v26 = v25;
  LOBYTE(v15) = v27;
  sub_1A34CBB10();
  v28 = sub_1A34CBE10();
  v30 = v29;
  v32 = v31;
  v34 = v33;

  sub_1A328A9B0(v24, v26, v15 & 1);

  v49 = v28;
  v50 = v30;
  v51 = v32 & 1;
  v52 = v34;
  v35 = v45;
  sub_1A34CC1F0();
  sub_1A328A9B0(v28, v30, v32 & 1);

  v36 = v46;
  sub_1A328D790(v22, v46, &qword_1EB0C5988);
  v37 = v47;
  sub_1A328D790(v35, v47, &qword_1EB0C5988);
  v38 = v36;
  v39 = v36;
  v40 = v48;
  sub_1A328D790(v38, v48, &qword_1EB0C5988);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5990);
  sub_1A328D790(v37, v40 + *(v41 + 48), &qword_1EB0C5988);
  sub_1A3288FDC(v35, &qword_1EB0C5988);
  sub_1A3288FDC(v22, &qword_1EB0C5988);
  sub_1A3288FDC(v37, &qword_1EB0C5988);
  return sub_1A3288FDC(v39, &qword_1EB0C5988);
}

uint64_t sub_1A34514C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBA88);
  v43 = *(a1 + 16);
  sub_1A34CAC30();
  sub_1A34CD890();
  swift_getTupleTypeMetadata2();
  sub_1A34CCDA0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBA90);
  sub_1A34CAC30();
  WitnessTable = swift_getWitnessTable();
  v64 = sub_1A3284D0C(&qword_1EB0CBA98, &qword_1EB0CBA90);
  v44 = MEMORY[0x1E697E858];
  v39[2] = swift_getWitnessTable();
  v4 = sub_1A34CC8A0();
  v40 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v39 - v5;
  sub_1A34CB970();
  v7 = sub_1A34CAC30();
  v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v39 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBAA0);
  v10 = sub_1A34CAC30();
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v39 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBAA8);
  v13 = sub_1A34CAC30();
  v47 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v39[0] = v39 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5F80);
  v48 = v13;
  v15 = sub_1A34CAC30();
  v49 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v45 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v46 = v39 - v18;
  v19 = *(a1 + 24);
  v51 = v43;
  v52 = v19;
  v53 = v2;
  sub_1A34CB280();
  sub_1A34CC890();
  v20 = swift_getWitnessTable();
  sub_1A34CC1F0();
  (*(v40 + 8))(v6, v4);
  v21 = sub_1A3452CB0(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
  v61 = v20;
  v62 = v21;
  v22 = swift_getWitnessTable();
  sub_1A3366170();
  v23 = v7;
  v24 = v39[0];
  (*(v41 + 8))(v9, v23);
  v25 = sub_1A3284D0C(&qword_1EB0CBAB0, &qword_1EB0CBAA0);
  v59 = v22;
  v60 = v25;
  v26 = swift_getWitnessTable();
  sub_1A3364AC8();
  (*(v42 + 8))(v12, v10);
  sub_1A34CCCB0();
  v27 = sub_1A344FB94();
  swift_getKeyPath();
  v58 = v27;
  sub_1A3452CB0(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  if (*(v27 + 40))
  {

    v28 = 0;
  }

  else
  {
    swift_getKeyPath();
    v58 = v27;
    sub_1A34C99A0();

    v29 = *(v27 + 42);

    v28 = v29 == 2;
  }

  LOBYTE(v58) = v28;
  v30 = sub_1A3284D0C(&qword_1EB0CBAB8, &qword_1EB0CBAA8);
  v56 = v26;
  v57 = v30;
  v31 = v48;
  v32 = swift_getWitnessTable();
  v33 = v45;
  sub_1A34CC3D0();

  (*(v47 + 8))(v24, v31);
  v34 = sub_1A3284D0C(&qword_1EB0C0930, &qword_1EB0C5F80);
  v54 = v32;
  v55 = v34;
  v35 = swift_getWitnessTable();
  v36 = v46;
  sub_1A3345BC8(v33, v15, v35);
  v37 = *(v49 + 8);
  v37(v33, v15);
  sub_1A3345BC8(v36, v15, v35);
  return (v37)(v36, v15);
}

uint64_t sub_1A3451D54@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBA88);
  sub_1A34CAC30();
  sub_1A34CD890();
  swift_getTupleTypeMetadata2();
  v1 = sub_1A34CCDA0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v19 - v3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBA90);
  v5 = sub_1A34CAC30();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v19 - v10;
  v12 = type metadata accessor for VisualIdentitySuggestionList();
  sub_1A344FEC0(v12, v4);
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1A3452990();
  sub_1A344813C(v14);
  (*(v2 + 8))(v4, v1);
  v15 = sub_1A3284D0C(&qword_1EB0CBA98, &qword_1EB0CBA90);
  v19[2] = WitnessTable;
  v19[3] = v15;
  v16 = swift_getWitnessTable();
  sub_1A3345BC8(v8, v5, v16);
  v17 = *(v6 + 8);
  v17(v8, v5);
  sub_1A3345BC8(v11, v5, v16);
  return (v17)(v11, v5);
}

uint64_t sub_1A34520F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3292050;

  return sub_1A344F124(a1, v4, v5, v6, v7);
}

uint64_t sub_1A34521B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualIdentity(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3452258(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3292C58;

  return sub_1A344E620(a1, v4, v5, v6, v7);
}

unint64_t sub_1A3452328()
{
  result = qword_1EB0C01B8;
  if (!qword_1EB0C01B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB0C01B8);
  }

  return result;
}

uint64_t sub_1A3452390(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  v6[0] = *v3;
  v6[1] = v4;
  v7 = *(v3 + 32);
  return sub_1A3447CD4(a1, v2, v6);
}

uint64_t sub_1A3452460(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3292C58;

  return sub_1A344EB34(a1, v4, v5, v6, v7);
}

unint64_t sub_1A3452560()
{
  result = qword_1EB0C0E48;
  if (!qword_1EB0C0E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBA50);
    sub_1A3284D0C(&qword_1EB0C0600, &qword_1EB0CBA48);
    sub_1A3452CB0(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0E48);
  }

  return result;
}

uint64_t sub_1A34526CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3292C58;

  return sub_1A344E334(a1, v4, v5, v6, v7);
}

uint64_t sub_1A345279C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3292C58;

  return sub_1A344DFA8(a1, v4, v5, v6, v7);
}

uint64_t sub_1A3452860(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *v2;
  if (v2[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_1A344793C(a1, *(v1 + 16), v4 | v3);
}

uint64_t objectdestroy_28Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A34528C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3292C58;

  return sub_1A344E334(a1, v4, v5, v6, v7);
}

unint64_t sub_1A3452990()
{
  result = qword_1EB0CBAC0;
  if (!qword_1EB0CBAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CBAC0);
  }

  return result;
}

uint64_t sub_1A34529E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBAD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A3452A54()
{
  result = qword_1EB0CBB08;
  if (!qword_1EB0CBB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBAE8);
    sub_1A3284D0C(&qword_1EB0CBB10, &qword_1EB0CBB18);
    sub_1A3284D0C(&qword_1EB0CBB20, &qword_1EB0CBB28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CBB08);
  }

  return result;
}

unint64_t sub_1A3452B38()
{
  result = qword_1EB0CBB38;
  if (!qword_1EB0CBB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBA88);
    sub_1A3452A54();
    sub_1A3284D0C(&qword_1EB0CBB30, &qword_1EB0CBAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CBB38);
  }

  return result;
}

unint64_t sub_1A3452C00()
{
  result = qword_1EB0C08C8;
  if (!qword_1EB0C08C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBB40);
    sub_1A3452560();
    sub_1A32B51E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C08C8);
  }

  return result;
}

uint64_t sub_1A3452CB0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1A3452D24()
{
  result = [objc_allocWithZone(CNUICachingPosterArchiver) init];
  qword_1EB0EDEB0 = result;
  return result;
}

id sub_1A3452DB4()
{
  v1 = OBJC_IVAR___CNUICachingPosterArchiver_cache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A34DAA30;
  v3 = objc_opt_self();
  *(v2 + 32) = [v3 boundingStrategyWithCapacity_];
  v4 = [v3 nonatomicCacheScheduler];
  v5 = objc_allocWithZone(MEMORY[0x1E6996660]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CAF90);
  v6 = sub_1A34CD350();

  v7 = [v5 initWithBoundingStrategies:v6 resourceScheduler:v4];

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CBB80);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = v7;
  *&v0[v1] = v8;
  v14.receiver = v0;
  v14.super_class = CNUICachingPosterArchiver;
  v9 = objc_msgSendSuper2(&v14, sel_init);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 defaultCenter];
  [v12 addObserver:v11 selector:sel_releasePosterConfigurations name:*MEMORY[0x1E69DDAC8] object:0];

  return v11;
}

void sub_1A3452FA0(void *a1, void *a2)
{
  v4 = v2;
  v22[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1A34CA250();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB0C4BB0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, qword_1EB0EE100);
  (*(v8 + 16))(v10, v11, v7);
  sub_1A34C9F00();
  swift_allocObject();
  sub_1A34C9E90();
  v12 = sub_1A34C9EA0();
  v13 = *(v4 + OBJC_IVAR___CNUICachingPosterArchiver_cache);
  MEMORY[0x1EEE9AC00](v12);
  v22[-2] = a1;
  v22[-1] = a2;
  os_unfair_lock_lock((v13 + 24));
  sub_1A3453714((v13 + 16), v22);
  if (v3)
  {
    os_unfair_lock_unlock((v13 + 24));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v13 + 24));
    v14 = v22[0];
    if (v22[0])
    {
      if (sub_1A345331C())
      {
LABEL_9:
        sub_1A34C9E80();

        return;
      }
    }

    v15 = objc_opt_self();
    v16 = sub_1A34C9680();
    v22[0] = 0;
    v17 = [v15 uncachedUnarchiveCNConfigurationFromData:v16 error:v22];

    v19 = v22[0];
    if (v17)
    {
      MEMORY[0x1EEE9AC00](v18);
      v22[-4] = a1;
      v22[-3] = a2;
      v22[-2] = v17;
      v20 = v19;
      os_unfair_lock_lock((v13 + 24));
      sub_1A3453730((v13 + 16));
      os_unfair_lock_unlock((v13 + 24));
      goto LABEL_9;
    }

    v21 = v22[0];
    sub_1A34C9580();

    swift_willThrow();
    sub_1A34C9E80();
  }
}

void sub_1A34532B0(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1A34C9680();
  v5 = [v3 objectForKeyedSubscript_];

  *a2 = v5;
}

uint64_t sub_1A345331C()
{
  v1 = v0;
  v2 = sub_1A34C9650();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 assetDirectory];
  sub_1A34C9620();

  v8 = sub_1A34C9610();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

unint64_t type metadata accessor for CNUICachingPosterArchiver()
{
  result = qword_1EB0CBB70;
  if (!qword_1EB0CBB70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB0CBB70);
  }

  return result;
}

void sub_1A3453730(void **a1)
{
  v2 = *(v1 + 32);
  v3 = *a1;
  v4 = sub_1A34C9680();
  [v3 setObject:v2 forKeyedSubscript:v4];
}

uint64_t sub_1A34537F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A34CB0B0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MonogramFakeSolarium.Initials();
  sub_1A328D790(v1 + *(v10 + 20), v9, &unk_1EB0CA420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A34CA5D0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A34CD650();
    v13 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_1A3453A00(uint64_t *a1, uint64_t a2, CGFloat a3, CGFloat a4)
{
  v50 = a1;
  v62 = *MEMORY[0x1E69E9840];
  v7 = sub_1A34CAB90();
  v51 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A34CA5D0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  CGAffineTransformMakeScale(&v57, 0.7, 0.7);
  v63.width = a3;
  v52 = a4;
  v63.height = a4;
  v17 = CGSizeApplyAffineTransform(v63, &v57);
  v18 = *(a2 + 64);
  v59 = *(a2 + 48);
  v60 = v18;
  v61 = *(a2 + 80);
  v19 = sub_1A34CBC80();
  BoundingBox = CGPathGetBoundingBox(v19);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  v24 = CGRectGetWidth(BoundingBox);
  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = width;
  v65.size.height = height;
  v25 = CGRectGetHeight(v65);

  v26 = v17.width / v24;
  if (v17.height / v25 < v17.width / v24)
  {
    v26 = v17.height / v25;
  }

  CGAffineTransformMakeScale(&v57, v26, v26);
  v55 = v57;
  v27 = CGPointApplyAffineTransform(*(a2 + 88), &v57);
  v28 = sub_1A34CBC80();
  v29 = CGPathCreateMutableCopyByTransformingPath(v28, &v55);

  if (v29)
  {
    v49 = v7;
    CGAffineTransformMakeTranslation(&v54, a3 * 0.5 - v27.x, v52 * 0.5 - v27.y);
    v30 = v29;
    v31 = CGPathCreateMutableCopyByTransformingPath(v30, &v54);
    v32 = v30;
    if (v31)
    {
      v33 = v31;

      v32 = v33;
    }

    PathBoundingBox = CGPathGetPathBoundingBox(v32);
    v34 = PathBoundingBox.origin.x;
    v35 = PathBoundingBox.origin.y;
    v36 = PathBoundingBox.size.width;
    v37 = PathBoundingBox.size.height;
    sub_1A34548C8(v56);
    sub_1A3454BD4(v56);
    v38 = *&v56[5];
    sub_1A34537F8(v16);
    (*(v11 + 104))(v13, *MEMORY[0x1E697DBA8], v10);
    v39 = sub_1A34CA5C0();
    v40 = *(v11 + 8);
    v40(v13, v10);
    v40(v16, v10);
    if (v38 <= a3)
    {
      sub_1A34548C8(&v57);
      if (v39)
      {
        p_tx = &v57.tx;
      }

      else
      {
        p_tx = &v57.d;
      }
    }

    else
    {
      sub_1A34548C8(&v57);
      if (v39)
      {
        p_tx = &v57.c;
      }

      else
      {
        p_tx = &v57.b;
      }
    }

    v42 = *p_tx;

    sub_1A3454BD4(&v57);
    v43 = *v50;
    v44 = v32;
    sub_1A34CBD20();
    MEMORY[0x1A58EE2C0](v42);
    v67.origin.x = v34;
    v67.origin.y = v35;
    v67.size.width = v36;
    v67.size.height = v37;
    CGRectGetMidX(v67);
    v68.origin.x = v34;
    v68.origin.y = v35;
    v68.size.width = v36;
    v68.size.height = v37;
    CGRectGetMinY(v68);
    CGPointMake(v45);
    v69.origin.x = v34;
    v69.origin.y = v35;
    v69.size.width = v36;
    v69.size.height = v37;
    CGRectGetMidX(v69);
    v70.origin.x = v34;
    v70.origin.y = v35;
    v70.size.width = v36;
    v70.size.height = v37;
    CGRectGetMaxY(v70);
    CGPointMake(v46);
    sub_1A34CAB70();

    sub_1A34CAB30();
    sub_1A32ABEC0(v58);
    (*(v51 + 8))(v9, v49);
    v53 = v43;
    sub_1A34C9010();
    v47 = sub_1A34CABB0();
    MEMORY[0x1EEE9AC00](v47);
    v48 = v52;
    *(&v49 - 8) = a3;
    *(&v49 - 7) = v48;
    *(&v49 - 6) = v44;
    *(&v49 - 5) = v34;
    *(&v49 - 4) = v35;
    *(&v49 - 3) = v36;
    *(&v49 - 2) = v37;
    sub_1A34CABC0();
  }
}

uint64_t sub_1A3453F94(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, uint64_t a7, uint64_t a8)
{
  v29[0] = a8;
  v30 = sub_1A34CAB90();
  v13 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A34C99F0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1A34CAB50();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A34548C8(v31);
  sub_1A3454BD4(v31);
  *&v29[1] = a1;
  sub_1A34CAB40();
  sub_1A34CABA0();
  (*(v21 + 8))(v23, v20);
  sub_1A34CAB10();
  (*(v17 + 104))(v19, *MEMORY[0x1E695EEB8], v16);
  sub_1A34CD850();
  (*(v17 + 8))(v19, v16);
  sub_1A34CBD20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1A34DCA90;
  *(v24 + 32) = sub_1A34CC500();
  sub_1A34CC500();
  v25 = sub_1A34CC540();

  *(v24 + 40) = v25;
  MEMORY[0x1A58EE2C0](v24);
  v34.origin.x = a3;
  v34.origin.y = a4;
  v34.size.width = a5;
  v34.size.height = a6;
  CGRectGetMidX(v34);
  v35.origin.x = a3;
  v35.origin.y = a4;
  v35.size.width = a5;
  v35.size.height = a6;
  CGRectGetMinY(v35);
  CGPointMake(v26);
  v36.origin.x = a3;
  v36.origin.y = a4;
  v36.size.width = a5;
  v36.size.height = a6;
  CGRectGetMidX(v36);
  v37.origin.x = a3;
  v37.origin.y = a4;
  v37.size.width = a5;
  v37.size.height = a6;
  CGRectGetMaxY(v37);
  CGPointMake(v27);
  sub_1A34CAB70();

  sub_1A34CA670();
  sub_1A34CAB60();
  sub_1A3454C2C(v33);
  sub_1A32ABEC0(v32);
  return (*(v13 + 8))(v15, v30);
}

uint64_t sub_1A34543F8(uint64_t a1)
{
  v3 = v1;
  v4 = sub_1A34CB120();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1A34545A8(v3, &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  sub_1A345460C(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  (*(v5 + 104))(v7, *MEMORY[0x1E697F3A0], v4);
  return sub_1A34CC7D0();
}

uint64_t sub_1A34545A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonogramFakeSolarium.Initials();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A345460C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonogramFakeSolarium.Initials();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A3454670(uint64_t *a1, CGFloat a2, CGFloat a3)
{
  v7 = *(type metadata accessor for MonogramFakeSolarium.Initials() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  sub_1A3453A00(a1, v8, a2, a3);
}

void *sub_1A34546F8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A34CB0B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A328D790(v2, v10, &unk_1EB0C5650);
  if (v10[264] == 1)
  {
    return memcpy(a1, v10, 0x108uLL);
  }

  sub_1A34CD650();
  v9 = sub_1A34CBA30();
  sub_1A34CA210();

  sub_1A34CB0A0();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

double sub_1A34548C8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1A34CC450();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
  v6 = swift_allocObject();
  v21 = xmmword_1A34DCA90;
  *(v6 + 16) = xmmword_1A34DCA90;
  v7 = *MEMORY[0x1E69814E0];
  v8 = *(v3 + 104);
  v8(v5, v7, v2);
  *(v6 + 32) = sub_1A34CC580();
  v8(v5, v7, v2);
  *(v6 + 40) = sub_1A34CC580();
  v9 = swift_allocObject();
  *(v9 + 16) = v21;
  *(v9 + 32) = sub_1A34CC500();
  sub_1A34CC500();
  v10 = sub_1A34CC540();

  *(v9 + 40) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = v21;
  *(v11 + 32) = sub_1A34CC500();
  sub_1A34CC500();
  v12 = sub_1A34CC540();

  *(v11 + 40) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = v21;
  sub_1A34CC500();
  v14 = sub_1A34CC540();

  *(v13 + 32) = v14;
  sub_1A34CC500();
  v15 = sub_1A34CC540();

  *(v13 + 40) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = v21;
  sub_1A34CC500();
  v17 = sub_1A34CC540();

  *(v16 + 32) = v17;
  sub_1A34CC500();
  v18 = sub_1A34CC540();

  *(v16 + 40) = v18;
  v19 = sub_1A31FA2C8(&unk_1F161BEB8);
  *a1 = v6;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11;
  *(a1 + 24) = v13;
  *(a1 + 32) = v16;
  result = 150.0;
  *(a1 + 40) = xmmword_1A34F8BD0;
  *(a1 + 56) = v19;
  return result;
}

unint64_t sub_1A3454C90()
{
  result = qword_1ED8539C8;
  if (!qword_1ED8539C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0CBB90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8539C8);
  }

  return result;
}

uint64_t sub_1A3454CF4()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0EDEB8);
  __swift_project_value_buffer(v0, qword_1EB0EDEB8);
  return sub_1A34CA240();
}

uint64_t sub_1A3454D78()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_configuration + 16);
  v2 = objc_allocWithZone(CNUIPRSPosterConfigurationAttributes);
  v3 = v1;
  v4 = [v2 initWithCNConfiguration_];
  v5 = [v4 extensionIdentifier];
  if (!v5)
  {

    goto LABEL_10;
  }

  v6 = v5;
  v7 = sub_1A34CD110();
  v9 = v8;

  if (!v9)
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v7 == 0xD00000000000002ELL && 0x80000001A350EED0 == v9)
  {

    v12 = 0;
    goto LABEL_13;
  }

  v11 = sub_1A34CDE30();

  if ((v11 & 1) == 0)
  {
    if (v7 == 0xD000000000000028 && 0x80000001A350EF00 == v9)
    {
      goto LABEL_24;
    }

    v15 = sub_1A34CDE30();

    if ((v15 & 1) == 0)
    {
      if (v7 != 0xD00000000000002CLL || 0x80000001A350EE80 != v9)
      {
        sub_1A34CDE30();
      }

LABEL_24:

      v12 = 1;
      goto LABEL_13;
    }

LABEL_11:
    v12 = 1;
    goto LABEL_13;
  }

  v12 = 0;
LABEL_13:

  return v12;
}

void sub_1A3454F78(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  v7 = &v4[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_layoutPreferences];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[32] = 1;
  v8 = &v4[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_isReady];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 0;
  *&v4[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_photosPosterConfigurationReader] = 0;
  *&v4[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_renderingViewController] = 0;
  *&v4[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_photoImageView] = 0;
  *&v4[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_salientContentRectangleDebugBorder] = 0;
  *&v4[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_shiftedFaceRectangleDebugBorder] = 0;
  LOBYTE(v8) = *(a4 + 32);
  *&v4[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_faceRectangleDebugBorder] = 0;
  v9 = &v4[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_configuration];
  *v9 = a1 & 1;
  *(v9 + 1) = HIDWORD(a1);
  v9[8] = a2;
  *(v9 + 2) = a3;
  v10 = *(a4 + 16);
  *v7 = *a4;
  *(v7 + 1) = v10;
  v7[32] = v8;
  v61.receiver = v4;
  v61.super_class = type metadata accessor for PosterRenderingViewController();
  v11 = a3;
  v12 = objc_msgSendSuper2(&v61, sel_initWithNibName_bundle_, 0, 0);
  if (sub_1A3459548(a2, v11))
  {
    v13 = [v12 view];
    if (!v13)
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v14 = v13;
    v15 = [v13 layer];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5F38);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1A34DAA10;
    v17 = sub_1A3459634();
    *(v16 + 56) = sub_1A31EC194(0, &unk_1EB0C00C0);
    *(v16 + 32) = v17;
    v18 = sub_1A34CD350();

    [v15 setFilters_];
  }

  v19 = v12;
  v20 = [v19 view];
  if (!v20)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v20;
  v22 = sub_1A34CD0E0();
  [v21 setAccessibilityIdentifier_];

  sub_1A3456714();
  sub_1A3456864();
  v23 = [v19 view];
  if (!v23)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = v23;
  v25 = objc_opt_self();
  v26 = [v25 blackColor];
  [v24 setBackgroundColor_];

  v27 = [objc_opt_self() standardPreferences];
  v28 = sub_1A34CD0E0();
  v29 = [v27 userHasOptedInToPreference_];

  if (!v29)
  {

    v60 = v19;
    goto LABEL_12;
  }

  v30 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v31 = [v25 clearColor];
  [v30 setBackgroundColor_];

  v32 = [v30 layer];
  v33 = [v25 redColor];
  v34 = [v33 CGColor];

  [v32 setBorderColor_];
  v35 = [v30 layer];
  [v35 setBorderWidth_];

  v36 = [v30 layer];
  [v36 setZPosition_];

  v37 = [v19 view];
  if (!v37)
  {
    goto LABEL_16;
  }

  v38 = v37;
  [v37 addSubview_];

  v39 = *&v19[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_salientContentRectangleDebugBorder];
  *&v19[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_salientContentRectangleDebugBorder] = v30;
  v40 = v30;

  v41 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v42 = [v25 clearColor];
  [v41 setBackgroundColor_];

  v43 = [v41 layer];
  v44 = [v25 yellowColor];
  v45 = [v44 CGColor];

  [v43 setBorderColor_];
  v46 = [v41 layer];
  [v46 setBorderWidth_];

  v47 = [v41 layer];
  [v47 setZPosition_];

  v48 = [v19 view];
  if (!v48)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v49 = v48;
  [v48 addSubview_];

  v50 = *&v19[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_faceRectangleDebugBorder];
  *&v19[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_faceRectangleDebugBorder] = v41;
  v51 = v41;

  v52 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v53 = [v25 clearColor];
  [v52 setBackgroundColor_];

  v54 = [v52 layer];
  v55 = [v25 blueColor];
  v56 = [v55 CGColor];

  [v54 setBorderColor_];
  v57 = [v52 layer];
  [v57 setBorderWidth_];

  v58 = [v52 layer];
  [v58 setZPosition_];

  v59 = [v19 view];
  if (v59)
  {
    [v59 addSubview_];

    v60 = *&v19[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_shiftedFaceRectangleDebugBorder];
    *&v19[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_shiftedFaceRectangleDebugBorder] = v52;
LABEL_12:

    return;
  }

LABEL_18:
  __break(1u);
}