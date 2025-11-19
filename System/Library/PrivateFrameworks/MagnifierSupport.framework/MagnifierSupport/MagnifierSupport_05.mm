uint64_t sub_257C269F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MAGPointAndSpeakEvent(0);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C26A84, 0, 0);
}

uint64_t sub_257C26A84()
{
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_257C26B44;
  v2 = *(v0 + 24);

  return MAGPointAndSpeakEventHandler.send(_:)(v2);
}

uint64_t sub_257C26B44()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_257C32C4C;
  }

  else
  {
    v2 = sub_257C32C14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257C26C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MAGPointAndSpeakEvent(0);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C26CE8, 0, 0);
}

uint64_t sub_257C26CE8()
{
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_257C26B44;
  v2 = *(v0 + 24);

  return MAGPointAndSpeakEventHandler.send(_:)(v2);
}

void sub_257C26DA8()
{
  v1 = v0;
  v2 = sub_257ECCC80();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedDocument;
  if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedDocument) || (v7 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedTextBlocks, *(*(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedTextBlocks) + 16)))
  {
    v8 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastImageCacheTime;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v8, v2);
    sub_257ECCC10();
    v10 = v9;
    (*(v3 + 8))(v5, v2);
    if (v10 < -0.5)
    {
      v11 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_arService);
      v12 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
      swift_beginAccess();
      v13 = *(v11 + v12);
      if (v13)
      {
        v14 = [v13 currentFrame];
        if (v14)
        {
          v15 = v14;
          v16 = [v14 capturedImage];
          v17 = [v15 camera];
          sub_257ECC3F0();
          sub_257CB7AE4(v16, 0);
          v22 = v21;
          v23 = v21;
          v35 = v17;
          v24 = v23;
          sub_257C271C8(v22, v1, v16, v35, v15);

          v25 = v35;

          sub_257ECCC70();

          swift_beginAccess();
          (*(v3 + 40))(v1 + v8, v5, v2);
          swift_endAccess();
        }
      }
    }
  }

  else
  {
    v18 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedFrame);
    if (v18)
    {
      v19 = [v18 capturedImage];
      if (v19)
      {
        v20 = v19;
        sub_257ECC3F0();
        sub_257CB7AE4(v20, 0);
        v26 = *(v1 + v6);
        *(v1 + v6) = v27;
        v28 = v27;

        *(v1 + v7) = sub_257C317E4(v28);

        v30 = sub_257C27B94(v29);

        *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedSpatialTextBlocks) = v30;

        v31 = [objc_opt_self() currentDevice];
        v32 = [v31 orientation];

        if ((v32 - 2) >= 3)
        {
          v33 = 1;
        }

        else
        {
          v33 = qword_257EDC490[(v32 - 2)];
        }

        *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastOrientation) = v33;
      }
    }
  }
}

void sub_257C271C8(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (a1)
  {
    v8 = a1;
    v9 = sub_257C317E4(v8);
    v10 = sub_257C27B94(v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5FB8);
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D837D0];
    *(v11 + 16) = xmmword_257EDC1F0;
    *(v11 + 56) = v12;
    *(v11 + 32) = 0x6675426C65786970;
    *(v11 + 40) = 0xEB00000000726566;
    type metadata accessor for CVBuffer(0);
    *(v11 + 64) = a3;
    *(v11 + 120) = v12;
    *(v11 + 88) = v13;
    *(v11 + 96) = 0x636F6C4274786574;
    *(v11 + 104) = 0xEA0000000000736BLL;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6970);
    *(v11 + 128) = v9;
    *(v11 + 184) = v12;
    *(v11 + 152) = v14;
    *(v11 + 160) = 0xD000000000000011;
    *(v11 + 168) = 0x8000000257EFA560;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5FA0);
    *(v11 + 192) = v10;
    *(v11 + 248) = v12;
    *(v11 + 216) = v15;
    *(v11 + 224) = 0x6172656D6163;
    *(v11 + 232) = 0xE600000000000000;
    v16 = sub_257BD2C2C(0, &qword_27F8F5F98);
    *(v11 + 256) = a4;
    *(v11 + 312) = v12;
    *(v11 + 280) = v16;
    *(v11 + 288) = 0x7461746E6569726FLL;
    *(v11 + 296) = 0xEB000000006E6F69;
    v17 = objc_opt_self();
    v18 = a3;
    v19 = a4;
    v20 = [v17 currentDevice];
    v21 = [v20 orientation];

    if ((v21 - 2) > 2)
    {
      v22 = 1;
    }

    else
    {
      v22 = qword_257EDC490[(v21 - 2)];
    }

    type metadata accessor for UIInterfaceOrientation(0);
    *(v11 + 344) = v23;
    *(v11 + 320) = v22;
    sub_257BD2C2C(0, &qword_27F8F5FC0);
    v24 = sub_257ECFB90();
    v25 = [a5 sceneDepth];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 depthMap];

      if (v27)
      {
        v28 = v27;
        [v24 __swift_setObject_forKeyedSubscript_];
        swift_unknownObjectRelease();
      }
    }

    if (qword_27F8F4610 != -1)
    {
      swift_once();
    }

    v29 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
    v30 = v24;
    sub_257CEFBF8(v24, v29);
  }
}

uint64_t sub_257C27524(void *a1, void **a2)
{
  v9 = type metadata accessor for DetectedTextBlock();
  v10 = *(v9 - 1);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v63 - v14;
  v16 = [a1 getLines];
  v69 = sub_257BD2C2C(0, &qword_27F8F5FB0);
  v17 = sub_257ECF810();

  if (v17 >> 62)
  {
    v18 = sub_257ED0210();
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_13:

    v20 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_13;
  }

LABEL_3:
  v73 = MEMORY[0x277D84F90];
  sub_257BF27A4(0, v18 & ~(v18 >> 63), 0);
  if (v18 < 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  v64 = a1;
  v65 = v9;
  v66 = v13;
  v67 = a2;
  v68 = v10;
  v19 = 0;
  v20 = v73;
  do
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x259C72E20](v19, v17);
    }

    else
    {
      v21 = *(v17 + 8 * v19 + 32);
    }

    v22 = v21;
    [v21 confidence];
    v24 = v23;

    v73 = v20;
    v26 = *(v20 + 16);
    v25 = *(v20 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_257BF27A4((v25 > 1), v26 + 1, 1);
      v20 = v73;
    }

    ++v19;
    *(v20 + 16) = v26 + 1;
    *(v20 + 4 * v26 + 32) = v24;
  }

  while (v18 != v19);

  a2 = v67;
  v10 = v68;
  v9 = v65;
  v13 = v66;
  a1 = v64;
LABEL_14:
  v27 = *(v20 + 16);
  if (!v27)
  {

    v6 = 0.0;
    goto LABEL_24;
  }

  if (v27 > 7)
  {
    v28 = v27 & 0x7FFFFFFFFFFFFFF8;
    v30 = v20 + 48;
    v29 = 0.0;
    v31 = v27 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v29 = (((((((v29 + COERCE_FLOAT(*(v30 - 16))) + COERCE_FLOAT(HIDWORD(*(v30 - 16)))) + COERCE_FLOAT(*(v30 - 8))) + COERCE_FLOAT(HIDWORD(*(v30 - 16)))) + COERCE_FLOAT(*v30)) + COERCE_FLOAT(HIDWORD(*v30))) + COERCE_FLOAT(*(v30 + 8))) + COERCE_FLOAT(HIDWORD(*v30));
      v30 += 32;
      v31 -= 8;
    }

    while (v31);
    if (v27 == v28)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v28 = 0;
    v29 = 0.0;
  }

  v32 = v27 - v28;
  v33 = (v20 + 4 * v28 + 32);
  do
  {
    v34 = *v33++;
    v29 = v29 + v34;
    --v32;
  }

  while (v32);
LABEL_23:

  v6 = v29;
LABEL_24:
  sub_257D11A58();
  v68 = v35;
  [a1 boundingBox];
  v2 = v36;
  v3 = v37;
  v4 = v38;
  v5 = v39;
  v40 = [a1 getLines];
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
    v43 = [a1 getLines];
    v44 = sub_257ECF810();

    if (!(v44 >> 62))
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_29:

      v46 = v6 / v45;
      goto LABEL_31;
    }

LABEL_42:
    v45 = sub_257ED0210();
    goto LABEL_29;
  }

  [a1 confidence];
  v46 = v47;
LABEL_31:
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v48 = a1;
  v49 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectLanguages;
  swift_beginAccess();
  v50 = *(v49 + 8);
  v51 = *(v49 + 16);
  v70[0] = *v49;
  v70[1] = v50;
  v71 = v51;
  v52 = qword_2815447E0;

  if (v52 != -1)
  {
    v53 = swift_once();
  }

  MEMORY[0x28223BE20](v53);
  *(&v63 - 2) = v70;
  sub_257ECFD50();

  v54 = v72;
  v55 = [v48 getCROutputRegion];
  sub_257ECCCE0();
  v56 = v9[9];
  *&v15[v9[5]] = v68;
  v57 = &v15[v9[6]];
  *v57 = v2;
  *(v57 + 1) = v3;
  *(v57 + 2) = v4;
  *(v57 + 3) = v5;
  *&v15[v9[7]] = v46;
  v15[v9[8]] = v54;
  *&v15[v56] = v55;
  sub_257C31F70(v15, v13, type metadata accessor for DetectedTextBlock);
  v58 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v58;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v58 = sub_257BFD440(0, v58[2] + 1, 1, v58);
    *a2 = v58;
  }

  v61 = v58[2];
  v60 = v58[3];
  if (v61 >= v60 >> 1)
  {
    v58 = sub_257BFD440(v60 > 1, v61 + 1, 1, v58);
    *a2 = v58;
  }

  v58[2] = v61 + 1;
  sub_257C31FD8(v13, v58 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v61, type metadata accessor for DetectedTextBlock);
  return sub_257C32040(v15, type metadata accessor for DetectedTextBlock);
}

uint64_t sub_257C27B94(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5250);
  MEMORY[0x28223BE20](v3 - 8);
  v59 = &v53 - v4;
  v58 = type metadata accessor for SpatialTextBlock();
  v5 = *(v58 - 8);
  v6 = MEMORY[0x28223BE20](v58);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v53 - v9;
  v11 = type metadata accessor for DetectedTextBlock() - 8;
  v12 = MEMORY[0x28223BE20](v11);
  v57 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v53 - v15;
  v17 = *(a1 + 16);
  if (v17)
  {
    v56 = v10;
    v18 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedFrame;
    v19 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v54 = v8;
    v55 = (v5 + 48);
    v20 = &selRef_imageByApplyingSymbolConfiguration_;
    v21 = *(v14 + 72);
    v62 = MEMORY[0x277D84F98];
    v63 = v21;
    v60 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedFrame;
    while (1)
    {
      sub_257C31F70(v19, v16, type metadata accessor for DetectedTextBlock);
      v22 = objc_autoreleasePoolPush();
      v23 = [objc_opt_self() v20[263]];
      v24 = [v23 orientation];

      if ((v24 - 2) > 2)
      {
        v25 = 1;
        v26 = *(v1 + v18);
        if (!v26)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v25 = qword_257EDC490[(v24 - 2)];
        v26 = *(v1 + v18);
        if (!v26)
        {
          goto LABEL_4;
        }
      }

      v27 = [v26 camera];
      if (v27)
      {
        v28 = v27;
        v29 = *(v1 + v18);
        if (v29)
        {
          v30 = [v29 capturedImage];
          if (v30)
          {
            v31 = v30;
            v32 = *(v1 + v18);
            if (v32)
            {
              v33 = [v32 sceneDepth];
              if (v33)
              {
                v34 = v33;
                v35 = [v33 depthMap];

                v61 = v35;
                if (v35)
                {
                  v36 = v57;
                  sub_257C31F70(v16, v57, type metadata accessor for DetectedTextBlock);
                  v37 = v28;
                  v38 = v31;
                  v39 = v61;
                  v40 = v36;
                  v41 = v38;
                  v42 = v38;
                  v43 = v39;
                  v44 = v25;
                  v45 = v59;
                  sub_257EACA08(v40, v37, v42, v39, v44, v59);
                  if ((*v55)(v45, 1, v58) == 1)
                  {

                    sub_257BE4084(v45, &qword_27F8F5250);
                  }

                  else
                  {
                    v46 = v45;
                    v47 = v56;
                    sub_257C31FD8(v46, v56, type metadata accessor for SpatialTextBlock);
                    v48 = v37;
                    v49 = v54;
                    sub_257C31F70(v47, v54, type metadata accessor for SpatialTextBlock);
                    v50 = v62;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v64 = v50;
                    sub_257EC75A0(v49, v16, isUniquelyReferenced_nonNull_native);

                    v62 = v64;
                    sub_257C32040(v56, type metadata accessor for SpatialTextBlock);
                  }
                }

                else
                {
                }

                v20 = &selRef_imageByApplyingSymbolConfiguration_;
                v18 = v60;
                goto LABEL_4;
              }
            }
          }

          else
          {
          }

          v20 = &selRef_imageByApplyingSymbolConfiguration_;
        }

        else
        {
        }
      }

LABEL_4:
      sub_257C32040(v16, type metadata accessor for DetectedTextBlock);
      objc_autoreleasePoolPop(v22);
      v19 += v63;
      if (!--v17)
      {
        return v62;
      }
    }
  }

  return MEMORY[0x277D84F98];
}

