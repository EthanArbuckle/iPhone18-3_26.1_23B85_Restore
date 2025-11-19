void *sub_2153D3050(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || (v6 = *(v3 + 24) >> 1, v6 < (v4 + v2)))
  {
    result = sub_2154A2E3C();
    v3 = *v1;
    v6 = *(*v1 + 24) >> 1;
  }

  v7 = *(v3 + 16);
  v8 = v6 - v7;
  if (v2)
  {
    if (v8 < v2)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    sub_2151A6C9C(0, &qword_281199620);
    result = swift_arrayInitWithCopy();
    v9 = *(v3 + 16);
    v7 = v9 + v2;
    if (__OFADD__(v9, v2))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    *(v3 + 16) = v7;
  }

  if (v2 == v8)
  {
    v10 = v5[2];
    if (v2 != v10)
    {
      if (v2 >= v10)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      v11 = v2 + 1;
      v20 = v5[v2 + 4];
      v12 = v20;
LABEL_14:
      while (1)
      {
        sub_2154A2E4C();
        v13 = *v1;
        v14 = *(*v1 + 24) >> 1;
        v15 = v14 - v7;
        if (v14 > v7)
        {
          break;
        }

        *(v13 + 16) = v7;
      }

      v16 = (v13 + 8 * v7 + 32);
      v17 = v7 + 1;
      result = v20;
      while (1)
      {
        *v16 = result;
        v18 = v5[2];
        if (v11 == v18)
        {
          *(v13 + 16) = v17;
          goto LABEL_21;
        }

        if (v11 >= v18)
        {
          break;
        }

        v19 = v11 + 1;
        result = v5[v11 + 4];
        ++v16;
        ++v17;
        ++v11;
        if (!--v15)
        {
          v20 = result;
          v7 = v14;
          v11 = v19;
          *(v13 + 16) = v14;
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_25;
    }
  }

LABEL_21:

  return sub_2154A2E1C();
}

void sub_2153D3220()
{
  *(v0 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_state) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_paperDocumentViewController) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_syncManager) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_syncCancellable) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_markupButton) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_findButton) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_shareButton) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_canFillForm) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_wantsToJumpIntoAutoFill) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_formFillingButton) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_doneButton) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_undoButton) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_redoButton) = 0;
  v1 = OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController__undoManager;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CCAD90]) init];
  *(v0 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_dataSource + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = (v0 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_dismissAction);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_forContextualPreview) = 0;
  sub_2154A2EDC();
  __break(1u);
}

uint64_t sub_2153D3374()
{
  v1 = sub_2154A172C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = *MEMORY[0x277CD9568];
  v10 = *(v2 + 104);
  v10(&v15 - v7, v9, v1, v6);
  v11 = sub_2154A170C();
  v16 = *(v2 + 8);
  result = v16(v8, v1);
  if (v11)
  {
    *(v0 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_state) = 1;
    result = (v10)(v4, v9, v1);
    v13 = *(v0 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_paperDocumentViewController);
    if (v13)
    {
      (*(v2 + 16))(v8, v4, v1);
      v14 = v13;
      sub_2154A14EC();

      sub_2153D0FFC();
      return v16(v4, v1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2153D3544(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = sub_21549E56C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E54C();
  if (!v14)
  {
    return 0;
  }

  v31 = v13;
  v32 = v11;
  v33 = v2;
  v15 = sub_2154A1D2C();
  v16 = sub_2154A1D2C();
  v17 = [v15 isEqual_];

  if (v17)
  {

    v18 = a1;
  }

  else
  {
    v19 = sub_2154A1D2C();

    v20 = sub_2154A1D2C();
    v21 = [v19 isEqual_];

    v18 = a1;
    if (!v21)
    {
      sub_2153D26F8(a1);
      return 0;
    }
  }

  v22 = objc_allocWithZone(MEMORY[0x277D6EED0]);
  v23 = sub_21549E49C();
  v24 = [v22 initWithURL_];

  if (!v24)
  {
    (*(v32 + 56))(v9, 1, 1, v10);
LABEL_12:
    sub_2151ADCD8(v9, &unk_27CA5B090);
    sub_2153D26F8(v18);

    return 1;
  }

  v25 = [v24 URL];
  v26 = v32;
  if (v25)
  {
    v27 = v25;
    sub_21549E51C();

    (*(v26 + 56))(v6, 0, 1, v10);
  }

  else
  {
    (*(v32 + 56))(v6, 1, 1, v10);
  }

  sub_215323B30(v6, v9);
  if ((*(v26 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_12;
  }

  v29 = v31;
  (*(v26 + 32))(v31, v9, v10);
  sub_2153D26F8(v29);

  (*(v26 + 8))(v29, v10);
  return 0;
}

void sub_2153D38CC(uint64_t a1)
{
  v3 = *(sub_21549E56C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2153D2B28(a1, v1 + v4, v5);
}

uint64_t sub_2153D3988(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *sub_2153D39D8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2154A2C8C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_21531B5CC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x216069960](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_21531B5CC((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_2151A6C9C(0, &qword_27CA5C410);
        v16 = &protocol witness table for SidecarDevice;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_2151C6B0C(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_21531B5CC((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_2151A6C9C(0, &qword_27CA5C410);
        v16 = &protocol witness table for SidecarDevice;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        sub_2151C6B0C(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2153D3BB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v29 = MEMORY[0x277D84F90];
    sub_21531B794(0, v1, 0);
    v2 = v29;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[1];
      v28[0] = *v4;
      v28[1] = v5;
      v6 = v4[3];
      v28[2] = v4[2];
      v28[3] = v6;
      v26 = &type metadata for ScrollView1D;
      v27 = &off_282755BA8;
      v7 = swift_allocObject();
      v25[0] = v7;
      v8 = v4[1];
      v7[1] = *v4;
      v7[2] = v8;
      v9 = v4[3];
      v7[3] = v4[2];
      v7[4] = v9;
      sub_2153D59DC(v28, &v22);
      v29 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_21531B794((v10 > 1), v11 + 1, 1);
        v2 = v29;
      }

      v12 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
      v21 = &v21;
      v13 = MEMORY[0x28223BE20](v12);
      v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15, v13);
      v23 = &type metadata for ScrollView1D;
      v24 = &off_282755BA8;
      v17 = swift_allocObject();
      *&v22 = v17;
      v18 = v15[1];
      v17[1] = *v15;
      v17[2] = v18;
      v19 = v15[3];
      v17[3] = v15[2];
      v17[4] = v19;
      *(v2 + 16) = v11 + 1;
      sub_2151C6B0C(&v22, v2 + 40 * v11 + 32);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t SidecarService.title.getter(unint64_t a1)
{
  v1 = sub_2153D3F3C(a1);
  v2 = [v1 localizedDescription];

  v3 = sub_2154A1D6C();
  return v3;
}

uint64_t SidecarService.systemImageName.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x776569762E636F64;
    }

    if (a1 == 3)
    {
      return 0x6172642E646E6168;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x6172656D6163;
    }

    if (a1 == 1)
    {
      return 0x776569762E636F64;
    }
  }

  result = sub_2154A2FDC();
  __break(1u);
  return result;
}

uint64_t sub_2153D3EF0()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5C3E8);
  __swift_project_value_buffer(v0, qword_27CA5C3E8);
  return sub_21549F0EC();
}

id sub_2153D3F3C(unint64_t a1)
{
  if (a1 >= 4)
  {
    result = sub_2154A2FDC();
    __break(1u);
  }

  else
  {
    v1 = [objc_opt_self() serviceWithName_];

    return v1;
  }

  return result;
}

unint64_t sub_2153D3FEC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2153D5668(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t SidecarServiceMenuItem.type.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICSidecarServiceMenuItem_type);

  return v1;
}

uint64_t SidecarServiceMenuItem.data.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICSidecarServiceMenuItem_data);
  sub_215324200(v1, *(v0 + OBJC_IVAR___ICSidecarServiceMenuItem_data + 8));
  return v1;
}

id SidecarServiceMenuItem.__allocating_init(type:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___ICSidecarServiceMenuItem_type];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR___ICSidecarServiceMenuItem_data];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id SidecarServiceMenuItem.init(type:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR___ICSidecarServiceMenuItem_type];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v4[OBJC_IVAR___ICSidecarServiceMenuItem_data];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

id SidecarServiceMenuItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SidecarServiceMenuItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SidecarServiceProviderResponse.init(error:items:service:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void sub_2153D4458(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = [a1 items];
  sub_2151A6C9C(0, &qword_27CA5C458);
  v5 = sub_2154A1F4C();

  v44 = MEMORY[0x277D84F90];
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_20:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_19:
  v6 = sub_2154A2C8C();
  if (!v6)
  {
    goto LABEL_20;
  }

LABEL_3:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x216069960](v9, v5);
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v12 = [v10 data];
      if (v12)
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_21;
      }
    }

    v38 = a2;
    v13 = v12;
    v37 = sub_21549E59C();
    v40 = v14;

    v15 = [v11 type];
    v16 = sub_2154A1D6C();
    v36 = v17;

    v18 = type metadata accessor for SidecarServiceMenuItem();
    v19 = objc_allocWithZone(v18);
    v20 = &v19[OBJC_IVAR___ICSidecarServiceMenuItem_type];
    *v20 = v16;
    v20[1] = v36;
    v21 = &v19[OBJC_IVAR___ICSidecarServiceMenuItem_data];
    *v21 = v37;
    v21[1] = v40;
    sub_215324200(v37, v40);
    v43.receiver = v19;
    v43.super_class = v18;
    objc_msgSendSuper2(&v43, sel_init);

    v22 = sub_215324170(v37, v40);
    MEMORY[0x216068AC0](v22);
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2154A1F8C();
    }

    sub_2154A1FAC();
    v8 = v44;
    a2 = v38;
  }

  while (v7 != v6);
LABEL_21:

  v23 = [a1 error];

  v24 = [a1 items];
  v25 = sub_2154A1F4C();

  if (v25 >> 62)
  {
    v26 = sub_2154A2C8C();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 >> 62)
  {
    if (sub_2154A2C8C() < v26)
    {
      goto LABEL_25;
    }

LABEL_37:

    goto LABEL_38;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v26)
  {
    goto LABEL_37;
  }

LABEL_25:
  if (qword_27CA598B8 != -1)
  {
    swift_once();
  }

  v27 = sub_21549F11C();
  __swift_project_value_buffer(v27, qword_27CA5C3E8);

  v28 = a1;
  v29 = sub_21549F0FC();
  v30 = sub_2154A226C();
  if (os_log_type_enabled(v29, v30))
  {
    v39 = a2;
    v31 = swift_slowAlloc();
    *v31 = 134218240;
    v32 = [v28 items];
    v33 = sub_2154A1F4C();

    if (v33 >> 62)
    {
      v34 = sub_2154A2C8C();
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v31 + 4) = v34;

    *(v31 + 12) = 2048;
    if (v8 >> 62)
    {
      v35 = sub_2154A2C8C();
    }

    else
    {
      v35 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v31 + 14) = v35;

    _os_log_impl(&dword_2151A1000, v29, v30, "Unable to return all items. Received %ld from Sidecar but only %ld were able to get transformed to a SidecarServiceMenuItem.", v31, 0x16u);
    MEMORY[0x21606B520](v31, -1, -1);

    a2 = v39;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

LABEL_38:
  *a3 = v23;
  a3[1] = v8;
  a3[2] = a2;
}

uint64_t sub_2153D494C(uint64_t a1, void *a2, void (*a3)(uint64_t, id *))
{
  v4[0] = 0;
  v4[1] = MEMORY[0x277D84F90];
  v4[2] = a2;
  a3(1, v4);
}

uint64_t SidecarDevice.supportsService(_:)(unint64_t a1)
{
  if (a1 == 1 && (v2 = SidecarDevice.supportsService(_:)(2), a1 = 1, (v2 & 1) != 0))
  {
    v3 = 0;
  }

  else
  {
    v4 = sub_2153D3F3C(a1);
    v5 = [v4 devices];

    sub_2151A6C9C(0, &qword_27CA5C410);
    v6 = sub_2154A1F4C();

    v10 = v1;
    MEMORY[0x28223BE20](v7);
    v9[2] = &v10;
    v3 = sub_215384F48(sub_2153D5678, v9, v6);
  }

  return v3 & 1;
}

uint64_t sub_2153D4AD8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  v5 = sub_2154A1D6C();

  return v5;
}

void sub_2153D4B2C()
{
  v1 = [*v0 deviceType];
  sub_21549EFCC();
}

void sub_2153D4BFC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v86 = a3;
  v87 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C430);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v78 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C438);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v78 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C440);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v78 - v18;
  if (*(v5 + 16))
  {
    if (qword_27CA598B8 != -1)
    {
      swift_once();
    }

    v20 = sub_21549F11C();
    __swift_project_value_buffer(v20, qword_27CA5C3E8);
    sub_215333D74(a1, v89);
    v21 = sub_21549F0FC();
    v22 = sub_2154A226C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v88 = v24;
      *v23 = 136315394;
      v25 = sub_2153D3F3C(a2);
      v26 = [v25 localizedDescription];

      v27 = sub_2154A1D6C();
      v29 = v28;

      v30 = sub_215348D98(v27, v29, &v88);

      *(v23 + 4) = v30;
      *(v23 + 12) = 2080;
      v31 = v90;
      v32 = v91;
      __swift_project_boxed_opaque_existential_0Tm(v89, v90);
      v33 = (*(v32 + 16))(v31, v32);
      v35 = v34;
      __swift_destroy_boxed_opaque_existential_0Tm(v89);
      v36 = sub_215348D98(v33, v35, &v88);

      *(v23 + 14) = v36;
      _os_log_impl(&dword_2151A1000, v21, v22, "Unable to start service %s on %s since there is already a request in progress", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21606B520](v24, -1, -1);
      MEMORY[0x21606B520](v23, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v89);
    }
  }

  else
  {
    v83 = v10;
    v84 = v11;
    v85 = v17;
    if (qword_27CA598B8 != -1)
    {
      swift_once();
    }

    v37 = sub_21549F11C();
    __swift_project_value_buffer(v37, qword_27CA5C3E8);
    sub_215333D74(a1, v89);
    v38 = sub_21549F0FC();
    v39 = sub_2154A224C();
    v40 = os_log_type_enabled(v38, v39);
    v82 = v12;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v88 = v79;
      *v41 = 136315394;
      v42 = sub_2153D3F3C(a2);
      v43 = [v42 localizedDescription];
      v81 = a2;
      v44 = v43;

      v45 = sub_2154A1D6C();
      v80 = a1;
      v46 = v19;
      v47 = v16;
      v48 = v14;
      v50 = v49;

      v51 = sub_215348D98(v45, v50, &v88);

      *(v41 + 4) = v51;
      *(v41 + 12) = 2080;
      v52 = v90;
      v53 = v91;
      __swift_project_boxed_opaque_existential_0Tm(v89, v90);
      v54 = *(v53 + 16);
      v55 = v53;
      v14 = v48;
      v16 = v47;
      v19 = v46;
      a1 = v80;
      v56 = v54(v52, v55);
      v58 = v57;
      __swift_destroy_boxed_opaque_existential_0Tm(v89);
      v59 = sub_215348D98(v56, v58, &v88);
      a2 = v81;

      *(v41 + 14) = v59;
      _os_log_impl(&dword_2151A1000, v38, v39, "Starting service %s on %s", v41, 0x16u);
      v60 = v79;
      swift_arrayDestroy();
      MEMORY[0x21606B520](v60, -1, -1);
      MEMORY[0x21606B520](v41, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v89);
    }

    *(v5 + 16) = 1;
    v61 = sub_2153D3F3C(a2);
    sub_215333D74(a1, v89);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A290);
    sub_2151A6C9C(0, &qword_27CA5C410);
    swift_dynamicCast();
    v62 = v88;
    v63 = [v61 makeRequestToDevice_];

    v64 = *(v5 + 24);
    *(v5 + 24) = v63;

    v65 = *(v5 + 24);
    if (v65 && ([v65 start], (v66 = *(v5 + 24)) != 0))
    {
      swift_getKeyPath();
      v67 = v66;
      sub_21549E41C();

      v68 = [objc_opt_self() mainRunLoop];
      v89[0] = v68;
      v69 = sub_2154A2B3C();
      v70 = v14;
      v71 = v83;
      (*(*(v69 - 8) + 56))(v83, 1, 1, v69);
      sub_2151A6C9C(0, &qword_281199448);
      sub_2151ACC5C(&qword_27CA5C448, &qword_27CA5C438);
      sub_2151ACCA4();
      v72 = v84;
      sub_21549F3BC();
      sub_2153D5968(v71);

      (*(v82 + 8))(v70, v72);
      v73 = swift_allocObject();
      swift_weakInit();
      v74 = swift_allocObject();
      v74[2] = v73;
      v74[3] = a2;
      v75 = v87;
      v74[4] = v86;
      v74[5] = v75;
      sub_2151ACC5C(&qword_27CA5C450, &qword_27CA5C440);

      v76 = v85;
      v77 = sub_21549F3EC();

      (*(v16 + 8))(v19, v76);
    }

    else
    {
      v77 = 0;
    }

    *(v5 + 32) = v77;
  }
}

uint64_t sub_2153D5470(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void **))
{
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + 24);
    if (v8)
    {
      v9 = result;
      v10 = v8;
      sub_2153D4458(v10, a3, &v12);
      v11 = v12;
      a4(v6, &v12);

      *(v9 + 16) = 0;
    }
  }

  return result;
}

uint64_t sub_2153D5544()
{

  return swift_deallocClassInstance();
}

void *sub_2153D5584()
{
  v0 = [objc_opt_self() allDevices];
  sub_2151A6C9C(0, &qword_27CA5C410);
  v1 = sub_2154A1F4C();

  v2 = sub_2153D39D8(v1);

  return v2;
}

uint64_t sub_2153D562C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  *(*v0 + 24) = 0;

  *(v1 + 32) = 0;

  *(v1 + 16) = 0;
  return result;
}

unint64_t sub_2153D5668(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2153D56E4()
{
  result = qword_27CA5C418;
  if (!qword_27CA5C418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5C418);
  }

  return result;
}

