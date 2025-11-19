void sub_257DAA6FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [*(Strong + OBJC_IVAR____TtC16MagnifierSupport13MFChevronView_chevronShapeAnimatableProperty) presentationValue];
    sub_257DAA1B8(v2);
  }
}

void sub_257DAA884()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport13MFChevronView_chevronLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v2 = OBJC_IVAR____TtC16MagnifierSupport13MFChevronView_chevronShapeAnimatableProperty;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75D38]) init];
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport13MFChevronView_chevronWidth) = 0x402E000000000000;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport13MFChevronView_chevronLineWidth) = 0x4014000000000000;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport13MFChevronView_chevronDistanceFromTopEdge) = 0xC026000000000000;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport13MFChevronView_chevronHeightInUpState) = 0x4022000000000000;
  sub_257ED0410();
  __break(1u);
}

unint64_t sub_257DAA96C()
{
  result = qword_281543E90;
  if (!qword_281543E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281543E90);
  }

  return result;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

id MAGCaptureService.__allocating_init(captureSession:eventHandler:)(void *a1, uint64_t a2)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v5 = xmmword_281548330;
  v6 = qword_281548340;
  v7 = qword_281548348;
  v8 = qword_281548350;
  v9 = qword_281548358;
  objc_allocWithZone(type metadata accessor for MAGCaptureService());
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  return MAGCaptureService.init(captureSession:eventHandler:environment:)(a1, a2, &v5);
}

uint64_t sub_257DAAAD8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return v1;
}

uint64_t sub_257DAAB4C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureDeviceID];
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureDeviceID + 8];
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v0;
  sub_257ECDD60();

  if (!v12)
  {
    if (!v2)
    {
    }

    goto LABEL_10;
  }

  v5 = [v12 uniqueID];

  v6 = sub_257ECF500();
  v8 = v7;

  if (!v2)
  {
    if (!v8)
    {
    }

    goto LABEL_10;
  }

  if (!v8)
  {
LABEL_10:

LABEL_11:
    if ([*&v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession] isRunning])
    {
      v10 = swift_allocObject();
      *(v10 + 16) = sub_257DB8298;
      *(v10 + 24) = v1;
      sub_257ECC3F0();
      sub_257DB0FF4(sub_257DB82A0, v10);
    }

    else
    {
      sub_257DAAD48();
    }
  }

  if (v3 == v6 && v2 == v8)
  {
  }

  v11 = sub_257ED0640();

  if ((v11 & 1) == 0)
  {
    goto LABEL_11;
  }
}

uint64_t sub_257DAAD48()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v0 = v5;
  if (v5)
  {
    v1 = [v5 uniqueID];

    v2 = sub_257ECF500();
    v0 = v3;
  }

  else
  {
    v2 = 0;
  }

  sub_257DB69CC(v2, v0);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v5)
  {

    return sub_257DB05D0(0, 0);
  }

  return result;
}

uint64_t sub_257DAAE70()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return v1;
}

uint64_t type metadata accessor for MAGCaptureService()
{
  result = qword_27F8F91C8;
  if (!qword_27F8F91C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id MAGCaptureService.init(captureSession:eventHandler:environment:)(void *a1, uint64_t a2, __int128 *a3)
{
  v4 = v3;
  v52 = a1;
  v53 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9108);
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x28223BE20](v6);
  v49 = v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9110);
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x28223BE20](v8);
  v46 = v41 - v9;
  v10 = sub_257ECFD20();
  v11 = *(v10 - 8);
  v54 = v10;
  v55 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v14);
  v15 = sub_257ECF190();
  MEMORY[0x28223BE20](v15 - 8);
  v42 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_dataOutputQueue;
  v41[4] = sub_257BD2C2C(0, &qword_281543F10);
  sub_257ECF150();
  v57 = MEMORY[0x277D84F90];
  v41[2] = sub_257DB7C60(&qword_281543F30, MEMORY[0x277D85230]);
  v41[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000);
  sub_257BD2D4C(&unk_281543FA0, &unk_27F8F8000);
  v41[3] = "/MFChevronView.swift";
  v16 = *a3;
  v44 = a3[1];
  v45 = v16;
  v43 = a3[2];
  sub_257ED0180();
  v17 = *MEMORY[0x277D85260];
  v18 = *(v55 + 104);
  v55 += 104;
  v18(v13, v17, v54);
  *&v3[v42] = sub_257ECFD80();
  v42 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSessionQueue;
  sub_257ECF150();
  v57 = MEMORY[0x277D84F90];
  sub_257ED0180();
  v18(v13, v17, v54);
  *&v3[v42] = sub_257ECFD80();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_subscribers] = MEMORY[0x277D84FA0];
  v19 = &v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSessionRuntimeErrorSubscription];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_isCapturingPhoto] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_isConfiguringSession] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_isCaptureStayingLive] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraPhotoOutput] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraVideoDataOutput] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraDeviceInput] = 0;
  v20 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService__availableCaptureDevices;
  v21 = MEMORY[0x277D84F90];
  v57 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9168);
  v22 = v46;
  sub_257ECDD20();
  (*(v47 + 32))(&v4[v20], v22, v48);
  v23 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService__captureDevice;
  v57 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9178);
  v24 = v49;
  sub_257ECDD20();
  (*(v50 + 32))(&v4[v23], v24, v51);
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice] = 0;
  v25 = &v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureDeviceID];
  *v25 = 0;
  *(v25 + 1) = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_virtualDeviceSwitchOverVideoZoomFactors] = v21;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_liveLensDisplayAppearanceSubscription] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_liveLensSelectedFiltersSubscription] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_contrastSliderControl] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_brightnessSliderControl] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_filterPickerControl] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_controls] = v21;
  v26 = &v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_environment];
  v27 = v44;
  *v26 = v45;
  *(v26 + 1) = v27;
  *(v26 + 2) = v43;
  v28 = v52;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession] = v52;
  Strong = swift_unknownObjectWeakLoadStrong();
  v30 = v28;
  if (Strong)
  {
    [Strong setSessionWithNoConnection_];
  }

  AVCaptureSessionSetAuthorizedToUseCameraInMultipleForegroundAppLayout();
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_eventHandler] = v53;
  v31 = type metadata accessor for MAGCaptureService();
  v56.receiver = v4;
  v56.super_class = v31;
  sub_257ECC3F0();
  v32 = objc_msgSendSuper2(&v56, sel_init);
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 defaultCenter];
  [v35 addObserver:v34 selector:sel_sessionRuntimeErrorWithNotification_ name:*MEMORY[0x277CE59C0] object:v30];

  v36 = [v33 defaultCenter];
  [v36 addObserver:v34 selector:sel_sessionWasInterruptedWithNotification_ name:*MEMORY[0x277CE59C8] object:v30];

  v37 = [v33 defaultCenter];
  [v37 addObserver:v34 selector:sel_sessionInterruptionEndedWithNotification_ name:*MEMORY[0x277CE5948] object:v30];

  v38 = [v33 defaultCenter];
  [v38 addObserver:v34 selector:sel_wasConnectedNotificationWithNotification_ name:*MEMORY[0x277CE5898] object:0];

  v39 = [v33 defaultCenter];
  [v39 addObserver:v34 selector:sel_wasDisconnectedNotificationWithNotification_ name:*MEMORY[0x277CE58A0] object:0];

  sub_257DB1770();

  return v34;
}

void sub_257DAB7BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_257ECF4C0();
    v4 = objc_opt_self();
    v5 = [v4 deviceWithUniqueID_];

    if (v5)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v6 = v5;
      v7 = v2;
      sub_257ECDD70();
      sub_257DAAB4C();
      [v4 setUserPreferredCamera_];
    }
  }
}

uint64_t sub_257DAB89C()
{
  v61 = *MEMORY[0x277D85DE8];
  v1 = sub_257ECDA30();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v59 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v59 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice);
  if (!v11)
  {
    return 0;
  }

  v60.value = 0;
  v12 = v11;
  if (![v12 lockForConfiguration_])
  {
    v27 = v60.value;
    v28 = sub_257ECC9F0();

    swift_willThrow();
    sub_257ECD430();
    v29 = sub_257ECDA20();
    v30 = sub_257ECFBE0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_257BAC000, v29, v30, "Could not lock the device for configuration", v31, 2u);
      MEMORY[0x259C74820](v31, -1, -1);
    }

    (*(v2 + 8))(v10, v1);
    return 0;
  }

  v13 = v60.value;
  v14 = [v12 deviceType];
  v15 = sub_257ECF500();
  v17 = v16;
  if (v15 == sub_257ECF500() && v17 == v18)
  {

LABEL_17:
    v32 = v0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v34 = Strong;
      objc_opt_self();
      v35 = swift_dynamicCastObjCClass();

      if (v35)
      {
        [v12 setPrimaryConstituentDeviceSwitchingBehavior:1 restrictedSwitchingBehaviorConditions:0];
      }
    }

    if (sub_257CA9238())
    {
      v36 = [v12 activeFormat];
      v37 = [v36 isSpatialOverCaptureSupported];

      if (v37)
      {
        [v12 setSpatialOverCaptureEnabled_];
      }
    }

    goto LABEL_34;
  }

  v20 = sub_257ED0640();

  if (v20)
  {
    goto LABEL_17;
  }

  v21 = [v12 deviceType];
  v22 = sub_257ECF500();
  v24 = v23;
  if (v22 == sub_257ECF500() && v24 == v25)
  {
  }

  else
  {
    v38 = sub_257ED0640();

    if ((v38 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if ([v12 position] == 2)
  {
    v60.value = 0;
    if ([v12 lockForConfiguration_])
    {
      v32 = v0;
      v39 = v60.value;
LABEL_33:
      CMTimeMake(&v60, 1, 30);
      [v12 setActiveVideoMinFrameDuration_];
      CMTimeMake(&v60, 1, 30);
      [v12 setActiveVideoMaxFrameDuration_];
      goto LABEL_34;
    }

    v54 = v60.value;
    v55 = sub_257ECC9F0();

    swift_willThrow();
    sub_257ECD430();
    v56 = sub_257ECDA20();
    v57 = sub_257ECFBE0();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_257BAC000, v56, v57, "Could not lock the device for configuration", v58, 2u);
      MEMORY[0x259C74820](v58, -1, -1);
    }

    (*(v2 + 8))(v8, v1);
    return 0;
  }

LABEL_27:
  v32 = v0;
  v40 = [v12 deviceType];
  v41 = sub_257ECF500();
  v43 = v42;
  if (v41 == sub_257ECF500() && v43 == v44)
  {

LABEL_31:
    v60.value = 0;
    if ([v12 lockForConfiguration_])
    {
      v46 = v60.value;
      goto LABEL_33;
    }

    v49 = v60.value;
    v50 = sub_257ECC9F0();

    swift_willThrow();
    sub_257ECD430();
    v51 = sub_257ECDA20();
    v52 = sub_257ECFBE0();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_257BAC000, v51, v52, "Could not lock the device for configuration", v53, 2u);
      MEMORY[0x259C74820](v53, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  v45 = sub_257ED0640();

  if (v45)
  {
    goto LABEL_31;
  }

LABEL_34:
  sub_257D33C60(1);
  v47 = [v12 virtualDeviceSwitchOverVideoZoomFactors];
  sub_257BD2C2C(0, &qword_281543DC0);
  v48 = sub_257ECF810();

  *(v32 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_virtualDeviceSwitchOverVideoZoomFactors) = v48;

  [v12 unlockForConfiguration];

  return 1;
}

char *sub_257DAC004(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v211 = *MEMORY[0x277D85DE8];
  v6 = sub_257ECF120();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v184 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECF190();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v205 = &v184 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_257ECDA30();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v184 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  v20 = MEMORY[0x28223BE20](v19);
  v21 = MEMORY[0x28223BE20](v20);
  v22 = MEMORY[0x28223BE20](v21);
  v23 = MEMORY[0x28223BE20](v22);
  v24 = MEMORY[0x28223BE20](v23);
  v34 = &v184 - v33;
  v35 = *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice];
  if (!v35)
  {
    return 0;
  }

  v203 = v29;
  v202 = v28;
  v201 = v27;
  v200 = v26;
  v189 = v25;
  v198 = v32;
  v188 = v31;
  v199 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice;
  v192 = v11;
  v193 = v9;
  v194 = v10;
  v195 = v7;
  v196 = v6;
  v190 = a2;
  v197 = a1;
  v206 = v24;
  v207 = v30;
  v191 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_isConfiguringSession;
  v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_isConfiguringSession] = 1;
  v36 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession;
  v37 = *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession];
  v38 = v35;
  [v37 beginConfiguration];
  v39 = &selRef_rate;
  v40 = [*&v3[v36] inputs];
  sub_257BD2C2C(0, &qword_27F8F9310);
  v41 = sub_257ECF810();

  if (v41 >> 62)
  {
    v42 = sub_257ED0210();
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v42)
  {
    v204 = v16;
    v43 = [*&v3[v36] inputs];
    v44 = sub_257ECF810();

    if (v44 >> 62)
    {
      v45 = sub_257ED0210();
      if (v45)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v45)
      {
LABEL_7:
        if (v45 < 1)
        {
          __break(1u);
          goto LABEL_44;
        }

        for (i = 0; i != v45; ++i)
        {
          if ((v44 & 0xC000000000000001) != 0)
          {
            v47 = MEMORY[0x259C72E20](i, v44);
          }

          else
          {
            v47 = *(v44 + 8 * i + 32);
          }

          v48 = v47;
          [*&v3[v36] removeInput_];
        }
      }
    }

    v16 = v204;
  }

  AVCaptureSessionSetAuthorizedToUseCameraInMultipleForegroundAppLayout();
  v49 = objc_allocWithZone(MEMORY[0x277CE5AD8]);
  aBlock[0] = 0;
  v45 = v38;
  v50 = [v49 initWithDevice:v45 error:aBlock];
  v51 = aBlock[0];
  if (!v50)
  {
    v68 = v51;
    v69 = sub_257ECC9F0();

    swift_willThrow();
    sub_257ECD430();
    v70 = sub_257ECDA20();
    v71 = sub_257ECFBE0();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_257BAC000, v70, v71, "Could not create camera device input", v72, 2u);
      MEMORY[0x259C74820](v72, -1, -1);
    }

    else
    {
    }

    v207[1](v34, v206);
    return 0;
  }

  v52 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraDeviceInput;
  v53 = *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraDeviceInput];
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraDeviceInput] = v50;
  v54 = v50;

  if (([*&v3[v36] canAddInput_] & 1) == 0)
  {

    sub_257ECD430();
    v73 = sub_257ECDA20();
    v74 = sub_257ECFBE0();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_257BAC000, v73, v74, "Could not add camera device input", v75, 2u);
      MEMORY[0x259C74820](v75, -1, -1);
    }

    else
    {
    }

    v207[1](v16, v206);
    return 0;
  }

  [*&v3[v36] addInputWithNoConnections_];

  v55 = *&v3[v52];
  if (!v55)
  {
    goto LABEL_46;
  }

  v56 = *MEMORY[0x277CE5EA8];
  a1 = v55;
  v57 = [v45 deviceType];
  v58 = [a1 portsWithMediaType:v56 sourceDeviceType:v57 sourceDevicePosition:{objc_msgSend(v45, sel_position)}];

  v39 = sub_257BD2C2C(0, &unk_281543F00);
  v34 = sub_257ECF810();

  if (!(v34 >> 62))
  {
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  if (!sub_257ED0210())
  {
LABEL_45:

LABEL_46:
    v76 = v203;
    sub_257ECD430();
    v77 = sub_257ECDA20();
    v78 = sub_257ECFBE0();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_257BAC000, v77, v78, "Could not find camera device input's video port", v79, 2u);
      MEMORY[0x259C74820](v79, -1, -1);
    }

    else
    {
    }

    v207[1](v76, v206);
    return 0;
  }

LABEL_21:
  v187 = a1;
  if ((v34 & 0xC000000000000001) != 0)
  {
    v59 = MEMORY[0x259C72E20](0, v34);
  }

  else
  {
    if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_53;
    }

    v59 = *(v34 + 32);
  }

  a1 = v59;

  v60 = [*&v3[v36] outputs];
  sub_257BD2C2C(0, &qword_27F8F9318);
  v61 = sub_257ECF810();

  if (v61 >> 62)
  {
    v62 = sub_257ED0210();
  }

  else
  {
    v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v204 = v45;

  if (v62)
  {
    v63 = [*&v3[v36] outputs];
    v34 = sub_257ECF810();

    if (!(v34 >> 62))
    {
      v64 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v64)
      {
LABEL_29:
        if (v64 < 1)
        {
          __break(1u);
        }

        for (j = 0; j != v64; ++j)
        {
          if ((v34 & 0xC000000000000001) != 0)
          {
            v66 = MEMORY[0x259C72E20](j, v34);
          }

          else
          {
            v66 = *(v34 + 8 * j + 32);
          }

          v67 = v66;
          [*&v3[v36] removeOutput_];
        }
      }

LABEL_54:

      goto LABEL_55;
    }

LABEL_53:
    v64 = sub_257ED0210();
    if (v64)
    {
      goto LABEL_29;
    }

    goto LABEL_54;
  }

LABEL_55:
  v203 = v39;
  v80 = [objc_allocWithZone(MEMORY[0x277CE5B28]) init];
  [v80 setLivePhotoCaptureEnabled_];
  [v80 setDepthDataDeliveryEnabled_];
  [v80 setPortraitEffectsMatteDeliveryEnabled_];
  [v80 setMaxPhotoQualityPrioritization_];
  [v80 setPrivatePhotoDimensionsEnabled_];
  type metadata accessor for MatteType(0);
  v81 = sub_257ECF7F0();
  [v80 setEnabledSemanticSegmentationMatteTypes_];

  v82 = *&v3[v36];
  v83 = v80;
  if (![v82 canAddOutput_])
  {

    v117 = v202;
    sub_257ECD430();
    v118 = sub_257ECDA20();
    v119 = sub_257ECFBE0();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&dword_257BAC000, v118, v119, "Could not add camera photo output", v120, 2u);
      MEMORY[0x259C74820](v120, -1, -1);

LABEL_70:
      v124 = &v209;
LABEL_76:

LABEL_77:
      v207[1](v117, v206);
      return 0;
    }

    goto LABEL_75;
  }

  [*&v3[v36] addOutputWithNoConnections_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v84 = swift_allocObject();
  v186 = xmmword_257ED9BF0;
  *(v84 + 16) = xmmword_257ED9BF0;
  *(v84 + 32) = a1;
  v85 = objc_allocWithZone(MEMORY[0x277CE5AB0]);
  v202 = a1;
  v86 = sub_257ECF7F0();

  v87 = [v85 initWithInputPorts:v86 output:v83];

  if (![*&v3[v36] canAddConnection_])
  {
    v117 = v201;
    sub_257ECD430();
    v121 = sub_257ECDA20();
    v122 = sub_257ECFBE0();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&dword_257BAC000, v121, v122, "Could not add a connection to camera photo output", v123, 2u);
      MEMORY[0x259C74820](v123, -1, -1);

LABEL_69:
      goto LABEL_70;
    }