void sub_257C2809C(uint64_t a1, uint64_t a2, char a3, char *a4, void *a5, unsigned int a6, char a7, void *a8, uint64_t a9, char a10)
{
  v11 = v10;
  v363 = a8;
  v348 = a6;
  v355 = a5;
  v358 = a4;
  v327 = sub_257ECCC80();
  v16 = *(v327 - 8);
  MEMORY[0x28223BE20](v327);
  v326 = &v307 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SpatialTextBlock();
  v345 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v343 = &v307 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v342 = &v307 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v354 = &v307 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v359 = &v307 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v353.i64[0] = &v307 - v28;
  MEMORY[0x28223BE20](v27);
  v352.i64[0] = &v307 - v29;
  v364 = type metadata accessor for DetectedTextBlock();
  v362 = *(v364 - 1);
  v30 = MEMORY[0x28223BE20](v364);
  v347 = &v307 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v307 - v33;
  v330 = v35;
  MEMORY[0x28223BE20](v32);
  v37 = &v307 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v307 - v39;
  if ((a3 & 1) == 0)
  {
    v41 = *&a1;
    v42 = *&a2;
    v43 = (v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastFingerPoint);
    v44 = *(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastFingerPoint + 16);
    v328 = v40;
    v338 = (v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastFingerPoint);
    v312 = a1;
    v313 = a2;
    if (v44)
    {
      v45 = 1;
    }

    else
    {
      v45 = vabdd_f64(*v43, *&a1) > 0.01 && vabdd_f64(v43[1], *&a2) > 0.01;
    }

    if (sub_257E5B4BC())
    {
      v46 = *&a2;
    }

    else
    {
      v46 = 1.0 - *&a2;
    }

    v374 = 0.0;
    v375 = 0.0;
    v47 = _s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0();
    v310 = v34;
    v48 = v16;
    if ((v47 & 1) == 0)
    {
      goto LABEL_16;
    }

    if (a7)
    {
      if (a10)
      {
        goto LABEL_16;
      }

      v49 = sub_257ECF930();
      v50 = v328;
      (*(*(v49 - 8) + 56))(v328, 1, 1, v49);
      v51 = swift_allocObject();
      v51[2] = 0;
      v51[3] = 0;
      v51[4] = v363;
      v51[5] = a9;
      v51[6] = v11;
      sub_257ECC3F0();
      v52 = &unk_257EDC428;
      v53 = v50;
      v48 = v16;
      v54 = v51;
    }

    else
    {
      v55 = sub_257ECF930();
      v56 = v328;
      (*(*(v55 - 8) + 56))(v328, 1, 1, v55);
      v57 = swift_allocObject();
      *(v57 + 16) = 0;
      *(v57 + 24) = 0;
      v58 = v313;
      *(v57 + 32) = v312;
      *(v57 + 40) = v58;
      *(v57 + 48) = v46;
      *(v57 + 56) = 0;
      *(v57 + 64) = v11;
      sub_257ECC3F0();
      v52 = &unk_257EDC418;
      v53 = v56;
      v54 = v57;
    }

    sub_257E81524(0, 0, v53, v52, v54);

LABEL_16:
    v59 = *(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedDocument);
    v346 = v11;
    v309 = v48;
    if (v59 && (v60 = *(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedTextBlocks), (v61 = *(v60 + 16)) != 0) && v45)
    {
      v333 = v61 != 1;
      if (v61 == 1)
      {
        v311 = *&a2;
        v357 = v41;
        v356 = v46;

        v318 = 0;
        v320 = 0;
        v67 = 1;
        goto LABEL_105;
      }

      v63 = sub_257EB75A8(v62);
      sub_257CCB1A8(v63, 1, v376);

      v318 = LOBYTE(v376[0]);
      v65 = CGSizeMake(v64);
      sub_257C2E0B0(v60, &v374, v376, v65, v66);
      v67 = *(v60 + 16);
      v320 = LOBYTE(v376[0]);
      if (v67)
      {
        v311 = *&a2;
        v357 = v41;
        v356 = v46;
LABEL_105:
        v361 = objc_opt_self();
        LODWORD(v337) = 0;
        v363 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedFrame;
        v351.i64[0] = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedSpatialTextBlocks;
        v324 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandTooCloseFeedback;
        v325 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_shortSpeechAnnouncements;
        *&v323 = v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastPointSpeakAnnouncementTime;
        v148 = *(v362 + 80);
        v149 = (v148 + 32) & ~v148;
        v329 = v60;
        v150 = v60 + v149;
        v360 = *(v362 + 72);
        v151.i32[1] = HIDWORD(v358);
        *v152.i32 = *(&v358 + 1) / 100.0;
        *v151.i32 = *&v355 / 100.0;
        v153 = vdupq_lane_s32(v151, 0);
        v334 = v153;
        v335 = vdupq_lane_s32(v152, 0);
        v322.i64[0] = v149;
        v336 = (v330 + 7 + v149) & 0xFFFFFFFFFFFFFFF8;
        v321.i64[0] = v48 + 40;
        v319 = (v148 + 40) & ~v148;
        v317 = (v330 + 7 + v319) & 0xFFFFFFFFFFFFFFF8;
        *v153.i32 = *&v358 / 100.0;
        v332 = v153;
        v331 = v148;
        while (1)
        {
          sub_257C31F70(v150, v37, type metadata accessor for DetectedTextBlock);
          v154 = objc_autoreleasePoolPush();
          v155 = &v37[v364[6]];
          v156 = *v155;
          v157 = v155[1];
          v158 = v155[2];
          v159 = v155[3];
          v160 = [v361 currentDevice];
          v161 = [v160 orientation];

          if (v161 == 3 || v161 == 4)
          {
            v156 = CGSizeMake(v162);
            v164 = v163;
            v158 = v165;
            v159 = v166;
          }

          else if (1.0 - v157 - v159 > 0.0)
          {
            v164 = 1.0 - v157 - v159;
          }

          else
          {
            v164 = 0.0;
          }

          v167 = *(v363 + v11);
          if (!v167)
          {
            goto LABEL_108;
          }

          v168 = [v167 capturedImage];
          if (!v168)
          {
            goto LABEL_108;
          }

          v169 = v168;
          if (qword_281544FE0 != -1)
          {
            swift_once();
          }

          v350.i64[0] = qword_281548348;
          v170 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakFingerLocation;
          swift_beginAccess();
          v171 = *(v170 + 8);
          v172 = *(v170 + 16);
          *&v372 = *v170;
          *(&v372 + 1) = v171;
          LOBYTE(v373) = v172;
          v173 = qword_2815447E0;

          if (v173 != -1)
          {
            v174 = swift_once();
          }

          v175 = v156 + -0.025;
          v176 = v164 + -0.025;
          v177 = (v158 + 0.05) * 1.05;
          v178 = (v159 + 0.05) * 1.05;
          v179 = qword_2815447E8;
          MEMORY[0x28223BE20](v174);
          *(&v307 - 2) = &v372;
          v349 = v179;
          sub_257ECFD50();

          v11 = v346;
          if ((v348 & 1) != 0 || (v180 = *(v363 + v346)) == 0)
          {
            v195 = *(v346 + v351.i64[0]);
            if (*(v195 + 16))
            {

              v196 = sub_257C0422C(v37);
              if (v197)
              {
                v198 = v354;
                sub_257C31F70(*(v195 + 56) + *(v345 + 72) * v196, v354, type metadata accessor for SpatialTextBlock);

                sub_257C31FD8(v198, v359, type metadata accessor for SpatialTextBlock);
                v199 = [v361 currentDevice];
                v200 = [v199 orientation];

                if ((v200 - 2) > 2)
                {
                  v201 = 1;
                }

                else
                {
                  v201 = qword_257EDC490[(v200 - 2)];
                }

                v202 = v359;
                sub_257C2F32C(v359, v169, v201, v376);
                v180 = sub_257C32040(v202, type metadata accessor for SpatialTextBlock);
                if ((v377 & 1) == 0)
                {
                  v177 = *&v376[2];
                  v178 = *&v376[3];
                  v175 = *v376;
                  v176 = *&v376[1];
                }
              }

              else
              {
              }
            }

            v379.x = CGSizeMake(v180);
            v379.y = v203;
            v381.origin.x = v175;
            v381.origin.y = v176;
            v381.size.width = v177;
            v381.size.height = v178;
            v194 = CGRectContainsPoint(v381, v379);
            if ((v194 & 1) == 0)
            {
              goto LABEL_107;
            }
          }

          else
          {
            v181 = [v180 camera];
            [v181 transform];
            v339 = v182;
            v340 = v183;
            v344 = v184;
            v341 = v185;

            v186 = *(v11 + v351.i64[0]);
            if (!*(v186 + 16))
            {
              goto LABEL_107;
            }

            v187 = sub_257C0422C(v37);
            if ((v188 & 1) == 0)
            {

              goto LABEL_107;
            }

            v189 = vaddq_f32(v341, vmlaq_f32(vmlaq_f32(vmulq_n_f32(v339, *v332.i32), v335, v340), v334, v344));
            v189.i32[3] = 0;
            v344 = v189;
            v190 = v353.i64[0];
            sub_257C31F70(*(v186 + 56) + *(v345 + 72) * v187, v353.i64[0], type metadata accessor for SpatialTextBlock);

            v191 = v190;
            v192 = v352.i64[0];
            sub_257C31FD8(v191, v352.i64[0], type metadata accessor for SpatialTextBlock);
            v193 = sub_257EAD3F0(v344);
            v194 = sub_257C32040(v192, type metadata accessor for SpatialTextBlock);
            if ((v193 & 0x100000000) != 0 || *&v193 >= 0.25)
            {
              goto LABEL_107;
            }
          }

          v204 = *&v37[v364[5]];
          if (v204)
          {
            MEMORY[0x28223BE20](v194);
            *(&v307 - 2) = v37;
            v205 = sub_257C82C5C(sub_257C32C64, (&v307 - 4), v204);
            v206 = sub_257E5B998(v205);

            MEMORY[0x28223BE20](v207);
            *(&v307 - 2) = v37;
            v208 = sub_257C82C5C(sub_257C32C64, (&v307 - 4), v204);
            v209 = sub_257E5B998(v208);

            v210 = [v209 string];

            v211 = sub_257ECF500();
            v213 = v212;

            if (!v211 && v213 == 0xE000000000000000)
            {

LABEL_141:
              v11 = v346;
              goto LABEL_108;
            }

            v214 = sub_257ED0640();

            v11 = v346;
            if ((v214 & 1) == 0)
            {
              v215 = sub_257ECF930();
              v216 = *(v215 - 8);
              v217 = *(v216 + 56);
              v344.i64[0] = v215;
              v341.i64[0] = v217;
              v340.i64[0] = v216 + 56;
              v217(v328, 1, 1);
              v218 = v310;
              sub_257C31F70(v37, v310, type metadata accessor for DetectedTextBlock);
              v219 = swift_allocObject();
              *(v219 + 16) = 0;
              *(v219 + 24) = 0;
              sub_257C31FD8(v218, v219 + v322.i64[0], type metadata accessor for DetectedTextBlock);
              *(v219 + v336) = v11;
              sub_257ECC3F0();
              sub_257E81524(0, 0, v328, &unk_257EDC3F8, v219);

              v220 = v313;
              v221 = v338;
              *v338 = v312;
              v221[1] = v220;
              *(v221 + 16) = 0;
              v222 = v324;
              *(v11 + v325) = 0;
              *(v11 + v222) = 0;
              v223 = v326;
              sub_257ECCC70();
              v224 = v323;
              swift_beginAccess();
              (*v321.i64[0])(v224, v223, v327);
              swift_endAccess();
              v225 = v350.i64[0] + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__outlinePointSpeak;
              v226 = swift_beginAccess();
              v227 = *(v225 + 8);
              v228 = *(v225 + 16);
              *&v372 = *v225;
              *(&v372 + 1) = v227;
              LOBYTE(v373) = v228;
              MEMORY[0x28223BE20](v226);
              *(&v307 - 2) = &v372;

              sub_257ECFD50();

              if (v370 == 1)
              {
                LODWORD(v337) = 1;
                (v341.i64[0])(v328, 1, 1, v344.i64[0]);
                sub_257C31F70(v37, v310, type metadata accessor for DetectedTextBlock);
                v229 = v317;
                v230 = swift_allocObject();
                v230[2] = 0;
                v230[3] = 0;
                v11 = v346;
                v230[4] = v346;
                sub_257C31FD8(v310, v230 + v319, type metadata accessor for DetectedTextBlock);
                v231 = (v230 + v229);
                *v231 = v175;
                v231[1] = v176;
                v231[2] = v177;
                v231[3] = v178;
                sub_257ECC3F0();
                sub_257E81524(0, 0, v328, &unk_257EDC408, v230);

                goto LABEL_108;
              }

              LODWORD(v337) = 1;
              goto LABEL_141;
            }
          }

LABEL_107:

LABEL_108:
          objc_autoreleasePoolPop(v154);
          sub_257C32040(v37, type metadata accessor for DetectedTextBlock);
          v150 += v360;
          if (!--v67)
          {

            v314 = v337 ^ 1;
            v46 = v356;
            v41 = v357;
            v42 = v311;
            goto LABEL_24;
          }
        }
      }

      v333 = 1;
    }

    else
    {
      v333 = 0;
      v320 = 0;
      v318 = 0;
    }

    v314 = 1;
LABEL_24:
    v68 = v347;
    if (qword_27F8F4610 != -1)
    {
      goto LABEL_294;
    }

    while (1)
    {
      v69 = qword_27F912F78;
      swift_beginAccess();
      v340.i64[0] = v69;
      v70 = *(v69 + 24);
      if (v70 >> 62)
      {
        v71 = sub_257ED0210();
      }

      else
      {
        v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v71)
      {

        LODWORD(v104) = 0;
        LODWORD(v324) = 1;
        v146 = v318;
        goto LABEL_102;
      }

      v311 = v42;
      v357 = v41;
      v356 = v46;
      v73 = 0;
      v316 = 0;
      LODWORD(v317) = 0;
      v336 = v70 & 0xFFFFFFFFFFFFFF8;
      v337 = v70 & 0xC000000000000001;
      v335.i64[0] = v70 + 32;
      v74.i32[1] = HIDWORD(v358);
      *&v72 = *&v358 / 100.0;
      v323 = v72;
      *&v72 = *(&v358 + 1) / 100.0;
      v349 = 0x8000000257EFA560;
      LODWORD(v324) = 1;
      v334.i64[0] = 0xEA0000000000736BLL;
      *v74.i32 = *&v355 / 100.0;
      v332.i64[0] = 0xEB00000000726566;
      v322 = vdupq_lane_s32(*&v72, 0);
      v46 = 1.05;
      v321 = vdupq_lane_s32(v74, 0);
      v41 = 0.0;
      *&v331 = 0.01;
      v329 = v70;
      v325 = v71;
      while (1)
      {
        if (v337)
        {
          v75 = MEMORY[0x259C72E20](v73, v70);
        }

        else
        {
          if (v73 >= *(v336 + 16))
          {
            goto LABEL_293;
          }

          v75 = *(v335.i64[0] + 8 * v73);
        }

        v76 = v75;
        v77 = __OFADD__(v73, 1);
        v78 = v73 + 1;
        v11 = MEMORY[0x277D837D0];
        if (v77)
        {
          break;
        }

        v344.i64[0] = v78;
        v79 = sub_257CEFE48(v75);
        if (!v79)
        {
          goto LABEL_153;
        }

        v80 = v79;
        *&v370 = 0x636F6C4274786574;
        *(&v370 + 1) = v334.i64[0];
        v81 = [v79 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v81)
        {
          sub_257ED0160();
          swift_unknownObjectRelease();
        }

        else
        {
          v370 = 0u;
          v371 = 0u;
        }

        v372 = v370;
        v373 = v371;
        if (!*(&v371 + 1))
        {
          goto LABEL_150;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6970);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_152;
        }

        v363 = v368;
        *&v370 = 0x7461746E6569726FLL;
        *(&v370 + 1) = 0xEB000000006E6F69;
        v82 = [v80 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v82)
        {
          sub_257ED0160();
          swift_unknownObjectRelease();
        }

        else
        {
          v370 = 0u;
          v371 = 0u;
        }

        v372 = v370;
        v373 = v371;
        if (!*(&v371 + 1))
        {

LABEL_150:

          sub_257BE4084(&v372, &unk_27F8F62F0);
          return;
        }

        type metadata accessor for UIInterfaceOrientation(0);
        if ((swift_dynamicCast() & 1) == 0)
        {

LABEL_152:

LABEL_153:

          return;
        }

        v319 = v368;
        *&v370 = 0x70614D6874706564;
        *(&v370 + 1) = 0xE800000000000000;
        v83 = [v80 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (!v83)
        {

LABEL_158:

          return;
        }

        sub_257ED0160();
        swift_unknownObjectRelease();
        *&v368 = 0x6172656D6163;
        *(&v368 + 1) = 0xE600000000000000;
        v84 = [v80 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v84)
        {
          sub_257ED0160();
          swift_unknownObjectRelease();
        }

        else
        {
          v368 = 0u;
          v369 = 0u;
        }

        v370 = v368;
        v371 = v369;
        if (!*(&v369 + 1))
        {
          __swift_destroy_boxed_opaque_existential_0(&v372);

          sub_257BE4084(&v370, &unk_27F8F62F0);
          return;
        }

        sub_257BD2C2C(0, &qword_27F8F5F98);
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_destroy_boxed_opaque_existential_0(&v372);

          goto LABEL_158;
        }

        v355 = v365;
        *&v368 = 0x6675426C65786970;
        *(&v368 + 1) = v332.i64[0];
        v85 = [v80 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (!v85)
        {
          __swift_destroy_boxed_opaque_existential_0(&v372);

          goto LABEL_158;
        }

        sub_257ED0160();
        swift_unknownObjectRelease();
        v86 = v363;
        if (v363[2])
        {
          v87 = sub_257EB75A8(v363);
          sub_257CCB1A8(v87, 1, &v368);

          LODWORD(v317) = v368;
          v89 = CGSizeMake(v88);
          sub_257C2E0B0(v86, &v375, &v368, v89, v90);
          v316 = v368;
        }

        else
        {
          LODWORD(v324) = 0;
        }

        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v315 = qword_281548348;
        v91 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakFingerLocation;
        swift_beginAccess();
        v92 = *(v91 + 8);
        v93 = *(v91 + 16);
        *&v368 = *v91;
        *(&v368 + 1) = v92;
        LOBYTE(v369) = v93;
        v94 = qword_2815447E0;

        if (v94 != -1)
        {
          v95 = swift_once();
        }

        v96 = qword_2815447E8;
        MEMORY[0x28223BE20](v95);
        *(&v307 - 2) = &v368;
        v361 = v96;
        sub_257ECFD50();

        if (v365 == 1)
        {
          v97 = sub_257C7C144(v363);
          v11 = v348;
          v98 = v338;
          v99 = *&v331;
        }

        else
        {
          v11 = v348;
          v98 = v338;
          v99 = *&v331;
          v97 = v363;
        }

        v100 = *(v98 + 16);
        v341.i64[0] = v76;
        v354 = v80;
        if (v100)
        {
          v339.i32[0] = 0;
        }

        else
        {
          v101 = vabdd_f64(*v98, v357) <= v99 || vabdd_f64(*(v98 + 1), v311) <= v99;
          v339.i32[0] = v101;
        }

        v360 = v97[2];
        if (v360)
        {
          v363 = v97;
          v359 = objc_opt_self();
          v102 = v363;
          v103 = 0;
          v104 = *(v362 + 80);
          v307 = ~v104;
          v308 = (v104 + 32) & ~v104;
          v358 = v363 + v308;
          do
          {
            if (v103 >= v102[2])
            {
              __break(1u);
              goto LABEL_215;
            }

            sub_257C31F70(&v358[*(v362 + 72) * v103], v68, type metadata accessor for DetectedTextBlock);
            v105 = (v68 + v364[6]);
            v106 = *v105;
            v107 = v105[1];
            v108 = v105[2];
            v109 = v105[3];
            v110 = [v359 currentDevice];
            v111 = [v110 orientation];

            if (v111 == 3 || v111 == 4)
            {
              v106 = CGSizeMake(v112);
              v108 = v114;
              v109 = v115;
            }

            else if (1.0 - v107 - v109 > 0.0)
            {
              v113 = 1.0 - v107 - v109;
            }

            else
            {
              v113 = 0.0;
            }

            v76 = &v307;
            v42 = v106 + -0.025;
            v116 = v113 + -0.025;
            v117 = (v108 + 0.05) * 1.05;
            v118 = *(v91 + 8);
            v119 = *(v91 + 16);
            v120 = (v109 + 0.05) * 1.05;
            *&v368 = *v91;
            *(&v368 + 1) = v118;
            LOBYTE(v369) = v119;
            MEMORY[0x28223BE20](v112);
            *(&v307 - 2) = &v368;

            sub_257ECFD50();

            if (v11)
            {
              v378.x = CGSizeMake(v121);
              v378.y = v122;
              v380.origin.x = v42;
              v380.origin.y = v116;
              v380.size.width = v117;
              v380.size.height = v120;
              v123 = CGRectContainsPoint(v380, v378);
              if (!v123)
              {
                goto LABEL_71;
              }
            }

            else
            {
              [v355 transform];
              v350 = v134;
              v351 = v135;
              v352 = v137;
              v353 = v136;
              *&v365 = 0xD000000000000011;
              *(&v365 + 1) = v349;
              v138 = [v354 __swift_objectForKeyedSubscript_];
              swift_unknownObjectRelease();
              if (v138)
              {
                sub_257ED0160();
                swift_unknownObjectRelease();
              }

              else
              {
                v365 = 0u;
                v366 = 0u;
              }

              v368 = v365;
              v369 = v366;
              if (!*(&v366 + 1))
              {
                sub_257BE4084(&v368, &unk_27F8F62F0);
                goto LABEL_71;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5FA0);
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_71;
              }

              v139 = v367;
              if (!*(v367 + 16) || (v140 = sub_257C0422C(v68), (v141 & 1) == 0))
              {

                goto LABEL_71;
              }

              v142 = vaddq_f32(v352, vmlaq_f32(vmlaq_f32(vmulq_n_f32(v350, *&v323), v322, v351), v321, v353));
              v142.i32[3] = 0;
              v353 = v142;
              v143 = v343;
              sub_257C31F70(*(v139 + 56) + *(v345 + 72) * v140, v343, type metadata accessor for SpatialTextBlock);

              v144 = v143;
              v76 = v342;
              sub_257C31FD8(v144, v342, type metadata accessor for SpatialTextBlock);
              v145 = sub_257EAD3F0(v353);
              v123 = sub_257C32040(v76, type metadata accessor for SpatialTextBlock);
              if ((v145 & 0x100000000) != 0 || *&v145 >= 0.25)
              {
                goto LABEL_71;
              }
            }

            v124 = *(v68 + v364[5]);
            if (v124)
            {
              MEMORY[0x28223BE20](v123);
              *(&v307 - 2) = v68;
              v125 = sub_257C82C5C(sub_257C31C98, (&v307 - 4), v124);
              v126 = v68;
              v127 = sub_257E5B998(v125);

              MEMORY[0x28223BE20](v128);
              *(&v307 - 2) = v126;
              v129 = sub_257C82C5C(sub_257C32C64, (&v307 - 4), v124);
              v130 = sub_257E5B998(v129);

              v76 = [v130 string];

              v131 = sub_257ECF500();
              v133 = v132;

              if (v131 || v133 != 0xE000000000000000)
              {
                LODWORD(v76) = sub_257ED0640();

                v11 = v348;
                if (v76)
                {
                  v68 = v347;
                }

                else
                {
                  v68 = v347;
                  if (!((*&v347[v364[7]] <= 0.25) | v339.i8[0] & 1))
                  {

                    v233 = sub_257ECF930();
                    v234 = *(v233 - 8);
                    v235 = v328;
                    v362 = *(v234 + 56);
                    v360 = v234 + 56;
                    (v362)(v328, 1, 1, v233);
                    v236 = v310;
                    sub_257C31F70(v68, v310, type metadata accessor for DetectedTextBlock);
                    v237 = v308;
                    v363 = (v330 + 7);
                    v238 = (v330 + 7 + v308) & 0xFFFFFFFFFFFFFFF8;
                    v364 = v104;
                    v239 = swift_allocObject();
                    *(v239 + 16) = 0;
                    *(v239 + 24) = 0;
                    sub_257C31FD8(v236, v239 + v237, type metadata accessor for DetectedTextBlock);
                    v240 = v68;
                    v241 = v346;
                    *(v239 + v238) = v346;
                    sub_257ECC3F0();
                    sub_257E81524(0, 0, v235, &unk_257EDC380, v239);

                    v242 = v313;
                    v243 = v338;
                    *v338 = v312;
                    v243[1] = v242;
                    *(v243 + 16) = 0;
                    *(v241 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_shortSpeechAnnouncements) = 0;
                    *(v241 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandTooCloseFeedback) = 0;
                    v244 = v326;
                    sub_257ECCC70();
                    v245 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastPointSpeakAnnouncementTime;
                    swift_beginAccess();
                    (*(v309 + 40))(v241 + v245, v244, v327);
                    swift_endAccess();
                    v246 = v315 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__outlinePointSpeak;
                    v247 = swift_beginAccess();
                    v248 = *(v246 + 8);
                    v249 = *(v246 + 16);
                    *&v368 = *v246;
                    *(&v368 + 1) = v248;
                    LOBYTE(v369) = v249;
                    MEMORY[0x28223BE20](v247);
                    *(&v307 - 2) = &v368;

                    sub_257ECFD50();

                    if (v365 == 1)
                    {
                      (v362)(v328, 1, 1, v233);
                      v250 = v310;
                      sub_257C31F70(v240, v310, type metadata accessor for DetectedTextBlock);
                      sub_257BE41F4(&v370, &v368);
                      sub_257BE41F4(&v372, &v365);
                      v251 = (v364 + 16) & v307;
                      v252 = (v363 + v251) & 0xFFFFFFFFFFFFFFF8;
                      v253 = (v252 + 15) & 0xFFFFFFFFFFFFFFF8;
                      v254 = (v253 + 39) & 0xFFFFFFFFFFFFFFF8;
                      v255 = (v254 + 39) & 0xFFFFFFFFFFFFFFF8;
                      v256 = swift_allocObject();
                      *(v256 + 16) = 0;
                      *(v256 + 24) = 0;
                      *(v256 + 32) = v42;
                      *(v256 + 40) = v116;
                      *(v256 + 48) = v117;
                      *(v256 + 56) = v120;
                      sub_257C31FD8(v250, v256 + v251, type metadata accessor for DetectedTextBlock);
                      v257 = v355;
                      *(v256 + v252) = v355;
                      sub_257BEBE08(&v368, (v256 + v253));
                      sub_257BEBE08(&v365, (v256 + v254));
                      *(v256 + v255) = v319;
                      *(v256 + ((v255 + 15) & 0xFFFFFFFFFFFFFFF8)) = v241;
                      v240 = v347;
                      sub_257ECC3F0();
                      v258 = v257;
                      sub_257E81524(0, 0, v328, &unk_257EDC390, v256);
                    }

                    else
                    {
                    }

                    __swift_destroy_boxed_opaque_existential_0(&v370);
                    __swift_destroy_boxed_opaque_existential_0(&v372);
                    sub_257C32040(v240, type metadata accessor for DetectedTextBlock);
                    return;
                  }
                }
              }

              else
              {

                v68 = v347;
                v11 = v348;
              }
            }

LABEL_71:
            ++v103;
            sub_257C32040(v68, type metadata accessor for DetectedTextBlock);
            v102 = v363;
          }

          while (v360 != v103);
        }

        __swift_destroy_boxed_opaque_existential_0(&v370);
        __swift_destroy_boxed_opaque_existential_0(&v372);
        v73 = v344.i64[0];
        v11 = v346;
        v70 = v329;
        if (v344.i64[0] == v325)
        {
          v232 = 0xE900000000000074;
          v103 = 0x66656C2E706F742ELL;

          LODWORD(v68) = v317;
          if (v317 > 4)
          {
            v46 = v356;
            LODWORD(v104) = v316;
            goto LABEL_271;
          }

          v46 = v356;
          v146 = v318;
          if (v317 > 1)
          {
            LODWORD(v104) = v316;
LABEL_271:
            v302 = sub_257ED0640();

            if ((v302 & 1) == 0)
            {
              if (qword_27F8F4668 == -1)
              {
                goto LABEL_274;
              }

              goto LABEL_299;
            }

            LODWORD(v76) = 0;
            goto LABEL_191;
          }

          LODWORD(v104) = v316;
          if (v317)
          {

            LODWORD(v76) = 0;
            LODWORD(v68) = 1;
            goto LABEL_191;
          }

LABEL_102:
          v147 = 0xE900000000000074;
          v103 = 0x66656C2E706F742ELL;
          if (v146 >= 2)
          {
            v259 = sub_257ED0640();

            if ((v259 & 1) == 0)
            {
              if (qword_27F8F4668 == -1)
              {
                goto LABEL_167;
              }

              goto LABEL_297;
            }

            goto LABEL_190;
          }

          if (v146)
          {
            goto LABEL_189;
          }

          LODWORD(v76) = 1;
          LODWORD(v68) = 0;
LABEL_191:
          while (2)
          {
            if (v104 && (v324 & 1) != 0)
            {
              v264 = 0xE900000000000074;
              v103 = 0x66656C2E706F742ELL;
              if (v104 == 1)
              {

                v41 = 0.0;
              }

              else
              {
                v266 = sub_257ED0640();

                v41 = 0.0;
                if ((v266 & 1) == 0)
                {
                  *&v370 = 0x6E69662E65766F6DLL;
                  *(&v370 + 1) = 0xEB00000000726567;
                  if (v104 > 5u)
                  {
                    if (v104 > 7u)
                    {
                      if (v104 == 8)
                      {
                        v264 = 0xE500000000000000;
                        v103 = 0x6E776F642ELL;
                      }

                      else
                      {
                        v103 = 0x2E6D6F74746F622ELL;
                        v264 = 0xED00007468676972;
                      }
                    }

                    else if (v104 == 6)
                    {
                      v264 = 0xE600000000000000;
                      v103 = 0x74686769722ELL;
                    }

                    else
                    {
                      v103 = 0x2E6D6F74746F622ELL;
                      v264 = 0xEC0000007466656CLL;
                    }
                  }

                  else if (v104 > 3u)
                  {
                    if (v104 == 4)
                    {
                      v103 = 0x6769722E706F742ELL;
                      v264 = 0xEA00000000007468;
                    }

                    else
                    {
                      v264 = 0xE500000000000000;
                      v103 = 0x7466656C2ELL;
                    }
                  }

                  else if (v104 != 2)
                  {
                    v264 = 0xE300000000000000;
                    v103 = 7370030;
                  }

                  MEMORY[0x259C72150](v103, v264);

                  v271 = String.localized.getter();
                  v103 = v272;

                  *&v368 = v271;
                  *(&v368 + 1) = v103;
                  sub_257BDAB08();
                  sub_257ED0100();

                  v41 = v375;
                }
              }

              goto LABEL_224;
            }

            v265 = !v333;
            v41 = 0.0;
            if (!v320)
            {
              v265 = 1;
            }

            if ((v265 & 1) == 0)
            {
              if (v320 == 1)
              {
              }

              else
              {
LABEL_215:
                v267 = sub_257ED0640();

                if ((v267 & 1) == 0)
                {
                  *&v370 = 0x6E69662E65766F6DLL;
                  *(&v370 + 1) = 0xEB00000000726567;
                  LOBYTE(v368) = v320;
                  v268 = TextDetectionDirection.description.getter();
                  MEMORY[0x259C72150](v268);

                  v269 = String.localized.getter();
                  v103 = v270;

                  *&v368 = v269;
                  *(&v368 + 1) = v103;
                  sub_257BDAB08();
                  sub_257ED0100();

                  v41 = v374;
                }
              }
            }

            if (v324)
            {
LABEL_224:
              if (!v76)
              {
                v333 = 1;
                goto LABEL_229;
              }

              v333 = 1;
            }

            else if (!v76)
            {
LABEL_229:
              LOBYTE(v365) = v68;
              sub_257CCCE54(0, &v368);
              v103 = v368;
              if (v368 != 12)
              {
                v273 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutDeviceDirectionMessage;
                v274 = *(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutDeviceDirectionMessage);
                if (v274 < 61)
                {
                  v278 = v274 + 1;
                }

                else
                {
                  v275 = sub_257ECF930();
                  v276 = v328;
                  (*(*(v275 - 8) + 56))(v328, 1, 1, v275);
                  v277 = swift_allocObject();
                  *(v277 + 16) = 0;
                  *(v277 + 24) = 0;
                  *(v277 + 32) = v11;
                  *(v277 + 40) = v103;
                  sub_257ECC3F0();
                  sub_257E81524(0, 0, v276, &unk_257EDC3E8, v277);

                  v278 = 0;
                }

                v279 = v320;
                v280 = v314;
                *(v11 + v273) = v278;
LABEL_236:
                if (v279)
                {
                  v281 = v279;
                }

                else
                {
                  v281 = 10;
                }

                if (v104)
                {
                  v232 = v104;
                }

                else
                {
                  v232 = v281;
                }

                if ((v280 & v333) == 1 && v41 > 0.08)
                {
                  v282 = *(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pulseFeedbackProcessor);
                  sub_257DE3694(v41);

                  if (v68 == 10)
                  {
                    v283 = v232 - 3;
                    if (v232 - 3) <= 5u && ((0x2Du >> v283))
                    {
                      if (*(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutDeviceDirectionMessage) < 76)
                      {
                        v286 = *(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutFingerDirectionMessage);
                        v77 = __OFADD__(v286, 1);
                        v287 = v286 + 1;
                        if (v77)
                        {
                          __break(1u);
                          return;
                        }

                        *(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutFingerDirectionMessage) = v287;
                      }

                      else
                      {
                        v232 = 0xA09090B0908uLL >> (8 * (v283 & 0x1Fu));
                        v284 = sub_257ECF930();
                        v103 = v328;
                        (*(*(v284 - 8) + 56))(v328, 1, 1, v284);
                        v285 = swift_allocObject();
                        *(v285 + 16) = 0;
                        *(v285 + 24) = 0;
                        *(v285 + 32) = v11;
                        *(v285 + 40) = v232;
                        sub_257ECC3F0();
                        sub_257E81524(0, 0, v103, &unk_257EDC3D8, v285);

                        *(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutFingerDirectionMessage) = 0;
                      }
                    }
                  }
                }

                if (v46 < 0.2)
                {
                  if (*(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutDeviceDirectionMessage) >= 46)
                  {
                    v288 = sub_257ECF930();
                    v289 = v328;
                    (*(*(v288 - 8) + 56))(v328, 1, 1, v288);
                    v290 = swift_allocObject();
                    *(v290 + 16) = 0;
                    *(v290 + 24) = 0;
                    *(v290 + 32) = v11;
                    *(v290 + 40) = 10;
                    sub_257ECC3F0();
                    v291 = &unk_257EDC3C8;
                    goto LABEL_257;
                  }

                  v293 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutFingerDirectionMessage;
                  v294 = *(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutFingerDirectionMessage);
                  v77 = __OFADD__(v294, 1);
                  v295 = v294 + 1;
                  if (!v77)
                  {
LABEL_262:
                    *(v11 + v293) = v295;
                    goto LABEL_263;
                  }

                  __break(1u);
LABEL_261:
                  v293 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutFingerDirectionMessage;
                  v296 = *(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutFingerDirectionMessage);
                  v77 = __OFADD__(v296, 1);
                  v295 = v296 + 1;
                  if (v77)
                  {
                    __break(1u);
LABEL_299:
                    swift_once();
LABEL_274:
                    v303 = v232 - 48;
                    v304 = 0x4850492E65766F6DLL;
                    if (byte_27F8F8D88)
                    {
                      v304 = 0x4150492E65766F6DLL;
                    }

                    else
                    {
                      v303 = 0xEB00000000454E4FLL;
                    }

                    *&v372 = v304;
                    *(&v372 + 1) = v303;
                    if (v68 > 5)
                    {
                      if (v68 > 7)
                      {
                        if (v68 == 8)
                        {
                          v232 = 0xE500000000000000;
                          v103 = 0x6E776F642ELL;
                        }

                        else
                        {
                          v103 = 0x2E6D6F74746F622ELL;
                          v232 = 0xED00007468676972;
                        }
                      }

                      else if (v68 == 6)
                      {
                        v232 = 0xE600000000000000;
                        v103 = 0x74686769722ELL;
                      }

                      else
                      {
                        v103 = 0x2E6D6F74746F622ELL;
                        v232 = 0xEC0000007466656CLL;
                      }
                    }

                    else if (v68 > 3)
                    {
                      if (v68 == 4)
                      {
                        v103 = 0x6769722E706F742ELL;
                        v232 = 0xEA00000000007468;
                      }

                      else
                      {
                        v232 = 0xE500000000000000;
                        v103 = 0x7466656C2ELL;
                      }
                    }

                    else if (v68 != 2)
                    {
                      v232 = 0xE300000000000000;
                      v103 = 7370030;
                    }

                    MEMORY[0x259C72150](v103, v232);

                    v305 = String.localized.getter();
                    v103 = v306;

                    *&v370 = v305;
                    *(&v370 + 1) = v103;
                    sub_257BDAB08();
                    sub_257ED0100();

                    LODWORD(v76) = 0;
                    continue;
                  }

                  goto LABEL_262;
                }

                if (v46 > 0.8)
                {
                  if (*(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutDeviceDirectionMessage) < 46)
                  {
                    goto LABEL_261;
                  }

                  v292 = sub_257ECF930();
                  v289 = v328;
                  (*(*(v292 - 8) + 56))(v328, 1, 1, v292);
                  v290 = swift_allocObject();
                  *(v290 + 16) = 0;
                  *(v290 + 24) = 0;
                  *(v290 + 32) = v11;
                  *(v290 + 40) = 8;
                  sub_257ECC3F0();
                  v291 = &unk_257EDC3B8;
LABEL_257:
                  sub_257E81524(0, 0, v289, v291, v290);

                  *(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutFingerDirectionMessage) = 0;
                }

LABEL_263:
                v147 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutText;
                if (v333)
                {
                  goto LABEL_267;
                }

                v297 = *(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutText);
                v77 = __OFADD__(v297, 1);
                v298 = v297 + 1;
                if (!v77)
                {
                  *(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutText) = v298;
                  if (v298 < 61)
                  {
                    return;
                  }

                  v299 = sub_257ECF930();
                  v300 = v328;
                  (*(*(v299 - 8) + 56))(v328, 1, 1, v299);
                  v301 = swift_allocObject();
                  v301[2] = 0;
                  v301[3] = 0;
                  v301[4] = v11;
                  sub_257ECC3F0();
                  sub_257E81524(0, 0, v300, &unk_257EDC3A8, v301);

LABEL_267:
                  *(v11 + v147) = 0;
                  return;
                }

                __break(1u);
LABEL_297:
                swift_once();
LABEL_167:
                v260 = v147 - 48;
                v261 = 0x4850492E65766F6DLL;
                if (byte_27F8F8D88)
                {
                  v261 = 0x4150492E65766F6DLL;
                }

                else
                {
                  v260 = 0xEB00000000454E4FLL;
                }

                *&v372 = v261;
                *(&v372 + 1) = v260;
                if (v318 > 5)
                {
                  if (v318 > 7)
                  {
                    if (v318 == 8)
                    {
                      v147 = 0xE500000000000000;
                      v103 = 0x6E776F642ELL;
                    }

                    else
                    {
                      v103 = 0x2E6D6F74746F622ELL;
                      v147 = 0xED00007468676972;
                    }
                  }

                  else if (v318 == 6)
                  {
                    v147 = 0xE600000000000000;
                    v103 = 0x74686769722ELL;
                  }

                  else
                  {
                    v103 = 0x2E6D6F74746F622ELL;
                    v147 = 0xEC0000007466656CLL;
                  }
                }

                else if (v318 > 3)
                {
                  if (v318 == 4)
                  {
                    v103 = 0x6769722E706F742ELL;
                    v147 = 0xEA00000000007468;
                  }

                  else
                  {
                    v147 = 0xE500000000000000;
                    v103 = 0x7466656C2ELL;
                  }
                }

                else if (v318 != 2)
                {
                  v147 = 0xE300000000000000;
                  v103 = 7370030;
                }

                MEMORY[0x259C72150](v103, v147);

                v262 = String.localized.getter();
                v103 = v263;

                *&v370 = v262;
                *(&v370 + 1) = v103;
                sub_257BDAB08();
                sub_257ED0100();

LABEL_189:

LABEL_190:
                LODWORD(v68) = 0;
                LODWORD(v76) = 1;
                continue;
              }

LABEL_235:
              v279 = v320;
              v280 = v314;
              goto LABEL_236;
            }

            break;
          }

          if (v318)
          {
            LODWORD(v68) = v318;
            goto LABEL_229;
          }

          LODWORD(v68) = 10;
          goto LABEL_235;
        }
      }

      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      swift_once();
    }
  }
}

