uint64_t sub_24A037528(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_24A037574()
{
  result = qword_28131A078;
  if (qword_28131A078 || (v1 = [objc_allocWithZone(type metadata accessor for EncoreService(0)) init], v2 = qword_28131A078, qword_28131A078 = v1, v2, (result = qword_28131A078) != 0))
  {

    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24A0375D8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16EncoreXPCService12AsyncService_events;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30A60, &unk_24A0471E0);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

__n128 sub_24A0376AC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

void *sub_24A0376D0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_24A037728@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_24A037764@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27EF30A70;
  return result;
}

uint64_t sub_24A0377B0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27EF30A70 = v1;
  return result;
}

void *_s16EncoreXPCService11ServiceNameVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t sub_24A037844()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_24A037884@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___EncoreService_endpoint;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_24A0378F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24A046290();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24A03799C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24A046290();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A037A44()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A037A8C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A037AC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30E00, &qword_24A047920);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24A037B58()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A037B90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A037BCC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];
  swift_unknownObjectRelease();
  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t static AnySynchronizableState.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v8 = a1;
  swift_unknownObjectRetain();
  v5 = swift_readAtKeyPath();
  (*(*(*(v4 + *MEMORY[0x277D84568] + 8) - 8) + 16))(a3);
  v5(v7, 0);
  return swift_unknownObjectRelease();
}

uint64_t sub_24A037D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a3 + a4 - 24) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v13 - v5;
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  (*(v11 + 16))(&v13 - v5);
  swift_unknownObjectRetain();

  return static AnySynchronizableState.subscript.setter(v6, v8, v9, v10);
}

uint64_t static AnySynchronizableState.subscript.setter(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v97 = a1;
  v95 = a3;
  v6 = *(*a4 + *MEMORY[0x277D84568] + 8);
  v7 = *(v6 + 32);
  v8 = (*a3 + *MEMORY[0x277D84568]);
  v9 = *v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  v10 = *(v87 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v78[1] = v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v81 = v78 - v14;
  MEMORY[0x28223BE20](v13);
  v88 = v78 - v15;
  v86 = v7;
  v92 = *(v7 + 8);
  v91 = swift_getAssociatedTypeWitness();
  v80 = *(v91 - 8);
  v16 = *(v80 + 64);
  v17 = MEMORY[0x28223BE20](v91);
  v79 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v20 = v8[1];
  v21 = *(v20 - 8);
  v22 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = MEMORY[0x28223BE20](v19);
  v25 = v78 - v24;
  v26 = *(v6 - 8);
  v27 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23);
  v29 = v78 - v28;
  v98[0] = a2;
  swift_unknownObjectRetain();

  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  (*(v21 + 16))(v25, v29, v20);
  v30 = *(v26 + 8);
  v82 = v29;
  v84 = v26 + 8;
  v83 = v30;
  v30(v29, v6);
  v85 = v6;
  v31 = *(v6 + 40);
  LOBYTE(v29) = sub_24A046370();
  v32 = *(v21 + 8);
  v96 = v20;
  v93 = v32;
  v94 = v21 + 8;
  v32(v25, v20);
  if (v29)
  {

    if (qword_28131A040 != -1)
    {
      swift_once();
    }

    v33 = sub_24A0462E0();
    __swift_project_value_buffer(v33, qword_28131A090);
    v34 = sub_24A0462D0();
    v35 = sub_24A046530();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v97;
    if (v36)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_24A036000, v34, v35, "#AnySynchronizableState: Instance value is already set to newValue. Skipping.", v38, 2u);
      MEMORY[0x24C20E160](v38, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v67 = v37;
    return v93(v67, v96);
  }

  v89 = a4;
  sub_24A046300();
  sub_24A046320();
  v39 = v91;
  v40 = a2;
  if (!swift_dynamicCast())
  {

    if (qword_28131A040 != -1)
    {
      swift_once();
    }

    v68 = sub_24A0462E0();
    __swift_project_value_buffer(v68, qword_28131A090);
    swift_unknownObjectRetain();
    v69 = sub_24A0462D0();
    v70 = sub_24A046540();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v98[0] = v72;
      *v71 = 136315138;
      v73 = v79;
      sub_24A046300();
      swift_getDynamicType();
      (*(v80 + 8))(v73, v39);
      v74 = sub_24A046790();
      v76 = sub_24A0391F4(v74, v75, v98);

      *(v71 + 4) = v76;
      _os_log_impl(&dword_24A036000, v69, v70, "#AnySynchronizableState: Failed to cast publisher; unexpected type %s. Not updating instance value.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v72);
      MEMORY[0x24C20E160](v72, -1, -1);
      MEMORY[0x24C20E160](v71, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v67 = v97;
    return v93(v67, v96);
  }

  v92 = v9;
  v41 = v98[0];
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v42 = sub_24A0462E0();
  __swift_project_value_buffer(v42, qword_28131A090);
  v43 = sub_24A0462D0();
  v44 = sub_24A046530();
  v45 = os_log_type_enabled(v43, v44);
  v46 = v97;
  if (v45)
  {
    v47 = v97;
    v48 = v40;
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_24A036000, v43, v44, "#AnySynchronizableState: Publishing change to instance", v49, 2u);
    v50 = v49;
    v40 = v48;
    v46 = v47;
    MEMORY[0x24C20E160](v50, -1, -1);
  }

  v91 = v41;
  sub_24A046310();
  v98[4] = v40;
  swift_unknownObjectRetain();
  v51 = swift_modifyAtReferenceWritableKeyPath();
  (*(v21 + 24))(v52, v46, v96);
  v51(v98, 0);
  swift_unknownObjectRelease();
  v53 = sub_24A0462D0();
  v54 = sub_24A046530();
  v55 = os_log_type_enabled(v53, v54);
  v56 = AssociatedTypeWitness;
  if (v55)
  {
    v57 = AssociatedTypeWitness;
    v58 = v40;
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_24A036000, v53, v54, "#AnySynchronizableState: Property value updated to newValue. Attempting to publish to SnippetService.", v59, 2u);
    v60 = v59;
    v40 = v58;
    v56 = v57;
    MEMORY[0x24C20E160](v60, -1, -1);
  }

  v98[0] = v40;
  swift_unknownObjectRetain();
  v61 = v82;
  swift_getAtKeyPath();
  swift_unknownObjectRelease();

  v62 = v85;
  v63 = &v61[*(v85 + 52)];
  v65 = *v63;
  v64 = *(v63 + 1);

  v83(v61, v62);
  v66 = v88;
  v65(v46);

  SynchronizableObject.publish(change:)(v66, v92, v86);
  swift_unknownObjectRelease();

  v93(v46, v96);
  return (*(v87 + 8))(v66, v56);
}