LABEL_75:
    v124 = &v210;
    goto LABEL_76;
  }

  v201 = v83;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  [v87 setVideoMirrored_];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v88 = *&v3[v36];
  v185 = v87;
  [v88 addConnection_];
  v89 = [objc_allocWithZone(MEMORY[0x277CE5B60]) init];
  [v89 setAutomaticallyConfiguresOutputBufferDimensions_];
  [v89 setDeliversPreviewSizedOutputBuffers_];
  v90 = *&v3[v36];
  v91 = v89;
  if (![v90 canAddOutput_])
  {

    v125 = v200;
    sub_257ECD430();
    v126 = sub_257ECDA20();
    v127 = sub_257ECFBE0();
    v128 = os_log_type_enabled(v126, v127);
    v129 = v204;
    if (v128)
    {
      v130 = swift_slowAlloc();
      *v130 = 0;
      _os_log_impl(&dword_257BAC000, v126, v127, "Could not add camera video data output", v130, 2u);
      MEMORY[0x259C74820](v130, -1, -1);
    }

    else
    {
    }

    v207[1](v125, v206);
    return 0;
  }

  [*&v3[v36] addOutputWithNoConnections_];
  [v91 setAutomaticallyConfiguresOutputBufferDimensions_];
  [v91 setDeliversPreviewSizedOutputBuffers_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257EDBBA0;
  *(inited + 32) = sub_257ECF500();
  v93 = MEMORY[0x277D83B88];
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = v94;
  *(inited + 48) = 1111970369;
  *(inited + 80) = sub_257ECF500();
  *(inited + 88) = v95;
  *(inited + 120) = v93;
  *(inited + 96) = 90;
  *(inited + 128) = sub_257ECF500();
  *(inited + 136) = v96;
  *(inited + 168) = v93;
  *(inited + 144) = 90;
  sub_257BE9040(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55E8);
  swift_arrayDestroy();
  v97 = sub_257ECF3C0();

  [v91 setVideoSettings_];

  [v91 setSampleBufferDelegate:v3 queue:*&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_dataOutputQueue]];
  v98 = swift_allocObject();
  *(v98 + 16) = v186;
  v99 = v202;
  *(v98 + 32) = v202;
  v100 = objc_allocWithZone(MEMORY[0x277CE5AB0]);
  v101 = v99;
  v102 = sub_257ECF7F0();

  v103 = [v100 initWithInputPorts:v102 output:v91];

  v104 = [*&v3[v36] canAddConnection_];
  v105 = v204;
  if (!v104)
  {
    v132 = v198;
    sub_257ECD430();
    v133 = sub_257ECDA20();
    v134 = sub_257ECFBE0();
    v135 = os_log_type_enabled(v133, v134);
    v136 = v187;
    v137 = v201;
    if (v135)
    {
      v138 = v103;
      v139 = swift_slowAlloc();
      *v139 = 0;
      _os_log_impl(&dword_257BAC000, v133, v134, "Could not add a connection to the camera video data output", v139, 2u);
      MEMORY[0x259C74820](v139, -1, -1);
    }

    else
    {
    }

    v207[1](v132, v206);
    return 0;
  }

  [*&v3[v36] addConnection_];
  v106 = *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraVideoDataOutput];
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraVideoDataOutput] = v91;
  v107 = v91;

  Strong = swift_unknownObjectWeakLoadStrong();
  v109 = v201;
  v202 = v101;
  v203 = v103;
  if (Strong)
  {
    v110 = Strong;
    [Strong setSessionWithNoConnection_];
    v87 = [objc_allocWithZone(MEMORY[0x277CE5AB0]) initWithInputPort:v101 videoPreviewLayer:v110];
    if ([*&v3[v36] canAddConnection_])
    {
      v200 = v107;
      [*&v3[v36] addConnection_];
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v111 = aBlock[0];
      if (aBlock[0])
      {
        v112 = [aBlock[0] deviceType];

        v113 = sub_257ECF500();
        v115 = v114;
        if (v113 == sub_257ECF500() && v115 == v116)
        {

          v109 = v201;
LABEL_92:
          v149 = [v110 connection];
          [v149 setAutomaticallyAdjustsVideoMirroring_];

          v150 = [v110 connection];
          [v150 setVideoMirrored_];

          goto LABEL_94;
        }

        v148 = sub_257ED0640();

        v109 = v201;
        if (v148)
        {
          goto LABEL_92;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      goto LABEL_94;
    }

    v117 = v188;
    sub_257ECD430();
    v144 = sub_257ECDA20();
    v145 = sub_257ECFBE0();
    if (!os_log_type_enabled(v144, v145))
    {

      goto LABEL_77;
    }

    v146 = v107;
    v147 = swift_slowAlloc();
    *v147 = 0;
    _os_log_impl(&dword_257BAC000, v144, v145, "Could not add a connection to the camera video preview layer", v147, 2u);
    MEMORY[0x259C74820](v147, -1, -1);

    goto LABEL_69;
  }

  v200 = v107;
  v140 = v189;
  sub_257ECD430();
  v141 = sub_257ECDA20();
  v142 = sub_257ECFBE0();
  if (os_log_type_enabled(v141, v142))
  {
    v143 = swift_slowAlloc();
    *v143 = 0;
    _os_log_impl(&dword_257BAC000, v141, v142, "No camera video preview layer", v143, 2u);
    MEMORY[0x259C74820](v143, -1, -1);
  }

  v207[1](v140, v206);
LABEL_94:
  [*&v3[v36] setSessionPreset_];
  v151 = *&v3[v199];
  if (v151)
  {
    v152 = swift_unknownObjectWeakLoadStrong();
    v153 = objc_allocWithZone(MEMORY[0x277CE5AE0]);
    v154 = v151;
    v155 = [v153 initWithDevice:v154 previewLayer:v152];

    v156 = *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator];
    *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator] = v155;
    v157 = v155;

    if (v157)
    {
      [v157 videoRotationAngleForHorizonLevelPreview];
      v159 = v158;

      [v185 setVideoRotationAngle_];
      [v203 setVideoRotationAngle_];
    }

    v160 = *&v3[v199];
    if (v160)
    {
      v161 = v160;
      v162 = [v161 activeFormat];
      v163 = [v162 supportedMaxPhotoDimensionsPrivate];

      sub_257BD2C2C(0, &qword_27F8F93A0);
      v164 = sub_257ECF810();

      if (v164 >> 62)
      {
        v165 = sub_257ED0210();
      }

      else
      {
        v165 = *((v164 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v165)
      {
        v207 = v161;
        aBlock[0] = MEMORY[0x277D84F90];
        result = sub_257BF29E4(0, v165 & ~(v165 >> 63), 0);
        if (v165 < 0)
        {
          __break(1u);
          return result;
        }

        v166 = 0;
        v167 = aBlock[0];
        do
        {
          if ((v164 & 0xC000000000000001) != 0)
          {
            v168 = MEMORY[0x259C72E20](v166, v164);
          }

          else
          {
            v168 = *(v164 + 8 * v166 + 32);
          }

          v169 = v168;
          v170 = [v168 CMVideoDimensionsValue];

          aBlock[0] = v167;
          v172 = v167[2];
          v171 = v167[3];
          if (v172 >= v171 >> 1)
          {
            sub_257BF29E4((v171 > 1), v172 + 1, 1);
            v167 = aBlock[0];
          }

          ++v166;
          v167[2] = v172 + 1;
          v167[v172 + 4] = v170;
        }

        while (v165 != v166);

        v105 = v204;
        v109 = v201;
        v161 = v207;
      }

      else
      {

        v167 = MEMORY[0x277D84F90];
      }

      v173 = v167[2];
      if (v173)
      {
        v174 = v167[v173 + 3];

        [v109 setMaxPhotoDimensions_];
      }

      else
      {
      }
    }
  }

  v175 = *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraPhotoOutput];
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraPhotoOutput] = v109;
  v176 = v109;

  [*&v3[v36] commitConfiguration];
  v3[v191] = 0;
  sub_257BD2C2C(0, &qword_281543F10);
  v177 = sub_257ECFD30();
  v178 = swift_allocObject();
  v178[2] = v3;
  aBlock[4] = sub_257DB80C8;
  aBlock[5] = v178;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_283;
  v179 = _Block_copy(aBlock);
  v180 = v3;

  v181 = v205;
  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257DB7C60(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  v182 = v193;
  v183 = v196;
  sub_257ED0180();
  MEMORY[0x259C72880](0, v181, v182, v179);
  _Block_release(v179);

  (*(v195 + 8))(v182, v183);
  (*(v192 + 8))(v181, v194);
  if (v197)
  {
    v197(1);
  }

  return 1;
}

uint64_t sub_257DADC80(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_257ECC3F0();
  return sub_257ECDD70();
}

void sub_257DADD08()
{
  v2 = v0;
  v133 = sub_257ECF130();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v131 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_257ECFD10();
  v135 = *(v4 - 8);
  v136 = v4;
  MEMORY[0x28223BE20](v4);
  v134 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9EC0);
  v116 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v114 = &v106 - v6;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9330);
  v117 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v115 = &v106 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9ED0);
  v121 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v120 = &v106 - v9;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F84F0);
  MEMORY[0x28223BE20](v124);
  v11 = &v106 - v10;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54D0);
  v12 = MEMORY[0x28223BE20](v123);
  v138 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v137 = &v106 - v14;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9340);
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = &v106 - v15;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9348);
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v128 = &v106 - v16;
  v17 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession;
  [*(v0 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession) setControlsDelegate:v0 queue:*(v0 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSessionQueue)];
  v18 = [*(v0 + v17) supportsControls];
  v19 = &OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_silenceDuration;
  v20 = &OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_silenceDuration;
  v122 = v8;
  if (!v18)
  {
    goto LABEL_33;
  }

  v21 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_controls;
  swift_beginAccess();
  v22 = *(v0 + v21);
  if (v22 >> 62)
  {
    v23 = sub_257ED0210();
    if (!v23)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_11;
    }
  }

  if (v23 < 1)
  {
    __break(1u);
LABEL_39:
    sub_257ECF830();
    goto LABEL_20;
  }

  for (i = 0; i != v23; ++i)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x259C72E20](i, v22);
    }

    else
    {
      v25 = *(v22 + 8 * i + 32);
    }

    v26 = v25;
    [*(v2 + v17) removeControl_];
  }

  v20 = &OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_silenceDuration;
  v19 = &OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_silenceDuration;
LABEL_11:
  v110 = v11;
  *(v2 + v21) = MEMORY[0x277D84F90];

  LOBYTE(v139) = 0;
  sub_257D15BB4();
  v28 = v27;
  v29 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v30 = v28;
  v113 = [v29 initWithFloat_];
  LOBYTE(v139) = 0;
  sub_257D15BB4();
  v32 = v31;
  v33 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v34 = v32;
  v112 = [v33 initWithFloat_];
  sub_257BD2C2C(0, &qword_281543DC0);
  v111 = sub_257ECFF30();
  v35 = *(v2 + v19[48]);
  if (v35)
  {
    v109 = v21;
    v36 = objc_allocWithZone(MEMORY[0x277CE5B58]);
    v37 = v35;
    v38 = [v36 initWithDevice_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9388);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257ED9BD0;
    v40 = v113;
    *(inited + 32) = v113;
    v41 = v111;
    v42 = v112;
    *(inited + 40) = v111;
    *(inited + 48) = v42;
    *(inited + 56) = v42;
    v43 = v42;
    v44 = v40;
    v45 = v41;
    sub_257BEA484(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9390);
    swift_arrayDestroy();
    sub_257CA64A0(&qword_27F8F6D58, &qword_281543DC0);
    v46 = sub_257ECF3C0();

    [v38 setDisplayValuesByZoomFactorValue_];

    v47 = *(v2 + v17);
    v48 = v38;
    if ([v47 canAddControl_])
    {
      [*(v2 + v17) addControl_];
      v21 = v109;
      v49 = swift_beginAccess();
      MEMORY[0x259C72300](v49);
      if (*((*(v2 + v21) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v21) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_257ECF830();
      }

      sub_257ECF860();
      swift_endAccess();
    }

    else
    {

      v37 = v48;
      v21 = v109;
    }
  }

  v50 = sub_257BD2C2C(0, &qword_27F8F9380);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v107 = objc_opt_self();
  v108 = ObjCClassFromMetadata;
  v52 = [v107 bundleForClass_];
  v53 = sub_257ECF4C0();
  v54 = sub_257ECF4C0();
  v55 = [v52 localizedStringForKey:v53 value:0 table:v54];

  v56 = sub_257ECF500();
  v58 = v57;

  v139 = *&v56;
  v140 = v58;
  sub_257BDAB08();
  sub_257ED0100();

  v109 = v50;
  v59 = sub_257ECFC40();
  v106 = *(v2 + v20[55]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD60();

  HIDWORD(v60) = HIDWORD(v139);
  v61 = v139;
  *&v60 = v61 / 2.5;
  [v59 setValue_];
  sub_257ECFC30();
  sub_257BD2C2C(0, &qword_281543F10);
  v62 = sub_257ECFD30();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257ECC3F0();
  sub_257ECFC20();

  v63 = *(v2 + v17);
  v1 = v59;
  if (![v63 canAddControl_])
  {

    goto LABEL_22;
  }

  [*(v2 + v17) addControl_];
  v64 = swift_beginAccess();
  MEMORY[0x259C72300](v64);
  if (*((*(v2 + v21) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v21) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_39;
  }

LABEL_20:
  sub_257ECF860();
  swift_endAccess();
LABEL_22:
  v65 = v108;
  v66 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_contrastSliderControl);
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_contrastSliderControl) = v1;
  v67 = v1;

  v68 = [v107 bundleForClass_];
  v69 = sub_257ECF4C0();
  v70 = sub_257ECF4C0();
  v71 = [v68 localizedStringForKey:v69 value:0 table:v70];

  v72 = sub_257ECF500();
  v74 = v73;

  v139 = *&v72;
  v140 = v74;
  sub_257ED0100();

  v75 = sub_257ECFC40();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD60();

  v76 = 0.0;
  if (v139 > 0.0)
  {
    v76 = v139;
  }

  if (v139 >= 1.0)
  {
    v77 = 1.0;
  }

  else
  {
    v77 = v76;
  }

  *&v77 = v77;
  [v75 setValue_];
  sub_257ECFC30();
  v78 = sub_257ECFD30();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257ECC3F0();
  sub_257ECFC20();

  v79 = *(v2 + v17);
  v80 = v75;
  if ([v79 canAddControl_])
  {
    [*(v2 + v17) addControl_];
    v81 = swift_beginAccess();
    MEMORY[0x259C72300](v81);
    v19 = &OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_silenceDuration;
    if (*((*(v2 + v21) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v21) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    sub_257ECF860();
    swift_endAccess();
  }

  else
  {

    v19 = &OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_silenceDuration;
  }

  v82 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_brightnessSliderControl);
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_brightnessSliderControl) = v80;
  v83 = v80;

  sub_257DAF9F8();
LABEL_33:
  v84 = *(v2 + v19[48]);
  if (v84)
  {
    swift_beginAccess();
    v85 = v84;
    sub_257ECC3F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9350);
    sub_257ECDD30();
    swift_endAccess();

    swift_beginAccess();
    sub_257ECC3F0();
    sub_257ECDD30();
    swift_endAccess();

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54F0);
    sub_257ECDD30();
    swift_endAccess();
    swift_getKeyPath();
    v86 = v114;
    sub_257ECCA50();

    swift_allocObject();
    v113 = v85;
    swift_unknownObjectUnownedInit();
    sub_257BD2D4C(&unk_281543DB0, &unk_27F8F9EC0);
    v87 = v115;
    v88 = v118;
    sub_257ECDDD0();

    (*(v116 + 8))(v86, v88);
    sub_257BD2D4C(&qword_281544390, &unk_27F8F9330);
    v89 = v119;
    v90 = sub_257ECDD90();
    (*(v117 + 8))(v87, v89);
    v139 = *&v90;
    swift_allocObject();
    swift_unknownObjectUnownedInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9360);
    sub_257BD2D4C(&qword_2815441E8, &qword_27F8F9360);
    v91 = v120;
    sub_257ECDDD0();

    sub_257BD2D4C(&qword_2815443B0, &unk_27F8F9ED0);
    v92 = v122;
    v93 = sub_257ECDD90();
    (*(v121 + 8))(v91, v92);
    v139 = *&v93;
    sub_257BD2D4C(&unk_281544190, &unk_27F8F54D0);
    sub_257BD2D4C(&unk_281544170, &qword_27F8F84F0);
    v94 = v125;
    sub_257ECDC60();
    v95 = v134;
    sub_257ECFD00();
    sub_257BD2C2C(0, &qword_281543F10);
    v96 = v132;
    v97 = v131;
    v98 = v133;
    (*(v132 + 104))(v131, *MEMORY[0x277D851C0], v133);
    v99 = sub_257ECFD90();
    (*(v96 + 8))(v97, v98);
    v139 = *&v99;
    sub_257BD2D4C(&unk_27F8F9368, &qword_27F8F9340);
    sub_257CA64A0(&qword_281543F20, &qword_281543F10);
    v100 = v128;
    v101 = v127;
    sub_257ECDE00();

    (*(v135 + 8))(v95, v136);
    (*(v126 + 8))(v94, v101);
    v102 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v103 = swift_allocObject();
    *(v103 + 16) = sub_257DB806C;
    *(v103 + 24) = v102;
    sub_257BD2D4C(&qword_27F8F9378, &qword_27F8F9348);
    v104 = v130;
    v105 = sub_257ECDE50();

    (*(v129 + 8))(v100, v104);
    *(v2 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_liveLensDisplayAppearanceSubscription) = v105;
  }
}

void sub_257DAF2F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD70();
  }
}

void sub_257DAF420()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD70();
  }
}

uint64_t sub_257DAF540(char *a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_257ECF120();
  v20 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_257ECF190();
  v11 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_257BD2C2C(0, &qword_281543F10);
  v15 = sub_257ECFD30();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a4;
  *(v16 + 32) = a3;
  *(v16 + 40) = v14;
  aBlock[4] = sub_257DB80B8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_277;
  v17 = _Block_copy(aBlock);
  sub_257ECC3F0();

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257DB7C60(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v13, v10, v17);
  _Block_release(v17);

  (*(v20 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v19);
}

void sub_257DAF858(double a1, double a2, uint64_t a3, unsigned __int8 a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_contrastSliderControl);
    if (v10)
    {
      *&v8 = a1;
      *&v8 = *&v8 / 2.5;
      [v10 setValue_];
    }

    v11 = *&v9[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_brightnessSliderControl];
    if (v11)
    {
      v12 = 0.0;
      if (a2 > 0.0)
      {
        v12 = a2;
      }

      if (a2 >= 1.0)
      {
        v12 = 1.0;
      }

      *&v12 = v12;
      [v11 setValue_];
    }

    v13 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_filterPickerControl;
    v14 = *&v9[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_filterPickerControl];
    if (v14)
    {
      v15 = [v14 numberOfIndexes];
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v16 = sub_257DB83D0(a4, v21);
      v18 = v17;

      if ((v18 & 1) == 0)
      {
        if (v15 < v16 || v16 < 0)
        {
          sub_257DAF9F8();
        }

        v19 = *&v9[v13];
        if (v19)
        {
          if (v15 >= v16)
          {
            v20 = v16;
          }

          else
          {
            v20 = v15;
          }

          [v19 setSelectedIndex_];
        }
      }
    }
  }
}

void sub_257DAF9F8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_environment + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v3 = v42;
  v4 = *(v42 + 16);
  if (v4)
  {
    v38 = v2;
    v39 = v0;
    v43 = MEMORY[0x277D84F90];
    sub_257BF26A4(0, v4, 0);
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = 32;
    v40 = objc_opt_self();
    do
    {
      v6 = v3;
      v7 = [v40 bundleForClass_];
      v8 = sub_257ECF4C0();

      v9 = sub_257ECF4C0();
      v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

      v11 = sub_257ECF500();
      v13 = v12;

      v15 = *(v43 + 16);
      v14 = *(v43 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_257BF26A4((v14 > 1), v15 + 1, 1);
      }

      *(v43 + 16) = v15 + 1;
      v16 = v43 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      ++v5;
      --v4;
      v3 = v6;
    }

    while (v4);

    v1 = v39;
  }

  else
  {
  }

  type metadata accessor for MAGUtilities();
  v17 = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  v19 = sub_257ECF4C0();
  v20 = sub_257ECF4C0();
  v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

  v22 = sub_257ECF500();
  v44 = v22;
  sub_257BDAB08();
  sub_257ED0100();

  v23 = objc_allocWithZone(MEMORY[0x277CE5AE8]);
  v24 = sub_257ECF4C0();

  v25 = sub_257ECF4C0();
  v26 = sub_257ECF7F0();

  v27 = [v23 initWithLocalizedTitle:v24 symbolName:v25 localizedIndexTitles:v26];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v28 = sub_257DB83D0(v44, v44);
  LOBYTE(v23) = v29;

  if (v23)
  {
    v30 = 0;
  }

  else
  {
    v30 = v28;
  }

  [v27 setSelectedIndex_];
  sub_257BD2C2C(0, &qword_281543F10);
  v31 = sub_257ECFD30();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257ECC3F0();
  sub_257ECFDE0();

  v32 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession;
  v33 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession);
  v34 = v27;
  if ([v33 canAddControl_])
  {
    [*(v1 + v32) addControl_];
    v35 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_controls;
    v36 = swift_beginAccess();
    MEMORY[0x259C72300](v36);
    if (*((*(v1 + v35) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v35) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    sub_257ECF860();
    swift_endAccess();
  }

  else
  {
  }

  v37 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_filterPickerControl);
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_filterPickerControl) = v34;
}

void sub_257DB0118(unint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v4 + 16) > a1)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
      sub_257ECDD70();

      return;
    }

    __break(1u);
  }
}

uint64_t sub_257DB0238()
{
  v1 = sub_257ECF120();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_257CA930C();
  v6 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_environment + 24);
  if (*(v5 + 16))
  {
    v7 = *(v5 + 32);
  }

  else
  {
    v7 = 0;
  }

  v8 = v6 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cameraType;
  swift_beginAccess();
  v15 = v7;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v9 = sub_257ECF110();
  MEMORY[0x28223BE20](v9);
  *&v14[-16] = &v15;
  *&v14[-8] = v8;
  sub_257ECFD40();
  (*(v2 + 8))(v4, v1);
  v10 = swift_endAccess();
  v11 = *(v8 + 8);
  v12 = *(v8 + 16);
  v16[0] = *v8;
  v16[1] = v11;
  v17 = v12;
  MEMORY[0x28223BE20](v10);
  *&v14[-16] = v16;

  sub_257ECFD50();

  LOBYTE(v11) = v15;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v16[0]) = v11;
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257DB04B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

void sub_257DB053C(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice];
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  a1;
  sub_257ECDD70();
  sub_257DAAB4C();
}

uint64_t sub_257DB05D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_257ECF120();
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_257ECF190();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSessionQueue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_257DB7F48;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_188;
  v14 = _Block_copy(aBlock);
  sub_257ECC3F0();
  sub_257BBD7E4(a1);
  sub_257ECF150();
  v19 = MEMORY[0x277D84F90];
  sub_257DB7C60(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v11, v8, v14);
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

void sub_257DB08F4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - v6;
  v8 = sub_257ECDA30();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession;
    if (([*(Strong + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession) isRunning] & 1) != 0 || (v15 = *&v13[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureDeviceID], v16 = *&v13[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureDeviceID + 8], , sub_257DB69CC(v15, v16), , !*&v13[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice]))
    {
    }

    else if (sub_257DAC004(a2, a3))
    {
      if (sub_257CA9238())
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if (v35 == 2)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_257ECDD60();

          v17 = v35;
          if (v35)
          {
            sub_257D33238();
            v19 = v18;
            sub_257D337D8(0, 0.01);
            sub_257D337D8(0, v19);
          }
        }
      }

      v20 = *&v13[v14];
      [v20 startRunning];
      if ([v20 supportsControls])
      {
        sub_257DADD08();
      }

      v21 = MEMORY[0x277D76620];
      if (*MEMORY[0x277D76620])
      {
        if (![*MEMORY[0x277D76620] shouldRecordExtendedLaunchTime])
        {
LABEL_16:
          v29 = sub_257ECF930();
          (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
          v30 = swift_allocObject();
          v30[2] = 0;
          v30[3] = 0;
          v30[4] = v13;
          v31 = v13;
          sub_257E81524(0, 0, v7, &unk_257EE9460, v30);

          return;
        }

        if (*v21)
        {
          v22 = *v21;
          v23 = [v22 _launchTestName];
          v24 = [v22 isRunningTest_];

          if (v24)
          {
            v25 = objc_opt_self();
            v26 = [v25 sharedApplication];
            v27 = [v25 sharedApplication];
            v28 = [v27 _launchTestName];

            [v26 finishedTest:v28 extraResults:0];
          }

          goto LABEL_16;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      sub_257ECD460();
      v32 = sub_257ECDA20();
      v33 = sub_257ECFBE0();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_257BAC000, v32, v33, "Failed to configure capture session", v34, 2u);
        MEMORY[0x259C74820](v34, -1, -1);
      }

      else
      {
      }

      (*(v9 + 8))(v11, v8);
    }
  }
}

