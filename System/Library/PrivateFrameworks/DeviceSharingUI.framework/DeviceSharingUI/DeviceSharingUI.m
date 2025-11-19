uint64_t sub_248A9A780()
{
  v1 = v0;
  if (qword_27EEC4B40 != -1)
  {
    swift_once();
  }

  v2 = sub_248AA375C();
  __swift_project_value_buffer(v2, qword_27EEC5520);
  v3 = sub_248AA373C();
  v4 = sub_248AA3BCC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_248A99000, v3, v4, "setupSceneHosting()", v5, 2u);
    MEMORY[0x24C1E3AE0](v5, -1, -1);
  }

  if (*&v1[OBJC_IVAR____TtC15DeviceSharingUI20RemoteViewController_hostingController])
  {
    sub_248A9AE30();
    swift_allocError();
    *v6 = 0xD00000000000002DLL;
    v6[1] = 0x8000000248AA4DC0;
    return swift_willThrow();
  }

  else
  {
    aBlock[4] = sub_248A9A9F8;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_248A9AAD4;
    aBlock[3] = &block_descriptor;
    v8 = _Block_copy(aBlock);
    [v1 _beginDelayingPresentation_cancellationHandler_];
    _Block_release(v8);
    result = sub_248AA3C8C();
    __break(1u);
  }

  return result;
}

uint64_t sub_248A9A9F8()
{
  if (qword_27EEC4B40 != -1)
  {
    swift_once();
  }

  v0 = sub_248AA375C();
  __swift_project_value_buffer(v0, qword_27EEC5520);
  v1 = sub_248AA373C();
  v2 = sub_248AA3BAC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_248A99000, v1, v2, "_beginDelayingPresentation timed out", v3, 2u);
    MEMORY[0x24C1E3AE0](v3, -1, -1);
  }

  return 0;
}

uint64_t sub_248A9AAD4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  LOBYTE(a2) = v4(a2);

  return a2 & 1;
}

id sub_248A9AB34()
{
  v1 = v0;
  if (qword_27EEC4B40 != -1)
  {
    swift_once();
  }

  v2 = sub_248AA375C();
  __swift_project_value_buffer(v2, qword_27EEC5520);
  v3 = sub_248AA373C();
  v4 = sub_248AA3BCC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_248A99000, v3, v4, "clientIsReady()", v5, 2u);
    MEMORY[0x24C1E3AE0](v5, -1, -1);
  }

  return [v1 _endDelayingPresentation];
}

id sub_248A9AD64()
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_248A9AE30()
{
  result = qword_27EEC4C88;
  if (!qword_27EEC4C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC4C88);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_248A9AE90(uint64_t a1, int a2)
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

uint64_t sub_248A9AED8(uint64_t result, int a2, int a3)
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

uint64_t SceneVisibilityManager.bundleIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_248A9AF60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248A9B09C();
  sub_248AA36FC();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_248A9B000()
{
  swift_getKeyPath();
  sub_248A9B09C();
  sub_248AA36FC();

  return *(v0 + 32);
}

unint64_t sub_248A9B09C()
{
  result = qword_27EEC4DB8;
  if (!qword_27EEC4DB8)
  {
    type metadata accessor for SceneVisibilityManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC4DB8);
  }

  return result;
}

uint64_t type metadata accessor for SceneVisibilityManager()
{
  result = qword_27EEC4DC0;
  if (!qword_27EEC4DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_248A9B140(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_248A9B09C();
    sub_248AA36EC();
  }

  return result;
}

void *sub_248A9B220()
{
  swift_getKeyPath();
  sub_248A9B09C();
  sub_248AA36FC();

  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

id sub_248A9B298@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248A9B09C();
  sub_248AA36FC();

  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void sub_248A9B320(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_248A9B09C();
    sub_248AA36EC();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_248A9CAD0(0, &qword_27EEC4DE0, 0x277D0AD08);
  v5 = v4;
  v6 = a1;
  v7 = sub_248AA3BDC();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 40);
LABEL_8:
  *(v2 + 40) = a1;
}

uint64_t SceneVisibilityManager.__allocating_init(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  sub_248AA370C();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return v7;
}

uint64_t SceneVisibilityManager.init(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  sub_248AA370C();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void sub_248A9B52C()
{
  v1 = *v0;
  v2 = sub_248A9B9B8();
  sub_248A9B320(v2);
  if (qword_27EEC4B48 != -1)
  {
    swift_once();
  }

  v3 = sub_248AA375C();
  __swift_project_value_buffer(v3, qword_27EEC5538);

  oslog = sub_248AA373C();
  v4 = sub_248AA3BCC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136446210;
    v10 = v6;
    v7 = sub_248AA3D2C();
    MEMORY[0x24C1E34A0](v7);

    MEMORY[0x24C1E34A0](23389, 0xE200000000000000);
    MEMORY[0x24C1E34A0](v0[2], v0[3]);
    MEMORY[0x24C1E34A0](93, 0xE100000000000000);
    v8 = sub_248A9C268(91, 0xE100000000000000, &v10);

    *(v5 + 4) = v8;
    _os_log_impl(&dword_248A99000, oslog, v4, "%{public}s Scene visibility manager activated.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1E3AE0](v6, -1, -1);
    MEMORY[0x24C1E3AE0](v5, -1, -1);
  }
}

void sub_248A9B714()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_248A9B09C();
  sub_248AA36FC();

  [v0[5] invalidate];
  if (v0[5])
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_248AA36EC();
  }

  if (qword_27EEC4B48 != -1)
  {
    swift_once();
  }

  v2 = sub_248AA375C();
  __swift_project_value_buffer(v2, qword_27EEC5538);

  v3 = sub_248AA373C();
  v4 = sub_248AA3BCC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136446210;
    v9 = v6;
    v7 = sub_248AA3D2C();
    MEMORY[0x24C1E34A0](v7);

    MEMORY[0x24C1E34A0](23389, 0xE200000000000000);
    MEMORY[0x24C1E34A0](v0[2], v0[3]);
    MEMORY[0x24C1E34A0](93, 0xE100000000000000);
    v8 = sub_248A9C268(91, 0xE100000000000000, &v9);

    *(v5 + 4) = v8;
    _os_log_impl(&dword_248A99000, v3, v4, "%{public}s Scene visibility manager invalidated.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1E3AE0](v6, -1, -1);
    MEMORY[0x24C1E3AE0](v5, -1, -1);
  }
}

