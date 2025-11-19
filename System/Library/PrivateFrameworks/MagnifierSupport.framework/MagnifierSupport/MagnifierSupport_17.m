uint64_t sub_257D42230@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a1 = v3;
  return result;
}

uint64_t sub_257D422C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257D42338()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();
}

uint64_t sub_257D423B4(uint64_t a1)
{
  v2 = sub_257ECE1D0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  v9(v6, v8, v2);
  sub_257ECC3F0();
  sub_257ECDD70();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_257D42574()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return v1;
}

uint64_t sub_257D4261C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();
}

uint64_t sub_257D42694()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v3 >= 4u)
  {
  }

  else
  {
    v0 = sub_257ED0640();

    if ((v0 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      result = sub_257BE6B24();
      if (result)
      {
        return result;
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  result = v2;
  if (!v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    result = sub_257BE6B24();
    if (!result)
    {
      return sub_257ECED90();
    }
  }

  return result;
}

uint64_t sub_257D428AC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v5 >= 4u)
  {
  }

  else
  {
    v0 = sub_257ED0640();

    if ((v0 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (v4 <= 1u)
      {
        return sub_257ECED70();
      }

      if (v4 == 2 || v4 == 3)
      {
        return sub_257ECED90();
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  result = v3;
  if (v3)
  {
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v2 > 1u && (v2 == 2 || v2 == 3))
  {
    return sub_257ECED90();
  }

  return sub_257ECED70();
}

uint64_t sub_257D42AD8()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport26MFReaderTextFormatterModel__customReaderBackgroundColor;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F60A0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC16MagnifierSupport26MFReaderTextFormatterModel__customSelectedTextColor, v2);
  v4 = OBJC_IVAR____TtC16MagnifierSupport26MFReaderTextFormatterModel__theme;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6078);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC16MagnifierSupport26MFReaderTextFormatterModel__lastNonCustomTheme, v5);
  v7 = OBJC_IVAR____TtC16MagnifierSupport26MFReaderTextFormatterModel__fontName;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6050);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC16MagnifierSupport26MFReaderTextFormatterModel__dynamicTypeSize;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6028);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);

  return swift_deallocClassInstance();
}

void sub_257D42CDC()
{
  sub_257D42E3C();
  if (v0 <= 0x3F)
  {
    sub_257CD4C1C(319, &qword_27F8F8678);
    if (v1 <= 0x3F)
    {
      sub_257CD4C1C(319, &qword_27F8F8680);
      if (v2 <= 0x3F)
      {
        sub_257D42EA0();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_257D42E3C()
{
  if (!qword_27F8F8670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F6760);
    v0 = sub_257ECDD80();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8F8670);
    }
  }
}

void sub_257D42EA0()
{
  if (!qword_27F8F8688)
  {
    sub_257ECE1D0();
    v0 = sub_257ECDD80();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8F8688);
    }
  }
}

uint64_t sub_257D42EF8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6028);
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x28223BE20](v2);
  v52 = &v45 - v3;
  v4 = sub_257ECE1D0();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v48 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6050);
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6078);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F60A0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v45 - v17;
  v19 = OBJC_IVAR____TtC16MagnifierSupport26MFReaderTextFormatterModel__customReaderBackgroundColor;
  sub_257C359A0(0, 0xD00000000000002ALL, 0x8000000257F011E0, 0, 0, &v45 - v17);
  v20 = *(v16 + 32);
  v20(v1 + v19, v18, v15);
  v21 = OBJC_IVAR____TtC16MagnifierSupport26MFReaderTextFormatterModel__customSelectedTextColor;
  sub_257C359A0(0, 0xD000000000000024, 0x8000000257F01210, 0, 0, v18);
  v20(v1 + v21, v18, v15);
  v22 = v1;
  v23 = OBJC_IVAR____TtC16MagnifierSupport26MFReaderTextFormatterModel__theme;
  sub_257C35F98(2, 0xD00000000000001ALL, 0x8000000257F01240, 0, 0, v14);
  v24 = *(v12 + 32);
  v24(v22 + v23, v14, v11);
  v25 = OBJC_IVAR____TtC16MagnifierSupport26MFReaderTextFormatterModel__lastNonCustomTheme;
  sub_257C35F98(2, 0xD000000000000027, 0x8000000257F01260, 0, 0, v14);
  v24(v22 + v25, v14, v11);
  v26 = OBJC_IVAR____TtC16MagnifierSupport26MFReaderTextFormatterModel__fontName;
  sub_257C36554(5, 0xD000000000000021, 0x8000000257F01290, 0, 0, v10);
  (*(v46 + 32))(v22 + v26, v10, v47);
  v27 = objc_opt_self();
  v28 = [v27 sharedApplication];
  v29 = [v28 preferredContentSizeCategory];

  v30 = v48;
  sub_257D064AC(v48);

  v31 = v30;
  v32 = sub_257ECE1C0();
  v33 = v50;
  LOBYTE(v28) = v32;
  v34 = v49;
  v35 = *(v49 + 8);
  v36 = v31;
  v35(v31, v50);
  if (v28)
  {
    v37 = [v27 sharedApplication];
    v38 = [v37 preferredContentSizeCategory];

    v39 = v51;
    sub_257D064AC(v51);
  }

  else
  {
    v39 = v51;
    (*(v34 + 104))(v51, *MEMORY[0x277CDF988], v33);
  }

  v40 = v34;
  v41 = OBJC_IVAR____TtC16MagnifierSupport26MFReaderTextFormatterModel__dynamicTypeSize;
  (*(v40 + 16))(v36, v39, v33);
  v42 = v33;
  v43 = v52;
  sub_257C36B10(v36, 0xD000000000000024, 0x8000000257F012C0, 0, 0, v52);
  v35(v39, v42);
  (*(v53 + 32))(v22 + v41, v43, v54);
  return v22;
}

uint64_t sub_257D434F8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MFReaderTextFormatterModel(0);
  result = sub_257ECDCF0();
  *a1 = result;
  return result;
}

uint64_t sub_257D4354C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();
}

uint64_t sub_257D435BC()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport28MFReaderSpeechFormatterModel__playbackSpeed;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6000);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_257D4368C()
{
  sub_257CD4C1C(319, &qword_27F8F86A8);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_257D4372C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MFReaderSpeechFormatterModel(0);
  result = sub_257ECDCF0();
  *a1 = result;
  return result;
}

unint64_t sub_257D4376C()
{
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_257ED0210())
    {
      result = sub_257BF2CF8(MEMORY[0x277D84F90]);
    }

    else
    {
      result = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    result = MEMORY[0x277D84FA0];
  }

  qword_27F8F8628 = result;
  return result;
}

uint64_t sub_257D437F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

void sub_257D43868()
{
  v1 = sub_257ECCC80();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v5 = qword_281548340;
  v6 = *(*(qword_281548340 + 16) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor);
  v7 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v8 = v68;
  if (!v68 || ([v68 videoZoomFactor], v10 = v9, v8, v6 != v10))
  {
    v11 = *(v7 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_virtualDeviceSwitchOverVideoZoomFactors);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_257ECDD60();

    if (v68 && v68 == 1)
    {

      goto LABEL_9;
    }

    v12 = sub_257ED0640();

    if (v12)
    {
LABEL_9:

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v13 = v68;
      if (v68)
      {
        sub_257D334B0(0, *(*(v5 + 16) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor));
      }

      v14 = [objc_opt_self() currentRunLoop];
      sub_257ECCC00();
      v15 = sub_257ECCBD0();
      (*(v2 + 8))(v4, v1);
      [v14 runUntilDate_];

      v16 = sub_257DFF59C();
      v17 = [v16 layer];
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        v19 = v18;
        [v18 setAutomaticallyDimsOverCaptureRegion_];

        v20 = [v19 connection];
        if (!v20)
        {
          return;
        }

        [v20 setEnabled_];
        goto LABEL_61;
      }

LABEL_68:

      sub_257ED0410();
      __break(1u);
      return;
    }

    v62 = v2;
    v63 = v1;
    v21 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cameraType;
    swift_beginAccess();
    v22 = *(v21 + 8);
    v23 = *(v21 + 16);
    v64 = *v21;
    v65 = v22;
    v66 = v23;
    v24 = qword_2815447E0;

    if (v24 != -1)
    {
      v25 = swift_once();
    }

    MEMORY[0x28223BE20](v25);
    v17 = &v64;
    sub_257ECFD50();

    if (v67 == 2)
    {
      if (v11 >> 62)
      {
        v59 = sub_257ED0210();
        v27 = v63;
        if (v59 && sub_257ED0210() >= 2)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v27 = v63;
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
        {
LABEL_19:
          if ((v11 & 0xC000000000000001) != 0)
          {
            v30 = MEMORY[0x259C72E20](0, v11);
            v31 = MEMORY[0x259C72E20](1, v11);
LABEL_23:
            v32 = v31;

            v33 = *(*(v5 + 16) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor);
            sub_257ECCF40();
            if (v34 <= v33)
            {
              swift_getKeyPath();
              swift_getKeyPath();
              sub_257ECDD60();

              v52 = v64;
              if (v64)
              {
                v53 = *(*(v5 + 16) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor);
                sub_257BD2C2C(0, &qword_281543DC0);
                v54 = sub_257ECFF30();
                v55 = sub_257ECFF50();

                v56 = 1.0;
                if ((v55 & 1) == 0)
                {
                  goto LABEL_47;
                }

                goto LABEL_48;
              }
            }

            else
            {
              v35 = *(*(v5 + 16) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor);
              sub_257ECCF40();
              if (v35 >= v36)
              {
                v37 = *(*(v5 + 16) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor);
                sub_257ECCF40();
                if (v38 > v37)
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  sub_257ECDD60();

                  v39 = v64;
                  if (v64)
                  {
                    sub_257D334B0(0, *(*(v5 + 16) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor));
                  }

                  goto LABEL_49;
                }
              }

              swift_getKeyPath();
              swift_getKeyPath();
              sub_257ECDD60();

              v52 = v64;
              if (v64)
              {
                v53 = *(*(v5 + 16) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor);
                sub_257BD2C2C(0, &qword_281543DC0);
                v57 = sub_257ECFF30();
                v58 = sub_257ECFF50();

                v56 = 1.0;
                if ((v58 & 1) == 0)
                {
LABEL_47:
                  sub_257ECCF40();
                }

LABEL_48:
                sub_257D334B0(0, v53 / v56);
              }
            }

LABEL_49:

            goto LABEL_59;
          }

          v28 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v28)
          {
            if (v28 != 1)
            {
              v29 = *(v11 + 40);
              v30 = *(v11 + 32);
              v31 = v29;
              goto LABEL_23;
            }

LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v30 = v64;
      if (v64)
      {
        v48 = *(v5 + 16);
        v49 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor;
        goto LABEL_58;
      }

      goto LABEL_60;
    }

    v40 = *(v21 + 8);
    v41 = *(v21 + 16);
    v64 = *v21;
    v65 = v40;
    v66 = v41;
    MEMORY[0x28223BE20](v26);

    sub_257ECFD50();

    if (v67 != 1)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v30 = v64;
      v27 = v63;
      if (v64)
      {
        v48 = *(v5 + 16);
        v49 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor;
LABEL_58:
        sub_257D334B0(0, *(v48 + v49));
        goto LABEL_59;
      }

LABEL_60:
      v60 = [objc_opt_self() currentRunLoop];
      sub_257ECCC00();
      v20 = sub_257ECCBD0();
      (*(v62 + 8))(v4, v27);
      [v60 runUntilDate_];

LABEL_61:
      return;
    }

    v27 = v63;
    v17 = &OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor;
    if (v11 >> 62)
    {
      if (sub_257ED0210() && sub_257ED0210() >= 1)
      {
LABEL_31:
        if ((v11 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x259C72E20](0, v11);
        }

        else
        {
          if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_66;
          }

          v42 = *(v11 + 32);
        }

        v30 = v42;

        v43 = *(*(v5 + 16) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor);
        sub_257ECCF40();
        v45 = v44;
        swift_getKeyPath();
        swift_getKeyPath();
        if (v45 <= v43)
        {
          sub_257ECDD60();

          v46 = v64;
          if (v64)
          {
            v50 = *(*(v5 + 16) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor);
            sub_257ECCF40();
            v47 = v50 - v51;
            goto LABEL_41;
          }
        }

        else
        {
          sub_257ECDD60();

          v46 = v64;
          if (v64)
          {
            v47 = *(*(v5 + 16) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor);
LABEL_41:
            sub_257D334B0(0, v47);
          }
        }

LABEL_59:

        goto LABEL_60;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v30 = v64;
    if (v64)
    {
      v48 = *(v5 + 16);
      v49 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor;
      goto LABEL_58;
    }

    goto LABEL_60;
  }
}

void sub_257D443E4()
{
  v1 = v0;
  v2 = sub_257ECCC80();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_257DFF59C();
  v7 = [v6 layer];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    goto LABEL_60;
  }

  v9 = v8;
  [v8 setAutomaticallyDimsOverCaptureRegion_];

  v10 = [v9 connection];
  [v10 setEnabled_];

  v11 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v12 = v47;
  if (v47)
  {
    v42 = v3;
    [v47 videoZoomFactor];
    v14 = v13;

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    *(*(qword_281548340 + 16) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor) = v14;
    v15 = *(v11 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_virtualDeviceSwitchOverVideoZoomFactors);
    v16 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cameraType;
    swift_beginAccess();
    v17 = *(v16 + 8);
    v18 = *(v16 + 16);
    v43 = *v16;
    v44 = v17;
    v45 = v18;
    v19 = qword_2815447E0;

    if (v19 != -1)
    {
      v20 = swift_once();
    }

    v7 = qword_2815447E8;
    MEMORY[0x28223BE20](v20);
    sub_257ECFD50();

    if (v46 == 2)
    {
      if (v15 >> 62)
      {
        if (v15 < 0)
        {
          v7 = v15;
        }

        else
        {
          v7 = (v15 & 0xFFFFFFFFFFFFFF8);
        }

        if (sub_257ED0210() && sub_257ED0210() >= 2)
        {
          goto LABEL_10;
        }
      }

      else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
      {
LABEL_10:
        if ((v15 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x259C72E20](0, v15);
          v25 = MEMORY[0x259C72E20](1, v15);
LABEL_14:
          v26 = v25;

          sub_257ECCF40();
          if (v27 <= v14)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            sub_257ECDD60();

            v30 = v43;
            if (!v43)
            {
              goto LABEL_37;
            }
          }

          else
          {
            sub_257ECCF40();
            if (v14 >= v28 || (sub_257ECCF40(), v29 > v14))
            {
              swift_getKeyPath();
              swift_getKeyPath();
              sub_257ECDD60();

              v30 = v43;
              if (v43)
              {
                sub_257D337D8(0, 0.0);
LABEL_36:
              }

LABEL_37:

              goto LABEL_53;
            }

            swift_getKeyPath();
            swift_getKeyPath();
            sub_257ECDD60();

            v30 = v43;
            if (!v43)
            {
              goto LABEL_37;
            }
          }

          sub_257ECCF40();
          sub_257D334B0(0, v39);
          goto LABEL_36;
        }

        v22 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v22)
        {
          if (v22 != 1)
          {
            v23 = *(v15 + 40);
            v24 = *(v15 + 32);
            v25 = v23;
            goto LABEL_14;
          }

          goto LABEL_59;
        }

        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:

        sub_257ED0410();
        __break(1u);
        return;
      }

      goto LABEL_51;
    }

    v32 = *(v16 + 8);
    v33 = *(v16 + 16);
    v43 = *v16;
    v44 = v32;
    v45 = v33;
    MEMORY[0x28223BE20](v21);

    sub_257ECFD50();

    if (v46 == 1)
    {
      if (v15 >> 62)
      {
        if (v15 < 0)
        {
          v7 = v15;
        }

        else
        {
          v7 = (v15 & 0xFFFFFFFFFFFFFF8);
        }

        if (sub_257ED0210() && sub_257ED0210() >= 1)
        {
LABEL_25:
          if ((v15 & 0xC000000000000001) != 0)
          {
            v34 = MEMORY[0x259C72E20](0, v15);
          }

          else
          {
            if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_58;
            }

            v34 = *(v15 + 32);
          }

          v24 = v34;

          sub_257ECCF40();
          v36 = v35;
          swift_getKeyPath();
          swift_getKeyPath();
          if (v36 <= v14)
          {
            sub_257ECDD60();

            v37 = v43;
            if (!v43)
            {
              goto LABEL_53;
            }

            sub_257ECCF40();
            sub_257D334B0(0, v38);
          }

          else
          {
            sub_257ECDD60();

            v37 = v43;
            if (!v43)
            {
              goto LABEL_53;
            }

            sub_257D337D8(0, 0.0);
          }

          goto LABEL_53;
        }
      }

      else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }
    }

LABEL_51:

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v24 = v43;
    if (!v43)
    {
LABEL_54:
      v40 = [objc_opt_self() currentRunLoop];
      sub_257ECCC00();
      v41 = sub_257ECCBD0();
      (*(v42 + 8))(v5, v2);
      [v40 runUntilDate_];

      return;
    }

    sub_257D337D8(0, 0.0);
LABEL_53:

    goto LABEL_54;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v31 = v47;
  if (v47)
  {
    sub_257D337D8(0, 0.0);
  }

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureAttemptDidSucceed) = 0;
  sub_257DFF708();
}

void sub_257D44C34()
{
  v1 = sub_257ECDA30();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService);
  v6 = *(v5 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraPhotoOutput);
  if (v6)
  {
    v7 = qword_281544FE0;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    if (*(xmmword_281548330 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens_isInCapture))
    {
      v9 = v0;
      sub_257ECD410();
      v10 = sub_257ECDA20();
      v11 = sub_257ECFBD0();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_257BAC000, v10, v11, "Already in capture", v12, 2u);
        MEMORY[0x259C74820](v12, -1, -1);
      }

      (*(v2 + 8))(v4, v1);
      *(v9 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureAttemptDidSucceed) = 0;
      sub_257DFF708();
    }

    else
    {
      sub_257DFF9F8(1);
      *(v5 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_isCapturingPhoto) = 1;
      *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureAttemptDidSucceed) = 0;
      sub_257DFF708();
      v15 = sub_257D44ED8(v8);
      sub_257D443E4();
      [v8 capturePhotoWithSettings:v15 delegate:v5];

      v13 = v15;
    }
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureAttemptDidSucceed) = 0;

    sub_257DFF708();
  }
}

char *sub_257D44ED8(void *a1)
{
  v2 = *MEMORY[0x277CE6310];
  v3 = [a1 availablePhotoCodecTypes];
  type metadata accessor for AVVideoCodecType(0);
  v5 = v4;
  v6 = sub_257ECF810();

  v35 = v2;
  v34 = &v35;
  LOBYTE(v3) = sub_257DF8F80(sub_257D46ED4, v33, v6);

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6620);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257ED6D30;
    *(inited + 32) = sub_257ECF500();
    *(inited + 72) = v5;
    *(inited + 40) = v8;
    *(inited + 48) = v2;
    v9 = v2;
    sub_257BE9040(inited);
    swift_setDeallocating();
    sub_257BE4084(inited + 32, &qword_27F8F55E8);
    v10 = sub_257ECF3C0();

    v11 = [objc_opt_self() photoSettingsWithFormat_];
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x277CE5B30]) init];
  }

  [v11 setFlashMode_];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v12 = v35;
  if (!v35)
  {
LABEL_26:
    if (qword_281544FE0 == -1)
    {
      goto LABEL_27;
    }

    goto LABEL_36;
  }

  v13 = [v35 activeFormat];

  v14 = [v13 supportedMaxPhotoDimensionsPrivate];
  sub_257BD2C2C(0, &qword_27F8F93A0);
  v15 = sub_257ECF810();

  if (v15 >> 62)
  {
    v16 = sub_257ED0210();
    if (v16)
    {
LABEL_7:
      v35 = MEMORY[0x277D84F90];
      result = sub_257BF29E4(0, v16 & ~(v16 >> 63), 0);
      if (v16 < 0)
      {
        __break(1u);
        return result;
      }

      v18 = 0;
      v19 = v35;
      do
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x259C72E20](v18, v15);
        }

        else
        {
          v20 = *(v15 + 8 * v18 + 32);
        }

        v21 = v20;
        v22 = [v20 CMVideoDimensionsValue];

        v35 = v19;
        v24 = *(v19 + 2);
        v23 = *(v19 + 3);
        if (v24 >= v23 >> 1)
        {
          sub_257BF29E4((v23 > 1), v24 + 1, 1);
          v19 = v35;
        }

        ++v18;
        *(v19 + 2) = v24 + 1;
        *&v19[2 * v24 + 8] = v22;
      }

      while (v16 != v18);

      v25 = *(v19 + 2);
      if (!v25)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_7;
    }
  }

  v19 = MEMORY[0x277D84F90];
  v25 = *(MEMORY[0x277D84F90] + 16);
  if (!v25)
  {
LABEL_25:

    goto LABEL_26;
  }

