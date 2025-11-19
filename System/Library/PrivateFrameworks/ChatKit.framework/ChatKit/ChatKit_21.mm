uint64_t sub_1909ABBD8()
{
  v1 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedInThrowAnimation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_1909ABC34(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedInThrowAnimation;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1909B8C60;
}

uint64_t sub_1909ABD10()
{
  v1 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedForSnapshot;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1909ABD60(_BYTE *a1, uint64_t a2, int a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = a1[v6];
  a1[v6] = a3;
  if (v7 != a3)
  {
    v8 = a1;
    sub_1909AC998();
  }
}

uint64_t sub_1909ABDD8(char a1, uint64_t *a2)
{
  v4 = a1 & 1;
  v5 = *a2;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  *(v2 + v5) = a1;
  if (v7 != v4)
  {
    return sub_1909AC998();
  }

  return result;
}

uint64_t sub_1909ABE38(unsigned __int8 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  v9 = *(v6 + v7);
  *(v6 + v7) = v5;
  if (v5 != v9)
  {
    return sub_1909AC998();
  }

  return result;
}

uint64_t (*sub_1909ABE98(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedForSnapshot;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1909ABF2C;
}

void sub_1909ABF30(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    sub_1909AC998();
  }

  free(v1);
}

void (*sub_1909ABF9C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_gradientReferenceView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1909AC034;
}

void sub_1909AC034(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
    goto LABEL_11;
  }

  v5 = *(v3 + 32);
  swift_endAccess();

  v6 = (v5 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration);
  v7 = *(v5 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration);
  v8 = v7 >> 61;
  if ((v7 >> 61) > 3)
  {
    v13 = v6[1];
    v12 = v6[2];
    v14 = v6[3];
    v15 = v6[4];
    if (v8 == 4)
    {
      v22 = v6[5];
      v23 = (v7 & 0x1FFFFFFFFFFFFFFFLL);
      v24 = v12;
      v25 = v23;
      v26 = v13;
      sub_19093793C(v14, v15, v22);

      v19 = v14;
      v20 = v15;
      v21 = v22;
    }

    else
    {
      if (v8 != 5)
      {
        goto LABEL_11;
      }

      v16 = (v7 & 0x1FFFFFFFFFFFFFFFLL);
      v17 = v13;
      v18 = v16;
      sub_19093793C(v12, v14, v15);

      v19 = v12;
      v20 = v14;
      v21 = v15;
    }

    sub_190937A9C(v19, v20, v21);
  }

  else if (v8 >= 2)
  {
    v9 = (v7 & 0x1FFFFFFFFFFFFFFFLL);
    Strong = swift_unknownObjectWeakLoadStrong();
    v11 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();
    sub_190A65270(v11);

    sub_1909AC998();
  }

LABEL_11:

  free(v3);
}

uint64_t sub_1909AC1E8(double a1, double a2, double a3, double a4)
{
  IsEmpty = CGRectIsEmpty(*&a1);
  v10 = v4 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_gradientOverrideFrame;
  if (IsEmpty)
  {
    swift_beginAccess();
    *v10 = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 1;
  }

  else
  {
    swift_beginAccess();
    *v10 = a1;
    *(v10 + 8) = a2;
    *(v10 + 16) = a3;
    *(v10 + 24) = a4;
    *(v10 + 32) = 0;
  }

  return sub_1909AC998();
}

uint64_t sub_1909AC364(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *a2 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_gradientOverrideFrame;
  swift_beginAccess();
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v5;
  *(v4 + 32) = v3;
  return sub_1909AC998();
}

__n128 sub_1909AC3CC@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_gradientOverrideFrame;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t sub_1909AC424(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_gradientOverrideFrame;
  swift_beginAccess();
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 32);
  return sub_1909AC998();
}

uint64_t (*sub_1909AC488(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1909AC4EC;
}

uint64_t sub_1909AC4EC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1909AC998();
  }

  return result;
}

uint64_t sub_1909AC520(uint64_t a1)
{
  v2 = type metadata accessor for CKBalloonLayer.Configuration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1909B589C(a1, v4, type metadata accessor for CKBalloonLayer.Configuration);
  return sub_1909AC62C(v4);
}

uint64_t sub_1909AC5C0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_configuration;
  swift_beginAccess();
  return sub_1909B589C(v1 + v3, a1, type metadata accessor for CKBalloonLayer.Configuration);
}