void (*static AnySynchronizableState.subscript.modify(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a3;
  v9[2] = a4;
  *v9 = a2;
  v11 = *(*a3 + *MEMORY[0x277D84568] + 8);
  v9[3] = v11;
  v12 = *(v11 - 8);
  v9[4] = v12;
  v13 = *(v12 + 64);
  if (v8)
  {
    v9[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(v13);
    v14 = malloc(v13);
  }

  v10[6] = v14;
  static AnySynchronizableState.subscript.getter(a2, a3, v14);
  return sub_24A038C28;
}

void sub_24A038C28(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if (a2)
  {
    v5 = v2[3];
    v6 = v2[4];
    v8 = v2[1];
    v7 = v2[2];
    v9 = *v2;
    (*(v6 + 16))((*a1)[5], v4, v5);

    swift_unknownObjectRetain();
    static AnySynchronizableState.subscript.setter(v3, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v11 = v2[1];
    v10 = v2[2];
    v12 = *v2;

    swift_unknownObjectRetain();
    static AnySynchronizableState.subscript.setter(v4, v12, v11, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_24A038D68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v7[0] = *(a1 + a2 - 32);
  v7[1] = v4;
  v5 = type metadata accessor for AnySynchronizableState(0, v7);
  return AnySynchronizableState.wrappedValue.getter(v5, a3);
}

uint64_t sub_24A038DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 32);
  v5 = *(a3 + a4 - 8);
  v12 = *(a3 + a4 - 24);
  v6 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v12 - v7;
  (*(v9 + 16))(&v12 - v7);
  v13 = v4;
  v14 = v12;
  v15 = v5;
  v10 = type metadata accessor for AnySynchronizableState(0, &v13);
  return AnySynchronizableState.wrappedValue.setter(v8, v10);
}

void (*AnySynchronizableState.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *(a2 + 24);
  v6[1] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v6[2] = v9;
  v6[3] = v9;
  v11 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v7[5] = v12;
  (*(v10 + 16))();
  return sub_24A039004;
}

void sub_24A039004(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))(*(*a1 + 32), v4, v7);
    (*(v5 + 40))(v8, v3, v7);
    (*(v6 + 8))(v4, v7);
  }

  else
  {
    v9 = v2[1];
    (*(v2[2] + 40))(*v2, v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t AnySynchronizableState.init(wrappedValue:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a5 - 8) + 32))(a8, a1, a5);
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  result = type metadata accessor for AnySynchronizableState(0, v17);
  v16 = (a8 + *(result + 52));
  *v16 = a2;
  v16[1] = a3;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24A0391F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24A039A2C(v11, 0, 0, 1, a1, a2);
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
    sub_24A039B38(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
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

uint64_t sub_24A03932C(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_24A0393C8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = v10[1];
    v12 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v10;
    v12[1] = v11;
  }

  return v3;
}

uint64_t sub_24A0394BC(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 24) - 8) + 8;
  (*v3)();
  v4 = *(((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_24A03952C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  return a1;
}

uint64_t sub_24A0395AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  v10 = v7[1];
  *v7 = *v8;
  v7[1] = v9;

  return a1;
}

uint64_t sub_24A039638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_24A0396B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v7 + 8);
  *v7 = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_24A039738(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_24A039874(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_24A039A2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24A039B94(a5, a6);
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
    result = sub_24A046660();
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

uint64_t sub_24A039B38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24A039B94(uint64_t a1, unint64_t a2)
{
  v4 = sub_24A039BE0(a1, a2);
  sub_24A039D10(&unk_285D2CCF8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24A039BE0(uint64_t a1, unint64_t a2)
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

  v6 = sub_24A039DFC(v5, 0);
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

  result = sub_24A046660();
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
        v10 = sub_24A046410();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24A039DFC(v10, 0);
        result = sub_24A046620();
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

uint64_t sub_24A039D10(uint64_t result)
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

  result = sub_24A039E70(result, v12, 1, v3);
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

void *sub_24A039DFC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30A58, &qword_24A0471C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24A039E70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30A58, &qword_24A0471C8);
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

uint64_t sub_24A039FB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16EncoreXPCService12AsyncService_events;
  swift_beginAccess();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30A60, &unk_24A0471E0);
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_24A03A048(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30A60, &unk_24A0471E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC16EncoreXPCService12AsyncService_events;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

id sub_24A03A168()
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30A68, &qword_24A047218);
  v1 = *(v19 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v19);
  v4 = &v19 - v3;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30A60, &unk_24A0471E0);
  v5 = *(v20 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v20);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30DD0, &unk_24A047220);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtC16EncoreXPCService12AsyncService_continuation;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF30C70, &qword_24A047210);
  v15 = *(*(v14 - 8) + 56);
  v15(&v0[v13], 1, 1, v14);
  v15(v12, 1, 1, v14);
  v21 = v12;
  type metadata accessor for EncoreEvent();
  (*(v1 + 104))(v4, *MEMORY[0x277D85778], v19);
  sub_24A0464D0();
  (*(v5 + 32))(&v0[OBJC_IVAR____TtC16EncoreXPCService12AsyncService_events], v8, v20);
  swift_beginAccess();
  sub_24A03A838(v12, &v0[v13]);
  swift_endAccess();
  v16 = type metadata accessor for AsyncService();
  v22.receiver = v0;
  v22.super_class = v16;
  v17 = objc_msgSendSuper2(&v22, sel_init);
  sub_24A03A8A8(v12);
  return v17;
}

uint64_t sub_24A03A444(uint64_t a1, uint64_t a2)
{
  sub_24A03A8A8(a2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF30C70, &qword_24A047210);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

id AsyncService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AsyncService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AsyncService()
{
  result = qword_28131A048;
  if (!qword_28131A048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A03A648()
{
  sub_24A03A72C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_24A03A784();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_24A03A72C()
{
  if (!qword_28131A020)
  {
    type metadata accessor for EncoreEvent();
    v0 = sub_24A0464C0();
    if (!v1)
    {
      atomic_store(v0, &qword_28131A020);
    }
  }
}

void sub_24A03A784()
{
  if (!qword_28131A028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EF30C70, &qword_24A047210);
    v0 = sub_24A0465B0();
    if (!v1)
    {
      atomic_store(v0, &qword_28131A028);
    }
  }
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

uint64_t sub_24A03A838(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30DD0, &unk_24A047220);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A03A8A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30DD0, &unk_24A047220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ServiceName.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static ServiceName.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24A0466E0();
  }
}

uint64_t sub_24A03A978()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_24A03A9A8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24A0466E0();
  }
}

uint64_t static EncoreEvent.secureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27EF30A70 = a1;
  return result;
}

uint64_t EncoreEvent.id.getter()
{
  v1 = *(v0 + OBJC_IVAR___EncoreEvent_id);
  v2 = *(v0 + OBJC_IVAR___EncoreEvent_id + 8);

  return v1;
}

uint64_t EncoreEvent.data.getter()
{
  v1 = *(v0 + OBJC_IVAR___EncoreEvent_data);
  sub_24A03AB80(v1, *(v0 + OBJC_IVAR___EncoreEvent_data + 8));
  return v1;
}

uint64_t sub_24A03AB80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t EncoreEvent.serviceName.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___EncoreEvent_serviceName + 8);
  *a1 = *(v1 + OBJC_IVAR___EncoreEvent_serviceName);
  a1[1] = v2;
}

unint64_t sub_24A03AC54()
{
  v1 = sub_24A0463C0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = *(v0 + OBJC_IVAR___EncoreEvent_data);
  v4 = *(v0 + OBJC_IVAR___EncoreEvent_data + 8);
  sub_24A0463B0();
  v5 = sub_24A0463A0();
  v7 = v6;
  sub_24A046630();

  MEMORY[0x24C20D840](*(v0 + OBJC_IVAR___EncoreEvent_id), *(v0 + OBJC_IVAR___EncoreEvent_id + 8));
  MEMORY[0x24C20D840](0x636976726573202CLL, 0xEF203A656D614E65);
  if (*(v0 + OBJC_IVAR___EncoreEvent_serviceName + 8))
  {
    v8 = *(v0 + OBJC_IVAR___EncoreEvent_serviceName);
    v9 = *(v0 + OBJC_IVAR___EncoreEvent_serviceName + 8);
  }

  else
  {
    v9 = 0xE500000000000000;
    v8 = 0x3E6C696E3CLL;
  }

  if (!v7)
  {
    v7 = 0xE90000000000003ELL;
    v5 = 0x6E776F6E6B6E753CLL;
  }

  MEMORY[0x24C20D840](v8, v9);

  MEMORY[0x24C20D840](8236, 0xE200000000000000);
  MEMORY[0x24C20D840](v5, v7);

  MEMORY[0x24C20D840](41, 0xE100000000000000);
  return 0xD000000000000010;
}

id EncoreEvent.init(value:serviceName:id:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v32 = *a2;
  v34 = a2[1];
  v10 = OBJC_IVAR___EncoreEvent_jsonEncoder;
  v11 = sub_24A046240();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&v4[v10] = sub_24A046230();
  v14 = OBJC_IVAR___EncoreEvent_jsonDecoder;
  v15 = sub_24A046210();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *&v4[v14] = sub_24A046200();
  v18 = &v4[OBJC_IVAR___EncoreEvent_id];
  *v18 = a3;
  *(v18 + 1) = a4;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = *&v4[v10];

  v21 = sub_24A046220();
  if (v5)
  {

    __swift_destroy_boxed_opaque_existential_0(a1);
    v23 = *(v18 + 1);

    v24 = *&v4[v10];

    v25 = *&v4[v14];

    type metadata accessor for EncoreEvent();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v26 = v21;
    v27 = v22;

    v28 = &v4[OBJC_IVAR___EncoreEvent_data];
    *v28 = v26;
    v28[1] = v27;
    v29 = &v4[OBJC_IVAR___EncoreEvent_serviceName];
    v30 = v34;
    *v29 = v32;
    *(v29 + 1) = v30;
    v33.receiver = v4;
    v33.super_class = type metadata accessor for EncoreEvent();
    v6 = objc_msgSendSuper2(&v33, sel_init);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v6;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24A03B088()
{
  v1 = *(v0 + OBJC_IVAR___EncoreEvent_data);
  v2 = *(v0 + OBJC_IVAR___EncoreEvent_data + 8);
  v3 = *(v0 + OBJC_IVAR___EncoreEvent_jsonDecoder);
  return sub_24A0461F0();
}

void sub_24A03B0D0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___EncoreEvent_id);
  v4 = *(v1 + OBJC_IVAR___EncoreEvent_id + 8);
  v5 = sub_24A046380();
  v6 = sub_24A046380();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR___EncoreEvent_data);
  v8 = *(v1 + OBJC_IVAR___EncoreEvent_data + 8);
  v9 = sub_24A046260();
  v10 = sub_24A046380();
  [a1 encodeObject:v9 forKey:v10];

  if (*(v1 + OBJC_IVAR___EncoreEvent_serviceName + 8))
  {
    v11 = *(v1 + OBJC_IVAR___EncoreEvent_serviceName);
    v12 = sub_24A046380();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_24A046380();
  [a1 encodeObject:v12 forKey:v13];
}

