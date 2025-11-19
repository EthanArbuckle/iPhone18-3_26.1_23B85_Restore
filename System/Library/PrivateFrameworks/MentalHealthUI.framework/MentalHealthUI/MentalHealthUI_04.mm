void sub_258A0F680()
{
  v1 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_layer);
  if (v1)
  {
    v2 = v1;
    [v2 bounds];
    if (!CGRectIsEmpty(v12))
    {
      (*((*MEMORY[0x277D85000] & *v0) + 0x260))();
    }

    v3 = type metadata accessor for MetalRenderer.DisplayLinkTarget();
    v4 = objc_allocWithZone(v3);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v11.receiver = v4;
    v11.super_class = v3;
    v5 = objc_msgSendSuper2(&v11, sel_init);
    v6 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLinkTarget);
    *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLinkTarget) = v5;
    v7 = v5;

    v8 = [objc_opt_self() displayLinkWithTarget:v7 selector:sel_fireWithLink_];
    [v8 setPreferredFramesPerSecond_];
    v9 = [objc_opt_self() currentRunLoop];
    [v8 addToRunLoop:v9 forMode:*MEMORY[0x277CBE738]];

    v10 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLink);
    *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLink) = v8;
  }

  else
  {
    sub_258B03294();
    __break(1u);
  }
}

uint64_t sub_258A0F874(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLink);
    if (v3)
    {
      v4 = v3 == a1;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      v5 = *(result + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_layer);
      if (v5)
      {
        [v5 bounds];
        v9.origin.x = 0.0;
        v9.origin.y = 0.0;
        v9.size.width = 0.0;
        v9.size.height = 0.0;
        if (!CGRectEqualToRect(v8, v9))
        {
          sub_258A0FA38();
        }
      }

      else
      {
        v6 = v3;
        [v6 setPaused_];
      }
    }

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

id sub_258A0F9F0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_258A0FA38()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLinkWillRenderFrame);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLinkWillRenderFrame + 8);
    v4 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLink);
    sub_258A103FC(v2);
    v5 = v4;
    v2(v4);
    sub_258A1040C(v2);
  }

  v6 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLink);
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = v6;
  [v7 targetTimestamp];
  v9 = v8;
  [v7 timestamp];
  v11 = v10;

  v12 = v9 - v11;
  *(v1 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_timeDelta) = v12;
  *(v1 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_currentTime) = *(v1 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_currentTime) + v12;
  v13 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_commandQueueIsEmpty;
  if ((*(v1 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_commandQueueIsEmpty) & 1) == 0)
  {
    return;
  }

  v14 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_layer;
  v15 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_layer);
  if (!v15)
  {
LABEL_8:
    v17 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_commandQueue;
    v18 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_commandQueue);
    v19 = MEMORY[0x277D85000];
    v20 = *((*MEMORY[0x277D85000] & *v1) + 0x268);
    v21 = swift_unknownObjectRetain();
    v22 = v20(v21);
    swift_unknownObjectRelease();
    if ((v22 & 1) == 0)
    {
      return;
    }

    v23 = [*(v1 + v17) commandBuffer];
    if (v23)
    {
      v24 = v23;
      *(v1 + v13) = 0;
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_258A1041C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_258A10104;
      aBlock[3] = &block_descriptor_3;
      v26 = _Block_copy(aBlock);

      [v24 addCompletedHandler_];
      _Block_release(v26);
      v27 = *(v1 + v14);
      if (v27 && (v28 = [v27 nextDrawable]) != 0)
      {
        v29 = v28;
        (*((*v19 & *v1) + 0x278))([v28 texture], v24);
        swift_unknownObjectRelease();
        [v29 present];
        swift_unknownObjectRelease();
      }

      else
      {
        [v24 commit];
      }

      swift_unknownObjectRelease();
      return;
    }

    while (1)
    {
LABEL_19:
      sub_258B03294();
      __break(1u);
    }
  }

  v16 = v15;
  if ([v16 isDrawableAvailable])
  {

    goto LABEL_8;
  }

  sub_258A1043C();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_258B2C470;
  *(v30 + 56) = MEMORY[0x277D837D0];
  *(v30 + 32) = 0xD00000000000003DLL;
  *(v30 + 40) = 0x8000000258B36C40;
  sub_258B034F4();
}

uint64_t sub_258A0FEA8(uint64_t a1, uint64_t a2)
{
  sub_258A10490();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_258B02D44();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_258B02D24();

  v8 = sub_258B02D14();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a2;
  sub_258A8F398(0, 0, v6, &unk_258B2E3B0, v9);
}

uint64_t sub_258A0FFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_258B02D24();
  v4[7] = sub_258B02D14();
  v6 = sub_258B02CE4();

  return MEMORY[0x2822009F8](sub_258A1005C, v6, v5);
}

uint64_t sub_258A1005C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_commandQueueIsEmpty] = 1;
  }

  **(v0 + 40) = v4 == 0;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_258A10104(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_258A102C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetalRenderer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_258A103FC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_258A1040C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_258A1043C()
{
  if (!qword_27F96E3D0)
  {
    v0 = sub_258B03424();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E3D0);
    }
  }
}

void sub_258A10490()
{
  if (!qword_280DF8930)
  {
    sub_258B02D44();
    v0 = sub_258B030C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280DF8930);
    }
  }
}

uint64_t sub_258A104E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2589EEE18;

  return sub_258A0FFC4(a1, v4, v5, v6);
}

uint64_t View.mindAccessibilityIdentifierComponents(_:components:)()
{
  v0 = sub_258B003E4();
  sub_2589FC8C8(v0);
  v1 = sub_258B003E4();
  sub_2589FC8C8(v1);
  sub_2589FCE08();
  sub_258A10704(&qword_280DF8940, sub_2589FCE08);
  sub_258B02A34();

  sub_258B01DD4();
}

uint64_t sub_258A10704(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ValenceSlider()
{
  result = qword_27F96E3E0;
  if (!qword_27F96E3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A107C0()
{
  sub_258A11890(319, &qword_27F96E198, MEMORY[0x277D839F8], MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_258A11A34(319, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_258A108BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v3 = type metadata accessor for ValenceSliderCaptions();
  v4 = *(v3 - 8);
  v113 = v3 - 8;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v111 = (v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A11778(0, &qword_27F96E440, type metadata accessor for ValenceSliderCaptions);
  v8 = *(v7 - 8);
  v115 = v7 - 8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v116 = v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v112 = v97 - v13;
  MEMORY[0x28223BE20](v12);
  v114 = v97 - v14;
  v15 = type metadata accessor for ValenceSelectionPhaseSpecs();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v110 = v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v108 = v97 - v20;
  MEMORY[0x28223BE20](v19);
  v99 = v97 - v21;
  v22 = type metadata accessor for ValenceSliderStyle();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A116C4();
  v27 = v26;
  v28 = *(v26 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  v31 = v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A115C0();
  v101 = v32;
  v100 = *(v32 - 8);
  v33 = *(v100 + 64);
  MEMORY[0x28223BE20](v32);
  v35 = v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_258A115C0;
  sub_258A11778(0, &qword_27F96E418, sub_258A115C0);
  v98 = v36;
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v39 = v97 - v38;
  sub_258A11534();
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v102 = v97 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_258A11534;
  sub_258A11778(0, &qword_27F96E408, sub_258A11534);
  v44 = *(v43 - 8);
  v105 = v43 - 8;
  v45 = *(v44 + 64);
  v46 = MEMORY[0x28223BE20](v43 - 8);
  v107 = v97 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v103 = v97 - v49;
  MEMORY[0x28223BE20](v48);
  v104 = v97 - v50;
  v51 = a1[1];
  v52 = a1[2];
  v53 = a1;
  *&v120 = *a1;
  *(&v120 + 1) = v51;
  *&v121 = v52;
  sub_258A11890(0, &qword_27F96E198, MEMORY[0x277D839F8], MEMORY[0x277CE11F8]);
  sub_258B02334();
  v120 = v118;
  *&v121 = v119;
  v118 = xmmword_258B2E3C0;
  sub_258A117DC();
  sub_258B02264();
  v54 = sub_258B02014();
  *v25 = 0x3FB0000000000000;
  v25[1] = v54;
  v55 = *(v22 + 20);
  *(v25 + v55) = swift_getKeyPath();
  v56 = MEMORY[0x277CDF458];
  v97[0] = MEMORY[0x277CDF458];
  sub_258A11A34(0, &qword_27F96CFA8, MEMORY[0x277CDFAA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v57 = *(v22 + 24);
  *(v25 + v57) = swift_getKeyPath();
  sub_258A11A34(0, &qword_27F96C908, MEMORY[0x277CDF3E0], v56);
  v97[1] = v58;
  swift_storeEnumTagMultiPayload();
  sub_258A11730(&qword_27F96E430, sub_258A116C4);
  sub_258A11730(&qword_27F96E438, type metadata accessor for ValenceSliderStyle);
  sub_258B01C04();
  sub_258A11830(v25, type metadata accessor for ValenceSliderStyle);
  (*(v28 + 8))(v31, v27);
  LODWORD(v28) = *(type metadata accessor for ValenceSlider() + 24);
  v59 = v99;
  sub_258AC1B90(v99);
  sub_258A11830(v59, type metadata accessor for ValenceSelectionPhaseSpecs);
  LOBYTE(v53) = *(v53 + 24);
  sub_258B024F4();
  sub_258B00854();
  (*(v100 + 32))(v39, v35, v101);
  v60 = &v39[*(v98 + 36)];
  v61 = v121;
  *v60 = v120;
  *(v60 + 1) = v61;
  *(v60 + 2) = v122;
  *&v118 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5220);
  sub_258A11890(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D5240);
  sub_258A118E0();
  v62 = v102;
  sub_258B01DD4();

  sub_258A11C8C(v39, &qword_27F96E418, v106);
  LOBYTE(v59) = sub_258B01894();
  v63 = v108;
  sub_258AC1B90(v108);
  sub_258A11830(v63, type metadata accessor for ValenceSelectionPhaseSpecs);
  sub_258B00654();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v72 = v103;
  sub_2589AA264(v62, v103);
  v73 = v72 + *(v105 + 44);
  *v73 = v59;
  *(v73 + 8) = v65;
  *(v73 + 16) = v67;
  *(v73 + 24) = v69;
  *(v73 + 32) = v71;
  *(v73 + 40) = 0;
  v74 = v104;
  sub_2589AA2C8(v72, v104);
  KeyPath = swift_getKeyPath();
  v76 = v111;
  *v111 = KeyPath;
  sub_258A11A34(0, &qword_27F96D7B8, type metadata accessor for ValenceSelectionPhaseSpecs, v97[0]);
  swift_storeEnumTagMultiPayload();
  v77 = v113;
  v78 = *(v113 + 28);
  *(v76 + v78) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v76 + *(v77 + 32)) = v53;
  LOBYTE(v77) = sub_258B01864();
  v79 = v110;
  sub_258AC1B90(v110);
  sub_258A11830(v79, type metadata accessor for ValenceSelectionPhaseSpecs);
  sub_258B00654();
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v88 = v112;
  sub_258A11A98(v76, v112);
  v89 = v88 + *(v115 + 44);
  *v89 = v77;
  *(v89 + 8) = v81;
  *(v89 + 16) = v83;
  *(v89 + 24) = v85;
  *(v89 + 32) = v87;
  *(v89 + 40) = 0;
  v90 = v114;
  sub_258A11AFC(v88, v114);
  v91 = v107;
  sub_2589AA354(v74, v107);
  v92 = v116;
  sub_258A11B84(v90, v116);
  v93 = v117;
  sub_2589AA354(v91, v117);
  sub_258A11474();
  sub_258A11B84(v92, v93 + *(v94 + 48));
  sub_258A11C0C(v90);
  v95 = v109;
  sub_258A11C8C(v74, &qword_27F96E408, v109);
  sub_258A11C0C(v92);
  return sub_258A11C8C(v91, &qword_27F96E408, v95);
}

uint64_t sub_258A11398@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_258B01194();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_258A113DC();
  return sub_258A108BC(v1, a1 + *(v3 + 44));
}

void sub_258A113DC()
{
  if (!qword_27F96E3F0)
  {
    sub_258A11A34(255, &qword_27F96E3F8, sub_258A11474, MEMORY[0x277CE14B8]);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E3F0);
    }
  }
}

void sub_258A11474()
{
  if (!qword_27F96E400)
  {
    sub_258A11778(255, &qword_27F96E408, sub_258A11534);
    sub_258A11778(255, &qword_27F96E440, type metadata accessor for ValenceSliderCaptions);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96E400);
    }
  }
}

void sub_258A11534()
{
  if (!qword_27F96E410)
  {
    sub_258A11778(255, &qword_27F96E418, sub_258A115C0);
    sub_258B017D4();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E410);
    }
  }
}

void sub_258A115C0()
{
  if (!qword_27F96E420)
  {
    sub_258A116C4();
    type metadata accessor for ValenceSliderStyle();
    sub_258A11730(&qword_27F96E430, sub_258A116C4);
    sub_258A11730(&qword_27F96E438, type metadata accessor for ValenceSliderStyle);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96E420);
    }
  }
}

void sub_258A116C4()
{
  if (!qword_27F96E428)
  {
    v0 = sub_258B02274();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E428);
    }
  }
}