uint64_t sub_2153D582C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2153D5874(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2153D5968(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2153D5A3C(uint64_t a1)
{
  v2 = sub_2154A315C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21533FC88(a1, v12);
  v6 = sub_2153D6050();
  if (swift_dynamicCast())
  {
    return v11[0];
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_2154A2D9C();

  strcpy(v11, "Cannot cast ");
  BYTE5(v11[1]) = 0;
  HIWORD(v11[1]) = -5120;
  sub_21533FC88(a1, v12);
  sub_2154A314C();
  v8 = sub_2154A2F7C();
  MEMORY[0x2160689F0](v8);

  v9 = *(v3 + 8);
  v9(v5, v2);
  MEMORY[0x2160689F0](544432416, 0xE400000000000000);
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C468);
  v12[0] = v6;
  sub_2154A314C();
  v10 = sub_2154A2F7C();
  MEMORY[0x2160689F0](v10);

  v9(v5, v2);
  result = sub_2154A2EDC();
  __break(1u);
  return result;
}

uint64_t sub_2153D5C80(uint64_t a1)
{
  v2 = sub_2154A315C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21533FC88(a1, v12);
  v6 = MEMORY[0x277CE0AE0];
  if (swift_dynamicCast())
  {
    return v11[0];
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_2154A2D9C();

  strcpy(v11, "Cannot cast ");
  BYTE5(v11[1]) = 0;
  HIWORD(v11[1]) = -5120;
  sub_21533FC88(a1, v12);
  sub_2154A314C();
  v8 = sub_2154A2F7C();
  MEMORY[0x2160689F0](v8);

  v9 = *(v3 + 8);
  v9(v5, v2);
  MEMORY[0x2160689F0](544432416, 0xE400000000000000);
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C460);
  v12[0] = v6;
  sub_2154A314C();
  v10 = sub_2154A2F7C();
  MEMORY[0x2160689F0](v10);

  v9(v5, v2);
  result = sub_2154A2EDC();
  __break(1u);
  return result;
}

uint64_t sub_2153D5ECC()
{
  v1 = [v0 primaryFont];
  sub_2154A085C();
  [v0 setPrimaryFontStorage_];
  swift_unknownObjectRelease();
  v2 = [v0 secondaryFont];
  sub_2154A085C();
  [v0 setSecondaryFontStorage_];
  return swift_unknownObjectRelease();
}

uint64_t sub_2153D5FEC(SEL *a1)
{
  v2 = [v1 *a1];
  sub_2154A2BCC();
  swift_unknownObjectRelease();
  v3 = sub_2153D5C80(v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v5);
  return v3;
}

unint64_t sub_2153D6050()
{
  result = qword_27CA5C700;
  if (!qword_27CA5C700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA5C700);
  }

  return result;
}

id ICNoteEditorContextualMenuButton.Configuration.MenuState.__allocating_init(image:title:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfigurationMenuState_image] = a1;
  v10 = &v9[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfigurationMenuState_title];
  *v10 = a2;
  *(v10 + 1) = a3;
  *&v9[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfigurationMenuState_context] = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id ICNoteEditorContextualMenuButton.Configuration.MenuState.init(image:title:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfigurationMenuState_image] = a1;
  v5 = &v4[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfigurationMenuState_title];
  *v5 = a2;
  *(v5 + 1) = a3;
  *&v4[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfigurationMenuState_context] = a4;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for ICNoteEditorContextualMenuButton.Configuration.MenuState();
  return objc_msgSendSuper2(&v7, sel_init);
}

id ICNoteEditorContextualMenuButton.Configuration.MenuState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICNoteEditorContextualMenuButton.Configuration.MenuState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICNoteEditorContextualMenuButton.Configuration.MenuState();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ICNoteEditorContextualMenuButton.Configuration.init(image:activeImageForContext:menuOptions:defaultMenuOption:stateChangedHandler:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  if (!a2)
  {
    a2 = sub_215328988(MEMORY[0x277D84F90]);
  }

  v11 = sub_21532888C(MEMORY[0x277D84F90]);
  v57 = a7;
  v55 = a5;
  v56 = a6;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = sub_2154A2EAC() | 0x8000000000000000;
  }

  else
  {
    v16 = -1 << *(a2 + 32);
    v13 = ~v16;
    v12 = a2 + 64;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v14 = v18 & *(a2 + 64);
    v15 = a2;
  }

  v19 = 0;
  v20 = (v13 + 64) >> 6;
  v59 = v15;
  v60 = v20;
  v58 = v12;
  while ((v15 & 0x8000000000000000) != 0)
  {
    if (!sub_2154A2ECC() || (sub_2151A6C9C(0, &qword_2811994B0), swift_dynamicCast(), sub_2151A6C9C(0, &qword_2811994B8), v29 = v61, swift_dynamicCast(), v30 = v61, v25 = v19, v26 = v14, !v61))
    {
LABEL_32:
      sub_2151A66EC();

      v46 = objc_allocWithZone(ObjectType);
      *&v46[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfiguration_image] = a1;
      *&v46[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfiguration_activeImageForContext] = v11;
      *&v46[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfiguration_menuOptions] = a3;
      v47 = &v46[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfiguration_defaultMenuOption];
      *v47 = a4;
      *(v47 + 1) = v55;
      v48 = &v46[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfiguration_stateChangedHandler];
      *v48 = v56;
      *(v48 + 1) = v57;
      v62.receiver = v46;
      v62.super_class = ObjectType;
      v49 = objc_msgSendSuper2(&v62, sel_init);
      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return v49;
    }

LABEL_21:
    v31 = v29;
    v32 = [v29 integerValue];
    v33 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v11;
    v36 = sub_2153B0E30(v32);
    v37 = v11[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_34;
    }

    v40 = v35;
    if (v11[3] >= v39)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v35)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_2153DD230();
        if (v40)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_2153DB168(v39, isUniquelyReferenced_nonNull_native);
      v41 = sub_2153B0E30(v32);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_36;
      }

      v36 = v41;
      if (v40)
      {
LABEL_10:
        v21 = v11[7];
        v22 = *(v21 + 8 * v36);
        *(v21 + 8 * v36) = v33;

        goto LABEL_11;
      }
    }

    v11[(v36 >> 6) + 8] |= 1 << v36;
    *(v11[6] + 8 * v36) = v32;
    *(v11[7] + 8 * v36) = v33;

    v43 = v11[2];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
      goto LABEL_35;
    }

    v11[2] = v45;
LABEL_11:
    v19 = v25;
    v14 = v26;
    v12 = v58;
    v15 = v59;
    v20 = v60;
  }

  v23 = v19;
  v24 = v14;
  v25 = v19;
  if (v14)
  {
LABEL_17:
    v26 = (v24 - 1) & v24;
    v27 = (v25 << 9) | (8 * __clz(__rbit64(v24)));
    v28 = *(*(v15 + 56) + v27);
    v29 = *(*(v15 + 48) + v27);
    v30 = v28;
    if (!v29)
    {
      goto LABEL_32;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v20)
    {
      goto LABEL_32;
    }

    v24 = *(v12 + 8 * v25);
    ++v23;
    if (v24)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_2154A300C();
  __break(1u);
  return result;
}

id ICNoteEditorContextualMenuButton.Configuration.__allocating_init(image:activeImageForContext:menuOptions:defaultMenuOption:stateChangedHandler:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  *&v15[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfiguration_image] = a1;
  if (!a2)
  {
    a2 = sub_21532888C(MEMORY[0x277D84F90]);
  }

  *&v15[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfiguration_activeImageForContext] = a2;
  *&v15[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfiguration_menuOptions] = a3;
  v16 = &v15[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfiguration_defaultMenuOption];
  *v16 = a4;
  *(v16 + 1) = a5;
  v17 = &v15[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfiguration_stateChangedHandler];
  *v17 = a6;
  *(v17 + 1) = a7;
  v19.receiver = v15;
  v19.super_class = v7;
  return objc_msgSendSuper2(&v19, sel_init);
}

id ICNoteEditorContextualMenuButton.Configuration.init(image:activeImageForContext:menuOptions:defaultMenuOption:stateChangedHandler:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  *&v7[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfiguration_image] = a1;
  if (!a2)
  {
    a2 = sub_21532888C(MEMORY[0x277D84F90]);
  }

  *&v7[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfiguration_activeImageForContext] = a2;
  *&v7[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfiguration_menuOptions] = a3;
  v16 = &v7[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfiguration_defaultMenuOption];
  *v16 = a4;
  *(v16 + 1) = a5;
  v17 = &v7[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfiguration_stateChangedHandler];
  *v17 = a6;
  *(v17 + 1) = a7;
  v19.receiver = v7;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t ICNoteEditorContextualMenuButton.accessibilityDelegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ICNoteEditorContextualMenuButton.accessibilityDelegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___ICNoteEditorContextualMenuButton_accessibilityDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_21536F150;
}

char *ICNoteEditorContextualMenuButton.init(configuration:)(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___ICNoteEditorContextualMenuButton_activeContexts] = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR___ICNoteEditorContextualMenuButton_configuration] = a1;
  type metadata accessor for ICNoteEditorContextualBarButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = a1;
  v6 = [ObjCClassFromMetadata buttonWithType_];
  *&v1[OBJC_IVAR___ICNoteEditorContextualMenuButton_button] = v6;
  v7 = OBJC_IVAR___ICNoteEditorContextualMenuButtonConfiguration_image;
  [*&v5[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfiguration_image] size];
  v24.receiver = v1;
  v24.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, v8, v9);
  v11 = OBJC_IVAR___ICNoteEditorContextualMenuButton_button;
  v12 = *&v10[OBJC_IVAR___ICNoteEditorContextualMenuButton_button];
  v13 = *&v5[v7];
  v14 = v10;
  v15 = v12;
  v16 = [v13 imageWithRenderingMode_];
  [v15 setImage:v16 forState:0];

  if (_UISolariumEnabled())
  {
    [*&v10[v11] _setMonochromaticTreatment_];
    [*&v10[v11] _setEnableMonochromaticTreatment_];
  }

  v17 = *&v10[v11];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 ICTintColor];
  [v19 setTintColor_];

  v21 = *&v10[v11];
  v22 = sub_2153D7094(MEMORY[0x277D84FA0]);
  [v21 setMenu_];

  [v14 addSubview_];
  [*&v10[v11] ic_addAnchorsToFillSuperview];
  ICNoteEditorContextualMenuButton.setActiveContexts(_:)(MEMORY[0x277D84F90]);

  return v14;
}

uint64_t sub_2153D7094(unint64_t *a1)
{
  v3 = *(*(v1 + OBJC_IVAR___ICNoteEditorContextualMenuButton_configuration) + OBJC_IVAR___ICNoteEditorContextualMenuButtonConfiguration_menuOptions);
  if (v3 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2154A2C8C())
  {
    v5 = MEMORY[0x277D84F90];
    v40 = a1;
    if (!i)
    {
      break;
    }

    v41 = MEMORY[0x277D84F90];

    sub_2154A2E2C();
    if (i < 0)
    {
      __break(1u);
LABEL_34:
      v34 = a1;

      v31 = sub_2154A2EEC();

      goto LABEL_26;
    }

    v37 = v3;
    sub_2151A6C9C(0, &qword_281199480);
    v9 = 0;
    v38 = i;
    v39 = v3 & 0xC000000000000001;
    v35 = v3 + 32;
    v36 = v3 & 0xFFFFFFFFFFFFFF8;
    v10 = (a1 + 7);
    while (1)
    {
      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v39)
      {
        v16 = MEMORY[0x216069960](v9, v37, v6, v7, v8);
      }

      else
      {
        if (v9 >= *(v36 + 16))
        {
          goto LABEL_31;
        }

        v16 = *(v35 + 8 * v9);
      }

      v17 = v16;
      v18 = *&v16[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfigurationMenuState_image];
      v3 = a1[2];
      if (v3)
      {
        v19 = *&v16[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfigurationMenuState_context];
        v20 = sub_2154A30CC();
        v21 = -1 << *(a1 + 32);
        v22 = v20 & ~v21;
        if ((*&v10[(v22 >> 3) & 0xFFFFFFFFFFFFFF8] >> v22))
        {
          v23 = ~v21;
          while (*(a1[6] + 8 * v22) != v19)
          {
            v22 = (v22 + 1) & v23;
            if (((*&v10[(v22 >> 3) & 0xFFFFFFFFFFFFFF8] >> v22) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          if (v3 == 1)
          {
            v3 = 1;
          }

          else
          {
            v3 = 2;
          }
        }

        else
        {
LABEL_6:
          v3 = 0;
        }
      }

      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = v11;

      v14 = v18;
      sub_2154A295C();

      sub_2154A2E0C();
      sub_2154A2E4C();
      sub_2154A2E5C();
      sub_2154A2E1C();
      v9 = v15;
      a1 = v40;
      if (v15 == v38)
      {

        v5 = v41;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_23:
  v24 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2154BDB20;
  sub_2151A6C9C(0, &qword_281199480);
  v26 = [objc_opt_self() mainBundle];
  sub_21549E2CC();

  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v25 + 32) = sub_2154A295C();
  sub_2151A6C9C(0, &qword_281199650);
  v28 = sub_2154A1F3C();

  a1 = [v24 ic:v28 inlineMenuWithChildren:{0, 0, 0, sub_2153DDC24, v27}];

  if (v40[2])
  {
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2154BDB20;
    *(v29 + 32) = a1;
    if (v5 >> 62)
    {
      goto LABEL_34;
    }

    v30 = a1;

    sub_2154A2FBC();
    v31 = v5;
LABEL_26:

    sub_21547ED70(v31);
    goto LABEL_29;
  }

  if (v5 >> 62)
  {
    sub_2154A2EEC();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    sub_2154A2FBC();
  }

LABEL_29:
  sub_2151A6C9C(0, &qword_2811994E0);
  v32 = sub_2154A28AC();

  return v32;
}

Swift::Void __swiftcall ICNoteEditorContextualMenuButton.setActiveContexts(_:)(Swift::OpaquePointer a1)
{

  v4 = sub_21536597C(v3);

  v43 = OBJC_IVAR___ICNoteEditorContextualMenuButton_activeContexts;
  *(v1 + OBJC_IVAR___ICNoteEditorContextualMenuButton_activeContexts) = v4;

  v5 = *(v1 + OBJC_IVAR___ICNoteEditorContextualMenuButton_button);
  v6 = sub_2153D7094(v4);

  [v5 setMenu_];

  v7 = *(v1 + OBJC_IVAR___ICNoteEditorContextualMenuButton_configuration);
  v42 = v1;
  if (*(a1._rawValue + 2))
  {
    v8 = *(v7 + OBJC_IVAR___ICNoteEditorContextualMenuButtonConfiguration_activeImageForContext);
    if (*(v8 + 16) && (v9 = sub_2153B0E30(*(a1._rawValue + 4)), (v10 & 1) != 0))
    {
      v11 = (*(v8 + 56) + 8 * v9);
      v1 = v42;
    }

    else
    {
      v11 = (v7 + OBJC_IVAR___ICNoteEditorContextualMenuButtonConfiguration_image);
      v1 = v42;
    }
  }

  else
  {
    v11 = (v7 + OBJC_IVAR___ICNoteEditorContextualMenuButtonConfiguration_image);
  }

  v40 = *v11;
  v41 = v5;
  [v5 setImage_forState_];
  v38 = v7;
  v12 = *(v7 + OBJC_IVAR___ICNoteEditorContextualMenuButtonConfiguration_menuOptions);
  v44 = MEMORY[0x277D84F90];
  if (v12 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2154A2C8C())
  {

    v14 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v15 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x216069960](v15, v12);
      }

      else
      {
        if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v16 = *(v12 + 32 + 8 * v15);
      }

      v17 = v16;
      if (__OFADD__(v15++, 1))
      {
        break;
      }

      v19 = *(v1 + v43);
      if (*(v19 + 16))
      {
        v20 = *&v16[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfigurationMenuState_context];
        v21 = sub_2154A30CC();
        v22 = -1 << *(v19 + 32);
        v23 = v21 & ~v22;
        if ((*(v19 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
        {
          v24 = ~v22;
          while (*(*(v19 + 48) + 8 * v23) != v20)
          {
            v23 = (v23 + 1) & v24;
            if (((*(v19 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          sub_2154A2E0C();
          sub_2154A2E4C();
          sub_2154A2E5C();
          sub_2154A2E1C();
        }

        else
        {
LABEL_21:
        }

        v1 = v42;
        if (v15 == i)
        {
LABEL_26:
          v25 = v44;
          v14 = MEMORY[0x277D84F90];
          goto LABEL_28;
        }
      }

      else
      {

        if (v15 == i)
        {
          goto LABEL_26;
        }
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

  v25 = MEMORY[0x277D84F90];
LABEL_28:

  if (v25 < 0 || (v25 & 0x4000000000000000) != 0)
  {
    v26 = sub_2154A2C8C();
    if (v26)
    {
LABEL_31:
      sub_21531B5AC(0, v26 & ~(v26 >> 63), 0);
      if (v26 < 0)
      {
        __break(1u);
        return;
      }

      v27 = 0;
      v28 = v14;
      do
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x216069960](v27, v25);
        }

        else
        {
          v29 = *(v25 + 8 * v27 + 32);
        }

        v30 = v29;
        v31 = *&v29[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfigurationMenuState_title];
        v32 = *&v29[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfigurationMenuState_title + 8];

        v34 = *(v28 + 16);
        v33 = *(v28 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_21531B5AC((v33 > 1), v34 + 1, 1);
        }

        ++v27;
        *(v28 + 16) = v34 + 1;
        v35 = v28 + 16 * v34;
        *(v35 + 32) = v31;
        *(v35 + 40) = v32;
      }

      while (v26 != v27);

      if (*(v28 + 16))
      {
        goto LABEL_40;
      }

      goto LABEL_46;
    }
  }

  else
  {
    v26 = *(v25 + 16);
    if (v26)
    {
      goto LABEL_31;
    }
  }

  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_40:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E9F0);
    sub_21535378C();
    sub_2154A1CBC();

    v36 = sub_2154A1D2C();

    goto LABEL_47;
  }

LABEL_46:

  v36 = 0;
LABEL_47:
  [v41 setAccessibilityValue_];

  if (*(v39 + OBJC_IVAR___ICNoteEditorContextualMenuButtonConfiguration_defaultMenuOption) && !*(*(v42 + v43) + 16))
  {
    [v41 addTarget:v42 action:sel_buttonPressedHandler forControlEvents:64];
    v37 = 0;
  }

  else
  {
    [v41 removeTarget:v42 action:sel_buttonPressedHandler forControlEvents:64];
    v37 = 1;
  }

  [v41 setShowsMenuAsPrimaryAction_];
}

id ICNoteEditorContextualMenuButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ICNoteEditorContextualMenuButton.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___ICNoteEditorContextualMenuButton_activeContexts) = MEMORY[0x277D84FA0];
  sub_2154A2EDC();
  __break(1u);
}

Swift::Void __swiftcall ICNoteEditorContextualMenuButton.setActiveContext(_:)(NSNumber_optional a1)
{
  if (a1.value.super.super.isa)
  {
    isa = a1.value.super.super.isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A548);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_2154BDB50;
    *(v2 + 32) = [(objc_class *)isa integerValue];
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  ICNoteEditorContextualMenuButton.setActiveContexts(_:)(v2);
}

Swift::Void __swiftcall ICNoteEditorContextualMenuButton.setActiveContextsAsNumbers(_:)(Swift::OpaquePointer a1)
{
  if (a1._rawValue >> 62)
  {
    v2 = sub_2154A2C8C();
  }

  else
  {
    v2 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3._rawValue = MEMORY[0x277D84F90];
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    sub_21531B734(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return;
    }

    v3._rawValue = v13;
    if ((a1._rawValue & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        v5 = [MEMORY[0x216069960](i a1._rawValue)];
        swift_unknownObjectRelease();
        v7 = v13[2];
        v6 = v13[3];
        if (v7 >= v6 >> 1)
        {
          sub_21531B734((v6 > 1), v7 + 1, 1);
        }

        v13[2] = v7 + 1;
        v13[v7 + 4] = v5;
      }
    }

    else
    {
      v8 = (a1._rawValue + 32);
      do
      {
        v9 = [*v8 integerValue];
        rawValue = v3._rawValue;
        v11 = *(v3._rawValue + 2);
        v10 = *(v3._rawValue + 3);
        if (v11 >= v10 >> 1)
        {
          v12 = v9;
          sub_21531B734((v10 > 1), v11 + 1, 1);
          v9 = v12;
          v3._rawValue = rawValue;
        }

        *(v3._rawValue + 2) = v11 + 1;
        *(v3._rawValue + v11 + 4) = v9;
        ++v8;
        --v2;
      }

      while (v2);
    }
  }

  ICNoteEditorContextualMenuButton.setActiveContexts(_:)(v3);
}

void sub_2153D8084()
{
  v1 = *(v0 + OBJC_IVAR___ICNoteEditorContextualMenuButton_configuration);
  v2 = *(v1 + OBJC_IVAR___ICNoteEditorContextualMenuButtonConfiguration_defaultMenuOption);
  if (v2 && !*(*(v0 + OBJC_IVAR___ICNoteEditorContextualMenuButton_activeContexts) + 16))
  {

    v4 = v2(v3);
    v5 = *(v1 + OBJC_IVAR___ICNoteEditorContextualMenuButtonConfiguration_stateChangedHandler);

    v5(v4);

    sub_2151AF750(v2);
  }
}

void sub_2153D81A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = *(v2 + OBJC_IVAR___ICNoteEditorContextualMenuButton_configuration);

      v5 = *&v4[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfiguration_stateChangedHandler];

      v6 = v1;
      v5(v1);
    }
  }
}

uint64_t sub_2153D8284()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR___ICNoteEditorContextualMenuButton_configuration);

    v3 = *&v2[OBJC_IVAR___ICNoteEditorContextualMenuButtonConfiguration_stateChangedHandler];

    v3(0);
  }

  return result;
}