uint64_t sub_257DB0E0C()
{
  *(v0 + 16) = xmmword_257EE4D00;
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_257DB0EC0;

  return MAGCaptureEventHandler.send(_:)((v0 + 16));
}

uint64_t sub_257DB0EC0()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_257DB8374, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

id sub_257DB0FF4(uint64_t a1, uint64_t a2)
{
  v5 = sub_257ECF120();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECF190();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*&v2[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession] isRunning];
  if (result)
  {
    v20 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSessionQueue];
    v14 = swift_allocObject();
    v14[2] = v2;
    v14[3] = a1;
    v14[4] = a2;
    aBlock[4] = sub_257D4172C;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_179;
    v15 = _Block_copy(aBlock);
    v19 = v9;
    v16 = v15;
    v17 = v2;
    sub_257BBD7E4(a1);
    sub_257ECF150();
    v21 = MEMORY[0x277D84F90];
    sub_257DB7C60(&qword_281544090, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    MEMORY[0x259C72880](0, v12, v8, v16);
    _Block_release(v16);
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v19);
  }

  return result;
}

void sub_257DB12FC(uint64_t a1, void (*a2)(void))
{
  v4 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession;
  if (([*(a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession) isRunning] & 1) == 0)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_11;
  }

  [*(a1 + v4) stopRunning];
  v5 = [*(a1 + v4) connections];
  sub_257BD2C2C(0, &qword_281543ED8);
  v6 = sub_257ECF810();

  if (v6 >> 62)
  {
    v7 = sub_257ED0210();
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    goto LABEL_35;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x259C72E20](i, v6);
    }

    else
    {
      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    [*(a1 + v4) removeConnection_];
  }

LABEL_14:

  v11 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraDeviceInput);
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraDeviceInput) = 0;

  v12 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraPhotoOutput);
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraPhotoOutput) = 0;

  v13 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraVideoDataOutput);
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraVideoDataOutput) = 0;

  v14 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice);
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice) = 0;

  v15 = (a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureDeviceID);
  *v15 = 0;
  v15[1] = 0;

  *(a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_virtualDeviceSwitchOverVideoZoomFactors) = MEMORY[0x277D84F90];

  v16 = [*(a1 + v4) inputs];
  sub_257BD2C2C(0, &qword_27F8F9310);
  v17 = sub_257ECF810();

  if (v17 >> 62)
  {
    v18 = sub_257ED0210();
    if (!v18)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_23;
    }
  }

  if (v18 < 1)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  for (j = 0; j != v18; ++j)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x259C72E20](j, v17);
    }

    else
    {
      v20 = *(v17 + 8 * j + 32);
    }

    v21 = v20;
    [*(a1 + v4) removeInput_];
  }

LABEL_23:

  v22 = [*(a1 + v4) outputs];
  sub_257BD2C2C(0, &qword_27F8F9318);
  v23 = sub_257ECF810();

  if (v23 >> 62)
  {
    v24 = sub_257ED0210();
    if (!v24)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      goto LABEL_32;
    }
  }

  if (v24 < 1)
  {
LABEL_36:
    __break(1u);
    return;
  }

  for (k = 0; k != v24; ++k)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x259C72E20](k, v23);
    }

    else
    {
      v26 = *(v23 + 8 * k + 32);
    }

    v27 = v26;
    [*(a1 + v4) removeOutput_];
  }

LABEL_32:

  if (a2)
  {
LABEL_11:
    a2();
  }
}

void sub_257DB16D4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession;
  if (([*(a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession) isRunning] & 1) == 0 && (*(a1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_isConfiguringSession) & 1) == 0)
  {
    [*(a1 + v2) startRunning];
    if ([*(a1 + v2) supportsControls])
    {
      sub_257DADD08();
    }
  }
}

uint64_t sub_257DB1798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257ECF120();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_257ECF190();
  v10 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSessionQueue];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  sub_257ECF150();
  v19 = MEMORY[0x277D84F90];
  sub_257DB7C60(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

void sub_257DB1A58(void *a1)
{
  v40 = a1;
  v1 = sub_257ECF120();
  v44 = *(v1 - 8);
  v45 = v1;
  MEMORY[0x28223BE20](v1);
  v42 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_257ECF190();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6FB0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_257EE23E0;
  v6 = *MEMORY[0x277CE5860];
  v7 = *MEMORY[0x277CE5840];
  v8 = MEMORY[0x277CE5878];
  *(v5 + 32) = *MEMORY[0x277CE5860];
  *(v5 + 40) = v7;
  v9 = *v8;
  v10 = *MEMORY[0x277CE5870];
  *(v5 + 48) = *v8;
  *(v5 + 56) = v10;
  v11 = *MEMORY[0x277CE5890];
  v12 = *MEMORY[0x277CE5888];
  *(v5 + 64) = *MEMORY[0x277CE5890];
  *(v5 + 72) = v12;
  v13 = *MEMORY[0x277CE5EA8];
  type metadata accessor for DeviceType(0);
  v14 = v6;
  v15 = v7;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = sub_257ECF7F0();

  v22 = [objc_opt_self() discoverySessionWithDeviceTypes:v21 mediaType:v20 position:0];

  v23 = swift_allocObject();
  *(v23 + 16) = MEMORY[0x277D84F90];
  v24 = (v23 + 16);
  v25 = [v22 devices];
  sub_257BD2C2C(0, &qword_281543F70);
  v26 = sub_257ECF810();

  if (!(v26 >> 62))
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_3;
    }

LABEL_13:

    sub_257DB1FBC(v24);
    sub_257BD2C2C(0, &qword_281543F10);
    v31 = sub_257ECFD30();
    v32 = swift_allocObject();
    v33 = v40;
    *(v32 + 16) = v40;
    *(v32 + 24) = v23;
    aBlock[4] = sub_257DB82D0;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_342;
    v34 = _Block_copy(aBlock);
    v35 = v33;
    sub_257ECC3F0();

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257DB7C60(&qword_281544090, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    v36 = v22;
    v37 = v42;
    v38 = v45;
    sub_257ED0180();
    MEMORY[0x259C72880](0, v4, v37, v34);
    _Block_release(v34);

    (*(v44 + 8))(v37, v38);
    (*(v41 + 8))(v4, v43);

    return;
  }

  v27 = sub_257ED0210();
  if (!v27)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v27 >= 1)
  {
    for (i = 0; i != v27; ++i)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x259C72E20](i, v26);
      }

      else
      {
        v29 = *(v26 + 8 * i + 32);
      }

      v30 = v29;
      MEMORY[0x259C72300]();
      if (*((*v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_257ECF830();
      }

      sub_257ECF860();
    }

    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_257DB1FBC(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_257C7E3B8(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_257DB5B50(v5);
  *a1 = v2;
  return result;
}

void sub_257DB2034(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v17 = v4;

  v5 = a1;
  sub_257ECDD70();
  if (AXDeviceIsPad())
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    sub_257CA97F8(v6);
    v8 = v7;

    swift_getKeyPath();
    swift_getKeyPath();
    v17 = v8;
    sub_257ECC3F0();
  }

  else
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v9 = sub_257CA930C();
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = v9;
    sub_257ECC3F0();
  }

  sub_257ECDD70();
  v10 = *&v5[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice];
  if (v10)
  {
    v11 = swift_beginAccess();
    v12 = *(a2 + 16);
    v16 = v10;
    MEMORY[0x28223BE20](v11);
    v15[2] = &v16;
    v13 = v10;

    v14 = sub_257DFC4AC(sub_257DB82D8, v15, v12);

    if ((v14 & 1) == 0)
    {
      sub_257DB0238();
      sub_257DB69CC(0, 0);
    }
  }
}

uint64_t sub_257DB22A4(void *a1)
{
  v2 = sub_257ECF120();
  v58 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_257ECF190();
  v57 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECDA30();
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v53 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v53 - v15;
  v17 = [a1 userInfo];
  if (!v17)
  {
    goto LABEL_11;
  }

  v18 = v17;
  v55 = v2;
  v19 = sub_257ECF3D0();

  aBlock[6] = sub_257ECF500();
  aBlock[7] = v20;
  sub_257ED0280();
  if (!*(v19 + 16) || (v21 = sub_257C03F28(aBlock), (v22 & 1) == 0))
  {

    sub_257C09D10(aBlock);
LABEL_11:
    v62 = 0u;
    v63 = 0u;
    goto LABEL_12;
  }

  sub_257BE41F4(*(v19 + 56) + 32 * v21, &v62);
  sub_257C09D10(aBlock);

  if (!*(&v63 + 1))
  {
LABEL_12:
    sub_257BE4084(&v62, &unk_27F8F62F0);
    goto LABEL_13;
  }

  sub_257BD2C2C(0, &unk_27F8F9320);
  if (swift_dynamicCast())
  {
    v23 = aBlock[0];
    type metadata accessor for AVError(0);
    sub_257DB7C60(&unk_27F8F4FD8, type metadata accessor for AVError);
    v24 = v23;
    sub_257ECC9B0();
    if (v62 == -11819)
    {
      v54 = v24;
      sub_257ECD460();
      v25 = sub_257ECDA20();
      v26 = sub_257ECFBE0();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_257BAC000, v25, v26, "Capture session runtime error: mediaServicesWereReset", v27, 2u);
        MEMORY[0x259C74820](v27, -1, -1);
      }

      (*(v59 + 8))(v16, v60);
      v28 = v56;
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      aBlock[4] = sub_257DB7E10;
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257D231C0;
      aBlock[3] = &block_descriptor_161;
      v30 = _Block_copy(aBlock);
      v31 = v28;
      sub_257ECF150();
      *&v62 = MEMORY[0x277D84F90];
      sub_257DB7C60(&qword_281544090, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
      sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
      v32 = v55;
      sub_257ED0180();
      MEMORY[0x259C72880](0, v7, v4, v30);
      _Block_release(v30);
      v33 = v54;

      (*(v58 + 8))(v4, v32);
      (*(v57 + 8))(v7, v5);
    }

    else
    {
      sub_257ECD460();
      v46 = v24;
      v47 = sub_257ECDA20();
      v48 = sub_257ECFBE0();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412546;
        v51 = v46;
        v52 = _swift_stdlib_bridgeErrorToNSError();
        *(v49 + 4) = v52;
        *v50 = v52;
        *(v49 + 12) = 2048;
        aBlock[0] = v51;
        sub_257ECC9B0();

        *(v49 + 14) = v62;
        _os_log_impl(&dword_257BAC000, v47, v48, "Other capture session runtime error: %@ [code: %ld]", v49, 0x16u);
        sub_257BE4084(v50, &unk_27F8F5490);
        MEMORY[0x259C74820](v50, -1, -1);
        MEMORY[0x259C74820](v49, -1, -1);
      }

      else
      {

        v47 = v46;
      }

      return (*(v59 + 8))(v14, v60);
    }
  }

LABEL_13:
  sub_257ECD460();
  v35 = a1;
  v36 = sub_257ECDA20();
  v37 = sub_257ECFBE0();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v38 = 136315138;
    v40 = [v35 userInfo];
    if (v40)
    {
      v41 = v40;
      sub_257ECF3D0();
    }

    else
    {
      sub_257BE88A0(MEMORY[0x277D84F90]);
    }

    v42 = sub_257ECF3E0();
    v44 = v43;

    v45 = sub_257BF1FC8(v42, v44, aBlock);

    *(v38 + 4) = v45;
    _os_log_impl(&dword_257BAC000, v36, v37, "Unknown capture session runtime error. Notification userInfo: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x259C74820](v39, -1, -1);
    MEMORY[0x259C74820](v38, -1, -1);
  }

  return (*(v59 + 8))(v11, v60);
}

void sub_257DB2B94(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v60 - v3;
  v5 = sub_257ECDA30();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v60 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v60 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v60 - v16;
  v18 = [a1 userInfo];
  if (!v18)
  {
    v66 = 0u;
    v67 = 0u;
    goto LABEL_12;
  }

  v19 = v18;
  v20 = sub_257ECF3D0();

  v63 = sub_257ECF500();
  v64 = v21;
  sub_257ED0280();
  if (!*(v20 + 16) || (v22 = sub_257C03F28(v65), (v23 & 1) == 0))
  {

    sub_257C09D10(v65);
    v66 = 0u;
    v67 = 0u;
    goto LABEL_12;
  }

  sub_257BE41F4(*(v20 + 56) + 32 * v22, &v66);
  sub_257C09D10(v65);

  if (!*(&v67 + 1))
  {
LABEL_12:
    sub_257BE4084(&v66, &unk_27F8F62F0);
    goto LABEL_13;
  }

  v24 = sub_257BD2C2C(0, &qword_281543DC0);
  if (swift_dynamicCast())
  {
    v61 = v65[0];
    v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v60 = v24;
    v26 = sub_257ECFF50();

    if (v26)
    {
      v27 = v61;
      sub_257ECD460();
      v28 = sub_257ECDA20();
      v29 = sub_257ECFC00();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_257BAC000, v28, v29, "Another app wants the capture session, not attempting resume", v30, 2u);
        MEMORY[0x259C74820](v30, -1, -1);
      }

      (*(v6 + 8))(v12, v5);
      v31 = sub_257ECF930();
      (*(*(v31 - 8) + 56))(v4, 1, 1, v31);
      v32 = swift_allocObject();
      v32[2] = 0;
      v32[3] = 0;
      v33 = v62;
      v32[4] = v62;
      v34 = v33;
      sub_257E81524(0, 0, v4, &unk_257EE9450, v32);

      return;
    }

    v47 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v48 = v61;
    v49 = sub_257ECFF50();

    if (v49)
    {
      sub_257ECD460();
      v50 = sub_257ECDA20();
      v51 = sub_257ECFC00();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_257BAC000, v50, v51, "App in background, not attempting resume", v52, 2u);
        MEMORY[0x259C74820](v52, -1, -1);
      }

      else
      {
      }

      (*(v6 + 8))(v15, v5);
      return;
    }

    sub_257ECD460();
    v53 = v48;
    v54 = sub_257ECDA20();
    v55 = sub_257ECFC00();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138412290;
      *(v56 + 4) = v53;
      *v57 = v53;
      v58 = v53;
      _os_log_impl(&dword_257BAC000, v54, v55, "Capture session interrupted reason: %@", v56, 0xCu);
      sub_257BE4084(v57, &unk_27F8F5490);
      MEMORY[0x259C74820](v57, -1, -1);
      MEMORY[0x259C74820](v56, -1, -1);
      v59 = v58;
    }

    else
    {
      v59 = v54;
      v54 = v53;
    }

    (*(v6 + 8))(v17, v5);
  }

LABEL_13:
  sub_257ECD460();
  v35 = a1;
  v36 = sub_257ECDA20();
  v37 = sub_257ECFC00();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v65[0] = v39;
    *v38 = 136315138;
    v40 = [v35 userInfo];
    if (v40)
    {
      v41 = v40;
      sub_257ECF3D0();
    }

    else
    {
      sub_257BE88A0(MEMORY[0x277D84F90]);
    }

    v42 = sub_257ECF3E0();
    v44 = v43;

    v45 = sub_257BF1FC8(v42, v44, v65);

    *(v38 + 4) = v45;
    _os_log_impl(&dword_257BAC000, v36, v37, "Capture session interrupted unknown reason: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x259C74820](v39, -1, -1);
    MEMORY[0x259C74820](v38, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v46 = *&v62[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession];
  sub_257DB3860(v46, 0, 0);
}

uint64_t sub_257DB3360()
{
  *(v0 + 16) = xmmword_257EE4D30;
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_257DB0EC0;

  return MAGCaptureEventHandler.send(_:)((v0 + 16));
}

uint64_t sub_257DB347C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_257ECDA30();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD460();
  v11 = a1;
  v12 = sub_257ECDA20();
  v13 = sub_257ECFC00();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_257BAC000, v12, v13, "Session ended interruption: %@", v14, 0xCu);
    sub_257BE4084(v15, &unk_27F8F5490);
    MEMORY[0x259C74820](v15, -1, -1);
    MEMORY[0x259C74820](v14, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v17 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession];
  sub_257DB3860(v17, 0, 0);

  v18 = sub_257ECF930();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v2;
  v20 = v2;
  sub_257E81524(0, 0, v6, &unk_257EE9440, v19);
}

uint64_t sub_257DB3744()
{
  *(v0 + 16) = xmmword_257EE4D40;
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_257DB0EC0;

  return MAGCaptureEventHandler.send(_:)((v0 + 16));
}

uint64_t sub_257DB3860(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_257ECF120();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_257ECF190();
  v11 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSessionQueue);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  aBlock[4] = sub_257DB7C3C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_45;
  v15 = _Block_copy(aBlock);
  v16 = a1;
  sub_257BBD7E4(a2);
  sub_257ECF150();
  v20 = MEMORY[0x277D84F90];
  sub_257DB7C60(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v13, v10, v15);
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v19);
}

uint64_t sub_257DB3B4C(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  sub_257ECD460();
  v11 = sub_257ECDA20();
  v12 = sub_257ECFBD0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_257BAC000, v11, v12, "Resuming interrupted session.", v13, 2u);
    MEMORY[0x259C74820](v13, -1, -1);
  }

  v14 = *(v5 + 8);
  v14(v10, v4);
  if (([a1 isRunning] & 1) == 0)
  {
    [a1 startRunning];
  }

  result = [a1 isRunning];
  if ((result & 1) == 0)
  {
    v16 = result;
    sub_257ECD460();
    v17 = sub_257ECDA20();
    v18 = sub_257ECFBE0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_257BAC000, v17, v18, "Unable to resume the session running", v19, 2u);
      MEMORY[0x259C74820](v19, -1, -1);
    }

    v14(v8, v4);
    result = v16;
  }

  if (a2)
  {
    return a2(result);
  }

  return result;
}

id MAGCaptureService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MAGCaptureService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAGCaptureService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_257DB40CC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MAGCaptureService();
  result = sub_257ECDCF0();
  *a1 = result;
  return result;
}

Swift::Void __swiftcall MAGCaptureService.captureOutput(_:didOutput:from:)(AVCaptureOutput _, CMSampleBufferRef didOutput, AVCaptureConnection from)
{
  outputInternal = _._outputInternal;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  type metadata accessor for MAGCMSampleBufferWrapper();
  v8 = swift_allocObject();
  *(v8 + 16) = outputInternal;
  v9 = sub_257ECF930();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;
  v10[5] = v3;
  v11 = outputInternal;
  v12 = v3;
  sub_257E81524(0, 0, v7, &unk_257EE9280, v10);
}

uint64_t sub_257DB423C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  return MEMORY[0x2822009F8](sub_257DB425C, 0, 0);
}

uint64_t sub_257DB425C()
{
  *(v0 + 16) = *(v0 + 32) | 0x4000000000000000;
  *(v0 + 24) = 0;
  sub_257ECC3F0();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_257DB4320;

  return MAGCaptureEventHandler.send(_:)((v0 + 16));
}

uint64_t sub_257DB4320()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_257DB4498;
  }

  else
  {
    v2 = sub_257DB4434;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257DB4434()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257DB4498()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257DB4670()
{
  *(v0 + 16) = xmmword_257EE4D10;
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_257DB0EC0;

  return MAGCaptureEventHandler.send(_:)((v0 + 16));
}

uint64_t sub_257DB4764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_257ECF930();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v4;
  v11 = v4;
  sub_257E81524(0, 0, v8, a4, v10);
}

uint64_t sub_257DB487C()
{
  *(v0 + 16) = xmmword_257EE4D20;
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_257DB4930;

  return MAGCaptureEventHandler.send(_:)((v0 + 16));
}

uint64_t sub_257DB4930()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  sub_257BEE3D0(*(v2 + 16), *(v2 + 24));
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_257DB4A6C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_257DB4AA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_257ECF930();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v13 = a1;
  sub_257E81524(0, 0, v10, a6, v12);
}

uint64_t sub_257DB4BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  return MEMORY[0x2822009F8](sub_257DB4BCC, 0, 0);
}

uint64_t sub_257DB4BCC()
{
  v1 = *(v0 + 32);
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_257DB4C8C;

  return MAGCaptureEventHandler.send(_:)((v0 + 16));
}

uint64_t sub_257DB4C8C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_257DB8370;
  }

  else
  {
    v2 = sub_257DB83B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257DB4DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  return MEMORY[0x2822009F8](sub_257DB4DC0, 0, 0);
}

uint64_t sub_257DB4DC0()
{
  v1 = *(v0 + 32);
  *(v0 + 16) = 1;
  *(v0 + 24) = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_257DB4E84;

  return MAGCaptureEventHandler.send(_:)((v0 + 16));
}

uint64_t sub_257DB4E84()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_257DB4FFC;
  }

  else
  {
    v2 = sub_257DB4F98;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257DB4F98()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257DB4FFC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257DB512C()
{
  *(v0 + 16) = xmmword_257EE4D50;
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_257DB0EC0;

  return MAGCaptureEventHandler.send(_:)((v0 + 16));
}

uint64_t sub_257DB5240()
{
  *(v0 + 16) = xmmword_257EE4D60;
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_257DB0EC0;

  return MAGCaptureEventHandler.send(_:)((v0 + 16));
}

uint64_t sub_257DB5354()
{
  *(v0 + 16) = xmmword_257EE4D70;
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_257DB0EC0;

  return MAGCaptureEventHandler.send(_:)((v0 + 16));
}

uint64_t sub_257DB5448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_257ECF930();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v3;
  v10 = v3;
  sub_257E81524(0, 0, v7, a3, v9);
}

uint64_t sub_257DB5560()
{
  *(v0 + 16) = xmmword_257EE4D80;
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_257DB0EC0;

  return MAGCaptureEventHandler.send(_:)((v0 + 16));
}

uint64_t sub_257DB5634(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_257ECF930();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v12 = a1;
  sub_257E81524(0, 0, v9, a5, v11);
}

uint64_t sub_257DB5730@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a1 = v3;
  return result;
}

uint64_t sub_257DB57B0(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_257ECDD70();
}

uint64_t sub_257DB5828@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a1 = v3;
  return result;
}

uint64_t sub_257DB58A8(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v3;
  sub_257ECDD70();
  return sub_257DAAB4C();
}

uint64_t sub_257DB5928(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257C167C4;

  return sub_257DB423C(a1, v4, v5, v7, v6);
}