uint64_t sub_258A11730(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258A11778(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_258A117DC()
{
  result = qword_27F96E448;
  if (!qword_27F96E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E448);
  }

  return result;
}

uint64_t sub_258A11830(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A11890(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_258A118E0()
{
  result = qword_27F96E450;
  if (!qword_27F96E450)
  {
    sub_258A11778(255, &qword_27F96E418, sub_258A115C0);
    sub_258A116C4();
    type metadata accessor for ValenceSliderStyle();
    sub_258A11730(&qword_27F96E430, sub_258A116C4);
    sub_258A11730(&qword_27F96E438, type metadata accessor for ValenceSliderStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E450);
  }

  return result;
}

void sub_258A11A34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A11A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValenceSliderCaptions();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A11AFC(uint64_t a1, uint64_t a2)
{
  sub_258A11778(0, &qword_27F96E440, type metadata accessor for ValenceSliderCaptions);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A11B84(uint64_t a1, uint64_t a2)
{
  sub_258A11778(0, &qword_27F96E440, type metadata accessor for ValenceSliderCaptions);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A11C0C(uint64_t a1)
{
  sub_258A11778(0, &qword_27F96E440, type metadata accessor for ValenceSliderCaptions);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258A11C8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_258A11778(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_258A11CE8()
{
  if (!qword_27F96E460)
  {
    sub_258A11A34(255, &qword_27F96E3F8, sub_258A11474, MEMORY[0x277CE14B8]);
    sub_258A11D7C();
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E460);
    }
  }
}

unint64_t sub_258A11D7C()
{
  result = qword_27F96E468;
  if (!qword_27F96E468)
  {
    sub_258A11A34(255, &qword_27F96E3F8, sub_258A11474, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E468);
  }

  return result;
}

uint64_t _s19EntryMomentDataViewVMa()
{
  result = qword_27F96E470;
  if (!qword_27F96E470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A11E78()
{
  sub_258A153EC(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    _s5EntryVMa();
    if (v1 <= 0x3F)
    {
      sub_258A16A38(319, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_258A11F84()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_258B03514();
  sub_258B02B74();
  sub_258B01934();
  sub_258B01FD4();
  sub_258B02B74();
  return sub_258B03554();
}

uint64_t sub_258A12010()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_258B02B74();
  sub_258B01934();
  sub_258B01FD4();

  return sub_258B02B74();
}

uint64_t sub_258A12084()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_258B03514();
  sub_258B02B74();
  sub_258B01934();
  sub_258B01FD4();
  sub_258B02B74();
  return sub_258B03554();
}

uint64_t sub_258A1210C(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_258B03454() & 1) == 0 || (sub_258B01904() & 1) == 0 || (sub_258B01FB4() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_258B03454();
}

uint64_t sub_258A121F8()
{
  v0 = sub_258B00AA4();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AC1060(v11);
  v12 = &v11[*(v8 + 20)];
  v19 = v1[2];
  v20 = v8;
  v19(v7, v12, v0);
  sub_258A169D8(v11, type metadata accessor for StateOfMindTimeline.Styles);
  v13 = *MEMORY[0x277CDF9D0];
  v18 = v1[13];
  v18(v5, v13, v0);
  LOBYTE(v8) = sub_258B00A94();
  v14 = v1[1];
  v14(v5, v0);
  v14(v7, v0);
  if (v8)
  {
    return 2;
  }

  sub_258AC1060(v11);
  v19(v7, &v11[*(v20 + 20)], v0);
  sub_258A169D8(v11, type metadata accessor for StateOfMindTimeline.Styles);
  v18(v5, *MEMORY[0x277CDF988], v0);
  sub_258A16A88(&qword_27F96D020, MEMORY[0x277CDFA28]);
  v16 = sub_258B02A54();
  v14(v5, v0);
  v14(v7, v0);
  return (v16 & 1) == 0;
}

uint64_t sub_258A124CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  sub_258A15A80();
  v43 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A15928();
  v40[2] = v7;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277CE0330];
  sub_258A15E34(0, &qword_27F96E5C8, sub_258A14F70, sub_258A15A80, MEMORY[0x277CE0330]);
  v40[3] = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v41 = v40 - v14;
  sub_258A15E34(0, &qword_27F96E5D0, sub_258A14FB8, sub_258A15928, v11);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v40 - v17;
  sub_258A14F70(0);
  v40[4] = v19;
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A14FB8();
  v40[1] = v23;
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = v40 - v28;
  v30 = sub_258A121F8();
  v31 = sub_258A12C54();
  v32 = v31;
  if (v30)
  {
    if (v30 == 1)
    {
      *v10 = sub_258B011A4();
      *(v10 + 1) = 0;
      v10[16] = 0;
      sub_258A15EB8(0, &qword_27F96E5E0, sub_258A159BC);
      sub_258A13888(a1, v32, &v10[*(v33 + 44)]);

      sub_258A1693C(v10, v18, sub_258A15928);
      swift_storeEnumTagMultiPayload();
      sub_258A16A88(&qword_27F96E5B0, sub_258A14FB8);
      sub_258A16A88(&qword_27F96E5B8, sub_258A15928);
      sub_258B012A4();
      sub_258A1693C(v22, v41, sub_258A14F70);
      swift_storeEnumTagMultiPayload();
      sub_258A15D54();
      sub_258A16A88(&qword_27F96E5C0, sub_258A15A80);
      sub_258B012A4();
      sub_258A169D8(v22, sub_258A14F70);
      v34 = sub_258A15928;
      v35 = v10;
    }

    else
    {
      *v6 = sub_258B011A4();
      *(v6 + 1) = 0;
      v6[16] = 0;
      sub_258A15EB8(0, &qword_27F96E5D8, sub_258A15B14);
      sub_258A13AA4(a1, v32, &v6[*(v37 + 44)]);

      sub_258A1693C(v6, v41, sub_258A15A80);
      swift_storeEnumTagMultiPayload();
      sub_258A15D54();
      sub_258A16A88(&qword_27F96E5C0, sub_258A15A80);
      sub_258B012A4();
      v34 = sub_258A15A80;
      v35 = v6;
    }
  }

  else
  {
    if (*(v31 + 2) < 2uLL)
    {
      v36 = sub_258B01004();
    }

    else
    {
      v36 = sub_258B00FF4();
    }

    *v27 = v36;
    *(v27 + 1) = 0;
    v27[16] = 0;
    sub_258A15EB8(0, &qword_27F96E5E8, sub_258A1504C);
    sub_258A133F4(a1, v32, &v27[*(v38 + 44)]);

    sub_258A15F28(v27, v29, sub_258A14FB8);
    sub_258A1693C(v29, v18, sub_258A14FB8);
    swift_storeEnumTagMultiPayload();
    sub_258A16A88(&qword_27F96E5B0, sub_258A14FB8);
    sub_258A16A88(&qword_27F96E5B8, sub_258A15928);
    sub_258B012A4();
    sub_258A1693C(v22, v41, sub_258A14F70);
    swift_storeEnumTagMultiPayload();
    sub_258A15D54();
    sub_258A16A88(&qword_27F96E5C0, sub_258A15A80);
    sub_258B012A4();
    sub_258A169D8(v22, sub_258A14F70);
    v34 = sub_258A14FB8;
    v35 = v29;
  }

  return sub_258A169D8(v35, v34);
}

char *sub_258A12C54()
{
  v66 = sub_258B019F4();
  v69 = *(v66 - 8);
  v1 = *(v69 + 64);
  MEMORY[0x28223BE20](v66);
  v3 = &v62[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258A169A4(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v62[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_258B01A54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v62[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v62[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258AC1060(v16);
  v65 = type metadata accessor for StateOfMindTimeline.Styles;
  sub_258A169D8(v16, type metadata accessor for StateOfMindTimeline.Styles);
  (*(v9 + 104))(v12, *MEMORY[0x277CE0A68], v8);
  v17 = *MEMORY[0x277CE09A0];
  v18 = sub_258B01954();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v7, v17, v18);
  (*(v19 + 56))(v7, 0, 1, v18);
  sub_258B01994();
  sub_258B019B4();
  sub_258A169D8(v7, sub_258A169A4);
  (*(v9 + 8))(v12, v8);
  v20 = *MEMORY[0x277CE0A10];
  v21 = v69;
  v64 = *(v69 + 104);
  v63 = v20;
  v22 = v66;
  v64(v3, v20, v66);
  v68 = sub_258B01A14();

  v23 = *(v21 + 8);
  v23(v3, v22);
  sub_258AC1060(v16);
  v24 = v65;
  sub_258A169D8(v16, v65);
  sub_258B018F4();
  v25 = v20;
  v26 = v64;
  v64(v3, v25, v22);
  v67 = sub_258B01A14();

  v23(v3, v22);
  sub_258AC1060(v16);
  sub_258A169D8(v16, v24);
  sub_258B018F4();
  v26(v3, v63, v22);
  v69 = sub_258B01A14();

  v23(v3, v22);
  sub_258AC1060(v16);
  v27 = v24;
  sub_258A169D8(v16, v24);
  v28 = objc_opt_self();
  v29 = [v28 labelColor];
  v30 = sub_258B01F94();
  sub_258AC1060(v16);
  sub_258A169D8(v16, v27);
  v31 = [v28 labelColor];
  v32 = sub_258B01F94();
  sub_258AC1060(v16);
  sub_258A169D8(v16, v27);
  v33 = [v28 secondaryLabelColor];
  v34 = sub_258B01F94();
  v70 = MEMORY[0x277D84F90];
  v35 = v0 + *(_s19EntryMomentDataViewVMa() + 20);
  v36 = _s5EntryVMa();
  v37 = (v35 + v36[6]);
  v39 = *v37;
  v38 = v37[1];
  v40 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v40 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {
    sub_258A16A38(0, &qword_27F96E608, &_s19EntryMomentDataViewV15ItemDescriptionVN, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_258B2BE60;
    *(inited + 32) = v39;
    *(inited + 40) = v38;
    v42 = v67;
    *(inited + 48) = v68;
    *(inited + 56) = v30;
    *(inited + 64) = 0x736C6562614CLL;
    *(inited + 72) = 0xE600000000000000;
    v43 = (v35 + v36[5]);
    v44 = v43[1];
    *(inited + 80) = *v43;
    *(inited + 88) = v44;
    *(inited + 96) = v42;
    *(inited + 104) = v32;
    *(inited + 112) = 0x746E656D6F4DLL;
    *(inited + 120) = 0xE600000000000000;
    sub_258B003E4();

    sub_258B003E4();

    sub_2589FC9BC(inited);
  }

  else
  {
    v66 = v34;
    v45 = (v35 + v36[5]);
    v47 = *v45;
    v46 = v45[1];
    v48 = v68;

    sub_258B003E4();
    v49 = sub_258A75498(0, 1, 1, MEMORY[0x277D84F90]);
    v51 = *(v49 + 2);
    v50 = *(v49 + 3);
    if (v51 >= v50 >> 1)
    {
      v49 = sub_258A75498((v50 > 1), v51 + 1, 1, v49);
    }

    *(v49 + 2) = v51 + 1;
    v52 = &v49[48 * v51];
    *(v52 + 4) = v47;
    *(v52 + 5) = v46;
    *(v52 + 6) = v48;
    *(v52 + 7) = v30;
    *(v52 + 8) = 0x746E656D6F4DLL;
    *(v52 + 9) = 0xE600000000000000;
    v70 = v49;
    v34 = v66;
  }

  v53 = (v35 + v36[7]);
  v55 = *v53;
  v54 = v53[1];
  v56 = HIBYTE(v54) & 0xF;
  if ((v54 & 0x2000000000000000) == 0)
  {
    v56 = v55 & 0xFFFFFFFFFFFFLL;
  }

  if (v56)
  {
    v57 = v70;
    sub_258B003E4();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = sub_258A75498(0, *(v57 + 2) + 1, 1, v57);
    }

    v59 = *(v57 + 2);
    v58 = *(v57 + 3);
    if (v59 >= v58 >> 1)
    {
      v57 = sub_258A75498((v58 > 1), v59 + 1, 1, v57);
    }

    *(v57 + 2) = v59 + 1;
    v60 = &v57[48 * v59];
    *(v60 + 4) = v55;
    *(v60 + 5) = v54;
    *(v60 + 6) = v69;
    *(v60 + 7) = v34;
    *(v60 + 8) = 0xD000000000000011;
    *(v60 + 9) = 0x8000000258B36660;
  }

  else
  {

    return v70;
  }

  return v57;
}

uint64_t sub_258A133F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_258A151D8();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A150E4();
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v34 - v23;
  sub_258A136F4();
  v25 = sub_258B018C4();
  sub_258AC1060(v16);
  sub_258A169D8(v16, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B00654();
  v26 = &v24[*(v18 + 44)];
  *v26 = v25;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  *v12 = sub_258B011A4();
  *(v12 + 1) = 0;
  v12[16] = 0;
  sub_258A15EB8(0, &qword_27F96E5F0, sub_258A1526C);
  sub_258A14190(a2, a1, &v12[*(v31 + 44)]);
  sub_258A1693C(v24, v22, sub_258A150E4);
  sub_258A1693C(v12, v10, sub_258A151D8);
  sub_258A1693C(v22, a3, sub_258A150E4);
  sub_258A152A8(0, &qword_27F96E4A8, sub_258A150E4, sub_258A151D8);
  sub_258A1693C(v10, a3 + *(v32 + 48), sub_258A151D8);
  sub_258A169D8(v12, sub_258A151D8);
  sub_258A169D8(v24, sub_258A150E4);
  sub_258A169D8(v10, sub_258A151D8);
  return sub_258A169D8(v22, sub_258A150E4);
}

uint64_t sub_258A136F4()
{
  v1 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = _s19EntryMomentDataViewVMa();
  v9 = v0 + *(v8 + 20);
  v10 = *(v9 + *(_s5EntryVMa() + 36));
  v14 = 5;
  StateOfMindVisualization.ValenceImageProvider.init(valence:imageScale:)(&v14, &v15, v10);
  v13 = v15;
  v11 = v16;
  sub_258AC1060(v7);
  sub_258A169D8(v7, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258AC1060(v5);
  sub_258A169D8(v5, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00854();
  v15 = v13;
  v16 = v11;
  sub_2589D6ECC(*(v0 + *(v8 + 24)), 0x7A696C6175736956, 0xED00006E6F697461);
  return sub_258A16014(&v15);
}

uint64_t sub_258A13888@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_258A151D8();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  sub_258A15164(0, &qword_27F96D108, &qword_27F96D110);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v23 - v18;
  sub_258A136F4();
  *v12 = sub_258B011A4();
  *(v12 + 1) = 0;
  v12[16] = 0;
  sub_258A15EB8(0, &qword_27F96E5F0, sub_258A1526C);
  sub_258A14190(a2, a1, &v12[*(v20 + 44)]);
  sub_258A16088(v19, v17);
  sub_258A1693C(v12, v10, sub_258A151D8);
  sub_258A16088(v17, a3);
  sub_258A159F0();
  sub_258A1693C(v10, a3 + *(v21 + 48), sub_258A151D8);
  sub_258A169D8(v12, sub_258A151D8);
  sub_258A1610C(v19);
  sub_258A169D8(v10, sub_258A151D8);
  return sub_258A1610C(v17);
}

uint64_t sub_258A13AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36[1] = a2;
  v39 = a3;
  v5 = _s19EntryMomentDataViewVMa();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_258A15600();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v38 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v36 - v12;
  sub_258A155A0();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v37 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v36 - v18;
  sub_258A15164(0, &qword_27F96D108, &qword_27F96D110);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = v36 - v25;
  sub_258A136F4();
  sub_258A13F50(v19);
  *v13 = sub_258B011A4();
  *(v13 + 1) = 0;
  v13[16] = 0;
  sub_258A15EB8(0, &qword_27F96E600, sub_258A156A8);
  v36[3] = *(v27 + 44);
  v40 = a2;
  v36[2] = swift_getKeyPath();
  sub_258A1693C(a1, v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), _s19EntryMomentDataViewVMa);
  v28 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v29 = swift_allocObject();
  sub_258A15F28(v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, _s19EntryMomentDataViewVMa);
  sub_258A16A38(0, &qword_27F96E520, &_s19EntryMomentDataViewV15ItemDescriptionVN, MEMORY[0x277D83940]);
  sub_258A15164(0, &qword_27F96E4F0, &qword_27F96D1F8);
  sub_258A15788();
  sub_258A15804();
  sub_258A15858();
  sub_258B003E4();
  sub_258B023B4();
  sub_258A16088(v26, v24);
  v30 = v37;
  sub_258A1693C(v19, v37, sub_258A155A0);
  v31 = v38;
  sub_258A1693C(v13, v38, sub_258A15600);
  v32 = v39;
  sub_258A16088(v24, v39);
  sub_258A15B48();
  v34 = v33;
  sub_258A1693C(v30, v32 + *(v33 + 48), sub_258A155A0);
  sub_258A1693C(v31, v32 + *(v34 + 64), sub_258A15600);
  sub_258A169D8(v13, sub_258A15600);
  sub_258A169D8(v19, sub_258A155A0);
  sub_258A1610C(v26);
  sub_258A169D8(v31, sub_258A15600);
  sub_258A169D8(v30, sub_258A155A0);
  return sub_258A1610C(v24);
}

uint64_t sub_258A13F50@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = _s19EntryMomentDataViewVMa();
  v6 = v1 + *(v28 + 20);
  v7 = (v6 + *(_s5EntryVMa() + 32));
  v8 = v7[1];
  v30 = *v7;
  v31 = v8;
  sub_2589BFF58();
  sub_258B003E4();
  v9 = sub_258B01B44();
  v11 = v10;
  LOBYTE(v6) = v12;
  sub_258AC1060(v5);
  sub_258A169D8(v5, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B01A34();
  v13 = sub_258B01AE4();
  v26[1] = v14;
  v27 = v13;
  v16 = v15;
  v18 = v17;
  sub_2589BFFAC(v9, v11, v6 & 1);

  sub_258AC1060(v5);
  sub_258A169D8(v5, type metadata accessor for StateOfMindTimeline.Styles);
  v19 = [objc_opt_self() secondaryLabelColor];
  v30 = sub_258B01F94();
  v20 = v27;
  v21 = sub_258B01AB4();
  v23 = v22;
  LOBYTE(v8) = v24;
  sub_2589BFFAC(v20, v16, v18 & 1);

  sub_2589D7078(*(v1 + *(v28 + 24)), 1701669204, 0xE400000000000000);
  sub_2589BFFAC(v21, v23, v8 & 1);
}

uint64_t sub_258A14190@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = _s19EntryMomentDataViewVMa();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_258A15600();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v36 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  MEMORY[0x28223BE20](v12);
  v35 = &v35 - v15;
  sub_258A15324();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v35 - v21;
  *v22 = sub_258B00FE4();
  *(v22 + 1) = 0;
  v22[16] = 1;
  sub_258A15EB8(0, &qword_27F96E5F8, sub_258A153B8);
  sub_258A1465C(a1, a2, &v22[*(v23 + 44)]);
  v24 = a1[2];
  if (v24)
  {
    sub_258AACA88(a1, (a1 + 4), 1, (2 * v24) | 1);
    a1 = v34;
  }

  else
  {
    sub_258B003E4();
  }

  *v14 = sub_258B011A4();
  *(v14 + 1) = 0;
  v14[16] = 0;
  sub_258A15EB8(0, &qword_27F96E600, sub_258A156A8);
  v26 = *(v25 + 44);
  v38 = a1;
  swift_getKeyPath();
  sub_258A1693C(a2, &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), _s19EntryMomentDataViewVMa);
  v27 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v28 = swift_allocObject();
  sub_258A15F28(&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, _s19EntryMomentDataViewVMa);
  sub_258A16A38(0, &qword_27F96E520, &_s19EntryMomentDataViewV15ItemDescriptionVN, MEMORY[0x277D83940]);
  sub_258A15164(0, &qword_27F96E4F0, &qword_27F96D1F8);
  sub_258A15788();
  sub_258A15804();
  sub_258A15858();
  sub_258B023B4();
  v29 = v35;
  sub_258A15F28(v14, v35, sub_258A15600);
  sub_258A1693C(v22, v20, sub_258A15324);
  v30 = v36;
  sub_258A1693C(v29, v36, sub_258A15600);
  v31 = v37;
  sub_258A1693C(v20, v37, sub_258A15324);
  sub_258A152A8(0, &qword_27F96E4C8, sub_258A15324, sub_258A15600);
  sub_258A1693C(v30, v31 + *(v32 + 48), sub_258A15600);
  sub_258A169D8(v29, sub_258A15600);
  sub_258A169D8(v22, sub_258A15324);
  sub_258A169D8(v30, sub_258A15600);
  return sub_258A169D8(v20, sub_258A15324);
}

uint64_t sub_258A1465C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v5 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v73 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A15540();
  v71 = v8;
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v61 - v13;
  sub_258A15164(0, &qword_27F96E4F0, &qword_27F96D1F8);
  v16 = v15;
  v72 = *(v15 - 8);
  v17 = *(v72 + 64);
  MEMORY[0x28223BE20](v15);
  v70 = &v61 - v18;
  sub_258A154C8();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v61 - v24;
  if (a1[2])
  {
    v26 = a1[4];
    v64 = a1[5];
    v65 = &v61 - v24;
    v27 = a1[6];
    v28 = a1[7];
    v29 = a1[9];
    v62 = a1[8];
    v75 = v26;
    v76 = v64;
    sub_2589BFF58();
    swift_bridgeObjectRetain_n();
    v61 = v27;

    sub_258B003E4();
    v30 = sub_258B01B44();
    v69 = a3;
    v32 = v31;
    v63 = v16;
    v34 = v33;
    v67 = v14;
    v35 = sub_258B01AE4();
    v66 = v23;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v68 = v12;
    sub_2589BFFAC(v30, v32, v34 & 1);

    v75 = v28;

    v41 = sub_258B01AB4();
    v43 = v42;
    LOBYTE(v30) = v44;
    v46 = v45;
    v47 = v36;
    v23 = v66;
    sub_2589BFFAC(v47, v38, v40 & 1);

    v75 = v41;
    v76 = v43;
    v77 = v30 & 1;
    v78 = v46;
    v79 = 256;
    v48 = _s19EntryMomentDataViewVMa();
    v49 = v70;
    sub_2589D7214(*(v74 + *(v48 + 24)), v62, v29);
    v50 = v43;
    v14 = v67;
    v12 = v68;
    sub_2589BFFAC(v41, v50, v30 & 1);

    v25 = v65;

    a3 = v69;

    sub_258A15F90(v49, v25);
    (*(v72 + 56))(v25, 0, 1, v63);
  }

  else
  {
    (*(v72 + 56))(&v61 - v24, 1, 1, v16);
  }

  sub_258A13F50(v14);
  v51 = sub_258B018A4();
  v52 = v73;
  sub_258AC1060(v73);
  sub_258A169D8(v52, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B00654();
  v53 = &v14[*(v71 + 36)];
  *v53 = v51;
  *(v53 + 1) = v54;
  *(v53 + 2) = v55;
  *(v53 + 3) = v56;
  *(v53 + 4) = v57;
  v53[40] = 0;
  sub_258A1693C(v25, v23, sub_258A154C8);
  sub_258A1693C(v14, v12, sub_258A15540);
  sub_258A1693C(v23, a3, sub_258A154C8);
  sub_258A15450();
  v59 = a3 + *(v58 + 48);
  *v59 = 0;
  *(v59 + 8) = 1;
  sub_258A1693C(v12, a3 + *(v58 + 64), sub_258A15540);
  sub_258A169D8(v14, sub_258A15540);
  sub_258A169D8(v25, sub_258A154C8);
  sub_258A169D8(v12, sub_258A15540);
  return sub_258A169D8(v23, sub_258A154C8);
}

uint64_t sub_258A14BA0(uint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v3 = a1[3];
  v22 = a1[5];
  v23 = a1[4];
  v24 = *a1;
  v25 = a1[1];
  sub_2589BFF58();
  sub_258B003E4();
  v5 = sub_258B01B44();
  v7 = v6;
  v9 = v8;
  v10 = sub_258B01AE4();
  v12 = v11;
  v14 = v13;
  sub_2589BFFAC(v5, v7, v9 & 1);

  v15 = sub_258B01AB4();
  v17 = v16;
  v19 = v18;
  sub_2589BFFAC(v10, v12, v14 & 1);

  v20 = _s19EntryMomentDataViewVMa();
  sub_2589D7214(*(a2 + *(v20 + 24)), v23, v22);
  sub_2589BFFAC(v15, v17, v19 & 1);
}

uint64_t sub_258A14D28()
{
  v1 = sub_258B01634();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A14ED4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A124CC(v0, v9);
  sub_258B01614();
  sub_258A15BF0(&qword_27F96E598, sub_258A14ED4, sub_258A15C60);
  sub_258B01D84();
  (*(v2 + 8))(v5, v1);
  return sub_258A169D8(v9, sub_258A14ED4);
}

void sub_258A14ED4()
{
  if (!qword_27F96E480)
  {
    sub_258A15E34(255, &qword_27F96E488, sub_258A14F70, sub_258A15A80, MEMORY[0x277CE0338]);
    v0 = sub_258B02074();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E480);
    }
  }
}

void sub_258A14FB8()
{
  if (!qword_27F96E498)
  {
    sub_258A1504C(255);
    sub_258A16A88(&qword_27F96E550, sub_258A1504C);
    v0 = sub_258B021D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E498);
    }
  }
}

void sub_258A15088(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_258A152A8(255, a3, a4, a5);
    v6 = sub_258B02574();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A150E4()
{
  if (!qword_27F96E4B0)
  {
    sub_258A15164(255, &qword_27F96D108, &qword_27F96D110);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E4B0);
    }
  }
}

void sub_258A15164(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2589DC8AC(255, a3);
    sub_258B017D4();
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258A151D8()
{
  if (!qword_27F96E4B8)
  {
    sub_258A1526C(255);
    sub_258A16A88(&qword_27F96E548, sub_258A1526C);
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E4B8);
    }
  }
}

void sub_258A152A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_258A15324()
{
  if (!qword_27F96E4D0)
  {
    sub_258A153B8(255);
    sub_258A16A88(&qword_27F96E508, sub_258A153B8);
    v0 = sub_258B021D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E4D0);
    }
  }
}

void sub_258A153EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A15450()
{
  if (!qword_27F96E4E0)
  {
    sub_258A154C8();
    sub_258A15540();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F96E4E0);
    }
  }
}

void sub_258A154C8()
{
  if (!qword_27F96E4E8)
  {
    sub_258A15164(255, &qword_27F96E4F0, &qword_27F96D1F8);
    v0 = sub_258B030C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E4E8);
    }
  }
}

void sub_258A15540()
{
  if (!qword_27F96E4F8)
  {
    sub_258A155A0();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E4F8);
    }
  }
}

void sub_258A155A0()
{
  if (!qword_27F96E500)
  {
    sub_258B017D4();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E500);
    }
  }
}

void sub_258A15600()
{
  if (!qword_27F96E510)
  {
    sub_258A156A8();
    sub_258A15BF0(&qword_27F96E538, sub_258A156A8, sub_258A15858);
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E510);
    }
  }
}

void sub_258A156A8()
{
  if (!qword_27F96E518)
  {
    sub_258A16A38(255, &qword_27F96E520, &_s19EntryMomentDataViewV15ItemDescriptionVN, MEMORY[0x277D83940]);
    sub_258A15164(255, &qword_27F96E4F0, &qword_27F96D1F8);
    sub_258A15788();
    sub_258A15804();
    v0 = sub_258B023D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E518);
    }
  }
}

unint64_t sub_258A15788()
{
  result = qword_27F96E528;
  if (!qword_27F96E528)
  {
    sub_258A16A38(255, &qword_27F96E520, &_s19EntryMomentDataViewV15ItemDescriptionVN, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E528);
  }

  return result;
}

unint64_t sub_258A15804()
{
  result = qword_27F96E530;
  if (!qword_27F96E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E530);
  }

  return result;
}

unint64_t sub_258A15858()
{
  result = qword_27F96E540;
  if (!qword_27F96E540)
  {
    sub_258A15164(255, &qword_27F96E4F0, &qword_27F96D1F8);
    sub_2589DC8FC();
    sub_258A16A88(&qword_280DF8950, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E540);
  }

  return result;
}

void sub_258A15928()
{
  if (!qword_27F96E558)
  {
    sub_258A159BC(255);
    sub_258A16A88(&qword_27F96E570, sub_258A159BC);
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E558);
    }
  }
}

void sub_258A159F0()
{
  if (!qword_27F96E568)
  {
    sub_258A15164(255, &qword_27F96D108, &qword_27F96D110);
    sub_258A151D8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96E568);
    }
  }
}

void sub_258A15A80()
{
  if (!qword_27F96E578)
  {
    sub_258A15B14(255);
    sub_258A16A88(&qword_27F96E590, sub_258A15B14);
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E578);
    }
  }
}

void sub_258A15B48()
{
  if (!qword_27F96E588)
  {
    sub_258A15164(255, &qword_27F96D108, &qword_27F96D110);
    sub_258A155A0();
    sub_258A15600();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F96E588);
    }
  }
}

uint64_t sub_258A15BF0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258A15C60()
{
  result = qword_27F96E5A0;
  if (!qword_27F96E5A0)
  {
    sub_258A15E34(255, &qword_27F96E488, sub_258A14F70, sub_258A15A80, MEMORY[0x277CE0338]);
    sub_258A15D54();
    sub_258A16A88(&qword_27F96E5C0, sub_258A15A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E5A0);
  }

  return result;
}

unint64_t sub_258A15D54()
{
  result = qword_27F96E5A8;
  if (!qword_27F96E5A8)
  {
    sub_258A14F70(255);
    sub_258A16A88(&qword_27F96E5B0, sub_258A14FB8);
    sub_258A16A88(&qword_27F96E5B8, sub_258A15928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E5A8);
  }

  return result;
}

