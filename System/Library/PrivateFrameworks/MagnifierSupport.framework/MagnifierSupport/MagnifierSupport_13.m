uint64_t sub_257CD1E08()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v11 < 0)
  {
LABEL_8:
    v6 = OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_blocks;
    swift_beginAccess();
    v7 = *(v0 + v6);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x259C72E20](0);
      goto LABEL_18;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v7 + 32);
      sub_257ECC3F0();
LABEL_18:
      swift_endAccess();
      return v8;
    }

    __break(1u);
    goto LABEL_22;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v1 = OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_blocks;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    if (v11 < sub_257ED0210())
    {
      goto LABEL_4;
    }
  }

  else if (v11 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v3 = v10;
    result = swift_beginAccess();
    v5 = *(v0 + v1);
    if ((v5 & 0xC000000000000001) != 0)
    {
LABEL_19:
      v8 = MEMORY[0x259C72E20](v3);
      goto LABEL_18;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v10 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_17:
      v8 = *(v5 + 8 * v3 + 32);
      sub_257ECC3F0();
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_8;
  }

  v9 = *(v0 + v1);
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_22:
  result = sub_257ED0210();
  v3 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_14:
  result = swift_beginAccess();
  v5 = *(v0 + v1);
  if ((v5 & 0xC000000000000001) != 0)
  {
    goto LABEL_19;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v3 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t MFReaderBlockManager.speechState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();
}

uint64_t sub_257CD2114@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a1 = v3;
  return result;
}

uint64_t sub_257CD2194(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_257ECDD70();
}

uint64_t MFReaderBlockManager.speechState.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_257ECDD70();
}

void (*MFReaderBlockManager.speechState.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_257ECDD50();
  return sub_257CD2314;
}

void sub_257CD2314(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t MFReaderBlockManager.$speechState.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F73F8);
  sub_257ECDD30();
  return swift_endAccess();
}

uint64_t sub_257CD23F0()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F73F8);
  sub_257ECDD30();
  return swift_endAccess();
}

uint64_t sub_257CD2468(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7400);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F73F8);
  sub_257ECDD40();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t MFReaderBlockManager.$speechState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7400);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F73F8);
  sub_257ECDD40();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*MFReaderBlockManager.$speechState.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7400);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager__speechState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F73F8);
  sub_257ECDD30();
  swift_endAccess();
  return sub_257CD2894;
}

void sub_257CD2894(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_257ECDD40();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_257ECDD40();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_257CD29FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 420) = a5;
  *(v5 + 120) = a4;
  v6 = sub_257ECD030();
  *(v5 + 128) = v6;
  *(v5 + 136) = *(v6 - 8);
  *(v5 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7248);
  *(v5 + 152) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7258);
  *(v5 + 160) = v7;
  *(v5 + 168) = *(v7 - 8);
  *(v5 + 176) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7250);
  *(v5 + 184) = v8;
  *(v5 + 192) = *(v8 - 8);
  *(v5 + 200) = swift_task_alloc();
  v9 = sub_257ECD0B0();
  *(v5 + 208) = v9;
  *(v5 + 216) = *(v9 - 8);
  *(v5 + 224) = swift_task_alloc();
  v10 = sub_257ECCFD0();
  *(v5 + 232) = v10;
  *(v5 + 240) = *(v10 - 8);
  *(v5 + 248) = swift_task_alloc();
  v11 = sub_257ECCFC0();
  *(v5 + 256) = v11;
  *(v5 + 264) = *(v11 - 8);
  *(v5 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7260);
  *(v5 + 280) = swift_task_alloc();
  v12 = sub_257ECD0D0();
  *(v5 + 288) = v12;
  *(v5 + 296) = *(v12 - 8);
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = sub_257ECF900();
  *(v5 + 320) = sub_257ECF8F0();
  v14 = sub_257ECF8B0();
  *(v5 + 328) = v14;
  *(v5 + 336) = v13;

  return MEMORY[0x2822009F8](sub_257CD2DA8, v14, v13);
}

uint64_t sub_257CD2DA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v1 = *(v0 + 64);
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  sub_257ECDD60();

  if ((*(v0 + 72) & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

  v3 = *(v0 + 120);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  KeyPath = *(v0 + 80);
  v4 = OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_blocks;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5 >> 62)
  {
    goto LABEL_19;
  }

  if (KeyPath >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    v6 = *(v3 + v4);
    if (v6 >> 62)
    {
      v28 = sub_257ED0210();
      v1 = v28 - 1;
      if (!__OFSUB__(v28, 1))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v1 = v7 - 1;
      if (!__OFSUB__(v7, 1))
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_8:
    v1 = 0;
  }

LABEL_9:
  while (1)
  {
    v3 = *(v0 + 120);
    v4 = OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_blocks;
    swift_beginAccess();
    v8 = *(v3 + v4);
    if ((v8 & 0xC000000000000001) != 0)
    {
      break;
    }

    if ((v1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v1 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v8 + 8 * v1 + 32);
      sub_257ECC3F0();
      goto LABEL_13;
    }

    __break(1u);
LABEL_19:
    if (KeyPath >= sub_257ED0210())
    {
      goto LABEL_4;
    }
  }

  v9 = MEMORY[0x259C72E20](v1);
LABEL_13:
  *(v0 + 344) = v9;
  v11 = *(v0 + 272);
  v10 = *(v0 + 280);
  v12 = *(v0 + 256);
  v13 = *(v0 + 264);
  v15 = *(v0 + 240);
  v14 = *(v0 + 248);
  v30 = *(v0 + 232);
  v16 = *(v0 + 420);
  v31 = *(v0 + 120);
  swift_endAccess();
  v17 = sub_257ECD060();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = swift_task_alloc();
  *(v18 + 16) = v16;
  *(v18 + 24) = v9;
  (*(v13 + 104))(v11, *MEMORY[0x277D70198], v12);
  (*(v15 + 104))(v14, *MEMORY[0x277D701A0], v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7268);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_257EDBBA0;
  sub_257ECD0A0();
  sub_257ECD090();
  sub_257ECD080();
  *(v0 + 88) = v19;
  sub_257CD53B8(&qword_27F8F7270, MEMORY[0x277D70340]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7278);
  sub_257CD4FDC();
  sub_257ED0180();
  sub_257ECD0C0();

  v20 = *(v31 + OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_synth);
  sub_257ECD070();

  sub_257ECF970();
  v21 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock___observationRegistrar;
  *(v0 + 352) = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange;
  *(v0 + 360) = v21;
  *(v0 + 368) = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__containsSelection;
  v22 = MEMORY[0x277D701E8];
  *(v0 + 400) = *MEMORY[0x277D701F0];
  *(v0 + 404) = *v22;
  *(v0 + 408) = *MEMORY[0x277D701D8];
  *(v0 + 412) = *MEMORY[0x277D701E0];
  v23 = sub_257ECF8F0();
  *(v0 + 376) = v23;
  v24 = swift_task_alloc();
  *(v0 + 384) = v24;
  *v24 = v0;
  v24[1] = sub_257CD330C;
  v25 = *(v0 + 152);
  v26 = *(v0 + 160);
  v27 = MEMORY[0x277D85700];

  return MEMORY[0x2822005A8](v25, v23, v27, v26, v0 + 96);
}

uint64_t sub_257CD330C()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 328);
  v4 = *(v2 + 336);
  if (v0)
  {
    v5 = sub_257CD3A10;
  }

  else
  {
    v5 = sub_257CD3430;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257CD3430()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 296);
    v36 = *(v0 + 304);
    v5 = *(v0 + 288);
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v9 = *(v0 + 176);
    v8 = *(v0 + 184);
    v11 = *(v0 + 160);
    v10 = *(v0 + 168);

    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    (*(v4 + 8))(v36, v5);

    v12 = *(v0 + 8);

    return v12();
  }

  v14 = *(v0 + 400);
  v15 = *(v0 + 144);
  (*(v3 + 32))(v15, v1, v2);
  v16 = (*(v3 + 88))(v15, v2);
  if (v16 == v14)
  {
    v17 = *(v0 + 144);
    (*(*(v0 + 136) + 96))(v17, *(v0 + 128));
    if (*v17 == 1)
    {
      v18 = *(v0 + 344);
      v19 = v18 + *(v0 + 352);
      if (*(v19 + 16))
      {
        *v19 = 0;
        *(v19 + 8) = 0;
        *(v19 + 16) = 1;
      }

      else
      {
        swift_getKeyPath();
        v24 = swift_task_alloc();
        *(v24 + 24) = 0;
        *(v24 + 32) = 0;
        *(v24 + 16) = v18;
        *(v24 + 40) = 1;
        *(v0 + 112) = v18;
        sub_257CD53B8(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
        sub_257ECCED0();
      }

      v25 = *(v0 + 368);
      v26 = *(v0 + 344);
      if (*(v26 + v25) == 1)
      {
        swift_getKeyPath();
        v27 = swift_task_alloc();
        *(v27 + 16) = v26;
        *(v27 + 24) = 0;
        *(v0 + 104) = v26;
        sub_257CD53B8(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
        sub_257ECCED0();
      }

      else
      {
        *(v26 + v25) = 0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (*(v0 + 416) && *(v0 + 416) != 1)
      {
      }

      else
      {
        v35 = sub_257ED0640();

        if ((v35 & 1) == 0)
        {
          sub_257CD5040();
        }
      }
    }

    goto LABEL_19;
  }

  if (v16 == *(v0 + 404))
  {
    v20 = *(v0 + 120);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 419) = 0;
    v21 = v20;
  }

  else if (v16 == *(v0 + 408))
  {
    v22 = *(v0 + 120);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 418) = 1;
    v23 = v22;
  }

  else
  {
    if (v16 != *(v0 + 412))
    {
      (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
      goto LABEL_19;
    }

    v28 = *(v0 + 120);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 417) = 0;
    v29 = v28;
  }

  sub_257ECDD70();
LABEL_19:
  v30 = sub_257ECF8F0();
  *(v0 + 376) = v30;
  v31 = swift_task_alloc();
  *(v0 + 384) = v31;
  *v31 = v0;
  v31[1] = sub_257CD330C;
  v32 = *(v0 + 152);
  v33 = *(v0 + 160);
  v34 = MEMORY[0x277D85700];

  return MEMORY[0x2822005A8](v32, v30, v34, v33, v0 + 96);
}

uint64_t sub_257CD3A10()
{
  v1 = *(v0 + 296);
  v11 = *(v0 + 304);
  v2 = *(v0 + 288);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v11, v2);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_257CD3B64(char a1, uint64_t a2)
{
  if (a1)
  {
    swift_getKeyPath();
    *&v7 = a2;
    sub_257CD53B8(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
    sub_257ECCEE0();

    if (*(a2 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange + 16) == 1)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_257ECD180();
      sub_257BE4084(&v7, &qword_27F8F6E68);
    }

    else
    {
      sub_257DCCD64(*(a2 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange), *(a2 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange + 8), v6);
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(v6);
      sub_257ECD130();
      sub_257C024BC(v5, v4);
      sub_257ECD180();
      sub_257BE4084(v4, &qword_27F8F6E68);
      __swift_destroy_boxed_opaque_existential_0(v5);
      __swift_destroy_boxed_opaque_existential_0(&v7);
    }

    sub_257ECD130();
    sub_257ECD130();
  }

  else
  {
    swift_getKeyPath();
    *&v7 = a2;
    sub_257CD53B8(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
    sub_257ECCEE0();

    *(&v8 + 1) = sub_257ECD1C0();
    v9 = MEMORY[0x277D703A0];
    __swift_allocate_boxed_opaque_existential_1(&v7);

    sub_257ECD1D0();
    sub_257ECD130();
    __swift_destroy_boxed_opaque_existential_0(&v7);
    sub_257ECD130();
    sub_257ECD130();
  }

  __swift_destroy_boxed_opaque_existential_0(v5);
  __swift_destroy_boxed_opaque_existential_0(v6);
  sub_257ECD130();
  return __swift_destroy_boxed_opaque_existential_0(&v7);
}

uint64_t sub_257CD3DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  v4[3] = swift_task_alloc();
  v4[4] = sub_257ECF900();
  v4[5] = sub_257ECF8F0();
  v6 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257CD3ECC, v6, v5);
}

uint64_t sub_257CD3ECC()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = sub_257ECF930();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = v2;
  v5 = sub_257ECF8F0();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  *(v6 + 32) = v4;
  *(v6 + 40) = 0;
  sub_257C3FBD4(0, 0, v1, &unk_257EF2B10, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_257CD3FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_257ECF900();
  v4[3] = sub_257ECF8F0();
  v6 = sub_257ECF8B0();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_257CD407C, v6, v5);
}

uint64_t sub_257CD407C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_synth);
  v0[6] = v1;
  v4 = (*MEMORY[0x277D70330] + MEMORY[0x277D70330]);
  v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_257CD4144;

  return v4();
}

uint64_t sub_257CD4144()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_257CC9EBC, v4, v3);
}

uint64_t sub_257CD4284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_257ECF900();
  v4[3] = sub_257ECF8F0();
  v6 = sub_257ECF8B0();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_257CD431C, v6, v5);
}

uint64_t sub_257CD431C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_synth);
  v0[6] = v1;
  v4 = (*MEMORY[0x277D70318] + MEMORY[0x277D70318]);
  v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_257CD43E4;

  return v4();
}

uint64_t sub_257CD43E4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_257CC0064, v4, v3);
}

uint64_t sub_257CD4524(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_257ECF930();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_257ECF900();
  v7 = v1;
  v8 = sub_257ECF8F0();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  sub_257C3FBD4(0, 0, v5, &unk_257EE1470, v9);

  swift_getKeyPath();
  swift_getKeyPath();
  v15 = 2;
  v11 = v7;
  sub_257ECDD70();
  sub_257CD1E08();
  sub_257DCD40C();

  if ((a1 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = 0;
    v13 = v11;
    return sub_257ECDD70();
  }

  return result;
}

uint64_t sub_257CD46F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_257ECF900();
  v4[3] = sub_257ECF8F0();
  v6 = sub_257ECF8B0();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_257CD478C, v6, v5);
}

uint64_t sub_257CD478C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_synth);
  v0[6] = v1;
  v4 = (*MEMORY[0x277D701C8] + MEMORY[0x277D701C8]);
  v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_257CD4144;

  return v4();
}

id MFReaderBlockManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MFReaderBlockManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_257CD4924()
{
  result = qword_27F8F7408;
  if (!qword_27F8F7408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7408);
  }

  return result;
}

uint64_t sub_257CD4A5C@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_257ECDCF0();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for MFReaderBlockManager()
{
  result = qword_27F8F7428;
  if (!qword_27F8F7428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257CD4B00()
{
  sub_257CD4C1C(319, &qword_27F8F7438);
  if (v0 <= 0x3F)
  {
    sub_257CD4C1C(319, &qword_27F8F7440);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_257CD4C1C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_257ECDD80();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

id sub_257CD4C68(void *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v22 = a1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F73F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7448);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20[-v11];
  v21 = *a2;
  v13 = OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_synth;
  *&v3[v13] = sub_257CD1B88();
  v14 = OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_blocks;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_blocks] = MEMORY[0x277D84F90];
  v15 = OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager__blockIndex;
  v26[0] = 0;
  sub_257ECDD20();
  (*(v10 + 32))(&v3[v15], v12, v9);
  v16 = OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager__speechState;
  LOBYTE(v26[0]) = 2;
  sub_257ECDD20();
  (*(v6 + 32))(&v3[v16], v8, v5);
  swift_beginAccess();
  (*(v10 + 8))(&v3[v15], v9);
  v25 = 0;
  sub_257ECDD20();
  swift_endAccess();
  if (v22)
  {
    LOBYTE(v26[0]) = v21;
    v17 = v22;
    v18 = sub_257EB62C8(v26);

    swift_beginAccess();
    *&v3[v14] = v18;
  }

  v24.receiver = v3;
  v24.super_class = ObjectType;
  return objc_msgSendSuper2(&v24, sel_init);
}

uint64_t sub_257CD4F1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257BE3DE0;

  return sub_257CD46F4(a1, v4, v5, v6);
}

unint64_t sub_257CD4FDC()
{
  result = qword_27F8F7280;
  if (!qword_27F8F7280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7280);
  }

  return result;
}

void sub_257CD5040()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - v2;
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  sub_257ECDD60();

  v5 = v19 + 1;
  if (__OFADD__(v19, 1))
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v5;
    v0 = v0;
    sub_257ECDD70();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    KeyPath = v19;
    v6 = OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_blocks;
    swift_beginAccess();
    v7 = *&v0[v6];
    if (!(v7 >> 62))
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  v8 = sub_257ED0210();
LABEL_4:
  if (KeyPath >= v8)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v18) = 2;
    v14 = v0;
    sub_257ECDD70();
    swift_getKeyPath();
    swift_getKeyPath();
    v18 = 0;
    v15 = v14;
    sub_257ECDD70();
    if (!AXIsInternalInstall())
    {
      return;
    }
  }

  else
  {
    v9 = sub_257ECF930();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
    sub_257ECF900();
    v10 = v0;
    v11 = sub_257ECF8F0();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    *(v12 + 16) = v11;
    *(v12 + 24) = v13;
    *(v12 + 32) = v10;
    *(v12 + 40) = 0;
    sub_257C3FBD4(0, 0, v3, &unk_257EE1500, v12);

    if ((AXIsInternalInstall() & 1) == 0)
    {
      return;
    }
  }

  v16 = sub_257ECF4C0();
  v17 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v17, v16, 0, 0, 1u);
}

uint64_t sub_257CD53B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257CD5424(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257C167C4;

  return sub_257CD29FC(a1, v4, v5, v6, v7);
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t MAGVideoCaptioningService.__allocating_init()()
{
  v0 = swift_allocObject();
  MAGVideoCaptioningService.init()();
  return v0;
}

uint64_t MAGVideoCaptioningService.init()()
{
  v1 = v0;
  v2 = sub_257ECD640();
  v14 = *(v2 - 8);
  v15 = v2;
  MEMORY[0x28223BE20](v2);
  v13 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_257ECFD20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECFE60();
  MEMORY[0x28223BE20](v8);
  v9 = sub_257ECF190();
  MEMORY[0x28223BE20](v9 - 8);
  sub_257ECF170();
  v16 = MEMORY[0x277D84F90];
  sub_257CD8820(&qword_27F8F7450, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7458);
  sub_257CD58DC();
  sub_257ED0180();
  (*(v5 + 104))(v7, *MEMORY[0x277D85268], v4);
  sub_257ECD210();
  swift_allocObject();
  *(v0 + 16) = sub_257ECD220();
  v10 = OBJC_IVAR____TtC16MagnifierSupport25MAGVideoCaptioningService_videoCaptioningState;
  v11 = sub_257ECD630();
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MAGVideoCaptioningService_isGenerating) = 0;
  sub_257ECCC70();
  sub_257ECD690();
  (*(v14 + 104))(v13, *MEMORY[0x277D782E0], v15);
  *(v1 + 24) = sub_257ECD670();
  return v1;
}

unint64_t sub_257CD58DC()
{
  result = qword_27F8F7460;
  if (!qword_27F8F7460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7460);
  }

  return result;
}

uint64_t sub_257CD5940()
{
  v1[2] = v0;
  v2 = sub_257ECD5F0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_257ECDA30();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  type metadata accessor for MAGVideoCaptioningService();
  sub_257CD8820(&qword_27F8F7480, type metadata accessor for MAGVideoCaptioningService);
  v5 = sub_257ECF8B0();
  v1[9] = v5;
  v1[10] = v4;

  return MEMORY[0x2822009F8](sub_257CD5AB0, v5, v4);
}

