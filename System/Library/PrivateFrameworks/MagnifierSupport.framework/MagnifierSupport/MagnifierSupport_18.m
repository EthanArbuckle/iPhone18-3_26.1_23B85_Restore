uint64_t static MFEnvironment.setCardPositionToBottom()()
{
  v0 = sub_257ECF120();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v4 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cardPosition;
  swift_beginAccess();
  v8 = 2;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v5 = sub_257ECF110();
  MEMORY[0x28223BE20](v5);
  *&v7[-16] = &v8;
  *&v7[-8] = v4;
  sub_257ECFD40();
  (*(v1 + 8))(v3, v0);
  return swift_endAccess();
}

uint64_t sub_257D5AF08()
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A20);
  v1 = *(v19 - 8);
  MEMORY[0x28223BE20]();
  v3 = &v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A18);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F20);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v11 = &v19 - v10;
  v12 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment9FrameData__thumbnailPreviewImage;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9BB0);
  sub_257ECDD20();
  (*(v9 + 32))(v0 + v12, v11, v8);
  v13 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment9FrameData__thumbnailPreviewImageCG;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F87F0);
  sub_257ECDD20();
  (*(v5 + 32))(v0 + v13, v7, v4);
  v14 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment9FrameData__liveImageBuffer;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F87F8);
  sub_257ECDD20();
  v15 = *(v1 + 32);
  v16 = v19;
  v15(v0 + v14, v3, v19);
  v17 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment9FrameData__arSessionBuffer;
  v20 = 0;
  sub_257ECDD20();
  v15(v0 + v17, v3, v16);
  return v0;
}

uint64_t sub_257D5B1F0()
{
  v1 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment9FrameData__thumbnailPreviewImage;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F20);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment9FrameData__thumbnailPreviewImageCG;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A18);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment9FrameData__liveImageBuffer;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A20);
  v9 = *(*(v6 - 8) + 8);
  (v9)((v6 - 8), v0 + v5, v6);
  v7 = v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment9FrameData__arSessionBuffer;

  return v9(v7, v6);
}

uint64_t sub_257D5B338()
{
  v1 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment9FrameData__thumbnailPreviewImage;
  sub_257ECC3F0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F20);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment9FrameData__thumbnailPreviewImageCG;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A18);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment9FrameData__liveImageBuffer;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A20);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment9FrameData__arSessionBuffer, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_257D5B4B8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MFEnvironment.FrameData(0);
  result = sub_257ECDCF0();
  *a1 = result;
  return result;
}

float sub_257D5B50C@<S0>(float *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_257D5B58C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257D5B61C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    swift_getKeyPath();
    sub_257ECCA50();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DC0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_257D5B724()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A10);
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x28223BE20](v2);
  v52 = &v41 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A08);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v49 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A00);
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x28223BE20](v6);
  v46 = &v41 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  v8 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7A70);
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F89F8);
  v14 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9EA0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v41 - v19;
  type metadata accessor for MFEnvironment.Display(0);
  swift_allocObject();
  *(v0 + 16) = sub_257D5D780();
  v21 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__cameraType;
  LOBYTE(v55) = 0;
  sub_257ECDD20();
  (*(v18 + 32))(v1 + v21, v20, v17);
  v22 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__cameraID;
  v55 = 0;
  v56 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
  sub_257ECDD20();
  (*(v14 + 32))(v1 + v22, v16, v42);
  v23 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__availableCameraTypes;
  v55 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6FA0);
  sub_257ECDD20();
  (*(v43 + 32))(v1 + v23, v13, v44);
  v24 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__hasSwitchedFirstCamera;
  LOBYTE(v55) = 0;
  sub_257ECDD20();
  v25 = *(v8 + 32);
  v26 = v45;
  v25(v1 + v24, v10, v45);
  v27 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__flashlightPercentage;
  LODWORD(v55) = 0;
  v28 = v46;
  sub_257ECDD20();
  (*(v47 + 32))(v1 + v27, v28, v48);
  v29 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__session;
  v55 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8838);
  v30 = v49;
  sub_257ECDD20();
  (*(v50 + 32))(v1 + v29, v30, v51);
  v31 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__focusLock;
  LOBYTE(v55) = 0;
  sub_257ECDD20();
  v25(v1 + v31, v10, v26);
  v32 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__longPressedToLock;
  LOBYTE(v55) = 0;
  sub_257ECDD20();
  v25(v1 + v32, v10, v26);
  v33 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__generateImageCaption;
  LOBYTE(v55) = 0;
  sub_257ECDD20();
  v25(v1 + v33, v10, v26);
  *(v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens_isInCapture) = 0;
  v34 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__displayingReaderMode;
  LOBYTE(v55) = 0;
  sub_257ECDD20();
  v25(v1 + v34, v10, v26);
  v35 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__filterScrubberExpanded;
  LOBYTE(v55) = 0;
  sub_257ECDD20();
  v36 = v26;
  v25(v1 + v35, v10, v26);
  v37 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__displayingPerspectiveState;
  LOBYTE(v55) = 0;
  v38 = v52;
  sub_257ECDD20();
  (*(v53 + 32))(v1 + v37, v38, v54);
  v39 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__hasValidPerspectiveShape;
  LOBYTE(v55) = 1;
  sub_257ECDD20();
  v25(v1 + v39, v10, v36);
  return v1;
}

uint64_t sub_257D5BE48()
{

  v1 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__cameraType;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9EA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__cameraID;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F89F8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__availableCameraTypes;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7A70);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__hasSwitchedFirstCamera;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  v17 = *(*(v8 - 8) + 8);
  (v17)((v8 - 8), v0 + v7, v8);
  v9 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__flashlightPercentage;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A00);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__session;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A08);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v17(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__focusLock, v8);
  v17(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__longPressedToLock, v8);
  v17(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__generateImageCaption, v8);
  v17(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__displayingReaderMode, v8);
  v17(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__filterScrubberExpanded, v8);
  v13 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__displayingPerspectiveState;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A10);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__hasValidPerspectiveShape;

  return (v17)(v15, v8);
}

uint64_t sub_257D5C168()
{

  v1 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__cameraType;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9EA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__cameraID;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F89F8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__availableCameraTypes;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7A70);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__hasSwitchedFirstCamera;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v10 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__flashlightPercentage;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A00);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__session;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A08);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v9(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__focusLock, v8);
  v9(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__longPressedToLock, v8);
  v9(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__generateImageCaption, v8);
  v9(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__displayingReaderMode, v8);
  v9(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__filterScrubberExpanded, v8);
  v14 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__displayingPerspectiveState;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A10);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v9(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens__hasValidPerspectiveShape, v8);
  return v0;
}

uint64_t sub_257D5C48C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return v1;
}

uint64_t sub_257D5C534()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();
}

uint64_t sub_257D5C5AC()
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

uint64_t sub_257D5C6D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F685369746C756DLL;
  v4 = 0xE900000000000074;
  if (v2 != 1)
  {
    v3 = 0x746E656D75636F64;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6853656C676E6973;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA0000000000746FLL;
  }

  v7 = 0x6F685369746C756DLL;
  v8 = 0xE900000000000074;
  if (*a2 != 1)
  {
    v7 = 0x746E656D75636F64;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6853656C676E6973;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA0000000000746FLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_257ED0640();
  }

  return v11 & 1;
}

uint64_t sub_257D5C7E0()
{
  sub_257ED07B0();
  sub_257ECF5D0();

  return sub_257ED0800();
}

uint64_t sub_257D5C88C()
{
  sub_257ECF5D0();
}

uint64_t sub_257D5C924()
{
  sub_257ED07B0();
  sub_257ECF5D0();

  return sub_257ED0800();
}

uint64_t sub_257D5C9CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_257D72C40();
  *a1 = result;
  return result;
}

void sub_257D5C9FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000746FLL;
  v4 = 0xE900000000000074;
  v5 = 0x6F685369746C756DLL;
  if (v2 != 1)
  {
    v5 = 0x746E656D75636F64;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6853656C676E6973;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_257D5CB24()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F89F0);
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x28223BE20](v2);
  v60 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5F10);
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4);
  v57 = &v45 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  v6 = MEMORY[0x28223BE20](v56);
  v55 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FBB90);
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x28223BE20](v9);
  v51 = &v45 - v10;
  v11 = sub_257ECCEB0();
  v49 = *(v11 - 8);
  v50 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v48 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - v14;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A60);
  v16 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v18 = &v45 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v45 - v21;
  type metadata accessor for MFEnvironment.Display(0);
  swift_allocObject();
  *(v0 + 16) = sub_257D5D780();
  v23 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__isReviewing;
  LOBYTE(v63) = 0;
  sub_257ECDD20();
  v24 = *(v20 + 32);
  v47 = v19;
  v24(v1 + v23, v22, v19);
  v46 = v24;
  v25 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__isUsingFrontCamera;
  LOBYTE(v63) = 0;
  sub_257ECDD20();
  v24(v1 + v25, v22, v19);
  v26 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__mode;
  LOBYTE(v63) = 0;
  sub_257ECDD20();
  v27 = *(v16 + 32);
  v28 = v45;
  v27(v1 + v26, v18, v45);
  v29 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__selectedMenuMode;
  LOBYTE(v63) = 0;
  sub_257ECDD20();
  v27(v1 + v29, v18, v28);
  v30 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__activeFreezeFrameIndexPath;
  MEMORY[0x259C6F990](0, 0);
  v31 = v49;
  v32 = v50;
  (*(v49 + 16))(v48, v15, v50);
  v33 = v51;
  sub_257ECDD20();
  (*(v31 + 8))(v15, v32);
  (*(v52 + 32))(v1 + v30, v33, v53);
  v34 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__latestAssetURL;
  v35 = sub_257ECCB70();
  v36 = v54;
  (*(*(v35 - 8) + 56))(v54, 1, 1, v35);
  sub_257BE401C(v36, v55, &qword_27F8F5F30);
  v37 = v57;
  sub_257ECDD20();
  sub_257BE4084(v36, &qword_27F8F5F30);
  (*(v58 + 32))(v1 + v34, v37, v59);
  v38 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__hasUpdatedFilter;
  LOBYTE(v63) = 0;
  sub_257ECDD20();
  v39 = v47;
  v40 = v46;
  v46(v1 + v38, v22, v47);
  v41 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__isInDocumentAdjustmentMode;
  LOBYTE(v63) = 0;
  sub_257ECDD20();
  v40(v1 + v41, v22, v39);
  v42 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__documentData;
  v63 = 0u;
  v64 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8868);
  v43 = v60;
  sub_257ECDD20();
  (*(v61 + 32))(v1 + v42, v43, v62);
  return v1;
}

uint64_t sub_257D5D234()
{

  v1 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__isReviewing;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__isUsingFrontCamera, v2);
  v4 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__mode;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A60);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__selectedMenuMode, v5);
  v7 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__activeFreezeFrameIndexPath;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FBB90);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__latestAssetURL;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5F10);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__hasUpdatedFilter, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__isInDocumentAdjustmentMode, v2);
  v11 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__documentData;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F89F0);
  v13 = *(*(v12 - 8) + 8);

  return v13(v0 + v11, v12);
}

uint64_t sub_257D5D470()
{

  v1 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__isReviewing;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__isUsingFrontCamera, v2);
  v4 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__mode;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A60);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__selectedMenuMode, v5);
  v7 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__activeFreezeFrameIndexPath;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FBB90);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__latestAssetURL;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5F10);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__hasUpdatedFilter, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__isInDocumentAdjustmentMode, v2);
  v11 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment11FreezeFrame__documentData;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F89F0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  return v0;
}

double sub_257D5D6F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return v1;
}

uint64_t sub_257D5D780()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5F10);
  v35 = *(v1 - 8);
  v36 = v1;
  (MEMORY[0x28223BE20])();
  v34 = &v27 - v2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  v3 = (MEMORY[0x28223BE20])();
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v31 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F89E8);
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v28 = &v27 - v7;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F89E0);
  v8 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9350);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - v13;
  v15 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display__brightness;
  v37 = 0x3FE0000000000000;
  sub_257ECDD20();
  v16 = *(v12 + 32);
  v16(v0 + v15, v14, v11);
  v17 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display__contrast;
  v37 = 0x3FE0000000000000;
  sub_257ECDD20();
  v16(v0 + v17, v14, v11);
  v18 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display__zoomPercentage;
  v37 = 0;
  sub_257ECDD20();
  v16(v0 + v18, v14, v11);
  v19 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display__panAmountRatio;
  type metadata accessor for CGPoint(0);
  v37 = 0;
  v38 = 0;
  sub_257ECDD20();
  (*(v8 + 32))(v0 + v19, v10, v27);
  v20 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display__perspectiveTransformSourceRatios;
  v37 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8890);
  v21 = v28;
  sub_257ECDD20();
  (*(v29 + 32))(v0 + v20, v21, v30);
  *(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor) = 0x3FF0000000000000;
  v22 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display__assetURL;
  v23 = sub_257ECCB70();
  v24 = v31;
  (*(*(v23 - 8) + 56))(v31, 1, 1, v23);
  sub_257BE401C(v24, v32, &qword_27F8F5F30);
  v25 = v34;
  sub_257ECDD20();
  sub_257BE4084(v24, &qword_27F8F5F30);
  (*(v35 + 32))(v0 + v22, v25, v36);
  return v0;
}

uint64_t sub_257D5DC44()
{
  v1 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display__brightness;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9350);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display__contrast, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display__zoomPercentage, v2);
  v4 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display__panAmountRatio;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F89E0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display__perspectiveTransformSourceRatios;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F89E8);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display__assetURL;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5F10);
  v10 = *(*(v9 - 8) + 8);

  return v10(v0 + v8, v9);
}

uint64_t sub_257D5DDE8()
{
  v1 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display__brightness;
  sub_257ECC3F0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9350);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display__contrast, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display__zoomPercentage, v2);
  v4 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display__panAmountRatio;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F89E0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display__perspectiveTransformSourceRatios;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F89E8);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display__assetURL;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5F10);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  return swift_deallocClassInstance();
}

