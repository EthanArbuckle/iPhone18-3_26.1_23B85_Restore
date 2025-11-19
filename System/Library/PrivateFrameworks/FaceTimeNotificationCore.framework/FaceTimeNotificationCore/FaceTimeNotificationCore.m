void __61__iMessageUtilities_canMessageDestination_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v3 allValues];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v14 + 1) + 8 * v9) integerValue] != 1)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 16);
LABEL_14:
      v11();
    }
  }

  else
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      v11 = *(v12 + 16);
      goto LABEL_14;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

id UpstreamAction.__allocating_init(coder:)(void *a1)
{
  v5.receiver = objc_allocWithZone(v1);
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id UpstreamAction.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for UpstreamAction();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id UpstreamAction.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpstreamAction();
  return objc_msgSendSuper2(&v2, sel_init);
}

id UpstreamAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpstreamAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ShowCallAction.init(coder:)(void *a1)
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF826C0, &unk_24AA006A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24AA00690;
  *(v3 + 32) = sub_24A9C27EC(0, &qword_27EF826C8, 0x277D6EDE0);
  sub_24A9FEE40();

  if (v13)
  {
    if (swift_dynamicCast())
    {
      *&v1[OBJC_IVAR____TtC24FaceTimeNotificationCore14ShowCallAction_call] = v11;
      v10.receiver = v1;
      v10.super_class = type metadata accessor for UpstreamAction();
      v4 = objc_msgSendSuper2(&v10, sel_init);

      return v4;
    }
  }

  else
  {
    sub_24A9C1288(v12);
  }

  if (qword_27EF82680 != -1)
  {
    swift_once();
  }

  v6 = sub_24A9FEA90();
  __swift_project_value_buffer(v6, qword_27EF84B68);
  v7 = sub_24A9FEA70();
  v8 = sub_24A9FED90();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24A9BF000, v7, v8, "Failed to decode ShowCallAction.", v9, 2u);
    MEMORY[0x24C223120](v9, -1, -1);
  }

  swift_deallocPartialClassInstance();
  return 0;
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

uint64_t sub_24A9C1288(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF826D0, "*4");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id ShowCallAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ShowNoticeAction.init(coder:)(void *a1)
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF826C0, &unk_24AA006A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24AA00690;
  *(v3 + 32) = type metadata accessor for Notice();
  sub_24A9FEE40();

  if (v13)
  {
    if (swift_dynamicCast())
    {
      *&v1[OBJC_IVAR____TtC24FaceTimeNotificationCore16ShowNoticeAction_notice] = v11;
      v10.receiver = v1;
      v10.super_class = type metadata accessor for UpstreamAction();
      v4 = objc_msgSendSuper2(&v10, sel_init);

      return v4;
    }
  }

  else
  {
    sub_24A9C1288(v12);
  }

  if (qword_27EF82680 != -1)
  {
    swift_once();
  }

  v6 = sub_24A9FEA90();
  __swift_project_value_buffer(v6, qword_27EF84B68);
  v7 = sub_24A9FEA70();
  v8 = sub_24A9FED90();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24A9BF000, v7, v8, "Failed to decode ShowNoticeAction.", v9, 2u);
    MEMORY[0x24C223120](v9, -1, -1);
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id ShowDialPromptAction.init(coder:)(void *a1)
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF826C0, &unk_24AA006A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24AA00690;
  *(v3 + 32) = sub_24A9C27EC(0, &qword_27EF826E8, 0x277D6EED0);
  sub_24A9FEE40();

  if (v13)
  {
    if (swift_dynamicCast())
    {
      *&v1[OBJC_IVAR____TtC24FaceTimeNotificationCore20ShowDialPromptAction_dialRequest] = v11;
      v10.receiver = v1;
      v10.super_class = type metadata accessor for UpstreamAction();
      v4 = objc_msgSendSuper2(&v10, sel_init);

      return v4;
    }
  }

  else
  {
    sub_24A9C1288(v12);
  }

  if (qword_27EF82680 != -1)
  {
    swift_once();
  }

  v6 = sub_24A9FEA90();
  __swift_project_value_buffer(v6, qword_27EF84B68);
  v7 = sub_24A9FEA70();
  v8 = sub_24A9FED90();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24A9BF000, v7, v8, "Failed to decode ShowDialPromptAction.", v9, 2u);
    MEMORY[0x24C223120](v9, -1, -1);
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id sub_24A9C1A90(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[*a2] = a1;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_24A9C1AF4(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[*a2] = a1;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_24A9C1B84(void *a1, void *a2)
{
  v4 = *(v2 + *a2);
  v5 = sub_24A9FEC30();
  [a1 encodeObject:v4 forKey:v5];
}

void sub_24A9C1C18(char *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = *&a1[*a4];
  v8 = a3;
  v6 = a1;
  v7 = sub_24A9FEC30();
  [v8 encodeObject:v5 forKey:v7];
}

id ShowJoinPromptAction.init(coder:)(void *a1)
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF826C0, &unk_24AA006A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24AA00690;
  *(v3 + 32) = sub_24A9C27EC(0, &qword_27EF826F8, 0x277D6EEF0);
  sub_24A9FEE40();

  if (v13)
  {
    if (swift_dynamicCast())
    {
      *&v1[OBJC_IVAR____TtC24FaceTimeNotificationCore20ShowJoinPromptAction_joinRequest] = v11;
      v10.receiver = v1;
      v10.super_class = type metadata accessor for UpstreamAction();
      v4 = objc_msgSendSuper2(&v10, sel_init);

      return v4;
    }
  }

  else
  {
    sub_24A9C1288(v12);
  }

  if (qword_27EF82680 != -1)
  {
    swift_once();
  }

  v6 = sub_24A9FEA90();
  __swift_project_value_buffer(v6, qword_27EF84B68);
  v7 = sub_24A9FEA70();
  v8 = sub_24A9FED90();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24A9BF000, v7, v8, "Failed to decode ShowJoinPromptAction.", v9, 2u);
    MEMORY[0x24C223120](v9, -1, -1);
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id sub_24A9C20E4(char a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v5[*a2] = a1;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_24A9C2148(char a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v2[*a2] = a1;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_24A9C21D0(void *a1, void *a2)
{
  v4 = *(v2 + *a2);
  v5 = sub_24A9FEC30();
  [a1 encodeBool:v4 forKey:v5];
}

void sub_24A9C225C(unsigned __int8 *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a1[*a4];
  v6 = a3;
  v8 = a1;
  v7 = sub_24A9FEC30();
  [v6 encodeBool:v5 forKey:v7];
}

id sub_24A9C2318(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = objc_allocWithZone(v4);
  v8 = sub_24A9FEC30();
  v9 = [a1 decodeBoolForKey_];

  v7[*a4] = v9;
  v12.receiver = v7;
  v12.super_class = type metadata accessor for UpstreamAction();
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

id sub_24A9C23E0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_24A9FEC30();
  v8 = [a1 decodeBoolForKey_];

  v4[*a4] = v8;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for UpstreamAction();
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

id sub_24A9C2494(_BYTE *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a3;
  v9 = sub_24A9FEC30();
  v10 = [v8 decodeBoolForKey_];

  a1[*a6] = v10;
  v13.receiver = a1;
  v13.super_class = type metadata accessor for UpstreamAction();
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

id _s24FaceTimeNotificationCore14ShowCallActionCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

_DWORD *sub_24A9C261C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_24A9C2638()
{
  v1 = *v0;
  sub_24A9FF1E0();
  sub_24A9FF200();
  return sub_24A9FF210();
}

uint64_t sub_24A9C26AC()
{
  v1 = *v0;
  sub_24A9FF1E0();
  sub_24A9FF200();
  return sub_24A9FF210();
}

void *sub_24A9C26F0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_24A9C2728(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_24A9C27A0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_24A9C27EC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24A9C2AE8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A9C2B08(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24A9C2B78(uint64_t a1, int a2)
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

uint64_t sub_24A9C2B98(uint64_t result, int a2, int a3)
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

void sub_24A9C2BEC(uint64_t a1, unint64_t *a2)
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

unint64_t sub_24A9C2C3C()
{
  result = qword_27EF82760;
  if (!qword_27EF82760)
  {
    type metadata accessor for TUCallDisconnectedReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82760);
  }

  return result;
}

FaceTimeNotificationCore::CallConfirmationType_optional __swiftcall CallConfirmationType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24A9C2D04()
{
  v1 = *v0;
  sub_24A9FF1E0();
  MEMORY[0x24C222A90](v1);
  return sub_24A9FF210();
}

uint64_t sub_24A9C2D78()
{
  v1 = *v0;
  sub_24A9FF1E0();
  MEMORY[0x24C222A90](v1);
  return sub_24A9FF210();
}

uint64_t sub_24A9C2DDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t CallConfirmationHelper.__allocating_init(callCenter:presenter:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_24A9C2ED4(a1, v4 + 16);
  sub_24A9C2ED4(a2, v4 + 56);
  return v4;
}

uint64_t CallConfirmationHelper.init(callCenter:presenter:)(__int128 *a1, __int128 *a2)
{
  sub_24A9C2ED4(a1, v2 + 16);
  sub_24A9C2ED4(a2, v2 + 56);
  return v2;
}

uint64_t sub_24A9C2ED4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t CallConfirmationHelper.promptConfirmationIfNeeded(for:)(_OWORD *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = *a1;
  sub_24A9FED20();
  *(v2 + 40) = sub_24A9FED10();
  v4 = sub_24A9FED00();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return MEMORY[0x2822009F8](sub_24A9C2F8C, v4, v3);
}

uint64_t sub_24A9C2F8C()
{
  v1 = *(v0 + 32) >> 62;
  if (!v1)
  {
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    v3 = sub_24A9C352C();
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = *(v0 + 16);
    v3 = sub_24A9C3734(*(v0 + 24));
LABEL_5:
    v7 = v3;
    v8 = v4;
    if (v3)
    {
      if (*(v0 + 32) >> 62)
      {
        v10 = 2;
      }

      else
      {
        ObjectType = swift_getObjectType();
        if ((*(v8 + 296))(ObjectType, v8))
        {
          v10 = 3;
        }

        else
        {
          v10 = 0;
        }
      }

LABEL_14:
      *(v0 + 64) = v7;
      *(v0 + 72) = v8;
      *(v0 + 89) = v10;
      v16 = *(v0 + 16);
      v17 = v16[10];
      v18 = v16[11];
      __swift_project_boxed_opaque_existential_1(v16 + 7, v17);
      *(v0 + 88) = v10;
      v19 = *(v18 + 8);
      v25 = (v19 + *v19);
      v20 = v19[1];
      v21 = swift_task_alloc();
      *(v0 + 80) = v21;
      *v21 = v0;
      v21[1] = sub_24A9C3264;

      return v25(v0 + 88, v7, v8, v17, v18);
    }

    v15 = *(v0 + 40);
    goto LABEL_18;
  }

  v11 = *(v0 + 16);
  v12 = v11[5];
  v13 = v11[6];
  __swift_project_boxed_opaque_existential_1(v11 + 2, v12);
  (*(v13 + 64))(v12, v13);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827D0, &qword_24AA00A68);
  v14 = sub_24A9FF070();

  if (v14[2])
  {
    v7 = v14[4];
    v8 = v14[5];
    swift_unknownObjectRetain();

    v10 = 1;
    goto LABEL_14;
  }

  v23 = *(v0 + 40);

LABEL_18:

  v24 = *(v0 + 8);

  return v24(1);
}

uint64_t sub_24A9C3264(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 90) = a1;

  v4 = *(v2 + 56);
  v5 = *(v2 + 48);

  return MEMORY[0x2822009F8](sub_24A9C338C, v5, v4);
}

uint64_t sub_24A9C338C()
{
  v1 = *(v0 + 90);
  v2 = *(v0 + 40);

  if (v1 == 1)
  {
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);
    v5 = *(v0 + 16);
    v6 = v5[5];
    v7 = v5[6];
    __swift_project_boxed_opaque_existential_1(v5 + 2, v6);
    ObjectType = swift_getObjectType();
    FTNCallCenter.disconnect<A>(_:)(v4, v6, ObjectType, v7);
  }

  else if (*(v0 + 89) == 3)
  {
    v9 = *(v0 + 32);
    v10 = *(v0 + 64);
    if (!(v9 >> 62))
    {
      v11 = *(v0 + 16);
      v12 = *(v0 + 24);
      v13 = v11[5];
      v14 = v11[6];
      __swift_project_boxed_opaque_existential_1(v11 + 2, v13);
      v15 = swift_getObjectType();
      v16 = swift_unknownObjectRetain();
      FTNCallCenter.disconnect<A>(_:with:)(v16, 2, v13, v15, v14);
      swift_unknownObjectRelease();
      sub_24A9C39F0(v12, v9);
      goto LABEL_9;
    }

    v18 = *(v0 + 64);
  }

  else
  {
    v17 = *(v0 + 64);
  }

  swift_unknownObjectRelease();
LABEL_9:
  v19 = *(v0 + 8);

  return v19(v1);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24A9C352C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 112))(v1, v2);
  v4 = v0[6];
  v5 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  if (v3)
  {
    MEMORY[0x28223BE20](v5);
    (*(v4 + 88))(sub_24A9C4078);
  }

  else
  {
    v6 = MEMORY[0x28223BE20](v5);
    MEMORY[0x28223BE20](v6);
    (*(v4 + 88))(sub_24A9C406C);
  }

  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827D0, &qword_24AA00A68);
  v7 = sub_24A9FF070();

  if (v7[2])
  {
    v8 = v7[4];
    v9 = v7[5];
    swift_unknownObjectRetain();
  }

  else
  {

    return 0;
  }

  return v8;
}

uint64_t sub_24A9C3734(void *a1)
{
  v2 = v1;
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  (*(v5 + 64))(v4, v5);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827D0, &qword_24AA00A68);
  v6 = sub_24A9FF070();

  if (!v6[2])
  {

    return 0;
  }

  v7 = v6[4];
  v8 = v6[5];
  swift_unknownObjectRetain();

  if (![a1 isVideo])
  {
    v9 = v2[5];
    v10 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v9);
    if ((*(v10 + 104))(v9, v10))
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return v7;
}

uint64_t sub_24A9C3878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v7 = (*(a2 + 16))(ObjectType, a2);
  v9 = v8;
  v10 = swift_getObjectType();
  if (v7 == (*(a4 + 16))(v10, a4) && v9 == v11)
  {

    v14 = 0;
  }

  else
  {
    v13 = sub_24A9FF170();

    v14 = v13 ^ 1;
  }

  return v14 & 1;
}

uint64_t sub_24A9C3958(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return a2(a1, AssociatedConformanceWitness) & 1;
}

void sub_24A9C39F0(void *a1, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {
  }

  else if (!(a2 >> 62))
  {
    swift_unknownObjectRelease();
  }
}

uint64_t CallConfirmationHelper.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t CallConfirmationHelper.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_24A9C3B08()
{
  result = qword_27EF827D8;
  if (!qword_27EF827D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF827D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CallConfirmationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CallConfirmationType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of CallConfirmationPresenter.promptConfirmation(for:conflictingCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_24A9C3E08;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_24A9C3E08(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

unint64_t get_enum_tag_for_layout_string_24FaceTimeNotificationCore22CallConfirmationHelperC6ActionO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_24A9C3F70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 16))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24A9C3FCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_24A9C402C(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0x8000000000000000;
  }

  return result;
}

uint64_t sub_24A9C406C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_24A9C3958(a1, *(v1 + 32));
}

id sub_24A9C4080()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27EF84B30 = result;
  return result;
}

uint64_t TUCallGroup.suggestedDisplayName.getter()
{
  v1 = [v0 displayName];
  v2 = sub_24A9FEC40();

  return v2;
}