uint64_t sub_257CD5AB0()
{
  v13 = v0;
  sub_257ECD4B0();
  v1 = sub_257ECDA20();
  v2 = sub_257ECFC00();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_257BF1FC8(0x286D726177657270, 0xE900000000000029, &v12);
    _os_log_impl(&dword_257BAC000, v1, v2, "%s - start", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x259C74820](v8, -1, -1);
    MEMORY[0x259C74820](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  v0[11] = *(v0[2] + 24);
  sub_257ECC3F0();
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_257CD5C68;
  v10 = v0[5];

  return MEMORY[0x2821DF628](v10);
}

uint64_t sub_257CD5C68()
{
  v2 = *v1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_257CD5E38;
  }

  else
  {
    v5 = sub_257CD5DC0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_257CD5DC0()
{
  sub_257CD5F78();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257CD5E38()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_257CD8820(&qword_27F8F7488, MEMORY[0x277D782D0]);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);
  sub_257CD5F78();

  v5 = v0[1];

  return v5();
}

uint64_t type metadata accessor for MAGVideoCaptioningService()
{
  result = qword_27F8F7498;
  if (!qword_27F8F7498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257CD5F78()
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD4B0();
  v4 = sub_257ECDA20();
  v5 = sub_257ECFC00();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_257BF1FC8(0x286D726177657270, 0xE900000000000029, &v10);
    _os_log_impl(&dword_257BAC000, v4, v5, "%s - end", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x259C74820](v7, -1, -1);
    MEMORY[0x259C74820](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_257CD6110()
{
  v1[5] = v0;
  v2 = sub_257ECD5F0();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7490);
  v1[9] = swift_task_alloc();
  type metadata accessor for MAGVideoCaptioningService();
  sub_257CD8820(&qword_27F8F7480, type metadata accessor for MAGVideoCaptioningService);
  v4 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257CD625C, v4, v3);
}

uint64_t sub_257CD625C()
{
  sub_257ECC3F0();
  sub_257ECD680();

  v1 = v0[9];
  v2 = v0[5];
  v3 = sub_257ECD630();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC16MagnifierSupport25MAGVideoCaptioningService_videoCaptioningState;
  swift_beginAccess();
  sub_257CD80A4(v1, v2 + v4);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_257CD6414(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *(v6 + 184) = v5;
  *(v6 + 168) = a4;
  *(v6 + 176) = a5;
  *(v6 + 152) = a2;
  *(v6 + 160) = a3;
  *(v6 + 144) = a1;
  v7 = sub_257ECD630();
  *(v6 + 192) = v7;
  *(v6 + 200) = *(v7 - 8);
  *(v6 + 208) = swift_task_alloc();
  v8 = sub_257ECD5F0();
  *(v6 + 216) = v8;
  *(v6 + 224) = *(v8 - 8);
  *(v6 + 232) = swift_task_alloc();
  *(v6 + 240) = swift_task_alloc();
  v9 = sub_257ECD610();
  *(v6 + 248) = v9;
  *(v6 + 256) = *(v9 - 8);
  *(v6 + 264) = swift_task_alloc();
  v10 = sub_257ECCC80();
  *(v6 + 272) = v10;
  *(v6 + 280) = *(v10 - 8);
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7490);
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  v11 = sub_257ECDA30();
  *(v6 + 336) = v11;
  *(v6 + 344) = *(v11 - 8);
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  v12 = sub_257ECCCF0();
  *(v6 + 392) = v12;
  *(v6 + 400) = *(v12 - 8);
  *(v6 + 408) = swift_task_alloc();
  type metadata accessor for MAGVideoCaptioningService();
  sub_257CD8820(&qword_27F8F7480, type metadata accessor for MAGVideoCaptioningService);
  v14 = sub_257ECF8B0();
  *(v6 + 416) = v14;
  *(v6 + 424) = v13;

  return MEMORY[0x2822009F8](sub_257CD67A4, v14, v13);
}

uint64_t sub_257CD67A4()
{
  v78 = v0;
  v1 = *(v0 + 23);
  v2 = OBJC_IVAR____TtC16MagnifierSupport25MAGVideoCaptioningService_isGenerating;
  *(v0 + 54) = OBJC_IVAR____TtC16MagnifierSupport25MAGVideoCaptioningService_isGenerating;
  if (*(v1 + v2))
  {
    sub_257ECD4B0();
    v3 = sub_257ECDA20();
    v4 = sub_257ECFC00();
    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v0 + 43);
    v6 = *(v0 + 44);
    v8 = *(v0 + 42);
    if (v5)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v77[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_257BF1FC8(0xD000000000000038, 0x8000000257EFDE10, v77);
      _os_log_impl(&dword_257BAC000, v3, v4, "%s - generation already in progress. returning nil", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x259C74820](v10, -1, -1);
      MEMORY[0x259C74820](v9, -1, -1);
    }

    (*(v7 + 8))(v6, v8);
    goto LABEL_16;
  }

  v12 = *(v0 + 50);
  v11 = *(v0 + 51);
  v13 = *(v0 + 49);
  v75 = v2;
  v76 = v1;
  *(v1 + v2) = 1;
  sub_257ECCCE0();
  v14 = sub_257ECCCA0();
  v16 = v15;
  *(v0 + 55) = v14;
  *(v0 + 56) = v15;
  (*(v12 + 8))(v11, v13);
  sub_257ECD4B0();

  v17 = sub_257ECDA20();
  v18 = sub_257ECFC00();

  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 48);
  v21 = *(v0 + 42);
  v22 = *(v0 + 43);
  if (v19)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v77[0] = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_257BF1FC8(0xD000000000000038, 0x8000000257EFDE10, v77);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_257BF1FC8(v14, v16, v77);
    _os_log_impl(&dword_257BAC000, v17, v18, "%s - start - %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C74820](v24, -1, -1);
    MEMORY[0x259C74820](v23, -1, -1);
  }

  v25 = *(v22 + 8);
  v25(v20, v21);
  v26 = *(v0 + 41);
  v27 = *(v0 + 24);
  v28 = *(v0 + 25);
  v29 = *(v0 + 23);
  v30 = OBJC_IVAR____TtC16MagnifierSupport25MAGVideoCaptioningService_videoCaptioningState;
  *(v0 + 57) = v25;
  *(v0 + 58) = v30;
  swift_beginAccess();
  sub_257CD8114(v29 + v30, v26);
  v31 = *(v28 + 48);
  *(v0 + 59) = v31;
  *(v0 + 60) = (v28 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v27) = v31(v26, 1, v27);
  sub_257CD8184(v26);
  if (v27 == 1)
  {
    sub_257ECD4B0();

    v32 = sub_257ECDA20();
    v33 = sub_257ECFC00();

    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 45);
    v36 = *(v0 + 42);
    if (v34)
    {
      v73 = *(v0 + 45);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v77[0] = v38;
      *v37 = 136315394;
      *(v37 + 4) = sub_257BF1FC8(0xD000000000000038, 0x8000000257EFDE10, v77);
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_257BF1FC8(v14, v16, v77);
      _os_log_impl(&dword_257BAC000, v32, v33, "%s - %s - videoCaptioningState=nil, returning nil", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C74820](v38, -1, -1);
      MEMORY[0x259C74820](v37, -1, -1);

      v39 = v73;
    }

    else
    {

      v39 = v35;
    }

    v25(v39, v36);
    v60 = v14;
    goto LABEL_15;
  }

  v70 = v31;
  v71 = v29;
  v74 = v14;
  v41 = *(v0 + 36);
  v40 = *(v0 + 37);
  v43 = *(v0 + 34);
  v42 = *(v0 + 35);
  v44 = *(v0 + 23);
  v46 = v0[21];
  v45 = v0[22];
  v48 = v0[19];
  v47 = v0[20];
  v49 = *(v0 + 18);
  CVPixelBufferGetWidth(v49);
  CVPixelBufferGetHeight(v49);
  v80.origin.x = v48;
  v80.origin.y = v47;
  v80.size.width = v46;
  v80.size.height = v45;
  CGRectGetMinX(v80);
  v81.origin.x = v48;
  v81.origin.y = v47;
  v81.size.width = v46;
  v81.size.height = v45;
  CGRectGetMinY(v81);
  v82.origin.x = v48;
  v82.origin.y = v47;
  v82.size.width = v46;
  v82.size.height = v45;
  CGRectGetWidth(v82);
  v83.origin.x = v48;
  v83.origin.y = v47;
  v83.size.width = v46;
  v83.size.height = v45;
  CGRectGetHeight(v83);
  sub_257ECCC70();
  v50 = OBJC_IVAR____TtC16MagnifierSupport25MAGVideoCaptioningService_lastGenerationTime;
  swift_beginAccess();
  v72 = v44;
  (*(v42 + 16))(v41, v44 + v50, v43);
  sub_257ECCBC0();
  v52 = v51;
  v53 = *(v42 + 8);
  v53(v41, v43);
  v54 = (v53)(v40, v43);
  if (v52 <= 0.15)
  {
    v60 = v74;
LABEL_15:
    sub_257CD7D08(v60, v16);

    *(v76 + v75) = 0;
LABEL_16:

    v61 = *(v0 + 1);

    return v61(0, 0);
  }

  v55 = *(v0 + 37);
  v56 = *(v0 + 34);
  v57 = *(v0 + 35);
  v58 = *(v0 + 18);
  CGSizeMake(v54);
  sub_257ECCC70();
  swift_beginAccess();
  (*(v57 + 40))(v72 + v50, v55, v56);
  swift_endAccess();
  v59 = v58;
  sub_257ECD600();
  v63 = *(v0 + 40);
  v64 = *(v0 + 24);
  sub_257CD8114(v71 + v30, v63);
  v65 = v70(v63, 1, v64);
  if (v65 == 1)
  {
    __break(1u);
  }

  else
  {
    v68 = *(v0 + 23);
    (*(*(v0 + 25) + 32))(*(v0 + 26), *(v0 + 40), *(v0 + 24));
    v0[61] = *(v68 + 24);
    sub_257ECC3F0();
    v69 = swift_task_alloc();
    *(v0 + 62) = v69;
    *v69 = v0;
    v69[1] = sub_257CD71D8;
    v66 = *(v0 + 33);
    v67 = *(v0 + 29);
    v65 = *(v0 + 26);
  }

  return MEMORY[0x2821DF620](v65, v66, v67);
}

