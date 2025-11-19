id PXGridZeroBundle()
{
  if (PXGridZeroBundle_onceToken != -1)
  {
    dispatch_once(&PXGridZeroBundle_onceToken, &__block_literal_global_182);
  }

  v1 = PXGridZeroBundle_frameworkBundle;

  return v1;
}

uint64_t __PXGridZeroBundle_block_invoke()
{
  PXGridZeroBundle_frameworkBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

id PFGridInlinePlaybackGetLog()
{
  if (PFGridInlinePlaybackGetLog_predicate != -1)
  {
    dispatch_once(&PFGridInlinePlaybackGetLog_predicate, &__block_literal_global_311);
  }

  v1 = PFGridInlinePlaybackGetLog_log;

  return v1;
}

uint64_t __PFGridInlinePlaybackGetLog_block_invoke()
{
  PFGridInlinePlaybackGetLog_log = os_log_create(*MEMORY[0x277D3A848], "GridInlinePlayback");

  return MEMORY[0x2821F96F8]();
}

void sub_21ABF6938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void sub_21ABF6DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PXZoomablePhotosInvalidate(void *a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  v5 = a2;
  if (a2 && (v3[1056] & 1) != 0)
  {
    v6 = PXAssertGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v17 = a2;
      _os_log_error_impl(&dword_21ABF3000, v6, OS_LOG_TYPE_ERROR, "Tried to update pre entities %lu during post phase.", buf, 0xCu);
    }
  }

  v7 = v4 + 127;
  v8 = v4[127];
  if (!a2 || v8)
  {
    if ((v4[129] & 1) == 0)
    {
LABEL_13:
      *v7 = v8 | a2;
      goto LABEL_14;
    }

LABEL_12:
    if ((v4[128] & a2) != 0)
    {
      v14 = [MEMORY[0x277CCA890] currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void PXZoomablePhotosInvalidate(PXZoomablePhotosLayout *__strong, PXZoomablePhotosInvalidatableEntities)"}];
      [v14 handleFailureInFunction:v15 file:@"PXZoomablePhotosLayout.m" lineNumber:249 description:{@"invalidating %lu after it already has been updated", v5}];
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  if (v4[129])
  {
    goto LABEL_12;
  }

  v9 = *(v4 + 1033);
  *v7 = a2;
  if ((v9 & 1) == 0)
  {
    [v4 setNeedsUpdate];
  }

LABEL_14:
  v10 = v4 + 130;
  v11 = v4[130];
  v12 = a2 & 0xFFFF0000;
  if ((a2 & 0xFFFF0000) == 0 || v11)
  {
    if ((v4[132] & 1) == 0)
    {
LABEL_21:
      *v10 = v11 | v12;
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (v4[132])
  {
LABEL_20:
    if ((v4[131] & v12) == 0)
    {
      goto LABEL_21;
    }

    v14 = [MEMORY[0x277CCA890] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void PXZoomablePhotosInvalidate(PXZoomablePhotosLayout *__strong, PXZoomablePhotosInvalidatableEntities)"}];
    [v14 handleFailureInFunction:v15 file:@"PXZoomablePhotosLayout.m" lineNumber:252 description:{@"invalidating %lu after it already has been updated", v12}];
LABEL_25:

    abort();
  }

  v13 = *(v4 + 1057);
  *v10 = v12;
  if ((v13 & 1) == 0)
  {
    [v4 setNeedsUpdate];
  }

LABEL_22:
}

void sub_21ABFF518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_21AC016E4(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34140);
  v3 = OUTLINED_FUNCTION_3();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_21AC01760()
{
  OUTLINED_FUNCTION_6();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34140);
    v3 = OUTLINED_FUNCTION_3();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_21AC017E0(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_4();
  }

  sub_21AC6EC84();
  v3 = OUTLINED_FUNCTION_3();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_21AC01850()
{
  OUTLINED_FUNCTION_6();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    sub_21AC6EC84();
    v3 = OUTLINED_FUNCTION_3();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_21AC018C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6();
  v6 = type metadata accessor for PhotosViewAdditionalInfo(0);
  if (*(*(v6 - 8) + 84) == v3)
  {
    v7 = v6;
    v8 = v4;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34168);
    v8 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v7);
}

uint64_t sub_21AC01968(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_6();
  v8 = type metadata accessor for PhotosViewAdditionalInfo(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v5;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34168);
    v10 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, v4, v4, v9);
}

uint64_t sub_21AC01A14()
{
  v1 = type metadata accessor for PhotosViewAdditionalInfoView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for PhotosViewAdditionalInfo.Link(0);
  OUTLINED_FUNCTION_10();
  v7 = *(v6 + 80);
  v18 = *(v8 + 64);

  v9 = v0 + v3 + *(type metadata accessor for PhotosViewAdditionalInfo(0) + 20);
  if (!OUTLINED_FUNCTION_12(v9))
  {

    v10 = *(v5 + 20);
    sub_21AC6EC84();
    OUTLINED_FUNCTION_1_0();
    (*(v11 + 8))(v9 + v10);
  }

  v12 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21AC6EE74();
    OUTLINED_FUNCTION_1_0();
    (*(v13 + 8))(v0 + v3 + v12);
  }

  else
  {
  }

  v14 = (v3 + v4 + v7) & ~v7;

  v15 = *(v5 + 20);
  sub_21AC6EC84();
  OUTLINED_FUNCTION_1_0();
  (*(v16 + 8))(v0 + v14 + v15);

  return MEMORY[0x2821FE8E8](v0, v14 + v18, v2 | v7 | 7);
}

uint64_t sub_21AC01C64(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21AC01C74()
{

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_21AC01CAC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21AC01CBC()
{
  OUTLINED_FUNCTION_13();
  result = PXPhotosViewModel.userWantsAspectFitContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AC01D24()
{
  OUTLINED_FUNCTION_13();
  result = PXPhotosViewModel.scrollDetentsProvider.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void *sub_21AC01DA0()
{
  OUTLINED_FUNCTION_13();
  result = PXPhotosViewModel.previewHeaderContentView.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AC01DF4()
{
  OUTLINED_FUNCTION_13();
  result = PXPhotosViewModel.scrollRequestHandler.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AC01E48()
{
  OUTLINED_FUNCTION_13();
  result = PXPhotosViewModel.oneUpPresentationRequestHandler.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AC01FA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AC6ECA4();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21AC01FE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AC6ECA4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21AC0205C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21AC02094()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_21AC02200()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21AC0223C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21AC0EC60();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21AC02298@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21AC0FEF0();
  *a1 = result;
  return result;
}

uint64_t sub_21AC022EC@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosEnvironmentValues.photosContentPrivacyModel.getter();
  *a1 = result;
  return result;
}

void sub_21AC023A0()
{
  v0 = sub_21AC02428();
  if (v0)
  {
    v1 = v0;
    v2 = sub_21AC0251C();
    sub_21AC031F4(v1);
  }
}

uint64_t sub_21AC02428()
{
  if (qword_27CD33CA0 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_27CD33CA8))
  {
    sub_21AC6F134();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    _s14AssociatedDataCMa();
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_21AC03D5C(v5, &qword_27CD33FF0);
    return 0;
  }
}

id sub_21AC0251C()
{
  v1 = sub_21AC02428();
  if (v1)
  {
    return v1;
  }

  v2 = [objc_allocWithZone(_s14AssociatedDataCMa()) init];
  if (qword_27CD33CA0 != -1)
  {
    swift_once();
  }

  objc_setAssociatedObject(v0, qword_27CD33CA8, v2, 1);
  return v2;
}

id sub_21AC02614(void *a1)
{
  sub_21AC038DC();
  sub_21AC03D1C(0, &unk_27CD33CB8);
  sub_21AC6ED94();

  return a1;
}

uint64_t sub_21AC0271C()
{
  v0 = sub_21AC6ED44();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20]();
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  PXPhotosViewConfiguration.environmentValues.getter(v3);
  v4 = sub_21AC6ED14();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v6)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

void sub_21AC02850()
{
  sub_21AC6ED44();
  MEMORY[0x28223BE20]();
  v1 = &v2 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  PXPhotosViewConfiguration.environmentValues.getter(v1);
  sub_21AC6ED24();
  PXPhotosViewConfiguration.environmentValues.setter(v1);
}

uint64_t PXPhotosViewConfiguration.environmentValues.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD33EF0);
  MEMORY[0x28223BE20]();
  v3 = &v11 - v2;
  v4 = sub_21AC02428();
  if (v4)
  {
    v5 = v4;
    v6 = OBJC_IVAR____TtCE8GridZeroCSo25PXPhotosViewConfigurationP33_9AD03F1A3BE14F867F162159289ECCE214AssociatedData_environmentValues;
    swift_beginAccess();
    v7 = sub_21AC6ED44();
    v8 = *(v7 - 8);
    (*(v8 + 16))(v3, &v5[v6], v7);

    __swift_storeEnumTagSinglePayload(v3, 0, 1, v7);
    return (*(v8 + 32))(a1, v3, v7);
  }

  else
  {
    v10 = sub_21AC6ED44();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v10);
    sub_21AC6ED34();
    result = __swift_getEnumTagSinglePayload(v3, 1, v10);
    if (result != 1)
    {
      return sub_21AC03D5C(v3, &unk_27CD33EF0);
    }
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void PXPhotosViewConfiguration.environmentValues.setter(uint64_t a1)
{
  v2 = sub_21AC0251C();
  v3 = OBJC_IVAR____TtCE8GridZeroCSo25PXPhotosViewConfigurationP33_9AD03F1A3BE14F867F162159289ECCE214AssociatedData_environmentValues;
  OUTLINED_FUNCTION_1();
  v4 = sub_21AC6ED44();
  (*(*(v4 - 8) + 40))(&v2[v3], a1, v4);
  swift_endAccess();
}

double PXPhotosViewConfiguration.titleModel.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_21AC02428();
  if (v2)
  {
    v3 = v2;
    v4 = OBJC_IVAR____TtCE8GridZeroCSo25PXPhotosViewConfigurationP33_9AD03F1A3BE14F867F162159289ECCE214AssociatedData_titleModel;
    swift_beginAccess();
    sub_21AC02C20(v3 + v4, a1);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_21AC02C20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD33F08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void PXPhotosViewConfiguration.titleModel.setter(uint64_t a1)
{
  v2 = sub_21AC0251C();
  v3 = OBJC_IVAR____TtCE8GridZeroCSo25PXPhotosViewConfigurationP33_9AD03F1A3BE14F867F162159289ECCE214AssociatedData_titleModel;
  OUTLINED_FUNCTION_1();
  sub_21AC02D4C(a1, v2 + v3);
  swift_endAccess();
}

uint64_t sub_21AC02D4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD33F08);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*PXPhotosViewConfiguration.titleModel.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v3;
  v3[10] = v1;
  PXPhotosViewConfiguration.titleModel.getter(v3);
  return sub_21AC02E20;
}

void sub_21AC02E20(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_21AC02C20(*a1, v2 + 40);
    PXPhotosViewConfiguration.titleModel.setter(v2 + 40);
    sub_21AC03D5C(v2, &qword_27CD33F08);
  }

  else
  {
    PXPhotosViewConfiguration.titleModel.setter(*a1);
  }

  free(v2);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t PXPhotosViewConfiguration.previewKeyAsset.getter()
{
  v0 = sub_21AC02428();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtCE8GridZeroCSo25PXPhotosViewConfigurationP33_9AD03F1A3BE14F867F162159289ECCE214AssociatedData_previewKeyAsset);
  swift_unknownObjectRetain();

  return v2;
}

uint64_t sub_21AC02F18@<X0>(uint64_t *a1@<X8>)
{
  result = PXPhotosViewConfiguration.previewKeyAsset.getter();
  *a1 = result;
  return result;
}

uint64_t PXPhotosViewConfiguration.previewKeyAsset.setter(uint64_t a1)
{
  v2 = sub_21AC0251C();
  *&v2[OBJC_IVAR____TtCE8GridZeroCSo25PXPhotosViewConfigurationP33_9AD03F1A3BE14F867F162159289ECCE214AssociatedData_previewKeyAsset] = a1;

  return swift_unknownObjectRelease();
}

uint64_t (*PXPhotosViewConfiguration.previewKeyAsset.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = PXPhotosViewConfiguration.previewKeyAsset.getter();
  return sub_21AC03004;
}

uint64_t sub_21AC03004(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return PXPhotosViewConfiguration.previewKeyAsset.setter(*a1);
  }

  v2 = swift_unknownObjectRetain();
  PXPhotosViewConfiguration.previewKeyAsset.setter(v2);

  return swift_unknownObjectRelease();
}

void PXPhotosViewConfiguration.assetCountPlacement.getter(_BYTE *a1@<X8>)
{
  v2 = sub_21AC02428();
  if (v2)
  {
    v3 = v2[OBJC_IVAR____TtCE8GridZeroCSo25PXPhotosViewConfigurationP33_9AD03F1A3BE14F867F162159289ECCE214AssociatedData_assetCountPlacement];

    v4 = v3 & 1;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
}

void PXPhotosViewConfiguration.assetCountPlacement.setter(char *a1)
{
  v1 = *a1;
  v2 = sub_21AC0251C();
  v2[OBJC_IVAR____TtCE8GridZeroCSo25PXPhotosViewConfigurationP33_9AD03F1A3BE14F867F162159289ECCE214AssociatedData_assetCountPlacement] = v1;
}

void (*PXPhotosViewConfiguration.assetCountPlacement.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  PXPhotosViewConfiguration.assetCountPlacement.getter((a1 + 8));
  return sub_21AC031AC;
}

void sub_21AC031AC(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    v2 = &v3;
  }

  else
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  PXPhotosViewConfiguration.assetCountPlacement.setter(v2);
}

uint64_t sub_21AC031F4(uint64_t a1)
{
  v3 = sub_21AC6ED44();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v7 = OBJC_IVAR____TtCE8GridZeroCSo25PXPhotosViewConfigurationP33_9AD03F1A3BE14F867F162159289ECCE214AssociatedData_titleModel;
  swift_beginAccess();
  sub_21AC02C20(a1 + v7, v13);
  v8 = OBJC_IVAR____TtCE8GridZeroCSo25PXPhotosViewConfigurationP33_9AD03F1A3BE14F867F162159289ECCE214AssociatedData_titleModel;
  swift_beginAccess();
  sub_21AC02D4C(v13, v1 + v8);
  swift_endAccess();
  v9 = OBJC_IVAR____TtCE8GridZeroCSo25PXPhotosViewConfigurationP33_9AD03F1A3BE14F867F162159289ECCE214AssociatedData_environmentValues;
  swift_beginAccess();
  (*(v4 + 16))(v6, a1 + v9, v3);
  v10 = OBJC_IVAR____TtCE8GridZeroCSo25PXPhotosViewConfigurationP33_9AD03F1A3BE14F867F162159289ECCE214AssociatedData_environmentValues;
  swift_beginAccess();
  (*(v4 + 40))(v1 + v10, v6, v3);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtCE8GridZeroCSo25PXPhotosViewConfigurationP33_9AD03F1A3BE14F867F162159289ECCE214AssociatedData_previewKeyAsset) = *(a1 + OBJC_IVAR____TtCE8GridZeroCSo25PXPhotosViewConfigurationP33_9AD03F1A3BE14F867F162159289ECCE214AssociatedData_previewKeyAsset);
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  *(v1 + OBJC_IVAR____TtCE8GridZeroCSo25PXPhotosViewConfigurationP33_9AD03F1A3BE14F867F162159289ECCE214AssociatedData_assetCountPlacement) = *(a1 + OBJC_IVAR____TtCE8GridZeroCSo25PXPhotosViewConfigurationP33_9AD03F1A3BE14F867F162159289ECCE214AssociatedData_assetCountPlacement);
  return result;
}

id sub_21AC033A8()
{
  v1 = &v0[OBJC_IVAR____TtCE8GridZeroCSo25PXPhotosViewConfigurationP33_9AD03F1A3BE14F867F162159289ECCE214AssociatedData_titleModel];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  sub_21AC6ED34();
  *&v0[OBJC_IVAR____TtCE8GridZeroCSo25PXPhotosViewConfigurationP33_9AD03F1A3BE14F867F162159289ECCE214AssociatedData_previewKeyAsset] = 0;
  v0[OBJC_IVAR____TtCE8GridZeroCSo25PXPhotosViewConfigurationP33_9AD03F1A3BE14F867F162159289ECCE214AssociatedData_assetCountPlacement] = 2;
  v3.receiver = v0;
  v3.super_class = _s14AssociatedDataCMa();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_21AC03448()
{
  v2.receiver = v0;
  v2.super_class = _s14AssociatedDataCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21AC0351C()
{
  result = swift_slowAlloc();
  qword_27CD33CA8 = result;
  return result;
}

uint64_t PhotosViewAssetCountPlacement.hashValue.getter()
{
  v1 = *v0;
  sub_21AC6F234();
  MEMORY[0x21CEDFBB0](v1);
  return sub_21AC6F264();
}

uint64_t sub_21AC035DC()
{
  v1 = *v0;
  sub_21AC6F234();
  MEMORY[0x21CEDFBB0](v1);
  return sub_21AC6F264();
}

void sub_21AC03644(uint64_t a1)
{
  sub_21AC6ED44();
  MEMORY[0x28223BE20]();
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v3, a1);
  PXPhotosViewConfiguration.environmentValues.setter(v3);
}

void (*PXPhotosViewConfiguration.environmentValues.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_21AC6ED44();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[4] = v7;
  PXPhotosViewConfiguration.environmentValues.getter(v7);
  return sub_21AC037E4;
}

void sub_21AC037E4(uint64_t a1, char a2)
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  if (a2)
  {
    v7 = OUTLINED_FUNCTION_0();
    v8(v7);
    PXPhotosViewConfiguration.environmentValues.setter(v5);
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    PXPhotosViewConfiguration.environmentValues.setter(*(*a1 + 32));
  }

  free(v6);
  free(v5);

  free(v4);
}

unint64_t sub_21AC03884()
{
  result = qword_27CD33F70;
  if (!qword_27CD33F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD33F70);
  }

  return result;
}

