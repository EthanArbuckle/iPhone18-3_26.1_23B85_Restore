uint64_t sub_214F77414(uint64_t a1, unint64_t a2)
{
  v3 = sub_214F77460(a1, a2);
  sub_214F77590(&unk_28270D9D8);
  return v3;
}

uint64_t sub_214F77460(uint64_t a1, unint64_t a2)
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

  v6 = sub_21500EF04(v5, 0);
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

  result = sub_2150A5C80();
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
        v10 = sub_2150A4C50();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21500EF04(v10, 0);
        result = sub_2150A5AE0();
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

uint64_t sub_214F77590(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_214F7767C(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_214F7767C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42300);
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

uint64_t ICTTAudioDocument.orderedFragments.getter()
{
  v1 = [v0 document];
  v2 = [v1 rootObject];

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 fragments];
      swift_unknownObjectRelease();
      v6 = [v5 allObjects];

      type metadata accessor for ICTTAudioRecording.Fragment();
      v7 = sub_2150A4ED0();

      v16 = v3;
      if (v7 >> 62)
      {
        goto LABEL_20;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2150A59D0())
      {
        v9 = 0;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x216062780](v9, v7);
          }

          else
          {
            if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_19;
            }

            v10 = *(v7 + 8 * v9 + 32);
          }

          v11 = v10;
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          v13 = [v10 createdDate];
          if (v13)
          {

            sub_2150A5CB0();
            sub_2150A5CF0();
            sub_2150A5D00();
            sub_2150A5CC0();
          }

          else
          {
          }

          ++v9;
          if (v12 == i)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        ;
      }

LABEL_15:

      v16 = sub_214F7E1B8(v14);
      sub_214F7C278(&v16);

      return v16;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return v3;
}

void ICTTAudioDocument.append(_:)(uint64_t a1)
{
  v3 = [v1 document];
  v4 = [v3 rootObject];

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 fragments];
      swift_unknownObjectRelease();
      [v6 addObject_];
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void *ICTTAudioDocument.fragment(for:)(uint64_t a1)
{
  v3 = [v1 document];
  v4 = [v3 rootObject];

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 fragments];
      swift_unknownObjectRelease();
      v7 = [v6 allObjects];

      type metadata accessor for ICTTAudioRecording.Fragment();
      v8 = sub_2150A4ED0();

      MEMORY[0x28223BE20](v9);
      v12[2] = a1;
      v10 = sub_214F77C68(sub_214F7E24C, v12, v8);

      return v10;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

void *sub_214F77C68(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2150A59D0())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x216062780](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_214F77D7C()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA42310);
  v1 = __swift_project_value_buffer(v0, qword_27CA42310);
  if (qword_280C23250 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C23258);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id ICTTAudioDocument.init(replicaID:compatibleDocument:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_2150A39A0();
  v6 = [v4 initWithReplicaID:v5 compatibleDocument:a2];

  v7 = sub_2150A3A00();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

id ICTTAudioDocument.init(replicaID:compatibleDocument:)(uint64_t a1, id a2)
{
  v5 = sub_2150A3A00();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  if (a2)
  {
    goto LABEL_4;
  }

  v23 = v2;
  (*(v6 + 16))(&v22 - v10, a1, v5);
  v12 = objc_allocWithZone(ICCRTTCompatibleDocument);
  v13 = sub_2150A39A0();
  v14 = *(v6 + 8);
  v14(v11, v5);
  v15 = [v12 initWithReplica_];

  result = [objc_opt_self() TTZero];
  if (result)
  {
    v17 = result;
    sub_2150A39C0();

    v18 = objc_allocWithZone(ICTTAudioRecording);
    a2 = v15;
    v19 = sub_2150A39A0();
    v20 = [v18 initWithDocument:a2 identity:v19];

    v14(v9, v5);
    [a2 setRootObject_];

    v2 = v23;
LABEL_4:
    *&v2[OBJC_IVAR___ICTTAudioDocument_document] = a2;
    v24.receiver = v2;
    v24.super_class = ICTTAudioDocument;
    v21 = objc_msgSendSuper2(&v24, sel_init);
    (*(v6 + 8))(a1, v5);
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t ICTTAudioDocument.archivedData()()
{
  v1 = [v0 document];
  v2 = [v1 archivedData];

  v3 = sub_2150A37B0();
  return v3;
}

id sub_214F7835C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42240);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = sub_2150A3790();
  v2 = sub_2150A39A0();
  v3 = [ObjCClassFromMetadata unarchiveFromData:v1 replica:v2];

  if (!v3)
  {
    return 0;
  }

  v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42370);
  v10[0] = v3;
  v4 = v3;
  v5 = sub_214F6CD1C(v10);
  __swift_destroy_boxed_opaque_existential_0(v10);
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_2150A39A0();
  v8 = [v6 initWithReplicaID:v7 compatibleDocument:{v5, v10[0]}];

  return v8;
}

id ICTTAudioDocument.merge(withMergeableData:replicaID:)()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = sub_2150A3790();
  v4 = sub_2150A39A0();
  v5 = [v2 unarchiveFromData:v3 replicaID:v4];

  if (v5)
  {
    v6 = [v1 document];
    v7 = [v5 document];
    v8 = [v6 mergeWithDocument_];
  }

  else
  {
    if (qword_27CA41488 != -1)
    {
      swift_once();
    }

    v9 = sub_2150A3F30();
    __swift_project_value_buffer(v9, qword_27CA42310);
    v7 = sub_2150A3F10();
    v10 = sub_2150A5570();
    if (os_log_type_enabled(v7, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_214D51000, v7, v10, "could not unarchive audio document", v11, 2u);
      MEMORY[0x216064AF0](v11, -1, -1);
    }

    v8 = 0;
  }

  return v8;
}

size_t ICTTAudioDocument.orderedFragmentUUIDs.getter()
{
  v14 = sub_2150A3A00();
  v0 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = ICTTAudioDocument.orderedFragments.getter();
  v4 = v3;
  if (!(v3 >> 62))
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v5 = sub_2150A59D0();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  v15 = MEMORY[0x277D84F90];
  result = sub_214F86E24(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v15;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x216062780](v7, v4);
      }

      else
      {
        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = [v10 identity];
      sub_2150A39C0();

      v15 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_214F86E24(v12 > 1, v13 + 1, 1);
        v8 = v15;
      }

      ++v7;
      *(v8 + 16) = v13 + 1;
      (*(v0 + 32))(v8 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v13, v2, v14);
    }

    while (v5 != v7);

    return v8;
  }

  __break(1u);
  return result;
}

void sub_214F78B2C(uint64_t a1)
{
  v53 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42360);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = &v41 - v3;
  v54 = sub_2150A3A00();
  isa = v54[-1].isa;
  v5 = MEMORY[0x28223BE20](v54);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - v7;
  v45 = v1;
  v9 = [v1 document];
  v10 = [v9 rootObject];

  if (!v10)
  {
LABEL_25:
    if (qword_27CA41488 != -1)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v43 = [v11 fragments];
  swift_unknownObjectRelease();
  v12 = ICTTAudioDocument.orderedFragments.getter();
  v13 = v12;
  if (v12 >> 62)
  {
    v14 = sub_2150A59D0();
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_35:

    return;
  }

  v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_35;
  }

LABEL_5:
  v15 = 0;
  v49 = v14;
  v50 = v13 & 0xC000000000000001;
  v52 = (isa + 8);
  v46 = (isa + 48);
  v47 = v13 & 0xFFFFFFFFFFFFFF8;
  v42 = (isa + 32);
  v48 = (isa + 56);
  while (1)
  {
    if (v50)
    {
      v16 = MEMORY[0x216062780](v15, v13);
    }

    else
    {
      if (v15 >= *(v47 + 16))
      {
        goto LABEL_32;
      }

      v16 = *(v13 + 8 * v15 + 32);
    }

    v17 = v16;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    v19 = [v16 identity];
    sub_2150A39C0();

    v20 = sub_2150A3990();
    v22 = v21;
    v23 = *v52;
    (*v52)(v8, v54);
    if (!*(v53 + 16))
    {

LABEL_18:
      v26 = v51;
      (*v48)(v51, 1, 1, v54);
LABEL_19:
      sub_214F302D4(v26, &unk_27CA42360);
      if (qword_27CA41488 != -1)
      {
        swift_once();
      }

      v33 = sub_2150A3F30();
      __swift_project_value_buffer(v33, qword_27CA42310);
      v34 = sub_2150A3F10();
      v35 = sub_2150A5560();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_214D51000, v34, v35, "Cannot update fragment identity after load because mapped identity is missing", v36, 2u);
        MEMORY[0x216064AF0](v36, -1, -1);
      }

      goto LABEL_7;
    }

    sub_214F30094(v20, v22);
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      goto LABEL_18;
    }

    v26 = v51;
    sub_2150A3980();

    if ((*v46)(v26, 1, v54) == 1)
    {
      goto LABEL_19;
    }

    v27 = v44;
    (*v42)(v44, v26, v54);
    type metadata accessor for ICTTAudioRecording.Fragment();
    v28 = [v45 document];
    v29 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v30 = sub_2150A39A0();
    v31 = [v29 initWithDocument:v28 identity:v30];

    sub_214F7E2C4(v17, v31);
    v32 = v43;
    [v43 removeObject_];
    [v32 addObject_];

    v23(v27, v54);
LABEL_7:
    ++v15;
    if (v18 == v49)
    {

      return;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  swift_once();
LABEL_26:
  v37 = sub_2150A3F30();
  __swift_project_value_buffer(v37, qword_27CA42310);
  v54 = sub_2150A3F10();
  v38 = sub_2150A5560();
  if (os_log_type_enabled(v54, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_214D51000, v54, v38, "Cannot update fragment identities after load because fragments are unavailable", v39, 2u);
    MEMORY[0x216064AF0](v39, -1, -1);
  }

  v40 = v54;
}

id ICTTAudioDocument.fragments.getter()
{
  v1 = [v0 document];
  v2 = [v1 rootObject];

  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 fragments];
      swift_unknownObjectRelease();
      return v4;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