uint64_t sub_257CD71D8()
{
  v2 = *v1;

  v3 = *(v2 + 424);
  v4 = *(v2 + 416);
  if (v0)
  {
    v5 = sub_257CD7B04;
  }

  else
  {
    v5 = sub_257CD732C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_257CD732C()
{
  v74 = v0;
  v1 = v0[59];
  v2 = v0[58];
  v3 = v0[38];
  v4 = v0[39];
  v5 = v0[25];
  v7 = v0[23];
  v6 = v0[24];
  (*(v5 + 16))(v4, v0[26], v6);
  (*(v5 + 56))(v4, 0, 1, v6);
  swift_beginAccess();
  sub_257CD80A4(v4, v7 + v2);
  swift_endAccess();
  sub_257CD8114(v7 + v2, v3);
  result = v1(v3, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[38];
    v10 = v0[24];
    v11 = v0[25];
    v12 = sub_257ECD620();
    v14 = v13;
    v15 = *(v11 + 8);
    v15(v9, v10);
    v72 = v15;
    if (v12 == 0x6E776F6E6B6E75 && v14 == 0xE700000000000000 || (sub_257ED0640() & 1) != 0 || !v12 && v14 == 0xE000000000000000 || (sub_257ED0640() & 1) != 0 || (v0[14] = v12, v0[15] = v14, v0[16] = 1919905636, v0[17] = 0xE400000000000000, sub_257BDAB08(), (sub_257ED0150() & 1) == 0))
    {

      sub_257ECD4B0();

      v31 = sub_257ECDA20();
      v32 = sub_257ECFC00();

      v33 = os_log_type_enabled(v31, v32);
      v71 = v0[57];
      if (v33)
      {
        v35 = v0[55];
        v34 = v0[56];
        v63 = v0[42];
        v65 = v0[46];
        v36 = v0[32];
        v67 = v0[31];
        v69 = v0[33];
        v61 = v0[26];
        v37 = v0[24];
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v73 = v39;
        *v38 = 136315394;
        *(v38 + 4) = sub_257BF1FC8(0xD000000000000038, 0x8000000257EFDE10, &v73);
        *(v38 + 12) = 2080;
        *(v38 + 14) = sub_257BF1FC8(v35, v34, &v73);
        _os_log_impl(&dword_257BAC000, v31, v32, "%s - %s - produced caption <nil>", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C74820](v39, -1, -1);
        MEMORY[0x259C74820](v38, -1, -1);

        v71(v65, v63);
        v72(v61, v37);
        (*(v36 + 8))(v69, v67);
      }

      else
      {
        v40 = v0[46];
        v41 = v0[42];
        v43 = v0[32];
        v42 = v0[33];
        v44 = v0[31];
        v45 = v0[26];
        v46 = v0[24];

        v71(v40, v41);
        v72(v45, v46);
        (*(v43 + 8))(v42, v44);
      }

      v47 = (v0[23] + v0[54]);
      sub_257CD7D08(v0[55], v0[56]);
      v68 = 0;
      v70 = 0;
    }

    else
    {
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v17 = [objc_opt_self() bundleForClass_];
      v18 = sub_257ECF4C0();

      v19 = sub_257ECF4C0();
      v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

      v21 = sub_257ECF500();
      v23 = v22;

      sub_257ECD4B0();

      v24 = sub_257ECDA20();
      v25 = sub_257ECFC00();

      v26 = os_log_type_enabled(v24, v25);
      v66 = v0[57];
      v68 = v23;
      v70 = v21;
      if (v26)
      {
        v27 = v0[55];
        v56 = v0[56];
        v59 = v0[42];
        v60 = v0[47];
        v28 = v0[32];
        v62 = v0[31];
        v64 = v0[33];
        v57 = v0[24];
        v58 = v0[26];
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v73 = v30;
        *v29 = 136315650;
        *(v29 + 4) = sub_257BF1FC8(0xD000000000000038, 0x8000000257EFDE10, &v73);
        *(v29 + 12) = 2080;
        *(v29 + 14) = sub_257BF1FC8(v27, v56, &v73);
        *(v29 + 22) = 2080;
        *(v29 + 24) = sub_257BF1FC8(v21, v23, &v73);
        _os_log_impl(&dword_257BAC000, v24, v25, "%s - %s - produced caption '%s'", v29, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x259C74820](v30, -1, -1);
        MEMORY[0x259C74820](v29, -1, -1);

        v66(v60, v59);
        v72(v58, v57);
        (*(v28 + 8))(v64, v62);
      }

      else
      {
        v49 = v0[47];
        v50 = v0[42];
        v51 = v0[32];
        v52 = v0[33];
        v53 = v0[31];
        v54 = v0[26];
        v55 = v0[24];

        v66(v49, v50);
        v72(v54, v55);
        (*(v51 + 8))(v52, v53);
      }

      v47 = (v0[23] + v0[54]);
      sub_257CD7D08(v0[55], v0[56]);
    }

    *v47 = 0;

    v48 = v0[1];

    return v48(v70, v68);
  }

  return result;
}

uint64_t sub_257CD7B04()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v5 = v0[28];
  v4 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[24];
  v9 = v0[25];
  sub_257CD8820(&qword_27F8F7488, MEMORY[0x277D782D0]);
  swift_allocError();
  (*(v5 + 32))(v10, v4, v6);
  (*(v9 + 8))(v7, v8);
  (*(v2 + 8))(v1, v3);
  v11 = v0[54];
  v12 = v0[23];
  sub_257CD7D08(v0[55], v0[56]);

  *(v12 + v11) = 0;

  v13 = v0[1];

  return v13();
}

uint64_t sub_257CD7D08(uint64_t a1, unint64_t a2)
{
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD4B0();

  v8 = sub_257ECDA20();
  v9 = sub_257ECFC00();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_257BF1FC8(0xD000000000000038, 0x8000000257EFDE10, &v14);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_257BF1FC8(a1, a2, &v14);
    _os_log_impl(&dword_257BAC000, v8, v9, "%s - end - %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C74820](v11, -1, -1);
    MEMORY[0x259C74820](v10, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t MAGVideoCaptioningService.deinit()
{

  sub_257CD8184(v0 + OBJC_IVAR____TtC16MagnifierSupport25MAGVideoCaptioningService_videoCaptioningState);
  v1 = OBJC_IVAR____TtC16MagnifierSupport25MAGVideoCaptioningService_lastGenerationTime;
  v2 = sub_257ECCC80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MAGVideoCaptioningService.__deallocating_deinit()
{

  sub_257CD8184(v0 + OBJC_IVAR____TtC16MagnifierSupport25MAGVideoCaptioningService_videoCaptioningState);
  v1 = OBJC_IVAR____TtC16MagnifierSupport25MAGVideoCaptioningService_lastGenerationTime;
  v2 = sub_257ECCC80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_257CD8028()
{
  v0 = type metadata accessor for MAGVideoCaptioningService();
  v1 = sub_257CD8820(&unk_27F8F74B0, type metadata accessor for MAGVideoCaptioningService);

  return MEMORY[0x282138AC0](v0, v1);
}

uint64_t sub_257CD80A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7490);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_257CD8114(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257CD8184(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_257CD823C()
{
  sub_257CD87C8();
  if (v0 <= 0x3F)
  {
    sub_257ECCC80();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of MAGVideoCaptioningService.prewarm()()
{
  v4 = (*(*v0 + 176) + **(*v0 + 176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_257C167C4;

  return v4();
}

uint64_t dispatch thunk of MAGVideoCaptioningService.resetState()()
{
  v4 = (*(*v0 + 184) + **(*v0 + 184));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_257BE3DE0;

  return v4();
}

uint64_t dispatch thunk of MAGVideoCaptioningService.generateActionCaption(from:nearestPersonNormalizedRect:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v18 = (*(*v5 + 240) + **(*v5 + 240));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_257CD86BC;
  v13.n128_f64[0] = a2;
  v14.n128_f64[0] = a3;
  v15.n128_f64[0] = a4;
  v16.n128_f64[0] = a5;

  return v18(a1, v13, v14, v15, v16);
}

uint64_t sub_257CD86BC(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

void sub_257CD87C8()
{
  if (!qword_27F8F74A8)
  {
    sub_257ECD630();
    v0 = sub_257ED00C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8F74A8);
    }
  }
}

uint64_t sub_257CD8820(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_257CD8868()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport33FilterCustomizationViewController_tableView];
  [v2 setDataSource_];
  [v2 setDelegate_];
  sub_257C60F40();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [v1 view];
  if (v5)
  {
    v6 = v5;
    [v5 addSubview_];

    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      sub_257EB6FD8(v7, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_257CD8A04(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  if (!v8)
  {
    sub_257ECF500();
    v8 = sub_257ECF4C0();
  }

  [v3 setTitle_];
}

id sub_257CD8BC0(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC16MagnifierSupport33FilterCustomizationViewController_tableView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 systemYellowColor];
  [v10 setTintColor_];

  [v10 setClipsToBounds_];
  *&v3[v7] = v10;
  if (a2)
  {
    v12 = sub_257ECF4C0();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v3;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, v12, a3);

  return v13;
}

id sub_257CD8D64(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16MagnifierSupport33FilterCustomizationViewController_tableView;
  v5 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 systemYellowColor];
  [v7 setTintColor_];

  [v7 setClipsToBounds_];
  *&v1[v4] = v7;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

id sub_257CD8EF0(void *a1)
{
  v3 = sub_257ECF4C0();
  v4 = sub_257ECCE30();
  v5 = [a1 dequeueReusableCellWithIdentifier:v3 forIndexPath:v4];

  v6 = sub_257ECCEA0();
  if (v6 != 1)
  {
    if (!v6)
    {
      v7 = sub_257ECCE60();
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v8 = [*(v1 + OBJC_IVAR____TtC16MagnifierSupport33FilterCustomizationViewController_tableView) numberOfRowsInSection_];
  v9 = sub_257ECCE60();
  v10 = __OFADD__(v9, v8);
  v7 = v8 + v9;
  if (v10)
  {
    __break(1u);
LABEL_7:
    v7 = 0;
  }

LABEL_8:
  ColorFilter.init(rawValue:)(v7);
  if (v22 != 12)
  {
    v11 = [v5 textLabel];
    if (v11)
    {
      v12 = v11;
      sub_257D188B4();
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v14 = [objc_opt_self() bundleForClass_];
      v15 = sub_257ECF4C0();

      v16 = sub_257ECF4C0();
      v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

      if (!v17)
      {
        sub_257ECF500();
        v17 = sub_257ECF4C0();
      }

      [v12 setText_];
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v18 = sub_257C592D0(v22, v21);

    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 0;
    }

    [v5 setAccessoryType_];
  }

  return v5;
}

id sub_257CD9300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  a5(a4);
  if (v5)
  {
    v6 = sub_257ECF4C0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_257CD945C(void *a1)
{
  v3 = sub_257ECDA30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECCE30();
  v8 = [a1 cellForRowAtIndexPath_];

  if (!v8)
  {
    return;
  }

  v9 = sub_257ECCE30();
  [a1 deselectRowAtIndexPath:v9 animated:1];

  v10 = sub_257ECCEA0();
  if (v10 == 1)
  {
    v12 = [*(v1 + OBJC_IVAR____TtC16MagnifierSupport33FilterCustomizationViewController_tableView) numberOfRowsInSection_];
    v13 = sub_257ECCE60();
    v14 = __OFADD__(v13, v12);
    v11 = v12 + v13;
    if (!v14)
    {
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_8;
  }

  if (v10)
  {
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v11 = sub_257ECCE60();
LABEL_9:
  ColorFilter.init(rawValue:)(v11);
  v15 = v39;
  if (v39 != 12)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v16 = qword_281548348;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v17 = v39;
    v18 = sub_257C592D0(v15, v39);
    v37 = v6;
    v38 = v4;
    if (v18)
    {
      v35 = v16;
      v36 = v3;
      v19 = *(v17 + 16);
      if (v19)
      {
        v20 = (v17 + 32);
        v21 = MEMORY[0x277D84F90];
        do
        {
          v25 = *v20++;
          v24 = v25;
          if (v25 != v15)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v39 = v21;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_257BF2944(0, *(v21 + 16) + 1, 1);
              v21 = v39;
            }

            v23 = *(v21 + 16);
            v22 = *(v21 + 24);
            if (v23 >= v22 >> 1)
            {
              sub_257BF2944((v22 > 1), v23 + 1, 1);
              v21 = v39;
            }

            *(v21 + 16) = v23 + 1;
            *(v21 + v23 + 32) = v24;
          }

          --v19;
        }

        while (v19);
      }

      else
      {
        v21 = MEMORY[0x277D84F90];
      }

      if (!*(v21 + 16))
      {

        return;
      }

      [v8 setAccessoryType_];
      v3 = v36;
      v6 = v37;
      v4 = v38;
    }

    else
    {
      [v8 setAccessoryType_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F74D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_257ED6D30;
      *(inited + 32) = v15;
      v39 = v17;
      sub_257EB10DC(inited);
      v21 = v39;
    }

    sub_257ECD420();

    v28 = sub_257ECDA20();
    v29 = sub_257ECFBD0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      v32 = MEMORY[0x259C72340](v21, &type metadata for ColorFilter);
      v34 = sub_257BF1FC8(v32, v33, &v39);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_257BAC000, v28, v29, "New filters: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x259C74820](v31, -1, -1);
      MEMORY[0x259C74820](v30, -1, -1);

      (*(v38 + 8))(v37, v3);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    sub_257D5874C(v21);
  }
}

uint64_t sub_257CD99E8(uint64_t a1)
{
  if (a1 != 1)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

uint64_t sub_257CD9AF0(uint64_t a1)
{
  if (a1 != 1)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

uint64_t sub_257CD9BF8()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v1 = *(v12 + 16);

  if (v1 != 1)
  {
    return 1;
  }

  v2 = sub_257ECCEA0();
  if (v2 == 1)
  {
    v5 = [*(v0 + OBJC_IVAR____TtC16MagnifierSupport33FilterCustomizationViewController_tableView) numberOfRowsInSection_];
    v6 = sub_257ECCE60();
    v7 = __OFADD__(v6, v5);
    v3 = v5 + v6;
    if (!v7)
    {
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (v2)
  {
LABEL_11:
    v3 = 0;
    goto LABEL_12;
  }

  v3 = sub_257ECCE60();
LABEL_12:
  ColorFilter.init(rawValue:)(v3);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (*(v12 + 16))
  {
    v8 = *(v12 + 32);
  }

  else
  {
    v8 = 12;
  }

  if (v11 == 12)
  {
    v9 = v8 == 12;
  }

  else
  {
    v9 = v8 != 12 && v11 == v8;
  }

  v10 = v9;
  return v10 ^ 1u;
}

id sub_257CD9DA4(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    a2(0);
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t sub_257CD9E1C()
{
  v1 = *v0;
  if (v1 > 0x13)
  {
    if (*v0 > 0x15u)
    {
      if (v1 == 22)
      {
        v2 = 7;
        return MEMORY[0x259C732E0](v2);
      }

      if (v1 == 23)
      {
        v2 = 8;
        return MEMORY[0x259C732E0](v2);
      }
    }

    else
    {
      if (v1 == 20)
      {
        v2 = 5;
        return MEMORY[0x259C732E0](v2);
      }

      if (v1 == 21)
      {
        v2 = 6;
        return MEMORY[0x259C732E0](v2);
      }
    }
  }

  else if (*v0 > 0x11u)
  {
    if (v1 == 18)
    {
      v2 = 3;
      return MEMORY[0x259C732E0](v2);
    }

    if (v1 == 19)
    {
      v2 = 4;
      return MEMORY[0x259C732E0](v2);
    }
  }

  else
  {
    if (v1 == 16)
    {
      v2 = 1;
      return MEMORY[0x259C732E0](v2);
    }

    if (v1 == 17)
    {
      v2 = 2;
      return MEMORY[0x259C732E0](v2);
    }
  }

  MEMORY[0x259C732E0](0);
  Control.rawValue.getter();
  sub_257ECF5D0();
}

uint64_t sub_257CD9F44()
{
  sub_257ED07B0();
  sub_257CD9E1C();
  return sub_257ED0800();
}

uint64_t sub_257CD9F94()
{
  sub_257ED07B0();
  sub_257CD9E1C();
  return sub_257ED0800();
}

uint64_t sub_257CD9FE0(unsigned __int8 a1)
{
  if (a1 >= 4u)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

unint64_t sub_257CDA140@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257CE4C1C(*a1);
  *a2 = result;
  return result;
}

id sub_257CDA190(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_activityCreatedDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___filtersCollectionCustomizationViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___peopleDetectionSettingsViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___doorDetectionSettingsViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___objectUnderstandingSettingsViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___imageCaptionsSettingsViewController] = 0;
  v7 = OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_languageTranslator;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x277CE6AC8]) init];
  *&v3[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___pointSpeakSettingsViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___textDetectionSettingsViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___detectionModeUniversalSettingsViewController] = 0;
  v8 = &v3[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_tableView;
  v10 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 systemYellowColor];
  [v12 setTintColor_];

  *&v3[v9] = v12;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___dataSource] = 0;
  if (a2)
  {
    v14 = sub_257ECF4C0();
  }

  else
  {
    v14 = 0;
  }

  v25.receiver = v3;
  v25.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, v14, a3);

  v16 = v15;
  v17 = sub_257CD9DA4(&OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___filtersCollectionCustomizationViewController, type metadata accessor for ActivityFilterCustomizationViewController);
  *&v17[OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_delegate + 8] = &off_28690BB10;
  swift_unknownObjectWeakAssign();

  v18 = sub_257CD9DA4(&OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___peopleDetectionSettingsViewController, type metadata accessor for ActivityPeopleDetectionCustomizationViewController);
  *&v18[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_delegate + 8] = &off_28690BB10;
  swift_unknownObjectWeakAssign();

  v19 = sub_257CD9DA4(&OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___doorDetectionSettingsViewController, type metadata accessor for ActivityDoorDetectionCustomizationViewController);
  *&v19[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_delegate + 8] = &off_28690BB10;
  swift_unknownObjectWeakAssign();

  v20 = sub_257CD9DA4(&OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___objectUnderstandingSettingsViewController, type metadata accessor for ActivityObjectUnderstandingCustomizationViewController);
  *&v20[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_delegate + 8] = &off_28690BB10;
  swift_unknownObjectWeakAssign();

  v21 = sub_257CD9DA4(&OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___imageCaptionsSettingsViewController, type metadata accessor for ActivityImageCaptionsCustomizationViewController);
  *&v21[OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_delegate + 8] = &off_28690BB10;
  swift_unknownObjectWeakAssign();

  v22 = sub_257CD9DA4(&OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___pointSpeakSettingsViewController, type metadata accessor for ActivityPointSpeakCustomizationViewController);
  *&v22[OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_delegate + 8] = &off_28690BB10;
  swift_unknownObjectWeakAssign();

  v23 = sub_257CD9DA4(&OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___textDetectionSettingsViewController, type metadata accessor for ActivityTextDetectionCustomizationViewController);
  *&v23[OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_delegate + 8] = &off_28690BB10;
  swift_unknownObjectWeakAssign();

  return v16;
}

id sub_257CDA5F8()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___dataSource;
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___dataSource];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___dataSource];
  }

  else
  {
    v4 = sub_257CDA65C(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_257CDA65C(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_tableView];
  *(swift_allocObject() + 16) = a1;
  v3 = objc_allocWithZone(type metadata accessor for ActivityControlsViewController.DataSource()) + qword_27F8F75B0;
  *v3 = 0;
  v3[1] = 0;
  v4 = v2;
  v5 = a1;
  v6 = sub_257ECDBD0();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = (v6 + qword_27F8F75B0);
  v9 = *(v6 + qword_27F8F75B0);
  *v8 = sub_257CE4C70;
  v8[1] = v7;
  sub_257ECC3F0();
  sub_257BBD88C(v9);

  return v6;
}

id sub_257CDA770(void *a1, uint64_t a2, unsigned __int8 *a3, char *a4)
{
  v4 = *&a4[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8];
  if (v4)
  {
    v245 = a1;
    v5 = *a3;
    v6 = *&a4[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle];
    v7 = qword_281544FE0;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = qword_281548348;
    swift_beginAccess();
    v9 = v8[12];
    v10 = v8[13];
    v248[0] = v8[11];
    v248[1] = v9;
    v248[2] = v10;
    v11 = qword_2815447E0;

    if (v11 != -1)
    {
      v12 = swift_once();
    }

    MEMORY[0x28223BE20](v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
    sub_257ECFD50();

    if (*(v247[0] + 16))
    {
      v13 = sub_257C03F6C(v6, v4);
      v15 = v14;

      if (v15)
      {
        v16 = (*(v247[0] + 56) + 296 * v13);
        memcpy(v248, v16, 0x128uLL);
        memmove(v249, v16, 0x128uLL);
        sub_257C09C58(v248, v247);

        CGSizeMake(v249);
        if (v5 > 19)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }
    }

    else
    {
    }

    sub_257C10998(v248);
    memcpy(v249, v248, 0x128uLL);
    if (v5 > 19)
    {
LABEL_9:
      if (v5 <= 21)
      {
        if (v5 != 20)
        {
          v17 = objc_allocWithZone(MEMORY[0x277D75B48]);
          v18 = sub_257ECF4C0();
          v19 = [v17 initWithStyle:1 reuseIdentifier:v18];

          if (sub_257ECF030())
          {
            v20 = _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(0xD000000000000020, 0x8000000257EFD170, a4);
            if (!v20)
            {
              goto LABEL_166;
            }

            v21 = v20;
            v22 = [v19 imageView];
            if (!v22)
            {
              goto LABEL_165;
            }

            v23 = v22;
          }

          else
          {
            v120 = [v19 imageView];
            if (!v120)
            {
              goto LABEL_166;
            }

            v23 = v120;
            v121 = sub_257ECF4C0();
            v21 = [objc_opt_self() systemImageNamed_];

            if (v21)
            {
              v122 = objc_opt_self();
              v123 = v21;
              v124 = [v122 configurationWithPointSize:4 weight:-1 scale:25.0];
              v125 = [v123 imageByApplyingSymbolConfiguration_];

              if (v125)
              {
                v126 = [objc_opt_self() whiteColor];
                v21 = [v125 imageWithTintColor:v126 renderingMode:1];
              }

              else
              {
                v21 = 0;
              }
            }
          }

          [v23 setImage_];

LABEL_165:
LABEL_166:
          v198 = [v19 textLabel];
          if (v198)
          {
            v199 = v198;
            [v198 setNumberOfLines_];
          }

          v200 = [v19 textLabel];
          if (v200)
          {
            v201 = v200;
            [v200 setLineBreakMode_];
          }

          [v19 setAccessoryType_];
          [v19 setShowsReorderControl_];
          memcpy(v248, v249, 0x128uLL);
          if (sub_257C108C4(v248) == 1)
          {
            goto LABEL_205;
          }

          v202 = v249[76];
          v203 = [v19 detailTextLabel];
          if (v203)
          {
            v204 = v203;
            if (v202)
            {
              type metadata accessor for MAGUtilities();
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v206 = [objc_opt_self() bundleForClass_];
              v207 = sub_257ECF4C0();
              v208 = sub_257ECF4C0();
              v209 = [v206 localizedStringForKey:v207 value:0 table:v208];

              sub_257ECF500();
            }

            v210 = sub_257ECF4C0();

            [v204 setText_];
          }

          v160 = [v19 textLabel];
          if (!v160)
          {
            goto LABEL_205;
          }

          goto LABEL_204;
        }

        v54 = objc_allocWithZone(MEMORY[0x277D75B48]);
        v55 = sub_257ECF4C0();
        v19 = [v54 initWithStyle:1 reuseIdentifier:v55];

        if (sub_257ECF030())
        {
          v56 = _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(0x6569762E74786574, 0xEF7265646E696677, a4);
          if (!v56)
          {
            goto LABEL_113;
          }

          v57 = v56;
          v58 = [v19 imageView];
          if (!v58)
          {
            goto LABEL_112;
          }

          v59 = v58;
        }

        else
        {
          v92 = [v19 imageView];
          if (!v92)
          {
            goto LABEL_113;
          }

          v59 = v92;
          v93 = sub_257ECF4C0();
          v57 = [objc_opt_self() systemImageNamed_];

          if (v57)
          {
            v94 = objc_opt_self();
            v95 = v57;
            v96 = [v94 configurationWithPointSize:4 weight:-1 scale:25.0];
            v97 = [v95 imageByApplyingSymbolConfiguration_];

            if (v97)
            {
              v98 = [objc_opt_self() whiteColor];
              v57 = [v97 imageWithTintColor:v98 renderingMode:1];
            }

            else
            {
              v57 = 0;
            }
          }
        }

        [v59 setImage_];

LABEL_112:
LABEL_113:
        v147 = [v19 textLabel];
        if (v147)
        {
          v148 = v147;
          [v147 setNumberOfLines_];
        }

        v149 = [v19 textLabel];
        if (v149)
        {
          v150 = v149;
          [v149 setLineBreakMode_];
        }

        [v19 setAccessoryType_];
        [v19 setShowsReorderControl_];
        memcpy(v248, v249, 0x128uLL);
        if (sub_257C108C4(v248) == 1)
        {
          goto LABEL_205;
        }

        v151 = v249[77];
        v152 = [v19 detailTextLabel];
        if (v152)
        {
          v153 = v152;
          if (v151)
          {
            type metadata accessor for MAGUtilities();
            v154 = swift_getObjCClassFromMetadata();
            v155 = [objc_opt_self() bundleForClass_];
            v156 = sub_257ECF4C0();
            v157 = sub_257ECF4C0();
            v158 = [v155 localizedStringForKey:v156 value:0 table:v157];

            sub_257ECF500();
          }

          v159 = sub_257ECF4C0();

          [v153 setText_];
        }

        v160 = [v19 textLabel];
        if (!v160)
        {
          goto LABEL_205;
        }

        goto LABEL_204;
      }

      if (v5 != 22)
      {
        if (v5 == 23)
        {
          v30 = sub_257ECF4C0();
          v31 = sub_257ECCE30();
          v19 = [v245 dequeueReusableCellWithIdentifier:v30 forIndexPath:v31];

          v32 = [v19 textLabel];
          if (v32)
          {
            v33 = v32;
            type metadata accessor for MAGUtilities();
            v34 = swift_getObjCClassFromMetadata();
            v35 = [objc_opt_self() bundleForClass_];
            v36 = sub_257ECF4C0();
            v37 = sub_257ECF4C0();
            v38 = [v35 localizedStringForKey:v36 value:0 table:v37];

            if (!v38)
            {
              sub_257ECF500();
              v38 = sub_257ECF4C0();
            }

            [v33 setText_];
          }

          v39 = [v19 textLabel];
          if (v39)
          {
            v40 = v39;
            [v39 setNumberOfLines_];
          }

          v41 = [v19 textLabel];
          if (v41)
          {
            v42 = v41;
            [v41 setLineBreakMode_];
          }

          v43 = [v19 textLabel];
          if (v43)
          {
            v44 = v43;
            [v43 setTextAlignment_];
          }

          v45 = [v19 textLabel];
          if (!v45)
          {
            goto LABEL_148;
          }

          v46 = v45;
          v47 = [objc_opt_self() systemRedColor];
          [v46 setTextColor_];
          goto LABEL_147;
        }

LABEL_60:
        v78 = sub_257ECF4C0();
        v79 = sub_257ECCE30();
        v19 = [v245 dequeueReusableCellWithIdentifier:v78 forIndexPath:v79];

        v80 = [v19 textLabel];
        if (v80)
        {
          v81 = v80;
          LOBYTE(v248[0]) = v5;
          sub_257D14A40();
          v82 = sub_257ECF4C0();

          [v81 setText_];
        }

        v83 = [v19 textLabel];
        if (v83)
        {
          v84 = v83;
          [v83 setNumberOfLines_];
        }

        v85 = [v19 textLabel];
        if (v85)
        {
          v86 = v85;
          [v85 setLineBreakMode_];
        }

        if (sub_257ECF030())
        {
          LOBYTE(v248[0]) = v5;
          v87 = sub_257D15518();
          v89 = _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(v87, v88, a4);

          if (v89)
          {
            v90 = [v19 imageView];
            if (!v90)
            {
LABEL_103:

              goto LABEL_104;
            }

            v91 = v90;
LABEL_102:
            [v91 setImage_];

            goto LABEL_103;
          }
        }

        else
        {
          v141 = [v19 imageView];
          if (v141)
          {
            v91 = v141;
            LOBYTE(v248[0]) = v5;
            v142 = sub_257D14B7C();
            if (v142)
            {
              v143 = v142;
              v144 = [objc_opt_self() whiteColor];
              v89 = [v143 imageWithTintColor:v144 renderingMode:1];
            }

            else
            {
              v89 = 0;
            }

            goto LABEL_102;
          }
        }

LABEL_104:
        [v19 setShowsReorderControl_];
        LOBYTE(v248[0]) = v5;
        if (Control.rawValue.getter() == 0x737265746C6966 && v145 == 0xE700000000000000)
        {
        }

        else
        {
          v146 = sub_257ED0640();

          if ((v146 & 1) == 0)
          {
            [v19 setEditingAccessoryType_];
            goto LABEL_148;
          }
        }

        [v19 setEditingAccessoryType_];
LABEL_148:
        memcpy(v248, v249, 0x128uLL);
        v184 = v248;
LABEL_206:
        sub_257BE4084(v184, &unk_27F8F68B0);
        return v19;
      }

      v66 = objc_allocWithZone(MEMORY[0x277D75B48]);
      v67 = sub_257ECF4C0();
      v19 = [v66 initWithStyle:1 reuseIdentifier:v67];

      if (sub_257ECF030())
      {
        v68 = _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(0x646E696677656976, 0xEA00000000007265, a4);
        if (v68)
        {
          v69 = v68;
          v70 = [v19 imageView];
          if (!v70)
          {
LABEL_140:

            goto LABEL_141;
          }

          v71 = v70;
LABEL_139:
          [v71 setImage_];

          goto LABEL_140;
        }
      }

      else
      {
        v106 = [v19 imageView];
        if (v106)
        {
          v71 = v106;
          v107 = sub_257ECF4C0();
          v69 = [objc_opt_self() systemImageNamed_];

          if (v69)
          {
            v108 = objc_opt_self();
            v109 = v69;
            v110 = [v108 configurationWithPointSize:4 weight:-1 scale:25.0];
            v111 = [v109 imageByApplyingSymbolConfiguration_];

            if (v111)
            {
              v112 = [objc_opt_self() whiteColor];
              v69 = [v111 imageWithTintColor:v112 renderingMode:1];
            }

            else
            {
              v69 = 0;
            }
          }

          goto LABEL_139;
        }
      }

LABEL_141:
      v174 = [v19 textLabel];
      if (v174)
      {
        v175 = v174;
        [v174 setNumberOfLines_];
      }

      v176 = [v19 textLabel];
      if (v176)
      {
        v177 = v176;
        [v176 setLineBreakMode_];
      }

      [v19 setAccessoryType_];
      [v19 setShowsReorderControl_];
      v178 = [v19 textLabel];
      if (!v178)
      {
        goto LABEL_148;
      }

      v46 = v178;
      type metadata accessor for MAGUtilities();
      v179 = swift_getObjCClassFromMetadata();
      v180 = [objc_opt_self() bundleForClass_];
      v181 = sub_257ECF4C0();
      v182 = sub_257ECF4C0();
      v183 = [v180 localizedStringForKey:v181 value:0 table:v182];

      sub_257ECF500();
      v47 = sub_257ECF4C0();

      [v46 setText_];
LABEL_147:

      goto LABEL_148;
    }

LABEL_18:
    if (v5 <= 17)
    {
      if (v5 != 16)
      {
        if (v5 != 17)
        {
          goto LABEL_60;
        }

        v24 = objc_allocWithZone(MEMORY[0x277D75B48]);
        v25 = sub_257ECF4C0();
        v19 = [v24 initWithStyle:1 reuseIdentifier:v25];

        if (sub_257ECF030())
        {
          v26 = _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(0xD000000000000025, 0x8000000257EFBBE0, a4);
          if (!v26)
          {
            goto LABEL_180;
          }

          v27 = v26;
          v28 = [v19 imageView];
          if (!v28)
          {
            goto LABEL_179;
          }

          v29 = v28;
        }

        else
        {
          v127 = [v19 imageView];
          if (!v127)
          {
            goto LABEL_180;
          }

          v29 = v127;
          v128 = sub_257ECF4C0();
          v27 = [objc_opt_self() systemImageNamed_];

          if (v27)
          {
            v129 = objc_opt_self();
            v130 = v27;
            v131 = [v129 configurationWithPointSize:4 weight:-1 scale:25.0];
            v132 = [v130 imageByApplyingSymbolConfiguration_];

            if (v132)
            {
              v133 = [objc_opt_self() whiteColor];
              v27 = [v132 imageWithTintColor:v133 renderingMode:1];
            }

            else
            {
              v27 = 0;
            }
          }
        }

        [v29 setImage_];

LABEL_179:
LABEL_180:
        v211 = [v19 textLabel];
        if (v211)
        {
          v212 = v211;
          [v211 setNumberOfLines_];
        }

        v213 = [v19 textLabel];
        if (v213)
        {
          v214 = v213;
          [v213 setLineBreakMode_];
        }

        [v19 setAccessoryType_];
        [v19 setShowsReorderControl_];
        memcpy(v248, v249, 0x128uLL);
        if (sub_257C108C4(v248) == 1)
        {
          goto LABEL_205;
        }

        v215 = v249[72];
        v216 = [v19 detailTextLabel];
        if (v216)
        {
          v217 = v216;
          if (v215)
          {
            type metadata accessor for MAGUtilities();
            v218 = swift_getObjCClassFromMetadata();
            v219 = [objc_opt_self() bundleForClass_];
            v220 = sub_257ECF4C0();
            v221 = sub_257ECF4C0();
            v222 = [v219 localizedStringForKey:v220 value:0 table:v221];

            sub_257ECF500();
          }

          v223 = sub_257ECF4C0();

          [v217 setText_];
        }

        v160 = [v19 textLabel];
        if (!v160)
        {
          goto LABEL_205;
        }

        goto LABEL_204;
      }

      v60 = objc_allocWithZone(MEMORY[0x277D75B48]);
      v61 = sub_257ECF4C0();
      v19 = [v60 initWithStyle:1 reuseIdentifier:v61];

      if (sub_257ECF030())
      {
        v62 = _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(0x75622E6F746F6870, 0xEC000000656C6262, a4);
        if (!v62)
        {
          goto LABEL_127;
        }

        v63 = v62;
        v64 = [v19 imageView];
        if (!v64)
        {
          goto LABEL_126;
        }

        v65 = v64;
      }

      else
      {
        v99 = [v19 imageView];
        if (!v99)
        {
          goto LABEL_127;
        }

        v65 = v99;
        v100 = sub_257ECF4C0();
        v63 = [objc_opt_self() _systemImageNamed_];

        if (v63)
        {
          v101 = objc_opt_self();
          v102 = v63;
          v103 = [v101 configurationWithPointSize:4 weight:-1 scale:25.0];
          v104 = [v102 imageByApplyingSymbolConfiguration_];

          if (v104)
          {
            v105 = [objc_opt_self() whiteColor];
            v63 = [v104 imageWithTintColor:v105 renderingMode:1];
          }

          else
          {
            v63 = 0;
          }
        }
      }

      [v65 setImage_];

LABEL_126:
LABEL_127:
      v161 = [v19 textLabel];
      if (v161)
      {
        v162 = v161;
        [v161 setNumberOfLines_];
      }

      v163 = [v19 textLabel];
      if (v163)
      {
        v164 = v163;
        [v163 setLineBreakMode_];
      }

      [v19 setAccessoryType_];
      [v19 setShowsReorderControl_];
      memcpy(v248, v249, 0x128uLL);
      if (sub_257C108C4(v248) == 1)
      {
        goto LABEL_205;
      }

      v165 = v249[75];
      v166 = [v19 detailTextLabel];
      if (v166)
      {
        v167 = v166;
        if (v165)
        {
          type metadata accessor for MAGUtilities();
          v168 = swift_getObjCClassFromMetadata();
          v169 = [objc_opt_self() bundleForClass_];
          v170 = sub_257ECF4C0();
          v171 = sub_257ECF4C0();
          v172 = [v169 localizedStringForKey:v170 value:0 table:v171];

          sub_257ECF500();
        }

        v173 = sub_257ECF4C0();

        [v167 setText_];
      }

      v160 = [v19 textLabel];
      if (!v160)
      {
        goto LABEL_205;
      }

      goto LABEL_204;
    }

    if (v5 != 18)
    {
      v48 = objc_allocWithZone(MEMORY[0x277D75B48]);
      v49 = sub_257ECF4C0();
      v19 = [v48 initWithStyle:1 reuseIdentifier:v49];

      if (sub_257ECF030())
      {
        v50 = _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(0x6C69662E61666F73, 0xE90000000000006CLL, a4);
        if (!v50)
        {
          goto LABEL_194;
        }

        v51 = v50;
        v52 = [v19 imageView];
        if (!v52)
        {
          goto LABEL_193;
        }

        v53 = v52;
      }

      else
      {
        v134 = [v19 imageView];
        if (!v134)
        {
          goto LABEL_194;
        }

        v53 = v134;
        v135 = sub_257ECF4C0();
        v51 = [objc_opt_self() systemImageNamed_];

        if (v51)
        {
          v136 = objc_opt_self();
          v137 = v51;
          v138 = [v136 configurationWithPointSize:4 weight:-1 scale:25.0];
          v139 = [v137 imageByApplyingSymbolConfiguration_];

          if (v139)
          {
            v140 = [objc_opt_self() whiteColor];
            v51 = [v139 imageWithTintColor:v140 renderingMode:1];
          }

          else
          {
            v51 = 0;
          }
        }
      }

      [v53 setImage_];

LABEL_193:
LABEL_194:
      v224 = [v19 textLabel];
      if (v224)
      {
        v225 = v224;
        [v224 setNumberOfLines_];
      }

      v226 = [v19 textLabel];
      if (v226)
      {
        v227 = v226;
        [v226 setLineBreakMode_];
      }

      [v19 setAccessoryType_];
      [v19 setShowsReorderControl_];
      memcpy(v248, v249, 0x128uLL);
      if (sub_257C108C4(v248) == 1)
      {
        goto LABEL_205;
      }

      v228 = v249[74];
      v229 = [v19 detailTextLabel];
      if (v229)
      {
        v230 = v229;
        if (v228)
        {
          type metadata accessor for MAGUtilities();
          v231 = swift_getObjCClassFromMetadata();
          v232 = [objc_opt_self() bundleForClass_];
          v233 = sub_257ECF4C0();
          v234 = sub_257ECF4C0();
          v235 = [v232 localizedStringForKey:v233 value:0 table:v234];

          sub_257ECF500();
        }

        v236 = sub_257ECF4C0();

        [v230 setText_];
      }

      v160 = [v19 textLabel];
      if (!v160)
      {
        goto LABEL_205;
      }

      goto LABEL_204;
    }

    v72 = objc_allocWithZone(MEMORY[0x277D75B48]);
    v73 = sub_257ECF4C0();
    v19 = [v72 initWithStyle:1 reuseIdentifier:v73];

    if (sub_257ECF030())
    {
      v74 = _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(0xD000000000000016, 0x8000000257EFBC30, a4);
      if (!v74)
      {
        goto LABEL_152;
      }

      v75 = v74;
      v76 = [v19 imageView];
      if (!v76)
      {
        goto LABEL_151;
      }

      v77 = v76;
    }

    else
    {
      v113 = [v19 imageView];
      if (!v113)
      {
        goto LABEL_152;
      }

      v77 = v113;
      v114 = sub_257ECF4C0();
      v75 = [objc_opt_self() systemImageNamed_];

      if (v75)
      {
        v115 = objc_opt_self();
        v116 = v75;
        v117 = [v115 configurationWithPointSize:4 weight:-1 scale:25.0];
        v118 = [v116 imageByApplyingSymbolConfiguration_];

        if (v118)
        {
          v119 = [objc_opt_self() whiteColor];
          v75 = [v118 imageWithTintColor:v119 renderingMode:1];
        }

        else
        {
          v75 = 0;
        }
      }
    }

    [v77 setImage_];

LABEL_151:
LABEL_152:
    v185 = [v19 textLabel];
    if (v185)
    {
      v186 = v185;
      [v185 setNumberOfLines_];
    }

    v187 = [v19 textLabel];
    if (v187)
    {
      v188 = v187;
      [v187 setLineBreakMode_];
    }

    [v19 setAccessoryType_];
    [v19 setShowsReorderControl_];
    memcpy(v248, v249, 0x128uLL);
    if (sub_257C108C4(v248) == 1)
    {
      goto LABEL_205;
    }

    v189 = v249[73];
    v190 = [v19 detailTextLabel];
    if (v190)
    {
      v191 = v190;
      if (v189)
      {
        type metadata accessor for MAGUtilities();
        v192 = swift_getObjCClassFromMetadata();
        v193 = [objc_opt_self() bundleForClass_];
        v194 = sub_257ECF4C0();
        v195 = sub_257ECF4C0();
        v196 = [v193 localizedStringForKey:v194 value:0 table:v195];

        sub_257ECF500();
      }

      v197 = sub_257ECF4C0();

      [v191 setText_];
    }

    v160 = [v19 textLabel];
    if (!v160)
    {
      goto LABEL_205;
    }

LABEL_204:
    v237 = v160;
    type metadata accessor for MAGUtilities();
    v238 = swift_getObjCClassFromMetadata();
    v239 = [objc_opt_self() bundleForClass_];
    v240 = sub_257ECF4C0();
    v241 = sub_257ECF4C0();
    v242 = [v239 localizedStringForKey:v240 value:0 table:v241];

    sub_257ECF500();
    v243 = sub_257ECF4C0();

    [v237 setText_];

LABEL_205:
    memcpy(v247, v249, sizeof(v247));
    v184 = v247;
    goto LABEL_206;
  }

  return 0;
}

void sub_257CDCEA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_257CDCF74();
  }

  if (qword_27F8F4618 != -1)
  {
    swift_once();
  }

  if ((byte_27F8F78A0 & 1) == 0)
  {
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      sub_257CDD3D4();
    }
  }
}

uint64_t sub_257CDCF74()
{
  v2 = sub_257CE492C();
  v4 = v3;
  v5 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v5)
  {
    v16 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);
    v17 = v1;
    v6 = qword_281544FE0;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = qword_281548348;
    swift_beginAccess();
    v8 = v7[12];
    v9 = v7[13];
    v21[0] = v7[11];
    v21[1] = v8;
    v21[2] = v9;
    v10 = qword_2815447E0;

    if (v10 != -1)
    {
      v11 = swift_once();
    }

    MEMORY[0x28223BE20](v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
    sub_257ECFD50();

    if (*(*v20 + 16) && (v12 = sub_257C03F6C(v16, v5), (v13 & 1) != 0))
    {
      memcpy(v19, (*(*v20 + 56) + 296 * v12), sizeof(v19));
      sub_257C09C58(v19, v21);

      v35 = *&v19[192];
      v36 = *&v19[208];
      v37 = *&v19[224];
      v38 = *&v19[240];
      v31 = *&v19[128];
      v32 = *&v19[144];
      v33 = *&v19[160];
      v34 = *&v19[176];
      v27 = *&v19[64];
      v28 = *&v19[80];
      v29 = *&v19[96];
      v30 = *&v19[112];
      v23 = *v19;
      v24 = *&v19[16];
      v25 = *&v19[32];
      v26 = *&v19[48];
      v22 = *&v19[280];

      *&v20[192] = v35;
      *&v20[208] = v36;
      *&v20[224] = v37;
      *&v20[240] = v38;
      *&v20[128] = v31;
      *&v20[144] = v32;
      *&v20[160] = v33;
      *&v20[176] = v34;
      *&v20[64] = v27;
      *&v20[80] = v28;
      *&v20[96] = v29;
      *&v20[112] = v30;
      *v20 = v23;
      *&v20[16] = v24;
      *&v20[32] = v25;
      *&v20[48] = v26;
      *&v20[256] = v2;
      *&v20[264] = v4;
      *&v20[272] = v17;
      *&v20[280] = v22;
      v14 = v23;
      memcpy(v18, v20, sizeof(v18));
      sub_257C09C58(v20, v21);
      sub_257D58DA0(v16, v5, v18, 0);

      memcpy(v21, v18, 0x128uLL);
      sub_257C63C04(v21);
      if (v14 == 1)
      {
        sub_257D53B38(*&v20[248], *&v20[256], *&v20[264], *&v20[272]);
      }

      *&v18[192] = v35;
      *&v18[208] = v36;
      *&v18[224] = v37;
      *&v18[240] = v38;
      *&v18[128] = v31;
      *&v18[144] = v32;
      *&v18[160] = v33;
      *&v18[176] = v34;
      *&v18[64] = v27;
      *&v18[80] = v28;
      *&v18[96] = v29;
      *&v18[112] = v30;
      *v18 = v23;
      *&v18[16] = v24;
      *&v18[32] = v25;
      *&v18[48] = v26;
      *&v18[256] = v2;
      *&v18[264] = v4;
      *&v18[272] = v17;
      *&v18[280] = v22;
      return sub_257C63C04(v18);
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_257CDD3D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);
  v3 = qword_281544FE0;

  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_2815447E0;

  if (v4 != -1)
  {
    v5 = swift_once();
  }

  MEMORY[0x28223BE20](v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
  sub_257ECFD50();

  if (!*(v21 + 16))
  {
    goto LABEL_15;
  }

  v6 = sub_257C03F6C(v2, v1);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    goto LABEL_16;
  }

  v9 = *(v21 + 56) + 296 * v6;
  v10 = *v9;
  v11 = *(v9 + 75);
  v13 = *(v9 + 256);
  v12 = *(v9 + 264);

  if ((v10 & 1) == 0)
  {
LABEL_15:

LABEL_16:

    return;
  }

  v20 = v11;
  v14 = *(v13 + 16);
  v15 = (v13 + 32);
  while (2)
  {
    if (v14)
    {
      switch(*v15)
      {
        case 0xC:

          goto LABEL_26;
        default:
          v16 = sub_257ED0640();

          ++v15;
          --v14;
          if ((v16 & 1) == 0)
          {
            continue;
          }

          goto LABEL_26;
      }
    }

    break;
  }

  v17 = *(v12 + 16);
  v18 = (v12 + 32);
  while (2)
  {
    if (!v17)
    {
      goto LABEL_16;
    }

    switch(*v18)
    {
      case 0xC:
LABEL_26:

        break;
      default:
        v19 = sub_257ED0640();

        ++v18;
        --v17;
        if ((v19 & 1) == 0)
        {
          continue;
        }

        break;
    }

    break;
  }

  sub_257D71A84(v20);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
}

id sub_257CDDAB8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7600);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  result = [v1 view];
  if (result)
  {
    v8 = result;
    v9 = *&v1[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_tableView];
    [result addSubview_];

    [v9 setDelegate_];
    sub_257BD2C2C(0, &qword_27F8F5560);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = sub_257ECF4C0();
    [v9 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v11];

    v12 = sub_257ECF4C0();
    [v9 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v12];

    v13 = sub_257ECF4C0();
    [v9 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v13];

    [v9 setAllowsSelectionDuringEditing_];
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    result = [v1 view];
    if (result)
    {
      v14 = result;
      sub_257EB6FD8(result, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

      v15 = sub_257CDA5F8();
      sub_257CDDD74();
      sub_257ECDBF0();

      return (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_257CDDD74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7618);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v29[-v2];
  v4 = sub_257ECCD90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_257CE5150();
  sub_257CE51A4();
  result = sub_257ECDBB0();
  if (qword_281544FE0 != -1)
  {
    result = swift_once();
  }

  v32 = v0;
  v33 = v5;
  v9 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v9)
  {
    v31 = v4;
    v10 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);
    v11 = qword_281548348;
    swift_beginAccess();
    v12 = v11[12];
    v13 = v11[13];
    v34[0] = v11[11];
    v34[1] = v12;
    v34[2] = v13;
    v14 = qword_2815447E0;

    if (v14 != -1)
    {
      v15 = swift_once();
    }

    MEMORY[0x28223BE20](v15);
    *&v29[-16] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
    sub_257ECFD50();

    v16 = v35;
    if (*(v35 + 16))
    {
      v17 = sub_257C03F6C(v10, v9);
      v19 = v18;

      if (v19)
      {
        v20 = *(v16 + 56) + 296 * v17;
        v30 = *(v20 + 1);
        v22 = *(v20 + 256);
        v21 = *(v20 + 264);
        v23 = *(v20 + 272);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7600);
        sub_257ECDB50();
        sub_257CE4594(v22);

        LOBYTE(v34[0]) = 5;
        sub_257ECDB20();

        sub_257ECDB50();
        sub_257CE4594(v21);

        LOBYTE(v34[0]) = 5;
        sub_257ECDB20();

        sub_257ECDB50();
        sub_257CE4594(v23);

        LOBYTE(v34[0]) = 5;
        sub_257ECDB20();

        sub_257ECDB50();
        v24 = *(v32 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_languageTranslator);
        sub_257ECCD80();
        v25 = sub_257ECCD60();
        v26 = v33;
        v27 = v31;
        (*(v33 + 8))(v7, v31);
        v28 = [v24 _proposedTranslationLocaleForLocale_];

        if (v28)
        {
          sub_257ECCD70();

          (*(v26 + 56))(v3, 0, 1, v27);
          sub_257BE4084(v3, &qword_27F8F7618);
          LOBYTE(v34[0]) = 5;
          sub_257ECDB20();
        }

        else
        {
          (*(v26 + 56))(v3, 1, 1, v27);
          sub_257BE4084(v3, &qword_27F8F7618);
        }

        if (qword_27F8F4618 != -1)
        {
          swift_once();
        }

        if (byte_27F8F78A0 == 1)
        {
          LOBYTE(v34[0]) = 5;
          sub_257ECDB20();
          LOBYTE(v34[0]) = 5;
          sub_257ECDB20();
          LOBYTE(v34[0]) = 5;
          sub_257ECDB20();
        }

        LOBYTE(v34[0]) = 5;
        sub_257ECDB20();
        LOBYTE(v34[0]) = 5;
        sub_257ECDB20();
        LOBYTE(v34[0]) = 5;
        result = sub_257ECDB20();
        if (v30)
        {
          sub_257ECDB50();
          LOBYTE(v34[0]) = 5;
          return sub_257ECDB20();
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_257CDE3EC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v0 action:sel_handleDoneButtonTap_];
  v2 = [objc_opt_self() systemYellowColor];
  [v1 setTintColor_];

  v3 = [v0 navigationItem];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257ED9BF0;
  *(v4 + 32) = v1;
  sub_257BD2C2C(0, qword_27F8F7638);
  v5 = v1;
  v6 = sub_257ECF7F0();

  [v3 setRightBarButtonItems_];

  v7 = [v0 navigationItem];
  if (*&v0[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8])
  {
    v8 = v7;
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = objc_opt_self();

    v11 = [v10 bundleForClass_];
    v12 = sub_257ECF4C0();

    v13 = sub_257ECF4C0();
    v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

    if (!v14)
    {
      sub_257ECF500();
      v14 = sub_257ECF4C0();
    }

    [v8 setTitle_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for ActivityControlsViewController.DataSource()
{
  result = qword_27F8F75C8;
  if (!qword_27F8F75C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_257CDEAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  a5(a4);
  if (v5)
  {
    v6 = sub_257ECF4C0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_257CDEB34(void *a1)
{
  v2 = sub_257ECCEB0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  sub_257ECCE40();
  sub_257ECCE40();
  v9 = a1;
  sub_257CDEFC8(v8, v6, 0);

  v10 = *(v3 + 8);
  v10(v6, v2);
  return (v10)(v8, v2);
}

uint64_t sub_257CDEC70(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_257ECDBE0();
  if (v14 != 24 && (v14 & 0xF8) != 16)
  {
    if (a2 == 1)
    {
      v12 = 2;
    }

    else
    {
      if (a2 != 2)
      {
        return result;
      }

      v12 = 1;
    }

    MEMORY[0x259C6F990]([a1 numberOfRowsInSection_], v12);
    sub_257CDEFC8(a3, v9, 1);
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_257CDEDB4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_257ECCEB0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  v11 = a3;
  v12 = a1;
  sub_257CDEC70(v11, a4, v10);

  return (*(v8 + 8))(v10, v7);
}

BOOL sub_257CDEEC4(void *a1)
{
  v2 = sub_257ECCEB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  v6 = a1;
  sub_257ECDBE0();

  (*(v3 + 8))(v5, v2);
  return v10 != 24 && (v10 & 0xF8) != 16;
}

unint64_t sub_257CDEFC8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7600);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  sub_257ECCEB0();
  sub_257CE50DC();
  result = sub_257ECF450();
  if (result)
  {
    return result;
  }

  result = sub_257ECDBE0();
  v9 = v35;
  if (v35 == 24)
  {
    return result;
  }

  sub_257ECDBE0();
  v10 = v34;
  sub_257ECDC00();
  if (v10 == 24)
  {
    v11 = sub_257ECDB80();
    result = sub_257ECCEA0();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v11 + 16))
    {
      v12 = *(v11 + result + 32);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59C8);
      v13 = swift_allocObject();
      v22 = xmmword_257ED6D30;
      *(v13 + 16) = xmmword_257ED6D30;
      *(v13 + 32) = v9;
      sub_257ECDB30();

      v14 = swift_allocObject();
      *(v14 + 16) = v22;
      *(v14 + 32) = v9;
      v33 = v12;
      sub_257ECDB20();

      goto LABEL_17;
    }

    __break(1u);
    return result;
  }

  v32 = v9;
  v15 = sub_257ECDB40();
  if ((v16 & 1) == 0)
  {
    v17 = v15;
    v31 = v10;
    v18 = sub_257ECDB40();
    if ((v19 & 1) == 0)
    {
      if (v17 < v18)
      {
        v27 = v9;
        sub_257ECDB70();
        v20 = v28;
        v25 = v10;
        sub_257ECDB70();
        if (v20 == 5)
        {
          if (v26 != 5)
          {
            goto LABEL_16;
          }
        }

        else if (v26 == 5 || v20 != v26)
        {
          goto LABEL_16;
        }

        v24 = v9;
        v23 = v10;
        sub_257ECDB90();
        goto LABEL_17;
      }

LABEL_16:
      v30 = v9;
      v29 = v10;
      sub_257ECDBA0();
    }
  }

LABEL_17:
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257ECC3F0();
  v21 = (v5 + 8);
  if (a3)
  {
    sub_257ECDBF0();
  }

  else
  {
    sub_257ECDBC0();
  }

  (*v21)(v7, v4);
}

uint64_t sub_257CDF34C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7600);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_257ECDC00();
    v6 = *&v5[qword_27F8F75B0];
    if (v6)
    {
      sub_257ECC3F0();
      v6(v3);
      sub_257BBD88C(v6);
    }

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

id sub_257CDF49C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityControlsViewController.DataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_257CDF4E8()
{
  v0 = objc_allocWithZone(type metadata accessor for ActivityControlsViewController.DataSource()) + qword_27F8F75B0;
  *v0 = 0;
  v0[1] = 0;
  return sub_257ECDBD0();
}

uint64_t sub_257CDF908@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (!v6)
  {
    goto LABEL_22;
  }

  v7 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);
  v8 = qword_281544FE0;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_281548348;
  swift_beginAccess();
  v10 = v9[12];
  v11 = v9[13];
  v31[0] = v9[11];
  v31[1] = v10;
  v31[2] = v11;
  v12 = qword_2815447E0;

  if (v12 != -1)
  {
    v13 = swift_once();
  }

  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
  sub_257ECFD50();

  if (*(v30[0] + 16))
  {
    v14 = sub_257C03F6C(v7, v6);
    v16 = v15;

    if (v16)
    {
      v17 = (*(v30[0] + 56) + 296 * v14);
      memcpy(v30, v17, sizeof(v30));
      memmove(v31, v17, 0x128uLL);
      CGSizeMake(v31);
      sub_257C09C58(v30, &v29);

      memcpy(v32, v31, 0x128uLL);
    }

    else
    {

      sub_257C10998(v32);
    }
  }

  else
  {

    sub_257C10998(v32);
  }

  v18 = sub_257ECCEA0();
  if (v18 == sub_257ECCEA0())
  {
    v19 = sub_257ECCEB0();
    (*(*(v19 - 8) + 16))(a3, a2, v19);
    return sub_257BE4084(v32, &unk_27F8F68B0);
  }

  v21 = sub_257ECCEA0();
  if (v21 > 2)
  {
    sub_257BE4084(v32, &unk_27F8F68B0);
    v25 = sub_257ECCEB0();
    return (*(*(v25 - 8) + 16))(a3, a1, v25);
  }

  v22 = v21;
  memcpy(v31, v32, 0x128uLL);
  if (sub_257C108C4(v31) == 1)
  {
    goto LABEL_22;
  }

  v23 = v31[32];

  sub_257BE4084(v32, &unk_27F8F68B0);
  if (sub_257ECCEA0() || *(v23 + 16))
  {
    if (1u >> (v22 & 7))
    {
      v24 = *(v23 + 16);

      if (v24 >= 2)
      {
        return MEMORY[0x259C6F970](0, 1);
      }
    }

    else
    {
    }

LABEL_22:
    v26 = sub_257ECCEB0();
    return (*(*(v26 - 8) + 16))(a3, a2, v26);
  }

  v27 = sub_257ECCEB0();
  (*(*(v27 - 8) + 16))(a3, a1, v27);
}

void sub_257CDFEFC(void *a1)
{
  v2 = v1;
  v4 = sub_257CDA5F8();
  sub_257ECDBE0();

  if (aBlock != 24)
  {
    v5 = sub_257ECCE30();
    [a1 deselectRowAtIndexPath:v5 animated:1];

    if (aBlock > 0x13u)
    {
      if (aBlock <= 0x15u)
      {
        if (aBlock == 20)
        {
          v37 = [v2 navigationController];
          if (!v37)
          {
            return;
          }

          v7 = v37;
          v8 = &OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___textDetectionSettingsViewController;
          v9 = type metadata accessor for ActivityTextDetectionCustomizationViewController;
        }

        else
        {
          v10 = [v2 navigationController];
          if (!v10)
          {
            return;
          }

          v7 = v10;
          v8 = &OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___pointSpeakSettingsViewController;
          v9 = type metadata accessor for ActivityPointSpeakCustomizationViewController;
        }

        goto LABEL_37;
      }

      if (aBlock == 22)
      {
        v39 = [v2 navigationController];
        if (!v39)
        {
          return;
        }

        v7 = v39;
        v8 = &OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___detectionModeUniversalSettingsViewController;
        v9 = type metadata accessor for ActivityDetectionModeUniversalSettingsViewController;
        goto LABEL_37;
      }

      if (aBlock == 23)
      {
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v13 = objc_opt_self();
        v14 = [v13 bundleForClass_];
        v15 = sub_257ECF4C0();
        v16 = sub_257ECF4C0();
        v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

        sub_257ECF500();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_257ED6D30;
        v19 = *&v2[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8];
        if (!v19)
        {
          __break(1u);
          return;
        }

        v20 = *&v2[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle];
        *(v18 + 56) = MEMORY[0x277D837D0];
        v21 = v18;
        *(v18 + 64) = sub_257BFB13C();
        *(v21 + 32) = v20;
        *(v21 + 40) = v19;

        sub_257ECF4D0();

        v22 = sub_257ECF4C0();

        v44 = [objc_opt_self() alertControllerWithTitle:v22 message:0 preferredStyle:0];

        v23 = [v13 bundleForClass_];
        v24 = sub_257ECF4C0();
        v25 = sub_257ECF4C0();
        v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

        if (!v26)
        {
          sub_257ECF500();
          v26 = sub_257ECF4C0();
        }

        v27 = swift_allocObject();
        *(v27 + 16) = v2;
        v49 = sub_257CE4C48;
        v50 = v27;
        aBlock = MEMORY[0x277D85DD0];
        v46 = 1107296256;
        v47 = sub_257CED4E8;
        v48 = &block_descriptor_21;
        v28 = _Block_copy(&aBlock);
        v43 = v2;

        v29 = objc_opt_self();
        v7 = [v29 actionWithTitle:v26 style:2 handler:v28];
        _Block_release(v28);

        v30 = [v13 bundleForClass_];
        v31 = sub_257ECF4C0();
        v32 = sub_257ECF4C0();
        v33 = [v30 localizedStringForKey:v31 value:0 table:v32];

        if (!v33)
        {
          sub_257ECF500();
          v33 = sub_257ECF4C0();
        }

        v49 = CGSizeMake;
        v50 = 0;
        aBlock = MEMORY[0x277D85DD0];
        v46 = 1107296256;
        v47 = sub_257CED4E8;
        v48 = &block_descriptor_86;
        v34 = _Block_copy(&aBlock);

        v35 = [v29 actionWithTitle:v33 style:1 handler:v34];
        _Block_release(v34);

        [v44 addAction_];
        [v44 addAction_];
        [v43 presentViewController:v44 animated:1 completion:0];

        goto LABEL_38;
      }
    }

    else
    {
      if (aBlock > 0x11u)
      {
        if (aBlock == 18)
        {
          v38 = [v2 navigationController];
          if (!v38)
          {
            return;
          }

          v7 = v38;
          v8 = &OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___doorDetectionSettingsViewController;
          v9 = type metadata accessor for ActivityDoorDetectionCustomizationViewController;
        }

        else
        {
          v11 = [v2 navigationController];
          if (!v11)
          {
            return;
          }

          v7 = v11;
          v8 = &OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___objectUnderstandingSettingsViewController;
          v9 = type metadata accessor for ActivityObjectUnderstandingCustomizationViewController;
        }

        goto LABEL_37;
      }

      if (aBlock == 16)
      {
        v36 = [v2 navigationController];
        if (!v36)
        {
          return;
        }

        v7 = v36;
        v8 = &OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___imageCaptionsSettingsViewController;
        v9 = type metadata accessor for ActivityImageCaptionsCustomizationViewController;
        goto LABEL_37;
      }

      if (aBlock == 17)
      {
        v6 = [v2 navigationController];
        if (!v6)
        {
          return;
        }

        v7 = v6;
        v8 = &OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___peopleDetectionSettingsViewController;
        v9 = type metadata accessor for ActivityPeopleDetectionCustomizationViewController;
        goto LABEL_37;
      }
    }

    if (Control.rawValue.getter() == 0x737265746C6966 && v40 == 0xE700000000000000)
    {
    }

    else
    {
      v41 = sub_257ED0640();

      if ((v41 & 1) == 0)
      {
        return;
      }
    }

    v42 = [v2 navigationController];
    if (v42)
    {
      v7 = v42;
      v8 = &OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___filtersCollectionCustomizationViewController;
      v9 = type metadata accessor for ActivityFilterCustomizationViewController;
LABEL_37:
      v35 = sub_257CD9DA4(v8, v9);
      [v7 pushViewController:v35 animated:1];
LABEL_38:
    }
  }
}

void sub_257CE072C(uint64_t a1, char *a2)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v3 = *&a2[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8];
  if (v3)
  {
    v4 = *&a2[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle];

    sub_257D54B08(v4, v3);

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_257C618B0();
      swift_unknownObjectRelease();
    }

    v5 = [a2 navigationController];
    if (v5)
    {
      v6 = v5;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t getEnumTagSinglePayload for ActivityControlsViewController.Item(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 23;
  if (a2 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 23;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 23;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 0x10)
  {
    v8 = v7 - 15;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 9)
  {
    return v8 - 8;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ActivityControlsViewController.Item(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 23;
  if (a3 + 23 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xE9)
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_257CE0AB0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x10)
  {
    return v1 - 15;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_257CE0AC4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 15;
  }

  return result;
}

unint64_t sub_257CE0AF8()
{
  result = qword_27F8F75D8;
  if (!qword_27F8F75D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F75E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F75D8);
  }

  return result;
}

unint64_t sub_257CE0B60()
{
  result = qword_27F8F75E8;
  if (!qword_27F8F75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F75E8);
  }

  return result;
}

unint64_t sub_257CE0BB8()
{
  result = qword_27F8F75F0;
  if (!qword_27F8F75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F75F0);
  }

  return result;
}

void *sub_257CE0C0C@<X0>(void *a1@<X8>)
{
  sub_257D54F8C(v18);
  v3 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);
  v5 = qword_281544FE0;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_281548348;
  swift_beginAccess();
  v7 = v6[12];
  v8 = v6[13];
  v17[0] = v6[11];
  v17[1] = v7;
  v17[2] = v8;
  v9 = qword_2815447E0;

  if (v9 != -1)
  {
    v10 = swift_once();
  }

  MEMORY[0x28223BE20](v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
  sub_257ECFD50();

  if (!*(v16[0] + 16))
  {

    goto LABEL_10;
  }

  v11 = sub_257C03F6C(v4, v3);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_10:

LABEL_11:
    v14 = v18;
    return memcpy(a1, v14, 0x128uLL);
  }

  sub_257C63C04(v18);
  memcpy(v17, (*(v16[0] + 56) + 296 * v11), 0x128uLL);
  sub_257C09C58(v17, v16);

  v14 = v17;
  return memcpy(a1, v14, 0x128uLL);
}

uint64_t sub_257CE0E2C(double a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v17);
    *&v18[95] = a1;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v10 = qword_281548348;
    v11 = v17;
    v16[0] = v17;
    memcpy(&v16[1], v18, 0x127uLL);
    sub_257D58DA0(v9, v8, v16, 0);

    memcpy(v19, v16, sizeof(v19));
    result = sub_257C63C04(v19);
    if (v11)
    {
      v12 = v10 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionPitchThreshold;
      swift_beginAccess();
      v15 = a1;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v13 = sub_257ECF110();
      MEMORY[0x28223BE20](v13);
      *&v14[-16] = &v15;
      *&v14[-8] = v12;
      sub_257ECFD40();
      (*(v4 + 8))(v7, v3);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_257CE1094(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(__src);

    __src[14] = v3;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    memcpy(__dst, __src, sizeof(__dst));
    v5 = __dst[0];
    memcpy(v6, __src, sizeof(v6));
    sub_257C09C58(__dst, v9);
    sub_257D58DA0(v4, v2, v6, 0);

    memcpy(v9, v6, sizeof(v9));
    sub_257C63C04(v9);
    if (v5 == 1)
    {
      sub_257D523FC(v3, 1);
    }

    memcpy(v6, __src, sizeof(v6));
    return sub_257C63C04(v6);
  }

  return result;
}

uint64_t sub_257CE11EC(double a1, double a2, double a3)
{
  v7 = sub_257ECF120();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v12)
  {
    v13 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v21);
    *&v22[135] = a1;
    *&v22[143] = a2;
    *&v22[151] = a3;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v14 = qword_281548348;
    v15 = v21;
    v20[0] = v21;
    memcpy(&v20[1], v22, 0x127uLL);
    sub_257D58DA0(v13, v12, v20, 0);

    memcpy(v23, v20, sizeof(v23));
    result = sub_257C63C04(v23);
    if (v15)
    {
      v16 = v14 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionColor;
      swift_beginAccess();
      *v19 = a1;
      *&v19[1] = a2;
      *&v19[2] = a3;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v17 = sub_257ECF110();
      MEMORY[0x28223BE20](v17);
      *&v18[-16] = v19;
      *&v18[-8] = v16;
      sub_257ECFD40();
      (*(v8 + 8))(v11, v7);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_257CE146C(char a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v18);
    v10 = a1 & 1;
    v19[161] = v10;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v11 = qword_281548348;
    v12 = v18;
    v17[0] = v18;
    memcpy(&v17[1], v19, 0x127uLL);
    sub_257D58DA0(v9, v8, v17, 0);

    memcpy(v20, v17, 0x128uLL);
    result = sub_257C63C04(v20);
    if (v12)
    {
      v13 = v11 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionAttributes;
      swift_beginAccess();
      v16 = v10;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v14 = sub_257ECF110();
      MEMORY[0x28223BE20](v14);
      *&v15[-16] = &v16;
      *&v15[-8] = v13;
      sub_257ECFD40();
      (*(v4 + 8))(v7, v3);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_257CE16D0(char a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v18);
    v10 = a1 & 1;
    v19[175] = v10;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v11 = qword_281548348;
    v12 = v18;
    v17[0] = v18;
    memcpy(&v17[1], v19, 0x127uLL);
    sub_257D58DA0(v9, v8, v17, 0);

    memcpy(v20, v17, 0x128uLL);
    result = sub_257C63C04(v20);
    if (v12)
    {
      v13 = v11 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
      swift_beginAccess();
      v16 = v10;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v14 = sub_257ECF110();
      MEMORY[0x28223BE20](v14);
      *&v15[-16] = &v16;
      *&v15[-8] = v13;
      sub_257ECFD40();
      (*(v4 + 8))(v7, v3);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_257CE1934(char a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v18);
    v10 = a1 & 1;
    v19[159] = v10;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v11 = qword_281548348;
    v12 = v18;
    v17[0] = v18;
    memcpy(&v17[1], v19, 0x127uLL);
    sub_257D58DA0(v9, v8, v17, 0);

    memcpy(v20, v17, 0x128uLL);
    result = sub_257C63C04(v20);
    if (v12)
    {
      v13 = v11 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__backTapEnabled;
      swift_beginAccess();
      v16 = v10;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v14 = sub_257ECF110();
      MEMORY[0x28223BE20](v14);
      *&v15[-16] = &v16;
      *&v15[-8] = v13;
      sub_257ECFD40();
      (*(v4 + 8))(v7, v3);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_257CE1B98(char a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v18);
    v10 = a1 & 1;
    v19[160] = v10;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v11 = qword_281548348;
    v12 = v18;
    v17[0] = v18;
    memcpy(&v17[1], v19, 0x127uLL);
    sub_257D58DA0(v9, v8, v17, 0);

    memcpy(v20, v17, 0x128uLL);
    result = sub_257C63C04(v20);
    if (v12)
    {
      v13 = v11 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectLanguages;
      swift_beginAccess();
      v16 = v10;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v14 = sub_257ECF110();
      MEMORY[0x28223BE20](v14);
      *&v15[-16] = &v16;
      *&v15[-8] = v13;
      sub_257ECFD40();
      (*(v4 + 8))(v7, v3);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_257CE1E14(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(__src);

    __src[11] = v3;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    memcpy(__dst, __src, sizeof(__dst));
    v5 = __dst[0];
    memcpy(v6, __src, sizeof(v6));
    sub_257C09C58(__dst, v9);
    sub_257D58DA0(v4, v2, v6, 0);

    memcpy(v9, v6, sizeof(v9));
    sub_257C63C04(v9);
    if (v5 == 1)
    {
      sub_257D59094(v3, 1);
    }

    memcpy(v6, __src, sizeof(v6));
    return sub_257C63C04(v6);
  }

  return result;
}

uint64_t sub_257CE1F54(double a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v17);
    *&v18[79] = a1;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v10 = qword_281548348;
    v11 = v17;
    v16[0] = v17;
    memcpy(&v16[1], v18, 0x127uLL);
    sub_257D58DA0(v9, v8, v16, 0);

    memcpy(v19, v16, sizeof(v19));
    result = sub_257C63C04(v19);
    if (v11)
    {
      v12 = v10 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionPitchThreshold;
      swift_beginAccess();
      v15 = a1;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v13 = sub_257ECF110();
      MEMORY[0x28223BE20](v13);
      *&v14[-16] = &v15;
      *&v14[-8] = v12;
      sub_257ECFD40();
      (*(v4 + 8))(v7, v3);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_257CE21BC(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v7);
    v8[71] = v3 & 1;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v5 = v7;
    __src[0] = v7;
    memcpy(&__src[1], v8, 0x127uLL);
    sub_257D58DA0(v4, v2, __src, 0);

    memcpy(__dst, __src, sizeof(__dst));
    result = sub_257C63C04(__dst);
    if (v5)
    {
      sub_257D71A04(v3 & 1);
      swift_getKeyPath();
      swift_getKeyPath();
      __src[0] = v3 & 1;
      sub_257ECC3F0();
      return sub_257ECDD70();
    }
  }

  return result;
}

uint64_t sub_257CE2304(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v7);
    v8[72] = v3 & 1;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v5 = v7;
    __src[0] = v7;
    memcpy(&__src[1], v8, 0x127uLL);
    sub_257D58DA0(v4, v2, __src, 0);

    memcpy(__dst, __src, sizeof(__dst));
    result = sub_257C63C04(__dst);
    if (v5)
    {
      sub_257D71A24(v3 & 1);
      swift_getKeyPath();
      swift_getKeyPath();
      __src[0] = v3 & 1;
      sub_257ECC3F0();
      return sub_257ECDD70();
    }
  }

  return result;
}

uint64_t sub_257CE244C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v7);
    v8[73] = v3 & 1;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v5 = v7;
    __src[0] = v7;
    memcpy(&__src[1], v8, 0x127uLL);
    sub_257D58DA0(v4, v2, __src, 0);

    memcpy(__dst, __src, sizeof(__dst));
    result = sub_257C63C04(__dst);
    if (v5)
    {
      sub_257D719C4(v3 & 1);
      swift_getKeyPath();
      swift_getKeyPath();
      __src[0] = v3 & 1;
      sub_257ECC3F0();
      return sub_257ECDD70();
    }
  }

  return result;
}

uint64_t sub_257CE2594(double a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v17);
    *&v18[103] = a1;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v10 = qword_281548348;
    v11 = v17;
    v16[0] = v17;
    memcpy(&v16[1], v18, 0x127uLL);
    sub_257D58DA0(v9, v8, v16, 0);

    memcpy(v19, v16, sizeof(v19));
    result = sub_257C63C04(v19);
    if (v11)
    {
      v12 = v10 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingPitchThreshold;
      swift_beginAccess();
      v15 = a1;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v13 = sub_257ECF110();
      MEMORY[0x28223BE20](v13);
      *&v14[-16] = &v15;
      *&v14[-8] = v12;
      sub_257ECFD40();
      (*(v4 + 8))(v7, v3);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_257CE27FC(char a1, uint64_t a2)
{
  v5 = sub_257ECF120();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v10)
  {
    v17[1] = a2;
    v11 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v20);
    v12 = a1 & 1;
    v21[77] = v12;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v13 = qword_281548348;
    v14 = v20;
    v19[0] = v20;
    memcpy(&v19[1], v21, 0x127uLL);
    sub_257D58DA0(v11, v10, v19, 0);

    memcpy(v22, v19, 0x128uLL);
    result = sub_257C63C04(v22);
    if (v14)
    {
      v15 = v13 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
      swift_beginAccess();
      v18 = v12;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v16 = sub_257ECF110();
      MEMORY[0x28223BE20](v16);
      v17[-2] = &v18;
      v17[-1] = v15;
      sub_257ECFD40();
      (*(v6 + 8))(v9, v5);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_257CE2A58(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(__src);

    __src[15] = v3;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    memcpy(__dst, __src, sizeof(__dst));
    v5 = __dst[0];
    memcpy(v6, __src, sizeof(v6));
    sub_257C09C58(__dst, v9);
    sub_257D58DA0(v4, v2, v6, 0);

    memcpy(v9, v6, sizeof(v9));
    sub_257C63C04(v9);
    if (v5 == 1)
    {
      sub_257D4F488(v3, 1);
    }

    memcpy(v6, __src, sizeof(v6));
    return sub_257C63C04(v6);
  }

  return result;
}

uint64_t sub_257CE2B98(char a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v18);
    v10 = a1 & 1;
    v19[127] = v10;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v11 = qword_281548348;
    v12 = v18;
    v17[0] = v18;
    memcpy(&v17[1], v19, 0x127uLL);
    sub_257D58DA0(v9, v8, v17, 0);

    memcpy(v20, v17, 0x128uLL);
    result = sub_257C63C04(v20);
    if (v12)
    {
      v13 = v11 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSeatOccupancy;
      swift_beginAccess();
      v16 = v10;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v14 = sub_257ECF110();
      MEMORY[0x28223BE20](v14);
      *&v15[-16] = &v16;
      *&v15[-8] = v13;
      sub_257ECFD40();
      (*(v4 + 8))(v7, v3);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_257CE2DFC(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v7);
    v8[74] = v3 & 1;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v5 = v7;
    __src[0] = v7;
    memcpy(&__src[1], v8, 0x127uLL);
    sub_257D58DA0(v4, v2, __src, 0);

    memcpy(__dst, __src, sizeof(__dst));
    result = sub_257C63C04(__dst);
    if (v5)
    {
      sub_257D71A84(v3 & 1);
      swift_getKeyPath();
      swift_getKeyPath();
      __src[0] = v3 & 1;
      sub_257ECC3F0();
      return sub_257ECDD70();
    }
  }

  return result;
}

uint64_t sub_257CE2F44(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(__src);

    __src[23] = v3;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    memcpy(__dst, __src, sizeof(__dst));
    v5 = __dst[0];
    memcpy(v6, __src, sizeof(v6));
    sub_257C09C58(__dst, v9);
    sub_257D58DA0(v4, v2, v6, 0);

    memcpy(v9, v6, sizeof(v9));
    sub_257C63C04(v9);
    if (v5 == 1)
    {
      sub_257D59960(v3, 1);
    }

    memcpy(v6, __src, sizeof(v6));
    return sub_257C63C04(v6);
  }

  return result;
}

uint64_t sub_257CE3084(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(__src);

    __src[5] = v3;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    memcpy(__dst, __src, sizeof(__dst));
    v5 = LOBYTE(__dst[0]);
    memcpy(v6, __src, sizeof(v6));
    sub_257C09C58(__dst, v9);
    sub_257D58DA0(v4, v2, v6, 0);

    memcpy(v9, v6, sizeof(v9));
    sub_257C63C04(v9);
    if (v5 == 1)
    {
      sub_257D5874C(__dst[5]);
    }

    memcpy(v6, __src, sizeof(v6));
    return sub_257C63C04(v6);
  }

  return result;
}

uint64_t sub_257CE31C0(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v7);
    v8[75] = v3 & 1;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v5 = v7;
    __src[0] = v7;
    memcpy(&__src[1], v8, 0x127uLL);
    sub_257D58DA0(v4, v2, __src, 0);

    memcpy(__dst, __src, sizeof(__dst));
    result = sub_257C63C04(__dst);
    if (v5)
    {
      sub_257D71A44(v3 & 1);
      swift_getKeyPath();
      swift_getKeyPath();
      __src[0] = v3 & 1;
      sub_257ECC3F0();
      return sub_257ECDD70();
    }
  }

  return result;
}