unint64_t sub_257D5DFD0(char a1)
{
  result = 0x6576697463417369;
  switch(a1)
  {
    case 1:
      result = 0x6C626174656C6564;
      break;
    case 2:
      result = 0x637265506D6F6F7ALL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x4379616C70736964;
      break;
    case 5:
      result = 0x6F437265746C6966;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
    case 12:
    case 14:
    case 16:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 1701080941;
      break;
    case 9:
      result = 0x79546172656D6163;
      break;
    case 10:
      result = 0x44496172656D6163;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0x6F69746365746564;
      break;
    case 18:
    case 31:
      result = 0xD00000000000001DLL;
      break;
    case 19:
      result = 0xD000000000000020;
      break;
    case 20:
    case 32:
    case 37:
      result = 0xD00000000000001BLL;
      break;
    case 21:
      result = 0xD000000000000021;
      break;
    case 22:
    case 33:
    case 39:
      result = 0xD00000000000001ELL;
      break;
    case 23:
      result = 0xD000000000000024;
      break;
    case 24:
      result = 0xD000000000000027;
      break;
    case 25:
      result = 0xD000000000000012;
      break;
    case 26:
      result = 0x457061546B636162;
      break;
    case 27:
      result = 0x614C746365746564;
      break;
    case 28:
      result = 0xD000000000000017;
      break;
    case 29:
      result = 0xD00000000000001FLL;
      break;
    case 30:
    case 38:
      result = 0xD000000000000018;
      break;
    case 34:
      result = 0xD000000000000023;
      break;
    case 35:
      result = 0x657053746E696F70;
      break;
    case 36:
      result = 0xD000000000000011;
      break;
    case 40:
      result = 0x746E6F436E69616DLL;
      break;
    case 41:
      result = 0x437972616D697270;
      break;
    case 42:
      result = 0xD000000000000011;
      break;
    case 43:
      result = 0x6E6F43726568746FLL;
      break;
    case 44:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_257D5E4B0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F89B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v46 - v5;
  v7 = *v1;
  v97 = v1[1];
  v8 = *(v1 + 1);
  v87 = *(v1 + 2);
  v88 = v8;
  v86 = *(v1 + 3);
  v91 = v1[32];
  LODWORD(v92) = v7;
  v90 = *(v1 + 5);
  v85 = *(v1 + 12);
  v89 = v1[52];
  v84 = v1[53];
  v9 = *(v1 + 8);
  v82 = *(v1 + 7);
  v83 = v9;
  v81 = v1[72];
  v80 = v1[73];
  v79 = v1[74];
  v78 = v1[75];
  v77 = v1[76];
  v76 = v1[77];
  v53 = v1[78];
  v57 = *(v1 + 10);
  v54 = *(v1 + 11);
  v11 = *(v1 + 12);
  v10 = *(v1 + 13);
  v12 = *(v1 + 15);
  v55 = *(v1 + 14);
  v56 = v12;
  v58 = v1[128];
  v13 = *(v1 + 17);
  v14 = *(v1 + 18);
  v15 = *(v1 + 19);
  v59 = v1[160];
  v60 = v1[161];
  v61 = v1[162];
  v62 = *(v1 + 21);
  v63 = v1[176];
  v16 = *(v1 + 24);
  v64 = *(v1 + 23);
  v65 = v16;
  v17 = *(v1 + 26);
  v66 = *(v1 + 25);
  v67 = v17;
  v19 = *(v1 + 27);
  v18 = *(v1 + 28);
  v20 = *(v1 + 29);
  v68 = v1[240];
  v69 = v1[241];
  v70 = v1[242];
  v71 = v1[243];
  v21 = *(v1 + 32);
  v72 = *(v1 + 31);
  v73 = v21;
  v22 = *(v1 + 34);
  v74 = *(v1 + 33);
  v75 = v22;
  v23 = *(v1 + 36);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_257D72A3C();
  v24 = v3;
  sub_257ED0850();
  LOBYTE(v94) = 0;
  v25 = v93;
  sub_257ED0590();
  if (v25)
  {
    goto LABEL_2;
  }

  v26 = v91;
  v27 = v90;
  v28 = v89;
  v46[1] = v11;
  v46[2] = v10;
  v47 = v15;
  v48 = v14;
  v49 = v13;
  v50 = v20;
  v51 = v18;
  v52 = v19;
  v92 = v23;
  LOBYTE(v94) = 1;
  sub_257ED0590();
  v93 = 0;
  v94 = v88;
  v98 = 2;
  sub_257BF96A4();
  v25 = v93;
  sub_257ED05D0();
  if (v25)
  {
    goto LABEL_2;
  }

  v94 = v87;
  v98 = 3;
  sub_257ED05D0();
  v94 = v86;
  v98 = 4;
  sub_257ED05D0();
  v93 = 0;
  LOBYTE(v94) = v26;
  v98 = 5;
  sub_257D728EC();
  v30 = v93;
  sub_257ED05D0();
  v93 = v30;
  if (v30)
  {
    return (*(v4 + 8))(v6, v24);
  }

  v94 = v27;
  v98 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7F28);
  sub_257D72868();
  v25 = v93;
  sub_257ED05D0();
  if (v25)
  {
LABEL_2:
    v93 = v25;
  }

  else
  {
    LOBYTE(v94) = 7;
    sub_257ED05B0();
    v93 = 0;
    LOBYTE(v94) = v28;
    v98 = 8;
    sub_257D72994();
    v31 = v93;
    sub_257ED05D0();
    v93 = v31;
    if (!v31)
    {
      LOBYTE(v94) = v84;
      v98 = 9;
      sub_257D729E8();
      v32 = v93;
      sub_257ED05D0();
      v93 = v32;
      if (!v32)
      {
        LOBYTE(v94) = 10;
        sub_257ED0550();
        v93 = 0;
        LOBYTE(v94) = 11;
        sub_257ED0590();
        v93 = 0;
        LOBYTE(v94) = 12;
        sub_257ED0590();
        v93 = 0;
        LOBYTE(v94) = 13;
        sub_257ED0590();
        v93 = 0;
        LOBYTE(v94) = 14;
        sub_257ED0590();
        v93 = 0;
        LOBYTE(v94) = 15;
        sub_257ED0590();
        v93 = 0;
        LOBYTE(v94) = 16;
        sub_257ED0590();
        v93 = 0;
        LOBYTE(v94) = v53;
        v98 = 17;
        sub_257D72940();
        v33 = v93;
        sub_257ED05D0();
        v93 = v33;
        if (!v33)
        {
          LOBYTE(v94) = 18;
          sub_257ED05A0();
          v93 = 0;
          v94 = v54;
          v98 = 19;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AD8);
          sub_257D7274C();
          v34 = v93;
          sub_257ED05D0();
          v93 = v34;
          if (!v34)
          {
            LOBYTE(v94) = 20;
            sub_257ED05A0();
            v93 = 0;
            LOBYTE(v94) = 21;
            sub_257ED05A0();
            v93 = 0;
            v94 = v55;
            v98 = 22;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5880);
            sub_257D72630();
            v35 = v93;
            sub_257ED05D0();
            v93 = v35;
            if (!v35)
            {
              v94 = v56;
              v98 = 23;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90);
              sub_257D72514();
              v36 = v93;
              sub_257ED05D0();
              v93 = v36;
              if (!v36)
              {
                LOBYTE(v94) = 24;
                sub_257ED0590();
                v93 = 0;
                v94 = v49;
                v95 = v48;
                v96 = v47;
                v98 = 25;
                sub_257D720A8();
                v37 = v93;
                sub_257ED05D0();
                v93 = v37;
                if (!v37)
                {
                  LOBYTE(v94) = 26;
                  sub_257ED0590();
                  v93 = 0;
                  LOBYTE(v94) = 27;
                  sub_257ED0590();
                  v93 = 0;
                  LOBYTE(v94) = 28;
                  sub_257ED0590();
                  v93 = 0;
                  v94 = v62;
                  v98 = 29;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5A90);
                  sub_257D71FD0();
                  v38 = v93;
                  sub_257ED05D0();
                  v93 = v38;
                  if (!v38)
                  {
                    LOBYTE(v94) = 30;
                    sub_257ED0590();
                    v93 = 0;
                    v94 = v64;
                    v98 = 31;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8470);
                    sub_257D72140();
                    v39 = v93;
                    sub_257ED05D0();
                    v93 = v39;
                    if (!v39)
                    {
                      v94 = v65;
                      v98 = 32;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90);
                      sub_257D71EB4();
                      v40 = v93;
                      sub_257ED05D0();
                      v93 = v40;
                      if (!v40)
                      {
                        v94 = v66;
                        v98 = 33;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5540);
                        sub_257D72A90();
                        v41 = v93;
                        sub_257ED05D0();
                        v93 = v41;
                        if (!v41)
                        {
                          v94 = v67;
                          v98 = 34;
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7080);
                          sub_257D72B68();
                          v42 = v93;
                          sub_257ED05D0();
                          v93 = v42;
                          if (!v42)
                          {
                            v94 = v52;
                            v95 = v51;
                            v96 = v50;
                            v98 = 35;
                            sub_257ED05D0();
                            v93 = 0;
                            LOBYTE(v94) = 36;
                            sub_257ED0590();
                            v93 = 0;
                            LOBYTE(v94) = 37;
                            sub_257ED0590();
                            v93 = 0;
                            LOBYTE(v94) = v70;
                            v98 = 38;
                            sub_257D71E1C();
                            v43 = v93;
                            sub_257ED05D0();
                            v93 = v43;
                            if (!v43)
                            {
                              LOBYTE(v94) = 39;
                              sub_257ED0590();
                              v93 = 0;
                              v94 = v72;
                              v98 = 40;
                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20);
                              sub_257D723F8();
                              v44 = v93;
                              sub_257ED05D0();
                              v93 = v44;
                              if (!v44)
                              {
                                v94 = v73;
                                v98 = 41;
                                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0);
                                sub_257D72320();
                                v45 = v93;
                                sub_257ED05D0();
                                v93 = v45;
                                if (!v45)
                                {
                                  v94 = v74;
                                  v98 = 42;
                                  sub_257ED05D0();
                                  v93 = 0;
                                  v94 = v75;
                                  v98 = 43;
                                  sub_257ED05D0();
                                  v93 = 0;
                                  LOBYTE(v94) = 44;
                                  sub_257ED0580();
                                  v93 = 0;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return (*(v4 + 8))(v6, v24);
}

uint64_t sub_257D5F2B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v103 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F89A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v87 - v7;
  v9 = sub_257CA930C();
  if (*(v9 + 16))
  {
    v132 = *(v9 + 32);
  }

  else
  {
    v132 = 0;
  }

  if (qword_2815455E0 != -1)
  {
    swift_once();
  }

  v124 = byte_2815483A8;
  if (qword_281545508 != -1)
  {
    swift_once();
  }

  v10 = qword_281548370;
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  v128 = UIAccessibilityIsVoiceOverRunning();
  if (qword_27F8F4650 != -1)
  {
    swift_once();
  }

  v11 = qword_2815456D8;
  v126 = qword_27F912FE0;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_2815483C0;
  v13 = a1[3];
  v123 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_257D72A3C();
  v125 = v12;

  sub_257ED0840();
  v133 = v10;
  if (!v3)
  {
    LOBYTE(v138) = 0;
    v17 = sub_257ED0500() & 1;
    LOBYTE(v138) = 1;
    v29 = sub_257ED0500();
    v200 = 0;
    v102 = v29 & 1;
    LOBYTE(v136[0]) = 2;
    sub_257BF9650();
    v30 = v200;
    sub_257ED0540();
    if (v30)
    {
      v200 = v30;
      (*(v6 + 8))(v8, v5);
      v114 = 0;
      v117 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v130 = 0;
      v131 = 0;
      v14 = 0;
      v15 = 0;
      v135 = 0;
      v134 = 0.5;
      v18 = &unk_286903738;
      v122 = 0;
      v118 = &unk_286905AC0;
      v115 = &unk_286905B10;
      v116 = &unk_286905AE8;
      v112 = &unk_286905B38;
      v113 = &unk_286903768;
      v110 = &unk_286905B88;
      v111 = &unk_286905B60;
      v109 = &unk_286905BB0;
      v129 = 1.0;
      v108 = 1;
      v107 = MEMORY[0x277D84F90];
      v19 = 0x3FEAE147AE147AE1;
      v20 = 0x3FA47AE147AE147BLL;
      v105 = 1;
      v106 = 1;
      v21 = 0x3FA47AE147AE147BLL;
      v22 = 0x3FEAE147AE147AE1;
      v23 = 1.0;
      v24 = 1;
      v25 = v10;
      v26 = 1;
      v27 = 0.5;
LABEL_20:
      v104 = &unk_286903710;
      v16 = v102;
      goto LABEL_15;
    }

    v31 = v138;
    LOBYTE(v136[0]) = 3;
    sub_257ED0540();
    v135 = v31;
    v27 = *&v138;
    LOBYTE(v136[0]) = 4;
    sub_257ED0540();
    v200 = 0;
    v32 = *&v138;
    LOBYTE(v136[0]) = 5;
    sub_257D16C10();
    v33 = v200;
    sub_257ED0540();
    v200 = v33;
    v134 = v32;
    if (v33)
    {
      (*(v6 + 8))(v8, v5);
      v114 = 0;
      v117 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v130 = 0;
      v131 = 0;
      v14 = 0;
      v15 = 0;
      v18 = &unk_286903738;
      v118 = &unk_286905AC0;
      v115 = &unk_286905B10;
      v116 = &unk_286905AE8;
      v112 = &unk_286905B38;
      v113 = &unk_286903768;
      v122 = 0;
      v110 = &unk_286905B88;
      v111 = &unk_286905B60;
      v109 = &unk_286905BB0;
      v129 = 1.0;
      v108 = 1;
      v107 = MEMORY[0x277D84F90];
      v19 = 0x3FEAE147AE147AE1;
      v20 = 0x3FA47AE147AE147BLL;
      v105 = 1;
      v106 = 1;
      v21 = 0x3FA47AE147AE147BLL;
      v22 = 0x3FEAE147AE147AE1;
      v23 = 1.0;
      v24 = 1;
      v25 = v10;
      v26 = 1;
      goto LABEL_20;
    }

    v101 = v138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7F28);
    LOBYTE(v136[0]) = 6;
    sub_257D16B8C();
    v34 = v200;
    sub_257ED0540();
    if (v34)
    {
      v200 = v34;
      (*(v6 + 8))(v8, v5);
      v114 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v130 = 0;
      v131 = 0;
      v14 = 0;
      v122 = 0;
      v18 = &unk_286903738;
      v117 = 0;
      v118 = &unk_286905AC0;
      v115 = &unk_286905B10;
      v116 = &unk_286905AE8;
      v112 = &unk_286905B38;
      v113 = &unk_286903768;
      v110 = &unk_286905B88;
      v111 = &unk_286905B60;
      v109 = &unk_286905BB0;
      v129 = 1.0;
      v108 = 1;
      v107 = MEMORY[0x277D84F90];
      v19 = 0x3FEAE147AE147AE1;
      v20 = 0x3FA47AE147AE147BLL;
      v105 = 1;
      v106 = 1;
      v21 = 0x3FA47AE147AE147BLL;
      v22 = 0x3FEAE147AE147AE1;
      v23 = 1.0;
      v24 = 1;
      v25 = v10;
      v26 = 1;
      v104 = &unk_286903710;
      v15 = v101;
      v16 = v102;
      goto LABEL_15;
    }

    v100 = v138;
    LOBYTE(v138) = 7;
    sub_257ED0520();
    v200 = 0;
    v122 = v35;
    LOBYTE(v136[0]) = 8;
    sub_257D16B38();
    v36 = v200;
    sub_257ED0540();
    v200 = v36;
    if (v36)
    {
      (*(v6 + 8))(v8, v5);
      v114 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v130 = 0;
      v131 = 0;
      v14 = 0;
      v129 = 1.0;
      v117 = 0;
      v118 = &unk_286905AC0;
      v115 = &unk_286905B10;
      v116 = &unk_286905AE8;
      v112 = &unk_286905B38;
      v113 = &unk_286903768;
      v110 = &unk_286905B88;
      v111 = &unk_286905B60;
      v109 = &unk_286905BB0;
      v108 = 1;
      v107 = MEMORY[0x277D84F90];
      v19 = 0x3FEAE147AE147AE1;
      v20 = 0x3FA47AE147AE147BLL;
      v105 = 1;
      v106 = 1;
      v21 = 0x3FA47AE147AE147BLL;
      v22 = 0x3FEAE147AE147AE1;
      v23 = 1.0;
      v24 = 1;
      v25 = v10;
      v26 = 1;
      v104 = &unk_286903710;
      v15 = v101;
      v16 = v102;
      v18 = v100;
      goto LABEL_15;
    }

    v37 = v27;
    v39 = v134;
    v38 = v135;
    v99 = v138;
    LOBYTE(v136[0]) = 9;
    sub_257D166C0();
    v40 = v200;
    sub_257ED0540();
    v200 = v40;
    if (v40)
    {
      (*(v6 + 8))(v8, v5);
      v114 = 0;
      v117 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v130 = 0;
      v131 = 0;
      v118 = &unk_286905AC0;
      v115 = &unk_286905B10;
      v116 = &unk_286905AE8;
      v112 = &unk_286905B38;
      v113 = &unk_286903768;
      v110 = &unk_286905B88;
      v111 = &unk_286905B60;
      v109 = &unk_286905BB0;
      v108 = 1;
      v107 = MEMORY[0x277D84F90];
      v19 = 0x3FEAE147AE147AE1;
      v20 = 0x3FA47AE147AE147BLL;
      v105 = 1;
      v106 = 1;
      v21 = 0x3FA47AE147AE147BLL;
      v24 = 1;
      v10 = v133;
      v25 = v133;
      v26 = 1;
      v104 = &unk_286903710;
      v27 = v37;
      v23 = 1.0;
      v22 = 0x3FEAE147AE147AE1;
      v129 = 1.0;
      v15 = v101;
      v16 = v102;
      v18 = v100;
      v14 = v99;
      goto LABEL_15;
    }

    v132 = v138;
    LOBYTE(v138) = 10;
    v130 = sub_257ED04C0();
    v131 = v41;
    v200 = 0;
    LOBYTE(v138) = 11;
    v42 = sub_257ED0500();
    v200 = 0;
    HIDWORD(v120) = v42 & 1;
    LOBYTE(v138) = 12;
    v43 = sub_257ED0500();
    v200 = 0;
    v121 = v43 & 1;
    LOBYTE(v138) = 13;
    v44 = sub_257ED0500();
    v200 = 0;
    LODWORD(v120) = v44 & 1;
    LOBYTE(v138) = 14;
    v45 = sub_257ED0500();
    v200 = 0;
    v98 = v45 & 1;
    LOBYTE(v138) = 15;
    v46 = sub_257ED0500();
    v200 = 0;
    HIDWORD(v119) = v46 & 1;
    LOBYTE(v138) = 16;
    v47 = sub_257ED0500();
    v200 = 0;
    LODWORD(v119) = v47 & 1;
    LOBYTE(v136[0]) = 17;
    sub_257D17548();
    v48 = v200;
    sub_257ED0540();
    v200 = v48;
    if (v48)
    {
      (*(v6 + 8))(v8, v5);
      v114 = 0;
      v117 = 0;
      v118 = &unk_286905AC0;
      v115 = &unk_286905B10;
      v116 = &unk_286905AE8;
      v112 = &unk_286905B38;
      v113 = &unk_286903768;
      v110 = &unk_286905B88;
      v111 = &unk_286905B60;
      v109 = &unk_286905BB0;
      v108 = 1;
      v107 = MEMORY[0x277D84F90];
      v19 = 0x3FEAE147AE147AE1;
      v20 = 0x3FA47AE147AE147BLL;
      v105 = 1;
      v106 = 1;
      v21 = 0x3FA47AE147AE147BLL;
      v24 = 1;
      v10 = v133;
      v25 = v133;
      v104 = &unk_286903710;
      v27 = v37;
      v23 = 1.0;
      v22 = 0x3FEAE147AE147AE1;
      v129 = 1.0;
      v15 = v101;
      v16 = v102;
      v18 = v100;
      v26 = v98;
      v14 = v99;
      goto LABEL_15;
    }

    v124 = v138;
    LOBYTE(v138) = 18;
    sub_257ED0510();
    v97 = v49;
    v200 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AD8);
    LOBYTE(v136[0]) = 19;
    sub_257D17110();
    v50 = v200;
    sub_257ED0540();
    v200 = v50;
    if (v50)
    {
      (*(v6 + 8))(v8, v5);
      v114 = 0;
      v117 = 0;
      v118 = &unk_286905AC0;
      v115 = &unk_286905B10;
      v116 = &unk_286905AE8;
      v112 = &unk_286905B38;
      v113 = &unk_286903768;
      v110 = &unk_286905B88;
      v111 = &unk_286905B60;
      v109 = &unk_286905BB0;
      v108 = 1;
      v107 = MEMORY[0x277D84F90];
      v19 = 0x3FEAE147AE147AE1;
      v20 = 0x3FA47AE147AE147BLL;
      v105 = 1;
      v106 = 1;
      v21 = 0x3FA47AE147AE147BLL;
      v24 = 1;
      v25 = v133;
      v104 = &unk_286903710;
      v27 = v37;
      v23 = 1.0;
      v22 = 0x3FEAE147AE147AE1;
      v129 = 1.0;
      v15 = v101;
      v16 = v102;
      v18 = v100;
      v26 = v98;
      v14 = v99;
      v10 = v97;
      goto LABEL_15;
    }

    v118 = v138;
    LOBYTE(v138) = 20;
    sub_257ED0510();
    v96 = v51;
    v200 = 0;
    LOBYTE(v138) = 21;
    sub_257ED0510();
    v200 = 0;
    v53 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5880);
    LOBYTE(v136[0]) = 22;
    sub_257D171E8();
    v54 = v200;
    sub_257ED0540();
    v200 = v54;
    if (v54)
    {
      (*(v6 + 8))(v8, v5);
      v114 = 0;
      v116 = &unk_286905AE8;
      v117 = 0;
LABEL_39:
      v115 = &unk_286905B10;
      v112 = &unk_286905B38;
      v113 = &unk_286903768;
      v110 = &unk_286905B88;
      v111 = &unk_286905B60;
      v109 = &unk_286905BB0;
      v108 = 1;
      v107 = MEMORY[0x277D84F90];
      v19 = 0x3FEAE147AE147AE1;
      v20 = 0x3FA47AE147AE147BLL;
      v105 = 1;
      v106 = 1;
      v21 = 0x3FA47AE147AE147BLL;
      v24 = 1;
      v133 = v53;
      v104 = &unk_286903710;
      v27 = v37;
      v23 = 1.0;
      v22 = 0x3FEAE147AE147AE1;
      v129 = 1.0;
      v15 = v101;
      v16 = v102;
      v18 = v100;
      v26 = v98;
      v14 = v99;
      v25 = v96;
      v10 = v97;
      goto LABEL_15;
    }

    v116 = v138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90);
    LOBYTE(v136[0]) = 23;
    sub_257D17470();
    v55 = v200;
    sub_257ED0540();
    v200 = v55;
    if (v55)
    {
      (*(v6 + 8))(v8, v5);
      v114 = 0;
      v117 = 0;
      goto LABEL_39;
    }

    v115 = v138;
    LOBYTE(v138) = 24;
    v56 = sub_257ED0500();
    v200 = 0;
    v95 = v56 & 1;
    LOBYTE(v136[0]) = 25;
    sub_257D16AE4();
    v57 = v200;
    sub_257ED0540();
    v200 = v57;
    if (v57)
    {
      (*(v6 + 8))(v8, v5);
      v114 = 0;
      v117 = 0;
      v112 = &unk_286905B38;
      v113 = &unk_286903768;
      v110 = &unk_286905B88;
      v111 = &unk_286905B60;
      v109 = &unk_286905BB0;
      v108 = 1;
      v104 = &unk_286903710;
      v107 = MEMORY[0x277D84F90];
      v19 = 0x3FEAE147AE147AE1;
      v20 = 0x3FA47AE147AE147BLL;
      v105 = 1;
      v106 = 1;
      v21 = 0x3FA47AE147AE147BLL;
      v133 = v53;
      v27 = v37;
      v23 = 1.0;
      v22 = 0x3FEAE147AE147AE1;
      v129 = 1.0;
LABEL_45:
      v15 = v101;
      v16 = v102;
      v18 = v100;
      v26 = v98;
      v14 = v99;
      v25 = v96;
      v10 = v97;
      v24 = v95;
      goto LABEL_15;
    }

    v92 = *&v138;
    v93 = v139;
    v94 = *&v140;
    LOBYTE(v138) = 26;
    v58 = sub_257ED0500();
    v200 = 0;
    LODWORD(v117) = v58 & 1;
    LOBYTE(v138) = 27;
    v59 = sub_257ED0500();
    v200 = 0;
    HIDWORD(v117) = v59 & 1;
    LOBYTE(v138) = 28;
    v60 = sub_257ED0500();
    v200 = 0;
    v106 = v60 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5A90);
    LOBYTE(v136[0]) = 29;
    sub_257D16A0C();
    v61 = v200;
    sub_257ED0540();
    v200 = v61;
    if (v61)
    {
      (*(v6 + 8))(v8, v5);
      v114 = 0;
      v113 = &unk_286903768;
      v111 = &unk_286905B60;
      v112 = &unk_286905B38;
      v109 = &unk_286905BB0;
      v110 = &unk_286905B88;
      v108 = 1;
      v107 = MEMORY[0x277D84F90];
      v19 = 0x3FEAE147AE147AE1;
      v20 = 0x3FA47AE147AE147BLL;
      v105 = 1;
LABEL_43:
      v133 = v53;
      v104 = &unk_286903710;
      v27 = v37;
      v129 = 1.0;
LABEL_44:
      v22 = v93;
      v21 = v94;
      v23 = v92;
      goto LABEL_45;
    }

    v113 = v138;
    LOBYTE(v138) = 30;
    v62 = sub_257ED0500();
    v200 = 0;
    v105 = v62 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8470);
    LOBYTE(v136[0]) = 31;
    sub_257D16F60();
    v63 = v200;
    sub_257ED0540();
    v200 = v63;
    if (v63)
    {
      (*(v6 + 8))(v8, v5);
      v114 = 0;
      v112 = &unk_286905B38;
    }

    else
    {
      v112 = v138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90);
      LOBYTE(v136[0]) = 32;
      sub_257D172C0();
      v64 = v200;
      sub_257ED0540();
      v200 = v64;
      if (!v64)
      {
        v111 = v138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5540);
        LOBYTE(v136[0]) = 33;
        sub_257D17038();
        v65 = v200;
        sub_257ED0540();
        v200 = v65;
        if (!v65)
        {
          v110 = v138;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7080);
          LOBYTE(v136[0]) = 34;
          sub_257D17398();
          v66 = v200;
          sub_257ED0540();
          v200 = v66;
          if (!v66)
          {
            v109 = v138;
            LOBYTE(v136[0]) = 35;
            sub_257ED0540();
            v200 = 0;
            v129 = *&v138;
            v90 = v139;
            v91 = *&v140;
            LOBYTE(v138) = 36;
            v67 = sub_257ED0500();
            v200 = 0;
            v108 = v67 & 1;
            LOBYTE(v138) = 37;
            v68 = sub_257ED0500();
            v200 = 0;
            IsVoiceOverRunning = v68 & 1;
            LOBYTE(v136[0]) = 38;
            sub_257D16808();
            v69 = v200;
            sub_257ED0540();
            v200 = v69;
            if (v69)
            {
              (*(v6 + 8))(v8, v5);
              v114 = 0;
              v107 = MEMORY[0x277D84F90];
              v133 = v53;
              v104 = &unk_286903710;
            }

            else
            {
              v114 = v138;
              LOBYTE(v138) = 39;
              v70 = sub_257ED0500();
              v200 = 0;
              v128 = v70 & 1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20);
              LOBYTE(v136[0]) = 40;
              sub_257D16934();
              v71 = v200;
              sub_257ED0540();
              v200 = v71;
              if (v71 || (, v126 = v138, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0), LOBYTE(v136[0]) = 41, sub_257D1685C(), v72 = v200, sub_257ED0540(), (v200 = v72) != 0))
              {
                (*(v6 + 8))(v8, v5);
                v104 = &unk_286903710;
              }

              else
              {
                v104 = v138;
                LOBYTE(v136[0]) = 42;
                sub_257ED0540();
                v200 = 0;

                v125 = v138;
                LOBYTE(v136[0]) = 43;
                v73 = v200;
                sub_257ED0540();
                v200 = v73;
                if (!v73)
                {
                  v107 = v138;
                  v137 = 44;
                  v133 = sub_257ED04F0();
                  v89 = v74;
                  v200 = 0;
                  (*(v6 + 8))(v8, v5);
                  *(&v136[16] + 1) = *v196;
                  *(&v136[20] + 3) = v194;
                  HIDWORD(v136[22]) = *&v193[3];
                  *(&v136[22] + 1) = *v193;
                  *(v136 + 2) = v198;
                  HIWORD(v136[0]) = v199;
                  *(&v136[4] + 1) = *v197;
                  HIDWORD(v136[4]) = *&v197[3];
                  HIDWORD(v136[16]) = *&v196[3];
                  HIBYTE(v136[20]) = v195;
                  v88 = v17;
                  LOBYTE(v136[0]) = v17;
                  v75 = v101;
                  BYTE1(v136[0]) = v102;
                  v136[1] = v38;
                  *&v136[2] = v37;
                  v76 = v39;
                  *&v136[3] = v39;
                  LOBYTE(v136[4]) = v101;
                  v77 = v100;
                  v136[5] = v100;
                  v78 = v122;
                  LODWORD(v136[6]) = v122;
                  v79 = v99;
                  BYTE4(v136[6]) = v99;
                  v80 = v132;
                  BYTE5(v136[6]) = v132;
                  v82 = v130;
                  v81 = v131;
                  v136[7] = v130;
                  v136[8] = v131;
                  v83 = BYTE4(v120);
                  LOBYTE(v136[9]) = BYTE4(v120);
                  BYTE1(v136[9]) = v121;
                  BYTE2(v136[9]) = v120;
                  BYTE3(v136[9]) = v98;
                  BYTE4(v136[9]) = BYTE4(v119);
                  BYTE5(v136[9]) = v119;
                  BYTE6(v136[9]) = v124;
                  v85 = v96;
                  v84 = v97;
                  v136[10] = v97;
                  v136[11] = v118;
                  v136[12] = v96;
                  v136[13] = v53;
                  v136[14] = v116;
                  v136[15] = v115;
                  LOBYTE(v136[16]) = v95;
                  v86 = v92;
                  *&v136[17] = v92;
                  v136[18] = v93;
                  v136[19] = v94;
                  LOBYTE(v136[20]) = v117;
                  BYTE1(v136[20]) = BYTE4(v117);
                  BYTE2(v136[20]) = v106;
                  v136[21] = v113;
                  LOBYTE(v136[22]) = v105;
                  v136[23] = v112;
                  v136[24] = v111;
                  v136[25] = v110;
                  v136[26] = v109;
                  *&v136[27] = v129;
                  v136[28] = v90;
                  v136[29] = v91;
                  LOBYTE(v136[30]) = v108;
                  BYTE1(v136[30]) = IsVoiceOverRunning;
                  BYTE2(v136[30]) = v114;
                  BYTE3(v136[30]) = v128;
                  v136[31] = v126;
                  v136[32] = v104;
                  v136[33] = v125;
                  v136[34] = v107;
                  v136[35] = v133;
                  v136[36] = v89;
                  memcpy(v103, v136, 0x128uLL);
                  sub_257C09C58(v136, &v138);
                  __swift_destroy_boxed_opaque_existential_0(v123);
                  LOBYTE(v138) = v88;
                  BYTE1(v138) = v102;
                  v142 = v75;
                  v144 = v77;
                  v146 = v79;
                  v147 = v80;
                  v148 = v82;
                  v149 = v81;
                  v150 = v83;
                  *(&v138 + 2) = v198;
                  HIWORD(v138) = v199;
                  *v143 = *v197;
                  *&v143[3] = *&v197[3];
                  v139 = v38;
                  v140 = v37;
                  v141 = v76;
                  v145 = v78;
                  v151 = v121;
                  v152 = v120;
                  v153 = v98;
                  v154 = BYTE4(v119);
                  v155 = v119;
                  v156 = v124;
                  v157 = v84;
                  v158 = v118;
                  v159 = v85;
                  v160 = v53;
                  v161 = v116;
                  v162 = v115;
                  v163 = v95;
                  *v164 = *v196;
                  *&v164[3] = *&v196[3];
                  v165 = v86;
                  v166 = v93;
                  v167 = v94;
                  v168 = v117;
                  v169 = BYTE4(v117);
                  v170 = v106;
                  v171 = v194;
                  v172 = v195;
                  v173 = v113;
                  v174 = v105;
                  *&v175[3] = *&v193[3];
                  *v175 = *v193;
                  v176 = v112;
                  v177 = v111;
                  v178 = v110;
                  v179 = v109;
                  v180 = v129;
                  v181 = v90;
                  v182 = v91;
                  v183 = v108;
                  v184 = IsVoiceOverRunning;
                  v185 = v114;
                  v186 = v128;
                  v187 = v126;
                  v188 = v104;
                  v189 = v125;
                  v190 = v107;
                  v191 = v133;
                  v192 = v89;
                  return sub_257C63C04(&v138);
                }

                (*(v6 + 8))(v8, v5);
              }

              v107 = MEMORY[0x277D84F90];
              v133 = v53;
            }

            v27 = v37;
            v19 = v90;
            v20 = v91;
            goto LABEL_44;
          }

          (*(v6 + 8))(v8, v5);
          v114 = 0;
          goto LABEL_54;
        }

        (*(v6 + 8))(v8, v5);
        v114 = 0;
LABEL_53:
        v110 = &unk_286905B88;