uint64_t sub_257C2B364(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 32) = a8;
  *(v8 + 80) = a7;
  *(v8 + 16) = a1;
  *(v8 + 24) = a3;
  *(v8 + 40) = type metadata accessor for DetectedTextBlock();
  *(v8 + 48) = swift_task_alloc();
  type metadata accessor for MAGPointAndSpeakEvent(0);
  *(v8 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C2B42C, 0, 0);
}

uint64_t sub_257C2B42C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_257ECCCE0();
  v3 = v1[9];
  *(v2 + v1[5]) = 0;
  v4 = (v2 + v1[6]);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  *v4 = *MEMORY[0x277CBF3A0];
  v4[1] = v5;
  *(v2 + v1[7]) = 0;
  *(v2 + v1[8]) = 0;
  *(v2 + v3) = 0;
  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 orientation];

  if ((v7 - 2) > 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = qword_257EDC490[(v7 - 2)];
  }

  v30 = v9;
  v10 = CGSizeMake(v8);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = *(v0 + 48);
  v18 = *(v0 + 56);
  v19 = *(v0 + 80);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F8F5268);
  v21 = v20[12];
  v22 = v20[16];
  v23 = v20[20];
  v24 = v20[24];
  v25 = v20[28];
  v26 = v20[32];
  *v18 = v10;
  v18[1] = v12;
  v18[2] = v14;
  v18[3] = v16;
  sub_257C31F70(v17, v18 + v21, type metadata accessor for DetectedTextBlock);
  *(v18 + v22) = 0;
  *(v18 + v23) = 0;
  *(v18 + v24) = 0;
  *(v18 + v25) = v30;
  *(v18 + v26) = v19;
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  swift_storeEnumTagMultiPayload();
  sub_257C32040(v17, type metadata accessor for DetectedTextBlock);
  v27 = swift_task_alloc();
  *(v0 + 64) = v27;
  *v27 = v0;
  v27[1] = sub_257C2B680;
  v28 = *(v0 + 56);

  return MAGPointAndSpeakEventHandler.send(_:)(v28);
}

uint64_t sub_257C2B680()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_257C2B820;
  }

  else
  {
    v2 = sub_257C2B794;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257C2B794()
{
  sub_257C32040(*(v0 + 56), type metadata accessor for MAGPointAndSpeakEvent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C2B820()
{
  sub_257C32040(*(v0 + 56), type metadata accessor for MAGPointAndSpeakEvent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C2B8AC(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5[2].n128_u64[0] = a5;
  v5[1] = a1;
  type metadata accessor for MAGPointAndSpeakEvent(0);
  v5[2].n128_u64[1] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C2B940, 0, 0);
}

uint64_t sub_257C2B940()
{
  **(v0 + 40) = *(v0 + 16);
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_257C2BA08;
  v2 = *(v0 + 40);

  return MAGPointAndSpeakEventHandler.send(_:)(v2);
}

uint64_t sub_257C2BA08()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_257C2BBA0;
  }

  else
  {
    v2 = sub_257C2BB1C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257C2BB1C()
{
  sub_257C32040(*(v0 + 40), type metadata accessor for MAGPointAndSpeakEvent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C2BBA0()
{
  sub_257C32040(*(v0 + 40), type metadata accessor for MAGPointAndSpeakEvent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C2BC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MAGPointAndSpeakEvent(0);
  v5[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C2BCB4, 0, 0);
}

uint64_t sub_257C2BCB4()
{
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5260);
  v3 = *(type metadata accessor for DetectedTextBlock() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_257ED6D30;
  sub_257C31F70(v2, v5 + v4, type metadata accessor for DetectedTextBlock);
  *v1 = v5;
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_257C2BE38;
  v7 = v0[4];

  return MAGPointAndSpeakEventHandler.send(_:)(v7);
}

uint64_t sub_257C2BE38()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_257C2BFD0;
  }

  else
  {
    v2 = sub_257C2BF4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257C2BF4C()
{
  sub_257C32040(*(v0 + 32), type metadata accessor for MAGPointAndSpeakEvent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C2BFD0()
{
  sub_257C32040(*(v0 + 32), type metadata accessor for MAGPointAndSpeakEvent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C2C054(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 48) = a3;
  *(v9 + 56) = a4;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 16) = a8;
  *(v9 + 24) = a9;
  type metadata accessor for MAGPointAndSpeakEvent(0);
  *(v9 + 64) = swift_task_alloc();
  *(v9 + 72) = swift_task_alloc();
  *(v9 + 80) = *(type metadata accessor for SpatialTextBlock() - 8);
  *(v9 + 88) = swift_task_alloc();
  *(v9 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C2C15C, 0, 0);
}

uint64_t sub_257C2C15C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedSpatialTextBlocks);
  if (*(v2 + 16))
  {
    v3 = *(v0 + 24);

    v4 = sub_257C0422C(v3);
    if (v5)
    {
      v7 = *(v0 + 88);
      v6 = *(v0 + 96);
      v8 = *(v0 + 72);
      sub_257C31F70(*(v2 + 56) + *(*(v0 + 80) + 72) * v4, v7, type metadata accessor for SpatialTextBlock);

      sub_257C31FD8(v7, v6, type metadata accessor for SpatialTextBlock);
      sub_257C31F70(v6, v8, type metadata accessor for SpatialTextBlock);
      type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
      swift_storeEnumTagMultiPayload();
      v9 = swift_task_alloc();
      *(v0 + 104) = v9;
      *v9 = v0;
      v9[1] = sub_257C2C47C;
      v10 = *(v0 + 72);
      goto LABEL_14;
    }

    v1 = *(v0 + 16);
  }

  v11 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedFrame;
  v12 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedFrame);
  if (!v12)
  {
    v32 = 0;
    v33 = 0;
LABEL_11:
    v34 = 0;
    goto LABEL_13;
  }

  v13 = [v12 camera];
  v14 = *(v1 + v11);
  v32 = v13;
  if (!v14)
  {
    v33 = 0;
    v34 = 0;
    goto LABEL_13;
  }

  v15 = [v14 capturedImage];
  v16 = *(v1 + v11);
  v33 = v15;
  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = [v16 sceneDepth];
  if (!v17)
  {
    goto LABEL_11;
  }

  v18 = v17;
  v34 = [v17 depthMap];

LABEL_13:
  v19 = *(v0 + 64);
  v20 = *(v0 + 24);
  v21 = *(*(v0 + 16) + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastOrientation);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F8F5268);
  v23 = v22[12];
  v24 = v22[16];
  v25 = v22[20];
  v26 = v22[24];
  v27 = v22[28];
  v28 = v22[32];
  v29 = *(v0 + 48);
  *v19 = *(v0 + 32);
  v19[1] = v29;
  sub_257C31F70(v20, v19 + v23, type metadata accessor for DetectedTextBlock);
  *(v19 + v24) = v32;
  *(v19 + v25) = v33;
  *(v19 + v26) = v34;
  *(v19 + v27) = v21;
  *(v19 + v28) = 0;
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  swift_storeEnumTagMultiPayload();
  v30 = swift_task_alloc();
  *(v0 + 120) = v30;
  *v30 = v0;
  v30[1] = sub_257C2C654;
  v10 = *(v0 + 64);
LABEL_14:

  return MAGPointAndSpeakEventHandler.send(_:)(v10);
}

uint64_t sub_257C2C47C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_257C2C80C;
  }

  else
  {
    v2 = sub_257C2C590;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257C2C590()
{
  v1 = v0[12];
  sub_257C32040(v0[9], type metadata accessor for MAGPointAndSpeakEvent);
  sub_257C32040(v1, type metadata accessor for SpatialTextBlock);

  v2 = v0[1];

  return v2();
}

uint64_t sub_257C2C654()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_257C2C8D0;
  }

  else
  {
    v2 = sub_257C2C768;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257C2C768()
{
  sub_257C32040(*(v0 + 64), type metadata accessor for MAGPointAndSpeakEvent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C2C80C()
{
  v1 = v0[12];
  sub_257C32040(v0[9], type metadata accessor for MAGPointAndSpeakEvent);
  sub_257C32040(v1, type metadata accessor for SpatialTextBlock);

  v2 = v0[1];

  return v2();
}

uint64_t sub_257C2C8D0()
{
  sub_257C32040(*(v0 + 64), type metadata accessor for MAGPointAndSpeakEvent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C2C974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MAGPointAndSpeakEvent(0);
  v5[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C2CA04, 0, 0);
}

uint64_t sub_257C2CA04()
{
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5260);
  v3 = *(type metadata accessor for DetectedTextBlock() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_257ED6D30;
  sub_257C31F70(v2, v5 + v4, type metadata accessor for DetectedTextBlock);
  *v1 = v5;
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_257C2CB88;
  v7 = v0[4];

  return MAGPointAndSpeakEventHandler.send(_:)(v7);
}

uint64_t sub_257C2CB88()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_257C32C50;
  }

  else
  {
    v2 = sub_257C32C18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257C2CC9C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 160) = a12;
  *(v12 + 168) = v15;
  *(v12 + 144) = a10;
  *(v12 + 152) = a11;
  *(v12 + 128) = a8;
  *(v12 + 136) = a9;
  *(v12 + 112) = a3;
  *(v12 + 120) = a4;
  *(v12 + 96) = a1;
  *(v12 + 104) = a2;
  type metadata accessor for MAGPointAndSpeakEvent(0);
  *(v12 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C2CD44, 0, 0);
}

uint64_t sub_257C2CD44()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v20 = *(v0 + 160);
  v3 = *(v0 + 136);
  v19 = *(v0 + 128);
  v17 = *(v0 + 112);
  v18 = *(v0 + 96);
  sub_257BE41F4(*(v0 + 144), v0 + 16);
  type metadata accessor for CVBuffer(0);
  swift_dynamicCast();
  v4 = *(v0 + 80);
  sub_257BE41F4(v2, v0 + 48);
  swift_dynamicCast();
  v5 = *(v0 + 88);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F8F5268);
  v7 = v6[12];
  v8 = v6[16];
  v9 = v6[20];
  v10 = v6[24];
  v11 = v6[28];
  v12 = v6[32];
  *v1 = v18;
  v1[1] = v17;
  sub_257C31F70(v19, v1 + v7, type metadata accessor for DetectedTextBlock);
  *(v1 + v8) = v3;
  *(v1 + v9) = v4;
  *(v1 + v10) = v5;
  *(v1 + v11) = v20;
  *(v1 + v12) = 0;
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  swift_storeEnumTagMultiPayload();
  v13 = v3;
  v14 = swift_task_alloc();
  *(v0 + 184) = v14;
  *v14 = v0;
  v14[1] = sub_257C2CF18;
  v15 = *(v0 + 176);

  return MAGPointAndSpeakEventHandler.send(_:)(v15);
}

uint64_t sub_257C2CF18()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_257C2D0B0;
  }

  else
  {
    v2 = sub_257C2D02C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257C2D02C()
{
  sub_257C32040(*(v0 + 176), type metadata accessor for MAGPointAndSpeakEvent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C2D0B0()
{
  sub_257C32040(*(v0 + 176), type metadata accessor for MAGPointAndSpeakEvent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C2D134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 96) = a5;
  *(v5 + 16) = a4;
  *(v5 + 24) = type metadata accessor for MAGOutputEvent.EventType(0);
  *(v5 + 32) = swift_task_alloc();
  *(v5 + 40) = type metadata accessor for MAGOutputEvent(0);
  *(v5 + 48) = swift_task_alloc();
  type metadata accessor for MAGPointAndSpeakEvent(0);
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C2D228, 0, 0);
}

uint64_t sub_257C2D228()
{
  v1 = *(v0 + 56);
  sub_257C95DE4();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();

  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_257ECF500();
  v9 = v8;

  *v1 = v7;
  v1[1] = v9;
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  swift_storeEnumTagMultiPayload();
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_257C2D3E0;
  v11 = *(v0 + 56);

  return MAGPointAndSpeakEventHandler.send(_:)(v11);
}

uint64_t sub_257C2D3E0()
{
  v2 = *(*v1 + 56);
  *(*v1 + 72) = v0;

  sub_257C32040(v2, type metadata accessor for MAGPointAndSpeakEvent);
  if (v0)
  {
    v3 = sub_257C2D75C;
  }

  else
  {
    v3 = sub_257C2D524;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_257C2D524()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 96);
  *(v0 + 80) = *(*(v0 + 16) + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_outputEngine);
  *v3 = v4;
  swift_storeEnumTagMultiPayload();
  sub_257ECC3F0();
  sub_257ECCCE0();
  sub_257C31F70(v3, v1 + v2[5], type metadata accessor for MAGOutputEvent.EventType);
  *(v1 + v2[6]) = 1;
  *(v1 + v2[7]) = 0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 32);
  v8 = qword_281548348;
  sub_257ECC3F0();
  sub_257C32040(v7, type metadata accessor for MAGOutputEvent.EventType);
  *(v5 + *(v6 + 32)) = v8;
  sub_257ECF900();
  *(v0 + 88) = sub_257ECF8F0();
  v10 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257C2D6A4, v10, v9);
}

uint64_t sub_257C2D6A4()
{
  v1 = *(v0 + 48);

  sub_257CBBC80(v1);

  sub_257C32040(v1, type metadata accessor for MAGOutputEvent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_257C2D75C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C2D7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 96) = a5;
  *(v5 + 16) = a4;
  *(v5 + 24) = type metadata accessor for MAGOutputEvent.EventType(0);
  *(v5 + 32) = swift_task_alloc();
  *(v5 + 40) = type metadata accessor for MAGOutputEvent(0);
  *(v5 + 48) = swift_task_alloc();
  type metadata accessor for MAGPointAndSpeakEvent(0);
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C2D8C8, 0, 0);
}

uint64_t sub_257C2D8C8()
{
  v1 = *(v0 + 56);
  sub_257C95DE4();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();

  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_257ECF500();
  v9 = v8;

  *v1 = v7;
  v1[1] = v9;
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  swift_storeEnumTagMultiPayload();
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_257C2DA80;
  v11 = *(v0 + 56);

  return MAGPointAndSpeakEventHandler.send(_:)(v11);
}

uint64_t sub_257C2DA80()
{
  v2 = *(*v1 + 56);
  *(*v1 + 72) = v0;

  sub_257C32040(v2, type metadata accessor for MAGPointAndSpeakEvent);
  if (v0)
  {
    v3 = sub_257C32C7C;
  }

  else
  {
    v3 = sub_257C2DBC4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_257C2DBC4()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 96);
  *(v0 + 80) = *(*(v0 + 16) + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_outputEngine);
  *v3 = v4;
  swift_storeEnumTagMultiPayload();
  sub_257ECC3F0();
  sub_257ECCCE0();
  sub_257C31F70(v3, v1 + v2[5], type metadata accessor for MAGOutputEvent.EventType);
  *(v1 + v2[6]) = 1;
  *(v1 + v2[7]) = 0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 32);
  v8 = qword_281548348;
  sub_257ECC3F0();
  sub_257C32040(v7, type metadata accessor for MAGOutputEvent.EventType);
  *(v5 + *(v6 + 32)) = v8;
  sub_257ECF900();
  *(v0 + 88) = sub_257ECF8F0();
  v10 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257C32C10, v10, v9);
}