LABEL_19:
  v26 = 0;
  v27 = v19 + 9;
  while (v26 < *(v19 + 2))
  {
    v29 = *(v27 - 1);
    v28 = *v27;
    if (v29 == [a1 maxPhotoDimensions] && v28 == objc_msgSend(a1, sel_maxPhotoDimensions) >> 32)
    {

      [v11 setMaxPhotoDimensions_];
      goto LABEL_26;
    }

    ++v26;
    v27 += 2;
    if (v25 == v26)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_36:
  swift_once();
LABEL_27:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v35)
  {
    v30 = sub_257ED0640();

    if ((v30 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  sub_257D46B64(v11);
LABEL_32:
  sub_257D46CE4(v11);
  v31 = sub_257ECF4C0();
  v32 = MGGetBoolAnswer();

  if ((v32 & 1) == 0)
  {
    [v11 setShutterSound_];
  }

  return v11;
}

__CVBuffer *sub_257D45484(void *a1)
{
  imageOut[1] = *MEMORY[0x277D85DE8];
  result = [a1 previewPixelBuffer];
  if (result)
  {
    v3 = result;
    imageOut[0] = 0;
    VTCreateCGImageFromCVPixelBuffer(result, 0, imageOut);
    if (!imageOut[0])
    {

      return 0;
    }

    v4 = v1;
    v5 = imageOut[0];
    v6 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v5 scale:sub_257D4E290() orientation:1.0];
    if (qword_27F8F4668 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D88 != 1)
    {

      return v6;
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v7 = *(v4 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService);
    v8 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator;
    v9 = *(v7 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator);
    if (v23 == 4)
    {
      if (v9)
      {
        [v9 videoRotationAngleForHorizonLevelCapture];
        if (v10 == 90.0)
        {
          result = [v6 CGImage];
          if (result)
          {
            v11 = result;
            v12 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:result scale:7 orientation:1.0];
LABEL_39:
            v22 = v12;

            return v22;
          }

          goto LABEL_43;
        }

        v14 = *(v7 + v8);
        if (v14)
        {
          [v14 videoRotationAngleForHorizonLevelCapture];
          if (v15 == 180.0)
          {
            result = [v6 CGImage];
            if (result)
            {
              v11 = result;
              v12 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:result scale:5 orientation:1.0];
              goto LABEL_39;
            }

            goto LABEL_45;
          }

          v18 = *(v7 + v8);
          if (v18)
          {
            [v18 videoRotationAngleForHorizonLevelCapture];
            if (v19 == 270.0)
            {
              result = [v6 CGImage];
              if (result)
              {
                v11 = result;
                v12 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:result scale:6 orientation:1.0];
                goto LABEL_39;
              }

              goto LABEL_47;
            }
          }
        }
      }

      result = [v6 CGImage];
      if (result)
      {
        v11 = result;
        v12 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:result scale:4 orientation:1.0];
        goto LABEL_39;
      }

      __break(1u);
    }

    else
    {
      if (v9)
      {
        [v9 videoRotationAngleForHorizonLevelCapture];
        if (v13 == 90.0)
        {
          result = [v6 CGImage];
          if (result)
          {
            v11 = result;
            v12 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:result scale:3 orientation:1.0];
            goto LABEL_39;
          }

          goto LABEL_44;
        }

        v16 = *(v7 + v8);
        if (v16)
        {
          [v16 videoRotationAngleForHorizonLevelCapture];
          if (v17 == 180.0)
          {
            result = [v6 CGImage];
            if (result)
            {
              v11 = result;
              v12 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:result scale:1 orientation:1.0];
              goto LABEL_39;
            }

            goto LABEL_46;
          }

          v20 = *(v7 + v8);
          if (v20)
          {
            [v20 videoRotationAngleForHorizonLevelCapture];
            if (v21 == 270.0)
            {
              result = [v6 CGImage];
              if (result)
              {
                v11 = result;
                v12 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:result scale:2 orientation:1.0];
                goto LABEL_39;
              }

LABEL_48:
              __break(1u);
              return result;
            }
          }
        }
      }

      result = [v6 CGImage];
      if (result)
      {
        v11 = result;
        v12 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:result scale:0 orientation:1.0];
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  return result;
}

uint64_t sub_257D45978()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8740);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F86B0);
  v5 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F86B8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9CA0);
  sub_257ECDD30();
  swift_endAccess();
  sub_257BD2D4C(&qword_281544138, &qword_27F8F86B8);
  v12 = sub_257ECDD90();
  (*(v9 + 8))(v11, v8);
  v22 = v12;
  v13 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlsQueue);
  v21 = v13;
  v14 = sub_257ECFCF0();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F86C0);
  sub_257BD2C2C(0, &qword_281543F10);
  sub_257BD2D4C(&qword_2815441C8, &qword_27F8F86C0);
  sub_257BE416C();
  sub_257ECDE20();
  sub_257BE4084(v4, &unk_27F8F8740);

  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_257BD2D4C(&unk_281544400, &qword_27F8F86B0);
  v16 = v20;
  v17 = sub_257ECDE50();

  (*(v5 + 8))(v7, v16);
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_capturedPhotoSubscription) = v17;
}

uint64_t sub_257D45D7C(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = sub_257ECDA30();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = *a1;
  if (*a1)
  {
    v27 = v10;
    v16 = qword_281544FE0;
    v17 = v15;
    if (v16 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (LOBYTE(v29[0]))
    {
      v18 = sub_257ED0640();

      if ((v18 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v29[0]) = 1;
    sub_257ECC3F0();
    sub_257ECDD70();
LABEL_12:
    v28 = a2;
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_257C024BC(Strong + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_stillImageStore, v29);

    v24 = v30;
    v23 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    (*(v23 + 8))(v17, v24, v23);
    v25 = sub_257ECCB70();
    (*(*(v25 - 8) + 56))(v9, 0, 1, v25);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257C1C614(v9, v7);
    sub_257ECC3F0();
    sub_257ECDD70();

    sub_257BE4084(v9, &qword_27F8F5F30);
    __swift_destroy_boxed_opaque_existential_0(v29);
    a2 = v28;
    return sub_257D462F4(a2);
  }

  sub_257ECD410();
  v19 = sub_257ECDA20();
  v20 = sub_257ECFBD0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_257BAC000, v19, v20, "Received nil photo", v21, 2u);
    MEMORY[0x259C74820](v21, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  return sub_257D462F4(a2);
}

uint64_t sub_257D462F4(uint64_t a1)
{
  v2 = sub_257ECF120();
  v12 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECF190();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10);
  v8 = sub_257ECFD30();
  aBlock[4] = sub_257D46EFC;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_34;
  v9 = _Block_copy(aBlock);
  sub_257ECC3F0();

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v7, v4, v9);
  _Block_release(v9);

  (*(v12 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v11);
}

void sub_257D465A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService);
  v2 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession;
  if ([*(v1 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession) isRunning] && (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , v9))
  {

    sub_257D44C34();
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (!v8)
    {

LABEL_12:
      v5 = sub_257DFF3FC();
      v6 = sub_257D832B0();

      v7 = sub_257DE1380();
      [v6 setImage:v7 forState:0];

      return;
    }

    v4 = sub_257ED0640();

    if (v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = *(v1 + v2);
    sub_257DB3860(v3, 0, 0);

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD70();
  }
}

uint64_t sub_257D46844()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_257ECDD70();
  }

  return result;
}

uint64_t sub_257D46988@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a1 = v3;
  return result;
}

uint64_t sub_257D46A08(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_257ECC3F0();
  return sub_257ECDD70();
}

void sub_257D46A80()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_257DFF9F8(0);
}

uint64_t sub_257D46AD4()
{
  v0 = sub_257ECF500();
  v2 = v1;
  if (v0 == sub_257ECF500() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_257ED0640();
  }

  return v5 & 1;
}

void sub_257D46B64(void *a1)
{
  v2 = *(sub_257ECFE10() + 16);

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6620);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257EDBBA0;
    *(inited + 32) = sub_257ECF500();
    *(inited + 40) = v4;
    v5 = sub_257ECFE10();
    if (*(v5 + 16))
    {
      v6 = *(v5 + 32);

      *(inited + 72) = MEMORY[0x277D84CC0];
      *(inited + 48) = v6;
      *(inited + 80) = sub_257ECF500();
      *(inited + 88) = v7;
      v8 = MEMORY[0x277D83B88];
      *(inited + 120) = MEMORY[0x277D83B88];
      *(inited + 96) = 5000;
      *(inited + 128) = sub_257ECF500();
      *(inited + 136) = v9;
      *(inited + 168) = v8;
      *(inited + 144) = 5000;
      sub_257BE9040(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55E8);
      swift_arrayDestroy();
      v10 = sub_257ECF3C0();

      [a1 setPreviewPhotoFormat_];
    }

    else
    {

      __break(1u);
    }
  }
}

void sub_257D46CE4(void *a1)
{
  v2 = [a1 availableEmbeddedThumbnailPhotoCodecTypes];
  type metadata accessor for AVVideoCodecType(0);
  v4 = v3;
  v5 = sub_257ECF810();

  v6 = *(v5 + 16);

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6620);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257EDBBA0;
    *(inited + 32) = sub_257ECF500();
    *(inited + 40) = v8;
    v9 = [a1 availableEmbeddedThumbnailPhotoCodecTypes];
    v10 = sub_257ECF810();
    if (*(v10 + 16))
    {

      if (*(v10 + 16))
      {
        v11 = *(v10 + 32);

        *(inited + 72) = v4;
        *(inited + 48) = v11;
        *(inited + 80) = sub_257ECF500();
        *(inited + 88) = v12;
        v13 = MEMORY[0x277D85048];
        *(inited + 120) = MEMORY[0x277D85048];
        *(inited + 96) = 0x4060000000000000;
        *(inited + 128) = sub_257ECF500();
        *(inited + 136) = v14;
        *(inited + 168) = v13;
        *(inited + 144) = 0x4060000000000000;
        sub_257BE9040(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55E8);
        swift_arrayDestroy();
        v15 = sub_257ECF3C0();

        [a1 setEmbeddedThumbnailPhotoFormat_];

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

unint64_t sub_257D46F28()
{
  result = qword_27F8F86C8;
  if (!qword_27F8F86C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F86C8);
  }

  return result;
}

unint64_t sub_257D46F80()
{
  result = qword_27F8F86D0;
  if (!qword_27F8F86D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F86D0);
  }

  return result;
}

unint64_t sub_257D47040()
{
  result = qword_27F8F86D8;
  if (!qword_27F8F86D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F86D8);
  }

  return result;
}

uint64_t sub_257D47094()
{
  v0 = sub_257ECCA30();
  __swift_allocate_value_buffer(v0, qword_27F912FC8);
  __swift_project_value_buffer(v0, qword_27F912FC8);
  return sub_257ECCA00();
}

uint64_t sub_257D470F8()
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

  return MEMORY[0x2822009F8](sub_257D471E8, v3, v2);
}

uint64_t sub_257D471E8()
{
  if (qword_27F8F4770 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = xmmword_257EDE780;
  *(v0 + 32) = 7;
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_257D472CC;

  return MAGActionHandler.send(_:)(v0 + 16);
}

uint64_t sub_257D472CC()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  sub_257C6DA74(*(v2 + 16), *(v2 + 24), *(v2 + 32));
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_257D4740C;
  }

  else
  {
    v5 = sub_257C6D490;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257D4740C()
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
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not complete DetectPeopleIntent: %@", v7, 0xCu);
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

uint64_t sub_257D47588@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F8F4638 != -1)
  {
    swift_once();
  }

  v2 = sub_257ECCA30();
  v3 = __swift_project_value_buffer(v2, qword_27F912FC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_257D47630(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  v1[3] = swift_task_alloc();
  v1[4] = sub_257ECF900();
  v1[5] = sub_257ECF8F0();
  v3 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257D47704, v3, v2);
}

uint64_t sub_257D47704()
{
  v1 = *(v0 + 24);

  v2 = sub_257ECF930();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_257ECF8F0();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D85700];
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  sub_257C3FBD4(0, 0, v1, &unk_257EE56E0, v4);

  sub_257ECC350();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_257D47818(uint64_t a1)
{
  v2 = sub_257D47040();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_257D47864()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257BE3DE0;

  return sub_257D470F8();
}

void sub_257D47910(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 80))();
  v4 = (*(a2 + 8))(a1, a2);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(a2 + 32))(a1, a2, 0.0);
    v5 = 1.0;
    if (v6)
    {
      v5 = 0.25;
    }
  }

  [v7 setAlpha_];
}

void sub_257D479D0()
{
  if (v0[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_control] == 4)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277D75E40]) initWithDelegate_];
    v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_clickInteraction];
    *&v0[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_clickInteraction] = v1;
    v3 = v1;

    if (v3)
    {
      [v0 addInteraction_];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_257D47A84(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_257ECC3F0();
  v1(v2);
  v4 = v3;

  if (v4)
  {
    v5 = sub_257ECF4C0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_257D47B08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  v6 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v6 setContentMode_];
  if (qword_281544A78 != -1)
  {
    swift_once();
  }

  [v6 setBackgroundColor_];
  v7 = [v6 layer];
  [v7 setCornerRadius_];

  v8 = [v6 layer];
  if (qword_281544A80 != -1)
  {
    swift_once();
  }

  [v8 setCornerCurve_];

  v9 = [v6 layer];
  [v9 setMasksToBounds_];

  return v6;
}

uint64_t sub_257D47D78(char a1)
{
  v3 = sub_257ECF120();
  v15 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_257ECF190();
  v6 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10);
  v9 = sub_257ECFD30();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_257D4B7B8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_36;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v8, v5, v11);
  _Block_release(v11);

  (*(v15 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v14);
}

void sub_257D48044(uint64_t a1, char a2)
{
  v3 = a2 & 1;
  sub_257D480F4();
  if (*(a1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing) != v3)
  {
    if (*(a1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing))
    {
      v4 = sub_257D15408();
    }

    else
    {
      v4 = sub_257D14B7C();
    }

    v5 = v4;
    v6 = sub_257D491F8();
    [v6 setImage:v5 forState:0];

    sub_257D48204();
  }
}

void sub_257D480F4()
{
  if (v0[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed] == 1)
  {
    v1 = [objc_opt_self() whiteColor];
    v2 = [v0 traitCollection];
    v6 = sub_257C1C83C(v1, v2);
  }

  else
  {
    v3 = v0[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing];
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

void sub_257D48204()
{
  v1 = v0;
  v2 = sub_257D49140();
  v3 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded;
  swift_beginAccess();
  [v2 setIsAccessibilityElement_];

  v4 = v1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 16))(ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  v8 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_control;
  if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_control) == 4)
  {
    v9 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider;
    [*(v1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider) value];
    v11 = v10;
    [*(v1 + v9) minimumValue];
    if (*(v1 + v3) == 1)
    {
      if (v12 < v11)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_30;
        }

LABEL_15:
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if ((aBlock & 1) == 0)
        {
LABEL_18:
          swift_getKeyPath();
          swift_getKeyPath();
          sub_257ECDD60();

          v16 = sub_257D491F8();
LABEL_31:
          type metadata accessor for MAGUtilities();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v23 = [objc_opt_self() bundleForClass_];
          v24 = sub_257ECF4C0();
          v25 = sub_257ECF4C0();
          v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

          sub_257ECF500();
          goto LABEL_32;
        }

        goto LABEL_26;
      }

      if ((v7 & 1) == 0)
      {
LABEL_30:
        v16 = sub_257D491F8();
        goto LABEL_31;
      }
    }

    else if (v12 < v11)
    {
      goto LABEL_15;
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if ((aBlock & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_26:
    v16 = sub_257D491F8();
    v17 = 0;
    goto LABEL_33;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v4 + 8);
    v14 = swift_getObjectType();
    v15 = (*(v13 + 24))(v1, &off_28690E098, v14, v13);
    swift_unknownObjectRelease();
    if (v7 & 1) == 0 && ((*(v1 + v3) & 1) == 0 || (v15))
    {
      goto LABEL_27;
    }
  }

  else if ((v7 & 1) == 0 && (*(v1 + v3) & 1) == 0)
  {
LABEL_27:
    v16 = sub_257D491F8();
    type metadata accessor for MAGUtilities();
    v18 = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass_];
    v20 = sub_257ECF4C0();
    v21 = sub_257ECF4C0();
    v17 = [v19 localizedStringForKey:v20 value:0 table:v21];

    if (!v17)
    {
      sub_257ECF500();
LABEL_32:
      v17 = sub_257ECF4C0();
    }

LABEL_33:
    [v16 setAccessibilityHint_];

    goto LABEL_34;
  }

  v17 = sub_257D491F8();
  [v17 setAccessibilityHint_];
LABEL_34:

  v27 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed;
  v28 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed);
  v29 = sub_257D491F8();
  v30 = *MEMORY[0x277D76580];
  v31 = [v29 accessibilityTraits];
  if (v28 == 1)
  {
    [v29 setAccessibilityTraits_];

    v32 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider);
    [v32 setAccessibilityTraits_];
  }

  else
  {
    [v29 setAccessibilityTraits_];

    v32 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider);
    [v32 setAccessibilityTraits_];
  }

  v33 = *(v1 + v3);
  v34 = sub_257D491F8();
  v35 = *MEMORY[0x277D76598];
  v36 = [v34 accessibilityTraits];
  if (v33)
  {
    v37 = v36 | v35;
  }

  else
  {
    v37 = v36 & ~v35;
  }

  [v34 setAccessibilityTraits_];

  v38 = *(v1 + v8) != 4;
  v39 = sub_257D491F8();
  v40 = *MEMORY[0x277D76548];
  v41 = [v39 accessibilityTraits];
  if ((v7 & v38) != 0)
  {
    v42 = v41 & ~v40;
  }

  else
  {
    v42 = v41 | v40;
  }

  [v39 setAccessibilityTraits_];

  if (*(v1 + v8) == 4)
  {
    if (v7 & 1) != 0 || (*(v1 + v3) & 1) != 0 || (*(v1 + v27))
    {
      goto LABEL_51;
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (aBlock)
    {
LABEL_51:
      v43 = sub_257D491F8();
      sub_257BD2C2C(0, &qword_281543E70);
      v44 = sub_257ECF7F0();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v43 = sub_257D491F8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_257ED9BF0;
      type metadata accessor for MAGUtilities();
      v75 = swift_getObjCClassFromMetadata();
      v76 = [objc_opt_self() bundleForClass_];
      v77 = sub_257ECF4C0();
      v78 = sub_257ECF4C0();
      v79 = [v76 localizedStringForKey:v77 value:0 table:v78];

      if (!v79)
      {
        sub_257ECF500();
        v79 = sub_257ECF4C0();
      }

      v80 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v81 = objc_allocWithZone(MEMORY[0x277D75088]);
      v88 = sub_257D4B7B0;
      v89 = v80;
      aBlock = MEMORY[0x277D85DD0];
      v85 = 1107296256;
      v86 = sub_257D96328;
      v87 = &block_descriptor_30_0;
      v82 = _Block_copy(&aBlock);
      sub_257ECC3F0();
      v83 = [v81 initWithName:v79 actionHandler:v82];

      _Block_release(v82);

      *(v74 + 32) = v83;
      sub_257BD2C2C(0, &qword_281543E70);
      v44 = sub_257ECF7F0();
    }

    [v43 setAccessibilityCustomActions_];

    if (*(v1 + v8) == 4)
    {
      v45 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider;
      [*(v1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider) value];
      v47 = v46;
      [*(v1 + v45) minimumValue];
      v49 = v48;
      v50 = sub_257D491F8();
      if (v47 <= v49)
      {
        type metadata accessor for MAGUtilities();
        v68 = swift_getObjCClassFromMetadata();
        v69 = [objc_opt_self() bundleForClass_];
        v70 = sub_257ECF4C0();
        v71 = sub_257ECF4C0();
        v65 = [v69 localizedStringForKey:v70 value:0 table:v71];

        if (v65)
        {
LABEL_63:
          [v50 setAccessibilityValue_];

          goto LABEL_64;
        }

        sub_257ECF500();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A78);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_257ED9BD0;
        type metadata accessor for MAGUtilities();
        v52 = swift_getObjCClassFromMetadata();
        v53 = [objc_opt_self() bundleForClass_];
        v54 = sub_257ECF4C0();
        v55 = sub_257ECF4C0();
        v56 = [v53 localizedStringForKey:v54 value:0 table:v55];

        v57 = sub_257ECF500();
        v59 = v58;

        *(inited + 32) = v57;
        *(inited + 40) = v59;
        v60 = [*(v1 + v45) accessibilityValue];
        if (v60)
        {
          v61 = v60;
          v62 = sub_257ECF500();
          v64 = v63;
        }

        else
        {
          v62 = 0;
          v64 = 0;
        }

        *(inited + 48) = v62;
        *(inited + 56) = v64;
        sub_257E5B84C(inited);
        v73 = v72;
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
        swift_arrayDestroy();
        if (!v73)
        {
          v65 = 0;
          goto LABEL_63;
        }
      }

      v65 = sub_257ECF4C0();

      goto LABEL_63;
    }
  }

  v65 = sub_257D491F8();
  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v88 = sub_257D4B69C;
  v89 = v66;
  aBlock = MEMORY[0x277D85DD0];
  v85 = 1107296256;
  v86 = sub_257D47A84;
  v87 = &block_descriptor_35;
  v67 = _Block_copy(&aBlock);

  [v65 setAccessibilityValueBlock_];
  _Block_release(v67);