uint64_t sub_257CE3308(char a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v18);
    v10 = a1 & 1;
    v19[240] = v10;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v11 = qword_281548348;
    v12 = v18;
    v17[0] = v18;
    memcpy(&v17[1], v19, 0x127uLL);
    sub_257D58DA0(v9, v8, v17, 0);

    memcpy(v20, v17, 0x128uLL);
    result = sub_257C63C04(v20);
    if (v12)
    {
      v13 = v11 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakFlashlightEnabled;
      swift_beginAccess();
      v16 = v10;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v14 = sub_257ECF110();
      MEMORY[0x28223BE20](v14);
      *&v15[-16] = &v16;
      *&v15[-8] = v13;
      sub_257ECFD40();
      (*(v4 + 8))(v7, v3);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_257CE356C(char a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v18);
    v10 = a1 & 1;
    v19[239] = v10;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v11 = qword_281548348;
    v12 = v18;
    v17[0] = v18;
    memcpy(&v17[1], v19, 0x127uLL);
    sub_257D58DA0(v9, v8, v17, 0);

    memcpy(v20, v17, 0x128uLL);
    result = sub_257C63C04(v20);
    if (v12)
    {
      v13 = v11 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__outlinePointSpeak;
      swift_beginAccess();
      v16 = v10;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v14 = sub_257ECF110();
      MEMORY[0x28223BE20](v14);
      *&v15[-16] = &v16;
      *&v15[-8] = v13;
      sub_257ECFD40();
      (*(v4 + 8))(v7, v3);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_257CE37D0(char a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v18);
    v10 = a1 & 1;
    v19[241] = v10;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v11 = qword_281548348;
    v12 = v18;
    v17[0] = v18;
    memcpy(&v17[1], v19, 0x127uLL);
    sub_257D58DA0(v9, v8, v17, 0);

    memcpy(v20, v17, 0x128uLL);
    result = sub_257C63C04(v20);
    if (v12)
    {
      v13 = v11 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakFingerLocation;
      swift_beginAccess();
      v16 = v10;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v14 = sub_257ECF110();
      MEMORY[0x28223BE20](v14);
      *&v15[-16] = &v16;
      *&v15[-8] = v13;
      sub_257ECFD40();
      (*(v4 + 8))(v7, v3);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_257CE3A34(double a1, double a2, double a3)
{
  v7 = sub_257ECF120();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v12)
  {
    v13 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v21);
    *&v22[215] = a1;
    *&v22[223] = a2;
    *&v22[231] = a3;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v14 = qword_281548348;
    v15 = v21;
    v20[0] = v21;
    memcpy(&v20[1], v22, 0x127uLL);
    sub_257D58DA0(v13, v12, v20, 0);

    memcpy(v23, v20, sizeof(v23));
    result = sub_257C63C04(v23);
    if (v15)
    {
      v16 = v14 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakColor;
      swift_beginAccess();
      *v19 = a1;
      *&v19[1] = a2;
      *&v19[2] = a3;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v17 = sub_257ECF110();
      MEMORY[0x28223BE20](v17);
      *&v18[-16] = v19;
      *&v18[-8] = v16;
      sub_257ECFD40();
      (*(v8 + 8))(v11, v7);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_257CE3CB8(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(__src);

    __src[24] = v3;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    memcpy(__dst, __src, sizeof(__dst));
    v5 = __dst[0];
    memcpy(v6, __src, sizeof(v6));
    sub_257C09C58(__dst, v9);
    sub_257D58DA0(v4, v2, v6, 0);

    memcpy(v9, v6, sizeof(v9));
    sub_257C63C04(v9);
    if (v5 == 1)
    {
      sub_257D5A210(v3, 1);
    }

    memcpy(v6, __src, sizeof(v6));
    return sub_257C63C04(v6);
  }

  return result;
}

uint64_t sub_257CE3DF8(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v7);
    v8[76] = v3 & 1;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v5 = v7;
    __src[0] = v7;
    memcpy(&__src[1], v8, 0x127uLL);
    sub_257D58DA0(v4, v2, __src, 0);

    memcpy(__dst, __src, sizeof(__dst));
    result = sub_257C63C04(__dst);
    if (v5)
    {
      sub_257D71A64(v3 & 1);
      swift_getKeyPath();
      swift_getKeyPath();
      __src[0] = v3 & 1;
      sub_257ECC3F0();
      return sub_257ECDD70();
    }
  }

  return result;
}

uint64_t sub_257CE3F40(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(__src);

    __src[25] = v3;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    memcpy(__dst, __src, sizeof(__dst));
    v5 = __dst[0];
    memcpy(v6, __src, sizeof(v6));
    sub_257C09C58(__dst, v9);
    sub_257D58DA0(v4, v2, v6, 0);

    memcpy(v9, v6, sizeof(v9));
    sub_257C63C04(v9);
    if (v5 == 1)
    {
      sub_257D519D8(v3, 1);
    }

    memcpy(v6, __src, sizeof(v6));
    return sub_257C63C04(v6);
  }

  return result;
}