LABEL_54:
        v109 = &unk_286905BB0;
        v108 = 1;
        v107 = MEMORY[0x277D84F90];
        v19 = 0x3FEAE147AE147AE1;
        v20 = 0x3FA47AE147AE147BLL;
        goto LABEL_43;
      }

      (*(v6 + 8))(v8, v5);
      v114 = 0;
    }

    v111 = &unk_286905B60;
    goto LABEL_53;
  }

  v200 = v3;
  v114 = 0;
  v117 = 0;
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v130 = 0;
  v131 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  LOBYTE(v17) = 0;
  v135 = 0;
  v134 = 0.5;
  v18 = &unk_286903738;
  v122 = 0;
  v118 = &unk_286905AC0;
  v115 = &unk_286905B10;
  v116 = &unk_286905AE8;
  v112 = &unk_286905B38;
  v113 = &unk_286903768;
  v110 = &unk_286905B88;
  v111 = &unk_286905B60;
  v109 = &unk_286905BB0;
  v129 = 1.0;
  v108 = 1;
  v107 = MEMORY[0x277D84F90];
  v19 = 0x3FEAE147AE147AE1;
  v20 = 0x3FA47AE147AE147BLL;
  v105 = 1;
  v106 = 1;
  v21 = 0x3FA47AE147AE147BLL;
  v22 = 0x3FEAE147AE147AE1;
  v23 = 1.0;
  v24 = 1;
  v25 = v10;
  v26 = 1;
  v27 = 0.5;
  v104 = &unk_286903710;
LABEL_15:
  __swift_destroy_boxed_opaque_existential_0(v123);
  LOBYTE(v138) = v17;
  BYTE1(v138) = v16;
  v142 = v15;
  v144 = v18;
  v146 = v14;
  v147 = v132;
  v148 = v130;
  v149 = v131;
  *(&v138 + 2) = v198;
  HIWORD(v138) = v199;
  *v143 = *v197;
  *&v143[3] = *&v197[3];
  v139 = v135;
  v140 = v27;
  v141 = v134;
  v145 = v122;
  v150 = BYTE4(v120);
  v151 = v121;
  v152 = v120;
  v153 = v26;
  v154 = BYTE4(v119);
  v155 = v119;
  v156 = v124;
  v157 = v10;
  v158 = v118;
  v159 = v25;
  v160 = v133;
  v161 = v116;
  v162 = v115;
  v163 = v24;
  *&v164[3] = *&v196[3];
  *v164 = *v196;
  v165 = v23;
  v166 = v22;
  v167 = v21;
  v168 = v117;
  v169 = BYTE4(v117);
  v170 = v106;
  v172 = v195;
  v171 = v194;
  v173 = v113;
  v174 = v105;
  *&v175[3] = *&v193[3];
  *v175 = *v193;
  v176 = v112;
  v177 = v111;
  v178 = v110;
  v179 = v109;
  v180 = v129;
  v181 = v19;
  v182 = v20;
  v183 = v108;
  v184 = IsVoiceOverRunning;
  v185 = v114;
  v186 = v128;
  v187 = v126;
  v188 = v104;
  v189 = v125;
  v190 = v107;
  v191 = 0xD000000000000017;
  v192 = 0x8000000257EFA680;
  return sub_257C63C04(&v138);
}

uint64_t sub_257D61520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_257D734B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_257D61554(uint64_t a1)
{
  v2 = sub_257D72A3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_257D61590(uint64_t a1)
{
  v2 = sub_257D72A3C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_257D61600()
{
  result = sub_257BE816C(MEMORY[0x277D84F90]);
  qword_2815483B8 = result;
  return result;
}

double sub_257D61650()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return v1;
}

uint64_t sub_257D616BC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a1 = v3;
  return result;
}

uint64_t sub_257D6173C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257D617B0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a1 = v3;
  return result;
}

uint64_t sub_257D61830()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257D618E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (!*a1)
  {
    goto LABEL_8;
  }

  sub_257ECF500();
  sub_257ED0280();
  if (!*(v3 + 16) || (v4 = sub_257C03F28(v7), (v5 & 1) == 0))
  {
    sub_257C09D10(v7);
LABEL_8:
    v8 = 0u;
    v9 = 0u;
    goto LABEL_9;
  }

  sub_257BE41F4(*(v3 + 56) + 32 * v4, &v8);
  sub_257C09D10(v7);
  if (!*(&v9 + 1))
  {
LABEL_9:
    result = sub_257BE4084(&v8, &unk_27F8F62F0);
    goto LABEL_10;
  }

  type metadata accessor for UIContentSizeCategory(0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_10:
    *a2 = 0;
  }

  return result;
}

