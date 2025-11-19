unint64_t sub_20CF9EDEC()
{
  result = qword_27C81DDB0[0];
  if (!qword_27C81DDB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C81DDB0);
  }

  return result;
}

uint64_t sub_20CF9EE40()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_20CF9EEA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_20CF9EEE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AdaptiveTileLayoutStrategy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AdaptiveTileLayoutStrategy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_20CF9EFB4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20CF9EFD0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_20CF9F000()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20CF9F050(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_20CF9F098(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20CF9F0E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20CF9F128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CF9F190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CF9F1F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C7A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CF9F268(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C7A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CF9F2D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20D567AD8();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    sub_20D567B58();
    return v8;
  }

  return result;
}

uint64_t static HFAnalyticsTileInteractionEvent.createAndSend(data:in:context:)(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  LOBYTE(a3) = [a3 isItemDisplayedByPrediction];
  v9 = sub_20D567C58();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 48) = a3;
  v11 = a2;
  sub_20D5663C8();
  sub_20CF18960(0, 0, v8, &unk_20D5C0AF0, v10);
}

uint64_t sub_20CF9F53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DFA8);
  v6[2] = swift_task_alloc();
  v10 = sub_20D564748();
  v6[3] = v10;
  v6[4] = *(v10 - 8);
  v6[5] = swift_task_alloc();
  v6[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DFB0);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  v11 = swift_task_alloc();
  v6[9] = v11;
  sub_20D5663C8();
  v12 = a5;
  v13 = swift_task_alloc();
  v6[10] = v13;
  *v13 = v6;
  v13[1] = sub_20CF9F6FC;

  return TileInteractionEvent.init(data:in:isItemDisplayedByPrediction:)(v11, a4, a5, a6);
}

uint64_t sub_20CF9F6FC()
{

  return MEMORY[0x2822009F8](sub_20CF9F7F8, 0, 0);
}

uint64_t sub_20CF9F7F8()
{
  v1 = v0[8];
  v2 = v0[3];
  v3 = v0[4];
  sub_20CEF9178(v0[9], v1, &qword_27C81DFB0);
  v4 = *(v3 + 48);
  v5 = v4(v1, 1, v2);
  v6 = v0[8];
  if (v5 == 1)
  {
    sub_20CEF928C(v0[8], &qword_27C81DFB0);
  }

  else
  {
    v7 = v0[3];
    v8 = v0[4];
    sub_20CFA2C84(&unk_27C81DFC0, MEMORY[0x277D16688]);
    sub_20D564268();
    (*(v8 + 8))(v6, v7);
  }

  v9 = v0[7];
  v10 = v0[3];
  sub_20CEF9178(v0[9], v9, &qword_27C81DFB0);
  if (v4(v9, 1, v10) == 1)
  {
    v11 = v0[7];
    sub_20CEF928C(v0[9], &qword_27C81DFB0);
    sub_20CEF928C(v11, &qword_27C81DFB0);
  }

  else
  {
    v12 = v0[6];
    v14 = v0[4];
    v13 = v0[5];
    v16 = v0[2];
    v15 = v0[3];
    (*(v14 + 32))(v12, v0[7], v15);
    (*(v14 + 16))(v13, v12, v15);
    sub_20D564878();
    v17 = sub_20D564888();
    v18 = *(v17 - 8);
    v19 = (*(v18 + 48))(v16, 1, v17);
    v20 = v0[9];
    v21 = v0[6];
    v22 = v0[3];
    v23 = v0[4];
    v24 = v0[2];
    if (v19 == 1)
    {
      (*(v23 + 8))(v0[6], v0[3]);
      sub_20CEF928C(v20, &qword_27C81DFB0);
      sub_20CEF928C(v24, &qword_27C81DFA8);
    }

    else
    {
      sub_20CFA2C84(&qword_27C81DFB8, MEMORY[0x277D16CC0]);
      sub_20D564268();
      (*(v23 + 8))(v21, v22);
      sub_20CEF928C(v20, &qword_27C81DFB0);
      (*(v18 + 8))(v24, v17);
    }
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_20CF9FB70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20CEF934C;

  return sub_20CF9F53C(a1, v4, v5, v6, v7, v8);
}

uint64_t TileInteractionEvent.init(data:in:isItemDisplayedByPrediction:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 1040) = a4;
  *(v4 + 664) = a3;
  *(v4 + 656) = a2;
  *(v4 + 648) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
  *(v4 + 672) = swift_task_alloc();
  *(v4 + 680) = swift_task_alloc();
  v5 = sub_20D563818();
  *(v4 + 688) = v5;
  *(v4 + 696) = *(v5 - 8);
  *(v4 + 704) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DF00);
  *(v4 + 712) = swift_task_alloc();
  *(v4 + 720) = swift_task_alloc();
  *(v4 + 728) = swift_task_alloc();
  v6 = sub_20D563E18();
  *(v4 + 736) = v6;
  *(v4 + 744) = *(v6 - 8);
  *(v4 + 752) = swift_task_alloc();
  *(v4 + 760) = swift_task_alloc();
  *(v4 + 768) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DF08);
  *(v4 + 776) = swift_task_alloc();
  *(v4 + 784) = swift_task_alloc();
  v7 = sub_20D563E48();
  *(v4 + 792) = v7;
  *(v4 + 800) = *(v7 - 8);
  *(v4 + 808) = swift_task_alloc();
  *(v4 + 816) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DF10);
  *(v4 + 824) = swift_task_alloc();
  *(v4 + 832) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DF18);
  *(v4 + 840) = swift_task_alloc();
  *(v4 + 848) = swift_task_alloc();
  *(v4 + 856) = swift_task_alloc();
  v8 = sub_20D563E28();
  *(v4 + 864) = v8;
  *(v4 + 872) = *(v8 - 8);
  *(v4 + 880) = swift_task_alloc();
  *(v4 + 888) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81DF20);
  *(v4 + 896) = swift_task_alloc();
  v9 = sub_20D564708();
  *(v4 + 904) = v9;
  *(v4 + 912) = *(v9 - 8);
  *(v4 + 920) = swift_task_alloc();
  *(v4 + 928) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CFA0054, 0, 0);
}