LABEL_64:
}

id sub_257D49140()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider);
  }

  else
  {
    v4 = v0;
    sub_257D15920();
    v6 = v5;
    v7 = objc_allocWithZone(type metadata accessor for MFSlider());
    v8 = sub_257C7E3BC(v6);
    [v8 setAlpha_];
    v9 = *(v0 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_257D491F8()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___internalButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___internalButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___internalButton);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_config);
    v5 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_config + 8);
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

void sub_257D492D8(char a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = sub_257D49140();
  v5 = v4;
  v6 = 0.0;
  if (*(v1 + v3) == 1)
  {
    v6 = 1.0;
    if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed))
    {
      v6 = 0.25;
    }
  }

  [v4 setAlpha_];

  sub_257D48204();
  UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
}

void (*sub_257D49388(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_257D49410;
}

void sub_257D49410(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_257D49140();
    v7 = v6;
    v8 = 0.0;
    if (*(v4 + v5) == 1)
    {
      v8 = 1.0;
      if (*(v3[3] + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed))
      {
        v8 = 0.25;
      }
    }

    [v6 setAlpha_];

    sub_257D48204();
    UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
  }

  free(v3);
}

void sub_257D494C4(char a1)
{
  v2 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed) = a1;
  v3 = sub_257D49140();
  v4 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded;
  swift_beginAccess();
  v5 = 0.0;
  if (*(v1 + v4) == 1)
  {
    v5 = 1.0;
    if (*(v1 + v2))
    {
      v5 = 0.25;
    }
  }

  [v3 setAlpha_];

  sub_257D480F4();
  sub_257D48204();
}

id sub_257D49560(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  LOBYTE(a1) = *a1;
  v3[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_glowSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_freezeFrameReviewSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_clickInteraction] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___internalButton] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_control] = a1;
  v8 = &v3[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_config];
  *v8 = a2;
  v8[1] = a3;
  v13.receiver = v3;
  v13.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_257D496E0();
  sub_257D49A20();
  sub_257D479D0();
  v10 = v9;
  [v10 setShowsLargeContentViewer_];
  [v10 setScalesLargeContentImage_];

  v11 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v10 addInteraction_];

  return v10;
}

void sub_257D496E0()
{
  v1 = v0;
  if (qword_281544A78 != -1)
  {
    swift_once();
  }

  [v0 setBackgroundColor_];
  v2 = [objc_opt_self() whiteColor];
  [v1 setTintColor_];

  v3 = sub_257D14B7C();
  v4 = sub_257D491F8();
  [v4 setImage:v3 forState:0];

  v5 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded;
  swift_beginAccess();
  v1[v5] = 0;
  v6 = sub_257D49140();
  v7 = v6;
  v8 = 0.0;
  if (v1[v5] == 1)
  {
    v8 = 1.0;
    if (v1[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed])
    {
      v8 = 0.25;
    }
  }

  [v6 setAlpha_];

  sub_257D48204();
  UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
  v9 = [v1 layer];
  [v9 setCornerRadius_];

  v10 = [v1 layer];
  if (qword_281544A80 != -1)
  {
    swift_once();
  }

  [v10 setCornerCurve_];

  v11 = [v1 layer];
  [v11 setMasksToBounds_];

  v12 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider;
  [*&v1[OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider] setAlpha_];
  v13 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___internalButton;
  v14 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___internalButton] layer];
  [v14 setCornerRadius_];

  v15 = [*&v1[v13] layer];
  [v15 setMasksToBounds_];

  [*&v1[v13] addTarget:v1 action:sel_didTap_ forControlEvents:64];
  [v1 addSubview_];
  [v1 addSubview_];
  sub_257D4A30C();
}

uint64_t sub_257D49A20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8740);
  MEMORY[0x28223BE20](v0 - 8);
  v55 = v39 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0);
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x28223BE20](v2);
  v52 = v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8750);
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v56 = v39 - v5;
  v6 = sub_257ECF130();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_257ECFD10();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8758);
  v13 = *(v12 - 8);
  v42 = v12;
  v43 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8760);
  v17 = *(v16 - 8);
  v44 = v16;
  v45 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = v39 - v18;
  v20 = sub_257D49140();
  v59 = v20;
  v60 = 4096;
  sub_257D4BC14();
  v21 = sub_257ECDD90();

  v59 = v21;
  sub_257ECFD00();
  sub_257BD2C2C(0, &qword_281543F10);
  v22 = *MEMORY[0x277D851C0];
  v47 = *(v7 + 104);
  v48 = v7 + 104;
  v47(v9, v22, v6);
  v23 = sub_257ECFD90();
  v24 = *(v7 + 8);
  v50 = v7 + 8;
  v51 = v6;
  v46 = v24;
  v24(v9, v6);
  v61 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8770);
  sub_257BD2D4C(&qword_2815441B8, &unk_27F8F8770);
  v49 = sub_257BE416C();
  sub_257ECDE00();

  (*(v40 + 8))(v11, v41);
  v25 = v39[1];

  sub_257BD2C2C(0, &qword_281543D58);
  sub_257BD2D4C(&qword_2815442F0, &qword_27F8F8758);
  v26 = v42;
  sub_257ECDDA0();
  (*(v43 + 8))(v15, v26);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&qword_281544448, &unk_27F8F8760);
  v27 = v44;
  v28 = sub_257ECDE50();

  (*(v45 + 8))(v19, v27);
  *(v25 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_glowSubscription) = v28;

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  v29 = v52;
  sub_257ECDD30();
  swift_endAccess();
  v30 = v51;
  v47(v9, *MEMORY[0x277D851B8], v51);
  v31 = sub_257ECFD90();
  v46(v9, v30);
  v59 = v31;
  v32 = sub_257ECFCF0();
  v33 = v55;
  (*(*(v32 - 8) + 56))(v55, 1, 1, v32);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
  v34 = v56;
  v35 = v54;
  sub_257ECDDF0();
  sub_257D328F8(v33);

  (*(v53 + 8))(v29, v35);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544240, &qword_27F8F8750);
  v36 = v58;
  v37 = sub_257ECDE50();

  (*(v57 + 8))(v34, v36);
  *(v25 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_freezeFrameReviewSubscription) = v37;
}

void sub_257D4A30C()
{
  v1 = v0;
  v2 = sub_257D491F8();
  [v2 setIsAccessibilityElement_];

  v3 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___internalButton;
  v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___internalButton);
  sub_257D14A40();
  v5 = sub_257ECF4C0();

  [v4 setAccessibilityLabel_];

  v6 = *(v1 + v3);
  Control.rawValue.getter();
  v7 = v6;
  v8 = sub_257ECF4C0();

  [v7 setAccessibilityIdentifier_];

  v9 = *(v1 + v3);
  v10 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded;
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

  v18 = sub_257D49140();
  sub_257D14A40();
  v19 = sub_257ECF4C0();

  [v18 setAccessibilityLabel_];

  v20 = *MEMORY[0x277D76538];
  v21 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider);
  [v21 setAccessibilityTraits_];

  sub_257D48204();
}

id sub_257D4A5E4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  v5 = result;
  if (result)
  {
    result = v3;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_257D4A638()
{
  v0 = sub_257ECF120();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_257ECF190();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_257BD2C2C(0, &qword_281543F10);
    v15 = sub_257ECFD30();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    aBlock[4] = sub_257D4BC9C;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_56;
    v11 = _Block_copy(aBlock);
    v14 = v9;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    v13 = v4;
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    v12 = v15;
    MEMORY[0x259C72880](0, v7, v3, v11);
    _Block_release(v11);

    (*(v1 + 8))(v3, v0);
    return (*(v5 + 8))(v7, v13);
  }

  return result;
}

uint64_t sub_257D4A930(uint64_t a1)
{
  v2 = sub_257D49140();
  [v2 value];
  v4 = v3;

  sub_257D15920();
  v6 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing);
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing) = v4 != v5;
  return sub_257D47D78(v6);
}

uint64_t sub_257D4A9B8()
{
  v0 = sub_257ECF120();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_257ECF190();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_257BD2C2C(0, &qword_281543F10);
    v15 = sub_257ECFD30();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    aBlock[4] = sub_257D4BC78;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_50_0;
    v11 = _Block_copy(aBlock);
    v14 = v9;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    v13 = v4;
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    v12 = v15;
    MEMORY[0x259C72880](0, v7, v3, v11);
    _Block_release(v11);

    (*(v1 + 8))(v3, v0);
    return (*(v5 + 8))(v7, v13);
  }

  return result;
}

void sub_257D4ACB0()
{
  v1 = v0;
  v22.receiver = v0;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, sel_layoutSubviews);
  v2 = &v0[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_config];
  v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_config];
  v4 = *(v2 + 1);
  v5 = *(v4 + 24);
  v6 = v5(v3, v4);
  v7 = v5(v3, v4);
  [v1 bounds];
  v9 = v8;
  v10 = *(v4 + 40);
  v11 = v10(v3, v4);
  v12 = v10(v3, v4);
  v13 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded;
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

  v20 = sub_257D491F8();
  [v20 setFrame_];

  v21 = sub_257D49140();
  [v21 setFrame_];
}

id sub_257D4AF50()
{
  ObjectType = swift_getObjectType();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v2 = sub_257D53928();
  v3 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_control;
  v4 = sub_257C3EF48(v0[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_control], v2);

  if (v4)
  {
    v8 = v0[v3];
    sub_257D56A50(&v8);
    v7 = v0;
    v5 = &v7;
  }

  else
  {
    v9.receiver = v0;
    v5 = &v9;
  }

  v5->super_class = ObjectType;
  return [(objc_super *)v5 removeFromSuperview];
}

uint64_t sub_257D4B154()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_257D4B19C(uint64_t **a1))(void *a1)
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
  v2[4] = sub_257D49388(v2);
  return sub_257CA4CF4;
}

uint64_t sub_257D4B238(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_257D48204();

  return swift_unknownObjectRelease();
}

uint64_t sub_257D4B288()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_257ED9BF0;
  *(v0 + 32) = sub_257D491F8();
  return v0;
}

BOOL sub_257D4B2F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    v2 = Strong + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      swift_getObjectType();
      v4 = *(v3 + 8);
      v5 = v1;
      v4();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return v1 != 0;
}

uint64_t sub_257D4B3C8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_257D49140();

    v3 = [v2 accessibilityValue];
    if (v3)
    {
      v4 = sub_257ECF500();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_257D4B4F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_257ECF4C0();

  return v3;
}

uint64_t sub_257D4B564(void *a1)
{
  v2 = v1;
  v4 = [a1 view];
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  sub_257BD2C2C(0, &qword_281543DA0);
  if (sub_257ECFF50())
  {
    v6 = sub_257D491F8();
    [a1 locationInView_];
    v8 = v7;
    v10 = v9;

    [*(v2 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___internalButton) bounds];
    v13.x = v8;
    v13.y = v10;
    v11 = CGRectContainsPoint(v14, v13);
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257D4B6BC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a1 = v3;
  return result;
}

uint64_t sub_257D4B73C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

void sub_257D4B7C4()
{
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isGlowing) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_glowSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_freezeFrameReviewSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_clickInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___internalButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton____lazy_storage___slider) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed) = 0;
  sub_257ED0410();
  __break(1u);
}

uint64_t sub_257D4B898()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_control;
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_control) != 4)
  {
    goto LABEL_14;
  }

  sub_257D15BB4();
  v4 = v3;
  sub_257D15BB4();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v5 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__flashlightPercentage);
  swift_beginAccess();
  v19 = *v5;
  v6 = qword_2815447E0;

  if (v6 != -1)
  {
    v7 = swift_once();
  }

  v8 = v4;
  MEMORY[0x28223BE20](v7);
  sub_257ECFD50();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v9 = v1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_delegate;
  if (swift_unknownObjectWeakLoadStrong() && (v10 = *(v9 + 8), ObjectType = swift_getObjectType(), LOBYTE(v10) = (*(v10 + 16))(ObjectType, v10), swift_unknownObjectRelease(), (v10 & 1) != 0) || *&v19 <= v8 && (v12 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded, swift_beginAccess(), (*(v1 + v12) & 1) == 0) || (v13 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded, swift_beginAccess(), (*(v1 + v13) & 1) == 0))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD70();
  }

  if (*(v1 + v2) != 4 || (v14 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded, result = swift_beginAccess(), *(v1 + v14) == 1))
  {
LABEL_14:
    v16 = v1 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v17 = *(v16 + 8);
      v18 = swift_getObjectType();
      (*(v17 + 8))(v1, &off_28690E098, v18, v17);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

unint64_t sub_257D4BC14()
{
  result = qword_281543C78[0];
  if (!qword_281543C78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281543C78);
  }

  return result;
}

uint64_t sub_257D4BCC8(char a1)
{
  if (!a1)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v1 = sub_257ECF500();
  return v1;
}

void sub_257D4BE00(unsigned __int8 a1)
{
  if (a1 >= 2u)
  {
    if (a1 == 2)
    {
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v2 = [objc_opt_self() bundleForClass_];
      v3 = sub_257ECF4C0();
      v4 = sub_257ECF4C0();
      v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

      sub_257ECF500();
    }

    else
    {
      v6 = sub_257ECF4C0();
      v9[4] = sub_257E5BD88;
      v9[5] = 0;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 1107296256;
      v9[2] = sub_257E5BE70;
      v9[3] = &block_descriptor_36;
      v7 = _Block_copy(v9);
      v8 = AXLocStringForDeviceVariant();
      _Block_release(v7);

      if (v8)
      {
        sub_257ECF500();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_257D4BFE8()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_loadView);
  v1 = [v0 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  if (!v6)
  {
    sub_257ECF500();
    v6 = sub_257ECF4C0();
  }

  [v1 setTitle_];
}

void sub_257D4C188()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_tableView];
  [v2 setDataSource_];
  [v2 setDelegate_];
  sub_257BD2C2C(0, &qword_27F8F5560);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  type metadata accessor for UIStepperLengthCell();
  v5 = swift_getObjCClassFromMetadata();
  v6 = sub_257ECF4C0();
  [v2 registerClass:v5 forCellReuseIdentifier:v6];

  v7 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v7];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    [v8 addSubview_];

    v10 = [v1 view];
    if (v10)
    {
      v11 = v10;
      sub_257EB6FD8(v10, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_257D4C3C4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);
    v2 = *(result + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);

    result = swift_unknownObjectRelease();
    if (v2)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v4 = v0;
        v5 = qword_281548348;
        swift_beginAccess();
        v6 = v5[12];
        v7 = v5[13];
        v16[0] = v5[11];
        v16[1] = v6;
        v16[2] = v7;
        v8 = qword_2815447E0;

        if (v8 != -1)
        {
          v9 = swift_once();
        }

        MEMORY[0x28223BE20](v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
        sub_257ECFD50();

        if (*(v15[0] + 16))
        {
          v10 = sub_257C03F6C(v3, v2);
          v12 = v11;

          if (v12)
          {
            v13 = (*(v15[0] + 56) + 296 * v10);
            memcpy(v14, v13, sizeof(v14));
            memmove(v15, v13, 0x128uLL);
            CGSizeMake(v15);
            sub_257C09C58(v14, v16);

            memcpy(v16, v15, sizeof(v16));
LABEL_16:
            memcpy(v15, (v4 + OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity), 0x128uLL);
            memcpy((v4 + OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity), v16, 0x128uLL);
            return sub_257C109C8(v15);
          }
        }

        else
        {
        }

        sub_257C10998(v16);
        goto LABEL_16;
      }
    }
  }

  return result;
}

id sub_257D4C698(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v3[v6], __src, 0x128uLL);
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v11 = byte_286905990[v7 + 32];
    if (v11 != 3)
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
      v24 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF2964(0, *(v8 + 16) + 1, 1);
        v8 = v24;
      }

      v10 = *(v8 + 16);
      v9 = *(v8 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_257BF2964((v9 > 1), v10 + 1, 1);
        v8 = v24;
      }

      *(v8 + 16) = v10 + 1;
      *(v8 + v10 + 32) = v11;
    }

    ++v7;
  }

  while (v7 != 4);
  *&v4[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_availableDetectionFeedbacks] = v8;
  v12 = OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_tableView;
  v13 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 systemYellowColor];
  [v15 setTintColor_];

  [v15 setClipsToBounds_];
  *&v4[v12] = v15;
  if (a2)
  {
    v17 = sub_257ECF4C0();
  }

  else
  {
    v17 = 0;
  }

  v23.receiver = v4;
  v23.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v23, sel_initWithNibName_bundle_, v17, a3, a1);

  return v18;
}

id sub_257D4C970(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v2[v4], __src, 0x128uLL);
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v9 = byte_2869059B8[v5 + 32];
    if (v9 != 3)
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
      v19 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF2964(0, *(v6 + 16) + 1, 1);
        v6 = v19;
      }

      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_257BF2964((v7 > 1), v8 + 1, 1);
        v6 = v19;
      }

      *(v6 + 16) = v8 + 1;
      *(v6 + v8 + 32) = v9;
    }

    ++v5;
  }

  while (v5 != 4);
  *&v2[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_availableDetectionFeedbacks] = v6;
  v10 = OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_tableView;
  v11 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 systemYellowColor];
  [v13 setTintColor_];

  [v13 setClipsToBounds_];
  *&v2[v10] = v13;
  v18.receiver = v2;
  v18.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v18, sel_initWithCoder_, a1);

  if (v15)
  {
  }

  return v15;
}

unint64_t sub_257D4CD90(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0);
  v51 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v50 - v3;
  v5 = sub_257ECCEA0();
  v6 = 1;
  v7 = 4;
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 != 3)
      {
        goto LABEL_9;
      }

      v6 = 3;
      goto LABEL_8;
    }

    v25 = sub_257ECF4C0();
    v7 = 2;
LABEL_24:
    v26 = sub_257ECCE30();
    v10 = [a1 dequeueReusableCellWithIdentifier:v25 forIndexPath:v26];

    v11 = v52;
    sub_257D4C3C4();
    if (v7 <= 1)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  if (!v5)
  {
    v25 = sub_257ECF4C0();
    v7 = 0;
    goto LABEL_24;
  }

  if (v5 == 1)
  {
LABEL_8:
    v7 = v6;
    LOBYTE(v6) = 0;
  }

LABEL_9:
  v8 = sub_257ECF4C0();
  v9 = sub_257ECCE30();
  v10 = [a1 dequeueReusableCellWithIdentifier:v8 forIndexPath:v9];

  v11 = v52;
  sub_257D4C3C4();
  if (v6)
  {
    return v10;
  }

  if (v7 <= 1)
  {
LABEL_11:
    if (!v7)
    {
      v12 = [v10 textLabel];
      if (v12)
      {
        v13 = v12;
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v15 = [objc_opt_self() bundleForClass_];
        v16 = sub_257ECF4C0();
        v17 = sub_257ECF4C0();
        v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

        if (!v18)
        {
          sub_257ECF500();
          v18 = sub_257ECF4C0();
        }

        [v13 setText_];

        v11 = v52;
      }

      v19 = [v10 textLabel];
      if (v19)
      {
        v20 = v19;
        [v19 setNumberOfLines_];
      }

      v21 = [v10 textLabel];
      if (v21)
      {
        v22 = v21;
        [v21 setLineBreakMode_];
      }

      v23 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      v24 = &v11[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity];
      memcpy(v54, &v11[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity], 0x128uLL);
      if (sub_257C108C4(v54) == 1)
      {
      }

      else
      {
        [v23 setOn_];
        v44 = v23;
        [v44 setTag_];
        [v44 addTarget:v11 action:sel_togglePeopleDetectionSwitchChanged_ forControlEvents:4096];
        [v10 setAccessoryView_];
      }

      return v10;
    }

    v34 = sub_257ECCE60();
    if (!v34)
    {
      v35 = 0;
      goto LABEL_44;
    }

    if (v34 == 1)
    {
      v35 = 1;
LABEL_44:
      v45 = [v10 textLabel];
      if (v45)
      {
        v46 = v45;
        sub_257C69A6C();
        v47 = sub_257ECF4C0();

        [v46 setText_];
      }

      v48 = &v11[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity];
      memcpy(v54, &v11[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity], 0x128uLL);
      if (sub_257C108C4(v54) != 1)
      {
        if ((v35 ^ v48[78]))
        {
          v49 = 0;
        }

        else
        {
          v49 = 3;
        }

        [v10 setAccessoryType_];
        [v10 setAccessoryView_];
      }
    }

    return v10;
  }