uint64_t TUCallGroup.dateConnected.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v33 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v12 = sub_24A9FE9D0();
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x28223BE20](v12);
  v42 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v2 calls];
  sub_24A9C27EC(0, &qword_27EF826C8, 0x277D6EDE0);
  v16 = sub_24A9FECE0();

  if (v16 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A9FEF30())
  {
    v18 = 0;
    v40 = v16 & 0xFFFFFFFFFFFFFF8;
    v41 = v16 & 0xC000000000000001;
    v38 = (v35 + 48);
    v39 = (v35 + 56);
    v44 = MEMORY[0x277D84F90];
    v36 = v11;
    v37 = (v35 + 32);
    v34 = v7;
    while (v41)
    {
      v19 = MEMORY[0x24C222870](v18, v16);
      v11 = (v18 + 1);
      if (__OFADD__(v18, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v20 = v16;
      v21 = v19;
      v22 = [v21 dateConnected];
      if (v22)
      {
        v23 = v22;
        sub_24A9FE9B0();

        v24 = 0;
      }

      else
      {
        v24 = 1;
      }

      (*v39)(v7, v24, 1, v12);
      v25 = v43;
      v26 = v12;
      sub_24A9C9A00(v7, v43, &qword_27EF827E0, &qword_24AA00C90);
      v27 = v36;
      sub_24A9C9A00(v25, v36, &qword_27EF827E0, &qword_24AA00C90);

      if ((*v38)(v27, 1, v26) == 1)
      {
        sub_24A9C994C(v27, &qword_27EF827E0, &qword_24AA00C90);
        v16 = v20;
        v12 = v26;
      }

      else
      {
        v28 = *v37;
        (*v37)(v42, v27, v26);
        v12 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_24A9C9404(0, *(v44 + 2) + 1, 1, v44);
        }

        v30 = *(v44 + 2);
        v29 = *(v44 + 3);
        if (v30 >= v29 >> 1)
        {
          v44 = sub_24A9C9404(v29 > 1, v30 + 1, 1, v44);
        }

        v31 = v44;
        *(v44 + 2) = v30 + 1;
        v28(&v31[((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v30], v42, v26);
        v7 = v34;
        v16 = v20;
      }

      ++v18;
      if (v11 == i)
      {
        goto LABEL_24;
      }
    }

    if (v18 >= *(v40 + 16))
    {
      goto LABEL_21;
    }

    v19 = *(v16 + 8 * v18 + 32);
    v11 = (v18 + 1);
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v44 = MEMORY[0x277D84F90];
LABEL_24:

  sub_24A9C45D8(v44, v33);
}

uint64_t sub_24A9C45D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24A9FE9D0();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_24A9C9A68(&qword_27EF82888, MEMORY[0x277CC9578]);
        v21 = sub_24A9FEC00();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

void (*TUCallGroup.dateConnected.modify(uint64_t *a1))(uint64_t *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(v2);
  }

  *a1 = v3;
  TUCallGroup.dateConnected.getter(v3);
  return sub_24A9C4920;
}

void sub_24A9C4920(uint64_t *a1)
{
  v1 = *a1;
  sub_24A9C994C(*a1, &qword_27EF827E0, &qword_24AA00C90);

  free(v1);
}

uint64_t TUCallGroup.contacts.getter()
{
  v1 = [v0 calls];
  sub_24A9C27EC(0, &qword_27EF826C8, 0x277D6EDE0);
  v2 = sub_24A9FECE0();

  if (v2 >> 62)
  {
LABEL_86:
    v3 = sub_24A9FEF30();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_72:

    return v6;
  }

  v5 = 0;
  v65 = v2 & 0xFFFFFFFFFFFFFF8;
  v66 = v2 & 0xC000000000000001;
  v64 = v2 + 32;
  v6 = MEMORY[0x277D84F90];
  v62 = v3;
  v63 = v2;
  while (1)
  {
    v70 = v6;
    if (v66)
    {
      v7 = MEMORY[0x24C222870](v5, v2);
      v8 = __OFADD__(v5, 1);
      v9 = v5 + 1;
      if (v8)
      {
        goto LABEL_78;
      }
    }

    else
    {
      if (v5 >= *(v65 + 16))
      {
        goto LABEL_79;
      }

      v7 = *(v64 + 8 * v5);
      v8 = __OFADD__(v5, 1);
      v9 = v5 + 1;
      if (v8)
      {
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }
    }

    v67 = v9;
    v68 = v7;
    v10 = [v7 remoteParticipantHandles];
    sub_24A9C27EC(0, &qword_27EF827E8, 0x277D6EEE8);
    sub_24A9C95DC();
    v11 = sub_24A9FED60();

    v74 = v11 & 0xC000000000000001;
    if ((v11 & 0xC000000000000001) != 0)
    {
      break;
    }

    v13 = *(v11 + 16);
    if (v13)
    {
      v80 = v4;
      sub_24A9FF040();
      v15 = -1 << *(v11 + 32);
      v16 = sub_24A9FEEB0();
      v17 = *(v11 + 36);
      v77 = v16;
      v78 = v17;
      v79 = 0;
      goto LABEL_16;
    }

LABEL_38:

    v44 = v4;
LABEL_39:
    v45 = v44 >> 62;
    v46 = v70;
    if (v44 >> 62)
    {
      v46 = v70;
      v75 = sub_24A9FEF30();
    }

    else
    {
      v75 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v47 = v46 >> 62;
    if (v46 >> 62)
    {
      v48 = sub_24A9FEF30();
    }

    else
    {
      v48 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = v48 + v75;
    if (__OFADD__(v48, v75))
    {
      goto LABEL_80;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v47)
    {
      isUniquelyReferenced_nonNull_bridgeObject = 0;
    }

    if (isUniquelyReferenced_nonNull_bridgeObject != 1 || (v6 = v70, v51 = v70 & 0xFFFFFFFFFFFFFF8, v49 > *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
    {
      if (v47)
      {
        sub_24A9FEF30();
      }

      else
      {
        v52 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v6 = sub_24A9FEFE0();
      v51 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v53 = *(v51 + 16);
    v54 = *(v51 + 24);
    if (v45)
    {
      v55 = sub_24A9FEF30();
      if (!v55)
      {
LABEL_5:

        if (v75 > 0)
        {
          goto LABEL_81;
        }

        goto LABEL_6;
      }
    }

    else
    {
      v55 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v55)
      {
        goto LABEL_5;
      }
    }

    if (((v54 >> 1) - v53) < v75)
    {
      goto LABEL_83;
    }

    if (v45)
    {
      if (v55 < 1)
      {
        goto LABEL_85;
      }

      sub_24A9C9AB0(&qword_27EF82818, &qword_27EF82810, &qword_24AA00CA8);
      for (i = 0; i != v55; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82810, &qword_24AA00CA8);
        v57 = sub_24A9C9644(v76, i, v44);
        v59 = *v58;
        (v57)(v76, 0);
        *(v51 + 8 * v53 + 32 + 8 * i) = v59;
      }

      v3 = v62;
      v2 = v63;
      v4 = MEMORY[0x277D84F90];
    }

    else
    {
      sub_24A9C27EC(0, &qword_27EF82808, 0x277CBDA58);
      swift_arrayInitWithCopy();
    }

    if (v75 > 0)
    {
      v60 = *(v51 + 16);
      v8 = __OFADD__(v60, v75);
      v61 = v60 + v75;
      if (v8)
      {
        goto LABEL_84;
      }

      *(v51 + 16) = v61;
    }

LABEL_6:
    v5 = v67;
    if (v67 == v3)
    {
      goto LABEL_72;
    }
  }

  v12 = sub_24A9FEF30();
  if (!v12)
  {
    goto LABEL_38;
  }

  v13 = v12;
  v80 = v4;
  sub_24A9FF040();
  v77 = sub_24A9FEEE0();
  v78 = v14;
  v79 = 1;
  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_82;
  }

LABEL_16:
  v72 = v13;
  v73 = objc_opt_self();
  v18 = 0;
  v71 = v11 + 56;
  v69 = v11 + 64;
  while (1)
  {
    while (1)
    {
      if (v18 >= v13)
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v8 = __OFADD__(v18++, 1);
      if (v8)
      {
        goto LABEL_74;
      }

      v2 = v77;
      v20 = v78;
      v21 = v79;
      v22 = v11;
      sub_24A9C9734(v77, v78, v79, v11, &qword_27EF827E8, 0x277D6EEE8);
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827F8, &qword_24AA00C98);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_24AA00690;
      v26 = [v24 value];
      v27 = sub_24A9FEC40();
      v29 = v28;

      *(v25 + 32) = v27;
      *(v25 + 40) = v29;
      v30 = sub_24A9FECD0();

      v31 = [v73 contactWithDisplayName:0 handleStrings:v30];

      sub_24A9FF020();
      v32 = *(v80 + 16);
      sub_24A9FF050();
      sub_24A9FF060();
      result = sub_24A9FF030();
      if (v74)
      {
        break;
      }

      if (v21)
      {
        goto LABEL_88;
      }

      v13 = v72;
      if ((v2 & 0x8000000000000000) != 0)
      {
        goto LABEL_75;
      }

      v11 = v22;
      v34 = 1 << *(v22 + 32);
      if (v2 >= v34)
      {
        goto LABEL_75;
      }

      v35 = v2 >> 6;
      v36 = *(v71 + 8 * (v2 >> 6));
      if (((v36 >> v2) & 1) == 0)
      {
        goto LABEL_76;
      }

      if (*(v22 + 36) != v20)
      {
        goto LABEL_77;
      }

      v37 = v36 & (-2 << (v2 & 0x3F));
      if (v37)
      {
        v34 = __clz(__rbit64(v37)) | v2 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v38 = v35 << 6;
        v39 = v35 + 1;
        v40 = (v69 + 8 * v35);
        while (v39 < (v34 + 63) >> 6)
        {
          v42 = *v40++;
          v41 = v42;
          v38 += 64;
          ++v39;
          if (v42)
          {
            sub_24A9C96CC(v2, v20, 0);
            v34 = __clz(__rbit64(v41)) + v38;
            goto LABEL_36;
          }
        }

        sub_24A9C96CC(v2, v20, 0);
      }

LABEL_36:
      v43 = *(v22 + 36);
      v77 = v34;
      v78 = v43;
      v79 = 0;
      if (v18 == v72)
      {
LABEL_37:
        sub_24A9C96CC(v77, v78, v79);

        v44 = v80;
        v3 = v62;
        v2 = v63;
        v4 = MEMORY[0x277D84F90];
        goto LABEL_39;
      }
    }

    if (!v21)
    {
      break;
    }

    v13 = v72;
    v11 = v22;
    if (sub_24A9FEEF0())
    {
      swift_isUniquelyReferenced_nonNull_native();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82800, &qword_24AA00CA0);
    v19 = sub_24A9FED70();
    sub_24A9FEF60();
    v19(v76, 0);
    if (v18 == v72)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

uint64_t TUCall.contacts.getter()
{
  v1 = [v0 remoteParticipantHandles];
  sub_24A9C27EC(0, &qword_27EF827E8, 0x277D6EEE8);
  sub_24A9C95DC();
  v2 = sub_24A9FED60();

  v3 = sub_24A9C71A8(v2);

  return v3;
}

uint64_t TUCallGroup.handle.getter()
{
  v1 = [v0 calls];
  sub_24A9C27EC(0, &qword_27EF826C8, 0x277D6EDE0);
  v2 = sub_24A9FECE0();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  result = sub_24A9FEF30();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C222870](0, v2);
    goto LABEL_6;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
LABEL_6:
    v5 = v4;
LABEL_9:

    v6 = [v5 handle];

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t TUCallGroup.provider.getter()
{
  v1 = [v0 calls];
  sub_24A9C27EC(0, &qword_27EF826C8, 0x277D6EDE0);
  v2 = sub_24A9FECE0();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  result = sub_24A9FEF30();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C222870](0, v2);
LABEL_6:
    v5 = v4;

    v6 = [v5 provider];

    if (v6)
    {
      return v6;
    }

LABEL_10:
    v7 = objc_allocWithZone(MEMORY[0x277D6EE20]);
    v8 = sub_24A9FEC30();
    v6 = [v7 initWithIdentifier_];

    return v6;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t TUCallGroup.isSharePlayCapable.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  v2 = [v1 sharePlayInCallsEnabled];

  if (!v2)
  {
    return 0;
  }

  v3 = [v0 calls];
  sub_24A9C27EC(0, &qword_27EF826C8, 0x277D6EDE0);
  v4 = sub_24A9FECE0();

  if (v4 >> 62)
  {
    result = sub_24A9FEF30();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_9:

    return 0;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x24C222870](0, v4);
    goto LABEL_7;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_7:
    v7 = v6;

    v8 = [v7 isSharePlayCapable];

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t TUCallGroup.serviceString.getter()
{
  v1 = [v0 calls];
  sub_24A9C27EC(0, &qword_27EF826C8, 0x277D6EDE0);
  v2 = sub_24A9FECE0();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  result = sub_24A9FEF30();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C222870](0, v2);
    goto LABEL_6;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
LABEL_6:
    v5 = v4;

    v6 = TUCall.serviceString.getter();

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t TUCall.serviceString.getter()
{
  v1 = [v0 serviceDisplayString];
  if (!v1)
  {
    v1 = [v0 supplementalInCallString];
    if (!v1)
    {
      v1 = [v0 localizedLabel];
      if (!v1)
      {
        return 0;
      }
    }
  }

  v2 = v1;
  v3 = sub_24A9FEC40();

  return v3;
}

uint64_t TUCallGroup.isOutgoing.getter()
{
  v1 = [v0 calls];
  sub_24A9C27EC(0, &qword_27EF826C8, 0x277D6EDE0);
  v2 = sub_24A9FECE0();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  result = sub_24A9FEF30();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C222870](0, v2);
    goto LABEL_6;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
LABEL_6:
    v5 = v4;

    v6 = [v5 isOutgoing];

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A9C5820(SEL *a1)
{
  v3 = [v1 calls];
  sub_24A9C27EC(0, &qword_27EF826C8, 0x277D6EDE0);
  v4 = sub_24A9FECE0();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:

    return 0;
  }

  result = sub_24A9FEF30();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x24C222870](0, v4);
LABEL_6:
    v7 = v6;

    v8 = [v7 *a1];

    if (v8)
    {
      v9 = sub_24A9FEC40();

      return v9;
    }

    return 0;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void TUCallGroup.metadataSubtitle.getter(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82820, &qword_24AA00CB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v70 - v5;
  v7 = sub_24A9FEA60();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_24A9FEC20();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v70 - v15;
  v17 = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  v18 = [v17 callerIDSyncMacEnabled];

  if (!v18)
  {
    goto LABEL_48;
  }

  v19 = [v1 calls];
  sub_24A9C27EC(0, &qword_27EF826C8, 0x277D6EDE0);
  v20 = sub_24A9FECE0();

  if (!(v20 >> 62))
  {
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_47:

    goto LABEL_48;
  }

  if (!sub_24A9FEF30())
  {
    goto LABEL_47;
  }

LABEL_4:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x24C222870](0, v20);
  }

  else
  {
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_53:
      swift_once();
      goto LABEL_21;
    }

    v21 = *(v20 + 32);
  }

  v22 = v21;

  v23 = [v22 contactIdentifiers];
  if (v23)
  {
    v24 = v23;
    v25 = sub_24A9FECE0();

    v26 = *(v25 + 16);

    if (v26)
    {
LABEL_9:

LABEL_48:
      v30 = 0;
      v32 = 0;
      goto LABEL_49;
    }
  }

  v27 = [v22 displayContext];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 callDirectoryLabel];

    if (v29)
    {
      v70[0] = v10;
      v30 = sub_24A9FEC40();
      v32 = v31;

      v33 = HIBYTE(v32) & 0xF;
      if ((v32 & 0x2000000000000000) == 0)
      {
        v33 = v30 & 0xFFFFFFFFFFFFLL;
      }

      if (v33)
      {
        v34 = [v22 displayContext];
        if (v34)
        {
          v35 = v34;
          v36 = [v34 callDirectoryLocalizedExtensionContainingAppName];

          if (v36)
          {
            goto LABEL_27;
          }
        }

LABEL_35:

        v51 = 0;
        v53 = 0;
        v54 = 1;
        goto LABEL_50;
      }

      v10 = v70[0];
    }
  }

  v37 = [v22 callDirectoryName];
  if (!v37)
  {
LABEL_30:
    v55 = [v22 imageURL];
    if (v55)
    {
      v56 = v55;
      sub_24A9FE950();

      v57 = sub_24A9FE960();
      (*(*(v57 - 8) + 56))(v6, 0, 1, v57);
      sub_24A9C994C(v6, &qword_27EF82820, &qword_24AA00CB0);
      v58 = [v22 localizedLabel];
      if (v58)
      {
        v59 = v58;
        v30 = sub_24A9FEC40();
        v32 = v60;

        v61 = HIBYTE(v32) & 0xF;
        if ((v32 & 0x2000000000000000) == 0)
        {
          v61 = v30 & 0xFFFFFFFFFFFFLL;
        }

        if (v61)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v62 = sub_24A9FE960();
      (*(*(v62 - 8) + 56))(v6, 1, 1, v62);
      sub_24A9C994C(v6, &qword_27EF82820, &qword_24AA00CB0);
    }

    v63 = [v22 suggestedDisplayName];
    if (v63)
    {
      v64 = v63;
      v30 = sub_24A9FEC40();
      v32 = v65;

      v66 = HIBYTE(v32) & 0xF;
      if ((v32 & 0x2000000000000000) == 0)
      {
        v66 = v30 & 0xFFFFFFFFFFFFLL;
      }

      if (v66)
      {

        v54 = 1;
        v53 = 0xE500000000000000;
        v51 = 0x656C707041;
        goto LABEL_50;
      }
    }

    v67 = [v22 localizedLabel];
    if (v67)
    {
      v68 = v67;
      v30 = sub_24A9FEC40();
      v32 = v69;

LABEL_49:
      v51 = 0;
      v53 = 0;
      v54 = 0;
      goto LABEL_50;
    }

    goto LABEL_9;
  }

  v70[0] = v22;
  v38 = v37;
  v19 = v10;
  v39 = sub_24A9FEC40();
  v41 = v40;

  v70[4] = v39;
  v70[5] = v41;
  sub_24A9FEC10();
  (*(v19 + 2))(v14, v16, v9);
  if (qword_27EF82670 != -1)
  {
    goto LABEL_53;
  }

LABEL_21:
  v42 = qword_27EF84B30;
  sub_24A9FEA50();
  v43 = sub_24A9FEC60();
  v45 = v44;
  (*(v19 + 1))(v16, v9);
  v70[1] = v43;
  v70[2] = v45;
  sub_24A9C99AC();
  v46 = sub_24A9FEE80();

  v47 = *(v46 + 16);
  if (!v47)
  {

    v22 = v70[0];
    goto LABEL_30;
  }

  v48 = (v46 + 16 + 16 * v47);
  v30 = *v48;
  v32 = v48[1];

  v49 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v49 = v30 & 0xFFFFFFFFFFFFLL;
  }

  v22 = v70[0];
  if (!v49)
  {

    goto LABEL_30;
  }

  v50 = [v70[0] callDirectoryIdentityExtension];
  if (!v50)
  {
    goto LABEL_35;
  }

  v36 = v50;
LABEL_27:
  v51 = sub_24A9FEC40();
  v53 = v52;

  v54 = 1;
LABEL_50:
  *a1 = v30;
  *(a1 + 8) = v32;
  *(a1 + 16) = v51;
  *(a1 + 24) = v53;
  *(a1 + 32) = v54;
}

uint64_t TUCallGroup.imageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82820, &qword_24AA00CB0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  v11 = [v10 callerIDSyncMacEnabled];

  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = [v1 calls];
  sub_24A9C27EC(0, &qword_27EF826C8, 0x277D6EDE0);
  v13 = sub_24A9FECE0();

  if (v13 >> 62)
  {
    result = sub_24A9FEF30();
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_4:
      if ((v13 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x24C222870](0, v13);
      }

      else
      {
        if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v15 = *(v13 + 32);
      }

      v16 = v15;

      v17 = [v16 imageURL];

      if (v17)
      {
        sub_24A9FE950();

        v18 = sub_24A9FE960();
        (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
      }

      else
      {
        v18 = sub_24A9FE960();
        (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
      }

      sub_24A9C9A00(v7, v9, &qword_27EF82820, &qword_24AA00CB0);
      sub_24A9FE960();
      v19 = *(v18 - 8);
      if ((*(v19 + 48))(v9, 1, v18) != 1)
      {
        (*(v19 + 32))(a1, v9, v18);
        return (*(v19 + 56))(a1, 0, 1, v18);
      }

      goto LABEL_14;
    }
  }

  v20 = sub_24A9FE960();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
LABEL_14:
  sub_24A9C994C(v9, &qword_27EF82820, &qword_24AA00CB0);
LABEL_15:
  v21 = sub_24A9FE960();
  return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
}