uint64_t sub_20CFA0054()
{
  v1 = v0;
  v2 = v0[82];
  v3 = sub_20D567838();
  if (!*(v2 + 16))
  {

LABEL_7:
    v15 = v0[83];

    goto LABEL_8;
  }

  v5 = sub_20CEED668(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = v0[82];
  sub_20CED43FC(*(v8 + 56) + 32 * v5, (v0 + 2));
  sub_20CECF940(0, &qword_28111FB20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = v0[114];
  v10 = v0[113];
  v11 = v1[112];
  v12 = v1[72];
  v1[117] = v12;
  [v12 integerValue];
  sub_20D5646F8();
  if ((*(v9 + 48))(v11, 1, v10) == 1)
  {
    v13 = v1[112];
    v14 = v1[83];

    sub_20CEF928C(v13, &unk_27C81DF20);
LABEL_8:
    v16 = 1;
LABEL_9:
    v17 = v1[81];
    v18 = sub_20D564748();
    (*(*(v18 - 8) + 56))(v17, v16, 1, v18);

    v19 = v1[1];

    return v19();
  }

  (*(v1[114] + 32))(v1[116], v1[112], v1[113]);
  v21 = sub_20D567838();
  if (!*(v2 + 16))
  {

    goto LABEL_18;
  }

  v23 = sub_20CEED668(v21, v22);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_18:
    v26 = 0;
    goto LABEL_19;
  }

  sub_20CED43FC(*(v8 + 56) + 32 * v23, (v1 + 10));
  sub_20CECF940(0, &qword_281120AC0);
  if (swift_dynamicCast())
  {
    v26 = v1[80];
  }

  else
  {
    v26 = 0;
  }

LABEL_19:
  v1[118] = v26;
  v27 = sub_20D567838();
  if (!*(v2 + 16))
  {

LABEL_26:
    v35 = MEMORY[0x277D15318];
    goto LABEL_27;
  }

  v29 = sub_20CEED668(v27, v28);
  v31 = v30;

  if ((v31 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_20CED43FC(*(v8 + 56) + 32 * v29, (v1 + 14));
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v32 = v1[70];
  v33 = v1[71];
  if (sub_20D567838() == v32 && v34 == v33)
  {

LABEL_49:

    v35 = MEMORY[0x277D15320];
    goto LABEL_27;
  }

  v66 = sub_20D568BF8();

  if (v66)
  {
    goto LABEL_49;
  }

  if (sub_20D567838() == v32 && v67 == v33)
  {

    v35 = MEMORY[0x277D15328];
  }

  else
  {
    v165 = sub_20D568BF8();

    v35 = MEMORY[0x277D15318];
    if (v165)
    {
      v35 = MEMORY[0x277D15328];
    }
  }

LABEL_27:
  (*(v1[109] + 104))(v1[111], *v35, v1[108]);
  v36 = sub_20D567838();
  if (*(v2 + 16))
  {
    v38 = sub_20CEED668(v36, v37);
    v40 = v39;

    if (v40)
    {
      sub_20CED43FC(*(v8 + 56) + 32 * v38, (v1 + 18));
      sub_20CECF940(0, &qword_28111FF50);
      if (swift_dynamicCast())
      {
        v41 = v1[79];
        swift_getObjectType();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v43 = v41;
        v44 = NSStringFromClass(ObjCClassFromMetadata);
        v45 = sub_20D567838();
        v47 = v46;

        goto LABEL_33;
      }
    }
  }

  else
  {
  }

  v45 = 0;
  v47 = 0;
  v43 = 0;
LABEL_33:
  v1[121] = v43;
  v1[120] = v47;
  v1[119] = v45;
  v48 = sub_20D567838();
  if (*(v2 + 16))
  {
    v50 = sub_20CEED668(v48, v49);
    v52 = v51;

    if ((v52 & 1) == 0)
    {
      goto LABEL_40;
    }

    sub_20CED43FC(*(v8 + 56) + 32 * v50, (v1 + 22));
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_40;
    }

    v53 = v1[68];
    v54 = v1[69];
    v55 = HIBYTE(v54) & 0xF;
    if ((v54 & 0x2000000000000000) == 0)
    {
      v55 = v53 & 0xFFFFFFFFFFFFLL;
    }

    if (v55)
    {
      goto LABEL_42;
    }
  }

LABEL_40:
  if (!v26)
  {
    v54 = 0;
    v53 = 0;
    v60 = v1[83];
    goto LABEL_55;
  }

  swift_getObjectType();
  v56 = swift_getObjCClassFromMetadata();
  v57 = v26;
  v58 = NSStringFromClass(v56);
  v53 = sub_20D567838();
  v54 = v59;

LABEL_42:
  v60 = v1[83];
  if (v60)
  {
    goto LABEL_55;
  }

  if (v26)
  {
    v1[77] = &unk_2824C0788;
    v61 = swift_dynamicCastObjCProtocolConditional();
    if (v61)
    {
      v62 = v61;
      v63 = v26;
      v64 = [v62 homeKitObject];
      v1[78] = &unk_2825BD300;
      v65 = swift_dynamicCastObjCProtocolConditional();
      if (v65)
      {
        v60 = [v65 home];

        swift_unknownObjectRelease();
        goto LABEL_55;
      }

      swift_unknownObjectRelease();
    }
  }

  v60 = 0;
LABEL_55:
  v1[124] = v60;
  v1[123] = v53;
  v1[122] = v54;
  v68 = sub_20D567838();
  v70 = v69;
  v71 = v1[83];
  if (*(v2 + 16))
  {
    v72 = v68;
    v73 = v71;
    v74 = sub_20CEED668(v72, v70);
    LOBYTE(v72) = v75;

    if (v72)
    {
      sub_20CED43FC(*(v8 + 56) + 32 * v74, (v1 + 26));
      if (swift_dynamicCast())
      {
        v76 = v1[67];
        if (v76)
        {
          sub_20CFA27B4(v1[66], v76, v1[106]);
          v77 = 0;
          goto LABEL_62;
        }
      }
    }
  }

  else
  {
    v78 = v71;
  }

  v77 = 1;
LABEL_62:
  v79 = v1[107];
  v80 = v1[106];
  v81 = sub_20D563E38();
  (*(*(v81 - 8) + 56))(v80, v77, 1, v81);
  sub_20CF15584(v80, v79, &qword_27C81DF18);
  v82 = sub_20D567838();
  if (*(v2 + 16))
  {
    v84 = sub_20CEED668(v82, v83);
    v86 = v85;

    if (v86)
    {
      sub_20CED43FC(*(v8 + 56) + 32 * v84, (v1 + 30));
      goto LABEL_67;
    }
  }

  else
  {
  }

  *(v1 + 15) = 0u;
  *(v1 + 16) = 0u;
LABEL_67:
  sub_20CEF928C((v1 + 30), &qword_27C81BF00);
  v87 = sub_20D567838();
  if (!*(v2 + 16))
  {

    goto LABEL_74;
  }

  v89 = sub_20CEED668(v87, v88);
  v91 = v90;

  if ((v91 & 1) == 0)
  {
LABEL_74:

LABEL_75:
    *(v1 + 1041) = 2;
    if (!v26)
    {
      goto LABEL_71;
    }

LABEL_76:
    swift_getObjectType();
    v111 = swift_getObjCClassFromMetadata();
    v112 = v26;
    v113 = NSStringFromClass(v111);
    v114 = sub_20D567838();
    v116 = v115;

    v1[63] = 0xE900000000000074;
    v1[64] = v114;
    v1[65] = v116;
    v1[62] = 0x65536E6F69746341;
    sub_20CEF44D8();
    sub_20D568618();
    v1[56] = v114;
    v1[57] = v116;
    v1[48] = 0x6172656D6143;
    v1[49] = 0xE600000000000000;
    sub_20D568618();
    v1[50] = v114;
    v1[51] = v116;
    v1[52] = 0x65636976726553;
    v1[53] = 0xE700000000000000;
    if (sub_20D568618())
    {
      v117 = 1;
    }

    else
    {
      v1[54] = v114;
      v1[55] = v116;
      v1[46] = 0x726F737365636341;
      v1[47] = 0xE900000000000079;
      v117 = sub_20D568618();
    }

    *(v1 + 1042) = v117 & 1;
    v1[58] = v114;
    v1[59] = v116;
    v1[60] = 0x737574617453;
    v1[61] = 0xE600000000000000;
    sub_20D568618();

    v118 = [v112 latestResults];
    if (v118)
    {
      v119 = v118;
      v120 = sub_20D567758();
    }

    else
    {
      v120 = sub_20CEF3B60(MEMORY[0x277D84F90]);
    }

    v121 = sub_20D567838();
    if (*(v120 + 16))
    {
      v123 = sub_20CEED668(v121, v122);
      v125 = v124;

      if (v125)
      {
        sub_20CED43FC(*(v120 + 56) + 32 * v123, (v1 + 42));
        if (swift_dynamicCast())
        {
          v126 = v1[75];
          v127 = *(v1[100] + 104);
          v128 = v1[102];
          v129 = v1[99];
          if (v126 == 2)
          {
            v130 = MEMORY[0x277D15378];
          }

          else if (v126 == 1)
          {
            v130 = MEMORY[0x277D15368];
          }

          else if (v126)
          {
            v130 = MEMORY[0x277D15370];
          }

          else
          {
            v130 = MEMORY[0x277D15360];
          }

          v131 = *v130;
LABEL_91:
          v127(v128, v131, v129);
          v132 = sub_20D567838();
          if (*(v120 + 16))
          {
            v134 = sub_20CEED668(v132, v133);
            v136 = v135;

            if (v136)
            {
              sub_20CED43FC(*(v120 + 56) + 32 * v134, (v1 + 38));
              if (swift_dynamicCast())
              {
                v137 = v1[74];
                [v137 integerValue];
                sub_20D564718();

                goto LABEL_97;
              }
            }
          }

          else
          {
          }

          v138 = v1[104];
          v139 = *MEMORY[0x277D16678];
          v140 = sub_20D564728();
          v141 = *(v140 - 8);
          (*(v141 + 104))(v138, v139, v140);
          (*(v141 + 56))(v138, 0, 1, v140);
LABEL_97:
          v142 = sub_20D567838();
          if (*(v120 + 16))
          {
            v144 = sub_20CEED668(v142, v143);
            v146 = v145;

            if ((v146 & 1) == 0)
            {
LABEL_103:

              goto LABEL_104;
            }

            v147 = (v1 + 73);
            sub_20CED43FC(*(v120 + 56) + 32 * v144, (v1 + 6));

            sub_20CECF940(0, &unk_28111FB90);
            if ((swift_dynamicCast() & 1) == 0)
            {
LABEL_104:
              v149 = v117 & 1;
              goto LABEL_105;
            }

            v148 = *v147;
            v149 = [*v147 count];

            if ((v149 & 0x8000000000000000) == 0)
            {
LABEL_105:
              v1[125] = v149;
              sub_20CECF940(0, &unk_27C820EF0);
              v1[126] = sub_20D5680E8();
              sub_20D5680D8();
              sub_20CFA2C84(&unk_27C81DF30, MEMORY[0x277D132F8]);
              v107 = sub_20D567BA8();
              v109 = v150;
              v110 = sub_20CFA15D4;
              goto LABEL_106;
            }

            __break(1u);
          }

          goto LABEL_103;
        }
      }
    }

    else
    {
    }

    v128 = v1[102];
    v129 = v1[99];
    v131 = *MEMORY[0x277D15370];
    v127 = *(v1[100] + 104);
    goto LABEL_91;
  }

  v92 = (v1 + 76);
  sub_20CED43FC(*(v8 + 56) + 32 * v89, (v1 + 34));

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_75;
  }

  v93 = *v92;
  v94 = [*v92 BOOLValue];

  *(v1 + 1041) = v94;
  if (v26)
  {
    goto LABEL_76;
  }

LABEL_71:
  v95 = v1[104];
  v96 = v1[102];
  v97 = v1[100];
  v98 = v1[99];
  v99 = v1[98];
  v100 = v1[93];
  v192 = v1[92];
  v195 = v1[96];
  v101 = *MEMORY[0x277D16678];
  v102 = sub_20D564728();
  v103 = *(v102 - 8);
  (*(v103 + 104))(v95, v101, v102);
  (*(v103 + 56))(v95, 0, 1, v102);
  (*(v97 + 104))(v96, *MEMORY[0x277D15370], v98);
  v104 = sub_20D563DE8();
  (*(*(v104 - 8) + 56))(v99, 1, 1, v104);
  (*(v100 + 104))(v195, *MEMORY[0x277D152E0], v192);
  *(v1 + 1043) = 0;
  v1[127] = 0;
  v105 = v1[124];
  if (!v105)
  {
    v174 = v1[116];
    v151 = v1[114];
    v170 = v1[113];
    v172 = v1[115];
    v184 = v1[110];
    v186 = v1[111];
    v152 = v1[109];
    v188 = v1[105];
    v190 = v1[107];
    v193 = v1[103];
    v196 = v1[104];
    v180 = v1[102];
    v182 = v1[108];
    v153 = v1[100];
    v176 = v1[99];
    v178 = v1[101];
    v154 = v1[96];
    v155 = v1[94];
    v156 = v1[93];
    v157 = v1[92];
    v158 = v1[91];
    v159 = v1[90];
    v160 = sub_20D563E08();
    (*(*(v160 - 8) + 56))(v159, 1, 1, v160);
    sub_20CF15584(v159, v158, &qword_27C81DF00);
    (*(v151 + 16))(v172, v174, v170);
    (*(v156 + 16))(v155, v154, v157);
    (*(v153 + 16))(v178, v180, v176);
    (*(v152 + 16))(v184, v186, v182);
    sub_20CEF9178(v190, v188, &qword_27C81DF18);
    sub_20CEF9178(v196, v193, &qword_27C81DF10);
    v173 = v1[121];
    v175 = v1[118];
    v168 = v1[117];
    v197 = v1[116];
    v191 = v1[114];
    v194 = v1[113];
    v189 = v1[111];
    v185 = v1[109];
    v187 = v1[108];
    v183 = v1[107];
    v179 = v1[102];
    v181 = v1[104];
    v161 = v1[100];
    v177 = v1[99];
    v167 = v1[98];
    v162 = v1[93];
    v169 = v1[92];
    v171 = v1[96];
    v163 = v1[91];
    v164 = v1[89];
    v166 = v1[83];
    sub_20CEF9178(v167, v1[97], &qword_27C81DF08);
    sub_20CEF9178(v163, v164, &qword_27C81DF00);
    sub_20D564738();

    sub_20CEF928C(v163, &qword_27C81DF00);
    (*(v162 + 8))(v171, v169);
    sub_20CEF928C(v167, &qword_27C81DF08);
    (*(v161 + 8))(v179, v177);
    sub_20CEF928C(v181, &qword_27C81DF10);
    sub_20CEF928C(v183, &qword_27C81DF18);
    (*(v185 + 8))(v189, v187);
    (*(v191 + 8))(v197, v194);
    v16 = 0;
    goto LABEL_9;
  }

  sub_20CECF940(0, &unk_27C820EF0);
  v106 = v105;
  v1[128] = sub_20D5680E8();
  sub_20D5680D8();
  sub_20CFA2C84(&unk_27C81DF30, MEMORY[0x277D132F8]);
  v107 = sub_20D567BA8();
  v109 = v108;
  v110 = sub_20CFA1D14;
LABEL_106:

  return MEMORY[0x2822009F8](v110, v107, v109);
}

uint64_t sub_20CFA15D4()
{
  sub_20D5680B8();

  return MEMORY[0x2822009F8](sub_20CFA1650, 0, 0);
}

uint64_t sub_20CFA1650()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 768);
  v3 = *(v0 + 760);
  v4 = *(v0 + 744);
  v5 = *(v0 + 736);

  v6 = v1;
  sub_20D5682D8();

  (*(v4 + 32))(v2, v3, v5);
  v7 = *(v0 + 1000);
  *(v0 + 1043) = *(v0 + 1042);
  *(v0 + 1016) = v7;
  v8 = *(v0 + 992);
  if (v8)
  {
    sub_20CECF940(0, &unk_27C820EF0);
    v9 = v8;
    *(v0 + 1024) = sub_20D5680E8();
    sub_20D5680D8();
    sub_20CFA2C84(&unk_27C81DF30, MEMORY[0x277D132F8]);
    v11 = sub_20D567BA8();

    return MEMORY[0x2822009F8](sub_20CFA1D14, v11, v10);
  }

  else
  {
    v38 = *(v0 + 928);
    v12 = *(v0 + 912);
    v34 = *(v0 + 904);
    v36 = *(v0 + 920);
    v48 = *(v0 + 880);
    v50 = *(v0 + 888);
    v13 = *(v0 + 872);
    v52 = *(v0 + 840);
    v54 = *(v0 + 856);
    v56 = *(v0 + 824);
    v58 = *(v0 + 832);
    v44 = *(v0 + 816);
    v46 = *(v0 + 864);
    v14 = *(v0 + 800);
    v40 = *(v0 + 792);
    v42 = *(v0 + 808);
    v15 = *(v0 + 768);
    v16 = *(v0 + 752);
    v17 = *(v0 + 744);
    v18 = *(v0 + 736);
    v19 = *(v0 + 728);
    v20 = *(v0 + 720);
    v21 = sub_20D563E08();
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
    sub_20CF15584(v20, v19, &qword_27C81DF00);
    (*(v12 + 16))(v36, v38, v34);
    (*(v17 + 16))(v16, v15, v18);
    (*(v14 + 16))(v42, v44, v40);
    (*(v13 + 16))(v48, v50, v46);
    sub_20CEF9178(v54, v52, &qword_27C81DF18);
    sub_20CEF9178(v58, v56, &qword_27C81DF10);
    v37 = *(v0 + 968);
    v39 = *(v0 + 944);
    v32 = *(v0 + 936);
    v59 = *(v0 + 928);
    v55 = *(v0 + 912);
    v57 = *(v0 + 904);
    v53 = *(v0 + 888);
    v49 = *(v0 + 872);
    v51 = *(v0 + 864);
    v47 = *(v0 + 856);
    v43 = *(v0 + 816);
    v45 = *(v0 + 832);
    v22 = *(v0 + 800);
    v41 = *(v0 + 792);
    v31 = *(v0 + 784);
    v23 = *(v0 + 744);
    v33 = *(v0 + 736);
    v35 = *(v0 + 768);
    v24 = *(v0 + 728);
    v25 = *(v0 + 712);
    v30 = *(v0 + 664);
    sub_20CEF9178(v31, *(v0 + 776), &qword_27C81DF08);
    sub_20CEF9178(v24, v25, &qword_27C81DF00);
    sub_20D564738();

    sub_20CEF928C(v24, &qword_27C81DF00);
    (*(v23 + 8))(v35, v33);
    sub_20CEF928C(v31, &qword_27C81DF08);
    (*(v22 + 8))(v43, v41);
    sub_20CEF928C(v45, &qword_27C81DF10);
    sub_20CEF928C(v47, &qword_27C81DF18);
    (*(v49 + 8))(v53, v51);
    (*(v55 + 8))(v59, v57);
    v26 = *(v0 + 648);
    v27 = sub_20D564748();
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_20CFA1D14()
{
  *(v0 + 1032) = sub_20D5680C8();

  return MEMORY[0x2822009F8](sub_20CFA1D88, 0, 0);
}

uint64_t sub_20CFA1D88()
{
  v1 = *(v0 + 1032);
  v2 = [*(v0 + 992) uniqueIdentifier];
  sub_20D5637E8();

  v3 = *(v0 + 704);
  if (*(v1 + 16))
  {
    v4 = sub_20CEED7C0(*(v0 + 704));
    v5 = *(v0 + 704);
    v6 = *(v0 + 696);
    v7 = *(v0 + 688);
    v8 = *(v0 + 680);
    if (v9)
    {
      v10 = v4;
      v11 = *(*(v0 + 1032) + 56);
      v12 = sub_20D5637A8();
      v13 = *(v12 - 8);
      (*(v13 + 16))(v8, v11 + *(v13 + 72) * v10, v12);
      (*(v6 + 8))(v5, v7);

      (*(v13 + 56))(v8, 0, 1, v12);
    }

    else
    {

      (*(v6 + 8))(v5, v7);
      v18 = sub_20D5637A8();
      (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    }
  }

  else
  {
    v14 = *(v0 + 696);
    v15 = *(v0 + 688);
    v16 = *(v0 + 680);

    (*(v14 + 8))(v3, v15);
    v17 = sub_20D5637A8();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  }

  v19 = [objc_opt_self() dateOfLastRecommendationUIOpened];
  if (v19)
  {
    v20 = v19;
    sub_20D563778();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = *(v0 + 992);
  v23 = *(v0 + 680);
  v24 = *(v0 + 672);
  v25 = sub_20D5637A8();
  (*(*(v25 - 8) + 56))(v24, v21, 1, v25);
  sub_20CECF940(0, &qword_28111FB80);
  sub_20CFA2B0C();
  sub_20D563DF8();

  sub_20CEF928C(v24, &unk_27C8207C0);
  sub_20CEF928C(v23, &unk_27C8207C0);
  v74 = *(v0 + 992);
  v52 = *(v0 + 928);
  v26 = *(v0 + 912);
  v48 = *(v0 + 904);
  v50 = *(v0 + 920);
  v62 = *(v0 + 880);
  v64 = *(v0 + 888);
  v27 = *(v0 + 872);
  v66 = *(v0 + 840);
  v68 = *(v0 + 856);
  v70 = *(v0 + 824);
  v72 = *(v0 + 832);
  v58 = *(v0 + 816);
  v60 = *(v0 + 864);
  v28 = *(v0 + 800);
  v54 = *(v0 + 792);
  v56 = *(v0 + 808);
  v29 = *(v0 + 768);
  v30 = *(v0 + 752);
  v31 = *(v0 + 744);
  v32 = *(v0 + 736);
  v33 = *(v0 + 728);
  v34 = *(v0 + 720);
  v35 = sub_20D563E08();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  sub_20CF15584(v34, v33, &qword_27C81DF00);
  (*(v26 + 16))(v50, v52, v48);
  (*(v31 + 16))(v30, v29, v32);
  (*(v28 + 16))(v56, v58, v54);
  (*(v27 + 16))(v62, v64, v60);
  sub_20CEF9178(v68, v66, &qword_27C81DF18);
  sub_20CEF9178(v72, v70, &qword_27C81DF10);
  if (v74)
  {
    [v74 hf_showPredictedScenesOnDashboard];
  }

  v51 = *(v0 + 968);
  v53 = *(v0 + 944);
  v45 = *(v0 + 936);
  v73 = *(v0 + 928);
  v69 = *(v0 + 912);
  v71 = *(v0 + 904);
  v67 = *(v0 + 888);
  v63 = *(v0 + 872);
  v65 = *(v0 + 864);
  v61 = *(v0 + 856);
  v57 = *(v0 + 816);
  v59 = *(v0 + 832);
  v36 = *(v0 + 800);
  v55 = *(v0 + 792);
  v49 = *(v0 + 768);
  v37 = *(v0 + 744);
  v46 = *(v0 + 784);
  v47 = *(v0 + 736);
  v38 = *(v0 + 728);
  v39 = *(v0 + 712);
  v44 = *(v0 + 664);
  sub_20CEF9178(v46, *(v0 + 776), &qword_27C81DF08);
  sub_20CEF9178(v38, v39, &qword_27C81DF00);
  sub_20D564738();

  sub_20CEF928C(v38, &qword_27C81DF00);
  (*(v37 + 8))(v49, v47);
  sub_20CEF928C(v46, &qword_27C81DF08);
  (*(v36 + 8))(v57, v55);
  sub_20CEF928C(v59, &qword_27C81DF10);
  sub_20CEF928C(v61, &qword_27C81DF18);
  (*(v63 + 8))(v67, v65);
  (*(v69 + 8))(v73, v71);
  v40 = *(v0 + 648);
  v41 = sub_20D564748();
  (*(*(v41 - 8) + 56))(v40, 0, 1, v41);

  v42 = *(v0 + 8);

  return v42();
}

void sub_20CFA263C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_20D567758();
  v11 = a4;
  v12 = a5;
  v13 = [v12 isItemDisplayedByPrediction];
  v14 = sub_20D567C58();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = v10;
  *(v15 + 40) = a4;
  *(v15 + 48) = v13;
  v16 = v11;
  sub_20CF18960(0, 0, v9, &unk_20D5C0B20, v15);
}

uint64_t sub_20CFA27B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 1701670760 && a2 == 0xE400000000000000;
  if (v5 || (sub_20D568BF8() & 1) != 0)
  {
LABEL_6:

    v7 = MEMORY[0x277D15358];
    goto LABEL_7;
  }

  if (a1 == 1836019570 && a2 == 0xE400000000000000 || (sub_20D568BF8() & 1) != 0)
  {

    v7 = MEMORY[0x277D15340];
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xEF796772656E652DLL || (sub_20D568BF8() & 1) != 0 || a1 == 0xD000000000000010 && 0x800000020D5D1900 == a2 || (sub_20D568BF8() & 1) != 0 || a1 == 0x79726F6765746163 && a2 == 0xEE00746867696C2DLL || (sub_20D568BF8() & 1) != 0 || a1 == 0x79726F6765746163 && a2 == 0xEE00616964656D2DLL || (sub_20D568BF8() & 1) != 0 || a1 == 0xD000000000000011 && 0x800000020D5D1920 == a2 || (sub_20D568BF8() & 1) != 0 || a1 == 0x79726F6765746163 && a2 == 0xEE0072657461772DLL || (sub_20D568BF8() & 1) != 0)
  {

    v7 = MEMORY[0x277D15350];
  }

  else
  {
    if ((a1 != 0xD000000000000015 || 0x800000020D5D1940 != a2) && (sub_20D568BF8() & 1) == 0)
    {
      if ((a1 != 0xD000000000000014 || 0x800000020D5D1960 != a2) && (sub_20D568BF8() & 1) == 0 && (a1 != 0xD00000000000001CLL || 0x800000020D5D1980 != a2))
      {
        sub_20D568BF8();
      }

      goto LABEL_6;
    }

    v7 = MEMORY[0x277D15348];
  }

LABEL_7:
  v8 = *v7;
  v9 = sub_20D563E38();
  v10 = *(*(v9 - 8) + 104);

  return v10(a3, v8, v9);
}

unint64_t sub_20CFA2B0C()
{
  result = qword_27C81DF40;
  if (!qword_27C81DF40)
  {
    sub_20CECF940(255, &qword_28111FB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81DF40);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_20CFA2BBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20CEF5FFC;

  return sub_20CF9F53C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_20CFA2C84(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_20CFA2CCC()
{
  v1 = OBJC_IVAR____TtC6HomeUI49ActionSetContainerSummaryGridItemModuleController____lazy_storage___collectionLayoutManager;
  v2 = *(v0 + OBJC_IVAR____TtC6HomeUI49ActionSetContainerSummaryGridItemModuleController____lazy_storage___collectionLayoutManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC6HomeUI49ActionSetContainerSummaryGridItemModuleController____lazy_storage___collectionLayoutManager);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for CollectionLayoutManager()) init];
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_20CFA2E00(void *a1, uint64_t a2)
{
  v11.receiver = v2;
  v11.super_class = type metadata accessor for ActionSetContainerSummaryGridItemModuleController();
  objc_msgSendSuper2(&v11, sel_configureCell_forItem_, a1, a2);
  v5 = swift_dynamicCastObjCProtocolConditional();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    v8 = [v2 module];
    v9 = &v8[OBJC_IVAR____TtC6HomeUI39ActionSetContainerSummaryGridItemModule_config];
    swift_beginAccess();
    v10 = *(v9 + 1);
    LOBYTE(v9) = v9[16];

    if ((v9 & 1) == 0)
    {
      [v6 setBackgroundDisplayStyle_];
    }
  }
}

id sub_20CFA31A4(void *a1)
{
  v1 = sub_20CFA36D0(a1);

  return v1;
}

void sub_20CFA3238(uint64_t a1, id a2)
{
  if (a2)
  {
    v3 = v2;
    v6 = [a2 actionSet];
    if (v6)
    {
      v7 = v6;
      v8 = [v2 module];
      sub_20CECF7A0(v8 + OBJC_IVAR____TtC6HomeUI39ActionSetContainerSummaryGridItemModule_actionSetBuilderContainer, v19);

      __swift_project_boxed_opaque_existential_1(v19, v19[3]);
      sub_20D565D38();
      __swift_destroy_boxed_opaque_existential_1(v19);
      v9 = [v3 module];
      v10 = [v9 itemUpdater];

      if (v10)
      {
        v11 = [v3 module];
        v12 = [v11 itemProviders];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
        sub_20CEF9114();
        sub_20D567D08();

        v13 = sub_20D5638E8();
        v14 = sub_20D567CD8();

        v15 = [objc_opt_self() requestToReloadItemProviders:v14 senderSelector:v13];

        v16 = [v10 performItemUpdateRequest_];
        swift_unknownObjectRelease();
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v18 = Strong;
        if ([Strong respondsToSelector_])
        {
          [v18 sceneEditor:a1 removeActionSetBuilderFromTrigger:a2];
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id ActionSetContainerSummaryGridItemModuleController.__allocating_init(module:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithModule_];

  return v3;
}

id ActionSetContainerSummaryGridItemModuleController.init(module:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC6HomeUI49ActionSetContainerSummaryGridItemModuleController____lazy_storage___collectionLayoutManager] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ActionSetContainerSummaryGridItemModuleController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithModule_, a1);

  return v3;
}

id ActionSetContainerSummaryGridItemModuleController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActionSetContainerSummaryGridItemModuleController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_20CFA36D0(void *a1)
{
  v3 = [v1 module];
  v4 = OBJC_IVAR____TtC6HomeUI39ActionSetContainerSummaryGridItemModule_config;
  swift_beginAccess();
  v5 = *&v3[v4];

  if ((v5 & 2) == 0)
  {
    [a1 setSectionLeadingMargin_];
  }

  v6 = [v1 module];
  v7 = OBJC_IVAR____TtC6HomeUI39ActionSetContainerSummaryGridItemModule_config;
  swift_beginAccess();
  v8 = *&v6[v7];

  if ((v8 & 8) == 0)
  {
    [a1 setSectionLeadingMargin_];
  }

  v9 = [v1 module];
  v10 = OBJC_IVAR____TtC6HomeUI39ActionSetContainerSummaryGridItemModule_config;
  swift_beginAccess();
  v11 = *&v9[v10];

  if ((v11 & 1) == 0)
  {
    [a1 setSectionTopMargin_];
  }

  v12 = [v1 module];
  v13 = OBJC_IVAR____TtC6HomeUI39ActionSetContainerSummaryGridItemModule_config;
  swift_beginAccess();
  v14 = *&v12[v13];

  if ((v14 & 4) == 0)
  {
    [a1 setSectionTopMargin_];
  }

  return a1;
}

uint64_t sub_20CFA3940()
{
  v1 = *(v0 + OBJC_IVAR___HUTriggerActionPickerViewController_triggerBuilder);
  v2 = [objc_msgSend(v1 context)];
  swift_unknownObjectRelease();
  if (!v2)
  {
    return 0;
  }

  v3 = [v1 asEventTriggerBuilder];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 locationInterface];
    v6 = [v5 isCustomLocationTrigger];

    v7 = v6 ^ 1;
  }

  else
  {
    v7 = 1;
  }

  v9 = [*(v0 + OBJC_IVAR___HUTriggerActionPickerViewController_flow) isStandalone];

  return (v9 ^ 1) & v7;
}

void TriggerActionPickerViewController.homeWorkflowEditorViewController(_:didFinishWith:includesSecureAccessory:)(uint64_t a1, uint64_t a2)
{
  v4 = [*(v2 + OBJC_IVAR___HUTriggerActionPickerViewController_triggerBuilder) triggerActionSets];
  [v4 setHomeWorkflow_];

  sub_20CF36FE4();
}

uint64_t sub_20CFA3B50()
{
  sub_20D568858();
  _s23ConvertToShortcutModuleCMa();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E090);
  v0 = sub_20D567858();
  v2 = v1;

  result = MEMORY[0x20F31CDB0](0xD000000000000019, 0x800000020D5D1C90);
  qword_27C838148 = v0;
  unk_27C838150 = v2;
  return result;
}

uint64_t sub_20CFA3C00()
{
  aBlock[6] = MEMORY[0x277D84FA0];
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = objc_allocWithZone(MEMORY[0x277D14B38]);
  aBlock[4] = sub_20CFA648C;
  aBlock[5] = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CF351D8;
  aBlock[3] = &block_descriptor_45;
  v2 = _Block_copy(aBlock);

  v3 = [v1 initWithResultsBlock_];
  _Block_release(v2);

  swift_unknownObjectWeakAssign();
  v4 = v3;
  sub_20CEEA1BC(aBlock, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D5BA040;
  v6 = objc_allocWithZone(MEMORY[0x277D14B40]);
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v7 = sub_20D567CD8();

  v8 = [v6 initWithItems_];

  *(inited + 32) = v8;
  sub_20CEF7FC4(inited);
  v10 = v9;

  return v10;
}

void sub_20CFA3E00()
{
  v0 = *MEMORY[0x277D13F60];
  v1 = sub_20D5677F8();
  v2 = HULocalizedString(v1);

  if (v2)
  {
    v3 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20CEEFA2C(v2, v0, isUniquelyReferenced_nonNull_native);

    v5 = v3;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = swift_unknownObjectWeakLoadStrong();

      if (v8)
      {
        sub_20CFA3940();
        swift_unknownObjectRelease();
      }
    }

    v9 = *MEMORY[0x277D13FB8];
    sub_20CECF940(0, &qword_28111FB20);
    v10 = v9;
    v11 = sub_20D5683C8();
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_20CEEFA2C(v11, v10, v12);

    type metadata accessor for HFItemResultKey(0);
    sub_20CF89418();
    v13 = sub_20D567738();

    [objc_opt_self() futureWithResult_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20CFA4060(uint64_t a1)
{
  v19 = MEMORY[0x277D84F90];
  if (qword_27C81A210 != -1)
  {
    swift_once();
  }

  v3 = objc_allocWithZone(MEMORY[0x277D14850]);
  v4 = sub_20D5677F8();
  v5 = [v3 initWithIdentifier_];

  v6 = [v1 allItems];
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v7 = sub_20D567D08();

  sub_20D5663C8();
  v8 = sub_20CFA61C4(v7, a1);

  v18 = sub_20CF81C08(v8);
  sub_20CFA5924(&v18);

  v9 = sub_20D567A58();

  [v5 setItems_];

  if (*&v1[OBJC_IVAR____TtCC6HomeUI33TriggerActionPickerViewController23ConvertToShortcutModule_sectionHeader + 8])
  {
    sub_20D5663C8();
    v10 = sub_20D5677F8();
  }

  else
  {
    v10 = 0;
  }

  [v5 setHeaderTitle_];

  v11 = v5;
  MEMORY[0x20F31CEE0]();
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20D567AB8();
  }

  sub_20D567B08();
  v12 = objc_opt_self();
  sub_20CECF940(0, &unk_28111FFD0);
  v13 = sub_20D567A58();

  v14 = sub_20D567CD8();
  v15 = [v12 filterSections:v13 toDisplayedItems:v14];

  v16 = sub_20D567A78();
  return v16;
}

id sub_20CFA44FC()
{
  v1 = OBJC_IVAR____TtCC6HomeUI33TriggerActionPickerViewController33ConvertToShortcutModuleController____lazy_storage___collectionLayoutManager;
  v2 = *(v0 + OBJC_IVAR____TtCC6HomeUI33TriggerActionPickerViewController33ConvertToShortcutModuleController____lazy_storage___collectionLayoutManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC6HomeUI33TriggerActionPickerViewController33ConvertToShortcutModuleController____lazy_storage___collectionLayoutManager);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for CollectionLayoutManager()) init];
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_20CFA46C4(void *a1)
{
  v3 = [v1 module];
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {

    if (Strong == a1)
    {
      v5 = [v1 module];
      v6 = swift_unknownObjectWeakLoadStrong();

      if (v6)
      {
        if ([objc_opt_self() isSupportedForHome_])
        {
          sub_20CFA4E9C();
        }

        else
        {
          sub_20CFA550C();
        }
      }

      else
      {
        sub_20D5640A8();
      }
    }
  }

  return 0;
}

id sub_20CFA4838(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E080);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v30 = sub_20D5661D8();
  v8 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D566258();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s33ConvertToShortcutModuleControllerCMa();
  v33.receiver = v2;
  v33.super_class = v15;
  v31 = a1;
  objc_msgSendSuper2(&v33, sel_configureCell_forItem_, a1, a2);
  sub_20D566228();
  result = [objc_opt_self() hu_keyColor];
  if (result)
  {
    v17 = sub_20D566218();
    sub_20D5661F8();
    v17(v32, 0);
    v18 = [a2 latestResults];
    if (v18)
    {
      v19 = v18;
      v20 = sub_20D567758();

      v21 = sub_20D567838();
      if (*(v20 + 16))
      {
        v23 = sub_20CEED668(v21, v22);
        v25 = v24;

        if (v25)
        {
          sub_20CED43FC(*(v20 + 56) + 32 * v23, v32);

          swift_dynamicCast();
        }

        else
        {
        }
      }

      else
      {
      }
    }

    sub_20D566248();
    (*(v8 + 104))(v10, *MEMORY[0x277D74C00], v30);
    v26 = sub_20D566218();
    sub_20D566208();
    v26(v32, 0);
    v32[3] = v11;
    v32[4] = MEMORY[0x277D74C30];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
    (*(v12 + 16))(boxed_opaque_existential_1, v14, v11);
    MEMORY[0x20F31D5C0](v32);
    sub_20D566168();
    v28 = sub_20D5661A8();
    (*(*(v28 - 8) + 56))(v7, 0, 1, v28);
    MEMORY[0x20F31D5E0](v7);
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20CFA4E9C()
{
  v1 = v0;
  v2 = [v0 module];
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {

    v5 = sub_20D027B40(v4);

    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = sub_20CF39714;
    v21 = v6;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_20D02C760;
    v19 = &block_descriptor_12;
    v7 = _Block_copy(&v16);

    v8 = [v5 flatMap_];
    swift_unknownObjectRelease();
    _Block_release(v7);

    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = sub_20CFA5BD0;
    v21 = v9;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_20CF13714;
    v19 = &block_descriptor_28;
    v10 = _Block_copy(&v16);

    v11 = [v8 addSuccessBlock_];
    _Block_release(v10);

    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    v20 = sub_20CFA5BD8;
    v21 = v12;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_20D0261C0;
    v19 = &block_descriptor_34;
    v13 = _Block_copy(&v16);
    v14 = v1;

    v15 = [v11 addFailureBlock_];
    _Block_release(v13);
  }
}

void sub_20CFA5168(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 triggerActionSets];
    [v4 defaultActionsForShortcut];

    v5 = [a1 triggerActionSets];
    v6 = [a1 home];
    v7 = [objc_allocWithZone(MEMORY[0x277D7D778]) initWithHomeWorkflow:0 actionSetBuilder:v5 home:v6];

    if (v7)
    {
      v8 = v3;
      v9 = [v8 module];
      v10 = swift_unknownObjectWeakLoadStrong();

      [v7 setDelegate_];
      swift_unknownObjectRelease();
      v11 = [objc_opt_self() requestWithViewController_];
      [v11 setPreferredPresentationType_];
      v12 = [v8 host];

      if (v12)
      {
        v13 = [v8 asGeneric];
        v14 = [v11 asGeneric];
        v15 = [v12 moduleController:v13 presentViewControllerForRequest:v14];
        swift_unknownObjectRelease();
      }

      v3 = v7;
    }

    else
    {
      sub_20CFA550C();
    }
  }
}

void sub_20CFA5398()
{
  v0 = [objc_opt_self() sharedHandler];
  v1 = sub_20D5635C8();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_20CFA5BE0;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_20CFFFE8C;
  v4[3] = &block_descriptor_38_0;
  v3 = _Block_copy(v4);

  [v0 handleError:v1 retryBlock:v3 cancelBlock:0];
  _Block_release(v3);
}

void sub_20CFA54B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_20CFA4E9C();
  }
}