uint64_t sub_257C2DD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MAGPointAndSpeakEvent(0);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C2DDD4, 0, 0);
}

uint64_t sub_257C2DDD4()
{
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_257C2DE94;
  v2 = *(v0 + 24);

  return MAGPointAndSpeakEventHandler.send(_:)(v2);
}

uint64_t sub_257C2DE94()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_257C2E02C;
  }

  else
  {
    v2 = sub_257C2DFA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257C2DFA8()
{
  sub_257C32040(*(v0 + 24), type metadata accessor for MAGPointAndSpeakEvent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C2E02C()
{
  sub_257C32040(*(v0 + 24), type metadata accessor for MAGPointAndSpeakEvent);

  v1 = *(v0 + 8);

  return v1();
}

void sub_257C2E0B0(uint64_t a1@<X0>, double *a2@<X1>, char *a3@<X8>, CGFloat a4@<D0>, double a5@<D1>)
{
  v10 = type metadata accessor for DetectedTextBlock();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  if (!v15)
  {
    *a2 = 1.79769313e308;
LABEL_35:
    v53 = 0;
    goto LABEL_36;
  }

  v57 = a2;
  v58 = a3;
  v67 = a5;
  v16 = &v14[*(v12 + 24)];
  v17 = objc_opt_self();
  v18 = 0;
  v19 = *(v11 + 72);
  v20 = -v15;
  v21 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v22 = 1;
  v68 = 1.79769313e308;
  v66 = -0.025;
  v65 = 0.05;
  v64 = 1.05;
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  v26 = 0.0;
  v56 = v21;
LABEL_3:
  v59 = v26;
  v60 = v25;
  v61 = v24;
  v62 = v23;
  v63 = v22;
  v27 = v21 + v19 * v18++;
  do
  {
    sub_257C31F70(v27, v14, type metadata accessor for DetectedTextBlock);
    v28 = *v16;
    v29 = v16[1];
    v30 = v16[2];
    v31 = v16[3];
    sub_257C32040(v14, type metadata accessor for DetectedTextBlock);
    v32 = [v17 currentDevice];
    v33 = [v32 orientation];

    if (v33 == 3 || v33 == 4)
    {
      v28 = CGSizeMake(v34);
      v30 = v36;
      v31 = v37;
    }

    else if (1.0 - v29 - v31 > 0.0)
    {
      v35 = 1.0 - v29 - v31;
    }

    else
    {
      v35 = 0.0;
    }

    v38 = v28 + v66;
    v40 = (v30 + v65) * v64;
    v41 = (v31 + v65) * v64;
    v69.origin.x = v38;
    v69.origin.y = v35 + v66;
    y = v69.origin.y;
    v69.size.width = v40;
    v69.size.height = v41;
    v42 = CGRectGetMinX(v69) - a4;
    v70.origin.x = v38;
    v70.origin.y = y;
    v70.size.width = v40;
    v70.size.height = v41;
    v43 = a4;
    v44 = a4 - CGRectGetMaxX(v70);
    if (v44 < 0.0)
    {
      v45 = 0.0;
    }

    else
    {
      v45 = v44;
    }

    if (v42 > v44)
    {
      v44 = v42;
    }

    if (v42 > 0.0)
    {
      v46 = v44;
    }

    else
    {
      v46 = v45;
    }

    v71.origin.x = v38;
    v71.origin.y = y;
    v71.size.width = v40;
    v71.size.height = v41;
    MinY = CGRectGetMinY(v71);
    v48 = v67;
    v49 = MinY - v67;
    v72.origin.x = v38;
    v72.origin.y = y;
    v72.size.width = v40;
    v72.size.height = v41;
    v50 = v48 - CGRectGetMaxY(v72);
    if (v50 < 0.0)
    {
      v51 = 0.0;
    }

    else
    {
      v51 = v50;
    }

    if (v49 > v50)
    {
      v50 = v49;
    }

    if (v49 <= 0.0)
    {
      v50 = v51;
    }

    v52 = sqrt(v46 * v46 + v50 * v50);
    if (v52 < v68)
    {
      v22 = 0;
      v23 = v38;
      v24 = y;
      v25 = v40;
      v26 = v41;
      v68 = v52;
      a4 = v43;
      v21 = v56;
      if (v20 + v18)
      {
        goto LABEL_3;
      }

      a3 = v58;
      *v57 = v52;
      goto LABEL_32;
    }

    ++v18;
    v27 += v19;
    a4 = v43;
  }

  while (v20 + v18 != 1);
  a3 = v58;
  *v57 = v68;
  if (v63)
  {
    goto LABEL_35;
  }

  y = v61;
  v38 = v62;
  v41 = v59;
  v40 = v60;
LABEL_32:
  v73.origin.x = v38;
  v73.origin.y = y;
  v73.size.width = v40;
  v73.size.height = v41;
  if (CGRectGetMinX(v73) <= a4)
  {
    v74.origin.x = v38;
    v74.origin.y = y;
    v74.size.width = v40;
    v74.size.height = v41;
    if (CGRectGetMaxX(v74) < a4)
    {
      v53 = 5;
      goto LABEL_36;
    }

    v75.origin.x = v38;
    v75.origin.y = y;
    v75.size.width = v40;
    v75.size.height = v41;
    v54 = CGRectGetMinY(v75);
    v55 = v67;
    if (v54 > v67)
    {
      v53 = 8;
      goto LABEL_36;
    }

    v76.origin.x = v38;
    v76.origin.y = y;
    v76.size.width = v40;
    v76.size.height = v41;
    if (CGRectGetMaxY(v76) < v55)
    {
      v53 = 3;
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v53 = 6;
LABEL_36:
  *a3 = v53;
}

uint64_t sub_257C2E504()
{
  v30 = sub_257ECF120();
  v1 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_257ECF190();
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECF1B0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  if ((*(v0 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_startedPulseForOutOfFrame) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_startedPulseForOutOfFrame) = 1;
    v26 = &v23 - v13;
    v14 = [objc_opt_self() scheduledTimerWithTimeInterval:v0 target:sel_playHandAbsentTone selector:0 userInfo:1 repeats:0.25];
    v15 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pulseTimer);
    *(v0 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pulseTimer) = v14;

    sub_257BD2C2C(0, &qword_281543F10);
    v27 = sub_257ECFD30();
    sub_257ECF1A0();
    sub_257ECF220();
    v16 = *(v8 + 8);
    v28 = v8 + 8;
    v29 = v16;
    v16(v11, v7);
    aBlock[4] = sub_257C31C10;
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_117;
    v17 = _Block_copy(aBlock);
    sub_257ECC3F0();
    sub_257ECF150();
    v32 = MEMORY[0x277D84F90];
    sub_257C32B44(&qword_281544090, MEMORY[0x277D85198]);
    v18 = v30;
    v24 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    v19 = v31;
    v25 = v7;
    v20 = v6;
    sub_257C31C28(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    v22 = v26;
    v21 = v27;
    MEMORY[0x259C727E0](v26, v20, v3, v17);
    _Block_release(v17);

    (*(v1 + 8))(v3, v18);
    (*(v19 + 8))(v20, v24);
    v29(v22, v25);
  }

  return result;
}

uint64_t sub_257C2E928()
{
  v0 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_257ECC3F0();
  sub_257ECCCE0();
  sub_257C31F70(v2, &v5[v3[5]], type metadata accessor for MAGOutputEvent.EventType);
  v5[v3[6]] = 1;
  v5[v3[7]] = 1;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v6 = qword_281548348;
  sub_257ECC3F0();
  sub_257C32040(v2, type metadata accessor for MAGOutputEvent.EventType);
  *&v5[v3[8]] = v6;
  sub_257CBBC80(v5);

  return sub_257C32040(v5, type metadata accessor for MAGOutputEvent);
}

void sub_257C2EB24()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v38 - v3;
  v5 = sub_257ECF930();
  v6 = *(v5 - 8);
  v39 = *(v6 + 56);
  v40 = v5;
  v38[1] = v6 + 56;
  v39(v4, 1, 1);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  sub_257ECC3F0();
  sub_257E81524(0, 0, v4, &unk_257EDC358, v7);

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v8 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPointSpeakFeedbacks);
  swift_beginAccess();
  v9 = v8[1];
  v10 = v8[2];
  v42 = *v8;
  v43 = v9;
  v44 = v10;
  v11 = qword_2815447E0;

  if (v11 != -1)
  {
    v12 = swift_once();
  }

  MEMORY[0x28223BE20](v12);
  v38[-2] = &v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90);
  sub_257ECFD50();

  v13 = sub_257C592D0(2u, v41);

  if (v13 || (v15 = *v8, v16 = v8[1], v17 = v8[2], v42 = v15, v43 = v16, v44 = v17, MEMORY[0x28223BE20](v14), v38[-2] = &v42, , , sub_257ECFD50(), , , v18 = sub_257C592D0(3u, v41), , v18))
  {
    v19 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithHand;
    if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithHand) > 2.0)
    {
      (v39)(v4, 1, 1, v40);
      v20 = swift_allocObject();
      v20[2] = 0;
      v20[3] = 0;
      v20[4] = v1;
      sub_257ECC3F0();
      sub_257C3FBD4(0, 0, v4, &unk_257EDC368, v20);

      *(v1 + v19) = 0;
    }
  }

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandDetectedFeedback) = 0;
  v21 = v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastFingerPoint;
  *v21 = 0;
  *(v21 + 8) = 0;
  v22 = 1;
  *(v21 + 16) = 1;
  v23 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_arService);
  v24 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  v25 = [*(v23 + v24) currentFrame];
  v26 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedFrame);
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedFrame) = v25;

  v27 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedDocument);
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedDocument) = 0;

  v28 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedTextBlocks) = MEMORY[0x277D84F90];

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedSpatialTextBlocks) = MEMORY[0x277D84F98];

  v29 = [objc_opt_self() currentDevice];
  v30 = [v29 orientation];

  if ((v30 - 2) <= 2)
  {
    v22 = qword_257EDC490[(v30 - 2)];
  }

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastOrientation) = v22;
  v31 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForQueue;
  v32 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForQueue);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (v33)
  {
    __break(1u);
    goto LABEL_18;
  }

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForQueue) = v34;
  v35 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForMessage);
  v33 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (v33)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForMessage) = v36;
  if (v34 >= 3)
  {
    if (qword_27F8F4610 == -1)
    {
LABEL_15:
      v37 = qword_27F912F78;
      swift_beginAccess();
      *(v37 + 24) = v28;

      [*(v37 + 16) removeAllObjects];
      *(v1 + v31) = 0;
      goto LABEL_16;
    }

LABEL_19:
    swift_once();
    goto LABEL_15;
  }

LABEL_16:
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutDeviceDirectionMessage) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutFingerDirectionMessage) = 0;
  sub_257D22594(2);
}

uint64_t sub_257C2F0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MAGPointAndSpeakEvent(0);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C2F154, 0, 0);
}

uint64_t sub_257C2F154()
{
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_257C26B44;
  v2 = *(v0 + 24);

  return MAGPointAndSpeakEventHandler.send(_:)(v2);
}

uint64_t sub_257C2F234()
{
  sub_257ECF900();
  *(v0 + 24) = sub_257ECF8F0();
  v2 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257C2F2C8, v2, v1);
}

uint64_t sub_257C2F2C8()
{

  sub_257C2E504();
  v1 = *(v0 + 8);

  return v1();
}

void sub_257C2F32C(uint64_t a1@<X0>, __CVBuffer *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for SpatialTextBlock();
  v34 = *(a1 + *(v9 + 32));
  v35 = *(a1 + *(v9 + 24));
  if (UIInterfaceOrientationIsLandscape(a3))
  {
    Width = CVPixelBufferGetWidth(a2);
    Height = CVPixelBufferGetHeight(a2);
  }

  else
  {
    Width = CVPixelBufferGetHeight(a2);
    Height = CVPixelBufferGetWidth(a2);
  }

  v12 = Height;
  v13 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_arService;
  v14 = *(v4 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_arService);
  v15 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  v16 = *(v14 + v15);
  v17 = 0uLL;
  if (v16)
  {
    v18 = [v16 currentFrame];
    if (v18 && (v19 = Width, v20 = v12, v21 = v18, v22 = [v18 camera], v21, objc_msgSend(v22, sel_projectPoint_orientation_viewportSize_, a3, *&v35, v19, v20), v22, v23 = *(v4 + v13), v24 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession, swift_beginAccess(), (v25 = *(v23 + v24)) != 0) && (v26 = objc_msgSend(v25, sel_currentFrame)) != 0)
    {
      v27 = v26;
      v28 = [v26 camera];

      [v28 projectPoint:a3 orientation:*&v34 viewportSize:{v19, v20}];
      *&v17 = CGSizeMake(v29);
      v30 = 0;
      *(&v17 + 1) = v31;
      *(&v33 + 1) = v32;
    }

    else
    {
      v30 = 1;
      v33 = 0uLL;
      v17 = 0uLL;
    }
  }

  else
  {
    v30 = 1;
    v33 = 0uLL;
  }

  *a4 = v17;
  *(a4 + 16) = v33;
  *(a4 + 32) = v30;
}

void sub_257C2F55C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_shortSpeechAnnouncements);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    if (v3 > 2)
    {
      v3 = 0;
    }

    *(v0 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_shortSpeechAnnouncements) = v3;
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = sub_257ECF4C0();
    v7 = sub_257ECF4C0();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    sub_257ECF500();
  }
}

uint64_t sub_257C2F68C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_257C2F6AC, 0, 0);
}

uint64_t sub_257C2F6AC()
{
  v1 = [*(v0[1].i64[1] + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_engine) imageNode];
  if (v1 && ((v2 = v0[1].i64[1], v1, (v3 = [*(*(v2 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_rotationRateManager) + 16) deviceMotion]) == 0) || (v4 = v3, objc_msgSend(v3, sel_rotationRate), v6 = v5, v8 = v7, v10 = v9, v4, sqrt(v10 * v10 + v6 * v6 + v8 * v8) <= 1.75)))
  {
    v13 = swift_task_alloc();
    v0[2].i64[0] = v13;
    v13[1] = vextq_s8(v0[1], v0[1], 8uLL);
    v14 = swift_task_alloc();
    v0[2].i64[1] = v14;
    *v14 = v0;
    v14[1] = sub_257C2F88C;
    v15 = MEMORY[0x277D839B0];

    return MEMORY[0x2822008A0](&v0[3].u64[1], 0, 0, 0xD000000000000010, 0x8000000257EFA4B0, sub_257C31538, v13, v15);
  }

  else
  {
    v11 = v0->i64[1];

    return v11(1);
  }
}

uint64_t sub_257C2F88C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_257C2F9C4;
  }

  else
  {

    v2 = sub_257C2F9A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257C2F9C4()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_257C2FA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = [*(a2 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_engine) imageNode];
  if (v10)
  {
    v11 = v10;
    v12 = *(a3 + 16);
    v13 = objc_allocWithZone(MEMORY[0x277CE6AE0]);
    v14 = v12;
    v15 = [v13 init];
    [v15 setDetectTraits_];
    (*(v7 + 16))(v9, a1, v6);
    v16 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    (*(v7 + 32))(v17 + v16, v9, v6);
    aBlock[4] = sub_257C31540;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257BE8054;
    aBlock[3] = &block_descriptor_10;
    v18 = _Block_copy(aBlock);
    sub_257ECC3F0();

    [v11 triggerWithPixelBuffer:v14 exifOrientation:6 options:v15 cacheKey:0 resultHandler:v18];
    _Block_release(v18);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_257C2FC80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v14 = sub_257ECF930();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(v10, a4, v7);
  v15 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = a1;
  *(v16 + 5) = a3;
  (*(v8 + 32))(&v16[v15], v10, v7);
  v17 = a1;
  sub_257ECC3F0();
  sub_257C3FBD4(0, 0, v13, &unk_257EDC2A8, v16);
}

uint64_t sub_257C2FE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v6[25] = type metadata accessor for MAGOutputEvent.EventType(0);
  v6[26] = swift_task_alloc();
  v6[27] = type metadata accessor for MAGOutputEvent(0);
  v6[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C2FF44, 0, 0);
}

uint64_t sub_257C2FF44()
{
  v2 = *(v1 + 176);
  if (!v2)
  {
    goto LABEL_52;
  }

  v3 = [v2 blurFeatures];
  sub_257BD2C2C(0, &qword_27F8F5730);
  v4 = sub_257ECF810();

  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_51;
  }

  if (!sub_257ED0210())
  {
LABEL_51:

LABEL_52:
    sub_257BEBEF0();
    v72 = swift_allocError();
    *(v73 + 8) = 0;
    *(v73 + 16) = 0;
    *v73 = 9;
    *(v73 + 24) = 4;
    *(v1 + 136) = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88);
    goto LABEL_53;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x259C72E20](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      swift_once();
      goto LABEL_11;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;
  v0 = *(v1 + 184);

  [v6 blur];
  v8 = v7;
  *(v1 + 232) = v7;

  v9 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithBlur;
  *(v1 + 240) = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithBlur;
  if (v8 < 0.85)
  {
LABEL_30:
    *(*(v1 + 184) + *(v1 + 240)) = 0;
    goto LABEL_31;
  }

  v10 = *(v0 + v9);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    goto LABEL_59;
  }

  *(v0 + v9) = v12;
  if (v12 < 31)
  {
LABEL_31:
    if (*(v1 + 232) < 0.85)
    {
      *(v1 + 312) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88);
      sub_257ECF8D0();
LABEL_54:

      v74 = *(v1 + 8);

      return v74();
    }

    sub_257BEBEF0();
    v34 = swift_allocError();
    *(v35 + 8) = 0;
    *(v35 + 16) = 0;
    *v35 = 10;
    *(v35 + 24) = 4;
    *(v1 + 144) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88);
LABEL_53:
    sub_257ECF8C0();
    goto LABEL_54;
  }

  v0 = v1 + 40;
  v76 = v1 + 88;
  if (qword_281544FE0 != -1)
  {
    goto LABEL_60;
  }

LABEL_11:
  v13 = qword_281548348;
  v14 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPointSpeakFeedbacks);
  swift_beginAccess();
  v15 = v14[1];
  v16 = v14[2];
  *(v1 + 40) = *v14;
  *(v1 + 48) = v15;
  *(v1 + 56) = v16;
  v17 = qword_2815447E0;

  if (v17 != -1)
  {
    swift_once();
  }

  *(swift_task_alloc() + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90);
  sub_257ECFD50();

  v18 = sub_257C592D0(1u, *(v1 + 152));

  v19 = (v13 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedTextDetectionFeedbacks);
  swift_beginAccess();
  v20 = v19[1];
  v21 = v19[2];
  *(v1 + 88) = *v19;
  *(v1 + 96) = v20;
  *(v1 + 104) = v21;
  *(swift_task_alloc() + 16) = v76;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5540);
  sub_257ECFD50();

  v22 = sub_257C592E8(1, *(v1 + 160));

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (*(v1 + 313) != 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , *(v1 + 316) != 1))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (*(v1 + 314) != 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (*(v1 + 315) != 1)
      {
LABEL_25:
        v27 = 0;
        v28 = 0xE000000000000000;
        goto LABEL_27;
      }

      sub_257C2F55C();
LABEL_23:
      v28 = v29;
      goto LABEL_27;
    }