uint64_t TUCallGroup.senderIdentityShortName.getter()
{
  v1 = [v0 calls];
  v2 = sub_24A9C27EC(0, &qword_27EF826C8, 0x277D6EDE0);
  v3 = sub_24A9FECE0();

  if (v3 >> 62)
  {
    if (sub_24A9FEF30())
    {
      goto LABEL_3;
    }

LABEL_8:

    v9 = 0;
    goto LABEL_9;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C222870](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_20;
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;

  v6 = [v5 provider];

  v7 = [v6 prioritizedSenderIdentities];
  v8 = [v7 count];

  v9 = v8 > 1;
LABEL_9:
  v10 = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  v11 = [v10 isDualSimParityEnabled];

  result = 0;
  if (v11 && v9)
  {
    v13 = [v0 calls];
    v2 = sub_24A9FECE0();

    if (!(v2 >> 62))
    {
      result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_13:
        if ((v2 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x24C222870](0, v2);
        }

        else
        {
          if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v14 = *(v2 + 32);
        }

        v15 = v14;

        v16 = [v15 localSenderIdentity];

        if (v16)
        {
          v17 = [v16 localizedShortName];

          v18 = sub_24A9FEC40();
          return v18;
        }

        return 0;
      }

LABEL_21:

      return 0;
    }

LABEL_20:
    result = sub_24A9FEF30();
    if (result)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

  return result;
}

uint64_t sub_24A9C66A0()
{
  v1 = [*v0 displayName];
  v2 = sub_24A9FEC40();

  return v2;
}

double sub_24A9C6844@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  TUCallGroup.metadataSubtitle.getter(v6);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t TUCall.changesPublisher.getter()
{
  v1 = v0;
  v2 = sub_24A9FEDE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v66 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82830, &qword_24AA00CB8);
  v83 = *(v10 - 8);
  v11 = *(v83 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v69 = &v66 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v70 = &v66 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v71 = &v66 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v72 = &v66 - v22;
  MEMORY[0x28223BE20](v21);
  v74 = &v66 - v23;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82838, &qword_24AA00CC0);
  v77 = *(v79 - 8);
  v24 = *(v77 + 64);
  MEMORY[0x28223BE20](v79);
  v73 = &v66 - v25;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82840, &qword_24AA00CC8);
  v76 = *(v78 - 8);
  v26 = *(v76 + 64);
  MEMORY[0x28223BE20](v78);
  v75 = &v66 - v27;
  v28 = objc_opt_self();
  v29 = [v28 defaultCenter];
  v30 = *MEMORY[0x277D6F030];
  sub_24A9FEDF0();

  v31 = [v28 asc_278FF2385];
  v32 = *MEMORY[0x277D6F0A0];
  v82 = v1;
  sub_24A9FEDF0();

  sub_24A9C9A68(&qword_27EF82848, MEMORY[0x277CC9DB0]);
  sub_24A9FEBA0();
  v33 = v3 + 8;
  v34 = *(v3 + 8);
  v34(v7, v2);
  v34(v9, v2);
  v68 = v34;
  v35 = v33;
  v81 = v28;
  v36 = [v28 defaultCenter];
  v37 = *MEMORY[0x277D6F110];
  sub_24A9FEDF0();

  v38 = v69;
  sub_24A9FEAB0();
  v39 = v2;
  v80 = v2;
  v34(v9, v2);
  v41 = v83 + 8;
  v40 = *(v83 + 8);
  v66 = v35;
  v67 = v40;
  v40(v14, v10);
  v42 = v41;
  v43 = [v28 defaultCenter];
  v44 = *MEMORY[0x277D6EFD8];
  sub_24A9FEDF0();

  v45 = v70;
  sub_24A9FEAB0();
  v46 = v39;
  v47 = v68;
  v68(v9, v46);
  v48 = v67;
  v67(v38, v10);
  v83 = v42;
  v49 = [v81 defaultCenter];
  v50 = *MEMORY[0x277D6F090];
  sub_24A9FEDF0();

  v51 = v71;
  sub_24A9FEAB0();
  v52 = v80;
  v47(v9, v80);
  v48(v45, v10);
  v53 = v81;
  v54 = [v81 defaultCenter];
  v55 = *MEMORY[0x277D6F088];
  sub_24A9FEDF0();

  v56 = v72;
  sub_24A9FEAB0();
  v47(v9, v52);
  v48(v51, v10);
  v57 = [v53 defaultCenter];
  v58 = *MEMORY[0x277D6F048];
  sub_24A9FEDF0();

  v59 = v74;
  sub_24A9FEAB0();
  v47(v9, v80);
  v60 = v73;
  v48(v56, v10);
  sub_24A9C9AB0(&qword_27EF82850, &qword_27EF82830, &qword_24AA00CB8);
  sub_24A9FEB80();
  v48(v59, v10);
  if (qword_27EF82690 != -1)
  {
    swift_once();
  }

  v84 = *(qword_27EF82AD0 + OBJC_IVAR____TtC24FaceTimeNotificationCore26ConversationChangeNotifier_activeRemoteParticipantsChangedPublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82AE0, &qword_24AA00CD0);
  sub_24A9C9AB0(&qword_27EF82858, &qword_27EF82838, &qword_24AA00CC0);
  sub_24A9C9AB0(&qword_27EF82860, &qword_27EF82AE0, &qword_24AA00CD0);
  v61 = v75;
  v62 = v79;
  sub_24A9FEB90();
  (*(v77 + 8))(v60, v62);
  sub_24A9C9AB0(&qword_27EF82868, &qword_27EF82840, &qword_24AA00CC8);
  v63 = v78;
  v64 = sub_24A9FEB70();
  (*(v76 + 8))(v61, v63);
  return v64;
}

uint64_t sub_24A9C71A8(uint64_t a1)
{
  v1 = a1;
  v38 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_24A9FEF30();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v43 = MEMORY[0x277D84F90];
    sub_24A9FF040();
    result = sub_24A9FEEE0();
    v40 = result;
    v41 = v4;
    v42 = 1;
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v2 = *(a1 + 16);
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v43 = MEMORY[0x277D84F90];
    sub_24A9FF040();
    v5 = -1 << *(v1 + 32);
    v6 = sub_24A9FEEB0();
    v7 = *(v1 + 36);
    v40 = v6;
    v41 = v7;
    v42 = 0;
  }

  result = objc_opt_self();
  v37 = result;
  v8 = 0;
  v34 = v1 + 56;
  v33 = v1 + 64;
  v35 = v2;
  v36 = v1;
  while (v8 < v2)
  {
    if (__OFADD__(v8++, 1))
    {
      goto LABEL_31;
    }

    v12 = v40;
    v11 = v41;
    v13 = v42;
    sub_24A9C9734(v40, v41, v42, v1, &qword_27EF827E8, 0x277D6EEE8);
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827F8, &qword_24AA00C98);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_24AA00690;
    v17 = [v15 value];
    v18 = sub_24A9FEC40();
    v20 = v19;

    *(v16 + 32) = v18;
    *(v16 + 40) = v20;
    v21 = sub_24A9FECD0();

    v22 = [v37 contactWithDisplayName:0 handleStrings:v21];

    sub_24A9FF020();
    v23 = *(v43 + 16);
    sub_24A9FF050();
    sub_24A9FF060();
    result = sub_24A9FF030();
    if (v38)
    {
      if (!v13)
      {
        goto LABEL_36;
      }

      v1 = v36;
      if (sub_24A9FEEF0())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82800, &qword_24AA00CA0);
      v9 = sub_24A9FED70();
      sub_24A9FEF60();
      result = v9(v39, 0);
      if (v8 == v35)
      {
LABEL_28:
        sub_24A9C96CC(v40, v41, v42);
        return v43;
      }
    }

    else
    {
      if (v13)
      {
        goto LABEL_37;
      }

      v1 = v36;
      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v24 = 1 << *(v36 + 32);
      if (v12 >= v24)
      {
        goto LABEL_32;
      }

      v25 = v12 >> 6;
      v26 = *(v34 + 8 * (v12 >> 6));
      if (((v26 >> v12) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(v36 + 36) != v11)
      {
        goto LABEL_34;
      }

      v27 = v26 & (-2 << (v12 & 0x3F));
      if (v27)
      {
        v24 = __clz(__rbit64(v27)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v25 << 6;
        v29 = v25 + 1;
        v30 = (v33 + 8 * v25);
        while (v29 < (v24 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_24A9C96CC(v12, v11, 0);
            v24 = __clz(__rbit64(v31)) + v28;
            goto LABEL_27;
          }
        }

        result = sub_24A9C96CC(v12, v11, 0);
      }

LABEL_27:
      v40 = v24;
      v41 = v11;
      v42 = 0;
      v2 = v35;
      if (v8 == v35)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t TUCall.answerRequest()@<X0>(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D6EDC0]) initWithCall_];
  result = sub_24A9C27EC(0, &qword_27EF82870, 0x277D6EDC0);
  a1[3] = result;
  a1[4] = &protocol witness table for TUAnswerRequest;
  *a1 = v3;
  return result;
}

id TUCall.supportsRequestToScreenShare.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  v1 = [v0 requestToScreenShareEnabled];

  return v1;
}

void TUCall.metadataSubtitle.getter(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82820, &qword_24AA00CB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v67 - v5;
  v7 = sub_24A9FEA60();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_24A9FEC20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v67 - v15;
  v17 = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  v18 = [v17 callerIDSyncMacEnabled];

  if (!v18)
  {
    goto LABEL_4;
  }

  v19 = [v1 contactIdentifiers];
  if (v19)
  {
    v20 = v19;
    v21 = sub_24A9FECE0();

    v22 = *(v21 + 16);

    if (v22)
    {
      goto LABEL_4;
    }
  }

  v28 = [v1 displayContext];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 callDirectoryLabel];

    if (v30)
    {
      v23 = sub_24A9FEC40();
      v24 = v31;

      v32 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v32 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v32)
      {
        v33 = [v67[0] displayContext];
        if (v33)
        {
          v34 = v33;
          v35 = [v33 callDirectoryLocalizedExtensionContainingAppName];

          if (v35)
          {
            goto LABEL_25;
          }
        }

        goto LABEL_33;
      }
    }
  }

  v36 = v67[0];
  v37 = [v67[0] callDirectoryName];
  if (v37)
  {
    v38 = v37;
    v39 = sub_24A9FEC40();
    v41 = v40;

    v67[4] = v39;
    v67[5] = v41;
    sub_24A9FEC10();
    (*(v10 + 16))(v14, v16, v9);
    if (qword_27EF82670 != -1)
    {
      swift_once();
    }

    v42 = qword_27EF84B30;
    sub_24A9FEA50();
    v43 = sub_24A9FEC60();
    v45 = v44;
    (*(v10 + 8))(v16, v9);
    v67[1] = v43;
    v67[2] = v45;
    sub_24A9C99AC();
    v46 = sub_24A9FEE80();

    v47 = *(v46 + 16);
    if (v47)
    {
      v48 = (v46 + 16 + 16 * v47);
      v23 = *v48;
      v24 = v48[1];

      v49 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v49 = v23 & 0xFFFFFFFFFFFFLL;
      }

      v36 = v67[0];
      if (v49)
      {
        v50 = [v67[0] callDirectoryIdentityExtension];
        if (v50)
        {
          v35 = v50;
LABEL_25:
          v25 = sub_24A9FEC40();
          v26 = v51;

          v27 = 1;
          goto LABEL_6;
        }

LABEL_33:
        v25 = 0;
        v26 = 0;
        v27 = 1;
        goto LABEL_6;
      }
    }

    else
    {

      v36 = v67[0];
    }
  }

  v52 = [v36 imageURL];
  if (v52)
  {
    v53 = v52;
    sub_24A9FE950();

    v54 = sub_24A9FE960();
    (*(*(v54 - 8) + 56))(v6, 0, 1, v54);
    sub_24A9C994C(v6, &qword_27EF82820, &qword_24AA00CB0);
    v55 = [v36 localizedLabel];
    if (v55)
    {
      v56 = v55;
      v23 = sub_24A9FEC40();
      v24 = v57;

      v58 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v58 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v58)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    v59 = sub_24A9FE960();
    (*(*(v59 - 8) + 56))(v6, 1, 1, v59);
    sub_24A9C994C(v6, &qword_27EF82820, &qword_24AA00CB0);
  }

  v60 = [v36 suggestedDisplayName];
  if (v60)
  {
    v61 = v60;
    v23 = sub_24A9FEC40();
    v24 = v62;

    v63 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v63 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v63)
    {
      v27 = 1;
      v26 = 0xE500000000000000;
      v25 = 0x656C707041;
      goto LABEL_6;
    }
  }

  v64 = [v36 localizedLabel];
  if (v64)
  {
    v65 = v64;
    v23 = sub_24A9FEC40();
    v24 = v66;

    goto LABEL_5;
  }

LABEL_4:
  v23 = 0;
  v24 = 0;
LABEL_5:
  v25 = 0;
  v26 = 0;
  v27 = 0;
LABEL_6:
  *a1 = v23;
  *(a1 + 8) = v24;
  *(a1 + 16) = v25;
  *(a1 + 24) = v26;
  *(a1 + 32) = v27;
}

id TUCall.senderIdentityShortName.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  v2 = [v1 isDualSimParityEnabled];

  if (!v2)
  {
    return 0;
  }

  v3 = [v0 provider];
  v4 = [v3 prioritizedSenderIdentities];

  v5 = [v4 count];
  if (v5 < 2)
  {
    return 0;
  }

  result = [v0 localSenderIdentity];
  if (result)
  {
    v7 = result;
    v8 = [result localizedShortName];

    v9 = sub_24A9FEC40();
    return v9;
  }

  return result;
}

id TUCall.isWaitOnHoldActive.getter()
{
  result = [v0 smartHoldingSession];
  if (result)
  {
    v2 = result;
    v3 = [result state];

    return (qword_285DFD0F8 == v3 || unk_285DFD100 == v3);
  }

  return result;
}

id TUCall.isRelay.getter()
{
  result = [v0 isEndpointOnCurrentDevice];
  if (result)
  {
    return ([v0 isHostedOnCurrentDevice] ^ 1);
  }

  return result;
}

id TUCall.isThumper.getter()
{
  v1 = [v0 provider];
  v2 = [v1 isTelephonyProvider];

  if (!v2)
  {
    return 0;
  }

  result = [v0 isEndpointOnCurrentDevice];
  if (result)
  {
    result = [v0 isHostedOnCurrentDevice];
    if (result)
    {
      return ([objc_opt_self() supportsPrimaryCalling] ^ 1);
    }
  }

  return result;
}

uint64_t sub_24A9C7F6C@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 conversationID];
  if (v3)
  {
    v4 = v3;
    sub_24A9FEA20();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_24A9FEA40();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id (*sub_24A9C80B4(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 isUplinkMuted];
  return sub_24A9C8108;
}

id (*sub_24A9C8158(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 isSendingVideo];
  return sub_24A9C81AC;
}

id sub_24A9C8230()
{
  result = [v0 isEndpointOnCurrentDevice];
  if (result)
  {
    return ([v0 isHostedOnCurrentDevice] ^ 1);
  }

  return result;
}

id sub_24A9C826C()
{
  v1 = [v0 provider];
  v2 = [v1 isTelephonyProvider];

  if (!v2)
  {
    return 0;
  }

  result = [v0 isEndpointOnCurrentDevice];
  if (result)
  {
    result = [v0 isHostedOnCurrentDevice];
    if (result)
    {
      return ([objc_opt_self() supportsPrimaryCalling] ^ 1);
    }
  }

  return result;
}

id sub_24A9C8334()
{
  v1 = [v0 model];

  return v1;
}

uint64_t sub_24A9C8378(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [v3 *a3];
  v5 = sub_24A9FEC40();

  return v5;
}

id sub_24A9C83CC()
{
  v1 = [v0 dialRequestForRedial];

  return v1;
}

uint64_t sub_24A9C8408@<X0>(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D6EDC0]) initWithCall_];
  result = sub_24A9C27EC(0, &qword_27EF82870, 0x277D6EDC0);
  a1[3] = result;
  a1[4] = &protocol witness table for TUAnswerRequest;
  *a1 = v3;
  return result;
}

id sub_24A9C852C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  v1 = [v0 requestToScreenShareEnabled];

  return v1;
}

id sub_24A9C85C4()
{
  v1 = [v0 smartHoldingSession];

  return v1;
}

id sub_24A9C8634()
{
  v1 = [v0 recordingSession];

  return v1;
}

uint64_t sub_24A9C8678()
{
  v1 = [*v0 remoteParticipantHandles];
  sub_24A9C27EC(0, &qword_27EF827E8, 0x277D6EEE8);
  sub_24A9C95DC();
  v2 = sub_24A9FED60();

  v3 = sub_24A9C71A8(v2);

  return v3;
}

id sub_24A9C8714()
{
  v1 = [*v0 handle];

  return v1;
}

id sub_24A9C8780()
{
  v1 = [*v0 provider];

  return v1;
}

double sub_24A9C8870@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  TUCall.metadataSubtitle.getter(v6);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_24A9C88EC@<X0>(SEL *a1@<X2>, void (*a2)(void)@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v8 = [*v4 *a1];
  if (v8)
  {
    v9 = v8;
    a2();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, v10, 1, v11);
}

uint64_t sub_24A9C89D4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_24A9FEC40();

  return v6;
}

BOOL FTNCall.eligibleForRedial.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A9C9AF8(&unk_285DFD108);
  if (((*(a2 + 120))(a1, a2) & 1) != 0 || (*(a2 + 32))(a1, a2) != 6)
  {

    return 0;
  }

  else
  {
    v5 = (*(*(a2 + 8) + 88))(a1);
    v6 = sub_24A9C8B40(v5, v4);
  }

  return v6;
}