id sub_248A9B9B8()
{
  v0 = [objc_opt_self() configurationForDefaultMainDisplayMonitor];
  v1 = swift_allocObject();
  swift_weakInit();
  v5[4] = sub_248A9CB50;
  v5[5] = v1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_248A9BB58;
  v5[3] = &block_descriptor_0;
  v2 = _Block_copy(v5);

  [v0 setTransitionHandler_];
  _Block_release(v2);
  v3 = [objc_opt_self() monitorWithConfiguration_];

  return v3;
}

uint64_t sub_248A9BAE4(void *a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_248A9CB70(a1, a2);
  }

  return result;
}

void sub_248A9BB58(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, a3, a4);
}

BOOL sub_248A9BBF8(void *a1)
{
  v2 = v1;
  v36 = *v1;
  v3 = [a1 elements];
  sub_248A9CAD0(0, &qword_27EEC4DD0, 0x277D0AD00);
  v4 = sub_248AA3B3C();

  v38 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_248AA3C9C())
  {
    v37 = v2;
    v6 = 0;
    v2 = v4 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1E35B0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [v7 bundleIdentifier];
      if (v10)
      {
        v11 = v10;
        v12 = sub_248AA3AEC();
        v14 = v13;

        if (v12 == *(v37 + 16) && v14 == *(v37 + 24))
        {

LABEL_18:
          sub_248AA3C3C();
          v17 = *(v38 + 16);
          sub_248AA3C5C();
          sub_248AA3C6C();
          sub_248AA3C4C();
          goto LABEL_5;
        }

        v16 = sub_248AA3CAC();

        if (v16)
        {
          goto LABEL_18;
        }
      }

LABEL_5:
      ++v6;
      if (v9 == i)
      {
        v2 = v37;
        v18 = v38;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_25:

  if (qword_27EEC4B48 != -1)
  {
    swift_once();
  }

  v19 = sub_248AA375C();
  __swift_project_value_buffer(v19, qword_27EEC5538);
  swift_retain_n();

  v20 = sub_248AA373C();
  v21 = sub_248AA3B9C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 136446466;
    v39 = v23;
    v24 = sub_248AA3D2C();
    MEMORY[0x24C1E34A0](v24);

    MEMORY[0x24C1E34A0](23389, 0xE200000000000000);
    MEMORY[0x24C1E34A0](*(v2 + 16), *(v2 + 24));
    MEMORY[0x24C1E34A0](93, 0xE100000000000000);
    v25 = sub_248A9C268(91, 0xE100000000000000, &v39);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2050;
    v26 = v18 & 0x4000000000000000;
    if (v18 < 0 || v26)
    {
      v27 = sub_248AA3C9C();
    }

    else
    {
      v27 = *(v18 + 16);
    }

    *(v22 + 14) = v27;

    _os_log_impl(&dword_248A99000, v20, v21, "%{public}s Handling layout monitor transition, scene element count = %{public}ld.", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x24C1E3AE0](v23, -1, -1);
    MEMORY[0x24C1E3AE0](v22, -1, -1);
  }

  else
  {

    v26 = v18 & 0x4000000000000000;
  }

  if (v18 < 0 || v26)
  {
    v28 = sub_248AA3C9C();
  }

  else
  {
    v28 = *(v18 + 16);
  }

  v29 = sub_248AA373C();
  v30 = sub_248AA3B9C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 136446466;
    v39 = v32;
    v33 = sub_248AA3D2C();
    MEMORY[0x24C1E34A0](v33);

    MEMORY[0x24C1E34A0](23389, 0xE200000000000000);
    MEMORY[0x24C1E34A0](*(v2 + 16), *(v2 + 24));
    MEMORY[0x24C1E34A0](93, 0xE100000000000000);
    v34 = sub_248A9C268(91, 0xE100000000000000, &v39);

    *(v31 + 4) = v34;
    *(v31 + 12) = 1026;
    *(v31 + 14) = v28 != 0;
    _os_log_impl(&dword_248A99000, v29, v30, "%{public}s Is any scene visible = %{BOOL,public}d.", v31, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x24C1E3AE0](v32, -1, -1);
    MEMORY[0x24C1E3AE0](v31, -1, -1);
  }

  return v28 != 0;
}