id EncoreEvent.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___EncoreEvent_jsonEncoder;
  v5 = sub_24A046240();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *&v1[v4] = sub_24A046230();
  v8 = OBJC_IVAR___EncoreEvent_jsonDecoder;
  v9 = sub_24A046210();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *&v1[v8] = sub_24A046200();
  sub_24A03C48C(0, &qword_27EF30AA0, 0x277CCACA8);
  v12 = sub_24A046590();
  if (v12)
  {
    v13 = v12;
    sub_24A03C48C(0, &qword_27EF30AA8, 0x277CBEA90);
    v14 = sub_24A046590();
    if (v14)
    {
      v15 = v14;
      v16 = sub_24A046390();
      v17 = &v1[OBJC_IVAR___EncoreEvent_id];
      *v17 = v16;
      v17[1] = v18;
      v19 = sub_24A046270();
      v20 = &v1[OBJC_IVAR___EncoreEvent_data];
      *v20 = v19;
      v20[1] = v21;
      v22 = sub_24A046590();
      if (v22)
      {
        v23 = v22;
        v24 = sub_24A046390();
        v26 = v25;
      }

      else
      {

        v24 = 0;
        v26 = 0;
      }

      v34 = &v2[OBJC_IVAR___EncoreEvent_serviceName];
      *v34 = v24;
      v34[1] = v26;
      v36.receiver = v2;
      v36.super_class = type metadata accessor for EncoreEvent();
      v35 = objc_msgSendSuper2(&v36, sel_init);

      return v35;
    }
  }

  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v27 = sub_24A0462E0();
  __swift_project_value_buffer(v27, qword_28131A090);
  v28 = sub_24A0462D0();
  v29 = sub_24A046540();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_24A036000, v28, v29, "Missing required key values", v30, 2u);
    MEMORY[0x24C20E160](v30, -1, -1);
  }

  v31 = *&v2[v4];

  v32 = *&v2[v8];

  type metadata accessor for EncoreEvent();
  swift_deallocPartialClassInstance();
  return 0;
}

id EncoreEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EncoreEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EncoreEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SystemEvents.asDirectInvocation.getter()
{
  v25[5] = *MEMORY[0x277D85DE8];
  v1 = sub_24A0462C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 96;
  v6 = *v0;
  v25[3] = &type metadata for SystemEvents;
  v25[4] = sub_24A03C4D4();
  LOBYTE(v25[0]) = v6;
  v24[0] = 0;
  v24[1] = 0;
  sub_24A0462B0();
  v7 = sub_24A0462A0();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  v10 = objc_allocWithZone(type metadata accessor for EncoreEvent());
  v11 = EncoreEvent.init(value:serviceName:id:)(v25, v24, v7, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30AB8, &qword_24A047240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A047230;
  v25[0] = 0xD000000000000011;
  v25[1] = 0x800000024A048EE0;
  sub_24A046610();
  v13 = objc_opt_self();
  v25[0] = 0;
  v14 = [v13 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:v25];
  if (v14)
  {
    v15 = v14;
    v16 = v25[0];
    v17 = sub_24A046270();
    v19 = v18;

    *(inited + 96) = MEMORY[0x277CC9318];
    *(inited + 72) = v17;
    *(inited + 80) = v19;
    sub_24A03C528(inited);
    swift_setDeallocating();
    sub_24A03C644(inited + 32);

    v20 = *MEMORY[0x277D85DE8];
    return 0xD000000000000025;
  }

  else
  {
    v22 = v25[0];
    sub_24A046250();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

unint64_t sub_24A03B9B0()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_24A03B9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000024A049010 == a2 || (sub_24A0466E0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024A049030 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24A0466E0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_24A03BAE4(uint64_t a1)
{
  v2 = sub_24A03C6AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A03BB20(uint64_t a1)
{
  v2 = sub_24A03C6AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A03BB68(uint64_t a1)
{
  v2 = sub_24A03C700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A03BBA4(uint64_t a1)
{
  v2 = sub_24A03C700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A03BBE0(uint64_t a1)
{
  v2 = sub_24A03C754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A03BC1C(uint64_t a1)
{
  v2 = sub_24A03C754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SystemEvents.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30AC8, &qword_24A047250);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30AD0, &qword_24A047258);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30AD8, &qword_24A047260);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A03C6AC();
  sub_24A046760();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_24A03C700();
    v18 = v22;
    sub_24A0466D0();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_24A03C754();
    sub_24A0466D0();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t SystemEvents.hashValue.getter()
{
  v1 = *v0;
  sub_24A046720();
  MEMORY[0x24C20DB70](v1);
  return sub_24A046740();
}

uint64_t SystemEvents.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30AF8, &qword_24A047268);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30B00, &qword_24A047270);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30B08, &qword_24A047278);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A03C6AC();
  v17 = v37;
  sub_24A046750();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_24A0466C0();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_24A046650();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30B10, &qword_24A047280) + 48);
    *v25 = &type metadata for SystemEvents;
    sub_24A0466B0();
    sub_24A046640();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_24A03C700();
    sub_24A0466A0();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_24A03C754();
    sub_24A0466A0();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_0(v28);
}

uint64_t sub_24A03C3D0()
{
  v1 = *v0;
  sub_24A046720();
  MEMORY[0x24C20DB70](v1);
  return sub_24A046740();
}

uint64_t sub_24A03C418()
{
  v1 = *v0;
  sub_24A046720();
  MEMORY[0x24C20DB70](v1);
  return sub_24A046740();
}

uint64_t sub_24A03C48C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_24A03C4D4()
{
  result = qword_27EF30AB0;
  if (!qword_27EF30AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30AB0);
  }

  return result;
}

unint64_t sub_24A03C528(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF30BD0, &qword_24A047738);
    v3 = sub_24A046690();
    v4 = a1 + 32;

    while (1)
    {
      sub_24A03CF28(v4, v13);
      result = sub_24A0404B4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_24A03CF98(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24A03C644(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30AC0, &qword_24A047248);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24A03C6AC()
{
  result = qword_27EF30AE0;
  if (!qword_27EF30AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30AE0);
  }

  return result;
}

unint64_t sub_24A03C700()
{
  result = qword_27EF30AE8;
  if (!qword_27EF30AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30AE8);
  }

  return result;
}

unint64_t sub_24A03C754()
{
  result = qword_27EF30AF0;
  if (!qword_27EF30AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30AF0);
  }

  return result;
}

unint64_t sub_24A03C7AC()
{
  result = qword_27EF30B18;
  if (!qword_27EF30B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30B18);
  }

  return result;
}

unint64_t sub_24A03C810()
{
  result = qword_27EF30B20;
  if (!qword_27EF30B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30B20);
  }

  return result;
}

unint64_t sub_24A03C880()
{
  result = qword_27EF30B28;
  if (!qword_27EF30B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30B28);
  }

  return result;
}

void *assignWithCopy for ServiceName(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a1[1];
  a1[1] = a2[1];

  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void *assignWithTake for ServiceName(void *a1, void *a2)
{
  v3 = a2[1];
  v4 = a1[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for ServiceName(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ServiceName(uint64_t result, int a2, int a3)
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

uint64_t sub_24A03CAFC(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_24A03CB8C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24A03CC70()
{
  result = qword_27EF30B98;
  if (!qword_27EF30B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30B98);
  }

  return result;
}

unint64_t sub_24A03CCC8()
{
  result = qword_27EF30BA0;
  if (!qword_27EF30BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30BA0);
  }

  return result;
}

unint64_t sub_24A03CD20()
{
  result = qword_27EF30BA8;
  if (!qword_27EF30BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30BA8);
  }

  return result;
}

unint64_t sub_24A03CD78()
{
  result = qword_27EF30BB0;
  if (!qword_27EF30BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30BB0);
  }

  return result;
}

unint64_t sub_24A03CDD0()
{
  result = qword_27EF30BB8;
  if (!qword_27EF30BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30BB8);
  }

  return result;
}

unint64_t sub_24A03CE28()
{
  result = qword_27EF30BC0;
  if (!qword_27EF30BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30BC0);
  }

  return result;
}

unint64_t sub_24A03CE80()
{
  result = qword_27EF30BC8;
  if (!qword_27EF30BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30BC8);
  }

  return result;
}

uint64_t sub_24A03CED4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24A03CF28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30AC0, &qword_24A047248);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_24A03CF98(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_24A03D014(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___EncoreService_endpoint;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_24A03D074()
{
  v1 = OBJC_IVAR___EncoreService_endpoint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

id sub_24A03D124()
{
  result = qword_28131A078;
  if (qword_28131A078 || (v1 = objc_allocWithZone(type metadata accessor for EncoreService(0)), v2 = sub_24A03D31C(0, 0), v3 = qword_28131A078, qword_28131A078 = v2, v3, (result = qword_28131A078) != 0))
  {

    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_24A03D18C()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for EncoreService(0));
  v3 = sub_24A03D31C(0xD000000000000021, 0x800000024A049050);
  swift_getObjectType();
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x30);
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  v6 = qword_28131A040;
  v7 = v3;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = sub_24A0462E0();
  __swift_project_value_buffer(v8, qword_28131A090);
  v9 = sub_24A0462D0();
  v10 = sub_24A046530();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24A036000, v9, v10, "EncoreService: init", v11, 2u);
    MEMORY[0x24C20E160](v11, -1, -1);
  }

  return v7;
}