uint64_t ICNoteEditorContextualMenuButton.accessibilityElements.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A340);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2154BDB50;
  v2 = *(v0 + OBJC_IVAR___ICNoteEditorContextualMenuButton_button);
  *(v1 + 56) = type metadata accessor for ICMorphableButton();
  *(v1 + 32) = v2;
  v3 = v2;
  return v1;
}

uint64_t (*ICNoteEditorContextualMenuButton.accessibilityElements.modify(uint64_t *a1))()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A340);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2154BDB50;
  v4 = *(v1 + OBJC_IVAR___ICNoteEditorContextualMenuButton_button);
  *(v3 + 56) = type metadata accessor for ICMorphableButton();
  *(v3 + 32) = v4;
  *a1 = v3;
  v5 = v4;
  return sub_2153D8514;
}

void (*ICNoteEditorContextualMenuButton.accessibilityLabel.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR___ICNoteEditorContextualMenuButton_button);
  a1[2] = v3;
  v4 = [v3 accessibilityLabel];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2154A1D6C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_2153D85DC;
}

void sub_2153D860C(char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    sub_2154A1D6C();
    v6 = *&a1[OBJC_IVAR___ICNoteEditorContextualMenuButton_button];
    v7 = a1;
    v9 = sub_2154A1D2C();
  }

  else
  {
    v6 = *&a1[OBJC_IVAR___ICNoteEditorContextualMenuButton_button];
    v8 = a1;
    v9 = 0;
  }

  [v6 *a4];
}

void sub_2153D86D0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *(v3 + OBJC_IVAR___ICNoteEditorContextualMenuButton_button);
  if (a2)
  {
    v6 = sub_2154A1D2C();
  }

  else
  {
    v6 = 0;
  }

  [v5 *a3];
}

void (*ICNoteEditorContextualMenuButton.accessibilityValue.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR___ICNoteEditorContextualMenuButton_button);
  a1[2] = v3;
  v4 = [v3 accessibilityValue];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2154A1D6C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_2153D87E0;
}

void sub_2153D87EC(uint64_t a1, char a2, SEL *a3)
{
  v5 = *(a1 + 8);
  if (a2)
  {
    if (v5)
    {

      v6 = sub_2154A1D2C();
    }

    else
    {
      v6 = 0;
    }

    [*(a1 + 16) *a3];
  }

  else if (v5)
  {
    v6 = sub_2154A1D2C();

    [*(a1 + 16) *a3];
  }

  else
  {
    v6 = 0;
    [*(a1 + 16) *a3];
  }
}

uint64_t ICNoteEditorContextualMenuButton.accessibilityCustomContent.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = [Strong accessibilityCustomContentFor_];
  swift_unknownObjectRelease();
  sub_2151A6C9C(0, &qword_27CA5C4D0);
  v3 = sub_2154A1F4C();

  return v3;
}

uint64_t (*ICNoteEditorContextualMenuButton.accessibilityCustomContent.modify(uint64_t a1))()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = [Strong accessibilityCustomContentFor_];
    swift_unknownObjectRelease();
    sub_2151A6C9C(0, &qword_27CA5C4D0);
    v5 = sub_2154A1F4C();
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 24) = v5;
  return sub_2153D8B24;
}

id ICNoteEditorContextualMenuButton.largeContentImage.getter()
{
  v1 = [*(v0 + OBJC_IVAR___ICNoteEditorContextualMenuButton_button) largeContentImage];

  return v1;
}

id sub_2153D8CC8(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR___ICNoteEditorContextualMenuButton_button];
  v5 = a1;
  v6 = [v4 *a3];
  if (v6)
  {
    v7 = v6;
    sub_2154A1D6C();

    v8 = sub_2154A1D2C();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

uint64_t sub_2153D8D78(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR___ICNoteEditorContextualMenuButton_button) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2154A1D6C();

  return v4;
}

uint64_t (*ICNoteEditorContextualMenuButton.largeContentTitle.modify(uint64_t *a1))()
{
  v3 = [*(v1 + OBJC_IVAR___ICNoteEditorContextualMenuButton_button) largeContentTitle];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2154A1D6C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_2153D8E80;
}

id ICNoteEditorContextualMenuButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

Swift::Void __swiftcall ICNoteEditorContextualMenuButton.ic_setMorphContainer(_:)(UIView_optional *a1)
{
  v2 = *(v1 + OBJC_IVAR___ICNoteEditorContextualMenuButton_button);
  v3 = *(v2 + OBJC_IVAR____TtC11NotesEditor17ICMorphableButton_ic_morphContainer);
  *(v2 + OBJC_IVAR____TtC11NotesEditor17ICMorphableButton_ic_morphContainer) = a1;

  v4 = a1;
}

id sub_2153D9010(void *a1)
{
  v2 = *(*v1 + OBJC_IVAR___ICNoteEditorContextualMenuButton_button);
  v3 = *(v2 + OBJC_IVAR____TtC11NotesEditor17ICMorphableButton_ic_morphContainer);
  *(v2 + OBJC_IVAR____TtC11NotesEditor17ICMorphableButton_ic_morphContainer) = a1;

  return a1;
}

uint64_t sub_2153D9080(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5A790);
  result = sub_2154A2F2C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v29 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      sub_2154A30DC();
      MEMORY[0x216069C80](v29);
      MEMORY[0x216069C80](*(&v29 + 1));
      result = sub_2154A312C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v29;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2153D9320(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C4E8);
  v35 = a2;
  result = sub_2154A2F2C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v35 & 1) == 0)
      {
        v25 = v21;
      }

      result = sub_2154A290C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2153D95B8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_21549E56C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AB08);
  v44 = a2;
  result = sub_2154A2F2C();
  v11 = result;
  if (*(v9 + 16))
  {
    v49 = v8;
    v40 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v9;
    v43 = v6;
    v45 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v48 = *(v43 + 72);
      v27 = v26 + v48 * v25;
      if (v44)
      {
        (*v45)(v49, v27, v5);
        v28 = (*(v9 + 56) + 16 * v25);
        v29 = *v28;
        v46 = v28[1];
        v47 = v29;
      }

      else
      {
        (*v41)(v49, v27, v5);
        v30 = (*(v9 + 56) + 16 * v25);
        v31 = *v30;
        v46 = v30[1];
        v47 = v31;
      }

      sub_2153DDB70(&unk_27CA5B110, MEMORY[0x277CC9260]);
      result = sub_2154A1C9C();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v11 + 48) + v48 * v19, v49, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      v21 = v46;
      *v20 = v47;
      v20[1] = v21;
      ++*(v11 + 16);
      v9 = v42;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_2153D99B4(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = v3;
  v7 = sub_21549E56C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v41 = a2;
  result = sub_2154A2F2C();
  v13 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v37 = v3;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v38 = (v8 + 16);
    v39 = v11;
    v40 = v8;
    v42 = (v8 + 32);
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = v22 | (v14 << 6);
      v26 = *(v11 + 48);
      v44 = *(v40 + 72);
      v27 = v26 + v44 * v25;
      if (v41)
      {
        (*v42)(v45, v27, v7);
        v43 = *(*(v11 + 56) + 8 * v25);
      }

      else
      {
        (*v38)(v45, v27, v7);
        v43 = *(*(v11 + 56) + 8 * v25);
      }

      sub_2153DDB70(&unk_27CA5B110, MEMORY[0x277CC9260]);
      result = sub_2154A1C9C();
      v28 = -1 << *(v13 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v20 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v20 + 8 * v30);
          if (v34 != -1)
          {
            v21 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v29) & ~*(v20 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = (*v42)(*(v13 + 48) + v44 * v21, v45, v7);
      *(*(v13 + 56) + 8 * v21) = v43;
      ++*(v13 + 16);
      v11 = v39;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v11 + 32);
    v5 = v37;
    if (v35 >= 64)
    {
      bzero(v15, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v35;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v5 = v13;
  return result;
}

uint64_t sub_2153D9D90(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_21549E56C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C4E0);
  v43 = a2;
  result = sub_2154A2F2C();
  v11 = result;
  if (*(v9 + 16))
  {
    v47 = v8;
    v39 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v6;
    v44 = (v6 + 32);
    v18 = result + 64;
    v42 = v9;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v46 = *(v6 + 72);
      v26 = v25 + v46 * v24;
      if (v43)
      {
        (*v44)(v47, v26, v5);
        v27 = *(v9 + 56) + 24 * v24;
        v45 = *v27;
        v48 = *(v27 + 8);
      }

      else
      {
        (*v40)(v47, v26, v5);
        v28 = *(v9 + 56) + 24 * v24;
        v45 = *v28;
        v48 = *(v28 + 8);

        v29 = *(&v48 + 1);
      }

      sub_2153DDB70(&unk_27CA5B110, MEMORY[0x277CC9260]);
      result = sub_2154A1C9C();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v44)(*(v11 + 48) + v46 * v19, v47, v5);
      v20 = *(v11 + 56) + 24 * v19;
      *v20 = v45;
      *(v20 + 8) = v48;
      ++*(v11 + 16);
      v6 = v41;
      v9 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v13, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_2153DA1BC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_2154A22EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6C0);
  v39 = a2;
  result = sub_2154A2F2C();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_2153DDB70(&qword_27CA5BD28, MEMORY[0x277D36420]);
      result = sub_2154A1C9C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_2153DA5C0(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v31 = a2;
  result = sub_2154A2F2C();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((v31 & 1) == 0)
      {
      }

      sub_2154A30DC();
      MEMORY[0x216069C80](v21);
      result = sub_2154A312C();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v3;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_2153DA85C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = sub_2154A2F2C();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      sub_2154A30DC();
      sub_2154A1DFC();
      result = sub_2154A312C();
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_2153DAAF8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A740);
  result = sub_2154A2F2C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_2154A30DC();
      MEMORY[0x216069C80](v20);
      result = sub_2154A312C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_2153DAD78(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_21549E70C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A738);
  v39 = a2;
  result = sub_2154A2F2C();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_2153DDB70(&qword_281199D00, MEMORY[0x277CC95F0]);
      result = sub_2154A1C9C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_2153DB168(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A710);
  result = sub_2154A2F2C();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      result = sub_2154A30CC();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2153DB3D0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for TextElementAnimationConfiguration();
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21549E70C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A708);
  v43 = a2;
  result = sub_2154A2F2C();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_215328E68(v27 + v28 * v24, v47);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_2153DDBB8(v29 + v28 * v24, v47);
      }

      sub_2153DDB70(&qword_281199D00, MEMORY[0x277CC95F0]);
      result = sub_2154A1C9C();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_215328E68(v47, *(v12 + 56) + v28 * v20);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_2153DB834(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7A8);
  result = sub_2154A2F2C();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      result = sub_2154A30CC();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2153DBAB0(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = sub_2154A2F2C();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v3;
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(v6 + 56);
      v22 = *(*(v6 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v36)
      {
        sub_21531E8D0(v23, v37);
      }

      else
      {
        sub_21533FC88(v23, v37);
        v24 = v22;
      }

      sub_2154A1D6C();
      sub_2154A30DC();
      sub_2154A1DFC();
      v25 = sub_2154A312C();

      v26 = -1 << *(v8 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_21531E8D0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v6 = v35;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v34;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_34:
  *v4 = v8;
  return result;
}

uint64_t sub_2153DBD78(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6F8);
  v39 = a2;
  result = sub_2154A2F2C();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 56 * v20);
      v23 = *v22;
      v24 = v22[2];
      v25 = v22[3];
      v26 = v22[4];
      v27 = v22[5];
      v40 = v22[6];
      v41 = v22[1];
      if ((v39 & 1) == 0)
      {
        v28 = v21;
      }

      result = sub_2154A290C();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 56 * v15);
      *v16 = v23;
      v16[1] = v41;
      v16[2] = v24;
      v16[3] = v25;
      v16[4] = v26;
      v16[5] = v27;
      v16[6] = v40;
      ++*(v7 + 16);
      v5 = v38;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_2153DC068()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5A790);
  v2 = *v0;
  v3 = sub_2154A2F1C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
        goto LABEL_19;
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
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2153DC1C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C4E8);
  v2 = *v0;
  v3 = sub_2154A2F1C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
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
        goto LABEL_19;
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
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_2153DC360()
{
  v1 = v0;
  v35 = sub_21549E56C();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AB08);
  v3 = *v0;
  v4 = sub_2154A2F1C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v21 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 16 * v18;
        v24 = (*(v3 + 56) + 16 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v21, v22);
        v28 = (*(v27 + 56) + v23);
        *v28 = v25;
        v28[1] = v26;
        v3 = v33;

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v29;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v30 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_2153DC614()
{
  v1 = v0;
  v37 = sub_21549E56C();
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C4E0);
  v3 = *v0;
  v4 = sub_2154A2F1C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v38 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v35 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v41 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v39;
        v20 = *(v39 + 72) * v18;
        v22 = v36;
        v21 = v37;
        (*(v39 + 16))(v36, *(v3 + 48) + v20, v37);
        v23 = 24 * v18;
        v24 = (*(v3 + 56) + 24 * v18);
        v25 = v24[1];
        v40 = *v24;
        v26 = v24[2];
        v27 = v38;
        (*(v19 + 32))(*(v38 + 48) + v20, v22, v21);
        v28 = *(v27 + 56);
        v3 = v35;
        v29 = (v28 + v23);
        *v29 = v40;
        v29[1] = v25;
        v29[2] = v26;

        result = v26;
        v13 = v41;
      }

      while (v41);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v31;
        v5 = v38;
        goto LABEL_18;
      }

      v17 = *(v32 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_2153DC8CC()
{
  v1 = v0;
  v33 = sub_2154A22EC();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6C0);
  v3 = *v0;
  v4 = sub_2154A2F1C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_2153DCB74(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_2154A2F1C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + v18) = *(*(v3 + 48) + v18);
        *(*(v5 + 56) + 8 * v18) = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

id sub_2153DCCD4(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_2154A2F1C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;

        result = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_2153DCE30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A740);
  v2 = *v0;
  v3 = sub_2154A2F1C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_2153DCFA4(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v34 = a1(0);
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v6 = *v2;
  v7 = sub_2154A2F1C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    v29 = v4;
    v30 = (v6 + 64);
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, v30, 8 * v10);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v35 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    v18 = v8;
    if (v16)
    {
      do
      {
        v19 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
LABEL_17:
        v22 = v19 | (v12 << 6);
        v23 = v36;
        v24 = *(v36 + 72) * v22;
        v26 = v33;
        v25 = v34;
        (*(v36 + 16))(v33, *(v6 + 48) + v24, v34);
        v27 = *(*(v6 + 56) + 8 * v22);
        (*(v23 + 32))(*(v18 + 48) + v24, v26, v25);
        *(*(v18 + 56) + 8 * v22) = v27;
        result = v27;
        v16 = v37;
      }

      while (v37);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v4 = v29;
        v8 = v35;
        goto LABEL_21;
      }

      v21 = *(v30 + v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v37 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v8;
  }

  return result;
}