unint64_t sub_21AC038DC()
{
  result = qword_27CD33C58;
  if (!qword_27CD33C58)
  {
    sub_21AC03D1C(255, &qword_27CD33C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD33C58);
  }

  return result;
}

void (*sub_21AC03948(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_21AC6ED44();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[4] = v7;
  PXPhotosViewConfiguration.environmentValues.getter(v7);
  return sub_21AC037E4;
}

uint64_t _s14AssociatedDataCMa()
{
  result = qword_27CD33C60;
  if (!qword_27CD33C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AC03A74()
{
  result = sub_21AC6ED44();
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

uint64_t getEnumTagSinglePayload for PhotosViewAssetCountPlacement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhotosViewAssetCountPlacement(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

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

uint64_t sub_21AC03CBC(uint64_t a1, int a2)
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

uint64_t sub_21AC03CDC(uint64_t result, int a2, int a3)
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

uint64_t sub_21AC03D1C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_21AC03D5C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21AC03DD0(uint64_t a1, unint64_t *a2)
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

uint64_t OUTLINED_FUNCTION_1()
{

  return swift_beginAccess();
}

GridZero::PhotosViewCollectionKindAnalyticsName_optional __swiftcall PhotosViewCollectionKindAnalyticsName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21AC6F204();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PhotosViewCollectionKindAnalyticsName.rawValue.getter()
{
  result = 7954788;
  switch(*v0)
  {
    case 1:
      result = 0x724F6E6F73726570;
      break;
    case 2:
      result = 0x657469726F766166;
      break;
    case 3:
      result = 0x79726F6D656DLL;
      break;
    case 4:
      result = 1885958772;
      break;
    case 5:
      result = 0x6D75626C61;
      break;
    case 6:
      result = 0x6C41646572616873;
      break;
    case 7:
      result = 0x6465727574616566;
      break;
    case 8:
      result = 0x707954616964656DLL;
      break;
    case 9:
      result = 0x7974696C697475;
      break;
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
      result = 0x796C746E65636572;
      break;
    case 0xE:
      result = 0x68736E6565726373;
      break;
    case 0xF:
      result = 0xD000000000000010;
      break;
    case 0x10:
      result = 0x6957646572616873;
      break;
    case 0x11:
      result = 0x646F546465766173;
      break;
    case 0x12:
      result = 0x657265766F636572;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_21AC040EC()
{
  result = qword_27CD34120;
  if (!qword_27CD34120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD34120);
  }

  return result;
}

uint64_t sub_21AC0415C()
{
  PhotosViewCollectionKindAnalyticsName.rawValue.getter();
  sub_21AC6EFE4();
}

uint64_t sub_21AC041C4()
{
  sub_21AC6F234();
  PhotosViewCollectionKindAnalyticsName.rawValue.getter();
  sub_21AC6EFE4();

  return sub_21AC6F264();
}

unint64_t sub_21AC04234@<X0>(unint64_t *a1@<X8>)
{
  result = PhotosViewCollectionKindAnalyticsName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_21AC04260()
{
  result = qword_27CD34128;
  if (!qword_27CD34128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD34130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD34128);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotosViewCollectionKindAnalyticsName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEE)
  {
    if (a2 + 18 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 18) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 19;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v5 = v6 - 19;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhotosViewCollectionKindAnalyticsName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

uint64_t PhotosViewAdditionalInfo.Link.init(text:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = OUTLINED_FUNCTION_9(a1, a2, a3);
  v6 = *(type metadata accessor for PhotosViewAdditionalInfo.Link(v5) + 20);
  sub_21AC6EC84();
  OUTLINED_FUNCTION_1_0();
  v8 = *(v7 + 32);

  return v8(v4 + v6, v3);
}

uint64_t static PhotosViewAdditionalInfo.Link.== infix(_:_:)()
{
  OUTLINED_FUNCTION_6();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_21AC6F1F4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PhotosViewAdditionalInfo.Link(0);

  return sub_21AC6EC64();
}

uint64_t PhotosViewAdditionalInfo.Link.hash(into:)()
{
  sub_21AC6EFE4();
  type metadata accessor for PhotosViewAdditionalInfo.Link(0);
  sub_21AC6EC84();
  OUTLINED_FUNCTION_0_0();
  sub_21AC04964(v0, v1);
  return sub_21AC6EF74();
}

uint64_t PhotosViewAdditionalInfo.Link.hashValue.getter()
{
  sub_21AC6F234();
  sub_21AC6EFE4();
  type metadata accessor for PhotosViewAdditionalInfo.Link(0);
  sub_21AC6EC84();
  OUTLINED_FUNCTION_0_0();
  sub_21AC04964(v0, v1);
  sub_21AC6EF74();
  return sub_21AC6F264();
}

uint64_t sub_21AC046B4()
{
  sub_21AC6F234();
  sub_21AC6EFE4();
  sub_21AC6EC84();
  sub_21AC04964(&qword_27CD34138, MEMORY[0x277CC9260]);
  sub_21AC6EF74();
  return sub_21AC6F264();
}

uint64_t PhotosViewAdditionalInfo.init(text:link:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = OUTLINED_FUNCTION_9(a1, a2, a3);
  v6 = v4 + *(type metadata accessor for PhotosViewAdditionalInfo(v5) + 20);

  return sub_21AC047BC(v3, v6);
}

uint64_t sub_21AC047BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PhotosViewAdditionalInfo.makeView()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PhotosViewAdditionalInfoView(0);
  a1[3] = v2;
  a1[4] = sub_21AC04964(&qword_27CD34148, type metadata accessor for PhotosViewAdditionalInfoView);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_21AC062DC();
  v4 = *(v2 + 20);
  *(boxed_opaque_existential_1 + v4) = swift_getKeyPath();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34150);

  return MEMORY[0x2821FEBC8](boxed_opaque_existential_1 + v4, v5, 0);
}

uint64_t sub_21AC0492C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AC04964(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

BOOL static PhotosViewAdditionalInfo.== infix(_:_:)(void *a1, void *a2)
{
  type metadata accessor for PhotosViewAdditionalInfo.Link(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_5();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34140);
  OUTLINED_FUNCTION_8(v5);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20]();
  v7 = (&v18 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34158);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20]();
  v10 = &v18 - v9;
  v11 = *a1 == *a2 && a1[1] == a2[1];
  if (v11 || (v12 = sub_21AC6F1F4(), result = 0, (v12 & 1) != 0))
  {
    type metadata accessor for PhotosViewAdditionalInfo(0);
    v14 = *(v8 + 48);
    sub_21AC064B8();
    sub_21AC064B8();
    if (OUTLINED_FUNCTION_12(v10) == 1)
    {
      if (OUTLINED_FUNCTION_12(&v10[v14]) == 1)
      {
        sub_21AC06274(v10, &qword_27CD34140);
        return 1;
      }
    }

    else
    {
      sub_21AC064B8();
      if (OUTLINED_FUNCTION_12(&v10[v14]) != 1)
      {
        OUTLINED_FUNCTION_2();
        sub_21AC06338();
        v16 = *v7 == *v2 && v7[1] == v2[1];
        if (v16 || (sub_21AC6F1F4() & 1) != 0)
        {
          v17 = sub_21AC6EC64();
          sub_21AC058A4(v2);
          sub_21AC058A4(v7);
          sub_21AC06274(v10, &qword_27CD34140);
          return (v17 & 1) != 0;
        }

        sub_21AC058A4(v2);
        sub_21AC058A4(v7);
        v15 = &qword_27CD34140;
LABEL_12:
        sub_21AC06274(v10, v15);
        return 0;
      }

      sub_21AC058A4(v7);
    }

    v15 = &qword_27CD34158;
    goto LABEL_12;
  }

  return result;
}

uint64_t PhotosViewAdditionalInfo.hash(into:)()
{
  v1 = type metadata accessor for PhotosViewAdditionalInfo.Link(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_5();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34140);
  OUTLINED_FUNCTION_8(v2);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20]();
  v4 = &v8 - v3;
  sub_21AC6EFE4();
  type metadata accessor for PhotosViewAdditionalInfo(0);
  sub_21AC064B8();
  if (__swift_getEnumTagSinglePayload(v4, 1, v1) == 1)
  {
    return sub_21AC6F254();
  }

  OUTLINED_FUNCTION_2();
  sub_21AC06338();
  sub_21AC6F254();
  sub_21AC6EFE4();
  sub_21AC6EC84();
  OUTLINED_FUNCTION_0_0();
  sub_21AC04964(v6, v7);
  sub_21AC6EF74();
  return sub_21AC058A4(v0);
}

uint64_t PhotosViewAdditionalInfo.hashValue.getter()
{
  sub_21AC6F234();
  PhotosViewAdditionalInfo.hash(into:)();
  return sub_21AC6F264();
}

uint64_t sub_21AC04E80()
{
  sub_21AC6F234();
  PhotosViewAdditionalInfo.hash(into:)();
  return sub_21AC6F264();
}

uint64_t sub_21AC04EC0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21AC6EED4();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34188);
  return sub_21AC04F14(v1, a1 + *(v3 + 44));
}

uint64_t sub_21AC04F14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = *(type metadata accessor for PhotosViewAdditionalInfoView(0) - 8);
  (MEMORY[0x28223BE20])();
  v38 = v4;
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34190);
  v41 = *(v5 - 8);
  (MEMORY[0x28223BE20])();
  v40 = &v32 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34140);
  (MEMORY[0x28223BE20])();
  v8 = &v32 - v7;
  v9 = type metadata accessor for PhotosViewAdditionalInfo.Link(0);
  v35 = *(v9 - 8);
  v10 = (MEMORY[0x28223BE20])();
  MEMORY[0x28223BE20](v10);
  v36 = &v32 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34198);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v45 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  sub_21AC6F094();
  v44 = sub_21AC6F084();
  sub_21AC6F074();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = a1[1];
  v46 = *a1;
  v47 = v17;
  sub_21AC06210();

  v43 = sub_21AC6EF04();
  v19 = v18;
  v42 = v20;
  v22 = v21;
  type metadata accessor for PhotosViewAdditionalInfo(0);
  sub_21AC064B8();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_21AC06274(v8, &qword_27CD34140);
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v5);
  }

  else
  {
    v33 = v19;
    v23 = v36;
    sub_21AC06338();
    v34 = v22;
    sub_21AC062DC();
    sub_21AC062DC();
    v38 = v5;
    swift_allocObject();
    v22 = v34;
    sub_21AC06338();
    v24 = sub_21AC06338();
    MEMORY[0x28223BE20](v24);
    *(&v32 - 2) = v23;
    v25 = v40;
    sub_21AC6EF44();
    v26 = v38;
    (*(v41 + 32))(v16, v25, v38);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v26);
    v27 = v23;
    v19 = v33;
    sub_21AC058A4(v27);
  }

  v28 = v45;
  sub_21AC064B8();
  v29 = v43;
  *a2 = v43;
  *(a2 + 8) = v19;
  v30 = v42 & 1;
  *(a2 + 16) = v42 & 1;
  *(a2 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD341A8);
  sub_21AC064B8();
  sub_21AC06264(v29, v19, v30);

  sub_21AC06274(v16, &qword_27CD34198);
  sub_21AC06274(v28, &qword_27CD34198);
  sub_21AC062CC(v29, v19, v30);
}