void *sub_24A03D31C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a2;
  v24[1] = a1;
  v26 = sub_24A046560();
  v4 = *(v26 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v26);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A046550();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_24A046360();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  *&v2[OBJC_IVAR___EncoreService_listener] = 0;
  v12 = &v2[OBJC_IVAR___EncoreService_eventHandler];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v2[OBJC_IVAR___EncoreService_endpoint] = 0;
  v25 = OBJC_IVAR___EncoreService_queue;
  v13 = sub_24A041D80();
  v24[2] = "returnedToVoiceMode";
  v24[3] = v13;
  sub_24A046350();
  v29 = MEMORY[0x277D84F90];
  sub_24A041DCC(&qword_28131A018, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF30D40, &qword_24A047858);
  sub_24A041E14(&qword_28131A038, &unk_27EF30D40, &qword_24A047858);
  sub_24A0465D0();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v26);
  v14 = sub_24A046580();
  v15 = v27;
  *&v3[v25] = v14;
  v16 = type metadata accessor for EncoreService(0);
  v28.receiver = v3;
  v28.super_class = v16;
  v17 = objc_msgSendSuper2(&v28, sel_init);
  v18 = v17;
  if (v15)
  {
    v19 = objc_allocWithZone(MEMORY[0x277CCAE98]);
    v20 = v18;
    v21 = sub_24A046380();

    v22 = [v19 initWithMachServiceName_];

    [v22 setDelegate_];
    [v22 resume];
  }

  else
  {
    v22 = v17;
    sub_24A03D660();
  }

  return v18;
}

void sub_24A03D660()
{
  v1 = v0;
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v2 = sub_24A0462E0();
  __swift_project_value_buffer(v2, qword_28131A090);
  v3 = sub_24A0462D0();
  v4 = sub_24A046530();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A036000, v3, v4, "EncoreService: initTestingLoopback", v5, 2u);
    MEMORY[0x24C20E160](v5, -1, -1);
  }

  v6 = [objc_opt_self() anonymousListener];
  v7 = *(v1 + OBJC_IVAR___EncoreService_listener);
  *(v1 + OBJC_IVAR___EncoreService_listener) = v6;
  v8 = v6;

  v9 = [v8 endpoint];
  v10 = OBJC_IVAR___EncoreService_endpoint;
  swift_beginAccess();
  v11 = *(v1 + v10);
  *(v1 + v10) = v9;

  [v8 setDelegate_];
  [v8 resume];
}

uint64_t sub_24A03D7EC(void *a1)
{
  v3 = sub_24A046330();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A046360();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v1 + OBJC_IVAR___EncoreService_queue);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  aBlock[4] = sub_24A03DDA8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A041F30;
  aBlock[3] = &block_descriptor;
  v13 = _Block_copy(aBlock);
  v14 = a1;
  sub_24A046340();
  v18 = MEMORY[0x277D84F90];
  sub_24A041DCC(&qword_27EF30C50, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30C58, &unk_24A047760);
  sub_24A041E14(&qword_27EF30C60, &qword_27EF30C58, &unk_24A047760);
  sub_24A0465D0();
  MEMORY[0x24C20D9B0](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v17);
}

uint64_t sub_24A03DAAC(void *a1)
{
  v25 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30D38, &qword_24A047850);
  v1 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v3 = (&v24 - v2);
  if (qword_28131A040 != -1)
  {
LABEL_20:
    swift_once();
  }

  v4 = sub_24A0462E0();
  __swift_project_value_buffer(v4, qword_28131A090);
  v5 = sub_24A0462D0();
  v6 = sub_24A046530();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    if (qword_27EF309D0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    *(v7 + 4) = *(off_27EF30C40 + 2);
    _os_log_impl(&dword_24A036000, v5, v6, "EncoreService: broadcast to clients: %ld", v7, 0xCu);
    MEMORY[0x24C20E160](v7, -1, -1);
  }

  if (qword_27EF309D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = off_27EF30C40;
  v9 = 1 << *(off_27EF30C40 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(off_27EF30C40 + 8);
  v12 = (v9 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v13 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_16:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v14 << 6);
      v17 = v8[7];
      v18 = (v8[6] + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      v21 = v17 + *(*(type metadata accessor for ClientConnection(0) - 8) + 72) * v16;
      v22 = *(v24 + 48);
      sub_24A03FAD4(v21, v3 + v22);
      *v3 = v19;
      v3[1] = v20;

      sub_24A04119C(v3 + v22, v25);
      sub_24A041D20(v3, &qword_27EF30D38, &qword_24A047850);
      if (!v11)
      {
        goto LABEL_12;
      }
    }
  }

  while (1)
  {
LABEL_12:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = v8[v14 + 8];
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_16;
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A03DEA4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF30C70, &qword_24A047210);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30DD0, &unk_24A047220);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF30C80, &unk_24A047770);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v34 - v15;
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v17 = sub_24A0462E0();
  __swift_project_value_buffer(v17, qword_28131A090);
  v18 = a1;
  v19 = sub_24A0462D0();
  v20 = sub_24A046530();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v35 = v5;
    v22 = v8;
    v23 = v21;
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v18;
    *v24 = v18;
    v25 = v18;
    _os_log_impl(&dword_24A036000, v19, v20, "EncoreService: handleEvent %@", v23, 0xCu);
    sub_24A041D20(v24, &qword_27EF30C68, &unk_24A047870);
    MEMORY[0x24C20E160](v24, -1, -1);
    v26 = v23;
    v8 = v22;
    v5 = v35;
    MEMORY[0x24C20E160](v26, -1, -1);
  }

  v27 = *(v2 + OBJC_IVAR___EncoreService_eventHandler);
  if (v27)
  {
    v28 = *(v2 + OBJC_IVAR___EncoreService_eventHandler + 8);

    v27(v18);
    sub_24A03FA34(v27);
  }

  v29 = OBJC_IVAR____TtC16EncoreXPCService12AsyncService_continuation;
  swift_beginAccess();
  sub_24A03FA44(v2 + v29, v12);
  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_24A041D20(v12, &qword_27EF30DD0, &unk_24A047220);
    v30 = 1;
  }

  else
  {
    (*(v5 + 16))(v8, v12, v4);
    sub_24A041D20(v12, &qword_27EF30DD0, &unk_24A047220);
    v36 = v18;
    v31 = v18;
    sub_24A046490();
    (*(v5 + 8))(v8, v4);
    v30 = 0;
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30C90, &qword_24A047880);
  (*(*(v32 - 8) + 56))(v16, v30, 1, v32);
  return sub_24A041D20(v16, &unk_27EF30C80, &unk_24A047770);
}

uint64_t sub_24A03E30C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v6 = sub_24A0462E0();
  __swift_project_value_buffer(v6, qword_28131A090);
  v7 = sub_24A0462D0();
  v8 = sub_24A046530();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24A036000, v7, v8, "EncoreService: subscribe", v9, 2u);
    MEMORY[0x24C20E160](v9, -1, -1);
  }

  v10 = (v3 + OBJC_IVAR___EncoreService_eventHandler);
  v11 = *(v3 + OBJC_IVAR___EncoreService_eventHandler);
  v12 = *(v3 + OBJC_IVAR___EncoreService_eventHandler + 8);
  *v10 = a1;
  v10[1] = a2;

  return sub_24A03FA34(v11);
}

uint64_t sub_24A03E4C4(void *a1, const char *a2)
{
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v4 = sub_24A0462E0();
  __swift_project_value_buffer(v4, qword_28131A090);
  v5 = a1;
  v6 = sub_24A0462D0();
  v7 = sub_24A046530();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_24A036000, v6, v7, a2, v8, 0xCu);
    sub_24A041D20(v9, &qword_27EF30C68, &unk_24A047870);
    MEMORY[0x24C20E160](v9, -1, -1);
    MEMORY[0x24C20E160](v8, -1, -1);
  }

  return sub_24A03D7EC(v5);
}

uint64_t sub_24A03E68C(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() interfaceWithProtocol_];
  [a2 setExportedInterface_];

  [a2 setExportedObject_];
  [a2 resume];
  return 1;
}