LABEL_20:
    v27 = sub_257C31964();
    goto LABEL_23;
  }

  if (!v18)
  {
    if (!v22)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v23 = *v19;
  v24 = v19[1];
  v25 = v19[2];
  *(v1 + 112) = v23;
  *(v1 + 120) = v24;
  *(v1 + 128) = v25;
  *(swift_task_alloc() + 16) = v1 + 112;

  sub_257ECFD50();

  v26 = sub_257C592E8(1, *(v1 + 168));

  if (v26 || !v22)
  {
    sub_257C2F55C();
    v28 = v30;
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
  }

LABEL_27:
  v31 = *(v1 + 184);
  v32 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandTooCloseFeedback;
  *(v1 + 248) = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandTooCloseFeedback;
  if (*(v31 + v32) & 1) != 0 || (v33 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedTextTooCloseFeedback, *(v1 + 256) = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedTextTooCloseFeedback, (*(v31 + v33)))
  {

    goto LABEL_30;
  }

  v36 = v27;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v37 = sub_257ECF4C0();

    UIAccessibilitySpeakIfNotSpeaking();

    goto LABEL_30;
  }

  v77 = v13;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = objc_opt_self();
  v40 = [v39 bundleForClass_];
  v41 = sub_257ECF4C0();
  v42 = sub_257ECF4C0();
  v43 = [v40 localizedStringForKey:v41 value:0 table:v42];

  v44 = sub_257ECF500();
  v46 = v45;

  if (v36 == v44 && v28 == v46)
  {

LABEL_40:
    v48 = *(v1 + 216);
    v49 = *(v1 + 224);
    v50 = *(v1 + 208);
    v51 = *(v1 + 184);

    *(v1 + 264) = *(v51 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_outputEngine);
    *v50 = 11;
    swift_storeEnumTagMultiPayload();
    sub_257ECC3F0();
    sub_257ECCCE0();
    sub_257C31F70(v50, v49 + v48[5], type metadata accessor for MAGOutputEvent.EventType);
    *(v49 + v48[6]) = 0;
    *(v49 + v48[7]) = 0;
    sub_257ECC3F0();
    sub_257C32040(v50, type metadata accessor for MAGOutputEvent.EventType);
    *(v49 + v48[8]) = v77;
    sub_257ECF900();
    *(v1 + 272) = sub_257ECF8F0();
    v52 = sub_257ECF8B0();
    v54 = v53;
    v55 = sub_257C30B90;
    goto LABEL_41;
  }

  v47 = sub_257ED0640();

  if (v47)
  {
    goto LABEL_40;
  }

  v56 = [v39 bundleForClass_];
  v57 = sub_257ECF4C0();
  v58 = sub_257ECF4C0();
  v59 = [v56 localizedStringForKey:v57 value:0 table:v58];

  v60 = sub_257ECF500();
  v62 = v61;

  if (v36 == v60 && v28 == v62)
  {
  }

  else
  {
    v63 = sub_257ED0640();

    if ((v63 & 1) == 0)
    {
      v68 = *(v1 + 216);
      v69 = *(v1 + 224);
      v70 = *(v1 + 208);
      *(v1 + 296) = *(*(v1 + 184) + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_outputEngine);
      *v70 = 13;
      swift_storeEnumTagMultiPayload();
      sub_257ECC3F0();
      sub_257ECCCE0();
      sub_257C31F70(v70, v69 + v68[5], type metadata accessor for MAGOutputEvent.EventType);
      *(v69 + v68[6]) = 0;
      *(v69 + v68[7]) = 0;
      sub_257ECC3F0();
      sub_257C32040(v70, type metadata accessor for MAGOutputEvent.EventType);
      *(v69 + v68[8]) = v77;
      sub_257ECF900();
      *(v1 + 304) = sub_257ECF8F0();
      v52 = sub_257ECF8B0();
      v54 = v71;
      v55 = sub_257C30EFC;
      goto LABEL_41;
    }
  }

  v64 = *(v1 + 216);
  v65 = *(v1 + 224);
  v66 = *(v1 + 208);
  *(v1 + 280) = *(*(v1 + 184) + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_outputEngine);
  *v66 = 10;
  swift_storeEnumTagMultiPayload();
  sub_257ECC3F0();
  sub_257ECCCE0();
  sub_257C31F70(v66, v65 + v64[5], type metadata accessor for MAGOutputEvent.EventType);
  *(v65 + v64[6]) = 0;
  *(v65 + v64[7]) = 0;
  sub_257ECC3F0();
  sub_257C32040(v66, type metadata accessor for MAGOutputEvent.EventType);
  *(v65 + v64[8]) = v77;
  sub_257ECF900();
  *(v1 + 288) = sub_257ECF8F0();
  v52 = sub_257ECF8B0();
  v54 = v67;
  v55 = sub_257C30D4C;
LABEL_41:

  return MEMORY[0x2822009F8](v55, v52, v54);
}

uint64_t sub_257C30B90()
{
  v1 = *(v0 + 224);

  sub_257CBBC80(v1);

  sub_257C32040(v1, type metadata accessor for MAGOutputEvent);

  return MEMORY[0x2822009F8](sub_257C30C28, 0, 0);
}

uint64_t sub_257C30C28()
{
  *(*(v0 + 184) + *(v0 + 248)) = 1;
  *(*(v0 + 184) + *(v0 + 240)) = 0;
  if (*(v0 + 232) >= 0.85)
  {
    sub_257BEBEF0();
    v1 = swift_allocError();
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = 10;
    *(v2 + 24) = 4;
    *(v0 + 144) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88);
    sub_257ECF8C0();
  }

  else
  {
    *(v0 + 312) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88);
    sub_257ECF8D0();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_257C30D4C()
{
  v1 = *(v0 + 224);

  sub_257CBBC80(v1);

  sub_257C32040(v1, type metadata accessor for MAGOutputEvent);

  return MEMORY[0x2822009F8](sub_257C30DE4, 0, 0);
}

uint64_t sub_257C30DE4()
{
  *(*(v0 + 184) + *(v0 + 240)) = 0;
  if (*(v0 + 232) >= 0.85)
  {
    sub_257BEBEF0();
    v1 = swift_allocError();
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = 10;
    *(v2 + 24) = 4;
    *(v0 + 144) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88);
    sub_257ECF8C0();
  }

  else
  {
    *(v0 + 312) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88);
    sub_257ECF8D0();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_257C30EFC()
{
  v1 = *(v0 + 224);

  sub_257CBBC80(v1);

  sub_257C32040(v1, type metadata accessor for MAGOutputEvent);

  return MEMORY[0x2822009F8](sub_257C30F94, 0, 0);
}

uint64_t sub_257C30F94()
{
  *(*(v0 + 184) + *(v0 + 256)) = 1;
  *(*(v0 + 184) + *(v0 + 240)) = 0;
  if (*(v0 + 232) >= 0.85)
  {
    sub_257BEBEF0();
    v1 = swift_allocError();
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = 10;
    *(v2 + 24) = 4;
    *(v0 + 144) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88);
    sub_257ECF8C0();
  }

  else
  {
    *(v0 + 312) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88);
    sub_257ECF8D0();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t MAGPointAndSpeakService.deinit()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastImageCacheTime;
  v2 = sub_257ECCC80();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastPointSpeakAnnouncementTime, v2);

  return v0;
}

uint64_t MAGPointAndSpeakService.__deallocating_deinit()
{
  MAGPointAndSpeakService.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MAGPointAndSpeakService()
{
  result = qword_27F8F5F78;
  if (!qword_27F8F5F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257C312D4()
{
  result = sub_257ECCC80();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of MAGPointAndSpeakService.predictHandPose(fromPixelBufferWrapper:)(uint64_t a1)
{
  v6 = (*(*v1 + 968) + **(*v1 + 968));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_257BE3DE0;

  return v6(a1);
}

uint64_t sub_257C31540(void *a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_257C2FC80(a1, a2, v6, v7);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257C315E8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_257BE3DE0;

  return sub_257C2FE7C(a1, v6, v7, v8, v9, v1 + v5);
}

void sub_257C316F8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_257ECC3F0();
  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

id sub_257C317A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_257C21A74(*a1, a1[1], a1[2], a1[3], a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *sub_257C317E4(void *a1)
{
  v1 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  v2 = [a1 blocksWithTypes:2 inRegion:{0.0, 0.0, 1.0, 1.0}];
  sub_257BD2C2C(0, &qword_27F8F5FA8);
  v3 = sub_257ECF810();

  v4 = sub_257CCB040(v3);

  if (v4)
  {
    if (v4 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x259C72E20](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v10 = objc_autoreleasePoolPush();
        sub_257C27524(v8, &v12);
        objc_autoreleasePoolPop(v10);

        ++v6;
        if (v9 == i)
        {
          v1 = v12;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v1 = MEMORY[0x277D84F90];
LABEL_16:
  }

  return v1;
}

uint64_t sub_257C31964()
{
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

uint64_t sub_257C31AA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257C2F0C4(a1, v4, v5, v6);
}

uint64_t sub_257C31B5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257C2F214(a1, v4, v5, v6);
}

uint64_t sub_257C31C28(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_257C31CB8(uint64_t a1)
{
  v4 = *(type metadata accessor for DetectedTextBlock() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257C167C4;

  return sub_257C2C974(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_257C31DD8(uint64_t a1)
{
  v3 = *(type metadata accessor for DetectedTextBlock() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 39) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 2);
  v9 = *(v1 + 3);
  v10 = v1[4];
  v11 = v1[5];
  v12 = v1[6];
  v13 = v1[7];
  v14 = *(v1 + v5);
  v15 = *(v1 + ((v7 + 39) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v2 + 16) = v16;
  *v16 = v2;
  v16[1] = sub_257C167C4;

  return sub_257C2CC9C(v10, v11, v12, v13, a1, v8, v9, v1 + v4, v14, v1 + v6, v1 + v7, v15);
}

uint64_t sub_257C31F70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_257C31FD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_257C32040(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_257C320A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257C2DD44(a1, v4, v5, v6);
}

uint64_t sub_257C32154(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257C167C4;

  return sub_257C2D7D4(a1, v4, v5, v6, v7);
}

uint64_t sub_257C32218(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257C167C4;

  return sub_257C2D7D4(a1, v4, v5, v6, v7);
}

uint64_t sub_257C322DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257C167C4;

  return sub_257C2D7D4(a1, v4, v5, v6, v7);
}

uint64_t sub_257C323A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257C167C4;

  return sub_257C2D134(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_121Tm()
{
  v1 = (type metadata accessor for DetectedTextBlock() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = sub_257ECCCF0();
  (*(*(v4 - 8) + 8))(v3, v4);

  return swift_deallocObject();
}

uint64_t sub_257C32574(uint64_t a1)
{
  v4 = *(type metadata accessor for DetectedTextBlock() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257C167C4;

  return sub_257C2BC24(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_257C32694(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for DetectedTextBlock() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_257C167C4;

  return sub_257C2C054(v11, v12, v13, v14, a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_257C327E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_257C167C4;

  return sub_257C2B364(v6, v7, v8, a1, v4, v5, v9, v10);
}

uint64_t sub_257C328C4(uint64_t a1)
{
  v4 = v1[1].n128_i64[0];
  v5 = v1[1].n128_i64[1];
  v9 = v1[2];
  v6 = v1[3].n128_u64[0];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257C2B8AC(v9, a1, v4, v5, v6);
}

uint64_t sub_257C32990(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257C26C58(a1, v4, v5, v6);
}

uint64_t objectdestroy_104Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257C32A90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257C269F4(a1, v4, v5, v6);
}

uint64_t sub_257C32B44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257C32B90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5FE0);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_257C253CC(v1, v2);
}

id sub_257C32C80(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16MagnifierSupport32ActivityOnboardingViewController_dismissAction);
  *v3 = a1;
  v3[1] = a2;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  sub_257ECC3F0();
  v6 = [v5 bundleForClass_];
  v7 = sub_257ECF4C0();
  v8 = sub_257ECF4C0();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  if (!v9)
  {
    sub_257ECF500();
    v9 = sub_257ECF4C0();
  }

  v10 = [v5 bundleForClass_];
  v11 = sub_257ECF4C0();
  v12 = sub_257ECF4C0();
  v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

  if (!v13)
  {
    sub_257ECF500();
    v13 = sub_257ECF4C0();
  }

  v14 = sub_257ECF4C0();
  v15 = [objc_opt_self() _systemImageNamed_];

  if (v15)
  {
    v16 = objc_opt_self();
    v17 = v15;
    v18 = [v16 systemYellowColor];
    v19 = [v17 imageWithTintColor_];
  }

  else
  {
    v19 = 0;
  }

  v26.receiver = v25;
  v26.super_class = type metadata accessor for ActivityOnboardingViewController();
  v20 = objc_msgSendSuper2(&v26, sel_initWithTitle_detailText_icon_contentLayout_, v9, v13, v19, 2);

  v21 = v20;
  result = [v21 view];
  if (result)
  {
    v23 = result;
    v24 = [objc_opt_self() systemYellowColor];
    [v23 setTintColor_];

    sub_257C32FDC();

    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_257C32FDC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6A10);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = [objc_opt_self() boldButton];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = v8;
  v12 = [v10 bundleForClass_];
  v13 = sub_257ECF4C0();
  v14 = sub_257ECF4C0();
  v15 = [v12 localizedStringForKey:v13 value:0 table:v14];

  if (!v15)
  {
    sub_257ECF500();
    v15 = sub_257ECF4C0();
  }

  [v11 setTitle:v15 forState:0];

  sub_257ED0040();
  v16 = sub_257ED0030();
  if ((*(*(v16 - 8) + 48))(v7, 1, v16))
  {
    sub_257C3366C(v7, v5);
    sub_257ED0050();

    sub_257C336DC(v7);
  }

  else
  {
    v17 = [objc_opt_self() blackColor];
    sub_257ED0000();
    sub_257ED0050();
  }

  [v11 addTarget:v1 action:sel_didTapStart forControlEvents:64];
  v18 = [objc_opt_self() systemYellowColor];
  [v11 setTintColor_];

  v19 = [v1 buttonTray];
  [v19 addButton_];
}

void sub_257C332E8()
{
  v1 = v0;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257ECC3F0();
  sub_257ECEE50();
  sub_257ECEE50();

  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5FF0));
  v3 = sub_257ECE620();
  v4 = [objc_allocWithZone(type metadata accessor for MFNavigationController()) initWithRootViewController_];

  [v4 setModalPresentationStyle_];
  v5 = [v4 navigationBar];
  v6 = [objc_opt_self() systemYellowColor];
  [v5 setTintColor_];

  [v1 presentViewController:v4 animated:1 completion:0];
}

void sub_257C334BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport32ActivityOnboardingViewController_dismissAction);
    v2 = Strong;
    sub_257BBD7E4(v1);

    if (v1)
    {
      v1();
      sub_257BBD88C(v1);
    }
  }
}

id sub_257C335F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityOnboardingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_257C3366C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6A10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257C336DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_257C33754(double result, double a2, double a3, double a4, double a5)
{
  if (a3 < result)
  {
    return (1.0 - 1.0 / ((result - a3) / a4 * a5 + 1.0)) * a4 + a3;
  }

  if (result < a2)
  {
    return a2 - (1.0 - 1.0 / ((a2 - result) / a4 * a5 + 1.0)) * a4;
  }

  return result;
}

uint64_t sub_257C337B4()
{
  type metadata accessor for MFReaderTextFormatterModel(0);
  swift_allocObject();
  return sub_257D42EF8();
}

uint64_t sub_257C337EC()
{
  type metadata accessor for MFReaderSpeechFormatterModel(0);
  v0 = swift_allocObject();
  sub_257C353E4(1, 0xD000000000000022, 0x8000000257EFA770, 0, 0, v0 + OBJC_IVAR____TtC16MagnifierSupport28MFReaderSpeechFormatterModel__playbackSpeed);
  return v0;
}

uint64_t sub_257C33858@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v108 = a1;
  v81 = sub_257ECE700();
  MEMORY[0x28223BE20](v81);
  v79 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_257ECDFD0();
  v92 = *(v4 - 8);
  v93 = v4;
  MEMORY[0x28223BE20](v4);
  v89 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F60D0);
  v98 = *(v6 - 8);
  v99 = v6;
  MEMORY[0x28223BE20](v6);
  v94 = &v77 - v7;
  v77 = type metadata accessor for MFReaderTextDisplayView() - 8;
  MEMORY[0x28223BE20](v77);
  v9 = (&v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F60D8);
  MEMORY[0x28223BE20](v82);
  v78 = &v77 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F60E0);
  v85 = *(v11 - 8);
  v86 = v11;
  MEMORY[0x28223BE20](v11);
  v83 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F60E8);
  v87 = *(v13 - 8);
  v88 = v13;
  MEMORY[0x28223BE20](v13);
  v84 = &v77 - v14;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F60F0);
  MEMORY[0x28223BE20](v80);
  v100 = &v77 - v15;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F60F8);
  MEMORY[0x28223BE20](v102);
  v101 = &v77 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6100);
  v106 = *(v17 - 8);
  v107 = v17;
  MEMORY[0x28223BE20](v17);
  v103 = &v77 - v18;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6108);
  MEMORY[0x28223BE20](v105);
  v104 = &v77 - v19;
  type metadata accessor for MFReaderSpeechFormatterModel(0);
  sub_257C3813C(&qword_27F8F5E30, type metadata accessor for MFReaderSpeechFormatterModel);
  v91 = sub_257ECE000();
  v20 = *(v1 + 16);
  v21 = *(v1 + 24);
  v22 = *(v1 + 32);
  v23 = type metadata accessor for MFReaderTextFormatterModel(0);
  v24 = sub_257C3813C(&qword_27F8F5B60, type metadata accessor for MFReaderTextFormatterModel);
  v96 = v21;
  v97 = v20;
  v95 = v22;
  sub_257ECE000();
  KeyPath = swift_getKeyPath();
  v26 = v77;
  *(v9 + *(v77 + 36)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
  swift_storeEnumTagMultiPayload();
  *v9 = sub_257ECE150();
  v9[1] = v27;
  v90 = v23;
  v91 = v24;
  v9[2] = sub_257ECE150();
  v9[3] = v28;
  type metadata accessor for MFReaderBlockManager();
  sub_257C3813C(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager);
  v9[4] = sub_257ECE330();
  v9[5] = v29;
  *(v9 + *(v26 + 40)) = 0x3FC999999999999ALL;
  v30 = *v1;
  if (*v1)
  {
    v31 = v30;
    v32 = sub_257ECDCE0();
    v33 = v78;
    sub_257C37F30(v9, v78);
    v34 = v82;
    v35 = (v33 + *(v82 + 36));
    *v35 = v32;
    v35[1] = v30;
    v36 = swift_allocObject();
    v37 = v2[5];
    v36[5] = v2[4];
    v36[6] = v37;
    v38 = v2[7];
    v36[7] = v2[6];
    v36[8] = v38;
    v39 = v2[1];
    v36[1] = *v2;
    v36[2] = v39;
    v40 = v2[3];
    v36[3] = v2[2];
    v36[4] = v40;
    sub_257C37F9C(v2, &v122);
    v41 = sub_257C37FD4();
    v42 = v83;
    sub_257ECEB70();

    sub_257BE4084(v33, &qword_27F8F60D8);
    sub_257ECE7F0();
    v43 = v89;
    sub_257ECDFB0();
    v44 = swift_allocObject();
    v45 = v2[5];
    v44[5] = v2[4];
    v44[6] = v45;
    v46 = v2[7];
    v44[7] = v2[6];
    v44[8] = v46;
    v47 = v2[1];
    v44[1] = *v2;
    v44[2] = v47;
    v48 = v2[3];
    v44[3] = v2[2];
    v44[4] = v48;
    sub_257C37F9C(v2, &v122);
    sub_257C3813C(&qword_27F8F6130, MEMORY[0x277CDD730]);
    sub_257C3813C(&qword_27F8F6138, MEMORY[0x277CDD708]);
    v49 = v93;
    v50 = v94;
    sub_257ECEFA0();

    (*(v92 + 8))(v43, v49);
    sub_257ECDFF0();
    *&v122 = v34;
    *(&v122 + 1) = v41;
    swift_getOpaqueTypeConformance2();
    sub_257BD2D4C(&qword_27F8F6140, &qword_27F8F60D0);
    v51 = v84;
    v52 = v86;
    v53 = v99;
    sub_257ECEC40();
    (*(v98 + 8))(v50, v53);
    (*(v85 + 8))(v42, v52);
    v54 = sub_257ECF050();
    v56 = v55;
    v57 = v100;
    v58 = &v100[*(v80 + 36)];
    sub_257C345C4(v2, v58);
    v59 = (v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6148) + 36));
    *v59 = v54;
    v59[1] = v56;
    (*(v87 + 32))(v57, v51, v88);
    v60 = sub_257ECF040();
    v62 = v61;
    v63 = sub_257ECE500();
    v109[0] = 1;
    sub_257C35130(v2, &v122);
    v113 = *&v123[16];
    v114 = *&v123[32];
    v115 = *&v123[48];
    v116 = *&v123[64];
    v111 = v122;
    v112 = *v123;
    v118 = *&v123[64];
    v117[2] = *&v123[16];
    v117[3] = *&v123[32];
    v117[4] = *&v123[48];
    v117[0] = v122;
    v117[1] = *v123;
    sub_257BE401C(&v111, &v119, &qword_27F8F6150);
    sub_257BE4084(v117, &qword_27F8F6150);
    *(&v110[2] + 7) = v113;
    *(&v110[3] + 7) = v114;
    *(&v110[4] + 7) = v115;
    *(&v110[5] + 7) = v116;
    *(v110 + 7) = v111;
    *(&v110[1] + 7) = v112;
    v64 = v109[0];
    v119 = v63;
    LOBYTE(v120[0]) = v109[0];
    v120[5] = *(&v110[4] + 15);
    *(&v120[4] + 1) = v110[4];
    *(&v120[3] + 1) = v110[3];
    *(&v120[2] + 1) = v110[2];
    *(&v120[1] + 1) = v110[1];
    *(v120 + 1) = v110[0];
    *&v121 = v60;
    *(&v121 + 1) = v62;
    v65 = v57;
    v66 = v101;
    sub_257BB146C(v65, v101);
    v67 = (v66 + *(v102 + 36));
    v68 = v120[4];
    v67[4] = v120[3];
    v67[5] = v68;
    v69 = v121;
    v67[6] = v120[5];
    v67[7] = v69;
    v70 = v120[0];
    *v67 = v119;
    v67[1] = v70;
    v71 = v120[2];
    v67[2] = v120[1];
    v67[3] = v71;
    *&v123[17] = v110[1];
    *&v123[1] = v110[0];
    *&v123[80] = *(&v110[4] + 15);
    *&v123[65] = v110[4];
    *&v123[49] = v110[3];
    v122 = v63;
    v123[0] = v64;
    *&v123[33] = v110[2];
    v124 = v60;
    v125 = v62;
    sub_257BE401C(&v119, v109, &qword_27F8F6158);
    sub_257BE4084(&v122, &qword_27F8F6158);
    sub_257C38184();
    v72 = v103;
    sub_257ECED10();
    sub_257BE4084(v66, &qword_27F8F60F8);
    sub_257ECE000();
    v73 = sub_257D42694();

    LOBYTE(v60) = sub_257ECE930();
    v74 = v104;
    (*(v106 + 32))(v104, v72, v107);
    v75 = v74 + *(v105 + 36);
    *v75 = v73;
    *(v75 + 8) = v60;
    sub_257C383CC();
    sub_257ECEC30();
    return sub_257BE4084(v74, &qword_27F8F6108);
  }

  else
  {
    result = sub_257ECE320();
    __break(1u);
  }

  return result;
}