uint64_t sub_1909AC62C(uint64_t a1)
{
  v3 = type metadata accessor for CKBalloonLayer.Configuration(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12[-v7];
  v9 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_configuration;
  swift_beginAccess();
  sub_1909B589C(v1 + v9, v8, type metadata accessor for CKBalloonLayer.Configuration);
  swift_beginAccess();
  sub_1909B78A0(a1, v1 + v9);
  swift_endAccess();
  sub_1909B589C(v1 + v9, v6, type metadata accessor for CKBalloonLayer.Configuration);
  if (MEMORY[0x193AF24B0](v6, v8))
  {
    v10 = _s7ChatKit14CKBalloonLayerC5StyleO2eeoiySbAE_AEtFZ_0(&v6[*(v3 + 20)], &v8[*(v3 + 20)]);
    sub_1909B7924(v6, type metadata accessor for CKBalloonLayer.Configuration);
    if (v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1909B7924(v6, type metadata accessor for CKBalloonLayer.Configuration);
  }

  sub_1909AC998();
LABEL_6:
  sub_1909B7924(a1, type metadata accessor for CKBalloonLayer.Configuration);
  return sub_1909B7924(v8, type metadata accessor for CKBalloonLayer.Configuration);
}

void (*sub_1909AC7E4(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(type metadata accessor for CKBalloonLayer.Configuration(0) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  v9 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_configuration;
  swift_beginAccess();
  sub_1909B589C(v1 + v9, v8, type metadata accessor for CKBalloonLayer.Configuration);
  return sub_1909AC8F0;
}

void sub_1909AC8F0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    sub_1909B589C(*(*a1 + 40), v3, type metadata accessor for CKBalloonLayer.Configuration);
    sub_1909AC62C(v3);
    sub_1909B7924(v4, type metadata accessor for CKBalloonLayer.Configuration);
  }

  else
  {
    sub_1909AC62C(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1909AC998()
{
  v0 = type metadata accessor for CKBalloonLayer.StrokeOnlyBalloonConfiguration(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v540 = &v502 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v516 = type metadata accessor for CKBalloonLayer.MaterialStrokeConfiguration(0);
  v2 = MEMORY[0x1EEE9AC00](v516);
  v513 = &v502 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v509 = &v502 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v510 = &v502 - v6;
  v535 = sub_190D56B90();
  v532 = *(v535 - 8);
  v7 = MEMORY[0x1EEE9AC00](v535);
  v518 = &v502 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v507 = &v502 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v508 = &v502 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v531 = &v502 - v13;
  v537 = type metadata accessor for CKBalloonLayer.StrokeStyle(0);
  v14 = MEMORY[0x1EEE9AC00](v537);
  v517 = &v502 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v530 = &v502 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v511 = &v502 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v525 = &v502 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v512 = &v502 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v524 = &v502 - v24;
  v550 = type metadata accessor for CKBalloonLayer.Stroke(0);
  v548 = *(v550 - 1);
  v25 = MEMORY[0x1EEE9AC00](v550);
  v527 = &v502 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v543 = &v502 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v522 = &v502 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v523 = &v502 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60290);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v533 = &v502 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v538 = &v502 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v514 = &v502 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v529 = &v502 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v542 = &v502 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v515 = &v502 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v520 = &v502 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v521 = &v502 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v528 = &v502 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v541 = &v502 - v51;
  v544 = type metadata accessor for CKBalloonLayer.MaterialBalloonConfiguration(0);
  v52 = MEMORY[0x1EEE9AC00](v544);
  v547 = (&v502 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v52);
  v551 = &v502 - v54;
  v565 = sub_190D56C50();
  v546 = *(v565 - 8);
  MEMORY[0x1EEE9AC00](v565);
  v564 = &v502 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v526 = type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration(0);
  v56 = MEMORY[0x1EEE9AC00](v526);
  v519 = (&v502 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = MEMORY[0x1EEE9AC00](v56);
  v536 = &v502 - v59;
  MEMORY[0x1EEE9AC00](v58);
  v539 = (&v502 - v60);
  v61 = type metadata accessor for CKBalloonLayer.Configuration(0);
  v62 = MEMORY[0x1EEE9AC00](v61);
  v557 = &v502 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x1EEE9AC00](v62);
  v534 = &v502 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v558 = &v502 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v559 = &v502 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v555 = &v502 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v552 = &v502 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v549 = &v502 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v556 = &v502 - v77;
  MEMORY[0x1EEE9AC00](v76);
  v545 = &v502 - v78;
  v567 = type metadata accessor for CKBalloonLayer.Style(0);
  v79 = MEMORY[0x1EEE9AC00](v567);
  v561 = (&v502 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = MEMORY[0x1EEE9AC00](v79);
  v553 = &v502 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v562 = &v502 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v87 = &v502 - v86;
  v88 = MEMORY[0x1EEE9AC00](v85);
  v90 = &v502 - v89;
  v91 = MEMORY[0x1EEE9AC00](v88);
  v560 = (&v502 - v92);
  v93 = MEMORY[0x1EEE9AC00](v91);
  v95 = &v502 - v94;
  MEMORY[0x1EEE9AC00](v93);
  v97 = &v502 - v96;
  v98 = sub_190D56800();
  v99 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v101 = (&v502 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1902188FC(0, &qword_1EAD46670);
  *v101 = sub_190D57870();
  (*(v99 + 104))(v101, *MEMORY[0x1E69E8020], v98);
  v102 = sub_190D56830();
  (*(v99 + 8))(v101, v98);
  if ((v102 & 1) == 0)
  {
    __break(1u);
    goto LABEL_204;
  }

  v103 = v568;
  v104 = &v568[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_configuration];
  swift_beginAccess();
  v105 = *(v61 + 20);
  v566 = v104;
  sub_1909B589C(&v104[v105], v97, type metadata accessor for CKBalloonLayer.Style);
  v106 = &v103[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration];
  v107 = *&v103[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration];
  v108 = *&v103[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 8];
  v109 = *&v103[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 16];
  v110 = *&v103[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 24];
  v112 = *&v103[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 32];
  v111 = *(v106 + 5);
  v113 = v107 >> 61;
  if ((v107 >> 61) <= 2)
  {
    if (v113)
    {
      v120 = v108;
      v121 = v565;
      if (v113 == 1)
      {
        v562 = v107;
        sub_1909B589C(v97, v561, type metadata accessor for CKBalloonLayer.Style);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v506 = v112;
        v554 = v111;
        if (EnumCaseMultiPayload <= 1)
        {
          v123 = v562;
        }

        else
        {
          v123 = v562;
          if (EnumCaseMultiPayload != 2)
          {
            if (EnumCaseMultiPayload == 3)
            {
              v504 = v110;
              v563 = v120;
              v124 = v540;
              sub_1909B8940(v561, v540, type metadata accessor for CKBalloonLayer.StrokeOnlyBalloonConfiguration);
              v125 = v124;
              v126 = v543;
              sub_1909B589C(v125, v543, type metadata accessor for CKBalloonLayer.Stroke);
              v127 = v538;
              sub_1909B589C(v126, v538, type metadata accessor for CKBalloonLayer.Stroke);
              v128 = v548;
              v129 = *(v548 + 56);
              v130 = v550;
              v567 = v548 + 56;
              v561 = v129;
              (v129)(v127, 0, 1, v550);
              v131 = v533;
              sub_19022FD14(v127, v533, &qword_1EAD60290);
              if ((*(v128 + 48))(v131, 1, v130) == 1)
              {
                sub_1909378E8((v562 & 0x1FFFFFFFFFFFFFFFLL), v563, v109);
                sub_19022EEA4(v131, &qword_1EAD60290);
                sub_19022EEA4(v127, &qword_1EAD60290);
                v132 = v534;
                goto LABEL_134;
              }

              v300 = v527;
              sub_1909B8940(v131, v527, type metadata accessor for CKBalloonLayer.Stroke);
              v301 = v300;
              v302 = v530;
              sub_1909B8940(v301, v530, type metadata accessor for CKBalloonLayer.StrokeStyle);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                sub_1909378E8((v562 & 0x1FFFFFFFFFFFFFFFLL), v563, v109);
                sub_1909B7924(v302, type metadata accessor for CKBalloonLayer.StrokeStyle);
                sub_19022EEA4(v538, &qword_1EAD60290);
                v132 = v534;
                if (v109 < 0)
                {
                  v505 = v97;
                  v568 = (v109 & 0x7FFFFFFFFFFFFFFFLL);
                  v303 = objc_opt_self();
                  v503 = v109;
                  v304 = v303;
                  v305 = [v303 clearColor];
                  v306 = v121;
                  v307 = [v305 CGColor];

                  v308 = v519;
                  v309 = (v519 + *(v526 + 20));
                  v310 = [v304 blackColor];
                  v311 = [v310 CGColor];

                  *v309 = v311;
                  swift_storeEnumTagMultiPayload();
                  v312 = v550;
                  v313 = v543;
                  v314 = *(v543 + v550[6]);
                  v315 = *(v543 + v550[7]);
                  *(v309 + v550[5]) = *(v543 + v550[5]);
                  *(v309 + v312[6]) = v314;
                  *(v309 + v312[7]) = v315;
                  v316 = v561;
                  (v561)(v309, 0, 1, v312);
                  *v308 = v307;
                  v317 = v539;
                  sub_1909B589C(v308, v539, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
                  sub_19090D34C(v317);
                  v318 = *(v546 + 16);
                  v319 = v564;
                  v320 = v566;
                  v318(v564, v566, v306);
                  sub_19090D168(v319);
                  v318(v319, v320, v306);
                  v321 = v568;
                  sub_190C083B0(v319);
                  v322 = v521;
                  sub_1909B589C(v313, v521, type metadata accessor for CKBalloonLayer.Stroke);
                  (v316)(v322, 0, 1, v312);
                  v323 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_stroke;
                  swift_beginAccess();
                  v324 = v520;
                  sub_19022FD14(&v321[v323], v520, &qword_1EAD60290);
                  swift_beginAccess();
                  sub_1909B89A8(v322, &v321[v323]);
                  swift_endAccess();
                  sub_190C0988C(v324);
                  sub_19022EEA4(v324, &qword_1EAD60290);
                  sub_19022EEA4(v322, &qword_1EAD60290);
                  v325 = v517;
                  sub_1909B589C(v313, v517, type metadata accessor for CKBalloonLayer.StrokeStyle);
                  if (swift_getEnumCaseMultiPayload() == 1)
                  {
                    v326 = v513;
                    sub_1909B8940(v325, v513, type metadata accessor for CKBalloonLayer.MaterialStrokeConfiguration);
                    v327 = *(v532 + 16);
                    v328 = v518;
                    v329 = v535;
                    v327(v518, v326, v535);
                    v330 = v531;
                    v327(v531, v328, v329);
                    sub_190B1A2F0(v330);
                    if (*(v326 + *(v516 + 20) + 8))
                    {
                      v331 = sub_190D56ED0();
                    }

                    else
                    {
                      v331 = 0;
                    }

                    v492 = v562;
                    v493 = v563;
                    [v562 & 0x1FFFFFFFFFFFFFFFLL setGroupName_];

                    v494 = v518;
                    v327(v330, v518, v329);
                    sub_190C08B98(v330);
                    sub_190937B0C(v492, v493, v503, v504, v506, v554);
                    (*(v532 + 8))(v494, v329);
                    sub_1909B7924(v519, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
                    sub_1909B7924(v543, type metadata accessor for CKBalloonLayer.Stroke);
                    sub_1909B7924(v540, type metadata accessor for CKBalloonLayer.StrokeOnlyBalloonConfiguration);
                    sub_1909B7924(v505, type metadata accessor for CKBalloonLayer.Style);
                    v472 = type metadata accessor for CKBalloonLayer.MaterialStrokeConfiguration;
                    goto LABEL_202;
                  }

                  sub_190937B0C(v562, v563, v503, v504, v506, v554);
                  sub_1909B7924(v519, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
                  sub_1909B7924(v313, type metadata accessor for CKBalloonLayer.Stroke);
                  sub_1909B7924(v540, type metadata accessor for CKBalloonLayer.StrokeOnlyBalloonConfiguration);
                  sub_1909B7924(v505, type metadata accessor for CKBalloonLayer.Style);
                  v385 = type metadata accessor for CKBalloonLayer.StrokeStyle;
LABEL_151:
                  v190 = v385;
                  v191 = v325;
                  return sub_1909B7924(v191, v190);
                }

LABEL_134:
                v355 = v109;
                sub_1909B589C(v566, v132, type metadata accessor for CKBalloonLayer.Configuration);
                v356 = v568;
                swift_beginAccess();
                Strong = swift_unknownObjectWeakLoadStrong();
                v358 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedInThrowAnimation;
                swift_beginAccess();
                if (v356[v358])
                {
                  v359 = 1;
                  v360 = v563;
                }

                else
                {
                  v361 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedForSnapshot;
                  swift_beginAccess();
                  v360 = v563;
                  if (v356[v361] == 1)
                  {
                    v359 = 1;
                  }

                  else
                  {
                    v362 = swift_unknownObjectWeakLoadStrong();
                    if (v362)
                    {
                      v363 = [v362 shouldAnimatePathChanges];
                      swift_unknownObjectRelease();
                      v359 = v363;
                    }

                    else
                    {
                      v359 = 0;
                    }
                  }
                }

                sub_1909B5904(v132, Strong, v359, &v570);
                swift_unknownObjectRelease();
                sub_1909B7924(v132, type metadata accessor for CKBalloonLayer.Configuration);
                v473 = *(v106 + 1);
                v573 = *v106;
                v574 = v473;
                v575 = *(v106 + 2);
                v474 = v571;
                *v106 = v570;
                *(v106 + 1) = v474;
                *(v106 + 2) = v572;
                sub_1909B7000(&v570, v569);
                sub_1909AAD0C(&v573);
                sub_1909B7038(&v573);
                sub_1909B7038(&v570);
                sub_190937B0C(v562, v360, v355, v504, v506, v554);
                sub_1909B7924(v543, type metadata accessor for CKBalloonLayer.Stroke);
                sub_1909B7924(v540, type metadata accessor for CKBalloonLayer.StrokeOnlyBalloonConfiguration);
                goto LABEL_85;
              }

              sub_1909378E8((v562 & 0x1FFFFFFFFFFFFFFFLL), v563, v109);
              sub_1909B7924(v302, type metadata accessor for CKBalloonLayer.StrokeStyle);
              sub_19022EEA4(v538, &qword_1EAD60290);
              v132 = v534;
              if (v109 < 0)
              {
                goto LABEL_134;
              }

              v340 = objc_opt_self();
              v341 = v109;
              v342 = [v340 clearColor];
              v95 = v97;
              v343 = [v342 CGColor];

              v344 = v539;
              v345 = (v539 + *(v526 + 20));
              v346 = [v340 blackColor];
              v347 = [v346 CGColor];

              *v345 = v347;
              swift_storeEnumTagMultiPayload();
              v348 = v550;
              v349 = v543;
              v350 = *(v543 + v550[6]);
              v351 = *(v543 + v550[7]);
              *(v345 + v550[5]) = *(v543 + v550[5]);
              *(v345 + v348[6]) = v350;
              *(v345 + v348[7]) = v351;
              v561(v345, 0, 1);
              *v344 = v343;
              v352 = v564;
              (*(v546 + 16))(v564, v566, v121);
              v353 = v562;
              sub_19090D168(v352);
              v354 = v536;
              sub_1909B589C(v344, v536, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
              sub_19090D34C(v354);
              sub_190937B0C(v353, v563, v341, v504, v506, v554);
              sub_1909B7924(v344, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
              sub_1909B7924(v349, type metadata accessor for CKBalloonLayer.Stroke);
              sub_1909B7924(v540, type metadata accessor for CKBalloonLayer.StrokeOnlyBalloonConfiguration);
LABEL_47:
              v189 = type metadata accessor for CKBalloonLayer.Style;
LABEL_48:
              v190 = v189;
              v191 = v95;
              return sub_1909B7924(v191, v190);
            }

            v179 = v110;
            v180 = v109;
            sub_1909378E8((v562 & 0x1FFFFFFFFFFFFFFFLL), v120, v109);
LABEL_78:
            sub_1909B589C(v566, v557, type metadata accessor for CKBalloonLayer.Configuration);
            v241 = v568;
            swift_beginAccess();
            v242 = swift_unknownObjectWeakLoadStrong();
            v243 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedInThrowAnimation;
            swift_beginAccess();
            if ((v241[v243] & 1) != 0 || (v244 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedForSnapshot, swift_beginAccess(), v241[v244] == 1))
            {
              v245 = 1;
            }

            else
            {
              v249 = swift_unknownObjectWeakLoadStrong();
              if (v249)
              {
                v250 = [v249 shouldAnimatePathChanges];
                swift_unknownObjectRelease();
                v245 = v250;
              }

              else
              {
                v245 = 0;
              }
            }

            v246 = v557;
            sub_1909B5904(v557, v242, v245, &v570);
            swift_unknownObjectRelease();
            sub_1909B7924(v246, type metadata accessor for CKBalloonLayer.Configuration);
            v247 = *(v106 + 1);
            v573 = *v106;
            v574 = v247;
            v575 = *(v106 + 2);
            v248 = v571;
            *v106 = v570;
            *(v106 + 1) = v248;
            *(v106 + 2) = v572;
            sub_1909B7000(&v570, v569);
            sub_1909AAD0C(&v573);
            sub_1909B7038(&v573);
            v200 = v562;
            v201 = v120;
            v202 = v180;
            v203 = v179;
            goto LABEL_82;
          }
        }

        v179 = v110;
        v180 = v109;
        sub_1909378E8((v123 & 0x1FFFFFFFFFFFFFFFLL), v120, v109);
        sub_1909B7924(v561, type metadata accessor for CKBalloonLayer.Style);
        goto LABEL_78;
      }

      v149 = (v107 & 0x1FFFFFFFFFFFFFFFLL);
      sub_1909B589C(v97, v90, type metadata accessor for CKBalloonLayer.Style);
      v150 = swift_getEnumCaseMultiPayload();
      v151 = v149;
      v152 = v120;
      v95 = v97;
      if (v150 <= 1)
      {
        v153 = v568;
        if (v150)
        {
          sub_1909B7924(v90, type metadata accessor for CKBalloonLayer.Style);
          v277 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedInThrowAnimation;
          swift_beginAccess();
          if (v153[v277] & 1) != 0 || (v278 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedForSnapshot, swift_beginAccess(), (v153[v278]) || (swift_beginAccess(), (v279 = swift_unknownObjectWeakLoadStrong()) != 0) && (v280 = [v279 shouldAnimatePathChanges], swift_unknownObjectRelease(), v280))
          {
            v281 = v566;
            v282 = v549;
            sub_1909B589C(v566, v549, type metadata accessor for CKBalloonLayer.Configuration);
            sub_190A65374(v282);
            v283 = v564;
            (*(v546 + 16))(v564, v281, v565);
            sub_190B7BC20(v283);
            v284 = &v153[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_gradientOverrideFrame];
            swift_beginAccess();
            v285 = v284[32];
            v286 = &v151[OBJC_IVAR____TtC7ChatKit22CKBalloonGradientLayer_gradientOverrideFrame];
            v287 = *(v284 + 1);
            *v286 = *v284;
            *(v286 + 1) = v287;
            v286[32] = v285;
            sub_190A65F28();
            [v151 setNeedsLayout];

            goto LABEL_47;
          }

          v364 = v549;
          sub_1909B589C(v566, v549, type metadata accessor for CKBalloonLayer.Configuration);
          v365 = swift_unknownObjectWeakLoadStrong();
          sub_1909B5904(v364, v365, 0, &v570);
          swift_unknownObjectRelease();
          v186 = v364;
          goto LABEL_46;
        }
      }

      else
      {
        v153 = v568;
        if ((v150 - 2) >= 2)
        {
LABEL_42:
          v181 = v552;
          sub_1909B589C(v566, v552, type metadata accessor for CKBalloonLayer.Configuration);
          swift_beginAccess();
          v182 = swift_unknownObjectWeakLoadStrong();
          v183 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedInThrowAnimation;
          swift_beginAccess();
          if ((v153[v183] & 1) != 0 || (v184 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedForSnapshot, swift_beginAccess(), v153[v184] == 1))
          {
            v185 = 1;
          }

          else
          {
            v237 = swift_unknownObjectWeakLoadStrong();
            if (v237)
            {
              v238 = [v237 shouldAnimatePathChanges];
              swift_unknownObjectRelease();
              v185 = v238;
            }

            else
            {
              v185 = 0;
            }
          }

          sub_1909B5904(v181, v182, v185, &v570);
          swift_unknownObjectRelease();
          v186 = v181;
LABEL_46:
          sub_1909B7924(v186, type metadata accessor for CKBalloonLayer.Configuration);
          v187 = *(v106 + 1);
          v573 = *v106;
          v574 = v187;
          v575 = *(v106 + 2);
          v188 = v571;
          *v106 = v570;
          *(v106 + 1) = v188;
          *(v106 + 2) = v572;
          sub_1909B7000(&v570, v569);
          sub_1909AAD0C(&v573);

          sub_1909B7038(&v573);
          sub_1909B7038(&v570);
          goto LABEL_47;
        }
      }

      sub_1909B7924(v90, type metadata accessor for CKBalloonLayer.Style);
      goto LABEL_42;
    }

    v563 = v108;
    v143 = v107;
    sub_1909B589C(v97, v560, type metadata accessor for CKBalloonLayer.Style);
    v144 = swift_getEnumCaseMultiPayload();
    v145 = v565;
    if (v144 <= 1)
    {
      if (!v144)
      {
        v175 = v539;
        sub_1909B8940(v560, v539, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
        v176 = v564;
        (*(v546 + 16))(v564, v566, v145);
        v177 = v143;
        sub_19090D168(v176);
        v178 = v536;
        sub_1909B589C(v175, v536, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
        sub_19090D34C(v178);
        sub_190937B0C(v143, v563, v109, v110, v112, v111);
        sub_1909B7924(v175, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
        goto LABEL_85;
      }

      v554 = v111;
      v146 = v110;
      v147 = v112;
      v503 = v109;
      v225 = v143;
    }

    else
    {
      v503 = v109;
      v554 = v111;
      if (v144 != 2 && v144 != 3)
      {
        v146 = v110;
        v147 = v112;
        v207 = v143;
        goto LABEL_67;
      }

      v146 = v110;
      v147 = v112;
      v148 = v143;
    }

    sub_1909B7924(v560, type metadata accessor for CKBalloonLayer.Style);
LABEL_67:
    sub_1909B589C(v566, v556, type metadata accessor for CKBalloonLayer.Configuration);
    v226 = v568;
    swift_beginAccess();
    v227 = swift_unknownObjectWeakLoadStrong();
    v228 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedInThrowAnimation;
    swift_beginAccess();
    if ((v226[v228] & 1) != 0 || (v229 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedForSnapshot, swift_beginAccess(), v226[v229] == 1))
    {
      v230 = 1;
    }

    else
    {
      v235 = swift_unknownObjectWeakLoadStrong();
      if (v235)
      {
        v236 = [v235 shouldAnimatePathChanges];
        swift_unknownObjectRelease();
        v230 = v236;
      }

      else
      {
        v230 = 0;
      }
    }

    v231 = v556;
    sub_1909B5904(v556, v227, v230, &v570);
    swift_unknownObjectRelease();
    sub_1909B7924(v231, type metadata accessor for CKBalloonLayer.Configuration);
    v232 = *(v106 + 1);
    v573 = *v106;
    v574 = v232;
    v575 = *(v106 + 2);
    v233 = v571;
    *v106 = v570;
    *(v106 + 1) = v233;
    *(v106 + 2) = v572;
    sub_1909B7000(&v570, v569);
    sub_1909AAD0C(&v573);
    sub_1909B7038(&v573);
    v200 = v143;
    v201 = v563;
    v202 = v503;
    v203 = v146;
    v234 = v147;
    goto LABEL_83;
  }

  if (v113 <= 4)
  {
    v554 = *(v106 + 5);
    if (v113 == 3)
    {
      v114 = v108;
      v504 = v110;
      v506 = v112;
      v115 = v109;
      v116 = v107;
      v117 = (v107 & 0x1FFFFFFFFFFFFFFFLL);
      sub_1909B589C(v97, v87, type metadata accessor for CKBalloonLayer.Style);
      v118 = swift_getEnumCaseMultiPayload();
      v119 = v117;
      if (v118 <= 1)
      {
        if (v118)
        {
          v288 = v119;
          sub_1909B7924(v87, type metadata accessor for CKBalloonLayer.Style);
          v289 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedInThrowAnimation;
          v290 = v568;
          swift_beginAccess();
          if ((v290[v289] & 1) == 0)
          {
            v291 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedForSnapshot;
            swift_beginAccess();
            if ((v290[v291] & 1) == 0)
            {
              swift_beginAccess();
              v292 = swift_unknownObjectWeakLoadStrong();
              if (!v292 || (v293 = [v292 shouldAnimatePathChanges], swift_unknownObjectRelease(), (v293 & 1) == 0))
              {
                v366 = v549;
                sub_1909B589C(v566, v549, type metadata accessor for CKBalloonLayer.Configuration);
                sub_190A65374(v366);
                v367 = &v290[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_gradientOverrideFrame];
                swift_beginAccess();
                v368 = v367[32];
                v369 = &v288[OBJC_IVAR____TtC7ChatKit22CKBalloonGradientLayer_gradientOverrideFrame];
                v370 = *(v367 + 1);
                *v369 = *v367;
                *(v369 + 1) = v370;
                v369[32] = v368;
                sub_190A65F28();
                [v288 setNeedsLayout];
                sub_1909B2B24(v288);
                sub_190937B0C(v116, v114, v115, v504, v506, v554);
                goto LABEL_85;
              }
            }
          }

          v294 = v549;
          sub_1909B589C(v566, v549, type metadata accessor for CKBalloonLayer.Configuration);
          swift_beginAccess();
          v295 = swift_unknownObjectWeakLoadStrong();
          sub_1909B5904(v294, v295, 1, &v570);
          swift_unknownObjectRelease();
          sub_1909B7924(v294, type metadata accessor for CKBalloonLayer.Configuration);
          v296 = *(v106 + 1);
          v573 = *v106;
          v574 = v296;
          v575 = *(v106 + 2);
          v297 = v571;
          *v106 = v570;
          *(v106 + 1) = v297;
          *(v106 + 2) = v572;
          sub_1909B7000(&v570, v569);
          goto LABEL_55;
        }
      }

      else if ((v118 - 2) >= 2)
      {
LABEL_51:
        sub_1909B589C(v566, v555, type metadata accessor for CKBalloonLayer.Configuration);
        v192 = v568;
        swift_beginAccess();
        v193 = swift_unknownObjectWeakLoadStrong();
        v194 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedInThrowAnimation;
        swift_beginAccess();
        if ((v192[v194] & 1) != 0 || (v195 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedForSnapshot, swift_beginAccess(), v192[v195] == 1))
        {
          v196 = 1;
        }

        else
        {
          v239 = swift_unknownObjectWeakLoadStrong();
          if (v239)
          {
            v240 = [v239 shouldAnimatePathChanges];
            swift_unknownObjectRelease();
            v196 = v240;
          }

          else
          {
            v196 = 0;
          }
        }

        v197 = v555;
        sub_1909B5904(v555, v193, v196, &v570);
        swift_unknownObjectRelease();
        sub_1909B7924(v197, type metadata accessor for CKBalloonLayer.Configuration);
        v198 = *(v106 + 1);
        v573 = *v106;
        v574 = v198;
        v575 = *(v106 + 2);
        v199 = v571;
        *v106 = v570;
        *(v106 + 1) = v199;
        *(v106 + 2) = v572;
        sub_1909B7000(&v570, v569);
LABEL_55:
        sub_1909AAD0C(&v573);
        sub_1909B7038(&v573);
        v200 = v116;
        v201 = v114;
        v202 = v115;
        v203 = v504;
LABEL_82:
        v234 = v506;
LABEL_83:
        sub_190937B0C(v200, v201, v202, v203, v234, v554);
LABEL_84:
        sub_1909B7038(&v570);
        goto LABEL_85;
      }

      sub_1909B7924(v87, type metadata accessor for CKBalloonLayer.Style);
      goto LABEL_51;
    }

    v563 = v108;
    v154 = v97;
    v155 = (v107 & 0x1FFFFFFFFFFFFFFFLL);
    v505 = v154;
    sub_1909B589C(v154, v562, type metadata accessor for CKBalloonLayer.Style);
    v156 = swift_getEnumCaseMultiPayload();
    if (v156 <= 1)
    {
      v158 = v109;
      v204 = v109;
      v205 = v155;
      v206 = v563;
      v162 = v110;
      v163 = v110;
      v164 = v112;
      v165 = v112;
      v166 = v111;
      goto LABEL_57;
    }

    v157 = v568;
    if (v156 != 2)
    {
      v158 = v109;
      if (v156 != 3)
      {
        v261 = v109;
        v262 = v155;
        v263 = v563;
        v162 = v110;
        v164 = v112;
        sub_19093793C(v110, v112, v554);
LABEL_94:
        sub_1909B589C(v566, v559, type metadata accessor for CKBalloonLayer.Configuration);
        v264 = v568;
        swift_beginAccess();
        v265 = swift_unknownObjectWeakLoadStrong();
        v266 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedInThrowAnimation;
        swift_beginAccess();
        if ((v264[v266] & 1) != 0 || (v267 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedForSnapshot, swift_beginAccess(), v264[v267] == 1))
        {
          v268 = 1;
        }

        else
        {
          v275 = swift_unknownObjectWeakLoadStrong();
          if (v275)
          {
            v276 = [v275 shouldAnimatePathChanges];
            swift_unknownObjectRelease();
            v268 = v276;
          }

          else
          {
            v268 = 0;
          }
        }

        v269 = v559;
        sub_1909B5904(v559, v265, v268, &v570);
        swift_unknownObjectRelease();
        sub_1909B7924(v269, type metadata accessor for CKBalloonLayer.Configuration);
        v270 = *(v106 + 1);
        v573 = *v106;
        v574 = v270;
        v575 = *(v106 + 2);
        v271 = v571;
        *v106 = v570;
        *(v106 + 1) = v271;
        *(v106 + 2) = v572;
        sub_1909B7000(&v570, v569);
        sub_1909AAD0C(&v573);

        sub_190937A9C(v162, v164, v554);
        sub_1909B7038(&v573);

LABEL_98:
        sub_1909B7038(&v570);
LABEL_99:
        v190 = type metadata accessor for CKBalloonLayer.Style;
        v191 = v505;
        return sub_1909B7924(v191, v190);
      }

      v159 = v109;
      v160 = v155;
      v161 = v563;
      v162 = v110;
      v163 = v110;
      v164 = v112;
      v165 = v112;
      v166 = v554;
LABEL_57:
      sub_19093793C(v163, v165, v166);
      sub_1909B7924(v562, type metadata accessor for CKBalloonLayer.Style);
      goto LABEL_94;
    }

    v504 = v110;
    sub_1909B8940(v562, v551, type metadata accessor for CKBalloonLayer.MaterialBalloonConfiguration);
    v217 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedInThrowAnimation;
    swift_beginAccess();
    if (v157[v217] == 1 || (v218 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedForSnapshot, swift_beginAccess(), v157[v218] == 1))
    {
      v219 = v109;
      v220 = v155;
      v221 = v563;
      v222 = v504;
      v223 = v554;
      sub_19093793C(v504, v112, v554);
      LODWORD(v567) = 1;
      v224 = v112;
    }

    else
    {
      swift_beginAccess();
      v335 = v112;
      v336 = swift_unknownObjectWeakLoadStrong();
      v337 = v109;
      v338 = v155;
      v339 = v563;
      v224 = v335;
      sub_19093793C(v504, v335, v554);
      if (v336)
      {
        LODWORD(v567) = [v336 shouldAnimatePathChanges];
        swift_unknownObjectRelease();
      }

      else
      {
        LODWORD(v567) = 0;
      }

      v222 = v504;
      v223 = v554;
    }

    v408 = (v109 != 0) ^ v551[v544[6]];
    v562 = v544[5];
    v409 = v541;
    sub_19022FD14(&v551[v562], v541, &qword_1EAD60290);
    v506 = v224;
    v410 = v222 & v224 & v223 & 0xF000000000000007;
    if (v410 == 0xF000000000000007)
    {
      v561 = *(v548 + 48);
      v411 = (v561)(v409, 1, v550) != 1;
      v412 = v411 | ~v567;
      goto LABEL_168;
    }

    v419 = v528;
    sub_19022FD14(v409, v528, &qword_1EAD60290);
    v420 = *(v548 + 48);
    if ((v420)(v419, 1, v550) == 1)
    {
      sub_19022EEA4(v419, &qword_1EAD60290);
      v95 = v551;
    }

    else
    {
      v561 = v420;
      v425 = v419;
      v426 = v523;
      sub_1909B8940(v425, v523, type metadata accessor for CKBalloonLayer.Stroke);
      v427 = v524;
      sub_1909B8940(v426, v524, type metadata accessor for CKBalloonLayer.StrokeStyle);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v444 = v504;
        v445 = v506;
        v446 = v554;
        sub_1909378E8(v504, v506, v554);
        sub_1909B7924(v427, type metadata accessor for CKBalloonLayer.StrokeStyle);
        v503 = v109;
        sub_190937A9C(v444, v445, v446);
        v412 = (v446 < 0) | ~v567;
        v109 = v503;
LABEL_168:
        v413 = v564;
        v95 = v551;
        if (((v412 | v408) & 1) == 0)
        {
LABEL_169:
          v414 = v531;
          v415 = *(v532 + 16);
          v567 = v532 + 16;
          v560 = v415;
          (v415)(v531, v95, v535);
          v416 = v155;
          sub_190B1A2F0(v414);

          v417 = *&v95[v544[7] + 8];
          v418 = v416;
          if (v417)
          {
            v417 = sub_190D56ED0();
          }

          v428 = v546;
          [v416 setGroupName_];
          v568 = v416;

          v429 = *(v428 + 16);
          v430 = v413;
          v431 = v413;
          v432 = v565;
          v433 = v566;
          v429(v430, v566, v565);
          sub_190B7BC20(v431);
          if (v109)
          {
            v429(v431, v433, v432);
            v434 = v109;
            sub_190C083B0(v431);

            (v560)(v414, v551, v535);
            v435 = v434;
            sub_190C08B98(v414);
          }

          if (v410 == 0xF000000000000007)
          {

            sub_19022EEA4(v541, &qword_1EAD60290);
            sub_1909B7924(v505, type metadata accessor for CKBalloonLayer.Style);
            v190 = type metadata accessor for CKBalloonLayer.MaterialBalloonConfiguration;
            v191 = v551;
            return sub_1909B7924(v191, v190);
          }

          v503 = v109;
          v436 = v554;
          if ((v554 & 0x8000000000000000) == 0)
          {
            v437 = v564;
            v429(v564, v566, v565);
            v438 = v437;
            v439 = v504;
            sub_19090D168(v438);
            v440 = [objc_opt_self() clearColor];
            v441 = [v440 CGColor];

            v442 = v551;
            v443 = v539;
            sub_19022FD14(&v551[v562], v539 + *(v526 + 20), &qword_1EAD60290);
            *v443 = v441;
            sub_19090D34C(v443);

            sub_190937A9C(v439, v506, v436);
            sub_19022EEA4(v541, &qword_1EAD60290);
            sub_1909B7924(v505, type metadata accessor for CKBalloonLayer.Style);
            v190 = type metadata accessor for CKBalloonLayer.MaterialBalloonConfiguration;
            v191 = v442;
            return sub_1909B7924(v191, v190);
          }

          v458 = v554 & 0x7FFFFFFFFFFFFFFFLL;
          v459 = v539;
          v326 = v551;
          sub_1909AB778(v539);
          v460 = v506;
          sub_19090D34C(v459);
          v461 = v564;
          v462 = v565;
          v463 = v566;
          v429(v564, v566, v565);
          sub_19090D168(v461);
          v429(v461, v463, v462);
          sub_190C083B0(v461);
          v464 = v541;
          v465 = v521;
          sub_19022FD14(v541, v521, &qword_1EAD60290);
          v466 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_stroke;
          swift_beginAccess();
          v467 = v520;
          sub_19022FD14(v458 + v466, v520, &qword_1EAD60290);
          swift_beginAccess();
          sub_1909B89A8(v465, v458 + v466);
          swift_endAccess();
          sub_190C0988C(v467);
          v468 = v467;
          v469 = v464;
          sub_19022EEA4(v468, &qword_1EAD60290);
          sub_19022EEA4(v465, &qword_1EAD60290);
          v470 = v464;
          v471 = v515;
          sub_19022FD14(v470, v515, &qword_1EAD60290);
          if ((v561)(v471, 1, v550) != 1)
          {
            v481 = v512;
            sub_1909B589C(v471, v512, type metadata accessor for CKBalloonLayer.StrokeStyle);
            sub_1909B7924(v471, type metadata accessor for CKBalloonLayer.Stroke);
            v482 = swift_getEnumCaseMultiPayload();
            v483 = v504;
            v484 = v505;
            if (v482 == 1)
            {
              v485 = v510;
              sub_1909B8940(v481, v510, type metadata accessor for CKBalloonLayer.MaterialStrokeConfiguration);
              v486 = v508;
              v487 = v535;
              v488 = v560;
              (v560)(v508, v485, v535);
              v489 = v531;
              v488(v531, v486, v487);
              sub_190B1A2F0(v489);
              v481 = v551;
              if (*(v485 + *(v516 + 20) + 8))
              {
                v490 = sub_190D56ED0();
              }

              else
              {
                v490 = 0;
              }

              v499 = v504;
              [v504 setGroupName_];

              v500 = v531;
              v501 = v535;
              (v560)(v531, v486, v535);
              sub_190C08B98(v500);

              sub_190937A9C(v499, v506, v554);
              (*(v532 + 8))(v486, v501);
              sub_19022EEA4(v469, &qword_1EAD60290);
              sub_1909B7924(v505, type metadata accessor for CKBalloonLayer.Style);
              sub_1909B7924(v485, type metadata accessor for CKBalloonLayer.MaterialStrokeConfiguration);
              v491 = type metadata accessor for CKBalloonLayer.MaterialBalloonConfiguration;
            }

            else
            {

              sub_190937A9C(v483, v506, v554);
              sub_19022EEA4(v469, &qword_1EAD60290);
              sub_1909B7924(v484, type metadata accessor for CKBalloonLayer.Style);
              sub_1909B7924(v551, type metadata accessor for CKBalloonLayer.MaterialBalloonConfiguration);
              v491 = type metadata accessor for CKBalloonLayer.StrokeStyle;
            }

            v190 = v491;
            v191 = v481;
            return sub_1909B7924(v191, v190);
          }

          sub_190937A9C(v504, v460, v554);
          sub_19022EEA4(v469, &qword_1EAD60290);
          sub_1909B7924(v505, type metadata accessor for CKBalloonLayer.Style);
          sub_19022EEA4(v471, &qword_1EAD60290);
          v472 = type metadata accessor for CKBalloonLayer.MaterialBalloonConfiguration;
LABEL_202:
          v190 = v472;
          v191 = v326;
          return sub_1909B7924(v191, v190);
        }

        goto LABEL_173;
      }

      sub_1909B7924(v427, type metadata accessor for CKBalloonLayer.StrokeStyle);
      v413 = v564;
      v95 = v551;
      if (!(v408 & 1 | ((v567 & 1) == 0)) && v554 < 0)
      {
        goto LABEL_169;
      }
    }

LABEL_173:
    v421 = v549;
    sub_1909B589C(v566, v549, type metadata accessor for CKBalloonLayer.Configuration);
    swift_beginAccess();
    v422 = swift_unknownObjectWeakLoadStrong();
    sub_1909B5904(v421, v422, v567, &v570);
    swift_unknownObjectRelease();
    sub_1909B7924(v421, type metadata accessor for CKBalloonLayer.Configuration);
    v423 = *(v106 + 1);
    v573 = *v106;
    v574 = v423;
    v575 = *(v106 + 2);
    v424 = v571;
    *v106 = v570;
    *(v106 + 1) = v424;
    *(v106 + 2) = v572;
    sub_1909B7000(&v570, v569);
    sub_1909AAD0C(&v573);

    sub_1909B7038(&v573);
    sub_190937A9C(v504, v506, v554);

    sub_1909B7038(&v570);
    sub_19022EEA4(v541, &qword_1EAD60290);
    sub_1909B7924(v505, type metadata accessor for CKBalloonLayer.Style);
    v189 = type metadata accessor for CKBalloonLayer.MaterialBalloonConfiguration;
    goto LABEL_48;
  }

  v133 = v564;
  if (v113 != 5)
  {
    sub_1909B589C(v97, v95, type metadata accessor for CKBalloonLayer.Style);
    if (swift_getEnumCaseMultiPayload() < 4)
    {
      sub_1909B7924(v95, type metadata accessor for CKBalloonLayer.Style);
      v167 = v545;
      sub_1909B589C(v566, v545, type metadata accessor for CKBalloonLayer.Configuration);
      v168 = v568;
      swift_beginAccess();
      v169 = swift_unknownObjectWeakLoadStrong();
      v170 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedInThrowAnimation;
      swift_beginAccess();
      if ((v168[v170] & 1) != 0 || (v171 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedForSnapshot, swift_beginAccess(), v168[v171] == 1))
      {
        v172 = 1;
      }

      else
      {
        v298 = swift_unknownObjectWeakLoadStrong();
        if (v298)
        {
          v299 = [v298 shouldAnimatePathChanges];
          swift_unknownObjectRelease();
          v172 = v299;
        }

        else
        {
          v172 = 0;
        }
      }

      sub_1909B5904(v167, v169, v172, &v570);
      swift_unknownObjectRelease();
      sub_1909B7924(v167, type metadata accessor for CKBalloonLayer.Configuration);
      v173 = *(v106 + 1);
      v573 = *v106;
      v574 = v173;
      v575 = *(v106 + 2);
      v174 = v571;
      *v106 = v570;
      *(v106 + 1) = v174;
      *(v106 + 2) = v572;
      sub_1909B7000(&v570, v569);
      sub_1909AAD0C(&v573);
      sub_1909B7038(&v573);
      goto LABEL_84;
    }

LABEL_85:
    v190 = type metadata accessor for CKBalloonLayer.Style;
    v191 = v97;
    return sub_1909B7924(v191, v190);
  }

  v563 = v108;
  v134 = v97;
  v135 = (v107 & 0x1FFFFFFFFFFFFFFFLL);
  v505 = v134;
  v136 = v553;
  sub_1909B589C(v134, v553, type metadata accessor for CKBalloonLayer.Style);
  v137 = swift_getEnumCaseMultiPayload();
  if (v137 <= 1)
  {
    goto LABEL_19;
  }

  if (v137 != 2)
  {
    if (v137 != 3)
    {
      v251 = v563;
      v252 = v135;
      v140 = v109;
      v141 = v110;
      v142 = v112;
      sub_19093793C(v109, v110, v112);
LABEL_89:
      sub_1909B589C(v566, v558, type metadata accessor for CKBalloonLayer.Configuration);
      v253 = v568;
      swift_beginAccess();
      v254 = swift_unknownObjectWeakLoadStrong();
      v255 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedInThrowAnimation;
      swift_beginAccess();
      if ((v253[v255] & 1) != 0 || (v256 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedForSnapshot, swift_beginAccess(), v253[v256] == 1))
      {
        v257 = 1;
      }

      else
      {
        v273 = swift_unknownObjectWeakLoadStrong();
        if (v273)
        {
          v274 = [v273 shouldAnimatePathChanges];
          swift_unknownObjectRelease();
          v257 = v274;
        }

        else
        {
          v257 = 0;
        }
      }

      v258 = v558;
      sub_1909B5904(v558, v254, v257, &v570);
      swift_unknownObjectRelease();
      sub_1909B7924(v258, type metadata accessor for CKBalloonLayer.Configuration);
      v259 = *(v106 + 1);
      v573 = *v106;
      v574 = v259;
      v575 = *(v106 + 2);
      v260 = v571;
      *v106 = v570;
      *(v106 + 1) = v260;
      *(v106 + 2) = v572;
      sub_1909B7000(&v570, v569);
      sub_1909AAD0C(&v573);
      sub_190937A9C(v140, v141, v142);
      sub_1909B7038(&v573);

      goto LABEL_98;
    }

LABEL_19:
    v138 = v563;
    v139 = v135;
    v140 = v109;
    v141 = v110;
    v142 = v112;
    sub_19093793C(v109, v110, v112);
    sub_1909B7924(v136, type metadata accessor for CKBalloonLayer.Style);
    goto LABEL_89;
  }

  v504 = v110;
  sub_1909B8940(v136, v547, type metadata accessor for CKBalloonLayer.MaterialBalloonConfiguration);
  v208 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedInThrowAnimation;
  v209 = v568;
  swift_beginAccess();
  v210 = v112;
  if (v209[v208] == 1 || (v211 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedForSnapshot, swift_beginAccess(), v209[v211] == 1))
  {
    v212 = v563;
    v213 = v563;
    v214 = v135;
    v215 = v504;
    sub_19093793C(v109, v504, v210);
    v216 = 1;
  }

  else
  {
    swift_beginAccess();
    v332 = swift_unknownObjectWeakLoadStrong();
    v333 = v563;
    v334 = v135;
    sub_19093793C(v109, v504, v210);
    if (v332)
    {
      v216 = [v332 shouldAnimatePathChanges];
      swift_unknownObjectRelease();
    }

    else
    {
      v216 = 0;
    }

    v212 = v563;
    v215 = v504;
  }

  v371 = v542;
  v372 = (v212 != 0) ^ *(v547 + v544[6]);
  v567 = v544[5];
  sub_19022FD14(v547 + v567, v542, &qword_1EAD60290);
  v503 = v109;
  v506 = v210;
  v373 = v215 & v109 & v210 & 0xF000000000000007;
  if (v373 == 0xF000000000000007)
  {
    v374 = *(v548 + 48);
    if (!((v374(v371, 1, v550) != 1) | v216 & 1 | v372 & 1))
    {
      goto LABEL_147;
    }

LABEL_154:
    v388 = v549;
    sub_1909B589C(v566, v549, type metadata accessor for CKBalloonLayer.Configuration);
    swift_beginAccess();
    v389 = swift_unknownObjectWeakLoadStrong();
    sub_1909B5904(v388, v389, v216, &v570);
    swift_unknownObjectRelease();
    sub_1909B7924(v388, type metadata accessor for CKBalloonLayer.Configuration);
    v390 = *(v106 + 1);
    v573 = *v106;
    v574 = v390;
    v575 = *(v106 + 2);
    v391 = v571;
    *v106 = v570;
    *(v106 + 1) = v391;
    *(v106 + 2) = v572;
    sub_1909B7000(&v570, v569);
    sub_1909AAD0C(&v573);
    sub_1909B7038(&v573);
    sub_190937A9C(v503, v504, v506);

    sub_1909B7038(&v570);
    sub_19022EEA4(v542, &qword_1EAD60290);
    v392 = v547;
LABEL_155:
    sub_1909B7924(v392, type metadata accessor for CKBalloonLayer.MaterialBalloonConfiguration);
    goto LABEL_99;
  }

  v386 = v371;
  v387 = v529;
  sub_19022FD14(v386, v529, &qword_1EAD60290);
  v374 = *(v548 + 48);
  if (v374(v387, 1, v550) == 1)
  {
    sub_19022EEA4(v387, &qword_1EAD60290);
    goto LABEL_154;
  }

  v393 = v387;
  v394 = v522;
  sub_1909B8940(v393, v522, type metadata accessor for CKBalloonLayer.Stroke);
  v395 = v394;
  v396 = v525;
  sub_1909B8940(v395, v525, type metadata accessor for CKBalloonLayer.StrokeStyle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1909B7924(v396, type metadata accessor for CKBalloonLayer.StrokeStyle);
    if (((v216 | v372) & 1) != 0 || (v506 & 0x8000000000000000) == 0)
    {
      goto LABEL_154;
    }
  }

  else
  {
    v402 = v503;
    v403 = v504;
    v562 = v374;
    v404 = v506;
    sub_1909378E8(v503, v504, v506);
    sub_1909B7924(v396, type metadata accessor for CKBalloonLayer.StrokeStyle);
    v405 = v404 < 0;
    v406 = v403;
    v133 = v564;
    v407 = v404;
    v374 = v562;
    sub_190937A9C(v402, v406, v407);
    if ((v405 | v216 | v372))
    {
      goto LABEL_154;
    }
  }

LABEL_147:
  v562 = v374;
  v375 = v531;
  v376 = *(v532 + 16);
  v377 = v547;
  v378 = v535;
  v376(v531, v547, v535);
  v379 = v135;
  sub_190B1A2F0(v375);
  v564 = v379;

  v380 = v563;
  v381 = v566;
  if (v563)
  {
    (*(v546 + 16))(v133, v566, v565);
    v382 = v380;
    sub_190C083B0(v133);

    v376(v375, v377, v378);
    v383 = v382;
    sub_190C08B98(v375);
  }

  v561 = v376;
  v384 = v564;
  sub_1909B2B24(v564);
  v325 = v505;
  if (v373 == 0xF000000000000007)
  {

    sub_19022EEA4(v542, &qword_1EAD60290);
    sub_1909B7924(v377, type metadata accessor for CKBalloonLayer.MaterialBalloonConfiguration);
    v385 = type metadata accessor for CKBalloonLayer.Style;
    goto LABEL_151;
  }

  if ((v506 & 0x8000000000000000) == 0)
  {
    v397 = v506;
    (*(v546 + 16))(v133, v381, v565);
    v398 = v503;
    sub_19090D168(v133);
    v399 = [objc_opt_self() clearColor];
    v400 = [v399 CGColor];

    v401 = v539;
    sub_19022FD14(v377 + v567, v539 + *(v526 + 20), &qword_1EAD60290);
    *v401 = v400;
    sub_19090D34C(v401);
    sub_190937A9C(v398, v504, v397);

    sub_19022EEA4(v542, &qword_1EAD60290);
    v392 = v377;
    goto LABEL_155;
  }

  v447 = (v506 & 0x7FFFFFFFFFFFFFFFLL);
  v448 = v539;
  sub_1909AB778(v539);
  sub_19090D34C(v448);
  v449 = v381;
  v450 = *(v546 + 16);
  v451 = v565;
  v450(v133, v449, v565);
  sub_19090D168(v133);
  v450(v133, v449, v451);
  sub_190C083B0(v133);
  v452 = v542;
  v453 = v521;
  sub_19022FD14(v542, v521, &qword_1EAD60290);
  v454 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_stroke;
  swift_beginAccess();
  v455 = v520;
  sub_19022FD14(&v447[v454], v520, &qword_1EAD60290);
  swift_beginAccess();
  sub_1909B89A8(v453, &v447[v454]);
  swift_endAccess();
  v568 = v447;
  sub_190C0988C(v455);
  v456 = v452;
  sub_19022EEA4(v455, &qword_1EAD60290);
  sub_19022EEA4(v453, &qword_1EAD60290);
  v457 = v514;
  sub_19022FD14(v452, v514, &qword_1EAD60290);
  if ((v562)(v457, 1, v550) != 1)
  {
    v475 = v511;
    sub_1909B589C(v457, v511, type metadata accessor for CKBalloonLayer.StrokeStyle);
    sub_1909B7924(v457, type metadata accessor for CKBalloonLayer.Stroke);
    v476 = swift_getEnumCaseMultiPayload();
    v90 = v505;
    if (v476 != 1)
    {
      sub_190937A9C(v503, v504, v506);

      sub_19022EEA4(v456, &qword_1EAD60290);
      sub_1909B7924(v547, type metadata accessor for CKBalloonLayer.MaterialBalloonConfiguration);
      sub_1909B7924(v90, type metadata accessor for CKBalloonLayer.Style);
      v190 = type metadata accessor for CKBalloonLayer.StrokeStyle;
      v191 = v475;
      return sub_1909B7924(v191, v190);
    }

    v95 = v509;
    sub_1909B8940(v475, v509, type metadata accessor for CKBalloonLayer.MaterialStrokeConfiguration);
    v61 = v507;
    v477 = v535;
    v478 = v561;
    v561(v507, v95, v535);
    v479 = v531;
    v478(v531, v61, v477);
    sub_190B1A2F0(v479);
    v101 = v547;
    if (*&v95[*(v516 + 20) + 8])
    {
      v480 = sub_190D56ED0();
LABEL_205:
      v495 = v564;
      v496 = v503;
      [v503 setGroupName_];

      v497 = v531;
      v498 = v535;
      v561(v531, v61, v535);
      sub_190C08B98(v497);
      sub_190937A9C(v496, v504, v506);

      (*(v532 + 8))(v61, v498);
      sub_19022EEA4(v542, &qword_1EAD60290);
      sub_1909B7924(v101, type metadata accessor for CKBalloonLayer.MaterialBalloonConfiguration);
      sub_1909B7924(v90, type metadata accessor for CKBalloonLayer.Style);
      v189 = type metadata accessor for CKBalloonLayer.MaterialStrokeConfiguration;
      goto LABEL_48;
    }

LABEL_204:
    v480 = 0;
    goto LABEL_205;
  }

  sub_190937A9C(v503, v504, v506);

  sub_19022EEA4(v452, &qword_1EAD60290);
  sub_1909B7924(v547, type metadata accessor for CKBalloonLayer.MaterialBalloonConfiguration);
  sub_1909B7924(v505, type metadata accessor for CKBalloonLayer.Style);
  return sub_19022EEA4(v457, &qword_1EAD60290);
}

double sub_1909B0A9C()
{
  v1 = sub_190D56C50();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 bounds];
  v6 = v5;
  v8 = v7;
  v9 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_configuration;
  swift_beginAccess();
  (*(v2 + 16))(v4, &v0[v9], v1);
  v10 = MEMORY[0x193AF2490](v4, v6, v8);
  (*(v2 + 8))(v4, v1);
  return v10;
}

id sub_1909B0BF4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  [v4 frame];
  v19.origin.x = v9;
  v19.origin.y = v10;
  v19.size.width = v11;
  v19.size.height = v12;
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  result = CGRectEqualToRect(v18, v19);
  if ((result & 1) == 0)
  {
    if (((1 << (*&v4[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration] >> 61)) & 0x57) == 0)
    {
      v14 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedInThrowAnimation;
      swift_beginAccess();
      if (v4[v14] & 1) != 0 || (v15 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedForSnapshot, swift_beginAccess(), (v4[v15]) || (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v17 = [Strong shouldAnimatePathChanges], swift_unknownObjectRelease(), v17))
      {
        sub_1909AC998();
      }
    }

    return [v4 setNeedsLayout];
  }

  return result;
}

void sub_1909B0D40(char a1)
{
  v3 = v1 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration;
  v4 = *(v1 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration);
  v5 = *(v1 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 8);
  v7 = *(v1 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 16);
  v6 = *(v1 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 24);
  v9 = *(v3 + 32);
  v8 = *(v3 + 40);
  v10 = v4 >> 61;
  if ((v4 >> 61) > 3)
  {
    if (v10 == 4)
    {
      v15 = (v4 & 0x1FFFFFFFFFFFFFFFLL);
      v16 = v7;
      v13 = v15;
      v17 = v5;
      sub_19093793C(v6, v9, v8);

      v5 = v7;
      v7 = v6;
      v6 = v9;
    }

    else
    {
      if (v10 != 5)
      {
        return;
      }

      v11 = (v4 & 0x1FFFFFFFFFFFFFFFLL);
      v12 = v5;
      v13 = v11;
      sub_19093793C(v7, v6, v9);
      v8 = v9;
    }

    [v13 setHidden_];

    if (v5)
    {
      [v5 setHidden_];
    }

    if ((~(v7 & v6 & v8) & 0xF000000000000007) != 0)
    {
      if (v8 < 0)
      {
        v19 = v7;
        v20 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
        [v19 setHidden_];
        v24 = v20;
        [v24 setHidden_];
        sub_190937A9C(v7, v6, v8);

        goto LABEL_25;
      }

      [v7 setHidden_];

      sub_190937A9C(v7, v6, v8);
    }
  }

  else
  {
    if ((v10 - 2) < 2)
    {
      v24 = (v4 & 0x1FFFFFFFFFFFFFFFLL);
      [v24 setHidden_];
LABEL_25:

      return;
    }

    if (v10)
    {
      v18 = (v4 & 0x1FFFFFFFFFFFFFFFLL);
      if ((v7 & 0x8000000000000000) != 0)
      {
        v21 = v4;
        sub_190937958(v4, v5, v7, v6, v9, v8);
        v22 = v18;
        v23 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
        [v22 setHidden_];
        v24 = v23;
        [v24 setHidden_];
        sub_190937B0C(v21, v5, v7, v6, v9, v8);

        goto LABEL_25;
      }

      v14 = a1 & 1;
      v4 &= 0x1FFFFFFFFFFFFFFFuLL;
    }

    else
    {
      v14 = a1 & 1;
    }

    [v4 setHidden_];
  }
}

void sub_1909B1090()
{
  [v0 removeAllAnimations];
  v1 = [v0 mask];
  [v1 removeAllAnimations];

  v3 = *&v0[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration];
  v2 = *&v0[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 8];
  v5 = *&v0[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 16];
  v4 = *&v0[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 24];
  v6 = *&v0[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 32];
  v7 = *&v0[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 40];
  v8 = v3 >> 61;
  if ((v3 >> 61) <= 2)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        v21 = (v3 & 0x1FFFFFFFFFFFFFFFLL);
        v22 = v2;
        [v22 removeAllAnimations];
        v23 = [v22 mask];
        [v23 removeAllAnimations];

        [v21 removeAllAnimations];
        v24 = [v21 mask];
        [v24 removeAllAnimations];

        v25 = sub_190A65A40();
        [v25 removeAllAnimations];
        v26 = [v25 mask];
        [v26 removeAllAnimations];

        v27 = sub_190A65A40();
        v44 = sub_190A66768();

        [v44 removeAllAnimations];
        v28 = [v44 mask];
        [v28 removeAllAnimations];

        goto LABEL_28;
      }

      sub_1909378E8((v3 & 0x1FFFFFFFFFFFFFFFLL), *&v0[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 8], *&v0[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 16]);
      [v3 & 0x1FFFFFFFFFFFFFFFLL removeAllAnimations];
      if ((v5 & 0x8000000000000000) != 0)
      {
        v37 = [v3 & 0x1FFFFFFFFFFFFFFFLL mask];
        [v37 removeAllAnimations];

        [v2 removeAllAnimations];
        v38 = [v2 mask];
        [v38 removeAllAnimations];

        [v5 & 0x7FFFFFFFFFFFFFFFLL removeAllAnimations];
        v15 = [v5 & 0x7FFFFFFFFFFFFFFFLL mask];
      }

      else
      {
        v15 = [v3 & 0x1FFFFFFFFFFFFFFFLL mask];
      }
    }

    else
    {
      v20 = v3;
      [v20 removeAllAnimations];
      v15 = [v20 mask];
    }

    v44 = v15;
    [v44 removeAllAnimations];
    goto LABEL_27;
  }

  if (v8 > 4)
  {
    if (v8 != 5)
    {
      return;
    }

    v44 = v2;
    v16 = (v3 & 0x1FFFFFFFFFFFFFFFLL);
    sub_19093793C(v5, v4, v6);
    [v16 removeAllAnimations];
    v17 = [v16 mask];
    [v17 removeAllAnimations];

    if (v2)
    {
      v18 = v44;
      [v18 removeAllAnimations];
      v19 = [v18 mask];
      [v19 removeAllAnimations];
    }

    if ((~(v4 & v5 & v6) & 0xF000000000000007) != 0)
    {
      if (v6 < 0)
      {
        [v5 removeAllAnimations];
        v40 = [v5 mask];
        [v40 removeAllAnimations];

        [v4 removeAllAnimations];
        v41 = [v4 mask];
        [v41 removeAllAnimations];

        [v6 & 0x7FFFFFFFFFFFFFFFLL removeAllAnimations];
        v35 = [v6 & 0x7FFFFFFFFFFFFFFFLL mask];
        [v35 removeAllAnimations];
      }

      else
      {
        sub_1909378E8(v5, v4, v6);
        [v5 removeAllAnimations];
        v35 = [v5 mask];
        [v35 removeAllAnimations];
        sub_190937A9C(v5, v4, v6);
      }

      sub_190937A9C(v5, v4, v6);

      v39 = v16;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (v8 == 3)
  {
    v9 = (v3 & 0x1FFFFFFFFFFFFFFFLL);
    [v9 removeAllAnimations];
    v10 = [v9 mask];
    [v10 removeAllAnimations];

    v11 = sub_190A65A40();
    [v11 removeAllAnimations];
    v12 = [v11 &selRef_mapItem];
    [v12 removeAllAnimations];

    v13 = sub_190A65A40();
    v14 = sub_190A66768();

    [v14 removeAllAnimations];
    v44 = [v14 mask];
    [v44 removeAllAnimations];

LABEL_27:
    sub_190937B0C(v3, v2, v5, v4, v6, v7);
    goto LABEL_28;
  }

  v44 = v5;
  v29 = (v3 & 0x1FFFFFFFFFFFFFFFLL);
  v30 = v2;
  sub_19093793C(v4, v6, v7);
  [v29 removeAllAnimations];
  v31 = [v29 mask];
  [v31 removeAllAnimations];

  [v30 removeAllAnimations];
  v32 = [v30 mask];
  [v32 removeAllAnimations];

  if (v5)
  {
    v33 = v44;
    [v33 removeAllAnimations];
    v34 = [v33 mask];
    [v34 removeAllAnimations];
  }

  if ((~(v4 & v6 & v7) & 0xF000000000000007) != 0)
  {
    if (v7 < 0)
    {
      [v4 removeAllAnimations];
      v42 = [v4 mask];
      [v42 removeAllAnimations];

      [v6 removeAllAnimations];
      v43 = [v6 mask];
      [v43 removeAllAnimations];

      [v7 & 0x7FFFFFFFFFFFFFFFLL removeAllAnimations];
      v36 = [v7 & 0x7FFFFFFFFFFFFFFFLL mask];
      [v36 removeAllAnimations];
    }

    else
    {
      sub_1909378E8(v4, v6, v7);
      [v4 removeAllAnimations];
      v36 = [v4 mask];
      [v36 removeAllAnimations];
      sub_190937A9C(v4, v6, v7);
    }

    sub_190937A9C(v4, v6, v7);

    v39 = v30;
    goto LABEL_29;
  }

LABEL_28:
  v39 = v44;
LABEL_29:
}

void sub_1909B183C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60290);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v179 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v179 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v179 - v9;
  v11 = sub_190D56C50();
  v188 = *(v11 - 1);
  v189 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v185 = &v179 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v179 - v14;
  v16 = sub_190D56D20();
  v186 = *(v16 - 8);
  v187 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v179 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v179 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v179 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v179 - v26;
  v28 = type metadata accessor for CKBalloonLayer(0);
  v190.receiver = v1;
  v190.super_class = v28;
  objc_msgSendSuper2(&v190, sel_layoutSublayers);
  v30 = *&v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration];
  v29 = *&v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 8];
  v31 = *&v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 16];
  v32 = *&v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 24];
  v33 = *&v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 32];
  v34 = *&v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 40];
  v35 = v30 >> 61;
  if ((v30 >> 61) <= 2)
  {
    v61 = *&v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 40];
    v62 = *&v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 24];
    v63 = *&v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 32];
    if (v35)
    {
      v64 = (v30 & 0x1FFFFFFFFFFFFFFFLL);
      if (v35 != 1)
      {
        v97 = *&v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 8];
        sub_190937958(*&v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration], v97, v31, v32, v33, v34);
        v98 = v64;
        [v1 bounds];
        [v98 setBounds_];
        [v1 bounds];
        MidX = CGRectGetMidX(v199);
        [v1 bounds];
        [v98 setPosition_];
        v100 = v97;
        [v1 bounds];
        [v100 setBounds_];
        [v1 bounds];
        v101 = CGRectGetMidX(v201);
        [v1 bounds];
        [v100 setPosition_];
        [v98 setMask_];

        return;
      }

      if (v31 < 0)
      {
        v121 = (v31 & 0x7FFFFFFFFFFFFFFFLL);
        v122 = &v29[OBJC_IVAR____TtC7ChatKit23CKBalloonBaseShapeLayer_configuration];
        v123 = *&v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 8];
        v180 = *&v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 16];
        swift_beginAccess();
        v124 = type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration(0);
        sub_19022FD14(&v122[*(v124 + 20)], v5, &qword_1EAD60290);
        v125 = type metadata accessor for CKBalloonLayer.Stroke(0);
        v126 = (*(*(v125 - 8) + 48))(v5, 1, v125);
        v183 = v63;
        v184 = v62;
        if (v126 == 1)
        {
          v127 = v63;
          v128 = v61;
          sub_190937958(v30, v123, v180, v62, v127, v61);
          v129 = v64;
          v130 = v123;
          v131 = v121;
          sub_19022EEA4(v5, &qword_1EAD60290);
          v132 = 0.0;
        }

        else
        {
          v132 = *&v5[*(v125 + 20)];
          v133 = v63;
          v128 = v61;
          sub_190937958(v30, v123, v180, v62, v133, v61);
          v134 = v64;
          v135 = v123;
          v136 = v121;
          sub_1909B7924(v5, type metadata accessor for CKBalloonLayer.Stroke);
        }

        [v1 bounds];
        v214 = CGRectInset(v213, -v132, -v132);
        x = v214.origin.x;
        y = v214.origin.y;
        width = v214.size.width;
        height = v214.size.height;
        v141 = v64;
        [v141 setBounds_];
        [v1 bounds];
        v142 = CGRectGetMidX(v215);
        [v1 bounds];
        [v141 setPosition_];

        v143 = v123;
        [v1 bounds];
        [v143 setBounds_];
        [v1 bounds];
        v144 = CGRectGetMidX(v217);
        [v1 bounds];
        [v143 setPosition_];

        v145 = v121;
        [v1 bounds];
        [v145 setBounds_];
        [v1 bounds];
        v146 = CGRectGetMidX(v219);
        [v1 bounds];
        [v145 setPosition_];
        sub_190937B0C(v30, v123, v180, v184, v183, v128);

        return;
      }

      v65 = *&v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 8];
      v66 = *&v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 16];
      sub_1909378E8((v30 & 0x1FFFFFFFFFFFFFFFLL), v65, v31);
    }

    else
    {
      v66 = *&v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 16];
      v65 = *&v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 8];
      v64 = v30;
    }

    [v1 bounds];
    [v64 setBounds_];
    [v1 bounds];
    v96 = CGRectGetMidX(v197);
    [v1 bounds];
    [v64 setPosition_];
    sub_190937B0C(v30, v65, v66, v62, v63, v61);
    return;
  }

  if (v35 > 4)
  {
    if (v35 == 5)
    {
      v179 = v8;
      v182 = v29;
      v180 = v31;
      v183 = v33;
      v184 = v32;
      sub_190937958(v30, v29, v31, v32, v33, v34);
      v67 = (v30 & 0x1FFFFFFFFFFFFFFFLL);
      sub_1909B2B24(v67);
      v68 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_configuration;
      swift_beginAccess();
      v69 = *(v188 + 16);
      v70 = &v1[v68];
      v71 = v185;
      v72 = v189;
      v69(v185, v70, v189);
      [v1 bounds];
      v69(v15, v71, v72);
      sub_190D56CD0();
      sub_190D56BC0();
      sub_190D56CC0();
      v74 = v73;
      v76 = v75;
      [v1 bounds];
      v81 = UIEdgeInsetsOutsetRect(v77, v78, v79, v80, v74, v76);
      v83 = v82;
      v85 = v84;
      v87 = v86;
      [v67 setBounds_];
      v193.origin.x = v81;
      v193.origin.y = v83;
      v193.size.width = v85;
      v193.size.height = v87;
      v88 = CGRectGetMidX(v193);
      v194.origin.x = v81;
      v194.origin.y = v83;
      v194.size.width = v85;
      v194.size.height = v87;
      [v67 setPosition_];

      v89 = v182;
      if (v182)
      {
        v90 = v182;
        [v1 bounds];
        [v90 setBounds_];

        v91 = v90;
        [v1 bounds];
        v92 = CGRectGetMidX(v195);
        [v1 bounds];
        [v91 setPosition_];

        v89 = v182;
      }

      v93 = v183;
      v94 = v179;
      if ((~(v184 & v180 & v183) & 0xF000000000000007) != 0)
      {
        if ((v183 & 0x8000000000000000) != 0)
        {
          v147 = (v184 + OBJC_IVAR____TtC7ChatKit23CKBalloonBaseShapeLayer_configuration);
          swift_beginAccess();
          v148 = type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration(0);
          sub_19022FD14(&v147[*(v148 + 20)], v94, &qword_1EAD60290);
          v149 = type metadata accessor for CKBalloonLayer.Stroke(0);
          if ((*(*(v149 - 8) + 48))(v94, 1, v149) == 1)
          {
            sub_19022EEA4(v94, &qword_1EAD60290);
            v150 = 0.0;
          }

          else
          {
            v150 = *(v94 + *(v149 + 20));
            sub_1909B7924(v94, type metadata accessor for CKBalloonLayer.Stroke);
          }

          [v1 bounds];
          v222 = CGRectInset(v221, -v150, -v150);
          v159 = v180;
          [v180 setBounds_];
          [v1 bounds];
          v160 = CGRectGetMidX(v223);
          [v1 bounds];
          [v159 setPosition_];
          [v1 bounds];
          v116 = v184;
          [v184 setBounds_];
          [v1 bounds];
          v161 = CGRectGetMidX(v225);
          [v1 bounds];
          [v116 setPosition_];
          [v1 bounds];
          v93 = v183;
          [v183 & 0x7FFFFFFFFFFFFFFFLL setBounds_];
          [v1 bounds];
          v162 = CGRectGetMidX(v227);
          [v1 bounds];
          [v93 & 0x7FFFFFFFFFFFFFFFLL setPosition_];
          v119 = v159;
        }

        else
        {
          v116 = v184;
          [v1 bounds];
          v117 = v180;
          [v180 setBounds_];
          [v1 bounds];
          v118 = CGRectGetMidX(v209);
          [v1 bounds];
          [v117 setPosition_];
          v119 = v117;
        }

        sub_190937A9C(v119, v116, v93);
      }

      else
      {
        v95 = v89;
      }

      v163 = *(v186 + 8);
      v164 = v19;
      v165 = v187;
      v163(v164, v187);
      v163(v22, v165);
      (*(v188 + 8))(v185, v189);
    }
  }

  else
  {
    v181 = *&v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 40];
    if (v35 == 3)
    {
      v183 = v33;
      v36 = v32;
      v37 = v31;
      v38 = v29;
      v39 = (v30 & 0x1FFFFFFFFFFFFFFFLL);
      sub_1909B2B24(v39);
      [v1 bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v48 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_configuration;
      swift_beginAccess();
      (*(v188 + 16))(v15, &v1[v48], v189);
      sub_190D56CD0();
      sub_190D56BC0();
      sub_190D56CC0();
      v51 = UIEdgeInsetsOutsetRect(v41, v43, v45, v47, v49, v50);
      v53 = v52;
      v55 = v54;
      v57 = v56;
      [v39 setBounds_];
      v191.origin.x = v51;
      v191.origin.y = v53;
      v191.size.width = v55;
      v191.size.height = v57;
      v58 = CGRectGetMidX(v191);
      v192.origin.x = v51;
      v192.origin.y = v53;
      v192.size.width = v55;
      v192.size.height = v57;
      [v39 setPosition_];
      sub_190937B0C(v30, v38, v37, v36, v183, v181);
      v59 = v187;
      v60 = *(v186 + 8);
      v60(v25, v187);
      v60(v27, v59);
    }

    else
    {
      v102 = v29;
      v103 = v31;
      v184 = v32;
      v104 = v33;
      sub_190937958(v30, v29, v31, v32, v33, v34);
      v105 = (v30 & 0x1FFFFFFFFFFFFFFFLL);
      [v1 bounds];
      [v105 setBounds_];
      [v1 bounds];
      v106 = CGRectGetMidX(v203);
      [v1 bounds];
      [v105 setPosition_];

      v107 = v102;
      [v1 bounds];
      [v107 setBounds_];
      [v1 bounds];
      v108 = CGRectGetMidX(v205);
      [v1 bounds];
      [v107 setPosition_];

      v109 = v103;
      if (v103)
      {
        v110 = v103;
        [v1 bounds];
        [v110 setBounds_];

        v111 = v110;
        [v1 bounds];
        v112 = CGRectGetMidX(v207);
        [v1 bounds];
        [v111 setPosition_];

        v109 = v103;
      }

      v113 = v184;
      v114 = v181;
      if ((~(v184 & v104 & v181) & 0xF000000000000007) != 0)
      {
        if (v181 < 0)
        {
          v189 = (v181 & 0x7FFFFFFFFFFFFFFFLL);
          v151 = (v104 + OBJC_IVAR____TtC7ChatKit23CKBalloonBaseShapeLayer_configuration);
          swift_beginAccess();
          v152 = type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration(0);
          sub_19022FD14(&v151[*(v152 + 20)], v10, &qword_1EAD60290);
          v153 = type metadata accessor for CKBalloonLayer.Stroke(0);
          if ((*(*(v153 - 8) + 48))(v10, 1, v153) == 1)
          {
            v154 = v184;
            v155 = v184;
            v156 = v104;
            v157 = v189;
            sub_19022EEA4(v10, &qword_1EAD60290);
            v158 = 0.0;
          }

          else
          {
            v158 = *&v10[*(v153 + 20)];
            v154 = v184;
            v166 = v184;
            v167 = v104;
            v168 = v189;
            sub_1909B7924(v10, type metadata accessor for CKBalloonLayer.Stroke);
          }

          [v1 bounds];
          v230 = CGRectInset(v229, -v158, -v158);
          v169 = v230.origin.x;
          v170 = v230.origin.y;
          v171 = v230.size.width;
          v172 = v230.size.height;
          v173 = v154;
          [v173 &selRef:v169 setDataSourceManager:{v170, v171, v172}];
          [v1 bounds];
          v174 = CGRectGetMidX(v231);
          [v1 bounds];
          [v173 setPosition_];

          v175 = v104;
          [v1 bounds];
          [v175 &selRef_setDataSourceManager_];
          [v1 bounds];
          v176 = CGRectGetMidX(v233);
          [v1 bounds];
          [v175 setPosition_];

          v177 = v189;
          [v1 bounds];
          [v177 setBounds_];
          [v1 bounds];
          v178 = CGRectGetMidX(v235);
          [v1 bounds];
          [v177 setPosition_];

          sub_190937A9C(v184, v104, v181);
        }

        else
        {
          sub_19093793C(v184, v104, v181);
          sub_1909378E8(v113, v104, v114);
          [v1 bounds];
          [v113 &selRef_setDataSourceManager_];
          [v1 bounds];
          v120 = CGRectGetMidX(v211);
          [v1 bounds];
          [v113 setPosition_];

          sub_190937A9C(v113, v104, v114);
          sub_190937A9C(v113, v104, v114);
          sub_190937AB8(v113, v104, v114);
        }
      }

      else
      {
        v115 = v109;
      }
    }
  }
}