uint64_t sub_257DB59E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257DB4650(a1, v4, v5, v6);
}

uint64_t sub_257DB5A9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257DB485C(a1, v4, v5, v6);
}

uint64_t sub_257DB5B50(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_257ED05F0();
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
        sub_257BD2C2C(0, &qword_281543F70);
        v6 = sub_257ECF850();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_257DB5DE0(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_257DB5C64(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_257DB5C64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 localizedName];
      v11 = sub_257ECF500();
      v13 = v12;

      v14 = [v9 localizedName];
      v15 = sub_257ECF500();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = sub_257ED0640();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_257DB5DE0(id **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_107:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = v4;
LABEL_110:
      v4 = *(v107 + 2);
      if (v4 >= 2)
      {
        do
        {
          v108 = *v6;
          if (!*v6)
          {
            goto LABEL_144;
          }

          v6 = (v4 - 1);
          v109 = *&v107[16 * v4];
          v110 = v107;
          v111 = *&v107[16 * v4 + 24];
          sub_257DB65E0((v108 + 8 * v109), (v108 + 8 * *&v107[16 * v4 + 16]), (v108 + 8 * v111), v5);
          if (v126)
          {
            break;
          }

          if (v111 < v109)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_257C66E20(v110);
          }

          if (v4 - 2 >= *(v110 + 2))
          {
            goto LABEL_134;
          }

          v112 = &v110[16 * v4];
          *v112 = v109;
          *(v112 + 1) = v111;
          sub_257C66D94(v4 - 1);
          v107 = v110;
          v4 = *(v110 + 2);
          v6 = a3;
        }

        while (v4 > 1);
      }

LABEL_118:

      return;
    }

LABEL_140:
    v107 = sub_257C66E20(v4);
    goto LABEL_110;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v122 = v7;
      v114 = v9;
      v116 = v10;
      v4 = *v6;
      v11 = *(*v6 + 8 * v8);
      v12 = *(*v6 + 8 * v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 localizedName];
      v16 = sub_257ECF500();
      v18 = v17;

      v19 = [v14 localizedName];
      v20 = sub_257ECF500();
      v5 = v21;

      if (v16 == v20 && v18 == v5)
      {
        v127 = 0;
      }

      else
      {
        v127 = sub_257ED0640();
      }

      v10 = v116;
      v8 = v116 + 2;
      if (v116 + 2 >= v122)
      {
        v6 = a3;
      }

      else
      {
        v4 += 8 * v116 + 16;
        do
        {
          v124 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 localizedName];
          v5 = sub_257ECF500();
          v29 = v28;

          v30 = [v26 localizedName];
          v31 = sub_257ECF500();
          v33 = v32;

          if (v5 == v31 && v29 == v33)
          {

            v8 = v124;
            if (v127)
            {
              v6 = a3;
              v9 = v114;
              v10 = v116;
              goto LABEL_26;
            }
          }

          else
          {
            v23 = sub_257ED0640();

            v8 = v124;
            if ((v127 ^ v23))
            {
              goto LABEL_24;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v122 != v8);
        v8 = v122;
LABEL_24:
        v6 = a3;
        v10 = v116;
      }

      v9 = v114;
      if (v127)
      {
LABEL_26:
        if (v8 < v10)
        {
          goto LABEL_137;
        }

        if (v10 < v8)
        {
          v35 = 8 * v8 - 8;
          v36 = 8 * v10;
          v37 = v8;
          v38 = v10;
          do
          {
            if (v38 != --v37)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_143;
              }

              v40 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v35);
              *(v39 + v35) = v40;
            }

            ++v38;
            v35 -= 8;
            v36 += 8;
          }

          while (v38 < v37);
        }
      }
    }

    v41 = v6[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_136;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_135;
    }

    v60 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v60;
    }

    else
    {
      v9 = sub_257BFCB00(0, *(v60 + 2) + 1, 1, v60);
    }

    v4 = *(v9 + 2);
    v61 = *(v9 + 3);
    v62 = v4 + 1;
    if (v4 >= v61 >> 1)
    {
      v9 = sub_257BFCB00((v61 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v62;
    v63 = &v9[16 * v4];
    *(v63 + 4) = v10;
    *(v63 + 5) = v8;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v4)
    {
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_75:
          if (v69)
          {
            goto LABEL_124;
          }

          v82 = &v9[16 * v62];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_127;
          }

          v88 = &v9[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_131;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v92 = &v9[16 * v62];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_89:
        if (v87)
        {
          goto LABEL_126;
        }

        v95 = &v9[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_129;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_96:
        v4 = v65 - 1;
        if (v65 - 1 >= v62)
        {
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
          goto LABEL_139;
        }

        if (!*v6)
        {
          goto LABEL_142;
        }

        v5 = v8;
        v103 = v9;
        v104 = *&v9[16 * v4 + 32];
        v105 = *&v9[16 * v65 + 40];
        sub_257DB65E0((*v6 + 8 * v104), (*v6 + 8 * *&v9[16 * v65 + 32]), (*v6 + 8 * v105), v64);
        if (v126)
        {
          goto LABEL_118;
        }

        if (v105 < v104)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_257C66E20(v103);
        }

        if (v4 >= *(v103 + 2))
        {
          goto LABEL_121;
        }

        v106 = &v103[16 * v4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        sub_257C66D94(v65);
        v9 = v103;
        v62 = *(v103 + 2);
        v8 = v5;
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[16 * v62 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_122;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_123;
      }

      v77 = &v9[16 * v62];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_125;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_128;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_132;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  v42 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_138;
  }

  if (v42 >= v41)
  {
    v42 = v6[1];
  }

  if (v42 < v10)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v8 == v42)
  {
    goto LABEL_55;
  }

  v115 = v9;
  v117 = v10;
  v128 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v43 = v10 - v8;
  v120 = v42;
LABEL_44:
  v123 = v4;
  v125 = v8;
  v44 = *(v128 + 8 * v8);
  v121 = v43;
  v45 = v43;
  while (1)
  {
    v46 = *v4;
    v47 = v44;
    v48 = v46;
    v49 = [v47 localizedName];
    v5 = sub_257ECF500();
    v51 = v50;

    v52 = [v48 localizedName];
    v53 = sub_257ECF500();
    v55 = v54;

    if (v5 == v53 && v51 == v55)
    {

LABEL_43:
      v8 = v125 + 1;
      v4 = v123 + 8;
      v43 = v121 - 1;
      if ((v125 + 1) == v120)
      {
        v8 = v120;
        v6 = a3;
        v9 = v115;
        v10 = v117;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v57 = sub_257ED0640();

    if ((v57 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v128)
    {
      break;
    }

    v58 = *v4;
    v44 = *(v4 + 8);
    *v4 = v44;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

uint64_t sub_257DB65E0(void **__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[v12] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 8 * v12);
      a4 = v29;
    }

    v54 = &a4[v12];
    v13 = a4;
    if (v10 >= 8 && v5 > v6)
    {
      v49 = a4;
      v48 = v6;
LABEL_32:
      v30 = v5 - 1;
      v31 = v4;
      v32 = v54;
      v51 = v5 - 1;
      v53 = v5;
      do
      {
        v33 = *--v32;
        v34 = *v30;
        v35 = v33;
        v36 = v34;
        v37 = [v35 localizedName];
        v38 = sub_257ECF500();
        v40 = v39;

        v41 = [v36 localizedName];
        v42 = sub_257ECF500();
        v44 = v43;

        if (v38 == v42 && v40 == v44)
        {

          v4 = (v31 - 8);
        }

        else
        {
          v46 = sub_257ED0640();

          v4 = (v31 - 8);
          if (v46)
          {
            v13 = v49;
            if (v31 != v53)
            {
              *v4 = *v51;
            }

            if (v54 <= v49 || (v5 = v51, v51 <= v48))
            {
              v5 = v51;
              goto LABEL_49;
            }

            goto LABEL_32;
          }
        }

        v13 = v49;
        v30 = v51;
        if (v54 != v31)
        {
          *v4 = *v32;
        }

        v54 = v32;
        v31 = v4;
      }

      while (v32 > v49);
      v54 = v32;
      v5 = v53;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v54 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v50 = v4;
      while (1)
      {
        v52 = v5;
        v14 = *v13;
        v15 = *v5;
        v16 = v14;
        v17 = [v15 localizedName];
        v18 = sub_257ECF500();
        v20 = v19;

        v21 = [v16 localizedName];
        v22 = sub_257ECF500();
        v24 = v23;

        v25 = v18 == v22 && v20 == v24;
        if (v25)
        {
          break;
        }

        v26 = sub_257ED0640();

        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }

        v27 = v52;
        v5 = v52 + 1;
        v28 = v50;
        if (v6 != v52)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v6;
        if (v13 >= v54 || v5 >= v28)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v27 = v13;
      v25 = v6 == v13++;
      v5 = v52;
      v28 = v50;
      if (v25)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v6 = *v27;
      goto LABEL_22;
    }

LABEL_24:
    v5 = v6;
  }

LABEL_49:
  if (v5 != v13 || v5 >= (v13 + ((v54 - v13 + (v54 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * ((v54 - v13) / 8));
  }

  return 1;
}

uint64_t sub_257DB69CC(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v58 = a1;
  v57 = sub_257ECDA30();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_257ECF120();
  v71 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_257ECF190();
  v7 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = &v2[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_environment];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (aBlock == 4)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v62 = sub_257BD2C2C(0, &qword_281543F10);
  v11 = sub_257ECFD30();
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v10;
  v77 = sub_257DB8008;
  v78 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v74 = 1107296256;
  v75 = sub_257D231C0;
  v76 = &block_descriptor_206;
  v13 = _Block_copy(&aBlock);
  v70 = v2;

  sub_257ECF150();
  aBlock = MEMORY[0x277D84F90];
  v14 = sub_257DB7C60(&qword_281544090, MEMORY[0x277D85198]);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  v16 = sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  v64 = v15;
  v63 = v16;
  v65 = v14;
  sub_257ED0180();
  MEMORY[0x259C72880](0, v9, v6, v13);
  _Block_release(v13);

  v17 = *(v71 + 8);
  v69 = v6;
  v18 = v6;
  v19 = v60;
  v20 = v4;
  v71 += 8;
  v66 = v17;
  v17(v18, v4);
  v21 = *(v7 + 8);
  v67 = v9;
  v68 = v7 + 8;
  v22 = v9;
  v23 = v21;
  v21(v22, v19);
  v24 = *(v59 + 3) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cameraType;
  swift_beginAccess();
  v25 = *(v24 + 8);
  v26 = *(v24 + 16);
  aBlock = *v24;
  v74 = v25;
  LOBYTE(v75) = v26;
  v27 = qword_2815447E0;

  if (v27 != -1)
  {
    v28 = swift_once();
  }

  MEMORY[0x28223BE20](v28);
  *(&v54 - 2) = &aBlock;
  sub_257ECFD50();

  if (v61)
  {
    v29 = sub_257ECF4C0();
    v30 = [objc_opt_self() deviceWithUniqueID_];
  }

  else
  {
    v30 = sub_257D3488C(v72);
  }

  v31 = v69;
  v32 = v70;
  v33 = [*&v70[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession] isRunning];
  if (v33)
  {
    sub_257DB0FF4(0, 0);
  }

  if (!v30)
  {
    goto LABEL_14;
  }

  v34 = *&v32[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice];
  *&v32[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice] = v30;
  v35 = v30;

  v36 = [v35 uniqueID];
  v37 = sub_257ECF500();
  v39 = v38;

  v40 = &v70[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureDeviceID];
  *v40 = v37;
  v40[1] = v39;
  v32 = v70;

  if (sub_257DAB89C())
  {

LABEL_14:
    if (v33 && *&v32[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice])
    {
      sub_257DB05D0(0, 0);
    }

    v41 = sub_257ECFD30();
    v42 = swift_allocObject();
    *(v42 + 16) = v32;
    v77 = sub_257DB839C;
    v78 = v42;
    aBlock = MEMORY[0x277D85DD0];
    v74 = 1107296256;
    v75 = sub_257D231C0;
    v76 = &block_descriptor_212;
    v43 = _Block_copy(&aBlock);
    v44 = v32;

    v45 = v67;
    sub_257ECF150();
    aBlock = MEMORY[0x277D84F90];
    sub_257ED0180();
    MEMORY[0x259C72880](0, v45, v31, v43);
    _Block_release(v43);

    goto LABEL_21;
  }

  v46 = v55;
  sub_257ECD430();
  v47 = sub_257ECDA20();
  v48 = sub_257ECFBE0();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_257BAC000, v47, v48, "Failed to configure camera", v49, 2u);
    MEMORY[0x259C74820](v49, -1, -1);
  }

  (*(v56 + 8))(v46, v57);
  v30 = sub_257ECFD30();
  v50 = swift_allocObject();
  *(v50 + 16) = v32;
  v77 = sub_257DB8010;
  v78 = v50;
  aBlock = MEMORY[0x277D85DD0];
  v74 = 1107296256;
  v75 = sub_257D231C0;
  v76 = &block_descriptor_218;
  v51 = _Block_copy(&aBlock);
  v52 = v32;

  v45 = v67;
  sub_257ECF150();
  aBlock = MEMORY[0x277D84F90];
  sub_257ED0180();
  MEMORY[0x259C72880](0, v45, v31, v51);
  _Block_release(v51);

LABEL_21:
  v66(v31, v20);
  return v23(v45, v19);
}

uint64_t sub_257DB72DC(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_257ECDA30();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  if (a2)
  {
    v36 = a1;
    sub_257ECD460();
    v16 = a2;
    v17 = sub_257ECDA20();
    v18 = sub_257ECFC00();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v35 = v3;
      v20 = v19;
      v21 = swift_slowAlloc();
      v37 = a2;
      v38 = v21;
      *v20 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8160);
      v22 = sub_257ED00B0();
      v24 = sub_257BF1FC8(v22, v23, &v38);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_257BAC000, v17, v18, "Could not capture photo: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x259C74820](v21, -1, -1);
      v25 = v20;
      v3 = v35;
      MEMORY[0x259C74820](v25, -1, -1);
    }

    (*(v10 + 8))(v15, v9);
    v26 = &unk_257EE9790;
    a1 = v36;
  }

  else
  {
    sub_257ECD460();
    v27 = sub_257ECDA20();
    v28 = sub_257ECFC00();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_257BAC000, v27, v28, "Successfully captured photo", v29, 2u);
      MEMORY[0x259C74820](v29, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    v26 = &unk_257EE9780;
  }

  v30 = sub_257ECF930();
  (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = a1;
  v31[5] = v3;
  v32 = a1;
  v33 = v3;
  sub_257E81524(0, 0, v8, v26, v31);
}

uint64_t sub_257DB7678(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257DB510C(a1, v4, v5, v6);
}

uint64_t sub_257DB772C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257DB5220(a1, v4, v5, v6);
}

uint64_t sub_257DB77E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257DB5334(a1, v4, v5, v6);
}

uint64_t sub_257DB7894(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257DB5540(a1, v4, v5, v6);
}

void sub_257DB7950()
{
  sub_257D7085C(319, &unk_27F8F91D8, &qword_27F8F9168);
  if (v0 <= 0x3F)
  {
    sub_257D7085C(319, &qword_2815440B0, &qword_27F8F9178);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_257DB7B40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257BE3DE0;

  return sub_257DB485C(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_6()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257DB7C60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257DB7CA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257DB3724(a1, v4, v5, v6);
}

uint64_t sub_257DB7D5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257DB3340(a1, v4, v5, v6);
}

id sub_257DB7E10()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession;
  result = [*(v1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession) isRunning];
  if ((result & 1) == 0 && (*(v1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_isConfiguringSession) & 1) == 0)
  {
    v4 = *(v1 + v2);

    return [v4 startRunning];
  }

  return result;
}

id sub_257DB7E84()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession;
  result = [*(v1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession) isRunning];
  if (result && (*(v1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_isConfiguringSession) & 1) == 0)
  {
    v4 = *(v1 + v2);

    return [v4 stopRunning];
  }

  return result;
}

uint64_t objectdestroy_142Tm()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257DB7F54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257DB0DEC(a1, v4, v5, v6);
}

uint64_t sub_257DB80D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257C167C4;

  return sub_257DB4DA0(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_305Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257DB81D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257C167C4;

  return sub_257DB4BAC(a1, v4, v5, v7, v6);
}

uint64_t sub_257DB83D0(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = 0;
  while (*(a2 + 32 + result) != a1)
  {
    if (v2 == ++result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_257DB8418(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    for (result = 0; v2 != result; ++result)
    {
      v5 = *(a2 + 32 + result);
      if (v5 == 12)
      {
        if (a1 == 12)
        {
          return result;
        }
      }

      else if (v5 == a1)
      {
        return result;
      }
    }
  }

  return 0;
}

unint64_t sub_257DB8488(uint64_t a1, unint64_t a2, void (*a3)(void))
{
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v6 = sub_257ED0210();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x259C72E20](v7, a2);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    a3(0);
    v10 = sub_257ECFF50();

    if (v10)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_257DB859C(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v6 = sub_257ED0210();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x259C72E20](v7, a2);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    sub_257BD2C2C(0, a3);
    v10 = sub_257ECFF50();

    if (v10)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_257DB86A4(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = a2 + 32;
    while (1)
    {
      v6 = *(v5 + v4);
      if (v6 == 1)
      {
        v7 = 0x6F685369746C756DLL;
      }

      else
      {
        v7 = 0x746E656D75636F64;
      }

      v8 = 0xE900000000000074;
      if (v6 != 1)
      {
        v8 = 0xE800000000000000;
      }

      if (*(v5 + v4))
      {
        v9 = v7;
      }

      else
      {
        v9 = 0x6853656C676E6973;
      }

      if (*(v5 + v4))
      {
        v10 = v8;
      }

      else
      {
        v10 = 0xEA0000000000746FLL;
      }

      if (a1)
      {
        if (a1 == 1)
        {
          v11 = 0x6F685369746C756DLL;
        }

        else
        {
          v11 = 0x746E656D75636F64;
        }

        if (a1 == 1)
        {
          v12 = 0xE900000000000074;
        }

        else
        {
          v12 = 0xE800000000000000;
        }

        if (v9 != v11)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v12 = 0xEA0000000000746FLL;
        if (v9 != 0x6853656C676E6973)
        {
          goto LABEL_25;
        }
      }

      if (v10 == v12)
      {

        return v4;
      }

LABEL_25:
      v13 = sub_257ED0640();

      if (v13)
      {
        return v4;
      }

      if (v2 == ++v4)
      {
        return 0;
      }
    }
  }

  return 0;
}

unint64_t sub_257DB8820(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x259C72E20](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject subviews];
      sub_257BD2C2C(0, &unk_281543E00);
      v8 = sub_257ECF810();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_257ED0210();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_257ED0210();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_257ED0210();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_257ED0310();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_257ED0210();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_257BD2D4C(&qword_27F8F9430, &qword_27F8F9428);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9428);
              v19 = sub_257CA8910(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_257ED0210();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

void sub_257DB8BB4()
{
  if (v0[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed] == 1)
  {
    v1 = [objc_opt_self() whiteColor];
    v2 = [v0 traitCollection];
    v6 = sub_257C1C83C(v1, v2);
  }

  else
  {
    v3 = v0[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isGlowing];
    v4 = objc_opt_self();
    if (v3 == 1)
    {
      v5 = [v4 systemYellowColor];
    }

    else
    {
      v5 = [v4 whiteColor];
    }

    v6 = v5;
  }

  [v0 setTintColor_];
}

uint64_t sub_257DB8CC4()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_control;
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_control) != 8)
  {
    goto LABEL_42;
  }

  v111 = MEMORY[0x277D84F90];
  sub_257BF26E4(0, 3, 0);
  v2 = 0;
  v0 = v111;
  v101 = *MEMORY[0x277D740A8];
  v3 = &unk_279854000;
  while (1)
  {
    v4 = byte_286904040[v2 + 32];
    v5 = sub_257ECF4C0();
    v6 = [objc_opt_self() systemImageNamed_];

    if (v6)
    {
      break;
    }

    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9418);
    *&aBlock = MEMORY[0x277D84F90];