void sub_20CFA550C()
{
  v1 = sub_20D5677F8();
  v2 = HULocalizedString(v1);

  sub_20D567838();
  v3 = sub_20D5677F8();
  v4 = HULocalizedString(v3);

  sub_20D567838();
  v5 = sub_20D5677F8();

  v6 = sub_20D5677F8();

  v17 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v7 = sub_20D5677F8();
  v8 = HULocalizedString(v7);

  sub_20D567838();
  v9 = sub_20D5677F8();

  v10 = [objc_opt_self() actionWithTitle:v9 style:0 handler:0];

  [v17 addAction_];
  v11 = [v0 host];
  if (v11)
  {
    v12 = v11;
    v13 = [v0 asGeneric];
    v14 = [objc_opt_self() requestWithViewController_];
    v15 = [v14 asGeneric];

    v16 = [v12 moduleController:v13 presentViewControllerForRequest:v15];
    swift_unknownObjectRelease();
  }
}

id sub_20CFA581C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t *sub_20CFA5888(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_20D5663C8();
    sub_20CFA5BE8(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_20CFA5924(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_20D059BE4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_20CFA59A0(v6);
  return sub_20D5688D8();
}

void sub_20CFA59A0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20D568BA8();
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
        sub_20CECF940(0, &qword_281120AC0);
        v6 = sub_20D567AE8();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_20CF832C4(v8, v9, a1, v4);
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
    sub_20CF82424(0, v2, 1, a1);
  }
}

id sub_20CFA5AB4(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtCC6HomeUI33TriggerActionPickerViewController23ConvertToShortcutModule_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = &v2[OBJC_IVAR____TtCC6HomeUI33TriggerActionPickerViewController23ConvertToShortcutModule_sectionHeader];
  v5 = sub_20D5677F8();
  v6 = HULocalizedString(v5);

  v7 = sub_20D567838();
  v9 = v8;

  *v4 = v7;
  v4[1] = v9;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v11.receiver = v2;
  v11.super_class = _s23ConvertToShortcutModuleCMa();
  return objc_msgSendSuper2(&v11, sel_initWithItemUpdater_, a2);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_20CFA5BE8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  v32 = a4 & 0xC000000000000001;
  v30 = 0;
  v33 = a4 + 56;
  while (v10)
  {
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_13:
    v31 = v14 | (v6 << 6);
    v17 = *(*(v4 + 48) + 8 * v31);
    if (v32)
    {
      v12 = v17;
      v13 = sub_20D5687A8();

      if (v13)
      {
LABEL_21:
        *(a1 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_24:

          sub_20D0C10F4(a1, a2, v30, v4);
          return;
        }
      }
    }

    else if (*(a4 + 16))
    {
      v26 = v10;
      v27 = a2;
      v28 = v4;
      sub_20CECF940(0, &qword_281120AC0);
      v18 = v17;
      v19 = sub_20D5683E8();
      v20 = -1 << *(a4 + 32);
      v21 = v19 & ~v20;
      if ((*(v33 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = *(*(a4 + 48) + 8 * v21);
          v24 = sub_20D5683F8();

          if (v24)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v33 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        a2 = v27;
        v4 = v28;
        v10 = v26;
        goto LABEL_21;
      }

LABEL_19:

      a2 = v27;
      v4 = v28;
      v10 = v26;
    }
  }

  v15 = v6;
  while (1)
  {
    v6 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_24;
    }

    v16 = *(v7 + 8 * v6);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v10 = (v16 - 1) & v16;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_20CFA5E48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v46 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = (8 * v8);
  v10 = sub_20D5663C8();
  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (2)
  {
    v37 = v8;
    v38 = v3;
    v36 = &v33;
    MEMORY[0x28223BE20](v10);
    v39 = &v33 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v39, v9);
    v11 = 0;
    v3 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v5 + 56);
    v15 = (v12 + 63) >> 6;
    v43 = a2 & 0xC000000000000001;
    v16 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v16 = a2;
    }

    v40 = 0;
    v41 = v16;
    v45 = a2 + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_16:
      v21 = v18 | (v11 << 6);
      v22 = *(v5 + 48);
      v42 = v21;
      v8 = *(v22 + 8 * v21);
      if (v43)
      {
        v9 = v8;
        v17 = sub_20D5687A8();

        if (v17)
        {
LABEL_24:
          *&v39[(v42 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v42;
          if (__OFADD__(v40++, 1))
          {
            __break(1u);
LABEL_27:
            v30 = sub_20D0C10F4(v39, v37, v40, v5);

            return v30;
          }
        }
      }

      else if (*(a2 + 16))
      {
        v34 = v14;
        v35 = v5;
        v44 = sub_20CECF940(0, &qword_281120AC0);
        v23 = v8;
        v24 = sub_20D5683E8();
        v9 = a2;
        v25 = -1 << *(a2 + 32);
        v8 = v24 & ~v25;
        if ((*(v45 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          v26 = ~v25;
          while (1)
          {
            v27 = *(v9[6] + 8 * v8);
            v28 = sub_20D5683F8();

            if (v28)
            {
              break;
            }

            v8 = (v8 + 1) & v26;
            if (((*(v45 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          a2 = v9;
          v14 = v34;
          v5 = v35;
          goto LABEL_24;
        }

LABEL_22:

        a2 = v9;
        v14 = v34;
        v5 = v35;
      }
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        goto LABEL_27;
      }

      v20 = *(v3 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_30:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v32 = swift_slowAlloc();
  sub_20D5663C8();
  v30 = sub_20CFA5888(v32, v8, v5, a2);

  MEMORY[0x20F31FC70](v32, -1, -1);

  return v30;
}

uint64_t sub_20CFA61C4(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_20CFA5E48(a1, a2);
  }

  v3 = MEMORY[0x277D84FA0];
  v25 = MEMORY[0x277D84FA0];
  sub_20D5663C8();
  sub_20D568718();
  if (sub_20D568798())
  {
    sub_20CECF940(0, &qword_281120AC0);
    v4 = a2 + 56;
    do
    {
      swift_dynamicCast();
      if ((a2 & 0xC000000000000001) != 0)
      {
        v5 = v24;
        v6 = sub_20D5687A8();

        if (v6)
        {
          goto LABEL_8;
        }
      }

      else if (*(a2 + 16))
      {
        v14 = sub_20D5683E8();
        v15 = -1 << *(a2 + 32);
        v16 = v14 & ~v15;
        if ((*(v4 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          v17 = ~v15;
          while (1)
          {
            v18 = *(*(a2 + 48) + 8 * v16);
            v19 = sub_20D5683F8();

            if (v19)
            {
              break;
            }

            v16 = (v16 + 1) & v17;
            if (((*(v4 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

LABEL_8:
          v7 = *(v3 + 16);
          if (*(v3 + 24) <= v7)
          {
            sub_20D0C041C(v7 + 1);
          }

          v3 = v25;
          result = sub_20D5683E8();
          v9 = v25 + 56;
          v10 = -1 << *(v25 + 32);
          v11 = result & ~v10;
          v12 = v11 >> 6;
          if (((-1 << v11) & ~*(v25 + 56 + 8 * (v11 >> 6))) != 0)
          {
            v13 = __clz(__rbit64((-1 << v11) & ~*(v25 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v20 = 0;
            v21 = (63 - v10) >> 6;
            do
            {
              if (++v12 == v21 && (v20 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v22 = v12 == v21;
              if (v12 == v21)
              {
                v12 = 0;
              }

              v20 |= v22;
              v23 = *(v9 + 8 * v12);
            }

            while (v23 == -1);
            v13 = __clz(__rbit64(~v23)) + (v12 << 6);
          }

          *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
          *(*(v25 + 48) + 8 * v13) = v24;
          ++*(v25 + 16);
          continue;
        }
      }

LABEL_4:
    }

    while (sub_20D568798());
  }

  return v3;
}

uint64_t type metadata accessor for ActivityLogListCell()
{
  result = qword_27C81E098;
  if (!qword_27C81E098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20CFA6528()
{
  result = sub_20D565FA8();
  if (v1 <= 0x3F)
  {
    result = sub_20CFA65AC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_20CFA65AC()
{
  result = qword_27C81E0A8;
  if (!qword_27C81E0A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C81E0A8);
  }

  return result;
}

uint64_t sub_20CFA6614@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v86 = a1;
  v3 = type metadata accessor for ActivityLogListCell();
  v4 = v3 - 8;
  v81 = *(v3 - 8);
  v80 = *(v81 + 64);
  MEMORY[0x28223BE20](v3);
  v79 = &v61[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_20D566798();
  v7 = *(v6 - 8);
  v82 = v6;
  v83 = v7;
  MEMORY[0x28223BE20](v6);
  v74 = &v61[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E0B0);
  v10 = *(v9 - 8);
  v84 = v9;
  v85 = v10;
  MEMORY[0x28223BE20](v9);
  v75 = &v61[-v11];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E0B8);
  v70 = *(v71 - 8);
  v12 = MEMORY[0x28223BE20](v71);
  v69 = &v61[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v87 = &v61[-v14];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E0C0);
  MEMORY[0x28223BE20](v76);
  v16 = &v61[-v15];
  v78 = sub_20D5637A8();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v73 = &v61[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_20D565F58();
  v20 = v19;
  v67 = v19;
  v21 = sub_20D565F78();
  v23 = v22;
  v66 = v22;
  v24 = sub_20D565F68();
  sub_20D565F88();
  v25 = *(v1 + *(v4 + 28));
  v26 = sub_20D563718();
  v27 = [v25 stringFromDate_];

  sub_20D567838();
  v29 = v28;

  v65 = v24;
  swift_unknownObjectRetain();
  *v16 = sub_20D566B28();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v72 = v16;
  v64 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E0C8) + 44)];
  v90 = v18;
  v91 = v20;
  v68 = v2;
  v92 = v2;
  v93 = v21;
  v94 = v23;
  v88 = v2;
  v89 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E0D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E0D8);
  sub_20CF156D0(&qword_27C81E0E0, &qword_27C81E0D0);
  sub_20CFA7918();
  v30 = v87;
  sub_20D567428();
  sub_20D5663C8();
  sub_20D567038();
  v63 = v29;
  v31 = sub_20D5670C8();
  v33 = v32;
  LOBYTE(v16) = v34;

  v95 = sub_20D566D68();
  v35 = sub_20D5670B8();
  v37 = v36;
  v62 = v38;
  v40 = v39;
  sub_20CF13F34(v31, v33, v16 & 1);

  v41 = sub_20D566B28();
  v42 = v70;
  v43 = *(v70 + 16);
  v44 = v69;
  v45 = v71;
  v43(v69, v30, v71);
  v46 = v64;
  v43(v64, v44, v45);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E138);
  v48 = &v46[*(v47 + 48)];
  *v48 = 0;
  v48[8] = 1;
  v49 = &v46[*(v47 + 64)];
  *v49 = v35;
  *(v49 + 1) = v37;
  v50 = v62;
  LOBYTE(v46) = v62 & 1;
  v49[16] = v62 & 1;
  *(v49 + 3) = v40;
  *(v49 + 4) = v41;
  *(v49 + 5) = sub_20CFA788C;
  *(v49 + 6) = 0;
  sub_20CF14B58(v35, v37, v50 & 1);
  v51 = *(v42 + 8);
  sub_20D5663C8();
  v51(v87, v45);
  sub_20CF13F34(v35, v37, v46);

  v51(v44, v45);
  swift_unknownObjectRelease();

  v52 = v74;
  sub_20D566788();
  v53 = v79;
  sub_20CFA7C1C(v68, v79);
  v54 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v55 = swift_allocObject();
  sub_20CFA7C80(v53, v55 + v54);
  v56 = v75;
  v57 = v82;
  sub_20D567558();

  (*(v83 + 8))(v52, v57);
  sub_20D5667E8();
  sub_20CF156D0(&qword_27C81E140, &qword_27C81E0C0);
  sub_20CF156D0(&qword_27C81E148, &qword_27C81E0B0);
  v58 = v84;
  v59 = v72;
  sub_20D567238();
  swift_unknownObjectRelease();
  (*(v85 + 8))(v56, v58);
  sub_20CEF928C(v59, &qword_27C81E0C0);
  return (*(v77 + 8))(v73, v78);
}

uint64_t sub_20CFA6ED0(uint64_t a1, uint64_t a2)
{
  v3 = sub_20D565FA8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActivityLogListCell();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D565988();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C81A2B8 != -1)
  {
    swift_once();
  }

  v14 = qword_27C838268;
  sub_20D565998();
  sub_20CFA7C1C(a2, v9);
  v15 = sub_20D565968();
  v16 = sub_20D567EC8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = v10;
    v18 = v17;
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    (*(v4 + 16))(v6, v9, v3);
    v20 = sub_20D567858();
    v22 = v21;
    sub_20CFA7D54(v9);
    v23 = sub_20CEE913C(v20, v22, &v26);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_20CEB6000, v15, v16, "Log cell: event %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x20F31FC70](v19, -1, -1);
    MEMORY[0x20F31FC70](v18, -1, -1);

    return (*(v11 + 8))(v13, v25);
  }

  else
  {

    sub_20CFA7D54(v9);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_20CFA71CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  v9 = MEMORY[0x277D84F90];
  *(a5 + 16) = 0;
  *(a5 + 24) = v9;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  *(a5 + 48) = 0;
  *(a5 + 56) = v9;
  sub_20D5663C8();
  sub_20D5663C8();
  sub_20CF14B58(a1, a2, 0);
  sub_20D5663C8();
  sub_20CF14B58(a3, a4, 0);
  sub_20D5663C8();
  sub_20CF13F34(a3, a4, 0);

  sub_20CF13F34(a1, a2, 0);
}

uint64_t sub_20CFA72B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v5 = sub_20D563C28();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E120);
  MEMORY[0x28223BE20](v9);
  v11 = v32 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E150);
  MEMORY[0x28223BE20](v37);
  v13 = (v32 - v12);
  v14 = sub_20D5673D8();
  MEMORY[0x28223BE20](v14);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_8;
  }

  v35 = v15;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  v19 = a1;
  a1 = v18;
  if (!v18)
  {
    goto LABEL_8;
  }

  v33 = v9;
  v34 = a3;
  v32[1] = v19;
  swift_unknownObjectRetain();
  v20 = [a1 imageIdentifier];
  v32[0] = sub_20D567838();

  if (([a1 isSystemImage] & 1) == 0)
  {

    v9 = v33;
LABEL_8:
    (*(v6 + 104))(v8, *MEMORY[0x277D18090], v5);
    swift_unknownObjectRetain();
    sub_20D563C38();
    sub_20D5675E8();
    sub_20D566848();
    v29 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E130) + 36)];
    v30 = v42;
    *v29 = v41;
    *(v29 + 1) = v30;
    *(v29 + 2) = v43;
    sub_20D565F98();
    *&v11[*(v9 + 36)] = sub_20D5672E8();
    v27 = &qword_27C81E120;
    sub_20CEF9178(v11, v13, &qword_27C81E120);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E0F8);
    sub_20CFA79D0();
    sub_20CFA7A88(&qword_27C81E118, &qword_27C81E120, &unk_20D5C0D08, sub_20CFA7B38);
    sub_20D566D18();

    v28 = v11;
    return sub_20CEF928C(v28, v27);
  }

  sub_20D5673E8();
  v21 = v35;
  (*(v35 + 104))(v17, *MEMORY[0x277CE0FE0], v14);
  v22 = sub_20D567418();

  (*(v21 + 8))(v17, v14);
  sub_20D565F98();
  v23 = sub_20D5672E8();
  sub_20D5675E8();
  sub_20D566848();
  v40 = 1;
  v41 = v22;
  LOWORD(v42) = 1;
  *(&v42 + 2) = v38;
  WORD3(v42) = v39;
  *(&v42 + 1) = v23;
  v24 = v44;
  v25 = v45;
  v13[2] = v43;
  v13[3] = v24;
  v13[4] = v25;
  v26 = v42;
  *v13 = v41;
  v13[1] = v26;
  swift_storeEnumTagMultiPayload();
  v27 = &qword_27C81E0F8;
  sub_20CEF9178(&v41, &v38, &qword_27C81E0F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E0F8);
  sub_20CFA79D0();
  sub_20CFA7A88(&qword_27C81E118, &qword_27C81E120, &unk_20D5C0D08, sub_20CFA7B38);
  sub_20D566D18();
  swift_unknownObjectRelease();
  v28 = &v41;
  return sub_20CEF928C(v28, v27);
}

double sub_20CFA788C()
{
  v0 = sub_20D566B28();
  v1 = MEMORY[0x20F31BD60](v0);
  sub_20D5668A8();
  return v1 + v2 * -0.3;
}

unint64_t sub_20CFA7918()
{
  result = qword_27C81E0E8;
  if (!qword_27C81E0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81E0D8);
    sub_20CFA79D0();
    sub_20CFA7A88(&qword_27C81E118, &qword_27C81E120, &unk_20D5C0D08, sub_20CFA7B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E0E8);
  }

  return result;
}

unint64_t sub_20CFA79D0()
{
  result = qword_27C81E0F0;
  if (!qword_27C81E0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81E0F8);
    sub_20CFA7A88(&qword_27C81E100, &qword_27C81E108, &unk_20D5C0CF0, sub_20CF13EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E0F0);
  }

  return result;
}

uint64_t sub_20CFA7A88(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_20CF156D0(&qword_27C81E110, &unk_27C8203A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20CFA7B38()
{
  result = qword_27C81E128;
  if (!qword_27C81E128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81E130);
    sub_20CFA7BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E128);
  }

  return result;
}

unint64_t sub_20CFA7BC4()
{
  result = qword_27C81CD48;
  if (!qword_27C81CD48)
  {
    sub_20D563C48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CD48);
  }

  return result;
}

uint64_t sub_20CFA7C1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityLogListCell();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CFA7C80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityLogListCell();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CFA7CE4(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivityLogListCell() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20CFA6ED0(a1, v4);
}

uint64_t sub_20CFA7D54(uint64_t a1)
{
  v2 = type metadata accessor for ActivityLogListCell();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id HUViewControllerPresentationRequest.asGeneric()()
{
  sub_20CFA7E00();
  objc_opt_self();
  v0 = swift_dynamicCastObjCClassUnconditional();

  return v0;
}

unint64_t sub_20CFA7E00()
{
  result = qword_28111FF50;
  if (!qword_28111FF50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28111FF50);
  }

  return result;
}

uint64_t sub_20CFA7E88(uint64_t a1)
{
  v3 = sub_20D563818();
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_20D568768();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v49 = MEMORY[0x277D84F90];
    sub_20CEF0B08(0, v7 & ~(v7 >> 63), 0);
    v44 = v49;
    if (v43)
    {
      result = sub_20D568708();
    }

    else
    {
      result = sub_20D5686C8();
      v9 = *(a1 + 36);
    }

    v46 = result;
    v47 = v9;
    v48 = v43 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v39 = v7;
      v40 = v42 + 32;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v37 = a1 + 56;
      v38 = v11;
      v35[1] = v1;
      v36 = a1 + 64;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v46;
        v15 = v47;
        v16 = v48;
        v17 = a1;
        sub_20CFB1614(v46, v47, v48, a1);
        v19 = v18;
        v20 = [v18 uniqueIdentifier];
        sub_20D5637E8();

        v21 = v44;
        v49 = v44;
        v23 = *(v44 + 16);
        v22 = *(v44 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_20CEF0B08(v22 > 1, v23 + 1, 1);
          v21 = v49;
        }

        *(v21 + 16) = v23 + 1;
        v24 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v44 = v21;
        result = (*(v42 + 32))(v21 + v24 + *(v42 + 72) * v23, v6, v41);
        if (v43)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          a1 = v17;
          if (sub_20D568728())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E278);
          v12 = sub_20D567D38();
          sub_20D5687C8();
          result = v12(v45, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_20CFAE618(v46, v47, v48);
            return v44;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v17;
          v25 = 1 << *(v17 + 32);
          if (v14 >= v25)
          {
            goto LABEL_38;
          }

          v26 = v14 >> 6;
          v27 = *(v37 + 8 * (v14 >> 6));
          if (((v27 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_40;
          }

          v28 = v27 & (-2 << (v14 & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v36 + 8 * v26);
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = sub_20CFAE618(v14, v15, 0);
                v25 = __clz(__rbit64(v32)) + v29;
                goto LABEL_33;
              }
            }

            result = sub_20CFAE618(v14, v15, 0);
          }

LABEL_33:
          v34 = *(v17 + 36);
          v46 = v25;
          v47 = v34;
          v48 = 0;
          v7 = v39;
          if (v10 == v39)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_20CFA8294(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))();
  type metadata accessor for ItemCollectionViewControlsTransitionHelper();

  return swift_dynamicCastClassUnconditional();
}

uint64_t sub_20CFA82F4()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + class metadata base offset for HomeUIAccessoryControlViewController + 16);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20CFA8374(char a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + class metadata base offset for HomeUIAccessoryControlViewController + 16);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20CFA849C()
{
  v1 = MEMORY[0x277D85000];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for HomeUIAccessoryControlViewController();
  v2 = objc_msgSendSuper2(&v4, sel_viewDidLoad);
  return (*((*v1 & *v0) + class metadata base offset for HomeUIAccessoryControlViewController + 56))(v2);
}

void sub_20CFA8584(void *a1)
{
  v1 = a1;
  sub_20CFA849C();
}

void sub_20CFA85CC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_20CFADA44();
}

id sub_20CFA862C()
{
  result = [objc_opt_self() isAMac];
  if (result)
  {
    v2 = *((*MEMORY[0x277D85000] & *v0) + class metadata base offset for HomeUIAccessoryControlViewController + 16);
    swift_beginAccess();
    return *(v0 + v2);
  }

  return result;
}

uint64_t sub_20CFA86C8()
{
  v1 = v0;
  v2 = sub_20D564FB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_20D564F98();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_20D565068();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [v1 traitCollection];
  sub_20CED05D4(v10, v9);

  v11 = sub_20D565418();
  result = (*((*MEMORY[0x277D85000] & *v1) + class metadata base offset for HomeUIAccessoryControlViewController + 48))(v11);
  if (result)
  {
    sub_20D564F58();
    v13 = sub_20D5653F8();
    sub_20D565008();
    v13(v15, 0);
    (*(v3 + 104))(v5, *MEMORY[0x277D14E98], v2);
    v14 = sub_20D5653F8();
    sub_20D565058();
    return v14(v15, 0);
  }

  return result;
}

uint64_t HomeUIAccessoryControlViewController.__allocating_init(model:deviceIdentifier:tileHelper:alarmAndTimerUIViewBuilder:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = sub_20CFADB10(a1, a2, a3, a4, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  return v13;
}

uint64_t HomeUIAccessoryControlViewController.init(model:deviceIdentifier:tileHelper:alarmAndTimerUIViewBuilder:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_20CFADB10(a1, a2, a3, a4, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  return v6;
}

id HomeUIAccessoryControlViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HomeUIAccessoryControlViewController.init(coder:)(void *a1)
{
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + class metadata base offset for HomeUIAccessoryControlViewController + 16)) = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HomeUIAccessoryControlViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id HomeUIAccessoryControlViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeUIAccessoryControlViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20CFA8C58(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27C81E160;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  type metadata accessor for DataModelAccessoryControlViewController(0);
  sub_20CEBEFC0();
  type metadata accessor for ItemCollectionViewControlsTransitionHelper();
  v7 = swift_dynamicCastClassUnconditional();
  v8 = *(v3 + v4);
  v9 = qword_27C81D6C8;
  swift_beginAccess();
  v10 = *(v7 + v9);
  *(v7 + v9) = v8;
  v11 = v8;
}

id sub_20CFA8D38()
{
  v1 = qword_27C81E160;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_20CFA8D8C(void *a1)
{
  v3 = qword_27C81E160;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  type metadata accessor for DataModelAccessoryControlViewController(0);
  sub_20D565368();

  type metadata accessor for ItemCollectionViewControlsTransitionHelper();
  v6 = swift_dynamicCastClassUnconditional();
  v7 = *(v1 + v3);
  v8 = qword_27C81D6C8;
  swift_beginAccess();
  v9 = *(v6 + v8);
  *(v6 + v8) = v7;
  v10 = v7;
}

void (*sub_20CFA8E68(uint64_t *a1))(void **a1, char a2)
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
  v4 = qword_27C81E160;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_20CFA8EF0;
}

void sub_20CFA8EF0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    type metadata accessor for DataModelAccessoryControlViewController(0);
    sub_20D565368();
    type metadata accessor for ItemCollectionViewControlsTransitionHelper();
    v6 = swift_dynamicCastClassUnconditional();
    v7 = *(v4 + v5);
    v8 = qword_27C81D6C8;
    swift_beginAccess();
    v9 = *(v6 + v8);
    *(v6 + v8) = v7;
    v10 = v7;
  }

  free(v3);
}

id sub_20CFA8FB8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_20CFA90B8()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_20CFA9118(uint64_t *a1))(void **a1, char a2)
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
  v5 = qword_27C81E168;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_20CED1190;
}