uint64_t sub_257C34484(uint64_t a1)
{
  v3 = *(a1 + 96);
  v2[1] = *(a1 + 96);
  v4 = *(&v3 + 1);
  sub_257BE401C(&v4, v2, &qword_27F8F6228);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6790);
  sub_257ECEE60();
  v2[0] = v3;
  sub_257ECEE70();
  return sub_257BE4084(&v3, &qword_27F8F6790);
}

uint64_t sub_257C34548()
{
  sub_257ECDFC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6790);
  return sub_257ECEE70();
}

uint64_t sub_257C345C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F61A0);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F61A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v39 = *(a1 + 80);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6790);
  sub_257ECEE60();
  if (v38 == 1)
  {
    v34 = v10;
    v35 = v7;
    v36 = v4;
    v37 = a2;
    type metadata accessor for MFReaderTextFormatterModel(0);
    sub_257C3813C(&qword_27F8F5B60, type metadata accessor for MFReaderTextFormatterModel);
    sub_257ECE000();
    type metadata accessor for MFReaderSpeechFormatterModel(0);
    sub_257C3813C(&qword_27F8F5E30, type metadata accessor for MFReaderSpeechFormatterModel);
    sub_257ECE000();
    v11 = sub_257ECE150();
    v32 = v12;
    v33 = v11;
    v13 = sub_257ECE150();
    v30 = v14;
    v31 = v13;
    type metadata accessor for MFReaderBlockManager();
    sub_257C3813C(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager);
    v15 = sub_257ECE330();
    v17 = v16;
    v38 = 1;
    sub_257ECEE50();
    v18 = *a1;
    if (*a1)
    {
      v19 = v39;
      v20 = *(&v39 + 1);
      v21 = v18;
      v22 = sub_257ECDCE0();
      v39 = *(a1 + 96);
      sub_257ECEE60();
      if ((v38 & 1) == 0 || (v39 = *(a1 + 112), sub_257ECEE60(), v23 = 1.0, (v38 & 1) == 0))
      {
        v23 = 0.0;
      }

      v24 = v32;
      *v9 = v33;
      *(v9 + 1) = v24;
      v25 = v30;
      *(v9 + 2) = v31;
      *(v9 + 3) = v25;
      *(v9 + 4) = v15;
      *(v9 + 5) = v17;
      v9[48] = v19;
      *(v9 + 7) = v20;
      *(v9 + 8) = v22;
      *(v9 + 9) = v18;
      *(v9 + 10) = v23;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F61C0);
      sub_257C384C0();
      sub_257BD2D4C(&qword_27F8F61E8, &qword_27F8F61A0);
      return sub_257ECE6F0();
    }

    else
    {
      result = sub_257ECE320();
      __break(1u);
    }
  }

  else
  {
    *v6 = sub_257ECE5B0();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v27 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F61B0) + 44)];
    *v27 = sub_257ECE500();
    *(v27 + 1) = 0;
    v27[16] = 1;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F61B8);
    sub_257C34A8C(a1, &v27[*(v28 + 44)]);
    sub_257BE401C(v6, v9, &qword_27F8F61A0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F61C0);
    sub_257C384C0();
    sub_257BD2D4C(&qword_27F8F61E8, &qword_27F8F61A0);
    sub_257ECE6F0();
    return sub_257BE4084(v6, &qword_27F8F61A0);
  }

  return result;
}

uint64_t sub_257C34A8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v57 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F61F0) - 8;
  MEMORY[0x28223BE20](v46);
  v4 = v45 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F61F8);
  MEMORY[0x28223BE20](v50);
  v54 = v45 - v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6200);
  MEMORY[0x28223BE20](v52);
  v51 = v45 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6208);
  MEMORY[0x28223BE20](v49);
  v53 = v45 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6210);
  v8 = MEMORY[0x28223BE20](v47);
  v56 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v48 = v45 - v11;
  MEMORY[0x28223BE20](v10);
  v55 = v45 - v12;
  v45[4] = type metadata accessor for MFReaderTextFormatterModel(0);
  v45[3] = sub_257C3813C(&qword_27F8F5B60, type metadata accessor for MFReaderTextFormatterModel);
  v45[2] = sub_257ECE000();
  type metadata accessor for MFReaderSpeechFormatterModel(0);
  sub_257C3813C(&qword_27F8F5E30, type metadata accessor for MFReaderSpeechFormatterModel);
  v45[1] = sub_257ECE000();
  v60 = *(a1 + 80);
  v45[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6790);
  sub_257ECEE80();
  v13 = v58;
  v14 = v59;
  KeyPath = swift_getKeyPath();
  v16 = type metadata accessor for MFReaderTextFormatterView();
  *&v4[v16[8]] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
  swift_storeEnumTagMultiPayload();
  *v4 = sub_257ECE150();
  *(v4 + 1) = v17;
  *(v4 + 2) = sub_257ECE150();
  *(v4 + 3) = v18;
  *(v4 + 2) = v13;
  v4[48] = v14;
  type metadata accessor for MFReaderBlockManager();
  sub_257C3813C(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager);
  *(v4 + 7) = sub_257ECE330();
  *(v4 + 8) = v19;
  v20 = &v4[v16[9]];
  LOBYTE(v60) = 0;
  sub_257ECEE50();
  v21 = *(&v58 + 1);
  *v20 = v58;
  *(v20 + 1) = v21;
  v22 = &v4[v16[10]];
  LOBYTE(v60) = 0;
  sub_257ECEE50();
  v23 = *(&v58 + 1);
  *v22 = v58;
  *(v22 + 1) = v23;
  v24 = sub_257ECE980();
  sub_257ECDF40();
  v25 = &v4[*(v46 + 44)];
  *v25 = v24;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  v30 = *a1;
  if (*a1)
  {
    v31 = v30;
    v32 = sub_257ECDCE0();
    v33 = v54;
    sub_257C0DD14(v4, v54, &qword_27F8F61F0);
    v34 = (v33 + *(v50 + 36));
    *v34 = v32;
    v34[1] = v30;
    v58 = *(a1 + 96);
    sub_257ECEE60();
    if (v60)
    {
      v35 = 1.0;
    }

    else
    {
      v35 = 0.0;
    }

    v36 = v51;
    sub_257C0DD14(v33, v51, &qword_27F8F61F8);
    v37 = v53;
    *(v36 + *(v52 + 36)) = v35;
    sub_257C0DD14(v36, v37, &qword_27F8F6200);
    v38 = v48;
    *(v37 + *(v49 + 36)) = 1;
    v39 = (v38 + *(v47 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6218);
    sub_257ECE310();
    *v39 = 0;
    sub_257C0DD14(v37, v38, &qword_27F8F6208);
    v40 = v55;
    sub_257C0DD14(v38, v55, &qword_27F8F6210);
    v41 = v56;
    sub_257BE401C(v40, v56, &qword_27F8F6210);
    v42 = v57;
    *v57 = 0;
    *(v42 + 8) = 1;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6220);
    sub_257BE401C(v41, v42 + *(v43 + 48), &qword_27F8F6210);
    sub_257BE4084(v40, &qword_27F8F6210);
    return sub_257BE4084(v41, &qword_27F8F6210);
  }

  else
  {
    result = sub_257ECE320();
    __break(1u);
  }

  return result;
}

uint64_t sub_257C35130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = *(a1 + 72);
  v21 = *(a1 + 64);
  sub_257BBD7E4(v21);
  type metadata accessor for MFReaderTextFormatterModel(0);
  sub_257C3813C(&qword_27F8F5B60, type metadata accessor for MFReaderTextFormatterModel);
  sub_257ECE000();
  type metadata accessor for MFReaderBlockManager();
  sub_257C3813C(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager);
  v4 = sub_257ECE330();
  v6 = v5;
  v7 = sub_257ECE150();
  v9 = *a1;
  if (*a1)
  {
    v10 = v7;
    v11 = v8;
    v12 = v9;
    v13 = sub_257ECDCE0();
    v30 = *(a1 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6790);
    sub_257ECEE60();
    v14 = 0.0;
    v24 = 1;
    if (v25)
    {
      v14 = 1.0;
    }

    *&v25 = v21;
    *(&v25 + 1) = v20;
    *&v26 = v4;
    *(&v26 + 1) = v6;
    *&v27 = v10;
    *(&v27 + 1) = v11;
    *&v28 = v13;
    *(&v28 + 1) = v9;
    v29 = v14;
    *&v23[7] = v25;
    *&v23[71] = v14;
    *&v23[55] = v28;
    *&v23[39] = v27;
    *&v23[23] = v26;
    v15 = v24;
    *a2 = 0;
    *(a2 + 8) = v15;
    v16 = *&v23[16];
    *(a2 + 9) = *v23;
    v17 = *&v23[32];
    v18 = *&v23[48];
    *(a2 + 72) = *&v23[63];
    *(a2 + 57) = v18;
    *(a2 + 41) = v17;
    *(a2 + 25) = v16;
    *&v30 = v21;
    *(&v30 + 1) = v20;
    v31 = v4;
    v32 = v6;
    v33 = v10;
    v34 = v11;
    v35 = v13;
    v36 = v9;
    v37 = v14;
    sub_257BE401C(&v25, v22, &qword_27F8F6198);
    return sub_257BE4084(&v30, &qword_27F8F6198);
  }

  else
  {
    result = sub_257ECE320();
    __break(1u);
  }

  return result;
}

uint64_t sub_257C353E4@<X0>(char a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5FF8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v36 - v13;
  v39 = sub_257ECDA30();
  v42 = *(v39 - 8);
  v15 = MEMORY[0x28223BE20](v39);
  v40 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v36 - v17;
  v47 = a1;
  v19 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v20 = sub_257ECF4C0();
  v21 = [v19 initWithSuiteName_];

  v44 = a2;
  if (v21 && (v22 = sub_257ECF4C0(), v41 = a4, v23 = v22, v24 = [v21 dataForKey_], v21, v23, a4 = v41, v24))
  {
    v36[1] = a5;
    v37 = sub_257ECCBA0();
    v38 = v25;

    sub_257ECD3F0();

    v26 = sub_257ECDA20();
    v27 = sub_257ECFBD0();

    v28 = a3;
    if (os_log_type_enabled(v26, v27))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v46[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_257BF1FC8(v44, a3, v46);
      _os_log_impl(&dword_257BAC000, v26, v27, "Decoding published user data for key : %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x259C74820](v30, -1, -1);
      v31 = v29;
      a4 = v41;
      MEMORY[0x259C74820](v31, -1, -1);
    }

    v36[0] = *(v42 + 8);
    (v36[0])(v18, v39);
    sub_257ECC6F0();
    swift_allocObject();
    sub_257ECC6E0();
    sub_257C37A54();
    v33 = v37;
    v32 = v38;
    sub_257ECC6D0();

    v45 = v46[0];
    sub_257ECDD20();
    sub_257BF2550(v33, v32);
  }

  else
  {
    sub_257ECDD20();
    v28 = a3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6000);
  sub_257ECDD30();
  v34 = swift_allocObject();
  *(v34 + 16) = v44;
  *(v34 + 24) = v28;
  sub_257BD2D4C(&qword_27F8F6008, &qword_27F8F5FF8);
  sub_257ECDE50();

  (*(v12 + 8))(v14, v11);
  if (qword_27F8F4630 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  return sub_257BBD88C(a4);
}

uint64_t sub_257C359A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a4;
  v44 = a5;
  v41 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6098);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = sub_257ECDA30();
  v39 = *(v13 - 8);
  v40 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  v38 = a1;
  v46[3] = a1;
  v17 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v18 = a2;
  v19 = sub_257ECF4C0();
  v20 = [v17 initWithSuiteName_];

  v42 = v18;
  if (v20 && (v21 = sub_257ECF4C0(), v22 = [v20 dataForKey_], v20, v21, v22))
  {
    v36 = sub_257ECCBA0();
    v37 = v23;

    sub_257ECD3F0();

    v24 = sub_257ECDA20();
    v25 = sub_257ECFBD0();

    v26 = os_log_type_enabled(v24, v25);
    v35 = a3;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v18;
      v30 = v28;
      v46[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_257BF1FC8(v29, a3, v46);
      _os_log_impl(&dword_257BAC000, v24, v25, "Decoding published user data for key : %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x259C74820](v30, -1, -1);
      MEMORY[0x259C74820](v27, -1, -1);
    }

    (*(v39 + 8))(v16, v40);
    sub_257ECC6F0();
    swift_allocObject();
    sub_257ECC6E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6760);
    sub_257C37D2C(&qword_27F8F60B0, sub_257C37CD8);
    v32 = v36;
    v31 = v37;
    sub_257ECC6D0();

    v45 = v46[0];
    sub_257ECC3F0();
    sub_257ECDD20();
    sub_257BF2550(v32, v31);

    a3 = v35;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6760);
    sub_257ECDD20();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F60A0);
  sub_257ECDD30();
  v33 = swift_allocObject();
  *(v33 + 16) = v42;
  *(v33 + 24) = a3;
  sub_257BD2D4C(&qword_27F8F60A8, &qword_27F8F6098);
  sub_257ECDE50();

  (*(v10 + 8))(v12, v9);
  if (qword_27F8F4630 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  return sub_257BBD88C(v43);
}

uint64_t sub_257C35F98@<X0>(char a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6070);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v36 - v13;
  v39 = sub_257ECDA30();
  v42 = *(v39 - 8);
  v15 = MEMORY[0x28223BE20](v39);
  v40 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v36 - v17;
  v47 = a1;
  v19 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v20 = sub_257ECF4C0();
  v21 = [v19 initWithSuiteName_];

  v44 = a2;
  if (v21 && (v22 = sub_257ECF4C0(), v41 = a4, v23 = v22, v24 = [v21 dataForKey_], v21, v23, a4 = v41, v24))
  {
    v36[1] = a5;
    v37 = sub_257ECCBA0();
    v38 = v25;

    sub_257ECD3F0();

    v26 = sub_257ECDA20();
    v27 = sub_257ECFBD0();

    v28 = a3;
    if (os_log_type_enabled(v26, v27))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v46[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_257BF1FC8(v44, a3, v46);
      _os_log_impl(&dword_257BAC000, v26, v27, "Decoding published user data for key : %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x259C74820](v30, -1, -1);
      v31 = v29;
      a4 = v41;
      MEMORY[0x259C74820](v31, -1, -1);
    }

    v36[0] = *(v42 + 8);
    (v36[0])(v18, v39);
    sub_257ECC6F0();
    swift_allocObject();
    sub_257ECC6E0();
    sub_257C37C24();
    v33 = v37;
    v32 = v38;
    sub_257ECC6D0();

    v45 = v46[0];
    sub_257ECDD20();
    sub_257BF2550(v33, v32);
  }

  else
  {
    sub_257ECDD20();
    v28 = a3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6078);
  sub_257ECDD30();
  v34 = swift_allocObject();
  *(v34 + 16) = v44;
  *(v34 + 24) = v28;
  sub_257BD2D4C(&qword_27F8F6080, &qword_27F8F6070);
  sub_257ECDE50();

  (*(v12 + 8))(v14, v11);
  if (qword_27F8F4630 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  return sub_257BBD88C(a4);
}

uint64_t sub_257C36554@<X0>(char a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6048);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v36 - v13;
  v39 = sub_257ECDA30();
  v42 = *(v39 - 8);
  v15 = MEMORY[0x28223BE20](v39);
  v40 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v36 - v17;
  v47 = a1;
  v19 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v20 = sub_257ECF4C0();
  v21 = [v19 initWithSuiteName_];

  v44 = a2;
  if (v21 && (v22 = sub_257ECF4C0(), v41 = a4, v23 = v22, v24 = [v21 dataForKey_], v21, v23, a4 = v41, v24))
  {
    v36[1] = a5;
    v37 = sub_257ECCBA0();
    v38 = v25;

    sub_257ECD3F0();

    v26 = sub_257ECDA20();
    v27 = sub_257ECFBD0();

    v28 = a3;
    if (os_log_type_enabled(v26, v27))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v46[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_257BF1FC8(v44, a3, v46);
      _os_log_impl(&dword_257BAC000, v26, v27, "Decoding published user data for key : %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x259C74820](v30, -1, -1);
      v31 = v29;
      a4 = v41;
      MEMORY[0x259C74820](v31, -1, -1);
    }

    v36[0] = *(v42 + 8);
    (v36[0])(v18, v39);
    sub_257ECC6F0();
    swift_allocObject();
    sub_257ECC6E0();
    sub_257C37B40();
    v33 = v37;
    v32 = v38;
    sub_257ECC6D0();

    v45 = v46[0];
    sub_257ECDD20();
    sub_257BF2550(v33, v32);
  }

  else
  {
    sub_257ECDD20();
    v28 = a3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6050);
  sub_257ECDD30();
  v34 = swift_allocObject();
  *(v34 + 16) = v44;
  *(v34 + 24) = v28;
  sub_257BD2D4C(&qword_27F8F6058, &qword_27F8F6048);
  sub_257ECDE50();

  (*(v12 + 8))(v14, v11);
  if (qword_27F8F4630 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  return sub_257BBD88C(a4);
}

uint64_t sub_257C36B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a4;
  v52 = a5;
  v53 = a1;
  v48 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6020);
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = sub_257ECE1D0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v43 = &v40 - v16;
  v44 = sub_257ECDA30();
  v46 = *(v44 - 8);
  v17 = MEMORY[0x28223BE20](v44);
  v45 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v40 - v19;
  v21 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v22 = sub_257ECF4C0();
  v23 = [v21 initWithSuiteName_];

  v54 = a2;
  if (v23 && (v24 = sub_257ECF4C0(), v47 = a3, v25 = v24, v26 = [v23 dataForKey_], v23, v25, a3 = v47, v26))
  {
    v41 = sub_257ECCBA0();
    v42 = v27;

    sub_257ECD3F0();

    v28 = sub_257ECDA20();
    v29 = sub_257ECFBD0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = a3;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v55[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_257BF1FC8(v54, v30, v55);
      _os_log_impl(&dword_257BAC000, v28, v29, "Decoding published user data for key : %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x259C74820](v32, -1, -1);
      MEMORY[0x259C74820](v31, -1, -1);
    }

    v40 = *(v46 + 8);
    v40(v20, v44);
    v33 = v43;
    sub_257ECC6F0();
    swift_allocObject();
    sub_257ECC6E0();
    sub_257C3813C(&qword_27F8F6038, MEMORY[0x277CDFA28]);
    v35 = v41;
    v34 = v42;
    sub_257ECC6D0();

    (*(v12 + 16))(v15, v33, v11);
    sub_257ECDD20();
    sub_257BF2550(v35, v34);
    (*(v12 + 8))(v33, v11);
    v36 = v53;
    a3 = v47;
  }

  else
  {
    v36 = v53;
    (*(v12 + 16))(v15, v53, v11);
    sub_257ECDD20();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6028);
  sub_257ECDD30();
  v37 = swift_allocObject();
  *(v37 + 16) = v54;
  *(v37 + 24) = a3;
  sub_257BD2D4C(&qword_27F8F6030, &qword_27F8F6020);
  v38 = v50;
  sub_257ECDE50();

  (*(v49 + 8))(v10, v38);
  if (qword_27F8F4630 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  sub_257BBD88C(v51);
  return (*(v12 + 8))(v36, v11);
}

void sub_257C37208()
{
  v0 = sub_257ECDA30();
  MEMORY[0x28223BE20](v0);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6760);
  sub_257C37D2C(&qword_27F8F60C0, sub_257C37DA4);
  v1 = sub_257ECC700();
  v3 = v2;

  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = sub_257ECF4C0();
  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    v7 = sub_257ECCB90();
    v8 = sub_257ECF4C0();
    [v6 setValue:v7 forKey:v8];
    sub_257BF2550(v1, v3);
  }

  else
  {
    sub_257BF2550(v1, v3);
  }
}

void sub_257C374B4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = sub_257ECDA30();
  MEMORY[0x28223BE20](v5);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  a4();
  v6 = sub_257ECC700();
  v8 = v7;

  v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v10 = sub_257ECF4C0();
  v11 = [v9 initWithSuiteName_];

  if (v11)
  {
    v12 = sub_257ECCB90();
    v13 = sub_257ECF4C0();
    [v11 setValue:v12 forKey:v13];
    sub_257BF2550(v6, v8);
  }

  else
  {
    sub_257BF2550(v6, v8);
  }
}

void sub_257C37730()
{
  v0 = sub_257ECDA30();
  MEMORY[0x28223BE20](v0);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  sub_257ECE1D0();
  sub_257C3813C(&qword_27F8F6040, MEMORY[0x277CDFA28]);
  v1 = sub_257ECC700();
  v3 = v2;

  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = sub_257ECF4C0();
  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    v7 = sub_257ECCB90();
    v8 = sub_257ECF4C0();
    [v6 setValue:v7 forKey:v8];
    sub_257BF2550(v1, v3);
  }

  else
  {

    sub_257BF2550(v1, v3);
  }
}

unint64_t sub_257C37A54()
{
  result = qword_27F8F6010;
  if (!qword_27F8F6010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6010);
  }

  return result;
}

unint64_t sub_257C37AA8()
{
  result = qword_27F8F6018;
  if (!qword_27F8F6018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6018);
  }

  return result;
}

unint64_t sub_257C37B40()
{
  result = qword_27F8F6060;
  if (!qword_27F8F6060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6060);
  }

  return result;
}

unint64_t sub_257C37B94()
{
  result = qword_27F8F6068;
  if (!qword_27F8F6068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6068);
  }

  return result;
}

unint64_t sub_257C37C24()
{
  result = qword_27F8F6088;
  if (!qword_27F8F6088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6088);
  }

  return result;
}

unint64_t sub_257C37C78()
{
  result = qword_27F8F6090;
  if (!qword_27F8F6090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6090);
  }

  return result;
}

unint64_t sub_257C37CD8()
{
  result = qword_27F8F60B8;
  if (!qword_27F8F60B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F60B8);
  }

  return result;
}