void sub_258A15E34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_258A15EB8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00974();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258A15F28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A15F90(uint64_t a1, uint64_t a2)
{
  sub_258A15164(0, &qword_27F96E4F0, &qword_27F96D1F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A16014(uint64_t a1)
{
  sub_2589DC8AC(0, &qword_27F96D110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258A16088(uint64_t a1, uint64_t a2)
{
  sub_258A15164(0, &qword_27F96D108, &qword_27F96D110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A1610C(uint64_t a1)
{
  sub_258A15164(0, &qword_27F96D108, &qword_27F96D110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_6()
{
  v1 = _s19EntryMomentDataViewVMa();
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v0 + ((v2 + 16) & ~v2));
  sub_258A153EC(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = v1;
    v5 = sub_258B01504();
    v6 = *(v5 - 8);
    v7 = *(v6 + 48);
    if (!v7(v4, 1, v5))
    {
      (*(v6 + 8))(v4, v5);
    }

    v8 = type metadata accessor for StateOfMindTimeline.Styles(0);
    v9 = v8[5];
    v10 = sub_258B00AA4();
    v11 = *(*(v10 - 8) + 8);
    v12 = v4 + v9;
    v13 = v10;
    v11(v12, v10);
    v14 = v8[7];
    v15 = sub_258B006A4();
    v51 = *(*(v15 - 8) + 8);
    v52 = v15;
    v51(v4 + v14);
    v16 = v4 + v8[8];
    if (!v7(v16, 1, v5))
    {
      (*(v6 + 8))(v16, v5);
    }

    v17 = _s6StylesV8TimelineVMa(0);
    v11(&v16[*(v17 + 20)], v13);
    v18 = v4 + v8[9];
    if (!v7(v18, 1, v5))
    {
      (*(v6 + 8))(v18, v5);
    }

    v19 = _s6StylesV6NoDataVMa(0);
    v11(&v18[*(v19 + 20)], v13);
    v20 = v4 + v8[10];
    if (!v7(v20, 1, v5))
    {
      (*(v6 + 8))(v20, v5);
    }

    v21 = _s6StylesV11PlaceholderVMa(0);
    v11(&v20[*(v21 + 20)], v13);
    v22 = v4 + v8[11];
    if (!v7(v22, 1, v5))
    {
      (*(v6 + 8))(v22, v5);
    }

    v23 = _s6StylesV6SymbolVMa(0);
    v11(&v22[*(v23 + 20)], v13);
    v24 = v4 + v8[12];
    v54 = v13;
    if (!v7(v24, 1, v5))
    {
      (*(v6 + 8))(v24, v5);
    }

    v25 = v6;
    v26 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
    v11(&v24[*(v26 + 20)], v54);
    v27 = *(v26 + 28);
    v28 = v25;
    (v51)(&v24[v27], v52);
    v29 = v4 + v8[13];
    if (!v7(v29, 1, v5))
    {
      (*(v28 + 8))(v29, v5);
    }

    v30 = _s6StylesV5EmptyVMa(0);
    v11(&v29[*(v30 + 20)], v54);
    v31 = v4 + v8[14];
    if (!v7(v31, 1, v5))
    {
      (*(v28 + 8))(v31, v5);
    }

    v32 = _s6StylesV5DailyVMa(0);
    v11(&v31[*(v32 + 20)], v54);
    v33 = v4 + v8[15];
    if (!v7(v33, 1, v5))
    {
      (*(v28 + 8))(v33, v5);
    }

    v34 = _s6StylesV9MomentaryVMa(0);
    v11(&v33[*(v34 + 20)], v54);
    v35 = v4 + v8[16];
    if (!v7(v35, 1, v5))
    {
      (*(v28 + 8))(v35, v5);
    }

    v36 = _s6StylesV6HeaderVMa(0);
    v11(&v35[*(v36 + 20)], v54);
    v37 = v4 + v8[17];
    if (!v7(v37, 1, v5))
    {
      (*(v28 + 8))(v37, v5);
    }

    v38 = &v37[*(_s6StylesV11ChartButtonVMa(0) + 20)];
    v11(v38, v54);
    v39 = v4 + v8[18];
    if (!v7(v39, 1, v5))
    {
      (*(v28 + 8))(v39, v5);
    }

    v40 = _s6StylesV15LogButtonFooterVMa(0);
    v11(&v39[*(v40 + 20)], v54);
    v1 = v53;
  }

  else
  {
    v41 = *v4;
  }

  v42 = v4 + *(v1 + 20);
  v43 = sub_258B000C4();
  (*(*(v43 - 8) + 8))(v42, v43);
  v44 = _s5EntryVMa();
  v45 = *&v42[v44[5] + 8];

  v46 = *&v42[v44[6] + 8];

  v47 = *&v42[v44[7] + 8];

  v48 = *&v42[v44[8] + 8];

  v49 = *(v4 + *(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_258A168BC(uint64_t *a1)
{
  v3 = *(_s19EntryMomentDataViewVMa() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_258A14BA0(a1, v4);
}

uint64_t sub_258A1693C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A169D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A16A38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_258A16A88(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_258A16AE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_258A16B2C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_258A16B8C()
{
  result = qword_27F96E610;
  if (!qword_27F96E610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E610);
  }

  return result;
}

uint64_t sub_258A16BE4()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel____lazy_storage___isCompletingFirstTimeFlow;
  v3 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel____lazy_storage___isCompletingFirstTimeFlow);
  if (v3 == 2)
  {
    LOBYTE(v3) = sub_258A1B1C0(v0[2]) ^ 1;
    *(v0 + v2) = v3 & 1;
  }

  return v3 & 1;
}

double sub_258A16C88()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  return v1;
}

uint64_t sub_258A16CF4(uint64_t a1, char a2)
{
  v23 = *v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v21 = aBlock[0] == 2;
  v4 = v2 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_configuration;
  swift_beginAccess();
  v5 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  v6 = v4[*(v5 + 32)];
  v7 = v4[*(v5 + 36)];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v8 = *(aBlock[0] + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v9 = *(aBlock[0] + 16);

  v10 = v9 != 0;
  v11 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_completedAnalyticsSteps;
  swift_beginAccess();
  v12 = *(v2 + v11);
  sub_258B003E4();
  v13 = sub_258AFD6BC(a1, v12);

  v14 = sub_258A16BE4();
  type metadata accessor for StateOfMindLoggingEvent();
  v15 = swift_allocObject();
  v15[16] = a1;
  v15[17] = a2;
  v15[18] = v6;
  v15[19] = v7;
  v15[20] = v21;
  v15[21] = v8 != 0;
  v15[22] = v10;
  v15[23] = (v13 & 1) == 0;
  v15[24] = v14 & 1;
  v16 = sub_258A1B590();
  v17 = swift_allocObject();
  *(v17 + 16) = v23;
  aBlock[4] = sub_258A22E24;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_258AFDD38;
  aBlock[3] = &block_descriptor_87;
  v18 = _Block_copy(aBlock);

  [v16 submitEvent:v15 completion:v18];
  _Block_release(v18);

  v19 = *(v2 + v11);
  sub_258B003E4();
  LOBYTE(v16) = sub_258AFD6BC(a1, v19);

  if ((v16 & 1) == 0)
  {
    swift_beginAccess();
    sub_258AE56C4(&v24, a1);
    swift_endAccess();
  }
}

uint64_t sub_258A17080()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_258B00574();
}

uint64_t sub_258A17118()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_258B00574();
}

uint64_t StateOfMindEntryModel.context.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_258B00574();
  return sub_258A1A924();
}

uint64_t StateOfMindEntryModel.saveSample()()
{
  v1[2] = v0;
  sub_258B02D24();
  v1[3] = sub_258B02D14();
  v3 = sub_258B02CE4();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_258A1729C, v3, v2);
}

uint64_t sub_258A1729C()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_hasInitiatedSampleSave;
  if (*(v1 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_hasInitiatedSampleSave))
  {
    v3 = v0[3];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = sub_258A1BB58();
    v0[6] = v6;
    *(v1 + v2) = 1;
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_258A1739C;
    v8 = v0[2];

    return sub_258A1BE40(v6);
  }
}

uint64_t sub_258A1739C()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_258A174BC, v4, v3);
}

uint64_t sub_258A174BC()
{
  v1 = *(v0 + 16);
  sub_258A16CF4(7, 0);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_258A1755C;
  v3 = *(v0 + 16);

  return sub_258A1CEB0();
}

uint64_t sub_258A1755C()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 72) = v4;
  *v4 = v3;
  v4[1] = sub_258A1769C;
  v5 = *(v1 + 16);

  return sub_258A1D7C4();
}

uint64_t sub_258A1769C()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_258A177BC, v4, v3);
}

uint64_t sub_258A177BC()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

void StateOfMindEntryModel.Configuration.initialReflectiveInterval.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t StateOfMindEntryModel.Configuration.initialReflectiveInterval.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t StateOfMindEntryModel.Configuration.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StateOfMindEntryModel.Configuration(0) + 20);
  v4 = sub_258B00084();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StateOfMindEntryModel.Configuration.date.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for StateOfMindEntryModel.Configuration(0) + 20);
  v4 = sub_258B00084();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t StateOfMindEntryModel.Configuration.parentSampleUUID.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for StateOfMindEntryModel.Configuration(0) + 24);

  return sub_258A1DF88(a1, v3);
}

uint64_t StateOfMindEntryModel.Configuration.fitnessPlusSessionID.getter()
{
  v1 = (v0 + *(type metadata accessor for StateOfMindEntryModel.Configuration(0) + 28));
  v2 = *v1;
  v3 = v1[1];
  sub_258B003E4();
  return v2;
}

uint64_t StateOfMindEntryModel.Configuration.fitnessPlusSessionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StateOfMindEntryModel.Configuration(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StateOfMindEntryModel.Configuration.entryPoint.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t StateOfMindEntryModel.Configuration.entryPoint.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t StateOfMindEntryModel.Configuration.provenance.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t StateOfMindEntryModel.Configuration.provenance.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t StateOfMindEntryModel.Configuration.init(reflectiveInterval:date:parentSampleUUID:fitnessPlusSessionID:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  v14 = v13[6];
  v15 = sub_258B000C4();
  (*(*(v15 - 8) + 56))(a6 + v14, 1, 1, v15);
  v16 = (a6 + v13[7]);
  *(a6 + v13[8]) = 13;
  *(a6 + v13[9]) = 7;
  *a6 = v11;
  *(a6 + 8) = v12;
  v17 = v13[5];
  v18 = sub_258B00084();
  (*(*(v18 - 8) + 32))(a6 + v17, a2, v18);
  result = sub_258A1DF88(a3, a6 + v14);
  *v16 = a4;
  v16[1] = a5;
  return result;
}

uint64_t StateOfMindEntryModel.Configuration.init(reflectiveInterval:date:parentSampleUUID:fitnessPlusSessionID:entryPoint:provenance:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *a1;
  v11 = *(a1 + 8);
  v22 = *a6;
  v12 = *a7;
  v13 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  v14 = v13[6];
  v15 = sub_258B000C4();
  (*(*(v15 - 8) + 56))(a8 + v14, 1, 1, v15);
  v16 = v13[8];
  v17 = (a8 + v13[7]);
  *(a8 + v16) = 13;
  v18 = v13[9];
  *(a8 + v18) = 7;
  *a8 = v10;
  *(a8 + 8) = v11;
  v19 = v13[5];
  v20 = sub_258B00084();
  (*(*(v20 - 8) + 32))(a8 + v19, a2, v20);
  result = sub_258A1DF88(a3, a8 + v14);
  *v17 = a4;
  v17[1] = a5;
  *(a8 + v16) = v22;
  *(a8 + v18) = v12;
  return result;
}

unint64_t sub_258A17F40()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0xD000000000000014;
  v4 = 0x696F507972746E65;
  if (v1 != 4)
  {
    v4 = 0x6E616E65766F7270;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_258A18010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_258A209F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_258A18050(uint64_t a1)
{
  v2 = sub_258A1DFEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258A1808C(uint64_t a1)
{
  v2 = sub_258A1DFEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StateOfMindEntryModel.Configuration.encode(to:)(void *a1)
{
  v3 = v1;
  sub_258A22C24(0, &qword_27F96E648, sub_258A1DFEC, &type metadata for StateOfMindEntryModel.Configuration.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_258A1DFEC();
  sub_258B03574();
  v12 = *(v3 + 8);
  v20 = *v3;
  v21 = v12;
  v22 = 0;
  sub_258A1E040();
  sub_258B033E4();
  if (!v2)
  {
    v13 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
    v14 = v13[5];
    LOBYTE(v20) = 1;
    sub_258B00084();
    sub_258A1E190(&qword_27F96E660, MEMORY[0x277CC9578]);
    sub_258B033E4();
    v15 = v13[6];
    LOBYTE(v20) = 2;
    sub_258B000C4();
    sub_258A1E190(&qword_27F96E668, MEMORY[0x277CC95F0]);
    sub_258B033C4();
    v16 = (v3 + v13[7]);
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v20) = 3;
    sub_258B033B4();
    LOBYTE(v20) = *(v3 + v13[8]);
    v22 = 4;
    sub_258A1E094();
    sub_258B033C4();
    LOBYTE(v20) = *(v3 + v13[9]);
    v22 = 5;
    sub_258A1E0E8();
    sub_258B033C4();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t StateOfMindEntryModel.Configuration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  sub_258A1DF54(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258B00084();
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A22C24(0, &qword_27F96E680, sub_258A1DFEC, &type metadata for StateOfMindEntryModel.Configuration.CodingKeys, MEMORY[0x277D844C8]);
  v45 = v9;
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  v14 = *(*(v13 - 1) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 24);
  v19 = sub_258B000C4();
  v20 = *(*(v19 - 8) + 56);
  v47 = v18;
  v20(&v17[v18], 1, 1, v19);
  v21 = v13[8];
  v17[v21] = 13;
  v22 = v13[9];
  v48 = v17;
  v17[v22] = 7;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_258A1DFEC();
  v44 = v12;
  v24 = v46;
  sub_258B03564();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_258A1E2E8(v48 + v47, sub_258A1DF54);
  }

  else
  {
    v46 = v19;
    v26 = v40;
    v25 = v41;
    v36 = v22;
    v37 = v21;
    v27 = v42;
    v51 = 0;
    sub_258A1E13C();
    sub_258B03384();
    v28 = v48;
    v29 = v50;
    *v48 = v49;
    *(v28 + 8) = v29;
    LOBYTE(v49) = 1;
    sub_258A1E190(&qword_27F96E690, MEMORY[0x277CC9578]);
    sub_258B03384();
    (*(v25 + 32))(v28 + v13[5], v26, v27);
    LOBYTE(v49) = 2;
    sub_258A1E190(&qword_27F96E698, MEMORY[0x277CC95F0]);
    v30 = v39;
    sub_258B03364();
    sub_258A1DF88(v30, v28 + v47);
    LOBYTE(v49) = 3;
    v31 = sub_258B03354();
    v32 = (v28 + v13[7]);
    *v32 = v31;
    v32[1] = v33;
    v51 = 4;
    sub_258A1E1D8();
    sub_258B03364();
    *(v28 + v37) = v49;
    v51 = 5;
    sub_258A1E22C();
    sub_258B03364();
    (*(v43 + 8))(v44, v45);
    *(v28 + v36) = v49;
    sub_258A1E280(v28, v38, type metadata accessor for StateOfMindEntryModel.Configuration);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_258A1E2E8(v28, type metadata accessor for StateOfMindEntryModel.Configuration);
  }
}

uint64_t StateOfMindEntryModel.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_configuration;
  swift_beginAccess();
  return sub_258A1E280(v1 + v3, a1, type metadata accessor for StateOfMindEntryModel.Configuration);
}

uint64_t StateOfMindEntryModel.date.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();
}

uint64_t sub_258A18B34(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();
}

uint64_t sub_258A18BB0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_258B00084();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v12(v9, v11, v4);

  sub_258B00574();
  return (*(v5 + 8))(v11, v4);
}

uint64_t StateOfMindEntryModel.date.setter(uint64_t a1)
{
  v2 = sub_258B00084();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v3 + 16))(v6, a1, v2);

  sub_258B00574();
  return (*(v3 + 8))(a1, v2);
}

void (*StateOfMindEntryModel.date.modify(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_258B00554();
  return sub_258A23444;
}

void (*StateOfMindEntryModel.$date.modify(uint64_t *a1))(uint64_t, char)
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
  sub_258A1E348(0, &qword_27F96E6C0, MEMORY[0x277CC9578], MEMORY[0x277CBCEC0]);
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

  v10 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__date;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_258A1E348(0, &qword_27F96E6B8, MEMORY[0x277CC9578], MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_258B00534();
  swift_endAccess();
  return sub_258A23448;
}

uint64_t StateOfMindEntryModel.reflectiveInterval.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  return v1;
}

uint64_t sub_258A19170@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  *a2 = v5;
  return result;
}

uint64_t sub_258A191F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_258B00574();
}

uint64_t StateOfMindEntryModel.reflectiveInterval.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_258B00574();
}

void (*StateOfMindEntryModel.reflectiveInterval.modify(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_258B00554();
  return sub_258A23444;
}

void (*StateOfMindEntryModel.$reflectiveInterval.modify(uint64_t *a1))(uint64_t, char)
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
  sub_258A1E348(0, &qword_27F96E6D8, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CBCEC0]);
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

  v10 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__reflectiveInterval;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_258A1E348(0, &qword_27F96E6D0, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_258B00534();
  swift_endAccess();
  return sub_258A23448;
}

void (*StateOfMindEntryModel.valence.modify(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_258B00554();
  return sub_258A23444;
}

uint64_t sub_258A19670(uint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  swift_beginAccess();
  sub_258A22F34(0, a2, a3, MEMORY[0x277CBCED0]);
  sub_258B00534();
  return swift_endAccess();
}

uint64_t sub_258A19700(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t *a5, uint64_t a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  sub_258A22F34(0, a5, a6, MEMORY[0x277CBCED0]);
  sub_258B00534();
  return swift_endAccess();
}

uint64_t sub_258A19794(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t *a7, unint64_t *a8)
{
  v25 = a8;
  sub_258A22F34(0, a5, a6, MEMORY[0x277CBCEC0]);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - v19;
  v21 = *(v14 + 16);
  v21(&v25 - v19, a1, v13);
  v22 = *a2;
  v21(v18, v20, v13);
  v23 = *a7;
  swift_beginAccess();
  sub_258A22F34(0, v25, a6, MEMORY[0x277CBCED0]);
  sub_258B00544();
  swift_endAccess();
  return (*(v14 + 8))(v20, v13);
}

uint64_t sub_258A1996C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t *a4, unint64_t *a5)
{
  sub_258A22F34(0, a2, a3, MEMORY[0x277CBCEC0]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(&v16 - v13, a1, v10);
  v14 = *a4;
  swift_beginAccess();
  sub_258A22F34(0, a5, a3, MEMORY[0x277CBCED0]);
  sub_258B00544();
  swift_endAccess();
  return (*(v11 + 8))(a1, v10);
}

void (*StateOfMindEntryModel.$valence.modify(uint64_t *a1))(uint64_t, char)
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
  sub_258A22F34(0, &qword_27F96E6E8, MEMORY[0x277D839F8], MEMORY[0x277CBCEC0]);
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

  v10 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__valence;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_258A22F34(0, &qword_27F96E6E0, MEMORY[0x277D839F8], MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_258B00534();
  swift_endAccess();
  return sub_258A23448;
}

void (*StateOfMindEntryModel.labels.modify(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_258B00554();
  return sub_258A23444;
}

void (*StateOfMindEntryModel.$labels.modify(uint64_t *a1))(uint64_t, char)
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
  sub_258A1E348(0, &qword_27F96E6F8, sub_258A1E3AC, MEMORY[0x277CBCEC0]);
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

  v10 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__labels;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_258A1E348(0, &qword_27F96E6F0, sub_258A1E3AC, MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_258B00534();
  swift_endAccess();
  return sub_258A23448;
}

uint64_t sub_258A19F34()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  return v1;
}

uint64_t sub_258A19FB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  *a2 = v5;
  return result;
}

uint64_t sub_258A1A044(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B003E4();

  return sub_258B00574();
}

void (*StateOfMindEntryModel.domains.modify(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_258B00554();
  return sub_258A23444;
}

uint64_t sub_258A1A188(uint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a1;
  swift_beginAccess();
  sub_258A1E348(0, a2, a3, MEMORY[0x277CBCED0]);
  sub_258B00534();
  return swift_endAccess();
}

uint64_t sub_258A1A218(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  sub_258A1E348(0, a5, a6, MEMORY[0x277CBCED0]);
  sub_258B00534();
  return swift_endAccess();
}

uint64_t sub_258A1A2AC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t *a7, unint64_t *a8)
{
  v25 = a8;
  sub_258A1E348(0, a5, a6, MEMORY[0x277CBCEC0]);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - v19;
  v21 = *(v14 + 16);
  v21(&v25 - v19, a1, v13);
  v22 = *a2;
  v21(v18, v20, v13);
  v23 = *a7;
  swift_beginAccess();
  sub_258A1E348(0, v25, a6, MEMORY[0x277CBCED0]);
  sub_258B00544();
  swift_endAccess();
  return (*(v14 + 8))(v20, v13);
}

uint64_t sub_258A1A490(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t *a4, unint64_t *a5)
{
  sub_258A1E348(0, a2, a3, MEMORY[0x277CBCEC0]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(&v16 - v13, a1, v10);
  v14 = *a4;
  swift_beginAccess();
  sub_258A1E348(0, a5, a3, MEMORY[0x277CBCED0]);
  sub_258B00544();
  swift_endAccess();
  return (*(v11 + 8))(a1, v10);
}

void (*StateOfMindEntryModel.$domains.modify(uint64_t *a1))(uint64_t, char)
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
  sub_258A1E348(0, &qword_27F96E708, sub_258A0AFC8, MEMORY[0x277CBCEC0]);
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

  v10 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__domains;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_258A1E348(0, &qword_27F96E700, sub_258A0AFC8, MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_258B00534();
  swift_endAccess();
  return sub_258A23448;
}

uint64_t StateOfMindEntryModel.context.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  return v1;
}

uint64_t sub_258A1A81C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_258A1A89C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B003E4();

  sub_258B00574();
  return sub_258A1A924();
}

uint64_t sub_258A1A924()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v0 = sub_258B02B84();

  if (v0 >= 61)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    v2 = sub_258A2095C(60);
    v4 = v3;
    v6 = v5;
    v8 = v7;

    MEMORY[0x259C93160](v2, v4, v6, v8);

    swift_getKeyPath();
    swift_getKeyPath();

    v9 = sub_258B00574();
    return sub_258A1A924(v9);
  }

  return result;
}