uint64_t DataModelAccessoryControlViewController.init(identifier:item:tileHelper:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_20D564FB8();
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  v65 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D565038();
  MEMORY[0x28223BE20](v10 - 8);
  v63 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20D564F98();
  MEMORY[0x28223BE20](v12 - 8);
  v61 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_20D564FA8();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_20D564F48();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_20D565068();
  v62 = *(v64 - 8);
  v16 = MEMORY[0x28223BE20](v64);
  v18 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = v48 - v19;
  v20 = sub_20D563E88();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v54 = v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v73 = v48 - v24;
  v25 = qword_27C81E168;
  swift_unknownObjectWeakInit();
  v26 = [objc_opt_self() sharedDispatcher];
  v27 = [v26 home];

  v72 = v27;
  if (v27)
  {
    v68 = v21;
    v69 = v20;
    v50 = v18;
    v70 = v4;
    v52 = a3;
    v75[5] = &unk_28251AC90;
    v75[6] = &unk_28251B0C8;
    v28 = swift_dynamicCastObjCProtocolConditional();
    v71 = a1;
    v51 = a2;
    if (v28)
    {
      v29 = v28;
      v30 = a2;
      v31 = [v72 hf_characteristicValueManager];
      v32 = [v29 copyWithValueSource_];

      *(v70 + qword_27C81E160) = v32;
      type metadata accessor for MediaControlUIViewBuilder();
      swift_allocObject();
      v33 = sub_20CF044E4(v29);
    }

    else
    {
      *(v70 + qword_27C81E160) = a2;
      v35 = a2;
      v33 = 0;
    }

    v37 = v68;
    v36 = v69;
    sub_20D563F48();
    v48[1] = sub_20D563F18();
    v38 = *(v37 + 16);
    v38(v73, v71, v36);
    v49 = v33;
    if (v33)
    {
      v39 = type metadata accessor for MediaControlUIViewBuilder();
      v40 = sub_20CFADE88(&qword_27C81E178, type metadata accessor for MediaControlUIViewBuilder);
    }

    else
    {
      v39 = 0;
      v40 = 0;
      v75[1] = 0;
      v75[2] = 0;
    }

    v75[0] = v33;
    v75[3] = v39;
    v75[4] = v40;
    (*(v55 + 104))(v53, *MEMORY[0x277D14E68], v56);
    (*(v59 + 104))(v58, *MEMORY[0x277D14E88], v60);

    sub_20D564F58();
    sub_20D565028();
    (*(v66 + 104))(v65, *MEMORY[0x277D14EA8], v67);
    v41 = v57;
    sub_20D564FC8();
    v42 = v69;
    *(v70 + *((*MEMORY[0x277D85000] & *v70) + class metadata base offset for HomeUIAccessoryControlViewController + 16)) = 0;
    v43 = v73;
    v38(v54, v73, v42);
    sub_20CFADD68(v75, v74);
    v44 = v62;
    v45 = v64;
    (*(v62 + 16))(v50, v41, v64);

    v34 = sub_20D5653E8();

    v46 = *(v68 + 8);
    v46(v71, v42);
    (*(v44 + 8))(v41, v45);
    v46(v43, v42);
    sub_20CEF928C(v75, &qword_27C81E170);
    if (v49)
    {
      swift_unknownObjectWeakAssign();
    }
  }

  else
  {
    (*(v21 + 8))(a1, v20);

    sub_20CED4514(v4 + v25);
    type metadata accessor for DataModelAccessoryControlViewController(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v34;
}

uint64_t static DataModelAccessoryControlViewController.findDataModelObjectIdentifier(with:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_20D565988();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = sub_20D5641B8();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E180);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = sub_20D563DA8();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v6 = sub_20D563818();
  v2[21] = v6;
  v2[22] = *(v6 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F6D0);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v7 = sub_20D563E88();
  v2[28] = v7;
  v2[29] = *(v7 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  sub_20D567C18();
  v2[32] = sub_20D567C08();
  v9 = sub_20D567BA8();
  v2[33] = v9;
  v2[34] = v8;

  return MEMORY[0x2822009F8](sub_20CFA9DA4, v9, v8);
}

uint64_t sub_20CFA9DA4()
{
  v121 = v0;
  v1 = [*(v0 + 24) accessoryRepresentableObject];
  swift_getObjectType();
  v2 = sub_20D5681A8();
  *(v0 + 280) = v2;
  swift_unknownObjectRelease();
  v3 = [v2 home];
  *(v0 + 288) = v3;
  if (!v3)
  {
    v25 = *(v0 + 24);

    sub_20D565948();
    v26 = v25;
    v27 = sub_20D565968();
    v28 = sub_20D567EB8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 24);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v29;
      *v31 = v29;
      v32 = v29;
      _os_log_impl(&dword_20CEB6000, v27, v28, "Can't rebuild snapshot due to object without home %@", v30, 0xCu);
      sub_20CEF928C(v31, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v31, -1, -1);
      MEMORY[0x20F31FC70](v30, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v40 = *(v0 + 48);
    goto LABEL_21;
  }

  v4 = *(v0 + 232);
  v111 = *(v0 + 216);
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v7 = *(v0 + 176);
  v8 = v3;
  v114 = *(v0 + 168);
  v117 = *(v0 + 224);
  *(v0 + 296) = sub_20D563F48();
  v9 = sub_20D563F18();
  v10 = [v2 uniqueIdentifier];
  sub_20D5637E8();

  v118 = v8;
  v11 = [v8 uniqueIdentifier];
  sub_20D5637E8();

  sub_20D563E98();
  v12 = *(v7 + 8);
  *(v0 + 304) = v12;
  *(v0 + 312) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13 = v6;
  v14 = v12;
  v12(v13, v114);
  v12(v5, v114);
  v15 = *(v4 + 48);
  *(v0 + 320) = v15;
  *(v0 + 328) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v15(v111, 1, v117) != 1)
  {
    v33 = *(v0 + 248);
    v35 = *(v0 + 224);
    v34 = *(v0 + 232);
    v36 = *(v0 + 216);
    v37 = *(v0 + 16);

    swift_unknownObjectRelease();
    v38 = *(v34 + 32);
    v38(v33, v36, v35);
    v38(v37, v33, v35);
    v39 = 0;
LABEL_22:
    (*(*(v0 + 232) + 56))(*(v0 + 16), v39, 1, *(v0 + 224));

    v91 = *(v0 + 8);

    return v91();
  }

  sub_20CEF928C(*(v0 + 216), &qword_27C81F6D0);
  v16 = sub_20D563F18();
  v17 = [v8 uniqueIdentifier];
  sub_20D5637E8();

  v18 = sub_20D563EE8();
  v19 = *(v0 + 184);
  if (*(v18 + 16))
  {
    v20 = sub_20CEED7C0(*(v0 + 184));
    v21 = *(v0 + 184);
    v22 = *(v0 + 168);
    if (v23)
    {
      (*(*(v0 + 88) + 16))(*(v0 + 112), *(v18 + 56) + *(*(v0 + 88) + 72) * v20, *(v0 + 80));
      v14(v21, v22);

      v24 = 0;
      goto LABEL_14;
    }

    v42 = v21;
    v43 = v22;
  }

  else
  {
    v41 = *(v0 + 168);

    v42 = v19;
    v43 = v41;
  }

  v14(v42, v43);
  v24 = 1;
LABEL_14:
  v44 = *(v0 + 112);
  v46 = *(v0 + 80);
  v45 = *(v0 + 88);
  (*(v45 + 56))(v44, v24, 1, v46);
  if ((*(v45 + 48))(v44, 1, v46))
  {
    v47 = *(v0 + 112);

    sub_20CEF928C(v47, &qword_27C81E180);
    sub_20D565948();
    v48 = v118;
    v49 = sub_20D565968();
    v50 = sub_20D567EB8();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      *(v51 + 4) = v48;
      *v52 = v118;
      v53 = v48;
      _os_log_impl(&dword_20CEB6000, v49, v50, "Can't rebuild snapshot due to missing home snapshot for %@", v51, 0xCu);
      sub_20CEF928C(v52, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v52, -1, -1);
      MEMORY[0x20F31FC70](v51, -1, -1);

      swift_unknownObjectRelease();
      v49 = v53;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v40 = *(v0 + 56);
LABEL_21:
    (*(*(v0 + 40) + 8))(v40, *(v0 + 32));
    v39 = 1;
    goto LABEL_22;
  }

  v109 = v14;
  v54 = *(v0 + 152);
  v55 = *(v0 + 160);
  v112 = *(v0 + 144);
  v115 = *(v0 + 136);
  v57 = *(v0 + 120);
  v56 = *(v0 + 128);
  v58 = *(v0 + 112);
  v60 = *(v0 + 88);
  v59 = *(v0 + 96);
  v61 = *(v0 + 80);
  (*(v60 + 16))(v59, v58, v61);
  sub_20CEF928C(v58, &qword_27C81E180);
  sub_20D564118();
  (*(v60 + 8))(v59, v61);
  (*(v56 + 32))(v55, v54, v57);
  sub_20D565948();
  v62 = *(v56 + 16);
  v62(v112, v55, v57);
  v62(v115, v55, v57);
  v63 = v118;
  swift_unknownObjectRetain();
  v64 = sub_20D565968();
  v65 = sub_20D567EA8();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = *(v0 + 200);
    v107 = v65;
    v67 = *(v0 + 144);
    v103 = *(v0 + 136);
    v104 = *(v0 + 168);
    v69 = *(v0 + 120);
    v68 = *(v0 + 128);
    v110 = *(v0 + 40);
    v113 = *(v0 + 32);
    v116 = *(v0 + 72);
    v106 = v64;
    v70 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v120 = v108;
    *v70 = 138413314;
    *(v70 + 4) = v63;
    *v105 = v118;
    *(v70 + 12) = 2080;
    v71 = v63;
    v119 = v63;
    v72 = [v2 description];
    v73 = sub_20D567838();
    v75 = v74;

    v76 = sub_20CEE913C(v73, v75, &v120);

    *(v70 + 14) = v76;
    *(v70 + 22) = 2080;
    v77 = sub_20D563D98();
    v79 = v78;
    v80 = *(v68 + 8);
    v80(v67, v69);
    v81 = sub_20CEE913C(v77, v79, &v120);

    *(v70 + 24) = v81;
    *(v70 + 32) = 2080;
    sub_20D563D68();
    sub_20CFADE88(&qword_2811209D0, MEMORY[0x277CC95F0]);
    v82 = sub_20D568BB8();
    v84 = v83;
    v109(v66, v104);
    v80(v103, v69);
    v85 = sub_20CEE913C(v82, v84, &v120);

    *(v70 + 34) = v85;
    *(v70 + 42) = 2112;
    v86 = sub_20D563F18();
    v87 = sub_20D563E68();

    *(v70 + 44) = v87;
    v105[1] = v87;
    _os_log_impl(&dword_20CEB6000, v106, v107, "Attempting to build snapshot for %@ since we couldn't found %s, current state snapshot home name: %s home id: %s, current home: %@", v70, 0x34u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BE60);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v105, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v108, -1, -1);
    v88 = v70;
    v89 = v119;
    MEMORY[0x20F31FC70](v88, -1, -1);

    v90 = *(v110 + 8);
    v90(v116, v113);
  }

  else
  {
    v93 = *(v0 + 136);
    v94 = *(v0 + 144);
    v95 = *(v0 + 120);
    v96 = *(v0 + 128);
    v97 = *(v0 + 72);
    v98 = *(v0 + 32);
    v99 = *(v0 + 40);

    v89 = v63;
    v80 = *(v96 + 8);
    v80(v93, v95);
    v80(v94, v95);
    v90 = *(v99 + 8);
    v90(v97, v98);
  }

  *(v0 + 336) = v90;
  *(v0 + 344) = v80;
  *(v0 + 352) = sub_20D563F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E188);
  sub_20CFADDD8();
  v100 = sub_20D567DA8();
  *(v0 + 360) = v100;
  v101 = swift_task_alloc();
  *(v0 + 368) = v101;
  *v101 = v0;
  v101[1] = sub_20CFAA974;
  v102 = *(v0 + 104);

  return MEMORY[0x28216E9A0](v102, v89, 0, v100);
}

uint64_t sub_20CFAA974()
{
  v1 = *v0;
  v2 = *(*v0 + 352);
  v3 = *(*v0 + 104);

  sub_20CEF928C(v3, &qword_27C81E180);
  v4 = *(v1 + 272);
  v5 = *(v1 + 264);

  return MEMORY[0x2822009F8](sub_20CFAAB04, v5, v4);
}