uint64_t SceneVisibilityManager.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC15DeviceSharingUI22SceneVisibilityManager___observationRegistrar;
  v3 = sub_248AA371C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t SceneVisibilityManager.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC15DeviceSharingUI22SceneVisibilityManager___observationRegistrar;
  v3 = sub_248AA371C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_248A9C268(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_248A9C334(v11, 0, 0, 1, a1, a2);
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
    sub_248A9CA28(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_248A9C334(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_248A9C440(a5, a6);
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
    result = sub_248AA3C2C();
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

uint64_t sub_248A9C440(uint64_t a1, unint64_t a2)
{
  v4 = sub_248A9C48C(a1, a2);
  sub_248A9C5BC(&unk_285B6BC60);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_248A9C48C(uint64_t a1, unint64_t a2)
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

  v6 = sub_248A9C6A8(v5, 0);
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

  result = sub_248AA3C2C();
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
        v10 = sub_248AA3B1C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_248A9C6A8(v10, 0);
        result = sub_248AA3BFC();
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

uint64_t sub_248A9C5BC(uint64_t result)
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

  result = sub_248A9C71C(result, v12, 1, v3);
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

void *sub_248A9C6A8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4DD8, &qword_248AA46E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_248A9C71C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4DD8, &qword_248AA46E0);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_248A9C860(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_248A9B320(v2);
}

void sub_248A9C890()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
  v4 = v2;
}

uint64_t sub_248A9C8D0()
{
  result = sub_248AA371C();
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

uint64_t sub_248A9CA28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_248A9CAD0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_248A9CB18()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_248A9CB70(void *a1, void *a2)
{
  v3 = v2;
  v4 = *v2;
  if (a2)
  {
    v6 = qword_27EEC4B48;
    v7 = a2;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = sub_248AA375C();
    __swift_project_value_buffer(v8, qword_27EEC5538);
    v9 = v7;

    v10 = sub_248AA373C();
    v11 = sub_248AA3B9C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v12 = 136446466;
      v30 = v14;
      v15 = sub_248AA3D2C();
      MEMORY[0x24C1E34A0](v15);

      MEMORY[0x24C1E34A0](23389, 0xE200000000000000);
      MEMORY[0x24C1E34A0](v3[2], v3[3]);
      MEMORY[0x24C1E34A0](93, 0xE100000000000000);
      v16 = sub_248A9C268(91, 0xE100000000000000, &v30);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2114;
      *(v12 + 14) = v9;
      *v13 = a2;
      v17 = v9;
      _os_log_impl(&dword_248A99000, v10, v11, "%{public}s Handling layout monitor transition for layout = %{public}@.", v12, 0x16u);
      sub_248A9D050(v13);
      MEMORY[0x24C1E3AE0](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x24C1E3AE0](v14, -1, -1);
      MEMORY[0x24C1E3AE0](v12, -1, -1);
    }

    v18 = sub_248A9BBF8(v9);
    if (v18 == *(v3 + 32))
    {

      *(v3 + 32) = v18;
    }

    else
    {
      swift_getKeyPath();
      MEMORY[0x28223BE20]();
      sub_248A9B09C();
      sub_248AA36EC();
    }
  }

  else
  {
    if (qword_27EEC4B48 != -1)
    {
      swift_once();
    }

    v20 = sub_248AA375C();
    __swift_project_value_buffer(v20, qword_27EEC5538);

    v21 = a1;
    v29 = sub_248AA373C();
    v22 = sub_248AA3BAC();

    if (os_log_type_enabled(v29, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v23 = 136446466;
      v30 = v25;
      v26 = sub_248AA3D2C();
      MEMORY[0x24C1E34A0](v26);

      MEMORY[0x24C1E34A0](23389, 0xE200000000000000);
      MEMORY[0x24C1E34A0](v3[2], v3[3]);
      MEMORY[0x24C1E34A0](93, 0xE100000000000000);
      v27 = sub_248A9C268(91, 0xE100000000000000, &v30);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2114;
      *(v23 + 14) = v21;
      *v24 = v21;
      v28 = v21;
      _os_log_impl(&dword_248A99000, v29, v22, "%{public}s Could not handle layout monitor transition because could not get layout for layout monitor = %{public}@.", v23, 0x16u);
      sub_248A9D050(v24);
      MEMORY[0x24C1E3AE0](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x24C1E3AE0](v25, -1, -1);
      MEMORY[0x24C1E3AE0](v23, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_248A9D050(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4DE8, &qword_248AA46E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void RemoteView.init(target:)()
{
  if (qword_27EEC4B40 != -1)
  {
    swift_once();
  }

  v0 = sub_248AA375C();
  __swift_project_value_buffer(v0, qword_27EEC5520);
  oslog = sub_248AA373C();
  v1 = sub_248AA3BCC();
  if (os_log_type_enabled(oslog, v1))
  {
    swift_slowAlloc();
    swift_slowAlloc();
    sub_248AA3C8C();
    __break(1u);
  }

  else
  {
  }
}

id RemoteView.makeUIViewController(context:)()
{
  if (qword_27EEC4B40 != -1)
  {
    swift_once();
  }

  v0 = sub_248AA375C();
  __swift_project_value_buffer(v0, qword_27EEC5520);
  v1 = sub_248AA373C();
  v2 = sub_248AA3BCC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_248A99000, v1, v2, "Creating RemoteViewController", v3, 2u);
    MEMORY[0x24C1E3AE0](v3, -1, -1);
  }

  v4 = type metadata accessor for RemoteViewController();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC15DeviceSharingUI20RemoteViewController_hostingController] = 0;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
  sub_248A9A780();
  return v6;
}

uint64_t sub_248A9D42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_248A9D680();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_248A9D490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_248A9D680();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_248A9D510()
{
  sub_248A9D680();
  sub_248AA397C();
  __break(1u);
}

unint64_t sub_248A9D53C()
{
  result = qword_27EEC4DF8;
  if (!qword_27EEC4DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC4DF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteViewTarget(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RemoteViewTarget(_WORD *result, int a2, int a3)
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

unint64_t sub_248A9D680()
{
  result = qword_27EEC4E00;
  if (!qword_27EEC4E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC4E00);
  }

  return result;
}

uint64_t RemoteViewTarget.hashValue.getter()
{
  sub_248AA3CFC();
  MEMORY[0x24C1E36A0](0);
  return sub_248AA3D1C();
}

uint64_t sub_248A9D7AC()
{
  sub_248AA3CFC();
  MEMORY[0x24C1E36A0](0);
  return sub_248AA3D1C();
}

uint64_t sub_248A9D818()
{
  sub_248AA3CFC();
  MEMORY[0x24C1E36A0](0);
  return sub_248AA3D1C();
}

unint64_t sub_248A9D85C()
{
  result = qword_27EEC4E08;
  if (!qword_27EEC4E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC4E08);
  }

  return result;
}

Swift::String __swiftcall String.localized(bundle:)(NSBundle bundle)
{
  v1 = sub_248AA36DC();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::Void __swiftcall UIViewController.embed(childController:)(UIViewController *childController)
{
  [v1 addChildViewController_];
  v3 = [v1 view];
  v4 = [(UIViewController *)childController view];
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    sub_248AA3C8C();
    __break(1u);
  }

  else
  {
    v6 = v4;
    v7 = v3;
    v23 = v6;
    [v7 addSubview_];
    [(UIView *)v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E10, &qword_248AA48E0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_248AA48D0;
    v10 = [(UIView *)v23 leadingAnchor];
    v11 = [v7 leadingAnchor];
    v12 = [(NSLayoutXAxisAnchor *)v10 constraintEqualToAnchor:v11];

    *(v9 + 32) = v12;
    v13 = [(UIView *)v23 trailingAnchor];
    v14 = [v7 trailingAnchor];
    v15 = [(NSLayoutXAxisAnchor *)v13 constraintEqualToAnchor:v14];

    *(v9 + 40) = v15;
    v16 = [(UIView *)v23 topAnchor];
    v17 = [v7 topAnchor];
    v18 = [(NSLayoutYAxisAnchor *)v16 constraintEqualToAnchor:v17];

    *(v9 + 48) = v18;
    v19 = [(UIView *)v23 bottomAnchor];
    v20 = [v7 bottomAnchor];
    v21 = [(NSLayoutYAxisAnchor *)v19 constraintEqualToAnchor:v20];

    *(v9 + 56) = v21;
    sub_248A9DCF4();
    v22 = sub_248AA3B2C();

    [v8 activateConstraints_];

    [(UIViewController *)childController didMoveToParentViewController:v1];
  }
}

unint64_t sub_248A9DCF4()
{
  result = qword_27EEC4E18;
  if (!qword_27EEC4E18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEC4E18);
  }

  return result;
}

uint64_t sub_248A9DD54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_248AA388C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E20, &qword_248AA4920);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_248AA03B0(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_248AA37CC();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_248AA3BBC();
    v16 = sub_248AA39AC();
    sub_248AA372C();

    sub_248AA387C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t TextWithAnimatedEllipsis.init(localizedText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E20, &qword_248AA4920);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for TextWithAnimatedEllipsis();
  v7 = (a3 + *(result + 20));
  *v7 = a1;
  v7[1] = a2;
  return result;
}

uint64_t TextWithAnimatedEllipsis.body.getter@<X0>(uint64_t a1@<X8>)
{
  v14[2] = a1;
  v2 = type metadata accessor for TextWithAnimatedEllipsis();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v20 = vdupq_n_s64(0x3FC999999999999AuLL);
  v21 = 0x3FC999999999999ALL;
  sub_248A9FC2C(v1, v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_248A9FC94(v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  v14[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E28, &qword_248AA4928);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E30, &qword_248AA4930);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4E38, &qword_248AA4938);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4E40, &qword_248AA4940);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4E48, &qword_248AA4948);
  v10 = sub_248AA0348(&qword_27EEC4E50, &qword_27EEC4E48, &qword_248AA4948);
  v11 = sub_248AA0348(&qword_27EEC4E58, &qword_27EEC4E40, &qword_248AA4940);
  v15 = &type metadata for TextWithAnimatedEllipsis.TextOpacity;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v19 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = &type metadata for TextWithAnimatedEllipsis.TextOpacity;
  v16 = v7;
  v17 = v8;
  v18 = OpaqueTypeConformance2;
  v19 = v11;
  swift_getOpaqueTypeConformance2();
  sub_248A9FD44();
  return sub_248AA37EC();
}

uint64_t sub_248A9E244@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_248AA37CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  sub_248A9DD54(v10);
  v14 = (*(v7 + 88))(v10, v6);
  if (v14 == *MEMORY[0x277CDFA88])
  {
    v15 = (a2 + *(type metadata accessor for TextWithAnimatedEllipsis() + 20));
    v17 = *v15;
    v16 = v15[1];

    sub_248AA3A3C();
    sub_248AA3A4C();

    v18 = sub_248AA39BC();
    v20 = v19;
    v22 = v21;

    v23 = sub_248AA39CC();
    *&v95 = a3;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    sub_248AA0390(v18, v20, v22 & 1);

    sub_248AA3A3C();
    sub_248AA3A4C();

    v29 = sub_248AA39BC();
    v31 = v30;
    LOBYTE(v20) = v32;

    *&v94 = sub_248AA39CC();
    v93 = v33;
    v91 = v34;
    v92 = v35;
    sub_248AA0390(v29, v31, v20 & 1);

    sub_248AA0390(v24, v26, v28 & 1);

    sub_248AA3A3C();
    sub_248AA3A4C();

    v36 = sub_248AA39BC();
    v38 = v37;
    LOBYTE(v17) = v39;

    v40 = v94;
    v41 = v93;
    v42 = sub_248AA39CC();
    v90 = v43;
    LOBYTE(v26) = v44;
    v46 = v45;
    sub_248AA0390(v36, v38, v17 & 1);

    sub_248AA0390(v40, v41, v91 & 1);

    v47 = v26 & 1;
    v48 = v90;
    *&v96 = v42;
    *(&v96 + 1) = v90;
    *&v97 = v26 & 1;
    *(&v97 + 1) = v46;
    LOBYTE(v98) = 0;
  }

  else
  {
    v49 = v14;
    v50 = *MEMORY[0x277CDFA90];
    v51 = (a2 + *(type metadata accessor for TextWithAnimatedEllipsis() + 20));
    v52 = v51[1];
    if (v49 != v50)
    {
      *&v96 = *v51;
      *(&v96 + 1) = v52;
      *&v97 = 0;
      *(&v97 + 1) = MEMORY[0x277D84F90];
      v98 = 256;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E70, &qword_248AA4950);
      sub_248A9FDD0();
      sub_248AA38AC();
      v95 = v99;
      v94 = v100;
      v88 = v101;
      v89 = v102;
      result = (*(v7 + 8))(v10, v6);
      v87 = v94;
      v86 = v95;
      goto LABEL_7;
    }

    v53 = v51[1];

    sub_248AA3A3C();
    sub_248AA3A4C();

    v54 = sub_248AA39BC();
    v56 = v55;
    v58 = v57;

    v59 = sub_248AA39CC();
    *&v95 = a3;
    v60 = v59;
    v62 = v61;
    v64 = v63;
    sub_248AA0390(v54, v56, v58 & 1);

    sub_248AA3A3C();
    sub_248AA3A4C();

    v65 = sub_248AA39BC();
    v67 = v66;
    LOBYTE(v54) = v68;

    *&v94 = sub_248AA39CC();
    v93 = v69;
    v91 = v70;
    v92 = v71;
    sub_248AA0390(v65, v67, v54 & 1);

    sub_248AA0390(v60, v62, v64 & 1);

    sub_248AA3A3C();
    sub_248AA3A4C();

    v72 = sub_248AA39BC();
    v74 = v73;
    v76 = v75;

    v77 = v94;
    v78 = v93;
    v42 = sub_248AA39CC();
    v90 = v79;
    LOBYTE(v62) = v80;
    v82 = v81;
    sub_248AA0390(v72, v74, v76 & 1);

    sub_248AA0390(v77, v78, v91 & 1);

    v47 = v62 & 1;
    v48 = v90;
    *&v96 = v42;
    *(&v96 + 1) = v90;
    *&v97 = v62 & 1;
    *(&v97 + 1) = v82;
    LOBYTE(v98) = 1;
  }

  v83 = v48;
  sub_248AA03A0(v42, v48, v47);

  sub_248AA38AC();
  v96 = v99;
  v97 = v100;
  v98 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E70, &qword_248AA4950);
  sub_248A9FDD0();
  sub_248AA38AC();
  v84 = v42;
  a3 = v95;
  sub_248AA0390(v84, v83, v47);

  v86 = v99;
  v87 = v100;
  v88 = v101;
  v89 = v102;
LABEL_7:
  *a3 = v86;
  *(a3 + 16) = v87;
  *(a3 + 32) = v88;
  *(a3 + 33) = v89;
  return result;
}