uint64_t sub_257CE4080(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(__src);

    __src[26] = v3;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    memcpy(__dst, __src, sizeof(__dst));
    v5 = __dst[0];
    memcpy(v6, __src, sizeof(v6));
    sub_257C09C58(__dst, v9);
    sub_257D58DA0(v4, v2, v6, 0);

    memcpy(v9, v6, sizeof(v9));
    sub_257C63C04(v9);
    if (v5 == 1)
    {
      sub_257D57C64(v3, 1);
    }

    memcpy(v6, __src, sizeof(v6));
    return sub_257C63C04(v6);
  }

  return result;
}

uint64_t sub_257CE41C0(char a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v18);
    v10 = a1 & 1;
    v19[242] = v10;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v11 = qword_281548348;
    v12 = v18;
    v17[0] = v18;
    memcpy(&v17[1], v19, 0x127uLL);
    sub_257D58DA0(v9, v8, v17, 0);

    memcpy(v20, v17, 0x128uLL);
    result = sub_257C63C04(v20);
    if (v12)
    {
      v13 = v11 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__textDetectionFlashlightEnabled;
      swift_beginAccess();
      v16 = v10;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v14 = sub_257ECF110();
      MEMORY[0x28223BE20](v14);
      *&v15[-16] = &v16;
      *&v15[-8] = v13;
      sub_257ECFD40();
      (*(v4 + 8))(v7, v3);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_257CE4424(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 0x13)
  {
    if (*a1 > 0x15u)
    {
      if (v2 == 22)
      {
        if (v3 != 22)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v2 != 23)
        {
          goto LABEL_28;
        }

        if (v3 != 23)
        {
          goto LABEL_29;
        }
      }
    }

    else if (v2 == 20)
    {
      if (v3 != 20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v2 != 21)
      {
        goto LABEL_28;
      }

      if (v3 != 21)
      {
        goto LABEL_29;
      }
    }

LABEL_27:
    v4 = 1;
    return v4 & 1;
  }

  if (*a1 > 0x11u)
  {
    if (v2 == 18)
    {
      if (v3 != 18)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v2 != 19)
      {
        goto LABEL_28;
      }

      if (v3 != 19)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_27;
  }

  if (v2 == 16)
  {
    if (v3 != 16)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (v2 == 17)
  {
    if (v3 == 17)
    {
      goto LABEL_27;
    }

LABEL_29:
    v4 = 0;
    return v4 & 1;
  }

LABEL_28:
  if ((v3 & 0xF8) == 0x10)
  {
    goto LABEL_29;
  }

  v6 = Control.rawValue.getter();
  v8 = v7;
  if (v6 == Control.rawValue.getter() && v8 == v9)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_257ED0640();
  }

  return v4 & 1;
}