uint64_t sub_1909B2B24(void *a1)
{
  v3 = type metadata accessor for CKBalloonLayer.Style(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D56C50();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = COERCE_DOUBLE(sub_190D56D20());
  v56 = *(v10 - 8);
  v57 = *&v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v54 - v14;
  [v1 bounds];
  v16 = &v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_configuration];
  swift_beginAccess();
  (*(v7 + 16))(v9, v16, v6);
  sub_190D56CD0();
  sub_190D56BC0();
  v17 = CKMainScreenScale();
  v18 = 1;
  [a1 setCornerContentsMasksEdges_];
  v19 = type metadata accessor for CKBalloonLayer.Configuration(0);
  sub_1909B589C(&v16[*(v19 + 20)], v5, type metadata accessor for CKBalloonLayer.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v55 = v17;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
LABEL_6:
      sub_1909B7924(v5, type metadata accessor for CKBalloonLayer.Style);
      goto LABEL_7;
    }

LABEL_5:
    v18 = 0;
    goto LABEL_6;
  }

  if ((EnumCaseMultiPayload - 2) < 2)
  {
    goto LABEL_5;
  }

  v18 = 0;
LABEL_7:
  v22 = v56;
  v21 = v57;
  [a1 setMasksToBounds_];
  sub_190D56CA0();
  sub_190D56BE0();
  [a1 setCornerRadius_];
  sub_190D56CC0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = sub_1909B3024();
  [a1 setCornerContents_];
  UIEdgeInsetsAdd();
  v56 = v33;
  v57 = v32;
  v54[1] = v35;
  v55 = v34;
  sub_190D56CE0();
  x = v58.origin.x;
  y = v58.origin.y;
  width = v58.size.width;
  height = v58.size.height;
  v40 = v30 + v26 + CGRectGetWidth(v58);
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  v41 = v28 + v24 + CGRectGetHeight(v59);
  v60.origin.x = UIEdgeInsetsInsetRect(0.0, 0.0, v40, v41, v57, v56);
  v42 = v60.origin.x;
  v43 = v60.origin.y;
  v44 = v60.size.width;
  v45 = v60.size.height;
  MinX = CGRectGetMinX(v60);
  v61.origin.x = 0.0;
  v61.origin.y = 0.0;
  v61.size.width = v40;
  v61.size.height = v41;
  v57 = MinX / CGRectGetWidth(v61);
  v62.origin.x = v42;
  v62.origin.y = v43;
  v62.size.width = v44;
  v62.size.height = v45;
  MinY = CGRectGetMinY(v62);
  v63.origin.x = 0.0;
  v63.origin.y = 0.0;
  v63.size.width = v40;
  v63.size.height = v41;
  v48 = MinY / CGRectGetHeight(v63);
  v64.origin.x = v42;
  v64.origin.y = v43;
  v64.size.width = v44;
  v64.size.height = v45;
  v49 = CGRectGetWidth(v64);
  v65.origin.x = 0.0;
  v65.origin.y = 0.0;
  v65.size.width = v40;
  v65.size.height = v41;
  v50 = v49 / CGRectGetWidth(v65);
  v66.origin.x = v42;
  v66.origin.y = v43;
  v66.size.width = v44;
  v66.size.height = v45;
  v51 = CGRectGetHeight(v66);
  v67.origin.x = 0.0;
  v67.origin.y = 0.0;
  v67.size.width = v40;
  v67.size.height = v41;
  [a1 setCornerContentsCenter_];

  v52 = *(*&v22 + 8);
  v52(v13, *&v21);
  return (v52)(v15, *&v21);
}

id sub_1909B3024()
{
  v1 = sub_190D56D20();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD451A8 != -1)
  {
    swift_once();
  }

  v5 = qword_1EAD451B0;
  v6 = *(v2 + 16);
  v6(v4, v0, v1);
  v7 = type metadata accessor for BubbleImagePathNSCacheKey(0);
  v8 = objc_allocWithZone(v7);
  v6(&v8[OBJC_IVAR____TtC7ChatKitP33_CC83C8481FCA2C96C65233668A9F66CB25BubbleImagePathNSCacheKey_bubblePath], v4, v1);
  v17.receiver = v8;
  v17.super_class = v7;
  v9 = objc_msgSendSuper2(&v17, sel_init);
  (*(v2 + 8))(v4, v1);
  v10 = [v5 objectForKey_];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 CGImage];
  }

  else
  {
    v12 = sub_190D56C90();
    if (v12)
    {
      v13 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      v14 = v12;
      v15 = [v13 initWithCGImage_];
      [v5 setObject:v15 forKey:v9];
    }
  }

  return v12;
}

id CKBalloonLayer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKBalloonLayer(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1909B330C(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_190D56D20();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19022FD14(a1, v12, &unk_1EAD551C0);
  if (!v13)
  {
    sub_19022EEA4(v12, &unk_1EAD551C0);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  v7 = v11;
  (*(v4 + 16))(v6, v11 + OBJC_IVAR____TtC7ChatKitP33_CC83C8481FCA2C96C65233668A9F66CB25BubbleImagePathNSCacheKey_bubblePath, v3);
  v8 = MEMORY[0x193AF2540](v1 + OBJC_IVAR____TtC7ChatKitP33_CC83C8481FCA2C96C65233668A9F66CB25BubbleImagePathNSCacheKey_bubblePath, v6);

  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

id sub_1909B35B4()
{
  result = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  qword_1EAD451B0 = result;
  return result;
}

uint64_t sub_1909B35EC()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *v0 >> 61;
  if (v3 <= 2)
  {
    if (!v3)
    {
      sub_1902188FC(0, &qword_1EAD46500);
      return sub_190D57D90() & 1;
    }

    if (v3 == 1)
    {
      if ((v2 & 0x8000000000000000) == 0)
      {
LABEL_8:
        sub_1902188FC(0, &qword_1EAD46500);
        return (sub_190D57D90() & 1) != 0;
      }

      sub_1902188FC(0, &qword_1EAD46500);
      if (sub_190D57D90() & 1) != 0 || (sub_190D57D90())
      {
        return 1;
      }
    }

    else
    {
      sub_1902188FC(0, &qword_1EAD46500);
      if (sub_190D57D90())
      {
        return 1;
      }
    }

    return (sub_190D57D90() & 1) != 0;
  }

  v5 = v0[3];
  v4 = v0[4];
  if (v3 > 4)
  {
    if (v3 == 5)
    {
      sub_1902188FC(0, &qword_1EAD46500);
      if (sub_190D57D90())
      {
        return 1;
      }

      if (v1)
      {
        v6 = v1;
        v7 = sub_190D57D90();

        if (v7)
        {
          return 1;
        }
      }

      if ((~(v5 & v2 & v4) & 0xF000000000000007) != 0)
      {
        if (v4 < 0)
        {
          sub_1909378E8(v2, v5, v4);
          if (sub_190D57D90() & 1) != 0 || (sub_190D57D90())
          {
            v14 = v2;
            v15 = v5;
            v16 = v4;
            goto LABEL_41;
          }
        }

        else
        {
          sub_1909378E8(v2, v5, v4);
        }

        v8 = sub_190D57D90();
        sub_190937A9C(v2, v5, v4);
        return (v8 & 1) != 0;
      }
    }

    return 0;
  }

  if (v3 == 3)
  {
    goto LABEL_8;
  }

  v10 = v0[5];
  sub_1902188FC(0, &qword_1EAD46500);
  if (sub_190D57D90())
  {
    return 1;
  }

  if (sub_190D57D90())
  {
    return 1;
  }

  if (v2)
  {
    v11 = v2;
    v12 = sub_190D57D90();

    if (v12)
    {
      return 1;
    }
  }

  if ((~(v5 & v4 & v10) & 0xF000000000000007) == 0)
  {
    return 0;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    sub_1909378E8(v5, v4, v10);
    goto LABEL_29;
  }

  sub_1909378E8(v5, v4, v10);
  if ((sub_190D57D90() & 1) == 0 && (sub_190D57D90() & 1) == 0)
  {
LABEL_29:
    v13 = sub_190D57D90();
    sub_190937A9C(v5, v4, v10);
    return (v13 & 1) != 0;
  }

  v14 = v5;
  v15 = v4;
  v16 = v10;
LABEL_41:
  sub_190937A9C(v14, v15, v16);
  return 1;
}

id CKBalloonLayer.__allocating_init(with:traitCollection:)(_OWORD *a1, void *a2)
{
  v4 = a1[5];
  v10[4] = a1[4];
  v10[5] = v4;
  v5 = a1[7];
  v10[6] = a1[6];
  v10[7] = v5;
  v6 = a1[1];
  v10[0] = *a1;
  v10[1] = v6;
  v7 = a1[3];
  v10[2] = a1[2];
  v10[3] = v7;
  v8 = [objc_allocWithZone(v2) initWithDescriptor:v10 traitCollection:a2];

  return v8;
}

char *CKBalloonLayer.init(with:traitCollection:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for CKBalloonLayer.Configuration(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_190248D60(&v13 - v8);
  sub_190D16E54(a2, &v9[*(v4 + 28)]);
  sub_1909B589C(v9, v6, type metadata accessor for CKBalloonLayer.Configuration);
  v10 = objc_allocWithZone(type metadata accessor for CKBalloonLayer(0));
  v11 = CKBalloonLayer.init(configuration:)(v6);

  sub_1909B7924(v9, type metadata accessor for CKBalloonLayer.Configuration);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

Swift::Void __swiftcall CKBalloonLayer.updateDescriptor(_:traitCollection:)(CKBalloonDescriptor_t *_, UITraitCollection traitCollection)
{
  v3 = type metadata accessor for CKBalloonLayer.Configuration(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v10 - v8;
  sub_190248D60(&v10 - v8);
  sub_190D16E54(traitCollection.super.isa, &v9[*(v4 + 28)]);
  sub_1909B589C(v9, v6, type metadata accessor for CKBalloonLayer.Configuration);
  sub_1909AC62C(v6);
  sub_1909B7924(v9, type metadata accessor for CKBalloonLayer.Configuration);
}

uint64_t _s7ChatKit14CKBalloonLayerC11StrokeStyleO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKBalloonLayer.MaterialStrokeConfiguration(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CKBalloonLayer.StrokeStyle(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v28 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58B40);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v28 - v15;
  v17 = *(v14 + 56);
  sub_1909B589C(a1, &v28 - v15, type metadata accessor for CKBalloonLayer.StrokeStyle);
  sub_1909B589C(a2, &v16[v17], type metadata accessor for CKBalloonLayer.StrokeStyle);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1909B589C(v16, v12, type metadata accessor for CKBalloonLayer.StrokeStyle);
    v25 = *v12;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v26 = *&v16[v17];
      type metadata accessor for CGColor(0);
      sub_1909B8A88();
      v24 = sub_190D51CB0();

      sub_1909B7924(v16, type metadata accessor for CKBalloonLayer.StrokeStyle);
      return v24 & 1;
    }

    goto LABEL_15;
  }

  sub_1909B589C(v16, v10, type metadata accessor for CKBalloonLayer.StrokeStyle);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1909B7924(v10, type metadata accessor for CKBalloonLayer.MaterialStrokeConfiguration);
LABEL_15:
    sub_19022EEA4(v16, &unk_1EAD58B40);
LABEL_19:
    v24 = 0;
    return v24 & 1;
  }

  sub_1909B8940(&v16[v17], v6, type metadata accessor for CKBalloonLayer.MaterialStrokeConfiguration);
  if ((MEMORY[0x193AF23F0](v10, v6) & 1) == 0)
  {
    goto LABEL_18;
  }

  v18 = *(v4 + 20);
  v19 = &v10[v18];
  v20 = *&v10[v18 + 8];
  v21 = &v6[v18];
  v22 = *(v21 + 1);
  if (v20)
  {
    if (v22)
    {
      v23 = *v19 == *v21 && v20 == v22;
      if (v23 || (sub_190D58760() & 1) != 0)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_18;
  }

  if (v22)
  {
LABEL_18:
    sub_1909B7924(v6, type metadata accessor for CKBalloonLayer.MaterialStrokeConfiguration);
    sub_1909B7924(v10, type metadata accessor for CKBalloonLayer.MaterialStrokeConfiguration);
    sub_1909B7924(v16, type metadata accessor for CKBalloonLayer.StrokeStyle);
    goto LABEL_19;
  }

LABEL_11:
  sub_1909B7924(v6, type metadata accessor for CKBalloonLayer.MaterialStrokeConfiguration);
  sub_1909B7924(v10, type metadata accessor for CKBalloonLayer.MaterialStrokeConfiguration);
  sub_1909B7924(v16, type metadata accessor for CKBalloonLayer.StrokeStyle);
  v24 = 1;
  return v24 & 1;
}

BOOL _s7ChatKit14CKBalloonLayerC25ColorBalloonConfigurationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKBalloonLayer.Stroke(0);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60290);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58B50);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  type metadata accessor for CGColor(0);
  sub_1909B8A88();
  if ((sub_190D51CB0() & 1) == 0)
  {
    return 0;
  }

  v13 = *(type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration(0) + 20);
  v14 = *(v10 + 48);
  sub_19022FD14(a1 + v13, v12, &qword_1EAD60290);
  sub_19022FD14(a2 + v13, &v12[v14], &qword_1EAD60290);
  v15 = *(v5 + 48);
  if (v15(v12, 1, v4) == 1)
  {
    if (v15(&v12[v14], 1, v4) == 1)
    {
      sub_19022EEA4(v12, &qword_1EAD60290);
      return 1;
    }

    goto LABEL_7;
  }

  sub_19022FD14(v12, v9, &qword_1EAD60290);
  if (v15(&v12[v14], 1, v4) == 1)
  {
    sub_1909B7924(v9, type metadata accessor for CKBalloonLayer.Stroke);
LABEL_7:
    v17 = &qword_1EAD58B50;
LABEL_12:
    sub_19022EEA4(v12, v17);
    return 0;
  }

  v18 = v23;
  sub_1909B8940(&v12[v14], v23, type metadata accessor for CKBalloonLayer.Stroke);
  if ((_s7ChatKit14CKBalloonLayerC11StrokeStyleO2eeoiySbAE_AEtFZ_0(v9, v18) & 1) == 0 || *&v9[v4[5]] != *(v18 + v4[5]) || v9[v4[6]] != *(v18 + v4[6]))
  {
    sub_1909B7924(v18, type metadata accessor for CKBalloonLayer.Stroke);
    sub_1909B7924(v9, type metadata accessor for CKBalloonLayer.Stroke);
    v17 = &qword_1EAD60290;
    goto LABEL_12;
  }

  v19 = v4[7];
  v20 = *&v9[v19];
  v21 = *(v18 + v19);
  sub_1909B7924(v18, type metadata accessor for CKBalloonLayer.Stroke);
  sub_1909B7924(v9, type metadata accessor for CKBalloonLayer.Stroke);
  sub_19022EEA4(v12, &qword_1EAD60290);
  return v20 == v21;
}