uint64_t sub_248A9E9F8@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E28, &qword_248AA4928);
  v2 = *(v1 - 8);
  v53 = v1;
  v54 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v51 = &v45 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E38, &qword_248AA4938);
  v52 = *(v50 - 8);
  v5 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E40, &qword_248AA4940);
  v62 = *(v7 - 8);
  v8 = *(v62 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v57 = &v45 - v12;
  MEMORY[0x28223BE20](v11);
  v58 = &v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E48, &qword_248AA4948);
  v15 = *(v14 - 8);
  v60 = v14;
  v61 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v59 = &v45 - v20;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4EA8, &qword_248AA4A30);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4EB0, &qword_248AA4A38);
  v23 = sub_248AA0348(&qword_27EEC4EB8, &qword_27EEC4EB0, &qword_248AA4A38);
  v63 = MEMORY[0x277D839F8];
  v64 = v22;
  v65 = v22;
  v66 = v23;
  v67 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = v19;
  sub_248AA37AC();
  v46 = sub_248AA0348(&qword_27EEC4E50, &qword_27EEC4E48, &qword_248AA4948);
  v25 = v60;
  MEMORY[0x24C1E3190](v19, &type metadata for TextWithAnimatedEllipsis.TextOpacity, v60, v46);
  v26 = *(v61 + 8);
  v61 += 8;
  v47 = v26;
  v26(v19, v25);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4EC0, &qword_248AA4A60);
  v63 = MEMORY[0x277D839F8];
  v64 = v21;
  v65 = v22;
  v66 = OpaqueTypeConformance2;
  v67 = v23;
  swift_getOpaqueTypeConformance2();
  v27 = v57;
  sub_248AA37AC();
  v28 = sub_248AA0348(&qword_27EEC4E58, &qword_27EEC4E40, &qword_248AA4940);
  MEMORY[0x24C1E3190](v27, &type metadata for TextWithAnimatedEllipsis.TextOpacity, v7, v28);
  v30 = v62 + 8;
  v29 = *(v62 + 8);
  v29(v27, v7);
  v62 = v30;
  swift_getKeyPath();
  v31 = v48;
  sub_248AA37AC();
  MEMORY[0x24C1E3190](v31, &type metadata for TextWithAnimatedEllipsis.TextOpacity, v7, v28);
  v29(v31, v7);
  v32 = v60;
  v33 = v46;
  MEMORY[0x24C1E31C0](v59, &type metadata for TextWithAnimatedEllipsis.TextOpacity, v60, v46);
  v34 = v49;
  sub_248AA381C();
  v63 = &type metadata for TextWithAnimatedEllipsis.TextOpacity;
  v64 = v32;
  v65 = v7;
  v66 = v33;
  v67 = v28;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = v51;
  v37 = v34;
  v38 = v57;
  v39 = v50;
  sub_248AA381C();
  v63 = &type metadata for TextWithAnimatedEllipsis.TextOpacity;
  v64 = v39;
  v65 = v7;
  v66 = v35;
  v67 = v28;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = v53;
  MEMORY[0x24C1E31A0](v36, &type metadata for TextWithAnimatedEllipsis.TextOpacity, v53, v40);
  (*(v54 + 8))(v36, v41);
  (*(v52 + 8))(v37, v39);
  v42 = v60;
  v43 = v47;
  v47(v56, v60);
  v29(v38, v7);
  v29(v58, v7);
  return v43(v59, v42);
}