uint64_t sub_21AC05530()
{
  v0 = sub_21AC6EE74();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20]();
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21AC6F094();
  sub_21AC6F084();
  sub_21AC6F074();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for PhotosViewAdditionalInfoView(0);
  sub_21AC05C00(v3);
  type metadata accessor for PhotosViewAdditionalInfo.Link(0);
  sub_21AC6EE64();
  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21AC05694@<X0>(uint64_t a1@<X8>)
{
  sub_21AC6F094();
  sub_21AC6F084();
  sub_21AC6F074();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21AC06210();

  v2 = sub_21AC6EF04();
  v4 = v3;
  v6 = v5;
  sub_21AC6EE84();
  sub_21AC06464();
  v7 = sub_21AC6EEF4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_21AC062CC(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21AC057DC(uint64_t a1)
{
  v2 = sub_21AC6EE74();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21AC6EEA4();
}

uint64_t sub_21AC058A4(uint64_t a1)
{
  v2 = type metadata accessor for PhotosViewAdditionalInfo.Link(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PhotosViewAdditionalInfo.init(photosViewConfiguration:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21AC6EC84();
  OUTLINED_FUNCTION_10();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34140);
  OUTLINED_FUNCTION_8(v13);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v16 = (v31 - v15);
  v17 = sub_21AC05E00(a1);
  if (v18)
  {
    v19 = v18;
    v33 = v17;
    v20 = type metadata accessor for PhotosViewAdditionalInfo.Link(0);
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v20);
    v21 = [a1 footerLearnMoreURL];
    if (v21)
    {
      v22 = v21;
      sub_21AC6EC74();

      v23 = *(v6 + 32);
      v31[1] = v6 + 32;
      v32 = v23;
      v23(v12, v10, v4);
      v24 = PXGridZeroBundle();
      v25 = sub_21AC6EC54();
      v27 = v26;

      sub_21AC06274(v16, &qword_27CD34140);
      v32(v16 + *(v20 + 20), v12, v4);
      *v16 = v25;
      v16[1] = v27;
      __swift_storeEnumTagSinglePayload(v16, 0, 1, v20);
    }

    else
    {
    }

    *a2 = v33;
    a2[1] = v19;
    v30 = type metadata accessor for PhotosViewAdditionalInfo(0);
    sub_21AC047BC(v16, a2 + *(v30 + 20));
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v30);
  }

  else
  {

    v28 = type metadata accessor for PhotosViewAdditionalInfo(0);

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v28);
  }
}