char *sub_257CE4594(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x277D84F90];
    while (2)
    {
      v5 = *v2++;
      v4 = v5;
      switch(v5)
      {
        case 4:

          goto LABEL_8;
        default:
          v6 = sub_257ED0640();

          if ((v6 & 1) == 0)
          {
            goto LABEL_11;
          }

LABEL_8:
          if (qword_281544FE0 != -1)
          {
            swift_once();
          }

          v7 = sub_257ECF4C0();
          v8 = MGGetBoolAnswer();

          if (v8)
          {
LABEL_11:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_257BFDE34(0, *(v3 + 2) + 1, 1, v3);
            }

            v10 = *(v3 + 2);
            v9 = *(v3 + 3);
            if (v10 >= v9 >> 1)
            {
              v3 = sub_257BFDE34((v9 > 1), v10 + 1, 1, v3);
            }

            *(v3 + 2) = v10 + 1;
            v3[v10 + 32] = v4;
          }

          if (--v1)
          {
            continue;
          }

          return v3;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_257CE492C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7600);
  result = sub_257ECDB60();
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = MEMORY[0x277D84F90];
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
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

    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_33;
    }

    v6 = *(v1 + v2++ + 32);
    if ((v6 & 0xF8) != 0x10)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_257BFCB14(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
      }

      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v8 >= v7 >> 1)
      {
        result = sub_257BFCB14((v7 > 1), v8 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 16) = v8 + 1;
      *(v4 + v8 + 32) = v6;
      v2 = v5;
    }
  }

  result = sub_257ECDB60();
  v9 = result;
  v10 = 0;
  v11 = *(result + 16);
  v12 = MEMORY[0x277D84F90];
  while (v11 != v10)
  {
    if (v10 >= v11)
    {
      goto LABEL_34;
    }

    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_35;
    }

    v14 = *(v9 + v10++ + 32);
    if ((v14 & 0xF8) != 0x10)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_257BFCB14(0, *(v12 + 16) + 1, 1, v12);
        v12 = result;
      }

      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_257BFCB14((v15 > 1), v16 + 1, 1, v12);
        v12 = result;
      }

      *(v12 + 16) = v16 + 1;
      *(v12 + v16 + 32) = v14;
      v10 = v13;
    }
  }

  result = sub_257ECDB60();
  v17 = result;
  v18 = 0;
  v19 = *(result + 16);
  v20 = MEMORY[0x277D84F90];
  while (v19 != v18)
  {
    if (v18 >= v19)
    {
      goto LABEL_36;
    }

    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_37;
    }

    v22 = *(v17 + v18++ + 32);
    if ((v22 & 0xF8) != 0x10)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_257BFCB14(0, *(v20 + 16) + 1, 1, v20);
        v20 = result;
      }

      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_257BFCB14((v23 > 1), v24 + 1, 1, v20);
        v20 = result;
      }

      *(v20 + 16) = v24 + 1;
      *(v20 + v24 + 32) = v22;
      v18 = v21;
    }
  }

  return v4;
}

unint64_t sub_257CE4C1C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

void sub_257CE4C78()
{
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_activityCreatedDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___filtersCollectionCustomizationViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___peopleDetectionSettingsViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___doorDetectionSettingsViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___objectUnderstandingSettingsViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___imageCaptionsSettingsViewController) = 0;
  v1 = OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_languageTranslator;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CE6AC8]) init];
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___pointSpeakSettingsViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___textDetectionSettingsViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___detectionModeUniversalSettingsViewController) = 0;
  v2 = (v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_tableView;
  v4 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 systemYellowColor];
  [v6 setTintColor_];

  *(v0 + v3) = v6;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___dataSource) = 0;
  sub_257ED0410();
  __break(1u);
}

uint64_t sub_257CE4E20(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return sub_257CD9FE0(a1);
  }
}

uint64_t sub_257CE4E50(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_257ECF500();
  return v7;
}

uint64_t sub_257CE4F50(void *a1)
{
  result = sub_257ECCEA0();
  if (result != 2 && result != 1)
  {
    if (result)
    {
      return 0;
    }

    else
    {
      v3 = [a1 numberOfRowsInSection_];
      if (qword_281544FE0 != -1)
      {
        v4 = v3;
        swift_once();
        v3 = v4;
      }

      return v3 > 0;
    }
  }

  return result;
}

uint64_t sub_257CE4FEC()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

unint64_t sub_257CE50DC()
{
  result = qword_27F8F7610;
  if (!qword_27F8F7610)
  {
    sub_257ECCEB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7610);
  }

  return result;
}

unint64_t sub_257CE5150()
{
  result = qword_27F8F7620;
  if (!qword_27F8F7620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7620);
  }

  return result;
}

unint64_t sub_257CE51A4()
{
  result = qword_27F8F7628;
  if (!qword_27F8F7628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7628);
  }

  return result;
}

uint64_t sub_257CE528C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_257CE5310()
{
  result = qword_27F8F76C0;
  if (!qword_27F8F76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F76C0);
  }

  return result;
}

unint64_t sub_257CE5368()
{
  result = qword_27F8F76C8;
  if (!qword_27F8F76C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F76C8);
  }

  return result;
}

unint64_t sub_257CE5428()
{
  result = qword_27F8F76D0;
  if (!qword_27F8F76D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F76D0);
  }

  return result;
}

uint64_t sub_257CE547C()
{
  v0 = sub_257ECCA30();
  __swift_allocate_value_buffer(v0, qword_27F912F60);
  __swift_project_value_buffer(v0, qword_27F912F60);
  return sub_257ECCA00();
}

uint64_t sub_257CE54E0()
{
  v1 = sub_257ECDA30();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();
  sub_257ECF900();
  v0[8] = sub_257ECF8F0();
  v3 = sub_257ECF8B0();
  v0[9] = v3;
  v0[10] = v2;

  return MEMORY[0x2822009F8](sub_257CE55D0, v3, v2);
}

uint64_t sub_257CE55D0()
{
  if (qword_27F8F4770 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 7;
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_257CE56B0;

  return MAGActionHandler.send(_:)(v0 + 16);
}

uint64_t sub_257CE56B0()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  sub_257C6DA74(*(v2 + 16), *(v2 + 24), *(v2 + 32));
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_257CE57F0;
  }

  else
  {
    v5 = sub_257C6D490;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257CE57F0()
{
  v1 = v0[12];

  sub_257ECD3A0();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not complete DescribeThisIntent: %@", v7, 0xCu);
    sub_257C11B14(v8);
    MEMORY[0x259C74820](v8, -1, -1);
    MEMORY[0x259C74820](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_257CE596C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F8F4608 != -1)
  {
    swift_once();
  }

  v2 = sub_257ECCA30();
  v3 = __swift_project_value_buffer(v2, qword_27F912F60);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_257CE5A14(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  v1[3] = swift_task_alloc();
  v1[4] = sub_257ECF900();
  v1[5] = sub_257ECF8F0();
  v3 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257CE5AE8, v3, v2);
}

uint64_t sub_257CE5AE8()
{
  v1 = *(v0 + 24);

  v2 = sub_257ECF930();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_257ECF8F0();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D85700];
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  sub_257C3FBD4(0, 0, v1, &unk_257EE1C60, v4);

  sub_257ECC350();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_257CE5BFC(uint64_t a1)
{
  v2 = sub_257CE5428();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_257CE5C48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257BE3DE0;

  return sub_257CE54E0();
}

void sub_257CE5CF4(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (!a1)
    {
      return;
    }

LABEL_7:
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = sub_257ECF4C0();
    v7 = sub_257ECF4C0();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    sub_257ECF500();
    return;
  }

  if (a1 != 2)
  {
    goto LABEL_7;
  }

  v1 = sub_257ECF4C0();
  v9[4] = sub_257E5BD88;
  v9[5] = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_257E5BE70;
  v9[3] = &block_descriptor_22;
  v2 = _Block_copy(v9);
  v3 = AXLocStringForDeviceVariant();
  _Block_release(v2);

  if (v3)
  {
    sub_257ECF500();
  }

  else
  {
    __break(1u);
  }
}

id sub_257CE5F80()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0);
  v26 = *(v10 - 8);
  v27 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v29.receiver = v1;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, sel_viewDidLoad);
  v13 = *&v1[OBJC_IVAR____TtC16MagnifierSupport37PeopleDetectionSettingsViewController_tableView];
  [v13 setDataSource_];
  [v13 setDelegate_];
  sub_257BD2C2C(0, &qword_27F8F5560);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = sub_257ECF4C0();
  [v13 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v15];

  type metadata accessor for UIStepperLengthCell();
  v16 = swift_getObjCClassFromMetadata();
  v17 = sub_257ECF4C0();
  [v13 registerClass:v16 forCellReuseIdentifier:v17];

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v19 = result;
  [result addSubview_];

  result = [v1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v20 = result;
  sub_257EB6FD8(result, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  sub_257ECDD30();
  swift_endAccess();
  v21 = [objc_opt_self() mainRunLoop];
  v28 = v21;
  v22 = sub_257ED0080();
  (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  sub_257BD2C2C(0, &unk_281543D40);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
  sub_257BD2C74();
  sub_257ECDDF0();
  sub_257BD2CDC(v5);

  (*(v7 + 8))(v9, v6);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0);
  v23 = v27;
  v24 = sub_257ECDE50();

  (*(v26 + 8))(v12, v23);
  *&v1[OBJC_IVAR____TtC16MagnifierSupport37PeopleDetectionSettingsViewController_speechFeedbackSubscription] = v24;
}

void sub_257CE64D8()
{
  v0 = sub_257ECCEB0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v9[7] == 1)
    {
      [v5 beginUpdates];
      MEMORY[0x259C6F970](1, 2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5570);
      v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_257ED6D30;
      (*(v1 + 16))(v7 + v6, v3, v0);
      v8 = sub_257ECF7F0();

      [v5 reloadRowsAtIndexPaths:v8 withRowAnimation:100];

      [v5 endUpdates];
      (*(v1 + 8))(v3, v0);
    }

    else
    {
    }
  }
}

void sub_257CE676C(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  if (!v8)
  {
    sub_257ECF500();
    v8 = sub_257ECF4C0();
  }

  [v3 setTitle_];
}

id sub_257CE6928(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v10 = byte_286904EB0[v6 + 32];
    if (v10 != 3)
    {
      goto LABEL_10;
    }

    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
LABEL_10:
      v23 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF2964(0, *(v7 + 16) + 1, 1);
        v7 = v23;
      }

      v9 = *(v7 + 16);
      v8 = *(v7 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_257BF2964((v8 > 1), v9 + 1, 1);
        v7 = v23;
      }

      *(v7 + 16) = v9 + 1;
      *(v7 + v9 + 32) = v10;
    }

    ++v6;
  }

  while (v6 != 4);
  *&v4[OBJC_IVAR____TtC16MagnifierSupport37PeopleDetectionSettingsViewController_availableDetectionFeedbacks] = v7;
  v11 = OBJC_IVAR____TtC16MagnifierSupport37PeopleDetectionSettingsViewController_tableView;
  v12 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 systemYellowColor];
  [v14 setTintColor_];

  [v14 setClipsToBounds_];
  *&v4[v11] = v14;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport37PeopleDetectionSettingsViewController_speechFeedbackSubscription] = 0;
  if (a2)
  {
    v16 = sub_257ECF4C0();
  }

  else
  {
    v16 = 0;
  }

  v22.receiver = v4;
  v22.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, v16, a3, a1);

  return v17;
}

id sub_257CE6BD4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v8 = byte_286904ED8[v4 + 32];
    if (v8 != 3)
    {
      goto LABEL_10;
    }

    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
LABEL_10:
      v18 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF2964(0, *(v5 + 16) + 1, 1);
        v5 = v18;
      }

      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_257BF2964((v6 > 1), v7 + 1, 1);
        v5 = v18;
      }

      *(v5 + 16) = v7 + 1;
      *(v5 + v7 + 32) = v8;
    }

    ++v4;
  }

  while (v4 != 4);
  *&v2[OBJC_IVAR____TtC16MagnifierSupport37PeopleDetectionSettingsViewController_availableDetectionFeedbacks] = v5;
  v9 = OBJC_IVAR____TtC16MagnifierSupport37PeopleDetectionSettingsViewController_tableView;
  v10 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 systemYellowColor];
  [v12 setTintColor_];

  [v12 setClipsToBounds_];
  *&v2[v9] = v12;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport37PeopleDetectionSettingsViewController_speechFeedbackSubscription] = 0;
  v17.receiver = v2;
  v17.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v17, sel_initWithCoder_, a1);

  if (v14)
  {
  }

  return v14;
}