uint64_t sub_248A9F0E8@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_248AA3ADC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4EB0, &qword_248AA4A38);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v18 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  v19 = 0x3FECCCCCCCCCCCCDLL;
  sub_248AA3ACC();
  v14 = MEMORY[0x277D839F8];
  sub_248AA37BC();
  v15 = sub_248AA0348(&qword_27EEC4EB8, &qword_27EEC4EB0, &qword_248AA4A38);
  MEMORY[0x24C1E3280](v11, v14, v3, v15);
  v16 = *(v4 + 8);
  v16(v11, v3);
  v19 = 0x3FC999999999999ALL;
  sub_248AA3ACC();
  sub_248AA37BC();
  MEMORY[0x24C1E3280](v8, v14, v3, v15);
  v16(v8, v3);
  MEMORY[0x24C1E32A0](v13, v14, v3, v15);
  sub_248AA38FC();
  v16(v8, v3);
  v16(v11, v3);
  return (v16)(v13, v3);
}

uint64_t sub_248A9F3EC@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4EA8, &qword_248AA4A30);
  v2 = *(v1 - 8);
  v29 = v1;
  v30 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v28 = &v27 - v4;
  v5 = sub_248AA3ADC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4EB0, &qword_248AA4A38);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v27 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v27 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - v19;
  v32 = 0x3FC999999999999ALL;
  sub_248AA3ABC();
  v21 = MEMORY[0x277D839F8];
  sub_248AA37BC();
  v22 = sub_248AA0348(&qword_27EEC4EB8, &qword_27EEC4EB0, &qword_248AA4A38);
  MEMORY[0x24C1E3280](v18, v21, v7, v22);
  v23 = *(v8 + 8);
  v23(v18, v7);
  v32 = 0x3FECCCCCCCCCCCCDLL;
  sub_248AA3ACC();
  sub_248AA37BC();
  MEMORY[0x24C1E3280](v15, v21, v7, v22);
  v23(v15, v7);
  v32 = 0x3FC999999999999ALL;
  sub_248AA3ACC();
  sub_248AA37BC();
  MEMORY[0x24C1E3280](v12, v21, v7, v22);
  v23(v12, v7);
  MEMORY[0x24C1E32A0](v20, v21, v7, v22);
  v24 = v28;
  sub_248AA38FC();
  v32 = v21;
  v33 = v7;
  v34 = v7;
  v35 = v22;
  v36 = v22;
  swift_getOpaqueTypeConformance2();
  v25 = v29;
  sub_248AA38FC();
  (*(v30 + 8))(v24, v25);
  v23(v12, v7);
  v23(v15, v7);
  v23(v18, v7);
  return (v23)(v20, v7);
}