void sub_24A03E7E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v56 = a3;
  v60 = a5;
  v61 = a4;
  v55 = a2;
  v6 = type metadata accessor for ClientConnection(0);
  v7 = *(v6 - 1);
  v53 = v6;
  v54 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v59 = (&v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v52 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = (&v52 - v13);
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v15 = sub_24A0462E0();
  v58 = __swift_project_value_buffer(v15, qword_28131A090);
  v16 = sub_24A0462D0();
  v17 = sub_24A046530();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_24A036000, v16, v17, "EncoreService: register new connection", v18, 2u);
    MEMORY[0x24C20E160](v18, -1, -1);
  }

  v19 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithListenerEndpoint_];
  v20 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30C98, qword_24A047780);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_24A047230;
  v22 = type metadata accessor for EncoreEvent();
  *(v21 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30CA0, &qword_24A047910);
  *(v21 + 32) = v22;
  v23 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v24 = sub_24A046420();

  v25 = [v23 initWithArray_];

  aBlock = 0;
  sub_24A046510();
  if (aBlock)
  {

    v26 = sub_24A046500();

    [v20 setClasses:v26 forSelector:sel_handleEventWithEvent_ argumentIndex:0 ofReply:0];

    [v19 setRemoteObjectInterface_];
    [v19 resume];
    v27 = [v19 remoteObjectProxy];
    sub_24A0465C0();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30CA8, &qword_24A047798);
    if (swift_dynamicCast())
    {
      v52 = v20;
      swift_unknownObjectRelease();
      v28 = v53[6];
      v29 = v56;

      v30 = v19;
      v53 = v30;
      sub_24A046280();
      *v14 = v55;
      v14[1] = v29;
      v14[2] = v30;
      sub_24A03FAD4(v14, v12);
      v31 = (*(v54 + 80) + 16) & ~*(v54 + 80);
      v32 = (v8 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
      v33 = swift_allocObject();
      sub_24A03FB38(v12, v33 + v31);
      v34 = v14;
      v35 = v12;
      v36 = v57;
      *(v33 + v32) = v57;
      v66 = sub_24A03FB9C;
      v67 = v33;
      aBlock = MEMORY[0x277D85DD0];
      v63 = 1107296256;
      v64 = sub_24A041F30;
      v65 = &block_descriptor_6;
      v37 = _Block_copy(&aBlock);
      v38 = v36;

      v39 = v53;
      [v53 setInterruptionHandler_];
      _Block_release(v37);
      sub_24A03FAD4(v34, v35);
      v40 = swift_allocObject();
      v41 = v35;
      v42 = v34;
      sub_24A03FB38(v41, v40 + v31);
      *(v40 + v32) = v38;
      v66 = sub_24A03FCAC;
      v67 = v40;
      aBlock = MEMORY[0x277D85DD0];
      v63 = 1107296256;
      v64 = sub_24A041F30;
      v65 = &block_descriptor_12;
      v43 = _Block_copy(&aBlock);
      v38;

      [v39 setInvalidationHandler_];

      _Block_release(v43);
      v44 = v59;
      sub_24A03FAD4(v34, v59);
      v45 = sub_24A0462D0();
      v46 = sub_24A046530();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        aBlock = v48;
        *v47 = 136315138;
        v49 = *v44;
        v50 = v44[1];

        sub_24A03FD48(v44);
        v51 = sub_24A0391F4(v49, v50, &aBlock);

        *(v47 + 4) = v51;
        _os_log_impl(&dword_24A036000, v45, v46, "EncoreService: registered new client %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x24C20E160](v48, -1, -1);
        MEMORY[0x24C20E160](v47, -1, -1);
      }

      else
      {

        sub_24A03FD48(v44);
      }

      sub_24A03F19C(v42);
      (v61)(1);

      sub_24A03FD48(v42);
    }

    else
    {
      v61();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24A03EED4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_24A03EF18(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = type metadata accessor for ClientConnection(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v9 = sub_24A0462E0();
  __swift_project_value_buffer(v9, qword_28131A090);
  sub_24A03FAD4(a1, v8);
  v10 = sub_24A0462D0();
  v11 = sub_24A046530();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    v14 = *v8;
    v15 = v8[1];

    sub_24A03FD48(v8);
    v16 = sub_24A0391F4(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_24A036000, v10, v11, a3, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C20E160](v13, -1, -1);
    MEMORY[0x24C20E160](v12, -1, -1);
  }

  else
  {

    sub_24A03FD48(v8);
  }

  return sub_24A03F4BC(a1);
}

uint64_t sub_24A03F1C4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30D28, &qword_24A047840);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  if (qword_27EF309D0 != -1)
  {
    swift_once();
  }

  v6 = *a1;
  v7 = a1[1];
  sub_24A03FAD4(a1, v5);
  v8 = type metadata accessor for ClientConnection(0);
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  swift_beginAccess();

  sub_24A03F2FC(v5, v6, v7);
  return swift_endAccess();
}