void (*StateOfMindEntryModel.context.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_258A1AB5C;
}

void sub_258A1AB5C(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v3[2] = v4;
  v6 = v3[4];
  v3[3] = v5;

  if (a2)
  {
    sub_258B003E4();
    sub_258B00574();
    sub_258A1A924();
    v7 = v3[1];
  }

  else
  {
    sub_258B00574();
    sub_258A1A924();
  }

  free(v3);
}

void (*StateOfMindEntryModel.$context.modify(uint64_t *a1))(uint64_t, char)
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
  sub_258A22F34(0, &qword_27F96E718, MEMORY[0x277D837D0], MEMORY[0x277CBCEC0]);
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

  v10 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__context;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_258A22F34(0, &qword_27F96E710, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_258B00534();
  swift_endAccess();
  return sub_258A23448;
}

double sub_258A1AE2C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_258A1AEBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_258B00574();
}

void (*StateOfMindEntryModel.effectiveValence.modify(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_258B00554();
  return sub_258A1AFD8;
}

void (*StateOfMindEntryModel.$effectiveValence.modify(uint64_t *a1))(uint64_t, char)
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
  sub_258A22F34(0, &qword_27F96E6E8, MEMORY[0x277D839F8], MEMORY[0x277CBCEC0]);
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

  v10 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__effectiveValence;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_258A22F34(0, &qword_27F96E6E0, MEMORY[0x277D839F8], MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_258B00534();
  swift_endAccess();
  return sub_258A1B1BC;
}

uint64_t sub_258A1B1C0(uint64_t a1)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v2 = sub_258B00384();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v35 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x277CCD438]) initWithFeatureIdentifier:*MEMORY[0x277CCC100] healthStore:a1];
  v36[0] = 0;
  v11 = [v10 featureOnboardingRecordWithError_];
  if (v11)
  {
    v12 = v11;
    v13 = v36[0];
    sub_258B00364();
    v14 = sub_258B00374();
    v15 = sub_258B02EA4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35[0] = v2;
      v18 = v17;
      v36[0] = v17;
      *v16 = 136446210;
      v19 = sub_258B035A4();
      v21 = sub_2589F1F78(v19, v20, v36);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_2589A1000, v14, v15, "[%{public}s]: Retrieved onboarding record", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x259C945C0](v18, -1, -1);
      MEMORY[0x259C945C0](v16, -1, -1);

      (*(v3 + 8))(v9, v35[0]);
    }

    else
    {

      (*(v3 + 8))(v9, v2);
    }

    v32 = [v12 isOnboardingPresent];
  }

  else
  {
    v22 = v36[0];
    v23 = sub_258AFFDC4();

    swift_willThrow();
    sub_258B00364();
    v24 = sub_258B00374();
    v25 = sub_258B02E84();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35[0] = v2;
      v28 = v27;
      v36[0] = v27;
      *v26 = 136446210;
      v29 = sub_258B035A4();
      v31 = sub_2589F1F78(v29, v30, v36);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_2589A1000, v24, v25, "[%{public}s]: Error checking state of mind onboarding record", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x259C945C0](v28, -1, -1);
      MEMORY[0x259C945C0](v26, -1, -1);

      (*(v3 + 8))(v7, v35[0]);
    }

    else
    {

      (*(v3 + 8))(v7, v2);
    }

    v32 = 1;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

id sub_258A1B590()
{
  v1 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel____lazy_storage___eventSubmissionManager;
  v2 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel____lazy_storage___eventSubmissionManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel____lazy_storage___eventSubmissionManager);
  }

  else
  {
    v4 = HKLogMentalHealthCategory();
    v5 = [objc_allocWithZone(MEMORY[0x277CCCFE8]) initWithLoggingCategory:v4 healthDataSource:*(v0 + 16)];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void *StateOfMindEntryModel.__allocating_init(healthStore:configuration:onSampleSave:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  v11 = sub_258A20C0C(a1, a2, a3, a4);

  return v11;
}

void *StateOfMindEntryModel.init(healthStore:configuration:onSampleSave:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_258A20C0C(a1, a2, a3, a4);

  return v5;
}

void *StateOfMindEntryModel.__allocating_init(healthStore:date:reflectiveInterval:valence:labels:domains:context:parentSampleUUID:onSampleSave:)(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11)
{
  v49 = a8;
  v50 = *&a5;
  v51 = *&a6;
  v52 = a7;
  v48 = *&a4;
  v46 = a2;
  v44 = a3;
  v45 = a10;
  v53 = a11;
  v54 = a1;
  v14 = sub_258B00084();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v43 - v20;
  sub_258A1DF54(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  v27 = (v26 - 8);
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_258A1DF54;
  sub_258A1E280(a8, v25, sub_258A1DF54);
  v31 = &v30[v27[7]];
  sub_258B00074();
  v32 = v27[8];
  v33 = sub_258B000C4();
  (*(*(v33 - 8) + 56))(&v30[v32], 1, 1, v33);
  v34 = &v30[v27[9]];
  v30[v27[10]] = 13;
  v30[v27[11]] = 7;
  *v30 = v44;
  v30[8] = 0;
  sub_258A1DF88(v25, &v30[v32]);
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = *(v11 + 48);
  v36 = *(v11 + 52);
  swift_allocObject();
  v37 = v53;

  v38 = sub_258A20C0C(v54, v30, v45, v37);

  v39 = v15[2];
  v40 = v46;
  v39(v21, v46, v14);
  swift_getKeyPath();
  swift_getKeyPath();
  v39(v19, v21, v14);
  swift_retain_n();
  sub_258B00574();
  v41 = v15[1];
  v41(v21, v14);
  swift_getKeyPath();
  swift_getKeyPath();
  v55 = a9;

  sub_258B00574();
  swift_getKeyPath();
  swift_getKeyPath();
  v55 = v48;

  sub_258B00574();
  swift_getKeyPath();
  swift_getKeyPath();
  v55 = v50;

  sub_258B00574();
  swift_getKeyPath();
  swift_getKeyPath();
  v55 = v51;
  v56 = v52;

  sub_258B00574();
  sub_258A1A924();

  sub_258A1E2E8(v49, v47);
  v41(v40, v14);
  return v38;
}

uint64_t static StateOfMindEntryModel.Configuration.InitialReflectiveInterval.explicit(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_258A1BB58()
{
  v0 = sub_258B00084();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v2 = *(v4 + 16);

  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();
  }

  sub_2589F4488(0, &qword_27F96D8A0, 0x277CCDA30);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  sub_258AD6068(MEMORY[0x277D84F90]);
  return sub_258B02E34();
}

uint64_t sub_258A1BE40(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  v2[38] = *v1;
  v3 = sub_258B00384();
  v2[39] = v3;
  v4 = *(v3 - 8);
  v2[40] = v4;
  v5 = *(v4 + 64) + 15;
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  sub_258A1DF54(0);
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[43] = swift_task_alloc();
  v8 = sub_258B000C4();
  v2[44] = v8;
  v9 = *(v8 - 8);
  v2[45] = v9;
  v10 = *(v9 + 64) + 15;
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  sub_258B02D24();
  v2[48] = sub_258B02D14();
  v12 = sub_258B02CE4();
  v2[49] = v12;
  v2[50] = v11;

  return MEMORY[0x2822009F8](sub_258A1BFFC, v12, v11);
}

uint64_t sub_258A1BFFC()
{
  v1 = v0[36];
  v2 = *(v0[37] + 16);
  v0[51] = v2;
  sub_258A22F34(0, &qword_27F970720, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_258B2E600;
  *(v3 + 32) = v1;
  sub_2589F4488(0, &qword_27F96E840, 0x277CCD6F0);
  v4 = v1;
  v5 = sub_258B02C64();
  v0[52] = v5;

  v0[2] = v0;
  v0[3] = sub_258A1C1AC;
  v6 = swift_continuation_init();
  sub_258A22D48();
  v0[53] = v7;
  v0[25] = v7;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_258A1E718;
  v0[21] = &block_descriptor_90;
  v0[22] = v6;
  [v2 saveObjects:v5 skipInsertionFilter:1 completion:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_258A1C1AC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 432) = v3;
  v4 = *(v1 + 400);
  v5 = *(v1 + 392);
  if (v3)
  {
    v6 = sub_258A1C9A8;
  }

  else
  {
    v6 = sub_258A1C2DC;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_258A1C2DC()
{
  v1 = swift_task_alloc();
  *(v0 + 440) = v1;
  *v1 = v0;
  v1[1] = sub_258A1C37C;
  v2 = *(v0 + 344);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);

  return sub_258A1E7C4(v2);
}

uint64_t sub_258A1C37C()
{
  v1 = *v0;
  v2 = *(*v0 + 440);
  v6 = *v0;

  v3 = *(v1 + 400);
  v4 = *(v1 + 392);

  return MEMORY[0x2822009F8](sub_258A1C49C, v4, v3);
}

uint64_t sub_258A1C49C()
{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[48];

    sub_258A1E2E8(v3, sub_258A1DF54);
    v5 = v0[37] + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_didSaveSample;
    v6 = *(v5 + 8);
    (*v5)(v0[36]);
    v8 = v0[46];
    v7 = v0[47];
    v10 = v0[42];
    v9 = v0[43];
    v11 = v0[41];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v25 = v0[53];
    v26 = v0[51];
    v14 = v0[46];
    v15 = v0[36];
    v17 = *(v2 + 32);
    v16 = v2 + 32;
    v17(v0[47], v3, v1);
    sub_258A1E348(0, &qword_27F96E848, MEMORY[0x277CC95F0], MEMORY[0x277D84560]);
    v18 = *(v16 + 40);
    v19 = (*(v16 + 48) + 32) & ~*(v16 + 48);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_258B2C470;
    v21 = [v15 UUID];
    sub_258B000B4();

    v17(v20 + v19, v14, v1);
    v22 = sub_258B02C64();
    v0[56] = v22;

    v23 = sub_258B00094();
    v0[57] = v23;
    v0[10] = v0;
    v0[11] = sub_258A1C794;
    v24 = swift_continuation_init();
    v0[33] = v25;
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_258A1E718;
    v0[29] = &block_descriptor_94;
    v0[30] = v24;
    [v26 associateSampleUUIDs:v22 withSampleUUID:v23 completion:?];

    return MEMORY[0x282200938](v0 + 10);
  }
}

uint64_t sub_258A1C794()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 464) = v3;
  v4 = *(v1 + 400);
  v5 = *(v1 + 392);
  if (v3)
  {
    v6 = sub_258A1CC14;
  }

  else
  {
    v6 = sub_258A1C8C4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_258A1C8C4()
{
  v2 = v0[56];
  v1 = v0[57];
  v4 = v0[47];
  v3 = v0[48];
  v5 = v0[44];
  v6 = v0[45];

  (*(v6 + 8))(v4, v5);

  v7 = v0[37] + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_didSaveSample;
  v8 = *(v7 + 8);
  (*v7)(v0[36]);
  v10 = v0[46];
  v9 = v0[47];
  v12 = v0[42];
  v11 = v0[43];
  v13 = v0[41];

  v14 = v0[1];

  return v14();
}

uint64_t sub_258A1C9A8()
{
  v35 = v0;
  v1 = v0[54];
  v2 = v0[52];
  v3 = v0[48];
  v4 = v0[42];

  swift_willThrow();

  sub_258B00364();
  v5 = v1;
  v6 = sub_258B00374();
  v7 = sub_258B02E84();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[54];
    v33 = v0[42];
    v10 = v0[39];
    v9 = v0[40];
    v11 = v0[38];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34[0] = v13;
    *v12 = 136446466;
    v14 = sub_258B035A4();
    v16 = sub_2589F1F78(v14, v15, v34);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v0[34] = v8;
    v17 = v8;
    sub_2589F3AFC();
    v18 = sub_258B02B44();
    v20 = sub_2589F1F78(v18, v19, v34);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_2589A1000, v6, v7, "[%{public}s] Failed to save sample: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v13, -1, -1);
    MEMORY[0x259C945C0](v12, -1, -1);

    (*(v9 + 8))(v33, v10);
  }

  else
  {
    v21 = v0[42];
    v22 = v0[39];
    v23 = v0[40];

    (*(v23 + 8))(v21, v22);
  }

  v24 = v0[54];
  v25 = v0[37];
  sub_258A16CF4(8, 0);

  v27 = v0[46];
  v26 = v0[47];
  v29 = v0[42];
  v28 = v0[43];
  v30 = v0[41];

  v31 = v0[1];

  return v31();
}

uint64_t sub_258A1CC14()
{
  v39 = v0;
  v2 = *(v0 + 456);
  v1 = *(v0 + 464);
  v3 = *(v0 + 448);
  v5 = *(v0 + 376);
  v4 = *(v0 + 384);
  v6 = *(v0 + 352);
  v7 = *(v0 + 360);
  v8 = *(v0 + 328);

  swift_willThrow();
  (*(v7 + 8))(v5, v6);

  sub_258B00364();
  v9 = v1;
  v10 = sub_258B00374();
  v11 = sub_258B02E84();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 464);
    v13 = *(v0 + 320);
    v37 = *(v0 + 328);
    v15 = *(v0 + 304);
    v14 = *(v0 + 312);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v38[0] = v17;
    *v16 = 136446466;
    v18 = sub_258B035A4();
    v20 = sub_2589F1F78(v18, v19, v38);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    *(v0 + 280) = v12;
    v21 = v12;
    sub_2589F3AFC();
    v22 = sub_258B02B44();
    v24 = sub_2589F1F78(v22, v23, v38);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_2589A1000, v10, v11, "[%{public}s] Failed to save association: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v17, -1, -1);
    MEMORY[0x259C945C0](v16, -1, -1);

    (*(v13 + 8))(v37, v14);
  }

  else
  {
    v26 = *(v0 + 320);
    v25 = *(v0 + 328);
    v27 = *(v0 + 312);

    (*(v26 + 8))(v25, v27);
  }

  v28 = *(v0 + 296) + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_didSaveSample;
  v29 = *(v28 + 8);
  (*v28)(*(v0 + 288));
  v31 = *(v0 + 368);
  v30 = *(v0 + 376);
  v33 = *(v0 + 336);
  v32 = *(v0 + 344);
  v34 = *(v0 + 328);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_258A1CEB0()
{
  v1[19] = v0;
  v1[20] = *v0;
  v2 = sub_258B00384();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v5 = sub_258B00084();
  v1[25] = v5;
  v6 = *(v5 - 8);
  v1[26] = v6;
  v7 = *(v6 + 64) + 15;
  v1[27] = swift_task_alloc();
  sub_258B02D24();
  v1[28] = sub_258B02D14();
  v9 = sub_258B02CE4();
  v1[29] = v9;
  v1[30] = v8;

  return MEMORY[0x2822009F8](sub_258A1D034, v9, v8);
}

uint64_t sub_258A1D034()
{
  v1 = v0[19];
  if (sub_258A16BE4())
  {
    v3 = v0[26];
    v2 = v0[27];
    v4 = v0[25];
    v5 = *MEMORY[0x277CCC100];
    v6 = [objc_allocWithZone(MEMORY[0x277CCD438]) initWithFeatureIdentifier:*MEMORY[0x277CCC100] healthStore:*(v0[19] + 16)];
    v0[31] = v6;
    sub_258B00044();
    v7 = objc_allocWithZone(MEMORY[0x277CCD740]);
    v8 = sub_258B00014();
    v9 = [v7 initWithFeatureIdentifier:v5 version:1 completionDate:v8 countryCode:0 countryCodeProvenance:0];
    v0[32] = v9;

    (*(v3 + 8))(v2, v4);
    v0[2] = v0;
    v0[3] = sub_258A1D270;
    v10 = swift_continuation_init();
    sub_258A22D48();
    v0[17] = v11;
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_258A1E718;
    v0[13] = &block_descriptor_83;
    v0[14] = v10;
    [v6 saveOnboardingCompletion:v9 settings:0 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v12 = v0[28];

    v13 = v0[27];
    v14 = v0[23];
    v15 = v0[24];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_258A1D270()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 264) = v3;
  v4 = *(v1 + 240);
  v5 = *(v1 + 232);
  if (v3)
  {
    v6 = sub_258A1D560;
  }

  else
  {
    v6 = sub_258A1D3A0;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_258A1D3A0()
{
  v25 = v0;
  v1 = v0[28];
  v2 = v0[24];

  sub_258B00364();
  v3 = sub_258B00374();
  v4 = sub_258B02EA4();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[31];
  v7 = v0[32];
  v8 = v0[24];
  v9 = v0[21];
  v10 = v0[22];
  if (v5)
  {
    v23 = v0[21];
    v11 = v0[20];
    v22 = v0[24];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136446210;
    v14 = sub_258B035A4();
    v16 = sub_2589F1F78(v14, v15, &v24);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_2589A1000, v3, v4, "[%{public}s]: Successfully saved onboarding record", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x259C945C0](v13, -1, -1);
    MEMORY[0x259C945C0](v12, -1, -1);

    (*(v10 + 8))(v22, v23);
  }

  else
  {

    (*(v10 + 8))(v8, v9);
  }

  v17 = v0[27];
  v18 = v0[23];
  v19 = v0[24];

  v20 = v0[1];

  return v20();
}

uint64_t sub_258A1D560()
{
  v34 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 224);
  v3 = *(v0 + 184);

  swift_willThrow();
  sub_258B00364();
  v4 = v1;
  v5 = sub_258B00374();
  v6 = sub_258B02E84();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 256);
    v8 = *(v0 + 264);
    v9 = *(v0 + 176);
    v32 = *(v0 + 184);
    v10 = *(v0 + 160);
    v30 = *(v0 + 248);
    v31 = *(v0 + 168);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33[0] = v12;
    *v11 = 136446466;
    v13 = sub_258B035A4();
    v15 = sub_2589F1F78(v13, v14, v33);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    *(v0 + 144) = v8;
    v16 = v8;
    sub_2589F3AFC();
    v17 = sub_258B02B44();
    v19 = sub_2589F1F78(v17, v18, v33);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_2589A1000, v5, v6, "[%{public}s]: Error saving onboarding record: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v12, -1, -1);
    MEMORY[0x259C945C0](v11, -1, -1);

    (*(v9 + 8))(v32, v31);
  }

  else
  {
    v20 = *(v0 + 264);
    v21 = *(v0 + 248);
    v23 = *(v0 + 176);
    v22 = *(v0 + 184);
    v24 = *(v0 + 168);

    (*(v23 + 8))(v22, v24);
  }

  v25 = *(v0 + 216);
  v26 = *(v0 + 184);
  v27 = *(v0 + 192);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_258A1D7C4()
{
  v1[19] = v0;
  v1[20] = *v0;
  v2 = sub_258B00384();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  sub_258B02D24();
  v1[25] = sub_258B02D14();
  v6 = sub_258B02CE4();
  v1[26] = v6;
  v1[27] = v5;

  return MEMORY[0x2822009F8](sub_258A1D8EC, v6, v5);
}

uint64_t sub_258A1D8EC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCD6A8]) initWithHealthStore_];
  v0[28] = v1;
  v0[2] = v0;
  v0[3] = sub_258A1DA20;
  v2 = swift_continuation_init();
  sub_258A22D48();
  v0[17] = v3;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_258A1E718;
  v0[13] = &block_descriptor_4;
  v0[14] = v2;
  [v1 forceNanoSyncWithOptions:0 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_258A1DA20()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 232) = v3;
  v4 = *(v1 + 216);
  v5 = *(v1 + 208);
  if (v3)
  {
    v6 = sub_258A1DCF4;
  }

  else
  {
    v6 = sub_258A1DB50;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_258A1DB50()
{
  v22 = v0;
  v2 = v0[24];
  v1 = v0[25];

  sub_258B00364();
  v3 = sub_258B00374();
  v4 = sub_258B02EA4();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[28];
  v7 = v0[24];
  v8 = v0[21];
  v9 = v0[22];
  if (v5)
  {
    v10 = v0[20];
    v20 = v0[24];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136446210;
    v13 = sub_258B035A4();
    v15 = sub_2589F1F78(v13, v14, &v21);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2589A1000, v3, v4, "[%{public}s] Successfully completed nano sync", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x259C945C0](v12, -1, -1);
    MEMORY[0x259C945C0](v11, -1, -1);

    (*(v9 + 8))(v20, v8);
  }

  else
  {

    (*(v9 + 8))(v7, v8);
  }

  v17 = v0[23];
  v16 = v0[24];

  v18 = v0[1];

  return v18();
}

uint64_t sub_258A1DCF4()
{
  v31 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);

  swift_willThrow();
  sub_258B00364();
  v4 = v1;
  v5 = sub_258B00374();
  v6 = sub_258B02E84();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 232);
    v9 = *(v0 + 176);
    v10 = *(v0 + 160);
    v28 = *(v0 + 168);
    v29 = *(v0 + 184);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30[0] = v12;
    *v11 = 136446466;
    v13 = sub_258B035A4();
    v15 = sub_2589F1F78(v13, v14, v30);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    *(v0 + 144) = v8;
    v16 = v8;
    sub_2589F3AFC();
    v17 = sub_258B02B44();
    v19 = sub_2589F1F78(v17, v18, v30);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_2589A1000, v5, v6, "[%{public}s] Nano sync finished with error: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v12, -1, -1);
    MEMORY[0x259C945C0](v11, -1, -1);

    (*(v9 + 8))(v29, v28);
  }

  else
  {
    v20 = *(v0 + 232);
    v22 = *(v0 + 176);
    v21 = *(v0 + 184);
    v23 = *(v0 + 168);

    (*(v22 + 8))(v21, v23);
  }

  v25 = *(v0 + 184);
  v24 = *(v0 + 192);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_258A1DF88(uint64_t a1, uint64_t a2)
{
  sub_258A1DF54(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_258A1DFEC()
{
  result = qword_27F96E650;
  if (!qword_27F96E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E650);
  }

  return result;
}

unint64_t sub_258A1E040()
{
  result = qword_27F96E658;
  if (!qword_27F96E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E658);
  }

  return result;
}