uint64_t sub_248A9F868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[2] = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v20 = vdupq_n_s64(0x3FC999999999999AuLL);
  v21 = 0x3FC999999999999ALL;
  sub_248A9FC2C(v2, v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_248A9FC94(v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  v14[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E28, &qword_248AA4928);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E30, &qword_248AA4930);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4E38, &qword_248AA4938);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4E40, &qword_248AA4940);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4E48, &qword_248AA4948);
  v10 = sub_248AA0348(&qword_27EEC4E50, &qword_27EEC4E48, &qword_248AA4948);
  v11 = sub_248AA0348(&qword_27EEC4E58, &qword_27EEC4E40, &qword_248AA4940);
  v15 = &type metadata for TextWithAnimatedEllipsis.TextOpacity;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v19 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = &type metadata for TextWithAnimatedEllipsis.TextOpacity;
  v16 = v7;
  v17 = v8;
  v18 = OpaqueTypeConformance2;
  v19 = v11;
  swift_getOpaqueTypeConformance2();
  sub_248A9FD44();
  return sub_248AA37EC();
}

uint64_t sub_248A9FB14(uint64_t a1)
{
  v2 = sub_248AA37CC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_248AA386C();
}

uint64_t type metadata accessor for TextWithAnimatedEllipsis()
{
  result = qword_27EEC4E80;
  if (!qword_27EEC4E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_248A9FC2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextWithAnimatedEllipsis();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248A9FC94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextWithAnimatedEllipsis();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

unint64_t sub_248A9FD44()
{
  result = qword_27EEC4E60;
  if (!qword_27EEC4E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4E30, &qword_248AA4930);
    sub_248A9FDD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC4E60);
  }

  return result;
}

unint64_t sub_248A9FDD0()
{
  result = qword_27EEC4E68;
  if (!qword_27EEC4E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4E70, &qword_248AA4950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC4E68);
  }

  return result;
}

uint64_t sub_248A9FE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E78, &unk_248AA49B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_248A9FF5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E78, &unk_248AA49B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_248AA0024()
{
  sub_248AA0098();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_248AA0098()
{
  if (!qword_27EEC4E90)
  {
    sub_248AA37CC();
    v0 = sub_248AA378C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEC4E90);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TextWithAnimatedEllipsis.TextOpacity(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TextWithAnimatedEllipsis.TextOpacity(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for TextWithAnimatedEllipsis();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E20, &qword_248AA4920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_248AA37CC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 20) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_248AA02C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TextWithAnimatedEllipsis() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_248A9E244(a1, v6, a2);
}

uint64_t sub_248AA0348(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_248AA0390(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_248AA03A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_248AA03B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E20, &qword_248AA4920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_248AA04F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneSpecification();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_248AA058C(uint64_t a1, uint64_t a2)
{
  v4 = sub_248AA389C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_248AA38AC();
}

uint64_t sub_248AA0684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_248AA389C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_248AA38AC();
}

uint64_t View.isHidden(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v40 = a3;
  LODWORD(v36) = a1;
  v5 = *(a2 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v12 = sub_248AA37DC();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  v20 = sub_248AA38BC();
  v38 = *(v20 - 8);
  v21 = *(v38 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v35 - v22;
  if (v36)
  {
    v36 = v20;
    v24 = v40;
    sub_248AA3A1C();
    v25 = sub_248AA0B94();
    v41 = v24;
    v42 = v25;
    WitnessTable = swift_getWitnessTable();
    v26 = v13[2];
    v26(v19, v17, v12);
    v27 = v13[1];
    v27(v17, v12);
    v26(v17, v19, v12);
    v20 = v36;
    sub_248AA058C(v17, v12);
    v27(v17, v12);
    v27(v19, v12);
  }

  else
  {
    v28 = v5[2];
    v28(v11, WitnessTable, a2);
    v28(v9, v11, a2);
    v29 = sub_248AA0B94();
    v47 = v40;
    v48 = v29;
    swift_getWitnessTable();
    sub_248AA0684(v9, v12, a2);
    v30 = v5[1];
    v30(v9, a2);
    v30(v11, a2);
  }

  v31 = sub_248AA0B94();
  v32 = v40;
  v45 = v40;
  v46 = v31;
  v43 = swift_getWitnessTable();
  v44 = v32;
  swift_getWitnessTable();
  v33 = v38;
  (*(v38 + 16))(v39, v23, v20);
  return (*(v33 + 8))(v23, v20);
}

unint64_t sub_248AA0B94()
{
  result = qword_27EEC4ED0;
  if (!qword_27EEC4ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC4ED0);
  }

  return result;
}

uint64_t sub_248AA0BE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_248AA37DC();
  sub_248AA38BC();
  sub_248AA0B94();
  swift_getWitnessTable();
  return swift_getWitnessTable();
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

uint64_t sub_248AA0D48(uint64_t a1, uint64_t *a2)
{
  v3 = sub_248AA375C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_248AA374C();
}

uint64_t sub_248AA0DC0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v5 = *v2;
  v6 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4F88, &qword_248AA4B28);
  sub_248AA3A6C();
  return v4;
}

uint64_t sub_248AA0E20(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 44));
  v5 = *v3;
  v6 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4F88, &qword_248AA4B28);
  return sub_248AA3A7C();
}