uint64_t sub_257D61A60(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), const char *a6)
{
  sub_257D71AA4(*a1, a5, a6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257D61CE8(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v197 = a4;
  v198 = a5;
  v210 = a3;
  v209 = a2;
  v211 = a1;
  v7 = sub_257ECF190();
  v200 = *(v7 - 8);
  v201 = v7;
  MEMORY[0x28223BE20](v7);
  v199 = &v153[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v178 = sub_257ECDA30();
  v223 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v179 = &v153[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v222 = sub_257ECF120();
  v10 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v219 = &v153[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v196 = dispatch_group_create();
  dispatch_group_enter(v196);
  v218 = v5 + 11;
  swift_beginAccess();
  v12 = v5[12];
  v13 = v5[13];
  v232 = v5[11];
  v233 = v12;
  *&v234[0] = v13;
  v14 = qword_2815447E0;

  if (v14 != -1)
  {
    goto LABEL_60;
  }

  while (1)
  {
    v16 = qword_2815447E8;
    MEMORY[0x28223BE20](v15);
    *&v153[-16] = &v232;
    v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
    v220 = v16;
    v17 = 0;
    sub_257ECFD50();

    v19 = 0;
    v21 = v228[0] + 64;
    v20 = *(v228[0] + 64);
    v216 = v228[0];
    v22 = 1 << *(v228[0] + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & v20;
    v194 = v6 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
    v193 = v6 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionPitchThreshold;
    v192 = v6 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionPitchThreshold;
    v191 = v6 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingPitchThreshold;
    v190 = v6 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSeatOccupancy;
    v189 = v6 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__backTapEnabled;
    v188 = v6 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectLanguages;
    v187 = v6 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionColor;
    v186 = v6 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionAttributes;
    v185 = v6 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
    v184 = v6 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__textDetectionFlashlightEnabled;
    v183 = v6 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakFlashlightEnabled;
    v182 = v6 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__outlinePointSpeak;
    v181 = v6 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakColor;
    v217 = v6;
    v180 = v6 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakFingerLocation;
    v25 = (v22 + 63) >> 6;
    v202 = (v227 + 1);
    v214 = (v228 + 1);
    v215 = (v10 + 8);
    v205 = v236;
    v26 = v211;
    v195 = 0x8000000257EFBEB0;
    v6 = v209;
    v27 = v211 == 0xD000000000000010 && 0x8000000257EFBEB0 == v209;
    v28 = v27;
    v204 = v28;
    v177 = (v223 + 8);
    *&v18 = 67109120;
    v176 = v18;
    v29 = v222;
    v30 = v219;
    v212 = v25;
    v213 = v228[0] + 64;
    if (v24)
    {
      break;
    }

LABEL_13:
    while (1)
    {
      v32 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v32 >= v25)
      {

        v144 = v196;
        dispatch_group_leave(v196);
        sub_257BD2C2C(0, &qword_281543F10);
        v145 = v29;
        v223 = sub_257ECFD30();
        v146 = swift_allocObject();
        *(v146 + 16) = 1;
        v148 = v197;
        v147 = v198;
        *(v146 + 24) = v197;
        *(v146 + 32) = v147;
        *&v234[1] = sub_257D71DCC;
        *(&v234[1] + 1) = v146;
        v232 = MEMORY[0x277D85DD0];
        v233 = 1107296256;
        *&v234[0] = sub_257D231C0;
        *(&v234[0] + 1) = &block_descriptor_37;
        v149 = _Block_copy(&v232);
        sub_257BBD7E4(v148);
        v150 = v199;
        sub_257ECF150();
        v228[0] = MEMORY[0x277D84F90];
        sub_257D7318C(&qword_281544090, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
        sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
        sub_257ED0180();
        v151 = v223;
        sub_257ECFC90();
        _Block_release(v149);

        (*v215)(v30, v145);
        (*(v200 + 8))(v150, v201);
      }

      v24 = *(v21 + 8 * v32);
      ++v19;
      if (v24)
      {
        v19 = v32;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    v15 = swift_once();
  }

LABEL_17:
  while (1)
  {
    v221 = (v24 - 1) & v24;
    v33 = __clz(__rbit64(v24)) | (v19 << 6);
    v34 = (*(v216 + 48) + 16 * v33);
    v10 = *v34;
    v35 = v34[1];
    v36 = (*(v216 + 56) + 296 * v33);
    memcpy(v231, v36, sizeof(v231));
    memcpy(v228, v36, 0x128uLL);
    v232 = v10;
    v233 = v35;
    memcpy(v234, v228, 0x128uLL);

    sub_257C09C58(v231, v228);
    sub_257BE401C(&v232, v228, &qword_27F8F8980);

    v37 = v234[0];
    v230[0] = *(v234 + 1);
    *(v230 + 15) = v234[1];
    LODWORD(v223) = LOBYTE(v234[2]);
    memcpy(v229, &v234[2] + 1, sizeof(v229));
    v38 = v10 == v26 && v35 == v6;
    if (!v38 && (sub_257ED0640() & 1) == 0)
    {
      break;
    }

    if (v210)
    {
      sub_257BE4084(&v232, &qword_27F8F8980);
      LOBYTE(v228[0]) = v37;
      v31 = v214;
      *v214 = v230[0];
      *(v31 + 15) = *(v230 + 15);
      LOBYTE(v228[4]) = v223;
      memcpy(&v228[4] + 1, v229, 0x107uLL);
      sub_257C63C04(v228);
      v30 = v219;
      v25 = v212;
      v21 = v213;
      v24 = v221;
      v29 = v222;
      if (!v221)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v235 = 1;
      v39 = v205;
      *v205 = v230[0];
      *(v39 + 15) = *(v230 + 15);
      v239 = v223;
      memcpy(v240, v229, sizeof(v240));
      v40 = swift_beginAccess();
      v41 = v217;
      v226[0] = v217[11];
      *&v226[1] = *(v217 + 6);
      MEMORY[0x28223BE20](v40);
      *&v153[-16] = v226;
      sub_257C09C58(&v235, v228);
      sub_257C09C58(&v235, v228);
      sub_257ECFD50();
      v42 = v228[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v228[0] = v42;
      sub_257EC6FE8(&v235, v10, v35, isUniquelyReferenced_nonNull_native);
      v206 = v35;
      v207 = v228[0];
      v30 = v219;
      v44 = sub_257ECF110();
      MEMORY[0x28223BE20](v44);
      *&v153[-16] = v228;
      *&v153[-8] = v218;
      sub_257ECFD40();
      v45 = v10;
      v46 = *v215;
      v10 = v222;
      (*v215)(v30, v222);

      swift_endAccess();
      sub_257C63C04(&v235);
      if (!v41[5])
      {
        goto LABEL_62;
      }

      v47 = v41[8];
      sub_257BE401C(&v232, v228, &qword_27F8F8980);
      sub_257ECC3F0();
      sub_257C63C04(v234);
      swift_beginAccess();
      *&v227[0] = v45;
      *(&v227[0] + 1) = v206;
      v48 = sub_257ECF110();
      v207 = v153;
      MEMORY[0x28223BE20](v48);
      *&v153[-16] = v227;
      *&v153[-8] = v47 + 120;
      sub_257ECFD40();
      v46(v30, v10);

      swift_endAccess();

      v6 = v209;
      v26 = v211;
      v29 = v10;
      if (v204 || (sub_257ED0640() & 1) != 0)
      {
        sub_257BE4084(&v232, &qword_27F8F8980);
        LOBYTE(v228[0]) = 1;
        v49 = v214;
        *v214 = v230[0];
        *(v49 + 15) = *(v230 + 15);
        LOBYTE(v228[4]) = v223;
        memcpy(&v228[4] + 1, v229, 0x107uLL);
        sub_257C63C04(v228);
      }

      else
      {
        v66 = v217;
        if (!v217[5])
        {
          goto LABEL_69;
        }

        v203 = v46;
        v67 = *&v236[7];
        swift_getKeyPath();
        swift_getKeyPath();
        v228[0] = v67;
        sub_257ECC3F0();
        sub_257ECDD70();
        if (!v66[5])
        {
          goto LABEL_67;
        }

        v68 = v238;
        swift_getKeyPath();
        swift_getKeyPath();
        v228[0] = v68;
        sub_257ECC3F0();
        sub_257ECDD70();
        if (!v66[5])
        {
          goto LABEL_65;
        }

        v69 = v237;
        swift_getKeyPath();
        swift_getKeyPath();
        v228[0] = v69;
        sub_257ECC3F0();
        sub_257ECDD70();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v228[0]) = v223;
        sub_257ECC3F0();
        sub_257ECDD70();
        if (!v66[5])
        {
          goto LABEL_63;
        }

        v70 = *&v240[15];
        v71 = v66[8] + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__flashlightPercentage;
        swift_beginAccess();
        LODWORD(v227[0]) = v70;
        sub_257ECC3F0();
        v72 = sub_257ECF110();
        MEMORY[0x28223BE20](v72);
        *&v153[-16] = v227;
        *&v153[-8] = v71;
        sub_257ECFD40();
        v207 = v17;
        v73 = v222;
        v74 = v203;
        v203(v30, v222);
        swift_endAccess();

        if (!v66[5])
        {
          goto LABEL_70;
        }

        v75 = v30;
        v76 = v240[20];
        v77 = v66[8] + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cameraType;
        v206 = v66[8];
        swift_beginAccess();
        LOBYTE(v227[0]) = v76;
        sub_257ECC3F0();
        v78 = sub_257ECF110();
        v175 = v153;
        MEMORY[0x28223BE20](v78);
        *&v153[-16] = v227;
        *&v153[-8] = v77;
        v79 = v207;
        sub_257ECFD40();
        v74(v75, v73);
        swift_endAccess();

        if (!v66[5])
        {
          goto LABEL_68;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v228[0]) = v76;
        sub_257ECC3F0();
        sub_257ECDD70();
        if (!v66[5])
        {
          goto LABEL_66;
        }

        v80 = v240[19];
        v81 = v66[8] + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__mode;
        swift_beginAccess();
        v82 = v80;
        LOBYTE(v227[0]) = v80;
        sub_257ECC3F0();
        v10 = v219;
        v83 = sub_257ECF110();
        MEMORY[0x28223BE20](v83);
        *&v153[-16] = v227;
        *&v153[-8] = v81;
        sub_257ECFD40();
        v206 = v79;
        v203(v10, v222);
        swift_endAccess();

        if (!v66[5])
        {
          goto LABEL_64;
        }

        v161 = *&v240[7];
        v162 = *&v240[55];
        v163 = *&v240[79];
        v164 = *&v240[87];
        v207 = *&v240[215];
        v166 = *&v240[231];
        v167 = *&v240[223];
        v165 = *&v240[239];
        v171 = *&v240[135];
        v168 = *&v240[151];
        v174 = *&v240[159];
        v84 = v240[39];
        v85 = v240[40];
        v86 = v240[41];
        v154 = v240[43];
        v155 = v240[44];
        v156 = v240[42];
        v157 = v240[45];
        v87 = *&v240[47];
        v88 = *&v240[63];
        v89 = *&v240[71];
        v158 = v240[95];
        v159 = v240[127];
        v160 = v240[128];
        v241 = *&v240[103];
        v242 = *&v240[119];
        v169 = v240[129];
        v170 = v240[143];
        v172 = v240[210];
        v173 = v240[208];
        LODWORD(v175) = v240[207];
        v243 = *&v240[183];
        v244 = *&v240[199];
        v245 = v240[209];
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v228[0]) = v82;
        sub_257ECC3F0();
        sub_257ECDD70();
        sub_257D71AA4(v84, MEMORY[0x277CE6800], "Setting peopleDetection to %{BOOL}d");
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v228[0]) = v84;
        sub_257ECC3F0();
        sub_257ECDD70();
        sub_257D71AA4(v85, MEMORY[0x277CE67F8], "Setting doorDetection to %{BOOL}d");
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v228[0]) = v85;
        sub_257ECC3F0();
        sub_257ECDD70();
        sub_257D71AA4(v86, MEMORY[0x277CE6808], "Setting objectUnderstanding to %{BOOL}d");
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v228[0]) = v86;
        sub_257ECC3F0();
        sub_257ECDD70();
        v90 = MEMORY[0x277CE67E8];
        v91 = v154;
        sub_257D71AA4(v154, MEMORY[0x277CE67E8], "Setting pointSpeakEnabled to %{BOOL}d");
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v228[0]) = v91;
        sub_257ECC3F0();
        sub_257ECDD70();
        v92 = v155;
        sub_257D71AA4(v155, v90, "Setting textDetectionEnabled to %{BOOL}d");
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v228[0]) = v92;
        sub_257ECC3F0();
        sub_257ECDD70();
        v93 = v156;
        sub_257D71AA4(v156, MEMORY[0x277CE67F0], "Setting imageCaption to %{BOOL}d");
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v228[0]) = v93;
        sub_257ECC3F0();
        sub_257ECDD70();
        v94 = v194;
        swift_beginAccess();
        LOBYTE(v227[0]) = v157;
        v95 = sub_257ECF110();
        MEMORY[0x28223BE20](v95);
        *&v153[-16] = v227;
        *&v153[-8] = v94;
        v17 = v206;
        sub_257ECFD40();
        v96 = v222;
        v97 = v203;
        v203(v10, v222);
        swift_endAccess();
        v98 = v193;
        swift_beginAccess();
        *&v227[0] = v87;
        v99 = sub_257ECF110();
        MEMORY[0x28223BE20](v99);
        *&v153[-16] = v227;
        *&v153[-8] = v98;
        sub_257ECFD40();
        v97(v10, v96);
        swift_endAccess();
        v100 = v192;
        swift_beginAccess();
        *&v227[0] = v88;
        v101 = sub_257ECF110();
        MEMORY[0x28223BE20](v101);
        *&v153[-16] = v227;
        *&v153[-8] = v100;
        sub_257ECFD40();
        v102 = v203;
        v203(v10, v96);
        swift_endAccess();
        v103 = v191;
        swift_beginAccess();
        *&v227[0] = v89;
        v104 = sub_257ECF110();
        MEMORY[0x28223BE20](v104);
        *&v153[-16] = v227;
        *&v153[-8] = v103;
        sub_257ECFD40();
        v102(v10, v96);
        swift_endAccess();
        v105 = v190;
        swift_beginAccess();
        LOBYTE(v227[0]) = v158;
        v106 = sub_257ECF110();
        MEMORY[0x28223BE20](v106);
        *&v153[-16] = v227;
        *&v153[-8] = v105;
        sub_257ECFD40();
        v102(v10, v96);
        swift_endAccess();
        v107 = v189;
        swift_beginAccess();
        LOBYTE(v227[0]) = v159;
        v108 = sub_257ECF110();
        MEMORY[0x28223BE20](v108);
        *&v153[-16] = v227;
        *&v153[-8] = v107;
        sub_257ECFD40();
        v102(v10, v96);
        swift_endAccess();
        v109 = v188;
        swift_beginAccess();
        LOBYTE(v227[0]) = v160;
        v110 = sub_257ECF110();
        MEMORY[0x28223BE20](v110);
        *&v153[-16] = v227;
        *&v153[-8] = v109;
        sub_257ECFD40();
        v102(v10, v96);
        swift_endAccess();
        sub_257D5874C(v161);
        sub_257D59094(v162, 1);
        sub_257D523FC(v163, 1);
        sub_257D4F488(v164, 1);
        sub_257D53B38(v207, v167, v166, v165);
        sub_257D59960(v168, 1);
        v111 = v187;
        swift_beginAccess();
        v227[0] = v241;
        *&v227[1] = v242;
        v112 = sub_257ECF110();
        MEMORY[0x28223BE20](v112);
        *&v153[-16] = v227;
        *&v153[-8] = v111;
        sub_257ECFD40();
        v102(v10, v96);
        swift_endAccess();
        v113 = v186;
        swift_beginAccess();
        LOBYTE(v227[0]) = v169;
        v114 = sub_257ECF110();
        MEMORY[0x28223BE20](v114);
        *&v153[-16] = v227;
        *&v153[-8] = v113;
        sub_257ECFD40();
        v102(v10, v96);
        swift_endAccess();
        sub_257D52CC8(v171);
        v115 = v185;
        swift_beginAccess();
        LOBYTE(v227[0]) = v170;
        v116 = sub_257ECF110();
        MEMORY[0x28223BE20](v116);
        *&v153[-16] = v227;
        *&v153[-8] = v115;
        sub_257ECFD40();
        v117 = v222;
        v102(v10, v222);
        swift_endAccess();
        v118 = v184;
        swift_beginAccess();
        LOBYTE(v227[0]) = v172;
        v119 = sub_257ECF110();
        MEMORY[0x28223BE20](v119);
        *&v153[-16] = v227;
        *&v153[-8] = v118;
        sub_257ECFD40();
        v102(v10, v117);
        swift_endAccess();
        sub_257D5A210(v174, 1);
        v120 = v183;
        swift_beginAccess();
        LOBYTE(v227[0]) = v173;
        v121 = sub_257ECF110();
        MEMORY[0x28223BE20](v121);
        *&v153[-16] = v227;
        *&v153[-8] = v120;
        sub_257ECFD40();
        v122 = v222;
        v123 = v203;
        v203(v10, v222);
        swift_endAccess();
        v124 = v182;
        swift_beginAccess();
        LOBYTE(v227[0]) = v175;
        v125 = sub_257ECF110();
        MEMORY[0x28223BE20](v125);
        *&v153[-16] = v227;
        *&v153[-8] = v124;
        sub_257ECFD40();
        v126 = v122;
        v127 = v123;
        v123(v10, v126);
        swift_endAccess();
        v128 = v181;
        swift_beginAccess();
        v227[0] = v243;
        *&v227[1] = v244;
        v129 = sub_257ECF110();
        MEMORY[0x28223BE20](v129);
        *&v153[-16] = v227;
        *&v153[-8] = v128;
        sub_257ECFD40();
        v130 = v222;
        v127(v10, v222);
        swift_endAccess();
        v131 = v180;
        swift_beginAccess();
        LOBYTE(v227[0]) = v245;
        v132 = sub_257ECF110();
        MEMORY[0x28223BE20](v132);
        *&v153[-16] = v227;
        *&v153[-8] = v131;
        sub_257ECFD40();
        v127(v10, v130);
        swift_endAccess();
        v29 = v130;
        v30 = v10;
        if (!sub_257C592D0(2u, v207))
        {
          if (!v217[5])
          {
            goto LABEL_71;
          }

          v10 = v130;
          swift_getKeyPath();
          swift_getKeyPath();
          sub_257ECC3F0();
          sub_257ECDD60();

          if (LOBYTE(v228[0]) == 1)
          {
            v133 = v217[5];
            if (!v133)
            {
              goto LABEL_72;
            }

            v10 = v217[7];
            sub_257ECC3F0();
            sub_257ECC3F0();
            sub_257ECC3F0();
            sub_257ECC3F0();
            sub_257ECC3F0();
            sub_257ECC3F0();
            sub_257BE4084(&v232, &qword_27F8F8980);
            LOBYTE(v228[0]) = 1;
            v134 = v214;
            *v214 = v230[0];
            *(v134 + 15) = *(v230 + 15);
            LOBYTE(v228[4]) = v223;
            memcpy(&v228[4] + 1, v229, 0x107uLL);
            sub_257C63C04(v228);
            sub_257ECC3F0();
            sub_257D71D4C(v133);
            sub_257ECD440();
            v135 = sub_257ECDA20();
            v136 = sub_257ECFBD0();
            if (os_log_type_enabled(v135, v136))
            {
              v137 = swift_slowAlloc();
              *v137 = v176;
              _os_log_impl(&dword_257BAC000, v135, v136, "Setting detectionModeOn to %{BOOL}d", v137, 8u);
              MEMORY[0x259C74820](v137, -1, -1);
            }

            (*v177)(v179, v178);
            swift_getKeyPath();
            swift_getKeyPath();
            LOBYTE(v227[0]) = 0;
            sub_257ECDD70();
            v29 = v222;
            v30 = v219;
            v6 = v209;
            goto LABEL_54;
          }
        }

        sub_257BE4084(&v232, &qword_27F8F8980);
        LOBYTE(v228[0]) = 1;
        v138 = v214;
        *v214 = v230[0];
        *(v138 + 15) = *(v230 + 15);
        LOBYTE(v228[4]) = v223;
        memcpy(&v228[4] + 1, v229, 0x107uLL);
        sub_257C63C04(v228);
        v6 = v209;
        v26 = v211;
      }

LABEL_55:
      v25 = v212;
      v21 = v213;
      v24 = v221;
      if (!v221)
      {
        goto LABEL_13;
      }
    }
  }

  LOBYTE(v227[0]) = 0;
  v50 = v202;
  *v202 = v230[0];
  *(v50 + 15) = *(v230 + 15);
  v51 = v223;
  LOBYTE(v227[2]) = v223;
  memcpy(&v227[2] + 1, v229, 0x107uLL);
  LOBYTE(v228[0]) = 0;
  v52 = v214;
  *v214 = v230[0];
  *(v52 + 15) = *(v230 + 15);
  LOBYTE(v228[4]) = v51;
  memcpy(&v228[4] + 1, v229, 0x107uLL);
  sub_257C09C58(v227, v226);
  sub_257C63C04(v228);
  v53 = swift_beginAccess();
  v224 = v217[11];
  v225 = *(v217 + 6);
  MEMORY[0x28223BE20](v53);
  *&v153[-16] = &v224;
  sub_257C09C58(v227, v226);
  sub_257ECFD50();
  v54 = v226[0];
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v224 = v54;
  v56 = sub_257C03F6C(v10, v35);
  v58 = v54[2];
  v59 = (v57 & 1) == 0;
  v60 = __OFADD__(v58, v59);
  v61 = v58 + v59;
  if (v60)
  {
    goto LABEL_59;
  }

  v62 = v57;
  if (v54[3] < v61)
  {
    sub_257EC3844(v61, v55);
    v56 = sub_257C03F6C(v10, v35);
    if ((v62 & 1) != (v63 & 1))
    {
      goto LABEL_73;
    }

LABEL_32:
    if (v62)
    {
      goto LABEL_33;
    }

    goto LABEL_51;
  }

  if (v55)
  {
    goto LABEL_32;
  }

  v139 = v56;
  sub_257C083F0();
  v56 = v139;
  if (v62)
  {
LABEL_33:
    v64 = v224;
    v65 = (v224[7] + 296 * v56);
    memcpy(v226, v65, sizeof(v226));
    memcpy(v65, v227, 0x128uLL);
    sub_257C63C04(v226);
LABEL_53:
    v226[0] = v64;
    v30 = v219;
    v143 = sub_257ECF110();
    MEMORY[0x28223BE20](v143);
    *&v153[-16] = v226;
    *&v153[-8] = v218;
    sub_257ECFD40();
    v29 = v222;
    (*v215)(v30, v222);

    swift_endAccess();
    sub_257BE4084(&v232, &qword_27F8F8980);
    sub_257C63C04(v227);
LABEL_54:
    v26 = v211;
    goto LABEL_55;
  }

LABEL_51:
  v64 = v224;
  v224[(v56 >> 6) + 8] |= 1 << v56;
  v140 = (v64[6] + 16 * v56);
  *v140 = v10;
  v140[1] = v35;
  memcpy((v64[7] + 296 * v56), v227, 0x128uLL);
  v141 = v64[2];
  v60 = __OFADD__(v141, 1);
  v142 = v141 + 1;
  if (!v60)
  {
    v64[2] = v142;

    goto LABEL_53;
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  result = sub_257ED06C0();
  __break(1u);
  return result;
}

uint64_t sub_257D64014()
{
  swift_beginAccess();
  v1 = v0[12];
  v2 = v0[13];
  v22[0] = v0[11];
  v22[1] = v1;
  v22[2] = v2;
  v3 = qword_2815447E0;

  if (v3 != -1)
  {
    v4 = swift_once();
  }

  MEMORY[0x28223BE20](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
  sub_257ECFD50();

  if (*(v21[0] + 16))
  {
    sub_257C03F6C(0xD000000000000010, 0x8000000257EFBEB0);
    v6 = v5;

    if (v6)
    {
      return result;
    }
  }

  else
  {
  }

  sub_257D54F8C(v22);
  swift_beginAccess();
  sub_257C09C58(v22, v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21[0] = v0[14];
  v0[14] = 0x8000000000000000;
  sub_257EC6FE8(v22, 0xD000000000000010, 0x8000000257EFBEB0, isUniquelyReferenced_nonNull_native);
  v0[14] = v21[0];
  swift_endAccess();
  sub_257C63C04(v22);
  swift_beginAccess();
  v9 = v0[14];
  if (!*(v9 + 16))
  {
    return swift_endAccess();
  }

  v10 = sub_257C03F6C(0xD000000000000010, 0x8000000257EFBEB0);
  if ((v11 & 1) == 0)
  {
    return swift_endAccess();
  }

  v12 = *(v9 + 56) + 296 * v10;
  memcpy(v16, v12, sizeof(v16));
  v13 = v16[33];
  memcpy(v20, v12, sizeof(v20));
  v19 = *(v12 + 280);
  swift_endAccess();
  sub_257C09C58(v16, v21);

  v15 = sub_257D715D0(v14, v13);

  memcpy(v17, v20, 0x110uLL);
  v17[34] = v15;
  *&v17[35] = v19;
  memcpy(v21, v17, 0x128uLL);
  sub_257C09C58(v17, v18);
  sub_257D58DA0(0xD000000000000010, 0x8000000257EFBEB0, v21, 0);
  memcpy(v18, v21, sizeof(v18));
  sub_257C63C04(v18);
  memcpy(v21, v20, 0x110uLL);
  v21[34] = v15;
  *&v21[35] = v19;
  return sub_257C63C04(v21);
}

uint64_t sub_257D64370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_257ECF120();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257D54F8C(v36);
  swift_beginAccess();

  sub_257C09C58(v36, v35);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35[0] = *(v4 + 112);
  *(v4 + 112) = 0x8000000000000000;
  sub_257EC6FE8(v36, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v4 + 112) = v35[0];
  swift_endAccess();
  sub_257C63C04(v36);
  swift_beginAccess();
  v15 = *(v4 + 112);
  if (!*(v15 + 16))
  {
    return swift_endAccess();
  }

  v16 = sub_257C03F6C(a1, a2);
  if ((v17 & 1) == 0)
  {
    return swift_endAccess();
  }

  v30 = v11;
  v18 = *(v15 + 56) + 296 * v16;
  memcpy(v35, v18, sizeof(v35));
  memcpy(v34, (v18 + 2), sizeof(v34));
  v19 = v35[35];
  v20 = v35[36];
  swift_endAccess();
  if (a4)
  {
    sub_257C09C58(v35, v33);
  }

  else
  {
    result = sub_257C09C58(v35, v33);
    a3 = v19;
    a4 = v20;
  }

  v29 = a4;
  if (*(v5 + 40))
  {
    v28 = a3;
    v22 = *(v5 + 64);
    swift_beginAccess();
    v32[0] = a1;
    v32[1] = a2;
    v23 = qword_2815447E0;

    sub_257ECC3F0();
    if (v23 != -1)
    {
      swift_once();
    }

    v24 = sub_257ECF110();
    MEMORY[0x28223BE20](v24);
    *(&v27 - 2) = v32;
    *(&v27 - 1) = v22 + 120;
    sub_257ECFD40();
    (*(v30 + 8))(v13, v10);

    swift_endAccess();

    LOWORD(v31[0]) = 257;
    memcpy(v31 + 2, v34, 0x116uLL);
    v25 = v28;
    v26 = v29;
    v31[35] = v28;
    v31[36] = v29;
    memcpy(v33, v31, sizeof(v33));
    sub_257C09C58(v31, v32);
    sub_257D6471C(a1, a2, v33, 1);
    memcpy(v32, v33, sizeof(v32));
    sub_257C63C04(v32);
    LOWORD(v33[0]) = 257;
    memcpy(v33 + 2, v34, 0x116uLL);
    v33[35] = v25;
    v33[36] = v26;
    return sub_257C63C04(v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_257D6471C(uint64_t a1, uint64_t a2, char *__src, char a4)
{
  v5 = v4;
  result = memcpy(v192, __src, 0x128uLL);
  v191[0] = *(__src + 33);
  *(v191 + 3) = *(__src + 9);
  v189 = *(__src + 54);
  v190 = *(__src + 35);
  v11 = HIBYTE(v192[9]);
  v188[0] = *(__src + 129);
  *(v188 + 3) = *(__src + 33);
  v12 = *(__src + 163);
  v187 = __src[167];
  v186 = v12;
  v13 = *(__src + 177);
  *(v185 + 3) = *(__src + 45);
  v185[0] = v13;
  v14 = HIDWORD(v192[30]);
  v184 = *(__src + 280);
  if (!*(v5 + 40))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v146 = a4;
  v147 = a2;
  v148 = v192[0];
  v15 = (*(v5 + 64) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__zoomPercentage);
  swift_beginAccess();
  v16 = v15[1];
  v17 = v15[2];
  v182[0] = *v15;
  v182[1] = v16;
  v182[2] = v17;
  sub_257ECC3F0();

  v18 = sub_257C09C58(v192, v183);
  if (qword_2815447E0 != -1)
  {
    v18 = swift_once();
  }

  MEMORY[0x28223BE20](v18);
  sub_257ECFD50();

  if (!*(v5 + 40))
  {
    goto LABEL_13;
  }

  v19 = *&v183[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD60();

  if (!*(v5 + 40))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v145 = v14;
  v20 = *&v183[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD60();

  v21 = *&v183[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (!*(v5 + 40))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v144 = v183[0];
  v22 = (*(v5 + 64) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__storedSelectedFilters);
  v23 = swift_beginAccess();
  v24 = v22[1];
  v25 = v22[2];
  *&v183[0] = *v22;
  *(&v183[0] + 1) = v24;
  *&v183[1] = v25;
  MEMORY[0x28223BE20](v23);
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7F28);
  sub_257ECFD50();

  if (!*(v5 + 40))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD60();

  if (!*(v5 + 40))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v143 = v182[0];
  v180 = v183[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD60();

  if (!*(v5 + 40))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v179 = v183[0];
  v26 = *(v5 + 64) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__mode;
  v27 = swift_beginAccess();
  v28 = *(v26 + 8);
  v29 = *(v26 + 16);
  *&v183[0] = *v26;
  *(&v183[0] + 1) = v28;
  LOBYTE(v183[1]) = v29;
  MEMORY[0x28223BE20](v27);
  sub_257ECC3F0();

  sub_257ECFD50();

  v178 = v182[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v177 = v183[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v176 = v183[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v175 = v183[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v174 = v183[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v173 = v183[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v172 = v183[0];
  v30 = v5 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
  v31 = swift_beginAccess();
  v32 = *(v30 + 8);
  v33 = *(v30 + 16);
  *&v183[0] = *v30;
  *(&v183[0] + 1) = v32;
  LOBYTE(v183[1]) = v33;
  MEMORY[0x28223BE20](v31);

  sub_257ECFD50();

  v171 = v182[0];
  v34 = (v5 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionPitchThreshold);
  v35 = swift_beginAccess();
  v36 = v34[1];
  v37 = v34[2];
  *&v183[0] = *v34;
  *(&v183[0] + 1) = v36;
  *&v183[1] = v37;
  MEMORY[0x28223BE20](v35);

  sub_257ECFD50();

  v38 = v182[0];
  v39 = (v5 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPeopleDetectionFeedbacks);
  v40 = swift_beginAccess();
  v41 = v39[1];
  v42 = v39[2];
  *&v183[0] = *v39;
  *(&v183[0] + 1) = v41;
  *&v183[1] = v42;
  MEMORY[0x28223BE20](v40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AD8);
  sub_257ECFD50();

  v170 = v182[0];
  v43 = (v5 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionPitchThreshold);
  v44 = swift_beginAccess();
  v45 = v43[1];
  v46 = v43[2];
  *&v183[0] = *v43;
  *(&v183[0] + 1) = v45;
  *&v183[1] = v46;
  MEMORY[0x28223BE20](v44);

  sub_257ECFD50();

  v47 = v182[0];
  v48 = (v5 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingPitchThreshold);
  v49 = swift_beginAccess();
  v50 = v48[1];
  v51 = v48[2];
  *&v183[0] = *v48;
  *(&v183[0] + 1) = v50;
  *&v183[1] = v51;
  MEMORY[0x28223BE20](v49);

  sub_257ECFD50();

  v142 = v182[0];
  v52 = (v5 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedDoorDetectionFeedbacks);
  v53 = swift_beginAccess();
  v54 = v52[1];
  v55 = v52[2];
  *&v183[0] = *v52;
  *(&v183[0] + 1) = v54;
  *&v183[1] = v55;
  MEMORY[0x28223BE20](v53);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5880);
  sub_257ECFD50();

  v169 = v182[0];
  v56 = (v5 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedObjectUnderstandingFeedbacks);
  v57 = swift_beginAccess();
  v58 = v56[1];
  v59 = v56[2];
  *&v183[0] = *v56;
  *(&v183[0] + 1) = v58;
  *&v183[1] = v59;
  MEMORY[0x28223BE20](v57);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90);
  sub_257ECFD50();

  v168 = v182[0];
  v60 = v5 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSeatOccupancy;
  v61 = swift_beginAccess();
  v62 = *(v60 + 8);
  v63 = *(v60 + 16);
  *&v183[0] = *v60;
  *(&v183[0] + 1) = v62;
  LOBYTE(v183[1]) = v63;
  MEMORY[0x28223BE20](v61);

  sub_257ECFD50();

  v167 = v182[0];
  v64 = v5 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionColor;
  v65 = swift_beginAccess();
  v66 = *(v64 + 8);
  v67 = *(v64 + 32);
  *&v183[0] = *v64;
  *(&v183[0] + 1) = v66;
  v183[1] = *(v64 + 16);
  *&v183[2] = v67;
  MEMORY[0x28223BE20](v65);

  sub_257ECFD50();

  v149 = v182[0];
  v163 = v182[1];
  v166 = v182[2];
  v68 = v5 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionAttributes;
  v69 = swift_beginAccess();
  v70 = *(v68 + 8);
  v71 = *(v68 + 16);
  *&v183[0] = *v68;
  *(&v183[0] + 1) = v70;
  LOBYTE(v183[1]) = v71;
  MEMORY[0x28223BE20](v69);

  sub_257ECFD50();

  v165 = v182[0];
  v72 = (v5 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedAttributes);
  v73 = swift_beginAccess();
  v74 = v72[1];
  v75 = v72[2];
  *&v183[0] = *v72;
  *(&v183[0] + 1) = v74;
  *&v183[1] = v75;
  MEMORY[0x28223BE20](v73);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5A90);
  sub_257ECFD50();

  v164 = v182[0];
  v76 = v5 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
  v77 = swift_beginAccess();
  v78 = *(v76 + 8);
  v79 = *(v76 + 16);
  *&v183[0] = *v76;
  *(&v183[0] + 1) = v78;
  LOBYTE(v183[1]) = v79;
  MEMORY[0x28223BE20](v77);

  sub_257ECFD50();

  v162 = v182[0];
  v80 = (v5 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedImageCaptionFeedbacks);
  v81 = swift_beginAccess();
  v82 = v80[1];
  v83 = v80[2];
  *&v183[0] = *v80;
  *(&v183[0] + 1) = v82;
  *&v183[1] = v83;
  MEMORY[0x28223BE20](v81);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8470);
  sub_257ECFD50();

  v161 = v182[0];
  v84 = v5 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__backTapEnabled;
  v85 = swift_beginAccess();
  v86 = *(v84 + 8);
  v87 = *(v84 + 16);
  *&v183[0] = *v84;
  *(&v183[0] + 1) = v86;
  LOBYTE(v183[1]) = v87;
  MEMORY[0x28223BE20](v85);

  sub_257ECFD50();

  v160 = v182[0];
  v88 = v5 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectLanguages;
  v89 = swift_beginAccess();
  v90 = *(v88 + 8);
  v91 = *(v88 + 16);
  *&v183[0] = *v88;
  *(&v183[0] + 1) = v90;
  LOBYTE(v183[1]) = v91;
  MEMORY[0x28223BE20](v89);

  sub_257ECFD50();

  v159 = v182[0];
  v92 = (v5 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__mainControls);
  v93 = swift_beginAccess();
  v94 = v92[1];
  v95 = v92[2];
  *&v183[0] = *v92;
  *(&v183[0] + 1) = v94;
  *&v183[1] = v95;
  MEMORY[0x28223BE20](v93);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20);
  sub_257ECFD50();

  v158 = v182[0];
  v96 = (v5 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__primaryControls);
  v97 = swift_beginAccess();
  v98 = v96[1];
  v99 = v96[2];
  *&v183[0] = *v96;
  *(&v183[0] + 1) = v98;
  *&v183[1] = v99;
  MEMORY[0x28223BE20](v97);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0);
  sub_257ECFD50();

  v157 = v182[0];
  v100 = (v5 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__secondaryControls);
  v101 = swift_beginAccess();
  v102 = v100[1];
  v103 = v100[2];
  *&v183[0] = *v100;
  *(&v183[0] + 1) = v102;
  *&v183[1] = v103;
  MEMORY[0x28223BE20](v101);

  sub_257ECFD50();

  v156 = v182[0];
  v155 = sub_257D53928();

  v104 = v5 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__textDetectionFlashlightEnabled;
  v105 = swift_beginAccess();
  v106 = *(v104 + 8);
  v107 = *(v104 + 16);
  *&v183[0] = *v104;
  *(&v183[0] + 1) = v106;
  LOBYTE(v183[1]) = v107;
  MEMORY[0x28223BE20](v105);

  sub_257ECFD50();

  v154 = v182[0];
  v108 = (v5 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedTextDetectionFeedbacks);
  v109 = swift_beginAccess();
  v110 = v108[1];
  v111 = v108[2];
  *&v183[0] = *v108;
  *(&v183[0] + 1) = v110;
  *&v183[1] = v111;
  MEMORY[0x28223BE20](v109);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5540);
  sub_257ECFD50();

  v153 = v182[0];
  v112 = (v5 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPauseDetectionModeFeedbacks);
  v113 = swift_beginAccess();
  v114 = v112[1];
  v115 = v112[2];
  *&v183[0] = *v112;
  *(&v183[0] + 1) = v114;
  *&v183[1] = v115;
  MEMORY[0x28223BE20](v113);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7080);
  sub_257ECFD50();

  v152 = v182[0];
  v116 = (v5 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPointSpeakFeedbacks);
  v117 = swift_beginAccess();
  v118 = v116[1];
  v119 = v116[2];
  *&v183[0] = *v116;
  *(&v183[0] + 1) = v118;
  *&v183[1] = v119;
  MEMORY[0x28223BE20](v117);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90);
  sub_257ECFD50();

  v151 = v182[0];
  v120 = v5 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakFlashlightEnabled;
  v121 = swift_beginAccess();
  v122 = *(v120 + 8);
  v123 = *(v120 + 16);
  *&v183[0] = *v120;
  *(&v183[0] + 1) = v122;
  LOBYTE(v183[1]) = v123;
  MEMORY[0x28223BE20](v121);

  sub_257ECFD50();

  v150 = v182[0];
  v124 = v5 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__outlinePointSpeak;
  v125 = swift_beginAccess();
  v126 = *(v124 + 8);
  v127 = *(v124 + 16);
  *&v183[0] = *v124;
  *(&v183[0] + 1) = v126;
  LOBYTE(v183[1]) = v127;
  MEMORY[0x28223BE20](v125);

  sub_257ECFD50();

  v128 = v182[0];
  v129 = v5 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakColor;
  v130 = swift_beginAccess();
  v131 = *(v129 + 8);
  v132 = *(v129 + 32);
  *&v183[0] = *v129;
  *(&v183[0] + 1) = v131;
  v183[1] = *(v129 + 16);
  *&v183[2] = v132;
  MEMORY[0x28223BE20](v130);

  sub_257ECFD50();

  v133 = v182[0];
  v141 = v182[1];
  v134 = v182[2];
  v135 = v5 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakFingerLocation;
  v136 = swift_beginAccess();
  v137 = *(v135 + 8);
  v138 = *(v135 + 16);
  *&v183[0] = *v135;
  *(&v183[0] + 1) = v137;
  LOBYTE(v183[1]) = v138;
  MEMORY[0x28223BE20](v136);

  sub_257ECFD50();

  *(&v182[4] + 1) = v191[0];
  HIDWORD(v182[4]) = *(v191 + 3);
  *(&v182[16] + 1) = v188[0];
  *(&v182[20] + 3) = v186;
  HIDWORD(v182[22]) = *(v185 + 3);
  *(&v182[22] + 1) = v185[0];
  *(&v182[6] + 6) = v189;
  HIWORD(v182[8]) = v190;
  HIDWORD(v182[16]) = *(v188 + 3);
  HIBYTE(v182[20]) = v187;
  *&v182[35] = v184;
  v139 = v182[0];
  v182[0] = v148;
  v182[1] = v19;
  v182[2] = v21;
  v182[3] = v20;
  LOBYTE(v182[4]) = v144;
  v182[5] = v143;
  LODWORD(v182[6]) = v180;
  BYTE4(v182[6]) = v178;
  BYTE5(v182[6]) = v179;
  LOBYTE(v182[9]) = v177;
  BYTE1(v182[9]) = v176;
  BYTE2(v182[9]) = v175;
  BYTE3(v182[9]) = v172;
  BYTE4(v182[9]) = v174;
  BYTE5(v182[9]) = v173;
  BYTE6(v182[9]) = v171;
  HIBYTE(v182[9]) = v11;
  v182[10] = v38;
  v182[11] = v170;
  v182[12] = v47;
  v182[13] = v142;
  v182[14] = v169;
  v182[15] = v168;
  LOBYTE(v182[16]) = v167;
  v182[17] = v149;
  v182[18] = v163;
  v182[19] = v166;
  LOBYTE(v182[20]) = v160;
  BYTE1(v182[20]) = v159;
  BYTE2(v182[20]) = v165;
  v182[21] = v164;
  LOBYTE(v182[22]) = v162;
  v182[23] = v161;
  v182[24] = v151;
  v182[25] = v153;
  v182[26] = v152;
  v182[27] = v133;
  v182[28] = v141;
  v182[29] = v134;
  LOBYTE(v182[30]) = v128;
  BYTE1(v182[30]) = v150;
  v140 = v139;
  BYTE2(v182[30]) = v139;
  BYTE3(v182[30]) = v154;
  HIDWORD(v182[30]) = v145;
  v182[31] = v158;
  v182[32] = v157;
  v182[33] = v156;
  v182[34] = v155;
  memcpy(v181, v182, 0x128uLL);
  sub_257C09C58(v182, v183);
  sub_257D58DA0(a1, v147, v181, v146 & 1);
  memcpy(v183, v181, 0x128uLL);
  result = sub_257C63C04(v183);
  if (*(v5 + 40))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v181[0]) = 0;
    sub_257ECC3F0();
    sub_257ECDD70();
    v181[0] = v148;
    LOBYTE(v181[4]) = v144;
    v181[5] = v143;
    BYTE4(v181[6]) = v178;
    BYTE5(v181[6]) = v179;
    LOBYTE(v181[9]) = v177;
    BYTE1(v181[9]) = v176;
    BYTE2(v181[9]) = v175;
    *(&v181[4] + 1) = v191[0];
    HIDWORD(v181[4]) = *(v191 + 3);
    HIWORD(v181[8]) = v190;
    v181[1] = v19;
    v181[2] = v21;
    v181[3] = v20;
    LODWORD(v181[6]) = v180;
    *(&v181[6] + 6) = v189;
    BYTE3(v181[9]) = v172;
    BYTE4(v181[9]) = v174;
    BYTE5(v181[9]) = v173;
    BYTE6(v181[9]) = v171;
    HIBYTE(v181[9]) = v11;
    v181[10] = v38;
    v181[11] = v170;
    v181[12] = v47;
    v181[13] = v142;
    v181[14] = v169;
    v181[15] = v168;
    LOBYTE(v181[16]) = v167;
    *(&v181[16] + 1) = v188[0];
    HIDWORD(v181[16]) = *(v188 + 3);
    v181[17] = v149;
    v181[18] = v163;
    v181[19] = v166;
    LOBYTE(v181[20]) = v160;
    BYTE1(v181[20]) = v159;
    BYTE2(v181[20]) = v165;
    *(&v181[20] + 3) = v186;
    HIBYTE(v181[20]) = v187;
    v181[21] = v164;
    LOBYTE(v181[22]) = v162;
    HIDWORD(v181[22]) = *(v185 + 3);
    *(&v181[22] + 1) = v185[0];
    v181[23] = v161;
    v181[24] = v151;
    v181[25] = v153;
    v181[26] = v152;
    v181[27] = v133;
    v181[28] = v141;
    v181[29] = v134;
    LOBYTE(v181[30]) = v128;
    BYTE1(v181[30]) = v150;
    BYTE2(v181[30]) = v140;
    BYTE3(v181[30]) = v154;
    HIDWORD(v181[30]) = v145;
    v181[31] = v158;
    v181[32] = v157;
    v181[33] = v156;
    v181[34] = v155;
    *&v181[35] = v184;
    return sub_257C63C04(v181);
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_257D665C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[12];
  v6 = v2[13];
  v13[0] = v2[11];
  v13[1] = v5;
  v13[2] = v6;
  v7 = qword_2815447E0;

  if (v7 != -1)
  {
    v8 = swift_once();
  }

  MEMORY[0x28223BE20](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
  sub_257ECFD50();

  if (!*(v12[0] + 16))
  {
  }

  v9 = sub_257C03F6C(a1, a2);
  if ((v10 & 1) == 0)
  {
  }

  memcpy(v13, (*(v12[0] + 56) + 296 * v9), 0x128uLL);
  sub_257C09C58(v13, v12);

  memcpy(v12, v13, sizeof(v12));
  sub_257D6471C(a1, a2, v12, 0);
  return sub_257C63C04(v13);
}

BOOL sub_257D66784()
{
  result = UIAccessibilityIsVoiceOverRunning();
  v1 = &unk_2869036E8;
  if (result)
  {
    v1 = &unk_2869036C0;
  }

  qword_27F912FE0 = v1;
  return result;
}

uint64_t sub_257D667D0()
{
  v0 = sub_257ECCD40();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = sub_257ECCD90();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() currentLocale];
  sub_257ECCD70();

  sub_257ECCD50();
  (*(v8 + 8))(v10, v7);
  sub_257ECCD30();
  LOBYTE(v10) = MEMORY[0x259C6F840](v6, v4);
  v12 = *(v1 + 8);
  v12(v4, v0);
  result = (v12)(v6, v0);
  byte_2815483A8 = (v10 & 1) == 0;
  return result;
}

uint64_t sub_257D669BC()
{
  v0 = sub_257ECCD40();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  v7 = sub_257ECCD90();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() currentLocale];
  sub_257ECCD70();

  sub_257ECCD50();
  (*(v8 + 8))(v10, v7);
  sub_257ECCD30();
  LOBYTE(v10) = MEMORY[0x259C6F840](v6, v4);
  v12 = *(v1 + 8);
  v12(v4, v0);
  result = (v12)(v6, v0);
  v14 = 6.0;
  if (v10)
  {
    v14 = 2.0;
  }

  qword_281548370 = *&v14;
  return result;
}

double sub_257D66BB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  type metadata accessor for DetectionRecordedFile();
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_url;
  v5 = sub_257ECCB70();
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  v6(v2, 1, 1, v5);
  swift_beginAccess();
  sub_257CB4B80(v2, v3 + v4);
  swift_endAccess();
  *(v3 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive) = 1;
  *&result = 1702259020;
  *(v3 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name) = xmmword_257EE00C0;
  qword_281545538 = v3;
  return result;
}

uint64_t sub_257D66D2C()
{
  v1 = v0;
  v2 = 0xD000000000000011;
  v267 = sub_257ECDA30();
  v266 = *(v267 - 8);
  v3 = MEMORY[0x28223BE20](v267);
  v281 = &v265 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v268 = &v265 - v5;
  v286 = sub_257ECF120();
  v291 = *(v286 - 8);
  MEMORY[0x28223BE20](v286);
  v285 = &v265 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = sub_257ECCC80();
  v289 = *(v290 - 8);
  MEMORY[0x28223BE20](v290);
  v288 = &v265 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = sub_257ECFDF0();
  v277 = *(v278 - 8);
  MEMORY[0x28223BE20](v278);
  v274 = &v265 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A38);
  v280 = *(v283 - 8);
  MEMORY[0x28223BE20](v283);
  v276 = &v265 - v9;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A40);
  v279 = *(v282 - 8);
  MEMORY[0x28223BE20](v282);
  v275 = &v265 - v10;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F28);
  v272 = *(v273 - 8);
  MEMORY[0x28223BE20](v273);
  v271 = &v265 - v11;
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54F0);
  v270 = *(v284 - 1);
  MEMORY[0x28223BE20](v284);
  v269 = &v265 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9350);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v265 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v265 - v19;
  *(v1 + 16) = 0xD000000000000020;
  *(v1 + 24) = 0x8000000257EF7E70;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  if (qword_281545628 != -1)
  {
    goto LABEL_266;
  }

  while (2)
  {
    v21 = qword_2815483B8;
    *(v1 + 88) = v2 - 1;
    *(v1 + 96) = 0x8000000257EF83D0;
    *(v1 + 104) = v21;

    *(v1 + 112) = sub_257BE816C(MEMORY[0x277D84F90]);
    *(v1 + 120) = 0x41746E6572727563;
    *(v1 + 136) = 0;
    *(v1 + 144) = 0;
    *(v1 + 128) = 0xEF79746976697463;
    v22 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__shouldSaveCurrentActivity;
    LOBYTE(v301) = 0;
    sub_257ECDD20();
    v23 = *(v18 + 32);
    v23(v1 + v22, v20, v17);
    v24 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__isCurrentActivityUpdated;
    LOBYTE(v301) = 0;
    sub_257ECDD20();
    v23(v1 + v24, v20, v17);
    v25 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__activityZoomPercentage;
    v301 = 0;
    sub_257ECDD20();
    (*(v14 + 32))(v1 + v25, v16, v13);
    v26 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__magnifierInDebugState;
    *v26 = 0xD000000000000015;
    *(v26 + 8) = 0x8000000257EF83B0;
    *(v26 + 16) = 0;
    v27 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionColor;
    *v27 = 0xD000000000000012;
    *(v27 + 8) = 0x8000000257EF8390;
    v287 = xmmword_257EE5950;
    *(v27 + 16) = xmmword_257EE5950;
    *(v27 + 32) = 0x3FA47AE147AE147BLL;
    *(v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorAttributesAssetDownloaded) = 0;
    *(v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorAttributesAssetDownloading) = 0;
    *(v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorSignsAssetDownloaded) = 0;
    *(v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorSignsAssetDownloading) = 0;
    v28 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorAttributesToggledOnAfterSuccessfulDownload;
    *v28 = 0xD00000000000002ELL;
    *(v28 + 8) = 0x8000000257EF8360;
    *(v28 + 16) = 0;
    v29 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorSignsToggledOnAfterSuccessfulDownload;
    *v29 = 0xD000000000000029;
    *(v29 + 8) = 0x8000000257EF8330;
    *(v29 + 16) = 0;
    v30 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectPointerShape;
    *v30 = 0xD000000000000012;
    *(v30 + 8) = 0x8000000257EF7F30;
    *(v30 + 16) = 0;
    v31 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__colorFilter;
    LOBYTE(v301) = 0;
    v32 = v269;
    sub_257ECDD20();
    (*(v270 + 32))(v1 + v31, v32, v284);
    v33 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__isFilterInActivityPresets;
    LOBYTE(v301) = 0;
    sub_257ECDD20();
    v23(v1 + v33, v20, v17);
    v34 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedFilters;
    v301 = MEMORY[0x277D84F90];
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7F28);
    v36 = v271;
    v284 = v35;
    sub_257ECDD20();
    (*(v272 + 32))(v1 + v34, v36, v273);
    *(v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_flashlightIsAvailable) = 2;
    v37 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__userIncludedFlashlightInControls;
    LOBYTE(v301) = 0;
    sub_257ECDD20();
    v23(v1 + v37, v20, v17);
    v38 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__grabberSelected;
    LOBYTE(v301) = 0;
    sub_257ECDD20();
    v23(v1 + v38, v20, v17);
    v273 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_contentSizeCategoryPublisher;
    v39 = [objc_opt_self() defaultCenter];
    v40 = v274;
    sub_257ECFE00();

    swift_getKeyPath();
    sub_257D7318C(&qword_281543EB0, MEMORY[0x277CC9DB0]);
    v41 = v276;
    v42 = v278;
    sub_257ECDDC0();

    (*(v277 + 8))(v40, v42);
    type metadata accessor for UIContentSizeCategory(0);
    sub_257BD2D4C(&unk_281544418, &qword_27F8F8A38);
    v43 = v275;
    v44 = v283;
    sub_257ECDDA0();
    (*(v280 + 8))(v41, v44);
    sub_257BD2D4C(&unk_281544460, &qword_27F8F8A40);
    v45 = v282;
    v46 = sub_257ECDD90();
    (*(v279 + 8))(v43, v45);
    *(v1 + v273) = v46;
    *(v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_minPrimaryControls) = 0;
    *(v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_maxPrimaryControls) = 2;
    v47 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__mainControls;
    if (qword_27F8F4650 != -1)
    {
      swift_once();
    }

    v48 = qword_27F912FE0;
    strcpy(v47, "mainControls");
    *(v47 + 13) = 0;
    *(v47 + 14) = -5120;
    *(v47 + 16) = v48;
    v49 = (v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__primaryControls);
    *v49 = 0x437972616D697270;
    v49[1] = 0xEF736C6F72746E6FLL;
    v49[2] = &unk_286903710;
    v50 = (v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__secondaryControls);
    v51 = qword_2815456D8;

    if (v51 != -1)
    {
      swift_once();
    }

    v52 = qword_2815483C0;
    *v50 = 0xD000000000000011;
    v50[1] = 0x8000000257EF86A0;
    v50[2] = v52;
    v53 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_languageTranslator;
    v54 = objc_allocWithZone(MEMORY[0x277CE6AC8]);

    *(v1 + v53) = [v54 init];
    v55 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__setCameraType;
    strcpy((v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__setCameraType), "setCameraType");
    *(v55 + 14) = -4864;
    *(v55 + 16) = 0;
    v56 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cameraType;
    *v56 = 0x79546172656D6163;
    *(v56 + 8) = 0xEA00000000006570;
    *(v56 + 16) = 0;
    v57 = (v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cameraID);
    *v57 = 0x44496172656D6163;
    v57[1] = 0xE800000000000000;
    v57[2] = 0;
    v57[3] = 0;
    v58 = (v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__storedSelectedFilters);
    *v58 = 0x64657463656C6573;
    v58[1] = 0xEF737265746C6946;
    v58[2] = &unk_286903738;
    v59 = (v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedAttributes);
    *v59 = 0xD000000000000012;
    v59[1] = 0x8000000257EF84A0;
    v59[2] = &unk_286903768;
    v60 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__mode;
    *v60 = 0x7246657A65657266;
    *(v60 + 8) = 0xEF65646F4D656D61;
    *(v60 + 16) = 0;
    v61 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__isReviewing;
    *v61 = 0x7765697665527369;
    *(v61 + 8) = 0xEB00000000676E69;
    *(v61 + 16) = 0;
    v62 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__isUsingFrontCamera;
    *v62 = 0xD000000000000012;
    *(v62 + 8) = 0x8000000257EF8450;
    *(v62 + 16) = 0;
    v63 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__zoomPercentage;
    strcpy((v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__zoomPercentage), "zoomPercentage");
    *(v63 + 15) = -18;
    *(v63 + 16) = 0;
    v64 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__flashlightPercentage;
    *v64 = 0xD000000000000014;
    *(v64 + 8) = 0x8000000257EF8430;
    *(v64 + 16) = 0;
    v65 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__storedColorFilter;
    *(v65 + 16) = 12;
    *v65 = 0x6C6946726F6C6F63;
    *(v65 + 8) = 0xEB00000000726574;
    v66 = (v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__brightness);
    *v66 = 0x656E746867697262;
    v66[1] = 0xEA00000000007373;
    v66[2] = 0x3FE0000000000000;
    v67 = (v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__contrast);
    *v67 = 0x74736172746E6F63;
    v67[1] = 0xE800000000000000;
    v67[2] = 0x3FE0000000000000;
    v68 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cardPosition;
    strcpy((v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cardPosition), "cardPosition");
    *(v68 + 13) = 0;
    *(v68 + 14) = -5120;
    *(v68 + 16) = 0;
    v69 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__peopleDetection;
    LOBYTE(v301) = 0;
    sub_257ECDD20();
    v23(v1 + v69, v20, v17);
    v70 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetection;
    LOBYTE(v301) = 0;
    sub_257ECDD20();
    v23(v1 + v70, v20, v17);
    v71 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstanding;
    LOBYTE(v301) = 0;
    sub_257ECDD20();
    v23(v1 + v71, v20, v17);
    v72 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionModeOn;
    LOBYTE(v301) = 0;
    sub_257ECDD20();
    v23(v1 + v72, v20, v17);
    v73 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__imageCaption;
    LOBYTE(v301) = 1;
    sub_257ECDD20();
    v23(v1 + v73, v20, v17);
    v74 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakEnabled;
    LOBYTE(v301) = 0;
    sub_257ECDD20();
    v23(v1 + v74, v20, v17);
    v75 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__textDetectionEnabled;
    LOBYTE(v301) = 0;
    sub_257ECDD20();
    v23(v1 + v75, v20, v17);
    v76 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionExitStatus;
    *v76 = 0xD000000000000017;
    *(v76 + 8) = 0x8000000257EF8310;
    *(v76 + 16) = 0;
    v77 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__peopleDetectionExitStatus;
    *v77 = 0xD000000000000019;
    *(v77 + 8) = 0x8000000257EF82F0;
    *(v77 + 16) = 0;
    v78 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__imageCaptionExitStatus;
    *v78 = 0xD000000000000016;
    *(v78 + 8) = 0x8000000257EF82D0;
    *(v78 + 16) = 1;
    v79 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakExitStatus;
    *v79 = 0xD000000000000014;
    *(v79 + 8) = 0x8000000257EF82B0;
    *(v79 + 16) = 0;
    v80 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__textDetectionExitStatus;
    *v80 = 0xD000000000000017;
    *(v80 + 8) = 0x8000000257EF8140;
    *(v80 + 16) = 0;
    v81 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingExitStatus;
    *v81 = 0xD00000000000001DLL;
    *(v81 + 8) = 0x8000000257EF8290;
    *(v81 + 16) = 0;
    v82 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
    if (qword_2815455E0 != -1)
    {
      swift_once();
    }

    v83 = byte_2815483A8;
    strcpy(v82, "detectionUnit");
    *(v82 + 14) = -4864;
    *(v82 + 16) = v83;
    v84 = (v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionPitchThreshold);
    if (qword_281545508 != -1)
    {
      swift_once();
    }

    v85 = qword_281548370;
    *v84 = 0xD000000000000017;
    v84[1] = 0x8000000257EF8680;
    v84[2] = v85;
    v86 = (v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPeopleDetectionFeedbacks);
    *v86 = 0xD000000000000020;
    v86[1] = 0x8000000257EF85E0;
    v86[2] = &unk_286903900;
    v87 = (v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedImageCaptionFeedbacks);
    *v87 = 0xD00000000000001DLL;
    v87[1] = 0x8000000257EF85C0;
    v87[2] = &unk_286903928;
    v88 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionAudioBalancing;
    *v88 = 0xD000000000000017;
    *(v88 + 8) = 0x8000000257EF8410;
    *(v88 + 16) = 0;
    v89 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionDebugOption;
    *v89 = 0xD000000000000014;
    *(v89 + 8) = 0x8000000257EF8660;
    *(v89 + 16) = 0;
    v90 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionCenterDetection;
    *v90 = 0xD000000000000018;
    *(v90 + 8) = 0x8000000257EF83F0;
    *(v90 + 16) = 0;
    v91 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_selectedDetectionReplayFile;
    if (qword_281545530 != -1)
    {
      swift_once();
    }

    *(v1 + v91) = qword_281545538;
    *(v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_selectedDetectionRecordingOptions) = MEMORY[0x277D84F90];
    v92 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__peopleDetectionSpeechFeedbackWasModified;
    *v92 = 0xD000000000000028;
    *(v92 + 8) = 0x8000000257EF8590;
    *(v92 + 16) = 0;
    v93 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__peopleDetectionSpeechFeedbackWasModifiedByVoiceOver;
    LOBYTE(v301) = 0;
    sub_257ECC3F0();
    sub_257ECDD20();
    v23(v1 + v93, v20, v17);
    v94 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__imageCaptionSpeechFeedbackWasModified;
    *v94 = 0xD000000000000025;
    *(v94 + 8) = 0x8000000257EF8470;
    *(v94 + 16) = 0;
    v95 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__imageCaptionSpeechFeedbackWasModifiedByVoiceOver;
    LOBYTE(v301) = 0;
    sub_257ECDD20();
    v23(v1 + v95, v20, v17);
    v96 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionSpeechFeedbackWasModified;
    *v96 = 0xD000000000000026;
    *(v96 + 8) = 0x8000000257EF8500;
    *(v96 + 16) = 0;
    v97 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSpeechFeedbackWasModified;
    *v97 = 0xD00000000000002CLL;
    *(v97 + 8) = 0x8000000257EF7FB0;
    *(v97 + 16) = 0;
    v98 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionSpeechFeedbackWasModifiedByVoiceOver;
    LOBYTE(v301) = 0;
    sub_257ECDD20();
    v23(v1 + v98, v20, v17);
    v99 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSpeechFeedbackWasModifiedByVoiceOver;
    LOBYTE(v301) = 0;
    sub_257ECDD20();
    v23(v1 + v99, v20, v17);
    v100 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakSpeechFeedbackWasModified;
    LOBYTE(v301) = 0;
    sub_257ECDD20();
    v23(v1 + v100, v20, v17);
    v101 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakSpeechFeedbackWasModifiedByVoiceOver;
    LOBYTE(v301) = 0;
    sub_257ECDD20();
    v23(v1 + v101, v20, v17);
    v102 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__textDetectionSpeechFeedbackWasModified;
    LOBYTE(v301) = 0;
    sub_257ECDD20();
    v23(v1 + v102, v20, v17);
    v103 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__textDetectionSpeechFeedbackWasModifiedByVoiceOver;
    LOBYTE(v301) = 0;
    sub_257ECDD20();
    v23(v1 + v103, v20, v17);
    v104 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionSpeechFeedbackWasModified;
    *v104 = 0xD000000000000022;
    *(v104 + 8) = 0x8000000257EF80A0;
    *(v104 + 16) = 0;
    v105 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionSpeechFeedbackWasModifiedByVoiceOver;
    LOBYTE(v301) = 0;
    sub_257ECDD20();
    v23(v1 + v105, v20, v17);
    v106 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pauseDetectionMode;
    LOBYTE(v301) = 0;
    sub_257ECDD20();
    v23(v1 + v106, v20, v17);
    v107 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pauseSpeech;
    LOBYTE(v301) = 0;
    sub_257ECDD20();
    v23(v1 + v107, v20, v17);
    v108 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__stopSpeech;
    LOBYTE(v301) = 0;
    sub_257ECDD20();
    v23(v1 + v108, v20, v17);
    v109 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__shouldUpdateLongPressHint;
    LOBYTE(v301) = 0;
    sub_257ECDD20();
    v23(v1 + v109, v20, v17);
    v110 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__isReaderModeAvailable;
    LOBYTE(v301) = 0;
    sub_257ECDD20();
    v23(v1 + v110, v20, v17);
    v111 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__isQuickReaderModeAvailable;
    LOBYTE(v301) = 0;
    sub_257ECDD20();
    v23(v1 + v111, v20, v17);
    *(v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_launchedReaderFromShortcut) = 0;
    *(v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_launchedWithShareActionFromExtension) = 0;
    v112 = (v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_capturedImageName);
    *v112 = 0;
    v112[1] = 0xE000000000000000;
    v113 = (v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__storedSelectedDetectionRecordingOptions);
    if (qword_2815454A8 != -1)
    {
      swift_once();
    }

    v114 = qword_2815454B0;
    *v113 = 0xD000000000000021;
    v113[1] = 0x8000000257EF8610;
    v113[2] = v114;
    v115 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__peopleActionsEnabled;
    *v115 = 0xD000000000000014;
    *(v115 + 8) = 0x8000000257EF8570;
    *(v115 + 16) = 1;
    v116 = (v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionPitchThreshold);
    *v116 = 0xD00000000000001BLL;
    v116[1] = 0x8000000257EF8550;
    v116[2] = v85;
    v117 = (v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingPitchThreshold);
    *v117 = 0xD000000000000021;
    v117[1] = 0x8000000257EF7FE0;
    v117[2] = v85;
    v118 = (v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedDoorDetectionFeedbacks);
    *v118 = 0xD00000000000001ELL;
    v118[1] = 0x8000000257EF8530;
    v118[2] = &unk_286903950;
    v119 = (v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedObjectUnderstandingFeedbacks);
    *v119 = 0xD000000000000024;
    v119[1] = 0x8000000257EF7F80;
    v119[2] = &unk_286903978;
    v120 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSeatOccupancy;
    *v120 = 0xD000000000000020;
    *(v120 + 8) = 0x8000000257EF7F50;
    *(v120 + 16) = 1;
    v121 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionAttributes;
    *v121 = 0xD000000000000017;
    *(v121 + 8) = 0x8000000257EF84E0;
    *(v121 + 16) = 1;
    v122 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
    *v122 = 0xD000000000000018;
    *(v122 + 8) = 0x8000000257EF84C0;
    *(v122 + 16) = 1;
    v123 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__backTapEnabled;
    strcpy((v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__backTapEnabled), "backTapEnabled");
    *(v123 + 15) = -18;
    *(v123 + 16) = 0;
    v124 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectLanguages;
    *v124 = 0x614C746365746564;
    *(v124 + 8) = 0xEF7365676175676ELL;
    *(v124 + 16) = 0;
    v125 = (v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPointSpeakFeedbacks);
    *v125 = 0xD00000000000001BLL;
    v125[1] = 0x8000000257EF8270;
    v125[2] = &unk_2869039A0;
    v126 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakFlashlightEnabled;

    IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
    *v126 = 0xD00000000000001BLL;
    *(v126 + 8) = 0x8000000257EF8250;
    *(v126 + 16) = IsVoiceOverRunning;
    v128 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakFingerLocation;
    *v128 = 0xD000000000000018;
    *(v128 + 8) = 0x8000000257EF8230;
    *(v128 + 16) = 0;
    v129 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionModeHasLaunched;
    *v129 = 0xD000000000000018;
    *(v129 + 8) = 0x8000000257EF8210;
    *(v129 + 16) = 0;
    v130 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__activityInstructionsDisplayed;
    *v130 = 0xD00000000000001DLL;
    *(v130 + 8) = 0x8000000257EF81F0;
    *(v130 + 16) = 0;
    v131 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakInstructionsDisplayed;
    *v131 = 0xD00000000000001FLL;
    *(v131 + 8) = 0x8000000257EF81D0;
    *(v131 + 16) = 0;
    v132 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__longPressHintShouldDisplay;
    *v132 = 0xD00000000000001ALL;
    *(v132 + 8) = 0x8000000257EF7E30;
    *(v132 + 16) = 1;
    v133 = (v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__longPressHintTimeStartDate);
    v134 = v288;
    sub_257ECCC70();
    *v133 = 0xD00000000000001ALL;
    *(v133 + 1) = 0x8000000257EF7E50;
    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7F48);
    (*(v289 + 32))(&v133[*(v135 + 44)], v134, v290);
    v136 = (v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedTextDetectionFeedbacks);
    *v136 = 0xD00000000000001ELL;
    v136[1] = 0x8000000257EF8120;
    v136[2] = &unk_2869039C8;
    v137 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__textDetectionFlashlightEnabled;
    v138 = UIAccessibilityIsVoiceOverRunning();
    *v137 = 0xD00000000000001ELL;
    *(v137 + 8) = 0x8000000257EF8100;
    *(v137 + 16) = v138;
    v139 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__outlinePointSpeak;
    *v139 = 0xD000000000000011;
    *(v139 + 8) = 0x8000000257EF8160;
    *(v139 + 16) = 1;
    v140 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakColor;
    *v140 = 0x657053746E696F70;
    *(v140 + 8) = 0xEF726F6C6F436B61;
    *(v140 + 16) = v287;
    *(v140 + 32) = 0x3FA47AE147AE147BLL;
    v141 = (v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPauseDetectionModeFeedbacks);
    *v141 = 0xD000000000000023;
    v141[1] = 0x8000000257EF80D0;
    v141[2] = &unk_2869039F0;
    v142 = (v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__storedSelectedFilters);
    swift_beginAccess();
    v143 = v142[1];
    v144 = v142[2];
    v300[0] = *v142;
    v300[1] = v143;
    v300[2] = v144;
    v145 = qword_2815447E0;
    sub_257ECC3F0();

    v20 = v291;
    if (v145 != -1)
    {
      v146 = swift_once();
    }

    v147 = qword_2815447E8;
    MEMORY[0x28223BE20](v146);
    *(&v265 - 2) = v300;
    v148 = OS_LOG_TYPE_DEFAULT;
    sub_257ECFD50();

    v300[0] = v298[0];

    sub_257D6D3DC(v300, sub_257C66F4C);

    v149 = v300[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v300[0] = v149;
    sub_257ECC3F0();
    sub_257ECDD70();
    v150 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__storedColorFilter;
    v151 = swift_beginAccess();
    v152 = *(v150 + 8);
    v153 = *(v150 + 16);
    v298[0] = *v150;
    v298[1] = v152;
    v299 = v153;
    MEMORY[0x28223BE20](v151);
    *(&v265 - 2) = v298;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E70);
    v289 = v147;
    sub_257ECFD50();

    v154 = v295;
    if (v295 == 12)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (!*(v298[0] + 16))
      {

        goto LABEL_20;
      }

      v154 = *(v298[0] + 32);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v298[0]) = v154;
    sub_257ECC3F0();
    sub_257ECDD70();