LABEL_35:
    v111 = v0;
    v97 = *(v0 + 16);
    v96 = *(v0 + 24);
    if (v97 >= v96 >> 1)
    {
      sub_257BF26E4((v96 > 1), v97 + 1, 1);
      v0 = v111;
    }

    ++v2;
    *(v0 + 16) = v97 + 1;
    sub_257BEBE08(&aBlock, (v0 + 32 * v97 + 32));
    if (v2 == 3)
    {
      return v0;
    }
  }

  v105 = v2;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = [v8 bundleForClass_];
  if (v4)
  {
    if (v4 == 1)
    {
      v10 = sub_257ECF4C0();
      v11 = sub_257ECF4C0();
      v12 = v3;
      v13 = [v9 v3[453]];

      v14 = v13;
      if (!v13)
      {
        sub_257ECF500();
        v14 = sub_257ECF4C0();
      }

      v15 = sub_257ECF500();
      v102 = v16;
      v17 = [v8 bundleForClass_];
      v18 = sub_257ECF4C0();
      v19 = sub_257ECF4C0();
      v20 = [v17 v12 + 3668];

      if (!v20)
      {
        sub_257ECF500();
        v20 = sub_257ECF4C0();
      }

      v21 = [objc_opt_self() systemFontOfSize_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8F90);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_257ED6D30;
      *(inited + 32) = v101;
      *(inited + 64) = sub_257BD2C2C(0, &qword_27F8F8FA0);
      *(inited + 40) = v21;
      v23 = v101;
      v24 = v21;
      sub_257BE8668(inited);
      swift_setDeallocating();
      sub_257BE4084(inited + 32, &qword_27F8F9420);
      _s3__C3KeyVMa_0(0);
      sub_257D3FC9C();
      v25 = sub_257ECF3C0();

      [v14 sizeWithAttributes_];
      v27 = v26;
      v29 = v28;

      [v6 size];
      v31 = v27 + v30 + 5.0;
      [v6 size];
      if (v29 > v32)
      {
        v33 = v29;
      }

      else
      {
        v33 = v32;
      }

      v34 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
      v1 = swift_allocObject();
      *(v1 + 16) = v33;
      *(v1 + 24) = v27;
      *(v1 + 32) = v29;
      *(v1 + 40) = 1;
      *(v1 + 48) = v6;
      *(v1 + 56) = v15;
      *(v1 + 64) = v102;
      *(v1 + 72) = v24;
      v35 = swift_allocObject();
      *(v35 + 16) = sub_257DBCE68;
      *(v35 + 24) = v1;
      v109 = sub_257DBCE6C;
      v110 = v35;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v107 = sub_257E9A0D4;
      v108 = &block_descriptor_23_0;
      v36 = _Block_copy(&aBlock);
      v37 = v6;
      v38 = v24;
      sub_257ECC3F0();

      v39 = [v34 imageWithActions_];
      _Block_release(v36);
      LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

      if (v36)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v104 = v0;
      v71 = sub_257ECF4C0();
      v72 = sub_257ECF4C0();
      v73 = v3;
      v74 = [v9 v3[453]];

      v75 = v74;
      if (!v74)
      {
        sub_257ECF500();
        v75 = sub_257ECF4C0();
      }

      v76 = sub_257ECF500();
      v100 = v77;
      v78 = [v8 bundleForClass_];
      v79 = sub_257ECF4C0();
      v80 = sub_257ECF4C0();
      v20 = [v78 v73 + 3668];

      if (!v20)
      {
        sub_257ECF500();
        v20 = sub_257ECF4C0();
      }

      v81 = [objc_opt_self() systemFontOfSize_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8F90);
      v82 = swift_initStackObject();
      *(v82 + 16) = xmmword_257ED6D30;
      *(v82 + 32) = v101;
      *(v82 + 64) = sub_257BD2C2C(0, &qword_27F8F8FA0);
      *(v82 + 40) = v81;
      v83 = v101;
      v84 = v81;
      sub_257BE8668(v82);
      swift_setDeallocating();
      sub_257BE4084(v82 + 32, &qword_27F8F9420);
      _s3__C3KeyVMa_0(0);
      sub_257D3FC9C();
      v85 = sub_257ECF3C0();

      [v75 sizeWithAttributes_];
      v87 = v86;
      v89 = v88;

      [v6 size];
      v91 = v87 + v90 + 5.0;
      [v6 size];
      if (v89 > v92)
      {
        v93 = v89;
      }

      else
      {
        v93 = v92;
      }

      v34 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
      v1 = swift_allocObject();
      *(v1 + 16) = v93;
      *(v1 + 24) = v87;
      *(v1 + 32) = v89;
      *(v1 + 40) = 1;
      *(v1 + 48) = v6;
      *(v1 + 56) = v76;
      *(v1 + 64) = v100;
      *(v1 + 72) = v84;
      v94 = swift_allocObject();
      *(v94 + 16) = sub_257DBC89C;
      *(v94 + 24) = v1;
      v109 = sub_257DBC8A0;
      v110 = v94;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v107 = sub_257E9A0D4;
      v108 = &block_descriptor_46;
      v95 = _Block_copy(&aBlock);
      v37 = v6;
      v38 = v84;
      sub_257ECC3F0();

      v39 = [v34 imageWithActions_];
      _Block_release(v95);
      LOBYTE(v95) = swift_isEscapingClosureAtFileLocation();

      v0 = v104;
      if (v95)
      {
        goto LABEL_40;
      }
    }

    v70 = v39;
    [v70 setAccessibilityLabel_];

    v108 = sub_257BD2C2C(0, &qword_281543DF0);
    goto LABEL_34;
  }

  v103 = v0;
  v40 = sub_257ECF4C0();
  v41 = sub_257ECF4C0();
  v42 = v3;
  v43 = [v9 v3[453]];

  v44 = v43;
  if (!v43)
  {
    sub_257ECF500();
    v44 = sub_257ECF4C0();
  }

  v99 = sub_257ECF500();
  v46 = v45;
  v47 = [v8 bundleForClass_];
  v48 = sub_257ECF4C0();
  v49 = sub_257ECF4C0();
  v50 = [v47 v42 + 3668];

  if (!v50)
  {
    sub_257ECF500();
    v50 = sub_257ECF4C0();
  }

  v51 = [objc_opt_self() systemFontOfSize_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8F90);
  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_257ED6D30;
  *(v52 + 32) = v101;
  *(v52 + 64) = sub_257BD2C2C(0, &qword_27F8F8FA0);
  *(v52 + 40) = v51;
  v53 = v101;
  v54 = v51;
  sub_257BE8668(v52);
  swift_setDeallocating();
  sub_257BE4084(v52 + 32, &qword_27F8F9420);
  _s3__C3KeyVMa_0(0);
  sub_257D3FC9C();
  v55 = sub_257ECF3C0();

  [v44 sizeWithAttributes_];
  v57 = v56;
  v59 = v58;

  [v6 size];
  v61 = v57 + v60 + 5.0;
  [v6 size];
  if (v59 > v62)
  {
    v63 = v59;
  }

  else
  {
    v63 = v62;
  }

  v64 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v1 = swift_allocObject();
  *(v1 + 16) = v63;
  *(v1 + 24) = v57;
  *(v1 + 32) = v59;
  *(v1 + 40) = 1;
  *(v1 + 48) = v6;
  *(v1 + 56) = v99;
  *(v1 + 64) = v46;
  *(v1 + 72) = v54;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_257DBCE68;
  *(v65 + 24) = v1;
  v109 = sub_257DBCE6C;
  v110 = v65;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v107 = sub_257E9A0D4;
  v108 = &block_descriptor_34;
  v66 = _Block_copy(&aBlock);
  v67 = v54;
  v68 = v6;
  sub_257ECC3F0();

  v69 = [v64 imageWithActions_];
  _Block_release(v66);
  LOBYTE(v66) = swift_isEscapingClosureAtFileLocation();

  v0 = v103;
  if ((v66 & 1) == 0)
  {
    v70 = v69;
    [v70 setAccessibilityLabel_];

    v108 = sub_257BD2C2C(0, &qword_281543DF0);
LABEL_34:
    *&aBlock = v70;
    v2 = v105;
    v3 = &unk_279854000;
    goto LABEL_35;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_257ED02D0();
  MEMORY[0x259C72150](0xD000000000000027, 0x8000000257F04E80);
  LOBYTE(v111) = *(v0 + v1);
  sub_257ED0400();
  MEMORY[0x259C72150](0x6C6F72746E6F6320, 0xE90000000000002ELL);
  result = sub_257ED0410();
  __break(1u);
  return result;
}

id sub_257DB9C8C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___segmentedControl;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___segmentedControl);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___segmentedControl);
  }

  else
  {
    swift_getObjectType();
    v4 = sub_257DB9CFC(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_257DB9CFC(uint64_t a1)
{
  sub_257DB8CC4();
  v2 = objc_allocWithZone(MEMORY[0x277D75A08]);
  v3 = sub_257ECF7F0();

  v4 = [v2 initWithItems_];

  [v4 setAlpha_];
  if (*(a1 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_control) == 8)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v5 = sub_257DB86A4(v11, &unk_286904068);
    if (v6)
    {
      v7 = -1;
    }

    else
    {
      v7 = v5;
    }

    [v4 setSelectedSegmentIndex_];
    v8 = [objc_opt_self() clearColor];
    [v4 _setBackgroundTintColor_];

    [v4 addTarget:a1 action:sel_didSelectSegment_ forControlEvents:4096];
    return v4;
  }

  else
  {
    sub_257ED02D0();
    MEMORY[0x259C72150](0xD000000000000017, 0x8000000257F04E60);
    v10 = sub_257ED08A0();
    MEMORY[0x259C72150](v10);

    MEMORY[0x259C72150](8250, 0xE200000000000000);
    sub_257ED0400();
    MEMORY[0x259C72150](46, 0xE100000000000000);
    result = sub_257ED0410();
    __break(1u);
  }

  return result;
}

id sub_257DB9F9C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___internalButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___internalButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___internalButton);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_config);
    v5 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_config + 8);
    v6 = objc_allocWithZone(type metadata accessor for RoundButton());
    v7 = v5;
    v8 = v0;
    v9 = sub_257D47B08(v4, v7);
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 clearColor];
    [v11 setBackgroundColor_];

    v13 = *(v8 + v1);
    *(v8 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

uint64_t sub_257DBA080()
{
  v0 = sub_257DB9C8C();
  v1 = [v0 subviews];

  sub_257BD2C2C(0, &unk_281543E00);
  v2 = sub_257ECF810();

  v3 = sub_257DB8820(v2);

  v11 = MEMORY[0x277D84F90];
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_20:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_19:
  v4 = sub_257ED0210();
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x259C72E20](v7, v3);
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x259C72300]();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    sub_257ECF860();
    v6 = v11;
  }

  while (v5 != v4);
LABEL_21:

  return v6;
}

void sub_257DBA25C(char a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = sub_257DB9C8C();
  v5 = v4;
  v6 = 0.0;
  if (*(v1 + v3) == 1)
  {
    v6 = 1.0;
    if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed))
    {
      v6 = 0.25;
    }
  }

  [v4 setAlpha_];
}

void (*sub_257DBA2F4(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_257DBA37C;
}

void sub_257DBA37C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_257DB9C8C();
    v7 = v6;
    v8 = 0.0;
    if (*(v4 + v5) == 1)
    {
      v8 = 1.0;
      if (*(v3[3] + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed))
      {
        v8 = 0.25;
      }
    }

    [v6 setAlpha_];
  }

  free(v3);
}

id sub_257DBA418()
{
  v1 = sub_257DB9C8C();
  v2 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded;
  swift_beginAccess();
  v3 = 0.0;
  if (*(v0 + v2) == 1)
  {
    v3 = 1.0;
    if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed))
    {
      v3 = 0.25;
    }
  }

  [v1 setAlpha_];

  sub_257DB8BB4();
  v4 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___segmentedControl;
  v5 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed;
  result = [*(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___segmentedControl) setUserInteractionEnabled_];
  if (*(v0 + v5) == 1)
  {
    return [*(v0 + v4) setSelectedSegmentIndex_];
  }

  return result;
}

id sub_257DBA4F4(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  LOBYTE(a1) = *a1;
  v3[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isGlowing] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_glowSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_detectionModeSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_clickInteraction] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_expandsWithClickInteractionOnly] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___segmentedControl] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___internalButton] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_control] = a1;
  v8 = &v3[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_config];
  *v8 = a2;
  v8[1] = a3;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_257DBA618();
  sub_257DBAC18();
  return v9;
}

uint64_t sub_257DBA618()
{
  v1 = v0;
  if (qword_281544A78 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    [v1 setBackgroundColor_];
    v2 = [objc_opt_self() whiteColor];
    [v1 setTintColor_];

    v3 = sub_257D14B7C();
    v4 = sub_257DB9F9C();
    [v4 setImage:v3 forState:0];

    v5 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded;
    swift_beginAccess();
    v1[v5] = 0;
    v6 = sub_257DB9C8C();
    v7 = v6;
    v8 = 0.0;
    if (v1[v5] == 1)
    {
      v8 = 1.0;
      if (v1[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed])
      {
        v8 = 0.25;
      }
    }

    [v6 setAlpha_];

    v9 = sub_257DBA080();
    v10 = v9;
    if (v9 >> 62)
    {
      break;
    }

    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_20;
    }

LABEL_7:
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x259C72E20](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v16 = [v13 image];
      if (v16)
      {

        [v14 setContentMode_];
      }

      ++v12;
      if (v15 == v11)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
  }

  v11 = sub_257ED0210();
  if (v11)
  {
    goto LABEL_7;
  }

LABEL_20:

  v17 = &selRef_imageByApplyingSymbolConfiguration_;
  v18 = [v1 layer];
  v19 = &selRef_imageByApplyingSymbolConfiguration_;
  [v18 setCornerRadius_];

  v20 = [v1 layer];
  if (qword_281544A80 != -1)
  {
    goto LABEL_45;
  }

LABEL_21:
  [v20 setCornerCurve_];

  v21 = [v1 v17[2]];
  [v21 setMasksToBounds_];

  v22 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___segmentedControl;
  [*&v1[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___segmentedControl] setAlpha_];
  v23 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___internalButton;
  v24 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___internalButton] v17[2]];
  [v24 v19[6]];

  v25 = [*&v1[v23] v17[2]];
  [v25 setMasksToBounds_];

  [*&v1[v23] addTarget:v1 action:sel_didTap_ forControlEvents:64];
  [v1 addSubview_];
  [v1 addSubview_];
  sub_257DBB040();
  v26 = [*&v1[v22] subviews];
  sub_257BD2C2C(0, &unk_281543E00);
  v27 = sub_257ECF810();

  v40 = v27;
  if (!(v27 >> 62))
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
    }

    goto LABEL_23;
  }

  v28 = sub_257ED0210();
  if (v28)
  {
LABEL_23:
    v17 = 0;
    v41 = v27 & 0xC000000000000001;
    v38 = v27 + 32;
    v39 = v27 & 0xFFFFFFFFFFFFFF8;
    v20 = 0x277D75000;
    v1 = &unk_279854000;
    do
    {
      if (v41)
      {
        v29 = MEMORY[0x259C72E20](v17, v40);
      }

      else
      {
        if (v17 >= *(v39 + 16))
        {
          goto LABEL_44;
        }

        v29 = *(v38 + 8 * v17);
      }

      v19 = v29;
      v30 = __OFADD__(v17, 1);
      v17 = (v17 + 1);
      if (v30)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        swift_once();
        goto LABEL_21;
      }

      v31 = [(SEL *)v29 subviews];
      v32 = sub_257ECF810();

      if (v32 >> 62)
      {
        v33 = sub_257ED0210();
        if (!v33)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v33)
        {
          goto LABEL_24;
        }
      }

      if (v33 < 1)
      {
        goto LABEL_43;
      }

      for (i = 0; i != v33; ++i)
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x259C72E20](i, v32);
        }

        else
        {
          v35 = *(v32 + 8 * i + 32);
        }

        v36 = v35;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setNumberOfLines_];
        }
      }

LABEL_24:
    }

    while (v17 != v28);
  }
}

uint64_t sub_257DBAC18()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v17 - v12;
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_control) == 8)
  {
    v17[0] = v11;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
    sub_257ECDD30();
    swift_endAccess();
    v14 = [objc_opt_self() mainRunLoop];
    v17[1] = v14;
    v15 = sub_257ED0080();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    sub_257BD2C2C(0, &unk_281543D40);
    sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
    sub_257BD2C74();
    sub_257ECDDF0();
    sub_257BE4084(v4, &unk_27F8F4DB0);

    (*(v6 + 8))(v8, v5);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0);
    v16 = sub_257ECDE50();

    (*(v17[0] + 8))(v13, v9);
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_detectionModeSubscription) = v16;
  }

  return result;
}

void sub_257DBB040()
{
  v1 = v0;
  v2 = sub_257DB9F9C();
  [v2 setIsAccessibilityElement_];

  v3 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___internalButton;
  v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___internalButton);
  sub_257D14A40();
  v5 = sub_257ECF4C0();

  [v4 setAccessibilityLabel_];

  v6 = *(v1 + v3);
  Control.rawValue.getter();
  v7 = v6;
  v8 = sub_257ECF4C0();

  [v7 setAccessibilityIdentifier_];

  v9 = *(v1 + v3);
  v10 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded;
  swift_beginAccess();
  if (*(v1 + v10))
  {
    v11 = v9;
    v12 = 0;
  }

  else
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = objc_opt_self();
    v11 = v9;
    v15 = [v14 bundleForClass_];
    v16 = sub_257ECF4C0();
    v17 = sub_257ECF4C0();
    v12 = [v15 localizedStringForKey:v16 value:0 table:v17];

    if (!v12)
    {
      sub_257ECF500();
      v12 = sub_257ECF4C0();
    }
  }

  [v11 setAccessibilityHint_];
}

void sub_257DBB27C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v1[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed] = v2;
    sub_257DBA418();
  }
}

void sub_257DBB364()
{
  v1 = v0;
  v22.receiver = v0;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, sel_layoutSubviews);
  v2 = &v0[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_config];
  v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_config];
  v4 = *(v2 + 1);
  v5 = *(v4 + 24);
  v6 = v5(v3, v4);
  v7 = v5(v3, v4);
  [v1 bounds];
  v9 = v8;
  v10 = *(v4 + 40);
  v11 = v10(v3, v4);
  v12 = v10(v3, v4);
  v13 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded;
  swift_beginAccess();
  if (*(v1 + v13))
  {
    v14 = (v9 - v11) * 0.5;
    v15 = sub_257CA9B90();
    v16 = sub_257CA9B88();
    [v1 bounds];
    v18 = v17 - v6 - v15 - v16;
    v23.origin.x = 0.0;
    v23.origin.y = 0.0;
    v23.size.width = v6;
    v23.size.height = v7;
    v19 = v15 + CGRectGetMaxX(v23);
  }

  else
  {
    v12 = v7;
    v18 = v6;
    v14 = 0.0;
    v19 = 0.0;
  }

  v20 = sub_257DB9F9C();
  [v20 setFrame_];

  v21 = sub_257DB9C8C();
  [v21 setFrame_];
}

void sub_257DBB670()
{
  v1 = v0;
  swift_getObjectType();
  sub_257BD2C2C(0, &qword_281543DA0);
  v2 = sub_257DB9C8C();
  v3 = sub_257ECFF50();

  if (v3)
  {
    if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_control) != 8)
    {
      sub_257ED02D0();
      MEMORY[0x259C72150](0xD000000000000017, 0x8000000257F04E60);
      v5 = sub_257ED08A0();
      MEMORY[0x259C72150](v5);

      MEMORY[0x259C72150](8250, 0xE200000000000000);
      sub_257ED0400();
      MEMORY[0x259C72150](46, 0xE100000000000000);
      sub_257ED0410();
      __break(1u);
      return;
    }

    v4 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___segmentedControl;
    if ([*(v1 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___segmentedControl) selectedSegmentIndex])
    {
      if ([*(v1 + v4) selectedSegmentIndex] == 1)
      {
        if (qword_281544FE0 == -1)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if ([*(v1 + v4) selectedSegmentIndex] != 2)
        {
          return;
        }

        if (qword_281544FE0 == -1)
        {
          goto LABEL_11;
        }
      }
    }

    else if (qword_281544FE0 == -1)
    {
      goto LABEL_11;
    }

    swift_once();
LABEL_11:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD70();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD70();
  }
}

id sub_257DBBA54()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v3 = sub_257D53928();
  v4 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_control;
  v5 = sub_257C3EF48(v0[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_control], v3);

  if (v5)
  {
    v15 = v0[v4];
    sub_257D56A50(&v15);
    v6 = v0[v4];
    v7 = sub_257DB9C8C();
    v8 = v7;
    if (v6 == 8)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v9 = sub_257DB86A4(v15, &unk_286905C58);
      if (v10)
      {
        v11 = -1;
      }

      else
      {
        v11 = v9;
      }

      [v8 setSelectedSegmentIndex_];
    }

    else
    {
      [v7 setSelectedSegmentIndex_];
    }

    v14.receiver = v1;
    v12 = &v14;
  }

  else
  {
    v16 = v0;
    v12 = &v16;
  }

  v12->super_class = ObjectType;
  return [(objc_super *)v12 removeFromSuperview];
}

uint64_t sub_257DBBCFC()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_257DBBD44(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_257DBA2F4(v2);
  return sub_257CA4CF4;
}

uint64_t sub_257DBBDEC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_257DBBE38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_257ED9BF0;
  *(v0 + 32) = sub_257DB9F9C();
  return v0;
}