uint64_t AsyncButton.init(role:action:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for AsyncButton();
  v11 = a5 + v10[11];
  sub_248AA3A5C();
  *v11 = v15;
  *(v11 + 1) = v16;
  sub_248AA2AC0(a1, a5 + v10[10], &qword_27EEC4ED8, &qword_248AA4AA8);
  *a5 = a2;
  a5[1] = a3;
  v12 = v10[9];

  a4(v13);

  return sub_248AA2B28(a1, &qword_27EEC4ED8, &qword_248AA4AA8);
}

uint64_t AsyncButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = *(a1 - 8);
  v34 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4ED8, &qword_248AA4AA8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - v9;
  v31 = &v31 - v9;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = sub_248AA3AAC();
  v36 = *(v13 - 8);
  v14 = *(v36 + 64);
  MEMORY[0x28223BE20](v13);
  v33 = &v31 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4EE0, &qword_248AA4AB0);
  v16 = sub_248AA37DC();
  v37 = *(v16 - 8);
  v17 = *(v37 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v32 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v35 = &v31 - v20;
  sub_248AA2AC0(v2 + *(a1 + 40), v10, &qword_27EEC4ED8, &qword_248AA4AA8);
  (*(v4 + 16))(v6, v2, a1);
  v21 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v11;
  *(v22 + 24) = v12;
  (*(v4 + 32))(v22 + v21, v6, a1);
  v39 = v11;
  v40 = v12;
  v41 = v2;
  v23 = v33;
  sub_248AA3A9C();
  sub_248AA0DC0(a1);
  WitnessTable = swift_getWitnessTable();
  v25 = v32;
  sub_248AA3A2C();
  (*(v36 + 8))(v23, v13);
  v26 = sub_248AA1EF4();
  v42 = WitnessTable;
  v43 = v26;
  v27 = swift_getWitnessTable();
  v28 = v35;
  sub_248AA0C90(v25, v16, v27);
  v29 = *(v37 + 8);
  v29(v25, v16);
  sub_248AA0C90(v28, v16, v27);
  return (v29)(v28, v16);
}

uint64_t sub_248AA13B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AsyncButton();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4F90, &qword_248AA4B30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  sub_248AA0E20(1, v6);
  v15 = sub_248AA3B8C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v7 + 16))(v10, a1, v6);
  sub_248AA3B6C();
  v16 = sub_248AA3B5C();
  v17 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 2) = v16;
  *(v18 + 3) = v19;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  (*(v7 + 32))(&v18[v17], v10, v6);
  sub_248AA1AF0(0, 0, v14, &unk_248AA4B40, v18);
}

uint64_t sub_248AA15BC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for AsyncButton();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = v0 + v5;
  v8 = *(v0 + v5 + 8);

  (*(*(v2 - 8) + 8))(v0 + v5 + v3[9], v2);
  v9 = v3[10];
  v10 = sub_248AA376C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v7 + v9, v10);
  }

  v12 = *(v7 + v3[11] + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_248AA173C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for AsyncButton() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_248AA13B0(v4, v1, v2);
}

uint64_t sub_248AA17C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_248AA3B6C();
  v6[5] = sub_248AA3B5C();
  v8 = sub_248AA3B4C();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x2822009F8](sub_248AA185C, v8, v7);
}

uint64_t sub_248AA185C()
{
  v1 = *(v0 + 16);
  v2 = v1[1];
  v6 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_248AA1948;

  return v6();
}

uint64_t sub_248AA1948()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v6 = *v0;

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_248AA1A68, v4, v3);
}

uint64_t sub_248AA1A68()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v5 = type metadata accessor for AsyncButton();
  sub_248AA0E20(0, v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_248AA1AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4F90, &qword_248AA4B30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_248AA2AC0(a3, v27 - v11, &qword_27EEC4F90, &qword_248AA4B30);
  v13 = sub_248AA3B8C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_248AA2B28(v12, &qword_27EEC4F90, &qword_248AA4B30);
  }

  else
  {
    sub_248AA3B7C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_248AA3B4C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_248AA3AFC() + 32;
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

      sub_248AA2B28(a3, &qword_27EEC4F90, &qword_248AA4B30);

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

  sub_248AA2B28(a3, &qword_27EEC4F90, &qword_248AA4B30);
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

uint64_t sub_248AA1DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AsyncButton();
  sub_248AA0C90(a1 + *(v10 + 36), a2, a3);
  sub_248AA0C90(v9, a2, a3);
  return (*(v6 + 8))(v9, a2);
}

unint64_t sub_248AA1EF4()
{
  result = qword_27EEC4EE8[0];
  if (!qword_27EEC4EE8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4EE0, &qword_248AA4AB0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEC4EE8);
  }

  return result;
}