BOOL sub_24A9C8B40(int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_24A9FF1E0();
  sub_24A9FF200();
  v5 = sub_24A9FF210();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 4 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t CallInfoProviding.postCallAlert.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24A9FEA60();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = sub_24A9FEC20();
  v8 = *(v47 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v47);
  v12 = &v45[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v45[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v45[-v17];
  v48 = (*(a2 + 96))(a1, a2);
  v20 = v19;
  v21 = (*(a2 + 88))(a1, a2);
  if (v21 > 6)
  {
    if (v21 <= 0x1F)
    {
      if (((1 << v21) & 0x81EF5F00) != 0)
      {
        result = (*(a2 + 104))(a1, a2);
        v24 = result;
        if (v23)
        {
LABEL_5:
          v25 = v23;
          goto LABEL_33;
        }

        sub_24A9FEC10();
        v28 = v47;
        (*(v8 + 16))(v12, v14, v47);
        if (qword_27EF82670 != -1)
        {
          swift_once();
        }

        v29 = qword_27EF84B30;
        sub_24A9FEA50();
        v24 = sub_24A9FEC60();
        v25 = v30;
        result = (*(v8 + 8))(v14, v28);
LABEL_33:
        LOBYTE(v27) = 1;
        v35 = v48;
        if (!v20)
        {
          goto LABEL_38;
        }

        goto LABEL_34;
      }

      if (v21 == 13)
      {
        v36 = (*(a2 + 48))(a1, a2);
        v46 = [v36 isFaceTimeProvider];

        if (!v46)
        {
          result = (*(a2 + 104))(a1, a2);
          v24 = result;
          if (v23)
          {
            goto LABEL_5;
          }

          sub_24A9FEC10();
          v40 = v8;
          v41 = *(v8 + 16);
          v42 = v47;
          v41(v12, v14, v47);
          if (qword_27EF82670 != -1)
          {
            swift_once();
          }

          v43 = qword_27EF84B30;
          sub_24A9FEA50();
          v24 = sub_24A9FEC60();
          v25 = v44;
          result = (*(v40 + 8))(v14, v42);
          goto LABEL_33;
        }

LABEL_30:
        sub_24A9FEC10();
        v37 = v47;
        (*(v8 + 16))(v12, v14, v47);
        if (qword_27EF82670 != -1)
        {
          swift_once();
        }

        v38 = qword_27EF84B30;
        sub_24A9FEA50();
        v24 = sub_24A9FEC60();
        v25 = v39;
        result = (*(v8 + 8))(v14, v37);
        goto LABEL_33;
      }

      if (v21 == 15)
      {
        goto LABEL_16;
      }
    }

    if (v21 != 7)
    {
      goto LABEL_26;
    }

    v32 = (*(a2 + 48))(a1, a2);
    LODWORD(v27) = [v32 isTelephonyProvider];

    if (v27)
    {
      goto LABEL_22;
    }

LABEL_28:

    v35 = 0;
    v20 = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_38;
  }

  if ((v21 - 2) < 2 || (v21 - 5) < 2)
  {
LABEL_16:
    (*(a2 + 40))(a1, a2);
    v31 = sub_24A9FE9D0();
    if ((*(*(v31 - 8) + 48))(v18, 1, v31) != 1)
    {

      result = sub_24A9C994C(v18, &qword_27EF827E0, &qword_24AA00C90);
LABEL_27:
      v35 = 0;
      v20 = 0;
      v24 = 0;
      v25 = 0;
      LOBYTE(v27) = 0;
      goto LABEL_38;
    }

    sub_24A9C994C(v18, &qword_27EF827E0, &qword_24AA00C90);
    if ((*(a2 + 64))(a1, a2))
    {
      goto LABEL_30;
    }

LABEL_26:

    goto LABEL_27;
  }

  if (v21 != 1)
  {
    goto LABEL_26;
  }

  v26 = (*(a2 + 48))(a1, a2);
  LODWORD(v27) = [v26 isTelephonyProvider];

  if (!v27)
  {
    goto LABEL_28;
  }

LABEL_22:
  sub_24A9FEC10();
  v27 = v47;
  (*(v8 + 16))(v12, v14, v47);
  if (qword_27EF82670 != -1)
  {
    swift_once();
  }

  v33 = qword_27EF84B30;
  sub_24A9FEA50();
  v24 = sub_24A9FEC60();
  v25 = v34;
  result = (*(v8 + 8))(v14, v27);
  LOBYTE(v27) = 0;
  v35 = v48;
  if (v20)
  {
LABEL_34:
    if (v35 == v24 && v20 == v25 || (result = sub_24A9FF170(), (result & 1) != 0))
    {

      v35 = 0;
      v20 = 0;
    }
  }

LABEL_38:
  *a3 = v35;
  *(a3 + 8) = v20;
  *(a3 + 16) = v24;
  *(a3 + 24) = v25;
  *(a3 + 32) = v27;
  return result;
}

size_t sub_24A9C9404(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82890, &qword_24AA00D68);
  v10 = *(sub_24A9FE9D0() - 8);
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
  v15 = *(sub_24A9FE9D0() - 8);
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

unint64_t sub_24A9C95DC()
{
  result = qword_27EF827F0;
  if (!qword_27EF827F0)
  {
    sub_24A9C27EC(255, &qword_27EF827E8, 0x277D6EEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF827F0);
  }

  return result;
}

void (*sub_24A9C9644(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C222870](a2, a3);
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
    return sub_24A9C96C4;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A9C96CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
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

void sub_24A9C9734(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x24C2227E0](a1, a2, v11);
      sub_24A9C27EC(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_24A9C27EC(0, a5, a6);
    if (sub_24A9FEF10() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_24A9FEF20();
    swift_dynamicCast();
    v6 = v20;
    v12 = *(a4 + 40);
    v13 = sub_24A9FEE50();
    v14 = -1 << *(a4 + 32);
    v10 = v13 & ~v14;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v15 = ~v14;
      do
      {
        v16 = *(*(a4 + 48) + 8 * v10);
        v17 = sub_24A9FEE60();

        if (v17)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v15;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
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

  v18 = *(*(a4 + 48) + 8 * v10);

  v19 = v18;
}

uint64_t sub_24A9C994C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_24A9C99AC()
{
  result = qword_27EF82828;
  if (!qword_27EF82828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82828);
  }

  return result;
}

uint64_t sub_24A9C9A00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_24A9C9A68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A9C9AB0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24A9C9AF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82880, &qword_24AA00D60);
    v3 = sub_24A9FEFA0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 4 * v4);
      v11 = *(v3 + 40);
      sub_24A9FF1E0();
      sub_24A9FF200();
      result = sub_24A9FF210();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 4 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 4 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24A9CA0E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_24A9CB35C;
  a2[1] = v6;
}

uint64_t sub_24A9CA160(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v6 + 24);
  *(v6 + 16) = sub_24A9CB324;
  *(v6 + 24) = v5;
}

uint64_t MockMessageService.isAvailable.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MockMessageService.isAvailable.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_24A9CA2E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_24A9CB2EC;
  a2[1] = v6;
}

uint64_t sub_24A9CA360(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v6 + 40);
  *(v6 + 32) = sub_24A9CB274;
  *(v6 + 40) = v5;
}

uint64_t MockMessageService.onMessageSend.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MockMessageService.onMessageSend.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void *MockMessageService.__allocating_init()()
{
  result = swift_allocObject();
  result[2] = sub_24A9CA0D8;
  result[3] = 0;
  result[4] = nullsub_1;
  result[5] = 0;
  return result;
}

void *MockMessageService.init()()
{
  result = v0;
  v0[2] = sub_24A9CA0D8;
  v0[3] = 0;
  v0[4] = nullsub_1;
  v0[5] = 0;
  return result;
}

uint64_t MockMessageService.available(with:)()
{
  *(v1 + 40) = v0;
  sub_24A9FED20();
  *(v1 + 48) = sub_24A9FED10();
  v3 = sub_24A9FED00();

  return MEMORY[0x2822009F8](sub_24A9CA5F8, v3, v2);
}

uint64_t sub_24A9CA5F8()
{
  v2 = v0[5];
  v1 = v0[6];

  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  v6 = v3(v5);

  v7 = v0[1];

  return v7(v6 & 1);
}

Swift::Void __swiftcall MockMessageService.send(message:to:)(Swift::String message, Swift::String to)
{
  v3 = v2;
  object = to._object;
  countAndFlagsBits = to._countAndFlagsBits;
  v6 = message._object;
  v7 = message._countAndFlagsBits;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  v12 = sub_24A9FED40();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_24A9FED20();

  v13 = sub_24A9FED10();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v3;
  v14[5] = v7;
  v14[6] = v6;
  v14[7] = countAndFlagsBits;
  v14[8] = object;
  sub_24A9CAA28(0, 0, v11, &unk_24AA00D98, v14);
}

uint64_t sub_24A9CA7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  sub_24A9FED20();
  v8[10] = sub_24A9FED10();
  v10 = sub_24A9FED00();

  return MEMORY[0x2822009F8](sub_24A9CA88C, v10, v9);
}

uint64_t sub_24A9CA88C()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];

  swift_beginAccess();
  v8 = *(v6 + 32);
  v7 = *(v6 + 40);

  v8(v5, v4, v3, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24A9CA94C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24A9CBD30;

  return sub_24A9CA7EC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24A9CAA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_24A9CB5B0(a3, v27 - v11);
  v13 = sub_24A9FED40();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_24A9CB620(v12);
  }

  else
  {
    sub_24A9FED30();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24A9FED00();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_24A9FEC90() + 32;
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

      sub_24A9CB620(a3);

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

  sub_24A9CB620(a3);
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

uint64_t sub_24A9CACE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_24A9CB5B0(a3, v27 - v11);
  v13 = sub_24A9FED40();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_24A9CB620(v12);
  }

  else
  {
    sub_24A9FED30();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24A9FED00();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v27[0] = a3;
      v21 = sub_24A9FEC90() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_24A9CBB54();

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

      sub_24A9CB620(v27[0]);

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

  sub_24A9CB620(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_24A9CBB54();
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t MockMessageService.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t MockMessageService.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_24A9CB01C()
{
  *(v1 + 40) = *v0;
  sub_24A9FED20();
  *(v1 + 48) = sub_24A9FED10();
  v3 = sub_24A9FED00();

  return MEMORY[0x2822009F8](sub_24A9CA5F8, v3, v2);
}

uint64_t sub_24A9CB0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = *v4;
  v14 = sub_24A9FED40();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_24A9FED20();

  v15 = sub_24A9FED10();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v13;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = a3;
  v16[8] = a4;
  sub_24A9CAA28(0, 0, v12, &unk_24AA00E18, v16);
}

uint64_t sub_24A9CB274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v9[0] = a1;
  v9[1] = a2;
  v8[0] = a3;
  v8[1] = a4;
  return v5(v9, v8);
}

uint64_t sub_24A9CB2B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A9CB2EC(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, a1[1], *a2, a2[1]);
}

uint64_t sub_24A9CB324()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t sub_24A9CB35C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result & 1;
  return result;
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24A9CB3E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24A9CB4BC;

  return sub_24A9CA7EC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24A9CB4BC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24A9CB5B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A9CB620(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A9CB688(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24A9CB780;

  return v7(a1);
}

uint64_t sub_24A9CB780()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24A9CB878(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_24A9CB96C;

  return v6(v2 + 16);
}

uint64_t sub_24A9CB96C()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_24A9CBA9C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24A9CBD30;

  return sub_24A9CB878(a1, v5);
}

unint64_t sub_24A9CBB54()
{
  result = qword_27EF828A0;
  if (!qword_27EF828A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF828A0);
  }

  return result;
}

uint64_t sub_24A9CBBA0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24A9CB4BC;

  return sub_24A9CB878(a1, v5);
}

uint64_t sub_24A9CBC58(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24A9CBD30;

  return sub_24A9CB688(a1, v5);
}

uint64_t static AlertConfiguration.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27EF828B0 = a1;
  return result;
}

id AlertConfiguration.__allocating_init(showDummyUIKitView:isAudio:ignoresDND:)(char a1, char a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v7[OBJC_IVAR____TtC24FaceTimeNotificationCore18AlertConfiguration_showDummyUIKitView] = a1;
  v7[OBJC_IVAR____TtC24FaceTimeNotificationCore18AlertConfiguration_isAudio] = a2;
  v7[OBJC_IVAR____TtC24FaceTimeNotificationCore18AlertConfiguration_ignoresDND] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id AlertConfiguration.init(showDummyUIKitView:isAudio:ignoresDND:)(char a1, char a2, char a3)
{
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC24FaceTimeNotificationCore18AlertConfiguration_showDummyUIKitView] = a1;
  v3[OBJC_IVAR____TtC24FaceTimeNotificationCore18AlertConfiguration_isAudio] = a2;
  v3[OBJC_IVAR____TtC24FaceTimeNotificationCore18AlertConfiguration_ignoresDND] = a3;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id AlertConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AlertConfiguration.init()()
{
  ObjectType = swift_getObjectType();
  v1 = objc_allocWithZone(ObjectType);
  v1[OBJC_IVAR____TtC24FaceTimeNotificationCore18AlertConfiguration_showDummyUIKitView] = 0;
  v1[OBJC_IVAR____TtC24FaceTimeNotificationCore18AlertConfiguration_isAudio] = 0;
  v1[OBJC_IVAR____TtC24FaceTimeNotificationCore18AlertConfiguration_ignoresDND] = 1;
  v4.receiver = v1;
  v4.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v2;
}

Swift::Void __swiftcall AlertConfiguration.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore18AlertConfiguration_showDummyUIKitView);
  v4 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore18AlertConfiguration_isAudio);
  v6 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeBool:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore18AlertConfiguration_ignoresDND);
  v8 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeBool:v7 forKey:v8];
}

id AlertConfiguration.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_24A9CE158(a1);

  return v4;
}

id AlertConfiguration.init(coder:)(void *a1)
{
  v2 = sub_24A9CE158(a1);

  return v2;
}

uint64_t sub_24A9CC37C()
{
  v1 = *v0;
  sub_24A9FF1E0();
  MEMORY[0x24C222A90](v1);
  return sub_24A9FF210();
}

uint64_t sub_24A9CC3F0()
{
  v1 = *v0;
  sub_24A9FF1E0();
  MEMORY[0x24C222A90](v1);
  return sub_24A9FF210();
}

void *sub_24A9CC434@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

id AlertPresentationError.nsError.getter(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v3 = sub_24A9FEC30();
  v4 = [v2 initWithDomain:v3 code:a1 userInfo:0];

  return v4;
}

uint64_t static Notice.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27EF828B1 = a1;
  return result;
}

uint64_t Notice.Button.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Notice.Button.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

FaceTimeNotificationCore::Notice::Button __swiftcall Notice.Button.init(id:title:)(Swift::String id, Swift::String title)
{
  *v2 = id;
  v2[1] = title;
  result.title = title;
  result.id = id;
  return result;
}

uint64_t sub_24A9CC6C0()
{
  if (*v0)
  {
    result = 0x656C746974;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_24A9CC6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_24A9FF170() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24A9FF170();

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

uint64_t sub_24A9CC7D4(uint64_t a1)
{
  v2 = sub_24A9CE27C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A9CC810(uint64_t a1)
{
  v2 = sub_24A9CE27C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Notice.Button.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF828D0, &qword_24AA00E60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A9CE27C();
  sub_24A9FF230();
  v16 = 0;
  v12 = v14[3];
  sub_24A9FF130();
  if (!v12)
  {
    v15 = 1;
    sub_24A9FF130();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t Notice.Button.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF828E0, &qword_24AA00E68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A9CE27C();
  sub_24A9FF220();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_24A9FF0F0();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_24A9FF0F0();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24A9CCBE0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Notice.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_id;
  v4 = sub_24A9FEA40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Notice.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_title);
  v2 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_title + 8);

  return v1;
}

uint64_t Notice.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_subtitle);
  v2 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_subtitle + 8);

  return v1;
}

uint64_t Notice.imageData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_imageData);
  sub_24A9CE2D0(v1, *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_imageData + 8));
  return v1;
}

id Notice.__allocating_init(id:title:subtitle:imageData:showAvatar:buttons:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  v15 = objc_allocWithZone(v9);
  v16 = OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_id;
  v17 = sub_24A9FEA40();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v15[v16], a1, v17);
  v19 = &v15[OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_title];
  *v19 = a2;
  v19[1] = a3;
  v20 = &v15[OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_subtitle];
  *v20 = a4;
  v20[1] = a5;
  v21 = &v15[OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_imageData];
  *v21 = a6;
  v21[1] = a7;
  v15[OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_showAvatar] = a8;
  *&v15[OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_buttons] = a9;
  v27.receiver = v15;
  v27.super_class = v9;
  v22 = objc_msgSendSuper2(&v27, sel_init);
  (*(v18 + 8))(a1, v17);
  return v22;
}

id Notice.init(id:title:subtitle:imageData:showAvatar:buttons:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  ObjectType = swift_getObjectType();
  v16 = OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_id;
  v17 = sub_24A9FEA40();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v9[v16], a1, v17);
  v19 = &v9[OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_title];
  *v19 = a2;
  v19[1] = a3;
  v20 = &v9[OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_subtitle];
  *v20 = a4;
  v20[1] = a5;
  v21 = &v9[OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_imageData];
  *v21 = a6;
  v21[1] = a7;
  v9[OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_showAvatar] = a8;
  *&v9[OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_buttons] = a9;
  v27.receiver = v9;
  v27.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v27, sel_init);
  (*(v18 + 8))(a1, v17);
  return v22;
}

Swift::Void __swiftcall Notice.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = sub_24A9FEA00();
  v5 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  v6 = *(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_title);
  v7 = *(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_title + 8);
  v8 = sub_24A9FEC30();
  v9 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];

  v10 = *(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_subtitle);
  v11 = *(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_subtitle + 8);
  v12 = sub_24A9FEC30();
  v13 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeObject:v12 forKey:v13];

  v14 = 0;
  if (*(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_imageData + 8) >> 60 != 15)
  {
    v15 = *(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_imageData);
    v14 = sub_24A9FE970();
  }

  v16 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeObject:v14 forKey:v16];
  swift_unknownObjectRelease();

  v17 = *(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_showAvatar);
  v18 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeBool:v17 forKey:v18];

  v19 = sub_24A9FE8E0();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_24A9FE8D0();
  v27[0] = *(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_buttons);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF828E8, &unk_24AA00E70);
  sub_24A9CE3E0(&qword_27EF828F0, sub_24A9CE338);
  v22 = sub_24A9FE8C0();
  v24 = v23;

  v27[0] = v22;
  v27[1] = v24;
  v25 = sub_24A9FF160();
  sub_24A9CE38C(v27);
  v26 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeObject:v25 forKey:v26];
  swift_unknownObjectRelease();
}