LABEL_25:
  if (v7 == 2)
  {
    type metadata accessor for UIStepperLengthCell();
    if (swift_dynamicCastClass())
    {
      v27 = &v11[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity];
      memcpy(v54, &v11[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity], 0x128uLL);
      if (sub_257C108C4(v54) != 1)
      {
        v28 = v27[78];
        memcpy(v53, v27, sizeof(v53));
        if (sub_257C108C4(v53) != 1)
        {
          v29 = objc_opt_self();
          v10 = v10;
          v30 = &selRef_feet;
          if (!v28)
          {
            v30 = &selRef_meters;
          }

          v31 = [v29 *v30];
          sub_257BD2C2C(0, &qword_27F8F58F0);
          sub_257ECC740();
          v32 = swift_allocObject();
          *(v32 + 16) = v11;
          v33 = v11;
          sub_257D3DB54(v4, sub_257D4E288, v32);

          (*(v51 + 8))(v4, v2);
        }
      }
    }

    return v10;
  }

  v36 = *&v11[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_availableDetectionFeedbacks];
  result = sub_257ECCE60();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v36 + 16))
  {
    v38 = *(v36 + result + 32);
    v39 = [v10 textLabel];
    if (v39)
    {
      v40 = v39;
      sub_257C69F7C();
      v41 = sub_257ECF4C0();

      [v40 setText_];
    }

    v42 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    v43 = &v11[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity];
    memcpy(v54, &v11[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity], 0x128uLL);
    if (sub_257C108C4(v54) != 1)
    {
      [v42 setOn_];
      v42 = v42;
      [v42 setTag_];
      [v42 addTarget:v11 action:sel_didToggleFeedbackSwitch_ forControlEvents:4096];
      [v10 setAccessoryView_];

      [v10 setAccessoryType_];
    }

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_257D4D594(double a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_257CE1F54(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_257D4D714(void *a1)
{
  v2 = v1;
  sub_257D4C3C4();
  result = sub_257C6B1C0([a1 tag]);
  if (result != 4)
  {
    v5 = result;
    v6 = v1 + OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity;
    memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity), 0x128uLL);
    result = sub_257C108C4(__dst);
    if (result != 1)
    {
      v7 = *(v6 + 88);

      if ([a1 isOn])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6910);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_257ED6D30;
        *(inited + 32) = v5;
        sub_257EB10F4(inited);
        sub_257D4D8E4(v7);
      }

      else
      {
        v9 = *(v7 + 16);
        if (v9)
        {
          v10 = (v7 + 32);
          v11 = MEMORY[0x277D84F90];
          do
          {
            v15 = *v10++;
            v14 = v15;
            if (v15 != v5)
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

        sub_257D4D8E4(v11);
      }
    }
  }

  return result;
}

uint64_t sub_257D4D8E4(uint64_t a1)
{
  sub_257D4C3C4();
  v7 = a1;

  sub_257D6D234(&v7);
  v3 = v7;
  v4 = v1 + OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity;
  memcpy(__dst, (v1 + OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity), 0x128uLL);
  if (sub_257C108C4(__dst) == 1 || (sub_257D7430C(*(v4 + 88), v3) & 1) != 0 || !swift_unknownObjectWeakLoadStrong())
  {
  }

  sub_257CE1E14(v3);

  return swift_unknownObjectRelease();
}

id sub_257D4DA5C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(unint64_t, void))
{
  sub_257D4E23C(a4, a5);
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

void sub_257D4DB90(void *a1)
{
  v2 = v1;
  v4 = sub_257ECCDF0();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v36 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_257ECDA30();
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECCEB0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257D4C3C4();
  v13 = sub_257ECCE30();
  v39 = [a1 cellForRowAtIndexPath_];

  if (!v39)
  {
    return;
  }

  v14 = sub_257ECCE30();
  [a1 deselectRowAtIndexPath:v14 animated:1];

  if (sub_257ECCEA0() == 1)
  {
    v15 = sub_257ECCE60();
    if (!v15)
    {
      v16 = 0;
LABEL_10:
      v18 = v2 + OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity;
      memcpy(v41, (v2 + OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_activity), 0x128uLL);
      if (sub_257C108C4(v41) != 1 && v16 != *(v18 + 78))
      {
        v32[1] = OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_257CE1DFC(v16);
          swift_unknownObjectRelease();
        }

        v33 = v16;
        v34 = (v10 + 8);
        MEMORY[0x259C6F970](byte_286905A00, 1);
        v19 = sub_257ECCE30();
        v20 = [a1 cellForRowAtIndexPath_];

        if (v20)
        {
          [v20 setAccessoryType_];
        }

        v21 = *v34;
        (*v34)(v12, v9);
        MEMORY[0x259C6F970](byte_286905A01, 1);
        v22 = sub_257ECCE30();
        v23 = [a1 cellForRowAtIndexPath_];

        if (v23)
        {
          [v23 setAccessoryType_];
        }

        v21(v12, v9);
        [v39 setAccessoryType_];
        sub_257ECD420();
        v24 = sub_257ECDA20();
        v25 = sub_257ECFBD0();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = v33;
          v27 = swift_slowAlloc();
          *v27 = 134217984;
          *(v27 + 4) = v26;
          _os_log_impl(&dword_257BAC000, v24, v25, "New people detection unit: %ld", v27, 0xCu);
          MEMORY[0x259C74820](v27, -1, -1);
        }

        (*(v35 + 8))(v8, v6);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v28 = 2.0;
          if (v33)
          {
            v28 = 6.0;
          }

          sub_257CE1F54(v28);
          swift_unknownObjectRelease();
        }

        [a1 beginUpdates];
        v40 = &unk_286905A08;
        sub_257C108DC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D80);
        sub_257C10934();
        v29 = v36;
        v30 = v38;
        sub_257ED0180();
        v31 = sub_257ECCDE0();
        (*(v37 + 8))(v29, v30);
        [a1 reloadSections:v31 withRowAnimation:100];

        [a1 endUpdates];
      }

      return;
    }

    if (v15 == 1)
    {
      v16 = 1;
      goto LABEL_10;
    }
  }

  v17 = v39;
}

uint64_t sub_257D4E23C(unint64_t a1, uint64_t (*a2)(unint64_t, void))
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

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257D4E290()
{
  v1 = [v0 metadata];
  v2 = sub_257ECF3D0();

  v3 = sub_257ECF500();
  if (!*(v2 + 16))
  {

    goto LABEL_6;
  }

  v5 = sub_257C03F6C(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_6:

    return 0;
  }

  sub_257BE41F4(*(v2 + 56) + 32 * v5, v10);

  if (swift_dynamicCast())
  {
    return sub_257D06454(v9);
  }

  return 0;
}

unint64_t sub_257D4E3A8()
{
  type metadata accessor for MAGAdvancedEventHandler();
  v0 = swift_allocObject();
  result = sub_257BE96E8(MEMORY[0x277D84F90]);
  *(v0 + 16) = result;
  qword_27F8F87A0 = v0;
  return result;
}

uint64_t static MAGAutomationSupport.advancedEventHandler.getter()
{
  if (qword_27F8F4640 != -1)
  {
    swift_once();
  }

  return sub_257ECC3F0();
}

void sub_257D4E46C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_257ECF4C0();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_27F8F87A8 = v2;
  }

  else
  {
    __break(1u);
  }
}

id static MAGAutomationSupport.magnifierDefault.getter()
{
  if (qword_27F8F4648 != -1)
  {
    swift_once();
  }

  v1 = qword_27F8F87A8;

  return v1;
}

uint64_t static MAGAutomationSupport.detectionModeAutomationRunning.setter(char a1)
{
  result = swift_beginAccess();
  byte_27F8F87B0 = a1;
  return result;
}

uint64_t static MAGAutomationSupport.freezeFrameAutomationURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F8F4648 != -1)
  {
    swift_once();
  }

  v2 = qword_27F8F87A8;
  v3 = sub_257ECF4C0();
  v4 = [v2 stringForKey_];

  if (!v4)
  {
    v14 = sub_257ECCB70();
    v10 = *(*(v14 - 8) + 56);
    v11 = v14;
    v12 = a1;
    v13 = 1;
    goto LABEL_9;
  }

  v5 = sub_257ECF500();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    sub_257ECCAC0();

    v9 = sub_257ECCB70();
    v10 = *(*(v9 - 8) + 56);
    v11 = v9;
    v12 = a1;
    v13 = 0;
LABEL_9:

    return v10(v12, v13, 1, v11);
  }

  v16 = sub_257ECCB70();
  (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
}

BOOL static MAGAutomationSupport.freezeFrameAutomationEnabled.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  if (!os_variant_has_internal_ui())
  {
    return 0;
  }

  static MAGAutomationSupport.freezeFrameAutomationURL.getter(v2);
  v3 = sub_257ECCB70();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3) != 1;
  sub_257C1C684(v2);
  return v4;
}

void static MAGAutomationSupport.clearFreezeFramePhoto()()
{
  if (qword_27F8F4648 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8F87A8;
  v1 = sub_257ECF4C0();
  [v0 removeObjectForKey_];
}

uint64_t static MAGAutomationSupport.isAutomationConfigured.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  if (_s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0())
  {
    return 1;
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    static MAGAutomationSupport.freezeFrameAutomationURL.getter(v2);
    v4 = sub_257ECCB70();
    v5 = (*(*(v4 - 8) + 48))(v2, 1, v4) != 1;
    sub_257C1C684(v2);
    return v5;
  }

  return result;
}

uint64_t _s16MagnifierSupport013MAGAutomationB0V23detectionModeReplayPathSSSgvgZ_0()
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD3C0();
  v4 = sub_257ECDA20();
  v5 = sub_257ECFBC0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_257BF1FC8(0xD000000000000020, 0x8000000257EF81A0, &v14);
    _os_log_impl(&dword_257BAC000, v4, v5, "Checking for %s default", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x259C74820](v7, -1, -1);
    MEMORY[0x259C74820](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  if (qword_27F8F4648 != -1)
  {
    swift_once();
  }

  v8 = qword_27F8F87A8;
  v9 = sub_257ECF4C0();
  v10 = [v8 stringForKey_];

  if (!v10)
  {
    return 0;
  }

  v11 = sub_257ECF500();

  return v11;
}

uint64_t _s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0()
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = os_variant_has_internal_ui();
  if (result)
  {
    v5 = _s16MagnifierSupport013MAGAutomationB0V23detectionModeReplayPathSSSgvgZ_0();
    if (!v6)
    {
      return 0;
    }

    v7 = v5;
    v8 = v6;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      sub_257ECD3C0();
      v10 = sub_257ECDA20();
      v11 = sub_257ECFBC0();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_257BAC000, v10, v11, "Automation is enabled", v12, 2u);
        MEMORY[0x259C74820](v12, -1, -1);
      }

      (*(v1 + 8))(v3, v0);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void _s16MagnifierSupport013MAGAutomationB0V9setReplay2toy10Foundation3URLV_tFZ_0()
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_257ECCB40();
  v6 = v5;
  sub_257ECD3C0();

  v7 = sub_257ECDA20();
  v8 = sub_257ECFBC0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_257BF1FC8(v4, v6, &v15);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x259C74820](v10, -1, -1);
    MEMORY[0x259C74820](v9, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  if (qword_27F8F4648 != -1)
  {
    swift_once();
  }

  v11 = qword_27F8F87A8;
  v12 = sub_257ECF4C0();

  v13 = sub_257ECF4C0();
  [v11 setObject:v12 forKey:v13];
}

uint64_t _s16MagnifierSupport013MAGAutomationB0V16clearReplayVideoyyFZ_0()
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F8F4648 != -1)
  {
    swift_once();
  }

  v4 = qword_27F8F87A8;
  v5 = sub_257ECF4C0();
  [v4 removeObjectForKey_];

  sub_257ECD3C0();
  v6 = sub_257ECDA20();
  v7 = sub_257ECFBC0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_257BAC000, v6, v7, "Cleared replay video", v8, 2u);
    MEMORY[0x259C74820](v8, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

void _s16MagnifierSupport013MAGAutomationB0V19setFreezeFramePhoto2toy10Foundation3URLV_tFZ_0()
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_257ECCB40();
  v6 = v5;
  sub_257ECD3C0();

  v7 = sub_257ECDA20();
  v8 = sub_257ECFBC0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_257BF1FC8(v4, v6, &v15);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x259C74820](v10, -1, -1);
    MEMORY[0x259C74820](v9, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  if (qword_27F8F4648 != -1)
  {
    swift_once();
  }

  v11 = qword_27F8F87A8;
  v12 = sub_257ECF4C0();

  v13 = sub_257ECF4C0();
  [v11 setObject:v12 forKey:v13];
}

uint64_t sub_257D4F488(uint64_t a1, int a2)
{
  v5 = sub_257ECF120();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v60 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;

  v8 = 0;
  sub_257D6D3DC(&v66, sub_257C66F84);
  v57 = a2;
  v58 = v6;
  v59 = v5;
  v9 = v66;
  v61 = v2;
  v10 = (v2 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedObjectUnderstandingFeedbacks);
  swift_beginAccess();
  v11 = v10[1];
  v12 = v10[2];
  v66 = *v10;
  v67 = v11;
  v68 = v12;
  v13 = qword_2815447E0;

  if (v13 != -1)
  {
    v14 = swift_once();
  }

  v15 = qword_2815447E8;
  MEMORY[0x28223BE20](v14);
  *(&v56 - 2) = &v66;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90);
  sub_257ECFD50();

  v17 = sub_257D55F54(v70[0], v9);

  v56 = v16;
  if ((v17 & 1) == 0)
  {
    v19 = v10[1];
    v20 = v10[2];
    v66 = *v10;
    v67 = v19;
    v68 = v20;
    MEMORY[0x28223BE20](v18);
    *(&v56 - 2) = &v66;

    v21 = v15;
    sub_257ECFD50();

    v22 = sub_257C55DA0(v70[0]);

    v24 = sub_257C55DA0(v23);

    v66 = v22;
    sub_257D6DA4C(v24, sub_257C4B9F4, sub_257C4D570);
    v25 = sub_257C592DC(1, v66);

    if (v57)
    {
      v27 = v58;
      v26 = v59;
      if (v25)
      {
        v28 = v61 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSpeechFeedbackWasModified;
        swift_beginAccess();
        LOBYTE(v70[0]) = 1;
        v29 = v60;
        v30 = sub_257ECF110();
        MEMORY[0x28223BE20](v30);
        *(&v56 - 2) = v70;
        *(&v56 - 1) = v28;
        v15 = v21;
        sub_257ECFD40();
        (*(v27 + 8))(v29, v26);
        swift_endAccess();
        v31 = v9;
      }

      else
      {
        v31 = v9;
        v15 = v21;
      }
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v66) = v25 & 1;
      sub_257ECC3F0();
      sub_257ECDD70();
      v31 = v9;
      v15 = v21;
      v27 = v58;
      v26 = v59;
    }

    swift_beginAccess();
    v70[0] = v31;
    sub_257ECC3F0();
    v32 = v60;
    v33 = sub_257ECF110();
    MEMORY[0x28223BE20](v33);
    *(&v56 - 2) = v70;
    *(&v56 - 1) = v10;
    sub_257ECFD40();
    (*(v27 + 8))(v32, v26);

    swift_endAccess();
  }

  v34 = v61;
  if (!*(v61 + 40))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v35 = *(v61 + 64);
  v36 = swift_beginAccess();
  v37 = v35[16];
  v38 = v35[17];
  v39 = v35[18];
  v66 = v35[15];
  v67 = v37;
  v68 = v38;
  v69 = v39;
  MEMORY[0x28223BE20](v36);
  *(&v56 - 2) = &v66;

  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
  sub_257ECFD50();

  v40 = v63;
  if (!v63)
  {
  }

  v60 = v15;
  if (!*(v34 + 40))
  {
    goto LABEL_22;
  }

  v41 = v62;
  v42 = *(v34 + 64);
  v43 = swift_beginAccess();
  v44 = v42[12];
  v45 = v42[13];
  v62 = v42[11];
  v63 = v44;
  v64 = v45;
  MEMORY[0x28223BE20](v43);
  *(&v56 - 2) = &v62;
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
  sub_257ECFD50();

  v46 = v65;
  if (!*(v65 + 16) || (v47 = sub_257C03F6C(v41, v40), (v48 & 1) == 0))
  {
  }

  v49 = *(*(v46 + 56) + 296 * v47 + 120);

  v51 = *v10;
  v52 = v10[1];
  v53 = v10[2];
  v62 = v51;
  v63 = v52;
  v64 = v53;
  MEMORY[0x28223BE20](v50);
  *(&v56 - 2) = &v62;

  sub_257ECFD50();

  v54 = sub_257D55F54(v49, v65);

  if (v54)
  {
  }

  v8 = *(v61 + 40);
  if (v8)
  {
    sub_257ECC3F0();
    sub_257ECC3F0();
    sub_257ECC3F0();
    swift_retain_n();
    sub_257ECC3F0();
    sub_257ECC3F0();

    sub_257D71D4C(v8);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v62) = 1;
    return sub_257ECDD70();
  }

LABEL_23:
  __break(1u);

  __break(1u);
  return result;
}

void sub_257D4FD54()
{
  v1 = sub_257ECF560();
  MEMORY[0x28223BE20](v1 - 8);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  v2 = sub_257ECC700();
  if (v0)
  {
  }

  else
  {
    v4 = v2;
    v5 = v3;

    sub_257ECF550();
    sub_257ECF520();
    if (v6)
    {
      v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v8 = sub_257ECF4C0();
      v9 = [v7 initWithSuiteName_];

      if (v9)
      {
        v10 = sub_257ECF4C0();

        v11 = sub_257ECF4C0();

        [v9 setValue:v10 forKey:v11];
        sub_257BF2550(v4, v5);
      }

      else
      {
        sub_257BF2550(v4, v5);
      }
    }

    else
    {
      sub_257BF2550(v4, v5);
    }
  }
}

void sub_257D4FF64()
{
  v1 = sub_257ECF560();
  MEMORY[0x28223BE20](v1 - 8);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  v2 = sub_257ECC700();
  if (v0)
  {
  }

  else
  {
    v4 = v2;
    v5 = v3;

    sub_257ECF550();
    sub_257ECF520();
    if (v6)
    {
      v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v8 = sub_257ECF4C0();
      v9 = [v7 initWithSuiteName_];

      if (v9)
      {
        v10 = sub_257ECF4C0();

        v11 = sub_257ECF4C0();

        [v9 setValue:v10 forKey:v11];
        sub_257BF2550(v4, v5);
      }

      else
      {
        sub_257BF2550(v4, v5);
      }
    }

    else
    {
      sub_257BF2550(v4, v5);
    }
  }
}

void sub_257D50170(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  v8 = sub_257ECF560();
  MEMORY[0x28223BE20](v8 - 8);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  a5();
  v9 = sub_257ECC700();
  if (v5)
  {
  }

  else
  {
    v11 = v9;
    v12 = v10;

    sub_257ECF550();
    sub_257ECF520();
    if (v13)
    {
      v14 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v15 = sub_257ECF4C0();
      v16 = [v14 initWithSuiteName_];

      if (v16)
      {
        v17 = sub_257ECF4C0();

        v18 = sub_257ECF4C0();

        [v16 setValue:v17 forKey:v18];
        sub_257BF2550(v11, v12);
      }

      else
      {
        sub_257BF2550(v11, v12);
      }
    }

    else
    {
      sub_257BF2550(v11, v12);
    }
  }
}

void sub_257D50398()
{
  v1 = sub_257ECF560();
  MEMORY[0x28223BE20](v1 - 8);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  sub_257D72940();
  v2 = sub_257ECC700();
  if (v0)
  {
  }

  else
  {
    v4 = v2;
    v5 = v3;

    sub_257ECF550();
    sub_257ECF520();
    if (v6)
    {
      v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v8 = sub_257ECF4C0();
      v9 = [v7 initWithSuiteName_];

      if (v9)
      {
        v10 = sub_257ECF4C0();

        v11 = sub_257ECF4C0();

        [v9 setValue:v10 forKey:v11];
        sub_257BF2550(v4, v5);
      }

      else
      {
        sub_257BF2550(v4, v5);
      }
    }

    else
    {
      sub_257BF2550(v4, v5);
    }
  }
}

void sub_257D505A8()
{
  v1 = sub_257ECF560();
  MEMORY[0x28223BE20](v1 - 8);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90);
  sub_257D72E50(&qword_27F8F89D0, &qword_27F8F9D90);
  v2 = sub_257ECC700();
  if (v0)
  {
  }

  else
  {
    v4 = v2;
    v5 = v3;

    sub_257ECF550();
    sub_257ECF520();
    if (v6)
    {
      v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v8 = sub_257ECF4C0();
      v9 = [v7 initWithSuiteName_];

      if (v9)
      {
        v10 = sub_257ECF4C0();

        v11 = sub_257ECF4C0();

        [v9 setValue:v10 forKey:v11];
        sub_257BF2550(v4, v5);
      }

      else
      {
        sub_257BF2550(v4, v5);
      }
    }

    else
    {
      sub_257BF2550(v4, v5);
    }
  }
}

void sub_257D507F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  v8 = sub_257ECF560();
  MEMORY[0x28223BE20](v8 - 8);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  a5();
  v9 = sub_257ECC700();
  if (v5)
  {
  }

  else
  {
    v11 = v9;
    v12 = v10;

    sub_257ECF550();
    sub_257ECF520();
    if (v13)
    {
      v14 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v15 = sub_257ECF4C0();
      v16 = [v14 initWithSuiteName_];

      if (v16)
      {
        v17 = sub_257ECF4C0();

        v18 = sub_257ECF4C0();

        [v16 setValue:v17 forKey:v18];
        sub_257BF2550(v11, v12);
      }

      else
      {
        sub_257BF2550(v11, v12);
      }
    }

    else
    {
      sub_257BF2550(v11, v12);
    }
  }
}