uint64_t sub_21AC05C00@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21AC6EEC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34150);
  MEMORY[0x28223BE20]();
  v7 = &v11 - v6;
  sub_21AC064B8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21AC6EE74();
    return (*(*(v8 - 8) + 32))(a1, v7, v8);
  }

  else
  {
    sub_21AC6F104();
    v10 = sub_21AC6EEE4();
    sub_21AC6EE14();

    sub_21AC6EEB4();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_21AC05E00(void *a1)
{
  v1 = [a1 footerSubtitle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21AC6EFA4();

  return v3;
}

void sub_21AC05F64()
{
  sub_21AC06190(319, &qword_27CD33E70, type metadata accessor for PhotosViewAdditionalInfo.Link, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21AC06038()
{
  result = sub_21AC6EC84();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21AC060DC()
{
  type metadata accessor for PhotosViewAdditionalInfo(319);
  if (v0 <= 0x3F)
  {
    sub_21AC06190(319, &qword_27CD34180, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21AC06190(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_21AC06210()
{
  result = qword_27CD341A0;
  if (!qword_27CD341A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD341A0);
  }

  return result;
}

uint64_t sub_21AC06264(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21AC06274(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_1_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_21AC062CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21AC062DC()
{
  OUTLINED_FUNCTION_6();
  v2(0);
  OUTLINED_FUNCTION_1_0();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_21AC06338()
{
  OUTLINED_FUNCTION_6();
  v2(0);
  OUTLINED_FUNCTION_1_0();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_21AC06394()
{
  type metadata accessor for PhotosViewAdditionalInfoView(0);
  v0 = type metadata accessor for PhotosViewAdditionalInfo.Link(0);
  OUTLINED_FUNCTION_8(v0);

  return sub_21AC05530();
}

unint64_t sub_21AC06464()
{
  result = qword_27CD341B0;
  if (!qword_27CD341B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD341B0);
  }

  return result;
}

uint64_t sub_21AC064B8()
{
  OUTLINED_FUNCTION_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_1_0();
  (*(v3 + 16))(v0, v1);
  return v0;
}

unint64_t sub_21AC06514()
{
  result = qword_27CD341B8;
  if (!qword_27CD341B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD341C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD341B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_9@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_12(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t PhotosViewTargetScrollPosition.hashValue.getter()
{
  sub_21AC6F234();
  MEMORY[0x21CEDFBB0](0);
  return sub_21AC6F264();
}

uint64_t sub_21AC06724()
{
  sub_21AC6F234();
  MEMORY[0x21CEDFBB0](0);
  return sub_21AC6F264();
}

unint64_t sub_21AC06768()
{
  result = qword_27CD341C8;
  if (!qword_27CD341C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD341C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotosViewTargetScrollPosition(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for PhotosViewTargetScrollPosition(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_21AC0690C(void *a1)
{
  v3 = sub_21AC6ED44();
  OUTLINED_FUNCTION_10();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v26[-v10];
  if ([a1 scrollDetentsProviderClass])
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
    if (dynamic_cast_existential_1_conditional(ObjCClassMetadata))
    {
      v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v14 = [v1 specManager];
      [v13 initWithViewModel:v1 specManager:v14];

      sub_21AC06BD8();
    }
  }

  v15 = sub_21AC06C30();
  PXPhotosViewConfiguration.environmentValues.getter(v11);
  v16 = OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_environmentValues;
  swift_beginAccess();
  (*(v5 + 40))(&v15[v16], v11, v3);
  swift_endAccess();

  v17 = sub_21AC06C30();
  v18 = [a1 sectionBodyStyle] == 1;
  v17[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_allowsZooming] = v18;

  v19 = sub_21AC06C30();
  *&v19[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_previewKeyAsset] = PXPhotosViewConfiguration.previewKeyAsset.getter();

  swift_unknownObjectRelease();
  v20 = sub_21AC06C30();
  PXPhotosViewConfiguration.environmentValues.getter(v9);
  sub_21AC0D344();
  sub_21AC6ED54();
  (*(v5 + 8))(v9, v3);
  v21 = v28;
  if (v28)
  {
    v22 = v26;
    v23 = v27;
  }

  else
  {
    v22 = v29;
    sub_21AC06D5C(a1, v29);
    v23 = v29[1];
    v21 = v29[2];
  }

  v24 = &v20[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_collectionKind];
  *v24 = *v22;
  v24[1] = v23;
  v24[2] = v21;

  return sub_21AC06F70();
}

uint64_t sub_21AC06BD8()
{
  OUTLINED_FUNCTION_4_0();
  v2 = sub_21AC06C30();
  v3 = &v2[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_scrollDetentsProvider];
  *v3 = v1;
  *(v3 + 1) = v0;

  return swift_unknownObjectRelease();
}

id sub_21AC06C30()
{
  if (qword_27CD33D90 != -1)
  {
    swift_once();
  }

  v1 = qword_27CD33DA0;
  if (objc_getAssociatedObject(v0, qword_27CD33DA0))
  {
    sub_21AC6F134();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_21AC06274(v7, &qword_27CD33FF0);
    goto LABEL_10;
  }

  _s14AssociatedDataCMa_0(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v2 = [objc_allocWithZone(_s14AssociatedDataCMa_0(0)) init];
    objc_setAssociatedObject(v0, v1, v2, 1);
    return v2;
  }

  return v4;
}

uint64_t sub_21AC06D5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21AC6F0F4();
  if (qword_27CD33EB8 != -1)
  {
    swift_once();
  }

  v5 = qword_27CD370E8;
  if (os_log_type_enabled(qword_27CD370E8, v4))
  {
    v6 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v6 = 136315138;
    v7 = a1;
    v8 = [v7 description];
    sub_21AC6EFA4();

    v9 = sub_21AC0BD68();

    *(v6 + 4) = v9;
    _os_log_impl(&dword_21ABF3000, v5, v4, "Collection kind not set in environment for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x21CEE0DE0](v19, -1, -1);
    MEMORY[0x21CEE0DE0](v6, -1, -1);
  }

  if (qword_27CD33ED8 != -1)
  {
    swift_once();
  }

  v11 = qword_27CD34430;
  v10 = unk_27CD34438;
  v12 = 256;
  if (!byte_27CD34429)
  {
    v12 = 0;
  }

  v13 = v12 | byte_27CD34428;
  v14 = 0x10000;
  if (!byte_27CD3442A)
  {
    v14 = 0;
  }

  v15 = 0x1000000;
  if (!byte_27CD3442B)
  {
    v15 = 0;
  }

  v16 = v13 | v14 | v15;
  v17 = 0x100000000;
  if (!byte_27CD3442C)
  {
    v17 = 0;
  }

  *a2 = v16 | v17;
  a2[1] = v11;
  a2[2] = v10;
}

uint64_t sub_21AC06F70()
{
  v1 = sub_21AC6ED44();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  PXPhotosViewModel.environmentValues.getter();
  sub_21AC0D2F0();
  sub_21AC6ED54();
  result = (*(v2 + 8))(v4, v1);
  if (v6[1])
  {
    sub_21AC100FC([v0 contentPrivacyState]);
  }

  return result;
}

uint64_t sub_21AC07138()
{
  OUTLINED_FUNCTION_4_0();
  PXPhotosViewModel.collectionKind.getter(v10);
  v7[0] = v10[0];
  v7[1] = v10[1];
  v7[2] = v10[2];
  v7[3] = v10[3];
  v7[4] = v10[4];
  v8 = v11;
  v9 = v12;
  type metadata accessor for PhotosViewPreviewHeaderVisibilityController();
  swift_allocObject();
  v0 = PhotosViewPreviewHeaderVisibilityController.init(collectionKind:userDefaults:)(v7, 0);
  v1 = sub_21AC06C30();
  *&v1[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_headerVisibilityController] = v0;

  v2 = sub_21AC06C30();
  v3 = OUTLINED_FUNCTION_14();
  *&v2[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_headerVisibilityObservation] = sub_21AC0EE58(v3, v4);

  swift_unknownObjectRelease();
  v5 = sub_21AC0EC60();

  return v5 & 1;
}

void PXPhotosViewModel.collectionKind.getter(uint64_t a1@<X8>)
{
  v2 = sub_21AC06C30();
  v4 = *&v2[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_collectionKind];
  v3 = *&v2[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_collectionKind + 8];
  v5 = *&v2[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_collectionKind + 16];

  if (v5)
  {
    *a1 = v4;
    v6 = vdupq_n_s64(v4);
    *v6.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v6, xmmword_21AC7CCA0), vshlq_u64(v6, xmmword_21AC7CC90))), 0x1000100010001);
    *(a1 + 1) = vuzp1_s8(*v6.i8, *v6.i8).u32[0];
    *(a1 + 8) = v3;
    *(a1 + 16) = v5;
  }

  else
  {
    sub_21AC6F1C4();
    __break(1u);
  }
}

uint64_t sub_21AC07464()
{
  PXPhotosViewModel.collectionKind.getter(v2);
  v0 = v2[3];

  return v0;
}

BOOL sub_21AC074D4()
{
  v1 = sub_21AC06C30();
  v2 = v1[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_allowsZooming];

  if (v2)
  {
    return 1;
  }

  v4 = [v0 specManager];
  v5 = [v4 spec];

  v6 = [v5 userInterfaceIdiom];
  return v6 == 4;
}

uint64_t (*sub_21AC07620())()
{
  v1 = [v0 customExcludedActionTypesProvider];
  *(swift_allocObject() + 16) = v1;
  return sub_21AC0D6BC;
}

id sub_21AC07688(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    v4 = sub_21AC6F0C4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_21AC07708(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21AC6F0D4();

  return v3;
}

uint64_t sub_21AC07768(char a1)
{
  v2 = sub_21AC06C30();
  v3 = *&v2[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_headerVisibilityController];

  if (v3)
  {
    v4 = sub_21AC6F094();
    MEMORY[0x28223BE20](v4);
    v6[2] = v3;
    LOBYTE(v7) = a1 & 1;
    sub_21AC0792C(sub_21AC0D290, v6);
  }

  else
  {
    result = sub_21AC6F1C4();
    __break(1u);
  }

  return result;
}

uint64_t sub_21AC07880(uint64_t a1, char a2)
{
  sub_21AC6F094();
  sub_21AC6F084();
  sub_21AC6F074();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21AC0DF1C(a2 & 1);
}

uint64_t sub_21AC0792C(uint64_t a1, uint64_t a2)
{
  sub_21AC6F084();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_18();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_21AC0D2B0();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_21AC6F164();
    MEMORY[0x21CEDF960](0xD00000000000003FLL, 0x800000021AC7DD40);
    v8 = sub_21AC6F274();
    MEMORY[0x21CEDF960](v8);

    MEMORY[0x21CEDF960](46, 0xE100000000000000);
    result = sub_21AC6F1C4();
    __break(1u);
  }

  return result;
}

void (*sub_21AC07B08(char a1))(void)
{
  result = PXPhotosViewModel.customActionMenuVisibilityChangeHandler.getter();
  if (result)
  {
    v3 = result;
    result(a1 & 1);

    return sub_21AC01CAC(v3);
  }

  return result;
}

uint64_t PXPhotosViewModel.customActionMenuVisibilityChangeHandler.getter()
{
  v0 = sub_21AC06C30();
  v1 = *&v0[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_customActionMenuVisibilityChangeHandler];
  sub_21AC01C64(v1);

  return v1;
}

uint64_t sub_21AC07C1C(uint64_t a1)
{
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34350);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v2);
  v73 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v4);
  v72 = &v62 - v5;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v6);
  v71 = &v62 - v7;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v8);
  v70 = &v62 - v9;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v10);
  v69 = &v62 - v11;
  v12 = sub_21AC06C30();
  v13 = OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_primaryActionHandlers;
  swift_beginAccess();
  v14 = *&v12[v13];

  v15 = *(v14 + 16);
  if (v15)
  {
    v63 = a1;
    v82 = MEMORY[0x277D84F90];
    sub_21AC0C2D0(0, v15, 0);
    v16 = v82;
    result = sub_21AC0D160();
    v20 = result;
    v21 = 0;
    v22 = v14 + 64;
    v65 = v18;
    v64 = v14 + 72;
    v66 = v15;
    v67 = v14 + 64;
    v68 = v14;
    while ((v20 & 0x8000000000000000) == 0 && v20 < 1 << *(v14 + 32))
    {
      v23 = v20 >> 6;
      if ((*(v22 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v14 + 36) != v18)
      {
        goto LABEL_29;
      }

      v77 = v18;
      v78 = 1 << v20;
      v75 = v19;
      v76 = v21;
      v24 = *(v14 + 48);
      v25 = sub_21AC6ECA4();
      OUTLINED_FUNCTION_10();
      v27 = v26;
      v29 = v69;
      (*(v28 + 16))(v69, v24 + *(v28 + 72) * v20, v25);
      v30 = *(v14 + 56);
      v31 = *(v27 + 32);
      v80 = *(v30 + 16 * v20);
      v32 = v70;
      v31(v70, v29, v25);
      v33 = v74;
      *&v32[*(v74 + 48)] = v80;
      v34 = v32;
      v35 = v71;
      sub_21AC0D1E0(v34, v71);
      v79 = v16;
      v36 = *(v33 + 48);
      v37 = v72;
      v31(v72, v35, v25);
      v38 = (v37 + *(v33 + 48));
      OUTLINED_FUNCTION_18();
      v39 = swift_allocObject();
      *(v39 + 16) = *(v35 + v36);
      *v38 = sub_21AC0D1A0;
      v38[1] = v39;
      v40 = v73;
      sub_21AC0D1E0(v37, v73);
      v41 = *(v33 + 48);
      OUTLINED_FUNCTION_18();
      v42 = swift_allocObject();
      *(v42 + 16) = *(v40 + v41);
      v43 = *(v27 + 8);

      v44 = v40;
      v16 = v79;
      result = v43(v44, v25);
      v82 = v16;
      v46 = *(v16 + 16);
      v45 = *(v16 + 24);
      if (v46 >= v45 >> 1)
      {
        result = sub_21AC0C2D0((v45 > 1), v46 + 1, 1);
        v16 = v82;
      }

      *(v16 + 16) = v46 + 1;
      v47 = v16 + 16 * v46;
      *(v47 + 32) = sub_21AC0D6D4;
      *(v47 + 40) = v42;
      v14 = v68;
      v48 = 1 << *(v68 + 32);
      if (v20 >= v48)
      {
        goto LABEL_30;
      }

      v22 = v67;
      v49 = *(v67 + 8 * v23);
      if ((v49 & v78) == 0)
      {
        goto LABEL_31;
      }

      if (*(v68 + 36) != v77)
      {
        goto LABEL_32;
      }

      v50 = v49 & (-2 << (v20 & 0x3F));
      if (v50)
      {
        v48 = __clz(__rbit64(v50)) | v20 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v51 = v23 << 6;
        v52 = v23 + 1;
        v53 = (v64 + 8 * v23);
        while (v52 < (v48 + 63) >> 6)
        {
          v55 = *v53++;
          v54 = v55;
          v51 += 64;
          ++v52;
          if (v55)
          {
            result = sub_21AC0D280(v20, v77, v75 & 1);
            v48 = __clz(__rbit64(v54)) + v51;
            goto LABEL_19;
          }
        }

        result = sub_21AC0D280(v20, v77, v75 & 1);
      }

LABEL_19:
      v19 = 0;
      v21 = v76 + 1;
      v20 = v48;
      v18 = v65;
      if (v76 + 1 == v66)
      {

        a1 = v63;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
LABEL_22:
    v56 = v16 + 40;
    v57 = -*(v16 + 16);
    v58 = -1;
    do
    {
      v59 = v57 + v58;
      if (v57 + v58 == -1)
      {
        break;
      }

      if (++v58 >= *(v16 + 16))
      {
        goto LABEL_33;
      }

      v60 = v56 + 16;
      v61 = *(v56 - 8);
      v82 = a1;

      v61(&v81, &v82);

      v56 = v60;
    }

    while (v81 != 1);

    return v59 != -1;
  }

  return result;
}

void sub_21AC081E0(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34288);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  _Block_copy(a3);
  PXPhotosViewModel.draft.getter(&v15);
  if (v16)
  {
    sub_21AC0CAA4(&v15, v17);
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v9 = sub_21AC6EE04();
    if (v9)
    {
      a3[2](a3, v9);
    }

    else
    {
      v11 = sub_21AC6F0B4();
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v11);
      sub_21AC0CB00(v17, &v15);
      sub_21AC6F094();
      swift_unknownObjectRetain();

      v12 = sub_21AC6F084();
      v13 = swift_allocObject();
      v14 = MEMORY[0x277D85700];
      v13[2] = v12;
      v13[3] = v14;
      sub_21AC0CAA4(&v15, (v13 + 4));
      v13[9] = a1;
      v13[10] = sub_21AC0CA90;
      v13[11] = v8;
      sub_21AC0892C(0, 0, v7, &unk_21AC7CE70, v13);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  else
  {
    sub_21AC06274(&v15, &qword_27CD341F8);
    sub_21AC6EDE4();
    swift_allocObject();
    v10 = sub_21AC6EDD4();
    a3[2](a3, v10);
  }

  _Block_release(a3);
}

void PXPhotosViewModel.draft.getter(uint64_t a1@<X8>)
{
  v2 = sub_21AC06C30();
  v3 = OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_draft;
  OUTLINED_FUNCTION_25();
  sub_21AC0CD5C(v2 + v3, a1, &qword_27CD341F8);
}

uint64_t sub_21AC08488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = sub_21AC6F094();
  v7[7] = sub_21AC6F084();
  v9 = sub_21AC6F074();
  v7[8] = v9;
  v7[9] = v8;

  return MEMORY[0x2822009F8](sub_21AC08528, v9, v8);
}

uint64_t sub_21AC08528()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[2];
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_21AC085E4;
  v5 = v0[3];

  return MEMORY[0x28219CEF8](v5, v3, v2);
}

uint64_t sub_21AC085E4()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_22();
  *(v1 + 88) = v0;

  return MEMORY[0x2822009F8](sub_21AC086DC, 0, 0);
}

uint64_t sub_21AC086DC()
{
  OUTLINED_FUNCTION_8_0();
  *(v0 + 96) = sub_21AC6F084();
  v2 = sub_21AC6F074();

  return MEMORY[0x2822009F8](sub_21AC08764, v2, v1);
}

uint64_t sub_21AC08764()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[11];

  v2 = OUTLINED_FUNCTION_14();
  sub_21AC08870(v2, v3, v1);
  v4 = v0[8];
  v5 = v0[9];

  return MEMORY[0x2822009F8](sub_21AC0880C, v4, v5);
}

uint64_t sub_21AC0880C()
{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_21();

  return v0();
}

uint64_t sub_21AC08870(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_21AC6F094();
  sub_21AC6F084();
  sub_21AC6F074();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a1(a3);
}

uint64_t sub_21AC0892C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34288);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_21AC0CD5C(a3, v24 - v10, &qword_27CD34288);
  v12 = sub_21AC6F0B4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_21AC06274(v11, &qword_27CD34288);
  }

  else
  {
    sub_21AC6F0A4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_21AC6F074();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_21AC6EFD4() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_21AC06274(a3, &qword_27CD34288);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21AC06274(a3, &qword_27CD34288);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t PXPhotosViewModel.userWantsAspectFitContent.getter()
{
  v1 = [v0 userWantsAspectFitContent];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

void PXPhotosViewModel.userWantsAspectFitContent.setter(unsigned __int8 a1)
{
  v2 = a1;
  v3 = swift_dynamicCastObjCProtocolUnconditional();
  v4 = v3;
  if (v2 == 2)
  {
    [v3 setUserWantsAspectFitContent_];
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    [v4 setUserWantsAspectFitContent_];
  }
}

void (*PXPhotosViewModel.userWantsAspectFitContent.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = PXPhotosViewModel.userWantsAspectFitContent.getter();
  return sub_21AC08E60;
}

uint64_t PXPhotosViewModel.previewKeyAsset.getter()
{
  v0 = sub_21AC06C30();
  v1 = *&v0[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_previewKeyAsset];
  swift_unknownObjectRetain();

  return v1;
}

uint64_t sub_21AC08ED4@<X0>(uint64_t (**a1)@<X0>(uint64_t *@<X8>)@<X8>)
{
  v2 = PXPhotosViewModel.customMenuActionsProvider.getter();
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v4;
  *a1 = sub_21AC0D6B0;
  a1[1] = result;
  return result;
}

uint64_t sub_21AC08F38(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return sub_21AC092C0();
}

uint64_t sub_21AC08FB0@<X0>(uint64_t (**a1)(unsigned __int8 *)@<X8>)
{
  result = PXPhotosViewModel.customActionMenuVisibilityChangeHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_21AC0D6CC;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_21AC09020(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
  }

  sub_21AC01C64(v1);
  sub_21AC090B0();
}

void sub_21AC090B0()
{
  OUTLINED_FUNCTION_4_0();
  v4 = sub_21AC06C30();
  v2 = &v4[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_customActionMenuVisibilityChangeHandler];
  v3 = *&v4[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_customActionMenuVisibilityChangeHandler];
  *v2 = v1;
  *(v2 + 1) = v0;
  sub_21AC01CAC(v3);
}

uint64_t sub_21AC091D4()
{
  v0 = sub_21AC06C30();

  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_21AC092C0()
{
  OUTLINED_FUNCTION_5_0();
  v3 = sub_21AC06C30();
  v4 = &v3[*v0];
  *v4 = v2;
  *(v4 + 1) = v1;
}

uint64_t sub_21AC09314@<X0>(id *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *@<X8>)@<X8>)
{
  v3 = [*a1 customExcludedActionTypesProvider];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  result = swift_allocObject();
  *(result + 16) = sub_21AC0D6BC;
  *(result + 24) = v4;
  *a2 = sub_21AC0D6AC;
  a2[1] = result;
  return result;
}

void sub_21AC093B0(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  v8[4] = sub_21AC0D6B4;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_21AC07688;
  v8[3] = &block_descriptor_165;
  v7 = _Block_copy(v8);

  [v6 setCustomExcludedActionTypesProvider_];
  _Block_release(v7);
}

uint64_t PXPhotosViewModel.scrollDetentsProvider.getter()
{
  v0 = sub_21AC06C30();
  v1 = *&v0[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_scrollDetentsProvider];
  swift_unknownObjectRetain();

  return v1;
}

void sub_21AC09504(uint64_t a1)
{
  v2 = sub_21AC6ED84();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_21AC0A35C();
}

void *PXPhotosViewModel.previewHeaderContentView.getter()
{
  v0 = sub_21AC06C30();
  v1 = *&v0[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_previewHeaderContentView];
  v2 = v1;

  return v1;
}

void sub_21AC09628(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21AC09658(v1);
}

void sub_21AC09658(uint64_t a1)
{
  v2 = sub_21AC06C30();
  v3 = *&v2[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_previewHeaderContentView];
  *&v2[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_previewHeaderContentView] = a1;
}

void sub_21AC096FC(uint64_t a1)
{
  v2 = sub_21AC06C30();
  v3 = OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_draft;
  OUTLINED_FUNCTION_9_0();
  sub_21AC0D4DC(a1, v2 + v3);
  swift_endAccess();
}

uint64_t PXPhotosViewModel.canScroll(to:)()
{
  result = PXPhotosViewModel.scrollRequestHandler.getter();
  if (result)
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    LOBYTE(v2) = (*(v2 + 8))(ObjectType, ObjectType, v2);
    swift_unknownObjectRelease();
    return v2 & 1;
  }

  return result;
}

void PXPhotosViewModel.registerPrimaryActionHandler(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21AC6EC94();
  v6 = sub_21AC06C30();
  OUTLINED_FUNCTION_18();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_primaryActionHandlers;
  OUTLINED_FUNCTION_9_0();

  swift_isUniquelyReferenced_nonNull_native();
  v9 = *&v6[v8];
  sub_21AC0C618(sub_21AC0988C, v7, a3);
  *&v6[v8] = v9;
  swift_endAccess();
}

void PXPhotosViewModel.unregister(_:)(uint64_t a1)
{
  v2 = sub_21AC06C30();
  OUTLINED_FUNCTION_9_0();
  v3 = sub_21AC0C420(a1);
  swift_endAccess();
  sub_21AC01CAC(v3);
}

uint64_t PXPhotosViewModel.overlayController<A>(ofType:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = [v3 fullscreenOverlayControllers];
  if (v6)
  {
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD34268);
    v8 = sub_21AC6F034();

    result = sub_21AC0BD44(v8);
    v10 = result;
    for (i = 0; ; ++i)
    {
      if (v10 == i)
      {

        goto LABEL_12;
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x21CEDFAE0](i, v8);
        v12 = result;
      }

      else
      {
        if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v12 = *(v8 + 8 * i + 32);
        result = swift_unknownObjectRetain();
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v14 = v12;
      if (sub_21AC09A80(&v14, a1))
      {

        goto LABEL_14;
      }

      result = swift_unknownObjectRelease();
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_12:
    v12 = 0;
LABEL_14:
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34260);
    v13 = swift_dynamicCast();
    return __swift_storeEnumTagSinglePayload(a2, v13 ^ 1u, 1, a1);
  }

  return result;
}

uint64_t sub_21AC09A80(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *v4;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD34268);
  v7 = swift_dynamicCast();
  if (v7)
  {
    (*(v3 + 8))(v6, a2);
  }

  return v7;
}

uint64_t sub_21AC09B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  v7 = swift_unknownObjectRetain();
  return a5(v7, v6);
}

uint64_t PXPhotosViewModel.scrollRequestHandler.modify(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = PXPhotosViewModel.scrollRequestHandler.getter();
  a1[1] = v3;
  return OUTLINED_FUNCTION_15();
}

uint64_t sub_21AC09C3C()
{
  v0 = sub_21AC06C30();
  swift_unknownObjectWeakLoadStrong();

  return OUTLINED_FUNCTION_14();
}

uint64_t sub_21AC09C98()
{
  OUTLINED_FUNCTION_5_0();
  v2 = sub_21AC06C30();
  *&v2[*v0 + 8] = v1;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t PXPhotosViewModel.oneUpPresentationRequestHandler.modify(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = PXPhotosViewModel.oneUpPresentationRequestHandler.getter();
  a1[1] = v3;
  return OUTLINED_FUNCTION_15();
}

uint64_t sub_21AC09D50(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  v5 = swift_unknownObjectRetain();
  a3(v5, v4);

  return swift_unknownObjectRelease();
}

void sub_21AC09DEC()
{
  OUTLINED_FUNCTION_4_0();
  v3 = v2;
  v4 = sub_21AC06C30();
  v5 = *v1;
  OUTLINED_FUNCTION_25();
  v0(0);
  OUTLINED_FUNCTION_1_0();
  (*(v6 + 16))(v3, &v4[v5]);
}

id sub_21AC09E74()
{
  sub_21AC6ED34();
  *&v0[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_previewKeyAsset] = 0;
  v1 = &v0[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_customMenuActionsProvider];
  *v1 = sub_21AC09E6C;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_customActionMenuVisibilityChangeHandler];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_customExcludedActionTypesProvider];
  *v3 = sub_21AC09E6C;
  v3[1] = 0;
  v4 = &v0[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_scrollDetentsProvider];
  *v4 = 0;
  v4[1] = 0;
  sub_21AC6ED74();
  *&v0[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_previewHeaderContentView] = 0;
  *&v0[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_scrollRequestHandler + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_oneUpPresentationRequestHandler + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_primaryActionHandlers;
  sub_21AC6ECA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD34278);
  sub_21AC0D650(&qword_27CD33EB0, MEMORY[0x277CC95F0]);
  *&v0[v5] = sub_21AC6EF54();
  v6 = &v0[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_draft];
  *(v6 + 4) = 0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v0[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_allowsZooming] = 0;
  v7 = &v0[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_collectionKind];
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0;
  *&v0[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_headerVisibilityController] = 0;
  *&v0[OBJC_IVAR____TtCE8GridZeroCSo17PXPhotosViewModelP33_958C0F6F34BB9147B77FE5FD90D7CD4E14AssociatedData_headerVisibilityObservation] = 0;
  v9.receiver = v0;
  v9.super_class = _s14AssociatedDataCMa_0(0);
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_21AC0A074()
{
  v2.receiver = v0;
  v2.super_class = _s14AssociatedDataCMa_0(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21AC0A248()
{
  result = swift_slowAlloc();
  qword_27CD33DA0 = result;
  return result;
}

void sub_21AC0A270(uint64_t a1)
{
  v2 = sub_21AC6ED44();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  PXPhotosViewModel.environmentValues.setter();
}

void sub_21AC0A35C()
{
  OUTLINED_FUNCTION_5_0();
  v3 = sub_21AC06C30();
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  v0(0);
  OUTLINED_FUNCTION_1_0();
  (*(v5 + 40))(&v3[v4], v2);
  swift_endAccess();
}

void (*PXPhotosViewModel.environmentValues.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_21AC6ED44();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  PXPhotosViewModel.environmentValues.getter();
  return sub_21AC0A4B8;
}

void sub_21AC0A4B8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = OUTLINED_FUNCTION_20();
    v8(v7);
    PXPhotosViewModel.environmentValues.setter();
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    PXPhotosViewModel.environmentValues.setter();
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t PXMutablePhotosViewModel.customMenuActionsProvider.getter()
{
  v0 = sub_21AC0A67C();
  PXPhotosViewModel.customMenuActionsProvider.getter();

  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_21AC0A5A4@<X0>(uint64_t (**a1)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v2 = PXMutablePhotosViewModel.customMenuActionsProvider.getter();
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v4;
  *a1 = sub_21AC0D474;
  a1[1] = result;
  return result;
}

void PXMutablePhotosViewModel.customMenuActionsProvider.setter()
{
  OUTLINED_FUNCTION_4_0();
  v0 = sub_21AC0A67C();
  OUTLINED_FUNCTION_14();
  sub_21AC092C0();
}

id sub_21AC0A67C()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClassUnconditional();

  return v0;
}

uint64_t PXMutablePhotosViewModel.customMenuActionsProvider.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12_0(a1, a2);
  *v2 = PXMutablePhotosViewModel.customMenuActionsProvider.getter();
  v2[1] = v3;
  return OUTLINED_FUNCTION_15();
}

uint64_t PXMutablePhotosViewModel.customActionMenuVisibilityChangeHandler.getter()
{
  v0 = sub_21AC0A67C();
  PXPhotosViewModel.customActionMenuVisibilityChangeHandler.getter();

  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_21AC0A760@<X0>(uint64_t (**a1)(unsigned __int8 *a1)@<X8>)
{
  result = PXMutablePhotosViewModel.customActionMenuVisibilityChangeHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_21AC0D410;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_21AC0A7DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
  }

  sub_21AC01C64(v1);
  PXMutablePhotosViewModel.customActionMenuVisibilityChangeHandler.setter();
}

void PXMutablePhotosViewModel.customActionMenuVisibilityChangeHandler.setter()
{
  OUTLINED_FUNCTION_4_0();
  v0 = sub_21AC0A67C();
  OUTLINED_FUNCTION_14();
  sub_21AC090B0();
}

uint64_t PXMutablePhotosViewModel.customActionMenuVisibilityChangeHandler.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12_0(a1, a2);
  *v2 = PXMutablePhotosViewModel.customActionMenuVisibilityChangeHandler.getter();
  v2[1] = v3;
  return OUTLINED_FUNCTION_15();
}

void sub_21AC0A918(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = OUTLINED_FUNCTION_2_0();
    sub_21AC01C64(v2);
    OUTLINED_FUNCTION_2_0();
    PXMutablePhotosViewModel.customActionMenuVisibilityChangeHandler.setter();
    v3 = OUTLINED_FUNCTION_2_0();

    sub_21AC01CAC(v3);
  }

  else
  {
    OUTLINED_FUNCTION_2_0();
    PXMutablePhotosViewModel.customActionMenuVisibilityChangeHandler.setter();
  }
}

uint64_t (*PXMutablePhotosViewModel.customExcludedActionTypesProvider.getter())()
{
  v0 = sub_21AC0A67C();
  v1 = [v0 customExcludedActionTypesProvider];

  *(swift_allocObject() + 16) = v1;
  return sub_21AC0C7EC;
}

uint64_t sub_21AC0A9FC@<X0>(uint64_t (**a1)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  PXMutablePhotosViewModel.customExcludedActionTypesProvider.getter();
  v3 = v2;
  result = swift_allocObject();
  *(result + 16) = sub_21AC0C7EC;
  *(result + 24) = v3;
  *a1 = sub_21AC0D3DC;
  a1[1] = result;
  return result;
}

uint64_t sub_21AC0AA70(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t))
{
  v9 = *(a3 + a4 - 8);
  v10 = *a1;
  v11 = a1[1];
  OUTLINED_FUNCTION_18();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;

  return a7(a6, v12, v9);
}