unint64_t sub_258A1E094()
{
  result = qword_27F96E670;
  if (!qword_27F96E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E670);
  }

  return result;
}

unint64_t sub_258A1E0E8()
{
  result = qword_27F96E678;
  if (!qword_27F96E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E678);
  }

  return result;
}

unint64_t sub_258A1E13C()
{
  result = qword_27F96E688;
  if (!qword_27F96E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E688);
  }

  return result;
}

uint64_t sub_258A1E190(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_258A1E1D8()
{
  result = qword_27F96E6A0;
  if (!qword_27F96E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E6A0);
  }

  return result;
}

unint64_t sub_258A1E22C()
{
  result = qword_27F96E6A8;
  if (!qword_27F96E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E6A8);
  }

  return result;
}

uint64_t sub_258A1E280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A1E2E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A1E348(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A1E3E0(char a1, void *a2)
{
  v4 = sub_258B00384();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  if (a1)
  {
    sub_258B00364();
    v12 = sub_258B00374();
    v13 = sub_258B02E64();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v36 = v15;
      *v14 = 136446210;
      v16 = sub_258B035A4();
      v18 = sub_2589F1F78(v16, v17, &v36);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_2589A1000, v12, v13, "[%{public}s] Successfully submitted analytics", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x259C945C0](v15, -1, -1);
      MEMORY[0x259C945C0](v14, -1, -1);
    }

    v19 = *(v5 + 8);
    v20 = v11;
    goto LABEL_9;
  }

  sub_258B00364();
  v21 = a2;
  v22 = sub_258B00374();
  v23 = sub_258B02E84();

  if (!os_log_type_enabled(v22, v23))
  {

    v19 = *(v5 + 8);
    v20 = v9;
LABEL_9:
    v33 = v4;
    return v19(v20, v33);
  }

  v35 = v4;
  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v36 = v26;
  *v24 = 136446466;
  v27 = sub_258B035A4();
  v29 = sub_2589F1F78(v27, v28, &v36);

  *(v24 + 4) = v29;
  *(v24 + 12) = 2112;
  if (a2)
  {
    v30 = a2;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    v32 = v31;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  *(v24 + 14) = v31;
  *v25 = v32;
  _os_log_impl(&dword_2589A1000, v22, v23, "[%{public}s] Failed to submit analytics with error: %@", v24, 0x16u);
  sub_258A22E44(v25);
  MEMORY[0x259C945C0](v25, -1, -1);
  __swift_destroy_boxed_opaque_existential_1(v26);
  MEMORY[0x259C945C0](v26, -1, -1);
  MEMORY[0x259C945C0](v24, -1, -1);

  v19 = *(v5 + 8);
  v20 = v9;
  v33 = v35;
  return v19(v20, v33);
}

uint64_t sub_258A1E718(uint64_t a1, int a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return MEMORY[0x282200950](v5);
  }

  if (!a3)
  {
    __break(1u);
    return MEMORY[0x282200950](v5);
  }

  sub_2589F3AFC();
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return MEMORY[0x282200958](v6, v7);
}

uint64_t sub_258A1E7C4(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = *v1;
  v3 = sub_258B00384();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  sub_258A22ECC(0, &qword_27F96E850, &qword_27F96E858, 0x277CCD8A8, MEMORY[0x277CCB610]);
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  sub_258B02D24();
  v2[16] = sub_258B02D14();
  v10 = sub_258B02CE4();
  v2[17] = v10;
  v2[18] = v9;

  return MEMORY[0x2822009F8](sub_258A1E974, v10, v9);
}

uint64_t sub_258A1E974()
{
  v1 = v0[7] + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_configuration;
  swift_beginAccess();
  v2 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  v3 = (v1 + *(v2 + 28));
  if (v3[1])
  {
    v4 = v0[15];
    v35 = v0[7];
    v5 = *v3;
    v6 = objc_opt_self();
    v7 = *MEMORY[0x277D28010];
    sub_258B003E4();
    v8 = v7;
    v9 = sub_258B02AD4();

    v10 = [v6 predicateForObjectsWithMetadataKey:v8 operatorType:4 value:v9];
    v0[19] = v10;

    v11 = MEMORY[0x277CCB570];
    sub_258A22F84(0, &qword_27F96E860, &qword_27F96E868, MEMORY[0x277CCB570]);
    sub_258A22ECC(0, &qword_27F96E868, &qword_27F96E858, 0x277CCD8A8, v11);
    v13 = *(*(v12 - 8) + 72);
    v14 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
    *(swift_allocObject() + 16) = xmmword_258B2C470;
    sub_2589F4488(0, &qword_27F96E870, 0x277CCD0C0);
    v15 = MEMORY[0x259C934C0](*MEMORY[0x277CCBA30]);
    sub_2589F4488(0, &qword_27F96E858, 0x277CCD8A8);
    v16 = v10;
    sub_258B028E4();

    v17 = MEMORY[0x277CC89F0];
    sub_258A22F84(0, &qword_27F96E878, &qword_27F96E880, MEMORY[0x277CC89F0]);
    sub_258A22ECC(0, &qword_27F96E880, &qword_27F96E858, 0x277CCD8A8, v17);
    v19 = *(*(v18 - 8) + 72);
    v20 = (*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80);
    *(swift_allocObject() + 16) = xmmword_258B2C470;
    KeyPath = swift_getKeyPath();
    MEMORY[0x259C90380](KeyPath, 1);
    sub_258B028F4();
    v22 = *(v35 + 16);
    v23 = *(MEMORY[0x277CCB608] + 4);
    v24 = swift_task_alloc();
    v0[20] = v24;
    *v24 = v0;
    v24[1] = sub_258A1EDB4;
    v25 = v0[15];
    v26 = v0[13];

    return MEMORY[0x282120380](v22, v26);
  }

  else
  {
    v27 = v2;
    v28 = v0[16];
    v29 = v0[6];

    sub_258A1E280(v1 + *(v27 + 24), v29, sub_258A1DF54);
    v30 = v0[15];
    v31 = v0[11];
    v32 = v0[12];

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_258A1EDB4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  v7 = *(v3 + 144);
  v8 = *(v3 + 136);
  if (v1)
  {
    v9 = sub_258A1F244;
  }

  else
  {
    v9 = sub_258A1EEF8;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_258A1EEF8()
{
  v43 = v0;
  v1 = v0[21];
  v2 = v0[16];

  if (v1 >> 62)
  {
    if (v0[21] < 0)
    {
      v12 = v0[21];
    }

    result = sub_258B032B4();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v13 = v0[21];
    v14 = v0[12];

    sub_258B00364();
    v15 = sub_258B00374();
    v16 = sub_258B02E84();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[19];
    v19 = v0[14];
    v20 = v0[15];
    v22 = v0[12];
    v21 = v0[13];
    v24 = v0[9];
    v23 = v0[10];
    if (v17)
    {
      v40 = v0[12];
      v25 = v0[8];
      v41 = v0[13];
      v26 = swift_slowAlloc();
      v39 = v18;
      v27 = swift_slowAlloc();
      v42 = v27;
      *v26 = 136446210;
      v28 = sub_258B035A4();
      v38 = v20;
      v30 = sub_2589F1F78(v28, v29, &v42);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_2589A1000, v15, v16, "[%{public}s] Unable to find associated Fitness+ meditation session sample", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x259C945C0](v27, -1, -1);
      MEMORY[0x259C945C0](v26, -1, -1);

      (*(v23 + 8))(v40, v24);
      (*(v19 + 8))(v38, v41);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
      (*(v19 + 8))(v20, v21);
    }

    v31 = v0[6];
    v32 = sub_258B000C4();
    (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
    goto LABEL_14;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C937C0](0, v0[21]);
    v37 = v0[21];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v0[21] + 32);
  }

  v5 = v0[19];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[13];
  v9 = v0[6];

  v10 = [v4 UUID];
  sub_258B000B4();

  (*(v7 + 8))(v6, v8);
  v11 = sub_258B000C4();
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
LABEL_14:
  v33 = v0[15];
  v34 = v0[11];
  v35 = v0[12];

  v36 = v0[1];

  return v36();
}

uint64_t sub_258A1F244()
{
  v41 = v0;
  v1 = v0[22];
  v2 = v0[16];
  v3 = v0[11];

  sub_258B00364();
  v4 = v1;
  v5 = sub_258B00374();
  v6 = sub_258B02E84();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[22];
    v8 = v0[14];
    v38 = v0[13];
    v39 = v0[15];
    v9 = v0[10];
    v36 = v0[19];
    v37 = v0[11];
    v10 = v0[8];
    v35 = v0[9];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v40 = v12;
    *v11 = 136446466;
    v13 = sub_258B035A4();
    v15 = sub_2589F1F78(v13, v14, &v40);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v0[5] = v7;
    v16 = v7;
    sub_2589F3AFC();
    v17 = sub_258B02B44();
    v19 = sub_2589F1F78(v17, v18, &v40);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_2589A1000, v5, v6, "[%{public}s] Error querying find associated samples: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v12, -1, -1);
    MEMORY[0x259C945C0](v11, -1, -1);

    (*(v9 + 8))(v37, v35);
    (*(v8 + 8))(v39, v38);
  }

  else
  {
    v20 = v0[22];
    v21 = v0[19];
    v23 = v0[14];
    v22 = v0[15];
    v24 = v0[13];
    v26 = v0[10];
    v25 = v0[11];
    v27 = v0[9];

    (*(v26 + 8))(v25, v27);
    (*(v23 + 8))(v22, v24);
  }

  v28 = v0[6];
  v29 = sub_258B000C4();
  (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
  v30 = v0[15];
  v31 = v0[11];
  v32 = v0[12];

  v33 = v0[1];

  return v33();
}

void sub_258A1F520(id *a1)
{
  v1 = [*a1 startDate];
  sub_258B00034();
}

uint64_t StateOfMindEntryModel.deinit()
{
  sub_258A1E2E8(v0 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_configuration, type metadata accessor for StateOfMindEntryModel.Configuration);
  v1 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_didSaveSample + 8);

  v2 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__date;
  v3 = MEMORY[0x277CBCED0];
  sub_258A1E348(0, &qword_27F96E6B8, MEMORY[0x277CC9578], MEMORY[0x277CBCED0]);
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__reflectiveInterval;
  sub_258A1E348(0, &qword_27F96E6D0, type metadata accessor for __HKStateOfMindReflectiveInterval, v3);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__valence;
  v8 = MEMORY[0x277CBCED0];
  sub_258A22F34(0, &qword_27F96E6E0, MEMORY[0x277D839F8], MEMORY[0x277CBCED0]);
  v10 = v9;
  v11 = *(*(v9 - 8) + 8);
  v11(v0 + v7, v9);
  v12 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__labels;
  sub_258A1E348(0, &qword_27F96E6F0, sub_258A1E3AC, v3);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__domains;
  sub_258A1E348(0, &qword_27F96E700, sub_258A0AFC8, v3);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__context;
  sub_258A22F34(0, &qword_27F96E710, MEMORY[0x277D837D0], v8);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v11(v0 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__effectiveValence, v10);

  v18 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_completedAnalyticsSteps);

  return v0;
}