uint64_t sub_24A03F2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30D28, &qword_24A047840);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ClientConnection(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_24A041D20(a1, &qword_27EF30D28, &qword_24A047840);
    sub_24A0406F0(a2, a3, v10);

    return sub_24A041D20(v10, &qword_27EF30D28, &qword_24A047840);
  }

  else
  {
    sub_24A03FB38(a1, v14);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_24A040D70(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_24A03F4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v22[0] = a2;
  v6 = sub_24A046330();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_24A046360();
  v11 = *(v25 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v25);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ClientConnection(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v22[1] = *(v4 + OBJC_IVAR___EncoreService_queue);
  sub_24A03FAD4(a1, v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v19 = swift_allocObject();
  sub_24A03FB38(v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  aBlock[4] = v23;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A041F30;
  aBlock[3] = v24;
  v20 = _Block_copy(aBlock);
  sub_24A046340();
  v26 = MEMORY[0x277D84F90];
  sub_24A041DCC(&qword_27EF30C50, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30C58, &unk_24A047760);
  sub_24A041E14(&qword_27EF30C60, &qword_27EF30C58, &unk_24A047760);
  sub_24A0465D0();
  MEMORY[0x24C20D9B0](0, v14, v10, v20);
  _Block_release(v20);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v25);
}

uint64_t sub_24A03F828(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30D28, &qword_24A047840);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  if (qword_27EF309D0 != -1)
  {
    swift_once();
  }

  v7 = *a1;
  v6 = a1[1];
  swift_beginAccess();
  sub_24A0406F0(v7, v6, v5);
  swift_endAccess();
  return sub_24A041D20(v5, &qword_27EF30D28, &qword_24A047840);
}

void sub_24A03F928()
{
  v1 = *(v0 + OBJC_IVAR___EncoreService_eventHandler + 8);
  sub_24A03FA34(*(v0 + OBJC_IVAR___EncoreService_eventHandler));

  v2 = *(v0 + OBJC_IVAR___EncoreService_queue);
}

id EncoreService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EncoreService(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24A03FA34(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24A03FA44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30DD0, &unk_24A047220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A03FAD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientConnection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A03FB38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientConnection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_2Tm()
{
  v1 = (type metadata accessor for ClientConnection(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[8];
  v8 = sub_24A046290();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_24A03FCB8(const char *a1)
{
  v3 = *(type metadata accessor for ClientConnection(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_24A03EF18(v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_24A03FD48(uint64_t a1)
{
  v2 = type metadata accessor for ClientConnection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_24A04000C(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v12 = *a2;
    *v3 = *a2;
    v3 = (v12 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    v6 = *(a2 + 2);
    *(a1 + 2) = v6;
    v7 = *(a3 + 24);
    v9 = sub_24A046290();
    v10 = *(*(v9 - 8) + 16);

    v11 = v6;
    v10(&v3[v7], &a2[v7], v9);
  }

  return v3;
}

uint64_t sub_24A0400F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);

  v5 = *(a2 + 24);
  v6 = sub_24A046290();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

char *sub_24A040174(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a2 + 2);
  *(a1 + 2) = v6;
  v7 = *(a3 + 24);
  v8 = sub_24A046290();
  v9 = *(*(v8 - 8) + 16);

  v10 = v6;
  v9(&a1[v7], &a2[v7], v8);
  return a1;
}

char *sub_24A040214(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  v7 = *(a2 + 2);
  v8 = *(a1 + 2);
  *(a1 + 2) = v7;
  v9 = v7;

  v10 = *(a3 + 24);
  v11 = sub_24A046290();
  (*(*(v11 - 8) + 24))(&a1[v10], &a2[v10], v11);
  return a1;
}

uint64_t sub_24A0402BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 24);
  v6 = sub_24A046290();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

char *sub_24A04033C(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  v7 = *(a1 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v8 = *(a1 + 2);
  *(a1 + 2) = *(a2 + 2);

  v9 = *(a3 + 24);
  v10 = sub_24A046290();
  (*(*(v10 - 8) + 40))(&a1[v9], &a2[v9], v10);
  return a1;
}

uint64_t sub_24A0403F8()
{
  result = sub_24A046290();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_24A0404B4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_24A0465F0();

  return sub_24A040570(a1, v5);
}

unint64_t sub_24A0404F8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24A046720();
  sub_24A0463F0();
  v6 = sub_24A046740();

  return sub_24A040638(a1, a2, v6);
}

unint64_t sub_24A040570(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_24A041E68(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C20DA40](v9, a1);
      sub_24A041EC4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_24A040638(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24A0466E0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_24A0406F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_24A0404F8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24A040F6C();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for ClientConnection(0);
    v22 = *(v15 - 8);
    sub_24A03FB38(v14 + *(v22 + 72) * v9, a3);
    sub_24A040B84(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for ClientConnection(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_24A040848(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ClientConnection(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30D30, &qword_24A047848);
  v44 = a2;
  result = sub_24A046680();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_24A03FB38(v31, v45);
      }

      else
      {
        sub_24A03FAD4(v31, v45);
      }

      v32 = *(v12 + 40);
      sub_24A046720();
      sub_24A0463F0();
      result = sub_24A046740();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_24A03FB38(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_24A040B84(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A0465E0() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_24A046720();

      sub_24A0463F0();
      v13 = sub_24A046740();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for ClientConnection(0) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24A040D70(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24A0404F8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_24A040F6C();
      goto LABEL_7;
    }

    sub_24A040848(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_24A0404F8(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_24A046700();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for ClientConnection(0) - 8) + 72) * v12;

    return sub_24A041CBC(a1, v20);
  }

LABEL_13:
  sub_24A040ED4(v12, a2, a3, a1, v18);
}

uint64_t sub_24A040ED4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for ClientConnection(0);
  result = sub_24A03FB38(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_24A040F6C()
{
  v1 = v0;
  v2 = type metadata accessor for ClientConnection(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30D30, &qword_24A047848);
  v5 = *v0;
  v6 = sub_24A046670();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_24A03FAD4(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_24A03FB38(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
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

uint64_t sub_24A04119C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for ClientConnection(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v8 = sub_24A0462E0();
  __swift_project_value_buffer(v8, qword_28131A090);
  sub_24A03FAD4(a1, v7);
  v9 = a2;
  v10 = sub_24A0462D0();
  v11 = sub_24A046530();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2080;
    v15 = *v7;
    v16 = v7[1];
    v17 = v9;

    sub_24A03FD48(v7);
    v18 = sub_24A0391F4(v15, v16, &v22);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_24A036000, v10, v11, "EncoreService: broadcast %@ to %s", v12, 0x16u);
    sub_24A041D20(v13, &qword_27EF30C68, &unk_24A047870);
    MEMORY[0x24C20E160](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C20E160](v14, -1, -1);
    MEMORY[0x24C20E160](v12, -1, -1);
  }

  else
  {

    sub_24A03FD48(v7);
  }

  v19 = [*(a1 + 16) remoteObjectProxy];
  sub_24A0465C0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30CA8, &qword_24A047798);
  result = swift_dynamicCast();
  if (result)
  {
    [v21[1] handleEventWithEvent_];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24A041444(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (**a5)(void, void))
{
  v55 = a5;
  v51 = a3;
  v52 = a4;
  v50 = a2;
  v6 = type metadata accessor for ClientConnection(0);
  v7 = *(v6 - 8);
  v48 = v6;
  v49 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v54 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v47 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = (&v47 - v13);
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v15 = sub_24A0462E0();
  v53 = __swift_project_value_buffer(v15, qword_28131A090);
  v16 = sub_24A0462D0();
  v17 = sub_24A046530();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_24A036000, v16, v17, "EncoreService: register new connection", v18, 2u);
    MEMORY[0x24C20E160](v18, -1, -1);
  }

  v19 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithListenerEndpoint_];
  v20 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30C98, qword_24A047780);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_24A047230;
  v22 = type metadata accessor for EncoreEvent();
  *(v21 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30CA0, &qword_24A047910);
  *(v21 + 32) = v22;
  v23 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v24 = sub_24A046420();

  v25 = [v23 initWithArray_];

  aBlock = 0;
  sub_24A046510();
  if (aBlock)
  {

    v26 = sub_24A046500();

    [v20 setClasses:v26 forSelector:sel_handleEventWithEvent_ argumentIndex:0 ofReply:0];

    [v19 setRemoteObjectInterface_];
    [v19 resume];
    v27 = [v19 remoteObjectProxy];
    sub_24A0465C0();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30CA8, &qword_24A047798);
    if (swift_dynamicCast())
    {
      v47 = v20;
      swift_unknownObjectRelease();
      v28 = *(v48 + 24);
      v29 = v51;

      v30 = v19;
      sub_24A046280();
      *v14 = v50;
      v14[1] = v29;
      v14[2] = v30;
      sub_24A03FAD4(v14, v12);
      v31 = (*(v49 + 80) + 16) & ~*(v49 + 80);
      v32 = (v8 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
      v33 = swift_allocObject();
      sub_24A03FB38(v12, v33 + v31);
      v34 = v52;
      *(v33 + v32) = v52;
      v60 = sub_24A041F34;
      v61 = v33;
      aBlock = MEMORY[0x277D85DD0];
      v57 = 1107296256;
      v58 = sub_24A041F30;
      v59 = &block_descriptor_45;
      v35 = _Block_copy(&aBlock);
      v36 = v34;

      [v30 setInterruptionHandler_];
      _Block_release(v35);
      sub_24A03FAD4(v14, v12);
      v37 = swift_allocObject();
      sub_24A03FB38(v12, v37 + v31);
      *(v37 + v32) = v36;
      v60 = sub_24A041F38;
      v61 = v37;
      aBlock = MEMORY[0x277D85DD0];
      v57 = 1107296256;
      v58 = sub_24A041F30;
      v59 = &block_descriptor_52;
      v38 = _Block_copy(&aBlock);
      v36;

      [v30 setInvalidationHandler_];

      _Block_release(v38);
      v39 = v54;
      sub_24A03FAD4(v14, v54);
      v40 = sub_24A0462D0();
      v41 = sub_24A046530();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        aBlock = v43;
        *v42 = 136315138;
        v44 = *v39;
        v45 = v39[1];

        sub_24A03FD48(v39);
        v46 = sub_24A0391F4(v44, v45, &aBlock);

        *(v42 + 4) = v46;
        _os_log_impl(&dword_24A036000, v40, v41, "EncoreService: registered new client %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x24C20E160](v43, -1, -1);
        MEMORY[0x24C20E160](v42, -1, -1);
      }

      else
      {

        sub_24A03FD48(v39);
      }

      sub_24A03F19C(v14);
      v55[2](v55, 1);

      sub_24A03FD48(v14);
    }

    else
    {
      v55[2](v55, 0);
    }
  }

  else
  {
    _Block_release(v55);
    __break(1u);
  }
}

uint64_t objectdestroy_34Tm()
{
  v1 = (type metadata accessor for ClientConnection(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = v1[8];
  v7 = sub_24A046290();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24A041C48(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ClientConnection(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_24A041CBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientConnection(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A041D20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_24A041D80()
{
  result = qword_28131A010;
  if (!qword_28131A010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131A010);
  }

  return result;
}

uint64_t sub_24A041DCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A041E14(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24A041F54()
{
  v0 = sub_24A0462E0();
  __swift_allocate_value_buffer(v0, qword_28131A090);
  __swift_project_value_buffer(v0, qword_28131A090);
  sub_24A04204C();
  sub_24A0465A0();
  return sub_24A0462F0();
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

unint64_t sub_24A04204C()
{
  result = qword_28131A008;
  if (!qword_28131A008)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131A008);
  }

  return result;
}

uint64_t SnippetService.serviceName.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_serviceName + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_serviceName);
  a1[1] = v2;
}

char *sub_24A042100(uint64_t *a1, id *a2)
{
  v4 = &v2[OBJC_IVAR____TtC16EncoreXPCService14SnippetService_eventHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v2[OBJC_IVAR____TtC16EncoreXPCService14SnippetService_encore] = 0;
  *&v2[OBJC_IVAR____TtC16EncoreXPCService14SnippetService_connection] = 0;
  v6 = *a1;
  v5 = a1[1];
  v7 = &v2[OBJC_IVAR____TtC16EncoreXPCService14SnippetService_serviceName];
  *v7 = *a1;
  *(v7 + 1) = v5;
  v30.receiver = v2;
  v30.super_class = type metadata accessor for SnippetService();

  v8 = objc_msgSendSuper2(&v30, sel_init);
  v9 = v8;
  v10 = *a2;
  if (*a2)
  {
    v11 = v8;
  }

  else
  {
    v12 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v13 = v9;
    v14 = sub_24A046380();
    v10 = [v12 initWithMachServiceName:v14 options:0];

    *a2 = v10;
    if (!v10)
    {

      goto LABEL_5;
    }
  }

  v15 = [objc_opt_self() interfaceWithProtocol_];
  [v10 setRemoteObjectInterface_];

  [v10 resume];
  v16 = swift_allocObject();
  *(v16 + 16) = v6;
  *(v16 + 24) = v5;
  v28 = sub_24A044524;
  v29 = v16;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_24A041F30;
  v27 = &block_descriptor_39;
  v17 = _Block_copy(&v24);

  [v10 setInvalidationHandler_];
  _Block_release(v17);
  v18 = swift_allocObject();
  *(v18 + 16) = v6;
  *(v18 + 24) = v5;
  v28 = sub_24A044548;
  v29 = v18;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_24A041F30;
  v27 = &block_descriptor_45_0;
  v19 = _Block_copy(&v24);

  [v10 setInterruptionHandler_];
  _Block_release(v19);
LABEL_5:
  v20 = OBJC_IVAR____TtC16EncoreXPCService14SnippetService_connection;
  swift_beginAccess();
  v21 = *&v9[v20];
  *&v9[v20] = v10;
  v22 = v10;

  return v9;
}

void sub_24A0423F4(uint64_t a1, unint64_t a2, const char *a3)
{
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v6 = sub_24A0462E0();
  __swift_project_value_buffer(v6, qword_28131A090);

  oslog = sub_24A0462D0();
  v7 = sub_24A046520();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_24A0391F4(a1, a2, &v11);
    _os_log_impl(&dword_24A036000, oslog, v7, a3, v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C20E160](v9, -1, -1);
    MEMORY[0x24C20E160](v8, -1, -1);
  }
}

char *SnippetService.__allocating_init(serviceName:)(uint64_t *a1)
{
  v1 = *a1;
  v5[1] = a1[1];
  v6 = 0;
  v5[0] = v1;
  v2 = objc_allocWithZone(type metadata accessor for SnippetService());
  v3 = sub_24A042100(v5, &v6);

  return v3;
}

uint64_t type metadata accessor for SnippetService()
{
  result = qword_27EF30DE8;
  if (!qword_27EF30DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A0425F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_24A042668()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC16EncoreXPCService14SnippetService_connection;
  swift_beginAccess();
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_24A042728;
  v4 = *(v0 + 40);

  return sub_24A042A30(v1 + v2);
}

uint64_t sub_24A042728(char a1)
{
  v4 = *(*v2 + 48);
  v5 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24A042880, 0, 0);
  }

  else
  {
    swift_endAccess();
    v6 = *(v5 + 8);

    return v6(a1 & 1);
  }
}

uint64_t sub_24A042880()
{
  swift_endAccess();
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_24A0462E0();
  __swift_project_value_buffer(v2, qword_28131A090);
  v3 = v1;
  v4 = sub_24A0462D0();
  v5 = sub_24A046540();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24A036000, v4, v5, "SnippetService register failed %@", v8, 0xCu);
    sub_24A041D20(v9, &qword_27EF30C68, &unk_24A047870);
    MEMORY[0x24C20E160](v9, -1, -1);
    MEMORY[0x24C20E160](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_24A042A30(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x2822009F8](sub_24A042A50, 0, 0);
}

uint64_t sub_24A042A50()
{
  v1 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30DF8, &qword_24A047918);
  v2 = swift_allocBox();
  v4 = v3;
  v0[15] = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30E00, &qword_24A047920);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = *v1;
  if (v6)
  {
    v0[6] = sub_24A0443BC;
    v0[7] = v2;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_24A043064;
    v0[5] = &block_descriptor_0;
    v7 = _Block_copy(v0 + 2);
    v8 = v0[7];

    v9 = [v6 remoteObjectProxyWithErrorHandler_];
    _Block_release(v7);
    sub_24A0465C0();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30E08, &qword_24A047928);
    v10 = swift_dynamicCast();
    v11 = v0[12];
    if (!v10)
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v0[14];
  v13 = *(v12 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_encore);
  *(v12 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_encore) = v11;
  swift_unknownObjectRelease();
  v14 = [objc_opt_self() anonymousListener];
  v0[16] = v14;
  [v14 setDelegate_];
  [v14 resume];
  v15 = swift_task_alloc();
  v0[17] = v15;
  v15[2] = v4;
  v15[3] = v12;
  v15[4] = v14;
  v16 = *(MEMORY[0x277D85A40] + 4);
  v17 = swift_task_alloc();
  v0[18] = v17;
  *v17 = v0;
  v17[1] = sub_24A042D24;
  v18 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 20, 0, 0, 0xD000000000000015, 0x800000024A0491D0, sub_24A0443DC, v15, v18);
}

uint64_t sub_24A042D24()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_24A042EB0;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_24A042E40;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24A042E40()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 160);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_24A042EB0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);

  v3 = *(v0 + 8);
  v4 = *(v0 + 152);

  return v3(0);
}

uint64_t sub_24A042F2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30E00, &qword_24A047920);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7[-v3];
  v5 = swift_projectBox();
  swift_beginAccess();
  result = (*(v1 + 48))(v5, 1, v0);
  if (!result)
  {
    (*(v1 + 16))(v4, v5, v0);
    v7[7] = 0;
    sub_24A046440();
    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

void sub_24A043064(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_24A0430CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30E00, &qword_24A047920);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &aBlock[-1] - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30DF8, &qword_24A047918);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &aBlock[-1] - v14;
  v16 = *(v8 + 16);
  v16(&aBlock[-1] - v14, a1, v7);
  (*(v8 + 56))(v15, 0, 1, v7);
  swift_beginAccess();
  sub_24A0443E8(v15, a2);
  v17 = [a4 endpoint];
  v16(v11, a1, v7);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  (*(v8 + 32))(v19 + v18, v11, v7);
  v20 = *(v27 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_encore);
  if (v20)
  {
    v21 = *(v27 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_serviceName);
    v22 = *(v27 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_serviceName + 8);
    v23 = *(v27 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_encore);
    swift_unknownObjectRetain();
    v24 = sub_24A046380();
    v25 = swift_allocObject();
    *(v25 + 16) = sub_24A044458;
    *(v25 + 24) = v19;
    aBlock[4] = sub_24A0444FC;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A0425F4;
    aBlock[3] = &block_descriptor_33;
    v26 = _Block_copy(aBlock);

    [v20 registerWithClient:v17 name:v24 with:v26];
    _Block_release(v26);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24A04344C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v6 = sub_24A0462E0();
  __swift_project_value_buffer(v6, qword_28131A090);
  v7 = sub_24A0462D0();
  v8 = sub_24A046520();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24A036000, v7, v8, "SnippetService: subscribe", v9, 2u);
    MEMORY[0x24C20E160](v9, -1, -1);
  }

  v10 = (v3 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_eventHandler);
  v11 = *(v3 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_eventHandler);
  v12 = *(v3 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_eventHandler + 8);
  *v10 = a1;
  v10[1] = a2;

  return sub_24A03FA34(v11);
}

uint64_t sub_24A0435F8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF30C70, &qword_24A047210);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30DD0, &unk_24A047220);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF30C80, &unk_24A047770);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v34 - v15;
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v17 = sub_24A0462E0();
  __swift_project_value_buffer(v17, qword_28131A090);
  v18 = a1;
  v19 = sub_24A0462D0();
  v20 = sub_24A046520();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v35 = v5;
    v22 = v8;
    v23 = v21;
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v18;
    *v24 = v18;
    v25 = v18;
    _os_log_impl(&dword_24A036000, v19, v20, "SnippetService: handleEvent%@", v23, 0xCu);
    sub_24A041D20(v24, &qword_27EF30C68, &unk_24A047870);
    MEMORY[0x24C20E160](v24, -1, -1);
    v26 = v23;
    v8 = v22;
    v5 = v35;
    MEMORY[0x24C20E160](v26, -1, -1);
  }

  v27 = *(v2 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_eventHandler);
  if (v27)
  {
    v28 = *(v2 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_eventHandler + 8);

    v27(v18);
    sub_24A03FA34(v27);
  }

  v29 = OBJC_IVAR____TtC16EncoreXPCService12AsyncService_continuation;
  swift_beginAccess();
  sub_24A03FA44(v2 + v29, v12);
  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_24A041D20(v12, &qword_27EF30DD0, &unk_24A047220);
    v30 = 1;
  }

  else
  {
    (*(v5 + 16))(v8, v12, v4);
    sub_24A041D20(v12, &qword_27EF30DD0, &unk_24A047220);
    v36 = v18;
    v31 = v18;
    sub_24A046490();
    (*(v5 + 8))(v8, v4);
    v30 = 0;
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30C90, &qword_24A047880);
  (*(*(v32 - 8) + 56))(v16, v30, 1, v32);
  return sub_24A041D20(v16, &unk_27EF30C80, &unk_24A047770);
}