uint64_t sub_20CFAAB04()
{
  v63 = v0;
  v59 = v0[40];
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[35];
  v57 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[24];
  v7 = v0[21];

  v8 = sub_20D563F18();
  v9 = [v3 uniqueIdentifier];
  sub_20D5637E8();

  v10 = [v2 uniqueIdentifier];
  sub_20D5637E8();

  sub_20D563E98();
  v1(v6, v7);
  v1(v5, v7);
  if (v59(v4, 1, v57) == 1)
  {
    v11 = v0[36];
    v12 = v0[3];
    sub_20CEF928C(v0[26], &qword_27C81F6D0);
    v13 = [v12 accessoryRepresentableObject];
    swift_getObjectType();
    v14 = sub_20D5681F8();
    swift_unknownObjectRelease();
    v15 = sub_20CFA7E88(v14);

    sub_20D565948();
    v16 = v11;
    swift_unknownObjectRetain();
    sub_20D5663C8();
    v17 = sub_20D565968();
    v18 = sub_20D567EA8();
    swift_unknownObjectRelease();

    v19 = os_log_type_enabled(v17, v18);
    v60 = v0[42];
    v61 = v0[43];
    v20 = v0[35];
    v21 = v0[36];
    if (v19)
    {
      v52 = v0[21];
      v56 = v0[15];
      v58 = v0[20];
      v55 = v0[8];
      v54 = v0[4];
      v22 = swift_slowAlloc();
      v53 = v18;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v62[0] = v24;
      *v22 = 136315650;
      v25 = [v20 description];
      v26 = sub_20D567838();
      v28 = v27;

      v29 = sub_20CEE913C(v26, v28, v62);

      *(v22 + 4) = v29;
      *(v22 + 12) = 2080;
      v30 = MEMORY[0x20F31CF30](v15, v52);
      v32 = v31;

      v33 = sub_20CEE913C(v30, v32, v62);

      *(v22 + 14) = v33;
      *(v22 + 22) = 2112;
      *(v22 + 24) = v21;
      *v23 = v21;
      v34 = v21;
      _os_log_impl(&dword_20CEB6000, v17, v53, "DataModel state snapshot still can't found %s in accessories %s even after a slurp of %@, check if the object is actually in home graph", v22, 0x20u);
      sub_20CEF928C(v23, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v23, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v24, -1, -1);
      MEMORY[0x20F31FC70](v22, -1, -1);

      swift_unknownObjectRelease();
      v60(v55, v54);
      v35 = v56;
      v36 = v58;
    }

    else
    {
      v45 = v17;
      v46 = v0[20];
      v47 = v0[15];
      v48 = v0[8];
      v49 = v0[4];

      swift_unknownObjectRelease();

      v60(v48, v49);
      v36 = v46;
      v35 = v47;
    }

    v61(v36, v35);
    v44 = 1;
  }

  else
  {
    v37 = v0[36];
    v39 = v0[29];
    v38 = v0[30];
    v40 = v0[28];
    v41 = v0[26];
    v42 = v0[2];
    (v0[43])(v0[20], v0[15]);

    swift_unknownObjectRelease();
    v43 = *(v39 + 32);
    v43(v38, v41, v40);
    v43(v42, v38, v40);
    v44 = 0;
  }

  (*(v0[29] + 56))(v0[2], v44, 1, v0[28]);

  v50 = v0[1];

  return v50();
}

void DataModelAccessoryControlViewController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  sub_20D568A58();
  __break(1u);
}

void sub_20CFAB128()
{
  swift_unknownObjectWeakInit();
  sub_20D568A58();
  __break(1u);
}

id sub_20CFAB1A0(void *a1)
{
  v1 = a1;
  sub_20CFAB208();

  v2 = sub_20D5677F8();

  return v2;
}

void sub_20CFAB208()
{
  v1 = v0;
  v2 = sub_20D563818();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_27C81E160;
  swift_beginAccess();
  v7 = [objc_msgSend(*(v0 + v6) accessoryRepresentableObject)];
  swift_unknownObjectRelease();
  v8 = [v7 rawServiceName];

  v41 = sub_20D567838();
  v10 = v9;

  v11 = [*(v1 + v6) accessoryRepresentableObject];
  swift_getObjectType();
  v12 = sub_20D5681A8();
  swift_unknownObjectRelease();
  v13 = [v12 uniqueIdentifier];
  swift_unknownObjectRelease();
  sub_20D5637E8();

  v14 = sub_20D5637B8();
  v16 = v15;
  v17 = *(v3 + 8);
  v43 = v3 + 8;
  v44 = v2;
  v42 = v17;
  v17(v5, v2);
  v48 = v14;
  v49 = v16;
  [*(v1 + v6) accessoryRepresentableObject];
  swift_getObjectType();
  v18 = sub_20D5681D8();
  swift_unknownObjectRelease();
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = sub_20D568768();
  }

  else
  {
    v19 = *(v18 + 16);
  }

  if (!v19)
  {
LABEL_26:
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_20D568858();

    v46 = 0x726F737365636361;
    v47 = 0xEF203A656D614E79;
    MEMORY[0x20F31CDB0](v41, v10);

    MEMORY[0x20F31CDB0](0xD000000000000013, 0x800000020D5D1D40);
    MEMORY[0x20F31CDB0](v48, v49);

    return;
  }

  v20 = [*(v1 + v6) accessoryRepresentableObject];
  swift_getObjectType();
  v21 = sub_20D5681D8();
  swift_unknownObjectRelease();
  v40 = v10;
  if ((v21 & 0xC000000000000001) != 0)
  {
    sub_20D568718();
    sub_20CFADE3C();
    sub_20CFADE88(&qword_27C81D290, sub_20CFADE3C);
    sub_20D567D58();
    v21 = v50;
    v22 = v51;
    v23 = v52;
    v24 = v53;
    v25 = v54;
  }

  else
  {
    v24 = 0;
    v26 = -1 << *(v21 + 32);
    v22 = v21 + 56;
    v23 = ~v26;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v25 = v28 & *(v21 + 56);
  }

  v39 = v23;
  v29 = (v23 + 64) >> 6;
  while (v21 < 0)
  {
    v35 = sub_20D568798();
    if (!v35 || (v45 = v35, sub_20CFADE3C(), swift_dynamicCast(), v34 = v46, v32 = v24, v33 = v25, !v46))
    {
LABEL_25:
      sub_20CEC80DC();
      v10 = v40;
      goto LABEL_26;
    }

LABEL_23:
    if ([v34 isUserInteractive])
    {
      v46 = 0x6965636976726573;
      v47 = 0xEA00000000003A64;
      v36 = [v34 uniqueIdentifier];
      sub_20D5637E8();

      sub_20CFADE88(&qword_2811209D0, MEMORY[0x277CC95F0]);
      v37 = v44;
      v38 = sub_20D568BB8();
      MEMORY[0x20F31CDB0](v38);

      v42(v5, v37);
      MEMORY[0x20F31CDB0](v46, v47);
    }

    else
    {
    }

    v24 = v32;
    v25 = v33;
  }

  v30 = v24;
  v31 = v25;
  v32 = v24;
  if (v25)
  {
LABEL_19:
    v33 = (v31 - 1) & v31;
    v34 = *(*(v21 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v31)))));
    if (!v34)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v29)
    {
      goto LABEL_25;
    }

    v31 = *(v22 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
}

uint64_t sub_20CFAB7B8()
{
  v1 = v0 + qword_27C81E168;

  return sub_20CED4514(v1);
}

uint64_t sub_20CFAB810(uint64_t a1)
{
  v2 = a1 + qword_27C81E168;

  return sub_20CED4514(v2);
}

void (*sub_20CFAB87C(void *a1, uint64_t a2, uint64_t a3))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  *a1 = v6;
  v6[3] = v3;
  v6[4] = a3;
  v6[5] = qword_27C81E160;
  swift_beginAccess();
  return sub_20CFAB90C;
}

void (*sub_20CFAB924(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_20D565378();
  return sub_20CFAE63C;
}

void (*sub_20CFAB994(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_20D5653F8();
  return sub_20CFAE63C;
}

void (*sub_20CFABA04(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_20D5653B8();
  return sub_20CFAE63C;
}

void *sub_20CFABB5C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = sub_20D565438();
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D563E88();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x277D755F0]) init];
  *(v3 + qword_27C81E230) = v14;
  [v14 prepare];
  (*(v11 + 16))(v13, a1, v10);
  v15 = a2;

  v16 = DataModelAccessoryControlViewController.init(identifier:item:tileHelper:)(v13, v15, a3);
  if (v16)
  {
    if (([objc_opt_self() isHomeControlService] & 1) != 0 || (swift_beginAccess(), v32 = &unk_28251B0C8, !swift_dynamicCastObjCProtocolConditional()))
    {
    }

    else
    {
      v29 = v7;
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = v16;

      sub_20D565428();

      v28 = v17;
      v27 = sub_20D565378();
      v19 = v18;
      v20 = *v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v19 = v20;
      v26 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_20CEE863C(0, v20[2] + 1, 1, v20);
        *v19 = v20;
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v20 = sub_20CEE863C(v22 > 1, v23 + 1, 1, v20);
        *v26 = v20;
      }

      v20[2] = v23 + 1;
      (*(v30 + 32))(v20 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v23, v9, v29);
      v27(v31, 0);
    }

    (*(v11 + 8))(a1, v10);
  }

  else
  {
    (*(v11 + 8))(a1, v10);
  }

  return v16;
}

void sub_20CFABF14()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = qword_27C81E230;
    [*(Strong + qword_27C81E230) impactOccurred];
    [*&v1[v2] prepare];
    sub_20CFABFEC();
  }
}

void sub_20CFABFEC()
{
  v1 = qword_27C81E160;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = v2;

  v5 = _s6HomeUI22AccessoryDetailsRouterC11detailsView3for20navigationController7dismissSo33HUDetailsPresentationDelegateHost_So06UIViewJ0CXcSgSo6HFItemC_So012UINavigationJ0CSgyycSgtFZ_0(v4, 0, sub_20CFAE608, v3);

  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = *&v0[v1];
      if (swift_dynamicCastObjCProtocolConditional())
      {
        v9 = v8;
        [v7 setRequiresPresentingViewControllerDismissal_];
        [v7 setPresentationDelegate_];
        [v7 setShouldDisableAdditionalDismissalForTogglingSeparatingTiles_];
        v10 = [v7 tableView];
        if (!v10)
        {
          __break(1u);
          return;
        }

        v11 = v10;
        [v10 setBounces_];

        v12 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
        [v0 presentViewController:v12 animated:1 completion:0];

        v5 = v12;
      }
    }

    else
    {
      [v0 presentViewController:v5 animated:1 completion:0];
    }
  }
}

void sub_20CFAC1DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_20CFAC240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = sub_20D567C18();
  v4[5] = sub_20D567C08();
  v6 = sub_20D567BA8();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_20CFAC2DC, v6, v5);
}

uint64_t sub_20CFAC2DC()
{
  v1 = v0[3];
  v2 = sub_20D567C08();
  v0[8] = v2;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_20CFAC3E8;
  v5 = v0[2];
  v6 = MEMORY[0x277D85700];
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, v2, v6, 0xD00000000000001FLL, 0x800000020D5D1F70, sub_20CFAE5E8, v3, v7);
}

uint64_t sub_20CFAC3E8()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_20CF2725C, v3, v2);
}

void sub_20CFAC548(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E270);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_20CF27D44;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CF48BDC;
  aBlock[3] = &block_descriptor_13;
  v10 = _Block_copy(aBlock);

  v11 = [a2 addCompletionBlock_];
  _Block_release(v10);
}

id sub_20CFAC708(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = a1;
  v6 = [v5 hu:1 dismissViewControllerAnimated:?];
  v7 = sub_20D567C58();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_20D567C18();
  v8 = v6;
  v9 = sub_20D567C08();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  sub_20CF18960(0, 0, v4, &unk_20D5C0EF8, v10);
  sub_20D5653A8();

  return v8;
}

id sub_20CFAC8A0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_20CFAC8F0()
{
  v0 = swift_unknownObjectRetain();

  return v0;
}

uint64_t sub_20CFAC924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + qword_27C81E250) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_20CFAC96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_20D564FB8();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  sub_20D565038();
  v4[21] = swift_task_alloc();
  sub_20D564F98();
  v4[22] = swift_task_alloc();
  v6 = sub_20D564FA8();
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  v7 = sub_20D564F48();
  v4[26] = v7;
  v4[27] = *(v7 - 8);
  v4[28] = swift_task_alloc();
  v8 = sub_20D565068();
  v4[29] = v8;
  v4[30] = *(v8 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F6D0);
  v4[33] = swift_task_alloc();
  v9 = sub_20D563E88();
  v4[34] = v9;
  v4[35] = *(v9 - 8);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  sub_20D567C18();
  v4[39] = sub_20D567C08();
  v11 = sub_20D567BA8();
  v4[40] = v11;
  v4[41] = v10;

  return MEMORY[0x2822009F8](sub_20CFACC88, v11, v10);
}

void sub_20CFACC88()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = qword_27C81E250;
  v0[42] = qword_27C81E250;
  *(v1 + v3) = 0;
  v4 = [v2 accessoryRepresentableObject];
  swift_getObjectType();
  v5 = sub_20D5681A8();
  v0[43] = v5;
  swift_unknownObjectRelease();
  v6 = [v5 home];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [objc_opt_self() sharedDispatcher];
    v7 = [v8 home];

    if (!v7)
    {
      __break(1u);
      return;
    }
  }

  v0[44] = v7;
  v0[12] = &unk_28251AC90;
  v0[13] = &unk_28251B0C8;
  v9 = swift_dynamicCastObjCProtocolConditional();
  v10 = v0[17];
  v11 = v0[14];
  if (v9)
  {
    v12 = v9;
    v13 = v11;
    v14 = [v7 hf_characteristicValueManager];
    v15 = [v12 copyWithValueSource_];

    *(v10 + qword_27C81E248) = v15;
  }

  else
  {
    *(v10 + qword_27C81E248) = v11;
    v16 = v11;
  }

  type metadata accessor for DataModelAccessoryControlViewController(0);
  v17 = swift_task_alloc();
  v0[45] = v17;
  *v17 = v0;
  v17[1] = sub_20CFACE7C;
  v18 = v0[33];
  v19 = v0[14];

  static DataModelAccessoryControlViewController.findDataModelObjectIdentifier(with:)(v18, v19);
}

uint64_t sub_20CFACE7C()
{
  v1 = *v0;

  v2 = *(v1 + 328);
  v3 = *(v1 + 320);

  return MEMORY[0x2822009F8](sub_20CFACF9C, v3, v2);
}

uint64_t sub_20CFACF9C()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 264);
    v5 = *(v0 + 136);
    v6 = *(v0 + 112);

    swift_unknownObjectRelease();

    sub_20CEF928C(v4, &qword_27C81F6D0);
    swift_unknownObjectRelease();
    type metadata accessor for ActionSetAccessoryControlViewController(0);
    swift_deallocPartialClassInstance();
    v32 = 0;
  }

  else
  {
    v31 = *(v0 + 352);
    v7 = *(v0 + 296);
    v8 = *(v0 + 304);
    v9 = *(v0 + 272);
    v24 = *(v0 + 256);
    v25 = *(v0 + 288);
    v26 = *(v0 + 248);
    v27 = *(v0 + 240);
    v28 = *(v0 + 232);
    v10 = *(v0 + 216);
    v17 = *(v0 + 224);
    v18 = *(v0 + 208);
    v11 = *(v0 + 192);
    v19 = *(v0 + 200);
    v20 = *(v0 + 184);
    v12 = *(v0 + 152);
    v21 = *(v0 + 160);
    v22 = *(v0 + 144);
    v23 = *(v0 + 136);
    v29 = *(v0 + 112);
    v30 = *(v0 + 280);
    (*(v30 + 32))(v8, *(v0 + 264), v9);
    v13 = *(v30 + 16);
    v13(v7, v8, v9);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    (*(v10 + 104))(v17, *MEMORY[0x277D14E68], v18);
    (*(v11 + 104))(v19, *MEMORY[0x277D14E88], v20);
    sub_20D564F58();
    sub_20D565028();
    (*(v12 + 104))(v21, *MEMORY[0x277D14EA8], v22);
    sub_20D564FC8();
    *(v23 + *((*MEMORY[0x277D85000] & *v23) + class metadata base offset for HomeUIAccessoryControlViewController + 16)) = 0;
    v13(v25, v7, v9);
    sub_20CFADD68(v0 + 16, v0 + 56);
    (*(v27 + 16))(v26, v24, v28);
    v32 = sub_20D5653E8();

    swift_unknownObjectRelease();
    (*(v27 + 8))(v24, v28);
    sub_20CEF928C(v0 + 16, &qword_27C81E170);
    v14 = *(v30 + 8);
    v14(v7, v9);
    v14(v8, v9);
  }

  v15 = *(v0 + 8);

  return v15(v32);
}

void sub_20CFAD3EC(uint64_t a1)
{
  *(a1 + qword_27C81E250) = 0;
  sub_20D568A58();
  __break(1u);
}

id sub_20CFAD454(void *a1)
{
  v1 = a1;
  v2 = sub_20D565338();
  if (v2)
  {
    v3 = v2;
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4)
    {
      v5 = [v4 hu_preloadContent];

      goto LABEL_6;
    }
  }

  v5 = [objc_opt_self() futureWithNoResult];
LABEL_6:

  return v5;
}

uint64_t sub_20CFAD540()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_20CFAD598(uint64_t a1)
{

  return swift_unknownObjectRelease();
}

id sub_20CFAD5E4()
{
  v1 = qword_27C81E248;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_20CFAD658(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v9 = *a4;
  swift_beginAccess();
  v10 = *(v5 + v9);
  *(v5 + v9) = a1;
  v11 = a1;

  v12 = *(a3 + 32);
  v13 = a5(0);
  v12(v13, a3);

  type metadata accessor for ItemCollectionViewControlsTransitionHelper();
  v14 = swift_dynamicCastClassUnconditional();
  v15 = *(v5 + v9);
  v16 = qword_27C81D6C8;
  swift_beginAccess();
  v17 = *(v14 + v16);
  *(v14 + v16) = v15;
  v18 = v15;
}

void (*sub_20CFAD758(void *a1, uint64_t a2, uint64_t a3))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  *a1 = v6;
  v6[3] = v3;
  v6[4] = a3;
  v6[5] = qword_27C81E248;
  swift_beginAccess();
  return sub_20CFAD7E8;
}

void sub_20CFAD800(void **a1, char a2, uint64_t (*a3)(void))
{
  v5 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v6 = v5[4];
    v7 = v5[5];
    v8 = v5[3];
    v9 = *(v6 + 32);
    v10 = a3(0);
    v9(v10, v6);
    type metadata accessor for ItemCollectionViewControlsTransitionHelper();
    v11 = swift_dynamicCastClassUnconditional();
    v12 = *(v8 + v7);
    v13 = qword_27C81D6C8;
    swift_beginAccess();
    v14 = *(v11 + v13);
    *(v11 + v13) = v12;
    v15 = v12;
  }

  free(v5);
}

void (*sub_20CFAD8F0(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_20D565378();
  return sub_20CFAD960;
}

void (*sub_20CFAD964(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_20D5653F8();
  return sub_20CFAE63C;
}

void (*sub_20CFAD9D4(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_20D5653B8();
  return sub_20CFAE63C;
}

void sub_20CFADA44()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isActive];

  if (v2)
  {
    v3 = *((*MEMORY[0x277D85000] & *v0) + class metadata base offset for HomeUIAccessoryControlViewController + 56);

    v3();
  }
}

uint64_t sub_20CFADB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a3;
  v9 = *MEMORY[0x277D85000] & *v5;
  v10 = sub_20D565068();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v14 = v9 + class metadata base offset for HomeUIAccessoryControlViewController;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  *(v5 + *(v14 + 16)) = 0;
  (*(v17 + 16))(&v21[-v16 - 8], a2);
  sub_20CFADD68(a4, v21);
  (*(v11 + 16))(v13, a5, v10);
  v18 = sub_20D5653E8();
  (*(v11 + 8))(a5, v10);
  sub_20CEF928C(a4, &qword_27C81E170);
  return v18;
}

uint64_t sub_20CFADD68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20CFADDD8()
{
  result = qword_27C81E190[0];
  if (!qword_27C81E190[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81E188);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C81E190);
  }

  return result;
}

unint64_t sub_20CFADE3C()
{
  result = qword_27C81AEC0;
  if (!qword_27C81AEC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C81AEC0);
  }

  return result;
}