id sub_257CE6EFC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v67 - v6;
  v8 = sub_257ECCEA0();
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      if (v8 == 3)
      {
        v27 = 3;
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    v27 = 2;
  }

  else
  {
    if (v8)
    {
      if (v8 == 1)
      {
        v9 = sub_257ECF4C0();
        v10 = sub_257ECCE30();
        v11 = [a1 dequeueReusableCellWithIdentifier:v9 forIndexPath:v10];

        type metadata accessor for UIStepperLengthCell();
        if (swift_dynamicCastClass())
        {
          v12 = qword_281544FE0;
          v11 = v11;
          if (v12 != -1)
          {
            swift_once();
          }

          v13 = qword_281548348;
          v14 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionPitchThreshold);
          swift_beginAccess();
          v15 = v14[1];
          v16 = v14[2];
          v70 = *v14;
          v71 = v15;
          v72 = v16;
          v17 = qword_2815447E0;

          if (v17 != -1)
          {
            v18 = swift_once();
          }

          MEMORY[0x28223BE20](v18);
          v67[-2] = &v70;
          sub_257ECFD50();

          v19 = v13 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
          v20 = swift_beginAccess();
          v21 = *(v19 + 8);
          v22 = *(v19 + 16);
          v67[0] = *v19;
          v67[1] = v21;
          v68 = v22;
          MEMORY[0x28223BE20](v20);
          v67[-2] = v67;

          sub_257ECFD50();

          v23 = v69;
          v24 = objc_opt_self();
          v25 = &selRef_feet;
          if (!v23)
          {
            v25 = &selRef_meters;
          }

          v26 = [v24 *v25];
          sub_257BD2C2C(0, &qword_27F8F58F0);
          sub_257ECC740();
          sub_257D3DB54(v7, sub_257CE7A0C, 0);

          (*(v5 + 8))(v7, v4);
        }

        return v11;
      }

LABEL_15:
      v27 = 4;
      goto LABEL_18;
    }

    v27 = 0;
  }

LABEL_18:
  v28 = sub_257ECF4C0();
  v29 = sub_257ECCE30();
  v11 = [a1 dequeueReusableCellWithIdentifier:v28 forIndexPath:v29];

  if (v27 > 2)
  {
    if (v27 == 3)
    {
      v32 = [v11 textLabel];
      if (v32)
      {
        v33 = v32;
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v35 = [objc_opt_self() bundleForClass_];
        v36 = sub_257ECF4C0();
        v37 = sub_257ECF4C0();
        v38 = [v35 localizedStringForKey:v36 value:0 table:v37];

        if (!v38)
        {
          sub_257ECF500();
          v38 = sub_257ECF4C0();
        }

        [v33 setText_];
      }

      v39 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v40 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__peopleActionsEnabled;
      swift_beginAccess();
      v41 = *(v40 + 8);
      v42 = *(v40 + 16);
      v70 = *v40;
      v71 = v41;
      LOBYTE(v72) = v42;
      v43 = qword_2815447E0;

      if (v43 != -1)
      {
        v44 = swift_once();
      }

      MEMORY[0x28223BE20](v44);
      v67[-2] = &v70;
      sub_257ECFD50();

      [v39 setOn_];
      [v39 addTarget:v2 action:sel_didToggleActionsSwitch_ forControlEvents:4096];
      [v11 setAccessoryView_];
      [v11 setAccessoryType_];
    }

    return v11;
  }

  if (v27)
  {
    v45 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport37PeopleDetectionSettingsViewController_availableDetectionFeedbacks);
    v46 = sub_257ECCE60();
    if ((v46 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v46 < *(v45 + 16))
    {
      v29 = *(v45 + v46 + 32);
      v47 = [v11 textLabel];
      if (v47)
      {
        v48 = v47;
        sub_257C69F7C();
        v49 = sub_257ECF4C0();

        [v48 setText_];
      }

      v27 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      if (qword_281544FE0 == -1)
      {
        goto LABEL_38;
      }

      goto LABEL_55;
    }

    __break(1u);
LABEL_55:
    swift_once();
LABEL_38:
    v50 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPeopleDetectionFeedbacks);
    swift_beginAccess();
    v51 = v50[1];
    v52 = v50[2];
    v70 = *v50;
    v71 = v51;
    v72 = v52;
    v53 = qword_2815447E0;

    if (v53 != -1)
    {
      v54 = swift_once();
    }

    MEMORY[0x28223BE20](v54);
    v67[-2] = &v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AD8);
    sub_257ECFD50();

    v55 = sub_257C592D0(v29, v67[0]);

    [v27 setOn_];
    v56 = v27;
    [v56 setTag_];
    [v56 addTarget:v2 action:sel_didToggleFeedbackSwitch_ forControlEvents:4096];
    [v11 setAccessoryView_];

    [v11 setAccessoryType_];
    return v11;
  }

  v30 = sub_257ECCE60();
  if (v30)
  {
    if (v30 != 1)
    {
      return v11;
    }

    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  v57 = [v11 textLabel];
  if (v57)
  {
    v58 = v57;
    sub_257C69A6C();
    v59 = sub_257ECF4C0();

    [v58 setText_];
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v60 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
  swift_beginAccess();
  v61 = *(v60 + 8);
  v62 = *(v60 + 16);
  v70 = *v60;
  v71 = v61;
  LOBYTE(v72) = v62;
  v63 = qword_2815447E0;

  if (v63 != -1)
  {
    v64 = swift_once();
  }

  MEMORY[0x28223BE20](v64);
  v67[-2] = &v70;
  sub_257ECFD50();

  if ((v31 ^ LOBYTE(v67[0])))
  {
    v65 = 0;
  }

  else
  {
    v65 = 3;
  }

  [v11 setAccessoryType_];
  [v11 setAccessoryView_];
  return v11;
}

uint64_t sub_257CE7A0C(double a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v6 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionPitchThreshold;
  swift_beginAccess();
  v10 = a1;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v7 = sub_257ECF110();
  MEMORY[0x28223BE20](v7);
  *&v9[-16] = &v10;
  *&v9[-8] = v6;
  sub_257ECFD40();
  (*(v3 + 8))(v5, v2);
  return swift_endAccess();
}

id sub_257CE7DD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(unint64_t, void))
{
  sub_257CE85C4(a4, a5);
  if (v5)
  {
    v6 = sub_257ECF4C0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_257CE8000(void *a1)
{
  result = [a1 tag];
  if (result <= 3)
  {
    v3 = result;
    if ([a1 isOn])
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v4 = qword_2815447E0;

      if (v4 != -1)
      {
        v5 = swift_once();
      }

      MEMORY[0x28223BE20](v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AD8);
      sub_257ECFD50();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6910);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_257ED6D30;
      *(inited + 32) = v3;
      sub_257EB10F4(inited);
      sub_257D59094(v16, 1);
    }

    else
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v7 = qword_2815447E0;

      if (v7 != -1)
      {
        v8 = swift_once();
      }

      MEMORY[0x28223BE20](v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AD8);
      sub_257ECFD50();

      v9 = *(v16 + 16);
      if (v9)
      {
        v10 = (v16 + 32);
        v11 = MEMORY[0x277D84F90];
        do
        {
          v15 = *v10++;
          v14 = v15;
          if (v15 != v3)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_257BF2964(0, *(v11 + 16) + 1, 1);
            }

            v13 = *(v11 + 16);
            v12 = *(v11 + 24);
            if (v13 >= v12 >> 1)
            {
              sub_257BF2964((v12 > 1), v13 + 1, 1);
            }

            *(v11 + 16) = v13 + 1;
            *(v11 + v13 + 32) = v14;
          }

          --v9;
        }

        while (v9);
      }

      else
      {
        v11 = MEMORY[0x277D84F90];
      }

      sub_257D59094(v11, 1);
    }
  }

  return result;
}

uint64_t sub_257CE83E0(void *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v6 = qword_281548348;
  v7 = [a1 isOn];
  v8 = v6 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__peopleActionsEnabled;
  swift_beginAccess();
  v12 = v7;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v9 = sub_257ECF110();
  MEMORY[0x28223BE20](v9);
  *&v11[-16] = &v12;
  *&v11[-8] = v8;
  sub_257ECFD40();
  (*(v3 + 8))(v5, v2);
  return swift_endAccess();
}

uint64_t sub_257CE85C4(unint64_t a1, uint64_t (*a2)(unint64_t, void))
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return a2(a1, a2);
  }
}

void sub_257CE85F8(void *a1)
{
  v2 = sub_257ECCDF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v80 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_257ECDA30();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECCEB0();
  v77 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_257ECF120();
  v10 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_257ECCE30();
  v82 = [a1 cellForRowAtIndexPath_];

  if (!v82)
  {
    return;
  }

  v14 = sub_257ECCE30();
  [a1 deselectRowAtIndexPath:v14 animated:1];

  if (!sub_257ECCEA0())
  {
    v16 = sub_257ECCE60();
    if (v16)
    {
      if (v16 != 1)
      {
        goto LABEL_3;
      }

      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    v76 = v17;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v71 = v3;
    v72 = v2;
    v74 = qword_281548348;
    v18 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
    swift_beginAccess();
    v19 = *v18;
    v20 = *(v18 + 8);
    v73 = v18;
    v21 = *(v18 + 16);
    v86 = v19;
    v87 = v20;
    LOBYTE(v88) = v21;
    v22 = qword_2815447E0;

    if (v22 != -1)
    {
      v23 = swift_once();
    }

    v24 = qword_2815447E8;
    MEMORY[0x28223BE20](v23);
    *(&v65 - 2) = &v86;
    v75 = v24;
    sub_257ECFD50();

    v25 = v76;
    if (v76 == v90)
    {
LABEL_33:

      return;
    }

    v26 = v73;
    swift_beginAccess();
    v90 = v25;
    v27 = sub_257ECF110();
    MEMORY[0x28223BE20](v27);
    *(&v65 - 2) = &v90;
    *(&v65 - 1) = v26;
    sub_257ECFD40();
    v28 = *(v10 + 8);
    v69 = v10 + 8;
    v68 = v28;
    v28(v12, v81);
    swift_endAccess();
    v29 = v74;
    swift_beginAccess();
    v70 = &v65;
    v30 = v29[16];
    v31 = v29[17];
    v32 = v29[18];
    v86 = v29[15];
    v87 = v30;
    v88 = v31;
    v89 = v32;
    v67 = v32;
    MEMORY[0x28223BE20](v32);
    *(&v65 - 2) = &v86;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
    sub_257ECFD50();

    if (v84)
    {
      v66 = v84;
      v65 = v83;
      v33 = swift_beginAccess();
      v67 = &v65;
      v34 = v29[12];
      v35 = v29[13];
      v86 = v29[11];
      v87 = v34;
      v88 = v35;
      MEMORY[0x28223BE20](v33);
      *(&v65 - 2) = &v86;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
      sub_257ECFD50();
      v70 = 0;

      v36 = v85;
      if (*(*&v85 + 16))
      {
        v37 = sub_257C03F6C(v65, v66);
        v39 = v38;

        if (v39)
        {
          LODWORD(v67) = *(*(*&v36 + 56) + 296 * v37 + 78);

          v41 = *(v73 + 8);
          v42 = *(v73 + 16);
          v86 = *v73;
          v87 = v41;
          LOBYTE(v88) = v42;
          MEMORY[0x28223BE20](v40);
          *(&v65 - 2) = &v86;

          v43 = v70;
          sub_257ECFD50();
          v70 = v43;

          if (v67 != LOBYTE(v85))
          {
            swift_getKeyPath();
            swift_getKeyPath();
            LOBYTE(v86) = 1;
            sub_257ECC3F0();
            sub_257ECDD70();
          }

          goto LABEL_23;
        }
      }

      else
      {
      }
    }

    else
    {
      v70 = 0;
    }

LABEL_23:
    ++v77;
    MEMORY[0x259C6F970](byte_286904F20, 0);
    v44 = sub_257ECCE30();
    v45 = [a1 cellForRowAtIndexPath_];

    if (v45)
    {
      [v45 setAccessoryType_];
    }

    v46 = *v77;
    (*v77)(v9, v7);
    MEMORY[0x259C6F970](byte_286904F21, 0);
    v47 = sub_257ECCE30();
    v48 = [a1 cellForRowAtIndexPath_];

    if (v48)
    {
      [v48 setAccessoryType_];
    }

    v46(v9, v7);
    [v82 setAccessoryType_];
    sub_257ECD420();
    v49 = sub_257ECDA20();
    v50 = sub_257ECFBD0();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = v76;
      v52 = swift_slowAlloc();
      *v52 = 134217984;
      *(v52 + 4) = v51;
      _os_log_impl(&dword_257BAC000, v49, v50, "New people detection unit: %ld", v52, 0xCu);
      MEMORY[0x259C74820](v52, -1, -1);
    }

    (*(v78 + 8))(v6, v79);
    if (v76)
    {
      v53 = 6.0;
    }

    else
    {
      v53 = 2.0;
    }

    v54 = v74;
    v55 = v74 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionPitchThreshold;
    swift_beginAccess();
    v85 = v53;
    v56 = sub_257ECF110();
    MEMORY[0x28223BE20](v56);
    *(&v65 - 2) = &v85;
    *(&v65 - 1) = v55;
    sub_257ECFD40();
    v57 = v54;
    v58 = v81;
    v59 = v68;
    v68(v12, v81);
    swift_endAccess();
    v60 = v57 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionPitchThreshold;
    swift_beginAccess();
    v85 = v53;
    v61 = sub_257ECF110();
    MEMORY[0x28223BE20](v61);
    *(&v65 - 2) = &v85;
    *(&v65 - 1) = v60;
    sub_257ECFD40();
    v59(v12, v58);
    swift_endAccess();
    [a1 beginUpdates];
    v86 = &unk_286904F28;
    sub_257C108DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D80);
    sub_257BD2D4C(&qword_27F8F58B0, &unk_27F8F4D80);
    v62 = v80;
    v63 = v72;
    sub_257ED0180();
    v64 = sub_257ECCDE0();
    (*(v71 + 8))(v62, v63);
    [a1 reloadSections:v64 withRowAnimation:100];

    [a1 endUpdates];
    goto LABEL_33;
  }

LABEL_3:
  v15 = v82;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t type metadata accessor for MFReaderDynamicTypeSizeStepper()
{
  result = qword_27F8F7700;
  if (!qword_27F8F7700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257CE9344()
{
  sub_257CE9478(319, &qword_27F8F7710, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_257CE9428();
    if (v1 <= 0x3F)
    {
      sub_257CE9478(319, &qword_27F8F5B68, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_257CE9428()
{
  if (!qword_27F8F7718)
  {
    v0 = sub_257ECEE90();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8F7718);
    }
  }
}

void sub_257CE9478(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_257ECE1D0();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_257CE94F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_257ECE4D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MFReaderDynamicTypeSizeStepper();
  sub_257BE401C(v1 + *(v10 + 24), v9, &qword_27F8F5BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_257ECE1D0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_257ECFBF0();
    v13 = sub_257ECE900();
    sub_257ECD960();

    sub_257ECE4C0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_257CE96FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v147 = a2;
  v3 = sub_257ECE1D0();
  v182 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v168 = v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C58);
  MEMORY[0x28223BE20](v166);
  v171 = v130 - v5;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7738);
  v6 = MEMORY[0x28223BE20](v169);
  v146 = v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v167 = v130 - v9;
  MEMORY[0x28223BE20](v8);
  v173 = v130 - v10;
  v181 = sub_257ECE750();
  v187 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v179 = v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F67E0);
  MEMORY[0x28223BE20](v176);
  v13 = v130 - v12;
  v14 = type metadata accessor for MFReaderDynamicTypeSizeStepper();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7740);
  MEMORY[0x28223BE20](v17);
  v19 = v130 - v18;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7748);
  v185 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v174 = v130 - v20;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7750);
  v186 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v177 = v130 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7758);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v144 = v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v145 = v130 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v143 = v130 - v28;
  MEMORY[0x28223BE20](v27);
  v180 = v130 - v29;
  sub_257CEB44C(a1, v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *(v15 + 80);
  v31 = (v30 + 16) & ~v30;
  v162 = v30;
  v161 = v31 + v16;
  v32 = swift_allocObject();
  v164 = v31;
  v165 = v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257CEB4B0(v165, v32 + v31);
  v188 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7760);
  v163 = sub_257CEB594();
  sub_257ECEEA0();
  v34 = (a1 + *(v14 + 20));
  v36 = *v34;
  v35 = v34[1];
  v160 = v36;
  *&v192 = v36;
  *(&v192 + 1) = v35;
  v159 = v35;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7730);
  sub_257ECEE60();
  v170 = v14;
  LOBYTE(v14) = v190 == *(a1 + *(v14 + 28));
  KeyPath = swift_getKeyPath();
  v38 = swift_allocObject();
  *(v38 + 16) = v14;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7780);
  v40 = &v19[*(v39 + 36)];
  *v40 = KeyPath;
  v40[1] = sub_257C133DC;
  v40[2] = v38;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7788);
  v19[*(v157 + 36)] = 0;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7790);
  v41 = &v19[*(v156 + 36)];
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7798);
  v42 = *(v155 + 28);
  v43 = *MEMORY[0x277CDF420];
  v44 = sub_257ECDFA0();
  v45 = *(v44 - 8);
  v46 = *(v45 + 104);
  v154 = v43;
  v153 = v44;
  v152 = v46;
  v151 = v45 + 104;
  (v46)(v41 + v42, v43);
  *v41 = swift_getKeyPath();
  v47 = sub_257ECED90();
  v48 = swift_getKeyPath();
  v184 = v17;
  v49 = &v19[*(v17 + 36)];
  *v49 = v48;
  v49[1] = v47;
  v51 = v182 + 104;
  v50 = *(v182 + 104);
  v149 = *MEMORY[0x277CDF988];
  v148 = v50;
  v50(v13);
  v52 = sub_257CEBA78(&qword_27F8F67F8, MEMORY[0x277CDFA28]);
  v172 = v3;
  v150 = v52;
  result = sub_257ECF450();
  if (result)
  {
    v54 = sub_257CEB76C();
    v142 = v51;
    v139 = v33;
    v55 = sub_257BD2D4C(&qword_27F8F6800, &qword_27F8F67E0);
    v183 = v13;
    v138 = a1;
    v56 = v174;
    v57 = v184;
    v58 = v176;
    sub_257ECEBB0();
    sub_257BE4084(v183, &qword_27F8F67E0);
    sub_257BE4084(v19, &qword_27F8F7740);
    v140 = v39;
    v59 = v179;
    sub_257ECE740();
    *&v192 = v57;
    *(&v192 + 1) = v58;
    v137 = v54;
    *&v193 = v54;
    *(&v193 + 1) = v55;
    v136 = v55;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v61 = sub_257CEBA78(&qword_27F8F77F8, MEMORY[0x277CDE0B8]);
    v141 = v19;
    v62 = v61;
    v63 = v177;
    v64 = v185;
    v65 = v175;
    v66 = v181;
    sub_257ECEB60();
    v67 = *(v187 + 8);
    v187 += 8;
    v135 = v67;
    v67(v59, v66);
    v68 = *(v64 + 8);
    v185 = v64 + 8;
    v134 = v68;
    v68(v56, v65);
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v133 = objc_opt_self();
    v70 = [v133 bundleForClass_];
    v71 = sub_257ECF4C0();
    v72 = sub_257ECF4C0();
    v73 = [v70 localizedStringForKey:v71 value:0 table:v72];

    v74 = sub_257ECF500();
    v76 = v75;

    v77 = v62;
    v78 = v141;
    v190 = v74;
    v191 = v76;
    *&v192 = v65;
    *(&v192 + 1) = v66;
    *&v193 = OpaqueTypeConformance2;
    *(&v193 + 1) = v77;
    v130[1] = v77;
    v79 = swift_getOpaqueTypeConformance2();
    v80 = sub_257BDAB08();
    v81 = v178;
    v130[2] = v79;
    v132 = v80;
    sub_257ECEBF0();

    v82 = *(v186 + 8);
    v186 += 8;
    v131 = v82;
    v82(v63, v81);
    v83 = v171;
    sub_257ECEF70();
    v84 = sub_257ECED60();
    v85 = sub_257ECE930();
    v86 = &v83[*(v166 + 36)];
    *v86 = v84;
    v86[8] = v85;
    v87 = v168;
    v88 = v138;
    sub_257CE94F4(v168);
    sub_257ECE1C0();
    v89 = v172;
    (*(v182 + 8))(v87, v172);
    sub_257ECF060();
    sub_257ECE080();
    v90 = v83;
    v91 = v167;
    sub_257C0DD14(v90, v167, &qword_27F8F5C58);
    v92 = (v91 + *(v169 + 36));
    v93 = v193;
    *v92 = v192;
    v92[1] = v93;
    v92[2] = v194;
    v94 = v173;
    sub_257C0DD14(v91, v173, &qword_27F8F7738);
    v95 = v165;
    sub_257CEB44C(v88, v165);
    v96 = swift_allocObject();
    v97 = sub_257CEB4B0(v95, v96 + v164);
    MEMORY[0x28223BE20](v97);
    v130[-2] = v88;
    sub_257ECEEA0();
    v190 = v160;
    v191 = v159;
    sub_257ECEE60();
    v98 = v183;
    LOBYTE(v87) = v189 == *(v88 + *(v170 + 32));
    v99 = swift_getKeyPath();
    v100 = swift_allocObject();
    *(v100 + 16) = v87;
    v101 = (v78 + *(v140 + 36));
    *v101 = v99;
    v101[1] = sub_257C13448;
    v101[2] = v100;
    *(v78 + *(v157 + 36)) = 0;
    v102 = (v78 + *(v156 + 36));
    v152(v102 + *(v155 + 28), v154, v153);
    *v102 = swift_getKeyPath();
    v103 = sub_257ECED90();
    v104 = swift_getKeyPath();
    v105 = (v78 + *(v184 + 36));
    *v105 = v104;
    v105[1] = v103;
    v148(v98, v149, v89);
    result = sub_257ECF450();
    if (result)
    {
      v106 = ObjCClassFromMetadata;
      v107 = v174;
      sub_257ECEBB0();
      sub_257BE4084(v98, &qword_27F8F67E0);
      sub_257BE4084(v78, &qword_27F8F7740);
      v108 = v179;
      sub_257ECE740();
      v109 = v177;
      v110 = v175;
      v111 = v181;
      sub_257ECEB60();
      v135(v108, v111);
      v134(v107, v110);
      v112 = [v133 bundleForClass_];
      v113 = sub_257ECF4C0();
      v114 = sub_257ECF4C0();
      v115 = [v112 localizedStringForKey:v113 value:0 table:v114];

      v116 = sub_257ECF500();
      v118 = v117;

      v190 = v116;
      v191 = v118;
      v119 = v143;
      v120 = v178;
      sub_257ECEBF0();

      v131(v109, v120);
      v121 = v180;
      v122 = v145;
      sub_257BB3F70(v180, v145);
      v123 = v146;
      sub_257BE401C(v94, v146, &qword_27F8F7738);
      v124 = v144;
      sub_257BB3F70(v119, v144);
      v125 = v147;
      *v147 = 0;
      *(v125 + 8) = 1;
      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7800);
      sub_257BB3F70(v122, v125 + v126[12]);
      v127 = v125 + v126[16];
      *v127 = 0;
      v127[8] = 1;
      sub_257BE401C(v123, v125 + v126[20], &qword_27F8F7738);
      v128 = v125 + v126[24];
      *v128 = 0;
      v128[8] = 1;
      sub_257BB3F70(v124, v125 + v126[28]);
      v129 = v125 + v126[32];
      *v129 = 0;
      v129[8] = 1;
      sub_257BB3FE0(v119);
      sub_257BE4084(v94, &qword_27F8F7738);
      sub_257BB3FE0(v121);
      sub_257BB3FE0(v124);
      sub_257BE4084(v123, &qword_27F8F7738);
      return sub_257BB3FE0(v122);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_257CEA98C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F76F8);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - v2;
  v4 = type metadata accessor for MFReaderDynamicTypeSizeStepper();
  v5 = (v0 + *(v4 + 20));
  v7 = *v5;
  v6 = v5[1];
  v14 = *v5;
  v15 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7730);
  result = sub_257ECEE60();
  if (v11 != *(v0 + *(v4 + 28)))
  {
    v14 = v7;
    v15 = v6;
    sub_257ECC3F0();
    result = sub_257ECEE60();
    if (__OFSUB__(v13, 1))
    {
      __break(1u);
    }

    else
    {
      v11 = v7;
      v12 = v6;
      v10 = v13 - 1;
      sub_257ECEE70();

      v14 = v7;
      v15 = v6;
      sub_257ECEE60();
      v9 = v11;
      sub_257ECEF50();
      sub_257CEB218(v9);
      return sub_257BE4084(v3, &qword_27F8F76F8);
    }
  }

  return result;
}