BOOL _s7ChatKit14CKBalloonLayerC28MaterialBalloonConfigurationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKBalloonLayer.Stroke(0);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60290);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58B50);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  if ((MEMORY[0x193AF23F0](a1, a2) & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for CKBalloonLayer.MaterialBalloonConfiguration(0);
  v15 = a1;
  v16 = a2;
  v30 = v14;
  v31 = v15;
  v17 = *(v14 + 20);
  v18 = *(v11 + 48);
  sub_19022FD14(v15 + v17, v13, &qword_1EAD60290);
  sub_19022FD14(v16 + v17, &v13[v18], &qword_1EAD60290);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_19022EEA4(v13, &qword_1EAD60290);
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  sub_19022FD14(v13, v10, &qword_1EAD60290);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_1909B7924(v10, type metadata accessor for CKBalloonLayer.Stroke);
LABEL_14:
    v25 = &qword_1EAD58B50;
LABEL_19:
    sub_19022EEA4(v13, v25);
    return 0;
  }

  sub_1909B8940(&v13[v18], v7, type metadata accessor for CKBalloonLayer.Stroke);
  if ((_s7ChatKit14CKBalloonLayerC11StrokeStyleO2eeoiySbAE_AEtFZ_0(v10, v7) & 1) == 0 || *&v10[v4[5]] != *&v7[v4[5]] || v10[v4[6]] != v7[v4[6]])
  {
    sub_1909B7924(v7, type metadata accessor for CKBalloonLayer.Stroke);
    sub_1909B7924(v10, type metadata accessor for CKBalloonLayer.Stroke);
    v25 = &qword_1EAD60290;
    goto LABEL_19;
  }

  v27 = v4[7];
  v28 = *&v10[v27];
  v29 = *&v7[v27];
  sub_1909B7924(v7, type metadata accessor for CKBalloonLayer.Stroke);
  sub_1909B7924(v10, type metadata accessor for CKBalloonLayer.Stroke);
  sub_19022EEA4(v13, &qword_1EAD60290);
  if (v28 != v29)
  {
    return 0;
  }

LABEL_5:
  if (*(v31 + *(v30 + 24)) != *(v16 + *(v30 + 24)))
  {
    return 0;
  }

  v20 = *(v30 + 28);
  v21 = (v31 + v20);
  v22 = *(v31 + v20 + 8);
  v23 = (v16 + v20);
  v24 = v23[1];
  if (v22)
  {
    return v24 && (*v21 == *v23 && v22 == v24 || (sub_190D58760() & 1) != 0);
  }

  return !v24;
}

uint64_t _s7ChatKit14CKBalloonLayerC5StyleO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = type metadata accessor for CKBalloonLayer.StrokeOnlyBalloonConfiguration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CKBalloonLayer.MaterialBalloonConfiguration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CKBalloonLayer.Style(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v42 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v42 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v42 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58B58);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v42 - v24;
  v26 = *(v23 + 56);
  sub_1909B589C(a1, &v42 - v24, type metadata accessor for CKBalloonLayer.Style);
  sub_1909B589C(v45, &v25[v26], type metadata accessor for CKBalloonLayer.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1909B589C(v25, v19, type metadata accessor for CKBalloonLayer.Style);
      v37 = *v19;
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        goto LABEL_23;
      }

      v34 = sub_1909A77AC(v37, *&v25[v26]);

LABEL_27:
      sub_1909B7924(v25, type metadata accessor for CKBalloonLayer.Style);
      return v34 & 1;
    }

    sub_1909B589C(v25, v21, type metadata accessor for CKBalloonLayer.Style);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1909B8940(&v25[v26], v9, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
      v34 = _s7ChatKit14CKBalloonLayerC25ColorBalloonConfigurationV2eeoiySbAE_AEtFZ_0(v21, v9);
      v35 = type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration;
      sub_1909B7924(v9, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
      v36 = v21;
      goto LABEL_26;
    }

    v30 = type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration;
    v31 = v21;
LABEL_21:
    sub_1909B7924(v31, v30);
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1909B589C(v25, v16, type metadata accessor for CKBalloonLayer.Style);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v32 = &v25[v26];
      v33 = v43;
      sub_1909B8940(v32, v43, type metadata accessor for CKBalloonLayer.MaterialBalloonConfiguration);
      v34 = _s7ChatKit14CKBalloonLayerC28MaterialBalloonConfigurationV2eeoiySbAE_AEtFZ_0(v16, v33);
      v35 = type metadata accessor for CKBalloonLayer.MaterialBalloonConfiguration;
      sub_1909B7924(v33, type metadata accessor for CKBalloonLayer.MaterialBalloonConfiguration);
      v36 = v16;
LABEL_26:
      sub_1909B7924(v36, v35);
      goto LABEL_27;
    }

    v30 = type metadata accessor for CKBalloonLayer.MaterialBalloonConfiguration;
    v31 = v16;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_16;
    }

LABEL_23:
    sub_19022EEA4(v25, &qword_1EAD58B58);
    goto LABEL_24;
  }

  sub_1909B589C(v25, v13, type metadata accessor for CKBalloonLayer.Style);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v30 = type metadata accessor for CKBalloonLayer.StrokeOnlyBalloonConfiguration;
    v31 = v13;
    goto LABEL_21;
  }

  v28 = v44;
  sub_1909B8940(&v25[v26], v44, type metadata accessor for CKBalloonLayer.StrokeOnlyBalloonConfiguration);
  if ((_s7ChatKit14CKBalloonLayerC11StrokeStyleO2eeoiySbAE_AEtFZ_0(v13, v28) & 1) == 0 || (v29 = type metadata accessor for CKBalloonLayer.Stroke(0), *&v13[v29[5]] != *(v28 + v29[5])) || v13[v29[6]] != *(v28 + v29[6]))
  {
    sub_1909B7924(v28, type metadata accessor for CKBalloonLayer.StrokeOnlyBalloonConfiguration);
LABEL_9:
    sub_1909B7924(v13, type metadata accessor for CKBalloonLayer.StrokeOnlyBalloonConfiguration);
    sub_1909B7924(v25, type metadata accessor for CKBalloonLayer.Style);
LABEL_24:
    v34 = 0;
    return v34 & 1;
  }

  v39 = v29[7];
  v40 = *&v13[v39];
  v41 = *(v28 + v39);
  sub_1909B7924(v28, type metadata accessor for CKBalloonLayer.StrokeOnlyBalloonConfiguration);
  if (v40 != v41)
  {
    goto LABEL_9;
  }

  sub_1909B7924(v13, type metadata accessor for CKBalloonLayer.StrokeOnlyBalloonConfiguration);
LABEL_16:
  sub_1909B7924(v25, type metadata accessor for CKBalloonLayer.Style);
  v34 = 1;
  return v34 & 1;
}

uint64_t sub_1909B517C(void *a1, int8x16_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1 >> 61;
  if (v4 <= 2)
  {
    if (!v4)
    {
      if (!(a2->i64[0] >> 61))
      {
        goto LABEL_5;
      }

      return 0;
    }

    if (v4 != 1)
    {
      if (a2->i64[0] >> 61 == 2)
      {
        sub_1902188FC(0, &qword_1EAD46500);
        if (sub_190D57D90())
        {
          return sub_190D57D90() & 1;
        }
      }

      return 0;
    }

    if (a2->i64[0] >> 61 == 1)
    {
      v7 = a2[1].i64[0];
      if ((v3 & 0x8000000000000000) != 0)
      {
        if ((v7 & 0x8000000000000000) == 0)
        {
          return 0;
        }

        sub_1902188FC(0, &qword_1EAD46500);
        if ((sub_190D57D90() & 1) == 0 || (sub_190D57D90() & 1) == 0 || (sub_190D57D90() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v7 < 0)
        {
          return 0;
        }

        sub_1902188FC(0, &qword_1EAD46500);
        if ((sub_190D57D90() & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  v6 = a1[3];
  v5 = a1[4];
  if (v4 > 4)
  {
    if (v4 != 5)
    {
      if (a2->i64[0] >> 61 != 6)
      {
        return 0;
      }

      if (a2->i64[0] != 0xC000000000000000)
      {
        return 0;
      }

      v20 = vorrq_s8(a2[1], a2[2]);
      return !(*&vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL)) | a2->i64[1]);
    }

    if (a2->i64[0] >> 61 != 5)
    {
      return 0;
    }

    v9 = a2->i64[1];
    v8 = a2[1].u64[0];
    v10 = a2[1].u64[1];
    v39 = a2[2].i64[0];
    sub_1902188FC(0, &qword_1EAD46500);
    if ((sub_190D57D90() & 1) == 0)
    {
      return 0;
    }

    if (v2)
    {
      if (!v9)
      {
        return 0;
      }

      type metadata accessor for CKBalloonBackdropMaterialVibrantOuterStrokeLayer(0);
      v11 = v9;
      v12 = v2;
      v13 = sub_190D57D90();

      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v9)
    {
      return 0;
    }

    v21 = v8 & v10 & v39 & 0xF000000000000007;
    if ((~(v6 & v3 & v5) & 0xF000000000000007) == 0)
    {
      return v21 == 0xF000000000000007;
    }

    if (v21 != 0xF000000000000007)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        if (v39 < 0)
        {
          return 0;
        }

        v22 = v8;
        v23 = sub_190D57D90();
        sub_190937A9C(v8, v10, v39);
        return (v23 & 1) != 0;
      }

      if (v39 < 0)
      {
        v27 = v8;
        v28 = v10;
        v29 = (v39 & 0x7FFFFFFFFFFFFFFFLL);
        if (sub_190D57D90() & 1) != 0 && (sub_190D57D90())
        {
          v30 = sub_190D57D90();
          sub_190937A9C(v8, v10, v39);
          return (v30 & 1) != 0;
        }

        v34 = v8;
        v35 = v10;
        v36 = v39;
        goto LABEL_69;
      }
    }
  }

  else
  {
    if (v4 == 3)
    {
      if (a2->i64[0] >> 61 == 3)
      {
LABEL_5:
        sub_1902188FC(0, &qword_1EAD46500);
        return sub_190D57D90() & 1;
      }

      return 0;
    }

    if (a2->i64[0] >> 61 == 4)
    {
      v38 = a1[5];
      v40 = a2[1].u64[1];
      v37 = a2[2].u64[0];
      v15 = a2[2].i64[1];
      v16 = a2[1].i64[0];
      sub_1902188FC(0, &qword_1EAD46500);
      if (sub_190D57D90() & 1) != 0 && (sub_190D57D90())
      {
        if (v3)
        {
          if (!v16)
          {
            return 0;
          }

          type metadata accessor for CKBalloonBackdropMaterialVibrantOuterStrokeLayer(0);
          v17 = v16;
          v18 = v3;
          v19 = sub_190D57D90();

          if ((v19 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v16)
        {
          return 0;
        }

        v21 = v40 & v37 & v15 & 0xF000000000000007;
        if ((~(v6 & v5 & v38) & 0xF000000000000007) == 0)
        {
          return v21 == 0xF000000000000007;
        }

        if (v21 != 0xF000000000000007)
        {
          if ((v38 & 0x8000000000000000) == 0)
          {
            if ((v15 & 0x8000000000000000) == 0)
            {
              v24 = v40;
              v25 = sub_190D57D90();
              v26 = v40;
              goto LABEL_56;
            }

            return 0;
          }

          if ((v15 & 0x8000000000000000) == 0)
          {
            return 0;
          }

          v31 = v40;
          v32 = v37;
          v33 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
          if (sub_190D57D90() & 1) != 0 && (sub_190D57D90())
          {
            v25 = sub_190D57D90();
            v26 = v40;
LABEL_56:
            sub_190937A9C(v26, v37, v15);
            return (v25 & 1) != 0;
          }

          v34 = v40;
          v35 = v37;
          v36 = v15;
LABEL_69:
          sub_190937A9C(v34, v35, v36);
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1909B56C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0)
  {
    if (a6 < 0)
    {
      sub_1902188FC(0, &qword_1EAD46500);
      if (sub_190D57D90() & 1) != 0 && (sub_190D57D90())
      {
        return sub_190D57D90() & 1;
      }
    }
  }

  else if ((a6 & 0x8000000000000000) == 0)
  {
    sub_1902188FC(0, &qword_1EAD46500);
    return sub_190D57D90() & 1;
  }

  return 0;
}

BOOL _s7ChatKit14CKBalloonLayerC6StrokeV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s7ChatKit14CKBalloonLayerC11StrokeStyleO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) != 0 && (v4 = type metadata accessor for CKBalloonLayer.Stroke(0), *(a1 + v4[5]) == *(a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]))
  {
    return *(a1 + v4[7]) == *(a2 + v4[7]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1909B5838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKBalloonLayer.StrokeStyle(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1909B589C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1909B5904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unint64_t *a4@<X8>)
{
  LODWORD(v188) = a3;
  v201 = a4;
  v202 = a2;
  v5 = type metadata accessor for CKBalloonLayer.MaterialBalloonConfiguration(0);
  MEMORY[0x1EEE9AC00](v5);
  v187 = &v176 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CKBalloonLayer.Configuration(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v176 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60290);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v176 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v184 = &v176 - v15;
  v16 = sub_190D56B90();
  v195 = *(v16 - 8);
  v196 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v178 = &v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v191 = &v176 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v193 = &v176 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v181 = &v176 - v23;
  v179 = type metadata accessor for CKBalloonLayer.MaterialStrokeConfiguration(0);
  v24 = MEMORY[0x1EEE9AC00](v179);
  v177 = &v176 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v182 = &v176 - v26;
  v186 = type metadata accessor for CKBalloonLayer.StrokeStyle(0);
  v27 = MEMORY[0x1EEE9AC00](v186);
  v29 = &v176 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v176 - v30;
  v192 = type metadata accessor for CKBalloonLayer.Stroke(0);
  v189 = *(v192 - 1);
  v32 = MEMORY[0x1EEE9AC00](v192);
  v180 = &v176 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v176 - v34;
  v36 = type metadata accessor for CKBalloonLayer.StrokeOnlyBalloonConfiguration(0);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v185 = (&v176 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = sub_190D56C50();
  v197 = *(v38 - 8);
  v198 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v199 = &v176 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration(0);
  v40 = MEMORY[0x1EEE9AC00](v183);
  v190 = &v176 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v194 = (&v176 - v42);
  v43 = type metadata accessor for CKBalloonLayer.Style(0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v176 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(v8 + 28);
  v200 = a1;
  sub_1909B589C(a1 + v46, v45, type metadata accessor for CKBalloonLayer.Style);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (result)
    {
      sub_1909B7924(v45, type metadata accessor for CKBalloonLayer.Style);
      v80 = v200;
      sub_1909B589C(v200, v10, type metadata accessor for CKBalloonLayer.Configuration);
      v81 = objc_allocWithZone(type metadata accessor for CKBalloonGradientLayer(0));
      v82 = sub_190A65594(v10);
      result = swift_unknownObjectWeakAssign();
      if (v188)
      {
        v84 = v197;
        v83 = v198;
        v85 = *(v197 + 16);
        v86 = v199;
        v85(v199, v80, v198);
        v87 = type metadata accessor for CKBalloonMaskLayer();
        v88 = objc_allocWithZone(v87);
        swift_unknownObjectWeakInit();
        v85(&v88[OBJC_IVAR____TtC7ChatKit18CKBalloonMaskLayer_pathConfiguration], v86, v83);
        v203.receiver = v88;
        v203.super_class = v87;
        v65 = objc_msgSendSuper2(&v203, sel_init);
        v89 = sub_190D56ED0();
        [v65 setName_];

        (*(v84 + 8))(v86, v83);
        result = swift_unknownObjectWeakAssign();
        v66 = 0;
        v67 = 0;
        v68 = 0;
        v79 = 0;
        v64 = v82 | 0x4000000000000000;
      }

      else
      {
        v65 = 0;
        v66 = 0;
        v67 = 0;
        v68 = 0;
        v79 = 0;
        v64 = v82 | 0x6000000000000000;
      }

      goto LABEL_31;
    }

    v60 = v194;
    sub_1909B8940(v45, v194, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
    v61 = v199;
    (*(v197 + 16))(v199, v200, v198);
    v62 = v190;
    sub_1909B589C(v60, v190, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
    v63 = objc_allocWithZone(type metadata accessor for CKBalloonShapeLayer(0));
    v64 = sub_19090CED8(v61, v62);
    sub_1909B7924(v60, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
    result = swift_unknownObjectWeakAssign();
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    goto LABEL_27;
  }

  if (result == 2)
  {
    v69 = v45;
    v70 = v187;
    sub_1909B8940(v69, v187, type metadata accessor for CKBalloonLayer.MaterialBalloonConfiguration);
    v71 = v196;
    v72 = *(v195 + 16);
    v73 = v191;
    v72(v191, v70, v196);
    v74 = v193;
    v185 = v72;
    v72(v193, v73, v71);
    v75 = objc_allocWithZone(type metadata accessor for CKBalloonBackdropMaterialLayer(0));
    v76 = sub_190B1A0FC(v74);
    v77 = *(v70 + v5[7] + 8);
    v78 = v76;
    if (v77)
    {
      v77 = sub_190D56ED0();
    }

    v104 = v192;
    [v76 setGroupName_];

    v105 = *(v70 + v5[6]) == 1;
    v182 = v76;
    if (v105)
    {
      v106 = v199;
      (*(v197 + 16))(v199, v200, v198);
      v112 = v189;
      v107 = v184;
      (*(v189 + 56))(v184, 1, 1, v104);
      v108 = v193;
      v185(v193, v191, v196);
      v109 = objc_allocWithZone(type metadata accessor for CKBalloonBackdropMaterialVibrantOuterStrokeLayer(0));
      v110 = v108;
      v104 = v192;
      v111 = CKBalloonBackdropMaterialVibrantOuterStrokeLayer.init(shape:stroke:material:)(v106, v107, v110);
      swift_unknownObjectWeakAssign();
    }

    else
    {
      v111 = 0;
      v112 = v189;
    }

    v113 = v5[5];
    sub_19022FD14(v70 + v113, v14, &qword_1EAD60290);
    if ((*(v112 + 48))(v14, 1, v104) == 1)
    {
      sub_19022EEA4(v14, &qword_1EAD60290);
      v67 = 0xF000000000000007;
      v68 = 0xF000000000000007;
      v79 = 0xF000000000000007;
      if (v188)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v114 = v180;
      sub_1909B8940(v14, v180, type metadata accessor for CKBalloonLayer.Stroke);
      sub_1909B589C(v114, v29, type metadata accessor for CKBalloonLayer.StrokeStyle);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v115 = v177;
        sub_1909B8940(v29, v177, type metadata accessor for CKBalloonLayer.MaterialStrokeConfiguration);
        v116 = v178;
        v117 = v196;
        v118 = v185;
        v185(v178, v115, v196);
        v119 = v193;
        v118(v193, v116, v117);
        v120 = objc_allocWithZone(type metadata accessor for CKBalloonStrokeMaterialLayer(0));
        v67 = sub_190B1A4D4(v119);
        v121 = *(v115 + *(v179 + 20) + 8);
        v192 = v111;
        v122 = v67;
        if (v121)
        {
          v121 = sub_190D56ED0();
        }

        [v67 setGroupName_];

        v153 = v194;
        sub_1909AB778(v194);
        v154 = v198;
        v155 = *(v197 + 16);
        v157 = v199;
        v156 = v200;
        v155(v199, v200, v198);
        v158 = v153;
        v159 = v190;
        sub_1909B589C(v158, v190, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
        v160 = objc_allocWithZone(type metadata accessor for CKBalloonStrokeMaterialMaskLayer(0));
        v68 = sub_19090D87C(v157, v159);
        swift_unknownObjectWeakAssign();
        v161 = v156;
        v70 = v187;
        v155(v157, v161, v154);
        v162 = v184;
        sub_1909B589C(v180, v184, type metadata accessor for CKBalloonLayer.Stroke);
        (*(v189 + 56))(v162, 0, 1, v104);
        v163 = v193;
        v164 = v178;
        v165 = v196;
        v185(v193, v178, v196);
        v166 = objc_allocWithZone(type metadata accessor for CKBalloonStrokeMaterialVibrantOuterStrokeLayer(0));
        v167 = CKBalloonStrokeMaterialVibrantOuterStrokeLayer.init(shape:stroke:material:)(v157, v162, v163);
        sub_1909B7924(v194, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
        (*(v195 + 8))(v164, v165);
        sub_1909B7924(v180, type metadata accessor for CKBalloonLayer.Stroke);
        swift_unknownObjectWeakAssign();
        sub_1909B7924(v177, type metadata accessor for CKBalloonLayer.MaterialStrokeConfiguration);
        v79 = v167 | 0x8000000000000000;
        v111 = v192;
        if (v188)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_1909B7924(v29, type metadata accessor for CKBalloonLayer.StrokeStyle);
        v123 = [objc_opt_self() clearColor];
        v124 = [v123 CGColor];

        v125 = v194;
        sub_19022FD14(v70 + v113, v194 + *(v183 + 20), &qword_1EAD60290);
        *v125 = v124;
        v126 = v199;
        (*(v197 + 16))(v199, v200, v198);
        v127 = v190;
        sub_1909B589C(v125, v190, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
        v128 = objc_allocWithZone(type metadata accessor for CKBalloonStrokeShapeLayer(0));
        v67 = sub_19090D4CC(v126, v127);
        sub_1909B7924(v125, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
        sub_1909B7924(v114, type metadata accessor for CKBalloonLayer.Stroke);
        swift_unknownObjectWeakAssign();
        v68 = 0;
        v79 = 0;
        if (v188)
        {
LABEL_30:
          v168 = v197;
          v169 = v198;
          v192 = v111;
          v170 = *(v197 + 16);
          v171 = v199;
          v170(v199, v200, v198);
          v172 = type metadata accessor for CKBalloonMaskLayer();
          v173 = objc_allocWithZone(v172);
          swift_unknownObjectWeakInit();
          v170(&v173[OBJC_IVAR____TtC7ChatKit18CKBalloonMaskLayer_pathConfiguration], v171, v169);
          v66 = v192;
          v204.receiver = v173;
          v204.super_class = v172;
          v65 = objc_msgSendSuper2(&v204, sel_init);
          v174 = sub_190D56ED0();
          [v65 setName_];

          (*(v168 + 8))(v171, v169);
          (*(v195 + 8))(v191, v196);
          swift_unknownObjectWeakAssign();
          result = sub_1909B7924(v187, type metadata accessor for CKBalloonLayer.MaterialBalloonConfiguration);
          v64 = v182 | 0x8000000000000000;
          goto LABEL_31;
        }
      }
    }

    (*(v195 + 8))(v191, v196);
    result = sub_1909B7924(v70, type metadata accessor for CKBalloonLayer.MaterialBalloonConfiguration);
    v64 = v182 | 0xA000000000000000;
    v65 = v111;
    v66 = v67;
    v67 = v68;
    v68 = v79;
LABEL_27:
    v79 = 0;
    goto LABEL_31;
  }

  if (result == 3)
  {
    v48 = v185;
    sub_1909B8940(v45, v185, type metadata accessor for CKBalloonLayer.StrokeOnlyBalloonConfiguration);
    sub_1909B589C(v48, v35, type metadata accessor for CKBalloonLayer.Stroke);
    sub_1909B589C(v35, v31, type metadata accessor for CKBalloonLayer.StrokeStyle);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v49 = v31;
      v50 = v182;
      sub_1909B8940(v49, v182, type metadata accessor for CKBalloonLayer.MaterialStrokeConfiguration);
      v51 = v196;
      v52 = (v195 + 16);
      v53 = *(v195 + 16);
      v54 = v181;
      v53(v181, v50, v196);
      v55 = v193;
      v53(v193, v54, v51);
      v56 = objc_allocWithZone(type metadata accessor for CKBalloonStrokeMaterialLayer(0));
      v57 = sub_190B1A4D4(v55);
      v58 = *(v50 + *(v179 + 20) + 8);
      v191 = v52;
      v188 = v53;
      v59 = v57;
      if (v58)
      {
        v58 = sub_190D56ED0();
      }

      v129 = v183;
      [v57 setGroupName_];

      v130 = objc_opt_self();
      v131 = [v130 clearColor];
      v187 = v57;
      v132 = [v131 CGColor];

      v133 = (v194 + *(v129 + 20));
      v134 = v194;
      v135 = [v130 blackColor];
      v136 = [v135 CGColor];

      *v133 = v136;
      swift_storeEnumTagMultiPayload();
      v137 = v192;
      v138 = v35[v192[6]];
      v139 = *&v35[v192[7]];
      *(v133 + v192[5]) = *&v35[v192[5]];
      *(v133 + v137[6]) = v138;
      *(v133 + v137[7]) = v139;
      v189 = *(v189 + 56);
      (v189)(v133, 0, 1, v137);
      v140 = v134;
      *v134 = v132;
      v141 = v198;
      v142 = *(v197 + 16);
      v144 = v199;
      v143 = v200;
      v142(v199, v200, v198);
      v145 = v190;
      sub_1909B589C(v140, v190, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
      v146 = objc_allocWithZone(type metadata accessor for CKBalloonStrokeMaterialMaskLayer(0));
      v65 = sub_19090D87C(v144, v145);
      swift_unknownObjectWeakAssign();
      v142(v144, v143, v141);
      v147 = v184;
      sub_1909B589C(v35, v184, type metadata accessor for CKBalloonLayer.Stroke);
      (v189)(v147, 0, 1, v137);
      v148 = v193;
      v149 = v181;
      v150 = v196;
      v188(v193, v181, v196);
      v151 = objc_allocWithZone(type metadata accessor for CKBalloonStrokeMaterialVibrantOuterStrokeLayer(0));
      v152 = CKBalloonStrokeMaterialVibrantOuterStrokeLayer.init(shape:stroke:material:)(v144, v147, v148);
      sub_1909B7924(v194, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
      (*(v195 + 8))(v149, v150);
      sub_1909B7924(v35, type metadata accessor for CKBalloonLayer.Stroke);
      sub_1909B7924(v185, type metadata accessor for CKBalloonLayer.StrokeOnlyBalloonConfiguration);
      swift_unknownObjectWeakAssign();
      result = sub_1909B7924(v182, type metadata accessor for CKBalloonLayer.MaterialStrokeConfiguration);
      v67 = 0;
      v68 = 0;
      v79 = 0;
      v66 = v152 | 0x8000000000000000;
      v64 = v187 | 0x2000000000000000;
    }

    else
    {
      sub_1909B7924(v31, type metadata accessor for CKBalloonLayer.StrokeStyle);
      v90 = objc_opt_self();
      v91 = [v90 clearColor];
      v92 = [v91 CGColor];

      v93 = v194;
      v94 = (v194 + *(v183 + 20));
      v95 = [v90 blackColor];
      v96 = [v95 CGColor];

      *v94 = v96;
      swift_storeEnumTagMultiPayload();
      v97 = v192;
      v98 = v35[v192[6]];
      v99 = *&v35[v192[7]];
      *(v94 + v192[5]) = *&v35[v192[5]];
      *(v94 + v97[6]) = v98;
      *(v94 + v97[7]) = v99;
      (*(v189 + 56))(v94, 0, 1);
      *v93 = v92;
      v100 = v199;
      (*(v197 + 16))(v199, v200, v198);
      v101 = v190;
      sub_1909B589C(v93, v190, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
      v102 = objc_allocWithZone(type metadata accessor for CKBalloonStrokeShapeLayer(0));
      v103 = sub_19090D4CC(v100, v101);
      sub_1909B7924(v93, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
      sub_1909B7924(v35, type metadata accessor for CKBalloonLayer.Stroke);
      sub_1909B7924(v48, type metadata accessor for CKBalloonLayer.StrokeOnlyBalloonConfiguration);
      result = swift_unknownObjectWeakAssign();
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v79 = 0;
      v64 = v103 | 0x2000000000000000;
    }
  }

  else
  {
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v79 = 0;
    v64 = 0xC000000000000000;
  }

LABEL_31:
  v175 = v201;
  *v201 = v64;
  v175[1] = v65;
  v175[2] = v66;
  v175[3] = v67;
  v175[4] = v68;
  v175[5] = v79;
  return result;
}

unint64_t sub_1909B7068@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  v2 = result;
  if (!result)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0xC000000000000000;
    goto LABEL_125;
  }

  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_122:
    v51 = 0;
    v39 = 0;
    v62 = 0;
    v61 = 0;
    v63 = 0;
    v45 = 0;
    v11 = 0xF000000000000007;
    v12 = 0xF000000000000007;
    v2 = 0xF000000000000007;
LABEL_123:
    sub_190937A9C(v11, v12, v2);

    result = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v2 = 0;
    v13 = 0xC000000000000000;
    if (v62)
    {
      v13 = v62;
    }

    goto LABEL_125;
  }

LABEL_121:
  v4 = sub_190D581C0();
  if (!v4)
  {
    goto LABEL_122;
  }

LABEL_4:
  v66 = a2;
  v5 = 0;
  a2 = (v2 & 0xC000000000000001);
  do
  {
    if (a2)
    {
      v6 = MEMORY[0x193AF3B90](v5, v2);
    }

    else
    {
      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_106;
      }

      v6 = *(v2 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
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

    type metadata accessor for CKBalloonBackdropMaterialLayer(0);
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v69 = v9;
      goto LABEL_15;
    }

    ++v5;
  }

  while (v8 != v4);
  v69 = 0;
LABEL_15:
  v14 = 0;
  while (1)
  {
    if (a2)
    {
      v15 = MEMORY[0x193AF3B90](v14, v2);
    }

    else
    {
      if (v14 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_108;
      }

      v15 = *(v2 + 8 * v14 + 32);
    }

    v16 = v15;
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_107;
    }

    type metadata accessor for CKBalloonBackdropMaterialVibrantOuterStrokeLayer(0);
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      break;
    }

    ++v14;
    if (v17 == v4)
    {
      v65 = 0;
      goto LABEL_25;
    }
  }

  v65 = v18;
LABEL_25:
  v19 = 0;
  while (1)
  {
    if (a2)
    {
      v20 = MEMORY[0x193AF3B90](v19, v2);
    }

    else
    {
      if (v19 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_110;
      }

      v20 = *(v2 + 8 * v19 + 32);
    }

    v21 = v20;
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_109;
    }

    type metadata accessor for CKBalloonGradientLayer(0);
    v23 = swift_dynamicCastClass();
    if (v23)
    {
      break;
    }

    ++v19;
    if (v22 == v4)
    {
      v67 = 0;
      goto LABEL_35;
    }
  }

  v67 = v23;
LABEL_35:
  v24 = 0;
  while (1)
  {
    if (a2)
    {
      v25 = MEMORY[0x193AF3B90](v24, v2);
    }

    else
    {
      if (v24 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_112;
      }

      v25 = *(v2 + 8 * v24 + 32);
    }

    v26 = v25;
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_111;
    }

    type metadata accessor for CKBalloonShapeLayer(0);
    v28 = swift_dynamicCastClass();
    if (v28)
    {
      break;
    }

    ++v24;
    if (v27 == v4)
    {
      v64 = 0;
      goto LABEL_45;
    }
  }

  v64 = v28;
LABEL_45:
  v29 = 0;
  while (1)
  {
    if (a2)
    {
      v30 = MEMORY[0x193AF3B90](v29, v2);
    }

    else
    {
      if (v29 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_114;
      }

      v30 = *(v2 + 8 * v29 + 32);
    }

    v31 = v30;
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_113;
    }

    type metadata accessor for CKBalloonStrokeShapeLayer(0);
    v33 = swift_dynamicCastClass();
    if (v33)
    {
      break;
    }

    ++v29;
    if (v32 == v4)
    {
      v68 = 0;
      goto LABEL_55;
    }
  }

  v68 = v33;
LABEL_55:
  v34 = 0;
  while (1)
  {
    if (a2)
    {
      v35 = MEMORY[0x193AF3B90](v34, v2);
    }

    else
    {
      if (v34 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_116;
      }

      v35 = *(v2 + 8 * v34 + 32);
    }

    v36 = v35;
    v37 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      goto LABEL_115;
    }

    type metadata accessor for CKBalloonStrokeMaterialLayer(0);
    v38 = swift_dynamicCastClass();
    if (v38)
    {
      break;
    }

    ++v34;
    if (v37 == v4)
    {
      v39 = 0;
      goto LABEL_65;
    }
  }

  v39 = v38;
LABEL_65:
  v40 = 0;
  while (1)
  {
    if (a2)
    {
      v41 = MEMORY[0x193AF3B90](v40, v2);
    }

    else
    {
      if (v40 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_118;
      }

      v41 = *(v2 + 8 * v40 + 32);
    }

    v42 = v41;
    v43 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      goto LABEL_117;
    }

    type metadata accessor for CKBalloonStrokeMaterialMaskLayer(0);
    v44 = swift_dynamicCastClass();
    if (v44)
    {
      break;
    }

    ++v40;
    if (v43 == v4)
    {
      v45 = 0;
      goto LABEL_75;
    }
  }

  v45 = v44;
LABEL_75:
  v46 = 0;
  while (1)
  {
    if (a2)
    {
      v47 = MEMORY[0x193AF3B90](v46, v2);
    }

    else
    {
      if (v46 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_120;
      }

      v47 = *(v2 + 8 * v46 + 32);
    }

    v48 = v47;
    v49 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      goto LABEL_119;
    }

    type metadata accessor for CKBalloonStrokeMaterialVibrantOuterStrokeLayer(0);
    v50 = swift_dynamicCastClass();
    if (v50)
    {
      break;
    }

    ++v46;
    if (v49 == v4)
    {
      v51 = 0;
      goto LABEL_85;
    }
  }

  v51 = v50;
LABEL_85:
  a2 = v66;
  v52 = v69;
  if (v39 && v45 && v51)
  {
    v2 = v51 | 0x8000000000000000;
    v53 = v39;
    v54 = v45;
    v55 = v51;
    v11 = v39;
    v12 = v45;
    goto LABEL_91;
  }

  v12 = 0;
  v11 = v68;
  if (v68)
  {
    v55 = v68;
    v2 = 0;
LABEL_91:
    v56 = v55;
    v52 = v69;
    if (v69)
    {
LABEL_92:
      v57 = v52;
      v58 = [v57 mask];

      if (v58)
      {
        type metadata accessor for CKBalloonMaskLayer();
        result = swift_dynamicCastClass();
        if (result)
        {
          v13 = v69 | 0x8000000000000000;
          v10 = v65;
          goto LABEL_125;
        }
      }

      v13 = v69 | 0xA000000000000000;
      result = v65;
      v10 = v11;
      v11 = v12;
      v12 = v2;
      v2 = 0;
      goto LABEL_125;
    }
  }

  else
  {
    v11 = 0xF000000000000007;
    v68 = 0;
    v12 = 0xF000000000000007;
    v2 = 0xF000000000000007;
    if (v69)
    {
      goto LABEL_92;
    }
  }

  if (!v67)
  {
    v62 = v64;
    v61 = v65;
    v63 = v68;
    goto LABEL_123;
  }

  v59 = v67;
  v60 = [v59 mask];
  sub_190937A9C(v11, v12, v2);

  if (v60)
  {
    type metadata accessor for CKBalloonMaskLayer();
    result = swift_dynamicCastClass();
    if (result)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v2 = 0;
      v13 = v67 | 0x4000000000000000;
      goto LABEL_125;
    }
  }

  result = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v2 = 0;
  v13 = v67 | 0x6000000000000000;
LABEL_125:
  *a2 = v13;
  a2[1] = result;
  a2[2] = v10;
  a2[3] = v11;
  a2[4] = v12;
  a2[5] = v2;
  return result;
}

void sub_1909B7718()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v1 = (v0 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration);
  v2 = *(v0 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration);
  v3 = v2 >> 61;
  if ((v2 >> 61) > 3)
  {
    v8 = v1[1];
    v7 = v1[2];
    v9 = v1[3];
    v10 = v1[4];
    if (v3 == 4)
    {
      v17 = v1[5];
      v18 = (v2 & 0x1FFFFFFFFFFFFFFFLL);
      v19 = v7;
      v20 = v18;
      v21 = v8;
      sub_19093793C(v9, v10, v17);

      v14 = v9;
      v15 = v10;
      v16 = v17;
    }

    else
    {
      if (v3 != 5)
      {
        return;
      }

      v11 = (v2 & 0x1FFFFFFFFFFFFFFFLL);
      v12 = v8;
      v13 = v11;
      sub_19093793C(v7, v9, v10);

      v14 = v7;
      v15 = v9;
      v16 = v10;
    }

    sub_190937A9C(v14, v15, v16);
  }

  else if (v3 >= 2)
  {
    v4 = (v2 & 0x1FFFFFFFFFFFFFFFLL);
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();
    sub_190A65270(v6);

    sub_1909AC998();
  }
}

uint64_t sub_1909B78A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKBalloonLayer.Configuration(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1909B7924(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id _s7ChatKit14CKBalloonLayerC6action3for0F3KeySo8CAAction_pSgSo7CALayerC_SStF_0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 16);
  v7[0] = *(v0 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration);
  v7[1] = v1;
  v7[2] = *(v0 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 32);
  sub_1909B7000(v7, &v6);
  v2 = sub_1909B35EC();
  sub_1909B7038(v7);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v4 = [Strong shouldAnimatePathChanges], swift_unknownObjectRelease(), (v4 & 1) != 0))
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }
}

uint64_t sub_1909B7A6C()
{
  result = type metadata accessor for CKBalloonLayer.Configuration(319);
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

uint64_t dispatch thunk of CKBalloonLayer.gradientOverrideFrame.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x118);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t sub_1909B80FC()
{
  result = type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CKBalloonLayer.MaterialBalloonConfiguration(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for CKBalloonLayer.StrokeOnlyBalloonConfiguration(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1909B8220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1909B82B0()
{
  if (!qword_1EAD46AA8)
  {
    type metadata accessor for CKBalloonLayer.Stroke(255);
    v0 = sub_190D58050();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD46AA8);
    }
  }
}

void sub_1909B8340()
{
  sub_190D56B90();
  if (v0 <= 0x3F)
  {
    sub_1909B82B0();
    if (v1 <= 0x3F)
    {
      sub_1909B83E4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1909B83E4()
{
  if (!qword_1EAD46740)
  {
    v0 = sub_190D58050();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD46740);
    }
  }
}

uint64_t sub_1909B84B0()
{
  result = type metadata accessor for CKBalloonLayer.Stroke(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1909B8544()
{
  result = type metadata accessor for CKBalloonLayer.StrokeStyle(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1909B85C4()
{
  type metadata accessor for CGColor(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CKBalloonLayer.MaterialStrokeConfiguration(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7ChatKit14CKBalloonLayerC27StrokeSublayerConfigurationOSg(void *a1)
{
  v1 = a1[2];
  v2 = (*a1 >> 57) & 0x78 | *a1 & 7 | (a1[1] >> 50) & 0x3C00 | ((a1[1] & 7) << 7) & 0x3FFF | (v1 >> 43) & 0xE0000 | ((v1 & 7) << 14);
  if (v2)
  {
    return 0x200000 - (((v1 >> 43) >> 20) | (2 * v2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_7ChatKit14CKBalloonLayerC21SublayerConfigurationO(void *a1)
{
  if (*a1 >> 62 == 3)
  {
    return (*a1 >> 3) + 6;
  }

  else
  {
    return *a1 >> 61;
  }
}

uint64_t sub_1909B86DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 48))
  {
    return (*a1 + 122);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x79)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1909B8738(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
      *(result + 40) = 0;
    }
  }

  return result;
}

uint64_t sub_1909B87B8(uint64_t result, uint64_t a2)
{
  if (a2 < 6)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (8 * (a2 - 6)) | 0xC000000000000000;
  }

  return result;
}

double CKMainScreenScale()
{
  v0 = CKMainScreenScale_once_109;
  v1 = &__block_literal_global_303;
  if (v0 != -1)
  {
    dispatch_once(&CKMainScreenScale_once_109, &__block_literal_global_303);
  }

  result = *&CKMainScreenScale_sMainScreenScale_109;
  if (*&CKMainScreenScale_sMainScreenScale_109 == 0.0)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_1909B8940(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1909B89A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60290);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1909B8A18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60290);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1909B8A88()
{
  result = qword_1EAD46708;
  if (!qword_1EAD46708)
  {
    type metadata accessor for CGColor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46708);
  }

  return result;
}

uint64_t sub_1909B8AE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1FFFFF && *(a1 + 24))
  {
    return (*a1 + 0x1FFFFF);
  }

  v3 = (((*(a1 + 16) >> 43) >> 20) | (2 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 50) & 0x3C00 | ((*(a1 + 8) & 7) << 7) | (*(a1 + 16) >> 43) & 0xE0000 | ((*(a1 + 16) & 7) << 14)))) ^ 0x1FFFFF;
  if (v3 >= 0x1FFFFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1909B8B6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x1FFFFF;
    if (a3 >= 0x1FFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 1) & 0xFFFFF) - (a2 << 20);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      v4 = vdupq_n_s64(v3);
      *(result + 8) = vorrq_s8(vandq_s8(vshlq_u64(v4, xmmword_190DE30A0), vdupq_n_s64(7uLL)), vandq_s8(vshlq_u64(v4, xmmword_190DE30B0), vdupq_n_s64(0xF000000000000000)));
    }
  }

  return result;
}

int8x16_t sub_1909B8C1C(int8x16_t *a1, uint64_t a2)
{
  v2 = a1[1].i64[0] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  result = vandq_s8(*a1, vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL));
  *a1 = result;
  a1[1].i64[0] = v2;
  return result;
}

uint64_t sub_1909B8C68()
{
  v0 = sub_190D52650();
  __swift_allocate_value_buffer(v0, qword_1EAD9DCB0);
  __swift_project_value_buffer(v0, qword_1EAD9DCB0);
  return sub_190D52640();
}

id CommunicationDetailsViewBuilder.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1909B8D88(a1, v3 + OBJC_IVAR____TtC7ChatKit31CommunicationDetailsViewBuilder_configuration);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1909B8DE4(a1);
  return v4;
}