id sub_2153DD230()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A710);
  v2 = *v0;
  v3 = sub_2154A2F1C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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
        goto LABEL_19;
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
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_2153DD38C()
{
  v1 = v0;
  v2 = type metadata accessor for TextElementAnimationConfiguration();
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_21549E70C();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A708);
  v5 = *v0;
  v6 = sub_2154A2F1C();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_2153DDBB8(*(v5 + 56) + v26, v35);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_215328E68(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

id sub_2153DD6A4(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_2154A2F1C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        sub_21533FC88(*(v3 + 56) + 32 * v18, v20);
        *(*(v5 + 48) + 8 * v18) = v19;
        sub_21531E8D0(v20, (*(v5 + 56) + 32 * v18));
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_2153DD814()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6F8);
  v27 = v0;
  v1 = *v0;
  v28 = sub_2154A2F1C();
  if (*(v1 + 16))
  {
    result = (v28 + 64);
    v3 = ((1 << *(v28 + 32)) + 63) >> 6;
    if (v28 != v1 || result >= v1 + 64 + 8 * v3)
    {
      result = memmove(result, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v28 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = v11 | (v5 << 6);
        v15 = 8 * v14;
        v16 = *(*(v1 + 48) + 8 * v14);
        v14 *= 56;
        v17 = (*(v1 + 56) + v14);
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[2];
        v21 = v17[3];
        v22 = v17[4];
        v23 = v17[5];
        v24 = v17[6];
        *(*(v28 + 48) + v15) = v16;
        v25 = (*(v28 + 56) + v14);
        *v25 = v18;
        v25[1] = v19;
        v25[2] = v20;
        v25[3] = v21;
        v25[4] = v22;
        v25[5] = v23;
        v25[6] = v24;
        v26 = v16;
      }

      while (v9);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v27 = v28;
  }

  return result;
}

id sub_2153DDAD0()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

unint64_t sub_2153DDB08()
{
  result = qword_2811994A0;
  if (!qword_2811994A0)
  {
    sub_2151A6C9C(255, &qword_2811994B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811994A0);
  }

  return result;
}

uint64_t sub_2153DDB70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2153DDBB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextElementAnimationConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2153DDC38@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a4;
  v60 = a5;
  v58 = a3;
  v57 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v55 - v10;
  v12 = sub_21549E56C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C4F0);
  MEMORY[0x28223BE20](v19 - 8);
  v56 = &v55 - v20;
  v21 = [a1 media];
  if (!v21 || (v22 = v21, v23 = [v21 decryptedData], v22, !v23))
  {
    v36 = [a1 media];
    if (v36)
    {
      v37 = v36;
      v38 = [v36 prepareExportableMediaURL];

      if (v38)
      {
        sub_21549E51C();

        (*(v13 + 56))(v9, 0, 1, v12);
      }

      else
      {
        (*(v13 + 56))(v9, 1, 1, v12);
      }

      sub_215323B30(v9, v11);
      if ((*(v13 + 48))(v11, 1, v12) != 1)
      {
        (*(v13 + 32))(v18, v11, v12);
        (*(v13 + 16))(v16, v18, v12);

        sub_2154A188C();
        return (*(v13 + 8))(v18, v12);
      }
    }

    else
    {
      (*(v13 + 56))(v11, 1, 1, v12);
    }

    sub_2153DE3C0(v11);
    v41 = sub_2154A18DC();
    return (*(*(v41 - 8) + 56))(v60, 1, 1, v41);
  }

  v24 = sub_21549E59C();
  v26 = v25;

  v27 = sub_21549E58C();
  v28 = CGImageSourceCreateWithData(v27, 0);

  if (v28)
  {
    v29 = CGImageSourceCopyPropertiesAtIndex(v28, 0, 0);
    if (!v29)
    {
      goto LABEL_35;
    }

    v30 = v29;
    sub_2153DE428();
    sub_2153DE474();
    v31 = sub_2154A1C8C();

    v32 = *MEMORY[0x277CD3450];
    if ((v31 & 0xC000000000000001) != 0)
    {

      v33 = v32;
      v34 = sub_2154A2EBC();

      if (!v34)
      {
        v44 = *MEMORY[0x277CD3448];
        goto LABEL_26;
      }

      v35 = v31 & 0xC000000000000001;
      goto LABEL_23;
    }

    if (*(v31 + 16))
    {

      v42 = sub_2153B0DE0(v32);
      if (v43)
      {
        v35 = v31 & 0xC000000000000001;
        v34 = *(*(v31 + 56) + 8 * v42);
        swift_unknownObjectRetain();

LABEL_23:
        v61 = v34;
        swift_dynamicCast();
        v44 = *MEMORY[0x277CD3448];
        if (v35)
        {
LABEL_26:
          v45 = v44;
          v46 = sub_2154A2EBC();

          if (!v46)
          {
            goto LABEL_35;
          }

          goto LABEL_33;
        }

LABEL_30:
        if (!*(v31 + 16) || (v47 = sub_2153B0DE0(v44), (v48 & 1) == 0))
        {

          goto LABEL_35;
        }

        v46 = *(*(v31 + 56) + 8 * v47);
        swift_unknownObjectRetain();

LABEL_33:
        v61 = v46;
        swift_dynamicCast();
LABEL_35:
        v49 = v60;
        sub_2154A18CC();
        sub_215324200(v24, v26);

        v50 = v56;
        sub_2154A1B0C();
        v51 = *MEMORY[0x277CD9530];
        v52 = sub_2154A16BC();
        v53 = *(v52 - 8);
        (*(v53 + 104))(v50, v51, v52);
        (*(v53 + 56))(v50, 0, 1, v52);
        sub_2154A18AC();
        sub_2154A189C();
        sub_2154A18BC();
        sub_215324170(v24, v26);

        v54 = sub_2154A18DC();
        return (*(*(v54 - 8) + 56))(v49, 0, 1, v54);
      }
    }

    v44 = *MEMORY[0x277CD3448];
    goto LABEL_30;
  }

  v39 = sub_2154A18DC();
  (*(*(v39 - 8) + 56))(v60, 1, 1, v39);

  return sub_215324170(v24, v26);
}

uint64_t sub_2153DE3C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2153DE428()
{
  result = qword_281199490;
  if (!qword_281199490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281199490);
  }

  return result;
}

unint64_t sub_2153DE474()
{
  result = qword_27CA5C4F8;
  if (!qword_27CA5C4F8)
  {
    sub_2153DE428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5C4F8);
  }

  return result;
}

id sub_2153DE4CC@<X0>(void *a1@<X8>)
{
  result = [*v1 editorIdentifier];
  *a1 = result;
  return result;
}

uint64_t sub_2153DE5A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ID(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ICTableAttachmentViewController.collaborationSelection.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C508);
  MEMORY[0x28223BE20](v3 - 8);
  v97 = &v91 - v4;
  v5 = sub_2154A24EC();
  v6 = *(v5 - 8);
  v98 = v5;
  v99 = v6;
  MEMORY[0x28223BE20](v5);
  v95 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21549E70C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v96 = &v91 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v91 - v15;
  *&v18 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v20 = &v91 - v19;
  v21 = [v1 tableSelection];
  v22 = [v21 valid];

  if (!v22)
  {
    v32 = sub_21549ED4C();
    v33 = *(*(v32 - 8) + 56);
    v34 = v32;
    v35 = a1;
LABEL_7:
    v36 = 1;
LABEL_14:

    return v33(v35, v36, 1, v34);
  }

  v94 = a1;
  v23 = [v1 tableSelection];
  v24 = [v23 type];

  if (v24 > 1)
  {
    switch(v24)
    {
      case 2:
        v38 = [v1 tableSelection];
        v39 = [v38 columns];

        v40 = sub_2154A1F4C();
        v41 = sub_215365564(v40);

        v42 = swift_allocObject();
        *(v42 + 16) = v41;
        v30 = v94;
        *v94 = v42;
        v31 = MEMORY[0x277D35B10];
        goto LABEL_13;
      case 3:
        v25 = [v1 tableSelection];
        v26 = [v25 rows];

        v27 = sub_2154A1F4C();
        v28 = sub_215365564(v27);

        v29 = swift_allocObject();
        *(v29 + 16) = v28;
        v30 = v94;
        *v94 = v29;
        v31 = MEMORY[0x277D35B00];
LABEL_13:
        v52 = *v31;
        v53 = sub_21549ED4C();
        v99 = *(v53 - 8);
        (*(v99 + 104))(v30, v52, v53);
        v33 = *(v99 + 56);
        v35 = v30;
        v36 = 0;
        v34 = v53;
        goto LABEL_14;
      case 4:
        v43 = [v1 tableSelection];
        v44 = [v43 columns];

        v45 = sub_2154A1F4C();
        v46 = sub_215365564(v45);

        v47 = [v1 tableSelection];
        v48 = [v47 rows];

        v49 = sub_2154A1F4C();
        v50 = sub_215365564(v49);

        v51 = swift_allocObject();
        *(v51 + 16) = v46;
        *(v51 + 24) = v50;
        v30 = v94;
        *v94 = v51;
        v31 = MEMORY[0x277D35B08];
        goto LABEL_13;
    }

LABEL_30:
    type metadata accessor for ICTableAttachmentSelectionType(0);
    v100 = v24;
    result = sub_2154A2FDC();
    __break(1u);
    return result;
  }

  if (!v24)
  {
    v37 = sub_21549ED4C();
    v33 = *(*(v37 - 8) + 56);
    v34 = v37;
    v35 = v94;
    goto LABEL_7;
  }

  if (v24 != 1)
  {
    goto LABEL_30;
  }

  v55 = v8;
  v56 = [v1 tableSelection];
  v57 = [v56 columns];

  v58 = sub_2154A1F4C();
  if (*(v58 + 16))
  {
    v59 = v9;
    v60 = *(v9 + 16);
    v91 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v92 = v60;
    v93 = (v9 + 16);
    v60(v16, v58 + v91, v55);

    v61 = *(v9 + 32);
    v61(v20, v16, v55);
    v62 = [v1 tableSelection];
    v63 = [v62 rows];

    v64 = sub_2154A1F4C();
    if (*(v64 + 16))
    {
      v92(v11, v64 + v91, v55);

      v65 = v96;
      v61(v96, v11, v55);
      v66 = [v1 currentlyEditingTextView];
      if (v66)
      {
        v67 = v66;
        v68 = v97;
        ICTableColumnTextView.selection.getter(v97);

        v69 = v98;
        v70 = v99;
        if ((*(v99 + 48))(v68, 1, v98) != 1)
        {
          v75 = *(v70 + 32);
          v99 = v70 + 32;
          v93 = v75;
          v75(v95, v68, v69);
          v76 = v69;
          v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C510);
          v97 = swift_allocBox();
          v79 = v78;
          v80 = v55;
          v81 = *(v77 + 48);
          v82 = *(v77 + 64);
          v61(v78, v20, v80);
          v61(&v79[v81], v65, v80);
          v83 = swift_allocBox();
          v93(v84, v95, v76);
          *&v79[v82] = v83;
          v85 = *MEMORY[0x277D35B20];
          v86 = sub_21549ED6C();
          (*(*(v86 - 8) + 104))(&v79[v82], v85, v86);
          v87 = v94;
          *v94 = v97;
          v88 = *MEMORY[0x277D35B18];
          v89 = sub_21549ED4C();
          v90 = *(v89 - 8);
          (*(v90 + 104))(v87, v88, v89);
          return (*(v90 + 56))(v87, 0, 1, v89);
        }

        v71 = *(v59 + 8);
        v71(v65, v55);
        v71(v20, v55);
      }

      else
      {
        v72 = *(v59 + 8);
        v72(v65, v55);
        v72(v20, v55);
        v68 = v97;
        (*(v99 + 56))(v97, 1, 1, v98);
      }

      sub_2153DEFEC(v68);
    }

    else
    {

      (*(v59 + 8))(v20, v55);
    }
  }

  else
  {
  }

  v73 = v94;
  v74 = sub_21549ED4C();
  return (*(*(v74 - 8) + 56))(v73, 1, 1, v74);
}

uint64_t sub_2153DEFEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C508);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2153DF054(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t OutlineRenderer.selectionVisibilityRequiresEditing.getter()
{
  v1 = OBJC_IVAR___ICOutlineRenderer_selectionVisibilityRequiresEditing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t OutlineRenderer.selectionVisibilityRequiresEditing.setter(char a1)
{
  v3 = OBJC_IVAR___ICOutlineRenderer_selectionVisibilityRequiresEditing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_2153DF2B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2151BFD10();
  }
}

id OutlineRenderer.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = v1;
  [v4 removeObserver:v6 name:@"ICTextViewLayoutDidChangeNotification" object:Strong];

  v7 = [v3 defaultCenter];
  [v7 removeObserver:v6 name:*MEMORY[0x277D765F0] object:0];

  v8 = [v3 defaultCenter];
  [v8 removeObserver:v6 name:*MEMORY[0x277D76520] object:0];

  v10.receiver = v6;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

uint64_t OutlineRenderer.collapsibleSectionAffordanceExposures.getter()
{
  v1 = OBJC_IVAR___ICOutlineRenderer_affordanceShownUUIDs;
  swift_beginAccess();
  return *(*(v0 + v1) + 16);
}

Swift::Void __swiftcall OutlineRenderer.resetCollapsibleSectionsAffordanceExposures()()
{
  v1 = OBJC_IVAR___ICOutlineRenderer_affordanceShownUUIDs;
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x277D84FA0];
}

id OutlineRenderer.collapsibleSectionAffordanceUsages.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = [Strong textLayoutManager];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 textContentManager];

  if (!v3)
  {
    return 0;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
  }

  v5 = [v4 outlineController];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 collapsibleSectionAffordanceUsages];

  return v6;
}

Swift::Void __swiftcall OutlineRenderer.resetCollapsibleSectionsAffordanceUsages()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong textLayoutManager];

    if (v2 && (v3 = [v2 textContentManager], v2, v3))
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (!v4)
      {
      }

      v5 = [v4 outlineController];

      Strong = v5;
    }

    else
    {
      Strong = 0;
    }
  }

  v6 = Strong;
  [Strong resetCollapsibleSectionAffordanceUsages];
}

Swift::Void __swiftcall OutlineRenderer.resetCollapsibleSectionsAffordanceUsageData()()
{
  v1 = OBJC_IVAR___ICOutlineRenderer_affordanceShownUUIDs;
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x277D84FA0];

  v2 = OutlineRenderer.outlineController.getter();
  [v2 resetCollapsibleSectionAffordanceUsages];
}

void sub_2153DF9D8(void *a1)
{
  v1 = a1;
  sub_21548FA0C();
  sub_2151BFD10();
}

void sub_2153DFA34(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong note];
    v8 = [v7 isDeletedOrInTrash];

    if (v8)
    {
      v9 = [v6 editorController];
      [v9 showRecoverNoteAlert];
    }

    else
    {
      v10 = sub_21549E6CC();
      [a2 toggleUUIDCollapsed_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A540);
      v11 = sub_21549E70C();
      v12 = *(v11 - 8);
      v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_2154BDB50;
      (*(v12 + 16))(v14 + v13, a3, v11);
      sub_21532B3EC(v14);
      swift_setDeallocating();
      (*(v12 + 8))(v14 + v13, v11);
      swift_deallocClassInstance();
      sub_2153DFF1C();
      v15 = sub_2154A20BC();

      [a2 collapsibleSectionAffordanceUsedForUUIDs_];
      v9 = v6;
      v6 = v15;
    }
  }
}

id OutlineRenderer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_2153DFD3C()
{
  v1 = *(sub_21549E70C() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_2153DFA34(v2, v3, v4);
}

void sub_2153DFDA0(void *a1)
{
  v1 = [a1 subviews];
  sub_2151A6C9C(0, &qword_2811994D0);
  v2 = sub_2154A1F4C();

  if (v2 >> 62)
  {
LABEL_17:
    v3 = sub_2154A2C8C();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_18:

    return;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_3:
  v4 = 0;
  while ((v2 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x216069960](v4, v2);
    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_12;
    }

LABEL_7:
    v7 = v5;
    type metadata accessor for OutlineDisclosureButton();
    if (swift_dynamicCastClass())
    {
      goto LABEL_13;
    }

    ++v4;
    if (v6 == v3)
    {
      goto LABEL_18;
    }
  }

  if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = *(v2 + 8 * v4 + 32);
  v6 = v4 + 1;
  if (!__OFADD__(v4, 1))
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
LABEL_13:

  [v7 removeFromSuperview];
}

unint64_t sub_2153DFF1C()
{
  result = qword_281199D00;
  if (!qword_281199D00)
  {
    sub_21549E70C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281199D00);
  }

  return result;
}

