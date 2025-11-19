uint64_t sub_195F2F424@<X0>(_BYTE *a1@<X8>)
{
  result = sub_195F30B5C();
  *a1 = result;
  return result;
}

uint64_t sub_195F2F458(uint64_t a1)
{
  v2 = sub_195F30848();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F2F494(uint64_t a1)
{
  v2 = sub_195F30848();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Void __swiftcall CHSControlConfigurationItem.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___CHSControlConfigurationItem__uniqueIdentifier);
  v4 = *(v1 + OBJC_IVAR___CHSControlConfigurationItem__uniqueIdentifier + 8);

  v5 = sub_195FA0888();

  v6 = sub_195FA0888();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR___CHSControlConfigurationItem__controlIdentity);
  v8 = sub_195FA0888();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR___CHSControlConfigurationItem__pushPolicy);
  if (v9 >> 31)
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = sub_195FA0888();
  [(objc_class *)with.super.isa encodeInt32:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR___CHSControlConfigurationItem__location);
  if (v11 < 0xFFFFFFFF80000000)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v11 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = sub_195FA0888();
  [(objc_class *)with.super.isa encodeInt32:v11 forKey:v12];

  v13 = *(v1 + OBJC_IVAR___CHSControlConfigurationItem__canAppearInSecureEnvironment);
  v14 = sub_195FA0888();
  [(objc_class *)with.super.isa encodeBool:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR___CHSControlConfigurationItem__supportsLowLuminance);
  v16 = sub_195FA0888();
  [(objc_class *)with.super.isa encodeBool:v15 forKey:v16];

  v17 = *(v1 + OBJC_IVAR___CHSControlConfigurationItem__supportedColorSchemes);
  if (v17 >> 31)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v18 = sub_195FA0888();
  [(objc_class *)with.super.isa encodeInt32:v17 forKey:v18];
}

void CHSControlConfigurationItem.init(coder:)(void *a1)
{
  sub_195EB4B30(0, &qword_1EAEEBCE8, 0x1E696AEC0);
  v2 = sub_195FA0D58();
  sub_195FA08A8();

  sub_195EB4B30(0, &qword_1EAEEC310, off_1E74525B8);
  v3 = sub_195FA0D58();
  v4 = sub_195FA0888();
  v5 = [a1 decodeInt32ForKey_];

  if ((v5 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_195FA0888();
    [a1 decodeIntegerForKey_];

    v7 = sub_195FA0888();
    [a1 decodeBoolForKey_];

    v8 = sub_195FA0888();
    [a1 decodeBoolForKey_];

    v9 = sub_195FA0888();
    LODWORD(v8) = [a1 decodeInt32ForKey_];

    if ((v8 & 0x80000000) == 0)
    {

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return;
    }
  }

  __break(1u);
}

unint64_t CHSControlConfigurationItem.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED688, &qword_195FAC398);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F30848();
  sub_195FA1468();
  v12 = *(v4 + OBJC_IVAR___CHSControlConfigurationItem__uniqueIdentifier);
  v13 = *(v4 + OBJC_IVAR___CHSControlConfigurationItem__uniqueIdentifier + 8);
  v20 = 0;

  sub_195FA11F8();
  if (v3)
  {
    (*(v7 + 8))(v10, v6);
  }

  v19 = *(v4 + OBJC_IVAR___CHSControlConfigurationItem__controlIdentity);
  v18[15] = 1;
  sub_195EB4B30(0, &qword_1EAEEC310, off_1E74525B8);
  sub_195F3089C(&qword_1EAEEBE78);
  sub_195FA1238();
  result = *(v4 + OBJC_IVAR___CHSControlConfigurationItem__pushPolicy);
  if (result >> 31)
  {
    __break(1u);
  }

  else
  {
    v18[14] = 2;
    sub_195FA1248();
    v15 = *(v4 + OBJC_IVAR___CHSControlConfigurationItem__location);
    v18[13] = 3;
    sub_195FA1228();
    v16 = *(v4 + OBJC_IVAR___CHSControlConfigurationItem__canAppearInSecureEnvironment);
    v18[12] = 4;
    sub_195FA1208();
    v17 = *(v4 + OBJC_IVAR___CHSControlConfigurationItem__supportsLowLuminance);
    v18[11] = 5;
    sub_195FA1208();
    result = *(v4 + OBJC_IVAR___CHSControlConfigurationItem__supportedColorSchemes);
    if (!(result >> 31))
    {
      v18[10] = 6;
      sub_195FA1248();
      return (*(v7 + 8))(v10, v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t CHSControlConfigurationItem.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED6A0, &qword_195FAC3A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F30848();
  sub_195FA1448();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v9;
  }

  v29 = 0;
  v21 = sub_195FA1138();
  sub_195EB4B30(0, &qword_1EAEEC310, off_1E74525B8);
  v28 = 1;
  sub_195F3089C(&qword_1EAEEC318);
  sub_195FA1178();
  v10 = v22;
  v27 = 2;
  result = sub_195FA1188();
  v20 = v10;
  LODWORD(v19) = result;
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v26 = 3;
    v12 = sub_195FA1168();
    v25 = 4;
    v18 = sub_195FA1148();
    v24 = 5;
    v17 = sub_195FA1148();
    v23 = 6;
    result = sub_195FA1188();
    if ((result & 0x80000000) == 0)
    {
      v16 = v19;
      v19 = result;
      v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v14 = sub_195FA0888();

      v15 = v20;
      v9 = [v13 initWithUniqueIdentifier:v14 controlIdentity:v20 location:v12];

      (*(v4 + 8))(v7, v3);
      *(v9 + OBJC_IVAR___CHSControlConfigurationItem__pushPolicy) = v16;
      *(v9 + OBJC_IVAR___CHSControlConfigurationItem__canAppearInSecureEnvironment) = v18 & 1;
      *(v9 + OBJC_IVAR___CHSControlConfigurationItem__supportsLowLuminance) = v17 & 1;
      *(v9 + OBJC_IVAR___CHSControlConfigurationItem__supportedColorSchemes) = v19;
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      return v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_195F3025C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = CHSControlConfigurationItem.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t CHSMutableControlConfigurationItem.copy(with:)@<X0>(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(CHSControlConfigurationItem) initWithItem_];
  result = type metadata accessor for CHSControlConfigurationItem(v3);
  a1[3] = result;
  *a1 = v3;
  return result;
}

id _sSo27CHSControlConfigurationItemC14ChronoServicesE16uniqueIdentifier15controlIdentity8locationABSS_So0aI0CSo17CHSWidgetLocationVtcfC_0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_195FA0888();

  v8 = [v6 initWithUniqueIdentifier:v7 controlIdentity:a3 location:a4];

  return v8;
}

id CHSMutableControlConfigurationItem.init(uniqueIdentifier:controlIdentity:location:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_195FA0888();

  v10.receiver = v4;
  v10.super_class = CHSMutableControlConfigurationItem;
  v8 = objc_msgSendSuper2(&v10, sel_initWithUniqueIdentifier_controlIdentity_location_, v7, a3, a4);

  return v8;
}

id _sSo27CHSControlConfigurationItemC14ChronoServicesE16uniqueIdentifier15controlIdentityABSS_So0aI0CtcfC_0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_195FA0888();

  v6 = [v4 initWithUniqueIdentifier:v5 controlIdentity:a3];

  return v6;
}

id CHSMutableControlConfigurationItem.init(uniqueIdentifier:controlIdentity:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_195FA0888();

  v8.receiver = v3;
  v8.super_class = CHSMutableControlConfigurationItem;
  v6 = objc_msgSendSuper2(&v8, sel_initWithUniqueIdentifier_controlIdentity_, v5, a3);

  return v6;
}

id sub_195F306D0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  *&v4[OBJC_IVAR___CHSControlConfigurationItem__pushPolicy] = 0;
  v4[OBJC_IVAR___CHSControlConfigurationItem__canAppearInSecureEnvironment] = 0;
  v4[OBJC_IVAR___CHSControlConfigurationItem__supportsLowLuminance] = 0;
  *&v4[OBJC_IVAR___CHSControlConfigurationItem__supportedColorSchemes] = 3;
  v7 = sub_195FA0888();

  [v7 copy];

  sub_195FA0E08();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v8 = v13;
  v9 = &v4[OBJC_IVAR___CHSControlConfigurationItem__uniqueIdentifier];
  *v9 = v12;
  v9[1] = v8;
  [a3 copy];
  sub_195FA0E08();
  swift_unknownObjectRelease();
  sub_195EB4B30(0, &qword_1EAEEC310, off_1E74525B8);
  swift_dynamicCast();
  *&v4[OBJC_IVAR___CHSControlConfigurationItem__controlIdentity] = v12;
  *&v4[OBJC_IVAR___CHSControlConfigurationItem__location] = a4;
  v11.receiver = v4;
  v11.super_class = CHSControlConfigurationItem;
  return objc_msgSendSuper2(&v11, sel_init);
}

unint64_t sub_195F30848()
{
  result = qword_1EAEED690;
  if (!qword_1EAEED690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEED690);
  }

  return result;
}

uint64_t sub_195F3089C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_195EB4B30(255, &qword_1EAEEC310, off_1E74525B8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10CodingKeysOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10CodingKeysOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_195F30A58()
{
  result = qword_1EAEED720;
  if (!qword_1EAEED720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEED720);
  }

  return result;
}

unint64_t sub_195F30AB0()
{
  result = qword_1EAEED728;
  if (!qword_1EAEED728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEED728);
  }

  return result;
}

unint64_t sub_195F30B08()
{
  result = qword_1EAEED730;
  if (!qword_1EAEED730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEED730);
  }

  return result;
}

uint64_t sub_195F30B5C()
{
  v0 = sub_195FA10D8();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_195F30BF0()
{
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED740, &qword_195FAC5A0);
  sub_195EB5F38(&qword_1EAEEC258, &qword_1EAEED740, &qword_195FAC5A0);
  return sub_195FA0738();
}

uint64_t sub_195F30C7C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 24);
  return result;
}

uint64_t sub_195F30CC0(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 24) = v2;
  return result;
}

uint64_t sub_195F30D54()
{
  v2 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED748, &qword_195FAC5A8);
  sub_195EB5F38(&qword_1EAEEC250, &qword_1EAEED748, &qword_195FAC5A8);
  return sub_195FA0738();
}

uint64_t sub_195F30E14(char a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t FixedKeybagStateProvider.__allocating_init(lockState:hasUnlockedSinceBoot:)(_BYTE *a1, char a2)
{
  v4 = swift_allocObject();
  LOBYTE(a1) = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED740, &qword_195FAC5A0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v4 + 16) = sub_195FA06F8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED748, &qword_195FAC5A8);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v4 + 32) = sub_195FA0728();
  *(v4 + 24) = a1;
  *(v4 + 40) = a2;
  return v4;
}

uint64_t FixedKeybagStateProvider.init(lockState:hasUnlockedSinceBoot:)(char *a1, char a2)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED740, &qword_195FAC5A0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v2 + 16) = sub_195FA06F8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED748, &qword_195FAC5A8);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v2 + 32) = sub_195FA0728();
  *(v2 + 24) = v4;
  *(v2 + 40) = a2;
  return v2;
}

uint64_t FixedKeybagStateProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t FixedKeybagStateProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_195F31068@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  *a1 = *(v3 + 24);
  return result;
}

uint64_t sub_195F310B0()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 40);
}

uint64_t WidgetAutomationService.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_opt_self() sharedInstance];
  return v0;
}

uint64_t sub_195F3133C()
{
  v1 = *(v0[20] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_195F3145C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED750, &qword_195FAC638);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_195F316E8;
  v0[13] = &block_descriptor_2;
  v0[14] = v2;
  [v1 fetchWidgetSceneInfoWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_195F3145C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_195F3167C;
  }

  else
  {
    v3 = sub_195F3156C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_195F3156C()
{
  v1 = v0[18];
  v2 = v0[19];
  sub_195FA05F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED758, &qword_195FAC640);
  sub_195F317D0();
  sub_195FA05E8();
  sub_195EC0890(v1, v2);
  v3 = v0[10];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_195F3167C()
{
  v1 = *(v0 + 168);
  swift_willThrow();
  v2 = *(v0 + 168);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_195F316E8(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDDA0, &unk_195FACFF0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = sub_195FA04D8();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

unint64_t sub_195F317D0()
{
  result = qword_1EAEED760;
  if (!qword_1EAEED760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAEED758, &qword_195FAC640);
    sub_195F31854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEED760);
  }

  return result;
}

unint64_t sub_195F31854()
{
  result = qword_1EAEED768;
  if (!qword_1EAEED768)
  {
    type metadata accessor for WidgetRendererSessionInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEED768);
  }

  return result;
}

uint64_t WidgetAutomationService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

CHSWidgetDescriptorsPredicate __swiftcall CHSWidgetDescriptorsPredicate.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.remoteWidgetInclusions = v2;
  result.super.isa = v1;
  result.includeRelevanceBacked = v3;
  return result;
}

id CHSWidgetDescriptorsPredicate.init()()
{
  *(v0 + OBJC_IVAR___CHSWidgetDescriptorsPredicate_remoteWidgetInclusions) = 0;
  *(v0 + OBJC_IVAR___CHSWidgetDescriptorsPredicate_includeRelevanceBacked) = 0;
  v2.super_class = CHSWidgetDescriptorsPredicate;
  return objc_msgSendSuper2(&v2, sel_init);
}

CHSWidgetDescriptorsPredicate __swiftcall CHSWidgetDescriptorsPredicate.init(includingRelevanceBacked:)(Swift::Bool includingRelevanceBacked)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v3 = [v2 initIncludingRelevanceBacked_];
  result.remoteWidgetInclusions = v4;
  result.super.isa = v3;
  result.includeRelevanceBacked = v5;
  return result;
}

_BYTE *CHSWidgetDescriptorsPredicate.init(includingRelevanceBacked:)(char a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromObject()) init];
  v2[OBJC_IVAR___CHSWidgetDescriptorsPredicate_includeRelevanceBacked] = a1;
  *&v2[OBJC_IVAR___CHSWidgetDescriptorsPredicate_remoteWidgetInclusions] = 0;
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t CHSWidgetDescriptorsPredicate.hash.getter()
{
  sub_195FA13F8();
  [v0 includeRelevanceBacked];
  sub_195FA13B8();
  MEMORY[0x19A8C4970]([v0 remoteWidgetInclusions]);
  return sub_195FA13D8();
}

uint64_t CHSWidgetDescriptorsPredicate.description.getter()
{
  v1 = v0;
  sub_195FA0F38();
  MEMORY[0x19A8C3F70](60, 0xE100000000000000);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  v4 = sub_195FA08B8();
  v6 = v5;

  MEMORY[0x19A8C3F70](v4, v6);

  MEMORY[0x19A8C3F70](0xD000000000000019, 0x8000000195FC0160);
  v7 = [v1 includeRelevanceBacked];
  v8 = v7 == 0;
  if (v7)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v8)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  MEMORY[0x19A8C3F70](v9, v10);

  MEMORY[0x19A8C3F70](0x65746F6D6572202CLL, 0xE90000000000003ALL);
  [v1 remoteWidgetInclusions];
  type metadata accessor for RemoteWidgetInclusions(0);
  sub_195FA1008();
  MEMORY[0x19A8C3F70](62, 0xE100000000000000);
  return 0;
}

uint64_t static CHSWidgetDescriptorsPredicate.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EAEED770 = a1;
  return result;
}

Swift::Void __swiftcall CHSWidgetDescriptorsPredicate.encode(with:)(NSCoder with)
{
  v3 = [v1 includeRelevanceBacked];
  v4 = sub_195FA0888();
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];

  v5 = [v1 remoteWidgetInclusions];
  v6 = sub_195FA0888();
  [(objc_class *)with.super.isa encodeInteger:v5 forKey:v6];
}

CHSWidgetDescriptorsPredicate_optional __swiftcall CHSWidgetDescriptorsPredicate.init(coder:)(NSCoder coder)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  v6 = v2;
  result.value.remoteWidgetInclusions = v3;
  result.value.super.isa = v6;
  result.is_nil = v5;
  result.value.includeRelevanceBacked = v4;
  return result;
}

uint64_t dispatch thunk of ControlsClientInterface.fetchControlDescriptors(forExtensionBundleIdentifier:userInitiated:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 32);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_195F32D7C;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of ControlsClientInterface.controlDescriptor(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_195F323FC;

  return v11(a1, a2, a3);
}