id CommunicationDetailsViewBuilder.init(configuration:)(uint64_t a1)
{
  sub_1909B8D88(a1, v1 + OBJC_IVAR____TtC7ChatKit31CommunicationDetailsViewBuilder_configuration);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CommunicationDetailsViewBuilder();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_1909B8DE4(a1);
  return v3;
}

id sub_1909B8E5C(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_190D52650();
  v87 = *(v3 - 8);
  v88 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v92 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D52960();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v83 = (&v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58B70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v82 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v78 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v78 - v13;
  v15 = sub_190D526F0();
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = v1 + OBJC_IVAR____TtC7ChatKit31CommunicationDetailsViewBuilder_configuration;
  LODWORD(v80) = *(v1 + OBJC_IVAR____TtC7ChatKit31CommunicationDetailsViewBuilder_configuration);
  if (v80)
  {
    v22 = MEMORY[0x1E6995778];
  }

  else
  {
    *v20 = 0;
    v22 = MEMORY[0x1E6995770];
  }

  v95 = v14;
  v23 = *v22;
  v91 = v17;
  v24 = *(v17 + 104);
  v93 = v16;
  v24(v20, v23, v16, v18);
  v89 = v20;
  v90 = v1;
  v25 = sub_1909BA300(a1, v20);
  v26 = *(v21 + 32);
  if (v26)
  {
    v27 = sub_1909B9920();
    v86 = sub_1909BAED4(v27);
    v28 = [v26 existingAsyncTabs];
    sub_1902188FC(0, &qword_1EAD46510);
    v29 = sub_190D57180();

    v30 = sub_190D574E0();
    v96[0] = v30;
    MEMORY[0x1EEE9AC00](v30);
    *(&v78 - 2) = v96;
    v85 = sub_190CACFA0(sub_1909BB1AC, (&v78 - 4), v29);
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
    v86 = sub_1909BAED4(MEMORY[0x1E69E7CC0]);
    v85 = 0;
  }

  v79 = v6;
  v84 = v5;
  sub_1909B8D88(v21, v96);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1909B8DE4(v96);
  v32 = objc_allocWithZone(type metadata accessor for DetailsViewCoordinator());
  v33 = a1;
  sub_190D50920();
  v34 = sub_190BE6128(v33, v25);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35)
  {
    v36 = v35;
    [v34 configureWithToolbarController_];
  }

  v37 = OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_persistedDetailsTabs;
  swift_beginAccess();
  *&v34[v37] = v27;

  v38 = sub_190D52880();
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v41 = v95;
  v40(v95, 1, 1, v38);
  if ((sub_1909B9AC8() & 1) == 0)
  {
    goto LABEL_19;
  }

  v42 = [objc_opt_self() sharedFeatureFlags];
  v43 = [v42 isTranscriptBackgroundsEnabled];

  if (!v43 || ([objc_opt_self() shouldSuppressTranscriptBackgroundEditingForConversation_] & 1) != 0)
  {
    goto LABEL_19;
  }

  type metadata accessor for DetailsBackgroundsTab();
  swift_allocObject();
  v78 = sub_190A68A18();
  v44 = swift_allocObject();
  *(v44 + 16) = v33;
  *(v44 + 24) = v34;
  *(v44 + 32) = v80;
  v80 = sub_1909BB084(&qword_1EAD45A60, type metadata accessor for DetailsBackgroundsTab);
  v45 = v33;
  v46 = v34;
  v47 = v81;
  v48 = v95;
  sub_190D528B0();
  v40(v47, 0, 1, v38);
  sub_1909BB0CC(v47, v48);
  v49 = v82;
  sub_1909BB13C(v48, v82);
  result = (*(v39 + 48))(v49, 1, v38);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v81 = sub_190D52860();
  v80 = v51;
  (*(v39 + 8))(v49, v38);
  result = CKFrameworkBundle();
  v52 = v79;
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v53 = result;
  v54 = sub_190D56ED0();
  v55 = sub_190D56ED0();
  v56 = [v53 localizedStringForKey:v54 value:0 table:v55];

  v57 = sub_190D56F10();
  v59 = v58;

  v60 = v83;
  v61 = v80;
  *v83 = v81;
  v60[1] = v61;
  v60[2] = v57;
  v60[3] = v59;
  v60[4] = 0xD00000000000001BLL;
  v60[5] = 0x8000000190E6AF60;
  (*(v52 + 104))();
  v62 = sub_190D527A0();
  v64 = v63;
  v65 = *v63;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v64 = v65;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v65 = sub_190836560(0, v65[2] + 1, 1, v65);
    *v64 = v65;
  }

  v68 = v65[2];
  v67 = v65[3];
  v41 = v95;
  if (v68 >= v67 >> 1)
  {
    v65 = sub_190836560(v67 > 1, v68 + 1, 1, v65);
    *v64 = v65;
  }

  v65[2] = v68 + 1;
  (*(v52 + 32))(v65 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v68, v83, v84);
  v62(v96, 0);
LABEL_19:
  sub_190D52830();
  v69 = qword_1EAD51AB0;
  sub_190D50920();
  if (v69 != -1)
  {
    swift_once();
  }

  v70 = v88;
  v71 = __swift_project_value_buffer(v88, qword_1EAD9DCB0);
  (*(v87 + 16))(v92, v71, v70);
  v72 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v73 = swift_allocObject();
  v74 = swift_unknownObjectWeakInit();
  MEMORY[0x1EEE9AC00](v74);
  *(&v78 - 6) = v72;
  *(&v78 - 5) = v73;
  *(&v78 - 4) = v25;
  *(&v78 - 3) = v34;
  v75 = ObjectType;
  *(&v78 - 2) = v41;
  *(&v78 - 1) = v75;
  v76 = sub_190D526E0();

  sub_1909BBAD0(v76, v33, v85 & 1, v34);
  v77 = v34;
  sub_1909BBC34(v76, v33, v86, v34);

  sub_1909BB084(&unk_1EAD58B78, type metadata accessor for DetailsViewCoordinator);
  sub_190D52820();

  (*(v91 + 8))(v89, v93);
  swift_unknownObjectWeakAssign();

  sub_1909BB010(v41);
  return v76;
}

char *sub_1909B9920()
{
  v1 = [v0 existingAsyncTabs];
  sub_1902188FC(0, &qword_1EAD46510);
  v2 = sub_190D57180();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x193AF3B90](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 integerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_19083654C(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_19083654C((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      *&v5[8 * v11 + 32] = v9;
      ++v4;
      if (v8 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_19:

  return v5;
}

uint64_t sub_1909B9AC8()
{
  v0 = sub_190D526C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_190D52930();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D52750();
  if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E6995738])
  {
    (*(v1 + 96))(v3, v0);
    (*(v5 + 32))(v7, v3, v4);
    if (sub_190D528F0())
    {
      (*(v5 + 8))(v7, v4);
      v8 = 1;
    }

    else
    {
      v8 = sub_190D528E0();
      (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    (*(v1 + 8))(v3, v0);
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_1909B9CE4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v61 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58B70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v52 - v10;
  v12 = sub_190D52880();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v60 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v52 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v19 = Strong;
  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20)
  {

LABEL_6:
    v33 = sub_190D52670();
    goto LABEL_15;
  }

  v57 = v19;
  v58 = v20;
  v21 = *&v19[OBJC_IVAR____TtC7ChatKit31CommunicationDetailsViewBuilder_configuration + 8];
  v59 = a4;
  if (v21)
  {
    type metadata accessor for DetailsInfoTab();
    v55 = v13;
    swift_allocObject();
    v22 = v21;
    v54 = sub_190A09734();
    v23 = swift_allocObject();
    v56 = a6;
    v25 = v58;
    v24 = v59;
    v23[2] = v58;
    v23[3] = a3;
    v23[4] = v22;
    v23[5] = v24;
    v52[2] = type metadata accessor for DetailsInfoTabView(0);
    v52[1] = sub_1909BB084(&qword_1EAD45FD0, type metadata accessor for DetailsInfoTab);
    sub_1909BB084(&qword_1EAD45C78, type metadata accessor for DetailsInfoTabView);
    sub_1909BB084(&qword_1EAD45C70, type metadata accessor for DetailsInfoTabView);
    v26 = v22;
    v27 = v59;
    v53 = v26;
    v28 = v25;
    sub_190D50920();
    v29 = v27;
    v13 = v55;
    sub_190D52890();
    v30 = sub_190D52680();
    (*(v13 + 8))(v17, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58B88);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_190DD1D90;
    *(v31 + 32) = v30;
    MEMORY[0x193AEDEF0]();

    v32 = sub_190D52670();
  }

  else
  {
    v32 = sub_190D52670();
  }

  v34 = &qword_190DD1000;
  if (sub_1909B9AC8())
  {
    v56 = v32;
    sub_1909BB13C(v61, v11);
    v35 = (*(v13 + 48))(v11, 1, v12);
    v36 = v58;
    if (v35 == 1)
    {
      sub_1909BB010(v11);
      v37 = sub_190D52670();
    }

    else
    {
      v39 = v60;
      (*(v13 + 32))(v60, v11, v12);
      v40 = sub_190D52680();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58B88);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_190DD1D90;
      *(v41 + 32) = v40;
      MEMORY[0x193AEDEF0]();

      v37 = sub_190D52670();

      v42 = v39;
      v34 = &qword_190DD1000;
      (*(v13 + 8))(v42, v12);
    }

    v43 = OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_persistedDetailsTabs;
    v44 = v59;
    swift_beginAccess();
    v45 = *&v44[v43];
    sub_190D52690();
    sub_1909BB550(v36, v45, v44);

    v46 = sub_190D52690();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58B88);
    v47 = swift_allocObject();
    *(v47 + 16) = *(v34 + 218);
    *(v47 + 32) = v37;
    *(v47 + 40) = v46;
    MEMORY[0x193AEDEF0]();

    v38 = sub_190D52670();

    v32 = v56;
  }

  else
  {
    v38 = sub_190D52670();
    v36 = v58;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58B88);
  v48 = swift_allocObject();
  *(v48 + 16) = *(v34 + 218);
  *(v48 + 32) = v32;
  *(v48 + 40) = v38;
  MEMORY[0x193AEDEF0]();

  v33 = sub_190D52670();

LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58B88);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_190DD1D90;
  *(v49 + 32) = v33;
  v50 = MEMORY[0x193AEDEF0]();

  return v50;
}

uint64_t sub_1909BA300(void *a1, uint64_t a2)
{
  v34 = a2;
  v38 = sub_190D52700();
  v3 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_190D526D0();
  v5 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_190D526F0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_190D526C0();
  v40 = *(v12 - 8);
  v41 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v39 = &v32 - v16;
  sub_1909BAA2C(a1, (&v32 - v16));
  if ([a1 hasLeftGroupChat])
  {
    v17 = 0;
  }

  else
  {
    v17 = [a1 supportsMutatingGroupIdentity];
  }

  v36 = v17;
  v18 = v39;
  sub_190D526B0();
  (*(v9 + 16))(v11, v34, v8);
  (*(v40 + 16))(v14, v18, v41);
  (*(v5 + 104))(v7, *MEMORY[0x1E6995758], v33);
  sub_190D527E0();
  swift_allocObject();
  v19 = sub_190D52790();
  v20 = *(v35 + OBJC_IVAR____TtC7ChatKit31CommunicationDetailsViewBuilder_configuration + 32);
  if (v20)
  {
    v21 = [v20 selectedDetailsTabID];
    v22 = v37;
    if (v21)
    {
      v23 = v21;
      sub_190D56F10();
    }
  }

  else
  {
    v22 = v37;
  }

  sub_190D52710();
  v24 = sub_190C68D4C();
  v25 = v38;
  if (v24 == 4)
  {
    (*(v3 + 104))(v22, *MEMORY[0x1E69957D0], v38);
    sub_190D52720();
    (*(v3 + 8))(v22, v25);
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_190D50920();
  sub_190D52780();

  if (sub_190A3CFB0())
  {
    (*(v3 + 104))(v22, *MEMORY[0x1E6995790], v25);
    sub_190D52720();
    (*(v3 + 8))(v22, v25);
  }

  if ([a1 canRemoveParticipants])
  {
    (*(v3 + 104))(v22, *MEMORY[0x1E69957C8], v25);
    sub_190D52720();
    (*(v3 + 8))(v22, v25);
  }

  if ([a1 canLeave] && objc_msgSend(a1, sel_supportsMutatingGroupMembers) && (objc_msgSend(a1, sel_hasLeftGroupChat) & 1) == 0)
  {
    (*(v3 + 104))(v22, *MEMORY[0x1E69957D8], v25);
    sub_190D52720();
    (*(v3 + 8))(v22, v25);
  }

  if (v36)
  {
    (*(v3 + 104))(v22, *MEMORY[0x1E69957A0], v25);
    sub_190D52720();
    (*(v3 + 8))(v22, v25);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58B98);
  v26 = *(v3 + 72);
  v27 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_190DD9C20;
  v29 = v28 + v27;
  v30 = *(v3 + 104);
  v30(v29, *MEMORY[0x1E69957A8], v25);
  v30(v29 + v26, *MEMORY[0x1E69957B8], v25);
  v30(v29 + 2 * v26, *MEMORY[0x1E6995788], v25);
  MEMORY[0x193AEDFC0](v28);

  (*(v40 + 8))(v39, v41);
  return v19;
}

void sub_1909BA9D0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1908F7D88(a1);
  }
}