void PXMutablePhotosViewModel.customExcludedActionTypesProvider.setter()
{
  OUTLINED_FUNCTION_4_0();
  v2 = sub_21AC0A67C();
  v5 = v1;
  v6 = v0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_21AC07688;
  v4[3] = &block_descriptor;
  v3 = _Block_copy(v4);

  [v2 setCustomExcludedActionTypesProvider_];
  _Block_release(v3);
}

uint64_t (*PXMutablePhotosViewModel.customExcludedActionTypesProvider.modify(uint64_t a1, uint64_t a2))(uint64_t *a1, char a2)
{
  OUTLINED_FUNCTION_12_0(a1, a2);
  PXMutablePhotosViewModel.customExcludedActionTypesProvider.getter();
  *v2 = sub_21AC0C7EC;
  v2[1] = v3;
  return sub_21AC0AC10;
}

uint64_t sub_21AC0AC28(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4, v6);
  }

  a3(v5, v4, v6);
}

void *PXMutablePhotosViewModel.previewHeaderContentView.getter()
{
  v0 = sub_21AC0A67C();
  v1 = PXPhotosViewModel.previewHeaderContentView.getter();

  return v1;
}

void *sub_21AC0ACF0@<X0>(void *a1@<X8>)
{
  result = PXMutablePhotosViewModel.previewHeaderContentView.getter();
  *a1 = result;
  return result;
}

void sub_21AC0AD28(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  PXMutablePhotosViewModel.previewHeaderContentView.setter(v1);
}

void PXMutablePhotosViewModel.previewHeaderContentView.setter(uint64_t a1)
{
  v2 = sub_21AC0A67C();
  sub_21AC09658(a1);
}

uint64_t PXMutablePhotosViewModel.previewHeaderContentView.modify(void **a1, void *a2)
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = PXMutablePhotosViewModel.previewHeaderContentView.getter();
  return OUTLINED_FUNCTION_15();
}

void sub_21AC0AE0C(id *a1, char a2)
{
  if (a2)
  {
    v4 = *a1;
    v2 = OUTLINED_FUNCTION_2_0();
    PXMutablePhotosViewModel.previewHeaderContentView.setter(v2);
  }

  else
  {
    v3 = OUTLINED_FUNCTION_2_0();
    PXMutablePhotosViewModel.previewHeaderContentView.setter(v3);
  }
}

void PXMutablePhotosViewModel.topChromeGeometry.getter()
{
  v0 = sub_21AC0A67C();
  PXPhotosViewModel.topChromeGeometry.getter();
}

uint64_t sub_21AC0AF04(uint64_t a1)
{
  v2 = sub_21AC6ED84();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return PXMutablePhotosViewModel.topChromeGeometry.setter(v4);
}

uint64_t PXMutablePhotosViewModel.topChromeGeometry.setter(uint64_t a1)
{
  v2 = sub_21AC6ED84();
  OUTLINED_FUNCTION_10();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  PXMutablePhotosViewModel.topChromeGeometry.getter();
  sub_21AC0D650(&unk_27CD33E90, MEMORY[0x277D3CC68]);
  v8 = sub_21AC6EF84();
  v9 = *(v4 + 8);
  v9(v7, v2);
  if ((v8 & 1) == 0)
  {
    v10 = sub_21AC0A67C();
    (*(v4 + 16))(v7, a1, v2);
    OUTLINED_FUNCTION_7_0();
    sub_21AC0A35C();
    [v10 signalChange_];
  }

  v11 = OUTLINED_FUNCTION_2_0();
  return (v9)(v11);
}

void (*PXMutablePhotosViewModel.topChromeGeometry.modify())(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_4_0();
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v3[1] = v1;
  v4 = sub_21AC6ED84();
  v3[2] = v4;
  v5 = *(v4 - 8);
  v3[3] = v5;
  v6 = *(v5 + 64);
  v3[4] = __swift_coroFrameAllocStub(v6);
  v3[5] = __swift_coroFrameAllocStub(v6);
  PXMutablePhotosViewModel.topChromeGeometry.getter();
  return sub_21AC0B258;
}

void sub_21AC0B258(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = OUTLINED_FUNCTION_20();
    v8(v7);
    PXMutablePhotosViewModel.topChromeGeometry.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    PXMutablePhotosViewModel.topChromeGeometry.setter(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

void PXMutablePhotosViewModel.scroll(to:animated:)(uint64_t a1, char a2)
{
  v3 = sub_21AC0A67C();
  v4 = PXPhotosViewModel.scrollRequestHandler.getter();
  v6 = v5;

  if (v4)
  {
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(ObjectType, a2 & 1, ObjectType, v6);

    swift_unknownObjectRelease();
  }

  else
  {
    v8 = sub_21AC6F0F4();
    if (qword_27CD33EB8 != -1)
    {
      swift_once();
    }

    v9 = qword_27CD370E8;
    if (os_log_type_enabled(qword_27CD370E8, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 136315138;
      *(v10 + 4) = sub_21AC0BD68();
      _os_log_impl(&dword_21ABF3000, v9, v8, "can't scroll to %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_16();
    }
  }
}

void PXMutablePhotosViewModel.presentOneUp(for:from:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_27CD33EC0 != -1)
  {
    swift_once();
  }

  v6 = sub_21AC6EE44();
  __swift_project_value_buffer(v6, qword_27CD341D8);
  swift_unknownObjectRetain();
  v7 = sub_21AC6EE34();
  v8 = sub_21AC6F114();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v9 = 136315138;
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_21AC6EFC4();
    v10 = a2;
    v11 = sub_21AC0BD68();

    *(v9 + 4) = v11;
    a2 = v10;
    _os_log_impl(&dword_21ABF3000, v7, v8, "present 1-up for asset %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_16();
  }

  if ([v3 isInSelectMode])
  {
    v12 = sub_21AC6EE34();
    v13 = sub_21AC6F114();
    if (OUTLINED_FUNCTION_17(v13))
    {
      *swift_slowAlloc() = 0;
      v16 = "can't enter 1-up in select mode";
LABEL_13:
      OUTLINED_FUNCTION_24(&dword_21ABF3000, v14, v15, v16);
      OUTLINED_FUNCTION_16();
    }
  }

  else
  {
    v17 = sub_21AC0A67C();
    v18 = PXPhotosViewModel.oneUpPresentationRequestHandler.getter();
    v20 = v19;

    if (v18)
    {
      ObjectType = swift_getObjectType();
      if ((*(v20 + 8))(a1, a2, ObjectType, v20))
      {
        swift_unknownObjectRelease();
        return;
      }

      v12 = sub_21AC6EE34();
      v23 = sub_21AC6F0F4();
      if (OUTLINED_FUNCTION_17(v23))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_24(&dword_21ABF3000, v24, v25, "failed to present 1-up");
        OUTLINED_FUNCTION_16();
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v12 = sub_21AC6EE34();
      v22 = sub_21AC6F0F4();
      if (OUTLINED_FUNCTION_17(v22))
      {
        *swift_slowAlloc() = 0;
        v16 = "can't present 1-up because oneUpPresentationRequestHandler hasn't been set";
        goto LABEL_13;
      }
    }
  }
}

void PXMutablePhotosViewModel.draft.getter(uint64_t a1@<X8>)
{
  v2 = sub_21AC0A67C();
  PXPhotosViewModel.draft.getter(a1);
}

uint64_t PXMutablePhotosViewModel.draft.setter(uint64_t a1)
{
  v2 = sub_21AC0A67C();
  sub_21AC0CD5C(a1, v6, &qword_27CD341F8);
  sub_21AC096FC(v6);

  v3 = OUTLINED_FUNCTION_2_0();
  return sub_21AC06274(v3, v4);
}

void (*PXMutablePhotosViewModel.draft.modify())(uint64_t *a1, char a2)
{
  OUTLINED_FUNCTION_4_0();
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *v2 = v3;
  v3[10] = v0;
  v3[11] = v1;
  PXMutablePhotosViewModel.draft.getter(v3);
  return sub_21AC0B94C;
}

void sub_21AC0B94C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_21AC0CD5C(*a1, v2 + 40, &qword_27CD341F8);
    PXMutablePhotosViewModel.draft.setter(v2 + 40);
    sub_21AC06274(v2, &qword_27CD341F8);
  }

  else
  {
    PXMutablePhotosViewModel.draft.setter(*a1);
  }

  free(v2);
}

Swift::Void __swiftcall PXMutablePhotosViewModel.showPlayer()()
{
  v0 = sub_21AC0A67C();
  [v0 signalChange_];
}

Swift::Void __swiftcall PXMutablePhotosViewModel.showSearch()()
{
  v0 = sub_21AC0A67C();
  [v0 signalChange_];
}

uint64_t sub_21AC0BA78()
{
  sub_21AC0D60C();
  sub_21AC6F004();
  result = sub_21AC6F124();
  qword_27CD370E8 = result;
  return result;
}

uint64_t sub_21AC0BADC()
{
  v0 = sub_21AC6EE44();
  __swift_allocate_value_buffer(v0, qword_27CD341D8);
  __swift_project_value_buffer(v0, qword_27CD341D8);
  if (qword_27CD33EB8 != -1)
  {
    swift_once();
  }

  v1 = qword_27CD370E8;
  return sub_21AC6EE54();
}

uint64_t sub_21AC0BB68(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21AC0BC60;

  return v6(a1);
}

uint64_t sub_21AC0BC60()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  OUTLINED_FUNCTION_21();

  return v3();
}