LABEL_20:
    v155 = (v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__primaryControls);
    v156 = swift_beginAccess();
    v157 = *v155;
    v158 = v155[1];
    *&v287 = v155;
    v159 = v155[2];
    v295 = v157;
    v296 = v158;
    v297 = v159;
    MEMORY[0x28223BE20](v156);
    *(&v265 - 2) = &v295;

    v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0);
    sub_257ECFD50();

    v160 = *(v292 + 16);
    v161 = (v292 + 32);
    v283 = 0x8000000257EF74D0;
    v282 = 0x8000000257EF7780;
    while (2)
    {
      if (v160)
      {
        switch(*v161)
        {
          case 4:
            goto LABEL_35;
          default:
            v162 = sub_257ED0640();

            ++v161;
            --v160;
            if ((v162 & 1) == 0)
            {
              continue;
            }

            goto LABEL_28;
        }
      }

      break;
    }

    v163 = (v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__secondaryControls);
    v164 = swift_beginAccess();
    v165 = v163[1];
    v166 = v163[2];
    v295 = *v163;
    v296 = v165;
    v297 = v166;
    MEMORY[0x28223BE20](v164);
    *(&v265 - 2) = &v295;

    sub_257ECFD50();

    v16 = *(v292 + 16);
    v167 = (v292 + 32);
    while (2)
    {
      if (v16)
      {
        switch(*v167)
        {
          case 4:
LABEL_35:
            v284 = 0;

            break;
          default:
            v168 = sub_257ED0640();

            ++v167;
            --v16;
            if ((v168 & 1) == 0)
            {
              continue;
            }

LABEL_28:
            v284 = 0;
            break;
        }

        v169 = sub_257D53928();
        v170 = *(v169 + 16);
        v16 = v169 + 32;
        v290 = 0xEA0000000000726FLL;
        while (2)
        {
          v17 = v170 == 0;
          if (v170)
          {
            switch(*v16)
            {
              case 4:

                v17 = 0;
                break;
              default:
                v171 = sub_257ED0640();

                ++v16;
                --v170;
                if ((v171 & 1) == 0)
                {
                  continue;
                }

                break;
            }
          }

          break;
        }

        v20 = v291;
        v148 = v284;
      }

      else
      {
        v17 = 0;
      }

      break;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v17 != v295)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v295) = v17;
      sub_257ECC3F0();
      sub_257ECDD70();
    }

    v13 = v287;
    v172 = swift_beginAccess();
    v292 = *v13;
    v293 = *(v13 + 8);
    MEMORY[0x28223BE20](v172);
    *(&v265 - 2) = &v292;
    sub_257ECFD50();
    v14 = v294;
    v292 = v294;
    v2 = *(v294 + 16);
    LODWORD(v279) = v17;
    v18 = 0;
    if (!v2)
    {
      v173 = 0;
      goto LABEL_99;
    }

    v20 = (v294 + 32);
    v290 = 0xEA0000000000726FLL;
    v284 = 0xEA00000000006B61;
    while (2)
    {
      if (v18 >= *(v14 + 16))
      {
        goto LABEL_244;
      }

      v13 = 0xEA00000000006570;
      switch(v20[v18])
      {
        case 1:
          v13 = v282;
          goto LABEL_59;
        case 2:
          v13 = 0xEF74736172746E6FLL;
          goto LABEL_59;
        case 3:
          v13 = 0xE700000000000000;
          goto LABEL_59;
        case 4:
          v13 = 0xEA00000000007468;
          goto LABEL_59;
        case 5:
          v13 = 0xEF6E6F6974636574;
          goto LABEL_59;
        case 6:
          v13 = 0xE90000000000006BLL;
          goto LABEL_59;
        case 7:
          goto LABEL_59;
        case 8:
          v13 = 0xEB0000000065646FLL;
          goto LABEL_59;
        case 9:

          goto LABEL_64;
        case 10:
          v13 = 0xED00006E6F697463;
          goto LABEL_59;
        case 11:
          v13 = v283;
          goto LABEL_59;
        case 12:
          v13 = 0xEC0000006E6F6974;
          goto LABEL_59;
        case 13:
          v13 = v284;
          goto LABEL_59;
        case 14:
          v13 = 0xED00006E6F697463;
          goto LABEL_59;
        case 15:
          v13 = 0xEA00000000007365;
          goto LABEL_59;
        default:
          v13 = v290;
LABEL_59:
          v16 = sub_257ED0640();

          if ((v16 & 1) == 0)
          {
            if (v2 == ++v18)
            {
              v18 = *(v14 + 16);
              v173 = v18;
              goto LABEL_66;
            }

            continue;
          }

LABEL_64:
          v174 = *(v14 + 16);
          if (v174 - 1 != v18)
          {
            v2 = v18 + 33;
            while (2)
            {
              v17 = v2 - 32;
              if (v2 - 32 < v174)
              {
                v20 = (v14 + 32);
                v13 = 0xEA00000000006570;
                switch(*(v14 + v2))
                {
                  case 1:
                    v13 = v282;
                    goto LABEL_88;
                  case 2:
                    v13 = 0xEF74736172746E6FLL;
                    goto LABEL_88;
                  case 3:
                    v13 = 0xE700000000000000;
                    goto LABEL_88;
                  case 4:
                    v13 = 0xEA00000000007468;
                    goto LABEL_88;
                  case 5:
                    v13 = 0xEF6E6F6974636574;
                    goto LABEL_88;
                  case 6:
                    v13 = 0xE90000000000006BLL;
                    goto LABEL_88;
                  case 7:
                    goto LABEL_88;
                  case 8:
                    v13 = 0xEB0000000065646FLL;
                    goto LABEL_88;
                  case 9:

                    goto LABEL_69;
                  case 0xA:
                    v13 = 0xED00006E6F697463;
                    goto LABEL_88;
                  case 0xB:
                    v13 = v283;
                    goto LABEL_88;
                  case 0xC:
                    v13 = 0xEC0000006E6F6974;
                    goto LABEL_88;
                  case 0xD:
                    v13 = v284;
                    goto LABEL_88;
                  case 0xE:
                    v13 = 0xED00006E6F697463;
                    goto LABEL_88;
                  case 0xF:
                    v13 = 0xEA00000000007365;
                    goto LABEL_88;
                  default:
                    v13 = v290;
LABEL_88:
                    v16 = sub_257ED0640();

                    if (v16)
                    {
LABEL_69:
                      v20 = v291;
                    }

                    else
                    {
                      if (v17 == v18)
                      {
                        v20 = v291;
                      }

                      else
                      {
                        if ((v18 & 0x8000000000000000) != 0)
                        {
                          goto LABEL_257;
                        }

                        v178 = *(v14 + 16);
                        if (v18 >= v178)
                        {
                          goto LABEL_259;
                        }

                        if (v17 >= v178)
                        {
                          goto LABEL_261;
                        }

                        v13 = v20[v18];
                        v17 = *(v14 + v2);
                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                        {
                          isUniquelyReferenced_nonNull_native = sub_257C7DE10(v14);
                          v14 = isUniquelyReferenced_nonNull_native;
                        }

                        v20 = v291;
                        *(v14 + v18 + 32) = v17;
                        *(v14 + v2) = v13;
                        v292 = v14;
                      }

                      ++v18;
                    }

                    v174 = *(v14 + 16);
                    v176 = v2 + 1;
                    v177 = v2 - 31;
                    ++v2;
                    if (v177 != v174)
                    {
                      continue;
                    }

                    v173 = v176 - 32;
                    if ((v176 - 32) >= v18)
                    {
                      goto LABEL_99;
                    }

                    __break(1u);
LABEL_268:
                    __break(1u);
                    break;
                }

LABEL_269:
                __break(1u);
                goto LABEL_270;
              }

              goto LABEL_246;
            }
          }

          v173 = v18 + 1;
LABEL_66:
          v20 = v291;
LABEL_99:
          v2 = &v292;
          sub_257CC8718(v18, v173);
          v294 = v292;
          v179 = v285;
          v180 = sub_257ECF110();
          MEMORY[0x28223BE20](v180);
          *(&v265 - 2) = &v294;
          *(&v265 - 1) = v287;
          sub_257ECFD40();
          v284 = *(v20 + 1);
          v284(v179, v286);

          swift_endAccess();
          v17 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__secondaryControls;
          v181 = swift_beginAccess();
          v292 = *v17;
          v293 = *(v17 + 8);
          MEMORY[0x28223BE20](v181);
          *(&v265 - 2) = &v292;
          sub_257ECFD50();
          v14 = v294;
          v292 = v294;
          v13 = *(v294 + 16);
          v291 = v20 + 8;
          v290 = v17;
          v18 = 0;
          if (!v13)
          {
            v182 = 0;
            goto LABEL_157;
          }

          v20 = (v294 + 32);
          v280 = 0xEA0000000000726FLL;
LABEL_101:
          if (v18 >= *(v14 + 16))
          {
            goto LABEL_245;
          }

          break;
      }

      break;
    }

    v16 = 0xEA00000000006570;
    switch(v20[v18])
    {
      case 1:
        v16 = v282;
        goto LABEL_118;
      case 2:
        v16 = 0xEF74736172746E6FLL;
        goto LABEL_118;
      case 3:
        v16 = 0xE700000000000000;
        goto LABEL_118;
      case 4:
        v16 = 0xEA00000000007468;
        goto LABEL_118;
      case 5:
        v16 = 0xEF6E6F6974636574;
        goto LABEL_118;
      case 6:
        v16 = 0xE90000000000006BLL;
        goto LABEL_118;
      case 7:
        goto LABEL_118;
      case 8:
        v16 = 0xEB0000000065646FLL;
        goto LABEL_118;
      case 9:

        goto LABEL_123;
      case 10:
        v16 = 0xED00006E6F697463;
        goto LABEL_118;
      case 11:
        v16 = v283;
        goto LABEL_118;
      case 12:
        v16 = 0xEC0000006E6F6974;
        goto LABEL_118;
      case 13:
        v16 = 0xEA00000000006B61;
        goto LABEL_118;
      case 14:
        v16 = 0xED00006E6F697463;
        goto LABEL_118;
      case 15:
        v16 = 0xEA00000000007365;
        goto LABEL_118;
      default:
        v16 = v280;
LABEL_118:
        v2 = sub_257ED0640();

        if ((v2 & 1) == 0)
        {
          if (v13 == ++v18)
          {
            v18 = *(v14 + 16);
            v182 = v18;
            goto LABEL_157;
          }

          goto LABEL_101;
        }

LABEL_123:
        v183 = *(v14 + 16);
        if (v183 - 1 != v18)
        {
          v13 = v18 + 33;
          while (2)
          {
            v20 = (v13 - 32);
            if (v13 - 32 < v183)
            {
              v17 = v14 + 32;
              v16 = 0xEA00000000006570;
              switch(*(v14 + v13))
              {
                case 1:
                  v16 = v282;
                  goto LABEL_146;
                case 2:
                  v16 = 0xEF74736172746E6FLL;
                  goto LABEL_146;
                case 3:
                  v16 = 0xE700000000000000;
                  goto LABEL_146;
                case 4:
                  v16 = 0xEA00000000007468;
                  goto LABEL_146;
                case 5:
                  v16 = 0xEF6E6F6974636574;
                  goto LABEL_146;
                case 6:
                  v16 = 0xE90000000000006BLL;
                  goto LABEL_146;
                case 7:
                  goto LABEL_146;
                case 8:
                  v16 = 0xEB0000000065646FLL;
                  goto LABEL_146;
                case 9:

                  goto LABEL_127;
                case 0xA:
                  v16 = 0xED00006E6F697463;
                  goto LABEL_146;
                case 0xB:
                  v16 = v283;
                  goto LABEL_146;
                case 0xC:
                  v16 = 0xEC0000006E6F6974;
                  goto LABEL_146;
                case 0xD:
                  v16 = 0xEA00000000006B61;
                  goto LABEL_146;
                case 0xE:
                  v16 = 0xED00006E6F697463;
                  goto LABEL_146;
                case 0xF:
                  v16 = 0xEA00000000007365;
                  goto LABEL_146;
                default:
                  v16 = v280;
LABEL_146:
                  v2 = sub_257ED0640();

                  if (v2)
                  {
LABEL_127:
                    v20 = v291;
                    v17 = v290;
                  }

                  else
                  {
                    if (v20 == v18)
                    {
                      v20 = v291;
                    }

                    else
                    {
                      if ((v18 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_263;
                      }

                      v186 = *(v14 + 16);
                      if (v18 >= v186)
                      {
                        goto LABEL_264;
                      }

                      if (v20 >= v186)
                      {
                        goto LABEL_265;
                      }

                      v2 = *(v17 + v18);
                      v187 = *(v14 + v13);
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        isUniquelyReferenced_nonNull_native = sub_257C7DE10(v14);
                        v14 = isUniquelyReferenced_nonNull_native;
                      }

                      v20 = v291;
                      *(v14 + v18 + 32) = v187;
                      *(v14 + v13) = v2;
                      v292 = v14;
                    }

                    v17 = v290;
                    ++v18;
                  }

                  v183 = *(v14 + 16);
                  v184 = v13 + 1;
                  v185 = v13 - 31;
                  ++v13;
                  if (v185 != v183)
                  {
                    continue;
                  }

                  v182 = v184 - 32;
                  if (v184 - 32 >= v18)
                  {
                    goto LABEL_157;
                  }

                  goto LABEL_268;
              }
            }

            goto LABEL_247;
          }
        }

        v182 = v18 + 1;
LABEL_157:
        sub_257CC8718(v18, v182);
        v294 = v292;
        v188 = v17;
        v189 = v285;
        v190 = sub_257ECF110();
        MEMORY[0x28223BE20](v190);
        *(&v265 - 2) = &v294;
        *(&v265 - 1) = v188;
        sub_257ECFD40();
        v284(v189, v286);

        swift_endAccess();
        v191 = v287;
        v192 = swift_beginAccess();
        v292 = *v191;
        v293 = *(v191 + 8);
        MEMORY[0x28223BE20](v192);
        *(&v265 - 2) = &v292;
        v20 = &v294;
        sub_257ECFD50();
        v14 = v294;
        v292 = v294;
        v13 = *(v294 + 16);
        if (!v13)
        {
          v18 = 0;
          v194 = 0;
          goto LABEL_178;
        }

        v18 = 0;
        v17 = v294 + 32;
        v2 = &unk_286903A18;
        while (2)
        {
          if (v18 >= *(v14 + 16))
          {
            __break(1u);
LABEL_243:
            __break(1u);
LABEL_244:
            __break(1u);
LABEL_245:
            __break(1u);
LABEL_246:
            __break(1u);
LABEL_247:
            __break(1u);
LABEL_248:
            __break(1u);
LABEL_249:
            __break(1u);
            goto LABEL_250;
          }

          v193 = sub_257C3EF48(*(v17 + v18), &unk_286903A18);
          v194 = v18 + 1;
          if (!v193)
          {
            ++v18;
            if (v13 == v194)
            {
              v18 = *(v14 + 16);
              v194 = v18;
              goto LABEL_178;
            }

            continue;
          }

          break;
        }

        v195 = *(v14 + 16);
        if (v195 - 1 != v18)
        {
          v13 = v18 + 33;
          v2 = &unk_286903A40;
          do
          {
            v17 = v13 - 32;
            if (v13 - 32 >= v195)
            {
              goto LABEL_248;
            }

            isUniquelyReferenced_nonNull_native = sub_257C3EF48(*(v14 + v13), &unk_286903A40);
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              if (v17 != v18)
              {
                if ((v18 & 0x8000000000000000) != 0)
                {
                  goto LABEL_251;
                }

                v198 = *(v14 + 16);
                if (v18 >= v198)
                {
                  goto LABEL_252;
                }

                if (v17 >= v198)
                {
                  goto LABEL_253;
                }

                v17 = *(v14 + 32 + v18);
                v16 = *(v14 + v13);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  isUniquelyReferenced_nonNull_native = sub_257C7DE10(v14);
                  v14 = isUniquelyReferenced_nonNull_native;
                }

                *(v14 + v18 + 32) = v16;
                *(v14 + v13) = v17;
                v292 = v14;
              }

              ++v18;
            }

            v195 = *(v14 + 16);
            v196 = v13 + 1;
            v197 = v13 - 31;
            ++v13;
          }

          while (v197 != v195);
          v194 = v196 - 32;
          if (v196 - 32 < v18)
          {
            goto LABEL_269;
          }
        }