void sub_257DBBF04(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_clickInteraction;
  v9 = *&v2[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_clickInteraction];
  if (v9)
  {
    sub_257BD2C2C(0, &qword_27F8F62E0);
    v10 = v9;
    v11 = a1;
    v12 = sub_257ECFF50();

    if (v12)
    {
      v13 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded;
      swift_beginAccess();
      v14 = v2[v13];
      sub_257ECD350();
      v15 = v2;
      v16 = sub_257ECDA20();
      v17 = sub_257ECFBD0();
      if (os_log_type_enabled(v16, v17))
      {
        v27 = v15;
        v18 = v14 ^ 1;
        v19 = swift_slowAlloc();
        v26 = v14;
        v20 = v19;
        *v19 = 67109632;
        *(v19 + 4) = v18;
        v15 = v27;
        *(v19 + 8) = 1024;
        *(v19 + 10) = v2[v13];
        *(v19 + 14) = 1024;
        *(v19 + 16) = *(&v15->isa + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed);

        _os_log_impl(&dword_257BAC000, v16, v17, "should begin: %{BOOL}d, expanded: %{BOOL}d, dimmed: %{BOOL}d", v20, 0x14u);
        v21 = v20;
        v14 = v26;
        MEMORY[0x259C74820](v21, -1, -1);
      }

      else
      {

        v16 = v15;
      }

      (*(v5 + 8))(v7, v4);
      if (v14)
      {
        v22 = *&v2[v8];
        if (v22)
        {
          [v22 cancelInteraction];
          v23 = *&v2[v8];
          if (v23)
          {
            v24 = v23;
            sub_257DBCC98(1);

            if (*&v2[v8])
            {
              [v15 removeInteraction:?];
              return;
            }

LABEL_15:
            __break(1u);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_15;
      }
    }
  }
}

void sub_257DBC1E8(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_clickInteraction;
  v12 = *&v2[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_clickInteraction];
  if (v12)
  {
    sub_257BD2C2C(0, &qword_27F8F62E0);
    v13 = v12;
    v14 = a1;
    v15 = sub_257ECFF50();

    if (v15)
    {
      if ((v2[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed] & 1) == 0)
      {
        sub_257ECD350();
        v19 = sub_257ECDA20();
        v22 = sub_257ECFBD0();
        if (!os_log_type_enabled(v19, v22))
        {
          goto LABEL_15;
        }

        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_257BAC000, v19, v22, "will present", v21, 2u);
        goto LABEL_12;
      }

      v16 = *&v2[v11];
      if (v16)
      {
        [v16 cancelInteraction];
        v17 = *&v2[v11];
        if (v17)
        {
          v18 = v17;
          sub_257DBCC98(1);

          if (*&v2[v11])
          {
            [v2 removeInteraction_];
            sub_257ECD350();
            v19 = sub_257ECDA20();
            v20 = sub_257ECFBD0();
            if (!os_log_type_enabled(v19, v20))
            {
              v10 = v8;
              goto LABEL_15;
            }

            v21 = swift_slowAlloc();
            *v21 = 0;
            _os_log_impl(&dword_257BAC000, v19, v20, "will not present", v21, 2u);
            v10 = v8;
LABEL_12:
            MEMORY[0x259C74820](v21, -1, -1);
LABEL_15:

            (*(v5 + 8))(v10, v4);
            return;
          }

          goto LABEL_18;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }
  }
}

id sub_257DBC568(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *&v2[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_clickInteraction];
  if (!v8)
  {
    return 0;
  }

  sub_257BD2C2C(0, &qword_27F8F62E0);
  v9 = v8;
  v10 = a1;
  v11 = sub_257ECFF50();

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  sub_257ECD350();
  v12 = v2;
  v13 = sub_257ECDA20();
  v14 = sub_257ECFBD0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315650;
    v17 = sub_257ECFEC0();
    v19 = sub_257BF1FC8(v17, v18, &v24);

    *(v15 + 4) = v19;
    *(v15 + 12) = 1024;
    v20 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded;
    swift_beginAccess();
    LODWORD(v20) = v12[v20];

    *(v15 + 14) = v20;
    *(v15 + 18) = 1024;
    v21 = v12[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed];

    *(v15 + 20) = v21;
    _os_log_impl(&dword_257BAC000, v13, v14, "location: %s, expanded: %{BOOL}d, dimmed: %{BOOL}d", v15, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x259C74820](v16, -1, -1);
    MEMORY[0x259C74820](v15, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
  return [objc_allocWithZone(MEMORY[0x277D75B90]) initWithView_];
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t objectdestroyTm_7()
{

  return swift_deallocObject();
}

void sub_257DBC920()
{
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isGlowing) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_glowSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_detectionModeSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_clickInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_expandsWithClickInteractionOnly) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___segmentedControl) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton____lazy_storage___internalButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed) = 0;
  sub_257ED0410();
  __break(1u);
}

uint64_t sub_257DBCA00(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *&v2[OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_clickInteraction];
  if (v8)
  {
    sub_257BD2C2C(0, &qword_27F8F62E0);
    v9 = v8;
    v10 = a1;
    v11 = sub_257ECFF50();

    if (v11)
    {
      sub_257ECD350();
      v12 = v2;
      v13 = sub_257ECDA20();
      v14 = sub_257ECFBD0();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 67109376;
        v16 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded;
        swift_beginAccess();
        *(v15 + 4) = *(&v12->isa + v16);
        *(v15 + 8) = 1024;
        *(v15 + 10) = *(&v12->isa + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed);

        _os_log_impl(&dword_257BAC000, v13, v14, "expanded: %{BOOL}d, dimmed: %{BOOL}d", v15, 0xEu);
        MEMORY[0x259C74820](v15, -1, -1);
      }

      else
      {

        v13 = v12;
      }

      (*(v5 + 8))(v7, v4);
      if (*(&v12->isa + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed) != 1 || (v17 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded, swift_beginAccess(), *(&v12->isa + v17) == 1))
      {
        v18 = v12 + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v19 = *(v18 + 1);
          ObjectType = swift_getObjectType();
          (*(v19 + 8))(v12, &off_286910C18, ObjectType, v19);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  return 0;
}

uint64_t sub_257DBCC98(char a1)
{
  v3 = sub_257ECDA30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD350();
  v7 = v1;
  v8 = sub_257ECDA20();
  v9 = sub_257ECFBD0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109632;
    *(v10 + 4) = a1 & 1;
    *(v10 + 8) = 1024;
    v11 = OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isExpanded;
    swift_beginAccess();
    *(v10 + 10) = *(&v7->isa + v11);
    *(v10 + 14) = 1024;
    *(v10 + 16) = *(&v7->isa + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_isDimmed);

    _os_log_impl(&dword_257BAC000, v8, v9, "was cancelled: %{BOOL}d, expanded: %{BOOL}d, dimmed: %{BOOL}d", v10, 0x14u);
    MEMORY[0x259C74820](v10, -1, -1);
  }

  else
  {

    v8 = v7;
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_257DBCE70(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a2;
  v4 = sub_257ECDA30();
  *(v2 + 104) = v4;
  *(v2 + 112) = *(v4 - 8);
  *(v2 + 120) = swift_task_alloc();
  v5 = sub_257ECF120();
  *(v2 + 128) = v5;
  *(v2 + 136) = *(v5 - 8);
  *(v2 + 144) = swift_task_alloc();
  v6 = sub_257ECF190();
  *(v2 + 152) = v6;
  *(v2 + 160) = *(v6 - 8);
  *(v2 + 168) = swift_task_alloc();
  v7 = sub_257ECF1B0();
  *(v2 + 176) = v7;
  *(v2 + 184) = *(v7 - 8);
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = type metadata accessor for MAGOutputEvent.EventType(0);
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = type metadata accessor for MAGOutputEvent(0);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = *a1;
  *(v2 + 304) = *(a1 + 16);
  sub_257ECF900();
  *(v2 + 256) = sub_257ECF8F0();
  v9 = sub_257ECF8B0();
  *(v2 + 264) = v9;
  *(v2 + 272) = v8;

  return MEMORY[0x2822009F8](sub_257DBD0F8, v9, v8);
}

uint64_t sub_257DBD0F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 280) = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (*(v0 + 304))
    {
      if (*(v0 + 304) == 1)
      {
        v3 = *(v0 + 240);
        v4 = swift_task_alloc();
        *(v0 + 288) = v4;
        *v4 = v0;
        v4[1] = sub_257DBD6B0;

        return sub_257E87B28(v3);
      }

      v15 = *(v0 + 248);
      v16 = *(v0 + 240);

      if (v16 | v15)
      {
        [*&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentModeOutlineLayer] removeFromSuperlayer];
        v17 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDialogView];
        [v17 setHidden_];
      }

      else
      {
        v19 = *(v0 + 224);
        v18 = *(v0 + 232);
        v20 = *(v0 + 216);
        [*&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDialogView] setHidden_];
        swift_storeEnumTagMultiPayload();
        sub_257ECCCE0();
        sub_257C15EC0(v20, v18 + v19[5]);
        *(v18 + v19[6]) = 0;
        *(v18 + v19[7]) = 0;
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v22 = *(v0 + 224);
        v21 = *(v0 + 232);
        v23 = *(v0 + 216);
        v24 = *(v0 + 192);
        v25 = *(v0 + 184);
        v38 = *(v0 + 176);
        v31 = *(v0 + 200);
        v32 = *(v0 + 168);
        v36 = *(v0 + 160);
        v37 = *(v0 + 152);
        v35 = *(v0 + 136);
        v33 = *(v0 + 144);
        v34 = *(v0 + 128);
        v26 = qword_281548348;
        sub_257ECC3F0();
        sub_257C15F24(v23, type metadata accessor for MAGOutputEvent.EventType);
        *(v21 + *(v22 + 32)) = v26;
        sub_257CBBC80(v21);
        sub_257C15F24(v21, type metadata accessor for MAGOutputEvent);
        sub_257BD52CC();
        v27 = sub_257ECFD30();
        sub_257ECF1A0();
        sub_257ECF220();
        v28 = *(v25 + 8);
        v28(v24, v38);
        *(v0 + 48) = sub_257DBDA8C;
        *(v0 + 56) = 0;
        *(v0 + 16) = MEMORY[0x277D85DD0];
        *(v0 + 24) = 1107296256;
        *(v0 + 32) = sub_257D231C0;
        *(v0 + 40) = &block_descriptor_47;
        v29 = _Block_copy((v0 + 16));
        sub_257ECF150();
        *(v0 + 88) = MEMORY[0x277D84F90];
        sub_257BD5668();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
        sub_257BD56C0();
        sub_257ED0180();
        MEMORY[0x259C727E0](v31, v32, v33, v29);
        _Block_release(v29);

        (*(v35 + 8))(v33, v34);
        (*(v36 + 8))(v32, v37);
        v28(v31, v38);
      }
    }

    else
    {
      v6 = *(v0 + 248);
      v7 = *(v0 + 232);
      v8 = *(v0 + 240);
      v9 = *(v0 + 216);
      v10 = *(v0 + 224);

      *v9 = v8;
      v9[1] = v6;
      swift_storeEnumTagMultiPayload();
      sub_257ECCCE0();
      sub_257C15EC0(v9, v7 + v10[5]);
      *(v7 + v10[6]) = 0;
      *(v7 + v10[7]) = 0;
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v12 = *(v0 + 224);
      v11 = *(v0 + 232);
      v13 = *(v0 + 216);
      v14 = qword_281548348;
      sub_257ECC3F0();
      sub_257C15F24(v13, type metadata accessor for MAGOutputEvent.EventType);
      *(v11 + *(v12 + 32)) = v14;
      sub_257CBBC80(v11);
      sub_257C15F24(v11, type metadata accessor for MAGOutputEvent);
    }
  }

  else
  {
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_257DBD6B0()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 272);
  v4 = *(v2 + 264);
  if (v0)
  {
    v5 = sub_257DBD8C4;
  }

  else
  {
    v5 = sub_257DBD7EC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_257DBD7EC()
{
  v1 = *(v0 + 280);
  sub_257C5D470(*(v0 + 240), *(v0 + 248), 1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_257DBD8C4()
{

  sub_257ECD380();
  v1 = sub_257ECDA20();
  v2 = sub_257ECFBE0();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[37];
  v5 = v0[35];
  v7 = v0[30];
  v6 = v0[31];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];
  if (v3)
  {
    v17 = v0[37];
    v11 = v0[13];
    v12 = v0[15];
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_257BAC000, v1, v2, "Unable to update document CALayer", v13, 2u);
    v14 = v13;
    v8 = v12;
    v10 = v11;
    MEMORY[0x259C74820](v14, -1, -1);
    sub_257C5D470(v7, v6, 1);

    v1 = v5;
  }

  else
  {

    sub_257C5D470(v7, v6, 1);
  }

  (*(v9 + 8))(v8, v10);

  v15 = v0[1];

  return v15();
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

CGColorRef sub_257DBDAAC()
{
  result = CGColorCreateGenericRGB(0.415686275, 0.415686275, 0.415686275, 1.0);
  qword_27F8F9440 = result;
  return result;
}

CGColorRef sub_257DBDAE0()
{
  result = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  qword_27F8F9448 = result;
  return result;
}

void sub_257DBDB38(uint64_t a1, SEL *a2, void *a3)
{
  v4 = [objc_opt_self() *a2];
  v5 = [v4 CGColor];

  *a3 = v5;
}

CGColorRef sub_257DBDBA4()
{
  result = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 0.68);
  qword_27F8F9460 = result;
  return result;
}

void sub_257DBDBD8(double a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = OBJC_IVAR____TtC16MagnifierSupportP33_F38CBD44072C53D5EE09301D90112CC715DragHandleLayer__scale;
  *&v1[OBJC_IVAR____TtC16MagnifierSupportP33_F38CBD44072C53D5EE09301D90112CC715DragHandleLayer__scale] = a1;
  [v1 setLineWidth_];
  v8.origin.x = -12.5;
  v8.origin.y = -12.5;
  v8.size.width = 25.0;
  v8.size.height = 25.0;
  v3 = CGPathCreateWithEllipseInRect(v8, 0);
  CGAffineTransformMakeScale(&v6, 1.0 / *&v1[v2], 1.0 / *&v1[v2]);
  v4 = objc_opt_self();
  [v4 begin];
  [v4 setDisableActions_];
  v5 = MEMORY[0x259C73760](v3, &v6);
  [v1 setPath_];

  [v4 commit];
}

id sub_257DBDCF8()
{
  *&v0[OBJC_IVAR____TtC16MagnifierSupportP33_F38CBD44072C53D5EE09301D90112CC715DragHandleLayer__scale] = 0x3FF0000000000000;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DragHandleLayer();
  v1 = objc_msgSendSuper2(&v4, sel_init);
  [v1 setMasksToBounds_];
  if (qword_27F8F4690 != -1)
  {
    swift_once();
  }

  [v1 setStrokeColor_];
  if (qword_27F8F4688 != -1)
  {
    swift_once();
  }

  [v1 setFillColor_];
  [v1 setLineWidth_];
  LODWORD(v2) = 1.0;
  [v1 setOpacity_];
  sub_257DBDBD8(1.0);

  return v1;
}

id sub_257DBDFF4(id result)
{
  if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_ignorePublishedEnvChanges))
  {
    return result;
  }

  v2 = result;
  v3 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer;
  [*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer) bounds];
  Width = CGRectGetWidth(v18);
  [*(v1 + v3) bounds];
  Height = CGRectGetHeight(v19);
  if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoPreviewLayer))
  {
    v6 = Height;
    v27.origin.x = 0.0;
    v27.origin.y = 0.0;
    v27.size.width = Width;
    v27.size.height = Height;
    if (CGRectEqualToRect(*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__lastPerspectiveTransformLayerFrame), v27) && ([*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__pictureFrameLayer) frame], v28.origin.x = 0.0, v28.origin.y = 0.0, v28.size.width = Width, v28.size.height = v6, CGRectEqualToRect(v20, v28)) && (objc_msgSend(*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__filterLayer), sel_frame), v29.origin.x = 0.0, v29.origin.y = 0.0, v29.size.width = Width, v29.size.height = v6, CGRectEqualToRect(v21, v29)) && (objc_msgSend(*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__capturedImageLayer), sel_frame), v30.origin.x = 0.0, v30.origin.y = 0.0, v30.size.width = Width, v30.size.height = v6, CGRectEqualToRect(v22, v30)) && (objc_msgSend(*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer), sel_frame), v31.origin.x = 0.0, v31.origin.y = 0.0, v31.size.width = Width, v31.size.height = v6, CGRectEqualToRect(v23, v31)) && (objc_msgSend(*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayer), sel_frame), v32.origin.x = 0.0, v32.origin.y = 0.0, v32.size.width = Width, v32.size.height = v6, CGRectEqualToRect(v24, v32)) && (v7 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionLayer, objc_msgSend(*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionLayer), sel_frame), v33.origin.x = 0.0, v33.origin.y = 0.0, v33.size.width = Width, v33.size.height = v6, CGRectEqualToRect(v25, v33)))
    {
      [*(v1 + v7) frame];
      v34.origin.x = 0.0;
      v34.origin.y = 0.0;
      v34.size.width = Width;
      v34.size.height = v6;
      v8 = !CGRectEqualToRect(v26, v34);
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  result = [*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer) bounds];
  v11 = (v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__idealPerspectiveTransformSize);
  if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__idealPerspectiveTransformSize + 16) == 1)
  {
    result = sub_257DC484C(v9, v10);
    v13 = v12;
    v15 = v14;
    if (v8)
    {
      goto LABEL_20;
    }

LABEL_18:
    if (vabdd_f64(*&v13, *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__lastKnownIdealSize)) + vabdd_f64(*&v15, *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__lastKnownIdealSize + 8)) <= 0.001 && (v2 & 1) == 0)
    {
      return result;
    }

    goto LABEL_20;
  }

  v13 = *v11;
  v15 = v11[1];
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_20:
  v16 = objc_opt_self();
  [v16 begin];
  [v16 setDisableActions_];
  sub_257DBE2F0(v1, v13, v15, 0);

  return [v16 commit];
}

uint64_t sub_257DBE2F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = objc_opt_self();
  [v8 begin];
  [v8 setDisableActions_];
  v9 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__affineTransformLayer;
  v10 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__affineTransformLayer);
  v42 = 0x3FF0000000000000uLL;
  *&v43 = 0;
  *(&v43 + 1) = 0x3FF0000000000000;
  v44 = 0uLL;
  [v10 setAffineTransform_];
  v11 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__perspectiveTransformLayer;
  [*(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__perspectiveTransformLayer) setAnchorPoint_];
  v12 = *(a1 + v11);
  v13 = *(MEMORY[0x277CD9DE8] + 80);
  v46 = *(MEMORY[0x277CD9DE8] + 64);
  v47 = v13;
  v14 = *(MEMORY[0x277CD9DE8] + 112);
  v48 = *(MEMORY[0x277CD9DE8] + 96);
  v49 = v14;
  v15 = *(MEMORY[0x277CD9DE8] + 16);
  v42 = *MEMORY[0x277CD9DE8];
  v43 = v15;
  v16 = *(MEMORY[0x277CD9DE8] + 48);
  v44 = *(MEMORY[0x277CD9DE8] + 32);
  v45 = v16;
  [v12 setTransform_];
  [v8 commit];
  v17 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer;
  [*(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer) bounds];
  Width = CGRectGetWidth(v50);
  [*(a1 + v17) bounds];
  Height = CGRectGetHeight(v51);
  [*(a1 + v9) setFrame_];
  [*(a1 + v11) setFrame_];
  v20 = (a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__lastPerspectiveTransformLayerFrame);
  *v20 = 0.0;
  v20[1] = 0.0;
  v20[2] = Width;
  v20[3] = Height;
  v21 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__pictureFrameLayer;
  [*(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__pictureFrameLayer) setFrame_];
  [*(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__filterLayer) setFrame_];
  [*(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__capturedImageLayer) setFrame_];
  v22 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer;
  [*(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer) setFrame_];
  v23 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoPreviewLayer);
  if (v23)
  {
    [v23 setFrame_];
  }

  v24 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_portalLayer);
  if (v24)
  {
    [v24 setFrame_];
  }

  [*(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayer) setFrame_];
  [*(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionLayer) setFrame_];
  [*(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleOutlineLayer) setFrame_];
  if ((a4 & 1) == 0)
  {
    v25 = (a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__lastKnownIdealSize);
    *v25 = *&a2;
    v25[1] = *&a3;
    [*(a1 + v22) frame];
    v27 = v26;
    [*(a1 + v22) frame];
    v29 = v27 + v28 * 0.5 - *&a2 * 0.5;
    [*(a1 + v22) frame];
    v31 = v30;
    [*(a1 + v22) frame];
    v33 = v31 + v32 * 0.5 - *&a3 * 0.5;
    if (*&a2 > *&a3)
    {
      v34 = *&a2;
    }

    else
    {
      v34 = *&a3;
    }

    v35 = v34 * 0.01;
    v36 = v29;
    v37 = a2;
    v38 = a3;
    v39 = CGPathCreateWithRoundedRect(*(&v33 - 1), v35, v35, 0);
    [*(a1 + v21) setPath_];
    v40 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoMaskLayer;
    [*(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoMaskLayer) setPath_];
    [*(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__layerToMask) setMask_];
    [*(a1 + v9) setPath_];
  }

  sub_257DC2494();
  sub_257DC3134();
  sub_257DBF744();
  return sub_257DC2798();
}

id sub_257DBE70C(__int128 *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform];
  v5 = *MEMORY[0x277CBF2C0];
  v6 = *(MEMORY[0x277CBF2C0] + 8);
  v7 = *(MEMORY[0x277CBF2C0] + 16);
  v8 = *(MEMORY[0x277CBF2C0] + 24);
  v9 = *(MEMORY[0x277CBF2C0] + 32);
  v10 = *(MEMORY[0x277CBF2C0] + 40);
  *v4 = *MEMORY[0x277CBF2C0];
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v9;
  v4[5] = v10;
  v11 = &v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform];
  *v11 = v5;
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v9;
  v11[5] = v10;
  v12 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer;
  *&v2[v12] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v13 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__capturedImageLayer;
  *&v2[v13] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v14 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__affineTransformLayer;
  *&v2[v14] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v15 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoMaskLayer;
  *&v2[v15] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v16 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__perspectiveTransformLayer;
  *&v2[v16] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v17 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__layerToMask;
  *&v2[v17] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v18 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer;
  *&v2[v18] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v19 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__filterLayer;
  *&v2[v19] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v20 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__pictureFrameLayer;
  *&v2[v20] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v21 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayer;
  *&v2[v21] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v22 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionLayer;
  *&v2[v22] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v23 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleOutlineLayer;
  *&v2[v23] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v24 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionPath;
  v47.origin.x = 0.0;
  v47.origin.y = 0.0;
  v47.size.width = 0.0;
  v47.size.height = 0.0;
  *&v2[v24] = CGPathCreateWithRect(v47, 0);
  v25 = &v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__lastKnownIdealSize];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__idealPerspectiveTransformSize];
  *v26 = 0;
  *(v26 + 1) = 0;
  v26[16] = 1;
  v27 = &v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__lastPerspectiveTransformLayerFrame];
  *v27 = 0u;
  v27[1] = 0u;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_portalLayer] = 0;
  v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_usingPortalLayer] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_subscribers] = MEMORY[0x277D84FA0];
  *&v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentDragHandle] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_previewLayerScaleRatio] = 0x3FF0000000000000;
  v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_ignorePublishedEnvChanges] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleIndex] = -1;
  v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleSelection] = 0;
  v28 = &v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleStartPosition];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingTextSelectionStartPosition];
  *v29 = 0;
  v29[1] = 0;
  v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingTextSelection] = 0;
  v30 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_257EDBE40;
  v32 = type metadata accessor for DragHandleLayer();
  v42 = a1[1];
  v43 = *a1;
  v41 = a1[2];
  *(v31 + 32) = [objc_allocWithZone(v32) init];
  *(v31 + 40) = [objc_allocWithZone(v32) init];
  *(v31 + 48) = [objc_allocWithZone(v32) init];
  v33 = [objc_allocWithZone(v32) init];
  *&v2[v30] = v31;
  *(v31 + 56) = v33;
  v34 = &v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions];
  *(v34 + 8) = xmmword_257EDC820;
  *v34 = &unk_286905C80;
  v45 = &unk_286905C80;
  v46 = xmmword_257EDC820;
  *v34 = sub_257C38808();

  v35 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentCapturedImage;
  v36 = type metadata accessor for CapturedImage();
  (*(*(v36 - 8) + 56))(&v2[v35], 1, 1, v36);
  v37 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_accessibilityParentView;
  *&v2[v37] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoPreviewLayer] = 0;
  v38 = &v2[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_environment];
  *v38 = v43;
  v38[1] = v42;
  v38[2] = v41;
  v44.receiver = v2;
  v44.super_class = type metadata accessor for LiveCameraLayer();
  v39 = objc_msgSendSuper2(&v44, sel_init);
  sub_257DBEB8C();

  return v39;
}