void *ICTTAudioDocument.transcriptViewModelSegments.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42338);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v70 - v2;
  v84 = type metadata accessor for TranscriptViewModelSegment(0);
  v78 = *(v84 - 8);
  v4 = MEMORY[0x28223BE20](v84);
  v83 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v77 = &v70 - v6;
  v97 = MEMORY[0x277D84F90];
  v89 = v0;
  v7 = ICTTAudioDocument.orderedFragments.getter();
  v9 = v7;
  if (v7 >> 62)
  {
    goto LABEL_73;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2150A59D0())
  {
    v11 = 0;
    v73 = 0;
    v76 = v9 & 0xC000000000000001;
    v72 = v9 & 0xFFFFFFFFFFFFFF8;
    v71 = (v9 + 32);
    v82 = (v78 + 56);
    v81 = (v78 + 48);
    v12 = 0.0;
    *&v8 = 138412290;
    v70 = v8;
    v13 = 0.0;
    v14 = 0.0;
    v75 = v9;
    v74 = i;
    while (1)
    {
      if (v76)
      {
        v19 = MEMORY[0x216062780](v11, v9);
        v20 = __OFADD__(v11, 1);
        v21 = v11 + 1;
        if (v20)
        {
          break;
        }

        goto LABEL_13;
      }

      if (v11 >= *(v72 + 16))
      {
        goto LABEL_72;
      }

      v19 = *&v71[8 * v11];
      v20 = __OFADD__(v11, 1);
      v21 = v11 + 1;
      if (v20)
      {
        break;
      }

LABEL_13:
      v79 = v19;
      v9 = [v19 transcript];
      v22 = [v9 allObjects];

      type metadata accessor for ICTTTranscriptSegment();
      v23 = sub_2150A4ED0();

      if (v23 >> 62)
      {
        v24 = sub_2150A59D0();
      }

      else
      {
        v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v80 = v21;
      if (v24)
      {
        v25 = 0;
        v87 = v23 & 0xFFFFFFFFFFFFFF8;
        v88 = v23 & 0xC000000000000001;
        v26 = MEMORY[0x277D84F90];
        v85 = v24;
        v86 = v23;
        while (1)
        {
          if (v88)
          {
            v29 = MEMORY[0x216062780](v25, v23);
          }

          else
          {
            if (v25 >= *(v87 + 16))
            {
              goto LABEL_70;
            }

            v29 = *(v23 + 8 * v25 + 32);
          }

          v9 = v29;
          if (__OFADD__(v25, 1))
          {
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }

          v30 = [v29 text];
          if (!v30 || (v31 = v30, v95 = 0, v96 = 0, sub_2150A4AC0(), v31, (v32 = v96) == 0))
          {
LABEL_63:
            sub_214F4810C();
            v61 = swift_allocError();
            *v62 = 12;
            swift_willThrow();

            if (qword_27CA41488 != -1)
            {
              swift_once();
            }

            v63 = sub_2150A3F30();
            __swift_project_value_buffer(v63, qword_27CA42310);
            v64 = v61;
            v65 = sub_2150A3F10();
            v66 = sub_2150A5560();

            v67 = os_log_type_enabled(v65, v66);
            v11 = v80;
            if (v67)
            {
              v15 = swift_slowAlloc();
              v16 = swift_slowAlloc();
              *v15 = v70;
              v17 = v61;
              v18 = _swift_stdlib_bridgeErrorToNSError();
              *(v15 + 4) = v18;
              *v16 = v18;
              _os_log_impl(&dword_214D51000, v65, v66, "%@", v15, 0xCu);
              sub_214F302D4(v16, &qword_27CA41DF0);
              MEMORY[0x216064AF0](v16, -1, -1);
              MEMORY[0x216064AF0](v15, -1, -1);
            }

            else
            {
            }

            v73 = 0;
            goto LABEL_6;
          }

          v94 = v95;
          v33 = [v9 timestamp];
          if (!v33)
          {
            goto LABEL_62;
          }

          v34 = v33;
          v93 = v25 + 1;
          v35 = [v9 duration];
          if (!v35)
          {

LABEL_62:

            goto LABEL_63;
          }

          v36 = v35;
          v95 = 0;
          LOBYTE(v96) = 1;
          MEMORY[0x216061E60](v34, &v95);
          if (v96)
          {
            goto LABEL_80;
          }

          v92 = v26;
          v37 = v95;
          v95 = 0;
          LOBYTE(v96) = 1;
          MEMORY[0x216061E60](v36, &v95);
          if (v96)
          {
            __break(1u);
LABEL_80:
            __break(1u);
            goto LABEL_81;
          }

          v12 = *&v95;
          v38 = [v9 speaker];
          v39 = [v89 localSpeakerHandle];
          v40 = v39;
          v91 = v32;
          if (v38)
          {
            if (!v39)
            {
              v40 = v38;
LABEL_36:

LABEL_37:
              v42 = [v9 speaker];
              v43 = [v89 remoteSpeakerHandle];
              v44 = v43;
              if (v42)
              {
                if (v43)
                {
                  sub_214D55670(0, &qword_27CA42350);
                  v45 = sub_2150A5780();

                  if (v45)
                  {
LABEL_43:
                    v46 = 1;
LABEL_46:
                    v90 = v46;
                    goto LABEL_47;
                  }
                }

                else
                {
                }
              }

              else
              {
                if (!v43)
                {
                  goto LABEL_43;
                }
              }

              v46 = 2;
              goto LABEL_46;
            }

            sub_214D55670(0, &qword_27CA42350);
            v41 = sub_2150A5780();

            if ((v41 & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          else if (v39)
          {
            goto LABEL_36;
          }

          v90 = 0;
LABEL_47:
          v47 = [v9 speaker];
          if (v47)
          {
            v95 = 0;
            v96 = 0;
            v48 = v47;
            sub_2150A4AC0();

            v49 = v96;
            if (v96)
            {
              v50 = v95;
            }

            else
            {
              v50 = 0;
            }
          }

          else
          {
            v50 = 0;
            v49 = 0;
          }

          v13 = v14 + *&v37;
          v51 = v84;
          v52 = &v3[*(v84 + 36)];
          *v52 = 0;
          *(v52 + 1) = 0;
          v53 = v51[10];
          v3[v53] = 2;
          _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();

          v54 = &v3[v51[5]];
          v55 = v91;
          *v54 = v94;
          *(v54 + 1) = v55;
          *&v3[v51[6]] = v13;
          *&v3[v51[7]] = v12;
          *v52 = v50;
          *(v52 + 1) = v49;
          v3[v53] = v90;
          v56 = v13 + v12;
          *&v3[v51[8]] = v13 + v12;
          (*v82)(v3, 0, 1, v51);

          if ((*v81)(v3, 1, v51) == 1)
          {
            sub_214F302D4(v3, &qword_27CA42338);
            v27 = v85;
            v23 = v86;
            v26 = v92;
            v28 = v93;
          }

          else
          {
            v57 = v77;
            sub_214F5462C(v3, v77);
            sub_214F5462C(v57, v83);
            v26 = v92;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v27 = v85;
            v23 = v86;
            v28 = v93;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v26 = sub_21505F724(0, v26[2] + 1, 1, v26);
            }

            v60 = v26[2];
            v59 = v26[3];
            v9 = v60 + 1;
            if (v60 >= v59 >> 1)
            {
              v26 = sub_21505F724(v59 > 1, v60 + 1, 1, v26);
            }

            v26[2] = v9;
            sub_214F5462C(v83, v26 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v60);
          }

          ++v25;
          if (v28 == v27)
          {
            goto LABEL_60;
          }
        }
      }

      v56 = v12 + v13;
      v26 = MEMORY[0x277D84F90];
LABEL_60:

      sub_21506860C(v26);

      v14 = v56;
      v11 = v80;
LABEL_6:
      v9 = v75;
      if (v11 == v74)
      {

        v36 = v73;
        goto LABEL_75;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    ;
  }

  v36 = 0;
LABEL_75:
  v68 = [v89 isCallRecording];
  result = v97;
  if (v68)
  {
    v95 = v97;

    sub_214F7C2F4(&v95);
    if (v36)
    {
LABEL_81:

      __break(1u);
    }

    else
    {

      return v95;
    }
  }

  return result;
}

uint64_t sub_214F79C88(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x2821FBE70](a1);
  }

LABEL_5:
  a1 = sub_2150A4BE0();

  return MEMORY[0x2821FBE70](a1);
}

uint64_t sub_214F79CF8(char a1)
{
  v2 = sub_2150A3340();
  MEMORY[0x28223BE20](v2);
  v3 = sub_2150A3400();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = ICTTAudioDocument.transcriptViewModelSegments.getter();
  static TranscriptViewModelSegment.transcriptStringFromSegments(segments:includeSpeakerLabels:)(v7, a1, v6);

  sub_2150A3330();
  (*(v4 + 8))(v6, v3);
  sub_214F7E26C();
  v12[0] = sub_2150A4D20();
  v12[1] = v8;

  v9 = sub_2150A4BC0();

  if (v9 >= 1)
  {
    sub_214F79C88(v10);
  }

  return v12[0];
}

unint64_t ICTTAudioDocument.transcriptVersion.getter()
{
  result = ICTTAudioDocument.orderedFragments.getter();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:
    v2 = 0;
    goto LABEL_9;
  }

  v3 = result;
  v4 = sub_2150A59D0();
  result = v3;
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x216062780](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);
LABEL_6:
    v2 = v1;
LABEL_9:

    v5 = [v2 transcriptVersion];

    return v5;
  }

  __break(1u);
  return result;
}

ICTTAudioDocument __swiftcall ICTTAudioDocument.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.document = v2;
  result.super.isa = v1;
  return result;
}

uint64_t ICTTAudioDocument.root.getter()
{
  v1 = [v0 document];
  v2 = [v1 rootObject];

  if (v2)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_214F7A184(id *a1)
{
  v2 = sub_2150A3A00();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*a1 identity];
  sub_2150A39C0();

  v7 = sub_2150A39B0();
  (*(v3 + 8))(v5, v2);
  return v7 & 1;
}

void (*ICTTAudioDocument.topLineSummary.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 document];
  v4 = [v3 rootObject];

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (!v5)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 topLineSummary];

  *a1 = v6;
  return sub_214F7A368;
}

id ICTTAudioDocument.hasToplineSummary.getter()
{
  v1 = [v0 document];
  v2 = [v1 rootObject];

  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 topLineSummary];

  if (!v4)
  {
    return 0;
  }

  result = [v4 attributedString];
  if (result)
  {
    v6 = result;
    v7 = [result string];

    v8 = sub_2150A4AD0();
    v10 = v9;

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    return (v11 != 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*ICTTAudioDocument.recordingSummary.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 document];
  v4 = [v3 rootObject];

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (!v5)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 summary];

  *a1 = v6;
  return sub_214F7A5B4;
}

void (*ICTTAudioDocument.recordingSummaryVersion.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 document];
  v4 = [v3 rootObject];

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (!v5)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 summaryVersion];

  *a1 = v6;
  return sub_214F7A6A4;
}

void (*ICTTAudioDocument.toplineModelVersionInfo.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 document];
  v4 = [v3 rootObject];

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (!v5)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 toplineSummaryModelVersionInfo];

  *a1 = v6;
  return sub_214F7A794;
}

void sub_214F7A7AC(id *a1@<X0>, SEL *a2@<X3>, void *a3@<X8>)
{
  v5 = [*a1 document];
  v6 = [v5 rootObject];

  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 *a2];

  *a3 = v8;
}

void sub_214F7A864(uint64_t *a1, id *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a1;
  v7 = [*a2 document];
  v8 = [v7 rootObject];

  if (v8)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      goto LABEL_5;
    }

    swift_unknownObjectRelease();
  }

  v9 = 0;
LABEL_5:
  v10 = v9;
  [v9 *a5];
}

void (*ICTTAudioDocument.summaryModelVersionInfo.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 document];
  v4 = [v3 rootObject];

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (!v5)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 longformSummaryModelVersionInfo];

  *a1 = v6;
  return sub_214F7A9F8;
}

void sub_214F7AA04(id *a1, char a2, SEL *a3)
{
  v4 = *a1;
  v5 = a1[1];
  if (a2)
  {
    v4 = v4;
    v6 = [v5 document];
    v7 = [v6 rootObject];

    if (v7)
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
LABEL_6:
        v12 = v8;
        [v8 *a3];

        goto LABEL_12;
      }

      swift_unknownObjectRelease();
    }

    v8 = 0;
    goto LABEL_6;
  }

  v9 = [a1[1] document];
  v10 = [v9 rootObject];

  if (!v10)
  {
    goto LABEL_10;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
LABEL_10:
    v11 = 0;
  }

  v12 = v11;
  [v11 *a3];
LABEL_12:
}

id ICTTAudioDocument.isCallRecording.getter()
{
  v1 = [v0 document];
  v2 = [v1 rootObject];

  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 callRecording];
      swift_unknownObjectRelease();
      if (v4)
      {
        v5 = [v4 BOOLValue];

        return v5;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

void ICTTAudioDocument.isCallRecording.setter(char a1)
{
  v3 = [v1 document];
  v4 = [v3 rootObject];

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      [v6 setCallRecording_];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

id ICTTAudioDocument.callType.getter()
{
  v1 = [v0 document];
  v2 = [v1 rootObject];

  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 callType];
      swift_unknownObjectRelease();
      if (v4)
      {
        v5 = [v4 unsignedIntegerValue];

        return v5;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

void ICTTAudioDocument.callType.setter(uint64_t a1)
{
  v3 = [v1 document];
  v4 = [v3 rootObject];

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
      [v6 setCallType_];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

id sub_214F7B23C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_2150A4A90();

  return v5;
}

void sub_214F7B2DC(SEL *a1)
{
  v3 = [v1 document];
  v4 = [v3 rootObject];

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (!v5)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 *a1];

  if (v6)
  {
    v7 = [v6 attributedString];

    if (v7)
    {
      v8 = [v7 string];

      sub_2150A4AD0();
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_214F7B43C(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 document];
  v6 = [v5 rootObject];

  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 *a3];

  return v8;
}

id sub_214F7B514(SEL *a1)
{
  v3 = [v1 document];
  v4 = [v3 rootObject];

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (!v5)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 *a1];

  return v6;
}

void sub_214F7B5D4(void *a1, uint64_t a2, void *a3, SEL *a4)
{
  v10 = a1;
  v6 = a3;
  v7 = [v10 document];
  v8 = [v7 rootObject];

  if (v8)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (!v9)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v9 = 0;
  }

  [v9 *a4];
}

void sub_214F7B6BC(void *a1, SEL *a2)
{
  v4 = [v2 document];
  v5 = [v4 rootObject];

  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 *a2];
}

id ICTTAudioRecording.init(identity:fields:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_2150A39A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA427F0);
  v4 = sub_2150A4910();

  v5 = [v2 initWithIdentity:v3 fields:v4];

  v6 = sub_2150A3A00();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v5;
}

{
  v2 = v1;
  v4 = sub_2150A39A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA427F0);
  v5 = sub_2150A4910();

  v9.receiver = v2;
  v9.super_class = ICTTAudioRecording;
  v6 = objc_msgSendSuper2(&v9, sel_initWithIdentity_fields_, v4, v5);

  v7 = sub_2150A3A00();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

void __swiftcall ICTTAudioRecording.init(iccrCoder:)(ICTTAudioRecording_optional *__return_ptr retstr, ICCRCoder iccrCoder)
{
  isa = iccrCoder.super.isa;
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithICCRCoder_];
}

id ICTTAudioRecording.init(iccrCoder:)(void *a1)
{
  v4.super_class = ICTTAudioRecording;
  v2 = objc_msgSendSuper2(&v4, sel_initWithICCRCoder_, a1);

  if (v2)
  {
  }

  return v2;
}

id sub_214F7BC58(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA427F0);
  v3 = sub_2150A4910();

  return v3;
}

id sub_214F7BCD8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  v7 = [a1 document];
  v8 = sub_2150A39A0();
  v9 = [v6 initWithDocument:v7 identity:v8];

  v10 = sub_2150A3A00();
  (*(*(v10 - 8) + 8))(a2, v10);
  return v9;
}

id sub_214F7BDA8(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = sub_2150A39A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA427F0);
  v6 = sub_2150A4910();

  v7 = [v4 initWithIdentity:v5 fields:v6];

  v8 = sub_2150A3A00();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id sub_214F7BE94(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_2150A39A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA427F0);
  v6 = sub_2150A4910();

  v10.receiver = v2;
  v10.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v10, sel_initWithIdentity_fields_, v5, v6);

  v8 = sub_2150A3A00();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id sub_214F7BF88(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_2150A3A00();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A39C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA427F0);
  sub_2150A4920();
  v7 = sub_2150A39A0();
  v8 = sub_2150A4910();

  v11.receiver = a1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentity_fields_, v7, v8);

  (*(v4 + 8))(v6, v3);
  return v9;
}

id ICTTTranscriptSegment.__allocating_init(iccrCoder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithICCRCoder_];

  return v3;
}

id sub_214F7C158(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithICCRCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_214F7C1C4(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithICCRCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id _s11NotesShared0A10ServiceAPIO13PingOperationCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_214F7C278(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_214F42290(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_214F7C39C(v6);
  return sub_2150A5CC0();
}

uint64_t sub_214F7C2F4(void **a1)
{
  v2 = *(type metadata accessor for TranscriptViewModelSegment(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_214F422A4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_214F7C49C(v6);
  *a1 = v3;
  return result;
}

void sub_214F7C39C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_2150A60E0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ICTTAudioRecording.Fragment();
        v6 = sub_2150A4F50();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_214F7C91C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_214F7C5C8(0, v2, 1, a1);
  }
}

uint64_t sub_214F7C49C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2150A60E0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for TranscriptViewModelSegment(0);
        v6 = sub_2150A4F50();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for TranscriptViewModelSegment(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_214F7D114(v8, v9, a1, v4);
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
    return sub_214F7C710(0, v2, 1, a1);
  }

  return result;
}

void sub_214F7C5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
    while (2)
    {
      v21 = a3;
      v8 = *(v4 + 8 * a3);
      v19 = v6;
      v20 = v5;
      while (1)
      {
        v9 = *v5;
        v10 = v8;
        v11 = v9;
        v12 = [v10 createdDate];
        if (!v12)
        {
          break;
        }

        v7 = v12;
        v13 = [v11 createdDate];
        if (!v13)
        {

          v10 = v11;
          goto LABEL_5;
        }

        v14 = v13;
        v15 = [v7 compare_];

        if (v15 != -1)
        {
          goto LABEL_6;
        }

        if (!v4)
        {
          __break(1u);
          return;
        }

        v16 = *v5;
        v8 = *(v5 + 8);
        *v5 = v8;
        *(v5 + 8) = v16;
        v5 -= 8;
        if (__CFADD__(v6++, 1))
        {
          goto LABEL_6;
        }
      }

      v7 = v11;
LABEL_5:

LABEL_6:
      a3 = v21 + 1;
      v5 = v20 + 8;
      v6 = v19 - 1;
      if (v21 + 1 == a2)
      {
        return;
      }

      continue;
    }
  }
}