uint64_t sub_20CFADE88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20CFAE534(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CEF5FFC;

  return sub_20CFAC240(a1, v4, v5, v6);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20CFAE618(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t type metadata accessor for HomeEnergyEducationalPanelViewController()
{
  result = qword_27C81E280;
  if (!qword_27C81E280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CFAE854(char a1)
{
  v2 = v1;
  v4 = sub_20D5637A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v30 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = type metadata accessor for HomeEnergyEducationalPanelViewController();
  v31.receiver = v2;
  v31.super_class = v16;
  objc_msgSendSuper2(&v31, sel_viewDidDisappear_, a1 & 1);
  v17 = OBJC_IVAR___HUHomeEnergyEducationalPanelViewController_modelInformationSheetStartTime;
  swift_beginAccess();
  sub_20CFAF30C(v2 + v17, v15);
  v18 = *(v5 + 48);
  v19 = v18(v15, 1, v4);
  sub_20CFAF37C(v15);
  if (v19 != 1)
  {
    sub_20D563798();
    sub_20CFAF30C(v2 + v17, v13);
    if (v18(v13, 1, v4) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_20D563708();
      v21 = v20;
      v22 = *(v5 + 8);
      v22(v7, v4);
      v22(v13, v4);
      v23 = sub_20D567E98();
      if (qword_28111FAC0 != -1)
      {
        swift_once();
      }

      v24 = qword_281120C00;
      if (os_log_type_enabled(qword_281120C00, v23))
      {
        v25 = swift_slowAlloc();
        *v25 = 134217984;
        *(v25 + 4) = v21;
        _os_log_impl(&dword_20CEB6000, v24, v23, "Model Information Sheet view duration is %f", v25, 0xCu);
        MEMORY[0x20F31FC70](v25, -1, -1);
      }

      v26 = v30;
      (*(v5 + 56))(v30, 1, 1, v4);
      swift_beginAccess();
      sub_20CFAF29C(v26, v2 + v17);
      swift_endAccess();
      if (v21 > 1.0)
      {
        v27 = objc_opt_self();
        v28 = sub_20D563958();
        [v27 saveViewDurationEvent:50 withDuration:v28];
      }
    }
  }
}

void sub_20CFAEC2C()
{
  v1 = v0;
  v2 = sub_20D563AC8();
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D563AB8();
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E290));
  v4 = sub_20D566C08();
  [v0 addChildViewController_];
  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = v5;
  v7 = [v4 view];
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v7;
  [v6 addSubview_];

  v9 = [v4 view];
  if (!v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v9 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_20D5BC4C0;
  v11 = [v4 view];

  if (!v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = [v11 topAnchor];

  v13 = [v1 view];
  if (!v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13;
  v15 = [v13 topAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  *(v10 + 32) = v16;
  v17 = [v4 view];

  if (!v17)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = [v17 bottomAnchor];

  v19 = [v1 view];
  if (!v19)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v20 = v19;
  v21 = [v19 bottomAnchor];

  v22 = [v18 constraintEqualToAnchor_];
  *(v10 + 40) = v22;
  v23 = [v4 view];

  if (!v23)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v24 = [v23 leadingAnchor];

  v25 = [v1 view];
  if (!v25)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v26 = v25;
  v27 = [v25 leadingAnchor];

  v28 = [v24 constraintEqualToAnchor_];
  *(v10 + 48) = v28;
  v29 = [v4 view];

  if (!v29)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v30 = [v29 trailingAnchor];

  v31 = [v1 view];
  if (v31)
  {
    v32 = v31;
    v33 = objc_opt_self();
    v34 = [v32 trailingAnchor];

    v35 = [v30 constraintEqualToAnchor_];
    *(v10 + 56) = v35;
    sub_20CF0AC18();
    v36 = sub_20D567A58();

    [v33 activateConstraints_];

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_20CFAF0B8()
{
  v1 = [v0 navigationItem];
  v2 = sub_20D5677F8();
  v3 = HULocalizedString(v2);

  if (!v3)
  {
    sub_20D567838();
    v3 = sub_20D5677F8();
  }

  [v1 setTitle_];

  v4 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:v0 action:sel_dismissDoneButton];
  v5 = sub_20D5677F8();
  [v4 setAccessibilityIdentifier_];

  v6 = [v0 navigationItem];
  [v6 setRightBarButtonItem_];

  v7 = [v0 navigationItem];
  v8 = [v7 navigationBar];

  if (v8)
  {
    v9 = sub_20D5677F8();
    [v8 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20CFAF29C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CFAF30C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CFAF37C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id HomeEnergyEducationalPanelViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20D5677F8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id HomeEnergyEducationalPanelViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR___HUHomeEnergyEducationalPanelViewController_modelInformationSheetStartTime;
  v7 = sub_20D5637A8();
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  if (a2)
  {
    v8 = sub_20D5677F8();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for HomeEnergyEducationalPanelViewController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v8, a3);

  return v9;
}

id HomeEnergyEducationalPanelViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HomeEnergyEducationalPanelViewController.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR___HUHomeEnergyEducationalPanelViewController_modelInformationSheetStartTime;
  v4 = sub_20D5637A8();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for HomeEnergyEducationalPanelViewController();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id HomeEnergyEducationalPanelViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeEnergyEducationalPanelViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20CFAF898()
{
  sub_20CEF7EF8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20CFAF97C(uint64_t a1, unint64_t *a2)
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_20D568708();
    v7 = v6;
    v8 = sub_20D5687B8();
    v10 = v9;
    v11 = MEMORY[0x20F31DBE0](v5, v7, v8, v9);
    sub_20CFAE618(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_20CFAE618(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v5 = sub_20D5686C8();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_20CFB1628(v5, v7, v4 != 0, a1, a2);
  v14 = v13;
  sub_20CFAE618(v5, v7, v4 != 0);
  return v14;
}

uint64_t sub_20CFAFAB0(uint64_t a1)
{
  v2 = sub_20D5686C8();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_20CFB1854(v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_20CFAFB2C(uint64_t a1)
{
  v2 = sub_20D5686C8();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_20CFB18A4(v2, *(a1 + 36), 0, a1);
  v6 = v5;
  return v4;
}

uint64_t sub_20CFAFBAC(uint64_t a1)
{
  v2 = sub_20D5686C8();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_20CFB18F8(v2, *(a1 + 36), 0, a1);
  return sub_20D5663C8();
}

uint64_t sub_20CFAFC2C(unint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_20D5688F8();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20D568768())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x20F31DD20](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (!swift_dynamicCastObjCProtocolConditional())
      {

        return 0;
      }

      sub_20D5688C8();
      sub_20D568908();
      sub_20D568918();
      sub_20D5688D8();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_20D568768();
    sub_20D5688F8();
  }

  return v8;
}

uint64_t sub_20CFAFD98(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_20D5688F8();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_20CED43FC(i, v5);
    sub_20CECF940(0, &unk_27C81E340);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_20D5688C8();
    sub_20D568908();
    sub_20D568918();
    sub_20D5688D8();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_20CFAFEA4(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_20D5688F8();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_20CFB2168(i, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81BF00);
    sub_20CECF940(0, &qword_281120AC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_20D5688C8();
    sub_20D568908();
    sub_20D568918();
    sub_20D5688D8();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

id DashboardSectionListViewController.__allocating_init(context:)(char *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  *&v4[OBJC_IVAR___HUDashboardSectionListViewController____lazy_storage___layoutManager] = 0;
  *&v4[OBJC_IVAR___HUDashboardSectionListViewController__sortedIdentifiers] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR___HUDashboardSectionListViewController_dashboardContext] = a1;
  v5 = *&a1[OBJC_IVAR___HUDashboardContext_room];
  objc_allocWithZone(type metadata accessor for DashboardSectionListItemManager());
  v6 = v5;
  v7 = a1;
  v8 = DashboardSectionListItemManager.init(delegate:room:)(0, v5);
  v12.receiver = v4;
  v12.super_class = v2;
  v9 = objc_msgSendSuper2(&v12, sel_initUsingCompositionalLayoutWithItemManager_, v8);

  v10 = &v8[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_sectionListManagerDelegate];
  swift_beginAccess();
  *(v10 + 1) = &protocol witness table for DashboardSectionListViewController;
  swift_unknownObjectWeakAssign();

  return v9;
}

id sub_20CFB00E8()
{
  v1 = OBJC_IVAR___HUDashboardSectionListViewController____lazy_storage___layoutManager;
  v2 = *(v0 + OBJC_IVAR___HUDashboardSectionListViewController____lazy_storage___layoutManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HUDashboardSectionListViewController____lazy_storage___layoutManager);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for CollectionLayoutManager()) init];
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id DashboardSectionListViewController.init(context:)(char *a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR___HUDashboardSectionListViewController____lazy_storage___layoutManager] = 0;
  *&v2[OBJC_IVAR___HUDashboardSectionListViewController__sortedIdentifiers] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR___HUDashboardSectionListViewController_dashboardContext] = a1;
  v4 = *&a1[OBJC_IVAR___HUDashboardContext_room];
  objc_allocWithZone(type metadata accessor for DashboardSectionListItemManager());
  v5 = v4;
  v6 = a1;
  v7 = DashboardSectionListItemManager.init(delegate:room:)(0, v4);
  v11.receiver = v2;
  v11.super_class = type metadata accessor for DashboardSectionListViewController();
  v8 = objc_msgSendSuper2(&v11, sel_initUsingCompositionalLayoutWithItemManager_, v7);

  v9 = &v7[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_sectionListManagerDelegate];
  swift_beginAccess();
  *(v9 + 1) = &protocol witness table for DashboardSectionListViewController;
  swift_unknownObjectWeakAssign();

  return v8;
}

void sub_20CFB02F0()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for DashboardSectionListViewController();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  [v0 setInstallsStandardGestureForInteractiveMovement_];
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 setEditing_];

    v3 = [v0 navigationItem];
    v4 = objc_allocWithZone(MEMORY[0x277D751E0]);
    v5 = v0;
    v6 = [v4 initWithBarButtonSystemItem:1 target:v5 action:sel__cancel];
    [v3 setLeftBarButtonItem_];

    v7 = [v5 navigationItem];
    v8 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v5 action:sel__done];

    [v7 setRightBarButtonItem_];
    sub_20CFB04B4();
  }

  else
  {
    __break(1u);
  }
}

void sub_20CFB04B4()
{
  v1 = v0;
  v2 = [v0 itemManager];
  type metadata accessor for DashboardSectionListItemManager();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *&v0[OBJC_IVAR___HUDashboardSectionListViewController__sortedIdentifiers];
    v5 = OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_reorderableSectionList;
    v6 = v3;
    swift_beginAccess();
    v7 = *(v6 + v5);
    sub_20D5663C8();
    if (v7)
    {
      v8 = v7;
      v9 = sub_20D565AF8();
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v11 = sub_20D09BC74(v4, v9);

    v12 = [v1 navigationItem];
    v13 = [v12 rightBarButtonItem];

    [v13 setEnabled_];
  }

  else
  {

    v10 = [v0 navigationItem];
    v14 = [v10 rightBarButtonItem];

    if (v14)
    {
      [v14 setEnabled_];
    }
  }
}

void sub_20CFB0688()
{
  [v0 dismissViewControllerAnimated:1 completion:0];
  v18 = [v0 itemManager];
  type metadata accessor for DashboardSectionListItemManager();
  v1 = swift_dynamicCastClass();
  if (!v1)
  {

    goto LABEL_8;
  }

  v2 = OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_reorderableSectionList;
  v3 = v1;
  swift_beginAccess();
  v4 = *(v3 + v2);
  if (!v4)
  {
LABEL_8:

    return;
  }

  v5 = v4;
  v6 = sub_20D565B08();
  if (v6 > 0)
  {
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E320);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20D5BC410;
    *(inited + 32) = sub_20D567838();
    *(inited + 72) = MEMORY[0x277D83B88];
    *(inited + 40) = v9;
    *(inited + 48) = v7;
    sub_20CEF3B60(inited);
    swift_setDeallocating();
    sub_20CFB2100(inited + 32);
    v10 = sub_20D567838();
    v12 = v11;
    v13 = sub_20D567838();
    v21 = MEMORY[0x277D837D0];
    *&v20 = v13;
    *(&v20 + 1) = v14;
    sub_20CEC80B0(&v20, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20CEEF74C(v19, v10, v12, isUniquelyReferenced_nonNull_native);

    v16 = objc_opt_self();
    v17 = sub_20D567738();

    [v16 sendEvent:39 withData:v17];
  }
}

id sub_20CFB0918()
{
  v1 = [v0 itemManager];
  type metadata accessor for DashboardSectionListItemManager();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_reorderableSectionList;
    swift_beginAccess();
    v5 = *(v3 + v4);
    if (v5)
    {
      v6 = v5;
      v7 = [v6 saveWithSender_];
    }
  }

  return [v0 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_20CFB0A34(uint64_t a1, void *a2)
{
  v5 = [v2 itemManager];
  v6 = [v5 displayedSectionIdentifierForSectionIndex_];

  if (v6)
  {
    v7 = sub_20D567838();
    v9 = v8;

    v10 = sub_20CFB00E8();
    v15 = 0uLL;
    v16 = 2;
    sub_20CEFA3C8(v7, v9, &v15, a2);
    v12 = v11;
  }

  else
  {
    v10 = sub_20CFB00E8();
    v15 = xmmword_20D5C0F70;
    v16 = 2;
    sub_20CEFA3C8(0, 0xE000000000000000, &v15, a2);
    v12 = v13;
  }

  return v12;
}

void sub_20CFB0FA4(uint64_t a1)
{
  v10 = [v1 itemManager];
  type metadata accessor for DashboardSectionListItemManager();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {

    goto LABEL_11;
  }

  v4 = OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_reorderableSectionList;
  v5 = v3;
  swift_beginAccess();
  v6 = *(v5 + v4);
  if (!v6)
  {
LABEL_11:

    return;
  }

  v7 = v6;
  v8 = sub_20CFAFBAC(a1);
  if (!v8 || (v9 = sub_20CFAFC2C(v8), , !v9))
  {
  }

  sub_20D565AE8();

  sub_20CFB04B4();
}

void sub_20CFB1160(void *a1)
{
  if ([*(*&v1[OBJC_IVAR___HUDashboardSectionListViewController_dashboardContext] + OBJC_IVAR___HUDashboardContext_home) isEqual_])
  {
    v11 = [v1 itemManager];
    type metadata accessor for DashboardSectionListItemManager();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = [a1 hf_reorderableDashboardSectionList];
      v6 = OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_reorderableSectionList;
      swift_beginAccess();
      v7 = *&v4[v6];
      *&v4[v6] = v5;

      [v4 recalculateVisibilityAndSortAllItems];
      v8 = *&v4[v6];
      if (v8)
      {
        v9 = v8;
        v10 = sub_20D565AF8();
      }

      else
      {
        v10 = MEMORY[0x277D84F90];
      }

      *&v1[OBJC_IVAR___HUDashboardSectionListViewController__sortedIdentifiers] = v10;

      sub_20CFB04B4();
    }

    else
    {
    }
  }
}

void sub_20CFB13B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_20D565AF8();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  *(v2 + OBJC_IVAR___HUDashboardSectionListViewController__sortedIdentifiers) = v3;

  sub_20CFB04B4();
}

id DashboardSectionListViewController.__allocating_init(itemManager:collectionViewLayout:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithItemManager:a1 collectionViewLayout:a2];

  return v5;
}

id DashboardSectionListViewController.__allocating_init(usingCompositionalLayoutWith:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initUsingCompositionalLayoutWithItemManager_];

  return v3;
}

id DashboardSectionListViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DashboardSectionListViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20CFB1628(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5)
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x20F31DC30](a1, a2, v9);
      sub_20CECF940(0, a5);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_20CECF940(0, a5);
    if (sub_20D568748() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_20D568758();
    swift_dynamicCast();
    v5 = v17;
    v10 = sub_20D5683E8();
    v11 = -1 << *(a4 + 32);
    v8 = v10 & ~v11;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(a4 + 48) + 8 * v8);
        v14 = sub_20D5683F8();

        if (v14)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v12;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}

uint64_t sub_20CFB1854(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_20CFB18A4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_20CFB18F8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_20CFB1948(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E350);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v29 - v4;
  v35 = sub_20D565FF8();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v32 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20D565FD8();
  v6 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D566258();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D566228();
  v13 = [a2 latestResults];
  if (v13)
  {
    v14 = v13;
    v15 = sub_20D567758();

    v16 = sub_20D567838();
    if (*(v15 + 16))
    {
      v18 = v12;
      v19 = v10;
      v20 = v9;
      v21 = sub_20CEED668(v16, v17);
      v23 = v22;

      if (v23)
      {
        sub_20CED43FC(*(v15 + 56) + 32 * v21, v36);

        swift_dynamicCast();
      }

      else
      {
      }

      v9 = v20;
      v10 = v19;
      v12 = v18;
    }

    else
    {
    }
  }

  v30 = v9;
  sub_20D566248();
  v36[3] = v9;
  v36[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  (*(v10 + 16))(boxed_opaque_existential_1, v12, v9);
  MEMORY[0x20F31D5C0](v36);
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81F650);
  sub_20D566058();
  *(swift_allocObject() + 16) = xmmword_20D5BC410;
  v25 = v31;
  (*(v6 + 104))(v8, *MEMORY[0x277D74A88], v31);
  v26 = sub_20D566008();
  (*(*(v26 - 8) + 56))(v34, 1, 1, v26);
  v27 = v32;
  sub_20D565FE8();
  sub_20D566038();
  (*(v33 + 8))(v27, v35);
  (*(v6 + 8))(v8, v25);
  sub_20D568268();
  return (*(v10 + 8))(v12, v30);
}

void sub_20CFB1E64(void *a1)
{
  v3 = *(*&v1[OBJC_IVAR___HUDashboardSectionListViewController_dashboardContext] + OBJC_IVAR___HUDashboardContext_room);
  if (v3 && [v3 isEqual_])
  {
    v12 = [v1 itemManager];
    type metadata accessor for DashboardSectionListItemManager();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      v6 = [a1 hf_reorderableDashboardSectionList];
      v7 = OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_reorderableSectionList;
      swift_beginAccess();
      v8 = *&v5[v7];
      *&v5[v7] = v6;

      [v5 recalculateVisibilityAndSortAllItems];
      v9 = *&v5[v7];
      if (v9)
      {
        v10 = v9;
        v11 = sub_20D565AF8();
      }

      else
      {
        v11 = MEMORY[0x277D84F90];
      }

      *&v1[OBJC_IVAR___HUDashboardSectionListViewController__sortedIdentifiers] = v11;

      sub_20CFB04B4();
    }

    else
    {
    }
  }
}

uint64_t sub_20CFB2100(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BE70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CFB2168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81BF00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CFB22E4(uint64_t a1)
{
  v3 = OBJC_IVAR___HUUtilityOnboardingIntroViewController_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20CFB233C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUUtilityOnboardingIntroViewController_delegate;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id UtilityOnboardingIntroViewController.init(context:)(void *a1)
{
  *&v1[OBJC_IVAR___HUUtilityOnboardingIntroViewController_delegate] = 0;
  *&v1[OBJC_IVAR___HUUtilityOnboardingIntroViewController_continueButton] = 0;
  *&v1[OBJC_IVAR___HUUtilityOnboardingIntroViewController_cancelButton] = 0;
  *&v1[OBJC_IVAR___HUUtilityOnboardingIntroViewController_onboardingContext] = a1;
  v2 = a1;
  v3 = sub_20D5677F8();
  v4 = HULocalizedString(v3);

  if (!v4)
  {
    sub_20D567838();
    v4 = sub_20D5677F8();
  }

  v5 = sub_20D5677F8();
  v6 = HULocalizedString(v5);

  if (!v6)
  {
    sub_20D567838();
    v6 = sub_20D5677F8();
  }

  v7 = sub_20D5677F8();
  v8 = HUImageNamed(v7);

  v11.receiver = v1;
  v11.super_class = type metadata accessor for UtilityOnboardingIntroViewController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithTitle_detailText_icon_contentLayout_, v4, v6, v8, 2);

  return v9;
}

void sub_20CFB260C()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for UtilityOnboardingIntroViewController();
  objc_msgSendSuper2(&v21, sel_viewDidLoad);
  sub_20CEF3A4C(&unk_2823CE478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E440);
  swift_arrayDestroy();
  v1 = [v0 headerView];
  v2 = [v1 subviews];

  if (!v2)
  {
    sub_20CECF940(0, &qword_28111FB70);
    sub_20D567A78();
    v2 = sub_20D567A58();
  }

  v3 = objc_opt_self();
  v4 = sub_20D567738();

  [v3 setAccessibilityIDForViews:v2 withIDDictionary:v4];

  v5 = [v0 buttonTray];
  v6 = sub_20D567A58();
  [v5 setPrivacyLinkForBundles_];

  v7 = [objc_opt_self() boldButton];
  v8 = *&v0[OBJC_IVAR___HUUtilityOnboardingIntroViewController_continueButton];
  *&v0[OBJC_IVAR___HUUtilityOnboardingIntroViewController_continueButton] = v7;
  v9 = v7;

  if (v9)
  {
    v10 = sub_20D5677F8();
    v11 = HULocalizedString(v10);

    if (!v11)
    {
      sub_20D567838();
      v11 = sub_20D5677F8();
    }

    [v9 setTitle:v11 forState:0];

    [v9 addTarget:v0 action:sel_continueButtonTapped_ forControlEvents:64];
    [v9 setMultipleTouchEnabled_];
    v12 = v9;
    v13 = sub_20D5677F8();
    [v12 setAccessibilityIdentifier_];

    v14 = [v0 buttonTray];
    [v14 addButton_];
  }

  v15 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:v0 action:sel_cancelButtonTapped_];
  v16 = OBJC_IVAR___HUUtilityOnboardingIntroViewController_cancelButton;
  v17 = *&v0[OBJC_IVAR___HUUtilityOnboardingIntroViewController_cancelButton];
  *&v0[OBJC_IVAR___HUUtilityOnboardingIntroViewController_cancelButton] = v15;

  v18 = [v0 navigationItem];
  [v18 setBackButtonDisplayMode_];

  v19 = [v0 navigationItem];
  v20 = *&v0[v16];
  [v19 setRightBarButtonItem_];
}