uint64_t sub_257DBEB8C()
{
  [v0 setMasksToBounds_];
  v1 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer;
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer];
  [v2 removeFromSuperlayer];
  [v0 addSublayer_];
  [v0 bounds];
  [v2 setFrame_];
  [v2 setMasksToBounds_];
  v3 = *MEMORY[0x277CDA720];
  [v2 setContentsGravity_];

  v4 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__affineTransformLayer;
  v80 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__affineTransformLayer;
  v5 = *&v0[v1];
  v6 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__affineTransformLayer];
  v7 = v5;
  [v6 removeFromSuperlayer];
  [v7 addSublayer_];
  [v7 &selRef__accessibilitySupplementaryFooterViews];
  [v6 setFrame_];
  [v6 setMasksToBounds_];
  [v6 setContentsGravity_];

  v8 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__layerToMask;
  v9 = *&v0[v4];
  v10 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__layerToMask];
  v11 = v9;
  [v10 removeFromSuperlayer];
  [v11 addSublayer_];
  [v11 bounds];
  [v10 setFrame_];
  [v10 setMasksToBounds_];
  [v10 setContentsGravity_];

  v82 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__perspectiveTransformLayer;
  v12 = *&v0[v8];
  v13 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__perspectiveTransformLayer];
  v14 = v12;
  [v13 removeFromSuperlayer];
  [v14 addSublayer_];
  [v14 bounds];
  [v13 setFrame_];
  [v13 setMasksToBounds_];
  [v13 setContentsGravity_];

  v79 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__pictureFrameLayer;
  v15 = *&v0[v80];
  v16 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__pictureFrameLayer];
  v17 = v15;
  [v16 &selRef_setSimdPosition_];
  [v17 addSublayer_];
  [v17 bounds];
  [v16 setFrame_];
  [v16 setMasksToBounds_];
  [v16 setContentsGravity_];

  v18 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayer;
  v19 = *&v0[v80];
  v20 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayer];
  v21 = v19;
  [v20 removeFromSuperlayer];
  [v21 addSublayer_];
  [v21 bounds];
  [v20 setFrame_];
  [v20 setMasksToBounds_];
  [v20 setContentsGravity_];

  v22 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionLayer;
  v23 = *&v0[v18];
  v24 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionLayer];
  v25 = v23;
  [v24 removeFromSuperlayer];
  [v25 addSublayer_];
  [v25 bounds];
  [v24 setFrame_];
  [v24 setMasksToBounds_];
  [v24 setContentsGravity_];

  v78 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleOutlineLayer;
  v81 = v22;
  v26 = *&v0[v22];
  v27 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleOutlineLayer];
  v28 = v26;
  [v27 removeFromSuperlayer];
  [v28 addSublayer_];
  [v28 bounds];
  [v27 setFrame_];
  [v27 setMasksToBounds_];
  [v27 setContentsGravity_];

  v29 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__filterLayer;
  v30 = *&v0[v82];
  v31 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__filterLayer];
  v32 = v30;
  [v31 removeFromSuperlayer];
  [v32 addSublayer_];
  [v32 bounds];
  [v31 setFrame_];
  [v31 setMasksToBounds_];
  [v31 setContentsGravity_];

  v76 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer;
  v33 = *&v0[v29];
  v34 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer];
  v35 = v33;
  [v34 removeFromSuperlayer];
  [v35 addSublayer_];
  [v35 bounds];
  [v34 &selRef_mainMixerNode];
  [v34 setMasksToBounds_];
  [v34 setContentsGravity_];

  v36 = *&v0[v29];
  v37 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__capturedImageLayer];
  v38 = v36;
  [v37 removeFromSuperlayer];
  v39 = &selRef_imageByApplyingSymbolConfiguration_;
  [v38 addSublayer_];
  [v38 bounds];
  [v37 &selRef_mainMixerNode];
  [v37 setMasksToBounds_];
  v83 = v3;
  [v37 setContentsGravity_];

  v40 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayers];
  if (v40 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
  {

    v42 = v39;
    if (!i)
    {
      break;
    }

    v43 = 0;
    v39 = (v40 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x259C72E20](v43, v40);
      }

      else
      {
        if (v43 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v44 = *(v40 + 8 * v43 + 32);
      }

      v45 = v44;
      v46 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      [*&v0[v18] v42 + 1656];

      ++v43;
      if (v46 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_12:

  v47 = qword_27F8F4698;
  v48 = *&v0[v78];
  if (v47 != -1)
  {
    swift_once();
  }

  [v48 setStrokeColor_];

  v49 = *&v0[v78];
  v50 = objc_opt_self();
  v51 = v49;
  v52 = [v50 clearColor];
  v53 = [v52 CGColor];

  [v51 setFillColor_];
  v54 = *&v0[v78];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_257ED9BE0;
  v56 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v57 = v54;
  *(v55 + 32) = [v56 initWithDouble_];
  *(v55 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  sub_257BD2C2C(0, &qword_281543DC0);
  v58 = sub_257ECF7F0();

  [v57 setLineDashPattern_];

  [*&v0[v78] setLineWidth_];
  [*&v0[v81] setLineWidth_];
  v59 = qword_27F8F46A0;
  v60 = *&v0[v81];
  if (v59 != -1)
  {
    swift_once();
  }

  [v60 setStrokeColor_];

  v61 = qword_27F8F46A8;
  v62 = *&v0[v81];
  if (v61 != -1)
  {
    swift_once();
  }

  [v62 setFillColor_];

  [*&v0[v79] setLineWidth_];
  v63 = *&v0[v79];
  v64 = sub_257ECF4C0();
  [v63 setCompositingFilter_];

  v65 = *&v0[v79];
  v66 = [v50 blackColor];
  v67 = [v66 colorWithAlphaComponent_];

  v68 = [v67 CGColor];
  [v65 setStrokeColor_];

  v69 = *&v0[v79];
  v70 = [v50 clearColor];
  v71 = [v70 CGColor];

  [v69 setFillColor_];
  memset(v84, 0, sizeof(v84));
  sub_257DC422C(v84);
  sub_257DBF744();
  sub_257DC3D9C();
  sub_257DC45FC();
  v72 = sub_257DC3950();
  if (v72)
  {
    v73 = v72;
    v74 = *&v0[v77];
    [v73 removeFromSuperlayer];
    [v74 v42 + 1656];
    [v74 bounds];
    [v73 setFrame_];
    [v73 setMasksToBounds_];
    [v73 setContentsGravity_];
  }

  return sub_257DC1A98();
}

id sub_257DBF744()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD60();

  [*(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer) bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer;
  [*(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer) bounds];
  if (LOBYTE(v136.m11) != 3)
  {
    v44 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_ignorePublishedEnvChanges;
    *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_ignorePublishedEnvChanges) = 1;
    swift_getKeyPath();
    swift_getKeyPath();
    v136.m11 = 0.0;
    sub_257ECC3F0();
    sub_257ECDD70();
    *(v0 + v44) = 0;
    v45 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__perspectiveTransformLayer;
    [*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__perspectiveTransformLayer) setAnchorPoint_];
    v46 = *(v1 + v45);
    v47 = *(MEMORY[0x277CD9DE8] + 80);
    *&v136.m31 = *(MEMORY[0x277CD9DE8] + 64);
    *&v136.m33 = v47;
    v48 = *(MEMORY[0x277CD9DE8] + 112);
    *&v136.m41 = *(MEMORY[0x277CD9DE8] + 96);
    *&v136.m43 = v48;
    v49 = *(MEMORY[0x277CD9DE8] + 16);
    *&v136.m11 = *MEMORY[0x277CD9DE8];
    *&v136.m13 = v49;
    v50 = *(MEMORY[0x277CD9DE8] + 48);
    *&v136.m21 = *(MEMORY[0x277CD9DE8] + 32);
    *&v136.m23 = v50;
    result = [v46 setTransform_];
    v52 = v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__idealPerspectiveTransformSize;
    *v52 = 0;
    *(v52 + 8) = 0;
    *(v52 + 16) = 1;
    return result;
  }

  v13 = 0.0;
  sub_257DC484C(v11, v12);
  v15 = v14;
  v17 = v16;
  v137.origin.x = v3;
  v137.origin.y = v5;
  v137.size.width = v7;
  v137.size.height = v9;
  Width = CGRectGetWidth(v137);
  v118 = v5;
  v119 = v3;
  v138.origin.x = v3;
  v138.origin.y = v5;
  v117 = v7;
  v138.size.width = v7;
  v138.size.height = v9;
  Height = CGRectGetHeight(v138);
  if (Width >= v15)
  {
    v20 = Width;
  }

  else
  {
    v20 = v15;
  }

  v126 = v20;
  if (Width >= v15)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = 0.0 - (v15 - Width) * 0.5;
  }

  v22 = 0.0 - (v17 - Height) * 0.5;
  v23 = Height < v17;
  if (Height < v17)
  {
    Height = v17;
  }

  v115 = Height;
  if (v23)
  {
    v13 = v22;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD60();

  m11 = v136.m11;
  [*(v0 + v10) frame];
  v26 = v25;
  [*(v0 + v10) frame];
  v128 = v15;
  v28 = v26 + v27 * 0.5 - v15 * 0.5;
  [*(v0 + v10) frame];
  v30 = v29;
  [*(v0 + v10) frame];
  v127 = v17;
  v32 = v30 + v31 * 0.5 - v17 * 0.5;
  v116 = v9;
  v120 = v13;
  v121 = v21;
  if (!*&v136.m11)
  {
    v53 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions);
    v55 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions + 8);
    v54 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions + 16);
    *&v136.m11 = v53;
    v122 = v55;
    v124 = v54;
    v136.m12 = v55;
    v136.m13 = v54;

    v56 = sub_257C389F8();
    v57 = *(v56 + 16);
    if (v57)
    {
      v58 = (v56 + 40);
      v59 = MEMORY[0x277D84F90];
      do
      {
        v60 = *(v58 - 1);
        v131 = *v58;
        v143.origin.x = v28;
        v143.origin.y = v32;
        v143.size.width = v128;
        v143.size.height = v127;
        MinX = CGRectGetMinX(v143);
        v144.origin.x = v28;
        v144.origin.y = v32;
        v144.size.width = v128;
        v144.size.height = v127;
        v62 = CGRectGetWidth(v144);
        v145.origin.x = v28;
        v145.origin.y = v32;
        v145.size.width = v128;
        v145.size.height = v127;
        MinY = CGRectGetMinY(v145);
        v146.origin.x = v28;
        v146.origin.y = v32;
        v146.size.width = v128;
        v146.size.height = v127;
        v64 = CGRectGetHeight(v146);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_257BFE188(0, *(v59 + 2) + 1, 1, v59);
        }

        v66 = *(v59 + 2);
        v65 = *(v59 + 3);
        if (v66 >= v65 >> 1)
        {
          v59 = sub_257BFE188((v65 > 1), v66 + 1, 1, v59);
        }

        *(v59 + 2) = v66 + 1;
        v67 = &v59[16 * v66];
        *(v67 + 4) = (v60 - MinX) / v62;
        *(v67 + 5) = (v131 - MinY) / v64;
        v58 += 2;
        --v57;
      }

      while (v57);
    }

    else
    {
      v59 = MEMORY[0x277D84F90];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *&v136.m11 = v59;
    sub_257ECC3F0();
    sub_257ECDD70();
    v79 = v122;
    v78 = v124;
    goto LABEL_38;
  }

  v33 = *(*&v136.m11 + 16);
  if (v33)
  {
    v34 = (*&v136.m11 + 40);
    v35 = MEMORY[0x277D84F90];
    do
    {
      v36 = *(v34 - 1);
      v130 = *v34;
      v139.origin.x = v28;
      v139.origin.y = v32;
      v139.size.width = v128;
      v139.size.height = v127;
      v37 = CGRectGetWidth(v139);
      v140.origin.x = v28;
      v140.origin.y = v32;
      v140.size.width = v128;
      v140.size.height = v127;
      v38 = CGRectGetMinX(v140);
      v141.origin.x = v28;
      v141.origin.y = v32;
      v141.size.width = v128;
      v141.size.height = v127;
      v39 = CGRectGetHeight(v141);
      v142.origin.x = v28;
      v142.origin.y = v32;
      v142.size.width = v128;
      v142.size.height = v127;
      v40 = CGRectGetMinY(v142);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_257BFE188(0, *(v35 + 2) + 1, 1, v35);
      }

      v42 = *(v35 + 2);
      v41 = *(v35 + 3);
      if (v42 >= v41 >> 1)
      {
        v35 = sub_257BFE188((v41 > 1), v42 + 1, 1, v35);
      }

      *(v35 + 2) = v42 + 1;
      v43 = &v35[16 * v42];
      *(v43 + 4) = v36 * v37 + v38;
      *(v43 + 5) = v130 * v39 + v40;
      v34 += 2;
      --v33;
    }

    while (v33);
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
  }

  v68 = *(v35 + 2);
  if (!v68)
  {
    __break(1u);
    goto LABEL_51;
  }

  if (v68 == 1)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v68 < 3)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v68 == 3)
  {
LABEL_53:
    __break(1u);
    return result;
  }

  v69 = *(v35 + 4);
  v70 = *(v35 + 5);
  v71 = *(v35 + 6);
  v72 = *(v35 + 7);
  v74 = *(v35 + 8);
  v73 = *(v35 + 9);
  v75 = *(v35 + 10);
  v76 = *(v35 + 11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59B8);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_257EDBE50;
  *(v77 + 32) = v69;
  *(v77 + 40) = v70;
  *(v77 + 48) = 0;
  *(v77 + 56) = v71;
  *(v77 + 64) = v72;
  *(v77 + 72) = 1;
  *(v77 + 80) = v74;
  *(v77 + 88) = v73;
  *(v77 + 96) = 2;
  *(v77 + 104) = v75;
  *(v77 + 112) = v76;
  *(v77 + 120) = 3;
  *&v136.m11 = v77;
  *&v136.m12 = xmmword_257EDC820;
  v53 = sub_257C38808();

  v78 = 135.0;
  v79 = 45.0;
LABEL_38:
  *&v136.m11 = v53;
  v123 = v79;
  v125 = v78;
  v136.m12 = v79;
  v136.m13 = v78;
  sub_257C38AC4();
  v81 = v80;
  v132 = v82;
  v84 = v83;
  v86 = v85;
  v147.origin.x = v121;
  v147.origin.y = v120;
  v147.size.width = v126;
  v87 = v115;
  v147.size.height = v115;
  v88 = CGRectGetWidth(v147);
  v148.origin.x = v121;
  v148.origin.y = v120;
  v148.size.width = v126;
  v148.size.height = v115;
  v129 = v88 / CGRectGetHeight(v148);
  v149.origin.x = v81;
  v149.origin.y = v132;
  v149.size.width = v84;
  v149.size.height = v86;
  v89 = CGRectGetWidth(v149);
  v150.origin.x = v81;
  v150.origin.y = v132;
  v150.size.width = v84;
  v150.size.height = v86;
  v90 = v89 / CGRectGetHeight(v150);
  if (v90 >= v129)
  {
    v153.origin.x = v121;
    v153.origin.y = v120;
    v153.size.width = v126;
    v153.size.height = v115;
    v100 = CGRectGetWidth(v153) / v90;
    v154.origin.x = v121;
    v154.origin.y = v120;
    v154.size.width = v126;
    v154.size.height = v115;
    v101 = CGRectGetHeight(v154) - v100;
    v94 = v118;
    v93 = v119;
    v102 = v116;
    v95 = v117;
    v103 = v120;
    if (v101 >= 0.0)
    {
      v103 = v120 + v101 * 0.5;
      v87 = v100;
    }

    v96 = v126;
    v98 = v123;
    v97 = v125;
    v99 = v121;
  }

  else
  {
    v151.origin.x = v121;
    v151.origin.y = v120;
    v151.size.width = v126;
    v151.size.height = v115;
    v91 = v90 * CGRectGetHeight(v151);
    v152.origin.x = v121;
    v152.origin.y = v120;
    v152.size.width = v126;
    v152.size.height = v115;
    v92 = CGRectGetWidth(v152) - v91;
    v94 = v118;
    v93 = v119;
    v95 = v117;
    if (v92 >= 0.0)
    {
      v96 = v91;
      v99 = v121 + v92 * 0.5;
      v98 = v123;
      v97 = v125;
    }

    else
    {
      v96 = v126;
      v98 = v123;
      v97 = v125;
      v99 = v121;
    }

    v103 = v120;
    v102 = v116;
  }

  v104 = v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__idealPerspectiveTransformSize;
  *v104 = v96;
  *(v104 + 8) = v87;
  *(v104 + 16) = 0;
  sub_257C38660(&v136, v99, v103, v96, v87);
  v105 = v136.m11;
  v106 = *&v136.m12;
  *&v136.m11 = v53;
  v136.m12 = v98;
  v136.m13 = v97;
  a.m11 = v105;
  *&a.m12 = v106;
  sub_257C3A284(&v135);

  v107 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__perspectiveTransformLayer;
  [*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__perspectiveTransformLayer) setAnchorPoint_];
  v155.origin.x = v93;
  v155.origin.y = v94;
  v155.size.width = v95;
  v155.size.height = v102;
  v108 = CGRectGetWidth(v155) * -0.5;
  v156.origin.x = v93;
  v156.origin.y = v94;
  v156.size.width = v95;
  v156.size.height = v102;
  v109 = CGRectGetHeight(v156);
  v110 = *(MEMORY[0x277CD9DE8] + 80);
  *&v136.m31 = *(MEMORY[0x277CD9DE8] + 64);
  *&v136.m33 = v110;
  v111 = *(MEMORY[0x277CD9DE8] + 112);
  *&v136.m41 = *(MEMORY[0x277CD9DE8] + 96);
  *&v136.m43 = v111;
  v112 = *(MEMORY[0x277CD9DE8] + 16);
  *&v136.m11 = *MEMORY[0x277CD9DE8];
  *&v136.m13 = v112;
  v113 = *(MEMORY[0x277CD9DE8] + 48);
  *&v136.m21 = *(MEMORY[0x277CD9DE8] + 32);
  *&v136.m23 = v113;
  CATransform3DTranslate(&b, &v136, v108, v109 * -0.5, 0.0);
  a = v135;
  CATransform3DConcat(&v136, &a, &b);
  if (m11 == 0.0)
  {
    [*(v1 + v107) transform];
    if (CATransform3DIsIdentity(&a))
    {
      sub_257DC2CE0(1, 1.0, 0.0, 0.0);
      swift_getKeyPath();
      swift_getKeyPath();
      a.m11 = 0.0;
      a.m12 = 0.0;
      sub_257ECC3F0();
      sub_257ECDD70();
      sub_257DC2494();
      sub_257DC2798();
    }
  }

  v114 = *(v1 + v107);
  a = v136;
  return [v114 setTransform_];
}

void sub_257DC017C(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoPreviewLayer;
  v8 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoPreviewLayer);
  if (v8)
  {
    v9 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoPreviewLayer);
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CE5B68]) init];
    v11 = *(v3 + v7);
    *(v3 + v7) = v10;

    if (v10)
    {
      [v10 setVideoGravity_];
    }

    v12 = *(v3 + v7);
    if (!v12)
    {
      goto LABEL_11;
    }

    v9 = v12;
    v8 = 0;
  }

  v13 = v8;
  [v9 bounds];
  Width = CGRectGetWidth(v88);
  [v9 bounds];
  Height = CGRectGetHeight(v89);
  [a2 topLeft];
  v17 = v16;
  v19 = v18;
  [a2 bottomLeft];
  v21 = v20;
  v23 = v22;
  [a2 topRight];
  v25 = v24;
  v27 = v26;
  [a2 bottomRight];
  if (!a1)
  {

    goto LABEL_11;
  }

  v77.x = v28;
  v77.y = v29;
  v30 = a1;
  v31 = CVPixelBufferGetWidth(v30);
  v32 = CVPixelBufferGetHeight(v30);
  if (Height == 0.0)
  {

LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  point = v17;
  v65 = v23;
  v66 = v21;
  v67 = v27;
  v68 = v25;
  v33 = v31 / Width / (v32 / Height);
  v34 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_previewLayerScaleRatio;
  *(v3 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_previewLayerScaleRatio) = v33;
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  v35 = *(v3 + v34);
  v36 = 2.0;
  if (byte_27F8F8D88)
  {
    v36 = 20.0;
  }

  v37 = v35 * v36;
  CGAffineTransformMakeScale(&v80, 1.0, -1.0);
  CGAffineTransformTranslate(&v79, &v80, -Width / v37, -Height);
  b = v79.b;
  c = v79.c;
  v70 = v79.c;
  v71 = v79.b;
  d = v79.d;
  a = v79.a;
  tx = v79.tx;
  v69 = v79.tx;
  ty = v79.ty;
  v80.a = 1.0;
  v80.b = 0.0;
  v80.c = 0.0;
  v80.d = 1.0;
  v80.tx = 0.0;
  v80.ty = 0.0;
  CGAffineTransformScale(&v79, &v80, Width * v35, Height);
  v41 = v79.a;
  v62 = Width;
  point_8 = Height;
  v42 = v79.ty;
  v58 = v79.tx;
  v59 = v79.d;
  v80 = v79;
  v72 = v79.a;
  v43 = v79.b;
  v76 = v79.b;
  v60 = v79.ty;
  v61 = v79.c;
  v81.x = point;
  v81.y = v19;
  v82 = CGPointApplyAffineTransform(v81, &v80);
  v80.a = a;
  v80.b = b;
  v80.c = c;
  v80.d = d;
  v80.tx = tx;
  v80.ty = ty;
  v44 = CGPointApplyAffineTransform(v82, &v80);
  v80.a = v41;
  v80.b = v43;
  v80.c = v61;
  v80.d = v59;
  v80.tx = v58;
  v80.ty = v42;
  v83.y = v65;
  v83.x = v66;
  v84 = CGPointApplyAffineTransform(v83, &v80);
  v80.a = a;
  v80.b = v71;
  v80.c = v70;
  v80.d = d;
  v80.tx = v69;
  v80.ty = ty;
  v45 = CGPointApplyAffineTransform(v84, &v80);
  v80.a = v72;
  v80.b = v76;
  v80.c = v61;
  v80.d = v59;
  v80.tx = v58;
  v80.ty = v60;
  v85.y = v67;
  v85.x = v68;
  v86 = CGPointApplyAffineTransform(v85, &v80);
  v80.a = a;
  v80.b = v71;
  v80.c = v70;
  v80.d = d;
  v80.tx = v69;
  v80.ty = ty;
  v46 = CGPointApplyAffineTransform(v86, &v80);
  v80.a = v72;
  v80.b = v76;
  v80.c = v61;
  v80.d = v59;
  v80.tx = v58;
  v80.ty = v60;
  v87 = CGPointApplyAffineTransform(v77, &v80);
  v80.a = a;
  v80.b = v71;
  v80.c = v70;
  v80.d = d;
  v80.tx = v69;
  v80.ty = ty;
  v47 = CGPointApplyAffineTransform(v87, &v80);
  x = v44.x;
  if (v44.x <= 0.0)
  {
    x = 0.0;
  }

  v78 = x;
  if (v44.y > 0.0)
  {
    y = v44.y;
  }

  else
  {
    y = 0.0;
  }

  if (v62 + -12.5 >= v46.x)
  {
    v50 = v46.x;
  }

  else
  {
    v50 = v62 + -12.5;
  }

  if (v46.y > 0.0)
  {
    v51 = v46.y;
  }

  else
  {
    v51 = 0.0;
  }

  if (v45.x > 0.0)
  {
    v52 = v45.x;
  }

  else
  {
    v52 = 0.0;
  }

  if (point_8 + -12.5 >= v45.y)
  {
    v53 = v45.y;
  }

  else
  {
    v53 = point_8 + -12.5;
  }

  if (v62 + -12.5 >= v47.x)
  {
    v54 = v47.x;
  }

  else
  {
    v54 = v62 + -12.5;
  }

  if (point_8 + -12.5 >= v47.y)
  {
    v55 = v47.y;
  }

  else
  {
    v55 = point_8 + -12.5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59B8);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_257EDBE50;
  *(v56 + 32) = v78;
  *(v56 + 40) = y;
  *(v56 + 48) = 0;
  *(v56 + 56) = v50;
  *(v56 + 64) = v51;
  *(v56 + 72) = 1;
  *(v56 + 80) = v52;
  *(v56 + 88) = v53;
  *(v56 + 96) = 2;
  *(v56 + 104) = v54;
  *(v56 + 112) = v55;
  *(v56 + 120) = 3;
  *&v80.a = v56;
  *&v80.b = xmmword_257EDC820;
  v57 = sub_257C38808();

  *a3 = v57;
  *(a3 + 1) = xmmword_257EDC820;
}