uint64_t sub_257C37D2C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F6760);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_257C37DA4()
{
  result = qword_27F8F60C8;
  if (!qword_27F8F60C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F60C8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_257C37E34(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_257C37E90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_257C37F30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MFReaderTextDisplayView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_257C37FD4()
{
  result = qword_27F8F6110;
  if (!qword_27F8F6110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F60D8);
    sub_257C3813C(&qword_27F8F6118, type metadata accessor for MFReaderTextDisplayView);
    sub_257BD2D4C(&qword_27F8F6120, &qword_27F8F6128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6110);
  }

  return result;
}

uint64_t objectdestroy_14Tm()
{
  sub_257BB1464();
  sub_257BB1464();
  if (*(v0 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257C3813C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_257C38184()
{
  result = qword_27F8F6160;
  if (!qword_27F8F6160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F60F8);
    sub_257C3823C();
    sub_257BD2D4C(&qword_27F8F6178, &qword_27F8F6158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6160);
  }

  return result;
}

unint64_t sub_257C3823C()
{
  result = qword_27F8F6168;
  if (!qword_27F8F6168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F60F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F60E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F60D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F60D8);
    sub_257C37FD4();
    swift_getOpaqueTypeConformance2();
    sub_257BD2D4C(&qword_27F8F6140, &qword_27F8F60D0);
    swift_getOpaqueTypeConformance2();
    sub_257BD2D4C(&qword_27F8F6170, &qword_27F8F6148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6168);
  }

  return result;
}

unint64_t sub_257C383CC()
{
  result = qword_27F8F6180;
  if (!qword_27F8F6180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6108);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F60F8);
    sub_257C38184();
    swift_getOpaqueTypeConformance2();
    sub_257BD2D4C(&qword_27F8F6188, &qword_27F8F6190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6180);
  }

  return result;
}

unint64_t sub_257C384C0()
{
  result = qword_27F8F61C8;
  if (!qword_27F8F61C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F61C0);
    sub_257C3854C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F61C8);
  }

  return result;
}

unint64_t sub_257C3854C()
{
  result = qword_27F8F61D0;
  if (!qword_27F8F61D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F61D8);
    sub_257C38604();
    sub_257BD2D4C(&qword_27F8F6120, &qword_27F8F6128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F61D0);
  }

  return result;
}

unint64_t sub_257C38604()
{
  result = qword_27F8F61E0;
  if (!qword_27F8F61E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F61E0);
  }

  return result;
}

__n128 sub_257C38660@<Q0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  MinX = CGRectGetMinX(*&a2);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  MaxY = CGRectGetMaxY(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  MaxX = CGRectGetMaxX(v22);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  v10 = CGRectGetMaxY(v23);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  v11 = CGRectGetMaxX(v24);
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  MinY = CGRectGetMinY(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  v13 = CGRectGetMinX(v26);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  v14 = CGRectGetMinY(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59B8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_257EDBE50;
  *(v15 + 32) = MinX;
  *(v15 + 40) = MaxY;
  *(v15 + 48) = 0;
  *(v15 + 56) = MaxX;
  *(v15 + 64) = v10;
  *(v15 + 72) = 1;
  *(v15 + 80) = v11;
  *(v15 + 88) = MinY;
  *(v15 + 96) = 2;
  *(v15 + 104) = v13;
  *(v15 + 112) = v14;
  *(v15 + 120) = 3;
  v16 = sub_257C38808();

  *a1 = v16;
  result = xmmword_257EDC820;
  *(a1 + 8) = xmmword_257EDC820;
  return result;
}

uint64_t sub_257C38808()
{
  v34 = *v0;

  sub_257C39484(&v34);
  v1 = *(v34 + 2);
  if (!v1)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v1 == 1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v1 < 3)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v1 == 3)
  {
LABEL_33:
    __break(1u);

    __break(1u);
    return result;
  }

  v2 = v34 + 32;
  v3 = *(v34 + 5);
  v4 = *(v34 + 8);
  v5 = *(v34 + 11);
  v6 = *(v34 + 14);
  v7 = 72;
  if (v6 >= v5)
  {
    v8 = 72;
  }

  else
  {
    v8 = 48;
  }

  if (v6 >= v5)
  {
    v7 = 48;
  }

  v9 = &v2[24 * (v3 >= v4)];
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = *(v9 + 2);
  v13 = *&v2[v7];
  v14 = *&v2[v7 + 16];
  v15 = *&v2[v8];
  v16 = *&v2[v8 + 16];
  v17 = &v2[24 * (v3 < v4)];
  v18 = *v17;
  v19 = *(v17 + 1);
  v20 = *(v17 + 2);
  if (v15.f64[1] < v11)
  {
    v21 = vmovn_s64(vcgtq_f64(v13, v15));
    v22 = vdup_lane_s32(v21, 0);
    if (v21.i8[0])
    {
      v23 = v14;
    }

    else
    {
      v23 = v16;
    }

    if (v21.i8[0])
    {
      v14 = v16;
    }

    v24.i64[0] = v22.i32[0];
    v24.i64[1] = v22.i32[1];
    v25 = vbslq_s8(v24, v15, v13);
    v15 = vbslq_s8(v24, v13, v15);
    v16 = v23;
    v13 = v25;
  }

  v32 = v15;
  v33 = v13;
  v26 = sub_257C39DEC(v10, v11, v13.f64[0], v13.f64[1], v18, v19, v15.f64[0], v15.f64[1]);

  if (v26)
  {
    v27 = v18;
  }

  else
  {
    v27 = v10;
  }

  if (v26)
  {
    v28 = v19;
  }

  else
  {
    v28 = v11;
  }

  if (v26)
  {
    v29 = v20;
  }

  else
  {
    v29 = v12;
  }

  if (v26)
  {
    v30 = v12;
  }

  else
  {
    v10 = v18;
    v11 = v19;
    v30 = v20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59B8);
  result = swift_allocObject();
  *(result + 16) = xmmword_257EDBE50;
  *(result + 32) = v10;
  *(result + 40) = v11;
  *(result + 48) = v30;
  *(result + 56) = v32;
  *(result + 72) = v16;
  *(result + 80) = v33;
  *(result + 96) = v14;
  *(result + 104) = v27;
  *(result + 112) = v28;
  *(result + 120) = v29;
  return result;
}

uint64_t sub_257C389F8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_257BF2804(0, v2, 0);
    result = v9;
    v4 = (v1 + 32);
    v5 = *(v9 + 16);
    do
    {
      v6 = *v4;
      v10 = result;
      v7 = *(result + 24);
      if (v5 >= v7 >> 1)
      {
        v8 = *v4;
        sub_257BF2804((v7 > 1), v5 + 1, 1);
        v6 = v8;
        result = v10;
      }

      *(result + 16) = v5 + 1;
      *(result + 16 * v5 + 32) = v6;
      v4 = (v4 + 24);
      ++v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_257C38AC4()
{
  Mutable = CGPathCreateMutable();
  if (*(sub_257C389F8() + 16) < 4uLL)
  {
    __break(1u);
  }

  else
  {

    sub_257ECFC50();
    v1 = sub_257C389F8();
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v1 + 40;
      do
      {
        sub_257ECFC60();
        v3 += 16;
        --v2;
      }

      while (v2);
    }

    CGPathGetBoundingBox(Mutable);
  }
}

uint64_t sub_257C38BD4(unint64_t a1, double a2, double a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a1;
    v5 = *v4;
    if (*(*v4 + 2) > a1)
    {
      v6 = a3;
      v7 = a2;
      v10 = &v5[3 * a1];
      v8 = *(v10 + 4);
      v9 = *(v10 + 5);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  result = sub_257C7DF00(v5);
  v5 = result;
LABEL_4:
  v12 = &v5[3 * v3];
  v12[4] = v7;
  v12[5] = v6;
  v13 = v12 + 4;
  *v4 = v5;
  v14 = *(v5 + 2);
  if (!v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v14 == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14 < 3)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v14 == 3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v23 = v9;
  v24 = v8;
  v15 = v5[4];
  v16 = v5[5];
  v17 = v5[7];
  v18 = v5[8];
  v19 = v5[10];
  v20 = v5[11];
  v21 = v5[13];
  v22 = v5[14];
  result = sub_257C39DEC(v21, v22, v19, v20, v15, v16, v17, v18);
  if (result & 1) != 0 || (result = sub_257C39DEC(v19, v20, v17, v18, v21, v22, v15, v16), (result))
  {
    if (v14 > v3)
    {
      *v13 = v24;
      v13[1] = v23;
      *v4 = v5;
      return result;
    }

LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t sub_257C38D30()
{
  v1 = 1;
  if (*(v0 + 8) <= 0.0 || *(v0 + 16) <= 0.0)
  {
    return v1 & 1;
  }

  v43 = *(v0 + 16);
  v44 = *(v0 + 8);
  result = sub_257C38F94();
  v3 = *(result + 16);
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v3 == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 < 3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3 != 3)
  {
    v4 = *(result + 32);
    v5 = *(result + 40);
    v6 = *(result + 48);
    v7 = *(result + 56);
    v9 = *(result + 64);
    v8 = *(result + 72);
    v10 = *(result + 80);
    v11 = *(result + 88);

    v12 = v10;
    v13 = v10 - v9;
    v37 = v5;
    v38 = v12;
    v35 = v4;
    v14 = v5 * v13 + (v9 - v4) * v11;
    v15 = v4 - v12;
    v16 = v12;
    v40 = v15;
    v41 = v5 - v11;
    v42 = atan((v8 * v15 + v14) / (v15 * v13 + (v5 - v11) * (v11 - v8)));
    v17 = v6;
    v18 = v9 - v6;
    v19 = v17 - v16;
    v20 = v17;
    v34 = v17;
    v39 = atan((v7 * v13 + v18 * v11 + v8 * v19) / (v18 * v13 + (v8 - v7) * (v11 - v8)));
    v21 = v20 - v35;
    v36 = atan((v37 * v18 + (v20 - v35) * v8 + v7 * (v35 - v9)) / ((v7 - v37) * (v8 - v7) + (v20 - v35) * v18));
    v22 = atan((v21 * v11 + v7 * v40 + v37 * (v38 - v34)) / (v21 * v40 + (v7 - v37) * v41));
    v23.f64[0] = v36;
    v23.f64[1] = v22;
    v24.f64[0] = v42;
    v24.f64[1] = v39;
    v25 = vdupq_n_s64(0x4066800000000000uLL);
    v26 = vdupq_n_s64(0x400921FB54442D18uLL);
    v27 = vdivq_f64(vmulq_f64(v23, v25), v26);
    v28 = vdivq_f64(vmulq_f64(v24, v25), v26);
    v29 = vaddq_f64(v28, v25);
    v30 = vbslq_s8(vcltzq_f64(v27), vaddq_f64(v27, v25), v27);
    v31 = vdupq_lane_s64(v43, 0);
    v32 = vdupq_lane_s64(v44, 0);
    v33 = vbslq_s8(vcltzq_f64(v28), v29, v28);
    v1 = vminv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_f64(v32, v33), vcgtq_f64(v32, v30)), vuzp1q_s32(vcgtq_f64(v33, v31), vcgtq_f64(v30, v31))))));
    return v1 & 1;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_257C38F94()
{
  v0 = sub_257C38808();
  v1 = *(v0 + 16);
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    v2 = v0;
    sub_257BF2804(0, v1, 0);
    v3 = v2;
    v4 = v11;
    v5 = *(v11 + 16);
    v6 = 32;
    do
    {
      v7 = *(v3 + v6);
      v8 = *(v11 + 24);
      if (v5 >= v8 >> 1)
      {
        v10 = *(v3 + v6);
        sub_257BF2804((v8 > 1), v5 + 1, 1);
        v7 = v10;
        v3 = v2;
      }

      *(v11 + 16) = v5 + 1;
      *(v11 + 16 * v5 + 32) = v7;
      v6 += 24;
      ++v5;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v4;
}

double static MAGMatrixUtils.caPerspectiveTransformationMatrix(source:dest:)@<D0>(_OWORD *a1@<X8>)
{
  sub_257C3A284(v7);
  v2 = v11;
  a1[4] = v10;
  a1[5] = v2;
  v3 = v13;
  a1[6] = v12;
  a1[7] = v3;
  v4 = v7[1];
  *a1 = v7[0];
  a1[1] = v4;
  result = *&v8;
  v6 = v9;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

void sub_257C390E8(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = sub_257ECF4C0();
  v7 = [objc_opt_self() filterWithName_];

  if (!v7)
  {
    goto LABEL_20;
  }

  *&v24 = v3;
  *(&v24 + 1) = v4;
  *&v25 = v5;
  v8 = sub_257C38F94();
  if (!*(v8 + 16))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = v8;
  v10 = [objc_allocWithZone(MEMORY[0x277CBF788]) initWithCGPoint_];
  v11 = sub_257ECF4C0();
  [v7 setValue:v10 forKey:v11];

  if (*(v9 + 16) < 2uLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CBF788]) initWithCGPoint_];
  v13 = sub_257ECF4C0();
  [v7 setValue:v12 forKey:v13];

  if (*(v9 + 16) >= 3uLL)
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CBF788]) initWithCGPoint_];
    v15 = sub_257ECF4C0();
    [v7 setValue:v14 forKey:v15];

    if (*(v9 + 16) >= 4uLL)
    {
      v16 = *(v9 + 80);
      v17 = *(v9 + 88);

      v18 = [objc_allocWithZone(MEMORY[0x277CBF788]) initWithCGPoint_];
      v19 = sub_257ECF4C0();
      [v7 setValue:v18 forKey:v19];

      [v7 setValue:v2 forKey:*MEMORY[0x277CBFAF0]];
      if ([v7 valueForKey_])
      {
        sub_257ED0160();
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = 0u;
        v23 = 0u;
      }

      v24 = v22;
      v25 = v23;
      if (*(&v23 + 1))
      {
        sub_257C3A4CC();
        if (swift_dynamicCast())
        {
          if (v26)
          {
            v20 = v26;
            [v20 extent];
            v28 = CGRectInset(v27, 1.0, 1.0);
            v21 = [v20 imageByCroppingToRect_];

            v7 = v26;
            v26 = v21;
          }

          goto LABEL_15;
        }
      }

      else
      {
        sub_257C3A464(&v24);
      }

      v26 = 0;
LABEL_15:

      return;
    }

    goto LABEL_19;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_257C39484(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_257C6718C(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = sub_257ED05F0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[24 * i + 32];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *(v13 + 3);
          v15 = *(v13 + 4);
          *(v13 + 1) = *(v13 - 8);
          *(v13 + 4) = *(v13 + 1);
          *(v13 - 1) = v11;
          *v13 = v14;
          *(v13 + 1) = v15;
          v13 -= 24;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 24;
        --v9;
      }
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

    v17[0] = v7 + 32;
    v17[1] = v6;
    sub_257C395E4(v17, v18, v19, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_257C395E4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_257C66E20(v7);
      v7 = result;
    }

    v85 = (v7 + 16);
    v86 = *(v7 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v7 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_257C39BB0((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v13 = *v11;
      v12 = v11 + 6;
      v14 = v13;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v12;
        v12 += 3;
        v18 = v17 >= v16;
        ++v15;
        v16 = v17;
        if ((((v9 < v14) ^ v18) & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v14)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 0;
        v20 = 24 * v6;
        v21 = v8;
        do
        {
          if (v21 != v6 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v10);
            v23 = v27 + v20;
            v24 = *(v22 + 2);
            v25 = *v22;
            v26 = *(v23 - 8);
            *v22 = *(v23 - 24);
            *(v22 + 2) = v26;
            *(v23 - 24) = v25;
            *(v23 - 8) = v24;
          }

          ++v21;
          --v19;
          v20 -= 24;
          v10 += 24;
        }

        while (v21 < v6 + v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_257BFCB00(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v38 = *(v7 + 16);
    v37 = *(v7 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_257BFCB00((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v39;
    v40 = v7 + 32;
    v41 = (v7 + 32 + 16 * v38);
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 32);
          v44 = *(v7 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v7 + 16 * v39);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v40 + 16 * v42);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v7 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v40 + 16 * v42);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = (v40 + 16 * (v42 - 1));
        v81 = *v80;
        v82 = (v40 + 16 * v42);
        v83 = v82[1];
        sub_257C39BB0((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v7 + 16);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove((v40 + 16 * v42), v82 + 2, 16 * (v84 - 1 - v42));
        *(v7 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v40 + 16 * v39;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v7 + 16 * v39);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v40 + 16 * v42);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 32);
    v35 = *(v33 + 40);
    *(v33 + 24) = *v33;
    *(v33 + 40) = *(v33 + 16);
    *v33 = v31;
    *(v33 + 8) = v34;
    *(v33 + 16) = v35;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_257C39BB0(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 3;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 3;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v7[2] = v13[2];
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[3 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[3 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 3;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (v19 < *v16)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 3, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[3 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_257C39DEC(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = (a4 - a2) * (a5 - a3);
  v9 = (a3 - a1) * (a6 - a4);
  v10 = v8 - v9;
  v11 = vabdd_f64(v8, v9);
  v12 = v10 <= 0.0;
  v13 = (a4 - a2) * (a7 - a3);
  v14 = (a3 - a1) * (a8 - a4);
  v15 = v13 - v14;
  v16 = vabdd_f64(v13, v14);
  v17 = (a1 - a7) * (a8 - a6);
  v18 = (a7 - a5) * (a2 - a8);
  v19 = v17 - v18;
  v20 = vabdd_f64(v17, v18);
  v21 = v19 <= 0.0;
  if (v11 < 0.0000001)
  {
    v12 = 2;
  }

  if (v12 == 1)
  {
    if (v16 < 0.0000001 || v15 <= 0.0)
    {
      goto LABEL_19;
    }
  }

  else if (v12 || v16 < 0.0000001 || v15 > 0.0)
  {
    goto LABEL_19;
  }

  v22 = (a3 - a7) * (a8 - a6);
  v23 = (a7 - a5) * (a4 - a8);
  v24 = v22 - v23;
  v25 = vabdd_f64(v22, v23);
  if (v20 < 0.0000001)
  {
    v21 = 2;
  }

  if (v21 == 1)
  {
    if (v25 >= 0.0000001 && v24 > 0.0)
    {
      return 1;
    }
  }

  else if (!v21 && v25 >= 0.0000001 && v24 <= 0.0)
  {
    return 1;
  }

LABEL_19:
  if (v11 >= 0.0000001)
  {
    goto LABEL_51;
  }

  v26 = a1 > a3 ? a1 : a3;
  if (v26 < a5)
  {
    goto LABEL_51;
  }

  if (a3 >= a1)
  {
    a3 = a1;
  }

  if (a3 > a5 || (a2 > a4 ? (v27 = a2) : (v27 = a4), v27 < a6 || (a4 >= a2 ? (v28 = a2) : (v28 = a4), v28 > a6)))
  {
LABEL_51:
    if (v20 >= 0.0000001)
    {
      return 0;
    }

    v29 = a5 > a7 ? a5 : a7;
    if (v29 < a1)
    {
      return 0;
    }

    v30 = a7 >= a5 ? a5 : a7;
    if (v30 > a1)
    {
      return 0;
    }

    v31 = a6 > a8 ? a6 : a8;
    if (v31 < a2)
    {
      return 0;
    }

    v32 = a8 >= a6 ? a6 : a8;
    if (v32 > a2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_257C39F8C@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2 < 2)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v2 == 2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v2 < 4)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v3.f64[0] = *(result + 48);
  v4 = *(result + 56);
  v6.f64[0] = *(result + 64);
  v5 = *(result + 72);
  v7 = *(result + 80);
  v8 = *(result + 32);
  v9 = v6.f64[0] + v8.f64[0] - v3.f64[0] - v7.f64[0];
  v10 = *(result + 88);
  v11 = v5 + *(result + 40) - v4 - v10;
  if (v9 == 0.0 && v11 == 0.0)
  {
    v3.f64[1] = *(result + 56);
    v12 = vsubq_f64(v3, v8);
    v6.f64[1] = *(result + 72);
    v13 = vsubq_f64(v6, v3);
    v14 = 0.0;
    v15 = 0.0;
  }

  else
  {
    v16 = v3.f64[0] - v6.f64[0];
    v17 = v4 - v5;
    v18 = v9;
    v19 = v11;
    v20 = v7.f64[0] - v6.f64[0];
    v21 = v10 - v5;
    v22 = (v18 * v21) - (v19 * v20);
    *&v16 = v16;
    *&v17 = v17;
    v23 = (*&v16 * v21) - (*&v17 * v20);
    v15 = v22 / v23;
    v24 = (v22 / v23);
    v14 = ((*&v16 * v19) - (*&v17 * v18)) / v23;
    v3.f64[1] = *(result + 56);
    v12 = vaddq_f64(vsubq_f64(v3, v8), vmulq_n_f64(v3, v24));
    v13 = vaddq_f64(vsubq_f64(v7, v8), vmulq_n_f64(v7, v14));
  }

  *&v25 = vcvt_f32_f64(v12);
  *(&v25 + 1) = __PAIR64__(v25, LODWORD(v15));
  *&v26 = vcvt_f32_f64(v8);
  *&v27 = vcvt_f32_f64(v13);
  *(&v27 + 1) = __PAIR64__(v27, LODWORD(v14));
  __asm { FMOV            V1.2S, #1.0 }

  *(&v26 + 1) = _D1;
  *a2 = v25;
  a2[1] = v27;
  a2[2] = v26;
  return result;
}

uint64_t sub_257C3A0B0@<X0>(float32x4_t *a1@<X8>)
{
  v2 = sub_257C38F94();
  v3 = sub_257C38F94();
  sub_257C39F8C(v2, v15);
  v13 = v15[1];
  v14 = v15[0];
  v11 = v15[2];

  v4.columns[2] = v11;
  v4.columns[1] = v13;
  v4.columns[0] = v14;
  v5 = vmulq_f32(v14, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v4.columns[2], v4.columns[2], 0xCuLL), v11, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v4.columns[1], v4.columns[1]), v13, 0xCuLL))), vextq_s8(vuzp1q_s32(v4.columns[2], v4.columns[2]), v11, 0xCuLL), vextq_s8(vextq_s8(v4.columns[1], v4.columns[1], 0xCuLL), v13, 8uLL)));
  if (fabsf(v5.f32[2] + vaddv_f32(*v5.f32)) >= 0.01)
  {
    v12 = __invert_f3(v4);
    sub_257C39F8C(v3, v16);
    v8 = v16[0];
    v9 = v16[1];
    v10 = v16[2];

    *a1 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, v12.columns[0].f32[0]), v9, *v12.columns[0].f32, 1), v10, v12.columns[0], 2);
    a1[1] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, v12.columns[1].f32[0]), v9, *v12.columns[1].f32, 1), v10, v12.columns[1], 2);
    a1[2] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, v12.columns[2].f32[0]), v9, *v12.columns[2].f32, 1), v10, v12.columns[2], 2);
  }

  else
  {

    sub_257BEBEF0();
    swift_allocError();
    *v6 = 0xD000000000000027;
    *(v6 + 8) = 0x8000000257EFA810;
    *(v6 + 16) = 0;
    *(v6 + 24) = 2;
    return swift_willThrow();
  }

  return result;
}