uint64_t sub_20CFB2A0C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_20D565988();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v9 = qword_27C838280;
  sub_20D565998();
  v10 = sub_20D565968();
  v11 = sub_20D567EC8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_20CEE913C(0xD000000000000018, 0x800000020D5D22D0, &v22);
    _os_log_impl(&dword_20CEB6000, v10, v11, "%s Continue button tapped", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x20F31FC70](v13, -1, -1);
    MEMORY[0x20F31FC70](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v14 = *&v1[OBJC_IVAR___HUUtilityOnboardingIntroViewController_continueButton];
  if (v14)
  {
    [v14 setEnabled_];
  }

  sub_20CFB3768();
  v15 = sub_20D567C58();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_20D567C18();
  v16 = v1;
  v17 = sub_20D567C08();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v16;
  sub_20CF18960(0, 0, v4, &unk_20D5C1038, v18);
}

uint64_t sub_20CFB2D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_20D567C18();
  v4[4] = sub_20D567C08();
  v6 = sub_20D567BA8();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_20CFB2DA8, v6, v5);
}

uint64_t sub_20CFB2DA8()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_20CFB2E44;

  return sub_20CEE58EC();
}

uint64_t sub_20CFB2E44()
{

  return MEMORY[0x2822009F8](sub_20CFB2F40, 0, 0);
}

uint64_t sub_20CFB2F40()
{
  *(v0 + 64) = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CFB2FCC, v2, v1);
}

uint64_t sub_20CFB2FCC()
{
  v1 = v0[2];

  sub_20CFB30D4(v1);
  v2 = v0[5];
  v3 = v0[6];

  return MEMORY[0x2822009F8](sub_20CFB3074, v2, v3);
}

uint64_t sub_20CFB3074()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CFB30D4(uint64_t a1)
{
  v2 = sub_20D564B68();
  v12[3] = v2;
  v12[4] = sub_20CF26DDC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v2 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D07370], v2);
  LOBYTE(v2) = sub_20D563968();
  __swift_destroy_boxed_opaque_existential_1(v12);
  if ((v2 & 1) == 0)
  {
    v10 = OBJC_IVAR___HUUtilityOnboardingIntroViewController_delegate;
    result = swift_beginAccess();
    v7 = *(a1 + v10);
    if (!v7)
    {
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E520);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20D5BC410;
    v9 = inited + 32;
    sub_20D567838();
    swift_unknownObjectRetain();
    sub_20D5687F8();
    *(inited + 96) = MEMORY[0x277D83E88];
    *(inited + 72) = 17;
    goto LABEL_8;
  }

  sub_20CFB3864();
  v4 = *(a1 + OBJC_IVAR___HUUtilityOnboardingIntroViewController_continueButton);
  if (v4)
  {
    [v4 setEnabled_];
  }

  v5 = OBJC_IVAR___HUUtilityOnboardingIntroViewController_delegate;
  result = swift_beginAccess();
  v7 = *(a1 + v5);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E520);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20D5BC410;
    v9 = inited + 32;
    sub_20D567838();
    swift_unknownObjectRetain();
    sub_20D5687F8();
    *(inited + 96) = MEMORY[0x277D83E88];
    *(inited + 72) = 0;
LABEL_8:
    sub_20CEF49C8(inited);
    swift_setDeallocating();
    sub_20CEF928C(v9, &qword_27C81D8D0);
    v11 = sub_20D567738();

    [v7 viewController:a1 didFinishWithConfigurationResults:v11];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20CFB3388()
{
  v1 = sub_20D565988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v5 = qword_27C838280;
  sub_20D565998();
  v6 = v0;
  v7 = sub_20D565968();
  v8 = sub_20D567EC8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    *v9 = 138412546;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2080;
    v12 = v6;
    *(v9 + 14) = sub_20CEE913C(0xD000000000000016, 0x800000020D5D22B0, v20);
    _os_log_impl(&dword_20CEB6000, v7, v8, "%@:%s Cancel button tapped", v9, 0x16u);
    sub_20CEF928C(v10, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x20F31FC70](v11, -1, -1);
    MEMORY[0x20F31FC70](v9, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  v13 = OBJC_IVAR___HUUtilityOnboardingIntroViewController_delegate;
  result = swift_beginAccess();
  v15 = *&v6[v13];
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E520);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20D5BC410;
    v19[0] = sub_20D567838();
    v19[1] = v17;
    swift_unknownObjectRetain();
    sub_20D5687F8();
    *(inited + 96) = MEMORY[0x277D83E88];
    *(inited + 72) = 16;
    sub_20CEF49C8(inited);
    swift_setDeallocating();
    sub_20CEF928C(inited + 32, &qword_27C81D8D0);
    v18 = sub_20D567738();

    [v15 viewController:v6 didFinishWithConfigurationResults:v18];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20CFB36F4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_20D568628();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return __swift_destroy_boxed_opaque_existential_1(&v9);
}

void sub_20CFB3768()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v2 = [v0 navigationItem];
  v3 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
  [v2 setRightBarButtonItem_];

  [v1 startAnimating];
  v4 = [v0 navigationItem];
  [v4 setHidesBackButton_];
}

void sub_20CFB3864()
{
  v1 = [v0 navigationItem];
  v2 = [v1 rightBarButtonItem];

  if (v2)
  {
    v3 = [v2 customView];

    if (v3)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = v4;
        [v4 stopAnimating];
        [v5 setHidesWhenStopped_];
      }
    }
  }

  v6 = [v0 navigationItem];
  [v6 setHidesBackButton_];

  v8 = [v0 navigationItem];
  v7 = *&v0[OBJC_IVAR___HUUtilityOnboardingIntroViewController_cancelButton];
  [v8 setRightBarButtonItem_];
}

id UtilityOnboardingIntroViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_20D5677F8();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_20D5677F8();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_20D5677F8();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id UtilityOnboardingIntroViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_20D5677F8();

  if (a4)
  {
    v12 = sub_20D5677F8();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id UtilityOnboardingIntroViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UtilityOnboardingIntroViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CFB3DE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CEF5FFC;

  return sub_20CFB2D0C(a1, v4, v5, v6);
}

Swift::Void __swiftcall HUCameraController.setupTipsObserver()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v8 - v2;
  if ([v0 tipsObserver])
  {
    sub_20D568628();
    swift_unknownObjectRelease();
    sub_20CEF928C(v8, &qword_27C81BF00);
    sub_20D567EA8();
    if (qword_28111FAE0 != -1)
    {
      swift_once();
    }

    sub_20D565868();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    sub_20CEF928C(v8, &qword_27C81BF00);
    sub_20D567C28();
    v4 = sub_20D567C58();
    (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v5;
    v7 = sub_20CF62F60(0, 0, v3, &unk_20D5C1048, v6);
    sub_20CEF928C(v3, &qword_27C81C610);
    *&v8[0] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D700);
    [v0 setTipsObserver_];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_20CFB4114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D770);
  v4[15] = swift_task_alloc();
  v5 = sub_20D566588();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D778);
  v4[20] = swift_task_alloc();
  v4[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D780);
  v4[22] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D788);
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D790);
  v4[26] = v7;
  v4[27] = *(v7 - 8);
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CFB4354, 0, 0);
}

uint64_t sub_20CFB4354()
{
  if (sub_20D567C98())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    if (qword_281120898 != -1)
    {
      swift_once();
    }

    v3 = v0[24];
    v4 = v0[25];
    v5 = v0[23];
    v6 = *(qword_2811208A0 + OBJC_IVAR___HUTipsManager_Swift_unanalyzedCameraClipTip + 8);
    v0[12] = *(qword_2811208A0 + OBJC_IVAR___HUTipsManager_Swift_unanalyzedCameraClipTip);
    v0[13] = v6;
    sub_20CFB5B44();
    sub_20D5662D8();
    MEMORY[0x20F31DE70](v5);
    sub_20CF156D0(&qword_281120018, &qword_27C81D778);
    sub_20D567CA8();
    sub_20D5689E8();
    (*(v3 + 8))(v4, v5);
    sub_20D5689F8();
    swift_beginAccess();
    swift_beginAccess();

    return MEMORY[0x2822009F8](sub_20CFB45B8, 0, 0);
  }
}

uint64_t sub_20CFB45B8()
{
  v0[29] = sub_20D5689D8();
  sub_20CF156D0(&unk_281120020, &qword_27C81D780);
  v1 = swift_task_alloc();
  v0[30] = v1;
  *v1 = v0;
  v1[1] = sub_20CFB46AC;
  v2 = v0[15];

  return MEMORY[0x282200310](v2, 0, 0);
}

uint64_t sub_20CFB46AC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = sub_20CF62AD4;
  }

  else
  {
    (*(v2 + 232))();
    v3 = sub_20CFB47D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CFB47D4()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20CEF928C(v3, &qword_27C81D770);

    return MEMORY[0x2822009F8](sub_20CF62DA0, 0, 0);
  }

  else
  {
    (*(v2 + 32))(v0[18], v3, v1);
    v4 = sub_20D5689E8();
    v0[31] = v5;
    v9 = (v4 + *v4);
    v6 = swift_task_alloc();
    v0[32] = v6;
    *v6 = v0;
    v6[1] = sub_20CFB4990;
    v7 = v0[18];

    return (v9)(v0 + 36, v7);
  }
}

uint64_t sub_20CFB4990()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);

  (*(v3 + 8))(v2, v4);
  *(v1 + 289) = *(v1 + 288);

  return MEMORY[0x2822009F8](sub_20CFB4B14, 0, 0);
}

uint64_t sub_20CFB4B30()
{
  v1 = *(v0 + 289);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 264) = Strong;
  if (v1)
  {
    if (Strong)
    {
      sub_20D567C18();
      *(v0 + 272) = sub_20D567C08();
      v3 = sub_20D567BA8();
      v5 = v4;
      v6 = sub_20CFB4C44;
LABEL_6:
      v8 = v6;
      v9 = v3;
      v10 = v5;
      goto LABEL_8;
    }
  }

  else if (Strong)
  {
    sub_20D567C18();
    *(v0 + 280) = sub_20D567C08();
    v3 = sub_20D567BA8();
    v5 = v7;
    v6 = sub_20CFB4CC0;
    goto LABEL_6;
  }

  v8 = sub_20CFB45B8;
  v9 = 0;
  v10 = 0;
LABEL_8:

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_20CFB4C44()
{
  v1 = *(v0 + 264);

  [v1 presentTip];

  return MEMORY[0x2822009F8](sub_20CFB45B8, 0, 0);
}

uint64_t sub_20CFB4CC0()
{
  v1 = *(v0 + 264);

  [v1 dismissTip];

  return MEMORY[0x2822009F8](sub_20CFB45B8, 0, 0);
}

uint64_t sub_20CFB4D40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CEF5FFC;

  return sub_20CFB4114(a1, v4, v5, v6);
}

Swift::Void __swiftcall HUCameraController.tearDownTipsObserver()()
{
  if ([v0 tipsObserver])
  {
    sub_20D568628();
    swift_unknownObjectRelease();
    sub_20CEF928C(&v3, &qword_27C81BF00);
    if ([v0 tipsObserver])
    {
      sub_20D568628();
      swift_unknownObjectRelease();
    }

    else
    {
      v1 = 0u;
      v2 = 0u;
    }

    v3 = v1;
    v4 = v2;
    if (*(&v2 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D700);
      if (swift_dynamicCast())
      {
        sub_20D567C88();
      }
    }

    else
    {
      sub_20CEF928C(&v3, &qword_27C81BF00);
    }

    [v0 setTipsObserver_];
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
    sub_20CEF928C(&v3, &qword_27C81BF00);
    sub_20D567EA8();
    if (qword_28111FAE0 != -1)
    {
      swift_once();
    }

    sub_20D565868();
  }
}

Swift::Void __swiftcall HUCameraController.changeUnanalyzedCameraClipTipShouldDisplay(to:)(Swift::Bool to)
{
  if (qword_27C81A220 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D708);
  __swift_project_value_buffer(v2, qword_27C8381A0);
  swift_beginAccess();
  sub_20D5665C8();
  swift_endAccess();
  if (v3 != to)
  {
    swift_beginAccess();
    sub_20D5665D8();
    swift_endAccess();
  }
}

void sub_20CFB5234()
{
  v1 = v0;
  v2 = [v0 tipView];
  if (v2)
  {

    sub_20D567EA8();
    if (qword_28111FAE0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

  v3 = [v0 timeLabel];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v43.origin.x = 0.0;
  v43.origin.y = 0.0;
  v43.size.width = 0.0;
  v43.size.height = 0.0;
  v42.origin.x = v5;
  v42.origin.y = v7;
  v42.size.width = v9;
  v42.size.height = v11;
  if (CGRectEqualToRect(v42, v43))
  {
    sub_20D567EA8();
    if (qword_28111FAE0 == -1)
    {
LABEL_6:

      sub_20D565868();
      return;
    }

LABEL_21:
    swift_once();
    goto LABEL_6;
  }

  if (qword_28111FAE0 != -1)
  {
    swift_once();
  }

  v12 = qword_281120C10;
  v13 = sub_20D567EC8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_20CEB6000, v12, v13, "Presenting UnanalyzedCameraClipTip", v14, 2u);
    MEMORY[0x20F31FC70](v14, -1, -1);
  }

  if (qword_281120898 != -1)
  {
    swift_once();
  }

  sub_20CFB5B44();
  v15 = objc_allocWithZone(sub_20D566388());
  sub_20D5663C8();
  v40 = sub_20D566398();
  [v40 setOverrideUserInterfaceStyle_];
  [v40 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = [v1 playerViewController];
  v17 = [v16 customControlsView];

  [v17 addSubview_];
  v18 = [v1 playerViewController];
  v19 = [v18 view];

  if (!v19)
  {
    __break(1u);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20D5BC4C0;
  v21 = [v40 centerXAnchor];
  v22 = [v1 playerViewController];
  v23 = [v22 view];

  if (!v23)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v24 = [v23 centerXAnchor];

  v25 = [v21 constraintEqualToAnchor_];
  *(v20 + 32) = v25;
  v26 = [v40 bottomAnchor];
  v27 = [v1 timeLabel];
  v28 = [v27 topAnchor];

  v29 = [v26 constraintEqualToAnchor:v28 constant:-10.0];
  *(v20 + 40) = v29;
  v30 = [v40 widthAnchor];
  v31 = [v30 constraintGreaterThanOrEqualToConstant_];

  *(v20 + 48) = v31;
  v32 = [v40 widthAnchor];
  v33 = [v1 playerViewController];
  v34 = [v33 view];

  if (!v34)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v35 = [v34 widthAnchor];

  v36 = [v32 constraintEqualToAnchor:v35 multiplier:0.5];
  LODWORD(v37) = 1148829696;
  v38 = [v36 hu:v37 constraintWithPriority:?];

  *(v20 + 56) = v38;
  sub_20CF0AC18();
  v39 = sub_20D567A58();

  [v19 addConstraints_];

  [v1 setTipView_];
}

void sub_20CFB591C()
{
  v1 = [v0 tipView];
  if (v1)
  {
    v8 = v1;
    if (qword_28111FAE0 != -1)
    {
      swift_once();
    }

    v2 = qword_281120C10;
    v3 = sub_20D567EC8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_20CEB6000, v2, v3, "Dismissing UnanalyzedCameraClipTip", v4, 2u);
      MEMORY[0x20F31FC70](v4, -1, -1);
    }

    [v8 removeFromSuperview];
    [v0 setTipView_];
  }

  else
  {
    if (qword_28111FAE0 != -1)
    {
      swift_once();
    }

    v5 = qword_281120C10;
    v6 = sub_20D567EC8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20CEB6000, v5, v6, "Could not dismiss TipView; no existing view", v7, 2u);

      JUMPOUT(0x20F31FC70);
    }
  }
}

unint64_t sub_20CFB5B44()
{
  result = qword_27C81E528;
  if (!qword_27C81E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E528);
  }

  return result;
}

HomeUI::ControlCenterAnalytics::RecommendationsType_optional __swiftcall ControlCenterAnalytics.RecommendationsType.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

HomeUI::ControlCenterAnalytics::ModuleKind_optional __swiftcall ControlCenterAnalytics.ModuleKind.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

HomeUI::ControlCenterAnalytics::TilePlacement_optional __swiftcall ControlCenterAnalytics.TilePlacement.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

HomeUI::ControlCenterAnalytics::TileSize_optional __swiftcall ControlCenterAnalytics.TileSize.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue > 1)
  {
    if (rawValue == 500)
    {
      *v1 = 3;
      return rawValue;
    }

    if (rawValue == 2)
    {
      *v1 = 2;
      return rawValue;
    }

LABEL_8:
    *v1 = 4;
    return rawValue;
  }

  if (!rawValue)
  {
    *v1 = 0;
    return rawValue;
  }

  if (rawValue != 1)
  {
    goto LABEL_8;
  }

  *v1 = 1;
  return rawValue;
}

uint64_t sub_20CFB5F50()
{
  v1 = *v0;
  sub_20D568D48();
  MEMORY[0x20F31E200](qword_20D5C24A8[v1]);
  return sub_20D568D98();
}

uint64_t sub_20CFB5FD8()
{
  v1 = *v0;
  sub_20D568D48();
  MEMORY[0x20F31E200](qword_20D5C24A8[v1]);
  return sub_20D568D98();
}

uint64_t ControlCenterAnalytics.TileModuleExistsEvent.customizedAccessoryRatio.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

unint64_t sub_20CFB63BC(char a1)
{
  result = 0x72756769666E6F63;
  switch(a1)
  {
    case 1:
      result = 0x694B656C75646F6DLL;
      break;
    case 2:
      result = 0x6953656C75646F6DLL;
      break;
    case 3:
      result = 0x43746E656D656C65;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
    case 8:
    case 9:
    case 11:
    case 12:
      result = 0x736E6961746E6F63;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD000000000000019;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_20CFB6568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20CFBC1A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20CFB659C(uint64_t a1)
{
  v2 = sub_20CFB9F74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20CFB65D8(uint64_t a1)
{
  v2 = sub_20CFB9F74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ControlCenterAnalytics.TileModuleExistsEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E530);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - v5;
  v7 = *v1;
  v25 = v1[1];
  v8 = *(v1 + 1);
  v21 = *(v1 + 2);
  v22 = v8;
  LODWORD(v8) = v1[24];
  v18 = *(v1 + 4);
  v19 = v1[40];
  v20 = v8;
  LODWORD(v8) = v1[41];
  v17[6] = v1[42];
  v17[7] = v8;
  LODWORD(v8) = v1[43];
  v17[4] = v1[44];
  v17[5] = v8;
  LODWORD(v8) = v1[45];
  v17[2] = v1[46];
  v17[3] = v8;
  v9 = v1[48];
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_20CFB9F74();
  sub_20D568DD8();
  LOBYTE(v24) = v7;
  v26 = 0;
  sub_20CFB9FC8();
  v14 = v23;
  sub_20D568B88();
  if (!v14)
  {
    v16 = v22;
    LODWORD(v23) = v9;
    LOBYTE(v24) = v25;
    v26 = 1;
    sub_20CFBA01C();
    sub_20D568B88();
    v24 = v16;
    v26 = 2;
    type metadata accessor for CCUIGridSizeClass(0);
    sub_20CFBA18C(&qword_27C81E550, type metadata accessor for CCUIGridSizeClass);
    sub_20D568B88();
    LOBYTE(v24) = 3;
    sub_20D568B78();
    LOBYTE(v24) = v20;
    v26 = 4;
    sub_20CFBA070();
    sub_20D568B38();
    LOBYTE(v24) = 5;
    sub_20D568B28();
    LOBYTE(v24) = 6;
    sub_20D568B58();
    LOBYTE(v24) = 7;
    sub_20D568B58();
    LOBYTE(v24) = 8;
    sub_20D568B58();
    LOBYTE(v24) = 9;
    sub_20D568B58();
    LOBYTE(v24) = 10;
    sub_20D568B58();
    LOBYTE(v24) = 11;
    sub_20D568B58();
    LOBYTE(v24) = 12;
    sub_20D568B58();
    LOBYTE(v24) = 13;
    sub_20D568B58();
  }

  return (*(v4 + 8))(v6, v13);
}

uint64_t sub_20CFB6B88()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x664F7265626D756ELL;
  }
}