id sub_24A043AF0(void *a1, const char *a2, const char **a3)
{
  v6 = v3;
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v8 = sub_24A0462E0();
  __swift_project_value_buffer(v8, qword_28131A090);
  v9 = a1;
  v10 = sub_24A0462D0();
  v11 = sub_24A046520();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_24A036000, v10, v11, a2, v12, 0xCu);
    sub_24A041D20(v13, &qword_27EF30C68, &unk_24A047870);
    MEMORY[0x24C20E160](v13, -1, -1);
    MEMORY[0x24C20E160](v12, -1, -1);
  }

  result = *(v6 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_encore);
  if (result)
  {
    v16 = *a3;

    return [result v16];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24A043D04()
{
  v1 = *(v0 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_serviceName + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_eventHandler + 8);
  sub_24A03FA34(*(v0 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_eventHandler));
  v3 = *(v0 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_encore);
  swift_unknownObjectRelease();
  v4 = *(v0 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_connection);
}

id SnippetService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnippetService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24A043E18()
{
  [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30C98, qword_24A047780);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24A047230;
  v1 = type metadata accessor for EncoreEvent();
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30CA0, &qword_24A047910);
  *(v0 + 32) = v1;
  v2 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v3 = sub_24A046420();

  [v2 initWithArray_];

  result = sub_24A046510();
  __break(1u);
  return result;
}

uint64_t dispatch thunk of SnippetService.register()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x118);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24A044180;

  return v6();
}

uint64_t sub_24A044180(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A0443E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30DF8, &qword_24A047918);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A044458()
{
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30E00, &qword_24A047920) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30E00, &qword_24A047920);
  return sub_24A046440();
}

uint64_t sub_24A0444FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void SynchronizableObject.publish(change:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_24A0462C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v27[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28[3] = AssociatedTypeWitness;
  v28[4] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
  v14 = *(a3 + 64);
  v26 = v3;
  v15 = v14(a2, a3);
  v17 = *&v15[OBJC_IVAR____TtC16EncoreXPCService14SnippetService_serviceName];
  v16 = *&v15[OBJC_IVAR____TtC16EncoreXPCService14SnippetService_serviceName + 8];

  v27[0] = v17;
  v27[1] = v16;
  sub_24A0462B0();
  v18 = sub_24A0462A0();
  v20 = v19;
  (*(v8 + 8))(v11, v7);
  v21 = objc_allocWithZone(type metadata accessor for EncoreEvent());
  v22 = v28[6];
  v23 = EncoreEvent.init(value:serviceName:id:)(v28, v27, v18, v20);
  if (!v22)
  {
    v24 = v23;
    v25 = v14(a2, a3);
    sub_24A043A60(v24);
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t SynchronizableObject.registerAndListenForChanges(handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30E10, &qword_24A047940);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - v12;
  if ((*(a4 + 40))(a3, a4))
  {
    if (qword_28131A040 != -1)
    {
      swift_once();
    }

    v14 = sub_24A0462E0();
    __swift_project_value_buffer(v14, qword_28131A090);
    v15 = sub_24A0462D0();
    v16 = sub_24A046530();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24A036000, v15, v16, "#SynchronizableObject: Cancelling existing subscription before updating.", v17, 2u);
      MEMORY[0x24C20E160](v17, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30E18, &qword_24A047958);
    sub_24A0464E0();
  }

  v18 = sub_24A046480();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = v5;
  v19[7] = a1;
  v19[8] = a2;
  swift_unknownObjectRetain();

  v20 = sub_24A045B7C(0, 0, v13, &unk_24A047950, v19);
  return (*(a4 + 48))(v20, a3, a4);
}

uint64_t sub_24A044A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[15] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v8[16] = v10;
  v11 = *(v10 + 64) + 15;
  v8[17] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30A60, &unk_24A0471E0);
  v8[18] = v12;
  v13 = *(v12 - 8);
  v8[19] = v13;
  v14 = *(v13 + 64) + 15;
  v8[20] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF30E20, &qword_24A047988);
  v8[21] = v15;
  v16 = *(v15 - 8);
  v8[22] = v16;
  v17 = *(v16 + 64) + 15;
  v8[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A044C34, 0, 0);
}