__n128 sub_257CEAB08@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_257ECEE10();
  v5 = type metadata accessor for MFReaderDynamicTypeSizeStepper();
  v8 = *(a1 + *(v5 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7730);
  sub_257ECEE60();
  if (v15 == *(a1 + *(v5 + 28)))
  {
    v6 = 0.4;
  }

  else
  {
    v6 = 1.0;
  }

  sub_257ECF060();
  sub_257ECE2F0();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 80) = v12;
  *(a2 + 96) = v13;
  *(a2 + 112) = v14;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  result = v11;
  *(a2 + 48) = v10;
  *(a2 + 64) = v11;
  return result;
}

uint64_t sub_257CEAC30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F76F8);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - v2;
  v4 = type metadata accessor for MFReaderDynamicTypeSizeStepper();
  v5 = (v0 + *(v4 + 20));
  v7 = *v5;
  v6 = v5[1];
  v14 = *v5;
  v15 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7730);
  result = sub_257ECEE60();
  if (v11 != *(v0 + *(v4 + 32)))
  {
    v14 = v7;
    v15 = v6;
    sub_257ECC3F0();
    result = sub_257ECEE60();
    if (__OFADD__(v13, 1))
    {
      __break(1u);
    }

    else
    {
      v11 = v7;
      v12 = v6;
      v10 = v13 + 1;
      sub_257ECEE70();

      v14 = v7;
      v15 = v6;
      sub_257ECEE60();
      v9 = v11;
      sub_257ECEF50();
      sub_257CEB218(v9);
      return sub_257BE4084(v3, &qword_27F8F76F8);
    }
  }

  return result;
}

__n128 sub_257CEADAC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_257ECEE10();
  v5 = type metadata accessor for MFReaderDynamicTypeSizeStepper();
  v8 = *(a1 + *(v5 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7730);
  sub_257ECEE60();
  if (v15 == *(a1 + *(v5 + 32)))
  {
    v6 = 0.4;
  }

  else
  {
    v6 = 1.0;
  }

  sub_257ECF060();
  sub_257ECE2F0();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 80) = v12;
  *(a2 + 96) = v13;
  *(a2 + 112) = v14;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  result = v11;
  *(a2 + 48) = v10;
  *(a2 + 64) = v11;
  return result;
}

uint64_t sub_257CEAED4(uint64_t a1)
{
  v2 = sub_257ECE1D0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F76F8);
  MEMORY[0x28223BE20](v9);
  v11 = v15 - v10;
  sub_257ECEF50();
  MEMORY[0x259C71A50](v9);
  sub_257BE4084(v11, &qword_27F8F76F8);
  (*(v3 + 32))(v6, v8, v2);
  v12 = (*(v3 + 88))(v6, v2);
  v13 = 0;
  if (v12 != *MEMORY[0x277CDF9F8])
  {
    if (v12 == *MEMORY[0x277CDF9E0])
    {
      v13 = 1;
    }

    else if (v12 == *MEMORY[0x277CDF9E8])
    {
      v13 = 2;
    }

    else if (v12 == *MEMORY[0x277CDF9D8])
    {
      v13 = 3;
    }

    else if (v12 == *MEMORY[0x277CDF9F0])
    {
      v13 = 4;
    }

    else if (v12 == *MEMORY[0x277CDFA00])
    {
      v13 = 5;
    }

    else if (v12 == *MEMORY[0x277CDFA10])
    {
      v13 = 6;
    }

    else
    {
      if (v12 != *MEMORY[0x277CDF988])
      {
        if (v12 == *MEMORY[0x277CDF998])
        {
          v13 = 8;
          goto LABEL_24;
        }

        if (v12 == *MEMORY[0x277CDF9A8])
        {
          v13 = 9;
          goto LABEL_24;
        }

        if (v12 == *MEMORY[0x277CDF9B8])
        {
          v13 = 10;
          goto LABEL_24;
        }

        if (v12 == *MEMORY[0x277CDF9D0])
        {
          v13 = 11;
          goto LABEL_24;
        }

        (*(v3 + 8))(v6, v2);
      }

      v13 = 7;
    }
  }

LABEL_24:
  v16 = *(a1 + *(type metadata accessor for MFReaderDynamicTypeSizeStepper() + 20));
  v15[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7730);
  return sub_257ECEE70();
}

uint64_t sub_257CEB218(unint64_t a1)
{
  v2 = sub_257ECE1D0();
  result = MEMORY[0x28223BE20](v2);
  if (a1 <= 0xB)
  {
    (*(v5 + 104))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), **(&unk_279854398 + a1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F76F8);
    return sub_257ECEF40();
  }

  return result;
}

uint64_t sub_257CEB30C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  *a2 = sub_257ECE500();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7720);
  sub_257CE96FC(v2, (a2 + *(v6 + 44)));
  sub_257CEB44C(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_257CEB4B0(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7728);
  v10 = (a2 + *(result + 36));
  *v10 = sub_257CEB514;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;
  return result;
}

uint64_t sub_257CEB44C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MFReaderDynamicTypeSizeStepper();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257CEB4B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MFReaderDynamicTypeSizeStepper();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257CEB514()
{
  v1 = *(type metadata accessor for MFReaderDynamicTypeSizeStepper() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_257CEAED4(v2);
}

unint64_t sub_257CEB594()
{
  result = qword_27F8F7768;
  if (!qword_27F8F7768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7760);
    sub_257CEB620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7768);
  }

  return result;
}

unint64_t sub_257CEB620()
{
  result = qword_27F8F7770;
  if (!qword_27F8F7770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7770);
  }

  return result;
}

uint64_t sub_257CEB6A4(uint64_t a1)
{
  v2 = sub_257ECDFA0();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return MEMORY[0x259C70EB0](v4);
}

unint64_t sub_257CEB76C()
{
  result = qword_27F8F77A0;
  if (!qword_27F8F77A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7740);
    sub_257CEB824();
    sub_257BD2D4C(&qword_27F8F6EC8, &qword_27F8F6ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F77A0);
  }

  return result;
}

unint64_t sub_257CEB824()
{
  result = qword_27F8F77A8;
  if (!qword_27F8F77A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7790);
    sub_257CEB8DC();
    sub_257BD2D4C(&qword_27F8F77F0, &qword_27F8F7798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F77A8);
  }

  return result;
}

unint64_t sub_257CEB8DC()
{
  result = qword_27F8F77B0;
  if (!qword_27F8F77B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7788);
    sub_257CEB994();
    sub_257BD2D4C(&qword_27F8F77E0, &qword_27F8F77E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F77B0);
  }

  return result;
}

unint64_t sub_257CEB994()
{
  result = qword_27F8F77B8;
  if (!qword_27F8F77B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7780);
    sub_257BD2D4C(&qword_27F8F77C0, &qword_27F8F77C8);
    sub_257BD2D4C(&qword_27F8F77D0, &qword_27F8F77D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F77B8);
  }

  return result;
}

uint64_t sub_257CEBA78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for MFReaderDynamicTypeSizeStepper() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F76F8) + 32);
  v4 = sub_257ECE1D0();
  v5 = *(*(v4 - 8) + 8);
  v5(v2 + v3, v4);

  v6 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5(v2 + v6, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_257CEBCB8()
{
  result = qword_27F8F7808;
  if (!qword_27F8F7808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7728);
    sub_257BD2D4C(&qword_27F8F7810, &qword_27F8F7818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7808);
  }

  return result;
}

uint64_t sub_257CEBD80()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_rotationRateManager);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = *(v2 + 16);
  sub_257ECC3F0();
  v4 = [v3 deviceMotion];
  if (v4)
  {
    v5 = v4;
    [v4 rotationRate];
    v7 = v6;
    v9 = v8;
    v11 = v10;

    if (sqrt(v11 * v11 + v7 * v7 + v9 * v9) >= 0.05)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  result = swift_beginAccess();
  if (byte_27F8F87B0 != 1)
  {
    return result;
  }

LABEL_7:
  v13 = sub_257E003E8();
  v14 = [v13 text];

  if (v14)
  {
    v15 = sub_257ECF500();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  v20 = sub_257ECF4C0();
  v21 = sub_257ECF4C0();
  v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

  v23 = sub_257ECF500();
  v25 = v24;

  aBlock = v23;
  v43 = v25;
  sub_257BDAB08();
  v26 = sub_257ED0100();
  v28 = v27;

  if (v17)
  {
    if (v15 == v26 && v17 == v28)
    {

LABEL_16:
      v30 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___detectionInformationLabel);
      v31 = sub_257E00504();
      *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isInformationLabelVisible) = 0;
      v32 = objc_opt_self();
      v33 = swift_allocObject();
      *(v33 + 16) = v30;
      *(v33 + 24) = v31;
      v46 = sub_257BDAD38;
      v47 = v33;
      aBlock = MEMORY[0x277D85DD0];
      v43 = 1107296256;
      v44 = sub_257D231C0;
      v45 = &block_descriptor_29;
      v34 = _Block_copy(&aBlock);
      v35 = v30;
      v36 = v31;

      v37 = [v32 runningPropertyAnimatorWithDuration:0x20000 delay:v34 options:0 animations:0.2 completion:0.1];
      _Block_release(v34);

      goto LABEL_17;
    }

    v29 = sub_257ED0640();

    if (v29)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

LABEL_17:
  v38 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textBoxLayer;
  v39 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textBoxLayer);
  if (v39)
  {
    [v39 removeFromSuperlayer];
    v40 = *(v1 + v38);
    *(v1 + v38) = 0;
  }

  v41 = (v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentPointSpeakAnnouncement);
  if ((*(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentPointSpeakAnnouncement) || *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentPointSpeakAnnouncement + 8) != 0xE000000000000000) && (sub_257ED0640() & 1) == 0)
  {
    LOBYTE(aBlock) = 5;
    sub_257CC6340(&aBlock);
  }

  *v41 = 0;
  v41[1] = 0xE000000000000000;
}

void sub_257CEC1E8()
{
  v1 = v0;
  v2 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v2);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_257ECF4C0();
  v11 = sub_257ECF4C0();
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  v13 = sub_257ECF500();
  v15 = v14;

  v22[0] = v13;
  v22[1] = v15;
  sub_257BDAB08();
  v16 = sub_257ED0100();
  v18 = v17;

  v19 = sub_257E003E8();
  v20 = sub_257E00504();
  sub_257DFD370(v16, v18, v19, v20);

  if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_usePointSpeakSpeechFeedback) == 1)
  {
    *v4 = 9;
    swift_storeEnumTagMultiPayload();
    sub_257ECCCE0();
    sub_257C15EC0(v4, &v7[v5[5]]);
    v7[v5[6]] = 0;
    v7[v5[7]] = 0;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v21 = qword_281548348;
    sub_257ECC3F0();
    sub_257C15F24(v4, type metadata accessor for MAGOutputEvent.EventType);
    *&v7[v5[8]] = v21;
    sub_257CBBC80(v7);
    sub_257C15F24(v7, type metadata accessor for MAGOutputEvent);
  }
}

void sub_257CEC4E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v5 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPointSpeakFeedbacks);
  swift_beginAccess();
  v6 = v5[1];
  v7 = v5[2];
  v30 = *v5;
  v31 = v6;
  v32 = v7;
  v8 = qword_2815447E0;

  if (v8 != -1)
  {
    v9 = swift_once();
  }

  MEMORY[0x28223BE20](v9);
  *(&v29 - 2) = &v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90);
  sub_257ECFD50();

  v10 = sub_257C592D0(1u, v33);

  if (v10)
  {
    v11 = sub_257ECF930();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    sub_257ECF900();
    v12 = v1;
    v13 = sub_257ECF8F0();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v12;
    sub_257C3FBD4(0, 0, v4, &unk_257EE2148, v14);
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v18 = sub_257ECF4C0();
  v19 = sub_257ECF4C0();
  v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

  v21 = sub_257ECF500();
  v23 = v22;

  v30 = v21;
  v31 = v23;
  sub_257BDAB08();
  v24 = sub_257ED0100();
  v26 = v25;

  v27 = sub_257E003E8();
  v28 = sub_257E00504();
  sub_257DFD370(v24, v26, v27, v28);
}

void sub_257CEC88C(void *a1, float32x2_t a2, double a3, double a4, double a5, double a6)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (LOBYTE(aBlock[0]) == 1)
  {
    v9 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView;
    v10 = *(v6 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
    if (v10)
    {
      v11 = [v10 scene];
      v12 = [v11 rootNode];

      aBlock[4] = sub_257CEFA68;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257CEFA74;
      aBlock[3] = &block_descriptor_49;
      v13 = _Block_copy(aBlock);

      [v12 enumerateChildNodesUsingBlock_];

      _Block_release(v13);
      if (swift_isEscapingClosureAtFileLocation())
      {
        __break(1u);
      }

      else
      {
        v14 = *(v6 + v9);
        if (v14)
        {
          v15 = [v14 scene];
          v16 = [v15 rootNode];

          v17 = objc_allocWithZone(type metadata accessor for WireframePlane());
          v18 = sub_257EAEB9C(a1, 0.003, COERCE_DOUBLE(vadd_f32(a2, vdup_n_s32(0x3CA3D70Au))), a3, a4, a5, a6);
          [v16 addChildNode_];
        }
      }
    }
  }
}

uint64_t sub_257CECAF4(void *a1, int a2, double a3, double a4, double a5, double a6)
{
  v25 = a2;
  v12 = sub_257ECF120();
  v27 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_257ECF190();
  v15 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v17 = &v24[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (LOBYTE(aBlock[0]) == 1)
  {
    sub_257BD52CC();
    v19 = sub_257ECFD30();
    v20 = swift_allocObject();
    *(v20 + 16) = v6;
    *(v20 + 24) = v25 & 1;
    *(v20 + 32) = a3;
    *(v20 + 40) = a4;
    *(v20 + 48) = a5;
    *(v20 + 56) = a6;
    *(v20 + 64) = a1;
    aBlock[4] = sub_257CEFBB4;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_46;
    v21 = _Block_copy(aBlock);
    v22 = v6;
    v23 = a1;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    MEMORY[0x259C72880](0, v17, v14, v21);
    _Block_release(v21);

    (*(v27 + 8))(v14, v12);
    return (*(v15 + 8))(v17, v26);
  }

  return result;
}

uint64_t sub_257CECE74(uint64_t a1)
{
  v2 = v1;
  v4 = sub_257ECF120();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v10 = a1;
  swift_storeEnumTagMultiPayload();

  sub_257ECCCE0();
  sub_257C15EC0(v10, &v13[v11[5]]);
  v13[v11[6]] = 1;
  v13[v11[7]] = 0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v14 = qword_281548348;
  sub_257ECC3F0();
  sub_257C15F24(v10, type metadata accessor for MAGOutputEvent.EventType);
  *&v13[v11[8]] = v14;
  v15 = MAGOutputEvent.displayContent.getter();
  if (!v16)
  {
    return sub_257C15F24(v13, type metadata accessor for MAGOutputEvent);
  }

  v17 = v15;
  v18 = v16;
  v42 = v7;
  v43 = v5;
  v44 = v4;
  v45 = v2;
  v19 = (v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentPointSpeakAnnouncement);
  v21 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentPointSpeakAnnouncement);
  v20 = v19[1];

  v22 = sub_257ECF4C0();
  v23 = sub_257ECF4C0();
  v24 = sub_257E5BABC(v23, 360, 0.35);

  if (v17)
  {
    v25 = 0;
  }

  else
  {
    v25 = v18 == 0xE000000000000000;
  }

  v26 = v25;
  if (v25 || (sub_257ED0640() & 1) != 0)
  {
    v41 = v26;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v49 == 1)
    {
      v27 = (v45 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentTextAnnouncement);
      if ((*(v45 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentTextAnnouncement) || *(v45 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentTextAnnouncement + 8) != 0xE000000000000000) && (sub_257ED0640() & 1) == 0)
      {

        v29 = *v27;
        v28 = v27[1];
        *v19 = v17;
        v19[1] = v18;

        if ((v24 & 1) == 0)
        {
          goto LABEL_39;
        }

        v17 = v29;
        goto LABEL_30;
      }
    }

    if (v24)
    {

      if (v41)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

LABEL_23:

    if (!v21 && v20 == 0xE000000000000000 || (sub_257ED0640() & 1) != 0)
    {
    }

    goto LABEL_39;
  }

  if ((v24 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_21:
  if (sub_257ED0640())
  {
LABEL_22:

    v17 = 0;
    v28 = 0xE000000000000000;
    goto LABEL_30;
  }

  *v19 = v17;
  v19[1] = v18;

  v28 = v18;
LABEL_30:
  sub_257CBBC80(v13);
  if (_s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0())
  {
    v30 = qword_281548358;
    v31 = qword_281548358 + 48;
    v32 = swift_beginAccess();
    v46 = *(v30 + 48);
    v47 = *(v30 + 56);
    if (qword_2815447E0 != -1)
    {
      v32 = swift_once();
    }

    MEMORY[0x28223BE20](v32);
    *&v40[-16] = &v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90);
    sub_257ECFD50();
    v33 = v48;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_257BFCB3C(0, *(v33 + 2) + 1, 1, v33);
    }

    v35 = *(v33 + 2);
    v34 = *(v33 + 3);
    if (v35 >= v34 >> 1)
    {
      v33 = sub_257BFCB3C((v34 > 1), v35 + 1, 1, v33);
    }

    *(v33 + 2) = v35 + 1;
    v36 = &v33[16 * v35];
    *(v36 + 4) = v17;
    *(v36 + 5) = v28;
    v46 = v33;
    v37 = v42;
    v38 = sub_257ECF110();
    MEMORY[0x28223BE20](v38);
    *&v40[-16] = &v46;
    *&v40[-8] = v31;
    sub_257ECFD40();
    (*(v43 + 8))(v37, v44);

    swift_endAccess();
    return sub_257C15F24(v13, type metadata accessor for MAGOutputEvent);
  }

LABEL_39:
  sub_257C15F24(v13, type metadata accessor for MAGOutputEvent);
}

void sub_257CED4E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_257ECC3F0();
  v4 = a2;
  v3();
}

uint64_t sub_257CED550()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();

  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

unint64_t sub_257CED718()
{
  result = qword_27F8F7820;
  if (!qword_27F8F7820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7820);
  }

  return result;
}