uint64_t sub_195F323FC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of ControlsClientInterface.allControlConfigurationsByHost()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 72);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_195F32D7C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ControlsClientInterface.sendPushToken(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 80);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_195F32774;

  return v11(a1, a2, a3);
}

uint64_t sub_195F32774()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of ControlsClientInterface.sendPushUpdate(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_195F32D80;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of ControlsClientInterface.unsubscribeToPushes(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 96);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_195F32D80;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of ControlsClientInterface.setControlState(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 144);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_195F32D80;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ControlsClientInterface.performControlAction(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 152);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_195F32D80;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_195F32D84()
{
  v1 = *(v0 + 64);
  MKBEventsUnregister();
  v2 = *(v0 + 16);

  v3 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_195F32DDC()
{
  v1 = *(v0 + 48);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_195EC7604;
  *(v2 + 24) = v0;
  v6[4] = sub_195EC7340;
  v6[5] = v2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_195EC7454;
  v6[3] = &block_descriptor_3;
  v3 = _Block_copy(v6);
  v4 = v1;

  dispatch_sync(v4, v3);

  _Block_release(v3);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_195F32F44()
{

  return swift_deallocClassInstance();
}

uint64_t sub_195F32FA0(uint64_t a1)
{
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  *(v1 + 32) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 40) = MEMORY[0x1E69E7CC0];
  if (v3 >> 62 && sub_195FA0E88())
  {
    sub_195F72C68(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + 48) = v4;
  *(v1 + 56) = 0;
  *(v1 + 64) = MEMORY[0x1E69E7CC8];
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_195F33038()
{
  sub_195F35074();

  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return swift_deallocClassInstance();
}

void sub_195F330F0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = [*(a1 + 16) groups];
  if (v5)
  {
    v6 = v5;
    sub_195EB4B30(0, &qword_1EAEEBCF0, off_1E74528D0);
    v7 = sub_195FA0B38();

    if (!(v7 >> 62))
    {
      goto LABEL_3;
    }

LABEL_49:
    v8 = sub_195FA0E88();
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_50:

    return;
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_49;
  }

LABEL_3:
  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_50;
  }

LABEL_4:
  if (v8 >= 1)
  {
    v56 = v7 & 0xC000000000000001;
    swift_beginAccess();
    v9 = 0;
    v55 = v7 + 32;
    v53 = v7;
    v57 = v8;
    while (1)
    {
      v10 = v56 ? MEMORY[0x19A8C4520](v9, v7) : *(v55 + 8 * v9);
      v11 = v10;
      v58 = objc_autoreleasePoolPush();
      if (a2)
      {
        if ([v11 isDeletion])
        {
          break;
        }
      }

      v16 = [v11 kind];
      if (v16)
      {
        v17 = v16;
        sub_195FA08B8();
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v20 = [v11 extensionIdentity];
      if (!v20)
      {
        goto LABEL_6;
      }

      v21 = v20;
      v22 = sub_195F6ECD4();

      if (!v22)
      {
        goto LABEL_6;
      }

      if (!v19)
      {
        goto LABEL_33;
      }

      v23 = objc_allocWithZone(CHSWidgetRelevanceKey);
      v24 = sub_195FA0888();

      v25 = [v23 initWithExtensionIdentity:v22 kind:v24];

      if (v25)
      {
        v26 = *(v3 + 48);
        if ((v26 & 0xC000000000000001) == 0)
        {
          if (*(v26 + 16))
          {
            v51 = a2;
            v52 = v3;
            sub_195EB4B30(0, &qword_1EAEEBD40, off_1E7452818);
            v37 = *(v26 + 40);

            v38 = sub_195FA0D78();
            v39 = -1 << *(v26 + 32);
            v40 = v38 & ~v39;
            if ((*(v26 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
            {
              v41 = ~v39;
              while (1)
              {
                v42 = *(*(v26 + 48) + 8 * v40);
                v43 = sub_195FA0D88();

                if (v43)
                {
                  break;
                }

                v40 = (v40 + 1) & v41;
                if (((*(v26 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
                {
                  goto LABEL_39;
                }
              }

              v3 = v52;
              a2 = v51;
              goto LABEL_45;
            }

LABEL_39:

            v3 = v52;
            a2 = v51;
          }

LABEL_40:
          swift_beginAccess();
          v44 = v25;
          sub_195F6B5F4(&v59, v44);
          swift_endAccess();

          v45 = *(v3 + 16);
          v46 = [v44 kind];
          if (!v46)
          {
            sub_195FA08B8();
            v46 = sub_195FA0888();
          }

          v47 = [v45 createString_];

          v48 = [v44 extensionIdentity];
          v49 = sub_195F35EA8(v48);

          sub_195F34498(v47, v49, v11, v3, a1);
          v50 = swift_beginAccess();
          MEMORY[0x19A8C40E0](v50);
          if (*((*(v3 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_195FA0B58();
          }

          sub_195FA0B78();
          swift_endAccess();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
LABEL_45:
          v7 = v53;
          goto LABEL_7;
        }

        if (v26 < 0)
        {
          v27 = *(v3 + 48);
        }

        v28 = *(v3 + 48);

        v29 = v25;
        v30 = sub_195FA0EB8();

        if ((v30 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

LABEL_7:
      ++v9;
      objc_autoreleasePoolPop(v58);

      if (v9 == v57)
      {

        return;
      }
    }

    v12 = [v11 kind];
    if (v12)
    {
      v13 = v12;
      sub_195FA08B8();
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v31 = [v11 extensionIdentity];
    if (v31)
    {
      v32 = v31;
      v22 = sub_195F6ECD4();

      if (v22)
      {
        if (v15)
        {
          v33 = objc_allocWithZone(CHSWidgetRelevanceKey);
          v34 = sub_195FA0888();

          v35 = [v33 initWithExtensionIdentity:v22 kind:v34];

          if (v35)
          {
            swift_beginAccess();
            v36 = v35;
            sub_195F6B5F4(&v59, v36);
            swift_endAccess();
          }

          goto LABEL_7;
        }

LABEL_33:

        goto LABEL_7;
      }
    }

LABEL_6:

    goto LABEL_7;
  }

  __break(1u);
}

void sub_195F3371C(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = [*a1 key];
  }

  v6 = v5;
  swift_beginAccess();
  v7 = *(v2 + 48);

  v8 = sub_195F353FC(v6, v7);

  if (v8)
  {
  }

  else
  {
    swift_beginAccess();
    v9 = v6;
    sub_195F6B5F4(&v17, v9);
    swift_endAccess();

    v10 = *(v2 + 16);
    v11 = [v9 kind];
    if (!v11)
    {
      sub_195FA08B8();
      v11 = sub_195FA0888();
    }

    v12 = [v10 createString_];

    v13 = [v9 extensionIdentity];
    v14 = sub_195F35EA8(v13);

    sub_195F33940(v12, v14, v3, v4, v2);
    v15 = swift_beginAccess();
    MEMORY[0x19A8C40E0](v15);
    if (*((*(v2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v16 = *((*(v2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_195FA0B58();
    }

    sub_195FA0B78();
    swift_endAccess();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }
}

void sub_195F33940(unint64_t a1, uint64_t a2, id a3, char a4, uint64_t a5)
{
  v5 = a5;
  if (a4)
  {
    v8 = *(a5 + 16);
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_195F36C18;
    *(v9 + 24) = v5;
    *&v84 = sub_195F36C1C;
    *(&v84 + 1) = v9;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v83 = sub_195F36BF8;
    *(&v83 + 1) = &block_descriptor_94;
    v10 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v11 = v8;

    swift_unknownObjectRetain();

    [v11 _chsCreateWidgetRelevancePropertiesBufUsingBlock_];

    _Block_release(v10);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v12 = a3;
  v13 = [a3 relevances];
  sub_195EB4B30(0, &qword_1EAEEBD50, off_1E7452800);
  v14 = sub_195FA0B38();

  v15 = (v14 >> 62);
  v73 = a2;
  if (!(v14 >> 62))
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_6;
  }

LABEL_68:
  v16 = sub_195FA0E88();
LABEL_6:
  v83 = 0u;
  v84 = 0u;
  aBlock = 0u;
  v85 = 1;
  v17 = sub_195F34288(&aBlock, v16);
  v74 = a1;
  if (v15)
  {
    v18 = sub_195FA0E88();
  }

  else
  {
    v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a1 = v14 & 0xC000000000000001;
  v76 = v14;
  v77 = v5;
  v80 = v18;
  if (!v18)
  {
    v75 = 0;
    while (1)
    {
      v72 = v12;
      v5 = v14 & 0xFFFFFFFFFFFFFF8;
      v79 = v14 & 0xFFFFFFFFFFFFFF8;
      if (v18)
      {
        v29 = 0;
        v12 = (v14 + 32);
        while (2)
        {
          v14 = 56 * v29 + 80;
          while (1)
          {
            if (a1)
            {
              v30 = MEMORY[0x19A8C4520](v29, v76);
            }

            else
            {
              if (v29 >= *(v5 + 16))
              {
                goto LABEL_64;
              }

              v30 = *(v12 + v29);
            }

            v31 = v30;
            v15 = (v29 + 1);
            if (__OFADD__(v29, 1))
            {
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            v32 = [v30 intentReference];
            if (v32)
            {
              break;
            }

            ++v29;
            v14 += 56;
            if (v15 == v18)
            {
              goto LABEL_46;
            }
          }

          v33 = v32;
          v34 = [v32 _partialConfigData];
          if (v34)
          {
            v35 = v34;
            v36 = sub_195FA04D8();
            v68 = v37;
            v70 = v36;

            v38 = *(v77 + 16);
            v66 = sub_195FA04B8();
            v64 = [v38 createVectorOfUInt8WithData:v66 alignment:8];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_195F4BB10(v17);
            }

            if (v29 >= *(v17 + 16))
            {
              goto LABEL_73;
            }

            v39 = v17 + v14;
            v40 = *(v17 + v14 - 16);
            *(v17 + v14 - 16) = v64;
            swift_unknownObjectRelease();
            swift_unknownObjectRetain();
            sub_195EC0890(v70, v68);
            if (v29 >= *(v17 + 16))
            {
              goto LABEL_74;
            }

            v41 = *(v39 - 24);
            *(v39 - 24) = v75;
            swift_unknownObjectRelease();
            v5 = v79;
          }

          v42 = [v33 _intentData];
          if (v42)
          {
            v43 = v42;
            v44 = sub_195FA04D8();
            v69 = v45;
            v71 = v44;

            v46 = *(v77 + 16);
            v67 = sub_195FA04B8();
            v65 = [v46 createVectorOfUInt8WithData:v67 alignment:8];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_195F4BB10(v17);
            }

            sub_195EC0890(v71, v69);
            if (v29 >= *(v17 + 16))
            {
              goto LABEL_75;
            }

            v47 = *(v17 + v14 - 32);
            *(v17 + v14 - 32) = v65;
            swift_unknownObjectRelease();
          }

          v48 = [v33 stableHash];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_195F4BB10(v17);
          }

          if (v29 >= *(v17 + 16))
          {
            goto LABEL_72;
          }

          v49 = (v17 + v14);
          *(v49 - 1) = v48;
          *v49 = 0;
          ++v29;
          v18 = v80;
          if (v15 != v80)
          {
            continue;
          }

          break;
        }
      }

LABEL_46:
      if (v18)
      {
        v78 = a1;
        v50 = 0;
        a1 = 32;
        v51 = v76;
        v5 = v77;
        while (1)
        {
          if (v78)
          {
            v52 = MEMORY[0x19A8C4520](v50, v51);
          }

          else
          {
            if (v50 >= *(v79 + 16))
            {
              goto LABEL_65;
            }

            v52 = *(v51 + 8 * v50 + 32);
          }

          v53 = v52;
          v15 = [v52 attribute];
          if (v15)
          {
            v81[0] = *(v5 + 32);
            sub_195F367EC();
            v14 = v15;
            sub_195FA0A38();
            v15 = v54;
            v55 = *(v5 + 24);
            v12 = sub_195FA0888();
            [v55 encodeObject:v14 forKey:v12];

            v5 = v77;
            v56 = *(v77 + 32);
            v57 = __OFADD__(v56, 1);
            v58 = v56 + 1;
            if (v57)
            {
              goto LABEL_67;
            }

            *(v77 + 32) = v58;
            v12 = *(v77 + 16);
            v59 = sub_195FA0888();

            v15 = [v12 createString_];

            v51 = v76;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_195F4BB10(v17);
          }

          if (v50 >= *(v17 + 16))
          {
            break;
          }

          ++v50;
          v60 = *(v17 + a1);
          *(v17 + a1) = v15;
          swift_unknownObjectRelease();
          a1 += 56;
          if (v80 == v50)
          {
            goto LABEL_61;
          }
        }

LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v5 = v77;
LABEL_61:

      v12 = sub_195F358B0(v17);

      v61 = *(v5 + 16);
      v5 = swift_allocObject();
      a1 = v74;
      *(v5 + 16) = v74;
      *(v5 + 24) = v73;
      *(v5 + 32) = v72;
      *(v5 + 40) = v12;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_195F36BF0;
      *(v17 + 24) = v5;
      v81[4] = sub_195F36C1C;
      v81[5] = v17;
      v81[0] = MEMORY[0x1E69E9820];
      v81[1] = 1107296256;
      v81[2] = sub_195F36BF8;
      v81[3] = &block_descriptor_104;
      v62 = _Block_copy(v81);
      swift_unknownObjectRetain();
      v63 = v72;
      swift_unknownObjectRetain();

      v14 = v61;
      swift_unknownObjectRetain();

      [v14 _chsCreateWidgetRelevancePropertiesBufUsingBlock_];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      _Block_release(v62);

      LOBYTE(v62) = swift_isEscapingClosureAtFileLocation();

      if ((v62 & 1) == 0)
      {
        return;
      }

      __break(1u);
LABEL_70:
      v19 = MEMORY[0x19A8C4520](0, v14);
LABEL_13:
      v20 = v19;
      v15 = [v19 intentReference];

      if (v15)
      {
        v21 = [v15 _partialSchemaData];
        if (v21)
        {
          v22 = v21;
          v23 = sub_195FA04D8();
          v25 = v24;

          v26 = *(v5 + 16);
          v27 = sub_195FA04B8();
          v75 = [v26 createVectorOfUInt8WithData:v27 alignment:8];

          v28 = v23;
          v14 = v76;
          sub_195EC0890(v28, v25);
          goto LABEL_19;
        }
      }

      v75 = 0;
LABEL_19:
      v18 = v80;
    }
  }

  if (a1)
  {
    goto LABEL_70;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v14 + 32);
    goto LABEL_13;
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
}

void *sub_195F34288(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (a2)
    {
      v4 = sub_195FA0B68();
      v5 = *v2;
      v17 = v2[1];
      v18 = v5;
      v6 = v2[2];
      v15 = v2[3];
      v16 = v6;
      v7 = v2[4];
      *(v4 + 16) = a2;
      v14 = v7;
      v8 = *(v2 + 1);
      *(v4 + 32) = *v2;
      *(v4 + 48) = v8;
      *(v4 + 64) = *(v2 + 2);
      *(v4 + 80) = *(v2 + 48);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = 88;
        do
        {
          v11 = v4 + v10;
          sub_195F2E0AC(&v18, &v13, &qword_1EAEED8C8, &qword_195FAC868);
          sub_195F2E0AC(&v17, &v13, &qword_1EAEED8D0, &unk_195FAC870);
          sub_195F2E0AC(&v16, &v13, &qword_1EAEED8D8, &unk_195FAC880);
          sub_195F2E0AC(&v15, &v13, &qword_1EAEED8D8, &unk_195FAC880);
          sub_195F2E0AC(&v14, &v13, &qword_1EAEED8D8, &unk_195FAC880);
          v12 = *(v2 + 1);
          *v11 = *v2;
          *(v11 + 16) = v12;
          *(v11 + 32) = *(v2 + 2);
          *(v11 + 48) = *(v2 + 48);
          v10 += 56;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v18 = *result;
      sub_195F2DB00(&v18, &qword_1EAEED8C8, &qword_195FAC868);
      v17 = v2[1];
      sub_195F2DB00(&v17, &qword_1EAEED8D0, &unk_195FAC870);
      v16 = v2[2];
      sub_195F2DB00(&v16, &qword_1EAEED8D8, &unk_195FAC880);
      v15 = v2[3];
      sub_195F2DB00(&v15, &qword_1EAEED8D8, &unk_195FAC880);
      v14 = v2[4];
      sub_195F2DB00(&v14, &qword_1EAEED8D8, &unk_195FAC880);
      return MEMORY[0x1E69E7CC0];
    }

    return v4;
  }

  return result;
}

void sub_195F34498(unint64_t a1, unint64_t isEscapingClosureAtFileLocation, id a3, id *a4, uint64_t a5)
{
  v6 = a3;
  if ([a3 isDeletion])
  {
    v9 = a4[2];
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = isEscapingClosureAtFileLocation;
    a4 = a1;
    a1 = swift_allocObject();
    *(a1 + 16) = sub_195F36860;
    *(a1 + 24) = v10;
    *&v101 = sub_195F36C1C;
    *(&v101 + 1) = a1;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v100 = sub_195F36BF8;
    *(&v100 + 1) = &block_descriptor_83;
    v11 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    v12 = v9;
    swift_unknownObjectRetain();

    v6 = [v12 _chsCreateWidgetRelevancePropertiesBufUsingBlock_];

    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v13 = [v6 relevances];
  if (v13)
  {
    v14 = v13;
    sub_195EB4B30(0, &qword_1EAEEBD30, off_1E74528C0);
    v15 = sub_195FA0B38();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v16 = v15 >> 62;
  if (!(v15 >> 62))
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_9;
  }

LABEL_73:
  v17 = sub_195FA0E88();
LABEL_9:
  v100 = 0u;
  v101 = 0u;
  aBlock = 0u;
  v102 = 1;
  v18 = sub_195F34288(&aBlock, v17);
  v85 = v6;
  if (v16)
  {
    v6 = sub_195FA0E88();
  }

  else
  {
    v6 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v93 = v15;
  v19 = &selRef_appendString_counterpart_;
  v86 = isEscapingClosureAtFileLocation;
  v91 = v6;
  v87 = a1;
  if (!v6)
  {
    v29 = 0;
    isEscapingClosureAtFileLocation = v15 & 0xC000000000000001;
    while (1)
    {
      while (1)
      {
        v88 = v29;
        v90 = a4;
        v94 = isEscapingClosureAtFileLocation;
        if (v6)
        {
          a1 = 0;
          a4 = v18;
          while (2)
          {
            v15 = 56 * a1 + 80;
            while (1)
            {
              if (isEscapingClosureAtFileLocation)
              {
                v32 = MEMORY[0x19A8C4520](a1, v93);
              }

              else
              {
                if (a1 >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_69;
                }

                v32 = *(v93 + 32 + 8 * a1);
              }

              v16 = v32;
              v33 = (a1 + 1);
              if (__OFADD__(a1, 1))
              {
                __break(1u);
LABEL_69:
                __break(1u);
LABEL_70:
                __break(1u);
                goto LABEL_71;
              }

              v34 = [v32 v19[317]];
              if (v34)
              {
                break;
              }

              ++a1;
              v15 += 56;
              if (v33 == v6)
              {
                goto LABEL_50;
              }
            }

            v89 = v34;
            v35 = [v34 partialIntentDataAsData];
            if (v35)
            {
              v95 = a4;
              v36 = v35;
              v37 = sub_195FA04D8();
              v39 = v38;

              v40 = v90[2];
              v83 = v37;
              v82 = v39;
              v41 = sub_195FA04B8();
              v42 = [v40 createVectorOfUInt8WithData:v41 alignment:8];

              v43 = v95;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v43 = sub_195F4BB10(v95);
              }

              if (a1 >= *(v43 + 2))
              {
                goto LABEL_78;
              }

              v44 = v43;
              v45 = &v43[v15];
              v46 = *(v45 - 2);
              *(v45 - 2) = v42;
              swift_unknownObjectRelease();
              swift_unknownObjectRetain();
              sub_195EC0890(v83, v82);
              if (a1 >= *(v44 + 2))
              {
                goto LABEL_79;
              }

              a4 = v44;
              v47 = *(v45 - 3);
              *(v45 - 3) = v88;
              swift_unknownObjectRelease();
              isEscapingClosureAtFileLocation = v94;
            }

            v48 = [v89 intentDataAsData];
            if (v48)
            {
              v49 = v48;
              v50 = sub_195FA04D8();
              v52 = v51;

              v53 = v90[2];
              v96 = v52;
              v54 = sub_195FA04B8();
              v84 = [v53 createVectorOfUInt8WithData:v54 alignment:8];

              v55 = a4;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v55 = sub_195F4BB10(a4);
              }

              sub_195EC0890(v50, v96);
              if (a1 >= *(v55 + 2))
              {
                goto LABEL_80;
              }

              a4 = v55;
              v56 = *&v55[v15 - 32];
              *&v55[v15 - 32] = v84;
              swift_unknownObjectRelease();
              isEscapingClosureAtFileLocation = v94;
            }

            v57 = [v89 stableHash];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a4 = sub_195F4BB10(a4);
            }

            if (a1 >= a4[2])
            {
              goto LABEL_77;
            }

            v58 = a4 + v15;
            *(v58 - 1) = v57;
            *v58 = 0;
            ++a1;
            v6 = v91;
            if (v33 != v91)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          a4 = v18;
        }

LABEL_50:
        v59 = v90;
        if (v6)
        {
          v16 = 0;
          isEscapingClosureAtFileLocation = 0;
          v60 = 4;
          a1 = v93;
          while (1)
          {
            if (v94)
            {
              v61 = MEMORY[0x19A8C4520](v16, a1);
            }

            else
            {
              if (v16 >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_70;
              }

              v61 = *(a1 + 8 * v16 + 32);
            }

            v15 = v61;
            v62 = [v61 attributeKey];
            if (v62)
            {
              v97 = a4;
              v63 = v62;
              sub_195FA08B8();
              v6 = v64;

              v65 = *(a5 + 24);
              v67 = MEMORY[0x1EEE9AC00](v66);
              MEMORY[0x1EEE9AC00](v67);

              os_unfair_lock_lock(v65 + 4);
              sub_195F367A8(v98);
              os_unfair_lock_unlock(v65 + 4);
              v69 = v98[0];

              v98[0] = v59[4];
              sub_195F367EC();
              a1 = v69;
              a4 = sub_195FA0A38();
              v70 = v59[3];
              v71 = sub_195FA0888();
              [v70 encodeObject:a1 forKey:v71];

              v59 = v90;
              v72 = v90[4];
              v73 = __OFADD__(v72, 1);
              v74 = v72 + 1;
              if (v73)
              {
                goto LABEL_72;
              }

              v90[4] = v74;
              v75 = v90[2];
              v76 = sub_195FA0888();

              v68 = [v75 createString_];

              a1 = v93;
              a4 = v97;
              v6 = v91;
            }

            else
            {
              v68 = 0;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a4 = sub_195F4BB10(a4);
            }

            if (v16 >= a4[2])
            {
              break;
            }

            ++v16;
            v77 = a4[v60];
            a4[v60] = v68;
            swift_unknownObjectRelease();
            v60 += 7;
            if (v6 == v16)
            {
              goto LABEL_66;
            }
          }

LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

LABEL_66:

        v78 = sub_195F358B0(a4);

        v79 = v59[2];
        v80 = swift_allocObject();
        v18 = v87;
        v19 = v86;
        v80[2] = v87;
        v80[3] = v86;
        v80[4] = v85;
        v80[5] = v78;
        isEscapingClosureAtFileLocation = swift_allocObject();
        *(isEscapingClosureAtFileLocation + 16) = sub_195F36840;
        *(isEscapingClosureAtFileLocation + 24) = v80;
        v98[4] = sub_195F36C1C;
        v98[5] = isEscapingClosureAtFileLocation;
        v98[0] = MEMORY[0x1E69E9820];
        v98[1] = 1107296256;
        v98[2] = sub_195F36BF8;
        v98[3] = &block_descriptor_73;
        v15 = _Block_copy(v98);
        swift_unknownObjectRetain();
        a4 = v79;
        v81 = v85;
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();

        v6 = [a4 _chsCreateWidgetRelevancePropertiesBufUsingBlock_];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        _Block_release(v15);

        LOBYTE(v78) = swift_isEscapingClosureAtFileLocation();

        if ((v78 & 1) == 0)
        {
          return;
        }

        __break(1u);
LABEL_75:
        v20 = MEMORY[0x19A8C4520](0, v93);
LABEL_16:
        v21 = v20;
        v16 = [v20 v19[317]];

        if (v16)
        {
          break;
        }

LABEL_21:
        v29 = 0;
      }

      v22 = [v16 schemaDataAsData];
      if (!v22)
      {

        goto LABEL_21;
      }

      v23 = v22;
      v24 = isEscapingClosureAtFileLocation;
      v25 = sub_195FA04D8();
      v27 = v26;

      v28 = a4[2];
      v15 = sub_195FA04B8();
      v29 = [v28 createVectorOfUInt8WithData:v15 alignment:8];

      v30 = v25;
      isEscapingClosureAtFileLocation = v24;
      v31 = v27;
      v6 = v91;
      sub_195EC0890(v30, v31);
    }
  }

  isEscapingClosureAtFileLocation = v15 & 0xC000000000000001;
  if ((v15 & 0xC000000000000001) != 0)
  {
    goto LABEL_75;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v15 + 32);
    goto LABEL_16;
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
}

id sub_195F34FB4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  [a1 setKind_];
  if (a3)
  {
    [a1 setExtensionIdentity_];
  }

  [a4 lastRelevanceUpdate];
  [a1 setLastRelevanceUpdate_];
  [a1 setSupportsBackgroundRefresh_];

  return [a1 setRelevances_];
}

void sub_195F35074()
{
  aBlock[9] = *MEMORY[0x1E69E9840];
  if ((*(v0 + 56) & 1) == 0)
  {
    *(v0 + 56) = 1;
    v1 = *(v0 + 16);
    swift_beginAccess();
    v2 = *(v0 + 40);
    v3 = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F8, &unk_195FAC8A0);
    v4 = sub_195FA0B28();

    v5 = [v3 _chsCreateVectorOfWidgetRelevancePropertiesBufWithOffsets_];

    v6 = [*(v0 + 24) encodedData];
    v7 = sub_195FA04D8();
    v9 = v8;

    v10 = *(v0 + 16);
    v27 = v9;
    v11 = sub_195FA04B8();
    v12 = [v10 createVectorOfUInt8WithData:v11 alignment:8];

    v13 = *(v0 + 16);
    v14 = swift_allocObject();
    *(v14 + 16) = v5;
    *(v14 + 24) = v12;
    v15 = swift_allocObject();
    v15[2] = sub_195F36A70;
    v15[3] = v14;
    aBlock[4] = sub_195F36AC0;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F36BF8;
    aBlock[3] = &block_descriptor_113;
    v16 = _Block_copy(aBlock);
    v17 = v13;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v18 = [v17 _chsCreateRelevanceCacheBufUsingBlock_];

    _Block_release(v16);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if (v17)
    {
      __break(1u);
    }

    v19 = *(v0 + 16);
    aBlock[0] = 0;
    v20 = [v19 _chsFinishedBufferWithRootRelevanceCacheBufOfs_error_];
    v21 = aBlock[0];
    if (v20)
    {
      v22 = sub_195FA04D8();
      v24 = v23;
      sub_195EC0890(v7, v27);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_195EC0890(v22, v24);
    }

    else
    {
      v25 = v21;
      sub_195FA0328();

      swift_willThrow();
      sub_195EC0890(v7, v27);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195F353FC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_195FA0EB8();
  }

  else if (*(a2 + 16) && (sub_195EB4B30(0, &qword_1EAEEBD40, off_1E7452818), v5 = *(a2 + 40), v6 = sub_195FA0D78(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v8);
      v4 = sub_195FA0D88();

      if (v4)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_195F35514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    goto LABEL_15;
  }

  v5 = a5;
  v10 = *(a5 + 40);
  sub_195FA1398();
  sub_195F37930(a1, a2, a3, a4);
  sub_195FA0958();

  v11 = sub_195FA13E8();
  v12 = -1 << *(v5 + 32);
  v13 = v11 & ~v12;
  v46 = v5 + 56;
  if ((*(v5 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v48 = a1;
    v49 = a2;
    v44 = ~v12;
    v50 = a4;
    if (a4)
    {
      v14 = a3;
    }

    else
    {
      v14 = 0;
    }

    v47 = v14;
    v45 = v5;
    while (1)
    {
      v15 = (*(v5 + 48) + 32 * v13);
      v17 = *v15;
      v16 = v15[1];
      v19 = v15[2];
      v18 = v15[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E0, &unk_195FADCE0);
      inited = swift_initStackObject();
      v21 = inited;
      *(inited + 16) = xmmword_195FAC280;
      v22 = v18 ? v19 : 0;
      *(inited + 32) = v22;
      *(inited + 40) = v18;
      *(inited + 48) = v17;
      *(inited + 56) = v16;

      sub_195EB6308(v21, v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_195FAC070;
      v24 = sub_195EB5F80();
      v25 = sub_195EB6074(v24);
      v27 = v26;

      *(v23 + 32) = v25;
      *(v23 + 40) = v27;

      sub_195EB6214(v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
      sub_195EB5ED4();
      v29 = sub_195FA0828();
      v31 = v30;

      v32 = swift_initStackObject();
      *(v32 + 16) = xmmword_195FAC280;
      *(v32 + 32) = v47;
      *(v32 + 40) = v50;
      *(v32 + 48) = v48;
      *(v32 + 56) = v49;

      sub_195EB6308(v32, v51);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_195FAC070;
      v34 = sub_195EB5F80();
      v35 = sub_195EB6074(v34);
      v37 = v36;

      *(v33 + 32) = v35;
      *(v33 + 40) = v37;

      sub_195EB6214(v38);
      v39 = sub_195FA0828();
      v41 = v40;

      if (v29 == v39 && v31 == v41)
      {
        break;
      }

      v42 = sub_195FA12B8();

      if ((v42 & 1) == 0)
      {
        v5 = v45;
        v13 = (v13 + 1) & v44;
        if ((*(v46 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
        {
          continue;
        }
      }

      return v42 & 1;
    }

    v42 = 1;
  }

  else
  {
LABEL_15:
    v42 = 0;
  }

  return v42 & 1;
}

uint64_t sub_195F358B0(uint64_t a1)
{
  v47 = MEMORY[0x1E69E7CC0];
  v1 = *(a1 + 16);
  if (v1)
  {
    v33 = 0;
    v2 = 0;
    v3 = (a1 + 80);
    while (1)
    {
      v38 = v2;
      v35 = v3;
      v36 = v1;
      v4 = *(v3 - 6);
      v5 = *(v3 - 5);
      v7 = *(v3 - 4);
      v6 = *(v3 - 3);
      v8 = *(v3 - 2);
      v9 = *(v3 - 1);
      v48 = *v3;
      v46 = 0;
      v39 = v4;
      v37 = v9;
      if (v7 || v6 || v8)
      {
        v11 = *(v34 + 16);
        v12 = swift_allocObject();
        *(v12 + 16) = v4;
        *(v12 + 24) = v5;
        *(v12 + 32) = v7;
        *(v12 + 40) = v6;
        *(v12 + 48) = v8;
        *(v12 + 56) = v9;
        v13 = v48;
        *(v12 + 64) = v48;
        swift_unknownObjectRetain_n();
        swift_unknownObjectRetain_n();
        v32 = v5;
        swift_unknownObjectRetain_n();
        swift_unknownObjectRetain_n();
        swift_unknownObjectRetain_n();
        v14 = v11;
        sub_195EB6E70(v33);
        v15 = swift_allocObject();
        *(v15 + 16) = sub_195F366FC;
        *(v15 + 24) = v12;
        v44 = sub_195F36C1C;
        v45 = v15;
        aBlock = MEMORY[0x1E69E9820];
        v41 = 1107296256;
        v42 = sub_195F36BF8;
        v43 = &block_descriptor_64;
        v16 = _Block_copy(&aBlock);

        v17 = [v14 _chsCreateIntentReferenceBufUsingBlock_];

        _Block_release(v16);
        LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

        if (v16)
        {
          goto LABEL_17;
        }

        v46 = v17;
        swift_unknownObjectRelease();
        v33 = sub_195F366FC;
        v10 = v13;
        v4 = v39;
        v5 = v32;
      }

      else
      {
        swift_unknownObjectRetain();
        v10 = v48;
        swift_unknownObjectRetain();
      }

      v19 = *(v34 + 16);
      v20 = swift_allocObject();
      *(v20 + 16) = &v46;
      *(v20 + 24) = v4;
      *(v20 + 32) = v5;
      *(v20 + 40) = v7;
      *(v20 + 48) = v6;
      *(v20 + 56) = v8;
      *(v20 + 64) = v37;
      *(v20 + 72) = v10;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21 = v19;
      sub_195EB6E70(v38);
      v22 = swift_allocObject();
      *(v22 + 16) = sub_195F36690;
      *(v22 + 24) = v20;
      v44 = sub_195F36C1C;
      v45 = v22;
      aBlock = MEMORY[0x1E69E9820];
      v41 = 1107296256;
      v42 = sub_195F36BF8;
      v43 = &block_descriptor_55;
      v23 = _Block_copy(&aBlock);

      v24 = [v21 _chsCreateWidgetRelevanceBufUsingBlock_];

      _Block_release(v23);
      LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

      if (v21)
      {
        break;
      }

      v25 = swift_unknownObjectRetain();
      MEMORY[0x19A8C40E0](v25);
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v26 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_195FA0B58();
      }

      sub_195FA0B78();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v3 = v35 + 56;
      v2 = sub_195F36690;
      v1 = v36 - 1;
      if (v36 == 1)
      {
        v27 = sub_195F36690;
        v28 = v33;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
    v28 = 0;
    v27 = 0;
LABEL_15:
    v29 = *(v34 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED850, &unk_195FAC858);
    v30 = sub_195FA0B28();

    v31 = [v29 _chsCreateVectorOfWidgetRelevanceBufWithOffsets_];

    sub_195EB6E70(v28);
    sub_195EB6E70(v27);
    return v31;
  }

  return result;
}

id sub_195F35E08(id result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 16))
  {
    result = [result setIntentData_];
  }

  if (*(a2 + 32))
  {
    result = [v3 setPartialIntentData_];
  }

  if (*(a2 + 24))
  {
    result = [v3 setSchemaData_];
  }

  if ((*(a2 + 48) & 1) == 0)
  {
    v4 = *(a2 + 40);

    return [v3 setStableHash_];
  }

  return result;
}

uint64_t sub_195F35EA8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  swift_beginAccess();
  v3 = *(v1 + 64);

  v4 = a1;
  v5 = sub_195F362F8(v4, v3);

  if (v5)
  {

    return v5;
  }

  v6 = &v4[OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier];
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 1);
  v9 = *(v1 + 16);

  v10 = v9;
  v11 = sub_195FA0888();
  v12 = [v10 createString_];

  v13 = &v4[OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier];
  swift_beginAccess();
  if (*(v13 + 1))
  {
    v14 = *v13;
    v15 = *(v1 + 16);

    v16 = v15;
    v17 = sub_195FA0888();
    v18 = [v16 createString_];
  }

  else
  {
    v18 = 0;
  }

  v19 = &v4[OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier];
  swift_beginAccess();
  if (*(v19 + 1))
  {
    v20 = *v19;
    v21 = *(v1 + 16);

    v22 = v21;
    v23 = sub_195FA0888();
    v24 = [v22 createString_];
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v1 + 16);
  v26 = swift_allocObject();
  v26[2] = v12;
  v26[3] = v18;
  v26[4] = v24;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_195F364FC;
  *(v27 + 24) = v26;
  aBlock[4] = sub_195F36C1C;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195F36BF8;
  aBlock[3] = &block_descriptor_4;
  v28 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v29 = v25;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v5 = [v29 _chsCreateExtensionIdentityBufUsingBlock_];

  _Block_release(v28);
  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v31 = *(v1 + 64);
    if ((v31 & 0xC000000000000001) == 0)
    {
      v34 = *(v1 + 64);
      swift_unknownObjectRetain_n();
      v35 = v4;
      goto LABEL_19;
    }

    if (v31 < 0)
    {
      v32 = *(v1 + 64);
    }

    else
    {
      v32 = v31 & 0xFFFFFFFFFFFFFF8;
    }

    swift_unknownObjectRetain_n();
    v33 = v4;
    result = sub_195FA0E88();
    if (!__OFADD__(result, 1))
    {
      *(v1 + 64) = sub_195F828CC(v32, result + 1);
LABEL_19:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *(v1 + 64);
      sub_195F5CC1C(v5, v4, isUniquelyReferenced_nonNull_native);
      *(v1 + 64) = v37;

      swift_endAccess();

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_195F362F8(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_195FA1038();

    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F0, qword_195FAC840);
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_195F59D70(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      return swift_unknownObjectRetain();
    }
  }

  return 0;
}

uint64_t sub_195F363B4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_195FA1038();

    if (v3)
    {
      type metadata accessor for ControlSessionSubscriptionRequest();
      swift_dynamicCast();
      return v8;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_195F59EE8(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
    }
  }

  return 0;
}

id sub_195F36468(id result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  if (a2)
  {
    result = [result setExtensionBundleIdentifier_];
  }

  if (a3)
  {
    result = [v6 setContainerBundleIdentifier_];
  }

  if (a4)
  {

    return [v6 setDeviceIdentifier_];
  }

  return result;
}

uint64_t sub_195F36508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_195EB4B30(0, &qword_1EAEEBCF8, off_1E7452808);
  v8 = *(a1 + 32);
  if (!v8)
  {
    v11 = [*(a1 + 16) archivedObjectsAsData];
    if (v11)
    {
      v12 = v11;
      v13 = sub_195FA04D8();
      v15 = v14;

      v16 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
      v17 = sub_195F368B8();
      sub_195EC0890(v13, v15);
      if (v3)
      {
        return v7;
      }

      v18 = *(a1 + 32);
      *(a1 + 32) = v17;
    }

    v8 = *(a1 + 32);
    if (!v8)
    {
      sub_195F36864();
      swift_allocError();
      *v19 = a2;
      v19[1] = a3;
      swift_willThrow();

      return v7;
    }
  }

  v9 = v8;
  v10 = sub_195FA0D58();
  if (v10)
  {
    v7 = v10;
  }

  else
  {
    sub_195F36864();
    swift_allocError();
    *v20 = a2;
    v20[1] = a3;
    swift_willThrow();
  }

  return v7;
}

id sub_195F36690(id result)
{
  v2 = result;
  if (**(v1 + 16))
  {
    result = [result setIntentReference_];
  }

  if (*(v1 + 24))
  {

    return [v2 setAttributeKey_];
  }

  return result;
}

uint64_t sub_195F36704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_195F36508(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_195F36730@<X0>(uint64_t *a1@<X8>)
{
  result = sub_195F36508(v1[2], v1[3], v1[4]);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_195F36764@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *sub_195F367A8@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

unint64_t sub_195F367EC()
{
  result = qword_1EAEEBB88;
  if (!qword_1EAEEBB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBB88);
  }

  return result;
}

unint64_t sub_195F36864()
{
  result = qword_1EAEED8C0;
  if (!qword_1EAEED8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEED8C0);
  }

  return result;
}

id sub_195F368B8()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_195FA04B8();
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_195FA0328();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

id sub_195F36978(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  [a1 setKind_];
  if (v4)
  {
    [a1 setExtensionIdentity_];
  }

  return [a1 setIsDeletion_];
}

uint64_t objectdestroy_66Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  v3 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_75Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_195F36A70(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  [a1 setGroups_];

  return [a1 setArchivedObjects_];
}

uint64_t sub_195F36AC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_195F36B04(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_195F36B60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

char *sub_195F36C20(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_195FA0E88();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_195F391FC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x19A8C4520](i, a1);
        type metadata accessor for CHSControlConfigurationItem(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_195F391FC((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_195F2E09C(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CHSControlConfigurationItem(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_195F391FC((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_195F2E09C(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_195F36DEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_195F391FC(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_195F391FC((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_195F2E09C(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t CHSWidgetExtensionContainer.containerBundleIdentifier.getter()
{
  v0 = sub_195EC327C();
  v1 = [v0 identity];

  v2 = &v1[OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier];
  result = swift_beginAccess();
  if (*(v2 + 1))
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CHSWidgetExtensionContainer.localizedContainerDisplayName.getter()
{
  v0 = sub_195EC327C();
  v1 = [v0 containerBundleLocalizedDisplayName];

  v2 = sub_195FA08B8();
  return v2;
}

uint64_t CHSWidgetExtensionContainer.allExtensions.getter()
{
  v1 = *(v0 + OBJC_IVAR___CHSWidgetExtensionContainer_storage);

  v3 = sub_195EBA74C(v2, &qword_1EAEEC4B8, off_1E7452788, &qword_1EAEEC4A8, sub_195EBABF4);

  return v3;
}

uint64_t sub_195F370E0(uint64_t a1)
{
  result = MEMORY[0x19A8C41E0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_195EC1FF8(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t CHSWidgetExtensionContainer.remoteExtensionsByDeviceIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___CHSWidgetExtensionContainer_storage);
  v14 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_195FA0E88())
  {

    if (!i)
    {
      break;
    }

    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x19A8C4520](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 identity];
      v8 = &v7[OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier];
      swift_beginAccess();
      v9 = *(v8 + 1);

      if (v9)
      {

        sub_195FA0FA8();
        v10 = *(v14 + 16);
        sub_195FA0FD8();
        sub_195FA0FE8();
        sub_195FA0FB8();
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
        v11 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_16:

  v12 = sub_195F39864(v11);

  return v12;
}

uint64_t CHSWidgetExtensionContainer.iconVersion.getter()
{
  v1 = *(v0 + OBJC_IVAR___CHSWidgetExtensionContainer_iconResolver);
  swift_unknownObjectRetain();
  v2 = sub_195EC327C();
  v3 = [v2 identity];

  v4 = [v1 resolveIconVersionForExtensionIdentity_];
  swift_unknownObjectRelease();
  if (!v4)
  {
    return 0;
  }

  v5 = sub_195FA08B8();

  return v5;
}

void CHSWidgetExtensionContainer.getIcon(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_195F39B24;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_195F39F00;
  v7[3] = &block_descriptor_5;
  v6 = _Block_copy(v7);

  [v2 getWidgetIconWithCompletion_];
  _Block_release(v6);
}

void CHSWidgetExtensionContainer.getWidgetIcon(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_195EC327C();
  v6 = [v5 identity];

  v7 = &v6[OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier];
  swift_beginAccess();
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
    v10 = &v6[OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier];
    swift_beginAccess();
    v12 = *v10;
    v11 = v10[1];

    v13 = *(v2 + OBJC_IVAR___CHSWidgetExtensionContainer_iconResolver);
    swift_unknownObjectRetain();
    sub_195F37930(v9, v8, v12, v11);

    v14 = sub_195FA0888();

    v16[4] = a1;
    v16[5] = a2;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_195F39F00;
    v16[3] = &block_descriptor_3;
    v15 = _Block_copy(v16);

    [v13 resolveWidgetIconForContainerIdentity:v14 completion:v15];
    _Block_release(v15);
    swift_unknownObjectRelease();
  }

  else
  {

    __break(1u);
  }
}

uint64_t sub_195F37930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E0, &unk_195FADCE0);
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 16) = xmmword_195FAC280;
  if (a4)
  {
    v10 = a3;
  }

  else
  {
    v10 = 0;
  }

  *(inited + 32) = v10;
  *(inited + 40) = a4;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  sub_195EB6308(v9, &v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_195FAC070;
  v12 = sub_195EB5F80();
  v13 = sub_195EB6074(v12);
  v15 = v14;

  *(v11 + 32) = v13;
  *(v11 + 40) = v15;

  sub_195EB6214(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
  sub_195EB5ED4();
  v17 = sub_195FA0828();

  return v17;
}

void CHSWidgetExtensionContainer.getISIcon(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_195EC327C();
  v6 = [v5 identity];

  v7 = &v6[OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier];
  swift_beginAccess();
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
    v10 = &v6[OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier];
    swift_beginAccess();
    v12 = *v10;
    v11 = v10[1];

    v13 = *(v2 + OBJC_IVAR___CHSWidgetExtensionContainer_iconResolver);
    swift_unknownObjectRetain();
    sub_195F37930(v9, v8, v12, v11);

    v14 = sub_195FA0888();

    v16[4] = a1;
    v16[5] = a2;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_195F39F00;
    v16[3] = &block_descriptor_6;
    v15 = _Block_copy(v16);

    [v13 resolveISIconForContainerIdentity:v14 completion:v15];
    _Block_release(v15);
    swift_unknownObjectRelease();
  }

  else
  {

    __break(1u);
  }
}

void sub_195F37C94(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_195F37D30(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

id sub_195F37DFC()
{
  v1 = (v0 + OBJC_IVAR___CHSWidgetExtensionContainer____lazy_storage____hash);
  if (*(v0 + OBJC_IVAR___CHSWidgetExtensionContainer____lazy_storage____hash + 8) != 1)
  {
    return *v1;
  }

  result = sub_195F37E48(v0);
  *v1 = result;
  v1[8] = 0;
  return result;
}

id sub_195F37E48(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E698E6B8]) init];
  v3 = *(a1 + OBJC_IVAR___CHSWidgetExtensionContainer_storage);
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_195FA0E88())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x19A8C4520](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v2 appendObject_];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  v10 = [v2 hash];

  return v10;
}

void CHSWidgetExtensionContainer.description.getter()
{
  v0 = _sSo27CHSWidgetExtensionContainerC14ChronoServicesE18descriptionBuilder19withMultilinePrefixSo013BSDescriptionG0CSgSSSg_tF_0();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 build];

    if (v2)
    {
      sub_195FA08B8();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::String_optional __swiftcall CHSWidgetExtensionContainer.description(withMultilinePrefix:)(Swift::String_optional withMultilinePrefix)
{
  v1 = _sSo27CHSWidgetExtensionContainerC14ChronoServicesE18descriptionBuilder19withMultilinePrefixSo013BSDescriptionG0CSgSSSg_tF_0();
  if (v1)
  {
    v3 = v1;
    v4 = [v1 build];

    if (v4)
    {
      v5 = sub_195FA08B8();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v1 = v5;
    v2 = v7;
  }

  else
  {
    __break(1u);
  }

  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

void sub_195F38144(void *a1, id a2)
{
  v4 = [a2 containerBundleIdentifier];
  if (!v4)
  {
    sub_195FA08B8();
    v4 = sub_195FA0888();
  }

  v5 = sub_195FA0888();
  [a1 appendString:v4 withName:v5];

  v6 = [a2 localizedContainerDisplayName];
  if (!v6)
  {
    sub_195FA08B8();
    v6 = sub_195FA0888();
  }

  v7 = sub_195FA0888();
  [a1 appendString:v6 withName:v7];
}

Swift::String_optional __swiftcall CHSWidgetExtensionContainer.succinctDescription()()
{
  v0 = CHSWidgetExtensionContainer.succinctDescriptionBuilder()();
  v1 = [v0 build];

  if (v1)
  {
    v2 = sub_195FA08B8();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v5 = v2;
  v6 = v4;
  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

id CHSWidgetExtensionContainer.succinctDescriptionBuilder()()
{
  result = [objc_allocWithZone(MEMORY[0x1E698E680]) initWithObject_];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v0;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_195F39E64;
    *(v4 + 24) = v3;
    v9[4] = sub_195EC7340;
    v9[5] = v4;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_195EC7454;
    v9[3] = &block_descriptor_15;
    v5 = _Block_copy(v9);
    v6 = v2;
    v7 = v0;

    [v6 appendProem:0 block:v5];
    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_195F38478(void *a1, char *a2)
{
  v4 = [a2 containerBundleIdentifier];
  if (!v4)
  {
    sub_195FA08B8();
    v4 = sub_195FA0888();
  }

  v5 = sub_195FA0888();
  [a1 appendString:v4 withName:v5];

  v6 = [a2 localizedContainerDisplayName];
  if (!v6)
  {
    sub_195FA08B8();
    v6 = sub_195FA0888();
  }

  v7 = sub_195FA0888();
  [a1 appendString:v6 withName:v7];

  v8 = *&a2[OBJC_IVAR___CHSWidgetExtensionContainer_storage];
  if (v8 >> 62)
  {
    if (v8 < 0)
    {
      v10 = *&a2[OBJC_IVAR___CHSWidgetExtensionContainer_storage];
    }

    v9 = sub_195FA0E88();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = sub_195FA0888();
}

void *CHSWidgetExtensionContainer.extensionBundleIdentifiers.getter()
{
  v1 = *(v0 + OBJC_IVAR___CHSWidgetExtensionContainer_storage);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v15 = *(v0 + OBJC_IVAR___CHSWidgetExtensionContainer_storage);
    }

    v2 = sub_195FA0E88();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x1E69E7CC0];

  result = sub_195EC3A54(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v16;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x19A8C4520](v5, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v6 identity];

      v9 = &v8[OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier];
      swift_beginAccess();
      v11 = *v9;
      v10 = *(v9 + 1);

      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_195EC3A54((v12 > 1), v13 + 1, 1);
      }

      ++v5;
      *(v16 + 16) = v13 + 1;
      v14 = v16 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
    }

    while (v2 != v5);

    return v3;
  }

  __break(1u);
  return result;
}

void *CHSWidgetExtensionContainer.containerBundleIdentifiers.getter()
{
  v1 = *(v0 + OBJC_IVAR___CHSWidgetExtensionContainer_storage);
  if (v1 >> 62)
  {
LABEL_19:
    v2 = sub_195FA0E88();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x19A8C4520](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v7 = [v4 identity];

    v8 = &v7[OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier];
    swift_beginAccess();
    v10 = *v8;
    v9 = *(v8 + 1);

    ++v3;
    if (v9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_195EB50CC(0, v15[2] + 1, 1, v15);
      }

      v12 = v15[2];
      v11 = v15[3];
      if (v12 >= v11 >> 1)
      {
        v15 = sub_195EB50CC((v11 > 1), v12 + 1, 1, v15);
      }

      v15[2] = v12 + 1;
      v13 = &v15[2 * v12];
      v13[4] = v10;
      v13[5] = v9;
      v3 = v6;
    }
  }

  return v15;
}

char *sub_195F38970(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED9F0, &qword_195FAC930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_195F38A94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA48, &qword_195FACCF0);
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

char *sub_195F38BB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA40, &qword_195FAC968);
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

char *sub_195F38CC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA18, &qword_195FAC948);
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

char *sub_195F38DE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDA30, &qword_195FAC960);
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

size_t sub_195F38EE4(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA10, &qword_195FAC940);
  v10 = *(sub_195FA0478() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_195FA0478() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_195F390BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA08, &qword_195FAC938);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_195F391DC(char *a1, int64_t a2, char a3)
{
  result = sub_195F3927C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_195F391FC(char *a1, int64_t a2, char a3)
{
  result = sub_195F39388(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_195F3921C(void *a1, int64_t a2, char a3)
{
  result = sub_195F39498(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_195F3923C(void *a1, int64_t a2, char a3)
{
  result = sub_195F395E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_195F3925C(char *a1, int64_t a2, char a3)
{
  result = sub_195F39714(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_195F3927C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
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

char *sub_195F39388(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA78, &qword_195FAC998);
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

void *sub_195F39498(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA20, &qword_195FAC950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA28, &qword_195FAC958);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_195F395E0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED9F8, &qword_195FB0500);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA00, &qword_195FAF000);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_195F39714(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA08, &qword_195FAC938);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_195F39864(unint64_t a1)
{
  v30 = MEMORY[0x1E69E7CC8];
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC8];
  }

LABEL_25:
  v2 = sub_195FA0E88();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

LABEL_3:
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x19A8C4520](v3, a1);
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v7 = *(a1 + 8 * v3 + 32);
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    v29 = v8;
    v9 = v7;
    v10 = [v7 identity];
    v11 = &v10[OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier];
    swift_beginAccess();
    v13 = *v11;
    v12 = v11[1];

    if (!v12)
    {
      break;
    }

    v15 = sub_195EC7CCC(v13, v12);
    v16 = v4[2];
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_23;
    }

    v19 = v14;
    if (v4[3] < v18)
    {
      sub_195F5AD50(v18, 1);
      v4 = v30;
      v20 = sub_195EC7CCC(v13, v12);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_29;
      }

      v15 = v20;
    }

    if (v19)
    {

      v6 = (v4[7] + 8 * v15);
      MEMORY[0x19A8C40E0](v5);
      if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_195FA0B58();
      }

      sub_195FA0B78();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDA90, qword_195FAC9A0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_195FAC910;
      *(v22 + 32) = v9;
      v4[(v15 >> 6) + 8] |= 1 << v15;
      v23 = (v4[6] + 16 * v15);
      *v23 = v13;
      v23[1] = v12;
      *(v4[7] + 8 * v15) = v22;
      v24 = v4[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_24;
      }

      v4[2] = v26;
    }

    ++v3;
    if (v29 == v2)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_29:
  result = sub_195FA1338();
  __break(1u);
  return result;
}

id _sSo27CHSWidgetExtensionContainerC14ChronoServicesE18descriptionBuilder19withMultilinePrefixSo013BSDescriptionG0CSgSSSg_tF_0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___CHSWidgetExtensionContainer_storage];
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v25 = *&v0[OBJC_IVAR___CHSWidgetExtensionContainer_storage];
    }

    v3 = sub_195FA0E88();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];

    result = sub_195F391DC(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v6 = 0;
    v4 = aBlock[0];
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x19A8C4520](v6, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 succinctDescriptionWithBundleIDWithoutFullIdentity];
      v10 = sub_195FA08B8();
      v12 = v11;

      aBlock[0] = v4;
      v14 = *(v4 + 16);
      v13 = *(v4 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_195F391DC((v13 > 1), v14 + 1, 1);
        v4 = aBlock[0];
      }

      ++v6;
      *(v4 + 16) = v14 + 1;
      v15 = v4 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
    }

    while (v3 != v6);
  }

  result = [objc_allocWithZone(MEMORY[0x1E698E680]) initWithObject_];
  if (result)
  {
    v16 = result;
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v1;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_195F39ED0;
    *(v18 + 24) = v17;
    aBlock[4] = sub_195EC74B8;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195EC7454;
    aBlock[3] = &block_descriptor_43;
    v19 = _Block_copy(aBlock);
    v20 = v16;
    v21 = v1;

    [v20 appendProem:0 block:v19];
    _Block_release(v19);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      sub_195F36DEC(v4);

      v23 = sub_195FA0B28();

      v24 = sub_195FA0888();
      [v20 appendArraySection:v23 withName:v24 skipIfEmpty:0];

      return v20;
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_195F39E74(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = [a1 image];
  v2();
}

uint64_t Token.description.getter()
{
  v3 = *v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
  sub_195EB5F38(&qword_1EAEEC498, &qword_1EAEED8F0, &unk_195FACA00);
  v1 = sub_195FA0828();

  return v1;
}

unint64_t Token.subscript.getter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v1 + 16) > result)
  {
    v2 = *v1 + 16 * result;
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_195F3A0CC(uint64_t *a1, uint64_t *a2)
{
  v9 = *a2;
  v10 = *a1;
  v2 = Token.rawValue.getter();
  v4 = v3;
  if (v2 == Token.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_195FA12B8();
  }

  return v7 & 1;
}

uint64_t sub_195F3A164@<X0>(uint64_t *a1@<X8>)
{
  result = Token.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_195F3A18C()
{
  v3 = *v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
  sub_195EB5F38(&qword_1EAEEC498, &qword_1EAEED8F0, &unk_195FACA00);
  v1 = sub_195FA0828();

  return v1;
}

ChronoServices::Token __swiftcall Token.init(stringLiteral:)(Swift::String stringLiteral)
{
  v2 = v1;
  result.storage._rawValue = Token.init(rawValue:)(stringLiteral).storage._rawValue;
  *v2 = v4;
  return result;
}

unint64_t sub_195F3A28C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_195F67F6C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_195F3A300(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_195FA0F98();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

unint64_t sub_195F3A428()
{
  result = qword_1EAEEDAA0;
  if (!qword_1EAEEDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDAA0);
  }

  return result;
}

unint64_t sub_195F3A48C()
{
  result = qword_1EAEEDAA8;
  if (!qword_1EAEEDAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDAA8);
  }

  return result;
}

unint64_t sub_195F3A4FC()
{
  result = qword_1EAEEDAB0;
  if (!qword_1EAEEDAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDAB0);
  }

  return result;
}

uint64_t sub_195F3A590(uint64_t *a1, int a2)
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

uint64_t sub_195F3A5D8(uint64_t result, int a2, int a3)
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

unint64_t sub_195F3A624()
{
  result = qword_1EAEEC4A0;
  if (!qword_1EAEEC4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC4A0);
  }

  return result;
}

uint64_t CHSSessionPlatterDescriptor.encode(to:)(void *a1)
{
  sub_195FA05D8();
  result = sub_195FA05A8();
  if (!v1)
  {
    v5 = a1[3];
    v6 = a1[4];
    v7 = result;
    v8 = a1;
    v9 = v4;
    __swift_project_boxed_opaque_existential_1(v8, v5);
    sub_195FA1458();
    __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_195F3A7B0();
    sub_195FA12D8();
    sub_195EC0890(v7, v9);
    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  return result;
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

unint64_t sub_195F3A7B0()
{
  result = qword_1EAEEC268;
  if (!qword_1EAEEC268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC268);
  }

  return result;
}

id CHSSessionPlatterDescriptor.init(from:)(uint64_t *a1)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195FA1438();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    sub_195F3A9DC();
    sub_195FA12C8();
    sub_195FA05D8();
    sub_195F3AA30();
    v6 = sub_195FA0598();
    v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v7 = [v6 extensionIdentity];
    v8 = [v6 activityAttributesType];
    v9 = sub_195FA04D8();
    v11 = v10;

    v12 = sub_195FA04B8();
    sub_195EC0890(v9, v11);
    v2 = [v16 initWithExtensionIdentity:v7 activityAttributesType:v12];

    sub_195EC0890(v13, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

unint64_t sub_195F3A9DC()
{
  result = qword_1EAEEC110;
  if (!qword_1EAEEC110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC110);
  }

  return result;
}

unint64_t sub_195F3AA30()
{
  result = qword_1EAEEDAC0;
  if (!qword_1EAEEDAC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAEEDAC0);
  }

  return result;
}

id sub_195F3AA7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = CHSSessionPlatterDescriptor.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t isChronod.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EAEEBBD8 = a1;
  return result;
}

uint64_t (*IconsFolderURL.modify())()
{
  if (qword_1EAEEC4F8[0] != -1)
  {
    swift_once();
  }

  v0 = sub_195FA0478();
  __swift_project_value_buffer(v0, qword_1EAEEC4D8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_195F3ACD0(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = sub_195FA0478();
  v6 = __swift_project_value_buffer(v5, a3);
  swift_beginAccess();
  v7 = *(v5 - 8);
  (*(v7 + 24))(v6, a1, v5);
  swift_endAccess();
  return (*(v7 + 8))(a1, v5);
}

uint64_t (*RemoteArchivesURL.modify())()
{
  if (qword_1EAEEBD90 != -1)
  {
    swift_once();
  }

  v0 = sub_195FA0478();
  __swift_project_value_buffer(v0, qword_1EAEEBD98);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_195F3AE44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDAC8, &unk_195FACC70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_195F3AEAC()
{
  sub_195F3B134();
  result = sub_195FA0DA8();
  qword_1EAEF7340 = result;
  return result;
}

uint64_t sub_195F3AF38()
{
  v0 = sub_195FA0678();
  __swift_allocate_value_buffer(v0, qword_1EAEF7348);
  __swift_project_value_buffer(v0, qword_1EAEF7348);
  if (qword_1EAEECFF8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAEF7340;
  return sub_195FA0688();
}

uint64_t sub_195F3B0BC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_195FA0678();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_195FA0668();
}

unint64_t sub_195F3B134()
{
  result = qword_1EAEEDAD0;
  if (!qword_1EAEEDAD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAEEDAD0);
  }

  return result;
}

id static NSFileManager.audited.getter()
{
  v0 = objc_allocWithZone(type metadata accessor for AuditedFileManager());

  return [v0 init];
}

id AuditedFileManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_195F3B20C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock_urls;
  swift_beginAccess();
  v4 = *(v0 + v3);
  *(v0 + v3) = MEMORY[0x1E69E7CD0];

  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t sub_195F3B298()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock_urls;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = *(v1 + 16);

  os_unfair_lock_unlock(v5);

  return v4;
}

uint64_t sub_195F3B324()
{
  v1 = *&v0[OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock];
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  sub_195F3B38C(v0);
  os_unfair_lock_unlock(*(v1 + 16));

  return sub_195F3B20C();
}

uint64_t sub_195F3B38C(char *a1)
{
  v26[4] = *MEMORY[0x1E69E9840];
  v2 = OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock_urls;
  swift_beginAccess();
  v3 = *&a1[v2];
  v4 = v3 + 56;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 56);
  v8 = (v5 + 63) >> 6;
  v24 = v3;

  v9 = 0;
  if (v7)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v12 = (*(v24 + 48) + ((v10 << 10) | (16 * v11)));
        v14 = *v12;
        v13 = v12[1];

        v15 = sub_195FA0888();
        v16 = [a1 fileExistsAtPath_];

        if (v16)
        {
          v17 = sub_195FA0888();

          v26[0] = 0;
          v18 = type metadata accessor for AuditedFileManager();
          v25.receiver = a1;
          v25.super_class = v18;
          v19 = objc_msgSendSuper2(&v25, sel_removeItemAtPath_error_, v17, v26);

          if (!v19)
          {
            v23 = v26[0];
            sub_195FA0328();

            swift_willThrow();

            goto LABEL_15;
          }

          v20 = v26[0];
          v9 = v10;
          if (!v7)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v9 = v10;
          if (!v7)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v10 = v9;
      }
    }
  }

LABEL_15:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_195F3B598(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v22[2] = a1;
  v5 = v4;
  v22[1] = a2;
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = sub_195FA0478();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v5 temporaryDirectory];
  sub_195FA0428();

  v14 = sub_195FA0398();
  v15 = *(v9 + 8);
  v15(v12, v8);
  v23[0] = 0;
  v16 = [v5 URLForDirectory:99 inDomain:1 appropriateForURL:v14 create:1 error:v23];

  v17 = v23[0];
  if (v16)
  {
    sub_195FA0428();
    v18 = v17;

    sub_195FA03A8();
    if (a3)
    {
      sub_195FA03B8();
    }

    v19 = v22[3];
    sub_195F416CC(a4, 0);
    if (v19)
    {
      v15(a4, v8);
    }
  }

  else
  {
    v20 = v23[0];
    sub_195FA0328();

    swift_willThrow();
  }

  v21 = *MEMORY[0x1E69E9840];
}

id sub_195F3B7B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = sub_195F3E058();
  v10 = sub_195FA0888();
  if (a4 >> 60 == 15)
  {
    v11 = 0;
    if (a5)
    {
LABEL_3:
      type metadata accessor for FileAttributeKey(0);
      sub_195F3ECD8();
      v12 = sub_195FA07E8();
      goto LABEL_6;
    }
  }

  else
  {
    v11 = sub_195FA04B8();
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  v18.receiver = v6;
  v18.super_class = type metadata accessor for AuditedFileManager();
  v13 = objc_msgSendSuper2(&v18, sel_createFileAtPath_contents_attributes_, v10, v11, v12);

  v14 = sub_195F3E058();
  v15 = *&v6[OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock];
  v16 = *(v15 + 16);

  os_unfair_lock_lock(v16);
  if (*(v14 + 16) <= *(v9 + 16) >> 3)
  {
    sub_195F3E63C(v14);
  }

  else
  {
    v9 = sub_195F3E768(v14, v9);
  }

  swift_beginAccess();
  sub_195F3DAEC(v9);
  swift_endAccess();
  os_unfair_lock_unlock(*(v15 + 16));

  return v13;
}

uint64_t sub_195F3BA78(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  v19[3] = *MEMORY[0x1E69E9840];
  sub_195FA0448();
  v7 = sub_195F3E058();
  v8 = sub_195FA0398();
  if (a3)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_195F3ECD8();
    a3 = sub_195FA07E8();
  }

  v19[0] = 0;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for AuditedFileManager();
  v9 = objc_msgSendSuper2(&v18, sel_createDirectoryAtURL_withIntermediateDirectories_attributes_error_, v8, a2 & 1, a3, v19);

  if (v9)
  {
    v10 = v19[0];
    v11 = sub_195F3E058();

    v12 = *&v4[OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock];
    v13 = *(v12 + 16);

    os_unfair_lock_lock(v13);
    if (*(v11 + 16) <= v7[2] >> 3)
    {
      v19[0] = v7;
      sub_195F3E63C(v11);

      v14 = v19[0];
    }

    else
    {
      v14 = sub_195F3E768(v11, v7);
    }

    swift_beginAccess();
    sub_195F3DAEC(v14);
    swift_endAccess();
    os_unfair_lock_unlock(*(v12 + 16));
  }

  else
  {
    v15 = v19[0];

    sub_195FA0328();

    result = swift_willThrow();
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195F3BE44(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v5 = v4;
  v20[3] = *MEMORY[0x1E69E9840];
  v8 = sub_195F3E058();
  v9 = sub_195FA0888();
  if (a4)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_195F3ECD8();
    a4 = sub_195FA07E8();
  }

  v20[0] = 0;
  v19.receiver = v5;
  v19.super_class = type metadata accessor for AuditedFileManager();
  v10 = objc_msgSendSuper2(&v19, sel_createDirectoryAtPath_withIntermediateDirectories_attributes_error_, v9, a3 & 1, a4, v20);

  if (v10)
  {
    v11 = v20[0];
    v12 = sub_195F3E058();
    v13 = *&v5[OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock];
    v14 = *(v13 + 16);

    os_unfair_lock_lock(v14);
    if (*(v12 + 16) <= v8[2] >> 3)
    {
      v20[0] = v8;
      sub_195F3E63C(v12);

      v15 = v20[0];
    }

    else
    {
      v15 = sub_195F3E768(v12, v8);
    }

    swift_beginAccess();
    sub_195F3DAEC(v15);
    swift_endAccess();
    os_unfair_lock_unlock(*(v13 + 16));
  }

  else
  {
    v16 = v20[0];

    sub_195FA0328();

    result = swift_willThrow();
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195F3C148()
{
  v2 = v0;
  sub_195FA0448();
  v3 = sub_195F3E058();
  sub_195F3C2A8(v0);
  if (v1)
  {
  }

  else
  {
    v5 = sub_195F3E058();

    v6 = *&v2[OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock];
    v7 = *(v6 + 16);

    os_unfair_lock_lock(v7);
    if (*(v3 + 16) <= *(v5 + 16) >> 3)
    {
      sub_195F3E63C(v3);

      v8 = v5;
    }

    else
    {
      v8 = sub_195F3E768(v3, v5);
    }

    swift_beginAccess();
    sub_195F3E63C(v8);
    swift_endAccess();

    os_unfair_lock_unlock(*(v6 + 16));
  }
}

id sub_195F3C2A8(void *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = sub_195FA0398();
  v7[0] = 0;
  v6.receiver = a1;
  v6.super_class = type metadata accessor for AuditedFileManager();
  LODWORD(a1) = objc_msgSendSuper2(&v6, sel_removeItemAtURL_error_, v2, v7);

  if (a1)
  {
    result = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_195FA0328();

    result = swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195F3C4C0()
{
  v2 = v0;
  v3 = sub_195F3E058();
  sub_195F3C5FC(v0);
  if (v1)
  {
  }

  v5 = sub_195F3E058();
  v6 = *&v2[OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock];
  v7 = *(v6 + 16);

  os_unfair_lock_lock(v7);
  if (*(v3 + 16) <= *(v5 + 16) >> 3)
  {
    sub_195F3E63C(v3);

    v8 = v5;
  }

  else
  {
    v8 = sub_195F3E768(v3, v5);
  }

  swift_beginAccess();
  sub_195F3E63C(v8);
  swift_endAccess();

  os_unfair_lock_unlock(*(v6 + 16));
}

id sub_195F3C5FC(void *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = sub_195FA0888();
  v8[0] = 0;
  v7.receiver = a1;
  v7.super_class = type metadata accessor for AuditedFileManager();
  v3 = objc_msgSendSuper2(&v7, sel_removeItemAtPath_error_, v2, v8);

  if (v3)
  {
    result = v8[0];
  }

  else
  {
    v5 = v8[0];
    sub_195FA0328();

    result = swift_willThrow();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195F3C7E4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = v3;
  sub_195FA0448();
  v7 = sub_195F3E058();
  sub_195FA0448();
  v8 = sub_195F3E058();
  sub_195F3CA50(v4, a1, a2, a3);
  if (v19)
  {
  }

  else
  {
    v10 = sub_195F3E058();

    v11 = OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock;
    v12 = *&v4[OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock];
    v13 = *(v12 + 16);

    os_unfair_lock_lock(v13);
    if (*(v10 + 16) <= *(v8 + 16) >> 3)
    {
      sub_195F3E63C(v10);

      v14 = v8;
    }

    else
    {
      v14 = sub_195F3E768(v10, v8);
    }

    swift_beginAccess();
    sub_195F3DAEC(v14);
    swift_endAccess();
    os_unfair_lock_unlock(*(v12 + 16));

    v15 = sub_195F3E058();

    v16 = *&v4[v11];
    v17 = *(v16 + 16);

    os_unfair_lock_lock(v17);
    if (*(v7 + 16) <= *(v15 + 16) >> 3)
    {
      sub_195F3E63C(v7);

      v18 = v15;
    }

    else
    {
      v18 = sub_195F3E768(v7, v15);
    }

    swift_beginAccess();
    sub_195F3E63C(v18);
    swift_endAccess();

    os_unfair_lock_unlock(*(v16 + 16));
  }
}

id sub_195F3CA50(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = sub_195FA0398();
  v7 = sub_195FA0398();
  v12[0] = 0;
  v11.receiver = a1;
  v11.super_class = type metadata accessor for AuditedFileManager();
  LODWORD(a4) = objc_msgSendSuper2(&v11, *a4, v6, v7, v12);

  if (a4)
  {
    result = v12[0];
  }

  else
  {
    v9 = v12[0];
    sub_195FA0328();

    result = swift_willThrow();
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195F3CB48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v8 = sub_195FA0478();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19[-v14];
  sub_195FA0428();
  sub_195FA0428();
  v16 = a1;
  sub_195F3C7E4(v15, v13, a6);

  v17 = *(v9 + 8);
  v17(v13, v8);
  v17(v15, v8);
  return 1;
}

uint64_t sub_195F3CD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = v5;
  v13 = sub_195F3E058();
  v14 = a1;
  v15 = sub_195F3E058();
  sub_195F3CF68(v8, v14, a2, a3, a4, a5);
  if (v6)
  {
  }

  else
  {
    v25 = v13;
    v17 = sub_195F3E058();
    v24 = OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock;
    v18 = *&v8[OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock];
    v19 = *(v18 + 16);

    os_unfair_lock_lock(v19);
    if (*(v17 + 16) <= *(v15 + 16) >> 3)
    {
      sub_195F3E63C(v17);
    }

    else
    {
      v15 = sub_195F3E768(v17, v15);
    }

    swift_beginAccess();
    sub_195F3DAEC(v15);
    swift_endAccess();
    os_unfair_lock_unlock(*(v18 + 16));

    v20 = sub_195F3E058();
    v21 = *&v8[v24];
    v22 = *(v21 + 16);

    os_unfair_lock_lock(v22);
    if (*(v25 + 16) <= *(v20 + 16) >> 3)
    {
      sub_195F3E63C(v25);

      v23 = v20;
    }

    else
    {
      v23 = sub_195F3E768(v25, v20);
    }

    swift_beginAccess();
    sub_195F3E63C(v23);
    swift_endAccess();

    os_unfair_lock_unlock(*(v21 + 16));
  }
}

id sub_195F3CF68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = sub_195FA0888();
  v9 = sub_195FA0888();
  v15[0] = 0;
  v14.receiver = a1;
  v14.super_class = type metadata accessor for AuditedFileManager();
  v10 = objc_msgSendSuper2(&v14, *a6, v8, v9, v15);

  if (v10)
  {
    result = v15[0];
  }

  else
  {
    v12 = v15[0];
    sub_195FA0328();

    result = swift_willThrow();
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195F3D06C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v8 = sub_195FA08B8();
  v10 = v9;
  v11 = sub_195FA08B8();
  v13 = v12;
  v14 = a1;
  sub_195F3CD28(v8, v10, v11, v13, a6);

  return 1;
}

uint64_t sub_195F3D14C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, char *, uint64_t)@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v88 = a2;
  LODWORD(v85) = a4;
  v82 = a5;
  v93[3] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDAC8, &unk_195FACC70);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v78 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v78 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v78 - v18;
  v20 = sub_195FA0478();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v83 = &v78 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v86 = &v78 - v32;
  v87 = v28;
  v33 = (v21 + 48);
  v84 = a3;
  if (a1 == 99)
  {
    v79 = v31;
    v83 = v29;
    sub_195F3ED30(a3, v19);
    v34 = *v33;
    if ((*v33)(v19, 1, v20) == 1)
    {
      v35 = [v89 temporaryDirectory];
      sub_195FA0428();

      if (v34(v19, 1, v20) != 1)
      {
        sub_195F3AE44(v19);
      }
    }

    else
    {
      (*(v21 + 32))(v86, v19, v20);
    }

    v37 = sub_195FA0448();
    v80 = sub_195F3E058();
    sub_195F3ED30(v84, v17);
    if (v34(v17, 1, v20) == 1)
    {
      v38 = 0;
    }

    else
    {
      v38 = sub_195FA0398();
      (*(v21 + 8))(v17, v20);
    }

    v93[0] = 0;
    v45 = type metadata accessor for AuditedFileManager();
    v46 = v89;
    v90.receiver = v89;
    v90.super_class = v45;
    v47 = objc_msgSendSuper2(&v90, sel_URLForDirectory_inDomain_appropriateForURL_create_error_, 99, v88, v38, v85 & 1, v93);

    v48 = v93[0];
    if (v47)
    {
      v85 = v37;
      v49 = v79;
      sub_195FA0428();
      v50 = v48;

      v51 = OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock;
      v52 = *&v46[OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock];
      v53 = *(v52 + 16);

      os_unfair_lock_lock(v53);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_195FAC070;
      *(inited + 32) = sub_195FA0448();
      *(inited + 40) = v55;
      swift_beginAccess();
      sub_195F3F6D4(inited);
      swift_setDeallocating();
      sub_195EC2148(inited + 32);
      swift_endAccess();
      os_unfair_lock_unlock(*(v52 + 16));

      v81 = v21;
      v56 = v89;
      v57 = v49;
      v58 = v87;
      v88 = *(v21 + 32);
      v88(v83, v57, v87);
      v59 = sub_195F3E058();

      v60 = *&v56[v51];
      v61 = *(v60 + 16);

      os_unfair_lock_lock(v61);
      if (*(v59 + 16) <= v80[2] >> 3)
      {
        v93[0] = v80;
        sub_195F3E63C(v59);

        v62 = v93[0];
      }

      else
      {
        v62 = sub_195F3E768(v59, v80);
      }

      swift_beginAccess();
      sub_195F3DAEC(v62);
      swift_endAccess();
      os_unfair_lock_unlock(*(v60 + 16));

      (*(v81 + 8))(v86, v58);
      result = v88(v82, v83, v58);
    }

    else
    {
      v65 = v93[0];

      sub_195FA0328();

      swift_willThrow();
      result = (*(v21 + 8))(v86, v87);
    }
  }

  else
  {
    v86 = v30;
    sub_195F3ED30(a3, v14);
    v80 = *v33;
    if ((v80)(v14, 1, v20) == 1)
    {
      v36 = 0;
    }

    else
    {
      v36 = sub_195FA0398();
      (*(v21 + 8))(v14, v20);
    }

    v93[0] = 0;
    v39 = type metadata accessor for AuditedFileManager();
    v92.receiver = v89;
    v92.super_class = v39;
    v40 = objc_msgSendSuper2(&v92, sel_URLForDirectory_inDomain_appropriateForURL_create_error_, a1, v88, v36, 0, v93);

    v41 = v93[0];
    if (v40)
    {
      v81 = v21;
      sub_195FA0428();
      v42 = v41;

      sub_195FA0448();
      v43 = v87;
      v79 = sub_195F3E058();
      sub_195F3ED30(v84, v11);
      if ((v80)(v11, 1, v43) == 1)
      {
        v44 = 0;
      }

      else
      {
        v44 = sub_195FA0398();
        (*(v81 + 8))(v11, v43);
      }

      v93[0] = 0;
      v66 = v89;
      v91.receiver = v89;
      v91.super_class = v39;
      v67 = objc_msgSendSuper2(&v91, sel_URLForDirectory_inDomain_appropriateForURL_create_error_, a1, v88, v44, v85 & 1, v93);

      v68 = v93[0];
      if (v67)
      {
        sub_195FA0428();
        v69 = v68;

        v70 = sub_195F3E058();

        v71 = *&v66[OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock];
        v72 = *(v71 + 16);

        os_unfair_lock_lock(v72);
        if (*(v70 + 16) <= v79[2] >> 3)
        {
          v93[0] = v79;
          sub_195F3E63C(v70);

          v73 = v93[0];
        }

        else
        {
          v73 = sub_195F3E768(v70, v79);
        }

        v75 = v87;
        swift_beginAccess();
        sub_195F3DAEC(v73);
        swift_endAccess();
        os_unfair_lock_unlock(*(v71 + 16));

        v76 = v81;
        (*(v81 + 8))(v83, v75);
        result = (*(v76 + 32))(v82, v86, v75);
      }

      else
      {
        v74 = v93[0];

        sub_195FA0328();

        swift_willThrow();
        result = (*(v81 + 8))(v83, v87);
      }
    }

    else
    {
      v63 = v93[0];
      sub_195FA0328();

      result = swift_willThrow();
    }
  }

  v77 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195F3DAEC(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_195EC1FF8(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
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
      goto LABEL_9;
    }
  }
}

uint64_t sub_195F3DBF0(uint64_t a1)
{
  v2 = sub_195FA0478();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v24 - v9;
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = v24 - v12;
  v14 = 0;
  v25 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v24[1] = v3 + 32;
  v24[2] = v3 + 16;
  v24[0] = v3 + 8;
  if ((v19 & v15) != 0)
  {
    do
    {
      v22 = v14;
LABEL_9:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v3 + 16))(v13, *(v25 + 48) + *(v3 + 72) * (v23 | (v22 << 6)), v2);
      (*(v3 + 32))(v7, v13, v2);
      sub_195F6B618(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v20);
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_195F3E058()
{
  v1 = v0;
  v2 = sub_195FA0358();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDAC8, &unk_195FACC70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v49 - v9;
  v11 = sub_195FA0478();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v16;
  v56 = v15;
  (*(v16 + 56))(v10, 1, 1);
  (*(v3 + 104))(v6, *MEMORY[0x1E6968F70], v2);

  sub_195FA0458();
  v54 = v14;
  result = sub_195F3F4FC();
  v18 = result;
  v19 = *(result + 16);
  if (v19)
  {
    v20 = 0;
    v21 = (result + 40);
    v22 = &selRef_appendString_counterpart_;
    while (1)
    {
      if (v20 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v23 = *(v21 - 1);
      v24 = *v21;

      v25 = sub_195FA0888();
      v26 = [v1 fileExistsAtPath_];

      if (v26)
      {
        break;
      }

      ++v20;
      v21 += 2;
      if (v19 == v20)
      {
        v20 = v19;
        break;
      }
    }

    if (*(v18 + 16) < v19)
    {
      goto LABEL_26;
    }

    if (v20 == v19)
    {
      goto LABEL_9;
    }

    v28 = v18 + 40;
    v50 = v19 - 1;
    v27 = MEMORY[0x1E69E7CC0];
    v29 = v20;
    v51 = v18 + 40;
    v52 = v18;
    v57 = v20;
LABEL_11:
    v53 = v27;
    v30 = (v28 + 16 * v29);
    v31 = v29;
    while (v29 >= v20 && v31 < v19)
    {
      v32 = v19;
      v33 = *(v30 - 1);
      v34 = *v30;
      v35 = v31 + 1;

      v36 = sub_195FA0888();
      v37 = v22[172];
      v38 = v1;
      v39 = [v1 v37];

      if ((v39 & 1) == 0)
      {
        v49 = v31;
        v41 = v53;
        result = swift_isUniquelyReferenced_nonNull_native();
        v42 = v41;
        v58 = v41;
        v19 = v32;
        if ((result & 1) == 0)
        {
          result = sub_195F391DC(0, *(v41 + 16) + 1, 1);
          v42 = v58;
        }

        v1 = v38;
        v43 = v33;
        v29 = v31 + 1;
        v45 = *(v42 + 16);
        v44 = *(v42 + 24);
        v46 = v45 + 1;
        v22 = &selRef_appendString_counterpart_;
        if (v45 >= v44 >> 1)
        {
          v53 = v45 + 1;
          result = sub_195F391DC((v44 > 1), v45 + 1, 1);
          v43 = v33;
          v46 = v53;
          v42 = v58;
        }

        *(v42 + 16) = v46;
        v47 = v42 + 16 * v45;
        *(v47 + 32) = v43;
        *(v47 + 40) = v34;
        v28 = v51;
        v27 = v42;
        v20 = v57;
        if (v50 != v49)
        {
          goto LABEL_11;
        }

        goto LABEL_23;
      }

      v30 += 2;
      ++v31;
      v19 = v32;
      v40 = v32 == v35;
      v1 = v38;
      v22 = &selRef_appendString_counterpart_;
      v20 = v57;
      if (v40)
      {
        v27 = v53;
        goto LABEL_23;
      }
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_9:
    v27 = MEMORY[0x1E69E7CC0];
LABEL_23:

    v48 = sub_195EC1F60(v27);

    (*(v55 + 8))(v54, v56);
    return v48;
  }

  return result;
}

id AuditedFileManager.init()()
{
  v1 = OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock;
  type metadata accessor for UnfairLock();
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *v3 = 0;
  *(v2 + 16) = v3;
  *&v0[v1] = v2;
  *&v0[OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock_urls] = MEMORY[0x1E69E7CD0];
  v5.receiver = v0;
  v5.super_class = type metadata accessor for AuditedFileManager();
  return objc_msgSendSuper2(&v5, sel_init);
}

id AuditedFileManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AuditedFileManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_195F3E63C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_195F3EDA0(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_195F3E768(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x1E69E7CD0];
LABEL_53:
    v50 = *MEMORY[0x1E69E9840];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_195FA1398();

    sub_195FA0958();
    v24 = sub_195FA13E8();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_195FA12B8() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x1EEE9AC00](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_195F3F2D8(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            sub_195FA1398();

            sub_195FA0958();
            v43 = sub_195FA13E8();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_195FA12B8() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_195F3F0A0(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x19A8C5B70](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_195EB9E70();
    goto LABEL_53;
  }

  result = MEMORY[0x19A8C5B70](v53, -1, -1);
  __break(1u);
  return result;
}

unint64_t sub_195F3ECD8()
{
  result = qword_1EAEEBB28;
  if (!qword_1EAEEBB28)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBB28);
  }

  return result;
}

uint64_t sub_195F3ED30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDAC8, &unk_195FACC70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_195F3EDA0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_195FA1398();
  sub_195FA0958();
  v7 = sub_195FA13E8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_195FA12B8() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_195F6D0BC();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_195F3EEDC(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_195F3EEDC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_195FA0E58();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_195FA1398();

        sub_195FA0958();
        v15 = sub_195FA13E8();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_195F3F0A0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_195F3F2D8(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_195FA1398();

        sub_195FA0958();
        v20 = sub_195FA13E8();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_195FA12B8() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

uint64_t sub_195F3F2D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDAF8, &unk_195FACCD0);
  result = sub_195FA0EF8();
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
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_195FA1398();

    sub_195FA0958();
    result = sub_195FA13E8();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_195F3F4FC()
{
  v0 = sub_195FA0368();
  v1 = v0[2];
  v2 = v1 != 0;
  if (v1 > 1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    result = sub_195F391DC(0, (v1 - v2) & ~((v1 - v2) >> 63), 0);
    if (((v1 - v2) & 0x8000000000000000) == 0)
    {
      if (!v0[2])
      {
LABEL_16:
        __break(1u);
        return result;
      }

      v3 = v15;
      v5 = 2 * v2 + 3;
      while (v0[2] > v2)
      {
        v6 = v0[4];
        v7 = v0[5];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDAE8, &qword_195FACCC8);
        sub_195F3F8BC();
        v8 = sub_195FA0828();
        v10 = v9;

        MEMORY[0x19A8C3F70](v8, v10);

        v11 = v6;
        v13 = *(v15 + 16);
        v12 = *(v15 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_195F391DC((v12 > 1), v13 + 1, 1);
        }

        *(v15 + 16) = v13 + 1;
        v14 = v15 + 16 * v13;
        *(v14 + 32) = v11;
        *(v14 + 40) = v7;
        if (v2 >= v1)
        {
          goto LABEL_14;
        }

        ++v2;
        v5 += 2;
        if (v1 == v2)
        {

          return v3;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_195F3F6D4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_195EC1FF8(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

unint64_t sub_195F3F8BC()
{
  result = qword_1EAEEDAF0;
  if (!qword_1EAEEDAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAEEDAE8, &qword_195FACCC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDAF0);
  }

  return result;
}

uint64_t CHSFrozenIntent.init(_:_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a5;
  a6[1] = result;
  a6[2] = a2;
  a6[3] = a3;
  a6[4] = a4;
  return result;
}

uint64_t CHSFrozenIntent.init(reference:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 stableHash];
  v5 = sub_195F3FAC8();
  if (v6 >> 60 == 15)
  {
    v9 = [a1 intent];
    v14 = sub_195F3FBC4();
    v16 = v15;
    v17 = sub_195F3FE20();
    v19 = v18;

    sub_195EC0890(v14, v16);
    result = sub_195EC5A34(v17, v19);
    *a2 = 0;
    a2[1] = 0;
    a2[3] = 0;
    a2[4] = 0;
    a2[2] = 0xF000000000000000;
  }

  else
  {
    v10 = v7;
    v11 = v8;
    v12 = v5;
    v13 = v6;

    sub_195EC08E4(v12, v13);
    sub_195F40008(v10, v11);
    sub_195EC5A34(v10, v11);
    sub_195EC0890(v12, v13);
    *a2 = v4;
    a2[1] = v12;
    a2[2] = v13;
    a2[3] = v10;
    a2[4] = v11;
    sub_195EC08E4(v12, v13);
    sub_195F40008(v10, v11);
    sub_195EC0890(v12, v13);

    return sub_195EC5A34(v10, v11);
  }

  return result;
}

uint64_t sub_195F3FAC8()
{
  v1 = v0;
  v2 = [v0 _partialConfigData];
  if (v2)
  {
    v3 = v2;
    v4 = sub_195FA04D8();
    v6 = v5;

    v7 = [v1 _partialSchemaData];
    if (v7)
    {
      v8 = v7;
      sub_195FA04D8();

      return v4;
    }

    sub_195EC0890(v4, v6);
  }

  v9 = [v1 _intentData];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v4 = sub_195FA04D8();

  return v4;
}

id sub_195F3FBC4()
{
  v15[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = v0;
  v3 = v2;
  if (!v1)
  {
    v5 = v2;
    goto LABEL_10;
  }

  result = INIntentWithTypedIntent();
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = result;

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
LABEL_10:
    v11 = [v5 _backingStoreData];
    if (!v11)
    {
      goto LABEL_13;
    }

    v12 = v11;
    sub_195FA0808();

    LODWORD(v15[0]) = sub_195FA06C8();
    v3 = sub_195FA07E8();

    NSData = OPACKEncoderCreateNSData(v3);

    if (!NSData)
    {
LABEL_13:
      sub_195F36864();
      swift_allocError();
      *v13 = xmmword_195FACCE0;
      goto LABEL_14;
    }

LABEL_12:
    v3 = sub_195FA04D8();

LABEL_15:
    v14 = *MEMORY[0x1E69E9840];
    return v3;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  v7 = v3;
  if (!v6)
  {
    goto LABEL_7;
  }

  result = INIntentWithTypedIntent();
  if (result)
  {
    v8 = result;

    v7 = v8;
LABEL_7:
    v15[0] = 0;
    NSData = [objc_opt_self() _encodeToOPACK_error_];

    v10 = v15[0];
    if (!NSData)
    {
      v3 = v10;
      sub_195FA0328();

LABEL_14:
      swift_willThrow();

      goto LABEL_15;
    }

    goto LABEL_12;
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_195F3FE20()
{
  v17[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    v17[0] = 0;
    result = [v0 _copyWithoutBackingStoreData_];
    if (!result)
    {
      goto LABEL_3;
    }

    if (v17[0])
    {
    }

    else
    {
      v17[0] = 0;
      v3 = result;
      v4 = [result widgetPlistableRepresentation_];
      v5 = v17[0];
      if (v4)
      {
        v6 = v4;
        sub_195FA0808();
        v7 = v5;

        LODWORD(v17[0]) = sub_195FA06C8();
        v8 = sub_195FA07E8();

        NSData = OPACKEncoderCreateNSData(v8);

        if (NSData)
        {
          v10 = sub_195FA04D8();
          v12 = v11;
        }

        else
        {
          v10 = 0;
          v12 = 0xF000000000000000;
        }

        v15 = v17[0];
        v16 = sub_195FA06C8();

        if (v15 == v16)
        {
          if (v12 >> 60 != 15)
          {
            result = v10;
            goto LABEL_3;
          }
        }

        else
        {
          sub_195EC5A34(v10, v12);
        }
      }

      else
      {
        v13 = v17[0];
        v14 = sub_195FA0328();

        swift_willThrow();
      }
    }
  }

  result = 0;
LABEL_3:
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195F40008(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_195EC08E4(a1, a2);
  }

  return a1;
}

uint64_t CHSFrozenIntent.init(intent:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 _indexingHash];
  v5 = sub_195F3FBC4();
  v7 = v6;
  v8 = sub_195F3FE20();
  v10 = v9;

  sub_195EC08E4(v5, v7);
  sub_195F40008(v8, v10);
  sub_195EC0890(v5, v7);
  result = sub_195EC5A34(v8, v10);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v10;
  return result;
}

id CHSFrozenIntent.intent.getter()
{
  v5 = *v0;
  v6 = v0[1];
  v7 = *(v0 + 4);
  CHSFrozenIntent.referenceForRealization()(v7);
  v2 = v1;
  v3 = [v1 intent];

  return v3;
}

void __swiftcall CHSFrozenIntent.referenceForRealization()(CHSIntentReference *__return_ptr retstr)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[4];
  if (v5 >> 60 == 15)
  {
    v6 = objc_allocWithZone(CHSIntentReference);
    sub_195EC08E4(v3, v4);
    v7 = sub_195FA04B8();
    sub_195EC0890(v3, v4);
    [v6 initWithIntentData:v7 configData:0 schemaData:0 stableHash:v2];
  }

  else
  {
    v8 = v1[3];
    v9 = objc_allocWithZone(CHSIntentReference);
    sub_195F40008(v8, v5);
    sub_195EC08E4(v3, v4);
    v10 = sub_195FA04B8();
    sub_195EC0890(v3, v4);
    v11 = sub_195FA04B8();
    [v9 initWithIntentData:0 configData:v10 schemaData:v11 stableHash:v2];

    sub_195EC5A34(v8, v5);
  }
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CHSFrozenIntent.referenceForSerialization()(CHSIntentReference *__return_ptr retstr)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[4];
  if (v5 >> 60 == 15)
  {
    v6 = objc_allocWithZone(CHSIntentReference);
    sub_195EC08E4(v3, v4);
    v7 = sub_195FA04B8();
    sub_195EC0890(v3, v4);
    [v6 initWithIntentData:v7 configData:0 schemaData:0 stableHash:v2];
  }

  else
  {
    v8 = v1[3];
    v9 = objc_opt_self();
    v24 = v8;
    CHSFrozenIntent.referenceForRealization()(v10);
    v12 = v11;
    v13 = [v11 intent];

    v23 = 0;
    v14 = [v9 _encodeToOPACK_error_];

    v15 = v23;
    if (v14)
    {
      v16 = sub_195FA04D8();
      v18 = v17;

      v19 = objc_allocWithZone(CHSIntentReference);
      sub_195EC08E4(v16, v18);
      v20 = sub_195FA04B8();
      sub_195EC0890(v16, v18);
      [v19 initWithIntentData:v20 configData:0 schemaData:0 stableHash:v2];

      sub_195EC0890(v16, v18);
    }

    else
    {
      v21 = v15;
      sub_195FA0328();

      swift_willThrow();
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t CHSFrozenIntent.hash(into:)()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  result = MEMORY[0x19A8C4990](*v0);
  v6 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v6 != 2)
    {
      result = 0;
      goto LABEL_11;
    }

    v8 = *(v1 + 16);
    v7 = *(v1 + 24);
    result = v7 - v8;
    if (!__OFSUB__(v7, v8))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v6)
  {
    result = BYTE6(v3);
    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(v1), v1))
  {
    __break(1u);
    goto LABEL_25;
  }

  result = HIDWORD(v1) - v1;
LABEL_11:
  result = MEMORY[0x19A8C4970](result);
  if (v4 >> 60 == 15)
  {
    return sub_195FA13B8();
  }

  v9 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v2 = 0;
      goto LABEL_23;
    }

    v11 = *(v2 + 16);
    v10 = *(v2 + 24);
    v2 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      goto LABEL_23;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v2 = BYTE6(v4);
LABEL_23:
    sub_195FA13B8();
    return MEMORY[0x19A8C4970](v2);
  }

  if (!__OFSUB__(HIDWORD(v2), v2))
  {
    v2 = HIDWORD(v2) - v2;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t CHSFrozenIntent.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_195FA1398();
  CHSFrozenIntent.hash(into:)();
  return sub_195FA13E8();
}

id sub_195F40608()
{
  v5 = *v0;
  v6 = v0[1];
  v7 = *(v0 + 4);
  CHSFrozenIntent.referenceForRealization()(v7);
  v2 = v1;
  v3 = [v1 intent];

  return v3;
}

uint64_t sub_195F40668()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_195FA1398();
  CHSFrozenIntent.hash(into:)();
  return sub_195FA13E8();
}

uint64_t sub_195F406C0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_195FA1398();
  CHSFrozenIntent.hash(into:)();
  return sub_195FA13E8();
}

unint64_t freezeHomogeneousIntents(intents:)(unint64_t result)
{
  v2 = v1;
  if (result >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v21)
  {
    v28 = result & 0xC000000000000001;
    if ((result & 0xC000000000000001) != 0)
    {
      v22 = result;
      v5 = MEMORY[0x19A8C4520](0, result);
      v4 = v22;
      v24 = v22 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v24 = result & 0xFFFFFFFFFFFFFF8;
      if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v4 = result;
      v5 = *(result + 32);
    }

    v23 = v5;
    result = sub_195F3FE20();
    v29 = result;
    v7 = v6;
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v10 = v4;
    v26 = i;
    v27 = v4;
    v25 = v7;
    while (1)
    {
      if (v28)
      {
        result = MEMORY[0x19A8C4520](v8, v10);
      }

      else
      {
        if (v8 >= *(v24 + 16))
        {
          goto LABEL_21;
        }

        result = *(v10 + 8 * v8 + 32);
      }

      v11 = result;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v13 = sub_195F3FBC4();
      if (v2)
      {

        sub_195EC5A34(v29, v7);

        return v9;
      }

      v15 = v13;
      v16 = v14;
      sub_195F40008(v29, v7);
      v17 = [v11 _indexingHash];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_195F38A94(0, *(v9 + 2) + 1, 1, v9);
      }

      v19 = *(v9 + 2);
      v18 = *(v9 + 3);
      if (v19 >= v18 >> 1)
      {
        v9 = sub_195F38A94((v18 > 1), v19 + 1, 1, v9);
      }

      *(v9 + 2) = v19 + 1;
      v20 = &v9[40 * v19];
      *(v20 + 4) = v17;
      *(v20 + 5) = v15;
      *(v20 + 6) = v16;
      *(v20 + 7) = v29;
      v7 = v25;
      *(v20 + 8) = v25;
      ++v8;
      v10 = v27;
      v2 = 0;
      if (v12 == v26)
      {
        sub_195EC5A34(v29, v25);

        return v9;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v21 = result;
    i = sub_195FA0E88();
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t freezeHomegeneousIntents(references:)(uint64_t result)
{
  v2 = result;
  v3 = result >> 62;
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_50:
  result = sub_195FA0E88();
  v4 = result;
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x19A8C4520](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v5 = *(v2 + 32);
  }

  v6 = v5;
  CHSFrozenIntent.init(reference:)(v6, v62);
  if (v63 >> 60 == 15)
  {
    sub_195F36864();
    swift_allocError();
    *v7 = xmmword_195FACCE0;
    swift_willThrow();
    goto LABEL_8;
  }

  v52 = v6;
  v8 = v4;
  v10 = v62[0];
  v9 = v62[1];
  v12 = v64;
  v11 = v65;
  v56 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA48, &qword_195FACCF0);
  result = swift_allocObject();
  v13 = v56;
  *(result + 16) = xmmword_195FAC070;
  v53 = v10;
  v54 = v9;
  *(result + 32) = v10;
  *(result + 40) = v9;
  *(result + 48) = v56;
  *(result + 56) = v12;
  v60 = v11;
  *(result + 64) = v11;
  if (v8 < 1)
  {
    goto LABEL_55;
  }

  v1 = result;
  v14 = v8;
  if (!v3)
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  result = sub_195FA0E88();
  if (result < 1)
  {
LABEL_57:
    __break(1u);
    return result;
  }

  result = sub_195FA0E88();
  v13 = v56;
LABEL_15:
  if (result < v8)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    sub_195F41178(v53, v54, v13, v12, v11);
    if (v8 != 1)
    {
      sub_195F411D0();

      v15 = 1;
      do
      {
        v16 = v15 + 1;
        sub_195FA0F48();
        v15 = v16;
      }

      while (v8 != v16);
      if (!v3)
      {
        goto LABEL_21;
      }

LABEL_24:

      v51 = sub_195FA1078();
      v59 = v17;
      v2 = v18;
      v14 = v19 >> 1;
      goto LABEL_25;
    }
  }

  else
  {
    sub_195F41178(v53, v54, v13, v12, v11);
  }

  if (v3)
  {
    goto LABEL_24;
  }

LABEL_21:
  v51 = v2 & 0xFFFFFFFFFFFFFF8;
  v59 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v2 = 1;
LABEL_25:
  v20 = v11;
  if (v2 == v14)
  {
LABEL_26:
    swift_unknownObjectRelease();
    sub_195F4121C(v53, v54, v56, v12, v20);

    return v1;
  }

  v57 = v14;
  v58 = v11 >> 60;
  v61 = v12;
  while (1)
  {
    if (v2 >= v14)
    {
      __break(1u);
      goto LABEL_50;
    }

    v66 = v1;
    v21 = *(v59 + 8 * v2);
    v1 = v21;
    if (v58 > 0xE)
    {
      v22 = v21;
      goto LABEL_34;
    }

    sub_195F40008(v12, v20);
    v23 = v1;
    sub_195F40008(v12, v20);
    v24 = [v23 _partialConfigData];
    if (!v24)
    {
      break;
    }

    v25 = v20;
    v26 = v24;
    v3 = sub_195FA04D8();
    v28 = v27;

    sub_195EC08E4(v12, v25);
    v29 = [v23 stableHash];

    sub_195EC5A34(v12, v25);
LABEL_41:
    sub_195EC5A34(v12, v25);
    v39 = *(v66 + 2);
    v38 = *(v66 + 3);
    if (v39 >= v38 >> 1)
    {
      v66 = sub_195F38A94((v38 > 1), v39 + 1, 1, v66);
    }

    ++v2;

    v1 = v66;
    *(v66 + 2) = v39 + 1;
    v40 = &v1[40 * v39];
    *(v40 + 4) = v29;
    *(v40 + 5) = v3;
    *(v40 + 6) = v28;
    *(v40 + 7) = v12;
    *(v40 + 8) = v25;
    v14 = v57;
    v20 = v60;
    v12 = v61;
    if (v57 == v2)
    {
      goto LABEL_26;
    }
  }

  sub_195EC5A34(v12, v20);
LABEL_34:
  v29 = [v1 stableHash];
  v30 = [v1 _partialConfigData];
  if (v30)
  {
    v31 = v30;
    v3 = sub_195FA04D8();
    v28 = v32;

    v33 = [v1 _partialSchemaData];
    if (v33)
    {
      v34 = v33;
      v12 = sub_195FA04D8();
      v25 = v35;

LABEL_40:
      sub_195EC5A34(v61, v20);

      sub_195EC08E4(v3, v28);
      sub_195F40008(v12, v25);
      sub_195EC5A34(v12, v25);
      sub_195EC0890(v3, v28);
      sub_195EC08E4(v3, v28);
      sub_195F40008(v12, v25);
      sub_195EC0890(v3, v28);
      goto LABEL_41;
    }

    sub_195EC0890(v3, v28);
  }

  v36 = [v1 _intentData];
  if (v36)
  {
    v34 = v36;
    v3 = sub_195FA04D8();
    v28 = v37;

    v12 = 0;
    v25 = 0xF000000000000000;
    goto LABEL_40;
  }

  v41 = [v1 intent];
  v42 = sub_195F3FBC4();
  if (v55)
  {

    sub_195EC5A34(v12, v20);
  }

  else
  {
    v44 = v42;
    v45 = v43;
    v46 = sub_195F3FE20();
    v48 = v47;
    sub_195EC5A34(v12, v60);

    sub_195EC0890(v44, v45);
    v49 = v46;
    v20 = v60;
    sub_195EC5A34(v49, v48);
  }

  sub_195F36864();
  swift_allocError();
  *v50 = xmmword_195FACCE0;
  swift_willThrow();

  sub_195F4121C(v53, v54, v56, v12, v20);
  swift_unknownObjectRelease();
  v6 = v52;
LABEL_8:

  return v1;
}

uint64_t _s14ChronoServices15CHSFrozenIntentV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  result = a2[3];
  v9 = a2[4];
  v10 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v10)
    {
      v2 = BYTE6(v3);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v10 != 2)
  {
    v2 = 0;
    goto LABEL_12;
  }

  v13 = v2 + 16;
  v11 = *(v2 + 16);
  v12 = *(v13 + 8);
  v14 = __OFSUB__(v12, v11);
  v2 = v12 - v11;
  if (v14)
  {
    __break(1u);
LABEL_9:
    v14 = __OFSUB__(HIDWORD(v2), v2);
    LODWORD(v2) = HIDWORD(v2) - v2;
    if (v14)
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v2 = v2;
  }

LABEL_12:
  v15 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v15)
    {
      if (v2 != BYTE6(v7))
      {
        return 0;
      }

      goto LABEL_24;
    }

    v14 = __OFSUB__(HIDWORD(v6), v6);
    v20 = HIDWORD(v6) - v6;
    if (!v14)
    {
      if (v2 != v20)
      {
        return 0;
      }

      goto LABEL_24;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v15 == 2)
  {
    v18 = v6 + 16;
    v16 = *(v6 + 16);
    v17 = *(v18 + 8);
    v14 = __OFSUB__(v17, v16);
    v19 = v17 - v16;
    if (!v14)
    {
      if (v2 != v19)
      {
        return 0;
      }

      goto LABEL_24;
    }

    goto LABEL_54;
  }

  if (v2)
  {
    return 0;
  }

LABEL_24:
  v21 = v5 >> 60;
  if (v5 >> 60 != 15)
  {
    v22 = v5 >> 62;
    if ((v5 >> 62) <= 1)
    {
      if (!v22)
      {
        v23 = BYTE6(v5);
        goto LABEL_37;
      }

LABEL_34:
      v14 = __OFSUB__(HIDWORD(v4), v4);
      v26 = HIDWORD(v4) - v4;
      if (!v14)
      {
        v23 = v26;
        goto LABEL_37;
      }

LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (v22 == 2)
    {
      v25 = v4 + 16;
      v4 = *(v4 + 16);
      v24 = *(v25 + 8);
      v23 = v24 - v4;
      if (__OFSUB__(v24, v4))
      {
        __break(1u);
        goto LABEL_34;
      }
    }

    else
    {
      v23 = 0;
    }

LABEL_37:
    if (v9 >> 60 == 15)
    {
      return 0;
    }

    goto LABEL_40;
  }

  if (v9 >> 60 == 15)
  {
    return 1;
  }

  v23 = 0;
LABEL_40:
  v27 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v27 != 2)
    {
      sub_195EC5A34(result, v9);
      v28 = 0;
      goto LABEL_50;
    }

    v30 = *(result + 16);
    v29 = *(result + 24);
    v14 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (!v14)
    {
      goto LABEL_50;
    }

    __break(1u);
LABEL_47:
    LODWORD(v28) = HIDWORD(result) - result;
    if (!__OFSUB__(HIDWORD(result), result))
    {
      v28 = v28;
      goto LABEL_50;
    }

LABEL_57:
    __break(1u);
    return result;
  }

  if (v27)
  {
    goto LABEL_47;
  }

  sub_195EC5A34(result, v9);
  v28 = BYTE6(v9);
LABEL_50:
  result = 0;
  if (v21 <= 0xE && v23 == v28)
  {
    return 1;
  }

  return result;
}

void sub_195F41178(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3 >> 60 != 15)
  {
    sub_195EC08E4(a2, a3);

    sub_195F40008(a4, a5);
  }
}

unint64_t sub_195F411D0()
{
  result = qword_1EAEEC148;
  if (!qword_1EAEEC148)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAEEC148);
  }

  return result;
}

void sub_195F4121C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3 >> 60 != 15)
  {
    sub_195EC0890(a2, a3);

    sub_195EC5A34(a4, a5);
  }
}

unint64_t sub_195F41278()
{
  result = qword_1EAEEDB00;
  if (!qword_1EAEEDB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDB00);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
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

uint64_t sub_195F41338(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 40))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_195F4138C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t OPACKEncoderCreateNSData(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x19A8C4E60]();

  return v2;
}

uint64_t CHSExtensionIdentity.containerIdentity.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = (v1 + OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier);
    swift_beginAccess();
    v8 = *v6;
    v7 = v6[1];
  }

  else
  {
    v5 = 0;
    v8 = 0;
    v9 = 0;
  }

  *a1 = v5;
  a1[1] = v4;
  a1[2] = v8;
  a1[3] = v9;
}

uint64_t DeviceScopedIdentity<>.containerBundleIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *DeviceScopedIdentity<>.init(containerBundleIdentifier:deviceID:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = result[1];
  *a4 = *result;
  a4[1] = v4;
  a4[2] = a2;
  a4[3] = a3;
  return result;
}

void sub_195F416CC(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_195FA01A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_195FA0448();
  v10 = sub_195FA0888();

  if (a2)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_195F41D88(&qword_1EAEEBB28, type metadata accessor for FileAttributeKey);
    a2 = sub_195FA07E8();
  }

  v11 = [v3 createFileAtPath:v10 contents:0 attributes:a2];

  if ((v11 & 1) == 0)
  {
    MEMORY[0x19A8C3C80]();
    v12 = sub_195FA0698();
    if ((v12 & 0x100000000) != 0)
    {
      v13 = 45;
    }

    else
    {
      v13 = v12;
    }

    v14[3] = v13;
    sub_195F4BFD8(MEMORY[0x1E69E7CC0]);
    sub_195F41D88(&unk_1EAEEBCD8, MEMORY[0x1E6967EB8]);
    sub_195FA0308();
    sub_195FA0198();
    (*(v6 + 8))(v9, v5);
    swift_willThrow();
  }
}

uint64_t sub_195F418E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for PrimitiveBox();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  swift_getWitnessTable();
  result = URL.extendedAttribute<A>(named:of:)(a1, a2, v9);
  if (!v4)
  {
    return (*(*(a3 - 8) + 32))(a4, v12, a3);
  }

  return result;
}

uint64_t sub_195F41A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a4;
  v31 = a2;
  v32 = a3;
  v33 = a1;
  v28[1] = a6;
  v28[2] = a7;
  v8 = type metadata accessor for PrimitiveBox();
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v28 - v10;
  v12 = sub_195FA0DB8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v28 - v16;
  v18 = *(a5 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v15);
  v22 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v28 - v23;
  (*(v13 + 16))(v17, v30, v12);
  if ((*(v18 + 48))(v17, 1, a5) == 1)
  {
    v25 = (*(v13 + 8))(v17, v12);
    MEMORY[0x1EEE9AC00](v25);
    v26 = v32;
    v28[-2] = v31;
    v28[-1] = v26;
    return sub_195FA0418();
  }

  else
  {
    (*(v18 + 32))(v24, v17, a5);
    (*(v18 + 16))(v22, v24, a5);
    PrimitiveBox.init(wrapped:)(v22, a5, v11);
    swift_getWitnessTable();
    URL.setExtendedAttribute<A>(named:value:)(v31, v32, v11, v8);
    (*(v29 + 8))(v11, v8);
    return (*(v18 + 8))(v24, a5);
  }
}

uint64_t sub_195F41D88(unint64_t *a1, void (*a2)(uint64_t))
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

void __swiftcall CHSActivityService.init()(CHSActivityService *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id CHSActivityService.init()()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v0 initWithConnection_];

  return v2;
}

char *sub_195F41ECC(void *a1)
{
  v3 = sub_195FA0778();
  v4 = *(v3 - 8);
  v44 = v3;
  v45 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_195FA0CD8();
  v7 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = sub_195FA07D8();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_195FA0CF8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR___CHSActivityService_queue_activityServiceAssertion] = 0;
  *&v1[OBJC_IVAR___CHSActivityService_connection] = a1;
  v17 = objc_opt_self();
  v39 = a1;
  v18 = [v17 weakObjectsHashTable];
  *&v1[OBJC_IVAR___CHSActivityService_queue_subscriptions] = v18;
  *&v1[OBJC_IVAR___CHSActivityService_connectionClient] = [objc_allocWithZone(_s16ConnectionClientCMa()) init];
  sub_195EB4B30(0, &qword_1EAEEC590, 0x1E69E9610);
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8098], v12);
  sub_195FA0798();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_195EBDB58(&qword_1EAEEC5A0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE3A0, &unk_195FAC790);
  sub_195F43EC8(&qword_1EAEEC5B0, &unk_1EAEEE3A0, &unk_195FAC790);
  sub_195FA0E38();
  v19 = v11;
  *&v1[OBJC_IVAR___CHSActivityService_queue] = sub_195FA0D38();
  v1[OBJC_IVAR___CHSActivityService_queue_invalidated] = 0;
  v48.receiver = v1;
  v48.super_class = CHSActivityService;
  v20 = objc_msgSendSuper2(&v48, sel_init);
  v21 = OBJC_IVAR___CHSActivityService_connectionClient;
  v22 = *&v20[OBJC_IVAR___CHSActivityService_connectionClient];
  v23 = v20;
  v24 = v39;
  [v39 addClient_];
  v25 = *&v20[v21];
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = &v25[OBJC_IVAR____TtCE14ChronoServicesCSo18CHSActivityService16ConnectionClient_activityPayloadUpdateHandler];
  v28 = *&v25[OBJC_IVAR____TtCE14ChronoServicesCSo18CHSActivityService16ConnectionClient_activityPayloadUpdateHandler];
  v29 = *&v25[OBJC_IVAR____TtCE14ChronoServicesCSo18CHSActivityService16ConnectionClient_activityPayloadUpdateHandler + 8];
  *v27 = sub_195F43F74;
  v27[1] = v26;
  v30 = v25;

  sub_195EB6E70(v28);

  v31 = *&v23[OBJC_IVAR___CHSActivityService_queue];
  v32 = swift_allocObject();
  *(v32 + 16) = v23;
  aBlock[4] = sub_195F43F7C;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_39;
  v33 = _Block_copy(aBlock);
  v34 = v31;
  v35 = v19;
  sub_195FA0798();
  v46 = MEMORY[0x1E69E7CC0];
  sub_195EBDB58(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195F43EC8(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  v36 = v41;
  v37 = v44;
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v35, v36, v33);
  _Block_release(v33);

  (*(v45 + 8))(v36, v37);
  (*(v42 + 8))(v35, v43);

  return v23;
}

uint64_t sub_195F424D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_195FA0778();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_195FA07D8();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = *(result + OBJC_IVAR___CHSActivityService_queue);
    v18 = result;
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = a1;
    v19[4] = a2;
    v19[5] = a3;
    v19[6] = a4;
    aBlock[4] = sub_195F43FA0;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195EBDBE8;
    aBlock[3] = &block_descriptor_45;
    v20 = _Block_copy(aBlock);
    v22 = v18;

    sub_195FA0798();
    v25 = MEMORY[0x1E69E7CC0];
    sub_195EBDB58(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
    sub_195F43EC8(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
    sub_195FA0E38();
    MEMORY[0x19A8C42F0](0, v16, v12, v20);
    _Block_release(v20);
    (*(v9 + 8))(v12, v8);
    (*(v13 + 8))(v16, v24);
  }

  return result;
}

uint64_t sub_195F427EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_195FA0778();
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_195FA07D8();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v4 + OBJC_IVAR___CHSActivityService_queue);
  BSDispatchQueueAssert();
  v18 = [*(v4 + OBJC_IVAR___CHSActivityService_queue_subscriptions) allObjects];
  type metadata accessor for CHSActivitySubscription();
  v19 = sub_195FA0B38();

  if (qword_1EAEED020 != -1)
  {
    swift_once();
  }

  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = a1;
  v20[4] = a2;
  v20[5] = a3;
  v20[6] = a4;
  aBlock[4] = sub_195F43FD0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_51;
  v21 = _Block_copy(aBlock);

  sub_195FA0798();
  v26 = MEMORY[0x1E69E7CC0];
  sub_195EBDB58(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195F43EC8(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v16, v12, v21);
  _Block_release(v21);
  (*(v25 + 8))(v12, v9);
  (*(v13 + 8))(v16, v24);
}