uint64_t sub_1909BAA2C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_190D52930();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s7ChatKit22DetailsViewCoordinatorC013communicationC8Contacts3forSay013CommunicationC00iC7ContactVGSo14CKConversationC_tFZ_0(a1);
  v9 = v8;
  if (v8[2] == 1)
  {
    (*(v5 + 16))(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

    (*(v5 + 32))(a2, v7, v4);
    v10 = *MEMORY[0x1E6995738];
    v11 = sub_190D526C0();
    return (*(*(v11 - 8) + 104))(a2, v10, v11);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_190DD55F0;
    *(v13 + 32) = [objc_opt_self() descriptorForRequiredKeys];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
    v14 = sub_190D57160();

    v15 = [a1 conversationVisualIdentityWithKeys:v14 requestedNumberOfContactsToFetch:{objc_msgSend(a1, sel_recipientCount)}];

    *a2 = v9;
    a2[1] = v15;
    v16 = *MEMORY[0x1E6995720];
    v17 = sub_190D526C0();
    v18 = *(*(v17 - 8) + 104);

    return v18(a2, v16, v17);
  }
}

id sub_1909BACB4()
{
  v0 = [objc_opt_self() sharedConversationList];
  v1 = sub_190D52690();
  sub_190CAC678(v1);

  sub_1902188FC(0, &qword_1EAD44E40);
  sub_19096B404();
  v2 = sub_190D57400();

  v3 = [v0 conversationForContacts_];

  v10[0] = 0;
  v11 = 0;
  v12 = 0;
  swift_unknownObjectWeakInit();
  v13 = 0;
  v4 = type metadata accessor for CommunicationDetailsViewBuilder();
  v5 = objc_allocWithZone(v4);
  sub_1909B8D88(v10, v5 + OBJC_IVAR____TtC7ChatKit31CommunicationDetailsViewBuilder_configuration);
  v9.receiver = v5;
  v9.super_class = v4;
  v6 = objc_msgSendSuper2(&v9, sel_init);
  sub_1909B8DE4(v10);
  v7 = sub_1909B8E5C(v3);

  return v7;
}

id CommunicationDetailsViewBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CommunicationDetailsViewBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CommunicationDetailsViewBuilder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1909BAED4(uint64_t a1)
{
  v1 = off_1EAD58B60;
  v2 = *(off_1EAD58B60 + 2);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = *(a1 + 16);
  v4 = (a1 + 32);
  sub_190D52690();
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = v1[v5 + 4];
    v10 = v3;
    v11 = v4;
    while (v10)
    {
      v12 = *v11++;
      --v10;
      if (v12 == v9)
      {
        goto LABEL_6;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_19082DFC4(0, *(v6 + 16) + 1, 1);
    }

    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_19082DFC4((v7 > 1), v8 + 1, 1);
    }

    *(v6 + 16) = v8 + 1;
    *(v6 + 8 * v8 + 32) = v9;
LABEL_6:
    ++v5;
  }

  while (v5 != v2);

  return v6;
}

uint64_t sub_1909BB010(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1909BB084(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1909BB0CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58B70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1909BB13C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *CommunicationDetailsViewBuilder.Configuration.actionHandlers.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t CommunicationDetailsViewBuilder.Configuration.detailsViewCoordinatorDelegate.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 16) = a1;
  return result;
}

void CommunicationDetailsViewBuilder.Configuration.macToolbarController.setter(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void (*CommunicationDetailsViewBuilder.Configuration.macToolbarController.modify(uint64_t *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1909BB448;
}

void sub_1909BB448(id *a1)
{
  v1 = *a1;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1909BB488(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1909BB4E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_1909BB550(void *a1, uint64_t a2, void *a3)
{
  v55 = a3;
  v54 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58B70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v44[-v5];
  v7 = sub_190D52880();
  v51 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v44[-v10];
  if (qword_1EAD51C50 != -1)
  {
    swift_once();
  }

  v11 = sub_190D53040();
  __swift_project_value_buffer(v11, qword_1EAD9DF70);
  sub_190D52690();
  v12 = sub_190D53020();
  v13 = sub_190D57680();

  v14 = os_log_type_enabled(v12, v13);
  v53 = v7;
  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = swift_slowAlloc();
  v48 = swift_slowAlloc();
  v57 = v48;
  v49 = v15;
  *v15 = 136315138;
  v16 = *(a2 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (!v16)
  {
    goto LABEL_23;
  }

  v45 = v13;
  v46 = v12;
  v56 = MEMORY[0x1E69E7CC0];
  sub_19082DBB4(0, v16, 0);
  v47 = a2;
  v18 = (a2 + 32);
  v17 = v56;
  do
  {
    v20 = *v18++;
    v19 = v20;
    if (v20 > 1)
    {
      switch(v19)
      {
        case 2:
          v22 = 0x746E656D75636F44;
          break;
        case 3:
          v22 = 0x6E6F697461636F4CLL;
          break;
        case 4:
          v21 = 0xE600000000000000;
          v22 = 0x74656C6C6157;
          goto LABEL_19;
        default:
          goto LABEL_18;
      }

      v21 = 0xE900000000000073;
      goto LABEL_19;
    }

    if (!v19)
    {
      v21 = 0xE600000000000000;
      v22 = 0x736F746F6850;
      goto LABEL_19;
    }

    if (v19 == 1)
    {
      v21 = 0xE500000000000000;
      v22 = 0x736B6E694CLL;
      goto LABEL_19;
    }

LABEL_18:
    v21 = 0xE700000000000000;
    v22 = 0x6E776F6E6B6E55;
LABEL_19:
    v56 = v17;
    v24 = *(v17 + 16);
    v23 = *(v17 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_19082DBB4((v23 > 1), v24 + 1, 1);
      v17 = v56;
    }

    *(v17 + 16) = v24 + 1;
    v25 = v17 + 16 * v24;
    *(v25 + 32) = v22;
    *(v25 + 40) = v21;
    --v16;
    v7 = v53;
  }

  while (v16);
  v12 = v46;
  a2 = v47;
  LOBYTE(v13) = v45;
LABEL_23:
  v26 = MEMORY[0x193AF2A20](v17, MEMORY[0x1E69E6158]);
  v28 = v27;

  v29 = sub_19021D9F8(v26, v28, &v57);

  v30 = v49;
  *(v49 + 1) = v29;
  _os_log_impl(&dword_19020E000, v12, v13, "Showing cached tabs: %s.", v30, 0xCu);
  v31 = v48;
  __swift_destroy_boxed_opaque_existential_0(v48);
  MEMORY[0x193AF7A40](v31, -1, -1);
  MEMORY[0x193AF7A40](v30, -1, -1);
LABEL_24:

  v32 = *(a2 + 16);
  if (!v32)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v33 = (a2 + 32);
  v34 = (v51 + 48);
  v35 = (v51 + 32);
  v36 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      v37 = *v33++;
      v57 = v37;
      sub_1909BF250(&v57, v54, v55, v6);
      if ((*v34)(v6, 1, v7) != 1)
      {
        break;
      }

      sub_19022EEA4(v6, &qword_1EAD58B70);
      if (!--v32)
      {
        return v36;
      }
    }

    v38 = *v35;
    v39 = v50;
    (*v35)(v50, v6, v7);
    v38(v52, v39, v7);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_190836588(0, v36[2] + 1, 1, v36);
    }

    v41 = v36[2];
    v40 = v36[3];
    if (v41 >= v40 >> 1)
    {
      v36 = sub_190836588(v40 > 1, v41 + 1, 1, v36);
    }

    v36[2] = v41 + 1;
    v42 = v36 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v41;
    v7 = v53;
    v38(v42, v52, v53);
    --v32;
  }

  while (v32);
  return v36;
}

uint64_t sub_1909BBAD0(void *a1, void *a2, char a3, void *a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  v13 = sub_190D572E0();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_190D572A0();
  v14 = a2;
  v15 = a4;
  v16 = a1;
  v17 = sub_190D57290();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  *(v18 + 32) = v14;
  *(v18 + 40) = a3;
  *(v18 + 48) = v15;
  *(v18 + 56) = v16;
  *(v18 + 64) = v5;
  sub_190857E08(0, 0, v12, &unk_190DE3938, v18);
}

uint64_t sub_1909BBC34(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  v11 = [a2 chat];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_opt_self() sharedRegistry];
    v14 = a3;
    v15 = [v13 allGUIDsForChat_];

    v16 = sub_190D57180();
    a3 = v14;
    *(v10 + 16) = v16;
  }

  if (qword_1EAD51C50 != -1)
  {
    swift_once();
  }

  v17 = sub_190D53040();
  __swift_project_value_buffer(v17, qword_1EAD9DF70);
  sub_190D52690();
  v18 = sub_190D53020();
  v19 = sub_190D57680();

  if (!os_log_type_enabled(v18, v19))
  {

    v31 = *(a3 + 16);
    if (v31)
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  v42 = v19;
  log = v18;
  v44 = a4;
  v45 = v5;
  v20 = swift_slowAlloc();
  v40 = swift_slowAlloc();
  v47 = v40;
  buf = v20;
  *v20 = 136315138;
  v21 = *(a3 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  if (!v21)
  {
    goto LABEL_27;
  }

  v46 = MEMORY[0x1E69E7CC0];
  sub_19082DBB4(0, v21, 0);
  v39 = a3;
  v23 = (a3 + 32);
  v22 = v46;
  do
  {
    v25 = *v23++;
    v24 = v25;
    if (v25 > 1)
    {
      switch(v24)
      {
        case 2:
          v27 = 0x746E656D75636F44;
          break;
        case 3:
          v27 = 0x6E6F697461636F4CLL;
          break;
        case 4:
          v26 = 0xE600000000000000;
          v27 = 0x74656C6C6157;
          goto LABEL_21;
        default:
          goto LABEL_20;
      }

      v26 = 0xE900000000000073;
      goto LABEL_21;
    }

    if (!v24)
    {
      v26 = 0xE600000000000000;
      v27 = 0x736F746F6850;
      goto LABEL_21;
    }

    if (v24 == 1)
    {
      v26 = 0xE500000000000000;
      v27 = 0x736B6E694CLL;
      goto LABEL_21;
    }

LABEL_20:
    v26 = 0xE700000000000000;
    v27 = 0x6E776F6E6B6E55;
LABEL_21:
    v29 = *(v46 + 16);
    v28 = *(v46 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_19082DBB4((v28 > 1), v29 + 1, 1);
    }

    *(v46 + 16) = v29 + 1;
    v30 = v46 + 16 * v29;
    *(v30 + 32) = v27;
    *(v30 + 40) = v26;
    --v21;
  }

  while (v21);
  a3 = v39;
LABEL_27:
  v32 = MEMORY[0x193AF2A20](v22, MEMORY[0x1E69E6158]);
  v34 = v33;

  v35 = sub_19021D9F8(v32, v34, &v47);

  *(buf + 4) = v35;
  _os_log_impl(&dword_19020E000, log, v42, "Running spotlight query for tabs %s to determine whether they have content.", buf, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v40);
  MEMORY[0x193AF7A40](v40, -1, -1);
  MEMORY[0x193AF7A40](buf, -1, -1);

  a4 = v44;
  v5 = v45;
  v31 = *(a3 + 16);
  if (v31)
  {
LABEL_28:
    v36 = (a3 + 32);
    do
    {
      v37 = *v36++;
      v47 = v37;
      sub_1909BCE3C(&v47, v10, a4, a2, a1, v5);
      --v31;
    }

    while (v31);
  }

LABEL_30:
}

uint64_t sub_1909BC0A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X8>)
{
  v32 = a2;
  v13 = sub_190D579B0();
  v31 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  _s14descr1F03EB3E1C9ViewModelCMa();
  swift_allocObject();
  v19 = a3;
  sub_190D50920();
  v20 = a5;
  v21 = a6;
  v22 = sub_190B6F624(v19, a4, v20, v21);

  v23 = v32;
  *a7 = a1;
  a7[1] = v23;
  a7[2] = v22;
  type metadata accessor for DetailsInfoTabView(0);
  v24 = objc_opt_self();
  sub_190D50920();
  sub_190D50920();
  v25 = [v24 defaultCenter];
  sub_190D579C0();

  v26 = v31;
  v27 = *(v31 + 16);
  v27(v15, v18, v13);
  v32 = a7;
  sub_190D55FC0();
  v28 = *(v26 + 8);
  v28(v18, v13);
  v29 = [v24 defaultCenter];
  if (qword_1EAD520B0 != -1)
  {
    swift_once();
  }

  sub_190D579C0();

  v27(v15, v18, v13);
  sub_190D55FC0();
  return (v28)(v18, v13);
}

id sub_1909BC378(uint64_t a1, void *a2, void *a3, char a4)
{
  v8 = type metadata accessor for CKBackgroundGalleryViewController();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_editingViewController] = 0;
  *&v9[OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_viewModel] = 0;
  v10 = OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_playgroundDelegate;
  *&v9[v10] = [objc_allocWithZone(type metadata accessor for GalleryImagePlaygroundManager()) init];
  *&v9[OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_suggestionGenerator] = 0;
  *&v9[OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_motionEventsManager] = 0;
  *&v9[OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_conversation] = a2;
  *&v9[OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_detailsViewCoordinator] = a3;
  *&v9[OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_contentOffsetProxy] = a1;
  v9[OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_wantsInspectorStyling] = a4;
  v15.receiver = v9;
  v15.super_class = v8;
  v11 = a2;
  v12 = a3;
  sub_190D50920();
  v13 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, 0, 0);
  sub_1909C15A0(&unk_1EAD45460, type metadata accessor for CKBackgroundGalleryViewController);
  return v13;
}

uint64_t sub_1909BC4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[8] = a4;
  v10 = sub_190D52880();
  v7[11] = v10;
  v7[12] = *(v10 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = sub_190D572A0();
  v7[15] = sub_190D57290();
  v11 = swift_task_alloc();
  v7[16] = v11;
  *v11 = v7;
  v11[1] = sub_1909BC608;

  return sub_1909C1070(a4, a5);
}

uint64_t sub_1909BC608(uint64_t a1)
{
  v2 = *v1;
  v2[17] = a1;

  v4 = sub_190D57240();
  v2[18] = v4;
  v2[19] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1909BC754, v4, v3);
}

uint64_t sub_1909BC754()
{
  if (*(v0 + 136))
  {

    return MEMORY[0x1EEE6DFA0](sub_1909BC7FC, 0, 0);
  }

  else
  {

    v1 = *(v0 + 8);

    return v1();
  }
}

uint64_t sub_1909BC7FC()
{
  *(v0 + 160) = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_1909BC888, v2, v1);
}

uint64_t sub_1909BC888()
{
  v1 = v0[17];
  v2 = v0[9];
  v3 = v0[8];

  type metadata accessor for DetailsPhotosContactResolver();
  swift_allocObject();
  sub_19087A098(v3);
  sub_1909C15A0(&qword_1EAD45600, type metadata accessor for DetailsPhotosContactResolver);
  sub_190D52C70();
  swift_allocObject();
  v4 = sub_190D52C30();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_190D50920();
  sub_190D52C60();

  type metadata accessor for DetailsPhotosTab();
  swift_allocObject();
  sub_190D50920();
  sub_1908D5FE0();
  sub_190D52940();
  swift_allocObject();
  sub_1909C15A0(&qword_1EAD45EB0, type metadata accessor for DetailsPhotosTab);
  sub_190D52950();
  v5 = 32;
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v4;
  v7 = v1;
  sub_190D52870();
  sub_190D52810();
  v8 = OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_persistedDetailsTabs;
  swift_beginAccess();
  v9 = *(v2 + v8);
  v10 = *(v9 + 2);
  v11 = v10;
  while (v11)
  {
    v12 = *&v9[v5];
    v5 += 8;
    --v11;
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v8) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_19083654C(0, v10 + 1, 1, v9);
    *(v2 + v8) = v9;
  }

  v15 = *(v9 + 2);
  v14 = *(v9 + 3);
  if (v15 >= v14 >> 1)
  {
    v9 = sub_19083654C((v14 > 1), v15 + 1, 1, v9);
  }

  *(v9 + 2) = v15 + 1;
  *&v9[8 * v15 + 32] = 0;
  *(v2 + v8) = v9;
  swift_endAccess();
LABEL_10:
  (*(v0[12] + 8))(v0[13], v0[11]);
  v16 = v0[18];
  v17 = v0[19];

  return MEMORY[0x1EEE6DFA0](sub_1909BCBC8, v16, v17);
}

uint64_t sub_1909BCBC8()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

id sub_1909BCC38(void *a1)
{
  type metadata accessor for PhotosGridDeleteAssetActionPerformer();
  [a1 registerPerformerClass:swift_getObjCClassFromMetadata() forType:*MEMORY[0x1E69C4838]];
  type metadata accessor for PhotosGridSaveToPhotosActionPerformer();
  [a1 registerPerformerClass:swift_getObjCClassFromMetadata() forType:*MEMORY[0x1E69C4808]];
  type metadata accessor for PhotosGridShowInConversationAssetActionPerformer();
  [a1 registerPerformerClass:swift_getObjCClassFromMetadata() forType:*MEMORY[0x1E69C47D0]];
  type metadata accessor for PhotosGridCopyAssetActionPerformer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = *MEMORY[0x1E69C4668];

  return [a1 registerPerformerClass:ObjCClassFromMetadata forType:v3];
}

void sub_1909BCD08()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = sub_190D56ED0();
      [v3 detailsCoordinatorRequestedOpenToMessageGUID:v1 messageGUID:v4];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1909BCDC0(uint64_t a1, void *a2)
{
  v3 = objc_allocWithZone(sub_190D52CB0());
  v4 = a2;
  sub_190D50920();
  sub_190D50920();
  return sub_190D52C90();
}

void sub_1909BCE3C(uint64_t *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v24 - v13;
  v15 = *a1;
  v16 = v15 - 1;
  if ((v15 - 1) <= 3)
  {
    v24[1] = *(&off_1E72F9498 + v16);
    v25 = *(&off_1F0410E50 + v16);
    v17 = sub_190D572E0();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    sub_190D572A0();
    v18 = a3;
    v19 = a4;
    v20 = a5;
    sub_190D50920();
    v21 = sub_190D57290();
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E85E0];
    v22[2] = v21;
    v22[3] = v23;
    v22[4] = a2;
    v22[5] = a3;
    v22[6] = v15;
    v22[7] = v19;
    v22[8] = v20;
    v22[9] = a6;
    sub_190857E08(0, 0, v14, v25, v22);
  }
}

uint64_t sub_1909BCFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[30] = a7;
  v8[31] = a8;
  v8[28] = a5;
  v8[29] = a6;
  v8[27] = a4;
  v9 = sub_190D52880();
  v8[32] = v9;
  v8[33] = *(v9 - 8);
  v8[34] = swift_task_alloc();
  v8[35] = sub_190D572A0();
  v8[36] = sub_190D57290();
  v11 = sub_190D57240();
  v8[37] = v11;
  v8[38] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1909BD0D4, v11, v10);
}

uint64_t sub_1909BD0D4()
{
  v1 = [objc_allocWithZone(CKLinkQueryController) init];
  v0[39] = v1;
  swift_beginAccess();
  sub_190D52690();
  v2 = sub_190D57160();
  v0[40] = v2;

  v0[2] = v0;
  v0[7] = v0 + 42;
  v0[3] = sub_1909BD258;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD551D0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_190892610;
  v0[13] = &block_descriptor_52;
  v0[14] = v3;
  [v1 hasDetailsResultsForChatGUIDs:v2 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1909BD258()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 296);

  return MEMORY[0x1EEE6DFA0](sub_1909BD360, v2, v1);
}

uint64_t sub_1909BD360()
{
  v1 = *(v0 + 336);

  if (v1 == 1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1909BD41C, 0, 0);
  }

  else
  {
    v2 = *(v0 + 312);

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1909BD41C()
{
  *(v0 + 328) = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_1909BD4A8, v2, v1);
}

uint64_t sub_1909BD4A8()
{
  v1 = v0[28];

  if (v1)
  {
    v2 = OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_persistedDetailsTabs;
    swift_beginAccess();
    v3 = *&v1[v2];
    v4 = *(v3 + 2);
    v5 = 32;
    v6 = v4;
    while (v6)
    {
      v7 = *&v3[v5];
      v5 += 8;
      --v6;
      if (v7 == v0[29])
      {
        goto LABEL_11;
      }
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v1[v2] = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_19083654C(0, v4 + 1, 1, v3);
      *&v1[v2] = v3;
    }

    v10 = *(v3 + 2);
    v9 = *(v3 + 3);
    if (v10 >= v9 >> 1)
    {
      v3 = sub_19083654C((v9 > 1), v10 + 1, 1, v3);
    }

    v11 = v0[29];
    *(v3 + 2) = v10 + 1;
    *&v3[8 * v10 + 32] = v11;
    *&v1[v2] = v3;
    swift_endAccess();
  }

LABEL_11:
  v12 = v0[39];
  v14 = v0[33];
  v13 = v0[34];
  v27 = v0[32];
  v15 = v0[30];
  v16 = v0[28];
  v17 = objc_allocWithZone(_s9ViewModelCMa_3(0));
  v18 = MEMORY[0x1E69E7CC0];
  *&v17[qword_1EAD5D3B8] = MEMORY[0x1E69E7CC0];
  *&v17[qword_1EAD5D3C0] = v18;
  sub_190D51C50();
  v19 = v15;
  v20 = v12;
  v21 = v1;
  v22 = sub_1909C0898(v19, v20, v16, &qword_1EAD566C8);
  type metadata accessor for DetailsLinksTab();
  swift_allocObject();
  v23 = v22;
  sub_1908F7BDC(v23);

  *(swift_allocObject() + 16) = v23;
  type metadata accessor for DetailsLinksTabView();
  sub_1909C15A0(&qword_1EAD45F28, type metadata accessor for DetailsLinksTab);
  sub_1909C15A0(&qword_1EAD45BE8, type metadata accessor for DetailsLinksTabView);
  sub_1909C15A0(&qword_1EAD45BE0, type metadata accessor for DetailsLinksTabView);
  sub_190D528A0();
  sub_190D52810();
  (*(v14 + 8))(v13, v27);
  v24 = v0[37];
  v25 = v0[38];

  return MEMORY[0x1EEE6DFA0](sub_1909C1660, v24, v25);
}

uint64_t sub_1909BD7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a8;
  v8[26] = v13;
  v8[23] = a6;
  v8[24] = a7;
  v8[21] = a4;
  v8[22] = a5;
  v8[27] = sub_190D572A0();
  v8[28] = sub_190D57290();
  v10 = sub_190D57240();
  v8[29] = v10;
  v8[30] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1909BD8A4, v10, v9);
}

uint64_t sub_1909BD8A4()
{
  v1 = [objc_allocWithZone(CKAttachmentsQueryController) init];
  v0[31] = v1;
  swift_beginAccess();
  sub_190D52690();
  v2 = sub_190D57160();
  v0[32] = v2;

  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_1909BDA28;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD551D0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_190892610;
  v0[13] = &block_descriptor_30_1;
  v0[14] = v3;
  [v1 hasDetailsResultsForChatGUIDs:v2 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1909BDA28()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1909BDB30, v2, v1);
}

uint64_t sub_1909BDB30()
{
  v1 = *(v0 + 272);

  if (v1 == 1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1909BDBE4, 0, 0);
  }

  else
  {
    v2 = *(v0 + 248);

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1909BDBE4()
{
  *(v0 + 264) = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_1909BDC70, v2, v1);
}

uint64_t sub_1909BDC70()
{
  v1 = v0[31];
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];

  sub_1909BDDB8(v6, v5, v4, v1, v3, v2);
  v7 = v0[29];
  v8 = v0[30];

  return MEMORY[0x1EEE6DFA0](sub_1909BDD50, v7, v8);
}

uint64_t sub_1909BDD50()
{
  v1 = *(v0 + 248);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1909BDDB8(char *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v25 = a4;
  v26 = a6;
  v27 = a5;
  v24 = a3;
  v9 = sub_190D52880();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_persistedDetailsTabs;
    swift_beginAccess();
    v14 = *&a1[v13];
    v15 = *(v14 + 2);
    v16 = 32;
    v17 = v15;
    while (v17)
    {
      v18 = *&v14[v16];
      v16 += 8;
      --v17;
      if (v18 == a2)
      {
        goto LABEL_11;
      }
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&a1[v13] = v14;
    v23 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_19083654C(0, v15 + 1, 1, v14);
      *&a1[v13] = v14;
    }

    v21 = *(v14 + 2);
    v20 = *(v14 + 3);
    if (v21 >= v20 >> 1)
    {
      v14 = sub_19083654C((v20 > 1), v21 + 1, 1, v14);
    }

    *(v14 + 2) = v21 + 1;
    *&v14[8 * v21 + 32] = a2;
    *&a1[v13] = v14;
    swift_endAccess();
  }

LABEL_11:
  sub_1909BDFAC(v24, v25, a1);
  sub_190D52810();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1909BDFAC(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(_s14descr1F03EACB9V9ViewModelCMa(0));
  v8[qword_1EAD54378] = 0;
  *&v8[qword_1EAD54380] = MEMORY[0x1E69E7CC0];
  sub_190D51C50();
  v9 = a3;
  v10 = sub_1909C0898(a1, a2, a3, &qword_1EAD543B8);
  type metadata accessor for DetailsAttachmentsTab();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v11 + 24) = 0;
  *(v11 + 32) = 5;
  v12 = v10;
  sub_190D51C50();
  v13 = v12;
  sub_1908EB7F4(v12);

  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v4;
  type metadata accessor for DetailsAttachmentsTabView();
  sub_1909C15A0(&qword_1EAD45AB0, type metadata accessor for DetailsAttachmentsTab);
  sub_1909C15A0(&qword_1EAD457C0, type metadata accessor for DetailsAttachmentsTabView);
  sub_1909C15A0(&qword_1EAD457B8, type metadata accessor for DetailsAttachmentsTabView);

  return sub_190D528A0();
}

uint64_t sub_1909BE1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[30] = a7;
  v8[31] = a8;
  v8[28] = a5;
  v8[29] = a6;
  v8[27] = a4;
  v9 = sub_190D52880();
  v8[32] = v9;
  v8[33] = *(v9 - 8);
  v8[34] = swift_task_alloc();
  v8[35] = sub_190D572A0();
  v8[36] = sub_190D57290();
  v11 = sub_190D57240();
  v8[37] = v11;
  v8[38] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1909BE2D4, v11, v10);
}

uint64_t sub_1909BE2D4()
{
  v1 = [objc_allocWithZone(CKLocationQueryController) init];
  v0[39] = v1;
  swift_beginAccess();
  sub_190D52690();
  v2 = sub_190D57160();
  v0[40] = v2;

  v0[2] = v0;
  v0[7] = v0 + 42;
  v0[3] = sub_1909BE458;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD551D0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_190892610;
  v0[13] = &block_descriptor_36_3;
  v0[14] = v3;
  [v1 hasDetailsResultsForChatGUIDs:v2 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1909BE458()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 296);

  return MEMORY[0x1EEE6DFA0](sub_1909BE560, v2, v1);
}

uint64_t sub_1909BE560()
{
  v1 = *(v0 + 336);

  if (v1 == 1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1909BE61C, 0, 0);
  }

  else
  {
    v2 = *(v0 + 312);

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1909BE61C()
{
  *(v0 + 328) = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_1909BE6A8, v2, v1);
}

uint64_t sub_1909BE6A8()
{
  v1 = v0[28];

  if (v1)
  {
    v2 = OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_persistedDetailsTabs;
    swift_beginAccess();
    v3 = *&v1[v2];
    v4 = *(v3 + 2);
    v5 = 32;
    v6 = v4;
    while (v6)
    {
      v7 = *&v3[v5];
      v5 += 8;
      --v6;
      if (v7 == v0[29])
      {
        goto LABEL_11;
      }
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v1[v2] = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_19083654C(0, v4 + 1, 1, v3);
      *&v1[v2] = v3;
    }

    v10 = *(v3 + 2);
    v9 = *(v3 + 3);
    if (v10 >= v9 >> 1)
    {
      v3 = sub_19083654C((v9 > 1), v10 + 1, 1, v3);
    }

    v11 = v0[29];
    *(v3 + 2) = v10 + 1;
    *&v3[8 * v10 + 32] = v11;
    *&v1[v2] = v3;
    swift_endAccess();
  }

LABEL_11:
  v12 = v0[39];
  v14 = v0[33];
  v13 = v0[34];
  v26 = v0[32];
  v15 = v0[30];
  v16 = v0[28];
  v17 = objc_allocWithZone(_s9ViewModelCMa_8(0));
  sub_190D51C50();
  v18 = v15;
  v19 = v12;
  v20 = v1;
  v21 = sub_1909C0898(v18, v19, v16, &qword_1EAD566E8);
  type metadata accessor for DetailsLocationsTab();
  swift_allocObject();
  v22 = v21;
  sub_190A650C4(v22);

  *(swift_allocObject() + 16) = v22;
  type metadata accessor for DetailsLocationsTabView();
  sub_1909C15A0(&qword_1EAD45BA8, type metadata accessor for DetailsLocationsTab);
  sub_1909C15A0(&qword_1EAD458F8, type metadata accessor for DetailsLocationsTabView);
  sub_1909C15A0(&qword_1EAD458F0, type metadata accessor for DetailsLocationsTabView);
  sub_190D528A0();
  sub_190D52810();
  (*(v14 + 8))(v13, v26);
  v23 = v0[37];
  v24 = v0[38];

  return MEMORY[0x1EEE6DFA0](sub_1909BE9D8, v23, v24);
}