uint64_t sub_21AC0BD44(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

unint64_t sub_21AC0BD68()
{
  OUTLINED_FUNCTION_5_0();

  v3 = sub_21AC0BE24(v8, 0, 0, 1, v2, v1);
  v4 = v8[0];
  if (v3)
  {
    v5 = v3;

    ObjectType = swift_getObjectType();
    v8[0] = v5;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v8[0] = v2;
    v8[1] = v1;
  }

  v6 = *v0;
  if (*v0)
  {
    sub_21AC0D5B0(v8, *v0);
    *v0 = v6 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v4;
}

unint64_t sub_21AC0BE24(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21AC0BF24(a5, a6);
    *a1 = v9;
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
    result = sub_21AC6F184();
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

uint64_t sub_21AC0BF24(uint64_t a1, unint64_t a2)
{
  v3 = sub_21AC0BF70(a1, a2);
  sub_21AC0C088(&unk_282C2E0A0);
  return v3;
}

uint64_t sub_21AC0BF70(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_21AC6F014())
  {
    result = sub_21AC0C16C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_21AC6F154();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_21AC6F184();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21AC0C088(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_21AC0C1DC(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

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

void *sub_21AC0C16C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34368);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_21AC0C1DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34368);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

void *sub_21AC0C2D0(void *a1, int64_t a2, char a3)
{
  result = sub_21AC0C2F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21AC0C2F0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34358);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34360);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21AC0C420(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21AC0C580(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34378);
  sub_21AC6F1A4();
  v6 = *(v10 + 48);
  v7 = sub_21AC6ECA4();
  (*(*(v7 - 8) + 8))(v6 + *(*(v7 - 8) + 72) * v5, v7);
  v8 = *(*(v10 + 56) + 16 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD34278);
  sub_21AC0D650(&qword_27CD33EB0, MEMORY[0x277CC95F0]);
  sub_21AC6F1B4();
  *v2 = v10;
  return v8;
}

unint64_t sub_21AC0C580(uint64_t a1)
{
  sub_21AC6ECA4();
  sub_21AC0D650(&qword_27CD33EB0, MEMORY[0x277CC95F0]);
  v2 = sub_21AC6EF64();

  return sub_21AC0CFA4(a1, v2);
}

uint64_t sub_21AC0C618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a2;
  v7 = sub_21AC6ECA4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v12 = sub_21AC0C580(a3);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34378);
  if ((sub_21AC6F1A4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_21AC0C580(a3);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_21AC6F214();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    v19 = (v18[7] + 16 * v14);
    v20 = v23;
    *v19 = a1;
    v19[1] = v20;
  }

  else
  {
    (*(v8 + 16))(v10, a3, v7);
    return sub_21AC0CEE4(v14, v10, a1, v23, v18);
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21AC0C878()
{
  result = sub_21AC6ED44();
  if (v1 <= 0x3F)
  {
    result = sub_21AC6ED84();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_21AC0C9E8()
{
  result = sub_21AC6ECA4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21AC0CAA4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_21AC0CB00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_21AC0CBB0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_10_0(v8);
  *v9 = v10;
  v9[1] = sub_21AC0CC7C;

  return sub_21AC08488(a1, v3, v4, (v1 + 4), v5, v6, v7);
}

uint64_t sub_21AC0CC7C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  OUTLINED_FUNCTION_21();

  return v3();
}

uint64_t sub_21AC0CD5C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_1_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21AC0CDBC()
{
  OUTLINED_FUNCTION_23();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_10_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_0(v1);

  return v4(v3);
}

uint64_t sub_21AC0CE50()
{
  OUTLINED_FUNCTION_23();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_10_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_0(v1);

  return v4(v3);
}

uint64_t sub_21AC0CEE4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_21AC6ECA4();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_21AC0CFA4(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_21AC6ECA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_21AC0D650(&unk_27CD33EA0, MEMORY[0x277CC95F0]);
    v9 = sub_21AC6EF84();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_21AC0D1A0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_21AC0D1E0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34350);
  OUTLINED_FUNCTION_1_0();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_21AC0D248@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_21AC0D280(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_21AC0D2F0()
{
  result = qword_27CD33E28;
  if (!qword_27CD33E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD33E28);
  }

  return result;
}

unint64_t sub_21AC0D344()
{
  result = qword_27CD33E00;
  if (!qword_27CD33E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD33E00);
  }

  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21AC0D3DC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_21AC0D474@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_21AC0D4A4(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_21AC0D4DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD341F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_21AC0D5B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_21AC0D60C()
{
  result = qword_27CD34370;
  if (!qword_27CD34370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD34370);
  }

  return result;
}

uint64_t sub_21AC0D650(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_9_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = v2;
  return a2;
}

void OUTLINED_FUNCTION_16()
{

  JUMPOUT(0x21CEE0DE0);
}

BOOL OUTLINED_FUNCTION_17(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_24(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_25()
{

  return swift_beginAccess();
}

uint64_t sub_21AC0D884()
{
  v0 = PhotosViewCollectionKindAnalyticsName.rawValue.getter();
  v2 = v1;
  if (v0 == PhotosViewCollectionKindAnalyticsName.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21AC6F1F4();
  }

  return v5 & 1;
}

uint64_t PhotosViewPreviewHeaderVisibilityController.__allocating_init(collectionKind:userDefaults:)(char *a1, void *a2)
{
  v4 = swift_allocObject();
  PhotosViewPreviewHeaderVisibilityController.init(collectionKind:userDefaults:)(a1, a2);
  return v4;
}

void *PhotosViewPreviewHeaderVisibilityController.init(collectionKind:userDefaults:)(char *a1, void *a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = MEMORY[0x277D84F90];
  v11 = *(a1 + 1);
  v12 = *(a1 + 2);
  v3[7] = 0;
  v3[8] = v10;
  v13 = v4;
  sub_21AC6ECF4();
  v49 = v5;
  *(v3 + 24) = v5;
  *(v3 + 25) = v6;
  *(v3 + 26) = v7;
  *(v3 + 27) = v8;
  *(v3 + 28) = v9;
  v3[4] = v11;
  v3[5] = v12;
  if (v6)
  {
    if (a2)
    {

      v14 = a2;
    }

    else
    {
      objc_opt_self();
      OUTLINED_FUNCTION_3_0();

      v14 = [v9 standardUserDefaults];
    }

    v15 = a2;
  }

  else
  {

    v14 = 0;
  }

  v48 = v11;
  if ([objc_opt_self() px_accessibilityIsReduceMotionEnabled])
  {
    v46 = v9;
    v47 = v8;
    if (qword_27CD33DB8 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v45 = v13;
    v16 = sub_21AC6EE44();
    __swift_project_value_buffer(v16, qword_27CD33DC0);
    OUTLINED_FUNCTION_3_0();

    v17 = sub_21AC6EE34();
    v18 = sub_21AC6F0E4();

    if (os_log_type_enabled(v17, v18))
    {
      v43 = v7;
      v19 = swift_slowAlloc();
      v44 = v14;
      v20 = swift_slowAlloc();
      v51 = v20;
      *v19 = 136315138;

      v21 = sub_21AC0BD68();
      v22 = v12;

      *(v19 + 4) = v21;
      v11 = v48;
      _os_log_impl(&dword_21ABF3000, v17, v18, "preview header disabled because of reduced motion, collectionKind: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      v14 = v44;
      OUTLINED_FUNCTION_16();
      v7 = v43;
      OUTLINED_FUNCTION_16();
    }

    else
    {
      v22 = v12;
    }

    v8 = v47;
    *(v3 + 16) = 0;
    v3[6] = 0;
    v23 = v6;
    v24 = v46;
    v12 = v22;
    v13 = v45;
  }

  else
  {
    LOBYTE(v51) = v5;
    BYTE1(v51) = v6;
    BYTE2(v51) = v7;
    BYTE3(v51) = v8;
    BYTE4(v51) = v9;
    v52 = v11;
    v53 = v12;
    v23 = v6;
    v24 = v9;
    *(v3 + 16) = sub_21AC0DFF0(&v51, v14) & 1;
    v3[6] = v14;
    v25 = v14;
  }

  LOBYTE(v51) = v49;
  BYTE1(v51) = v23;
  BYTE2(v51) = v7;
  BYTE3(v51) = v8;
  BYTE4(v51) = v24;
  v52 = v11;
  v53 = v12;
  sub_21AC0E244(&v51);
  if (v14)
  {
    v26 = v14;
    v27 = v11;
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = v49;
    *(v29 + 25) = v23;
    *(v29 + 26) = v7;
    *(v29 + 27) = v8;
    *(v29 + 28) = v24;
    *(v29 + 32) = v27;
    *(v29 + 40) = v12;
    v14 = v26;
    *(v29 + 48) = v26;
    *(v29 + 56) = v13;
    objc_allocWithZone(sub_21AC6EDC4());
    v30 = v26;

    v31 = v30;
    v32 = sub_21AC6EDB4();
    v33 = v3[7];
    v3[7] = v32;
  }

  else
  {

    if (qword_27CD33DB8 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v34 = sub_21AC6EE44();
    __swift_project_value_buffer(v34, qword_27CD33DC0);
    v33 = sub_21AC6EE34();
    v35 = sub_21AC6F0E4();
    if (os_log_type_enabled(v33, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_21ABF3000, v33, v35, "transient", v36, 2u);
      OUTLINED_FUNCTION_16();
    }
  }

  if (qword_27CD33DB8 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v37 = sub_21AC6EE44();
  __swift_project_value_buffer(v37, qword_27CD33DC0);
  OUTLINED_FUNCTION_3_0();

  v38 = sub_21AC6EE34();
  v39 = sub_21AC6F0E4();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v51 = v41;
    *v40 = 67109378;
    *(v40 + 4) = sub_21AC0EC60() & 1;

    *(v40 + 8) = 2080;
    sub_21AC0BD68();
    OUTLINED_FUNCTION_3_0();

    *(v40 + 10) = v3;
    _os_log_impl(&dword_21ABF3000, v38, v39, "preview header visible: %{BOOL}d, collectionKind: %s", v40, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_16();
  }

  else
  {
  }

  return v3;
}

uint64_t sub_21AC0DF1C(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    v3 = a1 & 1;

    return sub_21AC0EBA4(v3);
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21AC0F57C();
  }
}

unint64_t sub_21AC0DFF0(char *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  if (a2)
  {
    LOBYTE(v19[0]) = *a1;
    v18 = v5;
    BYTE1(v19[0]) = v4;
    BYTE2(v19[0]) = v5;
    BYTE3(v19[0]) = v6;
    BYTE4(v19[0]) = v7;
    v19[1] = v8;
    *&v20 = v9;
    sub_21AC0E244(v19);
    v10 = sub_21AC6EF94();

    v11 = [a2 0x1FB1B2A78];

    if (v11)
    {
      sub_21AC6F134();
      swift_unknownObjectRelease();
    }

    else
    {
      *v19 = 0u;
      v20 = 0u;
    }

    v21 = *v19;
    v22 = v20;
    v5 = v18;
    if (*(&v20 + 1))
    {
      sub_21AC0FCE4();
      if (swift_dynamicCast())
      {
        v12 = v19[0];
        v5 = [v19[0] BOOLValue];

        return v5;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  sub_21AC0FC7C(&v21);
  if (!a2)
  {
    v21 = 0u;
    v22 = 0u;
LABEL_17:
    sub_21AC0FC7C(&v21);
    return v5;
  }

LABEL_10:
  LOBYTE(v19[0]) = v3;
  BYTE1(v19[0]) = v4;
  BYTE2(v19[0]) = v5;
  BYTE3(v19[0]) = v6;
  BYTE4(v19[0]) = v7;
  v19[1] = v8;
  *&v20 = v9;
  sub_21AC0EB18(v19);
  v13 = sub_21AC6EF94();

  v14 = [a2 objectForKey_];

  if (v14)
  {
    sub_21AC6F134();
    swift_unknownObjectRelease();
  }

  else
  {
    *v19 = 0u;
    v20 = 0u;
  }

  v21 = *v19;
  v22 = v20;
  if (!*(&v20 + 1))
  {
    goto LABEL_17;
  }

  sub_21AC0FCE4();
  if (swift_dynamicCast())
  {
    v15 = v19[0];
    v16 = [v19[0] BOOLValue];

    return v16 ^ 1;
  }

  return v5;
}

unint64_t sub_21AC0E244(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  sub_21AC6F164();

  MEMORY[0x21CEDF960](v1, v2);

  return 0xD000000000000018;
}

uint64_t sub_21AC0E2D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_21AC6F094();
  sub_21AC6F084();
  sub_21AC6F074();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = vdupq_n_s64(a2);
  *v13.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v13, xmmword_21AC7CCA0), vshlq_u64(v13, xmmword_21AC7CC90))), 0x1000100010001);
  *(v12 + 25) = vuzp1_s8(*v13.i8, *v13.i8).u32[0];
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;
  v17[4] = sub_21AC0FB68;
  v17[5] = v12;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_21AC0E730;
  v17[3] = &block_descriptor_0;
  v14 = _Block_copy(v17);

  v15 = a5;

  px_dispatch_on_main_queue();
  _Block_release(v14);
}

uint64_t sub_21AC0E478(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_21AC6F094();
  sub_21AC6F084();
  sub_21AC6F074();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  v15[2] = a1;
  v16 = a2;
  v13 = vdupq_n_s64(a2);
  *v13.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v13, xmmword_21AC7CCA0), vshlq_u64(v13, xmmword_21AC7CC90))), 0x1000100010001);
  v17 = vuzp1_s8(*v13.i8, *v13.i8).u32[0];
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  sub_21AC0792C(sub_21AC0FC04, v15);
}

uint64_t sub_21AC0E5D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_21AC6F094();
  sub_21AC6F084();
  sub_21AC6F074();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v12 = a2;
    v9 = vdupq_n_s64(a2);
    *v9.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v9, xmmword_21AC7CCA0), vshlq_u64(v9, xmmword_21AC7CC90))), 0x1000100010001);
    v13 = vuzp1_s8(*v9.i8, *v9.i8).u32[0];
    v14 = a3;
    v15 = a4;
    v10 = sub_21AC0DFF0(&v12, a5);
    if ((v10 ^ sub_21AC0EC60()))
    {
      sub_21AC0DF1C(v10 & 1);
    }
  }
}