id Notice.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF82900, &qword_24AA01280);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v51 - v7;
  v9 = sub_24A9FEA40();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF826C0, &unk_24AA006A0);
  v14 = swift_allocObject();
  v58 = xmmword_24AA00690;
  *(v14 + 16) = xmmword_24AA00690;
  *(v14 + 32) = sub_24A9C27EC(0, &unk_27EF82910, 0x277CCAD78);
  sub_24A9FEE40();

  if (!v63)
  {
    sub_24A9C994C(&v62, &qword_27EF826D0, "*4");
    (*(v10 + 56))(v8, 1, 1, v9);
    goto LABEL_11;
  }

  v15 = swift_dynamicCast();
  (*(v10 + 56))(v8, v15 ^ 1u, 1, v9);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
LABEL_11:
    v24 = &unk_27EF82900;
    v25 = &qword_24AA01280;
    v26 = v8;
LABEL_12:
    sub_24A9C994C(v26, v24, v25);
LABEL_13:
    if (qword_27EF82680 != -1)
    {
      swift_once();
    }

    v27 = sub_24A9FEA90();
    __swift_project_value_buffer(v27, qword_27EF84B68);
    v28 = sub_24A9FEA70();
    v29 = sub_24A9FED90();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_24A9BF000, v28, v29, "Failed to decode Notice.", v30, 2u);
      MEMORY[0x24C223120](v30, -1, -1);
    }

    v31 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v32 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  (*(v10 + 32))(v13, v8, v9);
  v16 = swift_allocObject();
  *(v16 + 16) = v58;
  v17 = sub_24A9C27EC(0, &qword_27EF82920, 0x277CCACA8);
  *(v16 + 32) = v17;
  sub_24A9FEE40();

  if (!v63)
  {
    (*(v10 + 8))(v13, v9);
    v24 = &qword_27EF826D0;
    v25 = "*4";
    v26 = &v62;
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v10 + 8))(v13, v9);
    goto LABEL_13;
  }

  v18 = v61;
  v56 = v60;
  v57 = ObjectType;
  v19 = swift_allocObject();
  *(v19 + 16) = v58;
  *(v19 + 32) = v17;
  sub_24A9FEE40();

  if (!v63)
  {
    (*(v10 + 8))(v13, v9);

    sub_24A9C994C(&v62, &qword_27EF826D0, "*4");
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v10 + 8))(v13, v9);
    goto LABEL_22;
  }

  v20 = v61;
  v55 = v60;
  v21 = sub_24A9C27EC(0, &qword_27EF82FB0, 0x277CBEA90);
  v22 = sub_24A9FEE30();
  if (!v22 || (v62 = xmmword_24AA00E50, v23 = v22, sub_24A9FE980(), v23, *(&v62 + 1) >> 60 == 15))
  {
    (*(v10 + 8))(v13, v9);

LABEL_22:

    goto LABEL_13;
  }

  v53 = v20;
  v54 = v62;
  v34 = sub_24A9FE8B0();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  sub_24A9FE8A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF828E8, &unk_24AA00E70);
  sub_24A9CE3E0(&qword_27EF82930, sub_24A9CE458);
  sub_24A9FE890();

  v52 = v62;
  (*(v10 + 16))(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_id, v13, v9);
  v37 = (v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_title);
  v38 = v55;
  *v37 = v56;
  v37[1] = v18;
  v39 = (v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_subtitle);
  v40 = v53;
  *v39 = v38;
  v39[1] = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = v58;
  *(v41 + 32) = v21;
  sub_24A9FEE40();

  if (v63)
  {
    v42 = swift_dynamicCast();
    v43 = v60;
    v44 = v61;
    if (!v42)
    {
      v43 = 0;
      v44 = 0xF000000000000000;
    }
  }

  else
  {
    sub_24A9C994C(&v62, &qword_27EF826D0, "*4");
    v43 = 0;
    v44 = 0xF000000000000000;
  }

  v45 = v57;
  v46 = v54;
  v47 = (v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_imageData);
  *v47 = v43;
  v47[1] = v44;
  v48 = sub_24A9FEC30();
  v49 = [a1 decodeBoolForKey_];
  sub_24A9CE4AC(v46, *(&v54 + 1));

  (*(v10 + 8))(v13, v9);
  *(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_showAvatar) = v49;
  *(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_buttons) = v52;
  v59.receiver = v2;
  v59.super_class = v45;
  v50 = objc_msgSendSuper2(&v59, sel_init);

  return v50;
}

uint64_t Notice.debugDescription.getter()
{
  v1 = v0;
  sub_24A9FEFC0();
  swift_getObjectType();
  v2 = sub_24A9FF260();
  MEMORY[0x24C222550](v2);

  MEMORY[0x24C222550](0x203A646928, 0xE500000000000000);
  sub_24A9FEA40();
  sub_24A9CE5AC(&qword_27EF82940);
  v3 = sub_24A9FF150();
  MEMORY[0x24C222550](v3);

  MEMORY[0x24C222550](0x3A656C746974202CLL, 0xE900000000000020);
  MEMORY[0x24C222550](*(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_title), *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_title + 8));
  MEMORY[0x24C222550](0x746974627573202CLL, 0xEC000000203A656CLL);
  MEMORY[0x24C222550](*(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_subtitle), *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_subtitle + 8));
  result = MEMORY[0x24C222550](0x446567616D69202CLL, 0xED0000203A617461);
  v5 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_imageData + 8);
  if (v5 >> 60 != 15)
  {
    v10 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_imageData);
    v11 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      if (v11 != 2)
      {
        goto LABEL_2;
      }

      v14 = v10 + 16;
      v12 = *(v10 + 16);
      v13 = *(v14 + 8);
      v15 = __OFSUB__(v13, v12);
      v10 = v13 - v12;
      if (!v15)
      {
        goto LABEL_2;
      }

      __break(1u);
    }

    else if (!v11)
    {
      goto LABEL_2;
    }

    if (__OFSUB__(HIDWORD(v10), v10))
    {
      __break(1u);
      return result;
    }
  }

LABEL_2:
  v6 = sub_24A9FF150();
  MEMORY[0x24C222550](v6);

  MEMORY[0x24C222550](0x7641776F6873202CLL, 0xEE00203A72617461);
  if (*(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_showAvatar))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_showAvatar))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x24C222550](v7, v8);

  MEMORY[0x24C222550](0x6E6F74747562202CLL, 0xEB00000000203A73);
  v9 = MEMORY[0x24C222590](*(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_buttons), &type metadata for Notice.Button);
  MEMORY[0x24C222550](v9);

  MEMORY[0x24C222550](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_24A9CE0DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_id;
  v5 = sub_24A9FEA40();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

id sub_24A9CE158(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_24A9FEC30();
  v5 = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC24FaceTimeNotificationCore18AlertConfiguration_showDummyUIKitView] = v5;
  v6 = sub_24A9FEC30();
  v7 = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC24FaceTimeNotificationCore18AlertConfiguration_isAudio] = v7;
  v8 = sub_24A9FEC30();
  LOBYTE(a1) = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC24FaceTimeNotificationCore18AlertConfiguration_ignoresDND] = a1;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

unint64_t sub_24A9CE27C()
{
  result = qword_27EF828D8;
  if (!qword_27EF828D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF828D8);
  }

  return result;
}

uint64_t sub_24A9CE2D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24A9CE2E4(a1, a2);
  }

  return a1;
}

uint64_t sub_24A9CE2E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_24A9CE338()
{
  result = qword_27EF828F8;
  if (!qword_27EF828F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF828F8);
  }

  return result;
}

uint64_t sub_24A9CE3E0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF828E8, &unk_24AA00E70);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A9CE458()
{
  result = qword_27EF82938;
  if (!qword_27EF82938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82938);
  }

  return result;
}

uint64_t sub_24A9CE4AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24A9CE4C0(a1, a2);
  }

  return a1;
}

uint64_t sub_24A9CE4C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_24A9CE518()
{
  result = qword_27EF82948;
  if (!qword_27EF82948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82948);
  }

  return result;
}

uint64_t sub_24A9CE5AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24A9FEA40();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24A9CE5F0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27EF828B0;
  return result;
}

uint64_t sub_24A9CE63C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27EF828B0 = v1;
  return result;
}

uint64_t sub_24A9CE684@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27EF828B1;
  return result;
}

uint64_t sub_24A9CE6D0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27EF828B1 = v1;
  return result;
}

uint64_t type metadata accessor for Notice()
{
  result = qword_27EF829C8;
  if (!qword_27EF829C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A9CE7E0()
{
  result = sub_24A9FEA40();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24A9CE8E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24A9CE92C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for Notice.Button.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Notice.Button.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24A9CEADC()
{
  result = qword_27EF829D8;
  if (!qword_27EF829D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF829D8);
  }

  return result;
}

unint64_t sub_24A9CEB34()
{
  result = qword_27EF829E0;
  if (!qword_27EF829E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF829E0);
  }

  return result;
}

unint64_t sub_24A9CEB8C()
{
  result = qword_27EF829E8;
  if (!qword_27EF829E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF829E8);
  }

  return result;
}

uint64_t sub_24A9CEBE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_onReceiveAction);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = &unk_24AA01550;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A9CF0A8(v4);
}

uint64_t sub_24A9CEC88(uint64_t a1, uint64_t *a2, uint64_t *a3, int *a4)
{
  v5 = *a2;
  v6 = *a3;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24A9CB4BC;

  return v10(v5, v6);
}

uint64_t sub_24A9CED88(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = &unk_24AA01540;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_onReceiveAction);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24A9CF0A8(v3);
  return sub_24A9CF118(v8);
}

uint64_t sub_24A9CEE50(uint64_t a1, uint64_t a2, int *a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_24A9CEF58;

  return v7();
}

uint64_t sub_24A9CEF58()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t NotificationServiceClient.onReceiveAction.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_onReceiveAction);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_24A9CF0A8(v3);
  return v3;
}

uint64_t sub_24A9CF0A8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t NotificationServiceClient.onReceiveAction.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_onReceiveAction);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_24A9CF118(v6);
}

uint64_t sub_24A9CF118(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24A9CF188(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_24A9FED20();
  v7[3] = sub_24A9FED10();
  v14 = (a4 + *a4);
  v11 = a4[1];
  v12 = swift_task_alloc();
  v7[4] = v12;
  *v12 = v7;
  v12[1] = sub_24A9CF2B0;

  return v14(a6, a7);
}

uint64_t sub_24A9CF2B0()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_24A9FED00();

  return MEMORY[0x2822009F8](sub_24A9CF3EC, v5, v4);
}

uint64_t sub_24A9CF3EC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

id NotificationServiceClient.init(service:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v4 = &v1[OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_onReceiveAction];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_connection] = 0;
  *&v1[OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_connectionTask] = 0;
  *&v1[OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_assertion] = 0;
  *&v1[OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_presentedAlertIdentifiers] = MEMORY[0x277D84FA0];
  sub_24A9C2DDC(a1, &v1[OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_service]);
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

id NotificationServiceClient.__allocating_init(source:destination:)(void *a1, uint64_t *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_24A9DA8AC(a1, a2);

  return v6;
}

id NotificationServiceClient.init(source:destination:)(void *a1, uint64_t *a2)
{
  v3 = sub_24A9DA8AC(a1, a2);

  return v3;
}

uint64_t sub_24A9CF7A0()
{
  v1[4] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  type metadata accessor for ServiceClientActor();
  v1[6] = swift_initStaticObject();
  v1[7] = sub_24A9DBACC(&qword_27EF82A40, v3, type metadata accessor for ServiceClientActor);
  v5 = sub_24A9FED00();
  v1[8] = v5;
  v1[9] = v4;

  return MEMORY[0x2822009F8](sub_24A9CF8A4, v5, v4);
}

uint64_t sub_24A9CF8A4()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_connectionTask;
  v3 = *&v1[OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_connectionTask];
  v0[10] = v3;
  if (v3)
  {
    v4 = *(MEMORY[0x277D857E0] + 4);

    v5 = swift_task_alloc();
    v0[11] = v5;
    v6 = sub_24A9C27EC(0, &qword_27EF828A0, 0x277CCAE80);
    *v5 = v0;
    v5[1] = sub_24A9CFAAC;
    v7 = v0 + 3;
  }

  else
  {
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[5];
    v11 = sub_24A9FED40();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = v9;
    v12[3] = v8;
    v12[4] = v1;
    v13 = v1;
    v3 = sub_24A9CACE8(0, 0, v10, &unk_24AA015A0, v12);
    v0[12] = v3;
    v14 = *&v1[v2];
    *&v1[v2] = v3;

    v15 = *(MEMORY[0x277D857E0] + 4);
    v16 = swift_task_alloc();
    v0[13] = v16;
    v6 = sub_24A9C27EC(0, &qword_27EF828A0, 0x277CCAE80);
    *v16 = v0;
    v16[1] = sub_24A9CFC3C;
    v7 = v0 + 2;
  }

  return MEMORY[0x282200460](v7, v3, v6);
}

uint64_t sub_24A9CFAAC()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_24A9CFBCC, v4, v3);
}

uint64_t sub_24A9CFBCC()
{
  v1 = v0[10];

  v2 = v0[3];
  v3 = v0[5];

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_24A9CFC3C()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_24A9CFD5C, v4, v3);
}

uint64_t sub_24A9CFD5C()
{
  v1 = v0[12];

  v2 = v0[2];
  v3 = v0[5];

  v4 = v0[1];

  return v4(v2);
}

uint64_t NotificationServiceClient.sendAction(_:to:)(uint64_t a1, uint64_t a2)
{
  v2[23] = a1;
  v2[24] = a2;
  v3 = swift_task_alloc();
  v2[25] = v3;
  *v3 = v2;
  v3[1] = sub_24A9CFE5C;

  return sub_24A9CF7A0();
}

uint64_t sub_24A9CFE5C(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](sub_24A9CFF5C, 0, 0);
}

uint64_t sub_24A9CFF5C()
{
  [*(v0 + 208) remoteObjectProxy];
  sub_24A9FEE90();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A30, &qword_24AA01248);
  if (!swift_dynamicCast())
  {
    return sub_24A9FF080();
  }

  v2 = *(v0 + 184);
  v1 = *(v0 + 192);

  v3 = *(v0 + 176);
  *(v0 + 216) = v3;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_24A9D015C;
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A38, &qword_24AA01250);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_24A9D0344;
  *(v0 + 104) = &block_descriptor;
  *(v0 + 112) = v4;
  [v3 sendAction:v2 to:v1 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_24A9D015C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_24A9D02D0;
  }

  else
  {
    v3 = sub_24A9D026C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A9D026C()
{
  v1 = *(v0 + 216);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24A9D02D0()
{
  v1 = v0[27];
  v2 = v0[28];
  swift_willThrow();
  swift_unknownObjectRelease();
  v3 = v0[1];
  v4 = v0[28];

  return v3();
}

uint64_t sub_24A9D0344(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A80, &unk_24AA02770);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_24A9D0580(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_24A9D0658;

  return NotificationServiceClient.sendAction(_:to:)(v8, v9);
}

uint64_t sub_24A9D0658()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  v10 = *(v3 + 40);
  if (v2)
  {
    v11 = sub_24A9FE920();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 40), 0);
  }

  _Block_release(*(v4 + 40));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t NotificationServiceClient.showTestAlert(configuration:)(uint64_t a1)
{
  *(v1 + 184) = a1;
  v2 = swift_task_alloc();
  *(v1 + 192) = v2;
  *v2 = v1;
  v2[1] = sub_24A9D08A4;

  return sub_24A9CF7A0();
}

uint64_t sub_24A9D08A4(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](sub_24A9D09A4, 0, 0);
}