uint64_t sub_1909BE9D8()
{
  v1 = *(v0 + 312);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1909BEA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[30] = a7;
  v8[31] = a8;
  v8[28] = a5;
  v8[29] = a6;
  v8[27] = a4;
  v9 = sub_190D52880();
  v8[32] = v9;
  v8[33] = *(v9 - 8);
  v8[34] = swift_task_alloc();
  v8[35] = sub_190D572A0();
  v8[36] = sub_190D57290();
  v11 = sub_190D57240();
  v8[37] = v11;
  v8[38] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1909BEB4C, v11, v10);
}

uint64_t sub_1909BEB4C()
{
  v1 = [objc_allocWithZone(CKWalletItemQueryController) init];
  v0[39] = v1;
  swift_beginAccess();
  sub_190D52690();
  v2 = sub_190D57160();
  v0[40] = v2;

  v0[2] = v0;
  v0[7] = v0 + 42;
  v0[3] = sub_1909BECD0;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD551D0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_190892610;
  v0[13] = &block_descriptor_42_1;
  v0[14] = v3;
  [v1 hasDetailsResultsForChatGUIDs:v2 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1909BECD0()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 296);

  return MEMORY[0x1EEE6DFA0](sub_1909BEDD8, v2, v1);
}

uint64_t sub_1909BEDD8()
{
  v1 = *(v0 + 336);

  if (v1 == 1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1909BEE94, 0, 0);
  }

  else
  {
    v2 = *(v0 + 312);

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1909BEE94()
{
  *(v0 + 328) = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_1909BEF20, v2, v1);
}

uint64_t sub_1909BEF20()
{
  v1 = v0[28];

  if (v1)
  {
    v2 = OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_persistedDetailsTabs;
    swift_beginAccess();
    v3 = *&v1[v2];
    v4 = *(v3 + 2);
    v5 = 32;
    v6 = v4;
    while (v6)
    {
      v7 = *&v3[v5];
      v5 += 8;
      --v6;
      if (v7 == v0[29])
      {
        goto LABEL_11;
      }
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v1[v2] = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_19083654C(0, v4 + 1, 1, v3);
      *&v1[v2] = v3;
    }

    v10 = *(v3 + 2);
    v9 = *(v3 + 3);
    if (v10 >= v9 >> 1)
    {
      v3 = sub_19083654C((v9 > 1), v10 + 1, 1, v3);
    }

    v11 = v0[29];
    *(v3 + 2) = v10 + 1;
    *&v3[8 * v10 + 32] = v11;
    *&v1[v2] = v3;
    swift_endAccess();
  }

LABEL_11:
  v12 = v0[39];
  v14 = v0[33];
  v13 = v0[34];
  v26 = v0[32];
  v15 = v0[30];
  v16 = v0[28];
  v17 = objc_allocWithZone(_s9ViewModelCMa_7(0));
  sub_190D51C50();
  v18 = v15;
  v19 = v12;
  v20 = v1;
  v21 = sub_1909C0898(v18, v19, v16, &qword_1EAD566D8);
  type metadata accessor for DetailsWalletTab();
  swift_allocObject();
  v22 = v21;
  sub_190A12E28(v22);

  *(swift_allocObject() + 16) = v22;
  type metadata accessor for DetailsWalletTabView();
  sub_1909C15A0(&qword_1EAD45E60, type metadata accessor for DetailsWalletTab);
  sub_1909C15A0(&qword_1EAD45B50, type metadata accessor for DetailsWalletTabView);
  sub_1909C15A0(&qword_1EAD45B48, type metadata accessor for DetailsWalletTabView);
  sub_190D528A0();
  sub_190D52810();
  (*(v14 + 8))(v13, v26);
  v23 = v0[37];
  v24 = v0[38];

  return MEMORY[0x1EEE6DFA0](sub_1909C1660, v23, v24);
}

uint64_t sub_1909BF250@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = 1;
  if (*a1 > 2)
  {
    if (v7 == 3)
    {
      v22 = [objc_allocWithZone(CKLocationQueryController) init];
      v23 = objc_allocWithZone(_s9ViewModelCMa_8(0));
      sub_190D51C50();
      v24 = a3;
      v9 = v22;
      v25 = sub_1909C0898(a2, v9, a3, &qword_1EAD566E8);
      type metadata accessor for DetailsLocationsTab();
      swift_allocObject();
      v26 = v25;
      sub_190A650C4(v26);

      *(swift_allocObject() + 16) = v26;
      type metadata accessor for DetailsLocationsTabView();
      sub_1909C15A0(&qword_1EAD45BA8, type metadata accessor for DetailsLocationsTab);
      sub_1909C15A0(&qword_1EAD458F8, type metadata accessor for DetailsLocationsTabView);
      sub_1909C15A0(&qword_1EAD458F0, type metadata accessor for DetailsLocationsTabView);
    }

    else
    {
      if (v7 != 4)
      {
        goto LABEL_12;
      }

      v10 = [objc_allocWithZone(CKWalletItemQueryController) init];
      v11 = objc_allocWithZone(_s9ViewModelCMa_7(0));
      sub_190D51C50();
      v12 = a3;
      v9 = v10;
      v13 = sub_1909C0898(a2, v9, a3, &qword_1EAD566D8);
      type metadata accessor for DetailsWalletTab();
      swift_allocObject();
      v14 = v13;
      sub_190A12E28(v14);

      *(swift_allocObject() + 16) = v14;
      type metadata accessor for DetailsWalletTabView();
      sub_1909C15A0(&qword_1EAD45E60, type metadata accessor for DetailsWalletTab);
      sub_1909C15A0(&qword_1EAD45B50, type metadata accessor for DetailsWalletTabView);
      sub_1909C15A0(&qword_1EAD45B48, type metadata accessor for DetailsWalletTabView);
    }

LABEL_10:
    sub_190D528A0();
    goto LABEL_11;
  }

  if (v7 == 1)
  {
    v15 = [objc_allocWithZone(CKLinkQueryController) init];
    v16 = objc_allocWithZone(_s9ViewModelCMa_3(0));
    v17 = MEMORY[0x1E69E7CC0];
    *&v16[qword_1EAD5D3B8] = MEMORY[0x1E69E7CC0];
    *&v16[qword_1EAD5D3C0] = v17;
    sub_190D51C50();
    v18 = a3;
    v19 = a2;
    v9 = v15;
    v20 = sub_1909C0898(v19, v9, a3, &qword_1EAD566C8);
    type metadata accessor for DetailsLinksTab();
    swift_allocObject();
    v21 = v20;
    sub_1908F7BDC(v21);

    *(swift_allocObject() + 16) = v21;
    type metadata accessor for DetailsLinksTabView();
    sub_1909C15A0(&qword_1EAD45F28, type metadata accessor for DetailsLinksTab);
    sub_1909C15A0(&qword_1EAD45BE8, type metadata accessor for DetailsLinksTabView);
    sub_1909C15A0(&qword_1EAD45BE0, type metadata accessor for DetailsLinksTabView);
    goto LABEL_10;
  }

  if (v7 == 2)
  {
    v9 = [objc_allocWithZone(CKAttachmentsQueryController) init];
    sub_1909BDFAC(a2, v9, a3);
LABEL_11:

    v8 = 0;
  }

LABEL_12:
  v27 = sub_190D52880();
  return (*(*(v27 - 8) + 56))(a4, v8, 1, v27);
}

uint64_t sub_1909BF838@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v24 - v10;
  v12 = sub_190D515F0();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  KeyPath = swift_getKeyPath();
  v14 = type metadata accessor for DetailsLinksTabView();
  *(a3 + v14[7]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  swift_storeEnumTagMultiPayload();
  *(a3 + v14[8]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  swift_storeEnumTagMultiPayload();
  *(a3 + v14[9]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  v24[1] = a2;
  _s9ViewModelCMa_3(0);
  sub_190D50920();
  v15 = a2;
  sub_190D55FC0();
  v16 = v24[3];
  *(a3 + 8) = v24[2];
  *(a3 + 16) = v16;
  v17 = sub_190D55490();
  __asm { FMOV            V0.2D, #12.0 }

  *(a3 + 24) = _Q0;
  *(a3 + 40) = 0x4028000000000000;
  *(a3 + 48) = v17;
  *(a3 + 56) = 0x4024000000000000;
  *(a3 + v14[10]) = 1;
  sub_190844DA8(v11, v8);
  sub_190D55FC0();
  return sub_19022EEA4(v11, &unk_1EAD55F20);
}

uint64_t sub_1909BFA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v51 = a1;
  *&v52 = a2;
  v4 = sub_190D563C0();
  v58 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_190D563D0();
  v53 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  v15 = sub_190D52BC0();
  v56 = *(v15 - 8);
  v57 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD51AB0 != -1)
  {
    swift_once();
  }

  v18 = sub_190D52650();
  __swift_project_value_buffer(v18, qword_1EAD9DCB0);
  v50 = v17;
  sub_190D525A0();
  v19 = type metadata accessor for DetailsAttachmentsTabView();
  v20 = *(v19 + 28);
  v21 = v19;
  *(a3 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  swift_storeEnumTagMultiPayload();
  v22 = sub_190D515F0();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  sub_190844DA8(v14, v11);
  sub_190D55FC0();
  sub_19022EEA4(v14, &unk_1EAD55F20);
  v23 = v21[9];
  *(a3 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  swift_storeEnumTagMultiPayload();
  v24 = v21[12];
  *(a3 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  swift_storeEnumTagMultiPayload();
  v25 = v52;
  *a3 = v51;
  v26 = v21[6];
  v27 = v21;
  v55 = v21;
  v28 = (a3 + v26);
  v59 = v25;
  _s14descr1F03EACB9V9ViewModelCMa(0);
  sub_190D50920();
  v29 = v25;
  sub_190D55FC0();
  v30 = v61;
  *v28 = v60;
  v28[1] = v30;
  v31 = *(v56 + 16);
  v32 = a3 + v27[5];
  v51 = v27[5];
  v31(v32, v17, v57);
  v52 = xmmword_190DE3850;
  *v6 = xmmword_190DE3850;
  v49 = *MEMORY[0x1E697D748];
  v33 = *(v58 + 104);
  v58 += 104;
  v48 = v33;
  v33(v6);
  sub_190D52B10();
  sub_190D564E0();
  v34 = v54;
  sub_190D563E0();
  v35 = sub_190D571D0();
  *(v35 + 16) = 3;
  v36 = v53;
  v47 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v37 = v35 + v47;
  v45 = v4;
  v38 = *(v53 + 16);
  v38(v35 + v47, v34, v7);
  v46 = *(v36 + 72);
  v39 = v46;
  v38(v37 + v46, v34, v7);
  v40 = *(v36 + 32);
  v40(v37 + 2 * v39, v34, v7);
  *(a3 + v55[10]) = v35;
  *v6 = v52;
  v48(v6, v49, v45);
  sub_190D52B10();
  sub_190D564E0();
  sub_190D563E0();
  v41 = sub_190D571D0();
  *(v41 + 16) = 2;
  v42 = v41 + v47;
  v38(v41 + v47, v34, v7);
  v40(v42 + v46, v34, v7);
  result = (*(v56 + 8))(v50, v57);
  *(a3 + v55[11]) = v41;
  return result;
}

uint64_t sub_1909C0098@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = sub_190D563C0();
  v6 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = sub_190D515F0();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v16 = type metadata accessor for DetailsLocationsTabView();
  *(a3 + v16[5]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  swift_storeEnumTagMultiPayload();
  *(a3 + v16[6]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  swift_storeEnumTagMultiPayload();
  *(a3 + v16[7]) = a1;
  v17 = (a3 + v16[8]);
  v28 = a2;
  _s9ViewModelCMa_8(0);
  sub_190D50920();
  v18 = a2;
  sub_190D55FC0();
  v19 = v30;
  *v17 = v29;
  v17[1] = v19;
  *(a3 + v16[9]) = 2;
  sub_190844DA8(v13, v10);
  sub_190D55FC0();
  sub_19022EEA4(v13, &unk_1EAD55F20);
  v20 = v16[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58BA0);
  sub_190D563D0();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_190DD1DA0;
  v26 = xmmword_190DE3850;
  *v8 = xmmword_190DE3850;
  v22 = *MEMORY[0x1E697D748];
  v23 = *(v6 + 104);
  v24 = v27;
  v23(v8, v22, v27);
  sub_190D52620();
  sub_190D563E0();
  *v8 = v26;
  v23(v8, v22, v24);
  sub_190D52620();
  result = sub_190D563E0();
  *(a3 + v20) = v21;
  return result;
}

uint64_t sub_1909C0490@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_190D563C0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v27 = &v25 - v12;
  v14 = sub_190D515F0();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v16 = type metadata accessor for DetailsWalletTabView();
  *(a3 + v16[5]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  swift_storeEnumTagMultiPayload();
  *(a3 + v16[6]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  swift_storeEnumTagMultiPayload();
  *(a3 + v16[7]) = a1;
  v17 = (a3 + v16[8]);
  v30 = a2;
  _s9ViewModelCMa_7(0);
  sub_190D50920();
  v18 = a2;
  sub_190D55FC0();
  v19 = v32;
  *v17 = v31;
  v17[1] = v19;
  v26 = v16[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58BA0);
  sub_190D563D0();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_190DD1DA0;
  v25 = xmmword_190DE3850;
  *v9 = xmmword_190DE3850;
  v21 = *MEMORY[0x1E697D748];
  v22 = *(v7 + 104);
  v22(v9, v21, v6);
  sub_190D52620();
  sub_190D563E0();
  *v9 = v25;
  v22(v9, v21, v6);
  sub_190D52620();
  sub_190D563E0();
  v23 = v27;
  *(a3 + v26) = v20;
  *(a3 + v16[10]) = 2;
  sub_190844DA8(v23, v28);
  sub_190D55FC0();
  return sub_19022EEA4(v23, &unk_1EAD55F20);
}

id sub_1909C0898(void *a1, void *a2, void *a3, uint64_t *a4)
{
  v9 = MEMORY[0x1E69E7CC0];
  *&v4[qword_1EAD62988] = MEMORY[0x1E69E7CC0];
  *&v4[qword_1EAD62990] = v9;
  *&v4[qword_1EAD629A8] = 0;
  v4[qword_1EAD629B0] = 0;
  *&v4[qword_1EAD629B8] = v9;
  v4[qword_1EAD629C0] = 0;
  v4[qword_1EAD629C8] = 0;
  v4[qword_1EAD629D0] = 0;
  sub_190D51C50();
  *&v4[qword_1EAD62978] = a1;
  v10 = a1;
  v11 = [v10 isGroupConversation];
  v4[qword_1EAD62980] = v11;
  [a2 setMode_];
  *&v4[qword_1EAD62998] = a2;
  *&v4[qword_1EAD629A0] = a3;
  v12 = a3;
  v13 = a2;
  v19.receiver = v4;
  v19.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v14 = objc_msgSendSuper2(&v19, sel_init);
  [v13 setDelegate_];
  v15 = sub_190D56ED0();
  [v13 searchWithText_];

  if (a3)
  {
    v16 = v12;
    v17 = v14;
    sub_1909C0E7C(v17, v16);

    v10 = v16;
    v13 = v17;
  }

  return v14;
}

uint64_t sub_1909C0A74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_190221DA0;

  return sub_1909BEA48(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1909C0B60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_190221DA0;

  return sub_1909BE1D0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1909C0C4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_190221DA4;

  return sub_1909BD7F8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_2Tm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1909C0D90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_190221DA0;

  return sub_1909BCFD0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1909C0E7C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakDetailsContextMenuActionsDelegate();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 24) = &off_1F0423CE0;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_contextMenuActionDelegates;
  v5 = swift_beginAccess();
  MEMORY[0x193AF29E0](v5);
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_190D571A0();
  }

  sub_190D571E0();
  return swift_endAccess();
}

uint64_t sub_1909C0F90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_190221DA0;

  return sub_1909BC4E8(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1909C1070(uint64_t a1, char a2)
{
  *(v2 + 72) = a2;
  *(v2 + 16) = a1;
  sub_190D572A0();
  *(v2 + 24) = sub_190D57290();
  v4 = sub_190D57240();
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1909C110C, v4, v3);
}

uint64_t sub_1909C110C()
{
  v1 = [*(v0 + 16) deviceIndependentID];
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = v1;
    v4 = sub_190D56F10();
    v6 = v5;

    *(v0 + 48) = v6;
    sub_1909C15F0();
    v7 = [v2 isGroupConversation];
    v8 = swift_task_alloc();
    *(v0 + 56) = v8;
    *v8 = v0;
    v8[1] = sub_1909C131C;
    v9 = *(v0 + 72);

    return MEMORY[0x1EEDF61C8](v4, v6, v7, v9, sub_1909BCC38, 0);
  }

  else
  {

    if (qword_1EAD51C50 != -1)
    {
      swift_once();
    }

    v10 = sub_190D53040();
    __swift_project_value_buffer(v10, qword_1EAD9DF70);
    v11 = sub_190D53020();
    v12 = sub_190D576A0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_19020E000, v11, v12, "conversation.deviceIndependentID was nil, will NOT show photos tab.", v13, 2u);
      MEMORY[0x193AF7A40](v13, -1, -1);
    }

    v14 = *(v0 + 8);

    return v14(0);
  }
}

uint64_t sub_1909C131C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 64) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1909C1468, v4, v3);
}

uint64_t sub_1909C1468()
{
  v1 = *(v0 + 64);

  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    if (qword_1EAD51C50 != -1)
    {
      swift_once();
    }

    v3 = sub_190D53040();
    __swift_project_value_buffer(v3, qword_1EAD9DF70);
    v4 = sub_190D53020();
    v5 = sub_190D576A0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v4, v5, "Syndicated assets configuration returned nil, will NOT show photos tab.", v6, 2u);
      MEMORY[0x193AF7A40](v6, -1, -1);
    }

    v2 = 0;
  }

  v7 = *(v0 + 8);

  return v7(v2);
}

uint64_t sub_1909C15A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1909C15F0()
{
  result = qword_1EAD44F90;
  if (!qword_1EAD44F90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD44F90);
  }

  return result;
}

BOOL sub_1909C1664(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58BA8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  sub_190D16014(a2, &v9 - v4);
  v6 = sub_190D56BB0();
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6) != 1;
  sub_190249580(v5);
  return v7;
}

id CKBalloonDescriptorObjcWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKBalloonDescriptorObjcWrapper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKBalloonDescriptorObjcWrapper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CKBalloonDescriptorObjcWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKBalloonDescriptorObjcWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of static CKBalloonDescriptorObjcWrapper.needsBubbleMaterial(for:traitCollection:)(int *a1)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *(a1 + 24);
  v5 = *(a1 + 96);
  v6 = *(a1 + 120);
  v7 = *(a1 + 121);
  v8 = *(a1 + 122);
  v9 = *(a1 + 123);
  v10 = *(a1 + 124);
  v11 = *(v1 + 80);
  v15 = *a1;
  v16 = v2;
  v17 = v3;
  v18 = v4;
  v12 = *(a1 + 3);
  v19 = *(a1 + 2);
  v20 = v12;
  v13 = *(a1 + 5);
  v21 = *(a1 + 4);
  v22 = v13;
  v23 = v5;
  v24 = *(a1 + 26);
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v28 = v9;
  v29 = v10;
  return v11(&v15) & 1;
}

uint64_t dispatch thunk of static CKBalloonDescriptorObjcWrapper.needsGlassMaterial(for:traitCollection:)(int *a1)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *(a1 + 24);
  v5 = *(a1 + 96);
  v6 = *(a1 + 120);
  v7 = *(a1 + 121);
  v8 = *(a1 + 122);
  v9 = *(a1 + 123);
  v10 = *(a1 + 124);
  v11 = *(v1 + 88);
  v15 = *a1;
  v16 = v2;
  v17 = v3;
  v18 = v4;
  v12 = *(a1 + 3);
  v19 = *(a1 + 2);
  v20 = v12;
  v13 = *(a1 + 5);
  v21 = *(a1 + 4);
  v22 = v13;
  v23 = v5;
  v24 = *(a1 + 26);
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v28 = v9;
  v29 = v10;
  return v11(&v15) & 1;
}

void sub_1909C1B30()
{
  sub_190D52850();
  if (v0 <= 0x3F)
  {
    sub_1909C1C44(319, &qword_1EAD58BB8, MEMORY[0x1E69957E0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      _s14descr1F03EB3E1C9ViewModelCMa();
      if (v2 <= 0x3F)
      {
        sub_1909C1C44(319, &qword_1EAD58BC0, MEMORY[0x1E6969F20], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1909C1C44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1909C1CA8@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v32 = sub_190D526C0();
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DetailsInfoTabView(0);
  v30 = *(v3 - 8);
  v29 = *(v30 + 64);
  v27[2] = v3 - 8;
  MEMORY[0x1EEE9AC00](v3 - 8);
  v28 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58BC8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v27 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58BD0);
  MEMORY[0x1EEE9AC00](v36);
  v10 = v27 - v9;
  v37 = v1;
  type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent(0);
  sub_1909C748C(&qword_1EAD58BD8, type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent);
  sub_190D50920();
  sub_190D52590();
  sub_190233640(&qword_1EAD58BE0, &qword_1EAD58BC8);
  v35 = v10;
  sub_190D55AA0();
  (*(v6 + 8))(v8, v5);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58BE8);
  v27[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58BB0);
  sub_190D55FD0();
  v12 = v1;
  v13 = v28;
  sub_1909C7D40(v1, v28, type metadata accessor for DetailsInfoTabView);
  v14 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v15 = swift_allocObject();
  sub_1909C7DA8(v13, v15 + v14, type metadata accessor for DetailsInfoTabView);
  v16 = *(v11 + 56);
  v18 = v35;
  v17 = v36;
  v19 = &v35[v16];
  *v19 = sub_1909C72B8;
  v19[1] = v15;
  sub_190D55FD0();
  sub_1909C7D40(v12, v13, type metadata accessor for DetailsInfoTabView);
  v20 = swift_allocObject();
  sub_1909C7DA8(v13, v20 + v14, type metadata accessor for DetailsInfoTabView);
  v21 = &v18[*(v17 + 56)];
  *v21 = sub_1909C90B8;
  *(v21 + 1) = v20;
  v22 = v31;
  sub_190D52750();
  sub_1909C7D40(v12, v13, type metadata accessor for DetailsInfoTabView);
  v23 = swift_allocObject();
  sub_1909C7DA8(v13, v23 + v14, type metadata accessor for DetailsInfoTabView);
  sub_190233640(&qword_1EAD58BF0, &qword_1EAD58BD0);
  sub_1909C748C(&qword_1EAD58BF8, MEMORY[0x1E6995740]);
  v24 = v32;
  v25 = v35;
  sub_190D55C20();

  (*(v34 + 8))(v22, v24);
  return sub_19022EEA4(v25, &qword_1EAD58BD0);
}

uint64_t sub_1909C2230@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  *a2 = *(a1 + 16);
  v4 = type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent(0);
  sub_190D50920();
  sub_190D50920();
  result = sub_190D52D10();
  *(a2 + *(v4 + 24)) = v3;
  return result;
}

uint64_t sub_1909C2298@<X0>(uint64_t a1@<X8>)
{
  v102 = a1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58C10);
  MEMORY[0x1EEE9AC00](v97);
  v94 = &v85[-v2];
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58C18);
  v99 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v85[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58C20);
  v103 = *(v4 - 8);
  v104 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v101 = &v85[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v100 = &v85[-v7];
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58C28);
  v92 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v88 = &v85[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58C30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v98 = &v85[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v112 = &v85[-v12];
  v110 = sub_190D54E50();
  v13 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v85[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v105 = type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent(0);
  v107 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v108 = v15;
  v16 = &v85[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58C38);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v85[-v18];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58C40);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v21 = &v85[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58C48);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v111 = &v85[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v85[-v25];
  v114 = v1;
  v27 = *v1;
  v28 = sub_190B6E46C();
  v113 = v26;
  v93 = v13;
  v91 = v16;
  if (v28 || (swift_getKeyPath(), v119 = v27, sub_1909C748C(&qword_1EAD45D30, _s14descr1F03EB3E1C9ViewModelCMa), sub_190D51C20(), , swift_beginAccess(), sub_190A5E14C(0, *(v27 + 72))))
  {
    v87 = v27;
    v29 = v19;
    sub_1909C7D40(v114, v16, type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent);
    v30 = (*(v107 + 80) + 16) & ~*(v107 + 80);
    v31 = swift_allocObject();
    sub_1909C7DA8(v16, v31 + v30, type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent);
    *v19 = sub_1909C7F24;
    v19[1] = v31;
    sub_190D52D10();
    v32 = sub_190D552C0();
    sub_190D52CD0();
    v34 = v33;
    v35 = v109;
    sub_190D54E40();
    v36 = sub_190233640(&qword_1EAD58C70, &qword_1EAD58C38);
    MEMORY[0x193AF10D0](v32, v34, 0, v35, v17, v36);
    v37 = *(v13 + 8);
    v38 = v110;
    v37(v35, v110);
    sub_19022EEA4(v29, &qword_1EAD58C38);
    v86 = sub_190D552D0();
    v26 = v113;
    sub_190D52CC0();
    v40 = v39 * 0.5;
    sub_190D54E40();
    v117 = v17;
    v118 = v36;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v42 = v90;
    MEMORY[0x193AF10D0](v86, *&v40, 0, v35, v90, OpaqueTypeConformance2);
    v37(v35, v38);
    v27 = v87;
    (*(v89 + 8))(v21, v42);
    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58C50);
  v45 = 1;
  (*(*(v44 - 8) + 56))(v26, v43, 1, v44);
  swift_getKeyPath();
  v117 = v27;
  sub_1909C748C(&qword_1EAD45D30, _s14descr1F03EB3E1C9ViewModelCMa);
  sub_190D51C20();

  swift_beginAccess();
  if (sub_190A5E14C(4u, *(v27 + 72)))
  {
    v46 = *&v114[*(v105 + 24)];
    v47 = v88;
    *v88 = v27;
    *(v47 + 8) = v46;
    type metadata accessor for ParticipantGridSectionContent();
    sub_190D50920();
    sub_190D50920();
    sub_190D529C0();
    v115 = sub_190D55DA0();
    v48 = sub_190D561E0();
    *(v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58C68) + 36)) = v48;
    LOBYTE(v48) = sub_190D552D0();
    sub_190D52CC0();
    sub_190D539C0();
    v49 = v47 + *(v106 + 36);
    *v49 = v48;
    *(v49 + 8) = v50;
    *(v49 + 16) = v51;
    *(v49 + 24) = v52;
    *(v49 + 32) = v53;
    *(v49 + 40) = 0;
    sub_19081E40C(v47, v112, &qword_1EAD58C28);
    v45 = 0;
  }

  (*(v92 + 56))(v112, v45, 1, v106);
  v54 = v91;
  sub_1909C7D40(v114, v91, type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent);
  v55 = (*(v107 + 80) + 16) & ~*(v107 + 80);
  v56 = swift_allocObject();
  sub_1909C7DA8(v54, v56 + v55, type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent);
  v57 = v94;
  *v94 = sub_1909C7E10;
  *(v57 + 8) = v56;
  v58 = v97;
  sub_190D52D10();
  v59 = sub_190D552C0();
  v60 = sub_190B6E100();
  v61 = v109;
  sub_190D54E40();
  v62 = sub_190233640(&qword_1EAD58C58, &qword_1EAD58C10);
  v63 = v96;
  MEMORY[0x193AF10D0](v59, *&v60, 0, v61, v58, v62);
  v114 = *(v93 + 8);
  v64 = v110;
  (v114)(v61, v110);
  sub_19022EEA4(v57, &qword_1EAD58C10);
  v65 = sub_190D552D0();
  v66 = sub_190D525E0();
  LOBYTE(v54) = v67;
  sub_190D54E40();
  v115 = v58;
  v116 = v62;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = v100;
  v70 = v65;
  v71 = v95;
  MEMORY[0x193AF10D0](v70, v66, v54 & 1, v61, v95, v68);
  (v114)(v61, v64);
  (*(v99 + 8))(v63, v71);
  v72 = v111;
  sub_19022FD14(v113, v111, &qword_1EAD58C48);
  v73 = v112;
  v74 = v98;
  sub_19022FD14(v112, v98, &qword_1EAD58C30);
  v76 = v103;
  v75 = v104;
  v77 = v69;
  v78 = *(v103 + 16);
  v79 = v101;
  v78(v101, v69, v104);
  v80 = v72;
  v81 = v102;
  sub_19022FD14(v80, v102, &qword_1EAD58C48);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58C60);
  sub_19022FD14(v74, v81 + *(v82 + 48), &qword_1EAD58C30);
  v78((v81 + *(v82 + 64)), v79, v75);
  v83 = *(v76 + 8);
  v83(v77, v75);
  sub_19022EEA4(v73, &qword_1EAD58C30);
  sub_19022EEA4(v113, &qword_1EAD58C48);
  v83(v79, v75);
  sub_19022EEA4(v74, &qword_1EAD58C30);
  return sub_19022EEA4(v111, &qword_1EAD58C48);
}