uint64_t sub_20CFB6BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20CFBC68C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20CFB6C24(uint64_t a1)
{
  v2 = sub_20CFBA0C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20CFB6C60(uint64_t a1)
{
  v2 = sub_20CFBA0C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ControlCenterAnalytics.TileModuleCountEvent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E560);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  v9 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20CFBA0C4();
  sub_20D568DD8();
  v12 = 0;
  sub_20D568B78();
  if (!v2)
  {
    v11 = 1;
    sub_20D568B78();
    v10 = 2;
    sub_20D568B68();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ControlCenterAnalytics.TileModuleTileInteractionEvent.item.getter()
{
  v1 = *v0;
  sub_20D5663C8();
  return v1;
}

uint64_t ControlCenterAnalytics.TileModuleTileInteractionEvent.item.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ControlCenterAnalytics.TileModuleTileInteractionEvent.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent(0) + 20);
  v4 = sub_20D563E18();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ControlCenterAnalytics.TileModuleTileInteractionEvent.type.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent(0) + 20);
  v4 = sub_20D563E18();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ControlCenterAnalytics.TileModuleTileInteractionEvent.primaryState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent(0) + 24);
  v4 = sub_20D563E48();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ControlCenterAnalytics.TileModuleTileInteractionEvent.primaryState.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent(0) + 24);
  v4 = sub_20D563E48();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ControlCenterAnalytics.TileModuleTileInteractionEvent.interactionType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent(0) + 28);
  v4 = sub_20D564708();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ControlCenterAnalytics.TileModuleTileInteractionEvent.interactionType.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent(0) + 28);
  v4 = sub_20D564708();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ControlCenterAnalytics.TileModuleTileInteractionEvent.isActionSetItem.setter(char a1)
{
  result = type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t ControlCenterAnalytics.TileModuleTileInteractionEvent.isAccessoryLikeItem.setter(char a1)
{
  result = type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ControlCenterAnalytics.TileModuleTileInteractionEvent.moduleConfiguration.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t ControlCenterAnalytics.TileModuleTileInteractionEvent.moduleConfiguration.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t ControlCenterAnalytics.TileModuleTileInteractionEvent.moduleKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t ControlCenterAnalytics.TileModuleTileInteractionEvent.moduleKind.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent(0);
  *(v1 + *(result + 48)) = v2;
  return result;
}

uint64_t ControlCenterAnalytics.TileModuleTileInteractionEvent.moduleSizeClass.setter(uint64_t a1)
{
  result = type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t ControlCenterAnalytics.TileModuleTileInteractionEvent.tileSize.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t ControlCenterAnalytics.TileModuleTileInteractionEvent.tileSize.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent(0);
  *(v1 + *(result + 56)) = v2;
  return result;
}

uint64_t ControlCenterAnalytics.TileModuleTileInteractionEvent.isShownInPredictionUI.setter(char a1)
{
  result = type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t ControlCenterAnalytics.TileModuleTileInteractionEvent.homeTotalTileCount.setter(uint64_t a1)
{
  result = type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t ControlCenterAnalytics.TileModuleTileInteractionEvent.tileIndex.setter(uint64_t a1)
{
  result = type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t ControlCenterAnalytics.TileModuleTileInteractionEvent.tilePlacement.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent(0);
  *a1 = *(v1 + *(result + 72));
  return result;
}

uint64_t ControlCenterAnalytics.TileModuleTileInteractionEvent.tilePlacement.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent(0);
  *(v1 + *(result + 72)) = v2;
  return result;
}

uint64_t ControlCenterAnalytics.TileModuleTileInteractionEvent.numberOfTilesInModule.setter(uint64_t a1)
{
  result = type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t ControlCenterAnalytics.TileModuleTileInteractionEvent.maxModuleTileCount.setter(uint64_t a1)
{
  result = type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent(0);
  *(v1 + *(result + 80)) = a1;
  return result;
}

uint64_t ControlCenterAnalytics.TileModuleTileInteractionEvent.homeSizeToModuleSizeRatio.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent(0);
  v6 = v2 + *(result + 84);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

Swift::Void __swiftcall ControlCenterAnalytics.TileModuleTileInteractionEvent.transform(payload:)(Swift::OpaquePointer *payload)
{
  v3 = type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent(0);
  v4 = *(v1 + v3[19]);
  v5 = v4 / *(v1 + v3[20]);
  v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v7 = v5;
  v8 = [v6 initWithFloat_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  rawValue = payload->_rawValue;
  sub_20CEEFB64(v8, 0xD000000000000014, 0x800000020D5D2390, isUniquelyReferenced_nonNull_native);
  payload->_rawValue = rawValue;
  v10 = *(v1 + v3[17]);
  v11 = __CFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v16 = payload->_rawValue;
    sub_20CEEFB64(v13, 0xD000000000000013, 0x800000020D5D23B0, v14);
    payload->_rawValue = v16;
  }
}

unint64_t sub_20CFB7DC4(char a1)
{
  result = 1835365481;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x537972616D697270;
      break;
    case 3:
      result = 0x7463617265746E69;
      break;
    case 4:
      result = 0x6E6F697463417369;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x694B656C75646F6DLL;
      break;
    case 9:
      result = 0x6953656C75646F6DLL;
      break;
    case 10:
      result = 0x657A6953656C6974;
      break;
    case 11:
    case 15:
      result = 0xD000000000000015;
      break;
    case 12:
    case 16:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x65646E49656C6974;
      break;
    case 14:
      result = 0x63616C50656C6974;
      break;
    case 17:
      result = 0xD000000000000019;
      break;
    case 18:
    case 19:
      result = 0xD000000000000011;
      break;
    case 20:
      result = 0x6D617473656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_20CFB8014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20CFBC7B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20CFB8048(uint64_t a1)
{
  v2 = sub_20CFBA138();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20CFB8084(uint64_t a1)
{
  v2 = sub_20CFBA138();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ControlCenterAnalytics.TileModuleTileInteractionEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E578);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20CFBA138();
  sub_20D568DD8();
  LOBYTE(v11) = 0;
  sub_20D568B48();
  if (!v2)
  {
    v9 = type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent(0);
    LOBYTE(v11) = 1;
    sub_20D563E18();
    sub_20CFBA18C(&qword_27C81E588, MEMORY[0x277D15308]);
    sub_20D568B88();
    LOBYTE(v11) = 2;
    sub_20D563E48();
    sub_20CFBA18C(&qword_27C81E590, MEMORY[0x277D15380]);
    sub_20D568B88();
    LOBYTE(v11) = 3;
    sub_20D564708();
    sub_20CFBA18C(&qword_27C81E598, MEMORY[0x277D16668]);
    sub_20D568B88();
    LOBYTE(v11) = 4;
    sub_20D568B58();
    LOBYTE(v11) = 5;
    sub_20D568B58();
    LOBYTE(v11) = 6;
    sub_20D563E28();
    sub_20CFBA18C(&qword_27C81E5A0, MEMORY[0x277D15330]);
    sub_20D568B38();
    LOBYTE(v11) = *(v3 + v9[11]);
    v12 = 7;
    sub_20CFB9FC8();
    sub_20D568B88();
    LOBYTE(v11) = *(v3 + v9[12]);
    v12 = 8;
    sub_20CFBA01C();
    sub_20D568B88();
    v11 = *(v3 + v9[13]);
    v12 = 9;
    type metadata accessor for CCUIGridSizeClass(0);
    sub_20CFBA18C(&qword_27C81E550, type metadata accessor for CCUIGridSizeClass);
    sub_20D568B88();
    LOBYTE(v11) = *(v3 + v9[14]);
    v12 = 10;
    sub_20CFBA1D4();
    sub_20D568B88();
    LOBYTE(v11) = 11;
    sub_20D568B58();
    LOBYTE(v11) = 12;
    sub_20D568B78();
    LOBYTE(v11) = 13;
    sub_20D568B78();
    LOBYTE(v11) = *(v3 + v9[18]);
    v12 = 14;
    sub_20CFBA228();
    sub_20D568B88();
    LOBYTE(v11) = 15;
    sub_20D568B78();
    LOBYTE(v11) = 16;
    sub_20D568B78();
    LOBYTE(v11) = 17;
    sub_20D568B28();
    LOBYTE(v11) = 18;
    sub_20D563E08();
    sub_20CFBA18C(&qword_27C81E5B8, MEMORY[0x277D152B0]);
    sub_20D568B88();
    LOBYTE(v11) = 19;
    sub_20D563DE8();
    sub_20CFBA18C(&qword_27C81E5C0, MEMORY[0x277D152A0]);
    sub_20D568B38();
    LOBYTE(v11) = 20;
    sub_20D5637A8();
    sub_20CFBA18C(&qword_27C81E5C8, MEMORY[0x277CC9578]);
    sub_20D568B38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_20CFB8A6C()
{
  v1 = *v0;
  v2 = 0x72756769666E6F63;
  v3 = 0x6E65704F656D6974;
  v4 = 0x7463617265746E69;
  if (v1 != 4)
  {
    v4 = 0x6D617473656D6974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x694B656C75646F6DLL;
  if (v1 != 1)
  {
    v5 = 0x6953656C75646F6DLL;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_20CFB8B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20CFBCE6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20CFB8B84(uint64_t a1)
{
  v2 = sub_20CFBA304();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20CFB8BC0(uint64_t a1)
{
  v2 = sub_20CFBA304();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ControlCenterAnalytics.TileModuleAppearEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E5D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20CFBA304();
  sub_20D568DD8();
  LOBYTE(v10) = *v3;
  v11 = 0;
  sub_20CFB9FC8();
  sub_20D568B88();
  if (!v2)
  {
    LOBYTE(v10) = *(v3 + 1);
    v11 = 1;
    sub_20CFBA01C();
    sub_20D568B88();
    v10 = *(v3 + 8);
    v11 = 2;
    type metadata accessor for CCUIGridSizeClass(0);
    sub_20CFBA18C(&qword_27C81E550, type metadata accessor for CCUIGridSizeClass);
    sub_20D568B88();
    LOBYTE(v10) = 3;
    sub_20D568B68();
    LOBYTE(v10) = 4;
    sub_20D568B78();
    type metadata accessor for ControlCenterAnalytics.TileModuleAppearEvent(0);
    LOBYTE(v10) = 5;
    sub_20D5637A8();
    sub_20CFBA18C(&qword_27C81E5C8, MEMORY[0x277CC9578]);
    sub_20D568B38();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_20CFB9014()
{
  v1 = 0x694B656C75646F6DLL;
  if (*v0 != 2)
  {
    v1 = 0x6D617473656D6974;
  }

  v2 = 0xD000000000000019;
  if (*v0)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_20CFB90A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20CFBD08C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20CFB90D8(uint64_t a1)
{
  v2 = sub_20CFBA378();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20CFB9114(uint64_t a1)
{
  v2 = sub_20CFBA378();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ControlCenterAnalytics.TileModuleConfigurationEditedEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E5E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20CFBA378();
  sub_20D568DD8();
  v10[15] = *v3;
  v10[14] = 0;
  sub_20CFB9FC8();
  sub_20D568B88();
  if (!v2)
  {
    v10[13] = v3[1];
    v10[12] = 1;
    sub_20D568B88();
    v10[11] = v3[2];
    v10[10] = 2;
    sub_20CFBA01C();
    sub_20D568B88();
    type metadata accessor for ControlCenterAnalytics.TileModuleConfigurationEditedEvent(0);
    v10[9] = 3;
    sub_20D5637A8();
    sub_20CFBA18C(&qword_27C81E5C8, MEMORY[0x277CC9578]);
    sub_20D568B38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ControlCenterAnalytics.CharacteristicNotificationsEnabledEvent.init(numberOfCharacteristics:containsScene:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for ControlCenterAnalytics.CharacteristicNotificationsEnabledEvent(0) + 24);
  v7 = sub_20D5637A8();
  result = (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

unint64_t sub_20CFB9540()
{
  v1 = 0x736E6961746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_20CFB95B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20CFBD210(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20CFB95D8(uint64_t a1)
{
  v2 = sub_20CFBA3EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20CFB9614(uint64_t a1)
{
  v2 = sub_20CFBA3EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ControlCenterAnalytics.CharacteristicNotificationsEnabledEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E5F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20CFBA3EC();
  sub_20D568DD8();
  v8[15] = 0;
  sub_20D568B78();
  if (!v1)
  {
    v8[14] = 1;
    sub_20D568B58();
    type metadata accessor for ControlCenterAnalytics.CharacteristicNotificationsEnabledEvent(0);
    v8[13] = 2;
    sub_20D5637A8();
    sub_20CFBA18C(&qword_27C81E5C8, MEMORY[0x277CC9578]);
    sub_20D568B38();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ControlCenterAnalytics.ItemUpdateEvent.sender.getter()
{
  v1 = *v0;
  sub_20D5663C8();
  return v1;
}

uint64_t ControlCenterAnalytics.ItemUpdateEvent.sender.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ControlCenterAnalytics.ItemUpdateEvent.duration.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_20CFB99CC()
{
  v1 = 0x6E6F697461727564;
  if (*v0 != 1)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265646E6573;
  }
}

uint64_t sub_20CFB9A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20CFBD344(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20CFB9A50(uint64_t a1)
{
  v2 = sub_20CFBA460();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20CFB9A8C(uint64_t a1)
{
  v2 = sub_20CFBA460();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ControlCenterAnalytics.ItemUpdateEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E600);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20CFBA460();
  sub_20D568DD8();
  v8[15] = 0;
  sub_20D568B18();
  if (!v1)
  {
    v8[14] = 1;
    sub_20D568B28();
    type metadata accessor for ControlCenterAnalytics.ItemUpdateEvent(0);
    v8[13] = 2;
    sub_20D5637A8();
    sub_20CFBA18C(&qword_27C81E5C8, MEMORY[0x277CC9578]);
    sub_20D568B38();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t _s6HomeUI22ControlCenterAnalyticsO21TileModuleExistsEventV2eeoiySbAE_AEtFZ_0(double *a1, double *a2)
{
  result = 0;
  if (*a1 == *a2 && ((*(a1 + 1) ^ *(a2 + 1)) & 1) == 0)
  {
    result = 0;
    if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
    {
      v4 = *(a1 + 24);
      v5 = a1[4];
      v6 = *(a1 + 40);
      v7 = *(a1 + 41);
      v8 = *(a1 + 42);
      v9 = *(a1 + 43);
      v10 = *(a1 + 44);
      v11 = *(a1 + 45);
      v12 = *(a1 + 46);
      v13 = *(a1 + 47);
      v14 = *(a1 + 48);
      v15 = *(a2 + 24);
      if (v4 == 3)
      {
        if (v15 != 3)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v15 == 3 || v4 != v15)
        {
          return result;
        }
      }

      result = 0;
      if (v6)
      {
        if (!*(a2 + 40))
        {
          return result;
        }
      }

      else if ((a2[5] & 1) != 0 || v5 != a2[4])
      {
        return result;
      }

      if (((v7 ^ *(a2 + 41)) & 1) == 0 && ((v8 ^ *(a2 + 42)) & 1) == 0 && ((v9 ^ *(a2 + 43)) & 1) == 0 && ((v10 ^ *(a2 + 44)) & 1) == 0 && ((v11 ^ *(a2 + 45)) & 1) == 0 && ((v12 ^ *(a2 + 46)) & 1) == 0 && ((v13 ^ *(a2 + 47)) & 1) == 0)
      {
        return v14 ^ *(a2 + 48) ^ 1u;
      }
    }
  }

  return result;
}

unint64_t sub_20CFB9F74()
{
  result = qword_27C81E538;
  if (!qword_27C81E538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E538);
  }

  return result;
}

unint64_t sub_20CFB9FC8()
{
  result = qword_27C81E540;
  if (!qword_27C81E540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E540);
  }

  return result;
}

unint64_t sub_20CFBA01C()
{
  result = qword_27C81E548;
  if (!qword_27C81E548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E548);
  }

  return result;
}

unint64_t sub_20CFBA070()
{
  result = qword_27C81E558;
  if (!qword_27C81E558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E558);
  }

  return result;
}

unint64_t sub_20CFBA0C4()
{
  result = qword_27C81E568;
  if (!qword_27C81E568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E568);
  }

  return result;
}

unint64_t sub_20CFBA138()
{
  result = qword_27C81E580;
  if (!qword_27C81E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E580);
  }

  return result;
}

uint64_t sub_20CFBA18C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20CFBA1D4()
{
  result = qword_27C81E5A8;
  if (!qword_27C81E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E5A8);
  }

  return result;
}

unint64_t sub_20CFBA228()
{
  result = qword_27C81E5B0;
  if (!qword_27C81E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E5B0);
  }

  return result;
}

uint64_t sub_20CFBA29C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_20CFBA304()
{
  result = qword_27C81E5D8;
  if (!qword_27C81E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E5D8);
  }

  return result;
}

unint64_t sub_20CFBA378()
{
  result = qword_27C81E5E8;
  if (!qword_27C81E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E5E8);
  }

  return result;
}

unint64_t sub_20CFBA3EC()
{
  result = qword_27C81E5F8;
  if (!qword_27C81E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E5F8);
  }

  return result;
}

unint64_t sub_20CFBA460()
{
  result = qword_27C81E608;
  if (!qword_27C81E608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E608);
  }

  return result;
}

unint64_t sub_20CFBA4B8()
{
  result = qword_27C81E610;
  if (!qword_27C81E610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E610);
  }

  return result;
}

unint64_t sub_20CFBA510()
{
  result = qword_27C81E618;
  if (!qword_27C81E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E618);
  }

  return result;
}

unint64_t sub_20CFBA568()
{
  result = qword_27C81E620;
  if (!qword_27C81E620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E620);
  }

  return result;
}

unint64_t sub_20CFBA5C0()
{
  result = qword_27C81E628;
  if (!qword_27C81E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E628);
  }

  return result;
}

unint64_t sub_20CFBA618()
{
  result = qword_27C81E630;
  if (!qword_27C81E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E630);
  }

  return result;
}

unint64_t sub_20CFBA66C(uint64_t a1)
{
  result = sub_20CFBA694();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_20CFBA694()
{
  result = qword_27C81E638;
  if (!qword_27C81E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E638);
  }

  return result;
}

unint64_t sub_20CFBA6EC()
{
  result = qword_27C81E640;
  if (!qword_27C81E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E640);
  }

  return result;
}

unint64_t sub_20CFBA740(uint64_t a1)
{
  result = sub_20CFBA768();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_20CFBA768()
{
  result = qword_27C81E648;
  if (!qword_27C81E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E648);
  }

  return result;
}

unint64_t sub_20CFBA7C0()
{
  result = qword_27C81E650;
  if (!qword_27C81E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E650);
  }

  return result;
}

uint64_t sub_20CFBA814(uint64_t a1)
{
  result = sub_20CFBA18C(&qword_27C820F10, type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_20CFBA8B4(uint64_t a1)
{
  result = sub_20CFBA18C(&qword_27C81E660, type metadata accessor for ControlCenterAnalytics.TileModuleAppearEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_20CFBA954(uint64_t a1)
{
  result = sub_20CFBA18C(&qword_27C820EE0, type metadata accessor for ControlCenterAnalytics.TileModuleConfigurationEditedEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_20CFBA9F4(uint64_t a1)
{
  result = sub_20CFBA18C(&qword_27C81E678, type metadata accessor for ControlCenterAnalytics.CharacteristicNotificationsEnabledEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_20CFBAA94(uint64_t a1)
{
  result = sub_20CFBA18C(&qword_27C81E688, type metadata accessor for ControlCenterAnalytics.ItemUpdateEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ControlCenterAnalytics(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ControlCenterAnalytics(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ControlCenterAnalytics.TilePlacement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ControlCenterAnalytics.TilePlacement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_20CFBADA4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[49])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_20CFBADE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ControlCenterAnalytics.TileModuleCountEvent(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ControlCenterAnalytics.TileModuleCountEvent(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

void sub_20CFBAED0()
{
  sub_20D563E18();
  if (v0 <= 0x3F)
  {
    sub_20D563E48();
    if (v1 <= 0x3F)
    {
      sub_20D564708();
      if (v2 <= 0x3F)
      {
        sub_20CFBB0D0(319, &qword_27C81E6A8, MEMORY[0x277D15330]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CCUIGridSizeClass(319);
          if (v4 <= 0x3F)
          {
            sub_20CFBB4B4(319, &qword_27C8207B0);
            if (v5 <= 0x3F)
            {
              sub_20D563E08();
              if (v6 <= 0x3F)
              {
                sub_20CFBB0D0(319, &qword_27C81E6B0, MEMORY[0x277D152A0]);
                if (v7 <= 0x3F)
                {
                  sub_20CFBB0D0(319, &qword_27C81BEF0, MEMORY[0x277CC9578]);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_20CFBB0D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20D568538();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20CFBB14C()
{
  type metadata accessor for CCUIGridSizeClass(319);
  if (v0 <= 0x3F)
  {
    sub_20CFBB0D0(319, &qword_27C81BEF0, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20CFBB244()
{
  sub_20CFBB0D0(319, &qword_27C81BEF0, MEMORY[0x277CC9578]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_20CFBB314()
{
  sub_20CFBB0D0(319, &qword_27C81BEF0, MEMORY[0x277CC9578]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_20CFBB3DC()
{
  sub_20CFBB4B4(319, &qword_27C81D5D8);
  if (v0 <= 0x3F)
  {
    sub_20CFBB4B4(319, &qword_27C8207B0);
    if (v1 <= 0x3F)
    {
      sub_20CFBB0D0(319, &qword_27C81BEF0, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20CFBB4B4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_20D568538();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_20CFBB520(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_20CFBB5B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ControlCenterAnalytics.TileModuleAppearEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ControlCenterAnalytics.TileModuleAppearEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}