void sub_248AA1FA8(uint64_t a1)
{
  sub_248AA259C();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_248AA25EC();
      if (v5 <= 0x3F)
      {
        sub_248AA2644();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_248AA2060(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_248AA376C() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 80);
  v15 = *(v6 + 64);
  v16 = *(v8 + 80);
  v17 = *(v8 + 64);
  v18 = 7;
  if (!v10)
  {
    v18 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 < a2)
  {
    v19 = ((v18 + v17 + ((v15 + v16 + ((v14 + 16) & ~v14)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v20 = v19 & 0xFFFFFFF8;
    if ((v19 & 0xFFFFFFF8) != 0)
    {
      v21 = 2;
    }

    else
    {
      v21 = a2 - v13 + 1;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *(a1 + v19);
        if (v24)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v24 = *(a1 + v19);
        if (v24)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v23)
    {
      v24 = *(a1 + v19);
      if (v24)
      {
LABEL_27:
        v25 = v24 - 1;
        if (v20)
        {
          v25 = 0;
          LODWORD(v20) = *a1;
        }

        return v13 + (v20 | v25) + 1;
      }
    }
  }

  if ((v12 & 0x80000000) == 0)
  {
    v27 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }

  v28 = (a1 + v14 + 16) & ~v14;
  if (v7 != v13)
  {
    if (v10 >= 2)
    {
      v30 = (*(v9 + 48))((v28 + v15 + v16) & ~v16);
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v29 = *(v6 + 48);

  return v29(v28, v7, v5);
}

void sub_248AA22CC(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(sub_248AA376C() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v8 + 80);
  v16 = *(v8 + 64);
  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (v9 <= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = v9;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  if (!v13)
  {
    ++v18;
  }

  v21 = ((v18 + ((v16 + v17 + ((v15 + 16) & ~v15)) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v20 < a3)
  {
    if (((v18 + ((v16 + v17 + ((v15 + 16) & ~v15)) & ~v17) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a3 - v20 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v10 = v23;
    }

    else
    {
      v10 = 0;
    }
  }

  if (a2 > v20)
  {
    if (v21)
    {
      v24 = 1;
    }

    else
    {
      v24 = a2 - v20;
    }

    if (v21)
    {
      v25 = ~v20 + a2;
      bzero(a1, v21);
      *a1 = v25;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        *(a1 + v21) = v24;
      }

      else
      {
        *(a1 + v21) = v24;
      }
    }

    else if (v10)
    {
      *(a1 + v21) = v24;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *(a1 + v21) = 0;
LABEL_41:
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!v10)
  {
    goto LABEL_41;
  }

  *(a1 + v21) = 0;
  if (!a2)
  {
    return;
  }

LABEL_42:
  if ((v19 & 0x80000000) != 0)
  {
    v26 = (a1 + v15 + 16) & ~v15;
    if (v9 == v20)
    {
      v27 = *(v30 + 56);

      v27(v26, a2, v9, v7);
    }

    else if (v13 >= 2)
    {
      v28 = *(v12 + 56);
      v29 = (v26 + v16 + v17) & ~v17;

      v28(v29, (a2 + 1));
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    *a1 = (a2 - 1);
  }
}

unint64_t sub_248AA259C()
{
  result = qword_27EEC4F70;
  if (!qword_27EEC4F70)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27EEC4F70);
  }

  return result;
}

void sub_248AA25EC()
{
  if (!qword_27EEC4F78)
  {
    sub_248AA376C();
    v0 = sub_248AA3BEC();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEC4F78);
    }
  }
}

void sub_248AA2644()
{
  if (!qword_27EEC4F80)
  {
    v0 = sub_248AA3A8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEC4F80);
    }
  }
}

uint64_t sub_248AA2694(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_248AA3AAC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4EE0, &qword_248AA4AB0);
  sub_248AA37DC();
  swift_getWitnessTable();
  sub_248AA1EF4();
  return swift_getWitnessTable();
}

uint64_t sub_248AA2738()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = type metadata accessor for AsyncButton();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = &v0[v5];
  v9 = *&v0[v5 + 8];

  (*(*(v2 - 8) + 8))(&v0[v5 + v3[9]], v2);
  v10 = v3[10];
  v11 = sub_248AA376C();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(&v0[v5 + v10], 1, v11))
  {
    (*(v12 + 8))(&v8[v10], v11);
  }

  v13 = *&v8[v3[11] + 8];

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_248AA28C0(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for AsyncButton() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_248AA29CC;

  return sub_248AA17C0(a1, v8, v9, v1 + v7, v4, v5);
}

uint64_t sub_248AA29CC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_248AA2AC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_248AA2B28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_248AA2B88(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248AA2C80;

  return v7(a1);
}

uint64_t sub_248AA2C80()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_248AA2D78(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248AA2F54;

  return sub_248AA2B88(a1, v5);
}

uint64_t sub_248AA2E30()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248AA2E68(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248AA29CC;

  return sub_248AA2B88(a1, v5);
}

uint64_t CircularProgressView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_248AA38DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4F98, &qword_248AA4B60);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  sub_248AA379C();
  sub_248AA38CC();
  sub_248AA0348(&qword_27EEC4FA0, &qword_27EEC4F98, &qword_248AA4B60);
  sub_248AA31BC();
  sub_248AA39FC();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4FB0, &qword_248AA4B68) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4FB8, &qword_248AA4B70) + 28);
  v14 = *MEMORY[0x277CDF440];
  v15 = sub_248AA377C();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  result = swift_getKeyPath();
  *v12 = result;
  return result;
}

unint64_t sub_248AA31BC()
{
  result = qword_27EEC4FA8;
  if (!qword_27EEC4FA8)
  {
    sub_248AA38DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC4FA8);
  }

  return result;
}

uint64_t sub_248AA3214@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_248AA38DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4F98, &qword_248AA4B60);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  sub_248AA379C();
  sub_248AA38CC();
  sub_248AA0348(&qword_27EEC4FA0, &qword_27EEC4F98, &qword_248AA4B60);
  sub_248AA31BC();
  sub_248AA39FC();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4FB0, &qword_248AA4B68) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4FB8, &qword_248AA4B70) + 28);
  v14 = *MEMORY[0x277CDF440];
  v15 = sub_248AA377C();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  result = swift_getKeyPath();
  *v12 = result;
  return result;
}

uint64_t sub_248AA3498(uint64_t a1)
{
  v2 = sub_248AA377C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return MEMORY[0x24C1E31E0](v5);
}

unint64_t sub_248AA3594()
{
  result = qword_27EEC4FC0;
  if (!qword_27EEC4FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4FB0, &qword_248AA4B68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4F98, &qword_248AA4B60);
    sub_248AA38DC();
    sub_248AA0348(&qword_27EEC4FA0, &qword_27EEC4F98, &qword_248AA4B60);
    sub_248AA31BC();
    swift_getOpaqueTypeConformance2();
    sub_248AA0348(&qword_27EEC4FC8, &qword_27EEC4FB8, &qword_248AA4B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC4FC0);
  }

  return result;
}