uint64_t StateOfMindEntryModel.__deallocating_deinit()
{
  StateOfMindEntryModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258A1F8E0(void *a1, uint64_t a2, int a3)
{
  v38 = a3;
  v36 = a2;
  v4 = MEMORY[0x277D84538];
  sub_258A22C24(0, &qword_27F96E7B8, sub_258A22244, &type metadata for StateOfMindEntryModel.Configuration.InitialReflectiveInterval.Storage.InferredCodingKeys, MEMORY[0x277D84538]);
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = &v29 - v7;
  sub_258A22C24(0, &qword_27F96E7C8, sub_258A22298, &type metadata for StateOfMindEntryModel.Configuration.InitialReflectiveInterval.Storage.FixedCodingKeys, v4);
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  sub_258A22C24(0, &qword_27F96E7D8, sub_258A222EC, &type metadata for StateOfMindEntryModel.Configuration.InitialReflectiveInterval.Storage.ExplicitCodingKeys, v4);
  v13 = v12;
  v30 = *(v12 - 8);
  v14 = *(v30 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  sub_258A22C24(0, &qword_27F96E7E8, sub_258A22340, &type metadata for StateOfMindEntryModel.Configuration.InitialReflectiveInterval.Storage.CodingKeys, v4);
  v37 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v29 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_258A22340();
  sub_258B03574();
  if (!v38)
  {
    v25 = v30;
    v39 = 0;
    sub_258A222EC();
    v23 = v37;
    sub_258B033A4();
    sub_258B033D4();
    (*(v25 + 8))(v16, v13);
    return (*(v18 + 8))(v21, v23);
  }

  if (v38 == 1)
  {
    v40 = 1;
    sub_258A22298();
    v23 = v37;
    sub_258B033A4();
    v24 = v33;
    sub_258B033D4();
    (*(v32 + 8))(v11, v24);
    return (*(v18 + 8))(v21, v23);
  }

  v41 = 2;
  sub_258A22244();
  v27 = v31;
  v28 = v37;
  sub_258B033A4();
  (*(v34 + 8))(v27, v35);
  return (*(v18 + 8))(v21, v28);
}

uint64_t sub_258A1FD5C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_258B004E4();
  *a1 = result;
  return result;
}

uint64_t sub_258A1FDAC()
{
  v1 = 0x6465786966;
  if (*v0 != 1)
  {
    v1 = 0x6465727265666E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746963696C707865;
  }
}

uint64_t sub_258A1FE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_258A2248C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_258A1FE38(uint64_t a1)
{
  v2 = sub_258A22340();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258A1FE74(uint64_t a1)
{
  v2 = sub_258A22340();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258A1FEC8(uint64_t a1)
{
  v2 = sub_258A222EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258A1FF04(uint64_t a1)
{
  v2 = sub_258A222EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258A1FF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_258B03454();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_258A1FFC8(uint64_t a1)
{
  v2 = sub_258A22298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258A20004(uint64_t a1)
{
  v2 = sub_258A22298();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258A2004C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_258A2007C(uint64_t a1)
{
  v2 = sub_258A22244();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258A200B8(uint64_t a1)
{
  v2 = sub_258A22244();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258A200F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_258A225A0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_258A20144(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2 == v3;
  }

  v6 = v5;
  v8 = v4 == 1 && v2 == v3;
  v10 = v4 == 2 && v3 == 0;
  if (*(a1 + 8) != 1)
  {
    v8 = v10;
  }

  if (*(a1 + 8))
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

uint64_t static StateOfMindEntryModel.Configuration.InitialReflectiveInterval.explicitFromKind(_:)@<X0>(uint64_t a1@<X8>)
{
  result = HKStateOfMindReflectiveIntervalFromKind();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t static StateOfMindEntryModel.Configuration.InitialReflectiveInterval.fixed(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 1;
  return result;
}

uint64_t static StateOfMindEntryModel.Configuration.InitialReflectiveInterval.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 != 1 || v2 != v3)
      {
        return 0;
      }
    }

    else if (v4 != 2 || v3 != 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      v7 = 0;
    }

    else
    {
      v7 = v2 == v3;
    }

    if (!v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_258A2022C()
{
  sub_258B03514();
  MEMORY[0x259C93B20](0);
  return sub_258B03554();
}

uint64_t sub_258A20270()
{
  sub_258B03514();
  MEMORY[0x259C93B20](0);
  return sub_258B03554();
}

uint64_t sub_258A202C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656761726F7473 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_258B03454();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_258A20350(uint64_t a1)
{
  v2 = sub_258A21834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258A2038C(uint64_t a1)
{
  v2 = sub_258A21834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StateOfMindEntryModel.Configuration.InitialReflectiveInterval.encode(to:)(void *a1)
{
  sub_258A22C24(0, &qword_27F96E738, sub_258A21834, &type metadata for StateOfMindEntryModel.Configuration.InitialReflectiveInterval.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_258A21834();
  sub_258B03574();
  v13 = v9;
  v14 = v10;
  sub_258A21888();
  sub_258B033E4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t StateOfMindEntryModel.Configuration.InitialReflectiveInterval.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (!*(v0 + 8) || v2 == 1)
  {
    MEMORY[0x259C93B20]();
    v2 = v1;
  }

  return MEMORY[0x259C93B20](v2);
}

uint64_t StateOfMindEntryModel.Configuration.InitialReflectiveInterval.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_258B03514();
  v3 = v2;
  if (v2 <= 1)
  {
    MEMORY[0x259C93B20]();
    v3 = v1;
  }

  MEMORY[0x259C93B20](v3);
  return sub_258B03554();
}

uint64_t StateOfMindEntryModel.Configuration.InitialReflectiveInterval.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_258A22C24(0, &qword_27F96E750, sub_258A21834, &type metadata for StateOfMindEntryModel.Configuration.InitialReflectiveInterval.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_258A21834();
  sub_258B03564();
  if (!v2)
  {
    v11 = v16;
    sub_258A218DC();
    sub_258B03384();
    (*(v6 + 8))(v9, v5);
    v12 = v15;
    *v11 = v14;
    *(v11 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_258A207C4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_258B03514();
  v3 = v2;
  if (v2 <= 1)
  {
    MEMORY[0x259C93B20]();
    v3 = v1;
  }

  MEMORY[0x259C93B20](v3);
  return sub_258B03554();
}

uint64_t sub_258A2082C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (!*(v0 + 8) || v2 == 1)
  {
    MEMORY[0x259C93B20]();
    v2 = v1;
  }

  return MEMORY[0x259C93B20](v2);
}

uint64_t sub_258A20874()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_258B03514();
  v3 = v2;
  if (v2 <= 1)
  {
    MEMORY[0x259C93B20]();
    v3 = v1;
  }

  MEMORY[0x259C93B20](v3);
  return sub_258B03554();
}

uint64_t sub_258A20908(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 != 1 || v2 != v3)
      {
        return 0;
      }
    }

    else if (v4 != 2 || v3 != 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      v7 = 0;
    }

    else
    {
      v7 = v2 == v3;
    }

    if (!v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_258A2095C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_258B02BA4();

    return sub_258B02C04();
  }

  return result;
}

uint64_t sub_258A209F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000019 && 0x8000000258B37020 == a2 || (sub_258B03454() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_258B03454() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000258B37040 == a2 || (sub_258B03454() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000258B37060 == a2 || (sub_258B03454() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696F507972746E65 && a2 == 0xEA0000000000746ELL || (sub_258B03454() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E616E65766F7270 && a2 == 0xEA00000000006563)
  {

    return 5;
  }

  else
  {
    v5 = sub_258B03454();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void *sub_258A20C0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v101 = a3;
  v102 = a4;
  v103 = a2;
  v95 = *v4;
  v7 = sub_258B00384();
  v8 = *(v7 - 8);
  v97 = v7;
  v98 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v93 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v92 = &v91 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v94 = &v91 - v15;
  MEMORY[0x28223BE20](v14);
  v96 = &v91 - v16;
  v17 = sub_258B00084();
  v99 = *(v17 - 8);
  v18 = v99;
  v19 = *(v99 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v100 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v91 - v22;
  sub_258A22F34(0, &qword_27F96E6E0, MEMORY[0x277D839F8], MEMORY[0x277CBCED0]);
  v25 = v24;
  v26 = *(v24 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  v29 = &v91 - v28;
  v30 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel__effectiveValence;
  v106[0] = 0;
  sub_258B00524();
  v31 = v4 + v30;
  v32 = v103;
  (*(v26 + 32))(v31, v29, v25);
  *(v4 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel____lazy_storage___isCompletingFirstTimeFlow) = 2;
  *(v4 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_hasInitiatedSampleSave) = 0;
  *(v4 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel____lazy_storage___eventSubmissionManager) = 0;
  *(v4 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_completedAnalyticsSteps) = MEMORY[0x277D84FA0];
  v4[2] = a1;
  sub_258A1E280(v32, v4 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_configuration, type metadata accessor for StateOfMindEntryModel.Configuration);
  v33 = (v4 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_didSaveSample);
  v34 = v102;
  *v33 = v101;
  v33[1] = v34;
  v35 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  v36 = *(v18 + 16);
  v101 = *(v35 + 20);
  v36(v23, v32 + v101, v17);
  swift_beginAccess();
  v36(v100, v23, v17);
  v37 = a1;

  sub_258B00524();
  (*(v99 + 8))(v23, v17);
  swift_endAccess();
  v38 = *v32;
  if (!*(v32 + 8))
  {
    swift_beginAccess();
    v104 = v38;
    type metadata accessor for __HKStateOfMindReflectiveInterval(0);
    sub_258B00524();
    swift_endAccess();
    sub_258B00364();
    v50 = sub_258B00374();
    v51 = sub_258B02EA4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v106[0] = v53;
      *v52 = 136446466;
      v54 = sub_258B035A4();
      v56 = sub_2589F1F78(v54, v55, v106);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2082;
      v104 = v38;
      v57 = sub_258B02B34();
      v59 = sub_2589F1F78(v57, v58, v106);

      *(v52 + 14) = v59;
      _os_log_impl(&dword_2589A1000, v50, v51, "[%{public}s] Initialized with explicit: %{public}s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C945C0](v53, -1, -1);
      MEMORY[0x259C945C0](v52, -1, -1);
    }

    (*(v98 + 8))(v96, v97);
    goto LABEL_17;
  }

  if (*(v32 + 8) == 1)
  {
    swift_beginAccess();
    v104 = v38;
    type metadata accessor for __HKStateOfMindReflectiveInterval(0);
    sub_258B00524();
    swift_endAccess();
    v39 = v94;
    sub_258B00364();
    v40 = sub_258B00374();
    v41 = sub_258B02EA4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v106[0] = v43;
      *v42 = 136446466;
      v44 = sub_258B035A4();
      v46 = sub_2589F1F78(v44, v45, v106);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2082;
      v104 = v38;
      v47 = sub_258B02B34();
      v49 = sub_2589F1F78(v47, v48, v106);

      *(v42 + 14) = v49;
      _os_log_impl(&dword_2589A1000, v40, v41, "[%{public}s] Initialized with fixed: %{public}s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C945C0](v43, -1, -1);
      MEMORY[0x259C945C0](v42, -1, -1);
    }

    (*(v98 + 8))(v39, v97);
LABEL_17:
    swift_beginAccess();
    v104 = 0;
    sub_258B00524();
    swift_endAccess();
    swift_beginAccess();
    v87 = MEMORY[0x277D84F90];
    v104 = MEMORY[0x277D84F90];
    sub_258A1E3AC(0);
    sub_258B00524();
    swift_endAccess();
    swift_beginAccess();
    v104 = v87;
    sub_258A0AFC8(0);
    sub_258B00524();
    swift_endAccess();
    swift_beginAccess();
    v104 = 0;
    v105 = 0xE000000000000000;
    sub_258B00524();
    swift_endAccess();
    v88 = [objc_opt_self() hkmh_mentalHealthDefaults];
    v89 = sub_258B02AD4();
    v90 = [v88 BOOLForKey_];

    sub_258A1E2E8(v103, type metadata accessor for StateOfMindEntryModel.Configuration);
    *(v5 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_useLiveVisualization) = v90 ^ 1;
    return v5;
  }

  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v61 = result;
    v62 = [result isAppleWatch];

    if (v62)
    {
      swift_beginAccess();
      v104 = 1;
      type metadata accessor for __HKStateOfMindReflectiveInterval(0);
      sub_258B00524();
      swift_endAccess();
      v63 = v92;
      sub_258B00364();
      v64 = sub_258B00374();
      v65 = sub_258B02EA4();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v106[0] = v67;
        *v66 = 136446210;
        v68 = sub_258B035A4();
        v70 = sub_2589F1F78(v68, v69, v106);

        *(v66 + 4) = v70;
        _os_log_impl(&dword_2589A1000, v64, v65, "[%{public}s] Initialized (not inferring reflective interval)", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v67);
        MEMORY[0x259C945C0](v67, -1, -1);
        MEMORY[0x259C945C0](v66, -1, -1);
      }

      (*(v98 + 8))(v63, v97);
    }

    else
    {
      v71 = objc_allocWithZone(MEMORY[0x277D62528]);
      v72 = v37;
      v73 = sub_258B02AD4();
      v74 = [v71 initWithIdentifier:v73 healthStore:v72];

      type metadata accessor for PreferredReflectiveIntervalProvider();
      *(swift_initStackObject() + 16) = v74;
      v75 = sub_258A77E94(v103 + v101);
      swift_beginAccess();
      v104 = v75;
      type metadata accessor for __HKStateOfMindReflectiveInterval(0);
      sub_258B00524();
      swift_endAccess();
      v76 = v93;
      sub_258B00364();
      v77 = sub_258B00374();
      v78 = sub_258B02EA4();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v106[0] = v80;
        *v79 = 136446466;
        v81 = sub_258B035A4();
        v83 = sub_2589F1F78(v81, v82, v106);

        *(v79 + 4) = v83;
        *(v79 + 12) = 2082;
        v104 = v75;
        v84 = sub_258B02B34();
        v86 = sub_2589F1F78(v84, v85, v106);

        *(v79 + 14) = v86;
        _os_log_impl(&dword_2589A1000, v77, v78, "[%{public}s] Initialized with inferred: %{public}s", v79, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C945C0](v80, -1, -1);
        MEMORY[0x259C945C0](v79, -1, -1);

        (*(v98 + 8))(v93, v97);
      }

      else
      {

        (*(v98 + 8))(v76, v97);
      }
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

unint64_t sub_258A21834()
{
  result = qword_27F96E740;
  if (!qword_27F96E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E740);
  }

  return result;
}

unint64_t sub_258A21888()
{
  result = qword_27F96E748;
  if (!qword_27F96E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E748);
  }

  return result;
}

unint64_t sub_258A218DC()
{
  result = qword_27F96E758;
  if (!qword_27F96E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E758);
  }

  return result;
}

unint64_t sub_258A21934()
{
  result = qword_27F96E760;
  if (!qword_27F96E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E760);
  }

  return result;
}

uint64_t sub_258A219B0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A219E8()
{
  v0 = type metadata accessor for StateOfMindEntryModel.Configuration(319);
  if (v1 <= 0x3F)
  {
    v15 = *(v0 - 8) + 64;
    sub_258A1E348(319, &qword_27F96E6B8, MEMORY[0x277CC9578], MEMORY[0x277CBCED0]);
    if (v3 <= 0x3F)
    {
      v16 = *(v2 - 8) + 64;
      sub_258A1E348(319, &qword_27F96E6D0, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CBCED0]);
      if (v5 <= 0x3F)
      {
        v17 = *(v4 - 8) + 64;
        sub_258A22F34(319, &qword_27F96E6E0, MEMORY[0x277D839F8], MEMORY[0x277CBCED0]);
        if (v7 <= 0x3F)
        {
          v8 = *(v6 - 8) + 64;
          sub_258A1E348(319, &qword_27F96E6F0, sub_258A1E3AC, MEMORY[0x277CBCED0]);
          if (v10 <= 0x3F)
          {
            v18 = *(v9 - 8) + 64;
            sub_258A1E348(319, &qword_27F96E700, sub_258A0AFC8, MEMORY[0x277CBCED0]);
            if (v12 <= 0x3F)
            {
              v19 = *(v11 - 8) + 64;
              sub_258A22F34(319, &qword_27F96E710, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
              if (v14 <= 0x3F)
              {
                v20 = *(v13 - 8) + 64;
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_258A21D84()
{
  sub_258B00084();
  if (v0 <= 0x3F)
  {
    sub_258A1DF54(319);
    if (v1 <= 0x3F)
    {
      sub_258A22F34(319, qword_280DF8FA0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_258A22F34(319, &qword_280DF89A8, &type metadata for StateOfMindLoggingAnalyticsEntryPointType, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_258A22F34(319, &qword_280DF89A0, &type metadata for StateOfMindLoggingAnalyticsProvenanceType, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_258A21EF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_258A21F38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_258A21F7C(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_258A21F94(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_258A21FE0()
{
  result = qword_27F96E780;
  if (!qword_27F96E780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E780);
  }

  return result;
}

unint64_t sub_258A22038()
{
  result = qword_27F96E788;
  if (!qword_27F96E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E788);
  }

  return result;
}

unint64_t sub_258A22090()
{
  result = qword_27F96E790;
  if (!qword_27F96E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E790);
  }

  return result;
}

unint64_t sub_258A220E8()
{
  result = qword_27F96E798;
  if (!qword_27F96E798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E798);
  }

  return result;
}

unint64_t sub_258A22140()
{
  result = qword_27F96E7A0;
  if (!qword_27F96E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E7A0);
  }

  return result;
}

unint64_t sub_258A22198()
{
  result = qword_27F96E7A8;
  if (!qword_27F96E7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E7A8);
  }

  return result;
}

unint64_t sub_258A221F0()
{
  result = qword_27F96E7B0;
  if (!qword_27F96E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E7B0);
  }

  return result;
}

unint64_t sub_258A22244()
{
  result = qword_27F96E7C0;
  if (!qword_27F96E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E7C0);
  }

  return result;
}

unint64_t sub_258A22298()
{
  result = qword_27F96E7D0;
  if (!qword_27F96E7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E7D0);
  }

  return result;
}

unint64_t sub_258A222EC()
{
  result = qword_27F96E7E0;
  if (!qword_27F96E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E7E0);
  }

  return result;
}

unint64_t sub_258A22340()
{
  result = qword_27F96E7F0;
  if (!qword_27F96E7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E7F0);
  }

  return result;
}

uint64_t sub_258A22394()
{
  v0 = sub_258B03024();
  v1 = *(v0 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_258AA924C(0, v1, 0);
    v2 = 32;
    v3 = v10;
    do
    {
      v4 = *(v0 + v2);
      v5 = sub_258B03014();
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        v8 = v5;
        sub_258AA924C((v6 > 1), v7 + 1, 1);
        v5 = v8;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 8 * v7 + 32) = v5;
      v2 += 8;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_258A2248C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746963696C707865 && a2 == 0xE800000000000000;
  if (v4 || (sub_258B03454() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465786966 && a2 == 0xE500000000000000 || (sub_258B03454() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465727265666E69 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_258B03454();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_258A225A0(uint64_t *a1)
{
  v2 = MEMORY[0x277D844C8];
  sub_258A22C24(0, &qword_27F96E7F8, sub_258A22244, &type metadata for StateOfMindEntryModel.Configuration.InitialReflectiveInterval.Storage.InferredCodingKeys, MEMORY[0x277D844C8]);
  v47 = v3;
  v44 = *(v3 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3);
  v49 = &v40 - v5;
  sub_258A22C24(0, &qword_27F96E800, sub_258A22298, &type metadata for StateOfMindEntryModel.Configuration.InitialReflectiveInterval.Storage.FixedCodingKeys, v2);
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](v6);
  v48 = &v40 - v8;
  sub_258A22C24(0, &qword_27F96E808, sub_258A222EC, &type metadata for StateOfMindEntryModel.Configuration.InitialReflectiveInterval.Storage.ExplicitCodingKeys, v2);
  v10 = v9;
  v43 = *(v9 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  sub_258A22C24(0, &qword_27F96E810, sub_258A22340, &type metadata for StateOfMindEntryModel.Configuration.InitialReflectiveInterval.Storage.CodingKeys, v2);
  v15 = v14;
  v50 = *(v14 - 8);
  v16 = *(v50 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - v17;
  v19 = a1[4];
  v20 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_258A22340();
  v21 = v51;
  sub_258B03564();
  if (!v21)
  {
    v23 = v48;
    v22 = v49;
    v41 = v18;
    v42 = a1;
    v51 = sub_258B03394();
    v24 = *(v51 + 16);
    if (v24)
    {
      v25 = *(v51 + 32);
      if (v24 == 1 && v25 != 3)
      {
        if (*(v51 + 32))
        {
          v34 = v50;
          if (v25 != 1)
          {
            v54 = 2;
            sub_258A22244();
            v39 = v41;
            sub_258B03334();
            (*(v44 + 8))(v22, v47);
            (*(v34 + 8))(v39, v15);
            swift_unknownObjectRelease();
            v20 = 0;
LABEL_17:
            __swift_destroy_boxed_opaque_existential_1(v42);
            return v20;
          }

          v53 = 1;
          sub_258A22298();
          v35 = v41;
          sub_258B03334();
          v36 = v46;
          v20 = sub_258B03374();
          (*(v45 + 8))(v23, v36);
          (*(v34 + 8))(v35, v15);
        }

        else
        {
          v52 = 0;
          sub_258A222EC();
          v37 = v41;
          sub_258B03334();
          v38 = v50;
          v20 = sub_258B03374();
          (*(v43 + 8))(v13, v10);
          (*(v38 + 8))(v37, v15);
        }

        swift_unknownObjectRelease();
        goto LABEL_17;
      }
    }

    v27 = sub_258B03204();
    swift_allocError();
    v28 = v15;
    v30 = v29;
    sub_258A22C8C();
    v32 = *(v31 + 48);
    *v30 = &type metadata for StateOfMindEntryModel.Configuration.InitialReflectiveInterval.Storage;
    v20 = v41;
    sub_258B03344();
    sub_258B031E4();
    (*(*(v27 - 8) + 104))(v30, *MEMORY[0x277D84160], v27);
    swift_willThrow();
    (*(v50 + 8))(v20, v28);
    swift_unknownObjectRelease();
    a1 = v42;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v20;
}

void sub_258A22C24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_258A22C8C()
{
  if (!qword_27F96E818)
  {
    sub_258A22CFC();
    sub_258B031F4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96E818);
    }
  }
}

unint64_t sub_258A22CFC()
{
  result = qword_27F96E820;
  if (!qword_27F96E820)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27F96E820);
  }

  return result;
}

void sub_258A22D48()
{
  if (!qword_27F96E828)
  {
    sub_2589F3AFC();
    v0 = sub_258B02D54();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E828);
    }
  }
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t block_copy_helper_85(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_258A22E44(uint64_t a1)
{
  sub_258A22ECC(0, &qword_27F96E830, &qword_27F96E838, 0x277D82BB8, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258A22ECC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2589F4488(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_258A22F34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258A22F84(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_258A22ECC(255, a3, &qword_27F96E858, 0x277CCD8A8, a4);
    v5 = sub_258B03424();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_258A23040()
{
  result = qword_27F96E888;
  if (!qword_27F96E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E888);
  }

  return result;
}

unint64_t sub_258A23098()
{
  result = qword_27F96E890;
  if (!qword_27F96E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E890);
  }

  return result;
}

unint64_t sub_258A230F0()
{
  result = qword_27F96E898;
  if (!qword_27F96E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E898);
  }

  return result;
}

unint64_t sub_258A23148()
{
  result = qword_27F96E8A0;
  if (!qword_27F96E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E8A0);
  }

  return result;
}

unint64_t sub_258A231A0()
{
  result = qword_27F96E8A8;
  if (!qword_27F96E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E8A8);
  }

  return result;
}

unint64_t sub_258A231F8()
{
  result = qword_27F96E8B0;
  if (!qword_27F96E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E8B0);
  }

  return result;
}

unint64_t sub_258A23250()
{
  result = qword_27F96E8B8;
  if (!qword_27F96E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E8B8);
  }

  return result;
}

unint64_t sub_258A232A8()
{
  result = qword_27F96E8C0;
  if (!qword_27F96E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E8C0);
  }

  return result;
}

unint64_t sub_258A23300()
{
  result = qword_27F96E8C8;
  if (!qword_27F96E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E8C8);
  }

  return result;
}

unint64_t sub_258A23358()
{
  result = qword_27F96E8D0;
  if (!qword_27F96E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E8D0);
  }

  return result;
}

unint64_t sub_258A233B0()
{
  result = qword_27F96E8D8;
  if (!qword_27F96E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E8D8);
  }

  return result;
}

void (*sub_258A2349C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_258B005E4();
  return sub_2589FE1B8;
}

unint64_t sub_258A23528()
{
  result = qword_27F96E8E0[0];
  if (!qword_27F96E8E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F96E8E0);
  }

  return result;
}

uint64_t sub_258A2357C(uint64_t a1, char a2)
{
  v27 = a1;
  v26 = sub_258B00934();
  v3 = *(v26 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v26);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_258B009D4();
  sub_258A240EC(&qword_27F96DAE0, MEMORY[0x277CDF7F8]);
  v8 = sub_258B02DA4();
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v10 = v8;
  v30 = MEMORY[0x277D84F90];
  sub_258AA920C(0, v8 & ~(v8 >> 63), 0);
  v9 = v30;
  result = sub_258B02D94();
  if ((v10 & 0x8000000000000000) == 0)
  {
    v24 = (v3 + 8);
    v25 = (v3 + 16);
    v12 = a2 & 1;
    do
    {
      v13 = sub_258B02DD4();
      v14 = v7;
      v15 = v26;
      (*v25)(v6);
      v13(v29, 0);
      v29[0] = v12;
      v28 = 1;
      sub_258B00914();
      v17 = v16;
      v19 = v18;
      (*v24)(v6, v15);
      v30 = v9;
      v21 = *(v9 + 16);
      v20 = *(v9 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_258AA920C((v20 > 1), v21 + 1, 1);
        v9 = v30;
      }

      *(v9 + 16) = v21 + 1;
      v22 = v9 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      sub_258B02DC4();
      --v10;
      v7 = v14;
    }

    while (v10);
    return v9;
  }

  __break(1u);
  return result;
}

double sub_258A23800(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = sub_258A2357C(a1, a2 & 1);
  v6 = *(v5 + 16);
  if (!v6)
  {
    v7 = 0.0;
    goto LABEL_16;
  }

  v7 = 0.0;
  v8 = 32;
  v9 = *(v5 + 16);
  do
  {
    if (v7 <= *(v5 + v8))
    {
      v7 = *(v5 + v8);
    }

    v8 += 16;
    --v9;
  }

  while (v9);
  if (a4)
  {
    if (v6 == 1)
    {
      v10 = 0;
      v11 = 0.0;
LABEL_14:
      v16 = v6 - v10;
      v17 = (v5 + 16 * v10 + 40);
      do
      {
        v18 = *v17;
        v17 += 2;
        v11 = v11 + v18;
        --v16;
      }

      while (v16);
      goto LABEL_16;
    }

    v10 = v6 & 0x7FFFFFFFFFFFFFFELL;
    v12 = (v5 + 56);
    v11 = 0.0;
    v13 = v6 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v14 = *(v12 - 2);
      v15 = *v12;
      v12 += 4;
      v11 = v11 + v14 + v15;
      v13 -= 2;
    }

    while (v13);
    if (v6 != v10)
    {
      goto LABEL_14;
    }
  }

LABEL_16:

  return v7;
}

uint64_t sub_258A238F8(uint64_t a1, char a2, char *a3, double a4, double a5)
{
  v72 = sub_258B00934();
  v61 = *(v72 - 8);
  v9 = *(v61 + 64);
  MEMORY[0x28223BE20](v72);
  v71 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589FE2AC();
  v68 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v73 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_258B009D4();
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v14);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A23F78(0, &qword_27F96DAB0, MEMORY[0x277D84110]);
  v63 = v19;
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v60 - v21;
  sub_258A23F78(0, &qword_27F96DAD0, MEMORY[0x277D84118]);
  v24 = v23;
  v25 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v70 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v62 = &v60 - v28;
  v29 = sub_258A2357C(a1, a2 & 1);
  v30 = *(v29 + 16);
  v69 = v22;
  if (v30)
  {
    v64 = v24;
    v65 = v15;
    v66 = v18;
    v67 = a3;
    v75[0] = MEMORY[0x277D84F90];
    sub_258AA922C(0, v30, 0);
    v31 = v75[0];
    v32 = *(v75[0] + 16);
    v33 = 32 * v32 + 56;
    v34 = (v29 + 40);
    do
    {
      v36 = *(v34 - 1);
      v35 = *v34;
      v75[0] = v31;
      v37 = *(v31 + 24);
      v38 = v32 + 1;
      if (v32 >= v37 >> 1)
      {
        sub_258AA922C((v37 > 1), v32 + 1, 1);
        v31 = v75[0];
      }

      v34 += 2;
      *(v31 + 16) = v38;
      v39 = (v31 + v33);
      *(v39 - 3) = v36;
      *(v39 - 16) = 0;
      *(v39 - 1) = v35;
      v33 += 32;
      v32 = v38;
      *v39 = 0;
      --v30;
    }

    while (v30);

    v22 = v69;
    v18 = v66;
    a3 = v67;
    v24 = v64;
    v15 = v65;
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  v40 = v62;
  v15[2](v62, a3, v14);
  *(v40 + *(v24 + 52)) = v31;
  v41 = v70;
  sub_258A2406C(v40, v70);
  v15[4](v18, v41, v14);
  v42 = MEMORY[0x277CDF7F8];
  sub_258A240EC(&qword_27F96DAC0, MEMORY[0x277CDF7F8]);
  sub_258B02C14();
  v43 = &v22[*(v63 + 52)];
  v70 = *(v41 + *(v24 + 52));
  *v43 = v70;
  *(v43 + 1) = 0;
  v67 = v43;
  sub_2589FE4C8();
  v45 = *(v44 + 36);
  sub_258A240EC(&qword_27F96DAE0, v42);
  sub_258B02DB4();
  if (*&v22[v45] == v75[0])
  {
LABEL_16:
    v59 = *(v63 + 56);
    sub_258A24190(v62, &qword_27F96DAD0, MEMORY[0x277D84118]);
    v22[v59] = 1;
    return sub_258A24190(v22, &qword_27F96DAB0, MEMORY[0x277D84110]);
  }

  else
  {
    v46 = 0;
    v65 = (v61 + 32);
    v66 = (v61 + 16);
    v47 = (v70 + 56);
    v64 = v45;
    while (1)
    {
      v48 = sub_258B02DD4();
      (*v66)(v71);
      v48(v75, 0);
      result = sub_258B02DC4();
      v50 = *(v70 + 16);
      if (v46 == v50)
      {
        (*(v61 + 8))(v71, v72);
        goto LABEL_16;
      }

      if (v46 >= v50)
      {
        break;
      }

      v51 = v14;
      v52 = *(v47 - 1);
      ++v46;
      v53 = *v47;
      v54 = *(v47 - 16);
      v55 = *(v47 - 3);
      v56 = v68;
      *(v67 + 1) = v46;
      v57 = &v73[*(v56 + 48)];
      (*v65)(v73, v71, v72);
      *v57 = v55;
      v57[8] = v54;
      *(v57 + 2) = v52;
      v57[24] = v53;
      v58 = v73;
      sub_258B025B4();
      LOBYTE(v75[0]) = v54;
      v74 = v53;
      result = sub_258B00924();
      if (v53)
      {
        goto LABEL_18;
      }

      a5 = a5 + v52;
      sub_258A24134(v58);
      v22 = v69;
      v14 = v51;
      sub_258B02DB4();
      v47 += 4;
      if (*&v22[v64] == v75[0])
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

void sub_258A23F78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_258B009D4();
    sub_2589FE314();
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = sub_258A240EC(&qword_27F96DAC0, MEMORY[0x277CDF7F8]);
    v10[3] = sub_258A240EC(&qword_27F96DAC8, sub_2589FE314);
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_258A2406C(uint64_t a1, uint64_t a2)
{
  sub_258A23F78(0, &qword_27F96DAD0, MEMORY[0x277D84118]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A240EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258A24134(uint64_t a1)
{
  sub_2589FE2AC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258A24190(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  sub_258A23F78(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_258A241F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_258A24928();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_258A2427C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_258B01504() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = *(sub_258B00AA4() - 8);
  if (v7 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v7;
  }

  v13 = *(v11 + 80);
  v14 = *(v11 + 64);
  if (v9)
  {
    v15 = v10;
  }

  else
  {
    v15 = v10 + 1;
  }

  v16 = ((v15 + v13) & ~v13) + v14;
  if (v16 <= 8)
  {
    v16 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = (*(v8 + 80) | v13) & 0xF8 | 7u;
  v18 = *(v6 + 64) + v17;
  if (a2 <= v12)
  {
    goto LABEL_33;
  }

  v19 = v16 + (v18 & ~v17) + 1;
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((a2 - v12 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v23 < 2)
    {
LABEL_33:
      if (v7 < 0xFE)
      {
        v28 = *(((a1 + v18) & ~v17) + v16);
        if (v28 >= 2)
        {
          return (v28 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v27 = *(v6 + 48);

        return v27(a1, v7, v5);
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_33;
  }

LABEL_20:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = v19;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v12 + (v26 | v24) + 1;
}

void sub_258A2454C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v35 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_258B01504() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 64);
  v13 = *(sub_258B00AA4() - 8);
  v14 = v13;
  if (v9 <= 0xFE)
  {
    v15 = 254;
  }

  else
  {
    v15 = v9;
  }

  v16 = *(v13 + 64);
  v17 = (*(v10 + 80) | *(v14 + 80)) & 0xF8 | 7u;
  v18 = *(v8 + 64) + v17;
  if (v11)
  {
    v19 = v12;
  }

  else
  {
    v19 = v12 + 1;
  }

  v20 = ((v19 + *(v14 + 80)) & ~*(v14 + 80)) + v16;
  if (v20 <= 8)
  {
    v20 = 8;
  }

  v21 = v20 + (v18 & ~v17) + 1;
  if (a3 <= v15)
  {
    v22 = 0;
  }

  else if (v21 <= 3)
  {
    v25 = ((a3 - v15 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v25))
    {
      v22 = 4;
    }

    else
    {
      if (v25 < 0x100)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      if (v25 >= 2)
      {
        v22 = v26;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 1;
  }

  if (v15 < a2)
  {
    v23 = ~v15 + a2;
    if (v21 < 4)
    {
      v24 = (v23 >> (8 * v21)) + 1;
      if (v20 + (v18 & ~v17) != -1)
      {
        v27 = v23 & ~(-1 << (8 * v21));
        bzero(a1, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *a1 = v27;
            if (v22 > 1)
            {
LABEL_60:
              if (v22 == 2)
              {
                *&a1[v21] = v24;
              }

              else
              {
                *&a1[v21] = v24;
              }

              return;
            }
          }

          else
          {
            *a1 = v23;
            if (v22 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v27;
        a1[2] = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v21);
      *a1 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v22)
    {
      a1[v21] = v24;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *&a1[v21] = 0;
LABEL_35:
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!v22)
  {
    goto LABEL_35;
  }

  a1[v21] = 0;
  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v9 < 0xFE)
  {
    v29 = (&a1[v18] & ~v17);
    if (a2 > 0xFE)
    {
      v30 = (v20 + 1);
      v31 = -1 << (8 * (v20 + 1));
      if (v30 <= 3)
      {
        v32 = ~v31;
      }

      else
      {
        v32 = -1;
      }

      if (v30)
      {
        v33 = v32 & (a2 - 255);
        if (v30 <= 3)
        {
          v34 = v30;
        }

        else
        {
          v34 = 4;
        }

        bzero(v29, v30);
        if (v34 > 2)
        {
          if (v34 == 3)
          {
            *v29 = v33;
            v29[2] = BYTE2(v33);
          }

          else
          {
            *v29 = v33;
          }
        }

        else if (v34 == 1)
        {
          *v29 = v33;
        }

        else
        {
          *v29 = v33;
        }
      }
    }

    else
    {
      v29[v20] = -a2;
    }
  }

  else
  {
    v28 = *(v35 + 56);

    v28(a1, a2, v9, v7);
  }
}

void sub_258A24928()
{
  if (!qword_27F96D290)
  {
    type metadata accessor for AssociationSelectionPhaseSpecs();
    v0 = sub_258B00724();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D290);
    }
  }
}

id sub_258A249C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v4 = type metadata accessor for AssociationSelectionPhaseSpecs();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v61 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v54 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v54 - v11;
  v54[1] = *(a1 + 16);
  v13 = sub_258B00B04();
  v56 = *(v13 - 8);
  v14 = *(v56 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v54 - v15;
  v17 = sub_258B00B04();
  v57 = *(v17 - 8);
  v18 = *(v57 + 64);
  MEMORY[0x28223BE20](v17);
  v55 = v54 - v19;
  v20 = sub_258B00B04();
  v60 = *(v20 - 8);
  v21 = *(v60 + 64);
  MEMORY[0x28223BE20](v20);
  v59 = v54 - v22;
  v62 = v23;
  v24 = sub_258B00B04();
  v66 = *(v24 - 8);
  v25 = *(v66 + 64);
  MEMORY[0x28223BE20](v24);
  v63 = v54 - v26;
  v67 = v27;
  v58 = sub_258B00B04();
  v68 = *(v58 - 8);
  v28 = *(v68 + 64);
  v29 = MEMORY[0x28223BE20](v58);
  v64 = v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v65 = v54 - v31;
  v32 = v2 + *(a1 + 36);
  sub_258AC1B28(v12);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v34 = result;
    [result isiPad];

    sub_258A25118(v12);
    sub_258B024F4();
    v35 = *(a1 + 24);
    v36 = v16;
    sub_258B01E84();
    sub_258B01864();
    sub_258AC1B28(v10);
    sub_258A25118(v10);
    v78 = v35;
    v79 = MEMORY[0x277CDFC60];
    v37 = v10;
    WitnessTable = swift_getWitnessTable();
    v39 = v55;
    sub_258B01ED4();
    (*(v56 + 8))(v36, v13);
    sub_258B01884();
    v40 = v61;
    sub_258AC1B28(v61);
    _UISolariumEnabled();
    sub_258A25118(v40);
    v41 = MEMORY[0x277CDF918];
    v76 = WitnessTable;
    v77 = MEMORY[0x277CDF918];
    v42 = swift_getWitnessTable();
    v43 = v59;
    sub_258B01ED4();
    (*(v57 + 8))(v39, v17);
    sub_258B01894();
    sub_258AC1B28(v37);
    sub_258A25118(v37);
    v74 = v42;
    v75 = v41;
    v44 = v62;
    v45 = swift_getWitnessTable();
    v46 = v63;
    sub_258B01ED4();
    (*(v60 + 8))(v43, v44);
    sub_258B024F4();
    v72 = v45;
    v73 = v41;
    v52 = v67;
    v53 = swift_getWitnessTable();
    v47 = v64;
    sub_258B01E84();
    (*(v66 + 8))(v46, v52);
    v70 = v53;
    v71 = MEMORY[0x277CDFC60];
    v48 = v58;
    v49 = swift_getWitnessTable();
    v50 = v65;
    sub_258A4DFD4(v47, v48, v49);
    v51 = *(v68 + 8);
    v51(v47, v48);
    sub_258A4DFD4(v50, v48, v49);
    return (v51)(v50, v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258A25118(uint64_t a1)
{
  v2 = type metadata accessor for AssociationSelectionPhaseSpecs();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CustomReminderView()
{
  result = qword_27F96E970;
  if (!qword_27F96E970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A251E8()
{
  sub_2589DEB08();
  if (v0 <= 0x3F)
  {
    sub_258A296F8(319, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_258A296F8(319, &qword_27F96E968, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_258A11890(319, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          sub_258A296F8(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_258A25384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v80 = sub_258B01574();
  v78 = *(v80 - 8);
  v3 = *(v78 + 64);
  MEMORY[0x28223BE20](v80);
  v77 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CustomReminderView();
  v6 = v5 - 8;
  v70 = *(v5 - 8);
  v7 = *(v70 + 64);
  MEMORY[0x28223BE20](v5);
  v71 = v8;
  v72 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_258B02864();
  v75 = *(v9 - 8);
  v76 = v9;
  v10 = *(v75 + 64);
  MEMORY[0x28223BE20](v9);
  v73 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CustomReminderModel();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A28764();
  v17 = v16;
  v18 = *(v16 - 1);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A28628();
  v64 = v22;
  v63 = *(v22 - 1);
  v23 = *(v63 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A284A8();
  v68 = v26;
  v66 = *(v26 - 1);
  v27 = *(v66 + 64);
  MEMORY[0x28223BE20](v26);
  v81 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A282F0();
  v69 = v29;
  v67 = *(v29 - 8);
  v30 = *(v67 + 64);
  MEMORY[0x28223BE20](v29);
  v65 = &v60 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a1;
  sub_258A296F8(0, &qword_27F96E9A8, sub_258A28814, MEMORY[0x277CE14B8]);
  sub_258A28E54();
  sub_258B01A74();
  v82 = a1;
  sub_2589C60B0();
  v33 = v32;
  v34 = sub_258A28BD4(&qword_27F96EA20, sub_258A28764);
  sub_2589C6164();
  v36 = v35;
  v37 = sub_258A28BD4(&qword_27F96CBA8, sub_2589C6164);
  v84 = v36;
  v85 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = v25;
  v62 = v33;
  sub_258B01EE4();
  (*(v18 + 8))(v21, v17);
  v39 = *(v6 + 28);
  v74 = a1;
  sub_258A296F8(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
  sub_258B02124();
  LODWORD(v21) = v15[17];
  sub_258A2960C(v15, type metadata accessor for CustomReminderModel);
  if (v21 != 1)
  {
    if (qword_27F96C240 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (qword_27F96C240 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
  v88 = sub_258AFFD94();
  v89 = v40;
  v84 = v17;
  v85 = v62;
  v86 = v34;
  v87 = OpaqueTypeConformance2;
  v62 = swift_getOpaqueTypeConformance2();
  v41 = sub_2589BFF58();
  v42 = MEMORY[0x277D837D0];
  v43 = v64;
  v44 = v61;
  sub_258B01CB4();

  (*(v63 + 8))(v44, v43);
  sub_258B02124();
  v45 = v15[17];
  sub_258A2960C(v15, type metadata accessor for CustomReminderModel);
  v46 = 4;
  if (!v45)
  {
    v46 = 0;
  }

  v63 = v46;
  v48 = v75;
  v47 = v76;
  v49 = v73;
  (*(v75 + 104))(v73, *MEMORY[0x277D126D8], v76);
  v84 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5250);
  sub_258A11890(0, &qword_280DF8948, v42, MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D5270);
  v50 = v72;
  sub_258A295A4(v74, v72, type metadata accessor for CustomReminderView);
  v51 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v52 = swift_allocObject();
  sub_258A28EEC(v50, v52 + v51);
  v84 = v43;
  v85 = MEMORY[0x277D837D0];
  v86 = v62;
  v87 = v41;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = v65;
  v55 = v68;
  v56 = v81;
  sub_258B01B54();

  (*(v48 + 8))(v49, v47);
  (*(v66 + 8))(v56, v55);
  v57 = v77;
  sub_258B01564();
  v84 = v55;
  v85 = v53;
  swift_getOpaqueTypeConformance2();
  v58 = v69;
  sub_258B01DF4();
  (*(v78 + 8))(v57, v80);
  return (*(v67 + 8))(v54, v58);
}

uint64_t sub_258A25DD0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v57 = a2;
  sub_258A28D10(0, &qword_27F96EA08, sub_258A28D70);
  v55 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v53 = &v52 - v6;
  v7 = type metadata accessor for CustomReminderModel();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A28C9C();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v61 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v52 - v15;
  sub_258A28C1C();
  v18 = v17;
  v60 = *(v17 - 8);
  v19 = v60[8];
  v20 = MEMORY[0x28223BE20](v17);
  v63 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v52 - v22;
  sub_258A28D10(0, &qword_27F96E9B8, sub_258A288B8);
  v62 = v24;
  v56 = *(v24 - 8);
  v25 = *(v56 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v59 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v52 - v28;
  v65 = a1;
  sub_258A288B8();
  sub_258A2932C();
  v58 = v29;
  sub_258B02424();
  v64 = a1;
  v30 = MEMORY[0x277CDF058];
  sub_258A28DF4(0, &qword_27F96E9F8, MEMORY[0x277CDF058]);
  sub_258A28B90(&qword_27F96EA40, &qword_27F96E9F8, v30);
  v31 = v23;
  sub_258B02424();
  v32 = *(type metadata accessor for CustomReminderView() + 20);
  sub_258A296F8(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
  sub_258B02124();
  LOBYTE(v32) = v10[17];
  v33 = sub_258A2960C(v10, type metadata accessor for CustomReminderModel);
  if (v32)
  {
    v34 = 1;
    v35 = v55;
  }

  else
  {
    MEMORY[0x28223BE20](v33);
    *(&v52 - 2) = a1;
    sub_258A28D70();
    sub_258A294BC();
    v36 = v53;
    sub_258B02424();
    v37 = v55;
    (*(v4 + 32))(v16, v36, v55);
    v34 = 0;
    v35 = v37;
  }

  (*(v4 + 56))(v16, v34, 1, v35);
  v38 = v56;
  v39 = *(v56 + 16);
  v40 = v59;
  v39(v59, v58, v62);
  v41 = v60[2];
  v54 = v31;
  v41(v63, v31, v18);
  sub_258A295A4(v16, v61, sub_258A28C9C);
  v42 = v57;
  v43 = v40;
  v44 = v62;
  v39(v57, v43, v62);
  sub_258A28814();
  v46 = v45;
  v47 = v63;
  v41(&v42[*(v45 + 48)], v63, v18);
  v48 = v61;
  sub_258A295A4(v61, &v42[*(v46 + 64)], sub_258A28C9C);
  sub_258A2960C(v16, sub_258A28C9C);
  v49 = v60[1];
  v49(v54, v18);
  v50 = *(v38 + 8);
  v50(v58, v44);
  sub_258A2960C(v48, sub_258A28C9C);
  v49(v47, v18);
  return (v50)(v59, v44);
}

__n128 sub_258A26400@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v47 = a2;
  v2 = sub_258B013A4();
  v3 = *(v2 - 8);
  v45 = v2;
  v46 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v41 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258B012D4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v35 = MEMORY[0x277CC9578];
  sub_258A296F8(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v37 = MEMORY[0x277CDD660];
  sub_258A28DF4(0, &qword_27F96E9D8, MEMORY[0x277CDD660]);
  v11 = v10;
  v38 = *(v10 - 8);
  v12 = *(v38 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  sub_258A28A6C();
  v39 = v15;
  v40 = *(v15 - 8);
  v16 = *(v40 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A28918();
  v43 = *(v19 - 8);
  v44 = v19;
  v20 = *(v43 + 64);
  MEMORY[0x28223BE20](v19);
  v36 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B01084();
  v22 = *(type metadata accessor for CustomReminderView() + 24);
  sub_258A296F8(0, &qword_27F96E968, v35, MEMORY[0x277CE10B8]);
  sub_258B02144();
  sub_258B012C4();
  sub_258B00634();
  v23 = v41;
  sub_258B01394();
  v24 = sub_258A28B90(&qword_27F96E9E0, &qword_27F96E9D8, v37);
  v25 = sub_258A28BD4(&qword_27F96E9E8, MEMORY[0x277CDE068]);
  v26 = v45;
  sub_258B01C74();
  (*(v46 + 8))(v23, v26);
  (*(v38 + 8))(v14, v11);
  *&v48 = v11;
  *(&v48 + 1) = v26;
  *&v49 = v24;
  *(&v49 + 1) = v25;
  swift_getOpaqueTypeConformance2();
  v27 = v36;
  v28 = v39;
  sub_258B01C24();
  (*(v40 + 8))(v18, v28);
  sub_258B024F4();
  sub_258B00C94();
  v29 = v47;
  (*(v43 + 32))(v47, v27, v44);
  sub_258A288B8();
  v31 = v29 + *(v30 + 36);
  v32 = v53;
  *(v31 + 64) = v52;
  *(v31 + 80) = v32;
  *(v31 + 96) = v54;
  v33 = v49;
  *v31 = v48;
  *(v31 + 16) = v33;
  result = v51;
  *(v31 + 32) = v50;
  *(v31 + 48) = result;
  return result;
}

uint64_t sub_258A26990()
{
  sub_258A296F8(0, &qword_27F96EA58, type metadata accessor for CustomReminderModel, MEMORY[0x277CE11F8]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - v2;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v7[4] = sub_258AFFD94();
  v7[5] = v4;
  v5 = *(type metadata accessor for CustomReminderView() + 20);
  sub_258A296F8(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
  sub_258B02144();
  swift_getKeyPath();
  sub_258B02324();

  sub_258A28FFC(v3, &qword_27F96EA58, type metadata accessor for CustomReminderModel, MEMORY[0x277CE11F8]);
  sub_2589BFF58();
  return sub_258B022B4();
}

uint64_t sub_258A26B90(uint64_t a1)
{
  v2 = type metadata accessor for CustomReminderView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_258A296F8(0, &qword_27F96EA50, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v21 - v7;
  sub_258A28DF4(0, &qword_27F96E018, MEMORY[0x277CDF020]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = v21 - v13;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v21[0] = sub_258AFFD94();
  v21[1] = v15;
  sub_258B00604();
  v16 = sub_258B00624();
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  sub_258A295A4(a1, v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustomReminderView);
  v17 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v18 = swift_allocObject();
  sub_258A28EEC(v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  sub_2589BFF58();
  v19 = MEMORY[0x277D837D0];
  sub_258B02194();
  v21[0] = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5280);
  sub_258A11890(0, &qword_280DF8948, v19, MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258A28B90(&qword_27F96E060, &qword_27F96E018, MEMORY[0x277CDF020]);
  sub_258B01DD4();

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_258A26F9C(uint64_t a1)
{
  v2 = sub_258B00384();
  v30 = *(v2 - 8);
  v31 = v2;
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A296F8(0, &qword_27F96EA28, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - v8;
  v10 = type metadata accessor for CustomReminderModel();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_258AFFD44();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CustomReminderView();
  v21 = *(v20 + 20);
  sub_258A296F8(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
  sub_258B02124();
  sub_258A28F68(&v14[*(v11 + 40)], v9);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_258A28FFC(v9, &qword_27F96EA28, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
    sub_258B00364();
    v22 = sub_258B00374();
    v23 = sub_258B02EA4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2589A1000, v22, v23, "CustomReminderRow should have a source component always.", v24, 2u);
      MEMORY[0x259C945C0](v24, -1, -1);
    }

    return (*(v30 + 8))(v5, v31);
  }

  else
  {
    (*(v16 + 32))(v19, v9, v15);
    v26 = *(a1 + 8);
    sub_2589F1408(v19);
    v27 = (a1 + *(v20 + 28));
    v28 = *v27;
    v29 = v27[1];
    LOBYTE(v27) = *(v27 + 16);
    v33 = v28;
    v34 = v29;
    v35 = v27;
    v32 = 0;
    sub_258A11890(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    sub_258B02314();
    return (*(v16 + 8))(v19, v15);
  }
}

uint64_t sub_258A2737C(uint64_t a1)
{
  v2 = sub_258B01384();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2589C6164();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258B01344();
  v13 = a1;
  sub_2589ECFF0(0);
  sub_2589C6218();
  sub_258B00784();
  v10 = sub_258A28BD4(&qword_27F96CBA8, sub_2589C6164);
  MEMORY[0x259C91A00](v9, v5, v10);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_258A2751C(uint64_t a1)
{
  v2 = type metadata accessor for CustomReminderView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_258B026D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A295A4(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustomReminderView);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_258A28EEC(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_258B026A4();
  v13[1] = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D52C0);
  sub_258A11890(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D52E0);
  sub_258A28BD4(&qword_27F96CBA0, MEMORY[0x277D126A0]);
  sub_258B01DD4();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_258A277B0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for CustomReminderView() + 28));
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  sub_258A11890(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  return sub_258B02314();
}

uint64_t sub_258A27838(uint64_t a1)
{
  v60 = a1;
  sub_258A296F8(0, &qword_27F96EA28, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v58 = &v52 - v3;
  v4 = type metadata accessor for CustomReminderModel();
  v5 = *(v4 - 8);
  v61 = v4 - 8;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v62 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v59 = &v52 - v9;
  v10 = sub_258B00084();
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = *(v56 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_258B00224();
  v54 = *(v14 - 8);
  v55 = v14;
  v15 = *(v54 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_258AFFD44();
  v18 = *(v53 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v53);
  v52 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v52 - v22;
  sub_258B001E4();
  sub_258A296F8(0, &qword_27F96EA30, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v24 = sub_258B00204();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_258B2BE60;
  v29 = v28 + v27;
  v30 = *(v25 + 104);
  v30(v29, *MEMORY[0x277CC9980], v24);
  v31 = v29 + v26;
  v32 = v18;
  v30(v31, *MEMORY[0x277CC99A0], v24);
  sub_258A95E28(v28);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v33 = type metadata accessor for CustomReminderView();
  v34 = v33[6];
  v35 = MEMORY[0x277CE10B8];
  sub_258A296F8(0, &qword_27F96E968, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
  v36 = v60;
  sub_258B02124();
  v63 = v23;
  sub_258B00144();
  v37 = v58;

  (*(v56 + 8))(v13, v57);
  (*(v54 + 8))(v17, v55);
  v38 = v53;
  v39 = v33[5];
  sub_258A296F8(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, v35);
  v40 = v59;
  sub_258B02124();
  sub_258A28F68(&v40[*(v61 + 40)], v37);
  if ((*(v32 + 48))(v37, 1, v38) == 1)
  {
    sub_258A28FFC(v37, &qword_27F96EA28, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
    v41 = *(v36 + 8);
    v42 = v62;
    sub_258B02124();
    v43 = *(v42 + 16);
    sub_258A2960C(v42, type metadata accessor for CustomReminderModel);
    sub_2589F104C(v63, v43);
  }

  else
  {
    v44 = v52;
    (*(v32 + 32))(v52, v37, v38);
    v45 = *(v36 + 8);
    v46 = v62;
    sub_258B02124();
    v47 = *(v46 + 16);
    sub_258A2960C(v46, type metadata accessor for CustomReminderModel);
    sub_2589F1408(v44);
    sub_2589F104C(v63, v47);
    (*(v32 + 8))(v44, v38);
  }

  v48 = (v36 + v33[7]);
  v49 = *v48;
  v50 = v48[1];
  LOBYTE(v48) = *(v48 + 16);
  v65 = v49;
  v66 = v50;
  v67 = v48;
  v64 = 0;
  sub_258A11890(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);

  sub_258B02314();
  (*(v32 + 8))(v63, v38);
}

uint64_t sub_258A27F00()
{
  sub_258A28108();
  sub_258A282F0();
  sub_258A284A8();
  sub_258A28628();
  sub_258A28764();
  sub_2589C60B0();
  sub_258A28BD4(&qword_27F96EA20, sub_258A28764);
  sub_2589C6164();
  sub_258A28BD4(&qword_27F96CBA8, sub_2589C6164);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_2589BFF58();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_258B00B24();
}

void sub_258A28108()
{
  if (!qword_27F96E980)
  {
    sub_258A282F0();
    sub_258A284A8();
    sub_258A28628();
    sub_258A28764();
    sub_2589C60B0();
    sub_258A28BD4(&qword_27F96EA20, sub_258A28764);
    sub_2589C6164();
    sub_258A28BD4(&qword_27F96CBA8, sub_2589C6164);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2589BFF58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96E980);
    }
  }
}

void sub_258A282F0()
{
  if (!qword_27F96E988)
  {
    sub_258A284A8();
    sub_258A28628();
    sub_258A28764();
    sub_2589C60B0();
    sub_258A28BD4(&qword_27F96EA20, sub_258A28764);
    sub_2589C6164();
    sub_258A28BD4(&qword_27F96CBA8, sub_2589C6164);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2589BFF58();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96E988);
    }
  }
}

void sub_258A284A8()
{
  if (!qword_27F96E990)
  {
    sub_258A28628();
    sub_258A28764();
    sub_2589C60B0();
    sub_258A28BD4(&qword_27F96EA20, sub_258A28764);
    sub_2589C6164();
    sub_258A28BD4(&qword_27F96CBA8, sub_2589C6164);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2589BFF58();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96E990);
    }
  }
}

void sub_258A28628()
{
  if (!qword_27F96E998)
  {
    sub_258A28764();
    sub_2589C60B0();
    sub_258A28BD4(&qword_27F96EA20, sub_258A28764);
    sub_2589C6164();
    sub_258A28BD4(&qword_27F96CBA8, sub_2589C6164);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96E998);
    }
  }
}

void sub_258A28764()
{
  if (!qword_27F96E9A0)
  {
    sub_258A296F8(255, &qword_27F96E9A8, sub_258A28814, MEMORY[0x277CE14B8]);
    sub_258A28E54();
    v0 = sub_258B01A84();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E9A0);
    }
  }
}

void sub_258A28814()
{
  if (!qword_27F96E9B0)
  {
    sub_258A28D10(255, &qword_27F96E9B8, sub_258A288B8);
    sub_258A28C1C();
    sub_258A28C9C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F96E9B0);
    }
  }
}

void sub_258A288B8()
{
  if (!qword_27F96E9C0)
  {
    sub_258A28918();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E9C0);
    }
  }
}

void sub_258A28918()
{
  if (!qword_27F96E9C8)
  {
    sub_258A28A6C();
    v0 = MEMORY[0x277CDD660];
    sub_258A28DF4(255, &qword_27F96E9D8, MEMORY[0x277CDD660]);
    sub_258B013A4();
    sub_258A28B90(&qword_27F96E9E0, &qword_27F96E9D8, v0);
    sub_258A28BD4(&qword_27F96E9E8, MEMORY[0x277CDE068]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96E9C8);
    }
  }
}

void sub_258A28A6C()
{
  if (!qword_27F96E9D0)
  {
    v0 = MEMORY[0x277CDD660];
    sub_258A28DF4(255, &qword_27F96E9D8, MEMORY[0x277CDD660]);
    sub_258B013A4();
    sub_258A28B90(&qword_27F96E9E0, &qword_27F96E9D8, v0);
    sub_258A28BD4(&qword_27F96E9E8, MEMORY[0x277CDE068]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96E9D0);
    }
  }
}

uint64_t sub_258A28B90(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_258A28DF4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258A28BD4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258A28C1C()
{
  if (!qword_27F96E9F0)
  {
    sub_258A28DF4(255, &qword_27F96E9F8, MEMORY[0x277CDF058]);
    v0 = sub_258B02444();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E9F0);
    }
  }
}

void sub_258A28C9C()
{
  if (!qword_27F96EA00)
  {
    sub_258A28D10(255, &qword_27F96EA08, sub_258A28D70);
    v0 = sub_258B030C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96EA00);
    }
  }
}

void sub_258A28D10(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B02444();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258A28D70()
{
  if (!qword_27F96EA10)
  {
    sub_258A28DF4(255, &qword_27F96E018, MEMORY[0x277CDF020]);
    sub_258B017D4();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96EA10);
    }
  }
}

void sub_258A28DF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_258A28E54()
{
  result = qword_27F96EA18;
  if (!qword_27F96EA18)
  {
    sub_258A296F8(255, &qword_27F96E9A8, sub_258A28814, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EA18);
  }

  return result;
}

uint64_t sub_258A28EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomReminderView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A28F68(uint64_t a1, uint64_t a2)
{
  sub_258A296F8(0, &qword_27F96EA28, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A28FFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_258A296F8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t objectdestroyTm_7()
{
  v1 = type metadata accessor for CustomReminderView();
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v4 = v3 + v1[5];
  v5 = *(type metadata accessor for CustomReminderModel() + 32);
  v6 = sub_258AFFD44();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v4 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }

  v8 = MEMORY[0x277CE10B8];
  sub_258A296F8(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
  v10 = *(v4 + *(v9 + 28));

  v11 = v3 + v1[6];
  v12 = sub_258B00084();
  (*(*(v12 - 8) + 8))(v11, v12);
  sub_258A296F8(0, &qword_27F96E968, MEMORY[0x277CC9578], v8);
  v14 = *(v11 + *(v13 + 28));

  v15 = (v3 + v1[7]);
  v16 = *v15;

  v17 = v15[1];

  v18 = v1[8];
  sub_258A296F8(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_258B006A4();
    (*(*(v19 - 8) + 8))(v3 + v18, v19);
  }

  else
  {
    v20 = *(v3 + v18);
  }

  return swift_deallocObject();
}

unint64_t sub_258A2932C()
{
  result = qword_27F96EA38;
  if (!qword_27F96EA38)
  {
    sub_258A288B8();
    sub_258A28A6C();
    v1 = MEMORY[0x277CDD660];
    sub_258A28DF4(255, &qword_27F96E9D8, MEMORY[0x277CDD660]);
    sub_258B013A4();
    sub_258A28B90(&qword_27F96E9E0, &qword_27F96E9D8, v1);
    sub_258A28BD4(&qword_27F96E9E8, MEMORY[0x277CDE068]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EA38);
  }

  return result;
}

unint64_t sub_258A294BC()
{
  result = qword_27F96EA48;
  if (!qword_27F96EA48)
  {
    sub_258A28D70();
    sub_258A28B90(&qword_27F96E060, &qword_27F96E018, MEMORY[0x277CDF020]);
    sub_258A28BD4(&qword_280DF8950, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EA48);
  }

  return result;
}

uint64_t sub_258A295A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A2960C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A29684(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CustomReminderView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_258A296F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A2975C()
{
  if (!qword_27F96EA70)
  {
    sub_258B00A14();
    sub_258A28108();
    sub_258A282F0();
    sub_258A284A8();
    sub_258A28628();
    sub_258A28764();
    sub_2589C60B0();
    sub_258A28BD4(&qword_27F96EA20, sub_258A28764);
    sub_2589C6164();
    sub_258A28BD4(&qword_27F96CBA8, sub_2589C6164);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2589BFF58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = sub_258B00B34();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96EA70);
    }
  }
}

uint64_t sub_258A29974(char a1)
{
  if (*(v1 + 16) == 1 && (a1 & 1) == 0)
  {
    if (qword_27F96C240 == -1)
    {
      return sub_258AFFD94();
    }

    goto LABEL_7;
  }

  if (qword_27F96C240 != -1)
  {
LABEL_7:
    swift_once();
  }

  return sub_258AFFD94();
}

uint64_t sub_258A29A78@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v63 = type metadata accessor for CustomReminderModel();
  v1 = *(*(v63 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v63);
  v66 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v78 = (&v62 - v4);
  v5 = sub_258B00384();
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = *(v68 + 64);
  MEMORY[0x28223BE20](v5);
  v67 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A2A608(0, &qword_27F96EBF0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v74 = &v62 - v10;
  v11 = sub_258AFFD44();
  v76 = *(v11 - 8);
  v77 = v11;
  v12 = *(v76 + 64);
  MEMORY[0x28223BE20](v11);
  v80 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_258B00224();
  v70 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_258B00084();
  v73 = *(v19 - 8);
  v20 = v73;
  v21 = *(v73 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v62 - v25;
  sub_258B001E4();
  sub_258B00044();
  sub_258B00114();
  v64 = *(v20 + 8);
  v65 = v20 + 8;
  v64(v24, v19);
  v27 = *(v15 + 8);
  v71 = v15 + 8;
  v72 = v27;
  v27(v18, v14);
  sub_258B001E4();
  sub_258A2A608(0, &qword_27F96EA30, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v28 = sub_258B00204();
  v29 = *(v28 - 8);
  v30 = *(v29 + 72);
  v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_258B2F370;
  v33 = v32 + v31;
  v34 = *(v29 + 104);
  v34(v33, *MEMORY[0x277CC9978], v28);
  v34(v33 + v30, *MEMORY[0x277CC9988], v28);
  v34(v33 + 2 * v30, *MEMORY[0x277CC9998], v28);
  v35 = 3 * v30;
  v36 = v75;
  v34(v33 + v35, *MEMORY[0x277CC9968], v28);
  v37 = v19;
  sub_258A95E28(v32);
  swift_setDeallocating();
  v38 = v80;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_258B00144();

  v39 = v70;
  v40 = v72;
  v72(v18, v70);
  v41 = *v36;
  sub_258AFFCF4();
  v42 = v36[1];
  sub_258AFFD14();
  sub_258B001E4();
  v43 = v74;
  sub_258B001B4();
  v44 = v18;
  v45 = v73;
  v40(v44, v39);
  if ((*(v45 + 48))(v43, 1, v37) == 1)
  {
    sub_258A2A66C(v43);
    v46 = v67;
    sub_258B00364();
    sub_258A2A6F8(v36, v78);
    v47 = v66;
    sub_258A2A6F8(v36, v66);
    v48 = sub_258B00374();
    v49 = sub_258B02E84();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v75 = v26;
      v52 = v37;
      v53 = v51;
      *v50 = 136446722;
      v81 = v63;
      v82 = v51;
      sub_258A2A7B8();
      v54 = sub_258B02B34();
      v56 = v45;
      v57 = sub_2589F1F78(v54, v55, &v82);

      *(v50 + 4) = v57;
      *(v50 + 12) = 2048;
      v58 = *v78;
      sub_258A2A75C(v78);
      *(v50 + 14) = v58;
      v45 = v56;
      *(v50 + 22) = 2048;
      v59 = *(v47 + 8);
      sub_258A2A75C(v47);
      *(v50 + 24) = v59;
      _os_log_impl(&dword_2589A1000, v48, v49, "[%{public}s] Could not construct date with time components: %ld:%ld", v50, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v53);
      v60 = v53;
      v37 = v52;
      MEMORY[0x259C945C0](v60, -1, -1);
      MEMORY[0x259C945C0](v50, -1, -1);

      (*(v68 + 8))(v46, v69);
      (*(v76 + 8))(v80, v77);
      v43 = v75;
    }

    else
    {
      sub_258A2A75C(v47);
      sub_258A2A75C(v78);

      (*(v68 + 8))(v46, v69);
      (*(v76 + 8))(v38, v77);
      v43 = v26;
    }
  }

  else
  {
    (*(v76 + 8))(v38, v77);
    v64(v26, v37);
  }

  return (*(v45 + 32))(v79, v43, v37);
}

uint64_t sub_258A2A268@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_258A2A608(0, &qword_27F96EA28, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  v8 = sub_258AFFD44();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  if (a1)
  {
    v16 = [a1 dateComponents];
    sub_258AFFCD4();

    (*(v9 + 32))(v15, v13, v8);
    v17 = sub_258AFFCE4();
    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v17;
    }

    *a2 = v19;
    v20 = sub_258AFFD04();
    v22 = v21;
    (*(v9 + 8))(v15, v8);
    if (v22)
    {
      v23 = 0;
    }

    else
    {
      v23 = v20;
    }

    *(a2 + 8) = v23;
    *(a2 + 17) = 0;
    *(a2 + 16) = [a1 isEnabled];
    v24 = [a1 dateComponents];
    sub_258AFFCD4();

    (*(v9 + 56))(v7, 0, 1, v8);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 257;
    (*(v9 + 56))(v7, 1, 1, v8);
  }

  v25 = type metadata accessor for CustomReminderModel();
  return sub_258A28F68(v7, a2 + *(v25 + 32));
}

uint64_t type metadata accessor for CustomReminderModel()
{
  result = qword_27F96EA78;
  if (!qword_27F96EA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A2A550()
{
  sub_258A2A608(319, &qword_27F96EA28, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_258A2A608(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A2A66C(uint64_t a1)
{
  sub_258A2A608(0, &qword_27F96EBF0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258A2A6F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomReminderModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A2A75C(uint64_t a1)
{
  v2 = type metadata accessor for CustomReminderModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258A2A7B8()
{
  result = qword_27F96EA88;
  if (!qword_27F96EA88)
  {
    type metadata accessor for CustomReminderModel();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F96EA88);
  }

  return result;
}

uint64_t sub_258A2A800@<X0>(uint64_t a1@<X8>)
{
  sub_258B00E34();
  v2 = a1 + *(type metadata accessor for ValenceSelectionPhaseSpecs() + 20);
  return sub_258B00D84();
}

uint64_t type metadata accessor for ValenceSelectionPhaseSpecs()
{
  result = qword_27F96EA90;
  if (!qword_27F96EA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A2A8AC()
{
  sub_258A07454(319);
  if (v0 <= 0x3F)
  {
    sub_258B00AA4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_258A2A930()
{
  v1 = v0;
  v2 = sub_258B00AA4();
  v36 = *(v2 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v2);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258B01504();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A2AE68();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A07454(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v34 - v20;
  (*(v6 + 104))(&v34 - v20, *MEMORY[0x277CE0560], v5);
  (*(v6 + 56))(v21, 0, 1, v5);
  v22 = *(v11 + 56);
  v37 = v1;
  sub_258A2AECC(v1, v14);
  sub_258A2AECC(v21, &v14[v22]);
  v23 = *(v6 + 48);
  if (v23(v14, 1, v5) == 1)
  {
    sub_258A2AF30(v21, sub_258A07454);
    if (v23(&v14[v22], 1, v5) == 1)
    {
      sub_258A2AF30(v14, sub_258A07454);
      goto LABEL_8;
    }

LABEL_6:
    sub_258A2AF30(v14, sub_258A2AE68);
    return 3;
  }

  sub_258A2AECC(v14, v19);
  if (v23(&v14[v22], 1, v5) == 1)
  {
    sub_258A2AF30(v21, sub_258A07454);
    (*(v6 + 8))(v19, v5);
    goto LABEL_6;
  }

  (*(v6 + 32))(v9, &v14[v22], v5);
  sub_258A2AF90(&qword_27F96EAA8, MEMORY[0x277CE0570]);
  v25 = sub_258B02AA4();
  v26 = *(v6 + 8);
  v26(v9, v5);
  sub_258A2AF30(v21, sub_258A07454);
  v26(v19, v5);
  sub_258A2AF30(v14, sub_258A07454);
  if ((v25 & 1) == 0)
  {
    return 3;
  }

LABEL_8:
  v27 = *(type metadata accessor for ValenceSelectionPhaseSpecs() + 20);
  v29 = v35;
  v28 = v36;
  v30 = *(v36 + 104);
  v30(v35, *MEMORY[0x277CDF9A8], v2);
  sub_258A2AF90(&qword_27F96D020, MEMORY[0x277CDFA28]);
  v31 = sub_258B02A54();
  v32 = *(v28 + 8);
  v32(v29, v2);
  if ((v31 & 1) == 0)
  {
    return 1;
  }

  v30(v29, *MEMORY[0x277CDF9F0], v2);
  v33 = sub_258B02A54();
  v32(v29, v2);
  if (v33)
  {
    return 3;
  }

  return 2;
}

void sub_258A2AE68()
{
  if (!qword_27F96EAA0)
  {
    sub_258A07454(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96EAA0);
    }
  }
}

uint64_t sub_258A2AECC(uint64_t a1, uint64_t a2)
{
  sub_258A07454(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A2AF30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A2AF90(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_258A2AFD8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_258B00AA4();
  v17 = *(v4 - 8);
  v5 = *(v17 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MobileGestalt_get_current_device();
  v9 = result;
  if (a1)
  {
    if (result)
    {
      homeButtonType = MobileGestalt_get_homeButtonType();

      v11 = *(v17 + 104);
      if (homeButtonType == 2)
      {
        v12 = MEMORY[0x277CDF988];
      }

      else
      {
        v12 = MEMORY[0x277CDFA10];
      }

      v15 = *v12;

      return v11(a2, v15, v4);
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (!result)
  {
    goto LABEL_14;
  }

  v13 = MobileGestalt_get_homeButtonType();

  v14 = MEMORY[0x277CDF9A8];
  if (v13 != 2)
  {
    v14 = MEMORY[0x277CDF988];
  }

  (*(v17 + 104))(v7, *v14, v4);
  return (*(v17 + 32))(a2, v7, v4);
}

double sub_258A2B188()
{
  v1 = v0;
  v2 = sub_258B01504();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A2AE68();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A07454(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  (*(v3 + 104))(&v26 - v17, *MEMORY[0x277CE0560], v2);
  (*(v3 + 56))(v18, 0, 1, v2);
  v19 = *(v8 + 56);
  sub_258A2AECC(v1, v11);
  sub_258A2AECC(v18, &v11[v19]);
  v20 = *(v3 + 48);
  if (v20(v11, 1, v2) == 1)
  {
    sub_258A2AF30(v18, sub_258A07454);
    if (v20(&v11[v19], 1, v2) == 1)
    {
      sub_258A2AF30(v11, sub_258A07454);
      return 30.0;
    }
  }

  else
  {
    sub_258A2AECC(v11, v16);
    if (v20(&v11[v19], 1, v2) != 1)
    {
      (*(v3 + 32))(v6, &v11[v19], v2);
      sub_258A2AF90(&qword_27F96EAA8, MEMORY[0x277CE0570]);
      v24 = sub_258B02AA4();
      v25 = *(v3 + 8);
      v25(v6, v2);
      sub_258A2AF30(v18, sub_258A07454);
      v25(v16, v2);
      sub_258A2AF30(v11, sub_258A07454);
      result = 30.0;
      if (v24)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_258A2AF30(v18, sub_258A07454);
    (*(v3 + 8))(v16, v2);
  }

  sub_258A2AF30(v11, sub_258A2AE68);
LABEL_7:
  v22 = v1 + *(type metadata accessor for ValenceSelectionPhaseSpecs() + 20);
  v23 = sub_258B00A84();
  result = 16.0;
  if (v23)
  {
    return 6.0;
  }

  return result;
}

uint64_t sub_258A2B554(uint64_t a1, uint64_t a2)
{
  v4 = _s5EntryVMa();
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v42 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v9 + 72);
  while (1)
  {
    result = sub_258A2C4E4(v14, v11);
    if (!v12)
    {
      break;
    }

    sub_258A2C4E4(v15, v8);
    if ((sub_258B000A4() & 1) == 0)
    {
      goto LABEL_31;
    }

    v22 = v4[5];
    v23 = *&v11[v22];
    v24 = *&v11[v22 + 8];
    v25 = &v8[v22];
    v26 = v23 == *v25 && v24 == *(v25 + 1);
    if (!v26 && (sub_258B03454() & 1) == 0)
    {
      goto LABEL_31;
    }

    v27 = v4[6];
    v28 = *&v11[v27];
    v29 = *&v11[v27 + 8];
    v30 = &v8[v27];
    v31 = v28 == *v30 && v29 == *(v30 + 1);
    if (!v31 && (sub_258B03454() & 1) == 0)
    {
      goto LABEL_31;
    }

    v32 = v4[7];
    v33 = *&v11[v32];
    v34 = *&v11[v32 + 8];
    v35 = &v8[v32];
    v36 = v33 == *v35 && v34 == *(v35 + 1);
    if (!v36 && (sub_258B03454() & 1) == 0 || ((v37 = v4[8], v38 = *&v11[v37], v39 = *&v11[v37 + 8], v40 = &v8[v37], v38 == *v40) ? (v41 = v39 == *(v40 + 1)) : (v41 = 0), !v41 && (sub_258B03454() & 1) == 0))
    {
LABEL_31:
      sub_258A2C610(v8, _s5EntryVMa);
      sub_258A2C610(v11, _s5EntryVMa);
      return 0;
    }

    v17 = v4[9];
    v18 = *&v11[v17];
    v19 = *&v8[v17];
    sub_258A2C610(v8, _s5EntryVMa);
    sub_258A2C610(v11, _s5EntryVMa);
    result = v18 == v19;
    v21 = v18 != v19 || v12-- == 1;
    v15 += v16;
    v14 += v16;
    if (v21)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_258A2B7D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_258B03454() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}