LABEL_178:
        sub_257CC8718(v18, v194);
        v294 = v292;
        v199 = v285;
        v200 = sub_257ECF110();
        MEMORY[0x28223BE20](v200);
        v201 = v287;
        *(&v265 - 2) = &v294;
        *(&v265 - 1) = v201;
        sub_257ECFD40();
        v284(v199, v286);

        swift_endAccess();
        v202 = v290;
        v203 = swift_beginAccess();
        v292 = *v202;
        v293 = *(v202 + 8);
        MEMORY[0x28223BE20](v203);
        *(&v265 - 2) = &v292;
        v20 = &v294;
        sub_257ECFD50();
        v14 = v294;
        v292 = v294;
        v13 = *(v294 + 16);
        if (v13)
        {
          v18 = 0;
          v17 = v294 + 32;
          v2 = &unk_286903A68;
          while (1)
          {
            if (v18 >= *(v14 + 16))
            {
              goto LABEL_243;
            }

            v204 = sub_257C3EF48(*(v17 + v18), &unk_286903A68);
            v205 = v18 + 1;
            if (v204)
            {
              break;
            }

            ++v18;
            if (v13 == v205)
            {
              v18 = *(v14 + 16);
              v205 = v18;
              goto LABEL_185;
            }
          }

          v214 = *(v14 + 16);
          if (v214 - 1 != v18)
          {
            v13 = v18 + 33;
            v2 = &unk_286903A90;
            do
            {
              v17 = v13 - 32;
              if (v13 - 32 >= v214)
              {
                goto LABEL_249;
              }

              if (!sub_257C3EF48(*(v14 + v13), &unk_286903A90))
              {
                if (v17 != v18)
                {
                  if ((v18 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_254;
                  }

                  v217 = *(v14 + 16);
                  if (v18 >= v217)
                  {
                    goto LABEL_255;
                  }

                  if (v17 >= v217)
                  {
                    goto LABEL_256;
                  }

                  v218 = *(v14 + 32 + v18);
                  v16 = *(v14 + v13);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v14 = sub_257C7DE10(v14);
                  }

                  *(v14 + v18 + 32) = v16;
                  *(v14 + v13) = v218;
                  v292 = v14;
                }

                ++v18;
              }

              v214 = *(v14 + 16);
              v215 = v13 + 1;
              v216 = v13 - 31;
              ++v13;
            }

            while (v216 != v214);
            v205 = v215 - 32;
            if (v215 - 32 < v18)
            {
              __break(1u);
LABEL_229:
              v245 = v287;
              v246 = swift_beginAccess();
              v292 = *v245;
              v293 = *(v245 + 8);
              MEMORY[0x28223BE20](v246);
              *(&v265 - 2) = v13;
              sub_257ECFD50();
              v247 = v294;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v247 = sub_257BFCB14(0, *(v247 + 2) + 1, 1, v247);
              }

              v248 = v286;
              v249 = v284;
              v251 = *(v247 + 2);
              v250 = *(v247 + 3);
              v252 = v287;
              if (v251 >= v250 >> 1)
              {
                v247 = sub_257BFCB14((v250 > 1), v251 + 1, 1, v247);
              }

              *(v247 + 2) = v251 + 1;
              v247[v251 + 32] = 0;
              v292 = v247;
              v253 = v285;
              v254 = sub_257ECF110();
              MEMORY[0x28223BE20](v254);
              *(&v265 - 2) = &v292;
              *(&v265 - 1) = v252;
              sub_257ECFD40();
              v249(v253, v248);
LABEL_234:

              swift_endAccess();
LABEL_235:
              sub_257D6B3A4();
              v255 = v268;
              sub_257ECD420();
              v14 = sub_257ECDA20();
              v148 = sub_257ECFBD0();
              v256 = os_log_type_enabled(v14, v148);
              v2 = &unk_257EDB000;
              v17 = v267;
              v20 = v266;
              if (v256)
              {
                isUniquelyReferenced_nonNull_native = swift_slowAlloc();
                *isUniquelyReferenced_nonNull_native = 67109120;
                if (qword_27F8F4618 == -1)
                {
                  goto LABEL_237;
                }

                goto LABEL_271;
              }

              goto LABEL_238;
            }
          }
        }

        else
        {
          v18 = 0;
          v205 = 0;
        }

LABEL_185:
        sub_257CC8718(v18, v205);
        v294 = v292;
        v206 = v285;
        v207 = sub_257ECF110();
        MEMORY[0x28223BE20](v207);
        v208 = v290;
        *(&v265 - 2) = &v294;
        *(&v265 - 1) = v208;
        sub_257ECFD40();
        v20 = v291;
        v284(v206, v286);

        v209 = swift_endAccess();
        v210 = *(v287 + 8);
        v211 = *(v287 + 16);
        v295 = *v287;
        v296 = v210;
        v297 = v211;
        MEMORY[0x28223BE20](v209);
        *(&v265 - 2) = &v295;

        v16 = v288;
        sub_257ECFD50();

        v18 = v292;
        v212 = swift_beginAccess();
        v292 = *v208;
        v293 = *(v208 + 8);
        MEMORY[0x28223BE20](v212);
        *(&v265 - 2) = &v292;

        sub_257ECFD50();
        v14 = v294;
        v292 = v294;
        v17 = v294 + 16;
        v213 = *(v294 + 16);
        if (!v213)
        {
          v2 = 0;
          goto LABEL_206;
        }

        v2 = 0;
        while (!sub_257C3EF48(*(v14 + v2 + 32), v18))
        {
          if (v213 == ++v2)
          {
            v2 = *v17;
            goto LABEL_206;
          }
        }

        if (__OFADD__(v2, 1))
        {
          __break(1u);
          goto LABEL_273;
        }

        v219 = *v17;
        if (v2 + 1 != *v17)
        {
          v13 = v2 + 33;
          while (1)
          {
            v20 = (v13 - 32);
            if (v13 - 32 >= v219)
            {
              break;
            }

            if (sub_257C3EF48(*(v14 + v13), v18))
            {
              v20 = v291;
            }

            else
            {
              if (v20 != v2)
              {
                if ((v2 & 0x8000000000000000) != 0)
                {
                  goto LABEL_258;
                }

                if (v2 >= *v17)
                {
                  goto LABEL_260;
                }

                if (v20 >= *v17)
                {
                  goto LABEL_262;
                }

                v243 = *(v14 + 32 + v2);
                v244 = *(v14 + v13);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v14 = sub_257C7DE10(v14);
                }

                *(v14 + v2 + 32) = v244;
                *(v14 + v13) = v243;
                v292 = v14;
              }

              v20 = v291;
              ++v2;
            }

            v17 = v14 + 16;
            v219 = *(v14 + 16);
            v242 = v13 - 31;
            ++v13;
            if (v242 == v219)
            {
              goto LABEL_206;
            }
          }

LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
LABEL_261:
          __break(1u);
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
LABEL_265:
          __break(1u);
LABEL_266:
          swift_once();
          continue;
        }

LABEL_206:

        v220 = *(v14 + 16);
        if (v220 >= v2)
        {
          sub_257CC8718(v2, v220);
          v294 = v292;
          v221 = v285;
          v222 = sub_257ECF110();
          MEMORY[0x28223BE20](v222);
          *(&v265 - 2) = &v294;
          v223 = v290;
          *(&v265 - 1) = v290;
          v224 = v287;
          sub_257ECFD40();
          v284(v221, v286);

          swift_endAccess();

          v226 = v224[1];
          v227 = v224[2];
          v295 = *v224;
          v296 = v226;
          v297 = v227;
          MEMORY[0x28223BE20](v225);
          *(&v265 - 2) = &v295;

          sub_257ECFD50();

          v228 = *(v292 + 16);

          if (v228)
          {
            goto LABEL_235;
          }

          v230 = v223[1];
          v2 = v223[2];
          v295 = *v223;
          v296 = v230;
          v297 = v2;
          MEMORY[0x28223BE20](v229);
          *(&v265 - 2) = &v295;

          v13 = &v292;
          sub_257ECFD50();

          v231 = *(v292 + 16);

          if (!v231)
          {
            goto LABEL_229;
          }

          v232 = swift_beginAccess();
          v18 = &v265;
          v292 = *v223;
          v293 = *(v223 + 1);
          MEMORY[0x28223BE20](v232);
          *(&v265 - 2) = &v292;
          sub_257ECFD50();
          v292 = v294;
          if (*(v294 + 16))
          {
            LOBYTE(v2) = *(v294 + 32);
            sub_257CC8718(0, 1);
            v294 = v292;
            v233 = v285;
            v234 = sub_257ECF110();
            MEMORY[0x28223BE20](v234);
            *(&v265 - 2) = &v294;
            *(&v265 - 1) = v223;
            sub_257ECFD40();
            v20 = v233;
            v284(v233, v286);

            swift_endAccess();
            v235 = v287;
            v236 = swift_beginAccess();
            v292 = *v235;
            v293 = *(v235 + 8);
            MEMORY[0x28223BE20](v236);
            *(&v265 - 2) = &v292;
            sub_257ECFD50();
            v18 = v294;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
LABEL_211:
              v238 = *(v18 + 16);
              v237 = *(v18 + 24);
              v239 = v287;
              v240 = v284;
              if (v238 >= v237 >> 1)
              {
                v18 = sub_257BFCB14((v237 > 1), v238 + 1, 1, v18);
              }

              *(v18 + 16) = v238 + 1;
              *(v18 + v238 + 32) = v2;
              v292 = v18;
              v241 = sub_257ECF110();
              MEMORY[0x28223BE20](v241);
              *(&v265 - 2) = &v292;
              *(&v265 - 1) = v239;
              sub_257ECFD40();
              v240(v20, v286);
              goto LABEL_234;
            }

LABEL_274:
            v18 = sub_257BFCB14(0, *(v18 + 16) + 1, 1, v18);
            goto LABEL_211;
          }

LABEL_273:
          __break(1u);
          goto LABEL_274;
        }

LABEL_270:
        __break(1u);
LABEL_271:
        v264 = isUniquelyReferenced_nonNull_native;
        swift_once();
        isUniquelyReferenced_nonNull_native = v264;
        v255 = v268;
LABEL_237:
        *(isUniquelyReferenced_nonNull_native + 4) = byte_27F8F78A0;
        v257 = v148;
        v258 = isUniquelyReferenced_nonNull_native;
        _os_log_impl(&dword_257BAC000, v14, v257, "People detection enabled: %{BOOL}d", isUniquelyReferenced_nonNull_native, 8u);
        MEMORY[0x259C74820](v258, -1, -1);
LABEL_238:

        v259 = *(v20 + 1);
        v259(v255, v17);
        sub_257ECD420();
        v260 = sub_257ECDA20();
        v261 = sub_257ECFBD0();
        if (os_log_type_enabled(v260, v261))
        {
          v262 = swift_slowAlloc();
          *v262 = *(v2 + 2840);
          *(v262 + 4) = v279;
          _os_log_impl(&dword_257BAC000, v260, v261, "Flashlight is initially included in user preferences: %{BOOL}d", v262, 8u);
          MEMORY[0x259C74820](v262, -1, -1);
        }

        else
        {
        }

        v259(v281, v17);
        return v1;
    }
  }
}

uint64_t sub_257D6B3A4()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__storedSelectedDetectionRecordingOptions);
  swift_beginAccess();
  v3 = v2[1];
  v4 = v2[2];
  v8[0] = *v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = qword_2815447E0;

  if (v5 != -1)
  {
    v6 = swift_once();
  }

  MEMORY[0x28223BE20](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6B38);
  sub_257ECFD50();

  v8[0] = v8[3];

  sub_257D6D0F8(v8);

  *(v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_selectedDetectionRecordingOptions) = v8[0];
}

void sub_257D6B520()
{
  if (!*(v0 + 40))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v1 = v0;
  swift_beginAccess();
  v2 = qword_2815447E0;
  sub_257ECC3F0();

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  MEMORY[0x28223BE20](v3);
  sub_257ECFD50();

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = sub_257ECDD70();
  if (!*(v1 + 40))
  {
    goto LABEL_9;
  }

  MEMORY[0x28223BE20](v4);
  sub_257ECC3F0();

  sub_257ECFD50();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD70();
  if (!*(v1 + 40))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = swift_beginAccess();
  MEMORY[0x28223BE20](v5);
  sub_257ECC3F0();

  sub_257ECFD50();

  swift_getKeyPath();
  swift_getKeyPath();
  v6 = sub_257ECDD70();
  if (*(v1 + 40))
  {
    MEMORY[0x28223BE20](v6);
    sub_257ECC3F0();

    sub_257ECFD50();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD70();
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_257D6B910()
{

  sub_257D71D4C(*(v0 + 40));

  v1 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__shouldSaveCurrentActivity;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__isCurrentActivityUpdated, v2);
  v4 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__activityZoomPercentage;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9350);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__colorFilter;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54F0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__isFilterInActivityPresets, v2);
  v8 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedFilters;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F28);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__userIncludedFlashlightInControls, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__grabberSelected, v2);

  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__peopleDetection, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetection, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstanding, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionModeOn, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__imageCaption, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakEnabled, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__textDetectionEnabled, v2);

  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__peopleDetectionSpeechFeedbackWasModifiedByVoiceOver, v2);

  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__imageCaptionSpeechFeedbackWasModifiedByVoiceOver, v2);

  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionSpeechFeedbackWasModifiedByVoiceOver, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSpeechFeedbackWasModifiedByVoiceOver, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakSpeechFeedbackWasModified, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakSpeechFeedbackWasModifiedByVoiceOver, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__textDetectionSpeechFeedbackWasModified, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__textDetectionSpeechFeedbackWasModifiedByVoiceOver, v2);

  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionSpeechFeedbackWasModifiedByVoiceOver, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pauseDetectionMode, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pauseSpeech, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__stopSpeech, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__shouldUpdateLongPressHint, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__isReaderModeAvailable, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__isQuickReaderModeAvailable, v2);

  sub_257BE4084(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__longPressHintTimeStartDate, &qword_27F8F7F48);
}

uint64_t sub_257D6C36C()
{

  sub_257D71D4C(*(v0 + 40));

  v1 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__shouldSaveCurrentActivity;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__isCurrentActivityUpdated, v2);
  v4 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__activityZoomPercentage;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9350);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__colorFilter;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54F0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__isFilterInActivityPresets, v2);
  v8 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedFilters;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F28);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__userIncludedFlashlightInControls, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__grabberSelected, v2);

  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__peopleDetection, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetection, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstanding, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionModeOn, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__imageCaption, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakEnabled, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__textDetectionEnabled, v2);

  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__peopleDetectionSpeechFeedbackWasModifiedByVoiceOver, v2);

  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__imageCaptionSpeechFeedbackWasModifiedByVoiceOver, v2);

  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionSpeechFeedbackWasModifiedByVoiceOver, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSpeechFeedbackWasModifiedByVoiceOver, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakSpeechFeedbackWasModified, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakSpeechFeedbackWasModifiedByVoiceOver, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__textDetectionSpeechFeedbackWasModified, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__textDetectionSpeechFeedbackWasModifiedByVoiceOver, v2);

  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionSpeechFeedbackWasModifiedByVoiceOver, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pauseDetectionMode, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pauseSpeech, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__stopSpeech, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__shouldUpdateLongPressHint, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__isReaderModeAvailable, v2);
  v3(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__isQuickReaderModeAvailable, v2);

  sub_257BE4084(v0 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__longPressHintTimeStartDate, &qword_27F8F7F48);

  return v0;
}

uint64_t sub_257D6CDD8(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_257D6CE34()
{
  result = v0;
  *(v0 + 16) = 0xD000000000000022;
  *(v0 + 24) = 0x8000000257EF8070;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xD000000000000020;
  *(v0 + 48) = 0x8000000257EF8040;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xD000000000000026;
  *(v0 + 72) = 0x8000000257EF8010;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xD00000000000001DLL;
  *(v0 + 96) = 0x8000000257EF7ED0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xD000000000000020;
  *(v0 + 120) = 0x8000000257EF7EA0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0xD000000000000019;
  *(v0 + 144) = 0x8000000257EF7F10;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0xD00000000000001CLL;
  *(v0 + 168) = 0x8000000257EF7EF0;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0xD00000000000001DLL;
  *(v0 + 192) = 0x8000000257EF7E10;
  *(v0 + 200) = 0;
  *(v0 + 208) = 0xD000000000000023;
  *(v0 + 216) = 0x8000000257EF7DE0;
  *(v0 + 224) = 0;
  return result;
}

uint64_t sub_257D6CF34()
{
}

uint64_t sub_257D6CF9C()
{

  return v0;
}

uint64_t sub_257D6CFFC()
{
  sub_257D6CF9C();

  return swift_deallocClassInstance();
}

uint64_t sub_257D6D030()
{
}

uint64_t sub_257D6D07C()
{
  sub_257ECC3F0();

  return swift_deallocClassInstance();
}

uint64_t sub_257D6D0F8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_257C66F38(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_257D6EBE0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_257D6D268(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_257C67224(v2);
  }

  v3 = *(v2 + 2);
  v17[0] = (v2 + 32);
  v17[1] = v3;
  result = sub_257ED05F0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if ((*v13 & (v11 ^ 1) & 1) == 0)
          {
            break;
          }

          v13[1] = *v13;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_257ECF850();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v15[0] = v7 + 32;
    v15[1] = v6;
    sub_257CF42E8(v15, v16, v17, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_257D6D3DC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = a2(v4);
  }

  v5 = *(v4 + 16);
  v19[0] = v4 + 32;
  v19[1] = v5;
  result = sub_257ED05F0();
  if (result >= v5)
  {
    if (v5 >= 2)
    {
      v10 = -1;
      v11 = 1;
      v12 = (v4 + 32);
      do
      {
        v13 = *(v4 + 32 + v11);
        v14 = v10;
        v15 = v12;
        do
        {
          v16 = *v15;
          if (v13 >= v16)
          {
            break;
          }

          v15[1] = v16;
          *v15-- = v13;
        }

        while (!__CFADD__(v14++, 1));
        ++v11;
        ++v12;
        --v10;
      }

      while (v11 != v5);
    }
  }

  else
  {
    v7 = result;
    v8 = v5 >> 1;
    if (v5 >= 2)
    {
      v9 = sub_257ECF850();
      *(v9 + 16) = v8;
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v18[0] = v9 + 32;
    v18[1] = v8;
    sub_257D6F08C(v18, v20, v19, v7);
    *(v9 + 16) = 0;
  }

  *a1 = v4;
  return result;
}

double sub_257D6D574@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_257D6D5F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

void sub_257D6D668(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6900);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_257D6D728(uint64_t result)
{
  v2 = result;
  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_257D6E0C4(v11))
  {
LABEL_11:
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(*(v2 + 48) + (v10 | (v3 << 6)));
      v12 = *v1;
      if (*(*v1 + 16))
      {
        sub_257ED07B0();
        MEMORY[0x259C732E0](v11);
        v13 = sub_257ED0800();
        v14 = -1 << *(v12 + 32);
        v15 = v13 & ~v14;
        if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
        {
          break;
        }
      }

LABEL_6:
      result = sub_257C4D1D0(v17, v11);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v16 = ~v14;
    while (*(*(v12 + 48) + v15) != v11)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= i)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_11;
    }
  }
}

uint64_t sub_257D6D8B0(uint64_t result, uint64_t (*a2)(char *, uint64_t), void (*a3)(void))
{
  v5 = result;
  v6 = 0;
  v7 = result + 56;
  v8 = 1 << *(result + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(result + 56);
  for (i = (v8 + 63) >> 6; v10; result = sub_257D6E1CC(v14, a3))
  {
LABEL_11:
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v14 = *(*(v5 + 48) + (v13 | (v6 << 6)));
      v15 = *v3;
      if (*(*v3 + 16))
      {
        sub_257ED07B0();
        MEMORY[0x259C732E0](v14);
        v16 = sub_257ED0800();
        v17 = -1 << *(v15 + 32);
        v18 = v16 & ~v17;
        if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
        {
          break;
        }
      }

LABEL_6:
      result = a2(v21, v14);
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    v19 = ~v17;
    while (v14 != *(*(v15 + 48) + v18))
    {
      v18 = (v18 + 1) & v19;
      if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= i)
    {
      break;
    }

    v10 = *(v7 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_11;
    }
  }
}

uint64_t sub_257D6DA4C(uint64_t result, uint64_t (*a2)(char *, uint64_t), void (*a3)(void))
{
  v5 = result;
  v6 = 0;
  v7 = result + 56;
  v8 = 1 << *(result + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(result + 56);
  for (i = (v8 + 63) >> 6; v10; result = sub_257D6DBE8(v14, a3))
  {
LABEL_11:
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v14 = *(*(v5 + 48) + (v13 | (v6 << 6)));
      v15 = *v3;
      if (*(*v3 + 16))
      {
        sub_257ED07B0();
        MEMORY[0x259C732E0](v14);
        v16 = sub_257ED0800();
        v17 = -1 << *(v15 + 32);
        v18 = v16 & ~v17;
        if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
        {
          break;
        }
      }

LABEL_6:
      result = a2(v21, v14);
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    v19 = ~v17;
    while (*(*(v15 + 48) + v18) != v14)
    {
      v18 = (v18 + 1) & v19;
      if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= i)
    {
      break;
    }

    v10 = *(v7 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_11;
    }
  }
}

uint64_t sub_257D6DBE8(unsigned __int8 a1, void (*a2)(void))
{
  v5 = *v2;
  sub_257ED07B0();
  MEMORY[0x259C732E0](a1);
  v6 = sub_257ED0800();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 4;
  }

  v9 = ~v7;
  while (*(*(v5 + 48) + v8) != a1)
  {
    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 4;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v14 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + v8);
  sub_257D6E8B0(v8);
  result = v13;
  *v2 = v14;
  return result;
}

uint64_t sub_257D6DCF8@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = type metadata accessor for Occupant();
  v21 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1;
  v5 = *v1;
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257D7318C(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  v6 = sub_257ED0800();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return (*(v21 + 56))(v20, 1, 1, v2);
  }

  v9 = ~v7;
  v10 = *(v21 + 72);
  while (1)
  {
    v11 = v10 * v8;
    sub_257D730C4(*(v5 + 48) + v10 * v8, v4, type metadata accessor for Occupant);
    if (sub_257ECCCC0())
    {
      break;
    }

    sub_257D7312C(v4, type metadata accessor for Occupant);
LABEL_4:
    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return (*(v21 + 56))(v20, 1, 1, v2);
    }
  }

  v12 = sub_257ECCC40();
  sub_257D7312C(v4, type metadata accessor for Occupant);
  if ((v12 & 1) == 0)
  {
    goto LABEL_4;
  }

  v13 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v13;
  v22 = *v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_257C4DDBC();
    v15 = v22;
  }

  v16 = v20;
  sub_257C587D8(*(v15 + 48) + v11, v20);
  sub_257D6E3D8(v8);
  v17 = v21;
  *v13 = v22;
  return (*(v17 + 56))(v16, 0, 1, v2);
}