void sub_257D50A1C()
{
  v1 = sub_257ECF560();
  MEMORY[0x28223BE20](v1 - 8);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  sub_257D720A8();
  v2 = sub_257ECC700();
  if (v0)
  {
  }

  else
  {
    v4 = v2;
    v5 = v3;

    sub_257ECF550();
    sub_257ECF520();
    if (v6)
    {
      v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v8 = sub_257ECF4C0();
      v9 = [v7 initWithSuiteName_];

      if (v9)
      {
        v10 = sub_257ECF4C0();

        v11 = sub_257ECF4C0();

        [v9 setValue:v10 forKey:v11];
        sub_257BF2550(v4, v5);
      }

      else
      {
        sub_257BF2550(v4, v5);
      }
    }

    else
    {
      sub_257BF2550(v4, v5);
    }
  }
}

void sub_257D50C44(uint64_t a1, uint64_t a2)
{
  v5 = sub_257ECF560();
  MEMORY[0x28223BE20](v5 - 8);
  v16 = a1;
  v17 = a2;
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
  sub_257D72E50(&qword_27F8F8970, &unk_27F8F4D70);
  v6 = sub_257ECC700();
  if (v2)
  {
  }

  else
  {
    v8 = v6;
    v9 = v7;

    sub_257ECF550();
    sub_257ECF520();
    if (v10)
    {
      v11 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v12 = sub_257ECF4C0();
      v13 = [v11 initWithSuiteName_];

      if (v13)
      {
        v14 = sub_257ECF4C0();

        v15 = sub_257ECF4C0();

        [v13 setValue:v14 forKey:v15];
        sub_257BF2550(v8, v9);
      }

      else
      {
        sub_257BF2550(v8, v9);
      }
    }

    else
    {
      sub_257BF2550(v8, v9);
    }
  }
}

void sub_257D50E94()
{
  v1 = sub_257ECF560();
  MEMORY[0x28223BE20](v1 - 8);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  v2 = sub_257ECC700();
  if (v0)
  {
  }

  else
  {
    v4 = v2;
    v5 = v3;

    sub_257ECF550();
    sub_257ECF520();
    if (v6)
    {
      v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v8 = sub_257ECF4C0();
      v9 = [v7 initWithSuiteName_];

      if (v9)
      {
        v10 = sub_257ECF4C0();

        v11 = sub_257ECF4C0();

        [v9 setValue:v10 forKey:v11];
        sub_257BF2550(v4, v5);
      }

      else
      {
        sub_257BF2550(v4, v5);
      }
    }

    else
    {
      sub_257BF2550(v4, v5);
    }
  }
}

void sub_257D510A4()
{
  v1 = sub_257ECF560();
  MEMORY[0x28223BE20](v1 - 8);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  sub_257D71E1C();
  v2 = sub_257ECC700();
  if (v0)
  {
  }

  else
  {
    v4 = v2;
    v5 = v3;

    sub_257ECF550();
    sub_257ECF520();
    if (v6)
    {
      v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v8 = sub_257ECF4C0();
      v9 = [v7 initWithSuiteName_];

      if (v9)
      {
        v10 = sub_257ECF4C0();

        v11 = sub_257ECF4C0();

        [v9 setValue:v10 forKey:v11];
        sub_257BF2550(v4, v5);
      }

      else
      {
        sub_257BF2550(v4, v5);
      }
    }

    else
    {
      sub_257BF2550(v4, v5);
    }
  }
}

void sub_257D512B4()
{
  v1 = sub_257ECF560();
  MEMORY[0x28223BE20](v1 - 8);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  sub_257BF96A4();
  v2 = sub_257ECC700();
  if (v0)
  {
  }

  else
  {
    v4 = v2;
    v5 = v3;

    sub_257ECF550();
    sub_257ECF520();
    if (v6)
    {
      v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v8 = sub_257ECF4C0();
      v9 = [v7 initWithSuiteName_];

      if (v9)
      {
        v10 = sub_257ECF4C0();

        v11 = sub_257ECF4C0();

        [v9 setValue:v10 forKey:v11];
        sub_257BF2550(v4, v5);
      }

      else
      {
        sub_257BF2550(v4, v5);
      }
    }

    else
    {
      sub_257BF2550(v4, v5);
    }
  }
}

void sub_257D5152C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_257ECF560();
  MEMORY[0x28223BE20](v5 - 8);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  a3();
  v6 = sub_257ECC700();
  if (v3)
  {
  }

  else
  {
    v8 = v6;
    v9 = v7;

    sub_257ECF550();
    sub_257ECF520();
    if (v10)
    {
      v11 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v12 = sub_257ECF4C0();
      v13 = [v11 initWithSuiteName_];

      if (v13)
      {
        v14 = sub_257ECF4C0();

        v15 = sub_257ECF4C0();

        [v13 setValue:v14 forKey:v15];
        sub_257BF2550(v8, v9);
      }

      else
      {
        sub_257BF2550(v8, v9);
      }
    }

    else
    {
      sub_257BF2550(v8, v9);
    }
  }
}

void sub_257D51740()
{
  v1 = sub_257ECF560();
  MEMORY[0x28223BE20](v1 - 8);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E70);
  sub_257D72EF4();
  v2 = sub_257ECC700();
  if (v0)
  {
  }

  else
  {
    v4 = v2;
    v5 = v3;

    sub_257ECF550();
    sub_257ECF520();
    if (v6)
    {
      v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v8 = sub_257ECF4C0();
      v9 = [v7 initWithSuiteName_];

      if (v9)
      {
        v10 = sub_257ECF4C0();

        v11 = sub_257ECF4C0();

        [v9 setValue:v10 forKey:v11];
        sub_257BF2550(v4, v5);
      }

      else
      {
        sub_257BF2550(v4, v5);
      }
    }

    else
    {
      sub_257BF2550(v4, v5);
    }
  }
}

uint64_t sub_257D519D8(char *a1, int a2)
{
  v5 = sub_257ECF120();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;

  v9 = 0;
  sub_257CF41A8(&v62);
  v52 = a2;
  v53 = v8;
  v54 = v6;
  v55 = v5;
  v56 = v2;
  v10 = v62;
  v11 = &v2[OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedTextDetectionFeedbacks];
  swift_beginAccess();
  v12 = *(v11 + 1);
  v13 = *(v11 + 2);
  v62 = *v11;
  v63 = v12;
  v64 = v13;
  v14 = qword_2815447E0;

  if (v14 != -1)
  {
    v15 = swift_once();
  }

  v16 = qword_2815447E8;
  MEMORY[0x28223BE20](v15);
  v51[-2] = &v62;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5540);
  sub_257ECFD50();

  v18 = sub_257D55EE0(v66, v10);

  v20 = v10;
  v57 = v16;
  v51[1] = v17;
  if (v18)
  {
    v21 = v56;
    goto LABEL_11;
  }

  v22 = *(v11 + 1);
  v23 = *(v11 + 2);
  v62 = *v11;
  v63 = v22;
  v64 = v23;
  MEMORY[0x28223BE20](v19);
  v51[-2] = &v62;

  sub_257ECFD50();

  v20 = v10;
  v24 = sub_257C561B4(v66);

  v26 = sub_257C561B4(v25);

  v62 = v24;
  sub_257D6D8B0(v26, sub_257C4BFB8, sub_257C4D844);
  v27 = sub_257C592E0(1, v62);

  if ((v52 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v62) = v27 & 1;
    v21 = v56;
    sub_257ECC3F0();
    goto LABEL_9;
  }

  v21 = v56;
  if (v27)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v62) = 1;
    sub_257ECC3F0();
LABEL_9:
    sub_257ECDD70();
  }

  swift_beginAccess();
  v66 = v10;
  sub_257ECC3F0();
  v28 = v53;
  v29 = sub_257ECF110();
  MEMORY[0x28223BE20](v29);
  v51[-2] = &v66;
  v51[-1] = v11;
  sub_257ECFD40();
  (*(v54 + 8))(v28, v55);

  swift_endAccess();
LABEL_11:
  if (!*(v21 + 5))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v30 = *(v21 + 8);
  v31 = swift_beginAccess();
  v32 = v30[16];
  v33 = v30[17];
  v34 = v30[18];
  v62 = v30[15];
  v63 = v32;
  v64 = v33;
  v65 = v34;
  MEMORY[0x28223BE20](v31);
  v51[-2] = &v62;

  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
  sub_257ECFD50();

  v35 = v59;
  if (!v59)
  {
  }

  v56 = v20;
  if (!*(v21 + 5))
  {
    goto LABEL_23;
  }

  v36 = v58;
  v37 = *(v21 + 8);
  v38 = swift_beginAccess();
  v39 = v37[12];
  v40 = v37[13];
  v58 = v37[11];
  v59 = v39;
  v60 = v40;
  MEMORY[0x28223BE20](v38);
  v51[-2] = &v58;
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
  sub_257ECFD50();

  v41 = v61;
  if (!*(v61 + 16) || (v42 = sub_257C03F6C(v36, v35), (v43 & 1) == 0))
  {
  }

  v44 = *(*(v41 + 56) + 296 * v42 + 200);

  v46 = *v11;
  v47 = *(v11 + 1);
  v48 = *(v11 + 2);
  v58 = v46;
  v59 = v47;
  v60 = v48;
  MEMORY[0x28223BE20](v45);
  v51[-2] = &v58;

  sub_257ECFD50();

  v49 = sub_257D55EE0(v44, v61);

  if (v49)
  {
  }

  v9 = *(v21 + 5);
  if (v9)
  {
    sub_257ECC3F0();
    sub_257ECC3F0();
    sub_257ECC3F0();
    swift_retain_n();
    sub_257ECC3F0();
    sub_257ECC3F0();

    sub_257D71D4C(v9);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v58) = 1;
    return sub_257ECDD70();
  }

LABEL_24:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_257D521F8(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v18 = MEMORY[0x277D84FA0];
    v5 = result + 32;
    do
    {
      v6 = *(v5 + 8 * v4);
      v7 = *(v6 + 16);
      if (v7)
      {

        v8 = 32;
        do
        {
          sub_257C4B448(&v17, *(v6 + v8++));
          --v7;
        }

        while (v7);
      }

      ++v4;
    }

    while (v4 != v3);
    v9 = 0;
    v10 = v18;
    v11 = *(a2 + 16);
    v12 = a2 + 32;
    a2 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v11 == v9)
      {

        return a2;
      }

      if (v9 >= v11)
      {
        break;
      }

      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_22;
      }

      v14 = *(v12 + v9);
      result = sub_257C401E8(v14, v10);
      ++v9;
      if ((result & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v18 = a2;
        if ((result & 1) == 0)
        {
          result = sub_257BF25A4(0, *(a2 + 16) + 1, 1);
          a2 = v18;
        }

        v16 = *(a2 + 16);
        v15 = *(a2 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_257BF25A4((v15 > 1), v16 + 1, 1);
          a2 = v18;
        }

        *(a2 + 16) = v16 + 1;
        *(a2 + v16 + 32) = v14;
        v9 = v13;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {

    return a2;
  }

  return result;
}

uint64_t sub_257D523FC(uint64_t a1, int a2)
{
  v5 = sub_257ECF120();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v60 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;

  v8 = 0;
  sub_257D6D3DC(&v66, sub_257C67094);
  v57 = a2;
  v58 = v6;
  v59 = v5;
  v9 = v66;
  v61 = v2;
  v10 = (v2 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedDoorDetectionFeedbacks);
  swift_beginAccess();
  v11 = v10[1];
  v12 = v10[2];
  v66 = *v10;
  v67 = v11;
  v68 = v12;
  v13 = qword_2815447E0;

  if (v13 != -1)
  {
    v14 = swift_once();
  }

  v15 = qword_2815447E8;
  MEMORY[0x28223BE20](v14);
  *(&v56 - 2) = &v66;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5880);
  sub_257ECFD50();

  v17 = sub_257D55F54(v70[0], v9);

  v56 = v16;
  if ((v17 & 1) == 0)
  {
    v19 = v10[1];
    v20 = v10[2];
    v66 = *v10;
    v67 = v19;
    v68 = v20;
    MEMORY[0x28223BE20](v18);
    *(&v56 - 2) = &v66;

    v21 = v15;
    sub_257ECFD50();

    v22 = sub_257C561E4(v70[0]);

    v24 = sub_257C561E4(v23);

    v66 = v22;
    sub_257D6DA4C(v24, sub_257C4BFD4, sub_257C4D858);
    v25 = sub_257C592DC(1, v66);

    if (v57)
    {
      v27 = v58;
      v26 = v59;
      if (v25)
      {
        v28 = v61 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionSpeechFeedbackWasModified;
        swift_beginAccess();
        LOBYTE(v70[0]) = 1;
        v29 = v60;
        v30 = sub_257ECF110();
        MEMORY[0x28223BE20](v30);
        *(&v56 - 2) = v70;
        *(&v56 - 1) = v28;
        v15 = v21;
        sub_257ECFD40();
        (*(v27 + 8))(v29, v26);
        swift_endAccess();
        v31 = v9;
      }

      else
      {
        v31 = v9;
        v15 = v21;
      }
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v66) = v25 & 1;
      sub_257ECC3F0();
      sub_257ECDD70();
      v31 = v9;
      v15 = v21;
      v27 = v58;
      v26 = v59;
    }

    swift_beginAccess();
    v70[0] = v31;
    sub_257ECC3F0();
    v32 = v60;
    v33 = sub_257ECF110();
    MEMORY[0x28223BE20](v33);
    *(&v56 - 2) = v70;
    *(&v56 - 1) = v10;
    sub_257ECFD40();
    (*(v27 + 8))(v32, v26);

    swift_endAccess();
  }

  v34 = v61;
  if (!*(v61 + 40))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v35 = *(v61 + 64);
  v36 = swift_beginAccess();
  v37 = v35[16];
  v38 = v35[17];
  v39 = v35[18];
  v66 = v35[15];
  v67 = v37;
  v68 = v38;
  v69 = v39;
  MEMORY[0x28223BE20](v36);
  *(&v56 - 2) = &v66;

  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
  sub_257ECFD50();

  v40 = v63;
  if (!v63)
  {
  }

  v60 = v15;
  if (!*(v34 + 40))
  {
    goto LABEL_22;
  }

  v41 = v62;
  v42 = *(v34 + 64);
  v43 = swift_beginAccess();
  v44 = v42[12];
  v45 = v42[13];
  v62 = v42[11];
  v63 = v44;
  v64 = v45;
  MEMORY[0x28223BE20](v43);
  *(&v56 - 2) = &v62;
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
  sub_257ECFD50();

  v46 = v65;
  if (!*(v65 + 16) || (v47 = sub_257C03F6C(v41, v40), (v48 & 1) == 0))
  {
  }

  v49 = *(*(v46 + 56) + 296 * v47 + 112);

  v51 = *v10;
  v52 = v10[1];
  v53 = v10[2];
  v62 = v51;
  v63 = v52;
  v64 = v53;
  MEMORY[0x28223BE20](v50);
  *(&v56 - 2) = &v62;

  sub_257ECFD50();

  v54 = sub_257D55F54(v49, v65);

  if (v54)
  {
  }

  v8 = *(v61 + 40);
  if (v8)
  {
    sub_257ECC3F0();
    sub_257ECC3F0();
    sub_257ECC3F0();
    swift_retain_n();
    sub_257ECC3F0();
    sub_257ECC3F0();

    sub_257D71D4C(v8);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v62) = 1;
    return sub_257ECDD70();
  }

LABEL_23:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_257D52CC8(uint64_t a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = a1;

  sub_257D6D3DC(v20, sub_257C670E0);
  v17 = v3;
  v7 = v20[0];
  v8 = (v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedAttributes);
  swift_beginAccess();
  v9 = v8[1];
  v10 = v8[2];
  v18[0] = *v8;
  v18[1] = v9;
  v18[2] = v10;
  v11 = qword_2815447E0;

  if (v11 != -1)
  {
    v12 = swift_once();
  }

  MEMORY[0x28223BE20](v12);
  *(&v16 - 2) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5A90);
  sub_257ECFD50();

  v13 = sub_257D55F54(v19, v7);

  if (v13)
  {
  }

  swift_beginAccess();
  v19 = v7;
  v15 = sub_257ECF110();
  MEMORY[0x28223BE20](v15);
  *(&v16 - 2) = &v19;
  *(&v16 - 1) = v8;
  sub_257ECFD40();
  (*(v4 + 8))(v6, v17);

  return swift_endAccess();
}

uint64_t sub_257D52FAC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();
}

uint64_t sub_257D5304C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v43 = *(a3 + 264);
    v44 = *(a3 + 272);
    v41 = *(a3 + 248);
    v42 = *(a3 + 256);
    v39 = *(a3 + 243);
    v40 = *(a3 + 242);
    v37 = *(a3 + 240);
    v38 = *(a3 + 241);
    v3 = *(a3 + 232);
    v36 = *(a3 + 216);
    v34 = *(a3 + 200);
    v35 = *(a3 + 208);
    v33 = *(a3 + 192);
    v30 = *(a3 + 184);
    v29 = *(a3 + 176);
    v28 = *(a3 + 168);
    v27 = *(a3 + 162);
    v31 = *(a3 + 160);
    v32 = *(a3 + 161);
    v4 = *(a3 + 152);
    v26 = *(a3 + 136);
    v25 = *(a3 + 128);
    v5 = *(a3 + 112);
    v24 = *(a3 + 120);
    v7 = *(a3 + 96);
    v6 = *(a3 + 104);
    v8 = *(a3 + 88);
    v9 = *(a3 + 80);
    v22 = *(a3 + 77);
    v23 = *(a3 + 78);
    v10 = *(a3 + 76);
    v11 = *(a3 + 75);
    v12 = *(a3 + 74);
    v13 = *(a3 + 73);
    v14 = *(a3 + 72);
    v15 = *(a3 + 52);
    v16 = *(a3 + 48);
    v17 = *(a3 + 40);
    v18 = *(a3 + 24);
    v21 = *(a3 + 8);
    v19 = *(a3 + 32);
    v46 = result;

    sub_257D54F8C(__src);
    *&__src[1] = v21;
    __src[3] = v18;
    LOBYTE(__src[4]) = v19;

    __src[5] = v17;
    LODWORD(__src[6]) = v16;
    WORD2(__src[6]) = v15;
    LOBYTE(__src[9]) = v14;
    BYTE1(__src[9]) = v13;
    BYTE2(__src[9]) = v12;
    BYTE4(__src[9]) = v10;
    BYTE5(__src[9]) = v22;
    BYTE3(__src[9]) = v11;
    BYTE6(__src[9]) = v23;
    __src[10] = v9;

    __src[11] = v8;
    __src[12] = v7;
    __src[13] = v6;

    __src[14] = v5;

    __src[15] = v24;
    LOBYTE(__src[16]) = v25;
    *&__src[17] = v26;
    __src[19] = v4;
    BYTE2(__src[20]) = v27;

    __src[21] = v28;
    LOBYTE(__src[22]) = v29;

    __src[23] = v30;
    LOBYTE(__src[20]) = v31;
    BYTE1(__src[20]) = v32;

    __src[24] = v33;

    __src[25] = v34;

    __src[26] = v35;
    BYTE3(__src[30]) = v39;
    BYTE1(__src[30]) = v38;
    LOBYTE(__src[30]) = v37;
    *&__src[27] = v36;
    __src[29] = v3;
    BYTE2(__src[30]) = v40;

    __src[31] = v41;

    __src[32] = v42;

    __src[33] = v43;

    __src[34] = v44;
    BYTE1(__src[0]) = 1;
    memcpy(__dst, __src, 0x128uLL);
    swift_beginAccess();
    sub_257C09C58(__dst, v49);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49[0] = *(v47 + 112);
    *(v47 + 112) = 0x8000000000000000;
    sub_257EC6FE8(__dst, v46, a2, isUniquelyReferenced_nonNull_native);

    *(v47 + 112) = v49[0];
    swift_endAccess();
    memcpy(v49, __src, sizeof(v49));
    return sub_257C63C04(v49);
  }

  return result;
}