void sub_2153DFFBC(void *a1, char a2)
{
  v3 = v2;
  v36 = a1;
  v5 = sub_21549F03C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  type metadata accessor for CaptureViewController();
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12[OBJC_IVAR____TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController_disableAutorotate] = a2;
  v35 = v12;
  sub_21549EFFC();
  v13 = sub_21549EF7C();
  v15 = v14;
  v16 = *(v6 + 8);
  v16(v11, v5);
  v37 = v40;
  v39 = v13;
  v40[0] = v15;
  sub_21549F00C();
  v17 = sub_21549EF7C();
  v19 = v18;
  v16(v9, v5);
  v20 = 0;
  v40[1] = v17;
  v40[2] = v19;
  v21 = OBJC_IVAR____TtC11NotesEditor28VisualAssetCaptureController_note;
  v22 = MEMORY[0x277D84F90];
  do
  {
    v23 = &v37[2 * v20++];
    while (1)
    {
      v25 = *(v23 - 1);
      v24 = *v23;
      v26 = *(v3 + v21);

      if (![v26 isPasswordProtected])
      {
        break;
      }

      v27 = objc_opt_self();
      v28 = sub_2154A1D2C();
      LOBYTE(v27) = [v27 isTypeUTISupportedForPasswordProtectedNotes_];

      if (v27)
      {
        break;
      }

      v23 += 2;
      if (++v20 == 3)
      {
        goto LABEL_12;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_21531B5AC(0, *(v22 + 16) + 1, 1);
      v22 = v38;
    }

    v31 = *(v22 + 16);
    v30 = *(v22 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_21531B5AC((v30 > 1), v31 + 1, 1);
      v22 = v38;
    }

    *(v22 + 16) = v31 + 1;
    v32 = v22 + 16 * v31;
    *(v32 + 32) = v25;
    *(v32 + 40) = v24;
  }

  while (v20 != 2);
LABEL_12:
  swift_arrayDestroy();
  v33 = sub_2154A1F3C();

  v34 = v35;
  [v35 setMediaTypes_];

  [v34 setSourceType_];
  [v34 setVideoQuality_];
  [v34 ic_setSavingOptionsCreateOriginalImageData];
  [v34 setDelegate_];

  [v34 setModalPresentationStyle_];
  [v36 presentViewController:v34 animated:1 completion:0];
}

uint64_t sub_2153E032C()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5C560);
  __swift_project_value_buffer(v0, qword_27CA5C560);
  return sub_21549F08C();
}

void sub_2153E0600(void *a1, uint64_t a2)
{
  v73 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v68[-v4];
  v6 = sub_21549E56C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v68[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_21549F03C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v68[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!*(a2 + 16) || (v14 = sub_2153B1B20(*MEMORY[0x277D76A70]), (v15 & 1) == 0) || (sub_21533FC88(*(a2 + 56) + 32 * v14, &v76), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_27CA598C0 != -1)
    {
      swift_once();
    }

    v21 = sub_21549F11C();
    __swift_project_value_buffer(v21, qword_27CA5C560);
    v22 = sub_21549F0FC();
    v23 = sub_2154A226C();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v73;
    if (!v24)
    {
      goto LABEL_13;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "Could not determine the media type for the captured visual asset";
    goto LABEL_12;
  }

  v70 = v7;
  v16 = sub_2154A1D2C();

  v17 = [objc_opt_self() typeWithIdentifier_];

  if (!v17)
  {
    if (qword_27CA598C0 != -1)
    {
      swift_once();
    }

    v29 = sub_21549F11C();
    __swift_project_value_buffer(v29, qword_27CA5C560);
    v22 = sub_21549F0FC();
    v23 = sub_2154A226C();
    v30 = os_log_type_enabled(v22, v23);
    v25 = v73;
    if (!v30)
    {
      goto LABEL_13;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "Could not determine the type reference for the captured visual asset";
LABEL_12:
    _os_log_impl(&dword_2151A1000, v22, v23, v27, v26, 2u);
    MEMORY[0x21606B520](v26, -1, -1);
LABEL_13:

LABEL_14:
    v28 = v25;
    goto LABEL_15;
  }

  v72 = v17;
  if (([*(v74 + OBJC_IVAR____TtC11NotesEditor28VisualAssetCaptureController_note) isPasswordProtected] & 1) == 0)
  {
    v18 = objc_opt_self();
    v19 = sub_2154A1D2C();
    v20 = [v18 objectForKey_];

    if (v20)
    {
      sub_2154A2BCC();
      swift_unknownObjectRelease();
    }

    else
    {
      v78 = 0u;
      v79 = 0u;
    }

    v76 = v78;
    v77 = v79;
    if (*(&v79 + 1))
    {
      if (swift_dynamicCast())
      {
        v69 = v75;
        goto LABEL_26;
      }
    }

    else
    {
      sub_2151ADCD8(&v76, &qword_27CA5ABC0);
    }
  }

  v69 = 0;
LABEL_26:
  sub_21549EFFC();
  v31 = sub_21549EFAC();
  v32 = *(v11 + 8);
  v71 = v11 + 8;
  v32(v13, v10);
  v33 = v72;
  v34 = [v72 conformsToType_];

  if (v34)
  {
    v35 = objc_opt_self();
    type metadata accessor for InfoKey(0);
    sub_2153E1430();
    v36 = sub_2154A1C7C();
    v37 = [v35 ic:v36 originalImageDataFromInfo:?];

    if (v37)
    {
      v38 = sub_21549E59C();
      v40 = v39;

      v41 = sub_21549E58C();
      v42 = CGImageSourceCreateWithData(v41, 0);

      v43 = v73;
      if (v42)
      {
        v44 = CGImageSourceGetType(v42);
        if (v44)
        {
          v45 = v44;
          v70 = sub_2154A1D6C();
          v47 = v46;

LABEL_53:
          if (v69)
          {
            v64 = sub_21549E58C();
            [v43 ic:v64 writeImageDataToSavedPhotosAlbum:?];
          }

          sub_215333D74(v74 + OBJC_IVAR____TtC11NotesEditor28VisualAssetCaptureController_delegate, &v76);
          __swift_project_boxed_opaque_existential_0Tm(&v76, *(&v77 + 1));
          if (!v47)
          {
            sub_21549EFFC();
            v70 = sub_21549EF7C();
            v47 = v65;
            v32(v13, v10);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C668);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_2154BDB50;
          *(inited + 32) = v38;
          *(inited + 40) = v40;
          sub_215324200(v38, v40);
          v67.value._countAndFlagsBits = v70;
          v67.value._object = v47;
          VisualAssetImportController.add(_:typeIdentifier:forceAddToPaper:)(inited, v67, 0);
          sub_215324170(v38, v40);

          swift_setDeallocating();
          sub_2153E1548(inited + 32);
          __swift_destroy_boxed_opaque_existential_0Tm(&v76);
          v28 = v73;
          goto LABEL_15;
        }
      }

      v70 = 0;
      v47 = 0;
      goto LABEL_53;
    }

    v25 = v73;
    if (qword_27CA598C0 != -1)
    {
      swift_once();
    }

    v63 = sub_21549F11C();
    __swift_project_value_buffer(v63, qword_27CA5C560);
    v58 = sub_21549F0FC();
    v59 = sub_2154A226C();
    if (!os_log_type_enabled(v58, v59))
    {
      goto LABEL_49;
    }

    v61 = swift_slowAlloc();
    *v61 = 0;
    v62 = "Captured photo is invalid";
    goto LABEL_48;
  }

  sub_21549F00C();
  v48 = sub_21549EFAC();
  v32(v13, v10);
  v49 = [v33 conformsToType_];

  if ((v49 & 1) == 0)
  {
    sub_21549F01C();
    v50 = sub_21549EFAC();
    v32(v13, v10);
    v51 = [v33 conformsToType_];

    if (!v51)
    {

      v28 = v73;
      goto LABEL_15;
    }
  }

  if (!*(a2 + 16) || (v52 = sub_2153B1B20(*MEMORY[0x277D76A78]), (v53 & 1) == 0))
  {
    (*(v70 + 56))(v5, 1, 1, v6);
    goto LABEL_40;
  }

  sub_21533FC88(*(a2 + 56) + 32 * v52, &v76);
  v54 = swift_dynamicCast();
  v55 = v70;
  (*(v70 + 56))(v5, v54 ^ 1u, 1, v6);
  if ((*(v55 + 48))(v5, 1, v6) == 1)
  {
LABEL_40:
    sub_2151ADCD8(v5, &unk_27CA5B090);
    if (qword_27CA598C0 != -1)
    {
      swift_once();
    }

    v57 = sub_21549F11C();
    __swift_project_value_buffer(v57, qword_27CA5C560);
    v58 = sub_21549F0FC();
    v59 = sub_2154A226C();
    v60 = os_log_type_enabled(v58, v59);
    v25 = v73;
    if (!v60)
    {
      goto LABEL_49;
    }

    v61 = swift_slowAlloc();
    *v61 = 0;
    v62 = "Captured video asset doesn't have a url";
LABEL_48:
    _os_log_impl(&dword_2151A1000, v58, v59, v62, v61, 2u);
    MEMORY[0x21606B520](v61, -1, -1);
LABEL_49:

    goto LABEL_14;
  }

  (*(v55 + 32))(v9, v5, v6);
  if (v69)
  {
    sub_21549E53C();
    v56 = sub_2154A1D2C();

    UISaveVideoAtPathToSavedPhotosAlbum(v56, 0, 0, 0);
  }

  __swift_project_boxed_opaque_existential_0Tm((v74 + OBJC_IVAR____TtC11NotesEditor28VisualAssetCaptureController_delegate), *(v74 + OBJC_IVAR____TtC11NotesEditor28VisualAssetCaptureController_delegate + 24));
  sub_215362CC4(v9);

  (*(v55 + 8))(v9, v6);
  v28 = v73;
LABEL_15:
  sub_2153E1094(v28);
}

void sub_2153E1094(void *a1)
{
  v1 = [a1 presentingViewController];
  if (v1)
  {
    v2 = v1;
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5[4] = sub_2153E159C;
    v5[5] = v3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_2151BD7E4;
    v5[3] = &block_descriptor_9_1;
    v4 = _Block_copy(v5);

    [v2 dismissViewControllerAnimated:1 completion:v4];
    _Block_release(v4);
  }
}

void sub_2153E122C(void *a1)
{
  v1 = [a1 presentingViewController];
  if (v1)
  {
    v2 = v1;
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5[4] = sub_2153E15B8;
    v5[5] = v3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_2151BD7E4;
    v5[3] = &block_descriptor_24;
    v4 = _Block_copy(v5);

    [v2 dismissViewControllerAnimated:1 completion:v4];
    _Block_release(v4);
  }
}

unint64_t sub_2153E1430()
{
  result = qword_27CA59D60;
  if (!qword_27CA59D60)
  {
    type metadata accessor for InfoKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA59D60);
  }

  return result;
}

uint64_t sub_2153E1488()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_215333D74(result + OBJC_IVAR____TtC11NotesEditor28VisualAssetCaptureController_delegate, v4);

    __swift_project_boxed_opaque_existential_0Tm(v4, v4[3]);
    Strong = swift_unknownObjectUnownedLoadStrong();
    v3 = [Strong editorController];

    [v3 cleanupAfterAddImageAttachmentOperation];
    return __swift_destroy_boxed_opaque_existential_0Tm(v4);
  }

  return result;
}

uint64_t sub_2153E15BC()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5C670);
  __swift_project_value_buffer(v0, qword_27CA5C670);
  return sub_21549F0BC();
}

id AudioAttachmentEditorCoordinator.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AudioAttachmentEditorCoordinator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2153E183C()
{
  v1 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator____lazy_storage___feedbackDelegateExtensionVC;
  if (*(v0 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator____lazy_storage___feedbackDelegateExtensionVC))
  {
    v2 = *(v0 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator____lazy_storage___feedbackDelegateExtensionVC);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController);
    type metadata accessor for ICFeedbackExtension();
    v2 = swift_allocObject();
    *(v2 + 16) = v3;
    *(v0 + v1) = v2;
    v4 = v3;
  }

  return v2;
}

void sub_2153E18B8(int a1, NSObject *a2)
{
  if (!a2)
  {
    if (qword_27CA598C8 != -1)
    {
      swift_once();
    }

    v11 = sub_21549F11C();
    __swift_project_value_buffer(v11, qword_27CA5C670);
    oslog = sub_21549F0FC();
    v12 = sub_2154A225C();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2151A1000, oslog, v12, "Opened FaceTime show-in-call URL", v13, 2u);
      MEMORY[0x21606B520](v13, -1, -1);
    }

    goto LABEL_10;
  }

  v3 = a2;
  if (qword_27CA598C8 != -1)
  {
    swift_once();
  }

  v4 = sub_21549F11C();
  __swift_project_value_buffer(v4, qword_27CA5C670);
  v5 = a2;
  oslog = sub_21549F0FC();
  v6 = sub_2154A226C();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = a2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2151A1000, oslog, v6, "Error opening FaceTime show-in-call URL {error: %@}", v7, 0xCu);
    sub_2151ADCD8(v8, &unk_27CA59E90);
    MEMORY[0x21606B520](v8, -1, -1);
    MEMORY[0x21606B520](v7, -1, -1);

LABEL_10:
    v14 = oslog;

    goto LABEL_12;
  }

  v14 = a2;

LABEL_12:
}

uint64_t sub_2153E1B0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_2154A1C8C();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_2153E1BB8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController);
  v4 = [v3 view];
  if (!v4)
  {
    goto LABEL_27;
  }

  v5 = v4;
  [v4 endEditing_];

  if (!a1)
  {
    v19 = [v3 note];
    if (!v19)
    {
      return;
    }

    v35 = v19;
    v20 = [v3 textView];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 selectedRange];
      v24 = v23;

      if ([v35 canAddAttachment])
      {
        v25 = [v35 addAudioAttachmentWithIdentifier_];
        v26 = [v3 attachmentInsertionController];
        if (v26)
        {
          v27 = &v22[v24];
          v28 = v26;
          v29 = [v26 addAttachment:v25 atTextLocation:v27];
        }

        [sub_2153F04F8() submitAttachmentAddEventForAttachment_];
        v30 = [v25 audioModel];
        if (v30)
        {
          v31 = v30;
          v32 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_isShowingInspector;
          swift_beginAccess();
          *(v1 + v32) = 1;
          v33 = [objc_opt_self() getHostingViewForAttachmentModel:v31 delegate:v1];
          sub_2153F0354(v33);
          [v3 presentViewController:v33 animated:1 completion:0];

          v34 = *(v1 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_recordingViewController);
          *(v1 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_recordingViewController) = v33;

          return;
        }
      }

      else
      {
        [v3 warnUserAttachmentLimitExceeded];
      }
    }

    goto LABEL_23;
  }

  v6 = objc_opt_self();
  v35 = a1;
  if (![v6 isMainThread])
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v7 = [v35 audioModel];
  if (!v7)
  {
LABEL_8:
    v12 = [v35 note];
    if (!v12 || (v13 = v12, v14 = [v12 isDeletedOrInTrash], v13, !v14))
    {
      v15 = [v35 audioModel];
      if (v15)
      {
        v16 = v15;
        v17 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_isShowingInspector;
        swift_beginAccess();
        *(v1 + v17) = 1;
        v18 = [objc_opt_self() getHostingViewForAttachmentModel:v16 delegate:v1];
        sub_2153F0354(v18);
        [v3 presentViewController:v18 animated:1 completion:0];

        return;
      }
    }

    goto LABEL_23;
  }

  v8 = v7;
  v9 = [v7 audioDocument];

  if (!v9)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v10 = [v9 isCallRecording];

  if (!v10)
  {
    goto LABEL_8;
  }

  sub_2153F02A0(v35);
  if (v11)
  {
    goto LABEL_8;
  }

  sub_2153F0060();
LABEL_23:
}