uint64_t sub_24A9D09A4()
{
  [*(v0 + 200) remoteObjectProxy];
  sub_24A9FEE90();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A30, &qword_24AA01248);
  if (!swift_dynamicCast())
  {
    return sub_24A9FF080();
  }

  v1 = *(v0 + 184);

  v2 = *(v0 + 176);
  *(v0 + 208) = v2;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_24A9D0B94;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A38, &qword_24AA01250);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_24A9D0344;
  *(v0 + 104) = &block_descriptor_5;
  *(v0 + 112) = v3;
  [v2 showTestAlertWithConfiguration:v1 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_24A9D0B94()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_24A9D0D08;
  }

  else
  {
    v3 = sub_24A9D0CA4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A9D0CA4()
{
  v1 = *(v0 + 208);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24A9D0D08()
{
  v1 = v0[26];
  v2 = v0[27];
  swift_willThrow();
  swift_unknownObjectRelease();
  v3 = v0[1];
  v4 = v0[27];

  return v3();
}

uint64_t sub_24A9D0F04(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_24A9DBDEC;

  return NotificationServiceClient.showTestAlert(configuration:)(v6);
}

uint64_t NotificationServiceClient.showDialPrompt(dialRequest:in:)(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = *(*(type metadata accessor for AlertIdentifier(0) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = OBJC_IVAR____TtC24FaceTimeNotificationCore22WrappedAlertIdentifier_value;
  v3[30] = v5;
  v3[31] = v6;
  type metadata accessor for ServiceClientActor();
  swift_initStaticObject();
  sub_24A9DBACC(&qword_27EF82A40, v7, type metadata accessor for ServiceClientActor);
  v9 = sub_24A9FED00();
  v3[32] = v9;
  v3[33] = v8;

  return MEMORY[0x2822009F8](sub_24A9D10D4, v9, v8);
}

uint64_t sub_24A9D10D4()
{
  v1 = v0[30];
  v2 = v0[29];
  sub_24A9DAA40(v0[27] + v0[31], v2);
  swift_beginAccess();
  sub_24A9D89A4(v1, v2);
  sub_24A9DAAA4(v1);
  swift_endAccess();
  sub_24A9D174C();
  v3 = swift_task_alloc();
  v0[34] = v3;
  *v3 = v0;
  v3[1] = sub_24A9D11C8;
  v4 = v0[28];

  return sub_24A9CF7A0();
}

uint64_t sub_24A9D11C8(uint64_t a1)
{
  v2 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = a1;

  return MEMORY[0x2822009F8](sub_24A9D12C8, 0, 0);
}

uint64_t sub_24A9D12C8()
{
  [*(v0 + 280) remoteObjectProxy];
  sub_24A9FEE90();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A30, &qword_24AA01248);
  if (!swift_dynamicCast())
  {
    return sub_24A9FF080();
  }

  v2 = *(v0 + 208);
  v1 = *(v0 + 216);

  v3 = *(v0 + 200);
  *(v0 + 288) = v3;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_24A9D14C8;
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A38, &qword_24AA01250);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_24A9D0344;
  *(v0 + 104) = &block_descriptor_10;
  *(v0 + 112) = v4;
  [v3 showDialPromptWithDialRequest:v2 in:v1 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_24A9D14C8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  if (v2)
  {
    v3 = sub_24A9D16BC;
  }

  else
  {
    v3 = sub_24A9D15D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A9D15D8()
{
  v1 = v0[36];
  swift_unknownObjectRelease();
  v2 = v0[32];
  v3 = v0[33];

  return MEMORY[0x2822009F8](sub_24A9D163C, v2, v3);
}

uint64_t sub_24A9D163C()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  sub_24A9D174C();

  v4 = v0[1];

  return v4();
}

uint64_t sub_24A9D16BC()
{
  v1 = v0[36];
  v2 = v0[37];
  v4 = v0[29];
  v3 = v0[30];
  swift_willThrow();
  swift_unknownObjectRelease();

  v5 = v0[1];
  v6 = v0[37];

  return v5();
}

void sub_24A9D174C()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong remoteObjectProxy];
    sub_24A9FEE90();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82AA8, &qword_24AA01580);
    if (swift_dynamicCast())
    {

      swift_unknownObjectRelease();
      if (qword_27EF82680 != -1)
      {
        swift_once();
      }

      v5 = sub_24A9FEA90();
      __swift_project_value_buffer(v5, qword_27EF84B68);
      v6 = sub_24A9FEA70();
      v7 = sub_24A9FED90();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_24A9BF000, v6, v7, "Not acquiring assertion for FaceTimeNotificationViewBridgeService because ViewBridge handles it.", v8, 2u);
        MEMORY[0x24C223120](v8, -1, -1);
      }
    }

    else
    {
      sub_24A9FF080();
      __break(1u);
    }
  }

  else
  {
    if (qword_27EF82680 != -1)
    {
      swift_once();
    }

    v9 = sub_24A9FEA90();
    __swift_project_value_buffer(v9, qword_27EF84B68);
    v10 = sub_24A9FEA70();
    v11 = sub_24A9FEDA0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24A9BF000, v10, v11, "Refreshing assertion.", v12, 2u);
      MEMORY[0x24C223120](v12, -1, -1);
    }

    v13 = OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_presentedAlertIdentifiers;
    swift_beginAccess();
    v14 = OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_assertion;
    v15 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_assertion);
    if (*(*(v0 + v13) + 16))
    {
      if (!v15)
      {
        v16 = sub_24A9FEA70();
        v17 = sub_24A9FEDA0();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_24A9BF000, v16, v17, "Acquiring assertion.", v18, 2u);
          MEMORY[0x24C223120](v18, -1, -1);
        }

        sub_24A9D7244();
      }
    }

    else if (v15)
    {
      v19 = v15;
      v20 = sub_24A9FEA70();
      v21 = sub_24A9FEDA0();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v29 = v23;
        *v22 = 136315138;
        sub_24A9C27EC(0, &qword_27EF82AA0, 0x277D46DB8);
        v24 = v19;
        v25 = sub_24A9FEC80();
        v27 = sub_24A9D83EC(v25, v26, &v29);

        *(v22 + 4) = v27;
        _os_log_impl(&dword_24A9BF000, v20, v21, "Invalidating assertion %s.", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x24C223120](v23, -1, -1);
        MEMORY[0x24C223120](v22, -1, -1);
      }

      [v19 invalidate];
      v28 = *(v1 + v14);
      *(v1 + v14) = 0;
    }
  }
}

uint64_t sub_24A9D1D2C(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_24A9DBDFC;

  return NotificationServiceClient.showDialPrompt(dialRequest:in:)(v8, v9);
}

uint64_t NotificationServiceClient.showDialPrompt(joinRequest:in:)(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = *(*(type metadata accessor for AlertIdentifier(0) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = OBJC_IVAR____TtC24FaceTimeNotificationCore22WrappedAlertIdentifier_value;
  v3[30] = v5;
  v3[31] = v6;
  type metadata accessor for ServiceClientActor();
  swift_initStaticObject();
  sub_24A9DBACC(&qword_27EF82A40, v7, type metadata accessor for ServiceClientActor);
  v9 = sub_24A9FED00();
  v3[32] = v9;
  v3[33] = v8;

  return MEMORY[0x2822009F8](sub_24A9D1F10, v9, v8);
}

uint64_t sub_24A9D1F10()
{
  v1 = v0[30];
  v2 = v0[29];
  sub_24A9DAA40(v0[27] + v0[31], v2);
  swift_beginAccess();
  sub_24A9D89A4(v1, v2);
  sub_24A9DAAA4(v1);
  swift_endAccess();
  sub_24A9D174C();
  v3 = swift_task_alloc();
  v0[34] = v3;
  *v3 = v0;
  v3[1] = sub_24A9D2004;
  v4 = v0[28];

  return sub_24A9CF7A0();
}

uint64_t sub_24A9D2004(uint64_t a1)
{
  v2 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = a1;

  return MEMORY[0x2822009F8](sub_24A9D2104, 0, 0);
}

uint64_t sub_24A9D2104()
{
  [*(v0 + 280) remoteObjectProxy];
  sub_24A9FEE90();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A30, &qword_24AA01248);
  if (!swift_dynamicCast())
  {
    return sub_24A9FF080();
  }

  v2 = *(v0 + 208);
  v1 = *(v0 + 216);

  v3 = *(v0 + 200);
  *(v0 + 288) = v3;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_24A9D2304;
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A38, &qword_24AA01250);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_24A9D0344;
  *(v0 + 104) = &block_descriptor_15;
  *(v0 + 112) = v4;
  [v3 showDialPromptWithJoinRequest:v2 in:v1 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_24A9D2304()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  if (v2)
  {
    v3 = sub_24A9DBE68;
  }

  else
  {
    v3 = sub_24A9D2414;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A9D2414()
{
  v1 = v0[36];
  swift_unknownObjectRelease();
  v2 = v0[32];
  v3 = v0[33];

  return MEMORY[0x2822009F8](sub_24A9DBE00, v2, v3);
}

uint64_t sub_24A9D2608(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_24A9DBDFC;

  return NotificationServiceClient.showDialPrompt(joinRequest:in:)(v8, v9);
}

uint64_t NotificationServiceClient.showCall(call:in:)(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = *(*(type metadata accessor for AlertIdentifier(0) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = OBJC_IVAR____TtC24FaceTimeNotificationCore22WrappedAlertIdentifier_value;
  v3[30] = v5;
  v3[31] = v6;
  type metadata accessor for ServiceClientActor();
  swift_initStaticObject();
  sub_24A9DBACC(&qword_27EF82A40, v7, type metadata accessor for ServiceClientActor);
  v9 = sub_24A9FED00();
  v3[32] = v9;
  v3[33] = v8;

  return MEMORY[0x2822009F8](sub_24A9D27EC, v9, v8);
}

uint64_t sub_24A9D27EC()
{
  v1 = v0[30];
  v2 = v0[29];
  sub_24A9DAA40(v0[27] + v0[31], v2);
  swift_beginAccess();
  sub_24A9D89A4(v1, v2);
  sub_24A9DAAA4(v1);
  swift_endAccess();
  sub_24A9D174C();
  v3 = swift_task_alloc();
  v0[34] = v3;
  *v3 = v0;
  v3[1] = sub_24A9D28E0;
  v4 = v0[28];

  return sub_24A9CF7A0();
}

uint64_t sub_24A9D28E0(uint64_t a1)
{
  v2 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = a1;

  return MEMORY[0x2822009F8](sub_24A9D29E0, 0, 0);
}

uint64_t sub_24A9D29E0()
{
  [*(v0 + 280) remoteObjectProxy];
  sub_24A9FEE90();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A30, &qword_24AA01248);
  if (!swift_dynamicCast())
  {
    return sub_24A9FF080();
  }

  v2 = *(v0 + 208);
  v1 = *(v0 + 216);

  v3 = *(v0 + 200);
  *(v0 + 288) = v3;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_24A9D2BE0;
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A38, &qword_24AA01250);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_24A9D0344;
  *(v0 + 104) = &block_descriptor_20;
  *(v0 + 112) = v4;
  [v3 showCallWithCall:v2 in:v1 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_24A9D2BE0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  if (v2)
  {
    v3 = sub_24A9DBE68;
  }

  else
  {
    v3 = sub_24A9D2414;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A9D2E80(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_24A9DBDFC;

  return NotificationServiceClient.showCall(call:in:)(v8, v9);
}

uint64_t NotificationServiceClient.showNotice(_:in:)(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = *(*(type metadata accessor for AlertIdentifier(0) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v5 = sub_24A9FEA40();
  v3[31] = v5;
  v6 = *(v5 - 8);
  v3[32] = v6;
  v7 = *(v6 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF82900, &qword_24AA01280) - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v9 = sub_24A9FEA90();
  v3[37] = v9;
  v10 = *(v9 - 8);
  v3[38] = v10;
  v11 = *(v10 + 64) + 15;
  v3[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A9D3100, 0, 0);
}

uint64_t sub_24A9D3100()
{
  v38 = v0;
  v1 = v0[39];
  v2 = v0[26];
  v3 = (v0[28] + OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_service);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 8))(v4, v5);
  v6 = v2;
  v7 = sub_24A9FEA70();
  v8 = sub_24A9FED80();

  if (os_log_type_enabled(v7, v8))
  {
    v36 = v8;
    v9 = v0[35];
    v10 = v0[36];
    v11 = v0[31];
    v12 = v0[32];
    v13 = v0[26];
    v14 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v14 = 136315138;
    v15 = *(v12 + 16);
    v15(v10, v13 + OBJC_IVAR____TtC24FaceTimeNotificationCore6Notice_id, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    sub_24A9DB010(v10, v9, &unk_27EF82900, &qword_24AA01280);
    if ((*(v12 + 48))(v9, 1, v11) == 1)
    {
      sub_24A9C994C(v0[35], &unk_27EF82900, &qword_24AA01280);
      v16 = 0xE300000000000000;
      v17 = 7104878;
    }

    else
    {
      v22 = v0[33];
      v21 = v0[34];
      v34 = v14;
      v24 = v0[31];
      v23 = v0[32];
      (*(v23 + 32))(v21, v0[35], v24);
      v15(v22, v21, v24);
      v17 = sub_24A9FEC80();
      v16 = v25;
      (*(v23 + 8))(v21, v24);
      v14 = v34;
    }

    v27 = v0[38];
    v26 = v0[39];
    v28 = v0[37];
    sub_24A9C994C(v0[36], &unk_27EF82900, &qword_24AA01280);
    v29 = sub_24A9D83EC(v17, v16, &v37);

    *(v14 + 4) = v29;
    _os_log_impl(&dword_24A9BF000, v7, v36, "Client show notice %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x24C223120](v35, -1, -1);
    MEMORY[0x24C223120](v14, -1, -1);

    (*(v27 + 8))(v26, v28);
  }

  else
  {
    v19 = v0[38];
    v18 = v0[39];
    v20 = v0[37];

    (*(v19 + 8))(v18, v20);
  }

  v0[40] = OBJC_IVAR____TtC24FaceTimeNotificationCore22WrappedAlertIdentifier_value;
  type metadata accessor for ServiceClientActor();
  swift_initStaticObject();
  sub_24A9DBACC(&qword_27EF82A40, v30, type metadata accessor for ServiceClientActor);
  v32 = sub_24A9FED00();
  v0[41] = v32;
  v0[42] = v31;

  return MEMORY[0x2822009F8](sub_24A9D34AC, v32, v31);
}

uint64_t sub_24A9D34AC()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  sub_24A9DAA40(v0[27] + v0[40], v2);
  swift_beginAccess();
  sub_24A9D89A4(v1, v2);
  sub_24A9DAAA4(v1);
  swift_endAccess();
  sub_24A9D174C();
  v4 = swift_task_alloc();
  v0[43] = v4;
  *v4 = v0;
  v4[1] = sub_24A9D35A0;
  v5 = v0[28];

  return sub_24A9CF7A0();
}

uint64_t sub_24A9D35A0(uint64_t a1)
{
  v2 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = a1;

  return MEMORY[0x2822009F8](sub_24A9D36A0, 0, 0);
}

uint64_t sub_24A9D36A0()
{
  [*(v0 + 352) remoteObjectProxy];
  sub_24A9FEE90();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A30, &qword_24AA01248);
  if (!swift_dynamicCast())
  {
    return sub_24A9FF080();
  }

  v2 = *(v0 + 208);
  v1 = *(v0 + 216);

  v3 = *(v0 + 200);
  *(v0 + 360) = v3;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_24A9D38A0;
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A38, &qword_24AA01250);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_24A9D0344;
  *(v0 + 104) = &block_descriptor_25;
  *(v0 + 112) = v4;
  [v3 showNotice:v2 in:v1 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_24A9D38A0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 368) = v2;
  if (v2)
  {
    v3 = sub_24A9D3AD8;
  }

  else
  {
    v3 = sub_24A9D39B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A9D39B0()
{
  v1 = v0[45];
  swift_unknownObjectRelease();
  v2 = v0[41];
  v3 = v0[42];

  return MEMORY[0x2822009F8](sub_24A9D3A14, v2, v3);
}

uint64_t sub_24A9D3A14()
{
  v1 = v0[39];
  v3 = v0[35];
  v2 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[28];
  sub_24A9D174C();

  v9 = v0[1];

  return v9();
}

uint64_t sub_24A9D3AD8()
{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[39];
  v5 = v0[35];
  v4 = v0[36];
  v7 = v0[33];
  v6 = v0[34];
  v9 = v0[29];
  v8 = v0[30];
  swift_willThrow();
  swift_unknownObjectRelease();

  v10 = v0[1];
  v11 = v0[46];

  return v10();
}

uint64_t sub_24A9D3D3C(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_24A9DBDFC;

  return NotificationServiceClient.showNotice(_:in:)(v8, v9);
}

uint64_t NotificationServiceClient.dismissAlert(identifier:animated:)(uint64_t a1, char a2)
{
  *(v3 + 376) = a2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v2;
  v4 = type metadata accessor for AlertIdentifier(0);
  *(v3 + 248) = v4;
  v5 = *(v4 - 8);
  *(v3 + 256) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF82FA0, &qword_24AA01290) - 8) + 64) + 15;
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  v8 = sub_24A9FEA90();
  *(v3 + 304) = v8;
  v9 = *(v8 - 8);
  *(v3 + 312) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 320) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A9D3F90, 0, 0);
}

uint64_t sub_24A9D3F90()
{
  v35 = v0;
  v1 = v0[40];
  v2 = v0[29];
  v3 = (v0[30] + OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_service);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 8))(v4, v5);
  v6 = v2;
  v7 = sub_24A9FEA70();
  v8 = sub_24A9FED80();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = v0[36];
    v9 = v0[37];
    v11 = v0[31];
    v12 = v0[32];
    v13 = v0[29];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34 = v15;
    *v14 = 136315138;
    sub_24A9DAA40(v13 + OBJC_IVAR____TtC24FaceTimeNotificationCore22WrappedAlertIdentifier_value, v9);
    (*(v12 + 56))(v9, 0, 1, v11);
    sub_24A9DB010(v9, v10, &unk_27EF82FA0, &qword_24AA01290);
    v16 = (*(v12 + 48))(v10, 1, v11);
    v17 = v0[36];
    if (v16 == 1)
    {
      sub_24A9C994C(v17, &unk_27EF82FA0, &qword_24AA01290);
      v18 = 0xE300000000000000;
      v19 = 7104878;
    }

    else
    {
      v24 = v0[33];
      v23 = v0[34];
      v25 = v0[31];
      sub_24A9DAB00(v17, v23);
      sub_24A9DAA40(v23, v24);
      v19 = sub_24A9FEC80();
      v18 = v26;
      sub_24A9DAAA4(v23);
    }

    v28 = v0[39];
    v27 = v0[40];
    v29 = v0[38];
    sub_24A9C994C(v0[37], &unk_27EF82FA0, &qword_24AA01290);
    v30 = sub_24A9D83EC(v19, v18, &v34);

    *(v14 + 4) = v30;
    _os_log_impl(&dword_24A9BF000, v7, v8, "Client dismiss alert %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x24C223120](v15, -1, -1);
    MEMORY[0x24C223120](v14, -1, -1);

    (*(v28 + 8))(v27, v29);
  }

  else
  {
    v21 = v0[39];
    v20 = v0[40];
    v22 = v0[38];

    (*(v21 + 8))(v20, v22);
  }

  v31 = swift_task_alloc();
  v0[41] = v31;
  *v31 = v0;
  v31[1] = sub_24A9D429C;
  v32 = v0[30];

  return sub_24A9CF7A0();
}

uint64_t sub_24A9D429C(uint64_t a1)
{
  v2 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = a1;

  return MEMORY[0x2822009F8](sub_24A9D439C, 0, 0);
}