uint64_t sub_257D53434(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a2;
  v30 = a1;
  v4 = sub_257ECF120();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = (v2 + 11);
  swift_beginAccess();
  v7 = v2[12];
  v8 = v2[13];
  v36[0] = v2[11];
  v36[1] = v7;
  v36[2] = v8;
  v9 = qword_2815447E0;

  if (v9 != -1)
  {
    v10 = swift_once();
  }

  MEMORY[0x28223BE20](v10);
  *(&v27 - 2) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
  sub_257ECFD50();

  v11 = *(v35[0] + 16);

  if (!v11)
  {
    v12 = sub_257BE816C(MEMORY[0x277D84F90]);
    v13 = v31;
    swift_beginAccess();
    v35[0] = v12;
    v14 = sub_257ECF110();
    MEMORY[0x28223BE20](v14);
    *(&v27 - 2) = v35;
    *(&v27 - 1) = v13;
    sub_257ECFD40();
    (*(v28 + 8))(v6, v29);

    swift_endAccess();
  }

  swift_beginAccess();
  v15 = v3[14];
  v16 = v27;
  if (*(v15 + 16) && (v17 = sub_257C03F6C(v30, v27), (v18 & 1) != 0))
  {
    v19 = (*(v15 + 56) + 296 * v17);
    memcpy(v34, v19, 0x128uLL);
    memmove(v36, v19, 0x128uLL);
    CGSizeMake(v36);
    sub_257C09C58(v34, v35);
    memcpy(v35, v36, 0x128uLL);
  }

  else
  {
    sub_257C10998(v35);
  }

  swift_endAccess();
  v20 = swift_beginAccess();
  v36[0] = v3[11];
  *&v36[1] = *(v3 + 6);
  MEMORY[0x28223BE20](v20);
  *(&v27 - 2) = v36;
  sub_257ECFD50();
  v21 = v34[0];
  v33 = v34[0];
  memcpy(v34, v35, 0x128uLL);
  if (sub_257C108C4(v34) == 1)
  {
    sub_257D6F90C(v30, v16, v36);
    sub_257BE4084(v36, &unk_27F8F68B0);
    v22 = v33;
  }

  else
  {
    memcpy(v36, v35, 0x128uLL);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v21;
    sub_257EC6FE8(v36, v30, v16, isUniquelyReferenced_nonNull_native);
    v22 = v32;
    v33 = v32;
  }

  v32 = v22;
  v24 = sub_257ECF110();
  MEMORY[0x28223BE20](v24);
  *(&v27 - 2) = &v32;
  *(&v27 - 1) = v31;
  sub_257ECFD40();
  (*(v28 + 8))(v6, v29);

  swift_endAccess();
  v25 = sub_257BE816C(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v3[14] = v25;
}

uint64_t sub_257D53928()
{
  swift_beginAccess();
  v0 = qword_2815447E0;

  if (v0 != -1)
  {
    v1 = swift_once();
  }

  MEMORY[0x28223BE20](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0);
  sub_257ECFD50();

  v2 = swift_beginAccess();
  MEMORY[0x28223BE20](v2);

  sub_257ECFD50();

  v3 = sub_257D715D0(v5, v6);

  return v3;
}

uint64_t sub_257D53B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v75 = a3;
  v8 = sub_257ECF120();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v4;
  v12 = (v4 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__mainControls);
  swift_beginAccess();
  v83[0] = a1;
  v13 = qword_2815447E0;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_2815447E8;
  v15 = sub_257ECF110();
  MEMORY[0x28223BE20](v15);
  *(&v67 - 2) = v83;
  *(&v67 - 1) = v12;
  v70 = v12;
  v76 = v14;
  sub_257ECFD40();
  v16 = *(v9 + 8);
  v16(v11, v8);

  swift_endAccess();
  v17 = *(a2 + 16);
  v71 = a4;
  v73 = a2;
  if (v17 < 3)
  {
  }

  else
  {
    sub_257D6D668(a2, a2 + 32, 0, 5uLL);
    a2 = v18;
  }

  v19 = v77;
  v20 = (v77 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__primaryControls);
  swift_beginAccess();
  v83[0] = a2;
  v21 = sub_257ECF110();
  MEMORY[0x28223BE20](v21);
  *(&v67 - 2) = v83;
  *(&v67 - 1) = v20;
  v69 = v20;
  sub_257ECFD40();
  v16(v11, v8);

  swift_endAccess();
  v22 = (v19 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__secondaryControls);
  swift_beginAccess();
  v83[0] = v75;

  v23 = sub_257ECF110();
  MEMORY[0x28223BE20](v23);
  *(&v67 - 2) = v83;
  *(&v67 - 1) = v22;
  v68 = v22;
  sub_257ECFD40();
  v74 = 0;
  v16(v11, v8);

  swift_endAccess();
  v24 = sub_257ECF4C0();
  v25 = MGGetBoolAnswer();

  if (!v25)
  {
    goto LABEL_21;
  }

  v26 = (v73 + 32);
  v72 = 0x8000000257EF7780;
  v73 = 0x8000000257EF74D0;
  while (2)
  {
    if (v17)
    {
      switch(*v26)
      {
        case 4:
          goto LABEL_15;
        default:
          v27 = sub_257ED0640();

          ++v26;
          --v17;
          if ((v27 & 1) == 0)
          {
            continue;
          }

          goto LABEL_16;
      }
    }

    break;
  }

  v28 = (v75 + 32);
  v29 = *(v75 + 16);
  v75 = 0xEA00000000006570;
  while (2)
  {
    if (v29)
    {
      switch(*v28)
      {
        case 4:
LABEL_15:

          break;
        default:
          v30 = sub_257ED0640();

          ++v28;
          --v29;
          if ((v30 & 1) == 0)
          {
            continue;
          }

          break;
      }

LABEL_16:
      v31 = (v71 + 32);
      v32 = *(v71 + 16);
      v75 = 0xEA00000000006570;
      while (2)
      {
        v34 = v32 == 0;
        if (v32)
        {
          switch(*v31)
          {
            case 4:

              goto LABEL_21;
            default:
              v33 = sub_257ED0640();

              ++v31;
              --v32;
              if ((v33 & 1) == 0)
              {
                continue;
              }

              break;
          }
        }

        break;
      }
    }

    else
    {
LABEL_21:
      v34 = 0;
    }

    break;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v82[0]) = v34;
  v35 = v77;
  sub_257ECC3F0();
  result = sub_257ECDD70();
  if (!*(v35 + 40))
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

  v37 = *(v35 + 64);
  v38 = swift_beginAccess();
  v39 = v37[16];
  v40 = v37[17];
  v41 = v37[18];
  v82[0] = v37[15];
  v82[1] = v39;
  v82[2] = v40;
  v82[3] = v41;
  MEMORY[0x28223BE20](v38);
  *(&v67 - 2) = v82;

  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
  sub_257ECFD50();

  v42 = v79;
  if (!v79)
  {
    return result;
  }

  if (!*(v35 + 40))
  {
    goto LABEL_37;
  }

  v43 = v78;
  v44 = *(v35 + 64);
  v45 = swift_beginAccess();
  v46 = v44[12];
  v47 = v44[13];
  v78 = v44[11];
  v79 = v46;
  v80 = v47;
  MEMORY[0x28223BE20](v45);
  *(&v67 - 2) = &v78;
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
  sub_257ECFD50();

  v48 = v81;
  if (!*(v81 + 16))
  {
    goto LABEL_32;
  }

  v49 = sub_257C03F6C(v43, v42);
  if ((v50 & 1) == 0)
  {
    goto LABEL_32;
  }

  v51 = (*(v48 + 56) + 296 * v49);
  v53 = v51[31];
  v52 = v51[32];
  v54 = v51[33];
  v55 = v51[34];

  v75 = v52;

  v74 = v54;

  v73 = v55;

  v57 = v70[1];
  v58 = v70[2];
  v78 = *v70;
  v79 = v57;
  v80 = v58;
  MEMORY[0x28223BE20](v56);
  *(&v67 - 2) = &v78;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20);
  sub_257ECFD50();

  LOBYTE(v57) = sub_257D55F54(v53, v81);

  if (v57)
  {
    v59 = v69[1];
    v60 = v69[2];
    v78 = *v69;
    v79 = v59;
    v80 = v60;
    MEMORY[0x28223BE20](result);
    *(&v67 - 2) = &v78;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0);
    sub_257ECFD50();
    v35 = v77;

    LOBYTE(v59) = sub_257D55FB0(v75, v81);

    if (v59)
    {
      v61 = v68[1];
      v62 = v68[2];
      v78 = *v68;
      v79 = v61;
      v80 = v62;
      MEMORY[0x28223BE20](result);
      *(&v67 - 2) = &v78;

      sub_257ECFD50();
      v35 = v77;

      v63 = sub_257D55FB0(v74, v81);

      if (v63)
      {
        v64 = sub_257D53928();
        v65 = sub_257D55FB0(v73, v64);

        if (v65)
        {

LABEL_32:
        }
      }
    }
  }

  v66 = *(v35 + 40);
  if (!v66)
  {
    goto LABEL_38;
  }

  sub_257D722A0(*(v35 + 40));

  sub_257ECC3F0();
  sub_257D71D4C(v66);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v78) = 1;
  return sub_257ECDD70();
}

uint64_t sub_257D54B08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = a1;
  v5 = sub_257ECF120();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = v2 + 15;
  swift_beginAccess();
  v8 = v2[16];
  v9 = v2[17];
  v10 = v2[18];
  v34 = v2[15];
  v35 = v8;
  v36 = v9;
  v37 = v10;
  v11 = qword_2815447E0;

  if (v11 != -1)
  {
    v12 = swift_once();
  }

  v13 = qword_2815447E8;
  MEMORY[0x28223BE20](v12);
  v25[-2] = &v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
  sub_257ECFD50();

  v25[1] = v13;
  v26 = a2;
  if (!v32)
  {
    goto LABEL_9;
  }

  if (v31 != v29 || v32 != a2)
  {
    v15 = sub_257ED0640();

    v14 = v28;
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_9:
    v18 = v27;
    goto LABEL_10;
  }

  v14 = v28;
LABEL_8:
  v16 = v25[0];
  swift_beginAccess();
  v31 = 0;
  v32 = 0;
  v17 = sub_257ECF110();
  MEMORY[0x28223BE20](v17);
  v25[-2] = &v31;
  v25[-1] = v16;
  sub_257ECFD40();
  v18 = v27;
  (*(v27 + 8))(v7, v14);
  swift_endAccess();
LABEL_10:
  v19 = swift_beginAccess();
  v20 = v3[12];
  v21 = v3[13];
  v34 = v3[11];
  v35 = v20;
  v36 = v21;
  MEMORY[0x28223BE20](v19);
  v25[-2] = &v34;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
  sub_257ECFD50();

  v33 = v30[1];
  sub_257D6F90C(v29, v26, &v34);
  sub_257BE4084(&v34, &unk_27F8F68B0);
  v22 = v33;
  swift_beginAccess();
  v30[0] = v22;
  v23 = sub_257ECF110();
  MEMORY[0x28223BE20](v23);
  v25[-2] = v30;
  v25[-1] = v3 + 11;
  sub_257ECFD40();
  (*(v18 + 8))(v7, v28);

  return swift_endAccess();
}

uint64_t sub_257D54F8C@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_257EDB790;
  *(a1 + 24) = 0x3FE0000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = &unk_286903738;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  v2 = sub_257CA930C();
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 53) = v3;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 71) = 0;
  *(a1 + 75) = 1;
  *(a1 + 77) = 0;
  if (qword_2815455E0 != -1)
  {
    swift_once();
  }

  *(a1 + 78) = byte_2815483A8;
  if (qword_281545508 != -1)
  {
    swift_once();
  }

  v4 = qword_281548370;
  *(a1 + 80) = qword_281548370;
  *(a1 + 88) = &unk_286903EA0;
  *(a1 + 96) = v4;
  *(a1 + 104) = v4;
  *(a1 + 112) = &unk_286903EC8;
  *(a1 + 120) = &unk_286903EF0;
  *(a1 + 128) = 1;
  *(a1 + 136) = xmmword_257EE5950;
  *(a1 + 152) = 0x3FA47AE147AE147BLL;
  *(a1 + 160) = 0;
  *(a1 + 162) = 1;
  *(a1 + 168) = &unk_286903768;
  *(a1 + 184) = &unk_286903F18;
  *(a1 + 192) = &unk_286903F40;
  *(a1 + 176) = 1;
  *(a1 + 200) = &unk_286903F68;
  *(a1 + 208) = &unk_286903F90;
  *(a1 + 216) = xmmword_257EE5950;
  *(a1 + 232) = 0x3FA47AE147AE147BLL;
  *(a1 + 240) = 1;
  *(a1 + 241) = UIAccessibilityIsVoiceOverRunning();
  *(a1 + 242) = 0;
  *(a1 + 243) = UIAccessibilityIsVoiceOverRunning();
  if (qword_27F8F4650 != -1)
  {
    swift_once();
  }

  *(a1 + 248) = qword_27F912FE0;
  *(a1 + 256) = &unk_286903710;
  v5 = qword_2815456D8;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = MEMORY[0x277D84F90];
  *(a1 + 264) = qword_2815483C0;
  *(a1 + 272) = v6;
  *(a1 + 280) = 0xD000000000000017;
  *(a1 + 288) = 0x8000000257EFA680;
}