uint64_t sub_21AC0E730(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_21AC0E774(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  result = sub_21AC0EC60();
  if ((result & 1) != v3)
  {
    if (qword_27CD33DB8 != -1)
    {
      swift_once();
    }

    v5 = sub_21AC6EE44();
    __swift_project_value_buffer(v5, qword_27CD33DC0);

    v6 = sub_21AC6EE34();
    v7 = sub_21AC6F0E4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v34 = v9;
      *v8 = 67109378;
      *(v8 + 4) = sub_21AC0EC60() & 1;

      *(v8 + 8) = 2080;
      *(v8 + 10) = sub_21AC0BD68();
      _os_log_impl(&dword_21ABF3000, v6, v7, "preview header visibility changed: %{BOOL}d, collectionKind: %s", v8, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x21CEE0DE0](v9, -1, -1);
      MEMORY[0x21CEE0DE0](v8, -1, -1);
    }

    else
    {
    }

    v10 = *(v1 + 48);
    if (v10)
    {
      v11 = v10;
      sub_21AC0EC60();
      v12 = sub_21AC6F064();
      v13 = *(v1 + 25);
      v14 = *(v1 + 26);
      v15 = *(v1 + 27);
      v16 = *(v1 + 28);
      v18 = *(v1 + 32);
      v17 = *(v1 + 40);
      LOBYTE(v34) = *(v1 + 24);
      BYTE1(v34) = v13;
      BYTE2(v34) = v14;
      BYTE3(v34) = v15;
      BYTE4(v34) = v16;
      v35 = v18;
      v36 = v17;

      sub_21AC0E244(&v34);

      v19 = sub_21AC6EF94();

      [v11 setObject:v12 forKey:v19];

      v20 = *(v2 + 25);
      v21 = *(v2 + 26);
      v22 = *(v2 + 27);
      v23 = *(v2 + 28);
      v25 = *(v2 + 32);
      v24 = *(v2 + 40);
      LOBYTE(v34) = *(v2 + 24);
      BYTE1(v34) = v20;
      BYTE2(v34) = v21;
      BYTE3(v34) = v22;
      BYTE4(v34) = v23;
      v35 = v25;
      v36 = v24;

      sub_21AC0EB18(&v34);

      v26 = sub_21AC6EF94();

      [v11 removeObjectForKey_];
    }

    swift_beginAccess();
    v27 = *(v2 + 64);
    result = sub_21AC0D6A4(v27);
    if (result)
    {
      v28 = result;
      if (result < 1)
      {
        __break(1u);
      }

      else
      {

        for (i = 0; i != v28; ++i)
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v30 = MEMORY[0x21CEDFAE0](i, v27);
          }

          else
          {
            v30 = *(v27 + 8 * i + 32);
          }

          v31 = *(v30 + 16);
          if (v31)
          {
            v32 = *(v30 + 24);

            v33 = sub_21AC0EC60();
            v31(v33 & 1);
            sub_21AC0D6A8(v31, v32);
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_21AC0EB18(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  sub_21AC6F164();

  MEMORY[0x21CEDF960](v1, v2);

  return 0xD000000000000016;
}

uint64_t sub_21AC0EBA4(char a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  return sub_21AC0E774(v2);
}

uint64_t (*sub_21AC0EBB4(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return sub_21AC0EBE0;
}

uint64_t sub_21AC0EC08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21AC0EC60();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21AC0EC60()
{
  swift_getKeyPath();
  sub_21AC0F888();
  sub_21AC6ECC4();

  return *(v0 + 16);
}

void (*sub_21AC0ECD0(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC8GridZero43PhotosViewPreviewHeaderVisibilityController___observationRegistrar;
  *v3 = v1;
  v3[6] = sub_21AC0F888();
  sub_21AC6ECC4();

  *v3 = v1;
  swift_getKeyPath();
  sub_21AC6ECE4();

  v3[7] = sub_21AC0EBB4(v3);
  return sub_21AC0EDC4;
}

void sub_21AC0EDC4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_21AC6ECD4();

  free(v1);
}

uint64_t sub_21AC0EE58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for PhotosViewPreviewHeaderVisibilityObservation();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  swift_beginAccess();

  MEMORY[0x21CEDF990](v7);
  sub_21AC0F810(*((*(v3 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_21AC6F054();
  swift_endAccess();
  return v6;
}

void static PhotosViewPreviewHeaderVisibilityController.resetAllPreviewHeadersVisibility(userDefaults:)(void *a1)
{
  v13 = a1;
  if (a1 || (v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]), (v13 = sub_21AC0F7AC(0xD000000000000019, 0x800000021AC7DD80)) != 0))
  {
    v3 = a1;
    v4 = 0;
    do
    {
      v5 = byte_282C2E068[v4++ + 32];
      switch(v5)
      {
        case 1:

          break;
        default:
          sub_21AC6F1F4();

          break;
      }

      OUTLINED_FUNCTION_1_1();
      v7 = sub_21AC0E244(v6);
      sub_21AC0F340(v7, v8, v13);

      OUTLINED_FUNCTION_1_1();
      v10 = sub_21AC0EB18(v9);
      v12 = v11;

      sub_21AC0F340(v10, v12, v13);
    }

    while (v4 != 19);
  }

  else
  {
    sub_21AC6F1C4();
    __break(1u);
  }
}

void sub_21AC0F340(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_21AC6EF94();
  v7 = [a3 objectForKey_];

  if (v7)
  {
    sub_21AC6F134();
    swift_unknownObjectRelease();
    sub_21AC0FB10(v15, &v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD34380);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_21AC7CEC0;
    *&v15[0] = 0;
    *(&v15[0] + 1) = 0xE000000000000000;
    sub_21AC6F164();

    *&v15[0] = 0xD000000000000016;
    *(&v15[0] + 1) = 0x800000021AC7DF30;
    MEMORY[0x21CEDF960](a1, a2);
    MEMORY[0x21CEDF960](8250, 0xE200000000000000);
    v9 = __swift_project_boxed_opaque_existential_1(&v16, v17);
    MEMORY[0x28223BE20](v9);
    (*(v11 + 16))(v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = sub_21AC6EFC4();
    MEMORY[0x21CEDF960](v12);

    v13 = v15[0];
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 32) = v13;
    sub_21AC6F224();

    v14 = sub_21AC6EF94();
    [a3 removeObjectForKey_];

    __swift_destroy_boxed_opaque_existential_0Tm(&v16);
  }
}

uint64_t PhotosViewPreviewHeaderVisibilityController.deinit()
{

  v1 = OBJC_IVAR____TtC8GridZero43PhotosViewPreviewHeaderVisibilityController___observationRegistrar;
  v2 = sub_21AC6ED04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotosViewPreviewHeaderVisibilityController.__deallocating_deinit()
{
  PhotosViewPreviewHeaderVisibilityController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21AC0F6DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return sub_21AC0D6A8(v1, v2);
}

uint64_t PhotosViewPreviewHeaderVisibilityObservation.deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_21AC0D6A8(v1, v2);
  sub_21AC0D6A8(*(v0 + 16), *(v0 + 24));
  return v0;
}

uint64_t PhotosViewPreviewHeaderVisibilityObservation.__deallocating_deinit()
{
  PhotosViewPreviewHeaderVisibilityObservation.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_21AC0F748()
{
  v0 = sub_21AC6EE44();
  __swift_allocate_value_buffer(v0, qword_27CD33DC0);
  __swift_project_value_buffer(v0, qword_27CD33DC0);
  return sub_21AC6EE24();
}

id sub_21AC0F7AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_21AC6EF94();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_21AC0F810(uint64_t result)
{
  v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (result + 1 > (v2 >> 1))
  {
    return MEMORY[0x2821FC280](v2 > 1);
  }

  return result;
}

unint64_t sub_21AC0F888()
{
  result = qword_27CD33DE8;
  if (!qword_27CD33DE8)
  {
    type metadata accessor for PhotosViewPreviewHeaderVisibilityController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD33DE8);
  }

  return result;
}

uint64_t type metadata accessor for PhotosViewPreviewHeaderVisibilityController()
{
  result = qword_27CD33DD8;
  if (!qword_27CD33DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AC0F958()
{
  result = sub_21AC6ED04();
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

_OWORD *sub_21AC0FB10(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21AC0FB80(uint64_t (*a1)(void, uint64_t, void, void, void, void))
{
  v2 = 256;
  if (!*(v1 + 25))
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 24);
  v4 = 0x10000;
  if (!*(v1 + 26))
  {
    v4 = 0;
  }

  v5 = 0x1000000;
  if (!*(v1 + 27))
  {
    v5 = 0;
  }

  v6 = v3 | v4 | v5;
  v7 = 0x100000000;
  if (!*(v1 + 28))
  {
    v7 = 0;
  }

  return a1(*(v1 + 16), v6 | v7, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21AC0FC04()
{
  v1 = 256;
  if (!*(v0 + 25))
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 24);
  v3 = 0x10000;
  if (!*(v0 + 26))
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if (!*(v0 + 27))
  {
    v4 = 0;
  }

  v5 = v2 | v3 | v4;
  v6 = 0x100000000;
  if (!*(v0 + 28))
  {
    v6 = 0;
  }

  return sub_21AC0E5D0(*(v0 + 16), v5 | v6, *(v0 + 32), *(v0 + 40), *(v0 + 48));
}

uint64_t sub_21AC0FC7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD33FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21AC0FCE4()
{
  result = qword_27CD34388;
  if (!qword_27CD34388)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD34388);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return swift_once();
}

uint64_t PhotosEnvironmentValues.photosContentPrivacyModel.getter()
{
  sub_21AC0D2F0();
  sub_21AC6ED54();
  return v1;
}

uint64_t PhotosContentPrivacyModel.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 2;
  sub_21AC6ECF4();
  return v0;
}

uint64_t PhotosContentPrivacyModel.init()()
{
  *(v0 + 16) = 2;
  sub_21AC6ECF4();
  return v0;
}

uint64_t sub_21AC0FE2C(char a1)
{
  result = sub_21AC0FEF0();
  if (result != 2 && (a1 == 2 || (a1 & 1) == 0) && (result & 1) != 0)
  {

    return MEMORY[0x28219D498]();
  }

  return result;
}

uint64_t sub_21AC0FE8C(char a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  return sub_21AC0FE2C(v2);
}

uint64_t sub_21AC0FE9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21AC0FEF0();
  *a1 = result;
  return result;
}

uint64_t sub_21AC0FEF0()
{
  swift_getKeyPath();
  sub_21AC0FF60();
  sub_21AC6ECC4();

  return *(v0 + 16);
}

unint64_t sub_21AC0FF60()
{
  result = qword_27CD33E40;
  if (!qword_27CD33E40)
  {
    type metadata accessor for PhotosContentPrivacyModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD33E40);
  }

  return result;
}

uint64_t type metadata accessor for PhotosContentPrivacyModel()
{
  result = qword_27CD33E30;
  if (!qword_27CD33E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AC10004(int a1)
{
  v2 = *(v1 + 16);
  if (v2 == 2)
  {
    if (a1 == 2)
    {
      goto LABEL_7;
    }

LABEL_6:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21AC10180();
  }

  if (a1 == 2 || ((v2 ^ a1) & 1) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:

  return sub_21AC0FE8C(a1);
}

uint64_t sub_21AC100FC(unint64_t a1)
{
  if (a1 > 1)
  {
    result = sub_21AC6F1C4();
    __break(1u);
  }

  else
  {

    return sub_21AC10004(a1);
  }

  return result;
}

uint64_t PhotosContentPrivacyModel.deinit()
{
  v1 = OBJC_IVAR____TtC8GridZero25PhotosContentPrivacyModel___observationRegistrar;
  sub_21AC6ED04();
  OUTLINED_FUNCTION_0_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosContentPrivacyModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8GridZero25PhotosContentPrivacyModel___observationRegistrar;
  sub_21AC6ED04();
  OUTLINED_FUNCTION_0_3();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t (*PhotosEnvironmentValues.photosContentPrivacyModel.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_21AC0D2F0();
  sub_21AC6ED54();
  return sub_21AC103B4;
}

uint64_t sub_21AC103B4(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_21AC6ED64();
  }

  sub_21AC6ED64();
}

uint64_t sub_21AC10450()
{
  result = sub_21AC6ED04();
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

uint64_t sub_21AC10570@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21AC09E6C();
  *a1 = result;
  return result;
}

uint64_t PhotosViewCustomMenuActionGroup.hashValue.getter()
{
  v1 = *v0;
  sub_21AC6F234();
  MEMORY[0x21CEDFBB0](v1);
  return sub_21AC6F264();
}

unint64_t sub_21AC10678()
{
  result = qword_27CD34390;
  if (!qword_27CD34390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD34390);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotosViewCustomMenuActionGroup(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhotosViewCustomMenuActionGroup(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

id sub_21AC10830(void *a1)
{
  result = [a1 viewModelHelper];
  if (result)
  {
    v2 = result;
    v3 = [result dateType];

    return v3;
  }

  return result;
}

uint64_t sub_21AC108B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return a1;
  }

  if (a3 == 1)
  {

    v5 = PXGridZeroBundle();
    sub_21AC6EC54();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD343A0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_21AC7CEC0;
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = sub_21AC10BFC();
    *(v6 + 32) = a1;
    *(v6 + 40) = a2;
    a1 = sub_21AC6EFB4();

    return a1;
  }

  if (!a3)
  {

    return a1;
  }

  sub_21AC6F164();
  MEMORY[0x21CEDF960](0xD00000000000001BLL, 0x800000021AC7E070);
  type metadata accessor for PXBrowserDateType(0);
  sub_21AC6F194();
  result = sub_21AC6F1C4();
  __break(1u);
  return result;
}

PXPhotosGridHeaderUtilities __swiftcall PXPhotosGridHeaderUtilities.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for PXPhotosGridHeaderUtilities()
{
  result = qword_27CD34398;
  if (!qword_27CD34398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD34398);
  }

  return result;
}

unint64_t sub_21AC10BFC()
{
  result = qword_27CD343A8;
  if (!qword_27CD343A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD343A8);
  }

  return result;
}

uint64_t PhotosEnvironmentValues.photosViewCollectionKind.getter()
{
  sub_21AC0D344();

  return sub_21AC6ED54();
}

GridZero::PhotosViewCollectionKind __swiftcall PhotosViewCollectionKind.init(analyticsName:)(GridZero::PhotosViewCollectionKindAnalyticsName analyticsName)
{
  v2 = v1;
  v3 = *analyticsName;
  v4 = PhotosViewCollectionKindAnalyticsName.rawValue.getter();
  v6 = v5;
  v7 = 1;
  v8 = sub_21AC0D884();
  if (((1 << v3) & 0x7FF1F) == 0)
  {
    v12 = 0;
    if (((1 << v3) & 0x60) == 0)
    {
LABEL_3:
      v11 = 0;
      goto LABEL_4;
    }

    v7 = 0;
  }

  v11 = 1;
  v12 = v7;
  switch(v3)
  {
    case 1:
    case 2:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
      goto LABEL_3;
    default:
      break;
  }

LABEL_4:
  *v2 = v3;
  *(v2 + 1) = (v8 & 1) == 0;
  *(v2 + 2) = v3 < 9;
  *(v2 + 3) = v12;
  *(v2 + 4) = v11;
  *(v2 + 8) = v4;
  *(v2 + 16) = v6;
  result.label._object = v10;
  result.label._countAndFlagsBits = v9;
  result.analyticsName = v8;
  result.supportsTogglingPreviewHeader = BYTE1(v8);
  result.defaultPreviewHeaderVisibility = BYTE2(v8);
  result.supportsTogglingSortOrder = BYTE3(v8);
  result.defaultSortOrderIsKnownAscending = BYTE4(v8);
  return result;
}

void sub_21AC10E10()
{
  qword_27CD34418 = 0xD000000000000014;
  unk_27CD34420 = 0x800000021AC7E0B0;
  byte_27CD34410 = 19;
  *algn_27CD34411 = 0;
}

uint64_t static PhotosViewCollectionKind.genericWithoutHeader.getter()
{
  if (qword_27CD33ED0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_4(&byte_27CD34410);
}

void sub_21AC10EB0()
{
  strcpy(&qword_27CD34430, "GenericUnknown");
  unk_27CD3443F = -18;
  byte_27CD34428 = 19;
  *&byte_27CD34429 = 0;
}

uint64_t static PhotosViewCollectionKind.genericUnknown.getter()
{
  if (qword_27CD33ED8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_4(&byte_27CD34428);
}

uint64_t PhotosViewCollectionKind.description.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

double sub_21AC10F8C@<D0>(uint64_t a1@<X8>)
{
  PhotosEnvironmentValues.photosViewCollectionKind.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

void (*PhotosEnvironmentValues.photosViewCollectionKind.modify(void *a1))(_OWORD **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[6] = v1;
  v3[7] = sub_21AC0D344();
  sub_21AC6ED54();
  return sub_21AC110DC;
}

void sub_21AC110DC(_OWORD **a1, char a2)
{
  v2 = *a1;
  *(*a1 + 24) = **a1;
  v2[5] = v2[2];
  if (a2)
  {

    sub_21AC6ED64();
  }

  else
  {
    sub_21AC6ED64();
  }

  free(v2);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_21AC11188(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21AC111C8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_21AC11228(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t OUTLINED_FUNCTION_0_4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  v7 = *(a1 + 8);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v2;
  *(v1 + 2) = v3;
  *(v1 + 3) = v4;
  *(v1 + 4) = v5;
  *(v1 + 8) = v7;
  *(v1 + 16) = result;
  return result;
}

uint64_t sub_21AC112B0()
{
  v2 = OUTLINED_FUNCTION_5_1();
  v3 = PXPhotosViewModel.scrollDetentsProvider.getter();
  v5 = v4;

  if (!v3)
  {
    return 0;
  }

  swift_getObjectType();
  v6 = sub_21AC11FB4([v0 (v1 + 2320)]);
  v7 = (*(v5 + 24))(v6);
  swift_unknownObjectRelease();

  return v7;
}

uint64_t sub_21AC1139C()
{
  v2 = OUTLINED_FUNCTION_5_1();
  v3 = PXPhotosViewModel.scrollDetentsProvider.getter();
  v5 = v4;

  if (v3)
  {
    v6 = [v0 (v1 + 2320)];
    v7 = [v6 allowsPreviewHeader];

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      ObjectType = swift_getObjectType();
      v8 = (*(v5 + 16))(ObjectType, v5);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

double sub_21AC11460(double a1)
{
  v2 = v1;
  v4 = [v1 viewModel];
  v5 = PXPhotosViewModel.scrollDetentsProvider.getter();
  v7 = v6;

  if (v5)
  {
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 8))(ObjectType, v7);
    swift_unknownObjectRelease();
    v10 = sub_21AC0D6A4(v9);
    for (i = 0; v10 != i; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = OUTLINED_FUNCTION_3_1();
        v12 = MEMORY[0x21CEDFAE0](v14);
      }

      else
      {
        if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v12 = *(v9 + 8 * i + 32);
      }

      v13 = v12;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_13:
        __break(1u);
      }

      [v12 offset];
      [v2 axis];
      PXPointSetValueForAxis();
      [v2 referenceSize];
      PXRectWithOriginAndSize();
      OUTLINED_FUNCTION_1_2();
      v21.origin.x = OUTLINED_FUNCTION_4_1();
      CGRectUnion(v21, v22);
    }

    [v2 safeAreaInsets];
    PXEdgeInsetsForEdges();
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_4_1();
    PXEdgeInsetsInsetRect();
    PXRectWithOriginAndSize();
    PXEdgeInsetsBetweenRects();
    OUTLINED_FUNCTION_1_2();
    PXEdgeInsetsMax();
    sub_21AC11710(v15, v16, v17, v18);
    PXSizeMax();
    return v19;
  }

  return a1;
}

void sub_21AC11710(double a1, double a2, double a3, double a4)
{
  sub_21AC11850();
  sub_21AC11894();
  v8 = sub_21AC6EDA4();
  v9 = &v8[OBJC_IVAR____TtCE8GridZeroCSo14PXPhotosLayout14AssociatedData_scrollableContentInsets];
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
}

double PXPhotosLayout.scrollableContentInsets.getter()
{
  sub_21AC11850();
  sub_21AC11894();
  v0 = sub_21AC6EDA4();
  v1 = *&v0[OBJC_IVAR____TtCE8GridZeroCSo14PXPhotosLayout14AssociatedData_scrollableContentInsets];

  return v1;
}

unint64_t sub_21AC11850()
{
  result = qword_27CD33DA8;
  if (!qword_27CD33DA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD33DA8);
  }

  return result;
}

unint64_t sub_21AC11894()
{
  result = qword_27CD33DB0;
  if (!qword_27CD33DB0)
  {
    sub_21AC11850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD33DB0);
  }

  return result;
}

void sub_21AC118EC(uint64_t a1@<X8>)
{
  *a1 = PXPhotosLayout.scrollableContentInsets.getter();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

id PXPhotosLayout.AssociatedData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PXPhotosLayout.AssociatedData.init()()
{
  v1 = &v0[OBJC_IVAR____TtCE8GridZeroCSo14PXPhotosLayout14AssociatedData_scrollableContentInsets];
  v2 = *(MEMORY[0x277D768C8] + 16);
  *v1 = *MEMORY[0x277D768C8];
  *(v1 + 1) = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PXPhotosLayout.AssociatedData();
  return objc_msgSendSuper2(&v4, sel_init);
}

id PXPhotosLayout.AssociatedData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXPhotosLayout.AssociatedData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id PXPhotosLayout.createAssociatedData()()
{
  v0 = objc_allocWithZone(type metadata accessor for PXPhotosLayout.AssociatedData());

  return [v0 init];
}

double sub_21AC11A80@<D0>(_OWORD *a1@<X8>)
{
  if ([v1 swift_associatedData])
  {
    sub_21AC6F134();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_21AC11AF4(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v5 = *(v2 - 8);
    MEMORY[0x28223BE20](v4);
    v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v8 = sub_21AC6F1E4();
    (*(v5 + 8))(v7, v2);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v8 = 0;
  }

  [v1 setSwift:v8 associatedData:?];
  return swift_unknownObjectRelease();
}

void (*sub_21AC11C28(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_21AC11CCC(v2);
  return sub_21AC11C84;
}

void sub_21AC11C84(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_21AC11CCC(void *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v4;
  v4[12] = v2;
  if ([v2 swift_associatedData])
  {
    sub_21AC6F134();
    swift_unknownObjectRelease();
  }

  else
  {
    *(v4 + 2) = 0u;
    *(v4 + 3) = 0u;
  }

  v5 = *(v4 + 3);
  *v4 = *(v4 + 2);
  *(v4 + 1) = v5;
  return sub_21AC11D70;
}

void sub_21AC11D70(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_21AC12024(*a1, v2 + 64);
    if (*(v2 + 88))
    {
      __swift_project_boxed_opaque_existential_1((v2 + 64), *(v2 + 88));
      OUTLINED_FUNCTION_2_1();
      MEMORY[0x28223BE20](v3);
      v5 = OUTLINED_FUNCTION_0_5(v4, v17);
      v6(v5);
      OUTLINED_FUNCTION_3_1();
      v7 = sub_21AC6F1E4();
      v8 = OUTLINED_FUNCTION_3_1();
      v9(v8);
      __swift_destroy_boxed_opaque_existential_0Tm(v2 + 64);
    }

    else
    {
      v7 = 0;
    }

    [*(v2 + 96) setSwift:v7 associatedData:?];
    swift_unknownObjectRelease();
    sub_21AC0FC7C(v2);
  }

  else
  {
    if (*(v2 + 24))
    {
      __swift_project_boxed_opaque_existential_1(*a1, *(v2 + 24));
      OUTLINED_FUNCTION_2_1();
      MEMORY[0x28223BE20](v10);
      v12 = OUTLINED_FUNCTION_0_5(v11, v17);
      v13(v12);
      OUTLINED_FUNCTION_3_1();
      v14 = sub_21AC6F1E4();
      v15 = OUTLINED_FUNCTION_3_1();
      v16(v15);
      __swift_destroy_boxed_opaque_existential_0Tm(v2);
    }

    else
    {
      v14 = 0;
    }

    [*(v2 + 96) setSwift:v14 associatedData:?];
    swift_unknownObjectRelease();
  }

  free(v2);
}

uint64_t sub_21AC11F48()
{
  sub_21AC11850();

  return sub_21AC6EDA4();
}

uint64_t sub_21AC11FB4(void *a1)
{
  v2 = [a1 initialScrollPositionDetentIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21AC6EFA4();

  return v3;
}

uint64_t sub_21AC12024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD33FF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id OUTLINED_FUNCTION_5_1()
{

  return [v0 viewModel];
}

void sub_21AC1323C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21AC170B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *PXCuratedLibraryZoomLevelDescription(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"???";
  }

  else
  {
    return off_2782978B8[a1];
  }
}

uint64_t PXCuratedLibraryBestCropRectForAssetInZoomLevel(uint64_t a1, uint64_t a2)
{
  result = PXGBestCropRectForDisplayAsset();
  if (a2 == 1)
  {
    PXRectGetCenter();
    PXSizeScale();
    return PXRectWithCenterAndSize();
  }

  return result;
}

id PXRegionOfInterestForAssetReference(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v37 = a4;
  v59 = *MEMORY[0x277D85DE8];
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = [v9 spriteReferenceForObjectReference:v10];
  v13 = [v8 regionOfInterestForSpriteReference:v12];
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v14 = [v10 asset];
  v15 = [v14 representsBurst];

  if (v15)
  {
    v16 = [v9 spriteIndexForSpriteReference:v12 options:0];
    if (v16 != -1)
    {
      v44 = 0;
      memset(v43, 0, sizeof(v43));
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v42 = 0;
      v17 = v16;
      v40 = 0u;
      v41 = 0u;
      [v9 copyLayoutForSpritesInRange:v16 | 0x100000000 entities:&v44 geometries:v43 styles:&v49 infos:&v40];
      v18 = [v9 entityManager];
      v19 = [v18 effectComponent];

      v20 = v19;
      v21 = [v19 effectIds];
      if (*(v21 + 4 * v44))
      {
        v22 = [v19 effectForId:?];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *(v46 + 24) = 1;
        }
      }

      if (v46[3] & 1) != 0 || (v39[0] = MEMORY[0x277D85DD0], v39[1] = 3221225472, v39[2] = __PXRegionOfInterestForAssetReference_block_invoke, v39[3] = &unk_2782978E8, v39[4] = &v45, [v9 enumerateLayoutsForSpritesInRange:v17 | 0x100000000 options:1 usingBlock:v39], (v46[3]))
      {
        v23 = [v13 coordinateSpace];
        [v13 rectInCoordinateSpace:v23];

        PXGRectForTopItemInBurstStackWithRect();
        PXRectNormalize();
        [v13 setImageContentsRect:?];
      }
    }
  }

  [v9 spriteIndexForSpriteReference:{v12, v37}];
  if (PXGShouldApplyCleanApertureCropForSpriteIndexInLayout())
  {
    v24 = [v10 asset];
    PXGCleanApertureAmountForAsset();
    v26 = v25;

    if (v26 > 0.0 && v26 != 1.0)
    {
      [v13 imageContentsRect];
      PXRectGetCenter();
      [v13 imageContentsRect];
      PXSizeScale();
      PXRectWithCenterAndSize();
      [v13 setImageContentsRect:?];
    }
  }

  if (v38)
  {
    v27 = [v8 textureSnapshotForSpriteReference:v12];
    v28 = v27;
    if (v11)
    {
      if (v27 && *(v46 + 24) != 1)
      {
LABEL_24:
        *v38 = v28;
        goto LABEL_25;
      }

      v29 = v10;
      v30 = v11;
      *&v40 = 0;
      *(&v40 + 1) = &v40;
      v41 = 0x2020000000uLL;
      v31 = objc_alloc_init(MEMORY[0x277D3CD50]);
      [v31 setNetworkAccessAllowed:0];
      [v31 setSynchronous:1];
      [v31 setDeliveryMode:3];
      v32 = [v29 asset];
      *&v49 = MEMORY[0x277D85DD0];
      *(&v49 + 1) = 3221225472;
      *&v50 = ___fallbackImageForAssetReference_block_invoke;
      *(&v50 + 1) = &unk_278297910;
      *(&v51 + 1) = &v40;
      v33 = v29;
      *&v51 = v33;
      [v30 requestCGImageForAsset:v32 targetSize:1 contentMode:v31 options:&v49 resultHandler:{512.0, 512.0}];

      v34 = *(*(&v40 + 1) + 24);
      if (v34)
      {
        v35 = CGImageRetain(v34);
        v28 = CFAutorelease(v35);
        *(*(&v40 + 1) + 24) = v28;
      }

      else
      {
        v28 = 0;
      }

      _Block_object_dispose(&v40, 8);
    }

    if (!v28)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_25:
  _Block_object_dispose(&v45, 8);

  return v13;
}

void __PXRegionOfInterestForAssetReference_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [v6 contentSource];
  if ([v4 conformsToProtocol:&unk_282C4BA08])
  {
    v5 = [v6 contentSource];

    if (v5 && ([v5 supportedDisplayAssetPresentationStylesInLayout:v6] & 4) != 0)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  else
  {

    v5 = 0;
  }
}

void ___fallbackImageForAssetReference_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    v7 = PFUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277D3CFA0]];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_21ABF3000, v7, OS_LOG_TYPE_ERROR, "Failed to request fallback image for assetReference: %@ with error: %@", &v10, 0x16u);
    }
  }
}

void sub_21AC22294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1279(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21AC2C190(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_21AC2C8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1506(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21AC2E89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2058(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21AC2FC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2333(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21AC36010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_21AC36B50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_21AC388E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3444(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PXGridZeroGetLog()
{
  if (PXGridZeroGetLog_predicate != -1)
  {
    dispatch_once(&PXGridZeroGetLog_predicate, &__block_literal_global_3573);
  }

  v1 = PXGridZeroGetLog_log;

  return v1;
}

uint64_t __PXGridZeroGetLog_block_invoke()
{
  PXGridZeroGetLog_log = os_log_create(*MEMORY[0x277D3A848], "GridZero");

  return MEMORY[0x2821F96F8]();
}

id PXGridZeroDNDGetLog()
{
  if (PXGridZeroDNDGetLog_predicate != -1)
  {
    dispatch_once(&PXGridZeroDNDGetLog_predicate, &__block_literal_global_3);
  }

  v1 = PXGridZeroDNDGetLog_log;

  return v1;
}

uint64_t __PXGridZeroDNDGetLog_block_invoke()
{
  PXGridZeroDNDGetLog_log = os_log_create(*MEMORY[0x277D3A848], "DragAndDrop");

  return MEMORY[0x2821F96F8]();
}

void sub_21AC3C518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21AC41898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4564(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21AC41C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AC462BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6312(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21AC4ABB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AC4AE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_21AC4B1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_21AC4B4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_21AC4BBB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AC4F228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AC512E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21AC51DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6775(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21AC51FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _CreateAnimationOnDecoratingLayouts(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3[2](v3, v4);
  }

  else
  {
    v5 = [v4 sublayoutDataStore];

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___CreateAnimationOnDecoratingLayouts_block_invoke;
    v6[3] = &unk_278298E38;
    v7 = v3;
    [v5 enumerateSublayoutsUsingBlock:v6];

    v4 = v7;
  }
}

void sub_21AC6071C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21AC62260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21AC66C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PXZoomablePhotosInvalidatableEntitiesDescription(int a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = v2;
  if ((a1 & 4) != 0)
  {
    [v2 addObject:@"EffectiveOverlayInsets"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"ProvidedEffect"];
  if ((a1 & 8) == 0)
  {
LABEL_4:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v3 addObject:@"Layers"];
  if ((a1 & 0x10) == 0)
  {
LABEL_5:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v3 addObject:@"Zoom"];
  if ((a1 & 0x80) == 0)
  {
LABEL_6:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v3 addObject:@"DataSource"];
  if ((a1 & 0x100) == 0)
  {
LABEL_7:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v3 addObject:@"VisualShifting"];
  if ((a1 & 0x200) == 0)
  {
LABEL_8:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v3 addObject:@"DecorationSource"];
  if ((a1 & 0x10000) == 0)
  {
LABEL_9:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v3 addObject:@"ZoomTransforms"];
  if ((a1 & 0x20000) == 0)
  {
LABEL_10:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v3 addObject:@"BackgroundSprites"];
  if ((a1 & 0x80000) == 0)
  {
LABEL_11:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v3 addObject:@"PinchEffect"];
  if ((a1 & 0x40000) == 0)
  {
LABEL_12:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v3 addObject:@"BlurEffect"];
  if ((a1 & 0x100000) == 0)
  {
LABEL_13:
    if ((a1 & 0x200000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  [v3 addObject:@"Prefetching"];
  if ((a1 & 0x200000) != 0)
  {
LABEL_14:
    [v3 addObject:@"FloatingHeaderStyle"];
  }

LABEL_15:
  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 componentsJoinedByString:@"|"];
  v6 = [v4 stringWithFormat:@"[%@]", v5];

  return v6;
}

void __PXTitleFontForInlineHeaderStyle_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = PXTitleFontForInlineHeaderStyle_fontCache;
  PXTitleFontForInlineHeaderStyle_fontCache = v0;

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = [v3 addObserverForName:*MEMORY[0x277D76810] object:0 queue:0 usingBlock:&__block_literal_global_180];
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}