uint64_t sub_214F7C710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for TranscriptViewModelSegment(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v35 = a3;
    v32 = v24;
    v33 = v23;
    v25 = v23;
    v34 = v21;
    while (1)
    {
      sub_214F5456C(v24, v18);
      sub_214F5456C(v21, v14);
      v26 = *&v18[*(v8 + 32)];
      v27 = *&v14[*(v8 + 24)];
      sub_214F545D0(v14);
      result = sub_214F545D0(v18);
      if (v26 >= v27)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      sub_214F5462C(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_214F5462C(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_214F7C91C(void ***a1, uint64_t a2, void *a3, int64_t a4)
{
  v7 = v5;
  v8 = a3;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_111:
    v6 = v7;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_151;
    }

    v4 = v11;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v103 = v4;
LABEL_114:
      v4 = *(v103 + 2);
      if (v4 >= 2)
      {
        do
        {
          v104 = *v8;
          if (!*v8)
          {
            goto LABEL_149;
          }

          v8 = *&v103[16 * v4];
          v105 = v103;
          v106 = *&v103[16 * v4 + 24];
          sub_214F7D968((v104 + 8 * v8), (v104 + 8 * *&v103[16 * v4 + 16]), (v104 + 8 * v106), v7);
          if (v6)
          {
            break;
          }

          if (v106 < v8)
          {
            goto LABEL_138;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = sub_214F41D00(v105);
          }

          if (v4 - 2 >= *(v105 + 2))
          {
            goto LABEL_139;
          }

          v107 = &v105[16 * v4];
          *v107 = v8;
          *(v107 + 1) = v106;
          sub_214F41C74(v4 - 1);
          v103 = v105;
          v4 = *(v105 + 2);
          v8 = a3;
        }

        while (v4 > 1);
      }

LABEL_122:

      return;
    }

LABEL_145:
    v103 = sub_214F41D00(v4);
    goto LABEL_114;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v12 = &off_27819B000;
  while (2)
  {
    v13 = v10++;
    if (v10 >= v9)
    {
      goto LABEL_37;
    }

    v117 = v9;
    v112 = v11;
    v14 = v10;
    v15 = *v8;
    v16 = *(*v8 + 8 * v13);
    v17 = *(*v8 + 8 * v14);
    v6 = v16;
    v18 = [v17 v12[453]];
    if (v18)
    {
      v19 = v18;
      v20 = [v6 v12[453]];
      if (v20)
      {
        v21 = v20;
        v22 = v13;
        v23 = [v19 compare_];

        v24 = v23 + 1 == 0;
        v13 = v22;
        v8 = a3;
        v25 = v24;
        v119 = v25;
      }

      else
      {

        v119 = 0;
      }

      v12 = &off_27819B000;
    }

    else
    {

      v119 = 0;
    }

    v4 = v13 + 2;
    if (v13 + 2 >= v117)
    {
      v11 = v112;
      v10 = v13 + 2;
      if (v119)
      {
        goto LABEL_29;
      }

      goto LABEL_37;
    }

    v109 = v13;
    v26 = (v15 + 8 * v13 + 16);
    while (1)
    {
      v29 = v8;
      v30 = *(v26 - 1);
      v6 = *v26;
      v31 = v30;
      v32 = [v6 v12[453]];
      if (!v32)
      {
        v33 = v31;
LABEL_22:

        v8 = v29;
        if (v119)
        {
          v11 = v112;
          v10 = v4;
          v13 = v109;
          goto LABEL_29;
        }

        goto LABEL_17;
      }

      v33 = v32;
      v34 = [v31 v12[453]];
      if (!v34)
      {

        v6 = v31;
        v12 = &off_27819B000;
        goto LABEL_22;
      }

      v27 = v34;
      v28 = [v33 compare_];

      v8 = a3;
      v12 = &off_27819B000;
      if (((v119 ^ (v28 != -1)) & 1) == 0)
      {
        break;
      }

LABEL_17:
      ++v26;
      if (v117 == ++v4)
      {
        v10 = v117;
        v11 = v112;
        goto LABEL_28;
      }
    }

    v11 = v112;
    v10 = v4;
LABEL_28:
    v13 = v109;
    if (v119)
    {
LABEL_29:
      if (v10 < v13)
      {
        goto LABEL_142;
      }

      if (v13 < v10)
      {
        v35 = 8 * v10 - 8;
        v36 = 8 * v13;
        v37 = v10;
        v38 = v13;
        do
        {
          if (v38 != --v37)
          {
            v40 = *v8;
            if (!*v8)
            {
              goto LABEL_148;
            }

            v39 = *(v40 + v36);
            *(v40 + v36) = *(v40 + v35);
            *(v40 + v35) = v39;
          }

          ++v38;
          v35 -= 8;
          v36 += 8;
        }

        while (v38 < v37);
      }
    }

LABEL_37:
    v41 = *(v8 + 8);
    if (v10 >= v41)
    {
      goto LABEL_59;
    }

    if (__OFSUB__(v10, v13))
    {
      goto LABEL_141;
    }

    if (v10 - v13 >= a4)
    {
LABEL_59:
      if (v10 < v13)
      {
        goto LABEL_140;
      }

      v56 = v11;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v11 = v56;
      }

      else
      {
        v11 = sub_21505F5DC(0, *(v56 + 2) + 1, 1, v56);
      }

      v4 = *(v11 + 2);
      v57 = *(v11 + 3);
      v58 = v4 + 1;
      if (v4 >= v57 >> 1)
      {
        v11 = sub_21505F5DC((v57 > 1), v4 + 1, 1, v11);
      }

      *(v11 + 2) = v58;
      v59 = &v11[16 * v4];
      *(v59 + 4) = v13;
      *(v59 + 5) = v10;
      v121 = *a1;
      if (!*a1)
      {
        goto LABEL_150;
      }

      if (!v4)
      {
LABEL_3:
        v9 = *(v8 + 8);
        if (v10 >= v9)
        {
          goto LABEL_111;
        }

        continue;
      }

      while (1)
      {
        v60 = v58 - 1;
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v61 = *(v11 + 4);
          v62 = *(v11 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_79:
          if (v64)
          {
            goto LABEL_129;
          }

          v77 = &v11[16 * v58];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_132;
          }

          v83 = &v11[16 * v60 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_135;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_136;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v58 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v87 = &v11[16 * v58];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_93:
        if (v82)
        {
          goto LABEL_131;
        }

        v90 = &v11[16 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_134;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_100:
        v4 = v60 - 1;
        if (v60 - 1 >= v58)
        {
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
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        v98 = *v8;
        if (!*v8)
        {
          goto LABEL_147;
        }

        v99 = v10;
        v6 = v8;
        v100 = v11;
        v8 = *&v11[16 * v4 + 32];
        v101 = *&v11[16 * v60 + 40];
        sub_214F7D968((v98 + 8 * v8), (v98 + 8 * *&v11[16 * v60 + 32]), (v98 + 8 * v101), v121);
        if (v7)
        {
          goto LABEL_122;
        }

        if (v101 < v8)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_214F41D00(v100);
        }

        if (v4 >= *(v100 + 2))
        {
          goto LABEL_126;
        }

        v102 = &v100[16 * v4];
        *(v102 + 4) = v8;
        *(v102 + 5) = v101;
        sub_214F41C74(v60);
        v11 = v100;
        v58 = *(v100 + 2);
        v10 = v99;
        v8 = v6;
        if (v58 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v11[16 * v58 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_127;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_128;
      }

      v72 = &v11[16 * v58];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_130;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_133;
      }

      if (v76 >= v68)
      {
        v94 = &v11[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_137;
        }

        if (v63 < v97)
        {
          v60 = v58 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

    break;
  }

  v42 = (v13 + a4);
  if (__OFADD__(v13, a4))
  {
    goto LABEL_143;
  }

  if (v42 >= v41)
  {
    v42 = *(v8 + 8);
  }

  if (v42 < v13)
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  if (v10 == v42)
  {
    goto LABEL_59;
  }

  v113 = v11;
  v108 = v7;
  v110 = v13;
  v43 = *v8;
  v4 = *v8 + 8 * v10 - 8;
  v44 = v13 - v10;
  v116 = v42;
  while (2)
  {
    v118 = v4;
    v120 = v10;
    v46 = *(v43 + 8 * v10);
    v47 = v44;
LABEL_50:
    v48 = *v4;
    v6 = v46;
    v49 = v48;
    v50 = [v6 v12[453]];
    if (!v50)
    {
      v45 = v49;
LABEL_47:

LABEL_48:
      v10 = (v120 + 1);
      v4 = v118 + 8;
      --v44;
      if (v120 + 1 == v116)
      {
        v10 = v116;
        v7 = v108;
        v13 = v110;
        v8 = a3;
        v11 = v113;
        goto LABEL_59;
      }

      continue;
    }

    break;
  }

  v45 = v50;
  v51 = [v49 v12[453]];
  if (!v51)
  {

    v6 = v49;
    v12 = &off_27819B000;
    goto LABEL_47;
  }

  v52 = v51;
  v53 = [v45 compare_];

  v12 = &off_27819B000;
  if (v53 != -1)
  {
    goto LABEL_48;
  }

  if (v43)
  {
    v54 = *v4;
    v46 = *(v4 + 8);
    *v4 = v46;
    *(v4 + 8) = v54;
    v4 -= 8;
    if (__CFADD__(v47++, 1))
    {
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
}

uint64_t sub_214F7D114(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v98 = a1;
  v9 = type metadata accessor for TranscriptViewModelSegment(0);
  v107 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v101 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v110 = &v95 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v95 - v15;
  result = MEMORY[0x28223BE20](v14);
  v19 = &v95 - v18;
  v109 = a3;
  v20 = *(a3 + 8);
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v98;
    if (!*v98)
    {
      goto LABEL_134;
    }

    a3 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
    }

    else
    {
LABEL_128:
      result = sub_214F41D00(a3);
    }

    v111 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      while (*v109)
      {
        v91 = *(result + 16 * a3);
        v92 = result;
        v93 = *(result + 16 * (a3 - 1) + 40);
        sub_214F7DD10(*v109 + *(v107 + 72) * v91, *v109 + *(v107 + 72) * *(result + 16 * (a3 - 1) + 32), *v109 + *(v107 + 72) * v93, v5);
        if (v6)
        {
        }

        if (v93 < v91)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_214F41D00(v92);
        }

        if (a3 - 2 >= *(v92 + 2))
        {
          goto LABEL_122;
        }

        v94 = &v92[16 * a3];
        *v94 = v91;
        *(v94 + 1) = v93;
        v111 = v92;
        sub_214F41C74(a3 - 1);
        result = v111;
        a3 = *(v111 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v97 = a4;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v102 = v22;
    v99 = v23;
    if (v24 >= v20)
    {
      v20 = v24;
    }

    else
    {
      a3 = *v109;
      v25 = *(v107 + 72);
      v26 = v23;
      v5 = *v109 + v25 * v24;
      sub_214F5456C(v5, v19);
      sub_214F5456C(a3 + v25 * v26, v16);
      v27 = *&v19[*(v9 + 32)];
      v28 = *&v16[*(v9 + 24)];
      sub_214F545D0(v16);
      result = sub_214F545D0(v19);
      v29 = v26 + 2;
      v108 = v25;
      v30 = a3 + v25 * v29;
      while (v20 != v29)
      {
        a3 = v27 < v28;
        sub_214F5456C(v30, v19);
        sub_214F5456C(v5, v16);
        v31 = *&v19[*(v9 + 32)];
        v32 = *&v16[*(v9 + 24)];
        sub_214F545D0(v16);
        result = sub_214F545D0(v19);
        ++v29;
        v30 += v108;
        v5 += v108;
        if (v27 < v28 == v31 >= v32)
        {
          v20 = v29 - 1;
          break;
        }
      }

      a4 = v97;
      v23 = v99;
      if (v27 < v28)
      {
        if (v20 < v99)
        {
          goto LABEL_125;
        }

        if (v99 < v20)
        {
          v96 = v6;
          v33 = v108 * (v20 - 1);
          v34 = v20 * v108;
          v106 = v20;
          v35 = v99;
          v5 = v99 * v108;
          do
          {
            if (v35 != --v20)
            {
              v105 = v20;
              a3 = *v109;
              if (!*v109)
              {
                goto LABEL_131;
              }

              sub_214F5462C(a3 + v5, v101);
              if (v5 < v33 || a3 + v5 >= a3 + v34)
              {
                swift_arrayInitWithTakeFrontToBack();
                v20 = v105;
              }

              else
              {
                v20 = v105;
                if (v5 != v33)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = sub_214F5462C(v101, a3 + v33);
            }

            ++v35;
            v33 -= v108;
            v34 -= v108;
            v5 += v108;
          }

          while (v35 < v20);
          v6 = v96;
          a4 = v97;
          v23 = v99;
          v20 = v106;
        }
      }
    }

    v36 = v109[1];
    if (v20 < v36)
    {
      if (__OFSUB__(v20, v23))
      {
        goto LABEL_124;
      }

      if (v20 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_126;
        }

        if (v23 + a4 >= v36)
        {
          v37 = v109[1];
        }

        else
        {
          v37 = v23 + a4;
        }

        if (v37 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v20 != v37)
        {
          break;
        }
      }
    }

    v38 = v20;
    if (v20 < v23)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v102;
    }

    else
    {
      result = sub_21505F5DC(0, *(v102 + 2) + 1, 1, v102);
      v22 = result;
    }

    a3 = *(v22 + 2);
    v39 = *(v22 + 3);
    v5 = a3 + 1;
    if (a3 >= v39 >> 1)
    {
      result = sub_21505F5DC((v39 > 1), a3 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v40 = &v22[16 * a3];
    *(v40 + 4) = v99;
    *(v40 + 5) = v38;
    v108 = *v98;
    if (!v108)
    {
      goto LABEL_133;
    }

    v103 = v38;
    if (a3)
    {
      while (1)
      {
        v41 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v42 = *(v22 + 4);
          v43 = *(v22 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_52:
          if (v45)
          {
            goto LABEL_112;
          }

          v58 = &v22[16 * v5];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_115;
          }

          v64 = &v22[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_119;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v68 = &v22[16 * v5];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_66:
        if (v63)
        {
          goto LABEL_114;
        }

        v71 = &v22[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_117;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v41 - 1;
        if (v41 - 1 >= v5)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
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
          goto LABEL_127;
        }

        if (!*v109)
        {
          goto LABEL_130;
        }

        v79 = v22;
        v80 = *&v22[16 * a3 + 32];
        v5 = *&v22[16 * v41 + 40];
        sub_214F7DD10(*v109 + *(v107 + 72) * v80, *v109 + *(v107 + 72) * *&v22[16 * v41 + 32], *v109 + *(v107 + 72) * v5, v108);
        if (v6)
        {
        }

        if (v5 < v80)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_214F41D00(v79);
        }

        if (a3 >= *(v79 + 2))
        {
          goto LABEL_109;
        }

        v81 = &v79[16 * a3];
        *(v81 + 4) = v80;
        *(v81 + 5) = v5;
        v111 = v79;
        result = sub_214F41C74(v41);
        v22 = v111;
        v5 = *(v111 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v22[16 * v5 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_110;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_111;
      }

      v53 = &v22[16 * v5];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_113;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_116;
      }

      if (v57 >= v49)
      {
        v75 = &v22[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_120;
        }

        if (v44 < v78)
        {
          v41 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = v109[1];
    v21 = v103;
    a4 = v97;
    if (v103 >= v20)
    {
      goto LABEL_95;
    }
  }

  v96 = v6;
  a3 = *v109;
  v82 = *(v107 + 72);
  v83 = *v109 + v82 * (v20 - 1);
  v84 = -v82;
  v85 = v23 - v20;
  v100 = v82;
  v5 = a3 + v20 * v82;
  v103 = v37;
LABEL_85:
  v105 = v85;
  v106 = v20;
  v104 = v5;
  v108 = v83;
  v86 = v83;
  while (1)
  {
    sub_214F5456C(v5, v19);
    sub_214F5456C(v86, v16);
    v87 = *&v19[*(v9 + 32)];
    v88 = *&v16[*(v9 + 24)];
    sub_214F545D0(v16);
    result = sub_214F545D0(v19);
    if (v87 >= v88)
    {
LABEL_84:
      v20 = v106 + 1;
      v83 = v108 + v100;
      v85 = v105 - 1;
      v38 = v103;
      v5 = v104 + v100;
      if (v106 + 1 != v103)
      {
        goto LABEL_85;
      }

      v6 = v96;
      if (v103 < v99)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!a3)
    {
      break;
    }

    v89 = v110;
    sub_214F5462C(v5, v110);
    swift_arrayInitWithTakeFrontToBack();
    sub_214F5462C(v89, v86);
    v86 += v84;
    v5 += v84;
    if (__CFADD__(v85++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_214F7D968(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v31 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v31;
    }

    v30 = a2;
    v14 = &v4[v12];
    if (v10 < 8 || a2 <= v6)
    {
      goto LABEL_50;
    }

    v32 = 0x1FABE1000uLL;
    v49 = v4;
LABEL_32:
    v33 = v30 - 1;
    v34 = v5 - 1;
    v35 = v14;
    v50 = v30 - 1;
    __dsta = v30;
    while (1)
    {
      v54 = v34;
      v36 = *--v35;
      v37 = v32;
      v38 = *v33;
      v39 = v36;
      v40 = v38;
      v32 = v37;
      v41 = v40;
      v42 = [v39 (v37 + 2680)];
      if (v42)
      {
        v43 = v42;
        v44 = v14;
        v45 = [v41 (v37 + 2680)];
        if (v45)
        {
          v46 = v45;
          v47 = [v43 compare_];

          v27 = v47 + 1 == 0;
          v32 = v37;
          v14 = v44;
          v4 = v49;
          v33 = v50;
          v5 = v54;
          if (v27)
          {
            if (v54 + 1 != __dsta)
            {
              *v54 = *v50;
            }

            if (v14 <= v49 || (v30 = v50, v50 <= v6))
            {
              v30 = v50;
              goto LABEL_50;
            }

            goto LABEL_32;
          }

          goto LABEL_42;
        }

        v39 = v41;
        v4 = v49;
      }

      else
      {
        v43 = v41;
      }

      v5 = v54;
      v33 = v50;
LABEL_42:
      if (v5 + 1 != v14)
      {
        *v5 = *v35;
      }

      v34 = v5 - 1;
      v14 = v35;
      if (v35 <= v4)
      {
        v14 = v35;
        v30 = __dsta;
        goto LABEL_50;
      }
    }
  }

  v13 = a2;
  if (a4 != __src || &__src[v9] <= a4)
  {
    memmove(a4, __src, 8 * v9);
  }

  v14 = &v4[v9];
  if (v7 >= 8 && v13 < v5)
  {
    v15 = 0x1FABE1000uLL;
    while (1)
    {
      v53 = v6;
      v16 = v15;
      v17 = *v4;
      v18 = *v13;
      v19 = v17;
      v15 = v16;
      v20 = v19;
      v21 = [v18 (v16 + 2680)];
      if (!v21)
      {
        break;
      }

      v22 = v21;
      __dst = v13;
      v23 = v14;
      v24 = [v20 (v16 + 2680)];
      if (!v24)
      {

        v18 = v20;
        v13 = __dst;
LABEL_20:

        v28 = v53;
LABEL_21:
        v29 = v4;
        v27 = v28 == v4++;
        if (v27)
        {
          goto LABEL_23;
        }

LABEL_22:
        *v28 = *v29;
        goto LABEL_23;
      }

      v25 = v24;
      v26 = [v22 compare_];

      v27 = v26 + 1 == 0;
      v15 = v16;
      v14 = v23;
      v13 = __dst;
      v28 = v53;
      if (!v27)
      {
        goto LABEL_21;
      }

      v29 = __dst;
      v13 = __dst + 1;
      if (v53 != __dst)
      {
        goto LABEL_22;
      }

LABEL_23:
      v6 = v28 + 1;
      if (v4 >= v14 || v13 >= v5)
      {
        goto LABEL_25;
      }
    }

    v22 = v20;
    goto LABEL_20;
  }

LABEL_25:
  v30 = v6;
LABEL_50:
  if (v30 != v4 || v30 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v30, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_214F7DD10(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = a3;
  v7 = type metadata accessor for TranscriptViewModelSegment(0);
  v8 = MEMORY[0x28223BE20](v7);
  v46 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v45 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_58;
  }

  v14 = v47 - a2;
  if (v47 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_59;
  }

  v15 = (a2 - a1) / v13;
  v50 = a1;
  v49 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v17;
    if (v17 >= 1)
    {
      v25 = -v13;
      v26 = a4 + v17;
      v43 = a4;
      v44 = v7;
      v42 = a1;
      do
      {
        v40 = v24;
        v27 = a2 + v25;
        while (1)
        {
          v28 = v47;
          if (a2 <= a1)
          {
            v50 = a2;
            v48 = v40;
            goto LABEL_56;
          }

          v41 = v24;
          v47 += v25;
          v29 = v25;
          v30 = v26 + v25;
          v31 = v26 + v25;
          v32 = v45;
          sub_214F5456C(v31, v45);
          v33 = v27;
          v34 = v27;
          v35 = v46;
          sub_214F5456C(v34, v46);
          v36 = *(v32 + *(v7 + 32));
          v37 = *(v35 + *(v7 + 24));
          sub_214F545D0(v35);
          sub_214F545D0(v32);
          if (v36 < v37)
          {
            break;
          }

          v24 = v30;
          if (v28 < v26 || v47 >= v26)
          {
            v7 = v44;
            swift_arrayInitWithTakeFrontToBack();
            v24 = v30;
            v27 = v33;
            v25 = v29;
          }

          else
          {
            v7 = v44;
            v27 = v33;
            v25 = v29;
            if (v28 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
              v24 = v30;
            }
          }

          v26 = v24;
          a1 = v42;
          if (v30 <= v43)
          {
            goto LABEL_54;
          }
        }

        if (v28 < a2 || v47 >= a2)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v29;
        }

        else
        {
          v38 = v28 == a2;
          a2 = v33;
          v25 = v29;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v7 = v44;
        v24 = v41;
        a1 = v42;
      }

      while (v26 > v43);
    }

LABEL_54:
    v50 = a2;
    v48 = v24;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v48 = a4 + v16;
    if (v16 >= 1 && a2 < v47)
    {
      do
      {
        v20 = v45;
        sub_214F5456C(a2, v45);
        v21 = v46;
        sub_214F5456C(a4, v46);
        v22 = *(v20 + *(v7 + 32));
        v23 = *(v21 + *(v7 + 24));
        sub_214F545D0(v21);
        sub_214F545D0(v20);
        if (v22 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = a4 + v13;
          a4 += v13;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v50 = a1;
      }

      while (a4 < v18 && a2 < v47);
    }
  }

LABEL_56:
  sub_214F523F0(&v50, &v49, &v48);
  return 1;
}

uint64_t sub_214F7E1B8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_2150A59D0();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_214F40CD4(v3, 0);
  sub_2150733F8((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_214F7E26C()
{
  result = qword_27CA42330;
  if (!qword_27CA42330)
  {
    sub_2150A3340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42330);
  }

  return result;
}

uint64_t sub_214F7E2C4(void *a1, void *a2)
{
  v33 = sub_2150A3A00();
  v4 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 createdDate];
  [a2 setCreatedDate_];

  v8 = [a1 transcriptVersion];
  v31 = a2;
  [a2 setTranscriptVersion_];

  v9 = [a1 transcript];
  v10 = [v9 allObjects];

  v32 = type metadata accessor for ICTTTranscriptSegment();
  v11 = sub_2150A4ED0();

  if (v11 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2150A59D0())
  {
    v13 = 0;
    v29 = v11 & 0xFFFFFFFFFFFFFF8;
    v30 = v11 & 0xC000000000000001;
    v28 = v4 + 1;
    while (1)
    {
      if (v30)
      {
        v14 = MEMORY[0x216062780](v13, v11);
      }

      else
      {
        if (v13 >= *(v29 + 16))
        {
          goto LABEL_12;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v4 = v14;
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v16 = v31;
      v17 = [v31 document];
      _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
      v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v19 = i;
      v20 = sub_2150A39A0();
      v21 = [v18 initWithDocument:v17 identity:v20];

      (*v28)(v6, v33);
      v22 = [v4 text];
      [v21 setText_];

      v23 = [v4 timestamp];
      [v21 setTimestamp_];

      v24 = [v4 duration];
      [v21 setDuration_];

      v25 = [v4 speaker];
      [v21 setSpeaker_];

      v26 = [v16 transcript];
      [v26 addObject_];

      i = v19;
      ++v13;
      if (v15 == v19)
      {
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

unint64_t _sSo18ICTTAudioRecordingC11NotesSharedE12crPropertiesSDySSSo12ICCRDataType_pGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42378);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C3880;
  *(inited + 32) = 0x7972616D6D7573;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = [objc_allocWithZone(ICCRRegisterLatest) initWithContents:0 document:0];
  *(inited + 56) = 0x746E656D67617266;
  *(inited + 64) = 0xE900000000000073;
  *(inited + 72) = [objc_allocWithZone(ICCROrderedSet) init];
  strcpy((inited + 80), "summaryVersion");
  *(inited + 95) = -18;
  *(inited + 96) = [objc_allocWithZone(ICCRRegisterLatest) initWithContents:0 document:0];
  strcpy((inited + 104), "topLineSummary");
  *(inited + 119) = -18;
  *(inited + 120) = [objc_allocWithZone(ICCRRegisterLatest) initWithContents:0 document:0];
  strcpy((inited + 128), "callRecording");
  *(inited + 142) = -4864;
  *(inited + 144) = [objc_allocWithZone(ICCRRegisterLatest) initWithContents:0 document:0];
  *(inited + 152) = 0x657079546C6C6163;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = [objc_allocWithZone(ICCRRegisterLatest) initWithContents:0 document:0];
  *(inited + 176) = 0xD00000000000001ELL;
  *(inited + 184) = 0x80000002150E3F30;
  *(inited + 192) = [objc_allocWithZone(ICCRRegisterLatest) initWithContents:0 document:0];
  *(inited + 200) = 0xD00000000000001FLL;
  *(inited + 208) = 0x80000002150E3F70;
  *(inited + 216) = [objc_allocWithZone(ICCRRegisterLatest) initWithContents:0 document:0];
  *(inited + 224) = 0xD000000000000016;
  *(inited + 232) = 0x80000002150E3FC0;
  *(inited + 240) = [objc_allocWithZone(ICCRRegisterLatest) initWithContents:0 document:0];
  *(inited + 248) = 0xD000000000000017;
  *(inited + 256) = 0x80000002150E3FE0;
  *(inited + 264) = [objc_allocWithZone(ICCRRegisterLatest) initWithContents:0 document:0];
  *(inited + 272) = 0xD000000000000016;
  *(inited + 280) = 0x80000002150E3DA0;
  *(inited + 288) = [objc_allocWithZone(ICCRRegisterLatest) initWithContents:0 document:0];
  *(inited + 296) = 0xD000000000000024;
  *(inited + 304) = 0x80000002150E3E10;
  *(inited + 312) = [objc_allocWithZone(ICCRRegisterLatest) initWithContents:0 document:0];
  *(inited + 320) = 0xD000000000000022;
  *(inited + 328) = 0x80000002150E3E40;
  *(inited + 336) = [objc_allocWithZone(ICCRRegisterLatest) initWithContents:0 document:0];
  v1 = sub_214FA5058(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42380);
  swift_arrayDestroy();
  return v1;
}

unint64_t _sSo18ICTTAudioRecordingC11NotesSharedE8FragmentC12crPropertiesSDySSSo12ICCRDataType_pGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42378);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C29B0;
  *(inited + 32) = 0x697263736E617274;
  *(inited + 40) = 0xEA00000000007470;
  *(inited + 48) = [objc_allocWithZone(ICCRArray) initWithDocument_];
  *(inited + 56) = 0x4464657461657263;
  *(inited + 64) = 0xEB00000000657461;
  *(inited + 72) = [objc_allocWithZone(ICCRRegisterLatest) initWithContents:0 document:0];
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x80000002150E3CB0;
  *(inited + 96) = [objc_allocWithZone(ICCRRegisterLatest) initWithContents:0 document:0];
  v1 = sub_214FA5058(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42380);
  swift_arrayDestroy();
  return v1;
}

unint64_t _s11NotesShared21ICTTTranscriptSegmentC12crPropertiesSDySSSo12ICCRDataType_pGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42378);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C3020;
  *(inited + 32) = 1954047348;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = [objc_allocWithZone(ICCRRegisterLatest) initWithContents:0 document:0];
  *(inited + 56) = 0x6D617473656D6974;
  *(inited + 64) = 0xE900000000000070;
  *(inited + 72) = [objc_allocWithZone(ICCRRegisterLatest) initWithContents:0 document:0];
  *(inited + 80) = 0x6E6F697461727564;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = [objc_allocWithZone(ICCRRegisterLatest) initWithContents:0 document:0];
  *(inited + 104) = 0x72656B61657073;
  *(inited + 112) = 0xE700000000000000;
  *(inited + 120) = [objc_allocWithZone(ICCRRegisterLatest) initWithContents:0 document:0];
  v1 = sub_214FA5058(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42380);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_214F7EDE4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

Swift::Int_optional __swiftcall ICAttachmentGalleryModel.index(ofSubAttachmentWithIdentifier:)(Swift::String ofSubAttachmentWithIdentifier)
{
  v2 = sub_2150A4A90();
  v3 = [v1 indexOfSubAttachmentWithIdentifier_];

  v4 = sub_2150A2F40();
  v5 = v3 == v4;
  if (v3 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  result.value = v6;
  result.is_nil = v5;
  return result;
}

uint64_t ICAttachmentGalleryModel.SubAttachments.makeIterator()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = [*v1 attachmentIdentifiersOrderedSet];
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  v6 = [v4 allObjects];

  sub_214D55670(0, &qword_27CA42350);
  v7 = sub_2150A4ED0();
  v8 = sub_215067A1C(v7);
  v9 = [v3 attachment];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v10 = v9;

  v11 = [v10 subAttachments];

  if (v11)
  {
    sub_214D55670(0, &qword_27CA44A30);
    sub_214F737A4();
    v12 = sub_2150A52E0();
  }

  else if (MEMORY[0x277D84F90] >> 62 && sub_2150A59D0())
  {
    sub_214F80B84(MEMORY[0x277D84F90], &qword_27CA42470, &unk_2150C63E0, &qword_27CA44A30);
    v12 = v14;
  }

  else
  {
    v12 = MEMORY[0x277D84FA0];
  }

  v16[0] = v12;
  v16[1] = sub_214F7FBCC;
  v16[2] = 0;
  v16[3] = sub_214F7FC4C;
  v16[4] = 0;
  v16[5] = sub_214F7FC5C;
  v16[6] = 0;
  v15 = MEMORY[0x277D84F98];

  sub_214F7F3D8(v16, 1, &v15);

  *a1 = v15;
  a1[1] = v8;
  a1[2] = 0;
  return result;
}

void sub_214F7F0F4(void *a1@<X8>)
{
  ICAttachmentGalleryModel.SubAttachments.makeIterator()(a1);
  v2 = *v1;
}

uint64_t sub_214F7F130()
{
  v1 = *v0;
  sub_214F7F9A4(*v0);
  v3 = v2;

  return v3;
}

uint64_t sub_214F7F190(uint64_t a1)
{
  while (1)
  {
    sub_214F7F254(a1);
    if (!v2)
    {
      break;
    }

    swift_getAssociatedTypeWitness();
    sub_2150A4980();

    result = v4;
    if (v4)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_214F7F254(uint64_t a1)
{
  v2 = *(a1 + 52);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  if (!(*(v4 + 48))(v1 + v2, 1, AssociatedTypeWitness))
  {
    swift_getAssociatedConformanceWitness();
    sub_2150A5850();
    if (v8)
    {
      return v7;
    }
  }

  v5 = sub_2150A57E0();
  (*(*(v5 - 8) + 8))(v1 + v2, v5);
  (*(v4 + 56))(v1 + v2, 1, 1, AssociatedTypeWitness);
  return 0;
}

uint64_t sub_214F7F3B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_214F7F190(a1);
  *a2 = result;
  return result;
}

void sub_214F7F3D8(uint64_t *a1, char a2, void *a3)
{
  v3 = *a1;
  v4 = a1[2];
  v47 = a1[3];
  v48 = a1[1];
  v62 = v3;
  v43 = a1[5];
  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_214F813CC(&v62, &v54);

    sub_2150A5980();
    sub_214D55670(0, &qword_27CA44A30);
    sub_214F737A4();
    sub_2150A5320();
    v3 = v57;
    v5 = v58;
    v6 = v59;
    v7 = v60;
    v8 = v61;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v5 = v3 + 56;
    v10 = ~v9;
    v11 = -v9;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v8 = v12 & *(v3 + 56);
    sub_214F813CC(&v62, &v54);

    v6 = v10;
    v7 = 0;
  }

  v13 = (v6 + 64) >> 6;
  v49 = v7;
  v46 = v5;
  if (v3 < 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v14 = v49;
  if (v8)
  {
    v15 = v49;
  }

  else
  {
    do
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        sub_2150A63E0();
        __break(1u);
        goto LABEL_39;
      }

      if (v15 >= v13)
      {
        goto LABEL_34;
      }

      v8 = *(v5 + 8 * v15);
      ++v14;
    }

    while (!v8);
    v49 = v15;
  }

  v16 = __clz(__rbit64(v8));
  v8 &= v8 - 1;
  v17 = *(*(v3 + 48) + ((v15 << 9) | (8 * v16)));
  if (!v17)
  {
LABEL_34:
    sub_214F420F4();

    sub_214F8143C(&v62);

    return;
  }

  while (1)
  {
    v19 = v3;
    v53 = v17;
    v20 = v4;
    v48(&v50, &v53);

    v21 = v50;
    v22 = v51;
    v23 = v52;
    v54 = v50;
    v55 = v51;
    v56 = v52;
    if (v47(&v54))
    {
      break;
    }

    sub_214F814A4(v21, v22, v23);
LABEL_20:
    v4 = v20;
    v3 = v19;
    v5 = v46;
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v18 = sub_2150A5A10();
    if (v18)
    {
      v53 = v18;
      sub_214D55670(0, &qword_27CA44A30);
      swift_dynamicCast();
      v17 = v50;
      if (v50)
      {
        continue;
      }
    }

    goto LABEL_34;
  }

  v54 = v21;
  v55 = v22;
  v56 = v23;
  v43(&v50, &v54);
  sub_214F814A4(v21, v22, v23);
  v41 = v52;
  v42 = v51;
  v54 = v50;
  v55 = v51;
  v24 = *a3;
  v25 = v50;
  v27 = sub_214F30094(v50, v51);
  v28 = v24[2];
  v29 = (v26 & 1) == 0;
  v30 = v28 + v29;
  if (__OFADD__(v28, v29))
  {
    goto LABEL_36;
  }

  v31 = v26;
  if (v24[3] >= v30)
  {
    if (a2)
    {
      if (v26)
      {
        goto LABEL_32;
      }
    }

    else
    {
      sub_214FECD7C();
      if (v31)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_29;
  }

  sub_214FE8C70(v30, a2 & 1);
  v32 = sub_214F30094(v25, v42);
  if ((v31 & 1) != (v33 & 1))
  {
    goto LABEL_38;
  }

  v27 = v32;
  if ((v31 & 1) == 0)
  {
LABEL_29:
    v34 = *a3;
    *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
    v35 = (v34[6] + 16 * v27);
    *v35 = v25;
    v35[1] = v42;
    *(v34[7] + 8 * v27) = v41;
    v36 = v34[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_37;
    }

    v34[2] = v38;
    a2 = 1;
    goto LABEL_20;
  }

LABEL_32:
  v39 = swift_allocError();
  swift_willThrow();
  sub_214F8143C(&v62);

  v53 = v39;
  v40 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_214F420F4();

    return;
  }

LABEL_39:
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_2150A5B20();
  MEMORY[0x2160617E0](0xD00000000000001BLL, 0x80000002150E4190);
  sub_2150A5DB0();
  MEMORY[0x2160617E0](39, 0xE100000000000000);
  sub_2150A5E10();
  __break(1u);
}

void sub_214F7F9A4(void *a1)
{
  v1 = a1;
  ICAttachmentGalleryModel.SubAttachments.makeIterator()(&v34);

  v2 = v35;
  v3 = MEMORY[0x277D84F90];
  v4 = 0;
  if (v35)
  {
    v5 = (MEMORY[0x277D84F90] + 32);
LABEL_3:
    v6 = v34;
    v7 = v36;
    for (i = (v2 + 16 * v36 + 40); ; i += 2)
    {
      v9 = *(v2 + 16);
      if (v7 == v9)
      {
        break;
      }

      if (v7 >= v9)
      {
        __break(1u);
        goto LABEL_32;
      }

      if (*(v6 + 16))
      {
        v10 = *(i - 1);
        v11 = *i;

        v12 = sub_214F30094(v10, v11);
        v14 = v13;

        if (v14)
        {
          v36 = v7 + 1;
          v15 = *(*(v6 + 56) + 8 * v12);
          if (v4)
          {
            v16 = v15;
            v17 = __OFSUB__(v4--, 1);
            if (v17)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v18 = *(v3 + 3);
            if (((v18 >> 1) + 0x4000000000000000) < 0)
            {
              goto LABEL_34;
            }

            v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
            if (v19 <= 1)
            {
              v20 = 1;
            }

            else
            {
              v20 = v19;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A20);
            v21 = swift_allocObject();
            v22 = _swift_stdlib_malloc_size(v21);
            v23 = v22 - 32;
            if (v22 < 32)
            {
              v23 = v22 - 25;
            }

            v24 = v23 >> 3;
            *(v21 + 2) = v20;
            *(v21 + 3) = (2 * (v23 >> 3)) | 1;
            v25 = v21 + 32;
            v26 = *(v3 + 3) >> 1;
            v5 = &v21[8 * v26 + 32];
            v27 = (v24 & 0x7FFFFFFFFFFFFFFFLL) - v26;
            if (*(v3 + 2))
            {
              v28 = v3 + 32;
              if (v21 != v3 || v25 >= &v28[8 * v26])
              {
                memmove(v25, v28, 8 * v26);
              }

              v29 = v15;
              *(v3 + 2) = 0;
            }

            else
            {
              v30 = v15;
            }

            v3 = v21;
            v17 = __OFSUB__(v27, 1);
            v4 = v27 - 1;
            if (v17)
            {
              goto LABEL_33;
            }
          }

          *v5 = v15;
          v5 += 8;
          v2 = v35;
          if (v35)
          {
            goto LABEL_3;
          }

          break;
        }
      }

      ++v7;
    }
  }

  v31 = *(v3 + 3);
  if (v31 >= 2)
  {
    v32 = v31 >> 1;
    v17 = __OFSUB__(v32, v4);
    v33 = v32 - v4;
    if (v17)
    {
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    else
    {
      *(v3 + 2) = v33;
    }
  }
}

id sub_214F7FBCC@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = [*a1 identifier];
  if (result)
  {
    v5 = result;
    v6 = sub_2150A4AD0();
    v8 = v7;

    result = v3;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v3 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
  a2[2] = v3;
  return result;
}

id sub_214F7FC5C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = a1[1];
  if (result)
  {
    v4 = a1[2];
    *a2 = *a1;
    a2[1] = result;
    a2[2] = v4;

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_214F7FCD0(uint64_t *a1, int a2)
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

uint64_t sub_214F7FD18(uint64_t result, int a2, int a3)
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

unint64_t sub_214F7FD64()
{
  result = qword_27CA42390;
  if (!qword_27CA42390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CA42398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42390);
  }

  return result;
}

uint64_t sub_214F7FDD0()
{
  swift_getAssociatedTypeWitness();
  result = sub_2150A4960();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_2150A57E0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_214F7FEAC(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_31;
  }

  v11 = v10 + ((v9 + 8) & ~v9);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((a2 - v8 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if ((v7 & 0x80000000) != 0)
      {
        v18 = (*(v5 + 48))((a1 + v9 + 8) & ~v9);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v8 + (v11 | v16) + 1;
}

void sub_214F8008C(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = 0;
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  v10 = *(v7 + 80);
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v9;
  }

  if (v8)
  {
    v12 = *(v7 + 64);
  }

  else
  {
    v12 = *(v7 + 64) + 1;
  }

  v13 = ((v10 + 8) & ~v10) + v12;
  if (a3 <= v11)
  {
    goto LABEL_20;
  }

  if (v13 <= 3)
  {
    v14 = ((a3 - v11 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
    if (HIWORD(v14))
    {
      v6 = 4;
      if (v11 >= a2)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }

LABEL_20:
    if (v11 >= a2)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v6 = 1;
  if (v11 >= a2)
  {
LABEL_30:
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      *&a1[v13] = 0;
    }

    else if (v6)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      if ((v9 & 0x80000000) != 0)
      {
        v20 = (&a1[v10 + 8] & ~v10);
        if (v9 >= a2)
        {
          v24 = *(v7 + 56);

          v24(v20, a2 + 1);
        }

        else
        {
          if (v12 <= 3)
          {
            v21 = ~(-1 << (8 * v12));
          }

          else
          {
            v21 = -1;
          }

          if (v12)
          {
            v22 = v21 & (~v9 + a2);
            if (v12 <= 3)
            {
              v23 = v12;
            }

            else
            {
              v23 = 4;
            }

            bzero(v20, v12);
            if (v23 > 2)
            {
              if (v23 == 3)
              {
                *v20 = v22;
                v20[2] = BYTE2(v22);
              }

              else
              {
                *v20 = v22;
              }
            }

            else if (v23 == 1)
            {
              *v20 = v22;
            }

            else
            {
              *v20 = v22;
            }
          }
        }
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *a1 = v19;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_21:
  v16 = ~v11 + a2;
  if (v13 >= 4)
  {
    bzero(a1, ((v10 + 8) & ~v10) + v12);
    *a1 = v16;
    v17 = 1;
    if (v6 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v17 = (v16 >> (8 * v13)) + 1;
  if (!v13)
  {
LABEL_59:
    if (v6 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v18 = v16 & ~(-1 << (8 * v13));
  bzero(a1, v13);
  if (v13 == 3)
  {
    *a1 = v18;
    a1[2] = BYTE2(v18);
    goto LABEL_59;
  }

  if (v13 == 2)
  {
    *a1 = v18;
    if (v6 > 1)
    {
LABEL_63:
      if (v6 == 2)
      {
        *&a1[v13] = v17;
      }

      else
      {
        *&a1[v13] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v6 > 1)
    {
      goto LABEL_63;
    }
  }

LABEL_60:
  if (v6)
  {
    a1[v13] = v17;
  }
}

uint64_t sub_214F803B8(uint64_t a1)
{
  v2 = sub_2150A4140();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42440);
    v9 = sub_2150A5AC0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_214F81384(&qword_27CA42448, MEMORY[0x277CDCAC8]);
      v16 = sub_2150A49A0();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_214F81384(&qword_27CA42450, MEMORY[0x277CDCAC8]);
          v23 = sub_2150A4A80();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_214F806D8(uint64_t a1)
{
  v2 = sub_2150A4290();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42428);
    v9 = sub_2150A5AC0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_214F81384(&qword_27CA42430, MEMORY[0x277CDCDB8]);
      v16 = sub_2150A49A0();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_214F81384(&qword_27CA42438, MEMORY[0x277CDCDB8]);
          v23 = sub_2150A4A80();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_214F809F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42468);
    v3 = sub_2150A5AC0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_2150A64B0();

      sub_2150A4BB0();
      result = sub_2150A64E0();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_2150A6270();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_214F80B84(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a2;
    v10 = sub_2150A59D0();
    a2 = v9;
    if (v10)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2);
      v6 = sub_2150A5AC0();
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = sub_2150A59D0();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x277D84FA0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v11 = v6 + 56;
  v43 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    v40 = v4;
    while (1)
    {
      v13 = MEMORY[0x216062780](v12, v4);
      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        break;
      }

      v15 = v13;
      v16 = sub_2150A5770();
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = *(v11 + 8 * (v18 >> 6));
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        sub_214D55670(0, a4);
        while (1)
        {
          v23 = *(*(v6 + 48) + 8 * v18);
          v24 = sub_2150A5780();

          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = *(v11 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          if (((1 << v18) & v20) == 0)
          {
            v8 = v43;
            v4 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v43;
        v4 = v40;
        if (v12 == v43)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v11 + 8 * v19) = v21 | v20;
        *(*(v6 + 48) + 8 * v18) = v15;
        v25 = *(v6 + 16);
        v14 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v14)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v26;
        if (v12 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v27 = 0;
    v41 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v27 != v41)
    {
      v28 = *(v4 + 32 + 8 * v27);
      v29 = sub_2150A5770();
      v30 = -1 << *(v6 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      v33 = *(v11 + 8 * (v31 >> 6));
      v34 = 1 << v31;
      if (((1 << v31) & v33) != 0)
      {
        v35 = ~v30;
        sub_214D55670(0, a4);
        while (1)
        {
          v36 = *(*(v6 + 48) + 8 * v31);
          v37 = sub_2150A5780();

          if (v37)
          {
            break;
          }

          v31 = (v31 + 1) & v35;
          v32 = v31 >> 6;
          v33 = *(v11 + 8 * (v31 >> 6));
          v34 = 1 << v31;
          if (((1 << v31) & v33) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v11 + 8 * v32) = v34 | v33;
        *(*(v6 + 48) + 8 * v31) = v28;
        v38 = *(v6 + 16);
        v14 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v14)
        {
          goto LABEL_34;
        }

        *(v6 + 16) = v39;
      }

      if (++v27 == v43)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_214F80E70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42460);
    v3 = sub_2150A5AC0();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_2150A4AD0();
      sub_2150A64B0();
      v27 = v7;
      sub_2150A4BB0();
      v8 = sub_2150A64E0();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_2150A4AD0();
        v18 = v17;
        if (v16 == sub_2150A4AD0() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_2150A6270();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_214F81088(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42420);
    v3 = sub_2150A5AC0();
    v4 = 0;
    v5 = v3 + 56;
    v26 = v1;
    v27 = a1 + 32;
    while (1)
    {
      v6 = *(v27 + v4);
      v28 = v4 + 1;
      sub_2150A64B0();
      sub_2150A4BB0();

      result = sub_2150A64E0();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          v13 = *(*(v3 + 48) + v9);
          v14 = 0x726F707075736E75;
          if (v13 != 2)
          {
            v14 = 0x6C6F686563616C70;
          }

          v15 = 0xEB00000000726564;
          if (v13 == 2)
          {
            v15 = 0xEB00000000646574;
          }

          v16 = 0xD000000000000011;
          if (*(*(v3 + 48) + v9))
          {
            v16 = 0x6C61636F6CLL;
          }

          v17 = 0xE500000000000000;
          if (!*(*(v3 + 48) + v9))
          {
            v17 = 0x80000002150E1960;
          }

          if (*(*(v3 + 48) + v9) <= 1u)
          {
            v18 = v16;
          }

          else
          {
            v18 = v14;
          }

          if (*(*(v3 + 48) + v9) <= 1u)
          {
            v19 = v17;
          }

          else
          {
            v19 = v15;
          }

          if (v6 > 1)
          {
            if (v6 == 2)
            {
              v21 = 0x726F707075736E75;
            }

            else
            {
              v21 = 0x6C6F686563616C70;
            }

            if (v6 == 2)
            {
              v20 = 0xEB00000000646574;
            }

            else
            {
              v20 = 0xEB00000000726564;
            }

            if (v18 != v21)
            {
              goto LABEL_34;
            }
          }

          else if (v6)
          {
            v20 = 0xE500000000000000;
            if (v18 != 0x6C61636F6CLL)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v20 = 0x80000002150E1960;
            if (v18 != 0xD000000000000011)
            {
              goto LABEL_34;
            }
          }

          if (v19 == v20)
          {

            goto LABEL_4;
          }

LABEL_34:
          v22 = sub_2150A6270();

          if (v22)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v23 = *(v3 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      *(v3 + 16) = v25;
LABEL_4:
      v4 = v28;
      if (v28 == v26)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_214F81384(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_214F813CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214F8143C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42478);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_214F814A4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t NSOperationQueue.run<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_214F81510, 0, 0);
}

uint64_t sub_214F81510()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_allocObject();
  v0[7] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v4;
  v5[5] = v3;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *(v6 + 16) = v1;
  v7 = v2;

  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_214D5BFE4;
  v9 = v0[5];
  v10 = v0[2];

  return withUnsafeRethrowingContinuation<A>(_:rethrow:)(v10, sub_214F817A0, v5, sub_214F81934, v6, v9);
}

uint64_t sub_214F8163C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_214F816A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a1;
  v12[4] = sub_214F81968;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_214F44018;
  v12[3] = &block_descriptor_5;
  v11 = _Block_copy(v12);

  [a2 addOperationWithBlock_];
  _Block_release(v11);
}

uint64_t sub_214F817AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v14 - v11;
  v10();
  (*(v6 + 16))(v9, v12, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8);
  sub_214D5BC54(v9, a3, a4);
  return (*(v6 + 8))(v12, a4);
}

void sub_214F81974(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_214D55670(0, &qword_280C24528);
  v4 = sub_214F84DDC(&qword_280C24520, &qword_280C24528);
  v5 = 0;
  v12[1] = MEMORY[0x216061EC0](v2, v3, v4);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_214FBF9F4(v12, *(*(a1 + 48) + ((v10 << 9) | (8 * v11))));
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
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
}

uint64_t PersistedActivityEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2150A3960();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PersistedActivityEvent.timestamp.setter(uint64_t a1)
{
  v3 = sub_2150A3960();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PersistedActivityEvent.object.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PersistedActivityEvent() + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t type metadata accessor for PersistedActivityEvent()
{
  result = qword_280C24390;
  if (!qword_280C24390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PersistedActivityEvent.object.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = v1 + *(type metadata accessor for PersistedActivityEvent() + 20);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t PersistedActivityEvent.participant.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PersistedActivityEvent() + 24));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
}

__n128 PersistedActivityEvent.participant.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = (v1 + *(type metadata accessor for PersistedActivityEvent() + 24));

  result = v6;
  *v4 = v6;
  v4[1].n128_u64[0] = v2;
  v4[1].n128_u64[1] = v3;
  return result;
}

uint64_t PersistedActivityEvent.associatedAttachmentIds.getter()
{
  v1 = sub_2150A3A00();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PersistedActivityEvent.Activities();
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PersistedActivityEvent();
  sub_214F84984(v0 + *(v8 + 28), v7, type metadata accessor for PersistedActivityEvent.Activities);
  result = swift_getEnumCaseMultiPayload();
  if (result < 6)
  {
    sub_214F849EC(v7, type metadata accessor for PersistedActivityEvent.Activities);
    return MEMORY[0x277D84FA0];
  }

  if (result == 6)
  {
    (*(v2 + 32))(v4, v7, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2150C25D0;
    *(inited + 32) = sub_2150A3990();
    *(inited + 40) = v25;
    v26 = sub_214F809F8(inited);
    swift_setDeallocating();
    sub_214F8467C(inited + 32);
    (*(v2 + 8))(v4, v1);
    return v26;
  }

  if (result != 7)
  {
    return MEMORY[0x277D84FA0];
  }

  v10 = 0;
  v11 = *v7;
  v12 = *(*v7 + 16);
  v13 = MEMORY[0x277D84F90];
LABEL_5:
  v14 = 32 * v10 + 56;
  while (1)
  {
    if (v12 == v10)
    {

      v27 = sub_214F8448C(v13);

      return v27;
    }

    if (v10 >= *(v11 + 16))
    {
      break;
    }

    v15 = v14 + 32;
    ++v10;
    v16 = *(v11 + v14);
    v14 += 32;
    if (v16)
    {
      v17 = *(v11 + v15 - 40);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21505F4D0(0, *(v13 + 16) + 1, 1, v13);
        v13 = result;
      }

      v18 = *(v13 + 16);
      v19 = *(v13 + 24);
      v20 = v18 + 1;
      if (v18 >= v19 >> 1)
      {
        v29 = v18 + 1;
        v22 = v13;
        v23 = v18;
        result = sub_21505F4D0((v19 > 1), v18 + 1, 1, v22);
        v18 = v23;
        v20 = v29;
        v13 = result;
      }

      *(v13 + 16) = v20;
      v21 = v13 + 16 * v18;
      *(v21 + 32) = v17;
      *(v21 + 40) = v16;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t PersistedActivityEvent.activity.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PersistedActivityEvent() + 28);

  return sub_214F846D0(a1, v3);
}

uint64_t PersistedActivityEvent.init(timestamp:object:participant:activity:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v19 = *a3;
  v11 = *(a3 + 2);
  v12 = *(a3 + 3);
  _s10Foundation4DateV11NotesSharedE15defaultArgumentACvgZ_0();
  v13 = sub_2150A3960();
  (*(*(v13 - 8) + 40))(a5, a1, v13);
  v14 = type metadata accessor for PersistedActivityEvent();
  v15 = a5 + v14[5];
  *v15 = v8;
  *(v15 + 8) = v9;
  *(v15 + 16) = v10;
  v16 = a5 + v14[6];
  *v16 = v19;
  *(v16 + 16) = v11;
  *(v16 + 24) = v12;
  v17 = a5 + v14[7];

  return sub_214F84734(a4, v17);
}

uint64_t sub_214F822B0()
{
  v1 = type metadata accessor for PersistedActivityEvent.Activities();
  MEMORY[0x28223BE20](v1);
  v3 = &v51[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for PersistedActivityEvent();
  sub_214F84984(v0 + *(v4 + 28), v3, type metadata accessor for PersistedActivityEvent.Activities);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 3)
  {
    if (result <= 1)
    {
      if (!result)
      {
LABEL_12:
        sub_214F849EC(v3, type metadata accessor for PersistedActivityEvent.Activities);
        v15 = objc_opt_self();
        goto LABEL_68;
      }

      v35 = v3[2];
      v36 = v3[5];
      if (v35)
      {

        if (!v36)
        {
          goto LABEL_67;
        }

        goto LABEL_44;
      }

LABEL_55:

      v15 = objc_opt_self();
      goto LABEL_68;
    }

    if (result != 2)
    {
      goto LABEL_12;
    }

    v16 = v3[3];
    v18 = v3[4];
    v17 = v3[5];
    v20 = v3[6];
    v19 = v3[7];
    v21 = v3[8];

    if (!v17)
    {
      goto LABEL_55;
    }

    if (v21)
    {
      if (v16)
      {
        v22 = 1702129518;
      }

      else
      {
        v22 = 0x7265646C6F66;
      }

      if (v16)
      {
        v23 = 0xE400000000000000;
      }

      else
      {
        v23 = 0xE600000000000000;
      }

      if (v20)
      {
        v24 = 1702129518;
      }

      else
      {
        v24 = 0x7265646C6F66;
      }

      if (v20)
      {
        v25 = 0xE400000000000000;
      }

      else
      {
        v25 = 0xE600000000000000;
      }

      if (v22 == v24 && v23 == v25)
      {
        swift_bridgeObjectRetain_n();
      }

      else
      {
        v27 = sub_2150A6270();
        swift_bridgeObjectRetain_n();

        if ((v27 & 1) == 0)
        {
          swift_bridgeObjectRelease_n();

LABEL_44:

          goto LABEL_67;
        }
      }

      if (v18 != v19 || v17 != v21)
      {
        sub_2150A6270();
      }

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      goto LABEL_67;
    }

    goto LABEL_44;
  }

  if (result <= 5)
  {
    if (result == 4)
    {
      v28 = (v0 + *(v4 + 24));
      if (*v3 == *v28 && v3[1] == v28[1])
      {
        goto LABEL_40;
      }
    }

    else
    {
      v37 = (v0 + *(v4 + 24));
      if (*v3 == *v37 && v3[1] == v37[1])
      {
        goto LABEL_40;
      }
    }

    sub_2150A6270();
LABEL_40:

LABEL_67:
    v15 = objc_opt_self();
LABEL_68:
    v13 = sub_2150A4A90();
    v14 = [v15 localizedFrameworkStringForKey:v13 value:0 table:0 allowSiri:1];
LABEL_69:
    v50 = v14;

    v33 = sub_2150A4AD0();
    return v33;
  }

  if (result == 6)
  {
    v30 = objc_opt_self();
    v31 = sub_2150A4A90();
    v32 = [v30 localizedFrameworkStringForKey:v31 value:0 table:0 allowSiri:1];

    v33 = sub_2150A4AD0();
    v34 = sub_2150A3A00();
    (*(*(v34 - 8) + 8))(v3, v34);
    return v33;
  }

  if (result != 7)
  {
    goto LABEL_67;
  }

  v6 = *v3;
  v7 = (*v3 + 40);
  v8 = -*(*v3 + 16);
  v9 = -1;
  while (1)
  {
    if (v8 + v9 == -1)
    {
      swift_getKeyPath();
      v39 = sub_214F88BFC(v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2150C25D0;
      v41 = *(v39 + 16);

      v42 = MEMORY[0x277D83C10];
      *(inited + 56) = MEMORY[0x277D83B88];
      *(inited + 64) = v42;
      *(inited + 32) = v41;
      v43 = objc_opt_self();
      v44 = sub_2150A4A90();
      v45 = [v43 localizedFrameworkStringForKey:v44 value:0 table:0 allowSiri:0];

      v46 = sub_2150A4AD0();
      v48 = v47;

      v33 = sub_215005B28(inited, v46, v48);
      swift_bridgeObjectRelease_n();
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268);
      swift_arrayDestroy();
      return v33;
    }

    if (++v9 >= *(v6 + 16))
    {
      break;
    }

    v10 = v7 + 4;
    v11 = *v7;
    v54 = *(v7 - 1);
    v55 = v11;
    v52 = 7105633;
    v53 = 0xE300000000000000;
    sub_214D6E6C4();
    result = sub_2150A58B0();
    v7 = v10;
    if (!result)
    {

      v12 = objc_opt_self();
      v13 = sub_2150A4A90();
      v14 = [v12 localizedFrameworkStringForKey:v13 value:0 table:0 allowSiri:1];
      goto LABEL_69;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_214F831E4()
{
  v1 = 0x6D617473656D6974;
  v2 = 0x7069636974726170;
  if (*v0 != 2)
  {
    v2 = 0x7974697669746361;
  }

  if (*v0)
  {
    v1 = 0x7463656A626FLL;
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

uint64_t sub_214F83268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214F84C70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214F832A8(uint64_t a1)
{
  v2 = sub_214F84798();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214F832E4(uint64_t a1)
{
  v2 = sub_214F84798();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersistedActivityEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42490);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214F84798();
  sub_2150A65B0();
  LOBYTE(v19) = 0;
  sub_2150A3960();
  sub_214F84894(&qword_27CA424A0, MEMORY[0x277CC9578]);
  sub_2150A60A0();
  if (!v2)
  {
    v9 = type metadata accessor for PersistedActivityEvent();
    v10 = v3 + *(v9 + 20);
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    LOBYTE(v19) = *v10;
    v20 = v11;
    v21 = v12;
    v23 = 1;
    sub_214F847EC();

    sub_2150A60A0();

    v13 = (v3 + *(v9 + 24));
    v14 = v13[1];
    v15 = v13[2];
    v16 = v13[3];
    v19 = *v13;
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v23 = 2;
    sub_214F84840();

    sub_2150A60A0();

    LOBYTE(v19) = 3;
    type metadata accessor for PersistedActivityEvent.Activities();
    sub_214F84894(&qword_27CA424B8, type metadata accessor for PersistedActivityEvent.Activities);
    sub_2150A60A0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PersistedActivityEvent.hash(into:)()
{
  sub_2150A3960();
  sub_214F84894(&qword_27CA424C0, MEMORY[0x277CC9578]);
  sub_2150A49B0();
  type metadata accessor for PersistedActivityEvent();
  sub_2150A4BB0();

  sub_2150A4BB0();
  sub_2150A4BB0();
  return PersistedActivityEvent.Activities.hash(into:)();
}

uint64_t PersistedActivityEvent.hashValue.getter()
{
  sub_2150A64B0();
  sub_2150A3960();
  sub_214F84894(&qword_27CA424C0, MEMORY[0x277CC9578]);
  sub_2150A49B0();
  type metadata accessor for PersistedActivityEvent();
  sub_2150A4BB0();

  sub_2150A4BB0();
  sub_2150A4BB0();
  PersistedActivityEvent.Activities.hash(into:)();
  return sub_2150A64E0();
}

uint64_t PersistedActivityEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for PersistedActivityEvent.Activities();
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2150A3960();
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA424C8);
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v32 = type metadata accessor for PersistedActivityEvent();
  MEMORY[0x28223BE20](v32);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4DateV11NotesSharedE15defaultArgumentACvgZ_0();
  v14 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_214F84798();
  v15 = v30;
  sub_2150A6590();
  if (v15)
  {
    v16 = v6;
    v18 = v33;
    __swift_destroy_boxed_opaque_existential_0(v31);
    return (*(v18 + 8))(v13, v16);
  }

  else
  {
    v17 = v28;
    v30 = v3;
    LOBYTE(v34) = 0;
    sub_214F84894(&qword_27CA424D0, MEMORY[0x277CC9578]);
    sub_2150A5FC0();
    (*(v33 + 40))(v13, v8, v6);
    v37 = 1;
    sub_214F848DC();
    sub_2150A5FC0();
    v20 = v35;
    v21 = v36;
    v22 = v32;
    v23 = &v13[*(v32 + 20)];
    *v23 = v34;
    *(v23 + 1) = v20;
    *(v23 + 2) = v21;
    v37 = 2;
    sub_214F84930();
    sub_2150A5FC0();
    v24 = v35;
    v25 = &v13[*(v22 + 24)];
    *v25 = v34;
    *(v25 + 1) = v24;
    *(v25 + 1) = v36;
    LOBYTE(v34) = 3;
    sub_214F84894(&qword_27CA424E8, type metadata accessor for PersistedActivityEvent.Activities);
    sub_2150A5FC0();
    (*(v17 + 8))(v11, v29);
    sub_214F84734(v5, &v13[*(v22 + 28)]);
    sub_214F84984(v13, v27, type metadata accessor for PersistedActivityEvent);
    __swift_destroy_boxed_opaque_existential_0(v31);
    return sub_214F849EC(v13, type metadata accessor for PersistedActivityEvent);
  }
}

uint64_t sub_214F83D98()
{
  sub_2150A3960();
  sub_214F84894(&qword_27CA424C0, MEMORY[0x277CC9578]);
  sub_2150A49B0();
  sub_2150A4BB0();

  sub_2150A4BB0();
  sub_2150A4BB0();
  return PersistedActivityEvent.Activities.hash(into:)();
}

uint64_t sub_214F83E9C()
{
  sub_2150A64B0();
  sub_2150A3960();
  sub_214F84894(&qword_27CA424C0, MEMORY[0x277CC9578]);
  sub_2150A49B0();
  sub_2150A4BB0();

  sub_2150A4BB0();
  sub_2150A4BB0();
  PersistedActivityEvent.Activities.hash(into:)();
  return sub_2150A64E0();
}

uint64_t sub_214F83FB4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2150A3960();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_214F8401C(uint64_t a1)
{
  v3 = sub_2150A3960();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_214F840A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
}

uint64_t sub_214F840C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 24));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
}

uint64_t _s11NotesShared22PersistedActivityEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_2150A3920() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PersistedActivityEvent();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v8 = *(a1 + v5 + 8);
  v7 = *(a1 + v5 + 16);
  v9 = a2 + v5;
  v11 = *(v9 + 8);
  v10 = *(v9 + 16);
  if (v6)
  {
    v12 = 1702129518;
  }

  else
  {
    v12 = 0x7265646C6F66;
  }

  if (v6)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE600000000000000;
  }

  if (*v9)
  {
    v14 = 1702129518;
  }

  else
  {
    v14 = 0x7265646C6F66;
  }

  if (*v9)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE600000000000000;
  }

  if (v12 == v14 && v13 == v15)
  {
  }

  else
  {
    v17 = sub_2150A6270();

    if ((v17 & 1) == 0)
    {

      return 0;
    }
  }

  if (v8 == v11 && v7 == v10)
  {
  }

  else
  {
    v19 = sub_2150A6270();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v20 = v4[6];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if ((v21 != *v23 || v22 != v23[1]) && (sub_2150A6270() & 1) == 0)
  {
    return 0;
  }

  v24 = v4[7];

  return _s11NotesShared22PersistedActivityEventV10ActivitiesO2eeoiySbAE_AEtFZ_0(a1 + v24, a2 + v24);
}

uint64_t sub_214F842F0(uint64_t a1)
{
  v2 = sub_2150A3A00();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_214F84894(&qword_280C241B0, MEMORY[0x277CC95F0]);
  result = MEMORY[0x216061EC0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_214FBFE64(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_214F8448C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x216061EC0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_214FC011C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_214F84524(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2150A59D0())
  {
    v4 = sub_214D55670(0, &qword_27CA44A80);
    v5 = sub_214F84DDC(qword_27CA42510, &qword_27CA44A80);
    result = MEMORY[0x216061EC0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x216062780](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_214FC0350(&v12, v10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_2150A59D0();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_214F846D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistedActivityEvent.Activities();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_214F84734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistedActivityEvent.Activities();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_214F84798()
{
  result = qword_27CA42498;
  if (!qword_27CA42498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42498);
  }

  return result;
}

unint64_t sub_214F847EC()
{
  result = qword_27CA424A8;
  if (!qword_27CA424A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA424A8);
  }

  return result;
}

unint64_t sub_214F84840()
{
  result = qword_27CA424B0;
  if (!qword_27CA424B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA424B0);
  }

  return result;
}

uint64_t sub_214F84894(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_214F848DC()
{
  result = qword_27CA424D8;
  if (!qword_27CA424D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA424D8);
  }

  return result;
}

unint64_t sub_214F84930()
{
  result = qword_27CA424E0;
  if (!qword_27CA424E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA424E0);
  }

  return result;
}

uint64_t sub_214F84984(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_214F849EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_214F84ABC()
{
  result = sub_2150A3960();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PersistedActivityEvent.Activities();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_214F84B6C()
{
  result = qword_27CA424F8;
  if (!qword_27CA424F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA424F8);
  }

  return result;
}

unint64_t sub_214F84BC4()
{
  result = qword_27CA42500;
  if (!qword_27CA42500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42500);
  }

  return result;
}

unint64_t sub_214F84C1C()
{
  result = qword_27CA42508;
  if (!qword_27CA42508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42508);
  }

  return result;
}

uint64_t sub_214F84C70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_2150A6270() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463656A626FLL && a2 == 0xE600000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEB00000000746E61 || (sub_2150A6270() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2150A6270();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_214F84DDC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_214D55670(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214F84E2C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_214F84E9C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_214F84FDC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_214F85268(uint64_t *a1)
{
  sub_214F852F4(&off_282710560, a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_214F852F4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = (*(a1 + 16))();
  if (!v2)
  {
    a2[3] = MEMORY[0x277D837D0];
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_214F853AC(uint64_t *a1)
{
  sub_214F852F4(&off_282710EB0, a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_214F85438(uint64_t *a1)
{
  sub_214F852F4(&off_282711090, a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t ChangeSet.isEmpty.getter()
{
  sub_2150A4FD0();
  swift_getWitnessTable();
  if (sub_2150A5450() & 1) != 0 && (sub_2150A5450())
  {
    v0 = sub_2150A5450();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t ChangeSet.init(adds:modifies:deletes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_214F8558C@<X0>(unint64_t isUniquelyReferenced_nonNull_native@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_55;
  }

  v82 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v6 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v69 = a3;
  v70 = a2;
  v85 = a4 & 0xC000000000000001;
  v7 = a4 + 56;
  if (v6)
  {
    v8 = 0;
    v80 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v72 = isUniquelyReferenced_nonNull_native;
    v74 = MEMORY[0x277D84F90];
    v75 = isUniquelyReferenced_nonNull_native + 32;
    v77 = v6;
    while (1)
    {
      if (v80)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x216062780](v8, v72);
      }

      else
      {
        if (v8 >= *(v82 + 16))
        {
          goto LABEL_52;
        }

        isUniquelyReferenced_nonNull_native = *(v75 + 8 * v8);
      }

      v9 = isUniquelyReferenced_nonNull_native;
      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        v44 = isUniquelyReferenced_nonNull_native;
        v82 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
        v45 = a3;
        v46 = a2;
        v47 = sub_2150A59D0();
        a2 = v46;
        a3 = v45;
        v6 = v47;
        isUniquelyReferenced_nonNull_native = v44;
        goto LABEL_3;
      }

      if (v85)
      {
        v11 = isUniquelyReferenced_nonNull_native;
        v12 = sub_2150A5A20();

        if (v12)
        {
          goto LABEL_20;
        }
      }

      else if (*(a4 + 16))
      {
        sub_214D55670(0, &qword_280C24888);
        v13 = sub_2150A5770();
        v14 = -1 << *(a4 + 32);
        v15 = v13 & ~v14;
        if ((*(v7 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
        {
          v16 = ~v14;
          while (1)
          {
            v17 = *(*(a4 + 48) + 8 * v15);
            v18 = sub_2150A5780();

            if (v18)
            {
              break;
            }

            v15 = (v15 + 1) & v16;
            if (((*(v7 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
            {
              goto LABEL_11;
            }
          }

LABEL_20:
          v19 = [v9 recordName];
          v20 = sub_2150A4AD0();
          v22 = v21;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_21505F4D0(0, *(v74 + 16) + 1, 1, v74);
            v74 = isUniquelyReferenced_nonNull_native;
          }

          v24 = *(v74 + 16);
          v23 = *(v74 + 24);
          if (v24 >= v23 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_21505F4D0((v23 > 1), v24 + 1, 1, v74);
            v74 = isUniquelyReferenced_nonNull_native;
          }

          *(v74 + 16) = v24 + 1;
          v25 = v74 + 16 * v24;
          *(v25 + 32) = v20;
          *(v25 + 40) = v22;
          goto LABEL_12;
        }
      }

LABEL_11:

LABEL_12:
      if (v8 == v77)
      {
        goto LABEL_27;
      }
    }
  }

  v74 = MEMORY[0x277D84F90];
LABEL_27:
  if (v70 >> 62)
  {
    v83 = v70 & 0xFFFFFFFFFFFFFF8;
    isUniquelyReferenced_nonNull_native = sub_2150A59D0();
    v26 = isUniquelyReferenced_nonNull_native;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v83 = v70 & 0xFFFFFFFFFFFFFF8;
    v26 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
LABEL_29:
      v27 = 0;
      v73 = MEMORY[0x277D84F90];
      v78 = v26;
      while (1)
      {
        if ((v70 & 0xC000000000000001) != 0)
        {
          isUniquelyReferenced_nonNull_native = MEMORY[0x216062780](v27, v70);
        }

        else
        {
          if (v27 >= *(v83 + 16))
          {
            goto LABEL_54;
          }

          isUniquelyReferenced_nonNull_native = *(v70 + 32 + 8 * v27);
        }

        v28 = isUniquelyReferenced_nonNull_native;
        v10 = __OFADD__(v27++, 1);
        if (v10)
        {
          goto LABEL_53;
        }

        if (v85)
        {
          v29 = isUniquelyReferenced_nonNull_native;
          v30 = sub_2150A5A20();

          if (v30)
          {
            goto LABEL_45;
          }
        }

        else if (*(a4 + 16))
        {
          sub_214D55670(0, &qword_280C24888);
          v31 = sub_2150A5770();
          v32 = -1 << *(a4 + 32);
          v33 = v31 & ~v32;
          if ((*(v7 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
          {
            v34 = ~v32;
            while (1)
            {
              v35 = *(*(a4 + 48) + 8 * v33);
              v36 = sub_2150A5780();

              if (v36)
              {
                break;
              }

              v33 = (v33 + 1) & v34;
              if (((*(v7 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
              {
                goto LABEL_36;
              }
            }

LABEL_45:
            v37 = [v28 recordName];
            v38 = sub_2150A4AD0();
            v40 = v39;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = sub_21505F4D0(0, *(v73 + 16) + 1, 1, v73);
              v73 = isUniquelyReferenced_nonNull_native;
            }

            v42 = *(v73 + 16);
            v41 = *(v73 + 24);
            if (v42 >= v41 >> 1)
            {
              isUniquelyReferenced_nonNull_native = sub_21505F4D0((v41 > 1), v42 + 1, 1, v73);
              v73 = isUniquelyReferenced_nonNull_native;
            }

            *(v73 + 16) = v42 + 1;
            v43 = v73 + 16 * v42;
            *(v43 + 32) = v38;
            *(v43 + 40) = v40;
            goto LABEL_37;
          }
        }

LABEL_36:

LABEL_37:
        if (v27 == v78)
        {
          goto LABEL_58;
        }
      }
    }
  }

  v73 = MEMORY[0x277D84F90];
LABEL_58:
  v48 = v69;
  if (v69 >> 62)
  {
LABEL_85:
    v84 = v48 & 0xFFFFFFFFFFFFFF8;
    v49 = sub_2150A59D0();
    if (v49)
    {
      goto LABEL_60;
    }

LABEL_86:
    v51 = MEMORY[0x277D84F90];
    goto LABEL_87;
  }

  v84 = v69 & 0xFFFFFFFFFFFFFF8;
  v49 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v49)
  {
    goto LABEL_86;
  }

LABEL_60:
  v50 = 0;
  v81 = v48 & 0xC000000000000001;
  v51 = MEMORY[0x277D84F90];
  v76 = v48 + 32;
  v79 = v49;
  do
  {
    v71 = v51;
    while (1)
    {
      if (v81)
      {
        v54 = MEMORY[0x216062780](v50, v69);
      }

      else
      {
        if (v50 >= *(v84 + 16))
        {
          goto LABEL_84;
        }

        v54 = *(v76 + 8 * v50);
      }

      v55 = v54;
      v10 = __OFADD__(v50++, 1);
      if (v10)
      {
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      if (!v85)
      {
        break;
      }

      v52 = v54;
      v53 = sub_2150A5A20();

      if (v53)
      {
        goto LABEL_76;
      }

LABEL_63:

      if (v50 == v79)
      {
        v51 = v71;
        goto LABEL_87;
      }
    }

    if (!*(a4 + 16))
    {
      goto LABEL_63;
    }

    sub_214D55670(0, &qword_280C24888);
    v56 = sub_2150A5770();
    v57 = -1 << *(a4 + 32);
    v48 = v56 & ~v57;
    if (((*(v7 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
    {
      goto LABEL_63;
    }

    v58 = ~v57;
    while (1)
    {
      v59 = *(*(a4 + 48) + 8 * v48);
      v60 = sub_2150A5780();

      if (v60)
      {
        break;
      }

      v48 = (v48 + 1) & v58;
      if (((*(v7 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
      {
        goto LABEL_63;
      }
    }

LABEL_76:
    v61 = [v55 recordName];
    v62 = sub_2150A4AD0();
    v64 = v63;

    v51 = v71;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = sub_21505F4D0(0, *(v71 + 2) + 1, 1, v71);
    }

    v48 = *(v51 + 2);
    v65 = *(v51 + 3);
    if (v48 >= v65 >> 1)
    {
      v51 = sub_21505F4D0((v65 > 1), v48 + 1, 1, v51);
    }

    *(v51 + 2) = v48 + 1;
    v66 = &v51[16 * v48];
    *(v66 + 4) = v62;
    *(v66 + 5) = v64;
  }

  while (v50 != v79);
LABEL_87:

  *a5 = v74;
  a5[1] = v73;
  a5[2] = v51;
  return result;
}

uint64_t ChangeSet.description.getter(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v52 = *v1;
  v53 = v3;
  v54 = v5;
  if (ChangeSet.isEmpty.getter())
  {
    return 0;
  }

  v44 = a1;
  v45 = v5;
  v7 = swift_allocObject();
  v8 = *(a1 + 16);
  *(v7 + 16) = v8;
  v52 = v4;
  v34 = v8;
  v35 = sub_214F869C0;
  v36 = MEMORY[0x28223BE20](v7);
  v9 = sub_2150A4FD0();

  WitnessTable = swift_getWitnessTable();
  v10 = MEMORY[0x277D837D0];
  v40 = sub_214F86288(sub_214F869C8, v33, v9, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);
  v42 = v4;

  v52 = v3;
  MEMORY[0x28223BE20](v12);
  v34 = v8;
  v35 = sub_214F869C0;
  v36 = v7;

  v13 = WitnessTable;
  v39 = sub_214F86288(sub_214F886D8, v33, v9, v10, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v14);
  v41 = v3;

  v37[1] = v37;
  v52 = v45;
  MEMORY[0x28223BE20](v15);
  v34 = v8;
  v35 = sub_214F869C0;
  v43 = v7;
  v36 = v7;
  v16 = v45;

  v18 = sub_214F86288(sub_214F886D8, v33, v9, v10, MEMORY[0x277D84A98], v13, MEMORY[0x277D84AC0], v17);

  v49 = 0x6465646441;
  v50 = 0xE500000000000000;
  v51[0] = v40;
  v51[1] = 0x6465696669646F4DLL;
  v51[2] = 0xE800000000000000;
  v51[3] = v39;
  v51[4] = 0x646574656C6544;
  v51[5] = 0xE700000000000000;
  v51[6] = v18;
  v46 = MEMORY[0x277D84F90];
  sub_214F86A20(0, 3, 0);
  v19 = 0;
  v20 = v46;
  do
  {
    v21 = v51[v19 - 1];
    v22 = v51[v19];
    v52 = *&v48[v19 * 8 + 32];
    v53 = v21;
    swift_bridgeObjectRetain_n();

    MEMORY[0x2160617E0](8250, 0xE200000000000000);
    v23 = MEMORY[0x216061AA0](v22, v10);
    MEMORY[0x2160617E0](v23);

    v24 = v52;
    v25 = v53;
    v46 = v20;
    v27 = *(v20 + 16);
    v26 = *(v20 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_214F86A20((v26 > 1), v27 + 1, 1);
      v20 = v46;
    }

    *(v20 + 16) = v27 + 1;
    v28 = v20 + 16 * v27;
    *(v28 + 32) = v24;
    *(v28 + 40) = v25;
    v19 += 3;
  }

  while (v19 != 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA425A0);
  swift_arrayDestroy();
  v52 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
  sub_214F86A40();
  v29 = sub_2150A4A20();
  v31 = v30;

  v52 = v42;
  v53 = v41;
  v54 = v16;
  v46 = ChangeSet.summary.getter();
  v47 = v32;
  MEMORY[0x2160617E0](2108704, 0xE300000000000000);
  MEMORY[0x2160617E0](v29, v31);

  return v46;
}

uint64_t ChangeSet.summary.getter()
{
  sub_2150A4F80();
  v0 = sub_2150A6100();
  MEMORY[0x2160617E0](v0);

  MEMORY[0x2160617E0](2760748, 0xE300000000000000);
  sub_2150A4F80();
  v1 = sub_2150A6100();
  MEMORY[0x2160617E0](v1);

  MEMORY[0x2160617E0](2957356, 0xE300000000000000);
  sub_2150A4F80();
  v2 = sub_2150A6100();
  MEMORY[0x2160617E0](v2);

  return 43;
}

uint64_t sub_214F86288(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_2150A53E0();
  if (!v19)
  {
    return sub_2150A4F40();
  }

  v41 = v19;
  v45 = sub_2150A5D20();
  v32 = sub_2150A5D30();
  sub_2150A5CD0();
  result = sub_2150A53D0();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_2150A5470();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_2150A5D10();
      result = sub_2150A5410();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ChangeType.hashValue.getter()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1);
  return sub_2150A64E0();
}

uint64_t ChangeSet.count.getter()
{
  v0 = sub_2150A4F80();
  result = sub_2150A4F80();
  v2 = v0 + result;
  if (__OFADD__(v0, result))
  {
    __break(1u);
    goto LABEL_5;
  }

  v3 = sub_2150A4F80();
  v4 = __OFADD__(v2, v3);
  result = v2 + v3;
  if (v4)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_214F867B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = *(v4 + 16);
  v8(&v14 - v9, a1, a2);
  sub_214D55670(0, &qword_280C24220);
  if (swift_dynamicCast())
  {
    v10 = DynamicType;
    v11 = [DynamicType ic_loggingDescription];
    v12 = sub_2150A4AD0();
  }

  else
  {
    v8(v7, a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42758);
    if ((swift_dynamicCast() & 1) == 0)
    {
      DynamicType = swift_getDynamicType();
      swift_getMetatypeMetadata();
      return sub_2150A4B30();
    }

    v11 = [DynamicType ic_loggingIdentifier];
    v12 = sub_2150A4AD0();
    swift_unknownObjectRelease();
  }

  return v12;
}

uint64_t sub_214F869E0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 24))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

char *sub_214F86A20(char *a1, int64_t a2, char a3)
{
  result = sub_214F87054(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_214F86A40()
{
  result = qword_280C24540;
  if (!qword_280C24540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA41DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C24540);
  }

  return result;
}

unint64_t sub_214F86AA8()
{
  result = qword_27CA425A8[0];
  if (!qword_27CA425A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CA425A8);
  }

  return result;
}

uint64_t sub_214F86B0C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_214F86B5C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_214F86BA4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void *sub_214F86BFC(void *a1, int64_t a2, char a3)
{
  result = sub_214F8752C(a1, a2, a3, *v3, &qword_27CA42640, &unk_2150C3E30, &qword_27CA41DE0);
  *v3 = result;
  return result;
}

char *sub_214F86C3C(char *a1, int64_t a2, char a3)
{
  result = sub_214F87160(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_214F86C5C(void *a1, int64_t a2, char a3)
{
  result = sub_214F87264(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_214F86C7C(void *a1, int64_t a2, char a3)
{
  result = sub_214F8752C(a1, a2, a3, *v3, &qword_27CA426E8, &unk_2150C3E88, &qword_27CA426F0);
  *v3 = result;
  return result;
}

void *sub_214F86CBC(void *a1, int64_t a2, char a3)
{
  result = sub_214F873BC(a1, a2, a3, *v3, &qword_27CA42660, &unk_2150C3E48, &qword_27CA42668);
  *v3 = result;
  return result;
}

size_t sub_214F86CFC(size_t a1, int64_t a2, char a3)
{
  result = sub_214F884FC(a1, a2, a3, *v3, &qword_27CA426A8, &unk_2150CD190, type metadata accessor for TranscriptViewModelSegment);
  *v3 = result;
  return result;
}

void *sub_214F86D40(void *a1, int64_t a2, char a3)
{
  result = sub_214F8752C(a1, a2, a3, *v3, &unk_27CA42630, &unk_2150C3E28, &qword_27CA44B40);
  *v3 = result;
  return result;
}

void *sub_214F86D80(void *a1, int64_t a2, char a3)
{
  result = sub_214F87660(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_214F86DA0(void *a1, int64_t a2, char a3)
{
  result = sub_214F877B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_214F86DC0(size_t a1, int64_t a2, char a3)
{
  result = sub_214F884FC(a1, a2, a3, *v3, &qword_27CA42738, &unk_2150CD180, type metadata accessor for PersistedActivityEvent);
  *v3 = result;
  return result;
}

void *sub_214F86E04(void *a1, int64_t a2, char a3)
{
  result = sub_214F878F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_214F86E24(size_t a1, int64_t a2, char a3)
{
  result = sub_214F884FC(a1, a2, a3, *v3, &qword_27CA42710, &unk_2150C3EA8, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

size_t sub_214F86E68(size_t a1, int64_t a2, char a3)
{
  result = sub_214F87A2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_214F86E88(size_t a1, int64_t a2, char a3)
{
  result = sub_214F884FC(a1, a2, a3, *v3, &unk_27CA426D0, &unk_2150CD160, type metadata accessor for NoteEditActivityEvent);
  *v3 = result;
  return result;
}

char *sub_214F86ECC(char *a1, int64_t a2, char a3)
{
  result = sub_214F87C44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_214F86EEC(char *a1, int64_t a2, char a3)
{
  result = sub_214F87D48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_214F86F0C(char *a1, int64_t a2, char a3)
{
  result = sub_214F87E54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_214F86F2C(void *a1, int64_t a2, char a3)
{
  result = sub_214F87F60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_214F86F4C(char *a1, int64_t a2, char a3)
{
  result = sub_214F880A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_214F86F6C(char *a1, int64_t a2, char a3)
{
  result = sub_214F881AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_214F86F8C(char *a1, int64_t a2, char a3)
{
  result = sub_214F882BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_214F86FAC(void *a1, int64_t a2, char a3)
{
  result = sub_214F883C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_214F86FCC(size_t a1, int64_t a2, char a3)
{
  result = sub_214F884FC(a1, a2, a3, *v3, &qword_27CA426B0, &unk_2150C3E78, MEMORY[0x277CC9260]);
  *v3 = result;
  return result;
}

size_t sub_214F87010(size_t a1, int64_t a2, char a3)
{
  result = sub_214F884FC(a1, a2, a3, *v3, &qword_27CA42688, &unk_2150C3E60, MEMORY[0x277CC9578]);
  *v3 = result;
  return result;
}

char *sub_214F87054(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_214F87160(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_214F87264(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426F8);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42700);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_214F873BC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[3 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 24 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_214F8752C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_214F87660(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42648);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42650);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_214F877B0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42750);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44A10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_214F878F8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42740);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44BB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_214F87A2C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42728);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42730) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42730) - 8);
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

char *sub_214F87C44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426A0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_214F87D48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42720);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_214F87E54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42718);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_214F87F60(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42690);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42698);
    swift_arrayInitWithCopy();
  }

  return v10;
}