uint64_t sub_24A9D439C()
{
  [*(v0 + 336) remoteObjectProxy];
  sub_24A9FEE90();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A30, &qword_24AA01248);
  if (!swift_dynamicCast())
  {
    return sub_24A9FF080();
  }

  v1 = *(v0 + 376);
  v2 = *(v0 + 232);

  v3 = *(v0 + 224);
  *(v0 + 344) = v3;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_24A9D45A0;
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A38, &qword_24AA01250);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_24A9D0344;
  *(v0 + 104) = &block_descriptor_30;
  *(v0 + 112) = v4;
  [v3 dismissAlertWithIdentifier:v2 animated:v1 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_24A9D45A0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 352) = v2;
  if (v2)
  {
    v3 = sub_24A9D48A4;
  }

  else
  {
    v3 = sub_24A9D46B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A9D46B0()
{
  v1 = *(v0 + 344);
  swift_unknownObjectRelease();
  *(v0 + 360) = OBJC_IVAR____TtC24FaceTimeNotificationCore22WrappedAlertIdentifier_value;
  type metadata accessor for ServiceClientActor();
  swift_initStaticObject();
  sub_24A9DBACC(&qword_27EF82A40, v2, type metadata accessor for ServiceClientActor);
  v4 = sub_24A9FED00();

  return MEMORY[0x2822009F8](sub_24A9D4788, v4, v3);
}

uint64_t sub_24A9D4788()
{
  v1 = v0[45];
  v2 = v0[40];
  v4 = v0[36];
  v3 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v11 = v0[33];
  v8 = v0[29];
  v7 = v0[30];
  swift_beginAccess();
  sub_24A9D9E3C(v8 + v1, v5);
  sub_24A9C994C(v5, &unk_27EF82FA0, &qword_24AA01290);
  swift_endAccess();
  sub_24A9D174C();

  v9 = v0[1];

  return v9();
}

uint64_t sub_24A9D48A4()
{
  v1 = v0[43];
  v2 = v0[44];
  swift_willThrow();
  swift_unknownObjectRelease();
  v0[46] = OBJC_IVAR____TtC24FaceTimeNotificationCore22WrappedAlertIdentifier_value;
  type metadata accessor for ServiceClientActor();
  swift_initStaticObject();
  sub_24A9DBACC(&qword_27EF82A40, v3, type metadata accessor for ServiceClientActor);
  v5 = sub_24A9FED00();

  return MEMORY[0x2822009F8](sub_24A9D498C, v5, v4);
}

uint64_t sub_24A9D498C()
{
  v1 = v0[46];
  v2 = v0[35];
  v4 = v0[29];
  v3 = v0[30];
  swift_beginAccess();
  sub_24A9D9E3C(v4 + v1, v2);
  sub_24A9C994C(v2, &unk_27EF82FA0, &qword_24AA01290);
  swift_endAccess();
  sub_24A9D174C();

  return MEMORY[0x2822009F8](sub_24A9D4A5C, 0, 0);
}

uint64_t sub_24A9D4A5C()
{
  v1 = v0[44];
  v2 = v0[40];
  v4 = v0[36];
  v3 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[33];
  swift_willThrow();

  v8 = v0[1];
  v9 = v0[44];

  return v8();
}

uint64_t sub_24A9D4CA8(void *a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_24A9D4D74;

  return NotificationServiceClient.dismissAlert(identifier:animated:)(v8, a2);
}

uint64_t sub_24A9D4D74()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 32);
  if (v2)
  {
    v10 = sub_24A9FE920();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t NotificationServiceClient.alertExists(id:)(uint64_t a1)
{
  *(v1 + 184) = a1;
  v2 = swift_task_alloc();
  *(v1 + 192) = v2;
  *v2 = v1;
  v2[1] = sub_24A9D4FA0;

  return sub_24A9CF7A0();
}

uint64_t sub_24A9D4FA0(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](sub_24A9D50A0, 0, 0);
}

uint64_t sub_24A9D50A0()
{
  [*(v0 + 200) remoteObjectProxy];
  sub_24A9FEE90();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A30, &qword_24AA01248);
  if (!swift_dynamicCast())
  {
    return sub_24A9FF080();
  }

  v1 = *(v0 + 184);

  v2 = *(v0 + 176);
  *(v0 + 208) = v2;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 216;
  *(v0 + 24) = sub_24A9D5298;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A48, &qword_24AA012A0);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_24A9D53E0;
  *(v0 + 104) = &block_descriptor_35;
  *(v0 + 112) = v3;
  [v2 alertExistsWithId:v1 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_24A9D5298()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24A9D5378, 0, 0);
}

uint64_t sub_24A9D5378()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_24A9D53E0(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_24A9D55C4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_24A9D5688;

  return NotificationServiceClient.alertExists(id:)(v6);
}

uint64_t sub_24A9D5688(char a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v7 = *(v9 + 8);

  return v7();
}

uint64_t NotificationServiceClient.frame(identifier:)(uint64_t a1)
{
  *(v1 + 216) = a1;
  v2 = swift_task_alloc();
  *(v1 + 224) = v2;
  *v2 = v1;
  v2[1] = sub_24A9D5878;

  return sub_24A9CF7A0();
}

uint64_t sub_24A9D5878(uint64_t a1)
{
  v2 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = a1;

  return MEMORY[0x2822009F8](sub_24A9D5978, 0, 0);
}

uint64_t sub_24A9D5978()
{
  [*(v0 + 232) remoteObjectProxy];
  sub_24A9FEE90();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A30, &qword_24AA01248);
  if (!swift_dynamicCast())
  {
    return sub_24A9FF080();
  }

  v1 = *(v0 + 216);

  v2 = *(v0 + 208);
  *(v0 + 240) = v2;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 176;
  *(v0 + 24) = sub_24A9D5B70;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A50, &qword_24AA012B0);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_24A9D5D80;
  *(v0 + 104) = &block_descriptor_39;
  *(v0 + 112) = v3;
  [v2 frameWithIdentifier:v1 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_24A9D5B70()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_24A9D5D0C;
  }

  else
  {
    v3 = sub_24A9D5C80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A9D5C80()
{
  v1 = v0[30];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[25];
  swift_unknownObjectRelease();
  v6 = v0[1];
  v7.n128_u64[0] = v2;
  v8.n128_u64[0] = v3;
  v9.n128_u64[0] = v4;
  v10.n128_u64[0] = v5;

  return v6(v7, v8, v9, v10);
}

uint64_t sub_24A9D5D0C()
{
  v1 = v0[30];
  v2 = v0[31];
  swift_willThrow();
  swift_unknownObjectRelease();
  v3 = v0[1];
  v4 = v0[31];

  return v3();
}

uint64_t sub_24A9D5D80(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A80, &unk_24AA02770);
    v12 = swift_allocError();
    *v13 = a2;
    v14 = a2;

    return MEMORY[0x282200958](v11, v12);
  }

  else
  {
    v15 = *(*(v11 + 64) + 40);
    *v15 = a3;
    v15[1] = a4;
    v15[2] = a5;
    v15[3] = a6;

    return MEMORY[0x282200950](v11);
  }
}

uint64_t sub_24A9D5FFC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_24A9D60C0;

  return NotificationServiceClient.frame(identifier:)(v6);
}

uint64_t sub_24A9D60C0(double a1, double a2, double a3, double a4)
{
  v6 = v4;
  v12 = *v5;
  v11 = *v5;
  v13 = *(*v5 + 40);
  v14 = *(*v5 + 24);
  v15 = *(*v5 + 16);
  v16 = *v5;

  v17 = *(v11 + 32);
  if (v6)
  {
    v18 = sub_24A9FE920();

    (*(v17 + 16))(v17, v18, 0.0, 0.0, 0.0, 0.0);
  }

  else
  {
    (*(v17 + 16))(*(v11 + 32), 0, a1, a2, a3, a4);
  }

  _Block_release(*(v12 + 32));
  v19 = *(v16 + 8);

  return v19();
}

uint64_t sub_24A9D629C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[27] = a1;
  v4[28] = a4;
  v5 = sub_24A9FEA90();
  v4[29] = v5;
  v6 = *(v5 - 8);
  v4[30] = v6;
  v7 = *(v6 + 64) + 15;
  v4[31] = swift_task_alloc();
  type metadata accessor for ServiceClientActor();
  swift_initStaticObject();
  sub_24A9DBACC(&qword_27EF82A40, v8, type metadata accessor for ServiceClientActor);
  v10 = sub_24A9FED00();
  v4[32] = v10;
  v4[33] = v9;

  return MEMORY[0x2822009F8](sub_24A9D63BC, v10, v9);
}

uint64_t sub_24A9D63BC()
{
  v1 = v0[28];
  v2 = OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_service;
  v0[34] = OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_service;
  v3 = *(v1 + v2 + 24);
  v4 = *(v1 + v2 + 32);
  __swift_project_boxed_opaque_existential_1((v1 + v2), v3);
  v5 = *(v4 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[35] = v7;
  *v7 = v0;
  v7[1] = sub_24A9D64F0;

  return v9(v3, v4);
}

uint64_t sub_24A9D64F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  *(v4 + 288) = a1;
  *(v4 + 296) = v1;

  v7 = *(v3 + 264);
  v8 = *(v3 + 256);
  if (v1)
  {
    v9 = sub_24A9D6B64;
  }

  else
  {
    v9 = sub_24A9D6634;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24A9D6634()
{
  v1 = v0[36];
  v2 = v0[28];
  v3 = objc_opt_self();
  v4 = [v3 interfaceWithProtocol_];
  [v1 setRemoteObjectInterface_];

  v5 = [v3 interfaceWithProtocol_];
  [v1 setExportedInterface_];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong remoteObjectProxy];
    sub_24A9FEE90();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82AA8, &qword_24AA01580);
    if (!swift_dynamicCast())
    {
      return sub_24A9FF080();
    }

    v9 = v0[26];
  }

  else
  {
    v9 = 0;
  }

  v10 = v0[36];
  v43 = v0[31];
  v11 = v0[28];
  v12 = (v11 + v0[34]);
  v13 = (v11 + OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_onReceiveAction);
  swift_beginAccess();
  v15 = *v13;
  v14 = v13[1];
  v16 = swift_allocObject();
  v16[2] = v9;
  v16[3] = v15;
  v16[4] = v14;
  v17 = type metadata accessor for NotificationServiceClient.ExportedObject();
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR____TtCC24FaceTimeNotificationCore25NotificationServiceClient14ExportedObject_onReceiveAction];
  *v19 = &unk_24AA015B0;
  *(v19 + 1) = v16;
  sub_24A9CF0A8(v15);
  v0[23] = v18;
  v0[24] = v17;
  v20 = objc_msgSendSuper2((v0 + 23), sel_init);
  [v10 setExportedObject_];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_24A9DBD48;
  v0[7] = v21;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24A9FD910;
  v0[5] = &block_descriptor_224;
  v22 = _Block_copy(v0 + 2);
  v23 = v0[7];

  [v10 setInterruptionHandler_];
  _Block_release(v22);
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[12] = sub_24A9DBD84;
  v0[13] = v24;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_24A9FD910;
  v0[11] = &block_descriptor_228;
  v25 = _Block_copy(v0 + 8);
  v26 = v0[13];

  [v10 setInvalidationHandler_];
  _Block_release(v25);
  [v10 activate];
  v27 = v12[3];
  v28 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v27);
  (*(v28 + 8))(v27, v28);
  v29 = sub_24A9FEA70();
  v30 = sub_24A9FED80();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_24A9BF000, v29, v30, "XPC connection is activated.", v31, 2u);
    MEMORY[0x24C223120](v31, -1, -1);
    v32 = v20;
  }

  else
  {
    v32 = v29;
    v29 = v20;
  }

  v33 = v0[36];
  v35 = v0[30];
  v34 = v0[31];
  v37 = v0[28];
  v36 = v0[29];
  v38 = v0[27];

  (*(v35 + 8))(v34, v36);
  v39 = *(v37 + OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_connection);
  *(v37 + OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_connection) = v33;
  v40 = v33;

  *v38 = v40;

  v41 = v0[1];

  return v41();
}

uint64_t sub_24A9D6B64()
{
  v1 = v0[37];
  v2 = (v0[28] + v0[34]);
  sub_24A9FEFC0();

  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v0[21] = (*(v4 + 24))(v3, v4);
  v0[22] = v5;
  v6 = sub_24A9FEC80();
  MEMORY[0x24C222550](v6);

  MEMORY[0x24C222550](0x3A726F72726520, 0xE700000000000000);
  v0[25] = v1;
  v7 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A80, &unk_24AA02770);
  v8 = sub_24A9FEC80();
  MEMORY[0x24C222550](v8);

  return sub_24A9FF080();
}

uint64_t sub_24A9D6CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_24A9FED20();
  v5[7] = sub_24A9FED10();
  v7 = sub_24A9FED00();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x2822009F8](sub_24A9D6D84, v7, v6);
}

uint64_t sub_24A9D6D84()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[7];
    v4 = v0[2];
    v3 = v0[3];
    v5 = v0[4];
    swift_unknownObjectRetain();

    [v1 receivedActionWithAlertIdentifier:v4 action:v3];
    swift_unknownObjectRelease();
LABEL_3:
    v6 = v0[1];

    return v6();
  }

  v8 = v0[5];
  if (!v8)
  {
    v15 = v0[7];

    goto LABEL_3;
  }

  v9 = v0[6];
  v10 = v0[5];
  v16 = (v8 + *v8);
  v11 = v8[1];
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_24A9D6F0C;
  v14 = v0[2];
  v13 = v0[3];

  return v16(v14, v13);
}

uint64_t sub_24A9D6F0C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_24A9D702C, v4, v3);
}

uint64_t sub_24A9D702C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

void sub_24A9D708C(uint64_t a1, const char *a2)
{
  v3 = sub_24A9FEA90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = (Strong + OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_service);
    v11 = v10[3];
    v12 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v12 + 8))(v11, v12);
    v13 = sub_24A9FEA70();
    v14 = sub_24A9FED80();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_24A9BF000, v13, v14, a2, v15, 2u);
      MEMORY[0x24C223120](v15, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    v16 = *&v9[OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_connection];
    *&v9[OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_connection] = 0;
  }
}

void sub_24A9D7244()
{
  v59[1] = *MEMORY[0x277D85DE8];
  v1 = *&v0[OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_connection];
  if (v1)
  {
    oslog = v1;
    if ([oslog processIdentifier]< 1)
    {
      if (qword_27EF82680 != -1)
      {
        swift_once();
      }

      v18 = sub_24A9FEA90();
      __swift_project_value_buffer(v18, qword_27EF84B68);
      v6 = sub_24A9FEA70();
      v19 = sub_24A9FED90();
      if (os_log_type_enabled(v6, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_24A9BF000, v6, v19, "Cannot acquire assertion because the process identifier is invalid.", v20, 2u);
        MEMORY[0x24C223120](v20, -1, -1);
      }
    }

    else
    {
      v2 = OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_assertion;
      if (!*&v0[OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_assertion])
      {
        v22 = [objc_opt_self() targetWithPid_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82AB0, &qword_24AA01588);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_24AA01220;
        v24 = sub_24A9FEC30();
        v25 = sub_24A9FEC30();
        v26 = [objc_opt_self() attributeWithDomain:v24 name:v25];

        *(v23 + 32) = v26;
        v27 = objc_allocWithZone(MEMORY[0x277D46DB8]);
        v28 = sub_24A9FEC30();
        sub_24A9C27EC(0, &qword_27EF82AB8, 0x277D46DD8);
        v29 = sub_24A9FECD0();

        v30 = [v27 initWithExplanation:v28 target:v22 attributes:v29];

        v59[0] = 0;
        if ([v30 acquireWithError_])
        {
          v31 = v0;
          v32 = qword_27EF82680;
          v33 = v59[0];
          if (v32 != -1)
          {
            swift_once();
          }

          v34 = sub_24A9FEA90();
          __swift_project_value_buffer(v34, qword_27EF84B68);
          v35 = v30;
          v36 = sub_24A9FEA70();
          v37 = sub_24A9FEDA0();

          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v59[0] = v39;
            *v38 = 136315138;
            sub_24A9C27EC(0, &qword_27EF82AA0, 0x277D46DB8);
            v40 = v35;
            v41 = sub_24A9FEC80();
            v43 = sub_24A9D83EC(v41, v42, v59);

            *(v38 + 4) = v43;
            _os_log_impl(&dword_24A9BF000, v36, v37, "Successfully acquired assertion %s.", v38, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v39);
            MEMORY[0x24C223120](v39, -1, -1);
            MEMORY[0x24C223120](v38, -1, -1);
          }

          v44 = *&v31[v2];
          *&v31[v2] = v35;
        }

        else
        {
          v45 = v59[0];
          v46 = sub_24A9FE930();

          swift_willThrow();
          if (qword_27EF82680 != -1)
          {
            swift_once();
          }

          v47 = sub_24A9FEA90();
          __swift_project_value_buffer(v47, qword_27EF84B68);
          v48 = v46;
          v49 = sub_24A9FEA70();
          v50 = sub_24A9FED90();

          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            *v51 = 138412290;
            v53 = v46;
            v54 = _swift_stdlib_bridgeErrorToNSError();
            *(v51 + 4) = v54;
            *v52 = v54;
            _os_log_impl(&dword_24A9BF000, v49, v50, "Failed to acquire assertion: %@", v51, 0xCu);
            sub_24A9C994C(v52, &unk_27EF82AC0, &qword_24AA01590);
            MEMORY[0x24C223120](v52, -1, -1);
            MEMORY[0x24C223120](v51, -1, -1);
          }

          else
          {
          }
        }

        goto LABEL_34;
      }

      if (qword_27EF82680 != -1)
      {
        swift_once();
      }

      v3 = sub_24A9FEA90();
      __swift_project_value_buffer(v3, qword_27EF84B68);
      v4 = v0;
      v5 = v0;
      v6 = sub_24A9FEA70();
      v7 = sub_24A9FED90();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v59[0] = v9;
        *v8 = 136315138;
        v10 = *&v4[v2];
        if (v10)
        {
          v58 = *&v4[v2];
          sub_24A9C27EC(0, &qword_27EF82AA0, 0x277D46DB8);
          v11 = v10;
          v12 = sub_24A9FEC80();
          v14 = v13;
        }

        else
        {
          v14 = 0xE300000000000000;
          v12 = 7104878;
        }

        v55 = sub_24A9D83EC(v12, v14, v59);

        *(v8 + 4) = v55;
        _os_log_impl(&dword_24A9BF000, v6, v7, "Cannot acquire assertion because one already exists %s.", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v9);
        MEMORY[0x24C223120](v9, -1, -1);
        MEMORY[0x24C223120](v8, -1, -1);

LABEL_34:
        v56 = *MEMORY[0x277D85DE8];
        return;
      }
    }
  }

  else
  {
    if (qword_27EF82680 != -1)
    {
      swift_once();
    }

    v15 = sub_24A9FEA90();
    __swift_project_value_buffer(v15, qword_27EF84B68);
    oslog = sub_24A9FEA70();
    v16 = sub_24A9FED90();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24A9BF000, oslog, v16, "Cannot acquire assertion because the connection is nil.", v17, 2u);
      MEMORY[0x24C223120](v17, -1, -1);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

id NotificationServiceClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_24A9D7BA0@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_24A9FEAC0();
  *a1 = result;
  return result;
}