void sub_2153E2000()
{
  sub_21549E17C();
  if (!v18)
  {
    sub_2151ADCD8(v17, &qword_27CA5ABC0);
    return;
  }

  sub_2151A6C9C(0, &unk_281199610);
  if (swift_dynamicCast())
  {
    v1 = [v16 attachment];
    if (!v1)
    {
LABEL_21:

      return;
    }

    v2 = v1;
    if ([v1 attachmentType] != 4 || (v3 = objc_msgSend(v2, sel_note)) == 0)
    {

      return;
    }

    v4 = v3;
    v5 = [v16 window];
    v6 = *(v0 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController);
    v7 = [v6 view];
    if (!v7)
    {
      __break(1u);
      return;
    }

    v8 = v7;
    v9 = [v7 window];

    if (v5)
    {
      if (v9)
      {
        sub_2151A6C9C(0, &qword_27CA59E40);
        v10 = sub_2154A291C();

        if (v10)
        {
LABEL_15:
          v4 = v4;
          v11 = [v6 note];
          if (v11)
          {
            v12 = v11;
            sub_2151A6C9C(0, &qword_27CA5C700);
            v13 = sub_2154A291C();

            if (v13)
            {
              swift_beginAccess();
              v14 = v16;
              sub_2153EED00(&v16, v14, &unk_281199610, off_2781A8BA8, &unk_27CA5C710, &unk_2154BE708);
              v15 = v16;
              swift_endAccess();

              sub_2151B6D04();
              return;
            }
          }

          else
          {
          }
        }
      }

      else
      {
      }
    }

    else
    {
      if (!v9)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_21;
  }
}

void sub_2153E22D4()
{
  sub_21549E17C();
  if (v12)
  {
    sub_2151A6C9C(0, &qword_281199690);
    if (swift_dynamicCast())
    {
      v1 = [v9 objectID];

      if (v1)
      {
        v2 = *(v0 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_miniPlayer);
        if (v2 && (v3 = OBJC_IVAR___ICMiniPlayerViewController_attachment, swift_beginAccess(), (v4 = *(v2 + v3)) != 0))
        {
          sub_2151A6C9C(0, &qword_281199490);
          v5 = v4;
          v6 = [v5 objectID];
          v7 = sub_2154A291C();

          if (v7)
          {
            swift_beginAccess();
            v1 = v1;
            sub_2153EED00(&v10, v1, &qword_2811995F0, 0x277CBE448, &unk_27CA5C6F0, &unk_2154BE710);
            v8 = v10;
            swift_endAccess();

            sub_2153E2A18(0, v5);
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {
    sub_2151ADCD8(v11, &qword_27CA5ABC0);
  }
}

void sub_2153E24C0()
{
  sub_21549E17C();
  if (v4)
  {
    sub_2151A6C9C(0, &qword_281199690);
    if (swift_dynamicCast())
    {
      v0 = [v2 objectID];

      if (v0)
      {
        swift_beginAccess();
        v1 = sub_2153EB414(v0, &qword_2811995F0, 0x277CBE448, &unk_27CA5C6F0, &unk_2154BE710);
        swift_endAccess();
      }
    }
  }

  else
  {
    sub_2151ADCD8(v3, &qword_27CA5ABC0);
  }
}

uint64_t sub_2153E25F8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_21549E19C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E16C();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

void sub_2153E26E8()
{
  v0 = [objc_opt_self() sharedAudioController];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 currentAttachment];

    if (v2)
    {
      v3 = [v2 objectID];

      if (v3)
      {
        swift_beginAccess();
        v4 = sub_2153EB414(v3, &qword_2811995F0, 0x277CBE448, &unk_27CA5C6F0, &unk_2154BE710);
        swift_endAccess();
      }
    }

    sub_2151B6D04();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2153E28D0()
{
  v1 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_isShowingInspector;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2153E2968(char a1)
{
  v3 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_isShowingInspector;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_2153E2A18(char a1, id a2)
{
  v3 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_wantsMiniPlayerVisible;
  if (v2[OBJC_IVAR___ICAudioAttachmentEditorCoordinator_wantsMiniPlayerVisible] != (a1 & 1))
  {
    v6 = [a2 note];
    if (!v6 || (v7 = v6, v8 = [v6 isDeletedOrInTrash], v7, (v8 & 1) == 0))
    {
      v9 = a1 & 1;
      v2[v3] = a1 & 1;
      v10 = *&v2[OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController];
      v11 = [v10 view];
      if (v11)
      {
        v12 = v11;
        v13 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_miniPlayer;
        v14 = *&v2[OBJC_IVAR___ICAudioAttachmentEditorCoordinator_miniPlayer];
        if ((a1 & 1) == 0)
        {
          if (!v14)
          {
LABEL_43:

            return;
          }

          v17 = v14;
          [v17 willMoveToParentViewController_];
LABEL_42:
          [v12 layoutIfNeeded];
          v78 = objc_opt_self();
          v79 = swift_allocObject();
          *(v79 + 16) = v2;
          *(v79 + 24) = v9;
          *(v79 + 32) = v12;
          v98 = sub_2153F1CCC;
          v99 = v79;
          aBlock = MEMORY[0x277D85DD0];
          v95 = 1107296256;
          v96 = sub_2151BD7E4;
          v97 = &block_descriptor_80;
          v80 = _Block_copy(&aBlock);
          v81 = v2;
          v82 = v12;
          v83 = v81;
          v84 = v82;

          v85 = swift_allocObject();
          *(v85 + 16) = v9;
          *(v85 + 24) = v17;
          *(v85 + 32) = v10;
          *(v85 + 40) = v83;
          v98 = sub_2153F1D34;
          v99 = v85;
          aBlock = MEMORY[0x277D85DD0];
          v95 = 1107296256;
          v96 = sub_2153DF054;
          v97 = &block_descriptor_86_0;
          v86 = _Block_copy(&aBlock);
          v87 = v83;
          v12 = v17;
          v88 = v10;

          [v78 _animateUsingDefaultTimingWithOptions_animations_completion_];
          _Block_release(v86);
          _Block_release(v80);

          goto LABEL_43;
        }

        v91 = a1 & 1;
        if (v14)
        {
          v15 = *&v2[OBJC_IVAR___ICAudioAttachmentEditorCoordinator_miniPlayer];
          v16 = v15;
        }

        else
        {
          v16 = sub_2153E33CC(v2);
          v15 = 0;
          v14 = *&v2[v13];
        }

        v92 = v12;
        *&v2[v13] = v16;
        v18 = v16;
        v19 = v15;

        v20 = OBJC_IVAR___ICMiniPlayerViewController_attachment;
        swift_beginAccess();
        v21 = *&v18[v20];
        *&v18[v20] = a2;
        v22 = a2;
        v23 = v2;
        sub_2153C6F9C(v21);

        v24 = &v18[OBJC_IVAR___ICMiniPlayerViewController_actionsDelegate];
        swift_beginAccess();
        *v24 = v23;
        *(v24 + 1) = &protocol witness table for AudioAttachmentEditorCoordinator;
        v25 = v23;
        swift_unknownObjectRelease();
        v26 = [v22 objectID];
        swift_beginAccess();
        v93 = v25;
        v27 = sub_2153EB414(v26, &qword_2811995F0, 0x277CBE448, &unk_27CA5C6F0, &unk_2154BE710);
        swift_endAccess();

        v28 = v18;
        v29 = [v28 view];
        if (v29)
        {
          v30 = v29;
          v31 = [v29 window];

          v32 = v28;
          v2 = v23;
          v90 = v10;
          if (!v31)
          {
            [v10 addChildViewController_];
            v33 = [v28 view];
            if (!v33)
            {
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

            v34 = v33;
            [v92 addSubview_];

            v35 = [v28 view];
            if (!v35)
            {
LABEL_51:
              __break(1u);
              goto LABEL_52;
            }

            v36 = v35;
            [v35 setTranslatesAutoresizingMaskIntoConstraints_];

            v37 = [v92 keyboardLayoutGuide];
            v38 = [v37 topAnchor];

            v39 = [v28 view];
            if (!v39)
            {
LABEL_52:
              __break(1u);
              goto LABEL_53;
            }

            v40 = v39;
            v41 = [v39 bottomAnchor];

            v42 = [v38 constraintEqualToAnchor_];
            LODWORD(v43) = 1144750080;
            v89 = v42;
            [v42 setPriority_];
            v44 = [v92 bottomAnchor];
            v45 = [v28 view];
            if (!v45)
            {
LABEL_53:
              __break(1u);
              goto LABEL_54;
            }

            v46 = v45;
            v47 = [v45 topAnchor];

            v48 = [v44 constraintEqualToAnchor_];
            v49 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_hideMiniPlayerConstraint;
            v50 = *&v93[OBJC_IVAR___ICAudioAttachmentEditorCoordinator_hideMiniPlayerConstraint];
            *&v93[OBJC_IVAR___ICAudioAttachmentEditorCoordinator_hideMiniPlayerConstraint] = v48;

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
            v51 = swift_allocObject();
            *(v51 + 16) = xmmword_2154BDB30;
            v52 = [v92 leadingAnchor];
            v53 = [v28 view];
            if (!v53)
            {
LABEL_54:
              __break(1u);
              goto LABEL_55;
            }

            v54 = v53;
            v55 = [v53 leadingAnchor];

            v56 = [v52 constraintEqualToAnchor_];
            *(v51 + 32) = v56;
            v57 = [v92 trailingAnchor];
            v58 = [v28 view];

            if (!v58)
            {
LABEL_55:
              __break(1u);
              goto LABEL_56;
            }

            v59 = [v58 trailingAnchor];

            v60 = [v57 constraintEqualToAnchor_];
            *(v51 + 40) = v60;
            *(v51 + 48) = v89;
            v61 = *&v93[v49];
            if (!v61)
            {
LABEL_56:
              __break(1u);
              return;
            }

            v62 = objc_opt_self();
            *(v51 + 56) = v61;
            sub_2151A6C9C(0, &qword_2811995A0);
            v31 = v89;
            v63 = v61;
            v32 = sub_2154A1F3C();

            [v62 activateConstraints_];
          }

          v64 = OBJC_IVAR___ICMiniPlayerViewController_clipView;
          v65 = *&v28[OBJC_IVAR___ICMiniPlayerViewController_clipView];
          if (v65)
          {
            v66 = [v65 interactions];
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5C7B0);
            v67 = sub_2154A1F4C();

            if (v67 >> 62)
            {
              goto LABEL_36;
            }

            v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v68)
            {
              while (1)
              {
                v69 = 0;
                while ((v67 & 0xC000000000000001) != 0)
                {
                  MEMORY[0x216069960](v69, v67);
                  v70 = v69 + 1;
                  if (__OFADD__(v69, 1))
                  {
LABEL_33:
                    __break(1u);
LABEL_34:

                    swift_unknownObjectRelease();

                    v10 = v90;
                    v12 = v92;
                    v9 = v91;
                    goto LABEL_40;
                  }

LABEL_28:
                  objc_opt_self();
                  if (swift_dynamicCastObjCClass())
                  {
                    goto LABEL_34;
                  }

                  swift_unknownObjectRelease();
                  ++v69;
                  if (v70 == v68)
                  {
                    goto LABEL_37;
                  }
                }

                if (v69 < *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  break;
                }

                __break(1u);
LABEL_36:
                v68 = sub_2154A2C8C();
                if (!v68)
                {
                  goto LABEL_37;
                }
              }

              swift_unknownObjectRetain();
              v70 = v69 + 1;
              if (__OFADD__(v69, 1))
              {
                goto LABEL_33;
              }

              goto LABEL_28;
            }

LABEL_37:

            v71 = [v93 textView];
            if (v71)
            {
              v72 = v71;
              v73 = [objc_allocWithZone(MEMORY[0x277D76220]) initWithScrollView:v71 edge:4 style:1];

              v74 = *&v28[v64];
              v12 = v92;
              v9 = v91;
              if (v74)
              {
                v75 = v74;
                v76 = v73;
                [v75 addInteraction_];

                v10 = v90;
LABEL_40:
                v77 = *&v93[OBJC_IVAR___ICAudioAttachmentEditorCoordinator_miniPlayer];
                if (!v77)
                {
                  goto LABEL_43;
                }

                v17 = v77;
                goto LABEL_42;
              }

              goto LABEL_49;
            }

LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

LABEL_47:
          __break(1u);
          goto LABEL_48;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_47;
    }
  }
}

char *sub_2153E33CC(void *a1)
{
  type metadata accessor for MiniPlayerViewController();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = &v2[OBJC_IVAR___ICMiniPlayerViewController_closeHandler];
  swift_beginAccess();
  v5 = *v4;
  *v4 = sub_2153F1D44;
  v4[1] = v3;

  sub_21532594C(v5);

  v6 = objc_allocWithZone(type metadata accessor for TranscriptDetailPresentationInteraction());
  sub_2153EFB68(a1, v6);
  v8 = v7;
  result = [v2 view];
  if (result)
  {
    v10 = result;
    [result addInteraction_];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2153E3500(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_miniPlayer);
    if (v4)
    {
      v5 = OBJC_IVAR___ICMiniPlayerViewController_attachment;
      swift_beginAccess();
      v6 = *(v4 + v5);
      if (v6)
      {
        if (v1)
        {
          v7 = v6;
        }

        else
        {
          v8 = [v6 objectID];
          swift_beginAccess();
          sub_2153EED00(&v10, v8, &qword_2811995F0, 0x277CBE448, &unk_27CA5C6F0, &unk_2154BE710);
          v9 = v10;
          swift_endAccess();
        }

        sub_2153E2A18(0, v6);

        v3 = v6;
      }
    }
  }
}

void sub_2153E3630(int a1, char a2, id a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    [a3 didMoveToParentViewController_];
  }

  if ((*(a5 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_wantsMiniPlayerVisible) & 1) == 0)
  {
    v7 = [a3 view];
    if (v7)
    {
      v8 = v7;
      [v7 removeFromSuperview];

      [a3 removeFromParentViewController];
      v9 = *(a5 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_hideMiniPlayerConstraint);
      *(a5 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_hideMiniPlayerConstraint) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

BOOL sub_2153E36F8()
{
  v1 = [*(v0 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController) childViewControllers];
  sub_2151A6C9C(0, &qword_281199608);
  v2 = sub_2154A1F4C();

  if (v2 >> 62)
  {
LABEL_15:
    v3 = sub_2154A2C8C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x216069960](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    type metadata accessor for MiniPlayerViewController();
    v8 = [v7 isKindOfClass_];

    v4 = v5 + 1;
  }

  while (!v8);

  return v3 != v5;
}

uint64_t sub_2153E3874(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator__eventReporter);
  *(v1 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator__eventReporter) = 0;

  v4 = [objc_opt_self() defaultCenter];
  v5 = a1;
  v6 = *MEMORY[0x277D35958];
  if (!v5)
  {
    goto LABEL_7;
  }

  if ([v5 object])
  {
    sub_2154A2BCC();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  v7 = *(&v16 + 1);
  if (*(&v16 + 1))
  {
    v8 = __swift_project_boxed_opaque_existential_0Tm(&v17, *(&v18 + 1));
    v9 = *(*(&v16 + 1) - 8);
    v10 = MEMORY[0x28223BE20](v8);
    v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = sub_2154A2F8C();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_0Tm(&v17);
  }

  else
  {
LABEL_7:
    v13 = 0;
  }

  [v4 removeObserver:v1 name:v6 object:{v13, v15, v16, v17, v18}];

  return swift_unknownObjectRelease();
}

id sub_2153E3AFC()
{
  result = *(v0 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_miniPlayer);
  if (result)
  {
    return [result view];
  }

  return result;
}

id AudioAttachmentEditorCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudioAttachmentEditorCoordinator.textView.getter()
{
  v1 = [*(v0 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController) textView];

  return v1;
}

uint64_t AudioAttachmentEditorCoordinator.presentSharingView(for:from:)(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_2154A202C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_2154A1FFC();
  v9 = a2;
  v10 = v2;
  v11 = a1;
  v12 = sub_2154A1FEC();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v10;
  v13[5] = v11;
  v13[6] = a2;
  sub_2152F4D50(0, 0, v7, &unk_2154C2D40, v13);
}

uint64_t sub_2153E3DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = sub_2154A1FFC();
  v6[6] = sub_2154A1FEC();
  v8 = swift_task_alloc();
  v6[7] = v8;
  *v8 = v6;
  v8[1] = sub_2153E3E64;

  return sub_2153E401C(a5);
}

uint64_t sub_2153E3E64()
{

  v1 = sub_2154A1FCC();

  return MEMORY[0x2822009F8](sub_2153E3FA0, v1, v0);
}

uint64_t sub_2153E3FA0()
{
  v1 = v0[3];
  v2 = v0[4];

  sub_2153E44FC(v1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_2153E401C(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_2154A1FFC();
  v2[20] = sub_2154A1FEC();
  v4 = sub_2154A1FCC();
  v2[21] = v4;
  v2[22] = v3;

  return MEMORY[0x2822009F8](sub_2153E40B4, v4, v3);
}

uint64_t sub_2153E40B4()
{
  v1 = *(v0[19] + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController);
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    return MEMORY[0x282200938](v2);
  }

  v3 = v2;
  v4 = [v2 window];
  v0[23] = v4;

  if (v4)
  {
    v5 = v1;
    v6 = [v5 presentedViewController];
    if (v6)
    {
      do
      {
        v7 = v6;

        v6 = [v7 presentedViewController];
        v5 = v7;
      }

      while (v6);
    }

    else
    {
      v7 = v5;
    }

    v0[24] = v7;
    v10 = v0[18];
    v11 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2154BDB20;
    *(v12 + 32) = v10;
    sub_2151A6C9C(0, &qword_281199690);
    v13 = v10;
    v14 = sub_2154A1F3C();
    v0[25] = v14;

    v0[2] = v0;
    v0[7] = v0 + 26;
    v0[3] = sub_2153E436C;
    v15 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B538);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21538CA80;
    v0[13] = &block_descriptor_100_0;
    v0[14] = v15;
    [v11 generatePDFsIfNecessaryForGalleryAttachments:v14 displayWindow:v4 presentingViewController:v7 completionHandler:v0 + 10];
    v2 = v0 + 2;

    return MEMORY[0x282200938](v2);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_2153E436C()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return MEMORY[0x2822009F8](sub_2153E4474, v2, v1);
}

uint64_t sub_2153E4474()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];

  v4 = v0[1];

  return v4();
}

void sub_2153E44FC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21549F11C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549F0DC();
  v10 = a1;
  v11 = sub_21549F0FC();
  v12 = sub_2154A225C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v36 = a2;
    v14 = v13;
    v34 = swift_slowAlloc();
    aBlock = v34;
    *v14 = 136315138;
    v15 = [v10 shortLoggingDescription];
    v16 = sub_2154A1D6C();
    v35 = v6;
    v17 = v16;
    v18 = v3;
    v20 = v19;

    v21 = sub_215348D98(v17, v20, &aBlock);
    v3 = v18;

    *(v14 + 4) = v21;
    _os_log_impl(&dword_2151A1000, v11, v12, "Presenting activity view controller… {attachment: %s}", v14, 0xCu);
    v22 = v34;
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    MEMORY[0x21606B520](v22, -1, -1);
    v23 = v14;
    a2 = v36;
    MEMORY[0x21606B520](v23, -1, -1);

    (*(v7 + 8))(v9, v35);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v24 = objc_opt_self();
  v41 = nullsub_1;
  v42 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_2151BD7E4;
  v40 = &block_descriptor_104;
  v25 = _Block_copy(&aBlock);
  v26 = [v24 makeWithAttachment:v10 quickLookItemDelegate:0 completion:v25];
  _Block_release(v25);
  v27 = [v26 popoverPresentationController];
  [v27 setSourceView_];

  v28 = *(v3 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController);
  v29 = [v28 presentedViewController];
  if (!v29)
  {
    v29 = v28;
  }

  v30 = swift_allocObject();
  *(v30 + 16) = v10;
  v41 = sub_2153F1E94;
  v42 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_2151BD7E4;
  v40 = &block_descriptor_110;
  v31 = _Block_copy(&aBlock);
  v32 = v10;

  [v29 presentViewController:v26 animated:1 completion:v31];
  _Block_release(v31);
}

uint64_t sub_2153E4A34(void *a1)
{
  v2 = sub_21549F11C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549F0DC();
  v6 = a1;
  v7 = sub_21549F0FC();
  v8 = sub_2154A225C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = [v6 shortLoggingDescription];
    v12 = sub_2154A1D6C();
    v14 = v13;

    v15 = sub_215348D98(v12, v14, &v18);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_2151A1000, v7, v8, "Presented activity view controller {attachment: %s}", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x21606B520](v10, -1, -1);
    MEMORY[0x21606B520](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_2153E4C18(void *a1, int a2, int a3)
{
  v337 = a3;
  LODWORD(v345) = a2;
  v351 = *MEMORY[0x277D85DE8];
  v319 = sub_21549E70C();
  v318 = *(v319 - 8);
  MEMORY[0x28223BE20](v319);
  v317 = &v299 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v341 = sub_21549F03C();
  v343 = *(v341 - 8);
  MEMORY[0x28223BE20](v341);
  v328 = &v299 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA10);
  MEMORY[0x28223BE20](v6 - 8);
  v333 = &v299 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v324 = &v299 - v9;
  MEMORY[0x28223BE20](v10);
  v325 = &v299 - v11;
  MEMORY[0x28223BE20](v12);
  v332 = &v299 - v13;
  MEMORY[0x28223BE20](v14);
  v339 = &v299 - v15;
  v313 = sub_2154A1D8C();
  v312 = *(v313 - 8);
  MEMORY[0x28223BE20](v313);
  v311 = &v299 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v310 = sub_21549E20C();
  MEMORY[0x28223BE20](v310);
  v309 = &v299 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v307 = sub_21549E28C();
  v306 = *(v307 - 8);
  MEMORY[0x28223BE20](v307);
  v305 = &v299 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21549E56C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v301 = &v299 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v302 = &v299 - v23;
  MEMORY[0x28223BE20](v24);
  v326 = &v299 - v25;
  MEMORY[0x28223BE20](v26);
  v314 = &v299 - v27;
  MEMORY[0x28223BE20](v28);
  v315 = &v299 - v29;
  MEMORY[0x28223BE20](v30);
  v316 = &v299 - v31;
  MEMORY[0x28223BE20](v32);
  v320 = &v299 - v33;
  MEMORY[0x28223BE20](v34);
  v308 = &v299 - v35;
  MEMORY[0x28223BE20](v36);
  v321 = &v299 - v37;
  MEMORY[0x28223BE20](v38);
  v327 = &v299 - v39;
  MEMORY[0x28223BE20](v40);
  v331 = &v299 - v41;
  MEMORY[0x28223BE20](v42);
  v344 = &v299 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v44 - 8);
  v303 = &v299 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v304 = &v299 - v47;
  MEMORY[0x28223BE20](v48);
  v330 = &v299 - v49;
  MEMORY[0x28223BE20](v50);
  v52 = &v299 - v51;
  MEMORY[0x28223BE20](v53);
  v347 = &v299 - v54;
  MEMORY[0x28223BE20](v55);
  v322 = &v299 - v56;
  MEMORY[0x28223BE20](v57);
  v335 = &v299 - v58;
  MEMORY[0x28223BE20](v59);
  v346 = &v299 - v60;
  v348 = sub_21549F11C();
  v61 = *(v348 - 8);
  MEMORY[0x28223BE20](v348);
  v63 = &v299 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v342 = &v299 - v65;
  MEMORY[0x28223BE20](v66);
  v323 = &v299 - v67;
  MEMORY[0x28223BE20](v68);
  v336 = &v299 - v69;
  MEMORY[0x28223BE20](v70);
  v72 = &v299 - v71;
  sub_21549F0DC();
  v73 = a1;
  v74 = sub_21549F0FC();
  v75 = sub_2154A225C();

  v76 = os_log_type_enabled(v74, v75);
  v329 = v63;
  if (v76)
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v334 = v19;
    v300 = v78;
    v349 = v78;
    *v77 = 136315138;
    v79 = [v73 shortLoggingDescription];
    v340 = v20;
    v80 = v79;
    v81 = v52;
    v82 = sub_2154A1D6C();
    v83 = v73;
    v84 = v61;
    v86 = v85;

    v87 = v82;
    v52 = v81;
    v88 = sub_215348D98(v87, v86, &v349);
    v61 = v84;
    v73 = v83;

    *(v77 + 4) = v88;
    v20 = v340;
    _os_log_impl(&dword_2151A1000, v74, v75, "Presenting document view controller… {attachment: %s}", v77, 0xCu);
    v89 = v300;
    __swift_destroy_boxed_opaque_existential_0Tm(v300);
    v90 = v89;
    v19 = v334;
    MEMORY[0x21606B520](v90, -1, -1);
    MEMORY[0x21606B520](v77, -1, -1);
  }

  v91 = *(v61 + 1);
  v91(v72, v348);
  v92 = [v73 identifier];
  v93 = v347;
  if (v92)
  {
    v94 = v92;
    v300 = sub_2154A1D6C();
    v96 = v95;

    if ([v73 isPasswordProtected])
    {
      if (v345)
      {
        v97 = [v73 media];
        if (v97)
        {
          v98 = v97;
          v99 = [v97 decryptedData];
          goto LABEL_18;
        }
      }

      else
      {
        v111 = [v73 subAttachments];
        if (v111)
        {
          v112 = v111;
          sub_2151A6C9C(0, &qword_281199690);
          sub_21533FBE4(&qword_281199680, &qword_281199690);
          v113 = sub_2154A20CC();

          v114 = sub_2153B1BA4(v113);

          if (v114)
          {
            v98 = [v114 media];

            if (v98)
            {
              v99 = [v98 decryptedData];
LABEL_18:
              v115 = v99;

              if (v115)
              {
                v342 = v61;
                v116 = sub_21549E59C();
                v118 = v117;

                sub_215324200(v116, v118);
                v344 = v116;
                sub_2153F1E10(v116, v118);
                v119 = [v73 userTitle];
                v334 = v19;
                v340 = v20;
                v299 = v73;
                if (!v119)
                {
                  v119 = [v73 title];
                  if (!v119)
                  {
                    v119 = [v73 defaultTitle];
                  }
                }

                v120 = v119;
                v336 = sub_2154A1D6C();

                v121 = *(v343 + 56);
                v122 = v339;
                v123 = v341;
                v121(v339, 1, 1, v341);
                v346 = v118;
                v124 = v332;
                if (v345)
                {
                  sub_21549EF9C();
                  sub_2151ADCD8(v122, &unk_27CA5AA10);
                }

                else
                {
                  v170 = [v299 typeUTI];
                  if (v170)
                  {
                    v171 = v170;
                    sub_2154A1D6C();
                    v345 = v91;

                    v123 = v341;
                    v121(v124, 1, 1, v341);
                    v172 = v324;
                    v91 = v345;
                    sub_21549EF8C();
                    sub_2151ADCD8(v122, &unk_27CA5AA10);
                    v121(v172, 0, 1, v123);
                    v124 = v325;
                    (*(v343 + 32))(v325, v172, v123);
                  }

                  else
                  {
                    v181 = v324;
                    v121(v324, 1, 1, v123);
                    v124 = v325;
                    sub_21549EFEC();
                    sub_2151ADCD8(v122, &unk_27CA5AA10);
                    if ((*(v343 + 48))(v181, 1, v123) != 1)
                    {
                      sub_2151ADCD8(v181, &unk_27CA5AA10);
                    }

                    v122 = v339;
                  }
                }

                v182 = v333;
                v121(v124, 0, 1, v123);
                sub_21533FB7C(v124, v122, &unk_27CA5AA10);
                v183 = v122;
                v184 = v341;
                sub_215324EEC(v183, v182, &unk_27CA5AA10);
                v185 = v343;
                if ((*(v343 + 48))(v182, 1, v184) == 1)
                {

                  sub_2151ADCD8(v182, &unk_27CA5AA10);
                  v186 = v323;
                  sub_21549F0DC();
                  v187 = v299;
                  v188 = sub_21549F0FC();
                  v189 = sub_2154A226C();

                  if (os_log_type_enabled(v188, v189))
                  {
                    v190 = swift_slowAlloc();
                    v191 = swift_slowAlloc();
                    v349 = v191;
                    *v190 = 136315138;
                    v192 = [v187 shortLoggingDescription];
                    v193 = sub_2154A1D6C();
                    v195 = v194;

                    v196 = sub_215348D98(v193, v195, &v349);

                    *(v190 + 4) = v196;
                    _os_log_impl(&dword_2151A1000, v188, v189, "Cannot present document view controller because attachment doesn't have a valid UTType {attachment: %s}", v190, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0Tm(v191);
                    MEMORY[0x21606B520](v191, -1, -1);
                    MEMORY[0x21606B520](v190, -1, -1);
                  }

                  sub_215324170(v344, v346);

                  v91(v186, v348);
                  v160 = &unk_27CA5AA10;
                  v159 = v339;
                  goto LABEL_43;
                }

                v345 = v91;
                v347 = v96;
                (*(v185 + 32))(v328, v182, v184);
                v197 = objc_opt_self();
                v198 = [v197 defaultManager];
                v199 = v326;
                sub_2154A221C();
                v335 = v197;

                v200 = v314;
                sub_21549E4BC();
                v201 = *(v340 + 8);
                v202 = v334;
                v201(v199, v334);
                v203 = v317;
                sub_21549E6FC();
                sub_21549E6BC();
                (*(v318 + 8))(v203, v319);
                v204 = v315;
                sub_21549E4BC();

                v205 = v200;
                v206 = v201;
                v201(v205, v202);
                v207 = v202;
                v208 = sub_2154A1D2C();

                v209 = [v208 ic_sanitizedFilenameString];

                sub_2154A1D6C();
                v210 = v316;
                sub_21549E4AC();

                v206(v204, v207);
                sub_21549EFBC();
                v211 = v320;
                sub_21549E4DC();

                v206(v210, v207);
                sub_21549E5AC();
                v336 = 0;
                v262 = v340;
                v263 = *(v340 + 16);
                v264 = v304;
                v263(v304, v211, v207);
                (*(v262 + 56))(v264, 0, 1, v207);
                v265 = v211;
                v266 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_temporaryExportURLToRemove;
                v267 = v338;
                swift_beginAccess();
                sub_2153F1E24(v264, v267 + v266);
                swift_endAccess();
                v268 = v207;
                if ((v337 & 1) == 0)
                {

                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A368);
                  v272 = (*(v262 + 80) + 32) & ~*(v262 + 80);
                  v273 = swift_allocObject();
                  *(v273 + 16) = xmmword_2154BDB50;
                  v263((v273 + v272), v265, v207);
                  v274 = objc_allocWithZone(MEMORY[0x277D75458]);
                  v270 = v207;
                  v275 = sub_2154A1F3C();

                  v276 = [v274 initForExportingURLs:v275 asCopy:1];

                  [v276 setDelegate_];
                  v277 = *(v267 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController);
                  v278 = [v277 presentedViewController];
                  if (!v278)
                  {
                    v278 = v277;
                  }

                  v279 = v278;
                  [v278 presentViewController:v276 animated:1 completion:{0, v299}];
                  sub_215324170(v344, v346);

                  v280 = v339;
                  v271 = v343;
                  goto LABEL_91;
                }

                v269 = v303;
                sub_2153E79D4(v265, v300, v347, v303);

                if ((*(v262 + 48))(v269, 1, v207) == 1)
                {
                  v270 = v207;
                  sub_2151ADCD8(v269, &unk_27CA5B090);
                  v271 = v343;
LABEL_90:
                  v296 = v344;
                  _s11NotesEditor015AudioAttachmentB11CoordinatorC26documentPickerWasCancelledyySo010UIDocumentG14ViewControllerCF_0();
                  sub_215324170(v296, v346);
                  v280 = v339;
LABEL_91:
                  v206(v265, v270);
                  (*(v271 + 8))(v328, v341);
                  v160 = &unk_27CA5AA10;
                  v159 = v280;
                  goto LABEL_43;
                }

                v281 = v302;
                (*(v262 + 32))(v302, v269, v207);
                v282 = v335;
                v283 = [v335 defaultManager];
                v284 = v327;
                sub_21549E4FC();
                v285 = sub_2154A21FC();

                v270 = v268;
                v206(v284, v268);
                v271 = v343;
                if ((v285 & 1) == 0)
                {
                  v286 = [v282 defaultManager];
                  v287 = v282;
                  v288 = v301;
                  sub_21549E4FC();
                  v289 = v336;
                  sub_2154A220C();
                  if (v289)
                  {

                    sub_215324170(v344, v346);
                    v206(v288, v270);
                    v206(v281, v270);
                    v206(v320, v270);
                    (*(v271 + 8))(v328, v341);
                    sub_2151ADCD8(v339, &unk_27CA5AA10);
                    v241 = v329;
                    v246 = v345;
                    v242 = v289;
LABEL_73:
                    sub_21549F0DC();
                    v247 = v299;
                    v248 = v242;
                    v249 = sub_21549F0FC();
                    v250 = sub_2154A226C();

                    if (os_log_type_enabled(v249, v250))
                    {
                      v251 = swift_slowAlloc();
                      v252 = v242;
                      v253 = swift_slowAlloc();
                      v254 = swift_slowAlloc();
                      v349 = v254;
                      *v251 = 136315394;
                      v255 = [v247 shortLoggingDescription];
                      v256 = sub_2154A1D6C();
                      v345 = v246;
                      v258 = v257;

                      v259 = sub_215348D98(v256, v258, &v349);

                      *(v251 + 4) = v259;
                      *(v251 + 12) = 2112;
                      v260 = v252;
                      v261 = _swift_stdlib_bridgeErrorToNSError();
                      *(v251 + 14) = v261;
                      *v253 = v261;
                      _os_log_impl(&dword_2151A1000, v249, v250, "Cannot present document view controller {attachment: %s, error: %@}", v251, 0x16u);
                      sub_2151ADCD8(v253, &unk_27CA59E90);
                      MEMORY[0x21606B520](v253, -1, -1);
                      __swift_destroy_boxed_opaque_existential_0Tm(v254);
                      MEMORY[0x21606B520](v254, -1, -1);
                      MEMORY[0x21606B520](v251, -1, -1);

                      v345(v241, v348);
                    }

                    else
                    {

                      v246(v241, v348);
                    }

                    return;
                  }

                  v206(v288, v270);

                  v282 = v287;
                }

                v290 = [v282 defaultManager];
                v291 = v320;
                v292 = sub_21549E49C();
                v293 = sub_21549E49C();
                v349 = 0;
                v294 = [v290 copyItemAtURL:v292 toURL:v293 error:&v349];

                if (v294)
                {
                  v295 = v349;
                  v206(v281, v270);
                  v265 = v291;
                  goto LABEL_90;
                }

                v297 = v349;
                v298 = sub_21549E3DC();

                swift_willThrow();
                sub_215324170(v344, v346);
                v206(v281, v270);
                v206(v291, v270);
                (*(v271 + 8))(v328, v341);
                v242 = v298;
                v244 = &unk_27CA5AA10;
                v245 = v339;
                goto LABEL_71;
              }
            }
          }
        }
      }

      v125 = v342;
      sub_21549F0DC();
      v126 = v73;
      v127 = sub_21549F0FC();
      v128 = sub_2154A226C();

      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v349 = v130;
        *v129 = 136315138;
        v131 = [v126 shortLoggingDescription];
        v132 = sub_2154A1D6C();
        v134 = v133;

        v135 = sub_215348D98(v132, v134, &v349);

        *(v129 + 4) = v135;
        _os_log_impl(&dword_2151A1000, v127, v128, "Cannot present document view controller because decrypted data is unavailable {attachment: %s}", v129, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v130);
        MEMORY[0x21606B520](v130, -1, -1);
        MEMORY[0x21606B520](v129, -1, -1);
      }

      v91(v125, v348);
      return;
    }

    v342 = v61;
    v100 = v20;
    v101 = *(v20 + 56);
    v101(v346, 1, 1, v19);
    v299 = v73;
    if (v345)
    {
      v102 = [v73 subAttachments];
      if (v102 && (v103 = v102, v347 = v96, sub_2151A6C9C(0, &qword_281199690), sub_21533FBE4(&qword_281199680, &qword_281199690), v104 = sub_2154A20CC(), v103, v105 = sub_2153B1BA4(v104), v96 = v347, , v105) && (v106 = [v105 media], v105, v106))
      {
        v107 = [v106 mediaURL];

        if (v107)
        {
          v108 = v322;
          sub_21549E51C();

          v109 = 0;
          v110 = v346;
        }

        else
        {
          v109 = 1;
          v110 = v346;
          v108 = v322;
        }

        sub_2151ADCD8(v110, &unk_27CA5B090);
        v101(v108, v109, 1, v19);
        v212 = v335;
        sub_21533FB7C(v108, v335, &unk_27CA5B090);
        v140 = v212;
        v96 = v347;
      }

      else
      {
        v110 = v346;
        sub_2151ADCD8(v346, &unk_27CA5B090);
        v139 = v335;
        v101(v335, 1, 1, v19);
        v140 = v139;
      }
    }

    else
    {
      v136 = [v73 previewItemURL];
      if (v136)
      {
        v137 = v136;
        sub_21549E51C();

        v138 = 0;
      }

      else
      {
        v138 = 1;
      }

      v110 = v346;
      sub_2151ADCD8(v346, &unk_27CA5B090);
      v101(v93, v138, 1, v19);
      v140 = v93;
    }

    sub_21533FB7C(v140, v110, &unk_27CA5B090);
    sub_215324EEC(v110, v52, &unk_27CA5B090);
    v141 = v100;
    v142 = *(v100 + 48);
    v143 = v142(v52, 1, v19);
    v144 = v344;
    if (v143 == 1)
    {

      sub_2151ADCD8(v52, &unk_27CA5B090);
      v145 = v336;
      sub_21549F0DC();
      v146 = v299;
      v147 = sub_21549F0FC();
      v148 = sub_2154A226C();

      if (os_log_type_enabled(v147, v148))
      {
        v149 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v349 = v150;
        *v149 = 136315138;
        v151 = [v146 shortLoggingDescription];
        v152 = sub_2154A1D6C();
        v154 = v153;

        v155 = sub_215348D98(v152, v154, &v349);

        *(v149 + 4) = v155;
        _os_log_impl(&dword_2151A1000, v147, v148, "Cannot present document view controller because attachment doesn't have preview URL {attachment: %s}", v149, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v150);
        MEMORY[0x21606B520](v150, -1, -1);
        MEMORY[0x21606B520](v149, -1, -1);
      }

      v91(v145, v348);
    }

    else
    {
      v347 = v96;
      v156 = v19;
      v157 = *(v141 + 32);
      v157(v344, v52, v156);
      if (v337)
      {
        v345 = v91;
        v158 = v330;
        sub_2153E79D4(v144, v300, v347, v330);
        if (v142(v158, 1, v156) == 1)
        {

          (*(v141 + 8))(v144, v156);
          sub_2151ADCD8(v346, &unk_27CA5B090);
          v159 = v158;
          v160 = &unk_27CA5B090;
        }

        else
        {
          v157(v331, v158, v156);
          v173 = objc_opt_self();
          v174 = [v173 defaultManager];
          v175 = v327;
          sub_21549E4FC();
          v176 = sub_2154A21FC();

          v177 = v141 + 8;
          v178 = *(v141 + 8);
          v340 = v177;
          v178(v175, v156);
          if ((v176 & 1) == 0)
          {
            v179 = [v173 defaultManager];
            v180 = v321;
            sub_21549E4FC();
            sub_2154A220C();
            v178(v180, v156);
          }

          v336 = 0;
          if (qword_27CA598C8 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v348, qword_27CA5C670);
          v213 = sub_21549F0FC();
          v214 = sub_2154A224C();
          if (os_log_type_enabled(v213, v214))
          {
            v215 = swift_slowAlloc();
            *v215 = 0;
            _os_log_impl(&dword_2151A1000, v213, v214, "trying to write call recording file to disk", v215, 2u);
            MEMORY[0x21606B520](v215, -1, -1);
          }

          v216 = [v173 defaultManager];
          v217 = v344;
          v218 = sub_21549E49C();
          v219 = v331;
          v220 = sub_21549E49C();
          v349 = 0;
          v221 = [v216 copyItemAtURL:v218 toURL:v220 error:&v349];

          if (!v221)
          {
            v243 = v349;

            v242 = sub_21549E3DC();

            swift_willThrow();
            v178(v219, v156);
            v178(v217, v156);
            v244 = &unk_27CA5B090;
            v245 = v346;
LABEL_71:
            sub_2151ADCD8(v245, v244);
            v241 = v329;
LABEL_72:
            v246 = v345;
            goto LABEL_73;
          }

          v222 = v349;
          v223 = [v299 audioModel];
          v224 = v346;
          if (v223)
          {
            v225 = v223;
            v226 = [v223 audioDocument];

            if (!v226)
            {
              __break(1u);
              return;
            }

            v227 = v156;
            sub_2154A23BC();

            v228 = sub_21549F0FC();
            v229 = sub_2154A224C();
            v230 = os_log_type_enabled(v228, v229);
            v231 = v308;
            if (v230)
            {
              v232 = swift_slowAlloc();
              *v232 = 0;
              _os_log_impl(&dword_2151A1000, v228, v229, "attempting to write transcript to disk", v232, 2u);
              MEMORY[0x21606B520](v232, -1, -1);
            }

            v233 = v305;
            sub_21549EB7C();

            sub_21549E1AC();
            (*(v306 + 8))(v233, v307);
            sub_2151C2DCC(&unk_27CA5C7C0, MEMORY[0x277CC8B30]);
            v234 = sub_2154A1EFC();
            v236 = v235;
            v237 = v327;
            v238 = v331;
            sub_21549E4FC();
            v349 = v300;
            v350 = v347;
            MEMORY[0x2160689F0](1954051118, 0xE400000000000000);
            sub_21549E4CC();

            v178(v237, v227);
            v349 = v234;
            v350 = v236;
            v239 = v311;
            sub_2154A1D7C();
            sub_215324954();
            v240 = v336;
            sub_2154A2BBC();
            if (!v240)
            {
              (*(v312 + 8))(v239, v313);
              v178(v231, v227);
              v178(v238, v227);
              v178(v344, v227);
              sub_2151ADCD8(v346, &unk_27CA5B090);

              return;
            }

            (*(v312 + 8))(v239, v313);
            v178(v231, v227);
            v178(v238, v227);
            v178(v344, v227);
            sub_2151ADCD8(v346, &unk_27CA5B090);

            v241 = v329;
            v242 = v240;
            goto LABEL_72;
          }

          v178(v331, v156);
          v178(v344, v156);
          v160 = &unk_27CA5B090;
          v159 = v224;
        }

LABEL_43:
        sub_2151ADCD8(v159, v160);
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A368);
      v161 = (*(v141 + 80) + 32) & ~*(v141 + 80);
      v162 = swift_allocObject();
      *(v162 + 16) = xmmword_2154BDB50;
      (*(v141 + 16))(v162 + v161, v144, v156);
      v163 = objc_allocWithZone(MEMORY[0x277D75458]);
      v164 = sub_2154A1F3C();

      v165 = [v163 initForExportingURLs:v164 asCopy:1];

      v166 = v338;
      [v165 setDelegate_];
      v167 = *(v166 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController);
      v168 = [v167 presentedViewController];
      if (!v168)
      {
        v168 = v167;
      }

      v169 = v168;
      [v168 presentViewController:v165 animated:1 completion:{0, v299}];

      (*(v141 + 8))(v144, v156);
    }

    v160 = &unk_27CA5B090;
    v159 = v346;
    goto LABEL_43;
  }
}

uint64_t AudioAttachmentEditorCoordinator.presentExportView(for:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_2154A202C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_2154A1FFC();
  v7 = v1;
  v8 = a1;
  v9 = sub_2154A1FEC();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v7;
  v10[5] = v8;
  sub_2152F4D50(0, 0, v5, &unk_2154C2D50, v10);
}

uint64_t sub_2153E7614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_2154A1FFC();
  v5[5] = sub_2154A1FEC();
  v7 = swift_task_alloc();
  v5[6] = v7;
  *v7 = v5;
  v7[1] = sub_2153E76D4;

  return sub_2153E401C(a5);
}

uint64_t sub_2153E76D4()
{

  v1 = sub_2154A1FCC();

  return MEMORY[0x2822009F8](sub_2153E7810, v1, v0);
}

uint64_t sub_2153E7810()
{
  v1 = *(v0 + 24);

  sub_2153E4C18(v1, 0, 0);
  v2 = *(v0 + 8);

  return v2();
}

void *sub_2153E79D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a2;
  v37 = a3;
  v34 = a1;
  v39 = a4;
  v35 = sub_21549F11C();
  v4 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_21549E56C();
  v7 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - v17;
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v20 = result;
    v21 = CFGetTypeID(v20);
    if (v21 == CFStringGetTypeID())
    {
      sub_2154A1D6C();

      v22 = sub_21549E44C();
      v24 = v23;
      sub_21549E48C();

      sub_21549E4BC();
      v25 = ICNotesAppBundleIdentifier();
      sub_2154A1D6C();

      sub_21549E4BC();

      v26 = *(v7 + 8);
      v27 = v9;
      v28 = v38;
      v26(v27, v38);
      sub_21549E4BC();
      v26(v12, v28);
      v40 = v36;
      v41 = v37;

      MEMORY[0x2160689F0](46, 0xE100000000000000);
      MEMORY[0x2160689F0](v22, v24);

      v29 = v39;
      sub_21549E4CC();

      v26(v15, v28);
      v26(v18, v28);
      v30 = 0;
    }

    else
    {

      sub_21549F0DC();
      v31 = sub_21549F0FC();
      v32 = sub_2154A226C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_2151A1000, v31, v32, "Cannot get home directory path to export call recording for data collection", v33, 2u);
        MEMORY[0x21606B520](v33, -1, -1);
      }

      (*(v4 + 8))(v6, v35);
      v30 = 1;
      v28 = v38;
      v29 = v39;
    }

    return (*(v7 + 56))(v29, v30, 1, v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s11NotesEditor015AudioAttachmentB11CoordinatorC26documentPickerWasCancelledyySo010UIDocumentG14ViewControllerCF_0()
{
  v17[4] = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17[-1] - v2;
  v4 = sub_21549E56C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_temporaryExportURLToRemove;
  swift_beginAccess();
  sub_215324EEC(v0 + v8, v3, &unk_27CA5B090);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_2151ADCD8(v3, &unk_27CA5B090);
  }

  (*(v5 + 32))(v7, v3, v4);
  v10 = [objc_opt_self() defaultManager];
  v11 = sub_21549E49C();
  v17[0] = 0;
  v12 = [v10 removeItemAtURL:v11 error:v17];

  if (v12)
  {
    v13 = v17[0];
  }

  else
  {
    v14 = v17[0];
    v15 = sub_21549E3DC();

    swift_willThrow();
  }

  return (*(v5 + 8))(v7, v4);
}

Swift::Void __swiftcall AudioAttachmentEditorCoordinator.viewWasDismissed()()
{
  v1 = v0;
  v2 = sub_21549E95C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C6A8);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5C6B0);
  MEMORY[0x28223BE20](v8 - 8);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  v16 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_isShowingInspector;
  swift_beginAccess();
  *(v1 + v16) = 0;
  [*(v1 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController) setNeedsUpdateOfSupportedInterfaceOrientations];
  sub_21549F93C();
  sub_21549F90C();
  v17 = sub_21549F8EC();

  if (!v17)
  {
    goto LABEL_12;
  }

  sub_21549F90C();
  v18 = sub_21549F8EC();

  if (v18)
  {
    sub_21549F73C();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = *(v3 + 56);
  v20(v15, v19, 1, v2);
  (*(v3 + 104))(v12, *MEMORY[0x277D359D0], v2);
  v20(v12, 0, 1, v2);
  v21 = *(v5 + 48);
  sub_215324EEC(v15, v7, &unk_27CA5C6B0);
  sub_215324EEC(v12, &v7[v21], &unk_27CA5C6B0);
  v22 = v3;
  v23 = *(v3 + 48);
  if (v23(v7, 1, v2) != 1)
  {
    v24 = v33;
    sub_215324EEC(v7, v33, &unk_27CA5C6B0);
    if (v23(&v7[v21], 1, v2) != 1)
    {
      v25 = v22;
      v26 = *(v22 + 32);
      v27 = v32;
      v26(v32, &v7[v21], v2);
      sub_2151C2DCC(&qword_27CA5AE28, MEMORY[0x277D359F0]);
      v28 = sub_2154A1D1C();
      v29 = *(v25 + 8);
      v29(v27, v2);
      sub_2151ADCD8(v12, &unk_27CA5C6B0);
      sub_2151ADCD8(v15, &unk_27CA5C6B0);
      v29(v33, v2);
      sub_2151ADCD8(v7, &unk_27CA5C6B0);
      if ((v28 & 1) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

    sub_2151ADCD8(v12, &unk_27CA5C6B0);
    sub_2151ADCD8(v15, &unk_27CA5C6B0);
    (*(v22 + 8))(v24, v2);
LABEL_10:
    sub_2151ADCD8(v7, &qword_27CA5C6A8);
    return;
  }

  sub_2151ADCD8(v12, &unk_27CA5C6B0);
  sub_2151ADCD8(v15, &unk_27CA5C6B0);
  if (v23(&v7[v21], 1, v2) != 1)
  {
    goto LABEL_10;
  }

  sub_2151ADCD8(v7, &unk_27CA5C6B0);
LABEL_12:
  v30 = *(v1 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_recordingViewController);
  *(v1 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_recordingViewController) = 0;
}

uint64_t sub_2153E860C()
{
  sub_2154A1FFC();
  v0[18] = sub_2154A1FEC();
  v2 = sub_2154A1FCC();
  v0[19] = v2;
  v0[20] = v1;

  return MEMORY[0x2822009F8](sub_2153E86A0, v2, v1);
}

uint64_t sub_2153E86A0()
{
  v1 = objc_opt_self();
  v0[21] = v1;
  v2 = [v1 sharedAudioController];
  v0[22] = v2;
  if (v2)
  {
    v3 = v2;
    v0[2] = v0;
    v0[7] = v0 + 23;
    v0[3] = sub_2153E87EC;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B538);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21538CA80;
    v0[13] = &block_descriptor_96;
    v0[14] = v4;
    [v3 seekToTime:v0 + 10 completion:0.0];
    v2 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v2);
}

uint64_t sub_2153E87EC()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);

  return MEMORY[0x2822009F8](sub_2153E88F4, v2, v1);
}

id sub_2153E88F4()
{
  v1 = *(v0 + 168);

  result = [v1 sharedAudioController];
  if (result)
  {
    v3 = result;

    [v3 play];

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void AudioAttachmentEditorCoordinator.closeMiniPlayer(for:)(void *a1)
{
  v2 = [a1 objectID];
  swift_beginAccess();
  sub_2153EED00(&v4, v2, &qword_2811995F0, 0x277CBE448, &unk_27CA5C6F0, &unk_2154BE710);
  v3 = v4;
  swift_endAccess();

  sub_2153E2A18(0, a1);
}

void AudioAttachmentEditorCoordinator.scroll(to:)(void *a1)
{
  v3 = [v1 textView];
  if (v3)
  {
    v6 = v3;
    v4 = [a1 rangeInNote];
    [v6 ic:v4 scrollRangeToVisible:v5 animated:1 completionHandler:0];
  }
}

id AudioAttachmentEditorCoordinator.rename(_:)(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = *(v1 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController);

  return [v3 renameAttachment:a1 presentingViewController:v4];
}

void AudioAttachmentEditorCoordinator.presentTranscript(for:)(void *a1)
{
  v2 = [a1 audioModel];
  if (v2)
  {
    v3 = v2;
    v4 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_isShowingInspector;
    swift_beginAccess();
    *(v1 + v4) = 1;
    v5 = [objc_opt_self() getHostingViewForAttachmentModel:v3 delegate:v1];
    sub_2153F0354(v5);
    [*(v1 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController) presentViewController:v5 animated:1 completion:0];
  }
}

id AudioAttachmentEditorCoordinator.presentSummary(for:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SummaryView(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v21 - v9;
  result = [a1 audioModel];
  if (result)
  {
    v12 = result;
    sub_21549ECCC();
    swift_allocObject();
    v13 = v12;
    v14 = sub_21549EC4C();
    type metadata accessor for SummaryViewModel();
    swift_allocObject();
    v15 = v13;

    v16 = sub_21535EFE4(v15);

    type metadata accessor for RecordingViewModel();
    swift_allocObject();
    v17 = v15;

    sub_215466468(v17, v14, v16);

    sub_215434CD0(v18, v10);
    sub_2153F0A20(v10, v6);
    v19 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C6C0));
    v20 = sub_2154A02AC();
    [*(v2 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController) presentViewController:v20 animated:1 completion:0];

    return sub_2153F0A84(v10);
  }

  return result;
}

uint64_t sub_2153E9114()
{
  v0[2] = sub_2154A1FFC();
  v0[3] = sub_2154A1FEC();
  v3 = (*MEMORY[0x277D36378] + MEMORY[0x277D36378]);
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2153E91D8;

  return v3();
}

uint64_t sub_2153E91D8()
{
  *(*v1 + 40) = v0;

  v3 = sub_2154A1FCC();
  if (v0)
  {
    v4 = sub_2153E9398;
  }

  else
  {
    v4 = sub_2153E9334;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_2153E9334()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2153E9398()
{

  v1 = *(v0 + 8);

  return v1();
}

void AudioAttachmentEditorCoordinator.presentReportAConcern(for:withPositiveFeedback:)(void *a1, char a2)
{
  v4 = sub_21549EEEC();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = [a1 audioModel];
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  v11 = [v9 audioDocument];
  if (!v11)
  {
    __break(1u);
    goto LABEL_31;
  }

  v12 = v11;
  v13 = sub_2154A238C();

  if (v13)
  {
    v14 = [v13 attributedString];

    if (v14)
    {
      v15 = [v14 string];

      sub_2154A1D6C();
      v16 = sub_2154A1E0C();

      if (v16 >= 1)
      {
        sub_21549ECCC();
        swift_allocObject();
        v17 = v10;
        sub_21549EC4C();
        sub_2154A11FC();
        v18 = sub_2153E183C();
        v19 = sub_2151C2DCC(&unk_27CA5C6C8, type metadata accessor for ICFeedbackExtension);
        v20 = MEMORY[0x216067D80](v18, v19);
        sub_2153E9AA8(v17, a1, v8);
        sub_2154A11CC();
        v21 = *(v5 + 8);
        v21(v8, v4);
        if (a2)
        {
          sub_2153E9AA8(v17, a1, v8);
          sub_2154A118C();
          v21(v8, v4);
          if (qword_27CA598C8 != -1)
          {
            swift_once();
          }

          v22 = sub_21549F11C();
          __swift_project_value_buffer(v22, qword_27CA5C670);
          v23 = sub_21549F0FC();
          v24 = sub_2154A224C();
          if (!os_log_type_enabled(v23, v24))
          {
            goto LABEL_29;
          }

          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          *v25 = 138412290;
          *(v25 + 4) = 0;
          *v26 = 0;
          v27 = "Positive Feedback with evaluation result: %@";
        }

        else
        {
          IsFCSReportAConcernEnabled = ICInternalSettingsIsFCSReportAConcernEnabled();
          sub_2153E9AA8(v17, a1, v8);
          if (IsFCSReportAConcernEnabled)
          {
            sub_2154A11BC();
            v21(v8, v4);
            if (qword_27CA598C8 != -1)
            {
              swift_once();
            }

            v33 = sub_21549F11C();
            __swift_project_value_buffer(v33, qword_27CA5C670);
            v23 = sub_21549F0FC();
            v24 = sub_2154A224C();
            if (!os_log_type_enabled(v23, v24))
            {
              goto LABEL_29;
            }

            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            *v25 = 138412290;
            *(v25 + 4) = 0;
            *v26 = 0;
            v27 = "Report A Concern with evaluation result: %@";
          }

          else
          {
            sub_2154A119C();
            v21(v8, v4);
            if (qword_27CA598C8 != -1)
            {
              swift_once();
            }

            v34 = sub_21549F11C();
            __swift_project_value_buffer(v34, qword_27CA5C670);
            v23 = sub_21549F0FC();
            v24 = sub_2154A224C();
            if (!os_log_type_enabled(v23, v24))
            {
              goto LABEL_29;
            }

            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            *v25 = 138412290;
            *(v25 + 4) = 0;
            *v26 = 0;
            v27 = "Negative Feedback with evaluation result: %@";
          }
        }

        _os_log_impl(&dword_2151A1000, v23, v24, v27, v25, 0xCu);
        sub_2151ADCD8(v26, &unk_27CA59E90);
        MEMORY[0x21606B520](v26, -1, -1);
        MEMORY[0x21606B520](v25, -1, -1);
LABEL_29:

        return;
      }

      goto LABEL_11;
    }

LABEL_31:
    __break(1u);
    return;
  }

LABEL_11:

LABEL_12:
  if (qword_27CA598C8 != -1)
  {
    swift_once();
  }

  v28 = sub_21549F11C();
  __swift_project_value_buffer(v28, qword_27CA5C670);
  v36 = sub_21549F0FC();
  v29 = sub_2154A226C();
  if (os_log_type_enabled(v36, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2151A1000, v36, v29, "could not report feedback for topline summary because the summary was empty", v30, 2u);
    MEMORY[0x21606B520](v30, -1, -1);
  }

  v31 = v36;
}