uint64_t sub_257DC0658()
{
  v1 = v0;
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v20 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_ignorePublishedEnvChanges;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_ignorePublishedEnvChanges) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD60();

  v7 = v23;
  if (v23)
  {
    v21 = v5;
    v18 = v3;
    v19 = v2;
    v8 = v22;
    v10 = v24;
    v9 = v25;
    v11 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayer);
    v12 = v23;
    [v11 setOpacity_];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v22) = 1;
    sub_257ECC3F0();
    sub_257ECDD70();
    v13 = v8;
    sub_257DC017C(v8, v12, &v22);

    if (v22)
    {
      sub_257DC422C(&v22);

      sub_257D98414(v8, v7, v10, v9);
    }

    else
    {
      v14 = v20;
      sub_257ECD340();
      v15 = sub_257ECDA20();
      v16 = sub_257ECFBE0();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_257BAC000, v15, v16, "Failed to generate handle positions for document drag handles", v17, 2u);
        MEMORY[0x259C74820](v17, -1, -1);

        sub_257D98414(v8, v7, v10, v9);
      }

      else
      {
        sub_257D98414(v8, v7, v10, v9);
      }

      result = (*(v18 + 8))(v14, v19);
    }

    v5 = v21;
  }

  *(v1 + v5) = 0;
  return result;
}

void sub_257DC0948()
{
  v1 = v0;
  v91 = *MEMORY[0x277D85DE8];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD60();

  if (LOBYTE(v90.a) != 3)
  {
    return;
  }

  v2 = sub_257DC38BC();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v90.a = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions);
  *&v90.b = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions + 8);
  v12 = sub_257C389F8();
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v15 = (v12 + 40);
    v16 = MEMORY[0x277D84F90];
    do
    {
      v18 = *(v15 - 1);
      v17 = *v15;
      v92.origin.x = v5;
      v92.origin.y = v7;
      v92.size.width = v9;
      v92.size.height = v11;
      Width = CGRectGetWidth(v92);
      v93.origin.x = v5;
      v93.origin.y = v7;
      v93.size.width = v9;
      v93.size.height = v11;
      Height = CGRectGetHeight(v93);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_257BFE188(0, *(v16 + 2) + 1, 1, v16);
      }

      v22 = *(v16 + 2);
      v21 = *(v16 + 3);
      if (v22 >= v21 >> 1)
      {
        v16 = sub_257BFE188((v21 > 1), v22 + 1, 1, v16);
      }

      *(v16 + 2) = v22 + 1;
      v23 = &v16[16 * v22];
      *(v23 + 4) = v18 / Width;
      *(v23 + 5) = 1.0 - v17 / Height;
      v15 += 2;
      --v13;
    }

    while (v13);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD60();

  if (!*&v90.b)
  {
    goto LABEL_47;
  }

  b = v90.b;
  v86 = *&v90.c;
  v24 = [objc_allocWithZone(MEMORY[0x277CBF758]) init];
  if (*&v90.a)
  {
    v25 = &selRef_initWithCVPixelBuffer_;
    a = v90.a;
  }

  else
  {
    if (!*&v90.d)
    {
      goto LABEL_19;
    }

    v25 = &selRef_initWithCGImage_;
    a = v90.d;
  }

  v27 = [objc_allocWithZone(MEMORY[0x277CBF758]) *v25];

  v24 = v27;
LABEL_19:
  v85 = v90.a;
  d = v90.d;
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  v84 = byte_27F8F8D88;
  v28 = 2.0;
  if (byte_27F8F8D88)
  {
    v28 = 20.0;
  }

  v29 = *(v16 + 2);
  if (v29)
  {
    v30 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_previewLayerScaleRatio;
    v31 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_previewLayerScaleRatio) * v28;
    v32 = (v16 + 40);
    v14 = MEMORY[0x277D84F90];
    do
    {
      v34 = *(v32 - 1);
      v33 = *v32;
      [v24 extent];
      v35 = CGRectGetWidth(v94);
      v36 = *(v1 + v30);
      [v24 extent];
      v37 = CGRectGetWidth(v95);
      v38 = *(v1 + v30);
      [v24 extent];
      v39 = CGRectGetHeight(v96);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_257BFE188(0, *(v14 + 2) + 1, 1, v14);
      }

      v41 = *(v14 + 2);
      v40 = *(v14 + 3);
      v42 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        v14 = sub_257BFE188((v40 > 1), v41 + 1, 1, v14);
      }

      *(v14 + 2) = v42;
      v43 = &v14[16 * v41];
      *(v43 + 4) = v34 * (v35 / v36) + v37 / (v31 * v38);
      *(v43 + 5) = v33 * v39;
      v32 += 2;
      --v29;
    }

    while (v29);
  }

  else
  {
    v42 = *(v14 + 2);
    if (!v42)
    {
      __break(1u);
      goto LABEL_60;
    }
  }

  if (v42 == 1)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v42 < 3)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v42 == 3)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v44 = *(v14 + 4);
  v45 = *(v14 + 5);
  v46 = *(v14 + 6);
  v47 = *(v14 + 7);
  v49 = *(v14 + 8);
  v48 = *(v14 + 9);
  v50 = *(v14 + 10);
  v51 = *(v14 + 11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59B8);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_257EDBE50;
  *(v52 + 32) = v44;
  *(v52 + 40) = v45;
  *(v52 + 48) = 0;
  *(v52 + 56) = v46;
  *(v52 + 64) = v47;
  *(v52 + 72) = 1;
  *(v52 + 80) = v49;
  *(v52 + 88) = v48;
  *(v52 + 96) = 2;
  *(v52 + 104) = v50;
  *(v52 + 112) = v51;
  *(v52 + 120) = 3;
  v53 = sub_257C38808();

  *&v90.a = v53;
  *&v90.b = xmmword_257EDC820;
  sub_257C390E8(&v90);
  v55 = v54;

  if (!v55)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v60 = v85;
    v61 = b;
    v90.a = v85;
    v90.b = b;
    *&v90.c = xmmword_257EDA120;
    v64 = *&v85;
    sub_257ECC3F0();
    v65 = *&b;
    sub_257ECDD70();
    goto LABEL_46;
  }

  if (v84)
  {
    [v55 extent];
    v56 = CGRectGetHeight(v97);
    CGAffineTransformMakeTranslation(&v90, v56, 0.0);
    CGAffineTransformRotate(&v89, &v90, 1.57079633);
    v90 = v89;
    v57 = [v55 imageByApplyingTransform_];

    v55 = v57;
  }

  [v55 extent];
  v58 = CGRectGetWidth(v98);
  if ((~*&v58 & 0x7FF0000000000000) == 0 && (*&v58 & 0xFFFFFFFFFFFFFLL) != 0 || ([v55 extent], fabs(CGRectGetWidth(v99)) == INFINITY) || (objc_msgSend(v55, sel_extent), v59 = CGRectGetHeight(v100), (~*&v59 & 0x7FF0000000000000) == 0) && (*&v59 & 0xFFFFFFFFFFFFFLL) != 0 || (objc_msgSend(v55, sel_extent), fabs(CGRectGetHeight(v101)) == INFINITY))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v60 = v85;
    v61 = b;
    v90.a = v85;
    v90.b = b;
    *&v90.c = xmmword_257EDA120;
    v62 = *&v85;
    sub_257ECC3F0();
    v63 = *&b;
    sub_257ECDD70();

LABEL_46:
    sub_257D98414(*&v60, *&v61, v86, *&d);

LABEL_47:

    return;
  }

  v89.a = 0.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F95A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED9BD0;
  v67 = *MEMORY[0x277CC4D70];
  *(inited + 32) = *MEMORY[0x277CC4D70];
  v68 = *MEMORY[0x277CBED28];
  v69 = *MEMORY[0x277CC4D68];
  *(inited + 40) = *MEMORY[0x277CBED28];
  *(inited + 48) = v69;
  *(inited + 56) = v68;
  v70 = v68;
  v71 = v67;
  v72 = v69;
  sub_257BE95E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F95A8);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F95B0);
  sub_257DC6058(&qword_27F8F4C08, type metadata accessor for CFString);
  v73 = sub_257ECF3C0();

  [v55 extent];
  v74 = CGRectGetWidth(v102);
  if ((*&v74 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_63;
  }

  if (v74 <= -9.22337204e18)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v74 >= 9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  [v55 extent];
  v75 = CGRectGetHeight(v103);
  if ((*&v75 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v75 <= -9.22337204e18)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
  }

  if (v75 >= 9.22337204e18)
  {
    goto LABEL_68;
  }

  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v74, v75, 0x42475241u, v73, &v89);
  v76 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  v77 = v89.a;
  if (*&v89.a)
  {
    v78 = *&v89.a;
    [v76 render:v55 toCVPixelBuffer:v78];
    swift_getKeyPath();
    swift_getKeyPath();
    v90.a = v77;
    v90.b = b;
    *&v90.c = xmmword_257EDA120;
    v79 = v78;
    sub_257ECC3F0();
    v80 = *&b;
    sub_257ECDD70();

    sub_257D98414(*&v85, *&b, v86, *&d);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v90.a = v85;
    v90.b = b;
    *&v90.c = xmmword_257EDA120;
    v81 = *&v85;
    v82 = *&b;
    sub_257ECC3F0();
    sub_257ECDD70();

    sub_257D98414(*&v85, *&b, v86, *&d);
  }

  v83 = v89.a;
}

unint64_t sub_257DC1410(double a1, double a2)
{
  v3 = v2;
  v6 = sub_257ECCF30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD60();

  if (LOBYTE(v17[0]) == 1)
  {
    v11 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleSelection;
    *(v2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleSelection) = 0;
    result = sub_257DC39F0(a1, a2);
    *(v2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleIndex) = result;
    if ((result & 0x8000000000000000) != 0)
    {
      [*(v2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionLayer) convertPoint:*(v2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer) fromLayer:{a1, a2}];
      v13 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionPath);
      (*(v7 + 104))(v9, *MEMORY[0x277CBF258], v6);
      v17[0] = 0x3FF0000000000000;
      v17[1] = 0;
      v17[2] = 0;
      v17[3] = 0x3FF0000000000000;
      v17[4] = 0;
      v17[5] = 0;
      v14 = v13;
      v15 = sub_257ED0070();

      result = (*(v7 + 8))(v9, v6);
      if (v15)
      {
        *(v3 + v11) = 1;
        v16 = (v3 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleStartPosition);
        *v16 = a1;
        v16[1] = a2;
      }
    }

    else
    {
      v12 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions);
      if (result >= *(v12 + 16))
      {
        __break(1u);
      }

      else
      {
        *(v2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleStartPosition) = *(v12 + 24 * result + 32);
      }
    }
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleIndex) = -1;
    *(v2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleSelection) = 0;
  }

  return result;
}

void sub_257DC169C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleIndex;
  if ((*(v5 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleIndex) & 0x8000000000000000) != 0)
  {
    if (*(v5 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleSelection) == 1)
    {
      v9 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions;
      v10 = *(v5 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions);
      if (*(v10 + 16))
      {
        v11 = 0;
        v12 = 0;
        v13 = (v5 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform);
        v14 = MEMORY[0x277D84F90];
        while (1)
        {
          v15 = v10 + v11;
          v53 = *(v10 + v11 + 32);
          v16 = *v13;
          v17 = v13[1];
          v18 = v13[2];
          v19 = v13[3];
          v20 = v13[4];
          v21 = v13[5];
          transform.a = *v13;
          transform.b = v17;
          transform.c = v18;
          transform.d = v19;
          transform.tx = v20;
          transform.ty = v21;
          CGAffineTransformDecompose(&v56, &transform);
          if (v56.scale.height >= v56.scale.width)
          {
            width = v56.scale.width;
          }

          else
          {
            width = v56.scale.height;
          }

          v23 = *(v15 + 40);
          transform.a = v16;
          transform.b = v17;
          transform.c = v18;
          transform.d = v19;
          transform.tx = v20;
          transform.ty = v21;
          CGAffineTransformDecompose(&v56, &transform);
          height = v56.scale.width;
          if (v56.scale.height < v56.scale.width)
          {
            height = v56.scale.height;
          }

          v25 = v53 + a4 / width;
          v26 = v23 + a5 / height;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_257BFE188(0, *(v14 + 2) + 1, 1, v14);
          }

          v28 = *(v14 + 2);
          v27 = *(v14 + 3);
          if (v28 >= v27 >> 1)
          {
            v14 = sub_257BFE188((v27 > 1), v28 + 1, 1, v14);
          }

          *(v14 + 2) = v28 + 1;
          v29 = &v14[16 * v28];
          *(v29 + 4) = v25;
          *(v29 + 5) = v26;
          if (v12 == 3)
          {
            break;
          }

          ++v12;
          v10 = *(v5 + v9);
          v11 += 24;
          if (v12 >= *(v10 + 16))
          {
            goto LABEL_39;
          }
        }

        v35 = 0;
        v36 = 0;
        while (1)
        {
          v37 = *(v5 + v9);
          if (v36 >= *(v37 + 2))
          {
            break;
          }

          v54 = *&v14[16 * v36 + 32];
          v38 = *&v37[v35 + 32];
          v39 = *&v37[v35 + 40];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_257C7DF00(v37);
          }

          v40 = &v37[v35];
          *&v37[v35 + 32] = v54;
          *(v5 + v9) = v37;
          v41 = *(v37 + 2);
          if (!v41)
          {
            goto LABEL_41;
          }

          if (v41 == 1)
          {
            goto LABEL_42;
          }

          if (v41 < 3)
          {
            goto LABEL_43;
          }

          if (v41 == 3)
          {
            goto LABEL_44;
          }

          v52 = v39;
          v55 = v38;
          v42 = *(v37 + 4);
          v43 = *(v37 + 5);
          v44 = *(v37 + 7);
          v45 = *(v37 + 8);
          v46 = *(v37 + 10);
          v47 = *(v37 + 11);
          v48 = *(v37 + 13);
          v49 = *(v37 + 14);
          if (sub_257C39DEC(v48, v49, v46, v47, v42, v43, v44, v45) & 1) != 0 || (sub_257C39DEC(v46, v47, v44, v45, v48, v49, v42, v43))
          {
            if (v36 >= v41)
            {
              goto LABEL_46;
            }

            *(v40 + 4) = v55;
            *(v40 + 5) = v52;
            *(v5 + v9) = v37;
          }

          if (v36 == 3)
          {
            sub_257DC3D9C();
            sub_257DC45FC();

            return;
          }

          ++v36;
          v35 += 24;
          if (v36 >= *(v14 + 2))
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
LABEL_39:
        __break(1u);
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
    }

    else
    {
      v30 = CGSizeMake(a1);
      v32 = v31;
      v33 = *(v5 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 16);
      *&transform.a = *(v5 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform);
      *&transform.c = v33;
      *&transform.tx = *(v5 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 32);
      CGAffineTransformDecompose(&v56, &transform);
      v34 = v56.scale.width;
      if (v56.scale.height < v56.scale.width)
      {
        v34 = v56.scale.height;
      }

      sub_257DC2CE0(0, v34, v30, v32);
    }
  }

  else
  {
    [*(v5 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayer) convertPoint:*(v5 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer) fromLayer:?];
    sub_257C38BD4(*(v5 + v6), v7, v8);
    sub_257DC3D9C();

    sub_257DC45FC();
  }
}

uint64_t sub_257DC1A98()
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D10);
  v1 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v3 = &v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9598);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  swift_beginAccess();
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A10);
  sub_257ECDD30();
  swift_endAccess();

  *(swift_allocObject() + 16) = v0;
  sub_257BD2D4C(&unk_27F8F9D60, &qword_27F8F9598);
  v8 = v0;
  sub_257ECDE50();

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F89F0);
  sub_257ECDD30();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&qword_27F8F9D50, &qword_27F8F9D10);
  v9 = v11;
  sub_257ECDE50();

  (*(v1 + 8))(v3, v9);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();
}

uint64_t sub_257DC1E38(uint64_t a1, void *a2)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECF190();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_ignorePublishedEnvChanges) & 1) == 0)
  {
    v18 = result;
    sub_257BD2C2C(0, &qword_281543F10);
    v17 = sub_257ECFD30();
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    aBlock[4] = sub_257DC6050;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_186;
    v13 = _Block_copy(aBlock);
    v14 = a2;
    sub_257ECF150();
    v19 = MEMORY[0x277D84F90];
    sub_257DC6058(&qword_281544090, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    v15 = v17;
    MEMORY[0x259C72880](0, v11, v6, v13);
    _Block_release(v13);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v11, v18);
  }

  return result;
}

void sub_257DC2134()
{
  memset(v0, 0, sizeof(v0));
  sub_257DC422C(v0);
  sub_257DBF744();
  sub_257DC0948();
}

uint64_t sub_257DC2174()
{
  v0 = sub_257ECF120();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_257ECF190();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_257BD2C2C(0, &qword_281543F10);
    v17 = sub_257ECFD30();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    aBlock[4] = sub_257DC602C;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_180;
    v11 = _Block_copy(aBlock);
    v16 = v4;
    v12 = v11;
    v15 = v9;
    sub_257ECF150();
    v18 = MEMORY[0x277D84F90];
    sub_257DC6058(&qword_281544090, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    v13 = v17;
    MEMORY[0x259C72880](0, v7, v3, v12);
    _Block_release(v12);

    (*(v1 + 8))(v3, v0);
    (*(v5 + 8))(v7, v16);
  }

  return result;
}

uint64_t sub_257DC2494()
{
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_ignorePublishedEnvChanges) == 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer);
    sub_257ECC3F0();
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v6 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform + 16);
    *&transform.a = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform);
    *&transform.c = v6;
    *&transform.tx = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform + 32);
    CGAffineTransformDecompose(&v37, &transform);
    dx = v37.translation.dx;
    dy = v37.translation.dy;
    v9 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 16);
    *&transform.a = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform);
    *&transform.c = v9;
    *&transform.tx = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 32);
    CGAffineTransformDecompose(&v37, &transform);
    sub_257DC484C(v3, v5);
    a = 0.0;
    if ((v10 < 0.0 || ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v10 - 1) > 0xFFFFFFFFFFFFELL)
    {
      b = 0.0;
    }

    else
    {
      v16 = (v11 < 0.0 || ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v11 - 1) > 0xFFFFFFFFFFFFELL;
      b = 0.0;
      if (!v16)
      {
        a = dx / v10;
        b = dy / v11;
      }
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD60();

    a = transform.a;
    b = transform.b;
  }

  if ((*&a & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&b & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v18 = sub_257DC38BC();
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    if (v18)
    {
      v22 = v18;
      [v18 bounds];
      v20 = v23;
      v21 = v24;
    }

    v25 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 16);
    *&transform.a = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform);
    *&transform.c = v25;
    *&transform.tx = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 32);
    CGAffineTransformDecompose(&v37, &transform);
    sub_257DC484C(v20, v21);
    if ((v26 < 0.0 || ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v26 - 1) > 0xFFFFFFFFFFFFELL)
    {
      v32 = 0.0;
    }

    else
    {
      v31 = (v27 < 0.0 || ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v27 - 1) > 0xFFFFFFFFFFFFELL;
      v32 = 0.0;
      if (!v31)
      {
        v19 = a * v26;
        v32 = b * v27;
      }
    }

    CGAffineTransformMakeTranslation(&transform, v19, v32);
    v33 = *&transform.c;
    v34 = *&transform.tx;
    v35 = (v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform);
    *v35 = *&transform.a;
    v35[1] = v33;
    v35[2] = v34;
    sub_257DC3134();
  }
}