uint64_t sub_1909C3014@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = _s11ContentViewVMa_1();
  v36 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v34 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57D90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58C78);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v33 = &v32 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58C80);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v37 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v19 = *a1;
  swift_getKeyPath();
  v39 = v19;
  sub_1909C748C(&qword_1EAD45D30, _s14descr1F03EB3E1C9ViewModelCMa);
  sub_190D51C20();

  swift_beginAccess();
  if (sub_190A5E14C(0, *(v19 + 72)))
  {
    v20 = sub_190D50920();
    v38 = sub_19095CACC(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58C90);
    v32 = v3;
    sub_1909C829C(&qword_1EAD58C98, &qword_1EAD58C90, &unk_190DE3B90, sub_19095CA24);
    v21 = v33;
    v3 = v32;
    sub_190D55650();

    (*(v12 + 32))(v18, v21, v11);
  }

  v22 = v18;
  v23 = 1;
  v24 = v22;
  (*(v12 + 56))();
  if (sub_190B6E46C())
  {
    v25 = v34;
    *v34 = *(v19 + 48);
    v26 = objc_opt_self();
    sub_190D50920();
    v27 = [v26 defaultCenter];
    sub_190D579C0();

    sub_1909C7DA8(v25, v10, _s11ContentViewVMa_1);
    v23 = 0;
  }

  (*(v36 + 56))(v10, v23, 1, v3);
  v28 = v37;
  sub_19022FD14(v24, v37, &qword_1EAD58C80);
  sub_19022FD14(v10, v7, &qword_1EAD57D90);
  v29 = v35;
  sub_19022FD14(v28, v35, &qword_1EAD58C80);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58C88);
  sub_19022FD14(v7, v29 + *(v30 + 48), &qword_1EAD57D90);
  sub_19022EEA4(v10, &qword_1EAD57D90);
  sub_19022EEA4(v24, &qword_1EAD58C80);
  sub_19022EEA4(v7, &qword_1EAD57D90);
  return sub_19022EEA4(v28, &qword_1EAD58C80);
}

uint64_t sub_1909C3538(uint64_t *a1)
{
  v2 = type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = *a1;
  swift_getKeyPath();
  v9[1] = v5;
  sub_1909C748C(&qword_1EAD45D30, _s14descr1F03EB3E1C9ViewModelCMa);
  sub_190D51C20();

  swift_beginAccess();
  v9[0] = *(v5 + 72);
  sub_1909C7D40(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1909C7DA8(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent);
  sub_190D52690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58CA8);
  sub_190233640(&qword_1EAD58CB0, &qword_1EAD58CA0);
  sub_1909C8040();
  sub_1909C8B74();
  return sub_190D56290();
}

uint64_t sub_1909C3798@<X0>(char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v188 = a2;
  v193 = a3;
  v194 = a1;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58E40);
  v161 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v160 = &v115 - v3;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58E50);
  MEMORY[0x1EEE9AC00](v172);
  v173 = &v115 - v4;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58E20);
  MEMORY[0x1EEE9AC00](v180);
  v175 = &v115 - v5;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58E30);
  v138 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v137 = &v115 - v6;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58E10);
  v136 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v135 = &v115 - v7;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58E58);
  MEMORY[0x1EEE9AC00](v177);
  v179 = &v115 - v8;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58E60);
  MEMORY[0x1EEE9AC00](v153);
  v155 = &v115 - v9;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58DF0);
  MEMORY[0x1EEE9AC00](v178);
  v158 = &v115 - v10;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58DE0);
  MEMORY[0x1EEE9AC00](v192);
  v181 = &v115 - v11;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58E00);
  v133 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v131 = &v115 - v12;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58DD0);
  v134 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v132 = &v115 - v13;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58E68);
  MEMORY[0x1EEE9AC00](v148);
  v150 = &v115 - v14;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58DB0);
  MEMORY[0x1EEE9AC00](v170);
  v151 = &v115 - v15;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58DC0);
  v130 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v129 = &v115 - v16;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58DA0);
  v128 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v127 = &v115 - v17;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58E70);
  MEMORY[0x1EEE9AC00](v167);
  v169 = &v115 - v18;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58E78);
  MEMORY[0x1EEE9AC00](v146);
  v147 = &v115 - v19;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58D78);
  MEMORY[0x1EEE9AC00](v168);
  v149 = &v115 - v20;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58D68);
  MEMORY[0x1EEE9AC00](v187);
  v171 = &v115 - v21;
  v123 = sub_190D52990();
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v115 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58E80);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v116 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v119 = &v115 - v26;
  v27 = type metadata accessor for DetailsInlineContactCard();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v120 = &v115 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58D88);
  MEMORY[0x1EEE9AC00](v144);
  v117 = &v115 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v126 = &v115 - v31;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58D58);
  v125 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v124 = &v115 - v32;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58E88);
  MEMORY[0x1EEE9AC00](v140);
  v141 = &v115 - v33;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58D38);
  MEMORY[0x1EEE9AC00](v166);
  v142 = &v115 - v34;
  v35 = type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent(0);
  v182 = *(v35 - 8);
  v36 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58D48);
  v121 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v118 = &v115 - v37;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58E90);
  MEMORY[0x1EEE9AC00](v189);
  v191 = &v115 - v38;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58E98);
  MEMORY[0x1EEE9AC00](v183);
  v185 = &v115 - v39;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58EA0);
  MEMORY[0x1EEE9AC00](v162);
  v164 = &v115 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58EA8);
  MEMORY[0x1EEE9AC00](v41);
  v43 = (&v115 - v42);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58CE8);
  MEMORY[0x1EEE9AC00](v163);
  v139 = &v115 - v44;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58CD8);
  MEMORY[0x1EEE9AC00](v184);
  v165 = &v115 - v45;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58CC8);
  MEMORY[0x1EEE9AC00](v190);
  v186 = &v115 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58D08);
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v115 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58CF8);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v115 - v52;
  switch(*v194)
  {
    case 1:
      v79 = *(*v188 + 16);
      v80 = [v79 chat];
      v81 = [v80 conversation];

      if (v81)
      {
        v194 = &v115;
        MEMORY[0x1EEE9AC00](v82);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58D18);
        sub_1909C83A8();
        sub_190D562E0();

        (*(v48 + 32))(v53, v50, v47);
        (*(v48 + 56))(v53, 0, 1, v47);
      }

      else
      {
        (*(v48 + 56))(v53, 1, 1, v47);
      }

      sub_19022FD14(v53, v43, &qword_1EAD58CF8);
      swift_storeEnumTagMultiPayload();
      sub_1909C829C(&qword_1EAD58CF0, &qword_1EAD58CF8, &unk_190DE3BC0, sub_1909C8318);
      sub_1909C8490();
      v112 = v139;
      sub_190D54C50();
      sub_19022FD14(v112, v164, &qword_1EAD58CE8);
      swift_storeEnumTagMultiPayload();
      sub_1909C81E4();
      sub_1909C84E4();
      v113 = v165;
      sub_190D54C50();
      sub_19022EEA4(v112, &qword_1EAD58CE8);
      sub_19022FD14(v113, v185, &qword_1EAD58CD8);
      swift_storeEnumTagMultiPayload();
      sub_1909C8158();
      sub_1909C85C4();
      v114 = v186;
      sub_190D54C50();
      sub_19022EEA4(v113, &qword_1EAD58CD8);
      sub_19022FD14(v114, v191, &qword_1EAD58CC8);
      swift_storeEnumTagMultiPayload();
      sub_1909C80CC();
      sub_1909C88D0();
      sub_190D54C50();
      sub_19022EEA4(v114, &qword_1EAD58CC8);
      return sub_19022EEA4(v53, &qword_1EAD58CF8);
    case 3:
      v66 = v120;
      sub_190D52750();
      v67 = v119;
      sub_190D52D00();
      v68 = v116;
      sub_19022FD14(v67, v116, &qword_1EAD58E80);
      v69 = v122;
      v70 = v123;
      if ((*(v122 + 48))(v68, 1, v123) == 1)
      {
        sub_19022EEA4(v67, &qword_1EAD58E80);
        v71 = 0;
      }

      else
      {
        (*(v69 + 32))(v115, v68, v70);
        sub_1909C748C(&qword_1EAD58EE8, MEMORY[0x1E6995820]);
        v71 = sub_190D561E0();
        sub_19022EEA4(v67, &qword_1EAD58E80);
      }

      v104 = v191;
      v105 = v144;
      v106 = v117;
      sub_1909C7DA8(v66, v117, type metadata accessor for DetailsInlineContactCard);
      *(v106 + *(v105 + 36)) = v71;
      v107 = v106;
      v108 = v126;
      sub_19081E40C(v107, v126, &qword_1EAD58D88);
      sub_19022FD14(v108, v147, &qword_1EAD58D88);
      swift_storeEnumTagMultiPayload();
      sub_1909C8708();
      sub_190233640(&qword_1EAD58D98, &qword_1EAD58DA0);
      v109 = v149;
      sub_190D54C50();
      sub_19022FD14(v109, v169, &qword_1EAD58D78);
      swift_storeEnumTagMultiPayload();
      sub_1909C8650();
      sub_1909C87F0();
      v110 = v171;
      sub_190D54C50();
      sub_19022EEA4(v109, &qword_1EAD58D78);
      sub_19022FD14(v110, v185, &qword_1EAD58D68);
      swift_storeEnumTagMultiPayload();
      sub_1909C8158();
      sub_1909C85C4();
      v111 = v186;
      sub_190D54C50();
      sub_19022EEA4(v110, &qword_1EAD58D68);
      sub_19022FD14(v111, v104, &qword_1EAD58CC8);
      swift_storeEnumTagMultiPayload();
      sub_1909C80CC();
      sub_1909C88D0();
      sub_190D54C50();
      sub_19022EEA4(v111, &qword_1EAD58CC8);
      return sub_19022EEA4(v108, &qword_1EAD58D88);
    case 5:
      sub_1909C7D40(v188, &v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent);
      v87 = (*(v182 + 80) + 16) & ~*(v182 + 80);
      v88 = swift_allocObject();
      sub_1909C7DA8(&v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v88 + v87, type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58EF0);
      sub_1909C8E7C();
      v61 = v124;
      sub_190D526A0();
      v62 = v125;
      v63 = v145;
      (*(v125 + 16))(v141, v61, v145);
      swift_storeEnumTagMultiPayload();
      sub_190233640(&qword_1EAD58D40, &qword_1EAD58D48);
      sub_190233640(&qword_1EAD58D50, &qword_1EAD58D58);
      v89 = v142;
      goto LABEL_16;
    case 6:
      sub_1909C7D40(v188, &v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent);
      v95 = (*(v182 + 80) + 16) & ~*(v182 + 80);
      v96 = swift_allocObject();
      sub_1909C7DA8(&v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v96 + v95, type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent);
      _s11ContentViewVMa_2();
      sub_1909C748C(&qword_1EAD58F08, _s11ContentViewVMa_2);
      v61 = v118;
      sub_190D526A0();
      v62 = v121;
      v63 = v143;
      (*(v121 + 16))(v141, v61, v143);
      swift_storeEnumTagMultiPayload();
      sub_190233640(&qword_1EAD58D40, &qword_1EAD58D48);
      sub_190233640(&qword_1EAD58D50, &qword_1EAD58D58);
      v89 = v142;
LABEL_16:
      sub_190D54C50();
      sub_19022FD14(v89, v164, &qword_1EAD58D38);
      swift_storeEnumTagMultiPayload();
      sub_1909C81E4();
      sub_1909C84E4();
      v97 = v165;
      sub_190D54C50();
      sub_19022EEA4(v89, &qword_1EAD58D38);
      v98 = &qword_1EAD58CD8;
      sub_19022FD14(v97, v185, &qword_1EAD58CD8);
      goto LABEL_21;
    case 7:
      v195 = *(*v188 + 40);
      _s9ViewModelCMa_4();
      sub_190D50920();
      sub_190D55FC0();
      v83 = v197;
      *v43 = v196;
      v43[1] = v83;
      swift_storeEnumTagMultiPayload();
      sub_1909C829C(&qword_1EAD58CF0, &qword_1EAD58CF8, &unk_190DE3BC0, sub_1909C8318);
      sub_1909C8490();
      sub_190D50920();
      sub_190D50920();
      v84 = v139;
      sub_190D54C50();
      sub_19022FD14(v84, v164, &qword_1EAD58CE8);
      swift_storeEnumTagMultiPayload();
      sub_1909C81E4();
      sub_1909C84E4();
      v85 = v165;
      sub_190D54C50();
      sub_19022EEA4(v84, &qword_1EAD58CE8);
      sub_19022FD14(v85, v185, &qword_1EAD58CD8);
      swift_storeEnumTagMultiPayload();
      sub_1909C8158();
      sub_1909C85C4();
      v86 = v186;
      sub_190D54C50();
      sub_19022EEA4(v85, &qword_1EAD58CD8);
      sub_19022FD14(v86, v191, &qword_1EAD58CC8);
      swift_storeEnumTagMultiPayload();
      sub_1909C80CC();
      sub_1909C88D0();
      sub_190D54C50();

      return sub_19022EEA4(v86, &qword_1EAD58CC8);
    case 8:
      sub_1909C7D40(v188, &v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent);
      v102 = (*(v182 + 80) + 16) & ~*(v182 + 80);
      v103 = swift_allocObject();
      sub_1909C7DA8(&v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v103 + v102, type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent);
      sub_1909C8DF8();
      v61 = v129;
      sub_190D526A0();
      v62 = v130;
      v63 = v152;
      (*(v130 + 16))(v150, v61, v152);
      swift_storeEnumTagMultiPayload();
      sub_190233640(&qword_1EAD58DB8, &qword_1EAD58DC0);
      sub_190233640(&qword_1EAD58DC8, &qword_1EAD58DD0);
      v78 = v151;
      goto LABEL_19;
    case 9:
      sub_1909C7D40(v188, &v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent);
      v76 = (*(v182 + 80) + 16) & ~*(v182 + 80);
      v77 = swift_allocObject();
      sub_1909C7DA8(&v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v77 + v76, type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent);
      sub_1909C8D34();
      v61 = v132;
      sub_190D526A0();
      v62 = v134;
      v63 = v156;
      (*(v134 + 16))(v150, v61, v156);
      swift_storeEnumTagMultiPayload();
      sub_190233640(&qword_1EAD58DB8, &qword_1EAD58DC0);
      sub_190233640(&qword_1EAD58DC8, &qword_1EAD58DD0);
      v78 = v151;
LABEL_19:
      sub_190D54C50();
      v101 = &qword_1EAD58DB0;
      sub_19022FD14(v78, v169, &qword_1EAD58DB0);
      goto LABEL_20;
    case 0xA:
      sub_1909C7D40(v188, &v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent);
      v99 = (*(v182 + 80) + 16) & ~*(v182 + 80);
      v100 = swift_allocObject();
      sub_1909C7DA8(&v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v100 + v99, type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent);
      type metadata accessor for ShowInContactsButton();
      sub_1909C748C(&qword_1EAD58EE0, type metadata accessor for ShowInContactsButton);
      v61 = v127;
      sub_190D526A0();
      v62 = v128;
      v63 = v154;
      (*(v128 + 16))(v147, v61, v154);
      swift_storeEnumTagMultiPayload();
      sub_1909C8708();
      sub_190233640(&qword_1EAD58D98, &qword_1EAD58DA0);
      v78 = v149;
      sub_190D54C50();
      v101 = &qword_1EAD58D78;
      sub_19022FD14(v78, v169, &qword_1EAD58D78);
LABEL_20:
      swift_storeEnumTagMultiPayload();
      sub_1909C8650();
      sub_1909C87F0();
      v97 = v171;
      sub_190D54C50();
      sub_19022EEA4(v78, v101);
      v98 = &qword_1EAD58D68;
      sub_19022FD14(v97, v185, &qword_1EAD58D68);
LABEL_21:
      swift_storeEnumTagMultiPayload();
      sub_1909C8158();
      sub_1909C85C4();
      v93 = v186;
      sub_190D54C50();
      sub_19022EEA4(v97, v98);
      v94 = &qword_1EAD58CC8;
      sub_19022FD14(v93, v191, &qword_1EAD58CC8);
      goto LABEL_22;
    case 0xB:
      sub_1909C7D40(v188, &v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent);
      v59 = (*(v182 + 80) + 16) & ~*(v182 + 80);
      v60 = swift_allocObject();
      sub_1909C7DA8(&v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v60 + v59, type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent);
      sub_1909C8C70();
      v61 = v131;
      sub_190D526A0();
      v62 = v133;
      v63 = v157;
      (*(v133 + 16))(v155, v61, v157);
      swift_storeEnumTagMultiPayload();
      sub_190233640(&qword_1EAD58DF8, &qword_1EAD58E00);
      sub_190233640(&qword_1EAD58E08, &qword_1EAD58E10);
      v64 = v158;
      sub_190D54C50();
      v65 = &qword_1EAD58DF0;
      sub_19022FD14(v64, v179, &qword_1EAD58DF0);
      goto LABEL_14;
    case 0xC:
      sub_1909C7D40(v188, &v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent);
      v72 = (*(v182 + 80) + 16) & ~*(v182 + 80);
      v73 = swift_allocObject();
      sub_1909C7DA8(&v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v73 + v72, type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent);
      _s14descr1F03EB3E1C29DownloadPurgedAttachmentsViewVMa();
      sub_1909C748C(&qword_1EAD58EC0, _s14descr1F03EB3E1C29DownloadPurgedAttachmentsViewVMa);
      v54 = v135;
      sub_190D526A0();
      v55 = v136;
      v56 = v159;
      (*(v136 + 16))(v155, v54, v159);
      swift_storeEnumTagMultiPayload();
      sub_190233640(&qword_1EAD58DF8, &qword_1EAD58E00);
      sub_190233640(&qword_1EAD58E08, &qword_1EAD58E10);
      v57 = v158;
      sub_190D54C50();
      v58 = &qword_1EAD58DF0;
      sub_19022FD14(v57, v179, &qword_1EAD58DF0);
      goto LABEL_7;
    case 0xD:
      sub_1909C7D40(v188, &v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent);
      v90 = (*(v182 + 80) + 16) & ~*(v182 + 80);
      v91 = swift_allocObject();
      v92 = sub_1909C7DA8(&v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v91 + v90, type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent);
      MEMORY[0x1EEE9AC00](v92);
      _s11ContentViewVMa_8();
      _s14descr1F03EB3E1C22EncryptionStatusFooterVMa();
      sub_1909C748C(&qword_1EAD58EB0, _s11ContentViewVMa_8);
      sub_1909C748C(&qword_1EAD58EB8, _s14descr1F03EB3E1C22EncryptionStatusFooterVMa);
      v61 = v137;
      sub_190D526A0();
      v62 = v138;
      v63 = v174;
      (*(v138 + 16))(v173, v61, v174);
      swift_storeEnumTagMultiPayload();
      sub_190233640(&qword_1EAD58E28, &qword_1EAD58E30);
      sub_1909C8AF4();
      v64 = v175;
      sub_190D54C50();
      v65 = &qword_1EAD58E20;
      sub_19022FD14(v64, v179, &qword_1EAD58E20);
LABEL_14:
      swift_storeEnumTagMultiPayload();
      sub_1909C895C();
      sub_1909C8A3C();
      v93 = v181;
      sub_190D54C50();
      sub_19022EEA4(v64, v65);
      v94 = &qword_1EAD58DE0;
      sub_19022FD14(v93, v191, &qword_1EAD58DE0);
LABEL_22:
      swift_storeEnumTagMultiPayload();
      sub_1909C80CC();
      sub_1909C88D0();
      sub_190D54C50();
      sub_19022EEA4(v93, v94);
      result = (*(v62 + 8))(v61, v63);
      break;
    default:
      v54 = v160;
      sub_190D562E0();
      v55 = v161;
      v56 = v176;
      (*(v161 + 16))(v173, v54, v176);
      swift_storeEnumTagMultiPayload();
      sub_190233640(&qword_1EAD58E28, &qword_1EAD58E30);
      sub_1909C8AF4();
      v57 = v175;
      sub_190D54C50();
      v58 = &qword_1EAD58E20;
      sub_19022FD14(v57, v179, &qword_1EAD58E20);
LABEL_7:
      swift_storeEnumTagMultiPayload();
      sub_1909C895C();
      sub_1909C8A3C();
      v74 = v181;
      sub_190D54C50();
      sub_19022EEA4(v57, v58);
      sub_19022FD14(v74, v191, &qword_1EAD58DE0);
      swift_storeEnumTagMultiPayload();
      sub_1909C80CC();
      sub_1909C88D0();
      sub_190D54C50();
      sub_19022EEA4(v74, &qword_1EAD58DE0);
      result = (*(v55 + 8))(v54, v56);
      break;
  }

  return result;
}

uint64_t sub_1909C6538@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = sub_190D52990();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58E80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = _s14descr1F03EB3E1C15FaceTimeSectionO11ContentViewVMa(0);
  v15 = (v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*a1 + 24);
  v19 = objc_opt_self();
  sub_190D50920();
  v20 = [v19 defaultCenter];
  sub_190D579C0();

  v17[v15[7]] = 0;
  *&v17[v15[8]] = v18;
  v21 = &v17[v15[9]];
  v30 = a2;
  sub_1908E1A48();
  v22 = a2;
  sub_190D55FC0();
  v23 = v32;
  *v21 = v31;
  *(v21 + 1) = v23;
  type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent(0);
  sub_190D52D00();
  sub_19022FD14(v13, v10, &qword_1EAD58E80);
  if ((*(v6 + 48))(v10, 1, v5) == 1)
  {
    sub_19022EEA4(v13, &qword_1EAD58E80);
    v24 = 0;
  }

  else
  {
    (*(v6 + 32))(v28, v10, v5);
    sub_1909C748C(&qword_1EAD58EE8, MEMORY[0x1E6995820]);
    v24 = sub_190D561E0();
    sub_19022EEA4(v13, &qword_1EAD58E80);
  }

  v25 = v29;
  sub_1909C7DA8(v17, v29, _s14descr1F03EB3E1C15FaceTimeSectionO11ContentViewVMa);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58D18);
  *(v25 + *(result + 36)) = v24;
  return result;
}

double sub_1909C6894@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_190D554A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*a1 + 32);
  v9 = _s11ContentViewVMa_2();
  *&v28 = 0x4039000000000000;
  (*(v5 + 104))(v7, *MEMORY[0x1E6980EF8], v4);
  sub_1909C8F50();
  sub_190D50920();
  sub_190D53B90();
  v10 = *(v9 + 28);
  *(a2 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  swift_storeEnumTagMultiPayload();
  *a2 = v8;
  v11 = *(v8 + 32);
  sub_190D50920();
  v12 = [v11 selectedSenderIdentity];
  v13 = [v12 isValidSubscription];
  v14 = [v12 label];
  v15 = sub_190D56F10();
  v17 = v16;
  if (v13)
  {

    v18 = [v12 shortName];
    v19 = sub_190D56F10();
    v21 = v20;
  }

  else
  {

    v19 = 0;
    v21 = 0;
  }

  v26[1] = v15;
  v26[2] = v17;
  v26[3] = v19;
  v26[4] = v21;
  v27 = v13 ^ 1;
  sub_190D55FC0();

  v22 = v30;
  v23 = v31;
  result = *&v28;
  v25 = v29;
  *(a2 + 8) = v28;
  *(a2 + 24) = v25;
  *(a2 + 40) = v22;
  *(a2 + 48) = v23;
  return result;
}

id sub_1909C6AF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s14descr1F03EB3E1C22ContactCreationSectionO11ContentViewVMa();
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_190D52930();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  v14 = *a1;
  sub_190D50920();
  v15 = sub_190D527D0();

  if (*(v15 + 16))
  {
    (*(v8 + 16))(v10, v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

    v16 = *(v8 + 32);
    v16(v13, v10, v7);
    v16(v6, v13, v7);
    v20 = *(v14 + 88);
    *&v6[*(v4 + 20)] = v20;
    sub_1909C7DA8(v6, a2, _s14descr1F03EB3E1C22ContactCreationSectionO11ContentViewVMa);
    (*(v21 + 56))(a2, 0, 1, v4);
    v17 = v20;

    return v17;
  }

  else
  {

    v19 = *(v21 + 56);

    return v19(a2, 1, 1, v4);
  }
}

uint64_t sub_1909C6DA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + *(type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent(0) + 24));
  type metadata accessor for ShowInContactsButton();
  sub_190D50920();
  sub_190D50920();
  result = sub_190D52750();
  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t sub_1909C6E1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_190D50920();
  result = sub_190D55FC0();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_1909C6E7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = *(*a1 + 88);
  _s24DeletionAlertCoordinatorCMa();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 18) = 0;
  v7 = v4;
  v8 = v5;
  sub_190D51C50();
  *(v6 + 24) = v7;
  *(v6 + 32) = v8;
  sub_190D50920();
  result = sub_190D55FC0();
  *a2 = v3;
  a2[1] = v10;
  a2[2] = v11;
  return result;
}

uint64_t sub_1909C6F38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_190D50920();
  sub_190D55FC0();
  result = sub_190D55FC0();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  return result;
}

void sub_1909C6FD0(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 64);
  _s14descr1F03EB3E1C29DownloadPurgedAttachmentsViewVMa();
  v2 = objc_opt_self();
  sub_190D50920();
  v3 = [v2 defaultCenter];
  if (qword_1EAD520B0 != -1)
  {
    swift_once();
  }

  sub_190D579C0();

  v4 = [v2 defaultCenter];
  if (qword_1EAD520B8 != -1)
  {
    swift_once();
  }

  sub_190D579C0();
}

uint64_t sub_1909C7120()
{
  _s9ViewModelCMa_5();
  sub_1909C748C(&qword_1EAD45CD0, _s9ViewModelCMa_5);
  sub_190D50920();

  return sub_190D56340();
}

uint64_t sub_1909C71B8()
{
  _s14descr1F03EB3E1C22EncryptionStatusFooterVMa();
  sub_190D50920();
  sub_190D52D10();
  _s9ViewModelCMa_6();
  sub_1909C748C(qword_1EAD58F10, _s9ViewModelCMa_6);

  return sub_190D56340();
}

uint64_t objectdestroyTm_13()
{
  v1 = (type metadata accessor for DetailsInfoTabView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v8 = *(*v1 + 64);

  v4 = v0 + v3 + v1[9];
  v5 = sub_190D579B0();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58BB0);

  v6(v0 + v3 + v1[10], v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v8, v2 | 7);
}

uint64_t sub_1909C7428()
{
  type metadata accessor for DetailsInfoTabView(0);
  v0 = sub_190B6D6F4();
  return sub_190B6D51C(v0);
}

uint64_t sub_1909C748C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1909C74D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_190D54970();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  v5 = *(a1 + 24);
  v43 = *(a1 + 16);
  v59 = MEMORY[0x1E69E73E0];
  v60 = v43;
  v61 = MEMORY[0x1E69E73F0];
  v62 = v5;
  v6 = sub_190D554E0();
  v47 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v34 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD59680);
  sub_190D54200();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59400);
  v8 = sub_190D54200();
  v44 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  WitnessTable = swift_getWitnessTable();
  v41 = WitnessTable;
  v12 = sub_190233640(&qword_1EAD56838, &unk_1EAD59680);
  v57 = WitnessTable;
  v58 = v12;
  v13 = swift_getWitnessTable();
  v14 = sub_190233640(&qword_1EAD56840, &qword_1EAD59400);
  v55 = v13;
  v56 = v14;
  v15 = swift_getWitnessTable();
  v59 = v8;
  v60 = v15;
  v16 = v8;
  v35 = v8;
  v17 = v15;
  v36 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v20 = &v34 - v19;
  v59 = v16;
  v60 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = OpaqueTypeMetadata2;
  v60 = OpaqueTypeConformance2;
  v38 = MEMORY[0x1E697D368];
  v21 = swift_getOpaqueTypeMetadata2();
  v39 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v34 - v25;
  v52 = v43;
  v53 = v5;
  v54 = v45;
  v27 = v42;
  sub_190D554D0();
  sub_190D52CC0();
  v28 = v48;
  sub_190D54960();
  sub_190D559C0();
  (*(v49 + 8))(v28, v50);
  (*(v47 + 8))(v27, v6);
  v29 = v35;
  sub_190D55AC0();
  (*(v44 + 8))(v10, v29);
  v30 = OpaqueTypeConformance2;
  sub_190D55AB0();
  (*(v40 + 8))(v20, OpaqueTypeMetadata2);
  v59 = OpaqueTypeMetadata2;
  v60 = v30;
  v31 = swift_getOpaqueTypeConformance2();
  sub_19096BC74(v23, v21, v31);
  v32 = *(v39 + 8);
  v32(v23, v21);
  sub_19096BC74(v26, v21, v31);
  return (v32)(v26, v21);
}

uint64_t sub_1909C7AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v14 - v10;
  (*v9)();
  sub_19096BC74(v8, a2, a3);
  v12 = *(v5 + 8);
  v12(v8, a2);
  sub_19096BC74(v11, a2, a3);
  return (v12)(v11, a2);
}

void sub_1909C7C58()
{
  _s14descr1F03EB3E1C9ViewModelCMa();
  if (v0 <= 0x3F)
  {
    sub_190D52D20();
    if (v1 <= 0x3F)
    {
      sub_1909C1C44(319, &qword_1EAD58BB8, MEMORY[0x1E69957E0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1909C7D40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1909C7DA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_20Tm()
{
  v1 = (type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_190D52D20();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1909C7F3C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1909C7FC0@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DetailsInfoTabView.DetailsInfoTabViewScrollContent(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1909C3798(a1, v6, a2);
}

unint64_t sub_1909C8040()
{
  result = qword_1EAD58CB8;
  if (!qword_1EAD58CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD58CA8);
    sub_1909C80CC();
    sub_1909C88D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58CB8);
  }

  return result;
}

unint64_t sub_1909C80CC()
{
  result = qword_1EAD58CC0;
  if (!qword_1EAD58CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD58CC8);
    sub_1909C8158();
    sub_1909C85C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58CC0);
  }

  return result;
}

unint64_t sub_1909C8158()
{
  result = qword_1EAD58CD0;
  if (!qword_1EAD58CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD58CD8);
    sub_1909C81E4();
    sub_1909C84E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58CD0);
  }

  return result;
}

unint64_t sub_1909C81E4()
{
  result = qword_1EAD58CE0;
  if (!qword_1EAD58CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD58CE8);
    sub_1909C829C(&qword_1EAD58CF0, &qword_1EAD58CF8, &unk_190DE3BC0, sub_1909C8318);
    sub_1909C8490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58CE0);
  }

  return result;
}