__n128 sub_257C3A284@<Q0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277CD9DE8];
  v3 = *(MEMORY[0x277CD9DE8] + 16);
  v4 = *(MEMORY[0x277CD9DE8] + 48);
  v5 = *(MEMORY[0x277CD9DE8] + 112);
  sub_257C3A0B0(&v13);
  v6 = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(v13, v13, 8uLL), v14));
  v7 = *&v14.i32[1];
  v8 = v15;
  v9 = vcvtq_f64_f32(v16);
  v10 = v17;
  *a1 = vcvtq_f64_f32(*v13.i8);
  *(a1 + 16) = v3;
  *(a1 + 24) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v4;
  *(a1 + 56) = v8;
  result = *(v2 + 64);
  v12 = *(v2 + 80);
  *(a1 + 64) = result;
  *(a1 + 80) = v12;
  *(a1 + 96) = v9;
  *(a1 + 112) = v5;
  *(a1 + 120) = v10;
  return result;
}

uint64_t sub_257C3A3A4(uint64_t *a1, int a2)
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

uint64_t sub_257C3A3EC(uint64_t result, int a2, int a3)
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

uint64_t sub_257C3A464(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F62F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_257C3A4CC()
{
  result = qword_27F8F6230;
  if (!qword_27F8F6230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F6230);
  }

  return result;
}

id sub_257C3A518()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.15 alpha:1.0];
  qword_27F912F00 = result;
  return result;
}

id sub_257C3A55C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___label;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___label);
  }

  else
  {
    v4 = sub_257C3AF7C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_257C3A5C0(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_257C3A620()
{
  type metadata accessor for CameraTrayUIButton();
  v0 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v0 setContentMode_];
  if (sub_257ECF030())
  {
    if (qword_27F8F45C0 != -1)
    {
      swift_once();
    }

    v1 = qword_27F912F00;
  }

  else
  {
    v1 = [objc_opt_self() blackColor];
  }

  v2 = v1;
  [v0 setBackgroundColor_];

  v3 = objc_opt_self();
  v4 = v0;
  v5 = [v3 whiteColor];
  [v4 setTintColor_];

  v6 = [v4 layer];
  [v6 setCornerRadius_];

  v7 = [v4 layer];
  if (qword_281544A80 != -1)
  {
    swift_once();
  }

  [v7 setCornerCurve_];

  v8 = [v4 layer];
  [v8 setMasksToBounds_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = sub_257DE0C7C();
  [v4 setImage:v9 forState:0];

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  v12 = v4;
  v13 = [v11 bundleForClass_];
  v14 = sub_257ECF4C0();
  v15 = sub_257ECF4C0();
  v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

  if (!v16)
  {
    sub_257ECF500();
    v16 = sub_257ECF4C0();
  }

  [v12 setAccessibilityLabel_];

  v17 = sub_257ECF4C0();
  [v12 setAccessibilityIdentifier_];

  [v12 setShowsLargeContentViewer_];
  v18 = [v11 bundleForClass_];
  v19 = sub_257ECF4C0();
  v20 = sub_257ECF4C0();
  v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

  if (!v21)
  {
    sub_257ECF500();
    v21 = sub_257ECF4C0();
  }

  [v12 setLargeContentTitle_];

  v22 = sub_257DE0C7C();
  [v12 setLargeContentImage_];

  v23 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v12 addInteraction_];

  return v12;
}

id sub_257C3AAD0()
{
  type metadata accessor for CameraTrayUIButton();
  v0 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v0 setContentMode_];
  if (sub_257ECF030())
  {
    if (qword_27F8F45C0 != -1)
    {
      swift_once();
    }

    v1 = qword_27F912F00;
  }

  else
  {
    v1 = [objc_opt_self() blackColor];
  }

  v2 = v1;
  [v0 setBackgroundColor_];

  v3 = objc_opt_self();
  v4 = v0;
  v5 = [v3 whiteColor];
  [v4 setTintColor_];

  v6 = [v4 layer];
  [v6 setCornerRadius_];

  v7 = [v4 layer];
  if (qword_281544A80 != -1)
  {
    swift_once();
  }

  [v7 setCornerCurve_];

  v8 = [v4 layer];
  [v8 setMasksToBounds_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = sub_257DE0CA0();
  [v4 setImage:v9 forState:0];

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  v12 = v4;
  v13 = [v11 bundleForClass_];
  v14 = sub_257ECF4C0();
  v15 = sub_257ECF4C0();
  v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

  if (!v16)
  {
    sub_257ECF500();
    v16 = sub_257ECF4C0();
  }

  [v12 setAccessibilityLabel_];

  v17 = sub_257ECF4C0();
  [v12 setAccessibilityIdentifier_];

  [v12 setShowsLargeContentViewer_];
  v18 = [v11 bundleForClass_];
  v19 = sub_257ECF4C0();
  v20 = sub_257ECF4C0();
  v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

  if (!v21)
  {
    sub_257ECF500();
    v21 = sub_257ECF4C0();
  }

  [v12 setLargeContentTitle_];

  v22 = sub_257DE0CA0();
  [v12 setLargeContentImage_];

  v23 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v12 addInteraction_];

  return v12;
}

id sub_257C3AF7C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 userInterfaceLayoutDirection] == 1;

  [v0 setTextAlignment_];
  v3 = v0;
  [v3 setAlpha_];
  v4 = [v3 layer];
  [v4 setCornerRadius_];

  v5 = [objc_opt_self() grayColor];
  [v3 setTextColor_];

  [v3 setAdjustsFontForContentSizeCategory_];
  [v3 setNumberOfLines_];
  v6 = [objc_opt_self() _preferredFontForTextStyle_maximumContentSizeCategory_];
  [v3 setFont_];

  [v3 setUserInteractionEnabled_];
  [v3 setShowsLargeContentViewer_];
  sub_257D14A40();
  v7 = sub_257ECF4C0();

  [v3 setLargeContentTitle_];

  v8 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v3 addInteraction_];

  return v3;
}

id sub_257C3B1C4()
{
  v1 = v0;
  v2 = sub_257ECDAD0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___backdropView;
  v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___backdropView);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___backdropView);
  }

  else
  {
    sub_257ECDAC0();
    v6 = objc_allocWithZone(sub_257ECDB00());
    v7 = sub_257ECDAE0();
    [v7 _setCornerRadius_];
    v8 = *(v1 + v3);
    *(v1 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

id sub_257C3B2A8()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___opaqueView;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___opaqueView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___opaqueView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    if (qword_281544A78 != -1)
    {
      swift_once();
    }

    [v4 setBackgroundColor_];
    v5 = [v4 layer];
    [v5 setCornerRadius_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_257C3B39C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___internalButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___internalButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___internalButton);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_config);
    v5 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_config + 8);
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

void sub_257C3B480()
{
  v1 = sub_257C3A55C();
  v2 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isExpanded;
  swift_beginAccess();
  v3 = 0.0;
  if (*(v0 + v2) == 1)
  {
    v3 = 1.0;
    if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isDimmed))
    {
      v3 = 0.25;
    }
  }

  [v1 setAlpha_];

  v4 = sub_257C3A5C0(&OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___microphoneButton, sub_257C3A620);
  v5 = v4;
  if (*(v0 + v2))
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  [v4 setAlpha_];

  [*(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___microphoneButton) setUserInteractionEnabled_];
  v7 = sub_257C3A5C0(&OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___followUpButton, sub_257C3AAD0);
  v8 = v7;
  if (*(v0 + v2))
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  [v7 setAlpha_];

  [*(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___followUpButton) setUserInteractionEnabled_];
  sub_257C3B5D8();
}

void sub_257C3B5D8()
{
  v1 = v0;
  v2 = sub_257C3B39C();
  v3 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isExpanded;
  swift_beginAccess();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_257ECF4C0();
  v6 = sub_257ECF4C0();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  sub_257ECF500();
  v8 = sub_257ECF4C0();

  [v2 setAccessibilityHint_];

  v9 = v1 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    v12 = (*(v10 + 16))(ObjectType, v10);
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_6;
    }

    if (v12)
    {
      goto LABEL_12;
    }
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = 0;
LABEL_6:
    v13 = *(v9 + 8);
    v14 = swift_getObjectType();
    v15 = (*(v13 + 24))(v1, &off_286909108, v14, v13);
    swift_unknownObjectRelease();
    if (v12 & 1) == 0 && ((*(v1 + v3) & 1) == 0 || (v15))
    {
      goto LABEL_13;
    }

LABEL_12:
    [*(v1 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___internalButton) setAccessibilityHint_];
    goto LABEL_16;
  }

  if (*(v1 + v3))
  {
    goto LABEL_12;
  }

LABEL_13:
  v16 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___internalButton);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 bundleForClass_];
  v20 = sub_257ECF4C0();
  v21 = sub_257ECF4C0();
  v22 = [v19 &selRef:v20 reloadSections:0 withRowAnimation:v21 + 4];

  if (!v22)
  {
    sub_257ECF500();
    v22 = sub_257ECF4C0();
  }

  [v18 setAccessibilityHint_];

LABEL_16:
  v23 = *(v1 + v3);
  v24 = *MEMORY[0x277D76598];
  v25 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___internalButton);
  v26 = [v25 accessibilityTraits];
  if (v23)
  {
    v27 = v26 | v24;
  }

  else
  {
    v27 = v26 & ~v24;
  }

  [v25 setAccessibilityTraits_];
}

void sub_257C3BA24()
{
  v1 = sub_257C3A55C();
  v2 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isExpanded;
  swift_beginAccess();
  v3 = 0.0;
  if (*(v0 + v2) == 1)
  {
    v3 = 1.0;
    if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isDimmed))
    {
      v3 = 0.25;
    }
  }

  [v1 setAlpha_];

  sub_257C3BB3C();
  v4 = sub_257C3A5C0(&OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___microphoneButton, sub_257C3A620);
  v5 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isDimmed;
  [v4 setUserInteractionEnabled_];

  v6 = sub_257C3A5C0(&OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___followUpButton, sub_257C3AAD0);
  [v6 setUserInteractionEnabled_];
}

void sub_257C3BB3C()
{
  if (v0[OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isDimmed] == 1)
  {
    v1 = [objc_opt_self() whiteColor];
    v2 = [v0 traitCollection];
    v6 = sub_257C1C83C(v1, v2);
  }

  else
  {
    v3 = v0[OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isGlowing];
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

uint64_t sub_257C3BC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257C3B39C();
  sub_257C3D6F8(a1, v14);
  v7 = v15;
  if (v15)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v9 = *(v7 - 8);
    MEMORY[0x28223BE20](v8);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = sub_257ED0630();
    (*(v9 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v12 = 0;
  }

  [v6 addTarget:v12 action:a2 forControlEvents:a3];

  return swift_unknownObjectRelease();
}

void sub_257C3BE6C()
{
  v1 = v0;
  v43.receiver = v0;
  v43.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v43, sel_layoutSubviews);
  v2 = &v0[OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_config];
  v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_config];
  v4 = *(v2 + 1);
  v5 = *(v4 + 24);
  v6 = v5(v3, v4);
  v7 = v5(v3, v4);
  [v1 bounds];
  v9 = v8;
  v10 = *(v4 + 40);
  v11 = v10(v3, v4);
  v12 = v10(v3, v4);
  v13 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isExpanded;
  swift_beginAccess();
  if (v1[v13])
  {
    v14 = (v9 - v11) * 0.5;
    v15 = sub_257CA9B90();
    v16 = sub_257CA9B88();
    [v1 bounds];
    v18 = v17 - (v6 + v6) - v15 - v16;
    v44.origin.x = 0.0;
    v44.origin.y = 0.0;
    v44.size.width = v6;
    v44.size.height = v7;
    v19 = v15 + CGRectGetMaxX(v44);
  }

  else
  {
    v12 = v7;
    v18 = v6;
    v14 = 0.0;
    v19 = 0.0;
  }

  v20 = sub_257C3B39C();
  [v20 setFrame_];

  v21 = sub_257C3A55C();
  [v21 setFrame_];

  v22 = sub_257C3B1C4();
  [v1 frame];
  [v1 frame];
  [v1 frame];
  CGRectGetWidth(v45);
  [v1 frame];
  CGRectGetHeight(v46);
  [v22 setFrame_];

  v24 = sub_257C3B2A8();
  [v1 frame];
  [v24 setFrame_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_257EDBE40;
  v26 = sub_257C3A5C0(&OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___microphoneButton, sub_257C3A620);
  v27 = [v26 trailingAnchor];

  v28 = [v1 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:-5.0];

  *(v25 + 32) = v29;
  v30 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___microphoneButton;
  v31 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___microphoneButton] centerYAnchor];
  v32 = [v1 centerYAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v25 + 40) = v33;
  v34 = [*&v1[v30] widthAnchor];
  v35 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___internalButton;
  v36 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___internalButton] widthAnchor];
  v37 = [v34 constraintEqualToAnchor:v36 constant:-10.0];

  *(v25 + 48) = v37;
  v38 = [*&v1[v30] heightAnchor];
  v39 = [*&v1[v35] widthAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:-10.0];

  *(v25 + 56) = v40;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_buttonConstraints] = v25;

  v41 = objc_opt_self();
  sub_257BD2C2C(0, &qword_281543EF0);

  v42 = sub_257ECF7F0();

  [v41 activateConstraints_];
}

uint64_t sub_257C3C5D8()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isExpanded;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_257C3C61C(char a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isExpanded;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_257C3B480();
}

void (*sub_257C3C670(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_257C3C6D4;
}

void sub_257C3C6D4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_257C3B480();
  }
}

uint64_t sub_257C3C740(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_257C3C78C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_257ED9BF0;
  *(v0 + 32) = sub_257C3B39C();
  return v0;
}

void sub_257C3C858(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_clickInteraction;
  v9 = *&v2[OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_clickInteraction];
  if (v9)
  {
    sub_257BD2C2C(0, &qword_27F8F62E0);
    v10 = v9;
    v11 = a1;
    v12 = sub_257ECFF50();

    if (v12)
    {
      v13 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isExpanded;
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
        *(v19 + 16) = *(&v15->isa + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isDimmed);

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
            sub_257C3D540(1);

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

void sub_257C3CB3C(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_clickInteraction;
  v12 = *&v2[OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_clickInteraction];
  if (v12)
  {
    sub_257BD2C2C(0, &qword_27F8F62E0);
    v13 = v12;
    v14 = a1;
    v15 = sub_257ECFF50();

    if (v15)
    {
      if ((v2[OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isDimmed] & 1) == 0)
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
          sub_257C3D540(1);

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

id sub_257C3CEBC(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *&v2[OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_clickInteraction];
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
    v20 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isExpanded;
    swift_beginAccess();
    LODWORD(v20) = v12[v20];

    *(v15 + 14) = v20;
    *(v15 + 18) = 1024;
    v21 = v12[OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isDimmed];

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

void sub_257C3D1F0()
{
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isOn) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isGlowing) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isFollowUpGlowing) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_glowSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_textSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_followUpSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_clickInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_expandsWithClickInteractionOnly) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_buttonConstraints) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___microphoneButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___followUpButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___label) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___backdropView) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___opaqueView) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___internalButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isDimmed) = 0;
  sub_257ED0410();
  __break(1u);
}

uint64_t sub_257C3D338(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v2[OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_clickInteraction];
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
        v16 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isExpanded;
        swift_beginAccess();
        *(v15 + 4) = *(&v12->isa + v16);
        *(v15 + 8) = 1024;
        *(v15 + 10) = *(&v12->isa + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isDimmed);

        _os_log_impl(&dword_257BAC000, v13, v14, "expanded: %{BOOL}d, dimmed: %{BOOL}d", v15, 0xEu);
        MEMORY[0x259C74820](v15, -1, -1);
      }

      else
      {

        v13 = v12;
      }

      (*(v5 + 8))(v7, v4);
    }
  }

  return 0;
}

uint64_t sub_257C3D540(char a1)
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
    v11 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isExpanded;
    swift_beginAccess();
    *(v10 + 10) = *(&v7->isa + v11);
    *(v10 + 14) = 1024;
    *(v10 + 16) = *(&v7->isa + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isDimmed);

    _os_log_impl(&dword_257BAC000, v8, v9, "was cancelled: %{BOOL}d, expanded: %{BOOL}d, dimmed: %{BOOL}d", v10, 0x14u);
    MEMORY[0x259C74820](v10, -1, -1);
  }

  else
  {

    v8 = v7;
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_257C3D6F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F62F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_257C3D7D8(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_clickInteraction;
  v9 = *&v2[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_clickInteraction];
  if (v9)
  {
    sub_257C3E170();
    v10 = v9;
    v11 = a1;
    v12 = sub_257ECFF50();

    if (v12)
    {
      v13 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded;
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
        *(v19 + 16) = *(&v15->isa + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed);

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
            sub_257C3E454(1);

            if (*&v2[v8])
            {
              [v15 removeInteraction:?];
              sub_257D479D0();
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

void sub_257C3DAC0(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_clickInteraction;
  v12 = *&v2[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_clickInteraction];
  if (v12)
  {
    sub_257C3E170();
    v13 = v12;
    v14 = a1;
    v15 = sub_257ECFF50();

    if (v15)
    {
      if ((v2[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed] & 1) == 0)
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
          sub_257C3E454(1);

          if (*&v2[v11])
          {
            [v2 removeInteraction_];
            sub_257D479D0();
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

id sub_257C3DE40(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *&v2[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_clickInteraction];
  if (!v8)
  {
    return 0;
  }

  sub_257C3E170();
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
    v20 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded;
    swift_beginAccess();
    LODWORD(v20) = v12[v20];

    *(v15 + 14) = v20;
    *(v15 + 18) = 1024;
    v21 = v12[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed];

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

unint64_t sub_257C3E170()
{
  result = qword_27F8F62E0;
  if (!qword_27F8F62E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F62E0);
  }

  return result;
}

uint64_t sub_257C3E1BC(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *&v2[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_clickInteraction];
  if (v8)
  {
    sub_257C3E170();
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
        v16 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded;
        swift_beginAccess();
        *(v15 + 4) = *(&v12->isa + v16);
        *(v15 + 8) = 1024;
        *(v15 + 10) = *(&v12->isa + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed);

        _os_log_impl(&dword_257BAC000, v13, v14, "expanded: %{BOOL}d, dimmed: %{BOOL}d", v15, 0xEu);
        MEMORY[0x259C74820](v15, -1, -1);
      }

      else
      {

        v13 = v12;
      }

      (*(v5 + 8))(v7, v4);
      if (*(&v12->isa + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed) != 1 || (v17 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded, swift_beginAccess(), *(&v12->isa + v17) == 1))
      {
        v18 = v12 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v19 = *(v18 + 1);
          ObjectType = swift_getObjectType();
          (*(v19 + 8))(v12, &off_28690E098, ObjectType, v19);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  return 0;
}

uint64_t sub_257C3E454(char a1)
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
    v11 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded;
    swift_beginAccess();
    *(v10 + 10) = *(&v7->isa + v11);
    *(v10 + 14) = 1024;
    *(v10 + 16) = *(&v7->isa + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed);

    _os_log_impl(&dword_257BAC000, v8, v9, "was cancelled: %{BOOL}d, expanded: %{BOOL}d, dimmed: %{BOOL}d", v10, 0x14u);
    MEMORY[0x259C74820](v10, -1, -1);
  }

  else
  {

    v8 = v7;
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_257C3E614()
{
  sub_257ED07B0();
  sub_257ED07E0();
  return sub_257ED0800();
}

uint64_t MFReaderPlaybackSpeed.id.getter()
{
  v0 = sub_257ECCCF0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCCE0();
  v4 = sub_257ECCCA0();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t MFReaderPlaybackSpeed.localizedName.getter()
{
  if (qword_27F8F47D8 != -1)
  {
    swift_once();
  }

  v0 = qword_27F913338;
  v1 = sub_257ECFA50();
  v2 = [v0 stringForObjectValue_];

  if (v2)
  {
    v3 = sub_257ECF500();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v8 = sub_257ECF4C0();
  v9 = sub_257ECF4C0();
  v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

  sub_257ECF500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_257ED6D30;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_257BFB13C();
  v12 = 3157553;
  if (v5)
  {
    v12 = v3;
  }

  v13 = 0xE300000000000000;
  if (v5)
  {
    v13 = v5;
  }

  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  v14 = sub_257ECF4D0();

  return v14;
}

MagnifierSupport::MFReaderPlaybackSpeed_optional __swiftcall MFReaderPlaybackSpeed.init(rawValue:)(Swift::Float rawValue)
{
  if (rawValue == 0.75)
  {
    *v1 = 0;
  }

  else if (rawValue == 1.0)
  {
    *v1 = 1;
  }

  else if (rawValue == 1.25)
  {
    *v1 = 2;
  }

  else if (rawValue == 1.5)
  {
    *v1 = 3;
  }

  else
  {
    if (rawValue == 2.0)
    {
      v2 = 5;
    }

    else
    {
      v2 = 6;
    }

    if (rawValue == 1.75)
    {
      v3 = 4;
    }

    else
    {
      v3 = v2;
    }

    *v1 = v3;
  }

  return result;
}

float sub_257C3EA24@<S0>(float *a1@<X8>)
{
  result = flt_257EDCAEC[*v1];
  *a1 = result;
  return result;
}

uint64_t sub_257C3EA70@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_257ECCCF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCCE0();
  v6 = sub_257ECCCA0();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  return result;
}

unint64_t sub_257C3EC00()
{
  result = qword_27F8F6360;
  if (!qword_27F8F6360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6360);
  }

  return result;
}

unint64_t sub_257C3EC58()
{
  result = qword_27F8F6368;
  if (!qword_27F8F6368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6368);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MFReaderPlaybackSpeed(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}