uint64_t sub_24A044C34()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[10];
  v4 = *(v1 + 64);
  v0[24] = v4;
  v0[25] = (v1 + 64) & 0xFFFFFFFFFFFFLL | 0xE179000000000000;
  v5 = v4(v2, v1);
  v6 = &v5[OBJC_IVAR____TtC16EncoreXPCService14SnippetService_serviceName];
  v0[26] = *&v5[OBJC_IVAR____TtC16EncoreXPCService14SnippetService_serviceName];
  v0[27] = *(v6 + 1);

  v0[28] = v4(v2, v1);
  v7 = swift_task_alloc();
  v0[29] = v7;
  *v7 = v0;
  v7[1] = sub_24A044D48;

  return sub_24A042648();
}

uint64_t sub_24A044D48(char a1)
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_24A044E64, 0, 0);
}

uint64_t sub_24A044E64()
{
  v39 = v0;
  if (*(v0 + 288) == 1)
  {
    if (qword_28131A040 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 216);
    v2 = sub_24A0462E0();
    *(v0 + 240) = __swift_project_value_buffer(v2, qword_28131A090);

    v3 = sub_24A0462D0();
    v4 = sub_24A046530();

    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 216);
    if (v5)
    {
      v7 = *(v0 + 208);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v38 = v9;
      *v8 = 136446210;
      v10 = sub_24A0391F4(v7, v6, &v38);

      *(v8 + 4) = v10;
      _os_log_impl(&dword_24A036000, v3, v4, "#SynchronizableObject: Registered SceneHost: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x24C20E160](v9, -1, -1);
      MEMORY[0x24C20E160](v8, -1, -1);
    }

    else
    {
    }

    v21 = *(v0 + 200);
    v22 = *(v0 + 184);
    v24 = *(v0 + 152);
    v23 = *(v0 + 160);
    v25 = *(v0 + 144);
    v26 = *(v0 + 80);
    v27 = (*(v0 + 192))(*(v0 + 104), *(v0 + 112));
    v28 = OBJC_IVAR____TtC16EncoreXPCService12AsyncService_events;
    swift_beginAccess();
    (*(v24 + 16))(v23, &v27[v28], v25);

    sub_24A0464A0();
    (*(v24 + 8))(v23, v25);
    *(v0 + 248) = 0;
    v29 = *(MEMORY[0x277D85798] + 4);
    v30 = swift_task_alloc();
    *(v0 + 256) = v30;
    *v30 = v0;
    v30[1] = sub_24A045284;
    v31 = *(v0 + 184);
    v32 = *(v0 + 168);

    return MEMORY[0x2822003E8](v0 + 64, 0, 0, v32);
  }

  else
  {
    if (qword_28131A040 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 216);
    v12 = sub_24A0462E0();
    __swift_project_value_buffer(v12, qword_28131A090);

    v13 = sub_24A0462D0();
    v14 = sub_24A046540();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 216);
    if (v15)
    {
      v17 = *(v0 + 208);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v38 = v19;
      *v18 = 136446210;
      v20 = sub_24A0391F4(v17, v16, &v38);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_24A036000, v13, v14, "#SynchronizableObject: Failed to register SceneHost: %{public}s. Please check logs for SnippetService.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x24C20E160](v19, -1, -1);
      MEMORY[0x24C20E160](v18, -1, -1);
    }

    else
    {
    }

    v33 = *(v0 + 184);
    v34 = *(v0 + 160);
    v35 = *(v0 + 136);

    v36 = *(v0 + 8);

    return v36();
  }
}

uint64_t sub_24A045284()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24A045380, 0, 0);
}

uint64_t sub_24A045380()
{
  v32 = v0;
  v1 = v0[8];
  v0[33] = v1;
  if (!v1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);
    v14 = v0[23];
    v15 = v0[20];
    v16 = v0[17];

    v17 = v0[1];
LABEL_20:

    return v17();
  }

  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[10];
  v8 = *&v1[OBJC_IVAR___EncoreEvent_serviceName];
  v7 = *&v1[OBJC_IVAR___EncoreEvent_serviceName + 8];

  v9 = v3(v5, v4);
  v11 = *&v9[OBJC_IVAR____TtC16EncoreXPCService14SnippetService_serviceName];
  v10 = *&v9[OBJC_IVAR____TtC16EncoreXPCService14SnippetService_serviceName + 8];

  if (!v7)
  {
    if (!v10)
    {
      goto LABEL_17;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  if (v8 != v11 || v7 != v10)
  {
    v13 = sub_24A0466E0();

    if (v13)
    {
      goto LABEL_18;
    }

LABEL_13:

    v0[31] = v0[31];
    v18 = *(MEMORY[0x277D85798] + 4);
    v19 = swift_task_alloc();
    v0[32] = v19;
    *v19 = v0;
    v19[1] = sub_24A045284;
    v20 = v0[23];
    v21 = v0[21];

    return MEMORY[0x2822003E8](v0 + 8, 0, 0, v21);
  }

LABEL_17:

LABEL_18:
  v22 = v0[31];
  sub_24A0464F0();
  if (v22)
  {
    v23 = v0[20];
    v24 = v0[17];
    (*(v0[22] + 8))(v0[23], v0[21]);

    v17 = v0[1];
    goto LABEL_20;
  }

  v25 = v0[17];
  v26 = v0[14];
  v27 = v0[15];
  v28 = v0[13];
  swift_getAssociatedConformanceWitness();
  sub_24A03B088();
  v0[34] = 0;
  sub_24A046460();
  v0[35] = sub_24A046450();
  v30 = sub_24A046430();

  return MEMORY[0x2822009F8](sub_24A045848, v30, v29);
}

uint64_t sub_24A045848()
{
  v1 = v0[35];
  v2 = v0[17];
  v4 = v0[11];
  v3 = v0[12];

  v4(v2);

  return MEMORY[0x2822009F8](sub_24A0458CC, 0, 0);
}

uint64_t sub_24A0458CC()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);

  (*(v2 + 8))(v1, v3);
  *(v0 + 248) = *(v0 + 272);
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  *(v0 + 256) = v5;
  *v5 = v0;
  v5[1] = sub_24A045284;
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);

  return MEMORY[0x2822003E8](v0 + 64, 0, 0, v7);
}

uint64_t sub_24A0459AC(uint64_t a1)
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
  v11[1] = sub_24A045A88;

  return sub_24A044A84(a1, v6, v7, v8, v9, v10, v4, v5);
}

uint64_t sub_24A045A88()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24A045B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30E10, &qword_24A047940);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_24A046118(a3, v24 - v10);
  v12 = sub_24A046480();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24A046188(v11);
  }

  else
  {
    sub_24A046470();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_24A046430();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_24A0463E0() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_24A046188(a3);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24A046188(a3);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SynchronizableObject.publishViewDisappeared()()
{
  v2 = v1;
  v3 = v0;
  v24 = sub_24A0462C0();
  v4 = *(v24 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v24);
  v7 = &v25[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v8 = sub_24A0462E0();
  __swift_project_value_buffer(v8, qword_28131A090);
  v9 = sub_24A0462D0();
  v10 = sub_24A046530();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24A036000, v9, v10, "#SynchronizableObject: Publishing that view will disappear and marking as cancelled", v11, 2u);
    MEMORY[0x24C20E160](v11, -1, -1);
  }

  if ((*(v2 + 40))(v3, v2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30E18, &qword_24A047958);
    sub_24A0464E0();
  }

  v26[3] = &type metadata for SystemEvents;
  v26[4] = sub_24A03C4D4();
  LOBYTE(v26[0]) = 0;
  v12 = *(v2 + 64);
  v13 = v12(v3, v2);
  v15 = *&v13[OBJC_IVAR____TtC16EncoreXPCService14SnippetService_serviceName];
  v14 = *&v13[OBJC_IVAR____TtC16EncoreXPCService14SnippetService_serviceName + 8];

  v25[0] = v15;
  v25[1] = v14;
  sub_24A0462B0();
  v16 = sub_24A0462A0();
  v18 = v17;
  (*(v4 + 8))(v7, v24);
  v19 = objc_allocWithZone(type metadata accessor for EncoreEvent());
  v20 = v26[6];
  v21 = EncoreEvent.init(value:serviceName:id:)(v26, v25, v16, v18);
  if (!v20)
  {
    v22 = v21;
    v23 = v12(v3, v2);
    sub_24A043A60(v22);
  }
}

uint64_t sub_24A046118(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30E10, &qword_24A047940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A046188(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30E10, &qword_24A047940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}