uint64_t sub_257D6DF88(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_257ED07B0();
  sub_257ECF5D0();
  v6 = sub_257ED0800();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_257ED0640() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_257C4DFB4();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_257D6E6EC(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_257D6E0C4(unsigned __int8 a1)
{
  v3 = *v1;
  sub_257ED07B0();
  MEMORY[0x259C732E0](a1);
  v4 = sub_257ED0800();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 3;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 3;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_257C4E110();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v6);
  sub_257D6E8B0(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_257D6E1CC(char a1, void (*a2)(void))
{
  v5 = *v2;
  sub_257ED07B0();
  MEMORY[0x259C732E0](a1 & 1);
  v6 = sub_257ED0800();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 2;
  }

  v9 = ~v7;
  while (*(*(v5 + 48) + v8) != (a1 & 1))
  {
    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 2;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v14 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + v8);
  sub_257D6E8B0(v8);
  result = v13;
  *v2 = v14;
  return result;
}

unint64_t sub_257D6E2DC(unsigned int a1)
{
  v3 = *v1;
  v4 = MEMORY[0x259C732B0](*(*v1 + 40), a1, 4);
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (*(*(v3 + 48) + 4 * v6) != a1)
    {
      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v1;
    v13 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_257C4E290();
      v11 = v13;
    }

    v8 = *(*(v11 + 48) + 4 * v6);
    sub_257D6EA58(v6);
    v9 = 0;
    *v1 = v13;
  }

  else
  {
LABEL_5:
    v8 = 0;
    v9 = 1;
  }

  return v8 | (v9 << 32);
}

uint64_t sub_257D6E3D8(int64_t a1)
{
  v25 = type metadata accessor for Occupant();
  v3 = *(v25 - 8);
  result = MEMORY[0x28223BE20](v25);
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;
    sub_257ECC3F0();
    v11 = sub_257ED01A0();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v12 = (v11 + 1) & v10;
      v13 = *(v3 + 72);
      v26 = v13;
      v27 = v7;
      do
      {
        v14 = v13 * v9;
        v15 = v28;
        sub_257D730C4(*(v6 + 48) + v13 * v9, v28, type metadata accessor for Occupant);
        v16 = v6;
        sub_257ED07B0();
        sub_257ECCCF0();
        sub_257D7318C(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
        v17 = v12;
        sub_257ECF400();
        v18 = sub_257ED0800();
        sub_257D7312C(v15, type metadata accessor for Occupant);
        v19 = v18 & v10;
        v12 = v17;
        if (a1 >= v17)
        {
          if (v19 < v17)
          {
            v6 = v16;
          }

          else
          {
            v6 = v16;
            if (a1 >= v19)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          v6 = v16;
          if (v19 >= v12 || a1 >= v19)
          {
LABEL_13:
            v13 = v26;
            v20 = v26 * a1;
            if (v26 * a1 < v14 || *(v6 + 48) + v26 * a1 >= (*(v6 + 48) + v14 + v26))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v9;
            }

            else
            {
              a1 = v9;
              if (v20 != v14)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v9;
              }
            }

            goto LABEL_6;
          }
        }

        v13 = v26;
LABEL_6:
        v9 = (v9 + 1) & v10;
        v7 = v27;
      }

      while (((*(v27 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }

    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v21 = *(v6 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v23;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_257D6E6EC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    sub_257ECC3F0();
    v8 = sub_257ED01A0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_257ED07B0();

        sub_257ECF5D0();
        v10 = sub_257ED0800();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_257D6E8B0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    sub_257ECC3F0();
    v8 = sub_257ED01A0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        sub_257ED07B0();
        MEMORY[0x259C732E0](v10);
        v11 = sub_257ED0800() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_257D6EA58(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    sub_257ECC3F0();
    v8 = sub_257ED01A0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 4 * v6);
        v12 = MEMORY[0x259C732B0](*(v3 + 40), *v11, 4) & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 4 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

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

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_257D6EBE0(void *a1)
{
  v3 = a1[1];
  result = sub_257ED05F0();
  if (result >= v3)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      return result;
    }

    __break(1u);
    goto LABEL_7;
  }

  if (v3 < -1)
  {
    __break(1u);
    return result;
  }

  v1 = v3 / 2;
  if (v3 <= 1)
  {
LABEL_7:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_8;
  }

  v5 = sub_257ECF850();
  *(v5 + 16) = v1;
LABEL_8:
  v7[0] = v5 + 32;
  v7[1] = v1;
  v6 = v5;
  sub_257D6ECB0(v7, v8, a1);
  *(v6 + 16) = 0;
}

uint64_t sub_257D6ECB0(uint64_t result, uint64_t a2, void *a3)
{
  v4 = a3[1];
  v63 = result;
  if (v4 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_56:
    v5 = *v63;
    if (*v63)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_58;
    }

LABEL_90:
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = *result;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v5 + 1;
    if (v5 + 1 < v4)
    {
      v8 = v4;
      if (v4 < v5)
      {
        goto LABEL_85;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v64 = v8;
    if ((result & 1) == 0)
    {
      result = sub_257BFCB00(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v10 = *(v7 + 16);
    v9 = *(v7 + 24);
    v11 = v10 + 1;
    if (v10 >= v9 >> 1)
    {
      result = sub_257BFCB00((v9 > 1), v10 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v11;
    v12 = v7 + 32;
    v13 = (v7 + 32 + 16 * v10);
    *v13 = v5;
    v13[1] = v8;
    if (!v6)
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if (v10)
    {
      break;
    }

LABEL_3:
    v4 = a3[1];
    v5 = v64;
    if (v64 >= v4)
    {
      goto LABEL_56;
    }
  }

  while (1)
  {
    v5 = v11 - 1;
    if (v11 >= 4)
    {
      v18 = v12 + 16 * v11;
      v19 = *(v18 - 64);
      v20 = *(v18 - 56);
      v24 = __OFSUB__(v20, v19);
      v21 = v20 - v19;
      if (v24)
      {
        goto LABEL_70;
      }

      v23 = *(v18 - 48);
      v22 = *(v18 - 40);
      v24 = __OFSUB__(v22, v23);
      v16 = v22 - v23;
      v17 = v24;
      if (v24)
      {
        goto LABEL_71;
      }

      v25 = (v7 + 16 * v11);
      v27 = *v25;
      v26 = v25[1];
      v24 = __OFSUB__(v26, v27);
      v28 = v26 - v27;
      if (v24)
      {
        goto LABEL_73;
      }

      v24 = __OFADD__(v16, v28);
      v29 = v16 + v28;
      if (v24)
      {
        goto LABEL_75;
      }

      if (v29 >= v21)
      {
        v47 = (v12 + 16 * v5);
        v49 = *v47;
        v48 = v47[1];
        v24 = __OFSUB__(v48, v49);
        v50 = v48 - v49;
        if (v24)
        {
          goto LABEL_81;
        }

        if (v16 < v50)
        {
          v5 = v11 - 2;
        }

        goto LABEL_47;
      }

      goto LABEL_25;
    }

    if (v11 == 3)
    {
      v14 = *(v7 + 32);
      v15 = *(v7 + 40);
      v24 = __OFSUB__(v15, v14);
      v16 = v15 - v14;
      v17 = v24;
LABEL_25:
      if (v17)
      {
        goto LABEL_72;
      }

      v30 = (v7 + 16 * v11);
      v32 = *v30;
      v31 = v30[1];
      v33 = __OFSUB__(v31, v32);
      v34 = v31 - v32;
      v35 = v33;
      if (v33)
      {
        goto LABEL_74;
      }

      v36 = (v12 + 16 * v5);
      v38 = *v36;
      v37 = v36[1];
      v24 = __OFSUB__(v37, v38);
      v39 = v37 - v38;
      if (v24)
      {
        goto LABEL_77;
      }

      if (__OFADD__(v34, v39))
      {
        goto LABEL_79;
      }

      if (v34 + v39 >= v16)
      {
        if (v16 < v39)
        {
          v5 = v11 - 2;
        }

        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (v11 < 2)
    {
      goto LABEL_80;
    }

    v40 = (v7 + 16 * v11);
    v42 = *v40;
    v41 = v40[1];
    v24 = __OFSUB__(v41, v42);
    v34 = v41 - v42;
    v35 = v24;
LABEL_40:
    if (v35)
    {
      goto LABEL_76;
    }

    v43 = (v12 + 16 * v5);
    v45 = *v43;
    v44 = v43[1];
    v24 = __OFSUB__(v44, v45);
    v46 = v44 - v45;
    if (v24)
    {
      goto LABEL_78;
    }

    if (v46 < v34)
    {
      goto LABEL_3;
    }

LABEL_47:
    if (v5 - 1 >= v11)
    {
      break;
    }

    if (!*a3)
    {
      __break(1u);
      goto LABEL_88;
    }

    v51 = (v12 + 16 * (v5 - 1));
    v52 = *v51;
    v53 = (v12 + 16 * v5);
    v54 = v53[1];
    sub_257D6F5C8((*a3 + *v51), (*a3 + *v53), *a3 + v54, v6);
    if (v3)
    {
    }

    if (v54 < v52)
    {
      goto LABEL_67;
    }

    if (v5 > *(v7 + 16))
    {
      goto LABEL_68;
    }

    *v51 = v52;
    v51[1] = v54;
    v55 = *(v7 + 16);
    if (v5 >= v55)
    {
      goto LABEL_69;
    }

    v11 = v55 - 1;
    result = memmove((v12 + 16 * v5), v53 + 2, 16 * (v55 - 1 - v5));
    *(v7 + 16) = v55 - 1;
    if (v55 <= 2)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
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
LABEL_86:
  result = sub_257C66E20(v7);
  v7 = result;
LABEL_58:
  v56 = (v7 + 16);
  v57 = *(v7 + 16);
  if (v57 >= 2)
  {
    while (*a3)
    {
      v58 = (v7 + 16 * v57);
      v59 = *v58;
      v60 = &v56[2 * v57];
      v61 = v60[1];
      sub_257D6F5C8((*a3 + *v58), (*a3 + *v60), *a3 + v61, v5);
      if (v3)
      {
      }

      if (v61 < v59)
      {
        goto LABEL_82;
      }

      if (v57 - 2 >= *v56)
      {
        goto LABEL_83;
      }

      *v58 = v59;
      v58[1] = v61;
      v62 = *v56 - v57;
      if (*v56 < v57)
      {
        goto LABEL_84;
      }

      v57 = *v56 - 1;
      result = memmove(v60, v60 + 2, 16 * v62);
      *v56 = v57;
      if (v57 <= 1)
      {
      }
    }

LABEL_88:
    __break(1u);
    goto LABEL_89;
  }
}

uint64_t sub_257D6F08C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_88:
    v85 = *v85;
    if (!v85)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_257C66E20(v9);
      v9 = result;
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_257D6F720((*a3 + *v79), (*a3 + *v81), *a3 + v82, v85);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_257BFCB00(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_257BFCB00((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *v85;
    if (!*v85)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_257D6F720((*a3 + v74), (*a3 + *&v9[16 * v35 + 32]), *a3 + v75, v34);
        if (v4)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_257C66E20(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        result = sub_257C66D94(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_257D6F5C8(_BYTE *__src, _BYTE *__dst, unint64_t a3, _BYTE *a4)
{
  v4 = a4;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = a3 - __dst;
  if (__dst - __src >= (a3 - __dst))
  {
    if (a4 != __dst || a4 >= a3)
    {
      memmove(a4, __dst, a3 - __dst);
    }

    v10 = &v4[v9];
    if (v7 < v6 && v9 >= 1)
    {
      v12 = (a3 - 1);
      do
      {
        v13 = v12 + 1 < v10 || v12 >= v10;
        --v10;
        if (v13)
        {
          *v12 = *v10;
        }

        --v12;
      }

      while (v10 > v4);
    }
  }

  else
  {
    if (a4 != __src || a4 >= __dst)
    {
      memmove(a4, __src, v8);
    }

    v10 = &v4[v8];
    if (v6 < a3 && v8 >= 1)
    {
      do
      {
        v11 = v4 + 1;
        if (v7 < v4 || v7 >= v11)
        {
          *v7 = *v4;
        }

        ++v7;
        ++v4;
      }

      while (v11 < v10);
      v4 = v11;
    }

    v6 = v7;
  }

  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

uint64_t sub_257D6F720(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v18 < v19)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (v11 >= *v4)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

void sub_257D6F90C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v6 = sub_257C03F6C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    __src[0] = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_257C083F0();
      v10 = __src[0];
    }

    memmove(a3, (*(v10 + 56) + 296 * v8), 0x128uLL);
    sub_257C06D88(v8, v10);
    *v4 = v10;
    CGSizeMake(a3);
  }

  else
  {
    sub_257C10998(__src);
    memcpy(a3, __src, 0x128uLL);
  }
}

void sub_257D6FA40(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v4;
  v9 = *(a1 + 32);
  v5 = sub_257D13368(v8);
  if (!v2)
  {
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = v7;
  }
}

uint64_t sub_257D6FAB8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257D13C18(*a1, *(a1 + 8), *(a1 + 16));
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_257D6FB64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_257D6FBAC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_257D6FC30()
{
  sub_257D7085C(319, &qword_281544098, &unk_27F8F9BB0);
  if (v0 <= 0x3F)
  {
    sub_257D7085C(319, &qword_27F8F87E8, &qword_27F8F87F0);
    if (v1 <= 0x3F)
    {
      sub_257D7085C(319, &qword_2815440C0, &qword_27F8F87F8);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_257D6FDA4()
{
  sub_257CD4C1C(319, &qword_2815440F0);
  if (v0 <= 0x3F)
  {
    sub_257D7085C(319, &qword_27F8F8828, &unk_27F8F4D70);
    if (v1 <= 0x3F)
    {
      sub_257D7085C(319, &qword_27F8F8830, &qword_27F8F6FA0);
      if (v2 <= 0x3F)
      {
        sub_257CD4C1C(319, &qword_2815440D0);
        if (v3 <= 0x3F)
        {
          sub_257CD4C1C(319, &qword_2815440C8);
          if (v4 <= 0x3F)
          {
            sub_257D7085C(319, &unk_2815440A0, &qword_27F8F8838);
            if (v5 <= 0x3F)
            {
              sub_257CD4C1C(319, &qword_27F8F8840);
              if (v6 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_257D7006C()
{
  sub_257CD4C1C(319, &qword_2815440D0);
  if (v0 <= 0x3F)
  {
    sub_257CD4C1C(319, &qword_2815440E0);
    if (v1 <= 0x3F)
    {
      sub_257D7044C(319, &qword_281544100, MEMORY[0x277CC9AF8]);
      if (v2 <= 0x3F)
      {
        sub_257D7085C(319, &unk_281544108, &qword_27F8F5F30);
        if (v3 <= 0x3F)
        {
          sub_257D7085C(319, &qword_27F8F8860, &qword_27F8F8868);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_257D70290()
{
  sub_257CD4C1C(319, &qword_2815440F8);
  if (v0 <= 0x3F)
  {
    sub_257D7044C(319, &qword_27F8F8880, type metadata accessor for CGPoint);
    if (v1 <= 0x3F)
    {
      sub_257D7085C(319, &qword_27F8F8888, &qword_27F8F8890);
      if (v2 <= 0x3F)
      {
        sub_257D7085C(319, &unk_281544108, &qword_27F8F5F30);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_257D7044C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_257ECDD80();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_257D704C8()
{
  sub_257CD4C1C(319, &qword_2815440D0);
  if (v0 <= 0x3F)
  {
    sub_257CD4C1C(319, &qword_2815440F8);
    if (v1 <= 0x3F)
    {
      sub_257CD4C1C(319, &qword_2815440E8);
      if (v2 <= 0x3F)
      {
        sub_257D7085C(319, &qword_2815440D8, &qword_27F8F7F28);
        if (v3 <= 0x3F)
        {
          sub_257D708B0();
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_257D7085C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_257ECDD80();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_257D708B0()
{
  if (!qword_27F8F8940)
  {
    sub_257ECCC80();
    v0 = MEMORY[0x277CC9578];
    sub_257D7318C(&qword_27F8F7F50, MEMORY[0x277CC9578]);
    sub_257D7318C(&qword_27F8F8948, v0);
    v1 = type metadata accessor for DefaultStorage();
    if (!v2)
    {
      atomic_store(v1, &qword_27F8F8940);
    }
  }
}

uint64_t sub_257D70A00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 296))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_257D70A48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 296) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 296) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_257D70B3C()
{
  result = qword_27F8F8960;
  if (!qword_27F8F8960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8960);
  }

  return result;
}

unint64_t sub_257D70B94()
{
  result = qword_27F8F8968;
  if (!qword_27F8F8968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8968);
  }

  return result;
}

uint64_t sub_257D70C50@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257D13EAC(*a1, *(a1 + 8), *(a1 + 16));
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_257D70CB8@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2]);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_257D70DA4(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = sub_257D14144(*(a1 + 16));
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_257D70DDC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if ((*a1 ^ *a2))
  {
    return result;
  }

  if ((a1[1] ^ a2[1]))
  {
    return result;
  }

  if (*(a1 + 1) != *(a2 + 1))
  {
    return result;
  }

  if (*(a1 + 2) != *(a2 + 2))
  {
    return result;
  }

  if (*(a1 + 3) != *(a2 + 3))
  {
    return result;
  }

  if (a1[32] != a2[32])
  {
    return result;
  }

  v4 = *(a1 + 10);
  v6 = *(a1 + 12);
  v5 = *(a1 + 13);
  v82 = *(a1 + 17);
  v80 = *(a1 + 18);
  v78 = *(a1 + 19);
  v58 = *(a1 + 27);
  v56 = *(a1 + 28);
  v54 = *(a1 + 29);
  v7 = a2[52];
  v8 = a2[53];
  v9 = *(a2 + 8);
  v102 = a2[73];
  v103 = a2[72];
  v101 = a2[74];
  v99 = a2[75];
  v97 = a2[76];
  v95 = a2[77];
  v93 = a2[78];
  v10 = *(a2 + 10);
  v90 = *(a2 + 11);
  v91 = *(a2 + 7);
  v11 = *(a2 + 12);
  v12 = *(a2 + 13);
  v88 = *(a2 + 14);
  v86 = *(a2 + 15);
  v84 = a2[128];
  v81 = *(a2 + 17);
  v79 = *(a2 + 18);
  v77 = *(a2 + 19);
  v76 = a2[160];
  v74 = a2[161];
  v72 = a2[162];
  v70 = *(a2 + 21);
  v68 = a2[176];
  v66 = *(a2 + 23);
  v64 = *(a2 + 24);
  v62 = *(a2 + 25);
  v60 = *(a2 + 26);
  v57 = *(a2 + 27);
  v55 = *(a2 + 28);
  v53 = *(a2 + 29);
  v52 = a2[240];
  v50 = a2[241];
  v48 = a2[242];
  v46 = a2[243];
  v13 = *(a2 + 12);
  v44 = *(a2 + 31);
  v42 = *(a2 + 32);
  v40 = *(a2 + 33);
  v38 = *(a2 + 34);
  v14 = *(a2 + 35);
  v35 = *(a2 + 36);
  v15 = *(a1 + 12);
  v16 = a1[52];
  v17 = a1[53];
  v18 = *(a1 + 7);
  v19 = *(a1 + 8);
  v20 = a1[72];
  v21 = a1[73];
  v100 = a1[74];
  v98 = a1[75];
  v96 = a1[76];
  v94 = a1[77];
  v92 = a1[78];
  v89 = *(a1 + 11);
  v87 = *(a1 + 14);
  v85 = *(a1 + 15);
  v83 = a1[128];
  v75 = a1[160];
  v73 = a1[161];
  v71 = a1[162];
  v69 = *(a1 + 21);
  v67 = a1[176];
  v65 = *(a1 + 23);
  v63 = *(a1 + 24);
  v61 = *(a1 + 25);
  v59 = *(a1 + 26);
  v51 = a1[240];
  v49 = a1[241];
  v47 = a1[242];
  v45 = a1[243];
  v43 = *(a1 + 31);
  v41 = *(a1 + 32);
  v39 = *(a1 + 33);
  v36 = *(a1 + 35);
  v37 = *(a1 + 34);
  v34 = *(a1 + 36);
  v22 = sub_257D55F54(*(a1 + 5), *(a2 + 5));
  result = 0;
  if ((v22 & 1) == 0 || v15 != v13)
  {
    return result;
  }

  v33 = v14;
  v23 = 0xEA0000000000746FLL;
  v24 = 0x6853656C676E6973;
  if (v16)
  {
    if (v16 == 1)
    {
      v25 = 0x6F685369746C756DLL;
      v26 = 0xE900000000000074;
      if (!v7)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v26 = 0xE800000000000000;
      v25 = 0x746E656D75636F64;
      if (!v7)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v25 = 0x6853656C676E6973;
    v26 = 0xEA0000000000746FLL;
    if (!v7)
    {
LABEL_18:
      if (v25 != v24)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }
  }

  if (v7 == 1)
  {
    v24 = 0x6F685369746C756DLL;
    v23 = 0xE900000000000074;
    goto LABEL_18;
  }

  v23 = 0xE800000000000000;
  if (v25 != 0x746E656D75636F64)
  {
LABEL_24:
    v27 = sub_257ED0640();

    result = 0;
    if ((v27 & 1) == 0 || v17 != v8)
    {
      return result;
    }

    goto LABEL_26;
  }

LABEL_21:
  if (v26 != v23)
  {
    goto LABEL_24;
  }

  if (v17 != v8)
  {
    return 0;
  }

LABEL_26:
  if (v19)
  {
    if (!v9)
    {
      return 0;
    }

    if (v18 == v91 && v19 == v9)
    {
      result = 0;
      if (v20 != v103 || ((v21 ^ v102) & 1) != 0 || ((v100 ^ v101) & 1) != 0 || ((v98 ^ v99) & 1) != 0 || ((v96 ^ v97) & 1) != 0 || ((v94 ^ v95) & 1) != 0 || ((v92 ^ v93) & 1) != 0)
      {
        return result;
      }

      goto LABEL_48;
    }

    v28 = sub_257ED0640();
    result = 0;
    if ((v28 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v9)
    {
      return result;
    }
  }

  if (v20 != v103 || v21 != v102 || v100 != v101 || v98 != v99 || v96 != v97 || v94 != v95 || v92 != v93)
  {
    return result;
  }

LABEL_48:
  if (v4 != v10)
  {
    return result;
  }

  v29 = sub_257D55F54(v89, v90);
  result = 0;
  if ((v29 & 1) == 0 || v6 != v11 || v5 != v12)
  {
    return result;
  }

  if ((sub_257D55F54(v87, v88) & 1) == 0)
  {
    return 0;
  }

  v30 = sub_257D55F54(v85, v86);
  result = 0;
  if ((v30 & 1) == 0)
  {
    return result;
  }

  if ((v83 ^ v84))
  {
    return result;
  }

  if (v82 != v81)
  {
    return result;
  }

  if (v80 != v79)
  {
    return result;
  }

  if (v78 != v77)
  {
    return result;
  }

  if ((v75 ^ v76))
  {
    return result;
  }

  if ((v73 ^ v74))
  {
    return result;
  }

  if ((v71 ^ v72))
  {
    return result;
  }

  v31 = sub_257D55F54(v69, v70);
  result = 0;
  if (v31 & 1) == 0 || ((v67 ^ v68))
  {
    return result;
  }

  if ((sub_257D55EE0(v65, v66) & 1) == 0 || (sub_257D55F54(v63, v64) & 1) == 0 || (sub_257D55EE0(v61, v62) & 1) == 0)
  {
    return 0;
  }

  v32 = sub_257D55F54(v59, v60);
  result = 0;
  if (v32 & 1) == 0 || v58 != v57 || v56 != v55 || v54 != v53 || ((v51 ^ v52) & 1) != 0 || ((v49 ^ v50) & 1) != 0 || ((v47 ^ v48) & 1) != 0 || ((v45 ^ v46))
  {
    return result;
  }

  if ((sub_257D55F54(v43, v44) & 1) == 0 || (sub_257D55FB0(v41, v42) & 1) == 0 || (sub_257D55FB0(v39, v40) & 1) == 0 || (sub_257D55FB0(v37, v38) & 1) == 0)
  {
    return 0;
  }

  if (v36 == v33 && v34 == v35)
  {
    return 1;
  }

  return sub_257ED0640();
}

unint64_t sub_257D714F0()
{
  result = qword_281544060;
  if (!qword_281544060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F4D90);
    sub_257D7157C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544060);
  }

  return result;
}

unint64_t sub_257D7157C()
{
  result = qword_281544FF0;
  if (!qword_281544FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544FF0);
  }

  return result;
}

uint64_t sub_257D715D0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8978);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED9BD0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v5 = sub_257D521F8(inited, &unk_286903790);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0);
  swift_arrayDestroy();
  if (qword_27F8F4618 != -1)
  {
    swift_once();
  }

  if (byte_27F8F78A0)
  {
    v6 = &unk_286903888;
  }

  else
  {
    v6 = &unk_286903860;
  }

  if (byte_27F8F78A0)
  {
    v7 = &unk_2869038A8;
  }

  else
  {
    v7 = &unk_286903880;
  }

  v8 = sub_257D521F8(v6, v5);

  sub_257BE4084(v7, &qword_27F8F70B0);
  v9 = sub_257D521F8(&unk_2869038B0, v8);

  sub_257BE4084(&unk_2869038D0, &qword_27F8F70B0);
  v10 = sub_257D521F8(&unk_2869038D8, v9);

  sub_257BE4084(&unk_2869038F8, &qword_27F8F70B0);
  return v10;
}

uint64_t sub_257D71788()
{
  sub_257BE87A4(&unk_286903B80);
  sub_257BE4084(&unk_286903BA0, &qword_27F8F89D8);
  v0 = sub_257ECF3C0();

  v1 = MKBGetDeviceLockState();

  return (v1 < 8) & (0x46u >> v1);
}

uint64_t sub_257D71864@<X0>(_BYTE *a1@<X8>)
{
  result = sub_257D13C18(**(v1 + 16), *(*(v1 + 16) + 8), *(*(v1 + 16) + 16));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_257D71938(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  v9[0] = *v4;
  v9[1] = v5;
  v10 = *(v4 + 32);
  v6 = sub_257D13368(v9);
  if (!v2)
  {
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
  }
}

uint64_t sub_257D71988@<X0>(_BYTE *a1@<X8>)
{
  result = sub_257D13EAC(**(v1 + 16), *(*(v1 + 16) + 8), *(*(v1 + 16) + 16));
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_257D71AA4(char a1, void (*a2)(uint64_t), const char *a3)
{
  v6 = sub_257ECDA30();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v8);
  v11 = sub_257ECDA20();
  v12 = sub_257ECFBD0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a1 & 1;
    _os_log_impl(&dword_257BAC000, v11, v12, a3, v13, 8u);
    MEMORY[0x259C74820](v13, -1, -1);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_257D71D4C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_257D71DCC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return v1(*(v0 + 16));
  }

  return result;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

unint64_t sub_257D71E1C()
{
  result = qword_281544BF8[0];
  if (!qword_281544BF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281544BF8);
  }

  return result;
}

unint64_t sub_257D71EB4()
{
  result = qword_281544020;
  if (!qword_281544020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F5F90);
    sub_257D71F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544020);
  }

  return result;
}

unint64_t sub_257D71F38()
{
  result = qword_281544818;
  if (!qword_281544818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544818);
  }

  return result;
}

unint64_t sub_257D71FD0()
{
  result = qword_281544040;
  if (!qword_281544040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F5A90);
    sub_257D72054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544040);
  }

  return result;
}

unint64_t sub_257D72054()
{
  result = qword_2815458E0;
  if (!qword_2815458E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815458E0);
  }

  return result;
}

unint64_t sub_257D720A8()
{
  result = qword_281545AA8;
  if (!qword_281545AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281545AA8);
  }

  return result;
}

unint64_t sub_257D72140()
{
  result = qword_281544010;
  if (!qword_281544010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F8470);
    sub_257D721C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544010);
  }

  return result;
}

unint64_t sub_257D721C4()
{
  result = qword_2815447D0;
  if (!qword_2815447D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815447D0);
  }

  return result;
}

uint64_t sub_257D722A0(uint64_t result)
{
  if (result)
  {
    sub_257ECC3F0();
    sub_257ECC3F0();
    sub_257ECC3F0();
    sub_257ECC3F0();
    sub_257ECC3F0();

    return sub_257ECC3F0();
  }

  return result;
}

unint64_t sub_257D72320()
{
  result = qword_281543FD0;
  if (!qword_281543FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F70B0);
    sub_257D723A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281543FD0);
  }

  return result;
}

unint64_t sub_257D723A4()
{
  result = qword_2815444C8[0];
  if (!qword_2815444C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2815444C8);
  }

  return result;
}

unint64_t sub_257D723F8()
{
  result = qword_27F8F8988;
  if (!qword_27F8F8988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6A20);
    sub_257D7247C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8988);
  }

  return result;
}

unint64_t sub_257D7247C()
{
  result = qword_27F8F8990;
  if (!qword_27F8F8990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8990);
  }

  return result;
}

unint64_t sub_257D72514()
{
  result = qword_27F8F8998;
  if (!qword_27F8F8998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F4B90);
    sub_257D72598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8998);
  }

  return result;
}

unint64_t sub_257D72598()
{
  result = qword_27F8F89A0;
  if (!qword_27F8F89A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F89A0);
  }

  return result;
}

unint64_t sub_257D72630()
{
  result = qword_281544000;
  if (!qword_281544000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F5880);
    sub_257D726B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544000);
  }

  return result;
}

unint64_t sub_257D726B4()
{
  result = qword_2815446D0;
  if (!qword_2815446D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815446D0);
  }

  return result;
}

unint64_t sub_257D7274C()
{
  result = qword_281544030;
  if (!qword_281544030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6AD8);
    sub_257D727D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544030);
  }

  return result;
}

unint64_t sub_257D727D0()
{
  result = qword_281544830;
  if (!qword_281544830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544830);
  }

  return result;
}

unint64_t sub_257D72868()
{
  result = qword_281544050;
  if (!qword_281544050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7F28);
    sub_257D728EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544050);
  }

  return result;
}

unint64_t sub_257D728EC()
{
  result = qword_2815459B8[0];
  if (!qword_2815459B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2815459B8);
  }

  return result;
}

unint64_t sub_257D72940()
{
  result = qword_2815458F8[0];
  if (!qword_2815458F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2815458F8);
  }

  return result;
}

unint64_t sub_257D72994()
{
  result = qword_2815457F8;
  if (!qword_2815457F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815457F8);
  }

  return result;
}

unint64_t sub_257D729E8()
{
  result = qword_281545A80;
  if (!qword_281545A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281545A80);
  }

  return result;
}

unint64_t sub_257D72A3C()
{
  result = qword_281545008[0];
  if (!qword_281545008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281545008);
  }

  return result;
}

unint64_t sub_257D72A90()
{
  result = qword_281543FF0;
  if (!qword_281543FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F5540);
    sub_257D72B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281543FF0);
  }

  return result;
}

unint64_t sub_257D72B14()
{
  result = qword_2815446B0;
  if (!qword_2815446B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815446B0);
  }

  return result;
}

unint64_t sub_257D72B68()
{
  result = qword_281543FE0;
  if (!qword_281543FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7080);
    sub_257D72BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281543FE0);
  }

  return result;
}

unint64_t sub_257D72BEC()
{
  result = qword_2815445A0;
  if (!qword_2815445A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815445A0);
  }

  return result;
}

uint64_t sub_257D72C40()
{
  v0 = sub_257ED04B0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}