uint64_t sub_24A9D7BE0()
{
  v0 = sub_24A9FEDC0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A9FEE00();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_24A9FEBE0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_24A9C27EC(0, &qword_27EF82A60, 0x277D85C90);
  sub_24A9FEBD0();
  v10[1] = MEMORY[0x277D84F90];
  sub_24A9DBACC(&qword_27EF82A68, 255, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A70, &unk_24AA013D0);
  sub_24A9DAC48();
  sub_24A9FEEA0();
  (*(v1 + 104))(v4, *MEMORY[0x277D85268], v0);
  result = sub_24A9FEE10();
  qword_27EF829F0 = result;
  return result;
}

uint64_t sub_24A9D7E2C()
{
  if (qword_27EF82678 != -1)
  {
    swift_once();
  }

  return sub_24A9FEE20();
}

uint64_t sub_24A9D7E9C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24A9CBD30;

  return v7();
}

uint64_t sub_24A9D7F84(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_24A9CBD30;

  return v8();
}

uint64_t sub_24A9D806C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_24A9DB010(a3, v25 - v11, &qword_27EF82898, &qword_24AA00D88);
  v13 = sub_24A9FED40();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_24A9C994C(v12, &qword_27EF82898, &qword_24AA00D88);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_24A9FED30();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_24A9FED00();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_24A9FEC90() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_24A9C994C(a3, &qword_27EF82898, &qword_24AA00D88);

    return v23;
  }

LABEL_8:
  sub_24A9C994C(a3, &qword_27EF82898, &qword_24AA00D88);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24A9D8390(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_24A9D83EC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_24A9D83EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24A9D84B8(v11, 0, 0, 1, a1, a2);
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
    sub_24A9DA9A4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_24A9D84B8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24A9D85C4(a5, a6);
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
    result = sub_24A9FF010();
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

uint64_t sub_24A9D85C4(uint64_t a1, unint64_t a2)
{
  v4 = sub_24A9D8610(a1, a2);
  sub_24A9D8740(&unk_285DFD138);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24A9D8610(uint64_t a1, unint64_t a2)
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

  v6 = sub_24A9D882C(v5, 0);
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

  result = sub_24A9FF010();
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
        v10 = sub_24A9FECC0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24A9D882C(v10, 0);
        result = sub_24A9FEFB0();
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

uint64_t sub_24A9D8740(uint64_t result)
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

  result = sub_24A9D88A0(result, v12, 1, v3);
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

void *sub_24A9D882C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A98, &unk_24AA01570);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24A9D88A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A98, &unk_24AA01570);
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

_BYTE **sub_24A9D8994(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_24A9D89A4(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A88, &qword_24AA01560);
  v4 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v6 = &v57 - v5;
  v7 = sub_24A9FEA40();
  v69 = *(v7 - 8);
  v8 = *(v69 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v61 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v57 - v11;
  v13 = type metadata accessor for AlertIdentifier(0);
  v68 = *(v13 - 8);
  v14 = *(v68 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v65 = (&v57 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v57 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v57 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = (&v57 - v26);
  v58 = v2;
  v72 = *v2;
  v28 = *(v72 + 40);
  sub_24A9FF1E0();
  v71 = a2;
  sub_24A9DAA40(a2, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v57 = v25;
  if (EnumCaseMultiPayload == 1)
  {
    v30 = v69;
    (*(v69 + 32))(v12, v27, v7);
    MEMORY[0x24C222A90](1);
    sub_24A9DBACC(&unk_27EF82950, 255, MEMORY[0x277CC95F0]);
    sub_24A9FEBF0();
    (*(v30 + 8))(v12, v7);
  }

  else
  {
    v31 = *v27;
    v32 = v27[1];
    MEMORY[0x24C222A90](0);
    sub_24A9FECA0();

    v30 = v69;
  }

  v33 = sub_24A9FF210();
  v34 = -1 << *(v72 + 32);
  v35 = v33 & ~v34;
  v69 = v72 + 56;
  if (((*(v72 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
  {
LABEL_21:
    v51 = v58;
    v52 = *v58;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v71;
    v55 = v57;
    sub_24A9DAA40(v71, v57);
    v73 = *v51;
    sub_24A9D9488(v55, v35, isUniquelyReferenced_nonNull_native);
    *v51 = v73;
    sub_24A9DAB00(v54, v59);
    return 1;
  }

  v67 = ~v34;
  v68 = *(v68 + 72);
  v63 = (v30 + 8);
  v64 = v7;
  v60 = (v30 + 32);
  while (1)
  {
    v36 = v68 * v35;
    sub_24A9DAA40(*(v72 + 48) + v68 * v35, v22);
    v37 = &v6[*(v70 + 48)];
    sub_24A9DAA40(v22, v6);
    sub_24A9DAA40(v71, v37);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_24A9DAA40(v6, v17);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v66 = v36;
      v38 = v13;
      v39 = v17;
      v40 = v61;
      v41 = v64;
      (*v60)(v61, v37, v64);
      v62 = sub_24A9FEA10();
      v42 = *v63;
      v43 = v40;
      v17 = v39;
      v13 = v38;
      (*v63)(v43, v41);
      sub_24A9DAAA4(v22);
      v42(v17, v41);
      if (v62)
      {
        goto LABEL_23;
      }

LABEL_19:
      sub_24A9DAAA4(v6);
      goto LABEL_8;
    }

    sub_24A9DAAA4(v22);
    (*v63)(v17, v64);
LABEL_7:
    sub_24A9C994C(v6, &qword_27EF82A88, &qword_24AA01560);
LABEL_8:
    v35 = (v35 + 1) & v67;
    if (((*(v69 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v66 = v36;
  v44 = v65;
  sub_24A9DAA40(v6, v65);
  v46 = *v44;
  v45 = v44[1];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24A9DAAA4(v22);

    goto LABEL_7;
  }

  v47 = *v37;
  v48 = *(v37 + 1);
  if (v46 != v47 || v45 != v48)
  {
    v50 = sub_24A9FF170();

    sub_24A9DAAA4(v22);
    if (v50)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  sub_24A9DAAA4(v22);
LABEL_23:
  sub_24A9DAAA4(v6);
  sub_24A9DAAA4(v71);
  sub_24A9DAA40(*(v72 + 48) + v66, v59);
  return 0;
}

uint64_t sub_24A9D9014(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AlertIdentifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A90, &qword_24AA01568);
  result = sub_24A9FEF90();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 56);
    v15 = 1 << *(v9 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v9 + 56);
    for (i = (v15 + 63) >> 6; v17; result = sub_24A9D9208(v8, v12))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_13:
      sub_24A9DAB00(*(v9 + 48) + *(v5 + 72) * (v19 | (v13 << 6)), v8);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        return result;
      }

      if (v13 >= i)
      {
        break;
      }

      v21 = v14[v13];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_13;
      }
    }

    v22 = 1 << *(v9 + 32);
    if (v22 >= 64)
    {
      bzero((v9 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v22;
    }

    *(v9 + 16) = 0;
  }

  *v2 = v12;
  return result;
}

uint64_t sub_24A9D9208(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A9FEA40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AlertIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a2 + 40);
  sub_24A9FF1E0();
  sub_24A9DAA40(a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v8, v13, v4);
    MEMORY[0x24C222A90](1);
    sub_24A9DBACC(&unk_27EF82950, 255, MEMORY[0x277CC95F0]);
    sub_24A9FEBF0();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v15 = *v13;
    v16 = v13[1];
    MEMORY[0x24C222A90](0);
    sub_24A9FECA0();
  }

  sub_24A9FF210();
  v17 = -1 << *(a2 + 32);
  v18 = sub_24A9FEED0();
  *(a2 + 56 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
  result = sub_24A9DAB00(a1, *(a2 + 48) + *(v10 + 72) * v18);
  ++*(a2 + 16);
  return result;
}

uint64_t sub_24A9D9488(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v71 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A88, &qword_24AA01560);
  v7 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v9 = &v60 - v8;
  v66 = sub_24A9FEA40();
  v10 = *(v66 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v66);
  v64 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v69 = &v60 - v14;
  v15 = type metadata accessor for AlertIdentifier(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v65 = (&v60 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v60 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = (&v60 - v26);
  v28 = *(*v4 + 16);
  v29 = *(*v4 + 24);
  v60 = v16;
  v61 = v4;
  if (v29 <= v28 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_24A9D9014(v28 + 1);
    }

    else
    {
      if (v29 > v28)
      {
        sub_24A9D9AA0();
        goto LABEL_28;
      }

      sub_24A9D9C84(v28 + 1);
    }

    v63 = *v4;
    v30 = *(v63 + 40);
    sub_24A9FF1E0();
    sub_24A9DAA40(v71, v27);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = v69;
      v32 = v27;
      v33 = v66;
      (*(v10 + 32))(v69, v32, v66);
      MEMORY[0x24C222A90](1);
      sub_24A9DBACC(&unk_27EF82950, 255, MEMORY[0x277CC95F0]);
      sub_24A9FEBF0();
      (*(v10 + 8))(v31, v33);
    }

    else
    {
      v34 = v10;
      v36 = *v27;
      v35 = v27[1];
      MEMORY[0x24C222A90](0);
      v10 = v34;
      sub_24A9FECA0();
    }

    v37 = sub_24A9FF210();
    v38 = v63;
    v39 = -1 << *(v63 + 32);
    a2 = v37 & ~v39;
    v69 = (v63 + 56);
    if ((*(v63 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v68 = ~v39;
      v67 = *(v16 + 72);
      v40 = (v10 + 8);
      v62 = (v10 + 32);
      do
      {
        sub_24A9DAA40(*(v38 + 48) + v67 * a2, v25);
        v41 = &v9[*(v70 + 48)];
        sub_24A9DAA40(v25, v9);
        sub_24A9DAA40(v71, v41);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_24A9DAA40(v9, v20);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v42 = v20;
            v43 = v64;
            v44 = v66;
            (*v62)(v64, v41, v66);
            v45 = sub_24A9FEA10();
            v46 = *v40;
            v47 = v43;
            v20 = v42;
            v38 = v63;
            (*v40)(v47, v44);
            sub_24A9DAAA4(v25);
            v46(v20, v44);
            if (v45)
            {
              goto LABEL_32;
            }

LABEL_26:
            sub_24A9DAAA4(v9);
            goto LABEL_15;
          }

          sub_24A9DAAA4(v25);
          (*v40)(v20, v66);
        }

        else
        {
          v48 = v65;
          sub_24A9DAA40(v9, v65);
          v50 = *v48;
          v49 = v48[1];
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v51 = *v41;
            v52 = *(v41 + 1);
            if (v50 == v51 && v49 == v52)
            {
              goto LABEL_31;
            }

            v54 = sub_24A9FF170();

            sub_24A9DAAA4(v25);
            if (v54)
            {
              goto LABEL_32;
            }

            goto LABEL_26;
          }

          sub_24A9DAAA4(v25);
        }

        sub_24A9C994C(v9, &qword_27EF82A88, &qword_24AA01560);
LABEL_15:
        a2 = (a2 + 1) & v68;
      }

      while (((*&v69[(a2 >> 3) & 0xFFFFFFFFFFFFFF8] >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v55 = *v61;
  *(*v61 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24A9DAB00(v71, *(v55 + 48) + *(v60 + 72) * a2);
  v57 = *(v55 + 16);
  v58 = __OFADD__(v57, 1);
  v59 = v57 + 1;
  if (v58)
  {
    __break(1u);
LABEL_31:

    sub_24A9DAAA4(v25);
LABEL_32:
    sub_24A9DAAA4(v9);
    result = sub_24A9FF180();
    __break(1u);
  }

  else
  {
    *(v55 + 16) = v59;
  }

  return result;
}

void *sub_24A9D9AA0()
{
  v1 = v0;
  v2 = type metadata accessor for AlertIdentifier(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A90, &qword_24AA01568);
  v7 = *v0;
  v8 = sub_24A9FEF80();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_24A9DAA40(*(v7 + 48) + v22, v6);
        result = sub_24A9DAB00(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

uint64_t sub_24A9D9C84(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AlertIdentifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A90, &qword_24AA01568);
  result = sub_24A9FEF90();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = 1 << *(v9 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v9 + 56);
    for (i = (v14 + 63) >> 6; v16; result = sub_24A9D9208(v8, v12))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_13:
      sub_24A9DAA40(*(v9 + 48) + *(v5 + 72) * (v18 | (v13 << 6)), v8);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= i)
      {
        goto LABEL_15;
      }

      v20 = *(v9 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v12;
  }

  return result;
}

uint64_t sub_24A9D9E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A88, &qword_24AA01560);
  v6 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v8 = &v55 - v7;
  v9 = sub_24A9FEA40();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v59 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - v14;
  v16 = type metadata accessor for AlertIdentifier(0);
  v57 = *(v16 - 8);
  v17 = *(v57 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v61 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v60 = (&v55 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v55 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = (&v55 - v25);
  v68 = *v3;
  v27 = *(v68 + 40);
  sub_24A9FF1E0();
  v67 = a1;
  sub_24A9DAA40(a1, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v62 = v9;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v10 + 32))(v15, v26, v9);
    MEMORY[0x24C222A90](1);
    sub_24A9DBACC(&unk_27EF82950, 255, MEMORY[0x277CC95F0]);
    sub_24A9FEBF0();
    (*(v10 + 8))(v15, v9);
  }

  else
  {
    v29 = *v26;
    v30 = v26[1];
    MEMORY[0x24C222A90](0);
    sub_24A9FECA0();
    v9 = v62;
  }

  v31 = sub_24A9FF210();
  v32 = -1 << *(v68 + 32);
  v33 = v31 & ~v32;
  v65 = v68 + 56;
  if (((*(v68 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
  {
    v49 = 1;
    return (*(v57 + 56))(a2, v49, 1, v16);
  }

  v55 = v3;
  v56 = a2;
  v63 = ~v32;
  v64 = *(v57 + 72);
  v34 = (v10 + 8);
  v58 = (v10 + 32);
  v35 = v61;
  while (1)
  {
    v36 = v64 * v33;
    sub_24A9DAA40(*(v68 + 48) + v64 * v33, v24);
    v37 = &v8[*(v66 + 48)];
    sub_24A9DAA40(v24, v8);
    sub_24A9DAA40(v67, v37);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_24A9DAA40(v8, v35);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v38 = v59;
      (*v58)(v59, v37, v9);
      v39 = sub_24A9FEA10();
      v40 = *v34;
      v41 = v38;
      v35 = v61;
      (*v34)(v41, v9);
      sub_24A9DAAA4(v24);
      v40(v35, v9);
      if (v39)
      {
        goto LABEL_24;
      }

LABEL_19:
      sub_24A9DAAA4(v8);
      v9 = v62;
      goto LABEL_8;
    }

    sub_24A9DAAA4(v24);
    (*v34)(v35, v9);
LABEL_7:
    sub_24A9C994C(v8, &qword_27EF82A88, &qword_24AA01560);
LABEL_8:
    v33 = (v33 + 1) & v63;
    if (((*(v65 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
    {
      v49 = 1;
      a2 = v56;
      return (*(v57 + 56))(a2, v49, 1, v16);
    }
  }

  v42 = v60;
  sub_24A9DAA40(v8, v60);
  v44 = *v42;
  v43 = v42[1];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24A9DAAA4(v24);

    v9 = v62;
    goto LABEL_7;
  }

  v45 = *v37;
  v46 = *(v37 + 1);
  if (v44 != v45 || v43 != v46)
  {
    v48 = sub_24A9FF170();

    sub_24A9DAAA4(v24);
    if (v48)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  sub_24A9DAAA4(v24);
LABEL_24:
  sub_24A9DAAA4(v8);
  v50 = v55;
  v51 = *v55;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v50;
  v69 = *v50;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24A9D9AA0();
    v53 = v69;
  }

  a2 = v56;
  sub_24A9DAB00(*(v53 + 48) + v36, v56);
  sub_24A9DA454(v33);
  v49 = 0;
  *v50 = v69;
  return (*(v57 + 56))(a2, v49, 1, v16);
}

uint64_t sub_24A9DA454(unint64_t a1)
{
  v44 = sub_24A9FEA40();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for AlertIdentifier(0);
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v47);
  v46 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v8);
  v48 = &v40 - v11;
  v12 = *v1;
  v13 = *v1 + 56;
  v14 = -1 << *(*v1 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v16 = ~v14;
    v17 = *v1;

    v18 = a1;
    v19 = sub_24A9FEEC0();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v45 = (v19 + 1) & v16;
      v20 = *(v6 + 72);
      v41 = (v3 + 8);
      v42 = (v3 + 32);
      v21 = v12;
      while (1)
      {
        v22 = v16;
        v23 = v13;
        v24 = v20;
        v25 = v20 * v15;
        v26 = v48;
        sub_24A9DAA40(*(v21 + 48) + v20 * v15, v48);
        v27 = v21;
        v28 = *(v21 + 40);
        sub_24A9FF1E0();
        v29 = v46;
        sub_24A9DAA40(v26, v46);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v30 = v43;
          v31 = v44;
          (*v42)(v43, v29, v44);
          MEMORY[0x24C222A90](1);
          sub_24A9DBACC(&unk_27EF82950, 255, MEMORY[0x277CC95F0]);
          sub_24A9FEBF0();
          (*v41)(v30, v31);
        }

        else
        {
          v32 = *v29;
          v33 = v29[1];
          MEMORY[0x24C222A90](0);
          sub_24A9FECA0();
        }

        v34 = sub_24A9FF210();
        sub_24A9DAAA4(v48);
        v16 = v22;
        v35 = v34 & v22;
        if (v18 >= v45)
        {
          v13 = v23;
          v21 = v27;
          if (v35 < v45)
          {
            v20 = v24;
            goto LABEL_5;
          }

          v20 = v24;
          if (v18 < v35)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v13 = v23;
          v21 = v27;
          v20 = v24;
          if (v35 < v45 && v18 < v35)
          {
            goto LABEL_5;
          }
        }

        v36 = v20 * v18;
        if (v20 * v18 < v25 || *(v21 + 48) + v20 * v18 >= (*(v21 + 48) + v25 + v20))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_20;
        }

        v18 = v15;
        if (v36 != v25)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_20:
          v18 = v15;
        }

LABEL_5:
        v15 = (v15 + 1) & v22;
        if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {

          goto LABEL_24;
        }
      }
    }

    v21 = v12;
LABEL_24:
    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v18) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v21 = v12;
  }

  v37 = *(v21 + 16);
  v38 = __OFSUB__(v37, 1);
  v39 = v37 - 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v39;
    ++*(v21 + 36);
  }

  return result;
}