uint64_t sub_257D55200(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_257ED0640() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_257ED0640() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_257D552D0(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_257BD2C2C(0, &qword_27F8F5748);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x259C72E20](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x259C72E20](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_257ECFF50();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_257ECFF50();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_257ED0210();
  }

  result = sub_257ED0210();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_257D55520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedDoor(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_257D730C4(v13, v10, type metadata accessor for DetectedDoor);
        sub_257D730C4(v14, v7, type metadata accessor for DetectedDoor);
        v16 = _s16MagnifierSupport12DetectedDoorV2eeoiySbAC_ACtFZ_0(v10, v7);
        sub_257D7312C(v7, type metadata accessor for DetectedDoor);
        sub_257D7312C(v10, type metadata accessor for DetectedDoor);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_257D556C8(uint64_t a1, uint64_t a2)
{
  v39 = type metadata accessor for DetectedTextBlock();
  v4 = MEMORY[0x28223BE20](v39);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v9 = &v34 - v8;
  v10 = *(a1 + 16);
  if (v10 != *(a2 + 16))
  {
LABEL_40:
    v31 = 0;
    return v31 & 1;
  }

  if (!v10 || a1 == a2)
  {
    v31 = 1;
    return v31 & 1;
  }

  v11 = 0;
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v35 = *(a1 + 16);
  v36 = a2 + v12;
  v37 = *(v7 + 72);
  v38 = a1 + v12;
  while (1)
  {
    v13 = v37 * v11;
    result = sub_257D730C4(v38 + v37 * v11, v9, type metadata accessor for DetectedTextBlock);
    if (v11 == v10)
    {
      break;
    }

    sub_257D730C4(v36 + v13, v6, type metadata accessor for DetectedTextBlock);
    result = sub_257ECCCC0();
    if ((result & 1) == 0)
    {
      goto LABEL_39;
    }

    v15 = v39[5];
    v16 = *&v9[v15];
    v17 = *&v6[v15];
    if (v16)
    {
      if (!v17 || (v18 = *(v16 + 16), v18 != *(v17 + 16)))
      {
LABEL_39:
        sub_257D7312C(v6, type metadata accessor for DetectedTextBlock);
        sub_257D7312C(v9, type metadata accessor for DetectedTextBlock);
        goto LABEL_40;
      }

      if (v18)
      {
        v19 = v16 == v17;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        v20 = (v16 + 56);
        v21 = (v17 + 56);
        while (v18)
        {
          result = *(v20 - 3);
          v22 = *(v20 - 1);
          v23 = *v20;
          v24 = *(v21 - 1);
          v25 = *v21;
          if (result != *(v21 - 3) || *(v20 - 2) != *(v21 - 2))
          {
            result = sub_257ED0640();
            if ((result & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          if (v22 != v24 || v23 != v25)
          {
            result = sub_257ED0640();
            if ((result & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          v20 += 4;
          v21 += 4;
          if (!--v18)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
        break;
      }
    }

    else if (v17)
    {
      goto LABEL_39;
    }

LABEL_29:
    if (!CGRectEqualToRect(*&v9[v39[6]], *&v6[v39[6]]) || *&v9[v39[7]] != *&v6[v39[7]] || v9[v39[8]] != v6[v39[8]])
    {
      goto LABEL_39;
    }

    v28 = v39[9];
    v29 = *&v9[v28];
    v30 = *&v6[v28];
    v31 = v30 == 0;
    if (v29)
    {
      if (!v30)
      {
        goto LABEL_39;
      }

      sub_257BD2C2C(0, &qword_27F8F5B20);
      v32 = v30;
      v33 = v29;
      v31 = sub_257ECFF50();
    }

    sub_257D7312C(v6, type metadata accessor for DetectedTextBlock);
    sub_257D7312C(v9, type metadata accessor for DetectedTextBlock);
    if (v31)
    {
      ++v11;
      v10 = v35;
      if (v11 != v35)
      {
        continue;
      }
    }

    return v31 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_257D55A3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedTextBlock();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v43 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = a1 + 32;
  v13 = (a2 + 32);
  v14 = *(a1 + 32);
  v15 = *v13;
  v16 = *(v14 + 16);
  if (v16 != *(*v13 + 16))
  {
    return 0;
  }

  v17 = 1;
  v54 = v4;
  while (!v16 || v14 == v15)
  {
LABEL_45:
    result = v17 == v11;
    if (v17 != v11)
    {
      v14 = *(v12 + 8 * v17);
      v15 = v13[v17++];
      v16 = *(v14 + 16);
      if (v16 == *(v15 + 16))
      {
        continue;
      }
    }

    return result;
  }

  v44 = v17;
  v45 = v13;
  v46 = v12;
  v47 = v11;
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v52 = v14 + v18;
  v53 = v8;
  v51 = v15 + v18;

  v20 = 0;
  v48 = v16;
  v49 = v15;
  v50 = v14;
  while (1)
  {
    if (v20 >= *(v14 + 16))
    {
      goto LABEL_56;
    }

    v21 = *(v53 + 72) * v20;
    result = sub_257D730C4(v52 + v21, v10, type metadata accessor for DetectedTextBlock);
    if (v20 >= *(v15 + 16))
    {
      goto LABEL_57;
    }

    sub_257D730C4(v51 + v21, v7, type metadata accessor for DetectedTextBlock);
    result = sub_257ECCCC0();
    if ((result & 1) == 0)
    {
LABEL_49:
      sub_257D7312C(v7, type metadata accessor for DetectedTextBlock);
      goto LABEL_50;
    }

    v22 = *(v4 + 20);
    v23 = *&v10[v22];
    v24 = *&v7[v22];
    if (!v23)
    {
      if (v24)
      {
        goto LABEL_49;
      }

      goto LABEL_34;
    }

    if (!v24)
    {
      goto LABEL_49;
    }

    v25 = *(v23 + 16);
    if (v25 != *(v24 + 16))
    {
      goto LABEL_49;
    }

    if (v25 && v23 != v24)
    {
      break;
    }

LABEL_34:
    v35 = v54;
    if (!CGRectEqualToRect(*&v10[v54[6]], *&v7[v54[6]]))
    {
      goto LABEL_49;
    }

    v15 = v49;
    if (*&v10[v35[7]] != *&v7[v35[7]] || v10[v35[8]] != v7[v35[8]])
    {
      goto LABEL_49;
    }

    v36 = v35[9];
    v37 = *&v10[v36];
    v38 = *&v7[v36];
    if (!v37)
    {
      v42 = v38;
      sub_257D7312C(v7, type metadata accessor for DetectedTextBlock);
      if (!v38)
      {
        result = sub_257D7312C(v10, type metadata accessor for DetectedTextBlock);
        goto LABEL_43;
      }

LABEL_50:
      sub_257D7312C(v10, type metadata accessor for DetectedTextBlock);
LABEL_51:

      return 0;
    }

    if (!v38)
    {
      goto LABEL_49;
    }

    sub_257BD2C2C(0, &qword_27F8F5B20);
    v39 = v38;
    v40 = v37;
    v41 = sub_257ECFF50();
    sub_257D7312C(v7, type metadata accessor for DetectedTextBlock);

    result = sub_257D7312C(v10, type metadata accessor for DetectedTextBlock);
    if ((v41 & 1) == 0)
    {
      goto LABEL_51;
    }

LABEL_43:
    ++v20;
    v14 = v50;
    v4 = v54;
    if (v20 == v48)
    {

      v8 = v53;
      v12 = v46;
      v11 = v47;
      v17 = v44;
      v13 = v45;
      goto LABEL_45;
    }
  }

  v27 = (v23 + 56);
  v28 = (v24 + 56);
  while (v25)
  {
    result = *(v27 - 3);
    v29 = *(v27 - 1);
    v30 = *v27;
    v31 = *(v28 - 1);
    v32 = *v28;
    if (result != *(v28 - 3) || *(v27 - 2) != *(v28 - 2))
    {
      result = sub_257ED0640();
      if ((result & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    if (v29 != v31 || v30 != v32)
    {
      result = sub_257ED0640();
      if ((result & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    v27 += 4;
    v28 += 4;
    if (!--v25)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_257D55EE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3 ^ *v4;
    if (v5)
    {
      break;
    }

    ++v3;
    ++v4;
    --v2;
  }

  while (v2);
  return (v5 ^ 1) & 1;
}

uint64_t sub_257D55F54(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_257D55FB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    while (2)
    {
      v6 = 0xEA0000000000726FLL;
      v7 = 0x746361466D6F6F7ALL;
      switch(*v3)
      {
        case 1:
          v7 = 0xD000000000000011;
          v6 = 0x8000000257EF7780;
          break;
        case 2:
          v7 = 0x4379616C70736964;
          v6 = 0xEF74736172746E6FLL;
          break;
        case 3:
          v6 = 0xE700000000000000;
          v7 = 0x737265746C6966;
          break;
        case 4:
          v6 = 0xEA00000000007468;
          v7 = 0x67696C6873616C66;
          break;
        case 5:
          v7 = 0x6544656C706F6570;
          v6 = 0xEF6E6F6974636574;
          break;
        case 6:
          v7 = 0x636F4C7375636F66;
          v6 = 0xE90000000000006BLL;
          break;
        case 7:
          v7 = 0x79546172656D6163;
          v6 = 0xEA00000000006570;
          break;
        case 8:
          v7 = 0x4D65727574706163;
          v6 = 0xEB0000000065646FLL;
          break;
        case 9:
          v7 = 0x6F69746365746564;
          v6 = 0xED000065646F4D6ELL;
          break;
        case 0xA:
          v8 = 1919905636;
          goto LABEL_22;
        case 0xB:
          v7 = 0xD000000000000013;
          v6 = 0x8000000257EF74D0;
          break;
        case 0xC:
          v7 = 0x7061436567616D69;
          v6 = 0xEC0000006E6F6974;
          break;
        case 0xD:
          v6 = 0xEA00000000006B61;
          v7 = 0x657053746E696F70;
          break;
        case 0xE:
          v8 = 1954047348;
LABEL_22:
          v7 = v8 | 0x6574654400000000;
          v6 = 0xED00006E6F697463;
          break;
        case 0xF:
          v6 = 0xEA00000000007365;
          v7 = 0x6974697669746361;
          break;
        default:
          break;
      }

      v9 = 0xEA0000000000726FLL;
      v10 = 0x746361466D6F6F7ALL;
      switch(*v4)
      {
        case 1:
          v9 = 0x8000000257EF7780;
          if (v7 == 0xD000000000000011)
          {
            goto LABEL_53;
          }

          goto LABEL_5;
        case 2:
          v9 = 0xEF74736172746E6FLL;
          if (v7 != 0x4379616C70736964)
          {
            goto LABEL_5;
          }

          goto LABEL_53;
        case 3:
          v9 = 0xE700000000000000;
          if (v7 != 0x737265746C6966)
          {
            goto LABEL_5;
          }

          goto LABEL_53;
        case 4:
          v9 = 0xEA00000000007468;
          if (v7 != 0x67696C6873616C66)
          {
            goto LABEL_5;
          }

          goto LABEL_53;
        case 5:
          v9 = 0xEF6E6F6974636574;
          if (v7 != 0x6544656C706F6570)
          {
            goto LABEL_5;
          }

          goto LABEL_53;
        case 6:
          v9 = 0xE90000000000006BLL;
          if (v7 != 0x636F4C7375636F66)
          {
            goto LABEL_5;
          }

          goto LABEL_53;
        case 7:
          v9 = 0xEA00000000006570;
          if (v7 != 0x79546172656D6163)
          {
            goto LABEL_5;
          }

          goto LABEL_53;
        case 8:
          v9 = 0xEB0000000065646FLL;
          if (v7 != 0x4D65727574706163)
          {
            goto LABEL_5;
          }

          goto LABEL_53;
        case 9:
          v11 = 0x6F69746365746564;
          v12 = 0x65646F4D6ELL;
          goto LABEL_35;
        case 0xA:
          v10 = 0x65746544726F6F64;
          v9 = 0xED00006E6F697463;
          goto LABEL_52;
        case 0xB:
          v9 = 0x8000000257EF74D0;
          if (v7 != 0xD000000000000013)
          {
            goto LABEL_5;
          }

          goto LABEL_53;
        case 0xC:
          v9 = 0xEC0000006E6F6974;
          if (v7 != 0x7061436567616D69)
          {
            goto LABEL_5;
          }

          goto LABEL_53;
        case 0xD:
          v9 = 0xEA00000000006B61;
          if (v7 != 0x657053746E696F70)
          {
            goto LABEL_5;
          }

          goto LABEL_53;
        case 0xE:
          v11 = 0x6574654474786574;
          v12 = 0x6E6F697463;
LABEL_35:
          v9 = v12 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          if (v7 != v11)
          {
            goto LABEL_5;
          }

          goto LABEL_53;
        case 0xF:
          v9 = 0xEA00000000007365;
          if (v7 != 0x6974697669746361)
          {
            goto LABEL_5;
          }

          goto LABEL_53;
        default:
LABEL_52:
          if (v7 != v10)
          {
            goto LABEL_5;
          }

LABEL_53:
          if (v6 == v9)
          {
          }

          else
          {
LABEL_5:
            v5 = sub_257ED0640();

            if ((v5 & 1) == 0)
            {
              return 0;
            }
          }

          ++v3;
          ++v4;
          if (--v2)
          {
            continue;
          }

          return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_257D564BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 32;
  v4 = a2 + 32;
  v5 = *(a1 + 80);
  v31 = *(a1 + 64);
  v32 = v5;
  v33 = *(a1 + 96);
  v6 = *(a1 + 48);
  v29 = *(a1 + 32);
  v30 = v6;
  v7 = *(a2 + 80);
  v36 = *(a2 + 64);
  v37 = v7;
  v38 = *(a2 + 96);
  v8 = *(a2 + 48);
  v34 = *(a2 + 32);
  v35 = v8;
  if (BYTE1(v32) != BYTE1(v7))
  {
    return 0;
  }

  v10 = 1;
  while (1)
  {
    if (!v29)
    {
      if (v34)
      {
        return 0;
      }

      goto LABEL_26;
    }

    if (!v34)
    {
      return 0;
    }

    v11 = *(v29 + 16);
    if (v11 != *(v34 + 16))
    {
      return 0;
    }

    if (v11 && v29 != v34)
    {
      break;
    }

LABEL_26:
    sub_257C241DC(&v29, v28);
    sub_257C241DC(&v34, v28);
LABEL_27:
    if (BYTE2(v32) == 4)
    {
      if (BYTE2(v37) != 4)
      {
        goto LABEL_41;
      }
    }

    else if (BYTE2(v37) == 4 || BYTE2(v32) != BYTE2(v37))
    {
LABEL_41:
      sub_257C24238(&v34);
      sub_257C24238(&v29);
      return 0;
    }

    v39.origin.x = *(&v29 + 1);
    *&v39.origin.y = v30;
    *&v39.size.height = v31;
    v40.origin.x = *(&v34 + 1);
    *&v40.origin.y = v35;
    *&v40.size.height = v36;
    v20 = CGRectEqualToRect(v39, v40);
    sub_257C24238(&v34);
    sub_257C24238(&v29);
    if (v20 && *(&v32 + 1) == *(&v37 + 1) && *(&v31 + 1) == *(&v36 + 1) && v32 == v37)
    {
      if (v10 == v2)
      {
        return 1;
      }

      v21 = 9 * v10++;
      v21 *= 8;
      v22 = *(v3 + v21 + 48);
      v31 = *(v3 + v21 + 32);
      v32 = v22;
      v33 = *(v3 + v21 + 64);
      v23 = *(v3 + v21 + 16);
      v29 = *(v3 + v21);
      v30 = v23;
      v24 = (v4 + v21);
      v25 = v24[3];
      v36 = v24[2];
      v37 = v25;
      v38 = *(v24 + 8);
      v26 = v24[1];
      v34 = *v24;
      v35 = v26;
      if (BYTE1(v32) == BYTE1(v25))
      {
        continue;
      }
    }

    return 0;
  }

  v27 = v3;
  v12 = (v29 + 56);
  v13 = (v34 + 56);
  while (1)
  {
    v14 = *(v12 - 1);
    v15 = *v12;
    v16 = *(v13 - 1);
    v17 = *v13;
    v18 = *(v12 - 3) == *(v13 - 3) && *(v12 - 2) == *(v13 - 2);
    if (!v18 && (sub_257ED0640() & 1) == 0)
    {
      return 0;
    }

    v19 = v14 == v16 && v15 == v17;
    if (!v19 && (sub_257ED0640() & 1) == 0)
    {
      return 0;
    }

    v12 += 4;
    v13 += 4;
    if (!--v11)
    {
      sub_257C241DC(&v29, v28);
      sub_257C241DC(&v34, v28);
      v3 = v27;
      goto LABEL_27;
    }
  }
}

uint64_t sub_257D5675C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); !((*(i - 3) ^ *(v3 - 3)) >> 14) && !((*(i - 2) ^ *(v3 - 2)) >> 14); i += 4)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_257ED0640() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_257D56814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MAGOutputEvent(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_257D730C4(v13, v10, type metadata accessor for MAGOutputEvent);
        sub_257D730C4(v14, v7, type metadata accessor for MAGOutputEvent);
        if ((sub_257ECCCC0() & 1) == 0 || (_s16MagnifierSupport14MAGOutputEventV0D4TypeO2eeoiySbAE_AEtFZ_0(&v10[v4[5]], &v7[v4[5]]) & 1) == 0 || v10[v4[6]] != v7[v4[6]])
        {
          break;
        }

        v16 = v10[v4[7]];
        sub_257D7312C(v10, type metadata accessor for MAGOutputEvent);
        v17 = v7[v4[7]];
        sub_257D7312C(v7, type metadata accessor for MAGOutputEvent);
        if (((v16 ^ v17) & 1) == 0)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        v18 = v16 ^ v17 ^ 1;
        return v18 & 1;
      }

      sub_257D7312C(v7, type metadata accessor for MAGOutputEvent);
      sub_257D7312C(v10, type metadata accessor for MAGOutputEvent);
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_257D56A50(_BYTE *a1)
{
  v3 = sub_257ECDA30();
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v67 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v67 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v67 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v67 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v67 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v67 - v22;
  v24 = sub_257ECF120();
  result = MEMORY[0x28223BE20](v24);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(*a1)
  {
    case 1:
      v29 = v26;
      v30 = result;
      LOBYTE(v70) = 1;
      result = sub_257D15920();
      if (!*(v1 + 40))
      {
        goto LABEL_74;
      }

      v47 = v46;
      swift_getKeyPath();
      swift_getKeyPath();
      v70 = v47;
      sub_257ECC3F0();
      result = sub_257ECDD70();
      if (!*(v1 + 40))
      {
        goto LABEL_84;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v70 = v47;
      sub_257ECC3F0();
      sub_257ECDD70();
      v33 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__brightness;
      swift_beginAccess();
      *v69 = v47;
      if (qword_2815447E0 != -1)
      {
        goto LABEL_68;
      }

      goto LABEL_46;
    case 2:
      v29 = v26;
      v30 = result;
      LOBYTE(v70) = 2;
      result = sub_257D15920();
      if (!*(v1 + 40))
      {
        goto LABEL_77;
      }

      v54 = v53;
      swift_getKeyPath();
      swift_getKeyPath();
      v70 = v54;
      sub_257ECC3F0();
      result = sub_257ECDD70();
      if (!*(v1 + 40))
      {
        goto LABEL_86;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v70 = v54;
      sub_257ECC3F0();
      sub_257ECDD70();
      v33 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__contrast;
      swift_beginAccess();
      *v69 = v54;
      if (qword_2815447E0 == -1)
      {
        goto LABEL_46;
      }

      goto LABEL_68;
    case 3:
      goto LABEL_65;
    case 4:
      v29 = v26;
      v30 = result;
      LOBYTE(v70) = 4;
      result = sub_257D15920();
      if (!*(v1 + 40))
      {
        goto LABEL_79;
      }

      v56 = v55;
      swift_getKeyPath();
      swift_getKeyPath();
      LODWORD(v70) = v56;
      sub_257ECC3F0();
      sub_257ECDD70();
      v33 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__flashlightPercentage;
      swift_beginAccess();
      LODWORD(v69[0]) = v56;
      if (qword_2815447E0 == -1)
      {
        goto LABEL_46;
      }

      goto LABEL_68;
    case 5:
      if (!*(v1 + 40))
      {
        goto LABEL_81;
      }

      sub_257ECC3F0();
      sub_257ECD480();
      v61 = sub_257ECDA20();
      v62 = sub_257ECFBD0();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 67109120;
        _os_log_impl(&dword_257BAC000, v61, v62, "Setting peopleDetection to %{BOOL}d", v63, 8u);
        MEMORY[0x259C74820](v63, -1, -1);
      }

      (*(v67 + 8))(v23, v68);
      swift_getKeyPath();
      goto LABEL_63;
    case 6:
      if (*(v1 + 40))
      {
        goto LABEL_65;
      }

      goto LABEL_78;
    case 7:
      return result;
    case 8:
      if (!*(v1 + 40))
      {
        goto LABEL_83;
      }

LABEL_65:
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v70) = 0;
      sub_257ECC3F0();
      return sub_257ECDD70();
    case 9:
      if (!*(v1 + 40))
      {
        goto LABEL_73;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
      sub_257ECDD60();

      if (LOBYTE(v70) != 1)
      {
        return result;
      }

      if (!*(v1 + 40))
      {
        goto LABEL_90;
      }

      sub_257ECC3F0();
      sub_257ECD440();
      v43 = sub_257ECDA20();
      v44 = sub_257ECFBD0();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 67109120;
        _os_log_impl(&dword_257BAC000, v43, v44, "Setting detectionModeOn to %{BOOL}d", v45, 8u);
        MEMORY[0x259C74820](v45, -1, -1);
      }

      (*(v67 + 8))(v9, v68);
      swift_getKeyPath();
      goto LABEL_63;
    case 0xA:
      if (!*(v1 + 40))
      {
        goto LABEL_82;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
      sub_257ECDD60();

      if (LOBYTE(v70) != 1)
      {
        return result;
      }

      if (!*(v1 + 40))
      {
        goto LABEL_92;
      }

      sub_257ECC3F0();
      sub_257ECD450();
      v64 = sub_257ECDA20();
      v65 = sub_257ECFBD0();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 67109120;
        _os_log_impl(&dword_257BAC000, v64, v65, "Setting doorDetection to %{BOOL}d", v66, 8u);
        MEMORY[0x259C74820](v66, -1, -1);
      }

      (*(v67 + 8))(v15, v68);
      swift_getKeyPath();
      goto LABEL_63;
    case 0xB:
      if (!*(v1 + 40))
      {
        goto LABEL_71;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
      sub_257ECDD60();

      if (LOBYTE(v70) != 1)
      {
        return result;
      }

      if (!*(v1 + 40))
      {
        goto LABEL_88;
      }

      sub_257ECC3F0();
      sub_257ECD4A0();
      v37 = sub_257ECDA20();
      v38 = sub_257ECFBD0();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 67109120;
        _os_log_impl(&dword_257BAC000, v37, v38, "Setting objectUnderstanding to %{BOOL}d", v39, 8u);
        MEMORY[0x259C74820](v39, -1, -1);
      }

      (*(v67 + 8))(v12, v68);
      swift_getKeyPath();
      goto LABEL_63;
    case 0xC:
      if (!*(v1 + 40))
      {
        goto LABEL_72;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
      sub_257ECDD60();

      if (LOBYTE(v70) != 1)
      {
        return result;
      }

      if (!*(v1 + 40))
      {
        goto LABEL_89;
      }

      sub_257ECC3F0();
      sub_257ECD440();
      v40 = sub_257ECDA20();
      v41 = sub_257ECFBD0();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 67109120;
        *(v42 + 4) = 1;
        _os_log_impl(&dword_257BAC000, v40, v41, "Setting imageCaption to %{BOOL}d", v42, 8u);
        MEMORY[0x259C74820](v42, -1, -1);
      }

      (*(v67 + 8))(v6, v68);
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v70) = 1;
      return sub_257ECDD70();
    case 0xD:
      if (!*(v1 + 40))
      {
        goto LABEL_80;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
      sub_257ECDD60();

      if (LOBYTE(v70) != 1)
      {
        return result;
      }

      if (!*(v1 + 40))
      {
        goto LABEL_91;
      }

      sub_257ECC3F0();
      sub_257ECD3E0();
      v58 = sub_257ECDA20();
      v59 = sub_257ECFBD0();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 67109120;
        _os_log_impl(&dword_257BAC000, v58, v59, "Setting pointSpeakEnabled to %{BOOL}d", v60, 8u);
        MEMORY[0x259C74820](v60, -1, -1);
      }

      (*(v67 + 8))(v21, v68);
      swift_getKeyPath();
      goto LABEL_63;
    case 0xE:
      if (!*(v1 + 40))
      {
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
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        return result;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
      sub_257ECDD60();

      if (LOBYTE(v70) != 1)
      {
        return result;
      }

      if (!*(v1 + 40))
      {
        goto LABEL_87;
      }

      sub_257ECC3F0();
      sub_257ECD3E0();
      v34 = sub_257ECDA20();
      v35 = sub_257ECFBD0();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 67109120;
        _os_log_impl(&dword_257BAC000, v34, v35, "Setting textDetectionEnabled to %{BOOL}d", v36, 8u);
        MEMORY[0x259C74820](v36, -1, -1);
      }

      (*(v67 + 8))(v18, v68);
      swift_getKeyPath();
LABEL_63:
      swift_getKeyPath();
      LOBYTE(v70) = 0;
      return sub_257ECDD70();
    case 0xF:
      if (!*(v1 + 40))
      {
        goto LABEL_75;
      }

      v48 = v26;
      v49 = result;
      v50 = *(v1 + 64);
      swift_beginAccess();
      v69[0] = 0xD000000000000010;
      v69[1] = 0x8000000257EFBEB0;
      v51 = qword_2815447E0;
      sub_257ECC3F0();
      if (v51 != -1)
      {
        swift_once();
      }

      v52 = sub_257ECF110();
      MEMORY[0x28223BE20](v52);
      *(&v67 - 2) = v69;
      *(&v67 - 1) = v50 + 120;
      sub_257ECFD40();
      (*(v48 + 8))(v28, v49);
      swift_endAccess();

    default:
      v29 = v26;
      v30 = result;
      LOBYTE(v70) = 0;
      result = sub_257D15920();
      if (!*(v1 + 40))
      {
        goto LABEL_76;
      }

      v32 = v31;
      swift_getKeyPath();
      swift_getKeyPath();
      v70 = v32;
      sub_257ECC3F0();
      result = sub_257ECDD70();
      if (!*(v1 + 40))
      {
        goto LABEL_85;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v70 = v32;
      sub_257ECC3F0();
      sub_257ECDD70();
      v33 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__zoomPercentage;
      swift_beginAccess();
      *v69 = v32;
      if (qword_2815447E0 != -1)
      {
LABEL_68:
        swift_once();
      }

LABEL_46:
      v57 = sub_257ECF110();
      MEMORY[0x28223BE20](v57);
      *(&v67 - 2) = v69;
      *(&v67 - 1) = v33;
      sub_257ECFD40();
      (*(v29 + 8))(v28, v30);
      return swift_endAccess();
  }
}

uint64_t sub_257D57C64(uint64_t a1, int a2)
{
  v5 = sub_257ECF120();
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;

  v8 = 0;
  sub_257D6D3DC(&v67, sub_257C671A0);
  v59 = a2;
  v9 = v67;
  v62 = v2;
  v10 = (v2 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPauseDetectionModeFeedbacks);
  swift_beginAccess();
  v11 = v10[1];
  v12 = v10[2];
  v67 = *v10;
  v68 = v11;
  v69 = v12;
  v13 = qword_2815447E0;

  if (v13 != -1)
  {
    v14 = swift_once();
  }

  v15 = qword_2815447E8;
  MEMORY[0x28223BE20](v14);
  v58[-2] = &v67;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7080);
  sub_257ECFD50();

  v17 = sub_257D55F54(v71[0], v9);

  v58[1] = v16;
  if ((v17 & 1) == 0)
  {
    v58[0] = v7;
    v19 = v10[1];
    v20 = v9;
    v21 = v10[2];
    v67 = *v10;
    v68 = v19;
    v69 = v21;
    MEMORY[0x28223BE20](v18);
    v58[-2] = &v67;

    v22 = v15;
    sub_257ECFD50();

    v23 = sub_257C57454(v71[0]);

    v25 = sub_257C57454(v24);

    v67 = v23;
    sub_257D6D728(v25);
    v26 = sub_257C592DC(0, v67);

    if (v59)
    {
      v27 = v61;
      v28 = v58[0];
      if ((v26 & 1) == 0)
      {
        v34 = v20;
        v15 = v22;
        v31 = v60;
        goto LABEL_10;
      }

      v29 = v62 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionSpeechFeedbackWasModified;
      swift_beginAccess();
      LOBYTE(v71[0]) = 1;
      v30 = sub_257ECF110();
      MEMORY[0x28223BE20](v30);
      v58[-2] = v71;
      v58[-1] = v29;
      v15 = v22;
      sub_257ECFD40();
      v31 = v60;
    }

    else
    {
      v32 = v62 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionSpeechFeedbackWasModified;
      swift_beginAccess();
      LOBYTE(v71[0]) = v26 & 1;
      v28 = v58[0];
      v33 = sub_257ECF110();
      MEMORY[0x28223BE20](v33);
      v58[-2] = v71;
      v58[-1] = v32;
      v15 = v22;
      sub_257ECFD40();
      v31 = v60;
      v27 = v61;
    }

    (*(v31 + 8))(v28, v27);
    swift_endAccess();
    v34 = v20;
LABEL_10:
    swift_beginAccess();
    v71[0] = v34;
    sub_257ECC3F0();
    v35 = sub_257ECF110();
    MEMORY[0x28223BE20](v35);
    v58[-2] = v71;
    v58[-1] = v10;
    sub_257ECFD40();
    (*(v31 + 8))(v28, v27);

    swift_endAccess();
  }

  v36 = v62;
  if (!*(v62 + 40))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v37 = *(v62 + 64);
  v38 = swift_beginAccess();
  v39 = v37[16];
  v40 = v37[17];
  v41 = v37[18];
  v67 = v37[15];
  v68 = v39;
  v69 = v40;
  v70 = v41;
  MEMORY[0x28223BE20](v38);
  v58[-2] = &v67;

  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
  sub_257ECFD50();

  v42 = v64;
  if (!v64)
  {
  }

  v61 = v15;
  if (!*(v36 + 40))
  {
    goto LABEL_23;
  }

  v43 = v63;
  v44 = *(v36 + 64);
  v45 = swift_beginAccess();
  v46 = v44[12];
  v47 = v44[13];
  v63 = v44[11];
  v64 = v46;
  v65 = v47;
  MEMORY[0x28223BE20](v45);
  v58[-2] = &v63;
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
  sub_257ECFD50();

  v48 = v66;
  if (!*(v66 + 16) || (v49 = sub_257C03F6C(v43, v42), (v50 & 1) == 0))
  {
  }

  v51 = *(*(v48 + 56) + 296 * v49 + 208);

  v53 = *v10;
  v54 = v10[1];
  v55 = v10[2];
  v63 = v53;
  v64 = v54;
  v65 = v55;
  MEMORY[0x28223BE20](v52);
  v58[-2] = &v63;

  sub_257ECFD50();

  v56 = sub_257D55F54(v51, v66);

  if (v56)
  {
  }

  v8 = *(v62 + 40);
  if (v8)
  {
    sub_257ECC3F0();
    sub_257ECC3F0();
    sub_257ECC3F0();
    swift_retain_n();
    sub_257ECC3F0();
    sub_257ECC3F0();

    sub_257D71D4C(v8);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v63) = 1;
    return sub_257ECDD70();
  }

LABEL_24:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_257D5854C(char *a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1;

  sub_257D6D0F8(&v13);
  v7 = v13;
  if (*(*(v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_selectedDetectionRecordingOptions) + 16) != *(v13 + 2))
  {
    *(v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_selectedDetectionRecordingOptions) = v13;
    sub_257ECC3F0();
  }

  v8 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__storedSelectedDetectionRecordingOptions;
  swift_beginAccess();
  v12 = v7;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v9 = sub_257ECF110();
  MEMORY[0x28223BE20](v9);
  *(&v11 - 2) = &v12;
  *(&v11 - 1) = v8;
  sub_257ECFD40();
  (*(v4 + 8))(v6, v3);

  return swift_endAccess();
}

uint64_t sub_257D5874C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_257ECF120();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[0] = a1;

  v8 = 0;
  sub_257D6D3DC(v39, sub_257C66F4C);
  v9 = v39[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v10 = sub_257D55F54(v39[0], v9);

  if ((v10 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v39[0] = v9;
    sub_257ECC3F0();
    sub_257ECC3F0();
    sub_257ECDD70();
  }

  v11 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__storedSelectedFilters;
  swift_beginAccess();
  v40 = v9;
  v12 = qword_2815447E0;
  sub_257ECC3F0();
  if (v12 != -1)
  {
    swift_once();
  }

  v13 = sub_257ECF110();
  MEMORY[0x28223BE20](v13);
  *(&v33 - 2) = &v40;
  *(&v33 - 1) = v11;
  v34 = v11;
  sub_257ECFD40();
  (*(v5 + 8))(v7, v4);

  swift_endAccess();
  if (!*(v2 + 40))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = *(v2 + 64);
  v15 = swift_beginAccess();
  v16 = v14[16];
  v17 = v14[17];
  v18 = v14[18];
  v39[0] = v14[15];
  v39[1] = v16;
  v39[2] = v17;
  v39[3] = v18;
  MEMORY[0x28223BE20](v15);
  *(&v33 - 2) = v39;

  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
  sub_257ECFD50();

  v19 = v36;
  if (!v36)
  {
  }

  if (!*(v2 + 40))
  {
    goto LABEL_17;
  }

  v33 = v35;
  v20 = *(v2 + 64);
  v21 = swift_beginAccess();
  v22 = v20[12];
  v23 = v20[13];
  v35 = v20[11];
  v36 = v22;
  v37 = v23;
  MEMORY[0x28223BE20](v21);
  *(&v33 - 2) = &v35;
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
  sub_257ECFD50();

  v24 = v38;
  if (!*(v38 + 16) || (v25 = sub_257C03F6C(v33, v19), (v26 & 1) == 0))
  {
  }

  v27 = *(*(v24 + 56) + 296 * v25 + 40);

  v29 = v34[1];
  v30 = v34[2];
  v35 = *v34;
  v36 = v29;
  v37 = v30;
  MEMORY[0x28223BE20](v28);
  *(&v33 - 2) = &v35;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7F28);
  sub_257ECFD50();

  v31 = sub_257D55F54(v27, v38);

  if (v31)
  {
  }

  v8 = *(v2 + 40);
  if (v8)
  {
    sub_257ECC3F0();
    sub_257ECC3F0();
    sub_257ECC3F0();
    swift_retain_n();
    sub_257ECC3F0();
    sub_257ECC3F0();

    sub_257D71D4C(v8);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v35) = 1;
    return sub_257ECDD70();
  }

LABEL_18:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_257D58DA0(uint64_t a1, uint64_t a2, const void *a3, char a4)
{
  v9 = sub_257ECF120();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v25, a3, 0x128uLL);
  if (a4)
  {
    swift_beginAccess();

    sub_257C09C58(v25, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22[0] = *(v4 + 112);
    *(v4 + 112) = 0x8000000000000000;
    sub_257EC6FE8(v25, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v4 + 112) = v22[0];
  }

  else
  {
    v21 = a1;
    v14 = v4 + 88;
    swift_beginAccess();
    v23 = *(v4 + 88);
    v24 = *(v4 + 96);
    v15 = sub_257C09C58(v25, v22);
    if (qword_2815447E0 != -1)
    {
      v15 = swift_once();
    }

    MEMORY[0x28223BE20](v15);
    *(&v20 - 2) = &v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
    sub_257ECFD50();
    v16 = v22[0];
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v22[0] = v16;
    sub_257EC6FE8(v25, v21, a2, v17);
    v18 = sub_257ECF110();
    MEMORY[0x28223BE20](v18);
    *(&v20 - 2) = v22;
    *(&v20 - 1) = v14;
    sub_257ECFD40();
    (*(v10 + 8))(v12, v9);
  }

  return swift_endAccess();
}

uint64_t sub_257D59094(uint64_t a1, int a2)
{
  v5 = sub_257ECF120();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v60 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;

  v8 = 0;
  sub_257D6D3DC(&v66, sub_257C671EC);
  v57 = a2;
  v58 = v6;
  v59 = v5;
  v9 = v66;
  v61 = v2;
  v10 = (v2 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPeopleDetectionFeedbacks);
  swift_beginAccess();
  v11 = v10[1];
  v12 = v10[2];
  v66 = *v10;
  v67 = v11;
  v68 = v12;
  v13 = qword_2815447E0;

  if (v13 != -1)
  {
    v14 = swift_once();
  }

  v15 = qword_2815447E8;
  MEMORY[0x28223BE20](v14);
  *(&v56 - 2) = &v66;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AD8);
  sub_257ECFD50();

  v17 = sub_257D55F54(v70[0], v9);

  v56 = v16;
  if ((v17 & 1) == 0)
  {
    v19 = v10[1];
    v20 = v10[2];
    v66 = *v10;
    v67 = v19;
    v68 = v20;
    MEMORY[0x28223BE20](v18);
    *(&v56 - 2) = &v66;

    v21 = v15;
    sub_257ECFD50();

    v22 = sub_257C57484(v70[0]);

    v24 = sub_257C57484(v23);

    v66 = v22;
    sub_257D6DA4C(v24, sub_257C4D1EC, sub_257C4E124);
    v25 = sub_257C592DC(1, v66);

    if (v57)
    {
      v27 = v58;
      v26 = v59;
      if (v25)
      {
        v28 = v61 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__peopleDetectionSpeechFeedbackWasModified;
        swift_beginAccess();
        LOBYTE(v70[0]) = 1;
        v29 = v60;
        v30 = sub_257ECF110();
        MEMORY[0x28223BE20](v30);
        *(&v56 - 2) = v70;
        *(&v56 - 1) = v28;
        v15 = v21;
        sub_257ECFD40();
        (*(v27 + 8))(v29, v26);
        swift_endAccess();
        v31 = v9;
      }

      else
      {
        v31 = v9;
        v15 = v21;
      }
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v66) = v25 & 1;
      sub_257ECC3F0();
      sub_257ECDD70();
      v31 = v9;
      v15 = v21;
      v27 = v58;
      v26 = v59;
    }

    swift_beginAccess();
    v70[0] = v31;
    sub_257ECC3F0();
    v32 = v60;
    v33 = sub_257ECF110();
    MEMORY[0x28223BE20](v33);
    *(&v56 - 2) = v70;
    *(&v56 - 1) = v10;
    sub_257ECFD40();
    (*(v27 + 8))(v32, v26);

    swift_endAccess();
  }

  v34 = v61;
  if (!*(v61 + 40))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v35 = *(v61 + 64);
  v36 = swift_beginAccess();
  v37 = v35[16];
  v38 = v35[17];
  v39 = v35[18];
  v66 = v35[15];
  v67 = v37;
  v68 = v38;
  v69 = v39;
  MEMORY[0x28223BE20](v36);
  *(&v56 - 2) = &v66;

  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
  sub_257ECFD50();

  v40 = v63;
  if (!v63)
  {
  }

  v60 = v15;
  if (!*(v34 + 40))
  {
    goto LABEL_22;
  }

  v41 = v62;
  v42 = *(v34 + 64);
  v43 = swift_beginAccess();
  v44 = v42[12];
  v45 = v42[13];
  v62 = v42[11];
  v63 = v44;
  v64 = v45;
  MEMORY[0x28223BE20](v43);
  *(&v56 - 2) = &v62;
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
  sub_257ECFD50();

  v46 = v65;
  if (!*(v65 + 16) || (v47 = sub_257C03F6C(v41, v40), (v48 & 1) == 0))
  {
  }

  v49 = *(*(v46 + 56) + 296 * v47 + 88);

  v51 = *v10;
  v52 = v10[1];
  v53 = v10[2];
  v62 = v51;
  v63 = v52;
  v64 = v53;
  MEMORY[0x28223BE20](v50);
  *(&v56 - 2) = &v62;

  sub_257ECFD50();

  v54 = sub_257D55F54(v49, v65);

  if (v54)
  {
  }

  v8 = *(v61 + 40);
  if (v8)
  {
    sub_257ECC3F0();
    sub_257ECC3F0();
    sub_257ECC3F0();
    swift_retain_n();
    sub_257ECC3F0();
    sub_257ECC3F0();

    sub_257D71D4C(v8);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v62) = 1;
    return sub_257ECDD70();
  }

LABEL_23:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_257D59960(char *a1, int a2)
{
  v5 = sub_257ECF120();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v60 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;

  v8 = 0;
  sub_257D6D268(&v66);
  v57 = a2;
  v58 = v6;
  v59 = v5;
  v9 = v66;
  v61 = v2;
  v10 = v2 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedImageCaptionFeedbacks;
  swift_beginAccess();
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v66 = *v10;
  v67 = v11;
  v68 = v12;
  v13 = qword_2815447E0;

  if (v13 != -1)
  {
    v14 = swift_once();
  }

  v15 = qword_2815447E8;
  MEMORY[0x28223BE20](v14);
  *(&v56 - 2) = &v66;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8470);
  sub_257ECFD50();

  v17 = sub_257D55EE0(v70[0], v9);

  v56 = v16;
  if ((v17 & 1) == 0)
  {
    v19 = *(v10 + 8);
    v20 = *(v10 + 16);
    v66 = *v10;
    v67 = v19;
    v68 = v20;
    MEMORY[0x28223BE20](v18);
    *(&v56 - 2) = &v66;

    v21 = v15;
    sub_257ECFD50();

    v22 = sub_257C574B4(v70[0]);

    v24 = sub_257C574B4(v23);

    v66 = v22;
    sub_257D6D8B0(v24, sub_257C4D208, sub_257C4E138);
    v25 = sub_257C592E0(1, v66);

    if (v57)
    {
      v27 = v58;
      v26 = v59;
      if (v25)
      {
        v28 = v61 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__imageCaptionSpeechFeedbackWasModified;
        swift_beginAccess();
        LOBYTE(v70[0]) = 1;
        v29 = v60;
        v30 = sub_257ECF110();
        MEMORY[0x28223BE20](v30);
        *(&v56 - 2) = v70;
        *(&v56 - 1) = v28;
        v15 = v21;
        sub_257ECFD40();
        (*(v27 + 8))(v29, v26);
        swift_endAccess();
        v31 = v9;
      }

      else
      {
        v31 = v9;
        v15 = v21;
      }
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v66) = v25 & 1;
      sub_257ECC3F0();
      sub_257ECDD70();
      v31 = v9;
      v15 = v21;
      v27 = v58;
      v26 = v59;
    }

    swift_beginAccess();
    v70[0] = v31;
    sub_257ECC3F0();
    v32 = v60;
    v33 = sub_257ECF110();
    MEMORY[0x28223BE20](v33);
    *(&v56 - 2) = v70;
    *(&v56 - 1) = v10;
    sub_257ECFD40();
    (*(v27 + 8))(v32, v26);

    swift_endAccess();
  }

  v34 = v61;
  if (!*(v61 + 40))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v35 = *(v61 + 64);
  v36 = swift_beginAccess();
  v37 = v35[16];
  v38 = v35[17];
  v39 = v35[18];
  v66 = v35[15];
  v67 = v37;
  v68 = v38;
  v69 = v39;
  MEMORY[0x28223BE20](v36);
  *(&v56 - 2) = &v66;

  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
  sub_257ECFD50();

  v40 = v63;
  if (!v63)
  {
  }

  v60 = v15;
  if (!*(v34 + 40))
  {
    goto LABEL_22;
  }

  v41 = v62;
  v42 = *(v34 + 64);
  v43 = swift_beginAccess();
  v44 = v42[12];
  v45 = v42[13];
  v62 = v42[11];
  v63 = v44;
  v64 = v45;
  MEMORY[0x28223BE20](v43);
  *(&v56 - 2) = &v62;
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
  sub_257ECFD50();

  v46 = v65;
  if (!*(v65 + 16) || (v47 = sub_257C03F6C(v41, v40), (v48 & 1) == 0))
  {
  }

  v49 = *(*(v46 + 56) + 296 * v47 + 184);

  v51 = *v10;
  v52 = *(v10 + 8);
  v53 = *(v10 + 16);
  v62 = v51;
  v63 = v52;
  v64 = v53;
  MEMORY[0x28223BE20](v50);
  *(&v56 - 2) = &v62;

  sub_257ECFD50();

  v54 = sub_257D55EE0(v49, v65);

  if (v54)
  {
  }

  v8 = *(v61 + 40);
  if (v8)
  {
    sub_257ECC3F0();
    sub_257ECC3F0();
    sub_257ECC3F0();
    swift_retain_n();
    sub_257ECC3F0();
    sub_257ECC3F0();

    sub_257D71D4C(v8);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v62) = 1;
    return sub_257ECDD70();
  }

LABEL_23:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_257D5A210(uint64_t a1, int a2)
{
  v5 = sub_257ECF120();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;

  v9 = 0;
  sub_257D6D3DC(&v62, sub_257C6725C);
  v52 = a2;
  v53 = v8;
  v54 = v6;
  v55 = v5;
  v56 = v2;
  v10 = v62;
  v11 = (v2 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPointSpeakFeedbacks);
  swift_beginAccess();
  v12 = v11[1];
  v13 = v11[2];
  v62 = *v11;
  v63 = v12;
  v64 = v13;
  v14 = qword_2815447E0;

  if (v14 != -1)
  {
    v15 = swift_once();
  }

  v16 = qword_2815447E8;
  MEMORY[0x28223BE20](v15);
  v51[-2] = &v62;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90);
  sub_257ECFD50();

  v18 = sub_257D55F54(v66, v10);

  v20 = v10;
  v57 = v16;
  v51[1] = v17;
  if (v18)
  {
    v21 = v56;
    goto LABEL_11;
  }

  v22 = v11[1];
  v23 = v11[2];
  v62 = *v11;
  v63 = v22;
  v64 = v23;
  MEMORY[0x28223BE20](v19);
  v51[-2] = &v62;

  sub_257ECFD50();

  v20 = v10;
  v24 = sub_257C57578(v66);

  v26 = sub_257C57578(v25);

  v62 = v24;
  sub_257D6DA4C(v26, sub_257C4D34C, sub_257C4E27C);
  v27 = sub_257C592DC(1, v62);

  if ((v52 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v62) = v27 & 1;
    v21 = v56;
    sub_257ECC3F0();
    goto LABEL_9;
  }

  v21 = v56;
  if (v27)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v62) = 1;
    sub_257ECC3F0();
LABEL_9:
    sub_257ECDD70();
  }

  swift_beginAccess();
  v66 = v10;
  sub_257ECC3F0();
  v28 = v53;
  v29 = sub_257ECF110();
  MEMORY[0x28223BE20](v29);
  v51[-2] = &v66;
  v51[-1] = v11;
  sub_257ECFD40();
  (*(v54 + 8))(v28, v55);

  swift_endAccess();
LABEL_11:
  if (!*(v21 + 40))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v30 = *(v21 + 64);
  v31 = swift_beginAccess();
  v32 = v30[16];
  v33 = v30[17];
  v34 = v30[18];
  v62 = v30[15];
  v63 = v32;
  v64 = v33;
  v65 = v34;
  MEMORY[0x28223BE20](v31);
  v51[-2] = &v62;

  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
  sub_257ECFD50();

  v35 = v59;
  if (!v59)
  {
  }

  v56 = v20;
  if (!*(v21 + 40))
  {
    goto LABEL_23;
  }

  v36 = v58;
  v37 = *(v21 + 64);
  v38 = swift_beginAccess();
  v39 = v37[12];
  v40 = v37[13];
  v58 = v37[11];
  v59 = v39;
  v60 = v40;
  MEMORY[0x28223BE20](v38);
  v51[-2] = &v58;
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
  sub_257ECFD50();

  v41 = v61;
  if (!*(v61 + 16) || (v42 = sub_257C03F6C(v36, v35), (v43 & 1) == 0))
  {
  }

  v44 = *(*(v41 + 56) + 296 * v42 + 192);

  v46 = *v11;
  v47 = v11[1];
  v48 = v11[2];
  v58 = v46;
  v59 = v47;
  v60 = v48;
  MEMORY[0x28223BE20](v45);
  v51[-2] = &v58;

  sub_257ECFD50();

  v49 = sub_257D55F54(v44, v61);

  if (v49)
  {
  }

  v9 = *(v21 + 40);
  if (v9)
  {
    sub_257ECC3F0();
    sub_257ECC3F0();
    sub_257ECC3F0();
    swift_retain_n();
    sub_257ECC3F0();
    sub_257ECC3F0();

    sub_257D71D4C(v9);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v58) = 1;
    return sub_257ECDD70();
  }

LABEL_24:
  __break(1u);

  __break(1u);
  return result;
}

float sub_257D5AAB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return v1;
}

uint64_t sub_257D5AB30@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MFEnvironment.LiveLens(0);
  swift_allocObject();
  v2 = sub_257D5B724();
  *a1 = v2;
  type metadata accessor for MFEnvironment.FrameData(0);
  swift_allocObject();
  v9 = sub_257D5AF08();
  a1[1] = v9;
  type metadata accessor for MFEnvironment.FreezeFrame(0);
  swift_allocObject();
  v3 = sub_257D5CB24();
  a1[2] = v3;
  type metadata accessor for MFEnvironment.Analytics();
  swift_allocObject();
  v4 = sub_257D6CE34();
  a1[4] = v4;
  type metadata accessor for MFEnvironment.Automation();
  v5 = swift_allocObject();
  v5[2] = 0xD000000000000020;
  v5[3] = 0x8000000257EF81A0;
  v5[4] = 0;
  v5[5] = 0xE000000000000000;
  v5[6] = 0xD00000000000001ELL;
  v5[7] = 0x8000000257EF8180;
  v5[8] = MEMORY[0x277D84F90];
  a1[5] = v5;
  type metadata accessor for MFEnvironment.UserControls(0);
  v6 = swift_allocObject();
  sub_257D66D2C();
  a1[3] = v6;
  v8 = v6[5];
  v6[5] = v2;
  v6[6] = v9;
  v6[7] = v3;
  v6[8] = v6;
  v6[9] = v4;
  v6[10] = v5;
  swift_retain_n();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257D71D4C(v8);
}