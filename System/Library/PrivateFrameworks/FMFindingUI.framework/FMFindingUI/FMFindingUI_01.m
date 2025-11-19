uint64_t sub_24A51C314@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A508FA4(&qword_27EF4F6D8, &qword_24A634280);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = a1[4];
  sub_24A50A204(a1, a1[3]);
  sub_24A51C86C();
  sub_24A62F764();
  if (v2)
  {
    return sub_24A508C54(a1);
  }

  LOBYTE(v49) = 0;
  sub_24A62F514();
  v12 = v11;
  v69 = 0;
  LOBYTE(v49) = 1;
  sub_24A62F514();
  v14 = v13;
  LOBYTE(v49) = 2;
  v15 = sub_24A62F504();
  LOBYTE(v49) = 3;
  sub_24A62F514();
  v17 = v16;
  LOBYTE(v49) = 4;
  v18 = sub_24A62F504();
  LOBYTE(v49) = 5;
  v41 = sub_24A62F504();
  LOBYTE(v49) = 6;
  sub_24A62F514();
  v20 = v19;
  LOBYTE(v49) = 7;
  v40 = sub_24A62F504();
  LOBYTE(v49) = 8;
  v39 = sub_24A62F504();
  LOBYTE(v49) = 9;
  v38 = sub_24A62F504();
  LOBYTE(v49) = 10;
  sub_24A62F514();
  v22 = v21;
  v68 = 1;
  v66 = 11;
  sub_24A51C8C0();
  sub_24A62F544();
  v37 = v15 & 1;
  v18 &= 1u;
  v23 = v41 & 1;
  v36 = v41 & 1;
  v35 = v40 & 1;
  v39 &= 1u;
  v24 = v38 & 1;
  v40 = v38 & 1;
  (*(v6 + 8))(v9, v5);
  *&v42 = v12;
  v41 = v69;
  BYTE8(v42) = v69;
  v43 = 0uLL;
  *&v44 = v14;
  v25 = v37;
  BYTE8(v44) = v37;
  *&v45 = v17;
  BYTE8(v45) = v18;
  BYTE9(v45) = v23;
  *&v46 = v20;
  v26 = v35;
  BYTE8(v46) = v35;
  v27 = v39;
  BYTE9(v46) = v39;
  BYTE10(v46) = v24;
  v47 = v22;
  v28 = v68;
  LOBYTE(v48) = v68;
  HIBYTE(v48) = v67;
  v29 = v67;
  sub_24A51C914(&v42, &v49);
  sub_24A508C54(a1);
  v49 = v12;
  v50 = v41;
  v51 = 0;
  v52 = 0;
  v53 = v14;
  v54 = v25;
  v55 = v17;
  v56 = v18;
  v57 = v36;
  v58 = v20;
  v59 = v26;
  v60 = v27;
  v61 = v40;
  v62 = v22;
  v63 = 0;
  v64 = v28;
  v65 = v29;
  result = sub_24A51C94C(&v49);
  v31 = v47;
  *(a2 + 64) = v46;
  *(a2 + 80) = v31;
  *(a2 + 96) = v48;
  v32 = v43;
  *a2 = v42;
  *(a2 + 16) = v32;
  v33 = v45;
  *(a2 + 32) = v44;
  *(a2 + 48) = v33;
  return result;
}

unint64_t sub_24A51C86C()
{
  result = qword_27EF4F6E0;
  if (!qword_27EF4F6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F6E0);
  }

  return result;
}

unint64_t sub_24A51C8C0()
{
  result = qword_27EF4F6E8;
  if (!qword_27EF4F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F6E8);
  }

  return result;
}

unint64_t sub_24A51C97C()
{
  result = qword_27EF4F700;
  if (!qword_27EF4F700)
  {
    sub_24A50E1E0(&qword_27EF4F6F8, &qword_24A634290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F700);
  }

  return result;
}

unint64_t sub_24A51C9F8()
{
  result = qword_27EF4F708;
  if (!qword_27EF4F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F708);
  }

  return result;
}

unint64_t sub_24A51CA4C()
{
  result = qword_27EF4F728;
  if (!qword_27EF4F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F728);
  }

  return result;
}

unint64_t sub_24A51CAA0()
{
  result = qword_27EF4F730;
  if (!qword_27EF4F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F730);
  }

  return result;
}

unint64_t sub_24A51CAF4()
{
  result = qword_27EF4F738;
  if (!qword_27EF4F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F738);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FindingModel(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FindingModel(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for FMFindingDistance.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMFindingDistance.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A51CE30()
{
  result = qword_27EF4F760;
  if (!qword_27EF4F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F760);
  }

  return result;
}

unint64_t sub_24A51CE88()
{
  result = qword_27EF4F768;
  if (!qword_27EF4F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F768);
  }

  return result;
}

unint64_t sub_24A51CEE0()
{
  result = qword_27EF4F770;
  if (!qword_27EF4F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F770);
  }

  return result;
}

unint64_t sub_24A51CF38()
{
  result = qword_27EF4F778;
  if (!qword_27EF4F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F778);
  }

  return result;
}

unint64_t sub_24A51CF90()
{
  result = qword_27EF4F780;
  if (!qword_27EF4F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F780);
  }

  return result;
}

unint64_t sub_24A51CFE8()
{
  result = qword_27EF4F788;
  if (!qword_27EF4F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F788);
  }

  return result;
}

unint64_t sub_24A51D040()
{
  result = qword_27EF4F790;
  if (!qword_27EF4F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F790);
  }

  return result;
}

unint64_t sub_24A51D098()
{
  result = qword_27EF4F798;
  if (!qword_27EF4F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F798);
  }

  return result;
}

unint64_t sub_24A51D0F0()
{
  result = qword_27EF4F7A0;
  if (!qword_27EF4F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F7A0);
  }

  return result;
}

unint64_t sub_24A51D148()
{
  result = qword_27EF4F7A8;
  if (!qword_27EF4F7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F7A8);
  }

  return result;
}

uint64_t sub_24A51D1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 64) = a5;
  *(v7 + 40) = a4;
  return MEMORY[0x2822009F8](sub_24A51D204, a4, 0);
}

uint64_t sub_24A51D204()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 64);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  swift_beginAccess();

  v6 = *(v3 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + 112);
  *(v3 + 112) = 0x8000000000000000;
  sub_24A557780(sub_24A517E48, v5, v4, isUniquelyReferenced_nonNull_native);
  *(v3 + 112) = v10;
  swift_endAccess();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24A51D300()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t getEnumTagSinglePayload for FMFindingType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FMFindingType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24A51D4B0()
{
  result = qword_27EF4F7B0;
  if (!qword_27EF4F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F7B0);
  }

  return result;
}

uint64_t sub_24A51D510()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_24A51D55C()
{
  result = qword_27EF4F7B8;
  if (!qword_27EF4F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F7B8);
  }

  return result;
}

void sub_24A51D5B0()
{
  v1 = [v0 navigationBar];
  [v1 setTranslucent_];

  v2 = [v0 navigationBar];
  v3 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  [v2 setBackgroundImage:v3 forBarMetrics:0];

  v4 = [v0 navigationBar];
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor_];

  v6 = [v0 navigationBar];
  v7 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  [v6 setShadowImage_];
}

char *sub_24A51D718(unsigned __int8 *a1, unsigned __int16 *a2, double a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  v18 = v17;
  v20 = *a1;
  v21 = *a2;
  v22 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_gimbalNode;
  v23 = type metadata accessor for FMPFSKNode();
  *&v18[v22] = [objc_allocWithZone(v23) init];
  v24 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskNode;
  *&v18[v24] = [objc_allocWithZone(v23) init];
  v25 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode;
  *&v18[v25] = [objc_allocWithZone(v23) init];
  v26 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotCGPathNode;
  type metadata accessor for FMPFSKSpriteNode();
  v108 = v26;
  *&v18[v26] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interativeRadiusBeaconNode] = 0;
  v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_isPlayingInitialPulse] = 0;
  v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_hasPlayedInitialPulse] = 0;
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction] = 0;
  v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyDiskRadius] = 1;
  v27 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadius];
  *v27 = 0;
  v27[8] = 1;
  v28 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDiskRadius];
  *v28 = 0;
  v28[8] = 1;
  v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyDotScale] = 1;
  v29 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScale];
  *v29 = 0;
  v29[8] = 1;
  v30 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDotScale];
  *v30 = 0;
  v30[8] = 1;
  v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyAngle] = 1;
  v31 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angle];
  *v31 = 0;
  v31[8] = 1;
  v32 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedAngle];
  *v32 = 0;
  v32[8] = 1;
  v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyOpacity] = 1;
  v33 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_opacity];
  *v33 = 0;
  v33[8] = 1;
  v34 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedOpacity];
  *v34 = 0;
  v34[8] = 1;
  v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyBrightness] = 1;
  v35 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_brightness];
  *v35 = 0;
  v35[8] = 1;
  v36 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedBrightness];
  *v36 = 0;
  v36[8] = 1;
  v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyOffset] = 1;
  v37 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_offset];
  *v37 = 0;
  *(v37 + 1) = 0;
  v37[16] = 1;
  v38 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedOffset];
  *v38 = 0;
  *(v38 + 1) = 0;
  v38[16] = 1;
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedAbsoluteHeading] = 0;
  v39 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interactiveAngleFactor];
  *v39 = 0;
  v39[8] = 1;
  v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyRadiusFactor] = 1;
  v40 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_radiusFactor];
  *v40 = 0;
  v40[8] = 1;
  v41 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedRadiusFactor];
  *v41 = 0;
  v41[8] = 1;
  v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_experienceType] = v20;
  v104 = v21;
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_findingType] = v21;
  if (v20 == 1)
  {
    if (qword_27EF4E9B8 != -1)
    {
      swift_once();
    }

    v42 = &xmmword_27EF50328;
  }

  else
  {
    if (qword_27EF4E9B0 != -1)
    {
      swift_once();
    }

    v42 = &xmmword_27EF502D0;
  }

  v43 = v42[3];
  v118 = v42[2];
  v119 = v43;
  v120 = v42[4];
  v121 = *(v42 + 10);
  v44 = v42[1];
  v116 = *v42;
  v117 = v44;
  v45 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_style];
  v46 = v119;
  *(v45 + 2) = v118;
  *(v45 + 3) = v46;
  *(v45 + 4) = v120;
  *(v45 + 10) = v121;
  v47 = v117;
  *v45 = v116;
  *(v45 + 1) = v47;
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotDiameter] = a3;
  v48 = objc_opt_self();
  sub_24A51FFE0(&v116, v115);

  v49 = sub_24A62EBE4();
  v50 = MGGetSInt32Answer();

  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_pixelsPerInch] = v50;
  v51 = a6;
  if (a6)
  {
    v52 = a6;
  }

  else
  {
    v52 = [objc_opt_self() whiteColor];
    v51 = 0;
  }

  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_renderingColor] = v52;
  v111 = v51;
  v113 = sub_24A5F1D08();
  [v113 size];
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_subScale] = 1.0 / (v53 / a3);
  v115[0] = v104;
  v54 = objc_allocWithZone(type metadata accessor for FMPFSKBTRangingNode());
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_btRangingNode] = sub_24A595034(v115);
  *v27 = a7;
  v27[8] = a8 & 1;
  *v29 = a9;
  v29[8] = a10 & 1;
  *v31 = a11;
  v31[8] = a12 & 1;
  *v33 = a13;
  v33[8] = a14 & 1;
  *v35 = *(v45 + 3);
  v35[8] = 0;
  *v37 = a15;
  *(v37 + 1) = a16;
  v37[16] = a17 & 1;
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadiusSpring] = sub_24A5B1B3C(a7, a8 & 1, 0x3FE0000000000000, 0, 0, 1);
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScaleSpring] = sub_24A5B1B3C(*v29, v29[8], 0x3F847AE147AE147BLL, 0, 0, 1);
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angleSpring] = sub_24A5B1B3C(*v31, v31[8], 0x3FA015BF9217271ALL, 0, 0, 1);
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_opacitySpring] = sub_24A5B1B3C(*v33, v33[8], 0x3F847AE147AE147BLL, 0, 0, 1);
  v55 = sub_24A5B1B2C(*v35, v35[8], 0x3F847AE147AE147BLL, 0);
  v56 = 0;
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_brightnessSpring] = v55;
  if ((v37[16] & 1) == 0)
  {
    v56 = *v37;
  }

  v57 = sub_24A5B1B3C(v56, v37[16], 0x3FE0000000000000, 0, 0, 1);
  v58 = 0;
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_xOffsetSpring] = v57;
  if ((v37[16] & 1) == 0)
  {
    v58 = *(v37 + 1);
  }

  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_yOffsetSpring] = sub_24A5B1B3C(v58, v37[16], 0x3FE0000000000000, 0, 0, 1);
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_headingSpring] = sub_24A5B1D38(0, 0, 0, 1, 0x3FE0000000000000, 0);
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_radiusFactorSpring] = sub_24A5B1B3C(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  [*&v18[v108] setTexture_];
  v59 = *&v18[v108];
  [v113 size];
  [v59 setSize_];

  [*&v18[v108] setColorBlendFactor_];
  v114.receiver = v18;
  v114.super_class = type metadata accessor for FMPFSKPeripheralDotNode();
  v60 = objc_msgSendSuper2(&v114, sel_init);
  v61 = v60;
  if (a5)
  {
    v62 = sub_24A62EBE4();
  }

  else
  {
    v62 = 0;
  }

  [v60 setName_];

  v63 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_gimbalNode;
  [v60 addChild_];
  v64 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskNode;
  [*&v60[v63] addChild_];
  v65 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode;
  [*&v60[v64] addChild_];
  v66 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotCGPathNode;
  [*&v60[v65] addChild_];
  v67 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_btRangingNode;
  [v60 addChild_];
  v110 = v67;
  v68 = *&v60[v67];
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_24A6339F0;
  v70 = objc_opt_self();
  v71 = objc_opt_self();
  v72 = v68;
  v73 = [v71 rangeWithConstantValue_];
  v74 = [v70 distance:v73 toNode:*&v60[v65]];

  *(v69 + 32) = v74;
  sub_24A50D7EC(0, &qword_27EF4F940, 0x277CDCF38);
  v75 = sub_24A62ED54();

  [v72 setConstraints_];

  v76 = *&v60[v63];
  v77 = sub_24A62EBE4();
  [v76 setName_];

  v78 = *&v60[v65];
  v79 = sub_24A62EBE4();
  [v78 setName_];

  v80 = *&v60[v66];
  v81 = sub_24A62EBE4();
  [v80 setName_];

  if ((v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadius + 8] & 1) == 0)
  {
    v82 = *&v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadius];
    v83 = &v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDiskRadius];
    *v83 = v82;
    *(v83 + 8) = 0;
    [*&v60[v64] setPosition_];
  }

  if ((v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScale + 8] & 1) == 0)
  {
    v84 = *&v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScale];
    v85 = &v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDotScale];
    *v85 = v84;
    *(v85 + 8) = 0;
    [*&v60[v65] setScale_];
  }

  if ((v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angle + 8] & 1) == 0)
  {
    v86 = *&v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angle];
    v87 = &v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedAngle];
    *v87 = v86;
    *(v87 + 8) = 0;
    if (!*&v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction])
    {
      [*&v60[v63] setZRotation_];
    }
  }

  if ((v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_opacity + 8] & 1) == 0)
  {
    v88 = *&v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_opacity];
    v89 = &v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedOpacity];
    *v89 = v88;
    v90 = v88;
    *(v89 + 8) = 0;
    [*&v60[v65] setAlpha_];
    [*&v60[v110] setAlpha_];
  }

  if ((v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_brightness + 8] & 1) == 0)
  {
    v91 = *&v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_brightness];
    v92 = &v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedBrightness];
    *v92 = v91;
    v93 = v91;
    *(v92 + 8) = 0;
    v94 = *&v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_renderingColor];
    v95 = *&v60[v66];
    v96 = v94;
    sub_24A60CFCC(v96, v93);
  }

  v97 = v113;
  if (v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_offset + 16])
  {
    v98 = v60;
    v99 = v111;
  }

  else
  {
    v100 = *&v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_offset + 8];
    v101 = *&v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_offset];
    v102 = &v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedOffset];
    *v102 = v101;
    v102[1] = v100;
    *(v102 + 16) = 0;
    [v60 setPosition_];
    v98 = v111;
    v99 = v113;
    v97 = v60;
  }

  return v60;
}

uint64_t sub_24A51E3CC()
{
  v1 = 0xE000000000000000;
  sub_24A62F384();

  v2 = sub_24A62F784();
  v4 = sub_24A516B88(6, v2, v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x24C21A580](v4, v6, v8, v10);
  v13 = v12;

  MEMORY[0x24C21A5D0](v11, v13);

  MEMORY[0x24C21A5D0](30768, 0xE200000000000000);

  MEMORY[0x24C21A5D0](32, 0xE100000000000000);
  v14 = [v0 name];
  if (v14)
  {
    v15 = v14;
    v16 = sub_24A62EC14();
    v1 = v17;
  }

  else
  {
    v16 = 0;
  }

  MEMORY[0x24C21A5D0](v16, v1);

  MEMORY[0x24C21A5D0](62, 0xE100000000000000);
  v18 = sub_24A62EC24();

  return v18;
}

id sub_24A51E58C()
{
  type metadata accessor for FMPFSKSpriteNode();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = sub_24A5F1D08();
  v3 = v1;
  [v3 setTexture_];
  [v2 size];
  [v3 setSize_];
  v4 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_style;
  [v3 setColor_];
  [v3 setColorBlendFactor_];

  v5 = *(v4 + 40);
  v6 = v3;
  [v6 setAlpha_];
  [v6 setScale_];
  v7 = sub_24A62EBE4();
  [v6 setName_];

  return v6;
}

void sub_24A51E6D4(void *a1, char *a2, double a3)
{
  [a1 setSpeed_];
  if ((a2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedBrightness + 8] & 1) == 0)
  {
    v5 = *&a2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedBrightness];
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      v6 = *&a2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_gimbalNode];
      v7 = swift_allocObject();
      v7[2] = a1;
      v7[3] = v5;
      v7[4] = a2;
      v12[4] = sub_24A52062C;
      v12[5] = v7;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 1107296256;
      v12[2] = sub_24A5A8458;
      v12[3] = &unk_285DA1208;
      v8 = _Block_copy(v12);
      v9 = v6;
      v10 = a1;
      v11 = a2;

      [v9 runAction:v10 completion:v8];
      _Block_release(v8);
    }
  }
}

void sub_24A51E82C(void *a1)
{
  v2 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_renderingColor;
  v3 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_renderingColor);
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_renderingColor) = a1;
  v10 = a1;

  v4 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotCGPathNode);
  v5 = &v4[OBJC_IVAR____TtC11FMFindingUI16FMPFSKSpriteNode_previousBrightness];
  *v5 = 0;
  v5[8] = 1;
  if ((*(v1 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedBrightness + 8) & 1) == 0)
  {
    v6 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedBrightness);
    v7 = *(v1 + v2);
    v8 = v4;
    v9 = v7;
    sub_24A60CFCC(v9, v6);
  }
}

void sub_24A51E8F0()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction;
  if (!*&v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction])
  {
    v2 = &v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedBrightness];
    if ((v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedBrightness + 8] & 1) == 0 && (v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadius + 8] & 1) == 0)
    {
      v3 = *v2;
      v4 = &v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_style];
      v5 = (*&v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadius] + *&v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadius]) * 3.14159265 / (*&v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_style] * 0.5);
      v6 = dbl_24A634820[(sub_24A5EB5CC(100) & 1) == 0];
      v7 = [objc_opt_self() rotateByAngle:v6 / v4[2] duration:v5 / v4[2]];
      [v7 setTimingMode_];
      [v7 setSpeed_];
      v8 = *&v0[v1];
      *&v0[v1] = v7;
      v16 = v7;

      if ((v2[1] & 1) != 0 || (v9 = *v2, UIAccessibilityIsReduceMotionEnabled()))
      {
      }

      else
      {
        v10 = *&v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_gimbalNode];
        v11 = swift_allocObject();
        *(v11 + 2) = v16;
        v11[3] = v9;
        *(v11 + 4) = v0;
        aBlock[4] = sub_24A520354;
        aBlock[5] = v11;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_24A5A8458;
        aBlock[3] = &unk_285DA11B8;
        v12 = _Block_copy(aBlock);
        v13 = v16;
        v14 = v10;
        v15 = v0;

        [v14 runAction:v13 completion:v12];

        _Block_release(v12);
      }
    }
  }
}

void sub_24A51EB58()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction;
  if (*&v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction])
  {
    v2 = &v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angle];
    if ((v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angle + 8] & 1) == 0)
    {
      v3 = *v2;
      v4 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_gimbalNode;
      [*&v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_gimbalNode] removeAllActions];
      v5 = *&v0[v1];
      *&v0[v1] = 0;

      v6 = fmod(*&v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedAbsoluteHeading] / 180.0 * 3.14159265, 6.28318531);
      if (v6 <= 3.14159265)
      {
        if (v6 < -3.14159265)
        {
          v6 = v6 + 6.28318531;
        }
      }

      else
      {
        v6 = v6 + -6.28318531;
      }

      [*&v0[v4] zRotation];
      v8 = fmod(v7, 6.28318531);
      if (v8 <= 3.14159265)
      {
        if (v8 < -3.14159265)
        {
          v8 = v8 + 6.28318531;
        }
      }

      else
      {
        v8 = v8 + -6.28318531;
      }

      v9 = v6 + v8;
      v10 = v3 - (v6 + v8);
      if (vabdd_f64(v3, v9) > 3.14159265)
      {
        if (v9 >= 0.0 || v3 < 0.0)
        {
          if (v3 < 0.0 && v9 >= 0.0)
          {
            v10 = v10 + 6.28318531;
          }
        }

        else
        {
          v10 = v10 + -6.28318531;
        }
      }

      v12 = v3 - v10;
      *v2 = v3 - v10;
      *(v2 + 8) = 0;
      [*&v0[v4] setZRotation_];
      v13 = *&v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angleSpring];
      sub_24A55C6B4(v12);
      *(v13 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
      [v0 setZRotation_];
      v14 = *&v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_headingSpring];
      sub_24A55C6B4(0.0);
      *(v14 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;

      sub_24A51F664(1, v3);
    }
  }
}

uint64_t sub_24A51ED78()
{
  v1 = v0;
  v20 = *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_isPlayingInitialPulse);
  v2 = [*(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode) children];
  sub_24A50D7EC(0, &qword_27EF4F948, 0x277CDCF58);
  v3 = sub_24A62ED64();

  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_24:
    v5 = sub_24A62F464();
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v23 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotCGPathNode;
  v24 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interativeRadiusBeaconNode;
  v25 = v3 & 0xC000000000000001;
  v21 = v5;
  v22 = v1;
LABEL_4:
  if (v6 != v5)
  {
    do
    {
      if (v25)
      {
        v7 = MEMORY[0x24C21ACB0](v6, v3);
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_23;
        }

        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        goto LABEL_6;
      }

      v10 = *(v1 + v24);
      if (!v10)
      {
        goto LABEL_15;
      }

      v11 = v8;
      v12 = v4;
      v13 = v3;
      v14 = v10;
      v15 = sub_24A62F164();

      v1 = v22;
      v3 = v13;
      v4 = v12;
      v5 = v21;
      if (v15)
      {
LABEL_6:
      }

      else
      {
LABEL_15:
        v16 = *(v1 + v23);
        v17 = sub_24A62F164();

        if ((v17 & 1) == 0)
        {
          ++v6;
          if (!__OFADD__(v20++, 1))
          {
            goto LABEL_4;
          }

          __break(1u);
          break;
        }
      }

      ++v6;
    }

    while (v9 != v5);
  }

  return v20;
}

void sub_24A51EF90(char a1, char a2)
{
  if (a1)
  {
    v3 = objc_opt_self();
    v4 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_style];
    v5 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_style + 64];
    v6 = [v3 fadeAlphaTo:*&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_style + 48] duration:v5];
    [v6 setTimingMode_];
    if (v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_hasPlayedInitialPulse])
    {
      v7 = sub_24A51E58C();
      v8 = [v3 scaleTo:v4[4] duration:v5];
      [v8 setTimingMode_];
      sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_24A633810;
      *(v9 + 32) = v6;
      *(v9 + 40) = v8;
      sub_24A50D7EC(0, &unk_27EF4F950, 0x277CDCF30);
      v10 = v6;
      v11 = v8;
      v12 = sub_24A62ED54();

      v13 = [v3 group_];

      [*&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode] addChild_];
      v14 = swift_allocObject();
      *(v14 + 16) = v7;
      v43 = sub_24A520304;
      v44 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = sub_24A5A8458;
      v42 = &unk_285DA1168;
      v15 = _Block_copy(&aBlock);
      v16 = v7;

      [v16 runAction:v13 completion:v15];

      _Block_release(v15);
    }

    else
    {
      v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_hasPlayedInitialPulse] = 1;
      v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_isPlayingInitialPulse] = 1;
      v26 = [v3 scaleTo:v4[4] duration:v5];
      [v26 setTimingMode_];
      sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_24A633810;
      *(v27 + 32) = v6;
      *(v27 + 40) = v26;
      sub_24A50D7EC(0, &unk_27EF4F950, 0x277CDCF30);
      v28 = v6;
      v29 = v26;
      v30 = sub_24A62ED54();

      v31 = [v3 group_];

      v32 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotCGPathNode];
      v33 = swift_allocObject();
      *(v33 + 16) = v2;
      v43 = sub_24A520284;
      v44 = v33;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = sub_24A5A8458;
      v42 = &unk_285DA1118;
      v34 = _Block_copy(&aBlock);
      v35 = v32;
      v36 = v2;

      [v35 runAction:v31 completion:v34];

      _Block_release(v34);
    }
  }

  else if ((a2 & 1) == 0)
  {
    aBlock = MEMORY[0x277D84F90];
    v17 = [*&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode] children];
    sub_24A50D7EC(0, &qword_27EF4F948, 0x277CDCF58);
    v18 = sub_24A62ED64();

    v19 = v2;
    sub_24A52003C(v18, v19, &aBlock);

    v20 = aBlock;
    if (aBlock >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A62F464())
    {
      v22 = 0;
      while (1)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x24C21ACB0](v22, v20);
        }

        else
        {
          if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v23 = *(v20 + 8 * v22 + 32);
        }

        v24 = v23;
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        [v23 removeFromParent];

        ++v22;
        if (v25 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_19:
    v37 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_isPlayingInitialPulse;
    if (v19[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_isPlayingInitialPulse] == 1)
    {
      v38 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotCGPathNode;
      [*&v19[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotCGPathNode] removeAllActions];
      [*&v19[v38] setScale_];
      [*&v19[v38] setAlpha_];
    }

    v19[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_hasPlayedInitialPulse] = 0;
    v19[v37] = 0;
  }
}

void sub_24A51F53C(char a1, double a2)
{
  v3 = v2;
  v5 = v2 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScale;
  *v5 = a2;
  *(v5 + 8) = 0;
  if ((a1 & 1) != 0 && (v6 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScaleSpring), v7 = v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s, swift_beginAccess(), *(v7 + 280) + *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40) != 1.79769313e308))
  {
    v10 = v6 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
    *v10 = a2;
    *(v10 + 8) = 0;
    sub_24A5B18FC();
  }

  else
  {
    v8 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScaleSpring);
    sub_24A55C6B4(a2);
    *(v8 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v9 = v3 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDotScale;
    *v9 = a2;
    *(v9 + 8) = 0;
    [*(v3 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode) setScale_];
  }
}

void sub_24A51F664(char a1, double a2)
{
  v3 = v2;
  v5 = v2 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angle;
  *v5 = a2;
  *(v5 + 8) = 0;
  if ((a1 & 1) != 0 && (v6 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angleSpring), v7 = v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s, swift_beginAccess(), *(v7 + 280) + *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40) != 1.79769313e308))
  {
    v10 = v6 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
    *v10 = a2;
    *(v10 + 8) = 0;
    sub_24A5B18FC();
  }

  else
  {
    v8 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angleSpring);
    sub_24A55C6B4(a2);
    *(v8 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v9 = v3 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedAngle;
    *v9 = a2;
    *(v9 + 8) = 0;
    if (!*(v3 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction))
    {
      [*(v3 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_gimbalNode) setZRotation_];
    }
  }
}

void sub_24A51F790(char a1, double a2, double a3)
{
  v4 = v3;
  v7 = &v3[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_offset];
  *v7 = a2;
  v7[1] = a3;
  *(v7 + 16) = 0;
  if ((a1 & 1) == 0 || (v8 = *&v3[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_xOffsetSpring], v9 = v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s, swift_beginAccess(), *(v9 + 280) + *(v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40) == 1.79769313e308) || (v10 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_yOffsetSpring, v11 = *&v4[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_yOffsetSpring], v12 = v11 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s, swift_beginAccess(), *(v12 + 280) + *(v11 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40) == 1.79769313e308))
  {
    v13 = *&v4[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_xOffsetSpring];
    sub_24A55C6B4(a2);
    *(v13 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v14 = *&v4[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_yOffsetSpring];
    sub_24A55C6B4(a3);
    *(v14 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v15 = &v4[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedOffset];
    *v15 = a2;
    v15[1] = a3;
    *(v15 + 16) = 0;
    [v4 setPosition_];
  }

  else
  {
    v16 = v8 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
    *v16 = a2;
    *(v16 + 8) = 0;
    sub_24A5B18FC();
    v17 = *&v4[v10] + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
    *v17 = a3;
    *(v17 + 8) = 0;
    sub_24A5B18FC();
  }
}

double sub_24A51F940(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_headingSpring);
  v4 = v3 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
  swift_beginAccess();
  v5 = v3 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o;
  v6 = *(v3 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
  v7 = *(v4 + 280) + v6;
  v8 = v7 + a1;
  if (v7 == 1.79769313e308)
  {
    sub_24A55C6B4(v8);
    *(v3 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v6 = *(v5 + 40);
  }

  result = v8 - v6;
  *(v4 + 280) = result;
  *(v4 + 240) = result;
  *(v4 + 248) = 0;
  return result;
}

id sub_24A51FA00(id result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interactiveAngleFactor;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  if ((a2 & 1) == 0 && (*(v2 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angle + 8) & 1) == 0)
  {
    v4 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angle);
    v5 = *&result;
    v6 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angleSpring);
    v7 = (v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
    result = swift_beginAccess();
    v8 = *v7 + *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
    if (vabdd_f64(v7[35] + *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v8) <= *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
    {
      v8 = v7[35] + *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
    }

    v9 = v2 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedAngle;
    *v9 = v4 * v5 + (1.0 - v5) * v8;
    *(v9 + 8) = 0;
    if (!*(v2 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction))
    {
      return [*(v2 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_gimbalNode) setZRotation_];
    }
  }

  return result;
}

void sub_24A51FB30(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v5 = v3 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_radiusFactor;
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  if (a2)
  {
    v6 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interativeRadiusBeaconNode;
    v7 = *(v4 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interativeRadiusBeaconNode);
    if (v7)
    {
      [v7 removeFromParent];
      v8 = *(v4 + v6);
    }

    else
    {
      v8 = 0;
    }

    *(v4 + v6) = 0;

    v19 = *(v4 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_radiusFactorSpring);
    sub_24A55C6B4(0.0);
    *(v19 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v20 = v4 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedRadiusFactor;
    *v20 = 0;
    *(v20 + 8) = 1;
  }

  else
  {
    v9 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interativeRadiusBeaconNode;
    if (!*(v3 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interativeRadiusBeaconNode))
    {
      v10 = a1;
      v11 = a3;
      v12 = sub_24A51E58C();
      v13 = *(v3 + v9);
      *(v3 + v9) = v12;
      v14 = v12;

      v15 = v14;
      v16 = sub_24A62EBE4();
      [v15 setName_];

      [*(v4 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode) addChild_];
      a3 = v11;
      a1 = v10;
    }

    v17 = *(v4 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_radiusFactorSpring);
    if (a3)
    {
      v18 = v17 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
      *v18 = a1;
      *(v18 + 8) = 0;
      sub_24A5B18FC();
    }

    else
    {
      sub_24A55C6B4(*&a1);
      *(v17 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    }
  }
}

void sub_24A51FCF4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_renderingColor);
}

id sub_24A51FE38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPFSKPeripheralDotNode();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24A52003C(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A62F464())
  {
    v5 = 0;
    v20 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotCGPathNode;
    v21 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interativeRadiusBeaconNode;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C21ACB0](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (!v9)
      {
        goto LABEL_6;
      }

      v10 = v9;
      v11 = *(a2 + v21);
      if (!v11)
      {
        v15 = v7;
LABEL_16:
        v16 = *(a2 + v20);
        sub_24A50D7EC(0, &qword_27EF4F948, 0x277CDCF58);
        v17 = v16;
        v18 = sub_24A62F164();

        if ((v18 & 1) == 0)
        {
          [v10 removeAllActions];
          MEMORY[0x24C21A660](v7);
          if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24A62ED84();
          }

          sub_24A62EDA4();
        }

        goto LABEL_5;
      }

      sub_24A50D7EC(0, &qword_27EF4F948, 0x277CDCF58);
      v12 = v7;
      v13 = v11;
      v14 = sub_24A62F164();

      if ((v14 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_5:

LABEL_6:
      ++v5;
      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }
}

uint64_t sub_24A52024C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_24A520284()
{
  v1 = *(v0 + 16);
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_isPlayingInitialPulse) = 0;
  v2 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotCGPathNode;
  [*(v1 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotCGPathNode) setScale_];
  v3 = *(v1 + v2);

  return [v3 setAlpha_];
}

uint64_t sub_24A5202EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A520314()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_24A520364()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_gimbalNode;
  v2 = type metadata accessor for FMPFSKNode();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v3 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskNode;
  *(v0 + v3) = [objc_allocWithZone(v2) init];
  v4 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode;
  *(v0 + v4) = [objc_allocWithZone(v2) init];
  v5 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotCGPathNode;
  type metadata accessor for FMPFSKSpriteNode();
  *(v0 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interativeRadiusBeaconNode) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_isPlayingInitialPulse) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_hasPlayedInitialPulse) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyDiskRadius) = 1;
  v6 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadius;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDiskRadius;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyDotScale) = 1;
  v8 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScale;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDotScale;
  *v9 = 0;
  *(v9 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyAngle) = 1;
  v10 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angle;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedAngle;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyOpacity) = 1;
  v12 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_opacity;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedOpacity;
  *v13 = 0;
  *(v13 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyBrightness) = 1;
  v14 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_brightness;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedBrightness;
  *v15 = 0;
  *(v15 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyOffset) = 1;
  v16 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_offset;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  v17 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedOffset;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedAbsoluteHeading) = 0;
  v18 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interactiveAngleFactor;
  *v18 = 0;
  *(v18 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyRadiusFactor) = 1;
  v19 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_radiusFactor;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedRadiusFactor;
  *v20 = 0;
  *(v20 + 8) = 1;
  sub_24A62F444();
  __break(1u);
}

uint64_t FMItemActionStatus.description.getter()
{
  v1 = *v0;
  v2 = 0x726F727265;
  v3 = 0x73736563637573;
  v4 = 0x676E69646E6570;
  if (v1 != 3)
  {
    v4 = 0x64656C696166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

FMFindingUI::FMItemActionStatus_optional __swiftcall FMItemActionStatus.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 199)
  {
    if (rawValue == -1)
    {
      *v1 = 0;
      return rawValue;
    }

    if (!rawValue)
    {
      *v1 = 1;
      return rawValue;
    }

LABEL_12:
    *v1 = 5;
    return rawValue;
  }

  if (rawValue == 500)
  {
    *v1 = 4;
    return rawValue;
  }

  if (rawValue == 205)
  {
    *v1 = 3;
    return rawValue;
  }

  if (rawValue != 200)
  {
    goto LABEL_12;
  }

  *v1 = 2;
  return rawValue;
}

uint64_t sub_24A52077C()
{
  v1 = *v0;
  sub_24A62F714();
  MEMORY[0x24C21B040](qword_24A634A18[v1]);
  return sub_24A62F754();
}

uint64_t sub_24A520804()
{
  v1 = *v0;
  sub_24A62F714();
  MEMORY[0x24C21B040](qword_24A634A18[v1]);
  return sub_24A62F754();
}

unint64_t sub_24A520874()
{
  result = qword_27EF4F960;
  if (!qword_27EF4F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F960);
  }

  return result;
}

uint64_t sub_24A5208C8()
{
  v1 = *v0;
  v2 = 0x726F727265;
  v3 = 0x73736563637573;
  v4 = 0x676E69646E6570;
  if (v1 != 3)
  {
    v4 = 0x64656C696166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for FMItemActionStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMItemActionStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_24A520AAC(void *a1)
{
  v21 = a1;
  v19 = sub_24A62F004();
  v1 = *(v19 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v19);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A62EFD4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_24A62EAD4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v18[1] = sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  sub_24A62EAB4();
  v22 = MEMORY[0x277D84F90];
  sub_24A523864(&unk_27EF4F9E0, MEMORY[0x277D85230]);
  sub_24A508FA4(&unk_27EF50240, &unk_24A634A08);
  sub_24A5238AC(&qword_27EF4F9F0, &unk_27EF50240, &unk_24A634A08);
  sub_24A62F254();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v19);
  v9 = v20;
  v9[3] = sub_24A62F044();
  v9[4] = MEMORY[0x277D84F90];
  swift_unknownObjectWeakInit();
  v10 = v21;
  v9[2] = v21;
  v11 = qword_27EF4E998;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = sub_24A62E314();
  sub_24A506EB8(v13, qword_27EF5C100);
  v14 = sub_24A62E2F4();
  v15 = sub_24A62EF64();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_24A503000, v14, v15, "☎︎ FMIPConnectionManager: initialized", v16, 2u);
    MEMORY[0x24C21BBE0](v16, -1, -1);
  }

  return v9;
}

uint64_t sub_24A520DF4()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_24A62F094();
    swift_unknownObjectRelease();
  }

  v1 = *(v0 + 32);

  sub_24A52358C(v0 + 40);

  return swift_deallocClassInstance();
}

void sub_24A520E94(uint64_t a1, char a2, void (*a3)(void), uint64_t a4)
{
  if (a2)
  {
    v7 = v4;
    if (qword_27EF4E998 != -1)
    {
      swift_once();
    }

    v8 = sub_24A62E314();
    sub_24A506EB8(v8, qword_27EF5C100);
    v9 = sub_24A62E2F4();
    v10 = sub_24A62EF64();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24A503000, v9, v10, "☎︎ FMIPConnectionManager: connect", v11, 2u);
      MEMORY[0x24C21BBE0](v11, -1, -1);
    }

    v12 = objc_opt_self();
    v13 = sub_24A62E1D4();
    v14 = [v12 connectToBeaconUUID_];

    v15 = [*(v7 + 16) executeCommand_];
    v16 = *(v7 + 24);
    v17 = swift_allocObject();
    *(v17 + 16) = v7;
    *(v17 + 24) = v15;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_24A523464;
    *(v18 + 24) = v17;
    v37 = sub_24A517E48;
    v38 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = sub_24A592ED8;
    v36 = &unk_285DA1310;
    v19 = _Block_copy(&aBlock);

    v20 = v15;

    dispatch_sync(v16, v19);
    _Block_release(v19);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if ((v16 & 1) == 0)
    {
      v21 = swift_allocObject();
      *(v21 + 16) = 1;
      *(v21 + 24) = v7;
      *(v21 + 32) = v20;
      *(v21 + 40) = a3;
      *(v21 + 48) = a4;
      v37 = sub_24A523498;
      v38 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v34 = 1107296256;
      v35 = sub_24A521AA4;
      v36 = &unk_285DA1360;
      v22 = _Block_copy(&aBlock);

      v23 = v20;
      sub_24A5173CC(a3);

      v24 = [v23 addFailureBlock_];
      _Block_release(v22);

      v25 = swift_allocObject();
      *(v25 + 16) = 1;
      *(v25 + 24) = v7;
      *(v25 + 32) = v23;
      *(v25 + 40) = a3;
      *(v25 + 48) = a4;
      v37 = sub_24A523500;
      v38 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v34 = 1107296256;
      v35 = sub_24A521F78;
      v36 = &unk_285DA13B0;
      v26 = _Block_copy(&aBlock);

      v27 = v23;
      sub_24A5173CC(a3);

      v28 = [v27 addSuccessBlock_];

      _Block_release(v26);

      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (qword_27EF4E998 != -1)
  {
LABEL_15:
    swift_once();
  }

  v29 = sub_24A62E314();
  sub_24A506EB8(v29, qword_27EF5C100);
  v30 = sub_24A62E2F4();
  v31 = sub_24A62EF64();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_24A503000, v30, v31, "☎︎ FMIPConnectionManager: disconnect is not supported on this platform!", v32, 2u);
    MEMORY[0x24C21BBE0](v32, -1, -1);
  }

  if (a3)
  {
    a3(0);
  }
}

uint64_t sub_24A521398(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = a2;
  MEMORY[0x24C21A660]();
  if (*((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v6 = *((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_24A62ED84();
  }

  sub_24A62EDA4();
  return swift_endAccess();
}

uint64_t sub_24A521440(void *a1, char a2, uint64_t a3, void *a4, uint64_t (*a5)(void *), uint64_t a6)
{
  v45 = a6;
  v48 = a5;
  v10 = sub_24A62EA94();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A62EAD4();
  v46 = *(v15 - 8);
  v47 = v15;
  v16 = *(v46 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF4E998 != -1)
  {
    swift_once();
  }

  v19 = sub_24A62E314();
  sub_24A506EB8(v19, qword_27EF5C100);
  v20 = a1;
  v21 = sub_24A62E2F4();
  v22 = sub_24A62EF64();

  v23 = os_log_type_enabled(v21, v22);
  v44 = a1;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v43 = v11;
    v25 = v24;
    v26 = swift_slowAlloc();
    v41 = a3;
    v27 = v26;
    v50 = v26;
    *v25 = 136315394;
    if (a2)
    {
      v28 = 0x7463656E6E6F63;
    }

    else
    {
      v28 = 0x656E6E6F63736964;
    }

    if (a2)
    {
      v29 = 0xE700000000000000;
    }

    else
    {
      v29 = 0xEA00000000007463;
    }

    v30 = sub_24A509BA8(v28, v29, &v50);
    v42 = v10;
    v31 = a4;
    v32 = v30;

    *(v25 + 4) = v32;
    *(v25 + 12) = 2080;
    aBlock = 0;
    v52 = 0xE000000000000000;
    v49 = a1;
    sub_24A508FA4(&unk_27EF4F990, &unk_24A6349E0);
    sub_24A62F434();
    v33 = sub_24A509BA8(aBlock, v52, &v50);

    *(v25 + 14) = v33;
    a4 = v31;
    v10 = v42;
    _os_log_impl(&dword_24A503000, v21, v22, "☎︎ FMIPConnectionManager: %s action failed %s", v25, 0x16u);
    swift_arrayDestroy();
    v34 = v27;
    a3 = v41;
    MEMORY[0x24C21BBE0](v34, -1, -1);
    v35 = v25;
    v11 = v43;
    MEMORY[0x24C21BBE0](v35, -1, -1);
  }

  v36 = *(a3 + 24);
  v37 = swift_allocObject();
  *(v37 + 16) = a3;
  *(v37 + 24) = a4;
  v55 = sub_24A523924;
  v56 = v37;
  aBlock = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v53 = sub_24A5A8458;
  v54 = &unk_285DA1450;
  v38 = _Block_copy(&aBlock);

  v39 = a4;
  sub_24A62EAB4();
  v50 = MEMORY[0x277D84F90];
  sub_24A523864(&qword_27EF4F970, MEMORY[0x277D85198]);
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A5238AC(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30);
  sub_24A62F254();
  MEMORY[0x24C21A950](0, v18, v14, v38);
  _Block_release(v38);
  (*(v11 + 8))(v14, v10);
  (*(v46 + 8))(v18, v47);

  if (v48)
  {
    return v48(v44);
  }

  return result;
}

unint64_t sub_24A521908(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_24A62F464();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x24C21ACB0](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_24A508FA4(&qword_27EF4F988, &qword_24A6349D8);
    v8 = sub_24A62F164();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_24A521A14(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_24A5EB5C8(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_24A521AAC(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v34 = a6;
  v38 = a5;
  v9 = sub_24A62EA94();
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A62EAD4();
  v35 = *(v13 - 8);
  v36 = v13;
  v14 = *(v35 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF4E998 != -1)
  {
    swift_once();
  }

  v17 = sub_24A62E314();
  sub_24A506EB8(v17, qword_27EF5C100);
  v18 = sub_24A62E2F4();
  v19 = sub_24A62EF64();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v33 = a4;
    v22 = v21;
    aBlock[0] = v21;
    *v20 = 136315138;
    if (a2)
    {
      v23 = 0x7463656E6E6F63;
    }

    else
    {
      v23 = 0x656E6E6F63736964;
    }

    if (a2)
    {
      v24 = 0xE700000000000000;
    }

    else
    {
      v24 = 0xEA00000000007463;
    }

    v25 = sub_24A509BA8(v23, v24, aBlock);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_24A503000, v18, v19, "☎︎ FMIPConnectionManager: %s action succeeded", v20, 0xCu);
    sub_24A508C54(v22);
    v26 = v22;
    a4 = v33;
    MEMORY[0x24C21BBE0](v26, -1, -1);
    MEMORY[0x24C21BBE0](v20, -1, -1);
  }

  v27 = *(a3 + 24);
  v28 = swift_allocObject();
  *(v28 + 16) = a3;
  *(v28 + 24) = a4;
  aBlock[4] = sub_24A523530;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA1400;
  v29 = _Block_copy(aBlock);

  v30 = a4;
  sub_24A62EAB4();
  v39 = MEMORY[0x277D84F90];
  sub_24A523864(&qword_27EF4F970, MEMORY[0x277D85198]);
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A5238AC(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30);
  sub_24A62F254();
  MEMORY[0x24C21A950](0, v16, v12, v29);
  _Block_release(v29);
  (*(v37 + 8))(v12, v9);
  (*(v35 + 8))(v16, v36);

  if (v38)
  {
    return v38(0);
  }

  return result;
}

void sub_24A521ED4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 32);

  v5 = sub_24A521908(a2, v4);
  LOBYTE(a2) = v6;

  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    v7 = sub_24A521A14(v5);
    swift_endAccess();
  }
}

void sub_24A521F80(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_24A521FEC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_24A62EA94();
  v94 = *(v6 - 8);
  v95 = v6;
  v7 = *(v94 + 64);
  MEMORY[0x28223BE20](v6);
  v92 = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_24A62EAD4();
  v91 = *(v93 - 8);
  v9 = *(v91 + 64);
  MEMORY[0x28223BE20](v93);
  v90 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_24A62EA74();
  v89 = *(v85 - 8);
  v11 = *(v89 + 64);
  MEMORY[0x28223BE20](v85);
  v87 = (v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = sub_24A62EAF4();
  v86 = *(v88 - 8);
  v13 = *(v86 + 64);
  MEMORY[0x28223BE20](v88);
  v84 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_24A62F064();
  v80 = *(v81 - 8);
  v15 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v79 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v74 - v19;
  v21 = sub_24A62E214();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v83 = v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v25;
  MEMORY[0x28223BE20](v24);
  v96 = v74 - v26;
  if (qword_27EF4E998 != -1)
  {
    swift_once();
  }

  v27 = sub_24A62E314();
  v28 = sub_24A506EB8(v27, qword_27EF5C100);

  v29 = sub_24A62E2F4();
  v30 = sub_24A62EF64();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v78 = v28;
    v32 = v31;
    v33 = v22;
    v34 = v21;
    v35 = a3;
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v32 = 136315138;
    *(v32 + 4) = sub_24A509BA8(a1, a2, aBlock);
    _os_log_impl(&dword_24A503000, v29, v30, "☎︎ FMIPConnectionManager: performing connect %s", v32, 0xCu);
    sub_24A508C54(v36);
    v37 = v36;
    a3 = v35;
    v21 = v34;
    v22 = v33;
    MEMORY[0x24C21BBE0](v37, -1, -1);
    MEMORY[0x24C21BBE0](v32, -1, -1);
  }

  sub_24A62E1B4();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_24A5235B4(v20);
    v38 = sub_24A62E2F4();
    v39 = sub_24A62EF64();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_24A503000, v38, v39, "☎︎ FMIPConnectionManager: cannot connect for item with an invalid identifier", v40, 2u);
      MEMORY[0x24C21BBE0](v40, -1, -1);
    }

    sub_24A508FA4(&qword_27EF4F9A0, &unk_24A6349F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A633830;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    sub_24A52361C();
    v42 = swift_allocError();

    v43 = v42;
    v44 = sub_24A62E2F4();
    v45 = sub_24A62EF64();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      aBlock[0] = v47;
      *v46 = 136315138;
      aBlock[6] = v42;
      v48 = v42;
      sub_24A508FA4(&qword_27EF4F9B0, qword_24A6389A0);
      v49 = sub_24A62EC44();
      v51 = sub_24A509BA8(v49, v50, aBlock);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_24A503000, v44, v45, "FMItemsActionController: Connect completed with error? %s", v46, 0xCu);
      sub_24A508C54(v47);
      MEMORY[0x24C21BBE0](v47, -1, -1);
      MEMORY[0x24C21BBE0](v46, -1, -1);
    }
  }

  else
  {
    v77 = a1;
    v78 = a2;
    v53 = *(v22 + 32);
    v76 = v21;
    v75 = v53;
    v53(v96, v20, v21);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_24A62F094();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectWeakAssign();
    sub_24A50D7EC(0, &qword_27EF4F9B8, 0x277D85CA0);
    sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
    v54 = sub_24A62F014();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A523864(&qword_27EF4F9C8, MEMORY[0x277D85278]);
    v55 = a3;
    sub_24A508FA4(&qword_27EF4F9D0, &qword_24A634A00);
    sub_24A5238AC(&qword_27EF4F9D8, &qword_27EF4F9D0, &qword_24A634A00);
    v56 = v79;
    v57 = v81;
    sub_24A62F254();
    sub_24A62F074();

    (*(v80 + 8))(v56, v57);
    v74[1] = v55;
    swift_unknownObjectWeakAssign();
    ObjectType = swift_getObjectType();
    v59 = v84;
    sub_24A62EAE4();
    v60 = v87;
    *v87 = 0;
    v61 = v89;
    v62 = v85;
    (*(v89 + 104))(v60, *MEMORY[0x277D85168], v85);
    MEMORY[0x24C21A9F0](v59, v60, ObjectType, 30.0);
    (*(v61 + 8))(v60, v62);
    (*(v86 + 8))(v59, v88);
    v63 = swift_allocObject();
    swift_weakInit();
    v64 = v83;
    v65 = v96;
    v66 = v76;
    (*(v22 + 16))(v83, v96, v76);
    v67 = (*(v22 + 80) + 24) & ~*(v22 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = v63;
    v75(v68 + v67, v64, v66);
    aBlock[4] = sub_24A523798;
    aBlock[5] = v68;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA14F0;
    v69 = _Block_copy(aBlock);

    v70 = v22;
    v71 = v90;
    sub_24A62EAB4();
    v72 = v92;
    sub_24A522CC8();
    sub_24A62F084();
    _Block_release(v69);
    (*(v94 + 8))(v72, v95);
    (*(v91 + 8))(v71, v93);

    sub_24A62F0A4();
    v73 = swift_allocObject();
    v73[2] = sub_24A5A8970;
    v73[3] = 0;
    v73[4] = v77;
    v73[5] = v78;

    sub_24A520E94(v65, 1, sub_24A52383C, v73);
    swift_unknownObjectRelease();

    return (*(v70 + 8))(v65, v66);
  }
}

uint64_t sub_24A522B98(uint64_t a1, uint64_t a2)
{
  if (qword_27EF4E998 != -1)
  {
    swift_once();
  }

  v3 = sub_24A62E314();
  sub_24A506EB8(v3, qword_27EF5C100);
  v4 = sub_24A62E2F4();
  v5 = sub_24A62EF64();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24A503000, v4, v5, "☎︎ FMIPConnectionManager: connect re-scheduled", v6, 2u);
    MEMORY[0x24C21BBE0](v6, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24A520E94(a2, 1, 0, 0);
  }

  return result;
}

uint64_t sub_24A522CC8()
{
  sub_24A62EA94();
  sub_24A523864(&qword_27EF4F970, MEMORY[0x277D85198]);
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A5238AC(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30);
  return sub_24A62F254();
}

uint64_t sub_24A522DA0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v43 - v8;
  v10 = sub_24A62E214();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF4E998 != -1)
  {
    swift_once();
  }

  v15 = sub_24A62E314();
  v16 = sub_24A506EB8(v15, qword_27EF5C100);

  v43[1] = v16;
  v17 = sub_24A62E2F4();
  v18 = sub_24A62EF64();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v43[0] = a3;
    v20 = a1;
    v21 = v19;
    v22 = v14;
    v23 = swift_slowAlloc();
    v44 = v23;
    *v21 = 136315138;
    *(v21 + 4) = sub_24A509BA8(v20, a2, &v44);
    _os_log_impl(&dword_24A503000, v17, v18, "☎︎ FMIPConnectionManager: performing disconnect %s", v21, 0xCu);
    sub_24A508C54(v23);
    v24 = v23;
    v14 = v22;
    MEMORY[0x24C21BBE0](v24, -1, -1);
    v25 = v21;
    a1 = v20;
    MEMORY[0x24C21BBE0](v25, -1, -1);
  }

  sub_24A62E1B4();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24A5235B4(v9);
    v26 = sub_24A62E2F4();
    v27 = sub_24A62EF64();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_24A503000, v26, v27, "☎︎ FMIPConnectionManager: cannot disconnect for item with an invalid identifier", v28, 2u);
      MEMORY[0x24C21BBE0](v28, -1, -1);
    }

    sub_24A508FA4(&qword_27EF4F9A0, &unk_24A6349F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A633830;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    sub_24A52361C();
    v30 = swift_allocError();

    v31 = v30;
    v32 = sub_24A62E2F4();
    v33 = sub_24A62EF64();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v43[2] = v30;
      v44 = v35;
      *v34 = 136315138;
      v36 = v30;
      sub_24A508FA4(&qword_27EF4F9B0, qword_24A6389A0);
      v37 = sub_24A62EC44();
      v39 = sub_24A509BA8(v37, v38, &v44);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_24A503000, v32, v33, "FMItemsActionController: Disconnect completed with error? %s", v34, 0xCu);
      sub_24A508C54(v35);
      MEMORY[0x24C21BBE0](v35, -1, -1);
      MEMORY[0x24C21BBE0](v34, -1, -1);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_24A62F094();
      swift_unknownObjectRelease();
      (*(v11 + 8))(v14, v10);
      return swift_unknownObjectWeakAssign();
    }

    else
    {
      v41 = v14;
      v42 = swift_allocObject();
      v42[2] = sub_24A5A8C54;
      v42[3] = 0;
      v42[4] = a1;
      v42[5] = a2;

      sub_24A520E94(v41, 0, sub_24A523674, v42);

      return (*(v11 + 8))(v41, v10);
    }
  }
}

uint64_t sub_24A5232D8(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if (a1)
  {
    v17 = 4;
    sub_24A508FA4(&qword_27EF4F9A0, &unk_24A6349F0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_24A633830;
    *(v10 + 32) = a4;
    *(v10 + 40) = a5;

    a2(&v17, v10, a1);
  }

  else
  {
    if (qword_27EF4E998 != -1)
    {
      swift_once();
    }

    v13 = sub_24A62E314();
    sub_24A506EB8(v13, qword_27EF5C100);
    v14 = sub_24A62E2F4();
    v15 = sub_24A62EF64();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24A503000, v14, v15, a6, v16, 2u);
      MEMORY[0x24C21BBE0](v16, -1, -1);
    }

    v18 = 2;
    return (a2)(&v18, 0, 0);
  }
}

uint64_t sub_24A52347C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A5234B0()
{
  v1 = *(v0 + 24);

  if (*(v0 + 40))
  {
    v2 = *(v0 + 48);
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A52354C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A5235B4(uint64_t a1)
{
  v2 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24A52361C()
{
  result = qword_27EF4F9A8;
  if (!qword_27EF4F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F9A8);
  }

  return result;
}

uint64_t sub_24A52369C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A5236D4()
{
  v1 = sub_24A62E214();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24A523798()
{
  v1 = *(sub_24A62E214() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_24A522B98(v2, v3);
}

uint64_t sub_24A5237FC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A523864(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A5238AC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A50E1E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_24A52399C(__int16 *a1, __int128 *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v63 = a3;
  v51 = *a1;
  v8 = a2[5];
  v61[4] = a2[4];
  v61[5] = v8;
  v61[6] = a2[6];
  v62 = *(a2 + 14);
  v9 = a2[1];
  v61[0] = *a2;
  v61[1] = v9;
  v10 = a2[3];
  v61[2] = a2[2];
  v61[3] = v10;
  v11 = &v4[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  v11[100] = 0;
  *(v11 + 24) = 0x4000000;
  v12 = &v4[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_estimate];
  *(v11 + 4) = 0u;
  *(v11 + 5) = 0u;
  v13 = type metadata accessor for FindingEstimate(0);
  v14 = v13[5];
  v15 = sub_24A508FA4(&qword_27EF4FE50, &qword_24A634BB0);
  (*(*(v15 - 8) + 56))(v12 + v14, 1, 1, v15);
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v12 + v13[6]) = 0;
  *(v12 + v13[7]) = 5;
  v16 = v12 + v13[8];
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = MEMORY[0x277D84F90];
  v49 = OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_rangeHistory;
  *&v5[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_rangeHistory] = MEMORY[0x277D84F90];
  v50 = OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_angleHistory;
  *&v5[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_angleHistory] = v17;
  v18 = &v5[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_hapticsController];
  v19 = type metadata accessor for VFXManager(0);
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  v20 = a4;

  v21 = sub_24A584564(0xD000000000000013, 0x800000024A63E640);
  if (v21)
  {
    v22 = v21;
    v53[0] = v51;
    v23 = a2[5];
    v58 = a2[4];
    v59[0] = v23;
    v59[1] = a2[6];
    v60 = *(a2 + 14);
    v24 = a2[1];
    v54 = *a2;
    v55 = v24;
    v25 = a2[3];
    v56 = a2[2];
    v57 = v25;
    v26 = *(v19 + 48);
    v27 = *(v19 + 52);
    swift_allocObject();
    v28 = sub_24A584E98(v22, v53, &v54, v20);
    type metadata accessor for FMR1WKRotationModel();
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    *(v29 + 32) = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
    *(v29 + 40) = 0;
    *(v29 + 48) = 1;
    *&v5[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_rotationModel] = v29;
    v30 = v63;
    *&v5[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_arSession] = v63;
    *(v29 + 16) = v28;
    *&v5[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_vfxManager] = v28;
    v31 = (v51 >> 13) & 3;

    if (v31)
    {
      v32 = v18;
      if (v31 == 1)
      {
        v33 = (v51 >> 8) & 0x9F;
      }

      else if ((v51 & 0x80000000) != 0)
      {
        v33 = (v51 >> 8) & 0x1F;
      }

      else
      {
        v33 = v51;
      }
    }

    else
    {
      v33 = BYTE1(v51);
      v32 = v18;
    }

    v5[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_threshold] = v33 == 2;
    v42 = type metadata accessor for FMR1HapticsController();
    v43 = objc_allocWithZone(v42);
    v44 = v30;

    v45 = [v43 init];
    *(&v55 + 1) = v42;
    *&v56 = &off_285DA5E60;
    *&v54 = v45;
    swift_beginAccess();
    sub_24A529578(&v54, v32, &qword_27EF4FA70, &unk_24A634CE0);
    swift_endAccess();
    v52.receiver = v5;
    v52.super_class = type metadata accessor for PrecisionVFXViewController();
    v46 = objc_msgSendSuper2(&v52, sel_initWithNibName_bundle_, 0, 0);
    v47 = *&v46[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_vfxManager];
    v5 = v46;

    sub_24A58384C();
  }

  else
  {

    sub_24A5294D0(v61);
    sub_24A529524();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();

    v35 = *(v11 + 5);
    v58 = *(v11 + 4);
    v59[0] = v35;
    *(v59 + 13) = *(v11 + 93);
    v36 = *(v11 + 1);
    v54 = *v11;
    v55 = v36;
    v37 = *(v11 + 3);
    v56 = *(v11 + 2);
    v57 = v37;
    sub_24A517ABC(&v54);
    sub_24A529278(v12, type metadata accessor for FindingEstimate);
    v38 = *&v5[v49];

    v39 = *&v5[v50];

    sub_24A50D6A4(v18, &qword_27EF4FA70, &unk_24A634CE0);
    type metadata accessor for PrecisionVFXViewController();
    v40 = *((*MEMORY[0x277D85000] & *v5) + 0x30);
    v41 = *((*MEMORY[0x277D85000] & *v5) + 0x34);
    swift_deallocPartialClassInstance();
  }

  return v5;
}

void sub_24A523EC8()
{
  v1 = sub_24A508FA4(&qword_27EF4FA88, &qword_24A634D48);
  v2 = *(v1 - 8);
  v80 = v1;
  v81 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v75 - v4;
  v6 = sub_24A508FA4(&qword_27EF4FA90, &qword_24A634D50);
  v7 = *(v6 - 8);
  v83 = v6;
  v84 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v78 = &v75 - v9;
  v79 = sub_24A508FA4(&qword_27EF4FA98, &qword_24A634D58);
  v86 = *(v79 - 8);
  v10 = *(v86 + 64);
  v11 = MEMORY[0x28223BE20](v79);
  v82 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v85 = &v75 - v13;
  v14 = type metadata accessor for VFXManager(0);
  sub_24A52941C(&qword_27EF4F438, type metadata accessor for VFXManager);
  v15 = sub_24A62E474();
  v17 = v16;
  v77 = type metadata accessor for PFAnimationCoordinator();
  sub_24A52941C(&qword_27EF4F440, type metadata accessor for PFAnimationCoordinator);
  v18 = sub_24A62E474();
  v88 = v15;
  v89 = v17;
  v90 = v18;
  v91 = v19;
  v76 = v0;
  v20 = *&v0[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_vfxManager];
  v21 = sub_24A52908C();
  v22 = sub_24A52941C(&qword_27EF4FAA8, type metadata accessor for VFXManager);
  sub_24A62E7D4();

  sub_24A5843A4();
  v88 = &type metadata for PFContentView;
  v89 = v14;
  v90 = v21;
  v91 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = sub_24A52941C(&qword_27EF4FAB0, type metadata accessor for PFAnimationCoordinator);
  v26 = v77;
  v25 = v78;
  v27 = v80;
  sub_24A62E7D4();

  (*(v81 + 8))(v5, v27);
  sub_24A584370();
  type metadata accessor for VFXManager.Values(0);
  v88 = v27;
  v89 = v26;
  v28 = v79;
  v90 = OpaqueTypeConformance2;
  v91 = v24;
  swift_getOpaqueTypeConformance2();
  sub_24A52941C(&qword_27EF4FAB8, type metadata accessor for VFXManager.Values);
  v29 = v85;
  v30 = v83;
  sub_24A62E7D4();

  (*(v84 + 8))(v25, v30);
  (*(v86 + 16))(v82, v29, v28);
  v31 = objc_allocWithZone(sub_24A508FA4(&qword_27EF4FAC0, &unk_24A634D60));
  v32 = sub_24A62E534();
  v33 = [v32 view];
  if (!v33)
  {
    __break(1u);
    goto LABEL_15;
  }

  v34 = v33;
  v35 = [objc_opt_self() redColor];
  [v34 setBackgroundColor_];

  v36 = v76;
  [v76 addChildViewController_];
  v37 = [v36 view];
  if (!v37)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v38 = v37;
  v39 = [v32 view];
  if (!v39)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v40 = v39;
  [v38 addSubview_];

  [v32 didMoveToParentViewController_];
  v41 = [v32 view];
  if (!v41)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v42 = v41;
  [v41 setTranslatesAutoresizingMaskIntoConstraints_];

  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_24A633820;
  v44 = [v32 view];
  if (!v44)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v45 = v44;
  v46 = [v44 topAnchor];

  v47 = [v36 view];
  if (!v47)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v48 = v47;
  v49 = [v47 topAnchor];

  v50 = [v46 constraintEqualToAnchor_];
  *(v43 + 32) = v50;
  v51 = [v32 view];
  if (!v51)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v52 = v51;
  v53 = [v51 bottomAnchor];

  v54 = [v36 view];
  if (!v54)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v55 = v54;
  v56 = [v54 bottomAnchor];

  v57 = [v53 constraintEqualToAnchor_];
  *(v43 + 40) = v57;
  v58 = [v32 view];
  if (!v58)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v59 = v58;
  v60 = [v58 leadingAnchor];

  v61 = [v36 view];
  if (!v61)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v62 = v61;
  v63 = [v61 leadingAnchor];

  v64 = [v60 constraintEqualToAnchor_];
  *(v43 + 48) = v64;
  v65 = [v32 view];

  if (!v65)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v66 = [v65 trailingAnchor];

  v67 = [v36 view];
  if (v67)
  {
    v68 = v67;
    v69 = objc_opt_self();
    v70 = [v68 trailingAnchor];

    v71 = [v66 constraintEqualToAnchor_];
    *(v43 + 56) = v71;
    sub_24A50D7EC(0, &qword_27EF4F378, 0x277CCAAD0);
    v72 = sub_24A62ED54();

    [v69 activateConstraints_];

    v73 = *&v36[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_rotationModel];
    sub_24A56A7C8();
    v74 = type metadata accessor for PrecisionVFXViewController();
    v87.receiver = v36;
    v87.super_class = v74;
    objc_msgSendSuper2(&v87, sel_viewDidLoad);

    (*(v86 + 8))(v85, v28);
    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_24A524854()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_hapticsController;
  swift_beginAccess();
  sub_24A50D63C(v1 + v2, v12, &qword_27EF4FA70, &unk_24A634CE0);
  if (v13)
  {
    sub_24A508AE4(v12, v11);
    sub_24A50D6A4(v12, &qword_27EF4FA70, &unk_24A634CE0);
    v3 = *sub_24A50A204(v11, v11[3]);
    sub_24A57A50C();
    sub_24A508C54(v11);
  }

  else
  {
    sub_24A50D6A4(v12, &qword_27EF4FA70, &unk_24A634CE0);
  }

  v5 = sub_24A52393C();
  if (*(v4 + 24))
  {
    v6 = v4;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = *(v6 + 24);
    v9 = *(v6 + 32);
    sub_24A528F98(v6, v8);
    (*(v9 + 152))(sub_24A529020, v7, v8, v9);
  }

  return (v5)(v12, 0);
}

id sub_24A524A20(char a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_rotationModel];
  sub_24A56AA1C();
  v5 = *&v2[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_vfxManager];
  sub_24A508FA4(&qword_27EF4FA78, &qword_24A636E60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24A633830;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 32) = 0xD000000000000019;
  *(v6 + 40) = 0x800000024A63E5F0;
  sub_24A62F314();

  v7 = *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_view);
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_view) = 0;

  sub_24A524B24();
  v9.receiver = v2;
  v9.super_class = type metadata accessor for PrecisionVFXViewController();
  return objc_msgSendSuper2(&v9, sel_viewDidDisappear_, a1 & 1);
}

uint64_t sub_24A524B24()
{
  v1 = v0;
  v3 = sub_24A52393C();
  v4 = *(v2 + 24);
  if (v4)
  {
    v5 = *(v2 + 32);
    sub_24A528F98(v2, *(v2 + 24));
    (*(v5 + 152))(0, 0, v4, v5);
  }

  (v3)(v12, 0);
  v6 = OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_hapticsController;
  swift_beginAccess();
  sub_24A50D63C(v0 + v6, v12, &qword_27EF4FA70, &unk_24A634CE0);
  if (v13)
  {
    sub_24A508AE4(v12, v10);
    sub_24A50D6A4(v12, &qword_27EF4FA70, &unk_24A634CE0);
    v7 = *sub_24A50A204(v10, v11);
    sub_24A581E4C();
    sub_24A508C54(v10);
  }

  else
  {
    sub_24A50D6A4(v12, &qword_27EF4FA70, &unk_24A634CE0);
  }

  sub_24A50D63C(v1 + v6, v12, &qword_27EF4FA70, &unk_24A634CE0);
  if (!v13)
  {
    return sub_24A50D6A4(v12, &qword_27EF4FA70, &unk_24A634CE0);
  }

  sub_24A508AE4(v12, v10);
  sub_24A50D6A4(v12, &qword_27EF4FA70, &unk_24A634CE0);
  v8 = *sub_24A50A204(v10, v11);
  sub_24A57B8D4();
  return sub_24A508C54(v10);
}

uint64_t sub_24A524D30(uint64_t a1, _DWORD *a2)
{
  v3 = v2;
  v82 = a2;
  v80 = a1;
  v73 = sub_24A508FA4(&qword_27EF4FE50, &qword_24A634BB0);
  v77 = *(v73 - 8);
  v4 = *(v77 + 64);
  MEMORY[0x28223BE20](v73);
  v76 = &v67[-v5];
  v6 = sub_24A508FA4(&qword_27EF4FA60, &qword_24A634BB8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v67[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v67[-v12];
  v14 = sub_24A508FA4(&qword_27EF4FA58, &qword_24A634BA8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v75 = &v67[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v19 = &v67[-v18];
  v20 = *(v2 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_vfxManager);
  sub_24A5843A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v79 = v88[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v83 = v20;
  sub_24A62E354();

  v81 = v88[0];
  v21 = v82[24] & 0xFE000000;
  v78 = v7;
  if (v21 == 0x4000000)
  {
    v82 = *(v7 + 56);
    (v82)(v19, 1, 1, v6);
    v22 = 0;
    v23 = v19;
    v24 = v83;
    goto LABEL_39;
  }

  v69 = v21;
  v71 = type metadata accessor for FindingEstimate(0);
  v25 = v11;
  v26 = v80;
  sub_24A525E8C(v80 + *(v71 + 20), v13);
  sub_24A50D63C(v13, v19, &qword_27EF4FA60, &qword_24A634BB8);
  v27 = *(v7 + 56);
  v72 = v19;
  v82 = v27;
  (v27)(v19, 0, 1, v6);
  v28 = *v26;
  v29 = *(v26 + 8);
  v74 = v2;
  v70 = sub_24A5263A0(v28, v29);
  v31 = v30;
  sub_24A50D63C(v13, v25, &qword_27EF4FA60, &qword_24A634BB8);
  v32 = v6;
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    sub_24A50D6A4(v13, &qword_27EF4FA60, &qword_24A634BB8);
    v22 = 1;
    v23 = v72;
    v3 = v74;
    v24 = v83;
    if (v31)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v68 = v31;
  v33 = v73;
  (*(v77 + 32))(v76, v25, v73);
  swift_getKeyPath();
  swift_getKeyPath();
  v24 = v83;
  sub_24A62E354();

  if (v88[0] <= 3u)
  {
    v34 = v80;
LABEL_10:
    v35 = sub_24A62F634();
    goto LABEL_11;
  }

  v34 = v80;
  if (v88[0] > 5u || v88[0] == 4)
  {
    goto LABEL_10;
  }

  v35 = 1;
LABEL_11:

  if (*(v74 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_threshold))
  {
    v36 = 4.14719171;
    v37 = 3.45599309;
    v38 = 2.3622;
  }

  else
  {
    if (qword_27EF4EA90 != -1)
    {
      swift_once();
    }

    v39 = *&qword_27EF5C768;
    if (qword_27EF4EAB0 != -1)
    {
      swift_once();
    }

    v37 = v39 * *&qword_27EF5C788;
    v36 = v39 * *&qword_27EF5C788 * 1.2;
    v38 = v39 * 1.25;
  }

  v40 = v76;
  sub_24A62DFD4();
  v42 = v41;
  sub_24A62DFD4();
  v44 = v43;
  if (v35)
  {
    v37 = v36;
  }

  (*(v77 + 8))(v40, v33);
  v45 = v34 + *(v71 + 32);
  if (*(v45 + 8))
  {
    v23 = v72;
    v3 = v74;
    if (v69 == 100663296)
    {
      v46 = v68;
      if (v44 >= v37)
      {
        if (v42 >= v38)
        {
          v47 = 0;
          goto LABEL_76;
        }

        goto LABEL_36;
      }

LABEL_34:
      sub_24A50D6A4(v13, &qword_27EF4FA60, &qword_24A634BB8);
      v22 = 5;
      goto LABEL_37;
    }

    v46 = v68;
    if (v44 < v37)
    {
      goto LABEL_34;
    }

    if (v42 >= v38)
    {
      v47 = 1;
      goto LABEL_76;
    }

LABEL_36:
    sub_24A50D6A4(v13, &qword_27EF4FA60, &qword_24A634BB8);
    v22 = 4;
LABEL_37:
    v6 = v32;
    if (v46)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v48 = *v45;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v23 = v72;
  v3 = v74;
  if (v88[0] > 3u || v88[0] <= 1u || v88[0] == 2)
  {
    v49 = sub_24A62F634();

    v50 = 0.698131701;
    if (v49)
    {
      v50 = 0.785398163;
    }
  }

  else
  {

    v50 = 0.785398163;
  }

  v46 = v68;
  v24 = v83;
  if (v44 < v37)
  {
    goto LABEL_34;
  }

  v47 = v48 < v50;
  if (v42 < v38)
  {
    goto LABEL_36;
  }

LABEL_76:
  sub_24A50D6A4(v13, &qword_27EF4FA60, &qword_24A634BB8);
  if (v46 > 1u)
  {
    v22 = 1;
    v6 = v32;
  }

  else
  {
    if (v47)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v6 = v32;
    if (!v68)
    {
LABEL_38:
      sub_24A584370();
      swift_getKeyPath();
      swift_getKeyPath();
      *v88 = v70;

      sub_24A62E364();
      sub_24A58A088();
    }
  }

LABEL_39:
  v51 = *(v24 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_pendingState);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (sub_24A60D6B4(v22, v88[0]))
  {
    if (v51 == 8)
    {
      goto LABEL_47;
    }
  }

  else if (v51 == 8)
  {
    goto LABEL_44;
  }

  if (sub_24A60D6B4(v22, v51))
  {
LABEL_47:
    sub_24A5264B4(v23);
    goto LABEL_50;
  }

LABEL_44:
  if (v22)
  {
    v52 = sub_24A62F634();

    if ((v52 & 1) == 0)
    {
      sub_24A5833C4(v22);
      goto LABEL_47;
    }
  }

  else
  {
  }

  v53 = v75;
  (v82)(v75, 1, 1, v6);
  sub_24A5264B4(v53);
  sub_24A50D6A4(v53, &qword_27EF4FA58, &qword_24A634BA8);
  sub_24A5833C4(v22);
LABEL_50:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v88[0] == 4)
  {
  }

  else
  {
    v54 = sub_24A62F634();

    if ((v54 & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if ((sub_24A60D6B4(v88[0], v81) & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_54:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v88[0] <= 3u || v88[0] > 5u || v88[0] == 4)
  {
    v55 = sub_24A62F634();

    if ((v55 & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if ((sub_24A60D6B4(v88[0], v81) & 1) == 0)
  {
    v64 = OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_hapticsController;
    swift_beginAccess();
    sub_24A50D63C(v3 + v64, v88, &qword_27EF4FA70, &unk_24A634CE0);
    if (v89)
    {
      sub_24A508AE4(v88, v86);
      sub_24A50D6A4(v88, &qword_27EF4FA70, &unk_24A634CE0);
      v65 = *sub_24A50A204(v86, v87);
      sub_24A57FDA8();
      goto LABEL_73;
    }

LABEL_74:
    sub_24A50D6A4(v23, &qword_27EF4FA58, &qword_24A634BA8);
    v61 = &qword_27EF4FA70;
    v62 = &unk_24A634CE0;
    v63 = v88;
    return sub_24A50D6A4(v63, v61, v62);
  }

LABEL_62:
  v56 = sub_24A583AD8();
  if (v79)
  {
    if (!v56)
    {
LABEL_64:
      v57 = OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_hapticsController;
      swift_beginAccess();
      sub_24A50D63C(v3 + v57, v88, &qword_27EF4FA70, &unk_24A634CE0);
      if (v89)
      {
        sub_24A508AE4(v88, v86);
        sub_24A50D6A4(v88, &qword_27EF4FA70, &unk_24A634CE0);
        v58 = *sub_24A50A204(v86, v87);
        v85 = 0u;
        v84 = 0u;
        sub_24A580990(&v84);
LABEL_69:
        sub_24A50D6A4(&v84, &unk_27EF50780, &qword_24A638470);
LABEL_73:
        sub_24A50D6A4(v23, &qword_27EF4FA58, &qword_24A634BA8);
        return sub_24A508C54(v86);
      }

      goto LABEL_74;
    }
  }

  else if (v56)
  {
    v59 = OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_hapticsController;
    swift_beginAccess();
    sub_24A50D63C(v3 + v59, v88, &qword_27EF4FA70, &unk_24A634CE0);
    if (v89)
    {
      sub_24A508AE4(v88, v86);
      sub_24A50D6A4(v88, &qword_27EF4FA70, &unk_24A634CE0);
      v60 = *sub_24A50A204(v86, v87);
      v85 = 0u;
      v84 = 0u;
      sub_24A5803DC(&v84);
      goto LABEL_69;
    }

    goto LABEL_74;
  }

  v61 = &qword_27EF4FA58;
  v62 = &qword_24A634BA8;
  v63 = v23;
  return sub_24A50D6A4(v63, v61, v62);
}

uint64_t sub_24A525E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_24A508FA4(&unk_27EF4FE20, &qword_24A634BA0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v33 - v8;
  v10 = sub_24A508FA4(&qword_27EF4FE50, &qword_24A634BB0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v34 = v33 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v36 = v33 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = v33 - v20;
  sub_24A50D63C(a1, v9, &unk_27EF4FE20, &qword_24A634BA0);
  v22 = *(v11 + 48);
  if (v22(v9, 1, v10) == 1)
  {
    sub_24A50D6A4(v9, &unk_27EF4FE20, &qword_24A634BA0);
LABEL_5:
    sub_24A508FA4(&qword_27EF4FA60, &qword_24A634BB8);
    return swift_storeEnumTagMultiPayload();
  }

  v23 = *(v11 + 32);
  v23(v21, v9, v10);
  sub_24A62DFD4();
  if (v24 < 0.0)
  {
    (*(v11 + 8))(v21, v10);
    goto LABEL_5;
  }

  v33[0] = v23;
  v33[1] = v11 + 32;
  sub_24A62DFD4();
  v25 = v35;
  sub_24A528D20((v35 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_rangeHistory), 3, v26);
  v27 = [objc_opt_self() meters];
  sub_24A50D7EC(0, &qword_27EF4FEA0, 0x277CCAE20);
  sub_24A62DFC4();
  v28 = *(v25 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_vfxManager);
  sub_24A584370();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v22(v7, 1, v10))
  {
    (*(v11 + 8))(v21, v10);
    sub_24A50D6A4(v7, &unk_27EF4FE20, &qword_24A634BA0);
  }

  else
  {
    (*(v11 + 16))(v15, v7, v10);
    sub_24A50D6A4(v7, &unk_27EF4FE20, &qword_24A634BA0);
    v29 = sub_24A62DFB4();
    v30 = v34;
    sub_24A62DFE4();

    v31 = *(v11 + 8);
    v31(v15, v10);
    sub_24A62DFD4();
    v31(v30, v10);
    sub_24A62DFD4();
    v31(v21, v10);
  }

  (v33[0])(v37, v36, v10);
  sub_24A508FA4(&qword_27EF4FA60, &qword_24A634BB8);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24A5263A0(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  v4 = *&a1 * 57.2957795;
  v5 = OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_angleHistory;
  swift_beginAccess();
  sub_24A528E70((v2 + v5), 3, v4);
  swift_endAccess();
  v7 = *(v2 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_vfxManager);
  sub_24A584370();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  sub_24A62E804();
  return a1;
}

uint64_t sub_24A5264B4(uint64_t a1)
{
  v2 = sub_24A508FA4(&unk_27EF4FE20, &qword_24A634BA0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v51 = &v44 - v6;
  v7 = sub_24A62E234();
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = *(v48 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v47 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - v11;
  v13 = sub_24A62E264();
  v46 = *(v13 - 8);
  v14 = *(v46 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A508FA4(&qword_27EF4FA58, &qword_24A634BA8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v44 - v22;
  v52 = sub_24A508FA4(&qword_27EF4FE50, &qword_24A634BB0);
  v24 = *(v52 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v52);
  v27 = &v44 - v26;
  sub_24A50D63C(a1, v23, &qword_27EF4FA58, &qword_24A634BA8);
  v28 = sub_24A508FA4(&qword_27EF4FA60, &qword_24A634BB8);
  if ((*(*(v28 - 8) + 48))(v23, 1, v28) == 1)
  {
    goto LABEL_6;
  }

  sub_24A50D63C(v23, v21, &qword_27EF4FA58, &qword_24A634BA8);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_24A50D6A4(v21, &qword_27EF4FA60, &qword_24A634BB8);
LABEL_6:
    v37 = *(v53 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_vfxManager);
    sub_24A584370();
    swift_getKeyPath();
    swift_getKeyPath();
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_24A62E364();
    v38 = &qword_27EF4FA58;
    v39 = &qword_24A634BA8;
    v40 = v23;
    return sub_24A50D6A4(v40, v38, v39);
  }

  v29 = v24;
  v45 = *(v24 + 32);
  v45(v27, v21, v52);
  sub_24A50D6A4(v23, &qword_27EF4FA58, &qword_24A634BA8);
  sub_24A62E254();
  sub_24A62E244();
  (*(v46 + 8))(v16, v13);
  v30 = v47;
  sub_24A62E224();
  sub_24A52941C(&qword_27EF4FA68, MEMORY[0x277CC9688]);
  v31 = v49;
  v32 = sub_24A62EBD4();
  v33 = *(v48 + 8);
  v33(v30, v31);
  v33(v12, v31);
  v34 = *(v53 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_vfxManager);
  sub_24A584370();
  if (v32)
  {
    v36 = v51;
    v35 = v52;
    v45(v51, v27, v52);
    (*(v29 + 56))(v36, 0, 1, v35);
  }

  else
  {
    v41 = [objc_opt_self() feet];
    v36 = v51;
    v42 = v52;
    sub_24A62DFE4();

    (*(v29 + 8))(v27, v42);
    (*(v29 + 56))(v36, 0, 1, v42);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A50D63C(v36, v50, &unk_27EF4FE20, &qword_24A634BA0);

  sub_24A62E364();
  sub_24A589724();

  v40 = v36;
  v38 = &unk_27EF4FE20;
  v39 = &qword_24A634BA0;
  return sub_24A50D6A4(v40, v38, v39);
}

id sub_24A526B14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PrecisionVFXViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PrecisionVFXViewController()
{
  result = qword_27EF4FA48;
  if (!qword_27EF4FA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A526C9C()
{
  result = type metadata accessor for FindingEstimate(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24A526D74(char a1)
{
  v3 = sub_24A62EA94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A62EAD4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v13 = sub_24A62F014();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = a1;
  aBlock[4] = sub_24A5293F8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA15F0;
  v15 = _Block_copy(aBlock);
  v16 = v1;

  sub_24A62EAB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24A52941C(&qword_27EF4F970, MEMORY[0x277D85198]);
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  sub_24A62F254();
  MEMORY[0x24C21A950](0, v12, v7, v15);
  _Block_release(v15);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_24A527040(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_vfxManager);
  sub_24A584370();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_24A62E364();
}

uint64_t sub_24A5270B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_vfxManager);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v4 <= 3u || v4 > 5u || v4 == 4)
  {
    v2 = sub_24A62F634();
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t sub_24A52725C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_vfxManager);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v9 <= 3u || v9 > 5u || v9 == 4)
  {
    v6 = sub_24A62F634();

    if (v6)
    {
      return result;
    }

    sub_24A584370();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    if (!a2)
    {

LABEL_11:
      sub_24A584370();
      swift_getKeyPath();
      swift_getKeyPath();

      return sub_24A62E364();
    }

    if (v9 != a1 || v10 != a2)
    {
      v8 = sub_24A62F634();

      if (v8)
      {
        return result;
      }

      goto LABEL_11;
    }
  }
}

uint64_t sub_24A5274E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_vfxManager);
  sub_24A584370();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A62E364();
}

uint64_t sub_24A527570()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_vfxManager);
  sub_24A584370();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_24A62E364();
}

void sub_24A5275E8(uint64_t a1, __int16 *a2)
{
  v5 = OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_hapticsController;
  swift_beginAccess();
  sub_24A50D63C(v2 + v5, v96, &qword_27EF4FA70, &unk_24A634CE0);
  v6 = v97;
  sub_24A50D6A4(v96, &qword_27EF4FA70, &unk_24A634CE0);
  if (!v6)
  {
    return;
  }

  v7 = type metadata accessor for FMFindingViewState();
  v8 = a2 + *(v7 + 32);
  v9 = *(v8 + 24) | (v8[100] << 32);
  v10 = (((*(v8 + 24) & 0xFF000000) - 0x4000000) >> 24);
  if (v10 > 1)
  {
    if (v10 == 2 || v10 == 3)
    {
      return;
    }
  }

  else
  {
    if (!(((*(v8 + 24) & 0xFF000000) - 0x4000000) >> 24))
    {
      sub_24A50D63C(v2 + v5, &v83, &qword_27EF4FA70, &unk_24A634CE0);
      if (v85)
      {
        sub_24A508AE4(&v83, v81);
        sub_24A50D6A4(&v83, &qword_27EF4FA70, &unk_24A634CE0);
        v24 = *sub_24A50A204(v81, v82);
        sub_24A581E4C();
LABEL_20:
        sub_24A508C54(v81);
        return;
      }

      goto LABEL_138;
    }

    if (v10 == 1)
    {
      return;
    }
  }

  v11 = *a2;
  v12 = (v11 >> 13) & 3;
  if (v12 && (v12 == 1 || (v11 & 0x80000000) == 0))
  {
    return;
  }

  v13 = v2;
  if (*(a2 + *(v7 + 44)))
  {
    goto LABEL_12;
  }

  v80 = v7;
  if ((*(v8 + 24) & 0xFC000000) == 0x4000000 || (*(v8 + 24) & 0xFF0000) != 0x40000)
  {
    goto LABEL_25;
  }

  v25 = v8[40];
  v26 = v8[56];
  v27 = v8[57];
  if (*(v8 + 2) == 1)
  {
    v83 = *v8;
    v84 = 1;
    v85 = *(v8 + 24);
    v86 = v25;
    *v87 = *(v8 + 41);
    *&v87[7] = *(v8 + 6);
    v88 = v26;
    v89 = v27;
    *&v91[14] = *(v8 + 11);
    *v91 = *(v8 + 74);
    v90 = *(v8 + 58);
    v93 = BYTE4(v9);
    v92 = v9;
    sub_24A50D63C(&v83, v81, &qword_27EF4F670, &qword_24A634D70);
    goto LABEL_25;
  }

  if ((v8[40] & 1) == 0)
  {
    if (v8[57])
    {
      goto LABEL_12;
    }

LABEL_25:
    v28 = sub_24A62715C();
    if (v28 <= 1)
    {
      v29 = v2;
    }

    else
    {
      v29 = v2;
      if (v28 == 2)
      {
        v30 = "compassReachMode";
      }

      else
      {
        if (v28 != 3)
        {
          goto LABEL_44;
        }

        v30 = "R_CANT_RECONNECT_ERROR";
      }

      if (0x800000024A63DD40 == (v30 | 0x8000000000000000))
      {

        goto LABEL_41;
      }
    }

    v34 = sub_24A62F634();

    if (v34)
    {
LABEL_41:
      sub_24A50D63C(v29 + v5, &v83, &qword_27EF4FA70, &unk_24A634CE0);
      if (v85)
      {
        sub_24A508AE4(&v83, v81);
        sub_24A50D6A4(&v83, &qword_27EF4FA70, &unk_24A634CE0);
        v35 = *sub_24A50A204(v81, v82);
        v94 = 0u;
        v95 = 0u;
        sub_24A580B94(&v94);
        v29 = v13;
        sub_24A50D6A4(&v94, &unk_27EF50780, &qword_24A638470);
LABEL_43:
        sub_24A508C54(v81);
LABEL_60:
        v38 = v80;
        goto LABEL_61;
      }

      goto LABEL_59;
    }

LABEL_44:
    v36 = sub_24A62715C();
    if (v36 <= 1)
    {
      if (!v36)
      {

        v29 = v2;
        goto LABEL_60;
      }
    }

    else if (v36 != 2)
    {
      v37 = v36 == 3;
      v29 = v2;
      v38 = v80;
      if (!v37)
      {
LABEL_56:
        if (*(a1 + *(v38 + 32) + 99) << 24 != 83886080)
        {
          sub_24A50D63C(v29 + v5, &v83, &qword_27EF4FA70, &unk_24A634CE0);
          if (v85)
          {
            sub_24A508AE4(&v83, v81);
            sub_24A50D6A4(&v83, &qword_27EF4FA70, &unk_24A634CE0);
            v40 = *sub_24A50A204(v81, v82);
            sub_24A57F510();
            v29 = v13;
            goto LABEL_43;
          }

LABEL_59:
          sub_24A50D6A4(&v83, &qword_27EF4FA70, &unk_24A634CE0);
          goto LABEL_60;
        }

LABEL_61:
        v41 = *(a1 + *(v38 + 32) + 99) << 24;
        if (v41 == 0x4000000 || (v43 = ((v41 - 0x4000000) >> 24), v43 <= 1) && v43)
        {
          sub_24A50D63C(v29 + v5, &v83, &qword_27EF4FA70, &unk_24A634CE0);
          if (v85)
          {
            sub_24A508AE4(&v83, v81);
            sub_24A50D6A4(&v83, &qword_27EF4FA70, &unk_24A634CE0);
            v42 = *sub_24A50A204(v81, v82);
            v94 = 0u;
            v95 = 0u;
            sub_24A57FE58(&v94);
LABEL_90:
            sub_24A50D6A4(&v94, &unk_27EF50780, &qword_24A638470);
            goto LABEL_20;
          }

          goto LABEL_138;
        }

        return;
      }

LABEL_55:
      v39 = sub_24A62F634();

      v38 = v80;
      if (v39)
      {
        goto LABEL_61;
      }

      goto LABEL_56;
    }

    v29 = v2;
    goto LABEL_55;
  }

  if ((v8[56] & 1) == 0)
  {
    if (v8[57])
    {
      goto LABEL_12;
    }

    v44 = sub_24A62715C();
    if (v44 <= 1)
    {
      v32 = v2;
    }

    else
    {
      v32 = v2;
      if (v44 == 2)
      {
        v45 = "compassReachMode";
      }

      else
      {
        if (v44 != 3)
        {
          goto LABEL_120;
        }

        v45 = "R_CANT_RECONNECT_ERROR";
      }

      if (0x800000024A63DD40 == (v45 | 0x8000000000000000))
      {
        goto LABEL_116;
      }
    }

    v64 = sub_24A62F634();

    if (v64)
    {
      goto LABEL_118;
    }

LABEL_120:
    v66 = sub_24A62715C();
    if (v66 <= 1)
    {
      if (!v66)
      {

LABEL_135:
        v68 = v2 + v5;
LABEL_136:
        sub_24A50D63C(v68, &v83, &qword_27EF4FA70, &unk_24A634CE0);
        if (v85)
        {
          sub_24A508AE4(&v83, v81);
          sub_24A50D6A4(&v83, &qword_27EF4FA70, &unk_24A634CE0);
          v79 = *sub_24A50A204(v81, v82);
          sub_24A57F4E4();
          goto LABEL_20;
        }

        goto LABEL_138;
      }
    }

    else if (v66 != 2 && v66 != 3)
    {
      return;
    }

    v78 = sub_24A62F634();

    if ((v78 & 1) == 0)
    {
      return;
    }

    goto LABEL_135;
  }

  if ((v8[57] & 1) == 0)
  {
    v31 = sub_24A62715C();
    if (v31 <= 1)
    {
      v32 = v2;
LABEL_109:
      v61 = sub_24A62F634();

      if ((v61 & 1) == 0)
      {
LABEL_110:
        v62 = sub_24A62715C();
        if (v62 <= 1)
        {
          if (!v62)
          {

            v63 = v2;
LABEL_130:
            v68 = v63 + v5;
            goto LABEL_136;
          }
        }

        else if (v62 != 2)
        {
          if (v62 != 3)
          {
            goto LABEL_131;
          }

          v63 = v2;
LABEL_129:
          v67 = sub_24A62F634();

          if (v67)
          {
            goto LABEL_130;
          }

LABEL_131:
          v69 = sub_24A6272B0();
          if (v71)
          {
            return;
          }

          v72 = *&v69;
          v73 = v70;
          sub_24A50D63C(v13 + v5, &v83, &qword_27EF4FA70, &unk_24A634CE0);
          if (v85)
          {
            v74 = v72;
            sub_24A508AE4(&v83, v81);
            sub_24A50D6A4(&v83, &qword_27EF4FA70, &unk_24A634CE0);
            v75 = sub_24A50A204(v81, v82);
            *(&v95 + 1) = v80;
            v76 = sub_24A5292E8(&v94);
            sub_24A52934C(a2, v76);
            v77 = *v75;
            sub_24A580A00(&v94, v74, v73);
            goto LABEL_90;
          }

          goto LABEL_138;
        }

        v63 = v2;
        goto LABEL_129;
      }

LABEL_118:
      sub_24A50D63C(v32 + v5, &v83, &qword_27EF4FA70, &unk_24A634CE0);
      if (v85)
      {
        sub_24A508AE4(&v83, v81);
        sub_24A50D6A4(&v83, &qword_27EF4FA70, &unk_24A634CE0);
        v65 = *sub_24A50A204(v81, v82);
        v94 = 0u;
        v95 = 0u;
        sub_24A580B94(&v94);
        goto LABEL_90;
      }

      goto LABEL_138;
    }

    v32 = v2;
    if (v31 == 2)
    {
      v33 = "compassReachMode";
    }

    else
    {
      if (v31 != 3)
      {
        goto LABEL_110;
      }

      v33 = "R_CANT_RECONNECT_ERROR";
    }

    if (0x800000024A63DD40 != (v33 | 0x8000000000000000))
    {
      goto LABEL_109;
    }

LABEL_116:

    goto LABEL_118;
  }

LABEL_12:
  *&v14 = COERCE_DOUBLE(sub_24A627670());
  if ((v16 & 1) == 0)
  {
    v17 = *&v14;
    sub_24A6279B4(v15);
    if ((v18 & 1) == 0)
    {
      v19 = v17;
      v20 = *(v2 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_vfxManager);
      sub_24A5843A4();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24A62E354();

      sub_24A5843A4();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24A62E354();

      v21 = v83;
      v22 = sub_24A62715C();
      if (v22 > 1)
      {
        if (v22 == 2)
        {
          v23 = "compassReachMode";
        }

        else
        {
          if (v22 != 3)
          {
            if ((v83 & 1) == 0 && v19 > 0.0)
            {
              v47 = 0;
              v46 = 0;
LABEL_86:
              if ((sub_24A5270B8() & 1) != 0 && (v46 & 1) == 0)
              {
                sub_24A50D63C(v13 + v5, &v83, &qword_27EF4FA70, &unk_24A634CE0);
                if (v85)
                {
                  sub_24A508AE4(&v83, v81);
                  sub_24A50D6A4(&v83, &qword_27EF4FA70, &unk_24A634CE0);
                  v48 = *sub_24A50A204(v81, v82);
                  v94 = 0u;
                  v95 = 0u;
                  sub_24A5811D4(&v94);
                  goto LABEL_90;
                }

                goto LABEL_138;
              }

              goto LABEL_92;
            }

            v46 = 0;
LABEL_85:
            v47 = v83 ^ 1u;
            goto LABEL_86;
          }

          v23 = "R_CANT_RECONNECT_ERROR";
        }

        if (0x800000024A63DD40 == (v23 | 0x8000000000000000))
        {

          if ((v83 & 1) == 0)
          {
            v47 = (v19 <= 0.0) & (v83 ^ 1u);
            sub_24A5270B8();
            v46 = 1;
LABEL_92:
            sub_24A50D63C(v13 + v5, &v83, &qword_27EF4FA70, &unk_24A634CE0);
            if (v85)
            {
              sub_24A508AE4(&v83, v81);
              sub_24A50D6A4(&v83, &qword_27EF4FA70, &unk_24A634CE0);
              v49 = sub_24A50A204(v81, v82);
              v50 = *v49;
              v51 = *v49 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod;
              *v51 = 0;
              *(v51 + 8) = 1;
              v94 = 0u;
              v95 = 0u;
              v52 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticContext;
              swift_beginAccess();
              sub_24A529578(&v94, v50 + v52, &unk_27EF50780, &qword_24A638470);
              swift_endAccess();
              if (v46)
              {
                *(v50 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic) = 1;
              }

              if (1.0 - v19 <= 2.22044605e-16)
              {
                v56 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem;
                if (*(v50 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem))
                {
                  v57 = *(v50 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem);

                  sub_24A62EB34();

                  v58 = *(v50 + v56);
                }

                *(v50 + v56) = 0;

                *(v50 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic) = 0;
              }

              else
              {
                v53 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem;
                if (*(v50 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem))
                {
                  v54 = *(v50 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem);

                  sub_24A62EB34();

                  v55 = *(v50 + v53);
                }

                *(v50 + v53) = 0;

                v59 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic;
                if ((*(v50 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic) & 1) == 0)
                {
                  sub_24A57F864(1);
                  *(v50 + v59) = 1;
                }

                if ((v21 & 1) == 0)
                {
                  sub_24A57FC4C();
                  v60 = v19;
                  sub_24A57CC58(v47, v60);
                }
              }

              goto LABEL_20;
            }

LABEL_138:
            sub_24A50D6A4(&v83, &qword_27EF4FA70, &unk_24A634CE0);
            return;
          }

          v46 = 1;
          goto LABEL_85;
        }
      }

      v46 = sub_24A62F634();

      if ((v83 & 1) == 0 && v19 > 0.0)
      {
        v47 = 0;
        goto LABEL_86;
      }

      goto LABEL_85;
    }
  }
}

uint64_t sub_24A5284B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v47 = a2;
  v45 = *(a3 - 8);
  v3 = *(v45 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - v6;
  v44 = v8;
  v42 = v9;
  v10 = type metadata accessor for PrecisionVFXViewController.Result();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = *(TupleTypeMetadata2 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v23 = &v40 - v22;
  v24 = *(v21 + 48);
  v43 = v11;
  v25 = *(v11 + 16);
  v25(&v40 - v22, v46, v10);
  v25(&v23[v24], v47, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v25(v17, v23, v10);
    if (!swift_getEnumCaseMultiPayload())
    {
      v33 = v45;
      v34 = &v23[v24];
      v35 = v7;
      v36 = v7;
      v37 = v44;
      (*(v45 + 32))(v36, v34, v44);
      v31 = sub_24A62EBD4();
      v38 = *(v33 + 8);
      v38(v35, v37);
      v38(v17, v37);
      goto LABEL_12;
    }

    v15 = v17;
LABEL_7:
    (*(v45 + 8))(v15, v44);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v25(v15, v23, v10);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = v44;
      v28 = v45;
      v29 = &v23[v24];
      v30 = v41;
      (*(v45 + 32))(v41, v29, v44);
      v31 = sub_24A62EBD4();
      v32 = *(v28 + 8);
      v32(v30, v27);
      v32(v15, v27);
LABEL_12:
      v19 = v43;
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v31 = 1;
    goto LABEL_12;
  }

LABEL_10:
  v31 = 0;
  v10 = TupleTypeMetadata2;
LABEL_13:
  (*(v19 + 8))(v23, v10);
  return v31 & 1;
}

void sub_24A5288B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_24A508FA4(&qword_27EF4FA80, &qword_24A634D40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16[-v5 - 8];
  v7 = type metadata accessor for FMFindingViewState();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_24A50D63C(a2, v16, &unk_27EF50780, &qword_24A638470);
    if (v17)
    {
      v14 = swift_dynamicCast();
      (*(v8 + 56))(v6, v14 ^ 1u, 1, v7);
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        sub_24A529028(v6, v11);
        sub_24A6272B0();
        sub_24A529278(v11, type metadata accessor for FMFindingViewState);
LABEL_7:

        return;
      }
    }

    else
    {
      sub_24A50D6A4(v16, &unk_27EF50780, &qword_24A638470);
      (*(v8 + 56))(v6, 1, 1, v7);
    }

    sub_24A50D6A4(v6, &qword_27EF4FA80, &qword_24A634D40);
    goto LABEL_7;
  }
}

uint64_t sub_24A528AF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  *a2 = v5;
  return result;
}

uint64_t sub_24A528B74(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A62E364();
}

uint64_t sub_24A528BEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_24A528C70(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A62E364();
}

double sub_24A528D20(char **a1, int64_t a2, double a3)
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_24A61760C(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_24A61760C((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  *&v6[8 * v8 + 32] = a3;
  *a1 = v6;
  if (v8 >= a2)
  {
    sub_24A575774(0, 1);
    v6 = *a1;
  }

  v9 = *(v6 + 2);
  if (v9 >= 2)
  {
    if (v9 >= 4)
    {
      v10 = v9 & 0x7FFFFFFFFFFFFFFCLL;
      v12 = v6 + 48;
      v11 = 0.0;
      v13 = v9 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v12;
        v11 = v11 + *(v12 - 2) + *(v12 - 1) + *v12 + *(v12 + 1);
        v12 += 32;
        v13 -= 4;
      }

      while (v13);
      if (v9 == v10)
      {
        return v11 / v9;
      }
    }

    else
    {
      v10 = 0;
      v11 = 0.0;
    }

    v15 = v9 - v10;
    v16 = &v6[8 * v10 + 32];
    do
    {
      v17 = *v16++;
      v11 = v11 + v17;
      --v15;
    }

    while (v15);
    return v11 / v9;
  }

  return a3;
}

double sub_24A528E70(char **a1, int64_t a2, long double a3)
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_24A61760C(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_24A61760C((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  *&v6[8 * v8 + 32] = a3;
  *a1 = v6;
  if (v8 >= a2)
  {
    sub_24A575774(0, 1);
    v6 = *a1;
  }

  v9 = *(v6 + 2);
  if (v9 >= 2)
  {
    v10 = (v6 + 32);
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      v13 = *v10++;
      v14 = __sincos_stret(v13);
      v11 = v11 + v14.__cosval;
      v12 = v12 + v14.__sinval;
      --v9;
    }

    while (v9);
    a3 = atan2(v12, v11);
  }

  return round(a3 * 180.0 / 3.14159265);
}

uint64_t sub_24A528F98(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_24A528FE8()
{
  MEMORY[0x24C21BCD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A529028(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFindingViewState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24A52908C()
{
  result = qword_27EF4FAA0;
  if (!qword_27EF4FAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4FAA0);
  }

  return result;
}

void sub_24A5290E0()
{
  v1 = v0 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 100) = 0;
  *(v1 + 96) = 0x4000000;
  v2 = v0 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_estimate;
  v3 = type metadata accessor for FindingEstimate(0);
  v4 = v3[5];
  v5 = sub_24A508FA4(&qword_27EF4FE50, &qword_24A634BB0);
  (*(*(v5 - 8) + 56))(v2 + v4, 1, 1, v5);
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v2 + v3[6]) = 0;
  *(v2 + v3[7]) = 5;
  v6 = v2 + v3[8];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_rangeHistory) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_angleHistory) = v7;
  v8 = v0 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_hapticsController;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  sub_24A62F444();
  __break(1u);
}

void sub_24A529240(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  if ((a13 | 0x2000000u) >> 25 != 3)
  {
    sub_24A508BE4(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, SBYTE2(a13));
  }
}

uint64_t sub_24A529278(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *sub_24A5292E8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_24A52934C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFindingViewState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A5293C0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24A529404(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A52941C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24A529464()
{
  result = qword_27EF4F980;
  if (!qword_27EF4F980)
  {
    sub_24A50E1E0(&unk_27EF50510, &unk_24A633E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F980);
  }

  return result;
}

unint64_t sub_24A529524()
{
  result = qword_27EF4FAC8[0];
  if (!qword_27EF4FAC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF4FAC8);
  }

  return result;
}

uint64_t sub_24A529578(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_24A508FA4(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_24A5295F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24A52965C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 254;
}

void sub_24A529768(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

unint64_t sub_24A529930()
{
  result = qword_27EF4FB50;
  if (!qword_27EF4FB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4FB50);
  }

  return result;
}

double sub_24A529B1C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  return v1;
}

uint64_t sub_24A529C50()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  return v1;
}

uint64_t sub_24A529CBC()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__performPump;
  v2 = sub_24A508FA4(&qword_27EF4FC70, &qword_24A637600);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__showAirTagVideo, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isPlayingAirTagVideo, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__checkMarkWriteOn, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isCheckMarkVisible, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isRingADot, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isVFXVisible, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isConeVisible, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isArrowVisible, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isArcFull, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isFillPuckVisible, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isCircleArcVisible, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__showGreenBackground, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isPuckVisible, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isPulseActive, v2);
  v4 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__pulseNearProgress;
  v5 = sub_24A508FA4(&qword_27EF4FC68, qword_24A635960);
  v10 = *(*(v5 - 8) + 8);
  v10(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__nearRingOpacity;
  v7 = sub_24A508FA4(&qword_27EF4FC60, &unk_24A637620);
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v8(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__nearRingScale, v7);
  v10(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__puckParticleDistance, v5);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isPuckLineWidthScale, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isPuckParticleScale, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isPuckParticlePosition, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__requiresArrow, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__pushBackArrow, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isGrayRingForwardDotVisible, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isArcBetweenVisible, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__puckInCorrectDirection, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isArcDiameter, v2);
  swift_weakDestroy();
  return v0;
}

uint64_t sub_24A52A0C8()
{
  sub_24A529CBC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PFAnimationCoordinator()
{
  result = qword_27EF4FC38;
  if (!qword_27EF4FC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A52A174()
{
  sub_24A52A2FC(319, &qword_27EF4FC48);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_24A52A2FC(319, &qword_27EF4FC50);
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8) + 64;
      sub_24A52A2FC(319, &qword_27EF4FC58);
      if (v7 <= 0x3F)
      {
        v8 = *(v6 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24A52A2FC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_24A62E374();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_24A52A354@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PFAnimationCoordinator();
  result = sub_24A62E334();
  *a1 = result;
  return result;
}

uint64_t sub_24A52A3F8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A62E364();
}

void sub_24A52A474(void (*a1)(void), int a2, dispatch_group_t group)
{
  if (a1)
  {
    a1();
  }

  if (group)
  {

    dispatch_group_leave(group);
  }
}

uint64_t sub_24A52A4C8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A62E364();
}

void sub_24A52A538(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, NSObject *a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  v6 = sub_24A62E364();
  if (a2)
  {
    a2(v6);
  }

  if (a4)
  {
    dispatch_group_leave(a4);
  }
}

uint64_t sub_24A52A5D8(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v19 = sub_24A62E654();
  v8 = *(v19 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v12 = v20;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v13 = v20;
  if (a2)
  {
    dispatch_group_enter(a2);
  }

  v14 = sub_24A62E644();
  MEMORY[0x28223BE20](v14);
  *(&v18 - 4) = v4;
  *(&v18 - 3) = (1.0 - v12) * 0.4 + 0.1;
  *(&v18 - 2) = v13 * 3.5 + 1.0;
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a2;
  sub_24A519360(a3, a4);
  v16 = a2;
  sub_24A62E3E4();

  return (*(v8 + 8))(v11, v19);
}

uint64_t sub_24A52A860(NSObject *a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = sub_24A62E654();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    if (LOBYTE(v20) == 4)
    {
    }

    else
    {
      v15 = sub_24A62F634();

      if ((v15 & 1) == 0)
      {
        return result;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v20 = a4;

    sub_24A62E364();
    if (a1)
    {
      dispatch_group_enter(a1);
    }

    if (qword_27EF4EB10 != -1)
    {
      swift_once();
    }

    v16 = sub_24A62E644();
    MEMORY[0x28223BE20](v16);
    *(&v19 - 4) = v4;
    *(&v19 - 3) = a4 * 3.5 + 1.0;
    *(&v19 - 2) = (1.0 - a4) * 0.4 + 0.1;
    v17 = swift_allocObject();
    v17[2] = a2;
    v17[3] = a3;
    v17[4] = a1;
    sub_24A519360(a2, a3);
    v18 = a1;
    sub_24A62E3E4();

    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

uint64_t sub_24A52AC2C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A62E364();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A62E364();
}

uint64_t sub_24A52ACF8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A62E364();
}

void sub_24A52AD74(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, NSObject *a5)
{
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = sub_24A62E364();
  if (a3)
  {
    a3(v7);
  }

  if (a5)
  {
    dispatch_group_leave(a5);
  }
}

uint64_t sub_24A52AE18(char a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v54 = a5;
  v53 = a4;
  v55 = a3;
  v7 = sub_24A62EA94();
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = *(v60 + 64);
  MEMORY[0x28223BE20](v7);
  v58 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_24A62EAD4();
  v57 = *(v59 - 8);
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20](v59);
  v56 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_24A62E984();
  v50 = *(v51 - 8);
  v12 = *(v50 + 64);
  MEMORY[0x28223BE20](v51);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PFVFXAnimation();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_24A62E654();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = dispatch_group_create();
  dispatch_group_enter(v24);
  sub_24A62E644();
  v52 = v5;
  v62 = v5;
  v63 = a1;
  *(swift_allocObject() + 16) = v24;
  v25 = v24;
  sub_24A62E3E4();

  (*(v20 + 8))(v23, v19);
  dispatch_group_enter(v25);
  if (a1)
  {
    v26 = 1.0;
  }

  else
  {
    v26 = 0.0;
  }

  v27 = objc_opt_self();
  [v27 begin];
  if (qword_27EF4EC90 != -1)
  {
    swift_once();
  }

  v28 = sub_24A506EB8(v15, qword_27EF5CAA8);
  sub_24A5461E8(v28, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = v18[1];
  }

  else
  {
    v30 = v50;
    v31 = v51;
    (*(v50 + 32))(v14, v18, v51);
    sub_24A62E934();
    v29 = v32;
    (*(v30 + 8))(v14, v31);
  }

  [v27 setDuration_];
  v33 = sub_24A6268BC();
  [v27 setTimingFunction_];

  v34 = swift_allocObject();
  *(v34 + 16) = v25;
  v69 = sub_24A547DB0;
  v70 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v66 = 1107296256;
  v67 = sub_24A5A8458;
  v68 = &unk_285DA2168;
  v35 = _Block_copy(&aBlock);
  v36 = v25;

  [v27 setCompletionBlock_];
  _Block_release(v35);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v38 = *(Strong + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v68 = MEMORY[0x277D83A90];
    *&aBlock = v26;
    sub_24A583BD0(7, &aBlock);

    sub_24A50EC28(&aBlock);
  }

  [v27 commit];
  v39 = v55;
  if (v55)
  {
    dispatch_group_enter(v55);
  }

  sub_24A545E8C();
  v40 = sub_24A62F014();
  v41 = swift_allocObject();
  v42 = v53;
  v43 = v54;
  v41[2] = v53;
  v41[3] = v43;
  v41[4] = v39;
  v69 = sub_24A547994;
  v70 = v41;
  aBlock = MEMORY[0x277D85DD0];
  v66 = 1107296256;
  v67 = sub_24A5A8458;
  v68 = &unk_285DA21B8;
  v44 = _Block_copy(&aBlock);
  sub_24A519360(v42, v43);
  v45 = v39;
  v46 = v56;
  sub_24A62EAB4();
  v64 = MEMORY[0x277D84F90];
  sub_24A545F60();
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  v47 = v58;
  v48 = v61;
  sub_24A62F254();
  sub_24A62EFB4();
  _Block_release(v44);

  (*(v60 + 8))(v47, v48);
  (*(v57 + 8))(v46, v59);
}

id sub_24A52B554(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v34 = a3;
  v5 = sub_24A62E984();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PFVFXAnimation();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    dispatch_group_enter(a1);
  }

  if (!swift_weakLoadStrong() || (v14 = sub_24A584370(), , v15 = *(v14 + OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values_azimuthVelocity), , v16 = 3.0, v15 >= 0.0))
  {
    v16 = -3.0;
  }

  v35 = v3;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = *(Strong + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v37 = MEMORY[0x277D83A90];
    *aBlock = v16;
    sub_24A583BD0(1, aBlock);

    sub_24A50EC28(aBlock);
  }

  v19 = objc_opt_self();
  [v19 begin];
  if (qword_27EF4EC98 != -1)
  {
    swift_once();
  }

  v20 = sub_24A506EB8(v10, qword_27EF5CAC0);
  sub_24A5461E8(v20, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v13[1];
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_24A62E934();
    v21 = v22;
    (*(v6 + 8))(v9, v5);
  }

  [v19 setDuration_];
  v23 = sub_24A6268BC();
  [v19 setTimingFunction_];

  v24 = swift_allocObject();
  v26 = v33;
  v25 = v34;
  v24[2] = v33;
  v24[3] = v25;
  v24[4] = a1;
  v38 = sub_24A547994;
  v39 = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  v37 = &unk_285DA2AC8;
  v27 = _Block_copy(aBlock);
  sub_24A519360(v26, v25);
  v28 = a1;

  [v19 setCompletionBlock_];
  _Block_release(v27);
  v29 = swift_weakLoadStrong();
  if (v29)
  {
    v30 = *(v29 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v37 = MEMORY[0x277D839F8];
    aBlock[0] = 0;
    sub_24A583BD0(1, aBlock);

    sub_24A50EC28(aBlock);
  }

  return [v19 commit];
}

uint64_t sub_24A52B95C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A62E364();
}

void sub_24A52B9D4(NSObject *a1, char a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v10 = sub_24A62E654();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_27EF4EB20 != -1)
    {
      swift_once();
    }

    if (qword_27EF4EB28 != -1)
    {
      swift_once();
    }

    if (a1)
    {
      dispatch_group_enter(a1);
    }

    swift_retain_n();
    v16 = sub_24A62E644();
    v19[0] = v19;
    MEMORY[0x28223BE20](v16);
    v19[-2] = a3;
    LOBYTE(v19[-1]) = 0;
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = 0;
    *(v17 + 32) = a3;
    *(v17 + 40) = a4;
    *(v17 + 48) = a5;
    v18 = a1;

    sub_24A519360(a4, a5);
    sub_24A62E3E4();

    (*(v11 + 8))(v15, v10);
  }

  else if (a4)
  {
    a4(v13);
  }

  if (a1)
  {
    dispatch_group_leave(a1);
  }
}

uint64_t sub_24A52BC40(int a1, int a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v7 = sub_24A62EA94();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_24A62EAD4();
  v12 = *(v25 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v25);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v23 = v8;
    v18 = dispatch_group_create();
    if (a1 > 2u)
    {
      if (a1 - 4 >= 2)
      {
        if (a1 == 3)
        {
          sub_24A538760(a2, v18, v17);
        }
      }

      else
      {
        sub_24A53D71C(a1, a2, v18, v17);
      }
    }

    else if (a1)
    {
      if (a1 == 1)
      {
        sub_24A530424(a2, v18, v17);
      }

      else if (a1 == 2)
      {
        sub_24A5344A4(a2, v18, v17);
      }
    }

    else
    {
      sub_24A52BFA4(a2, v18, v17);
    }

    sub_24A545E8C();
    v19 = sub_24A62F014();
    v20 = swift_allocObject();
    v21 = v24;
    *(v20 + 16) = a3;
    *(v20 + 24) = v21;
    aBlock[4] = sub_24A545F18;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA1768;
    v22 = _Block_copy(aBlock);
    sub_24A519360(a3, v21);
    sub_24A62EAB4();
    v26 = MEMORY[0x277D84F90];
    sub_24A545F60();
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    sub_24A62EFB4();
    _Block_release(v22);

    (*(v23 + 8))(v11, v7);
    (*(v12 + 8))(v15, v25);
  }

  return result;
}

uint64_t sub_24A52BFA4(int a1, NSObject *a2, uint64_t a3)
{
  v4 = v3;
  v383 = a1;
  v386 = sub_24A62E984();
  v385 = *(v386 - 8);
  v7 = *(v385 + 64);
  MEMORY[0x28223BE20](v386);
  v384 = &v368 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v395 = type metadata accessor for PFVFXAnimation();
  v9 = *(*(v395 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v395);
  v374 = &v368 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v373 = &v368 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v372 = &v368 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v370 = &v368 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v371 = &v368 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v369 = &v368 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v368 = &v368 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v382 = &v368 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v401 = (&v368 - v27);
  MEMORY[0x28223BE20](v26);
  v381 = &v368 - v28;
  v400 = sub_24A62EA94();
  v404 = *(v400 - 8);
  v29 = *(v404 + 64);
  MEMORY[0x28223BE20](v400);
  v398 = &v368 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v399 = sub_24A62EAD4();
  v403 = *(v399 - 8);
  v31 = *(v403 + 64);
  MEMORY[0x28223BE20](v399);
  v397 = &v368 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v394 = sub_24A62EAF4();
  v405 = *(v394 - 1);
  isa = v405[8].isa;
  v34 = MEMORY[0x28223BE20](v394);
  v36 = (&v368 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v34);
  v393 = &v368 - v37;
  v410 = sub_24A62E654();
  v38 = *(v410 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v410);
  v41 = &v368 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v376 = a3;
  v375 = OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxIsArcFullRing;
  *(a3 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxIsArcFullRing) = 0;
  if (qword_27EF4EC10 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(a2);
  v42 = sub_24A62E644();
  MEMORY[0x28223BE20](v42);
  *(&v368 - 2) = v3;
  *(&v368 - 8) = 0;
  v43 = swift_allocObject();
  v43[2] = 0;
  v43[3] = 0;
  v43[4] = a2;
  v44 = a2;
  sub_24A62E3E4();
  v396 = 0;

  v406 = *(v38 + 8);
  v407 = v38 + 8;
  v402 = v41;
  v406(v41, v410);
  dispatch_group_enter(v44);
  v387 = sub_24A545E8C();
  v392 = sub_24A62F014();
  sub_24A62EAE4();
  v45 = v393;
  sub_24A62EB54();
  v46 = v405 + 1;
  v47 = v405[1].isa;
  v380 = v36;
  v48 = v394;
  (v47)(v36, v394);
  v49 = swift_allocObject();
  *(v49 + 16) = v4;
  *(v49 + 24) = 0;
  *(v49 + 32) = 0;
  *(v49 + 40) = 0;
  v408 = a2;
  *(v49 + 48) = a2;
  v416 = sub_24A545FE8;
  v417 = v49;
  aBlock = MEMORY[0x277D85DD0];
  v413 = 1107296256;
  v414 = sub_24A5A8458;
  v415 = &unk_285DA17E0;
  v50 = _Block_copy(&aBlock);
  v378 = v44;
  v409 = v4;

  v51 = v397;
  sub_24A62EAB4();
  aBlock = MEMORY[0x277D84F90];
  v52 = sub_24A545F60();
  v53 = sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  v54 = sub_24A529464();
  v55 = v398;
  v389 = v53;
  v388 = v54;
  v56 = v400;
  v390 = v52;
  sub_24A62F254();
  v57 = v392;
  MEMORY[0x24C21A910](v45, v51, v55, v50);
  _Block_release(v50);

  v58 = *(v404 + 8);
  v404 += 8;
  v391 = v58;
  v58(v55, v56);
  v59 = *(v403 + 8);
  v403 += 8;
  v392 = v59;
  v59(v51, v399);
  v379 = v47;
  (v47)(v45, v48);
  v60 = v410;
  if (qword_27EF4EC00 != -1)
  {
    swift_once();
  }

  v405 = v46;
  v61 = v378;
  dispatch_group_enter(v378);
  v62 = v402;
  v63 = sub_24A62E644();
  MEMORY[0x28223BE20](v63);
  *(&v368 - 2) = v409;
  *(&v368 - 8) = 0;
  v64 = swift_allocObject();
  v64[2] = 0;
  v64[3] = 0;
  v65 = v408;
  v64[4] = v408;
  v66 = v61;
  v67 = v396;
  sub_24A62E3E4();

  v68 = v406;
  v406(v62, v60);
  if (qword_27EF4EC18 != -1)
  {
    swift_once();
  }

  v69 = qword_27EF5C980;
  dispatch_group_enter(v66);
  v70 = sub_24A62E644();
  v396 = &v368;
  MEMORY[0x28223BE20](v70);
  v71 = v409;
  *(&v368 - 2) = v409;
  *(&v368 - 8) = 0;
  v72 = swift_allocObject();
  v72[2] = 0;
  v72[3] = 0;
  v72[4] = v65;
  v73 = v66;
  sub_24A62E3E4();

  v68(v62, v410);
  sub_24A52AE18(0, v69, v65, 0, 0);
  if (qword_27EF4EB68 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v73);
  v74 = sub_24A62E644();
  v396 = &v368;
  MEMORY[0x28223BE20](v74);
  *(&v368 - 2) = v71;
  *(&v368 - 8) = 0;
  v75 = swift_allocObject();
  v75[2] = 0;
  v75[3] = 0;
  v75[4] = v65;
  v76 = v73;
  sub_24A62E3E4();

  v77 = v410;
  v68(v62, v410);
  v78 = v68;
  if (qword_27EF4EAE0 != -1)
  {
    swift_once();
  }

  v79 = qword_27EF5C848;
  dispatch_group_enter(v76);
  v80 = sub_24A62E644();
  v396 = &v368;
  MEMORY[0x28223BE20](v80);
  v81 = v409;
  *(&v368 - 2) = v409;
  *(&v368 - 8) = 0;
  v82 = swift_allocObject();
  v82[2] = 0;
  v82[3] = 0;
  v83 = v408;
  v82[4] = v408;
  v84 = v76;
  sub_24A62E3E4();

  v78(v62, v77);
  dispatch_group_enter(v84);
  v85 = sub_24A62E644();
  v377 = &v368;
  MEMORY[0x28223BE20](v85);
  *(&v368 - 2) = v81;
  *(&v368 - 8) = 0;
  v86 = swift_allocObject();
  v86[2] = 0;
  v86[3] = 0;
  v86[4] = v83;
  v87 = v84;
  v396 = v79;
  sub_24A62E3E4();
  v378 = v67;

  v78(v62, v410);
  dispatch_group_enter(v87);
  v377 = sub_24A62F014();
  v88 = v380;
  sub_24A62EAE4();
  v89 = v393;
  sub_24A62EB54();
  v90 = v394;
  v91 = v379;
  v379(v88, v394);
  v92 = swift_allocObject();
  v93 = v408;
  v94 = v409;
  *(v92 + 16) = v409;
  *(v92 + 24) = 0;
  *(v92 + 32) = 0;
  *(v92 + 40) = 0;
  *(v92 + 48) = v93;
  v416 = sub_24A5460EC;
  v417 = v92;
  aBlock = MEMORY[0x277D85DD0];
  v413 = 1107296256;
  v414 = sub_24A5A8458;
  v415 = &unk_285DA18F8;
  v95 = _Block_copy(&aBlock);
  v380 = v87;

  v96 = v397;
  sub_24A62EAB4();
  aBlock = MEMORY[0x277D84F90];
  v97 = v398;
  v98 = v400;
  sub_24A62F254();
  v99 = v377;
  MEMORY[0x24C21A910](v89, v96, v97, v95);
  _Block_release(v95);

  v391(v97, v98);
  v392(v96, v399);
  v91(v89, v90);
  v100 = v94;
  v101 = v406;
  if (qword_27EF4EB10 != -1)
  {
    swift_once();
  }

  v102 = v380;
  dispatch_group_enter(v380);
  sub_24A62E644();
  v103 = swift_allocObject();
  v103[2] = v100;
  v103[3] = 0;
  v104 = v408;
  v103[4] = 0;
  v103[5] = v104;
  v105 = v102;

  v106 = v378;
  sub_24A62E3E4();

  v107 = v410;
  v101(v62, v410);
  dispatch_group_enter(v105);
  v108 = sub_24A62E644();
  v394 = &v368;
  MEMORY[0x28223BE20](v108);
  *(&v368 - 2) = v100;
  *(&v368 - 8) = 0;
  v109 = swift_allocObject();
  v109[2] = 0;
  v109[3] = 0;
  v109[4] = v104;
  v405 = v105;
  sub_24A62E3E4();

  v101(v62, v107);
  v110 = v62;
  if (qword_27EF4EC08 != -1)
  {
    swift_once();
  }

  v111 = v405;
  dispatch_group_enter(v405);
  v112 = sub_24A62E644();
  MEMORY[0x28223BE20](v112);
  *(&v368 - 2) = v100;
  *(&v368 - 8) = 0;
  v113 = swift_allocObject();
  v113[2] = 0;
  v113[3] = 0;
  v113[4] = v104;
  v114 = v111;
  sub_24A62E3E4();

  v115 = v410;
  v116 = v406;
  v406(v110, v410);
  dispatch_group_enter(v114);
  v117 = sub_24A62E644();
  v405 = &v368;
  MEMORY[0x28223BE20](v117);
  *(&v368 - 2) = v100;
  *(&v368 - 8) = 0;
  v118 = swift_allocObject();
  v118[2] = 0;
  v118[3] = 0;
  v118[4] = v104;
  v119 = v114;
  sub_24A62E3E4();

  v116(v110, v115);
  v120 = v116;
  if (qword_27EF4ECB0 != -1)
  {
    swift_once();
  }

  v121 = v395;
  v122 = sub_24A506EB8(v395, qword_27EF5CB08);
  dispatch_group_enter(v119);
  v123 = objc_opt_self();
  [v123 begin];
  v124 = v381;
  sub_24A5461E8(v122, v381);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v125 = *(v124 + 8);
  }

  else
  {
    v126 = v385;
    v127 = v384;
    v128 = v124;
    v129 = v386;
    (*(v385 + 32))(v384, v128, v386);
    sub_24A62E934();
    v125 = v130;
    (*(v126 + 8))(v127, v129);
  }

  v131 = v408;
  [v123 setDuration_];
  v132 = sub_24A6268BC();
  [v123 setTimingFunction_];

  v133 = swift_allocObject();
  v133[2] = 0;
  v133[3] = 0;
  v133[4] = v131;
  v416 = sub_24A547994;
  v417 = v133;
  aBlock = MEMORY[0x277D85DD0];
  v413 = 1107296256;
  v414 = sub_24A5A8458;
  v415 = &unk_285DA19E8;
  v134 = _Block_copy(&aBlock);
  v135 = v119;

  [v123 setCompletionBlock_];
  _Block_release(v134);
  v405 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_vfxManager;
  Strong = swift_weakLoadStrong();
  v137 = MEMORY[0x277D83A90];
  if (Strong)
  {
    v138 = *(Strong + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v415 = v137;
    LODWORD(aBlock) = 1065353216;
    sub_24A583BD0(11, &aBlock);

    sub_24A50EC28(&aBlock);
  }

  [v123 commit];
  v139 = v402;
  if (qword_27EF4ECA0 != -1)
  {
    swift_once();
  }

  v140 = sub_24A506EB8(v121, qword_27EF5CAD8);
  v141 = v401;
  sub_24A5461E8(v140, v401);
  dispatch_group_enter(v135);
  [v123 begin];
  v142 = v141;
  v143 = v382;
  sub_24A5461E8(v142, v382);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v144 = *(v143 + 8);
  }

  else
  {
    v145 = v385;
    v146 = v384;
    v147 = v143;
    v148 = v386;
    (*(v385 + 32))(v384, v147, v386);
    sub_24A62E934();
    v144 = v149;
    v150 = v145;
    v131 = v408;
    (*(v150 + 8))(v146, v148);
  }

  [v123 setDuration_];
  v151 = sub_24A6268BC();
  [v123 setTimingFunction_];

  v152 = swift_allocObject();
  v152[2] = 0;
  v152[3] = 0;
  v152[4] = v131;
  v416 = sub_24A547994;
  v417 = v152;
  aBlock = MEMORY[0x277D85DD0];
  v413 = 1107296256;
  v414 = sub_24A5A8458;
  v415 = &unk_285DA1A38;
  v153 = _Block_copy(&aBlock);
  v154 = v135;

  [v123 setCompletionBlock_];
  _Block_release(v153);
  v155 = swift_weakLoadStrong();
  if (v155)
  {
    v156 = *(v155 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v415 = MEMORY[0x277D83A90];
    LODWORD(aBlock) = 0;
    sub_24A583BD0(8, &aBlock);

    sub_24A50EC28(&aBlock);
  }

  [v123 commit];
  result = sub_24A54624C(v401);
  if (v383 <= 3u)
  {
    switch(v383)
    {
      case 1u:
        dispatch_group_enter(v154);
        v179 = sub_24A62E644();
        MEMORY[0x28223BE20](v179);
        *(&v368 - 2) = v409;
        *(&v368 - 8) = 1;
        v180 = swift_allocObject();
        v180[2] = 0;
        v180[3] = 0;
        v180[4] = v131;
        v181 = v154;
        sub_24A62E3E4();

        v120(v139, v410);
        if (qword_27EF4EC78 != -1)
        {
          swift_once();
        }

        v182 = sub_24A506EB8(v395, qword_27EF5CA60);
        dispatch_group_enter(v181);
        [v123 begin];
        v183 = v368;
        sub_24A5461E8(v182, v368);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v184 = *(v183 + 8);
        }

        else
        {
          v242 = v183;
          v243 = v385;
          v244 = v384;
          v245 = v386;
          (*(v385 + 32))(v384, v242, v386);
          sub_24A62E934();
          v184 = v246;
          v247 = v245;
          v131 = v408;
          (*(v243 + 8))(v244, v247);
        }

        [v123 setDuration_];
        v248 = sub_24A6268BC();
        [v123 setTimingFunction_];

        v249 = swift_allocObject();
        v249[2] = 0;
        v249[3] = 0;
        v249[4] = v131;
        v416 = sub_24A547994;
        v417 = v249;
        aBlock = MEMORY[0x277D85DD0];
        v413 = 1107296256;
        v414 = sub_24A5A8458;
        v415 = &unk_285DA1FD8;
        v250 = _Block_copy(&aBlock);
        v251 = v181;

        [v123 setCompletionBlock_];
        _Block_release(v250);
        v252 = swift_weakLoadStrong();
        if (v252)
        {
          v253 = *(v252 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

          v415 = MEMORY[0x277D83A90];
          LODWORD(aBlock) = 0;
          sub_24A583BD0(9, &aBlock);

          sub_24A50EC28(&aBlock);
        }

        [v123 commit];
        if (qword_27EF4EBF0 != -1)
        {
          swift_once();
        }

        dispatch_group_enter(v251);
        v254 = sub_24A62E644();
        MEMORY[0x28223BE20](v254);
        *(&v368 - 2) = v409;
        *(&v368 - 8) = 0;
        v255 = swift_allocObject();
        v255[2] = 0;
        v255[3] = 0;
        v255[4] = v408;
        v405 = v251;
        sub_24A62E3E4();

        v120(v139, v410);
        if (qword_27EF4EBA0 != -1)
        {
          swift_once();
        }

        if (qword_27EF4EBA8 != -1)
        {
          swift_once();
        }

        v401 = qword_27EF5C910;
        v256 = dispatch_group_create();
        dispatch_group_enter(v256);
        v257 = sub_24A62E644();
        MEMORY[0x28223BE20](v257);
        v258 = v409;
        *(&v368 - 2) = v409;
        *(&v368 - 8) = 1;
        *(swift_allocObject() + 16) = v256;
        v259 = v256;
        sub_24A62E3E4();

        v260 = v410;
        v120(v402, v410);
        dispatch_group_enter(v259);
        v261 = sub_24A62E644();
        MEMORY[0x28223BE20](v261);
        *(&v368 - 2) = v258;
        *(&v368 - 8) = 1;
        *(swift_allocObject() + 16) = v259;
        v262 = v259;
        sub_24A62E3E4();
        v401 = v106;

        v139 = v402;
        v120(v402, v260);
        v263 = v405;
        dispatch_group_enter(v405);
        v264 = sub_24A62F014();
        v265 = swift_allocObject();
        v265[2] = 0;
        v265[3] = 0;
        v266 = v408;
        v265[4] = v408;
        v416 = sub_24A547994;
        v417 = v265;
        aBlock = MEMORY[0x277D85DD0];
        v413 = 1107296256;
        v414 = sub_24A5A8458;
        v415 = &unk_285DA20A0;
        v267 = _Block_copy(&aBlock);
        v268 = v263;
        v269 = v397;
        sub_24A62EAB4();
        v411 = MEMORY[0x277D84F90];
        v270 = v398;
        v271 = v400;
        sub_24A62F254();
        sub_24A62EFB4();
        _Block_release(v267);

        v391(v270, v271);
        v392(v269, v399);

        if (qword_27EF4EB98 == -1)
        {
          goto LABEL_118;
        }

        break;
      case 2u:
        v234 = v376;
        *(v376 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetArrow) = 0;
        *(v234 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetSphere) = 0;
        dispatch_group_enter(v154);
        v235 = sub_24A62E644();
        MEMORY[0x28223BE20](v235);
        *(&v368 - 2) = v409;
        *(&v368 - 8) = 1;
        v236 = swift_allocObject();
        v236[2] = 0;
        v236[3] = 0;
        v236[4] = v131;
        v237 = v154;
        sub_24A62E3E4();

        v120(v139, v410);
        if (qword_27EF4EC80 != -1)
        {
          swift_once();
        }

        v238 = v395;
        v239 = sub_24A506EB8(v395, qword_27EF5CA78);
        dispatch_group_enter(v237);
        [v123 begin];
        v240 = v369;
        sub_24A5461E8(v239, v369);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v241 = *(v240 + 8);
        }

        else
        {
          v321 = v385;
          v322 = v240;
          v323 = v384;
          v324 = v386;
          (*(v385 + 32))(v384, v322, v386);
          sub_24A62E934();
          v241 = v325;
          v326 = v321;
          v238 = v395;
          v327 = v324;
          v131 = v408;
          (*(v326 + 8))(v323, v327);
        }

        [v123 setDuration_];
        v328 = sub_24A6268BC();
        [v123 setTimingFunction_];

        v329 = swift_allocObject();
        v329[2] = 0;
        v329[3] = 0;
        v329[4] = v131;
        v416 = sub_24A547994;
        v417 = v329;
        aBlock = MEMORY[0x277D85DD0];
        v413 = 1107296256;
        v414 = sub_24A5A8458;
        v415 = &unk_285DA1E20;
        v330 = _Block_copy(&aBlock);
        v331 = v237;

        [v123 setCompletionBlock_];
        _Block_release(v330);
        v332 = swift_weakLoadStrong();
        if (v332)
        {
          v333 = *(v332 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

          v415 = MEMORY[0x277D83A90];
          LODWORD(aBlock) = 0;
          sub_24A583BD0(9, &aBlock);

          sub_24A50EC28(&aBlock);
        }

        [v123 commit];
        if (qword_27EF4EC38 != -1)
        {
          swift_once();
        }

        v334 = sub_24A506EB8(v238, qword_27EF5C9A0);
        dispatch_group_enter(v331);
        [v123 begin];
        v335 = v371;
        sub_24A5461E8(v334, v371);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v336 = *(v335 + 8);
        }

        else
        {
          v337 = v385;
          v338 = v335;
          v339 = v384;
          v340 = v386;
          (*(v385 + 32))(v384, v338, v386);
          sub_24A62E934();
          v336 = v341;
          v342 = v340;
          v131 = v408;
          (*(v337 + 8))(v339, v342);
        }

        [v123 setDuration_];
        v343 = sub_24A6268BC();
        [v123 setTimingFunction_];

        v344 = swift_allocObject();
        v344[2] = 0;
        v344[3] = 0;
        v344[4] = v131;
        v416 = sub_24A547994;
        v417 = v344;
        aBlock = MEMORY[0x277D85DD0];
        v413 = 1107296256;
        v414 = sub_24A5A8458;
        v415 = &unk_285DA1E70;
        v345 = _Block_copy(&aBlock);
        v346 = v331;

        [v123 setCompletionBlock_];
        _Block_release(v345);
        v347 = swift_weakLoadStrong();
        if (v347)
        {
          v348 = *(v347 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

          v415 = MEMORY[0x277D83A90];
          LODWORD(aBlock) = 0;
          sub_24A583BD0(10, &aBlock);

          sub_24A50EC28(&aBlock);
        }

        [v123 commit];
        if (qword_27EF4EBF0 != -1)
        {
          swift_once();
        }

        dispatch_group_enter(v346);
        v349 = sub_24A62E644();
        MEMORY[0x28223BE20](v349);
        *(&v368 - 2) = v409;
        *(&v368 - 8) = 0;
        v350 = swift_allocObject();
        v350[2] = 0;
        v350[3] = 0;
        v350[4] = v408;
        v405 = v346;
        sub_24A62E3E4();

        v120(v139, v410);
        if (qword_27EF4EBA0 != -1)
        {
          swift_once();
        }

        if (qword_27EF4EBA8 != -1)
        {
          swift_once();
        }

        v401 = qword_27EF5C910;
        v351 = dispatch_group_create();
        dispatch_group_enter(v351);
        v352 = sub_24A62E644();
        MEMORY[0x28223BE20](v352);
        v353 = v409;
        *(&v368 - 2) = v409;
        *(&v368 - 8) = 1;
        *(swift_allocObject() + 16) = v351;
        v354 = v351;
        sub_24A62E3E4();

        v355 = v410;
        v120(v402, v410);
        dispatch_group_enter(v354);
        v356 = sub_24A62E644();
        MEMORY[0x28223BE20](v356);
        *(&v368 - 2) = v353;
        *(&v368 - 8) = 1;
        *(swift_allocObject() + 16) = v354;
        v357 = v354;
        sub_24A62E3E4();
        v401 = v106;

        v139 = v402;
        v120(v402, v355);
        v358 = v405;
        dispatch_group_enter(v405);
        v359 = sub_24A62F014();
        v360 = swift_allocObject();
        v360[2] = 0;
        v360[3] = 0;
        v266 = v408;
        v360[4] = v408;
        v416 = sub_24A547994;
        v417 = v360;
        aBlock = MEMORY[0x277D85DD0];
        v413 = 1107296256;
        v414 = sub_24A5A8458;
        v415 = &unk_285DA1F38;
        v361 = _Block_copy(&aBlock);
        v268 = v358;
        v362 = v397;
        sub_24A62EAB4();
        v411 = MEMORY[0x277D84F90];
        v363 = v398;
        v364 = v400;
        sub_24A62F254();
        sub_24A62EFB4();
        _Block_release(v361);

        v391(v363, v364);
        v392(v362, v399);

        if (qword_27EF4EB98 == -1)
        {
LABEL_118:
          dispatch_group_enter(v268);
          v365 = sub_24A62E644();
          MEMORY[0x28223BE20](v365);
          *(&v368 - 2) = v409;
          *(&v368 - 8) = 1;
          v366 = swift_allocObject();
          v366[2] = 0;
          v366[3] = 0;
          v366[4] = v266;
          v367 = v268;
          sub_24A62E3E4();
LABEL_119:
          v178 = v410;
          goto LABEL_120;
        }

        break;
      case 3u:
        v158 = v376;
        *(v376 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetArrow) = 1;
        *(v158 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetSphere) = 0;
        *(v158 + v375) = 1;
        dispatch_group_enter(v154);
        v159 = sub_24A62E644();
        MEMORY[0x28223BE20](v159);
        *(&v368 - 2) = v409;
        *(&v368 - 8) = 1;
        v160 = swift_allocObject();
        v160[2] = 0;
        v160[3] = 0;
        v160[4] = v131;
        v161 = v154;
        sub_24A62E3E4();

        v120(v139, v410);
        if (qword_27EF4EC80 != -1)
        {
          swift_once();
        }

        v162 = v395;
        v163 = sub_24A506EB8(v395, qword_27EF5CA78);
        dispatch_group_enter(v161);
        [v123 begin];
        v164 = v370;
        sub_24A5461E8(v163, v370);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v165 = *(v164 + 8);
        }

        else
        {
          v272 = v385;
          v273 = v164;
          v274 = v384;
          v275 = v386;
          (*(v385 + 32))(v384, v273, v386);
          sub_24A62E934();
          v165 = v276;
          v277 = v272;
          v162 = v395;
          v278 = v275;
          v131 = v408;
          (*(v277 + 8))(v274, v278);
        }

        [v123 setDuration_];
        v279 = sub_24A6268BC();
        [v123 setTimingFunction_];

        v280 = swift_allocObject();
        v280[2] = 0;
        v280[3] = 0;
        v280[4] = v131;
        v416 = sub_24A547994;
        v417 = v280;
        aBlock = MEMORY[0x277D85DD0];
        v413 = 1107296256;
        v414 = sub_24A5A8458;
        v415 = &unk_285DA1C68;
        v281 = _Block_copy(&aBlock);
        v282 = v161;

        [v123 setCompletionBlock_];
        _Block_release(v281);
        v283 = swift_weakLoadStrong();
        if (v283)
        {
          v284 = *(v283 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

          v415 = MEMORY[0x277D83A90];
          LODWORD(aBlock) = 0;
          sub_24A583BD0(9, &aBlock);

          sub_24A50EC28(&aBlock);
        }

        [v123 commit];
        if (qword_27EF4EC38 != -1)
        {
          swift_once();
        }

        v285 = sub_24A506EB8(v162, qword_27EF5C9A0);
        dispatch_group_enter(v282);
        [v123 begin];
        v286 = v372;
        sub_24A5461E8(v285, v372);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v287 = *(v286 + 8);
        }

        else
        {
          v288 = v385;
          v289 = v286;
          v290 = v384;
          v291 = v386;
          (*(v385 + 32))(v384, v289, v386);
          sub_24A62E934();
          v287 = v292;
          v293 = v291;
          v131 = v408;
          (*(v288 + 8))(v290, v293);
        }

        [v123 setDuration_];
        v294 = sub_24A6268BC();
        [v123 setTimingFunction_];

        v295 = swift_allocObject();
        v295[2] = 0;
        v295[3] = 0;
        v295[4] = v131;
        v416 = sub_24A547994;
        v417 = v295;
        aBlock = MEMORY[0x277D85DD0];
        v413 = 1107296256;
        v414 = sub_24A5A8458;
        v415 = &unk_285DA1CB8;
        v296 = _Block_copy(&aBlock);
        v401 = v282;

        [v123 setCompletionBlock_];
        _Block_release(v296);
        v297 = swift_weakLoadStrong();
        if (v297)
        {
          v298 = *(v297 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

          v415 = MEMORY[0x277D83A90];
          LODWORD(aBlock) = 0;
          sub_24A583BD0(10, &aBlock);

          sub_24A50EC28(&aBlock);
        }

        [v123 commit];
        swift_getKeyPath();
        swift_getKeyPath();
        aBlock = 0xBFE47AE147AE147BLL;

        sub_24A62E364();
        if (qword_27EF4EBD8 != -1)
        {
          swift_once();
        }

        if (qword_27EF4EBD0 != -1)
        {
          swift_once();
        }

        v405 = sub_24A62EA04();
        v299 = dispatch_group_create();
        dispatch_group_enter(v299);
        v300 = sub_24A62E644();
        MEMORY[0x28223BE20](v300);
        v301 = v409;
        *(&v368 - 2) = v409;
        *(&v368 - 8) = 1;
        *(swift_allocObject() + 16) = v299;
        v302 = v299;
        sub_24A62E3E4();

        v303 = v410;
        v120(v139, v410);
        dispatch_group_enter(v302);
        v304 = sub_24A62E644();
        MEMORY[0x28223BE20](v304);
        *(&v368 - 2) = v301;
        *(&v368 - 8) = 1;
        *(swift_allocObject() + 16) = v302;
        v396 = v302;
        sub_24A62E3E4();

        v120(v139, v303);
        v305 = v401;
        dispatch_group_enter(v401);
        v306 = sub_24A62F014();
        v307 = swift_allocObject();
        v307[2] = 0;
        v307[3] = 0;
        v307[4] = v408;
        v416 = sub_24A547994;
        v417 = v307;
        aBlock = MEMORY[0x277D85DD0];
        v413 = 1107296256;
        v414 = sub_24A5A8458;
        v415 = &unk_285DA1D58;
        v308 = _Block_copy(&aBlock);
        v309 = v305;
        v310 = v397;
        sub_24A62EAB4();
        v411 = MEMORY[0x277D84F90];
        v311 = v398;
        v312 = v400;
        sub_24A62F254();
        v313 = v396;
        sub_24A62EFB4();
        _Block_release(v308);

        v391(v311, v312);
        v392(v310, v399);

        if (qword_27EF4EAE8 != -1)
        {
          swift_once();
        }

        sub_24A62EA04();
        dispatch_group_enter(v309);
        v314 = sub_24A62E644();
        MEMORY[0x28223BE20](v314);
        v315 = v409;
        *(&v368 - 2) = v409;
        *(&v368 - 8) = 0;
        v316 = swift_allocObject();
        v316[2] = 0;
        v316[3] = 0;
        v316[4] = v408;
        v317 = v309;
        sub_24A62E3E4();

        v406(v139, v410);
        if (qword_27EF4EB98 != -1)
        {
          swift_once();
        }

        dispatch_group_enter(v317);
        v318 = sub_24A62E644();
        MEMORY[0x28223BE20](v318);
        *(&v368 - 2) = v315;
        *(&v368 - 8) = 1;
        v319 = swift_allocObject();
        v319[2] = 0;
        v319[3] = 0;
        v319[4] = v408;
        v320 = v317;
        sub_24A62E3E4();
        goto LABEL_119;
      default:
        return result;
    }

    swift_once();
    goto LABEL_118;
  }

  if (v383 - 4 >= 2)
  {
    if (v383 != 6)
    {
      return result;
    }

    sub_24A62E9E4();
    dispatch_group_enter(v154);
    v175 = sub_24A62E644();
    MEMORY[0x28223BE20](v175);
    *(&v368 - 2) = v409;
    *(&v368 - 8) = 1;
    v176 = swift_allocObject();
    v176[2] = 0;
    v176[3] = 0;
    v176[4] = v131;
    v177 = v154;
    sub_24A62E3E4();

    v178 = v410;
  }

  else
  {
    dispatch_group_enter(v154);
    v166 = sub_24A62E644();
    MEMORY[0x28223BE20](v166);
    *(&v368 - 2) = v409;
    *(&v368 - 8) = 1;
    v167 = swift_allocObject();
    v167[2] = 0;
    v167[3] = 0;
    v167[4] = v131;
    v168 = v154;
    sub_24A62E3E4();
    v401 = v106;

    v406(v139, v410);
    v169 = v376;
    *(v376 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetArrow) = 0;
    *(v169 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetSphere) = 1;
    *(v169 + v375) = 1;
    if (qword_27EF4EC80 != -1)
    {
      swift_once();
    }

    v170 = sub_24A506EB8(v395, qword_27EF5CA78);
    dispatch_group_enter(v168);
    [v123 begin];
    v171 = v373;
    sub_24A5461E8(v170, v373);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v173 = v374;
    if (EnumCaseMultiPayload == 1)
    {
      v174 = *(v171 + 8);
    }

    else
    {
      v185 = v385;
      v186 = v384;
      v187 = v171;
      v188 = v386;
      (*(v385 + 32))(v384, v187, v386);
      sub_24A62E934();
      v174 = v189;
      (*(v185 + 8))(v186, v188);
    }

    v190 = v408;
    [v123 setDuration_];
    v191 = sub_24A6268BC();
    [v123 setTimingFunction_];

    v192 = swift_allocObject();
    v192[2] = 0;
    v192[3] = 0;
    v192[4] = v190;
    v416 = sub_24A547994;
    v417 = v192;
    aBlock = MEMORY[0x277D85DD0];
    v413 = 1107296256;
    v414 = sub_24A5A8458;
    v415 = &unk_285DA1AB0;
    v193 = _Block_copy(&aBlock);
    v194 = v168;

    [v123 setCompletionBlock_];
    _Block_release(v193);
    v195 = swift_weakLoadStrong();
    if (v195)
    {
      v196 = *(v195 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

      v415 = MEMORY[0x277D83A90];
      LODWORD(aBlock) = 0;
      sub_24A583BD0(9, &aBlock);

      sub_24A50EC28(&aBlock);
    }

    [v123 commit];
    if (qword_27EF4EC40 != -1)
    {
      swift_once();
    }

    v197 = sub_24A506EB8(v395, qword_27EF5C9B8);
    dispatch_group_enter(v194);
    [v123 begin];
    sub_24A5461E8(v197, v173);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v198 = *(v173 + 8);
    }

    else
    {
      v199 = v385;
      v200 = v384;
      v201 = v173;
      v202 = v386;
      (*(v385 + 32))(v384, v201, v386);
      sub_24A62E934();
      v198 = v203;
      (*(v199 + 8))(v200, v202);
    }

    [v123 setDuration_];
    v204 = sub_24A6268BC();
    [v123 setTimingFunction_];

    v205 = swift_allocObject();
    v205[2] = 0;
    v205[3] = 0;
    v205[4] = v190;
    v416 = sub_24A547994;
    v417 = v205;
    aBlock = MEMORY[0x277D85DD0];
    v413 = 1107296256;
    v414 = sub_24A5A8458;
    v415 = &unk_285DA1B00;
    v206 = _Block_copy(&aBlock);
    v396 = v194;

    [v123 setCompletionBlock_];
    _Block_release(v206);
    v207 = swift_weakLoadStrong();
    v208 = MEMORY[0x277D83A90];
    if (v207)
    {
      v209 = *(v207 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

      v415 = v208;
      LODWORD(aBlock) = 0;
      sub_24A583BD0(10, &aBlock);

      sub_24A50EC28(&aBlock);
    }

    [v123 commit];
    if (qword_27EF4EBA0 != -1)
    {
      swift_once();
    }

    v210 = sub_24A62EA04();
    if (qword_27EF4EBA8 != -1)
    {
      swift_once();
    }

    v405 = sub_24A62EA04();
    v211 = dispatch_group_create();
    dispatch_group_enter(v211);
    v139 = v402;
    v212 = sub_24A62E644();
    MEMORY[0x28223BE20](v212);
    v213 = v409;
    *(&v368 - 2) = v409;
    *(&v368 - 8) = 1;
    *(swift_allocObject() + 16) = v211;
    v214 = v211;
    v395 = v210;
    sub_24A62E3E4();

    v215 = v410;
    v216 = v406;
    v406(v139, v410);
    dispatch_group_enter(v214);
    v217 = sub_24A62E644();
    MEMORY[0x28223BE20](v217);
    *(&v368 - 2) = v213;
    *(&v368 - 8) = 1;
    *(swift_allocObject() + 16) = v214;
    v401 = v214;
    sub_24A62E3E4();

    v216(v139, v215);
    v218 = v396;
    dispatch_group_enter(v396);
    v219 = sub_24A62F014();
    v220 = swift_allocObject();
    v220[2] = 0;
    v220[3] = 0;
    v220[4] = v408;
    v416 = sub_24A547994;
    v417 = v220;
    aBlock = MEMORY[0x277D85DD0];
    v413 = 1107296256;
    v414 = sub_24A5A8458;
    v415 = &unk_285DA1BA0;
    v221 = _Block_copy(&aBlock);
    v222 = v218;
    v223 = v397;
    sub_24A62EAB4();
    v411 = MEMORY[0x277D84F90];
    v224 = v398;
    v225 = v400;
    sub_24A62F254();
    v226 = v401;
    sub_24A62EFB4();
    _Block_release(v221);

    v391(v224, v225);
    v392(v223, v399);

    if (qword_27EF4EB98 != -1)
    {
      swift_once();
    }

    sub_24A62EA04();
    dispatch_group_enter(v222);
    v227 = sub_24A62E644();
    MEMORY[0x28223BE20](v227);
    v228 = v409;
    *(&v368 - 2) = v409;
    *(&v368 - 8) = 1;
    v229 = swift_allocObject();
    v229[2] = 0;
    v229[3] = 0;
    v229[4] = v408;
    v230 = v222;
    sub_24A62E3E4();

    v178 = v410;
    v406(v139, v410);
    if (qword_27EF4EBF0 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v230);
    v231 = sub_24A62E644();
    MEMORY[0x28223BE20](v231);
    *(&v368 - 2) = v228;
    *(&v368 - 8) = 0;
    v232 = swift_allocObject();
    v232[2] = 0;
    v232[3] = 0;
    v232[4] = v408;
    v233 = v230;
    sub_24A62E3E4();
  }

LABEL_120:

  return (v406)(v139, v178);
}

id sub_24A530424(int a1, NSObject *a2, uint64_t a3)
{
  v4 = v3;
  v369 = a1;
  v370 = sub_24A62E984();
  v372 = *(v370 - 8);
  v7 = *(v372 + 64);
  MEMORY[0x28223BE20](v370);
  v371 = &v354 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v373 = type metadata accessor for PFVFXAnimation();
  v9 = *(*(v373 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v373);
  v360 = &v354 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v359 = &v354 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v358 = &v354 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v356 = &v354 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v357 = &v354 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v355 = &v354 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v354 = &v354 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v368 = &v354 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v386 = (&v354 - v27);
  MEMORY[0x28223BE20](v26);
  v367 = &v354 - v28;
  v384 = sub_24A62EA94();
  v389 = *(v384 - 8);
  v29 = *(v389 + 64);
  MEMORY[0x28223BE20](v384);
  v382 = &v354 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v383 = sub_24A62EAD4();
  v388 = *(v383 - 8);
  v31 = *(v388 + 64);
  MEMORY[0x28223BE20](v383);
  v381 = &v354 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v385 = sub_24A62EAF4();
  v391 = *(v385 - 8);
  isa = v391[8].isa;
  v34 = MEMORY[0x28223BE20](v385);
  v36 = (&v354 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v34);
  v380 = &v354 - v37;
  v395 = sub_24A62E654();
  v38 = *(v395 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v395);
  v41 = &v354 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v362 = a3;
  v361 = OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxIsArcFullRing;
  *(a3 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxIsArcFullRing) = 0;
  if (qword_27EF4EC10 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(a2);
  v42 = sub_24A62E644();
  MEMORY[0x28223BE20](v42);
  *(&v354 - 2) = v3;
  *(&v354 - 8) = 0;
  v43 = swift_allocObject();
  v43[2] = 0;
  v43[3] = 0;
  v43[4] = a2;
  v44 = a2;
  sub_24A62E3E4();
  v390 = 0;

  v45 = *(v38 + 8);
  v392 = v38 + 8;
  v393 = v45;
  v396 = v41;
  v45(v41, v395);
  dispatch_group_enter(v44);
  v374 = sub_24A545E8C();
  v379 = sub_24A62F014();
  sub_24A62EAE4();
  v46 = v380;
  sub_24A62EB54();
  v47 = v4;
  v49 = v391 + 1;
  v48 = v391[1].isa;
  v366 = v36;
  v50 = v385;
  (v48)(v36, v385);
  v51 = swift_allocObject();
  *(v51 + 16) = v47;
  *(v51 + 24) = 0;
  *(v51 + 32) = 0;
  *(v51 + 40) = 0;
  *(v51 + 48) = a2;
  v402 = sub_24A547A30;
  v403 = v51;
  aBlock = MEMORY[0x277D85DD0];
  v399 = 1107296256;
  v400 = sub_24A5A8458;
  v401 = &unk_285DA2230;
  v52 = _Block_copy(&aBlock);
  v364 = v44;
  v387 = v47;

  v53 = v381;
  sub_24A62EAB4();
  aBlock = MEMORY[0x277D84F90];
  v54 = sub_24A545F60();
  v394 = a2;
  v55 = v54;
  v56 = sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  v57 = sub_24A529464();
  v58 = v382;
  v376 = v56;
  v375 = v57;
  v59 = v384;
  v377 = v55;
  sub_24A62F254();
  v60 = v379;
  MEMORY[0x24C21A910](v46, v53, v58, v52);
  _Block_release(v52);

  v61 = *(v389 + 8);
  v389 += 8;
  v378 = v61;
  v61(v58, v59);
  v62 = *(v388 + 8);
  v388 += 8;
  v379 = v62;
  v62(v53, v383);
  v391 = v49;
  v365 = v48;
  (v48)(v46, v50);
  v63 = v395;
  if (qword_27EF4EC00 != -1)
  {
    swift_once();
  }

  v64 = v364;
  dispatch_group_enter(v364);
  v65 = sub_24A62E644();
  MEMORY[0x28223BE20](v65);
  v66 = v387;
  *(&v354 - 2) = v387;
  *(&v354 - 8) = 0;
  v67 = swift_allocObject();
  v67[2] = 0;
  v67[3] = 0;
  v67[4] = v394;
  v68 = v64;
  v69 = v390;
  sub_24A62E3E4();

  v70 = v393;
  v393(v396, v63);
  if (qword_27EF4EB98 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v68);
  v71 = sub_24A62E644();
  MEMORY[0x28223BE20](v71);
  *(&v354 - 2) = v66;
  *(&v354 - 8) = 1;
  v72 = swift_allocObject();
  v72[2] = 0;
  v72[3] = 0;
  v72[4] = v394;
  v73 = v68;
  sub_24A62E3E4();

  v70(v396, v395);
  if (qword_27EF4EC18 != -1)
  {
    swift_once();
  }

  v74 = qword_27EF5C980;
  dispatch_group_enter(v73);
  v75 = sub_24A62E644();
  MEMORY[0x28223BE20](v75);
  *(&v354 - 2) = v66;
  *(&v354 - 8) = 0;
  v76 = swift_allocObject();
  v76[2] = 0;
  v76[3] = 0;
  v77 = v394;
  v76[4] = v394;
  v78 = v73;
  sub_24A62E3E4();

  v393(v396, v395);
  sub_24A52AE18(0, v74, v77, 0, 0);
  if (qword_27EF4EB68 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v78);
  v79 = sub_24A62E644();
  MEMORY[0x28223BE20](v79);
  *(&v354 - 2) = v66;
  *(&v354 - 8) = 0;
  v80 = swift_allocObject();
  v80[2] = 0;
  v80[3] = 0;
  v80[4] = v394;
  v81 = v78;
  sub_24A62E3E4();

  v82 = v393;
  v393(v396, v395);
  if (qword_27EF4EAE0 != -1)
  {
    swift_once();
  }

  v390 = qword_27EF5C848;
  dispatch_group_enter(v81);
  v83 = sub_24A62E644();
  MEMORY[0x28223BE20](v83);
  *(&v354 - 2) = v66;
  *(&v354 - 8) = 0;
  v84 = swift_allocObject();
  v84[2] = 0;
  v84[3] = 0;
  v85 = v394;
  v84[4] = v394;
  v86 = v81;
  sub_24A62E3E4();

  v87 = v395;
  v82(v396, v395);
  dispatch_group_enter(v86);
  v88 = sub_24A62E644();
  MEMORY[0x28223BE20](v88);
  *(&v354 - 2) = v66;
  *(&v354 - 8) = 0;
  v89 = swift_allocObject();
  v89[2] = 0;
  v89[3] = 0;
  v89[4] = v85;
  v90 = v86;
  sub_24A62E3E4();

  v82(v396, v87);
  dispatch_group_enter(v90);
  v91 = sub_24A62E644();
  MEMORY[0x28223BE20](v91);
  *(&v354 - 2) = v66;
  *(&v354 - 8) = 1;
  v92 = swift_allocObject();
  v93 = v82;
  v92[2] = 0;
  v92[3] = 0;
  v92[4] = v85;
  v94 = v85;
  v95 = v90;
  sub_24A62E3E4();
  v364 = v69;

  v96 = v396;
  v93(v396, v87);
  dispatch_group_enter(v95);
  v363 = sub_24A62F014();
  v97 = v366;
  sub_24A62EAE4();
  v98 = v380;
  sub_24A62EB54();
  v99 = v365;
  v365(v97, v385);
  v100 = swift_allocObject();
  v101 = v387;
  *(v100 + 16) = v387;
  *(v100 + 24) = 0;
  *(v100 + 32) = 0;
  *(v100 + 40) = 0;
  *(v100 + 48) = v94;
  v402 = sub_24A547A54;
  v403 = v100;
  aBlock = MEMORY[0x277D85DD0];
  v399 = 1107296256;
  v400 = sub_24A5A8458;
  v401 = &unk_285DA2398;
  v102 = _Block_copy(&aBlock);
  v366 = v95;

  v103 = v381;
  sub_24A62EAB4();
  aBlock = MEMORY[0x277D84F90];
  v104 = v382;
  v105 = v384;
  sub_24A62F254();
  v106 = v363;
  MEMORY[0x24C21A910](v98, v103, v104, v102);
  _Block_release(v102);

  v378(v104, v105);
  v379(v103, v383);
  v99(v98, v385);
  v108 = v393;
  v107 = v394;
  if (qword_27EF4EB10 != -1)
  {
    swift_once();
  }

  v109 = v366;
  dispatch_group_enter(v366);
  sub_24A62E644();
  v110 = swift_allocObject();
  v110[2] = v101;
  v110[3] = 0;
  v110[4] = 0;
  v110[5] = v107;
  v111 = v109;

  v112 = v364;
  sub_24A62E3E4();

  v113 = v395;
  v108(v96, v395);
  dispatch_group_enter(v111);
  v114 = sub_24A62E644();
  MEMORY[0x28223BE20](v114);
  *(&v354 - 2) = v101;
  *(&v354 - 8) = 0;
  v115 = swift_allocObject();
  v115[2] = 0;
  v115[3] = 0;
  v115[4] = v107;
  v116 = v111;
  sub_24A62E3E4();

  v108(v396, v113);
  v117 = v101;
  if (qword_27EF4EC08 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v116);
  v118 = sub_24A62E644();
  MEMORY[0x28223BE20](v118);
  *(&v354 - 2) = v101;
  *(&v354 - 8) = 0;
  v119 = swift_allocObject();
  v119[2] = 0;
  v119[3] = 0;
  v120 = v394;
  v119[4] = v394;
  v121 = v116;
  sub_24A62E3E4();

  v122 = v395;
  v108(v396, v395);
  dispatch_group_enter(v121);
  v123 = sub_24A62E644();
  MEMORY[0x28223BE20](v123);
  *(&v354 - 2) = v117;
  *(&v354 - 8) = 0;
  v124 = swift_allocObject();
  v124[2] = 0;
  v124[3] = 0;
  v124[4] = v120;
  v125 = v121;
  sub_24A62E3E4();
  v390 = v112;

  v126 = v396;
  v108(v396, v122);
  if (qword_27EF4ECB0 != -1)
  {
    swift_once();
  }

  v127 = v373;
  v128 = sub_24A506EB8(v373, qword_27EF5CB08);
  v129 = v125;
  dispatch_group_enter(v125);
  v130 = objc_opt_self();
  [v130 begin];
  v131 = v367;
  sub_24A5461E8(v128, v367);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v133 = v370;
  if (EnumCaseMultiPayload == 1)
  {
    v134 = *(v131 + 8);
  }

  else
  {
    v135 = v372;
    v136 = v371;
    (*(v372 + 32))(v371, v131, v370);
    sub_24A62E934();
    v134 = v137;
    (*(v135 + 8))(v136, v133);
  }

  v138 = v387;
  [v130 setDuration_];
  v139 = sub_24A6268BC();
  [v130 setTimingFunction_];

  v140 = swift_allocObject();
  v140[2] = 0;
  v140[3] = 0;
  v140[4] = v394;
  v402 = sub_24A547994;
  v403 = v140;
  aBlock = MEMORY[0x277D85DD0];
  v399 = 1107296256;
  v400 = sub_24A5A8458;
  v401 = &unk_285DA2488;
  v141 = _Block_copy(&aBlock);
  v142 = v129;
  v143 = v130;
  v144 = v142;

  [v130 setCompletionBlock_];
  _Block_release(v141);
  v391 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_vfxManager;
  Strong = swift_weakLoadStrong();
  v146 = MEMORY[0x277D83A90];
  if (Strong)
  {
    v147 = *(Strong + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v401 = v146;
    LODWORD(aBlock) = 1065353216;
    sub_24A583BD0(11, &aBlock);

    sub_24A50EC28(&aBlock);
  }

  [v143 commit];
  if (qword_27EF4ECA0 != -1)
  {
    swift_once();
  }

  v148 = sub_24A506EB8(v127, qword_27EF5CAD8);
  v149 = v386;
  sub_24A5461E8(v148, v386);
  dispatch_group_enter(v144);
  [v143 begin];
  v150 = v149;
  v151 = v368;
  sub_24A5461E8(v150, v368);
  v152 = swift_getEnumCaseMultiPayload();
  v153 = v394;
  if (v152 == 1)
  {
    v154 = *(v151 + 8);
  }

  else
  {
    v155 = v372;
    v156 = v151;
    v157 = v371;
    (*(v372 + 32))(v371, v156, v133);
    sub_24A62E934();
    v154 = v158;
    (*(v155 + 8))(v157, v133);
  }

  [v143 setDuration_];
  v159 = sub_24A6268BC();
  [v143 setTimingFunction_];

  v160 = swift_allocObject();
  v160[2] = 0;
  v160[3] = 0;
  v160[4] = v153;
  v402 = sub_24A547994;
  v403 = v160;
  aBlock = MEMORY[0x277D85DD0];
  v399 = 1107296256;
  v400 = sub_24A5A8458;
  v401 = &unk_285DA24D8;
  v161 = _Block_copy(&aBlock);
  v162 = v144;

  [v143 setCompletionBlock_];
  _Block_release(v161);
  v163 = swift_weakLoadStrong();
  if (v163)
  {
    v164 = *(v163 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v401 = MEMORY[0x277D83A90];
    LODWORD(aBlock) = 0;
    sub_24A583BD0(8, &aBlock);

    sub_24A50EC28(&aBlock);
  }

  [v143 commit];
  result = sub_24A54624C(v386);
  if (v369 > 3u)
  {
    if (v369 - 4 < 2)
    {
      v172 = v362;
      *(v362 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetArrow) = 0;
      *(v172 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetSphere) = 1;
      *(v172 + v361) = 1;
      if (qword_27EF4EBF0 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v162);
      v173 = sub_24A62E644();
      MEMORY[0x28223BE20](v173);
      *(&v354 - 2) = v138;
      *(&v354 - 8) = 0;
      v174 = swift_allocObject();
      v174[2] = 0;
      v174[3] = 0;
      v174[4] = v153;
      v386 = v162;
      sub_24A62E3E4();

      v175 = v396;
      v393(v396, v395);
      if (qword_27EF4EBA0 != -1)
      {
        swift_once();
      }

      if (qword_27EF4EBA8 != -1)
      {
        swift_once();
      }

      v390 = qword_27EF5C910;
      v176 = dispatch_group_create();
      dispatch_group_enter(v176);
      v177 = sub_24A62E644();
      MEMORY[0x28223BE20](v177);
      *(&v354 - 2) = v138;
      *(&v354 - 8) = 1;
      *(swift_allocObject() + 16) = v176;
      v178 = v176;
      sub_24A62E3E4();
      v179 = v138;

      v180 = v395;
      v181 = v393;
      v393(v175, v395);
      dispatch_group_enter(v178);
      v182 = sub_24A62E644();
      MEMORY[0x28223BE20](v182);
      *(&v354 - 2) = v179;
      *(&v354 - 8) = 1;
      *(swift_allocObject() + 16) = v178;
      v183 = v178;
      sub_24A62E3E4();

      v181(v175, v180);
      v184 = v386;
      dispatch_group_enter(v386);
      v185 = sub_24A62F014();
      v186 = swift_allocObject();
      v186[2] = 0;
      v186[3] = 0;
      v187 = v394;
      v186[4] = v394;
      v402 = sub_24A547994;
      v403 = v186;
      aBlock = MEMORY[0x277D85DD0];
      v399 = 1107296256;
      v400 = sub_24A5A8458;
      v401 = &unk_285DA25A0;
      v188 = _Block_copy(&aBlock);
      v189 = v184;
      v190 = v381;
      sub_24A62EAB4();
      v397 = MEMORY[0x277D84F90];
      v191 = v382;
      v192 = v384;
      sub_24A62F254();
      sub_24A62EFB4();
      _Block_release(v188);

      v378(v191, v192);
      v379(v190, v383);

      if (qword_27EF4EC88 != -1)
      {
        swift_once();
      }

      v193 = sub_24A506EB8(v373, qword_27EF5CA90);
      dispatch_group_enter(v189);
      [v143 begin];
      v194 = v359;
      sub_24A5461E8(v193, v359);
      v195 = swift_getEnumCaseMultiPayload();
      v196 = v370;
      v197 = v360;
      if (v195 == 1)
      {
        v198 = *(v194 + 8);
      }

      else
      {
        v208 = v372;
        v209 = v371;
        (*(v372 + 32))(v371, v194, v370);
        sub_24A62E934();
        v198 = v210;
        (*(v208 + 8))(v209, v196);
      }

      [v143 setDuration_];
      v211 = sub_24A6268BC();
      [v143 setTimingFunction_];

      v212 = swift_allocObject();
      v212[2] = 0;
      v212[3] = 0;
      v212[4] = v187;
      v402 = sub_24A547994;
      v403 = v212;
      aBlock = MEMORY[0x277D85DD0];
      v399 = 1107296256;
      v400 = sub_24A5A8458;
      v401 = &unk_285DA25F0;
      v213 = _Block_copy(&aBlock);
      v214 = v189;

      [v143 setCompletionBlock_];
      _Block_release(v213);
      v215 = swift_weakLoadStrong();
      v216 = MEMORY[0x277D83A90];
      if (v215)
      {
        v217 = *(v215 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

        v401 = v216;
        LODWORD(aBlock) = 1065353216;
        sub_24A583BD0(9, &aBlock);

        sub_24A50EC28(&aBlock);
      }

      [v143 commit];
      if (qword_27EF4EC48 != -1)
      {
        swift_once();
      }

      v218 = sub_24A506EB8(v373, qword_27EF5C9D0);
      dispatch_group_enter(v214);
      [v143 begin];
      sub_24A5461E8(v218, v197);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v219 = *(v197 + 8);
      }

      else
      {
        v220 = v372;
        v221 = v371;
        (*(v372 + 32))(v371, v197, v196);
        sub_24A62E934();
        v219 = v222;
        (*(v220 + 8))(v221, v196);
      }

      [v143 setDuration_];
      v223 = sub_24A6268BC();
      [v143 setTimingFunction_];

      v224 = swift_allocObject();
      v224[2] = 0;
      v224[3] = 0;
      v224[4] = v187;
      v402 = sub_24A547994;
      v403 = v224;
      aBlock = MEMORY[0x277D85DD0];
      v399 = 1107296256;
      v400 = sub_24A5A8458;
      v401 = &unk_285DA2640;
      v225 = _Block_copy(&aBlock);
      v226 = v214;

      [v143 setCompletionBlock_];
      _Block_release(v225);
      v227 = swift_weakLoadStrong();
      if (v227)
      {
        v228 = *(v227 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

        v401 = v216;
        LODWORD(aBlock) = 0;
        sub_24A583BD0(10, &aBlock);

        sub_24A50EC28(&aBlock);
      }

      return [v143 commit];
    }
  }

  else if (v369)
  {
    if (v369 == 2)
    {
      v202 = v362;
      *(v362 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetArrow) = 0;
      *(v202 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetSphere) = 0;
      if (qword_27EF4EC88 != -1)
      {
        swift_once();
      }

      v203 = sub_24A506EB8(v127, qword_27EF5CA90);
      dispatch_group_enter(v162);
      [v143 begin];
      v204 = v355;
      sub_24A5461E8(v203, v355);
      v205 = swift_getEnumCaseMultiPayload();
      v206 = v357;
      if (v205 == 1)
      {
        v207 = *(v204 + 8);
      }

      else
      {
        v257 = v372;
        v258 = v204;
        v259 = v371;
        (*(v372 + 32))(v371, v258, v133);
        sub_24A62E934();
        v207 = v260;
        v261 = v257;
        v127 = v373;
        (*(v261 + 8))(v259, v133);
      }

      [v143 setDuration_];
      v262 = sub_24A6268BC();
      [v143 setTimingFunction_];

      v263 = swift_allocObject();
      v263[2] = 0;
      v263[3] = 0;
      v263[4] = v153;
      v402 = sub_24A547994;
      v403 = v263;
      aBlock = MEMORY[0x277D85DD0];
      v399 = 1107296256;
      v400 = sub_24A5A8458;
      v401 = &unk_285DA2820;
      v264 = _Block_copy(&aBlock);
      v265 = v162;

      [v143 setCompletionBlock_];
      _Block_release(v264);
      v266 = swift_weakLoadStrong();
      if (v266)
      {
        v267 = *(v266 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

        v401 = MEMORY[0x277D83A90];
        LODWORD(aBlock) = 1065353216;
        sub_24A583BD0(9, &aBlock);

        sub_24A50EC28(&aBlock);
      }

      [v143 commit];
      if (qword_27EF4EC48 != -1)
      {
        swift_once();
      }

      v268 = sub_24A506EB8(v127, qword_27EF5C9D0);
      dispatch_group_enter(v265);
      [v143 begin];
      sub_24A5461E8(v268, v206);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v269 = *(v206 + 8);
      }

      else
      {
        v270 = v372;
        v271 = v371;
        (*(v372 + 32))(v371, v206, v133);
        sub_24A62E934();
        v269 = v272;
        (*(v270 + 8))(v271, v133);
      }

      [v143 setDuration_];
      v273 = sub_24A6268BC();
      [v143 setTimingFunction_];

      v274 = swift_allocObject();
      v274[2] = 0;
      v274[3] = 0;
      v274[4] = v153;
      v402 = sub_24A547994;
      v403 = v274;
      aBlock = MEMORY[0x277D85DD0];
      v399 = 1107296256;
      v400 = sub_24A5A8458;
      v401 = &unk_285DA2870;
      v275 = _Block_copy(&aBlock);
      v276 = v265;

      [v143 setCompletionBlock_];
      _Block_release(v275);
      v277 = swift_weakLoadStrong();
      if (v277)
      {
        v278 = *(v277 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

        v401 = MEMORY[0x277D83A90];
        LODWORD(aBlock) = 0;
        sub_24A583BD0(10, &aBlock);

        sub_24A50EC28(&aBlock);
      }

      [v143 commit];
      if (qword_27EF4EBF0 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v276);
      v279 = sub_24A62E644();
      v280 = v126;
      MEMORY[0x28223BE20](v279);
      *(&v354 - 2) = v138;
      *(&v354 - 8) = 0;
      v281 = swift_allocObject();
      v281[2] = 0;
      v281[3] = 0;
      v281[4] = v153;
      v391 = v276;
      v282 = v390;
      sub_24A62E3E4();

      v283 = v280;
      v284 = v393;
      v393(v283, v395);
      if (qword_27EF4EBA0 != -1)
      {
        swift_once();
      }

      if (qword_27EF4EBA8 != -1)
      {
        swift_once();
      }

      v390 = qword_27EF5C910;
      v285 = dispatch_group_create();
      dispatch_group_enter(v285);
      v286 = v396;
      v287 = sub_24A62E644();
      MEMORY[0x28223BE20](v287);
      *(&v354 - 2) = v138;
      *(&v354 - 8) = 1;
      *(swift_allocObject() + 16) = v285;
      v288 = v285;
      sub_24A62E3E4();

      v289 = v395;
      v284(v286, v395);
      dispatch_group_enter(v288);
      v290 = sub_24A62E644();
      MEMORY[0x28223BE20](v290);
      *(&v354 - 2) = v138;
      *(&v354 - 8) = 1;
      *(swift_allocObject() + 16) = v288;
      v291 = v288;
      sub_24A62E3E4();
      v390 = v282;

      v284(v286, v289);
      v292 = v391;
      dispatch_group_enter(v391);
      v293 = sub_24A62F014();
      v294 = swift_allocObject();
      v294[2] = 0;
      v294[3] = 0;
      v295 = v394;
      v294[4] = v394;
      v402 = sub_24A547994;
      v403 = v294;
      aBlock = MEMORY[0x277D85DD0];
      v399 = 1107296256;
      v400 = sub_24A5A8458;
      v401 = &unk_285DA2938;
      v296 = _Block_copy(&aBlock);
      v297 = v292;
      v298 = v381;
      sub_24A62EAB4();
      v397 = MEMORY[0x277D84F90];
      v299 = v382;
      v300 = v384;
      sub_24A62F254();
      sub_24A62EFB4();
      _Block_release(v296);

      v378(v299, v300);
      v379(v298, v383);

      v301 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay;
      *(v138 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0;
      *(v138 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEE147AE147AE14;
      if (qword_27EF4EB20 != -1)
      {
        swift_once();
      }

      if (qword_27EF4EB28 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v297);
      *(v138 + v301);
      sub_24A62EA04();

      v302 = v396;
      v303 = sub_24A62E644();
      MEMORY[0x28223BE20](v303);
      *(&v354 - 2) = v138;
      *(&v354 - 8) = 1;
      v304 = swift_allocObject();
      *(v304 + 16) = v295;
      *(v304 + 24) = 1;
      *(v304 + 40) = 0;
      *(v304 + 48) = 0;
      *(v304 + 32) = v138;
      v305 = v297;

      sub_24A62E3E4();

      v306 = v302;
    }

    else
    {
      if (v369 != 3)
      {
        return result;
      }

      v166 = v362;
      *(v362 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetArrow) = 1;
      *(v166 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetSphere) = 0;
      *(v166 + v361) = 1;
      if (qword_27EF4EC88 != -1)
      {
        swift_once();
      }

      v167 = sub_24A506EB8(v127, qword_27EF5CA90);
      dispatch_group_enter(v162);
      [v143 begin];
      v168 = v356;
      sub_24A5461E8(v167, v356);
      v169 = swift_getEnumCaseMultiPayload();
      v170 = v358;
      if (v169 == 1)
      {
        v171 = *(v168 + 8);
      }

      else
      {
        v307 = v372;
        v308 = v168;
        v309 = v371;
        (*(v372 + 32))(v371, v308, v133);
        sub_24A62E934();
        v171 = v310;
        v311 = v307;
        v127 = v373;
        (*(v311 + 8))(v309, v133);
      }

      [v143 setDuration_];
      v312 = sub_24A6268BC();
      [v143 setTimingFunction_];

      v313 = swift_allocObject();
      v313[2] = 0;
      v313[3] = 0;
      v313[4] = v153;
      v402 = sub_24A547994;
      v403 = v313;
      aBlock = MEMORY[0x277D85DD0];
      v399 = 1107296256;
      v400 = sub_24A5A8458;
      v401 = &unk_285DA2690;
      v314 = _Block_copy(&aBlock);
      v315 = v162;

      [v143 setCompletionBlock_];
      _Block_release(v314);
      v316 = swift_weakLoadStrong();
      if (v316)
      {
        v317 = *(v316 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

        v401 = MEMORY[0x277D83A90];
        LODWORD(aBlock) = 1065353216;
        sub_24A583BD0(9, &aBlock);

        sub_24A50EC28(&aBlock);
      }

      [v143 commit];
      if (qword_27EF4EC48 != -1)
      {
        swift_once();
      }

      v318 = sub_24A506EB8(v127, qword_27EF5C9D0);
      dispatch_group_enter(v315);
      [v143 begin];
      sub_24A5461E8(v318, v170);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v319 = *(v170 + 8);
      }

      else
      {
        v320 = v372;
        v321 = v371;
        (*(v372 + 32))(v371, v170, v133);
        sub_24A62E934();
        v319 = v322;
        (*(v320 + 8))(v321, v133);
      }

      [v143 setDuration_];
      v323 = sub_24A6268BC();
      [v143 setTimingFunction_];

      v324 = swift_allocObject();
      v324[2] = 0;
      v324[3] = 0;
      v324[4] = v153;
      v402 = sub_24A547994;
      v403 = v324;
      aBlock = MEMORY[0x277D85DD0];
      v399 = 1107296256;
      v400 = sub_24A5A8458;
      v401 = &unk_285DA26E0;
      v325 = _Block_copy(&aBlock);
      v386 = v315;

      [v143 setCompletionBlock_];
      _Block_release(v325);
      v326 = swift_weakLoadStrong();
      if (v326)
      {
        v327 = *(v326 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

        v401 = MEMORY[0x277D83A90];
        LODWORD(aBlock) = 0;
        sub_24A583BD0(10, &aBlock);

        sub_24A50EC28(&aBlock);
      }

      [v143 commit];
      swift_getKeyPath();
      swift_getKeyPath();
      aBlock = 0x3FA999999999999ALL;

      sub_24A62E364();
      if (qword_27EF4EBC0 != -1)
      {
        swift_once();
      }

      if (qword_27EF4EBC8 != -1)
      {
        swift_once();
      }

      v391 = qword_27EF5C930;
      v328 = dispatch_group_create();
      dispatch_group_enter(v328);
      v329 = v396;
      v330 = sub_24A62E644();
      MEMORY[0x28223BE20](v330);
      *(&v354 - 2) = v138;
      *(&v354 - 8) = 1;
      *(swift_allocObject() + 16) = v328;
      v331 = v328;
      v332 = v390;
      sub_24A62E3E4();

      v333 = v395;
      v334 = v393;
      v393(v329, v395);
      dispatch_group_enter(v331);
      v335 = sub_24A62E644();
      MEMORY[0x28223BE20](v335);
      *(&v354 - 2) = v138;
      *(&v354 - 8) = 1;
      *(swift_allocObject() + 16) = v331;
      v390 = v331;
      sub_24A62E3E4();
      v391 = v332;

      v334(v329, v333);
      v336 = v386;
      dispatch_group_enter(v386);
      v337 = sub_24A62F014();
      v338 = swift_allocObject();
      v338[2] = 0;
      v338[3] = 0;
      v339 = v394;
      v338[4] = v394;
      v402 = sub_24A547994;
      v403 = v338;
      aBlock = MEMORY[0x277D85DD0];
      v399 = 1107296256;
      v400 = sub_24A5A8458;
      v401 = &unk_285DA2780;
      v340 = _Block_copy(&aBlock);
      v341 = v336;
      v342 = v381;
      sub_24A62EAB4();
      v397 = MEMORY[0x277D84F90];
      v343 = v382;
      v344 = v384;
      sub_24A62F254();
      v345 = v390;
      sub_24A62EFB4();
      _Block_release(v340);

      v378(v343, v344);
      v379(v342, v383);

      if (qword_27EF4EAE8 != -1)
      {
        swift_once();
      }

      sub_24A62EA04();
      dispatch_group_enter(v341);
      v346 = sub_24A62E644();
      MEMORY[0x28223BE20](v346);
      *(&v354 - 2) = v138;
      *(&v354 - 8) = 0;
      v347 = swift_allocObject();
      v347[2] = 0;
      v347[3] = 0;
      v347[4] = v339;
      v348 = v341;
      sub_24A62E3E4();

      v393(v329, v395);
      v349 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay;
      *(v138 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0;
      *(v138 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEEB851EB851EB8;
      if (qword_27EF4EB20 != -1)
      {
        swift_once();
      }

      if (qword_27EF4EB28 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v348);
      *(v138 + v349);
      sub_24A62EA04();

      v350 = v396;
      v351 = sub_24A62E644();
      MEMORY[0x28223BE20](v351);
      *(&v354 - 2) = v138;
      *(&v354 - 8) = 1;
      v352 = swift_allocObject();
      *(v352 + 16) = v339;
      *(v352 + 24) = 1;
      *(v352 + 40) = 0;
      *(v352 + 48) = 0;
      *(v352 + 32) = v138;
      v353 = v348;

      sub_24A62E3E4();

      v306 = v350;
    }

    return (v393)(v306, v395);
  }

  else
  {
    if (qword_27EF4EC78 != -1)
    {
      swift_once();
    }

    v199 = sub_24A506EB8(v127, qword_27EF5CA60);
    dispatch_group_enter(v162);
    [v143 begin];
    v200 = v354;
    sub_24A5461E8(v199, v354);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v201 = *(v200 + 8);
    }

    else
    {
      v229 = v372;
      v230 = v200;
      v231 = v371;
      (*(v372 + 32))(v371, v230, v133);
      sub_24A62E934();
      v201 = v232;
      (*(v229 + 8))(v231, v133);
    }

    [v143 setDuration_];
    v233 = sub_24A6268BC();
    [v143 setTimingFunction_];

    v234 = swift_allocObject();
    v234[2] = 0;
    v234[3] = 0;
    v234[4] = v153;
    v402 = sub_24A547994;
    v403 = v234;
    aBlock = MEMORY[0x277D85DD0];
    v399 = 1107296256;
    v400 = sub_24A5A8458;
    v401 = &unk_285DA29B0;
    v235 = _Block_copy(&aBlock);
    v236 = v162;

    [v143 setCompletionBlock_];
    _Block_release(v235);
    v237 = swift_weakLoadStrong();
    if (v237)
    {
      v238 = *(v237 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

      v401 = MEMORY[0x277D83A90];
      LODWORD(aBlock) = 1065353216;
      sub_24A583BD0(9, &aBlock);

      sub_24A50EC28(&aBlock);
    }

    [v143 commit];
    sub_24A52B554(v153, 0, 0);
    if (qword_27EF4EBF0 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v236);
    v239 = sub_24A62E644();
    MEMORY[0x28223BE20](v239);
    *(&v354 - 2) = v138;
    *(&v354 - 8) = 0;
    v240 = swift_allocObject();
    v240[2] = 0;
    v240[3] = 0;
    v240[4] = v153;
    v391 = v236;
    sub_24A62E3E4();

    v241 = v396;
    v393(v396, v395);
    if (qword_27EF4EBA0 != -1)
    {
      swift_once();
    }

    if (qword_27EF4EBA8 != -1)
    {
      swift_once();
    }

    v390 = qword_27EF5C910;
    v242 = dispatch_group_create();
    dispatch_group_enter(v242);
    v243 = sub_24A62E644();
    MEMORY[0x28223BE20](v243);
    *(&v354 - 2) = v138;
    *(&v354 - 8) = 1;
    *(swift_allocObject() + 16) = v242;
    v244 = v242;
    sub_24A62E3E4();

    v245 = v395;
    v246 = v393;
    v393(v241, v395);
    dispatch_group_enter(v244);
    v247 = sub_24A62E644();
    MEMORY[0x28223BE20](v247);
    *(&v354 - 2) = v138;
    *(&v354 - 8) = 1;
    *(swift_allocObject() + 16) = v244;
    v248 = v244;
    sub_24A62E3E4();

    v246(v241, v245);
    v249 = v391;
    dispatch_group_enter(v391);
    v250 = sub_24A62F014();
    v251 = swift_allocObject();
    v251[2] = 0;
    v251[3] = 0;
    v251[4] = v394;
    v402 = sub_24A547994;
    v403 = v251;
    aBlock = MEMORY[0x277D85DD0];
    v399 = 1107296256;
    v400 = sub_24A5A8458;
    v401 = &unk_285DA2A78;
    v252 = _Block_copy(&aBlock);
    v253 = v249;
    v254 = v381;
    sub_24A62EAB4();
    v397 = MEMORY[0x277D84F90];
    v255 = v382;
    v256 = v384;
    sub_24A62F254();
    sub_24A62EFB4();
    _Block_release(v252);

    v378(v255, v256);
    v379(v254, v383);

    *(v362 + v361) = 1;
  }

  return result;
}

uint64_t sub_24A5344A4(int a1, NSObject *a2, uint64_t a3)
{
  LODWORD(v347) = a1;
  v351 = sub_24A62E984();
  v350 = *(v351 - 8);
  v6 = *(v350 + 64);
  MEMORY[0x28223BE20](v351);
  v349 = &v338 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v362 = type metadata accessor for PFVFXAnimation();
  v8 = *(v362[-1].isa + 8);
  v9 = MEMORY[0x28223BE20](v362);
  v341 = &v338 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v340 = &v338 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v339 = &v338 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v346 = &v338 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v352 = (&v338 - v18);
  MEMORY[0x28223BE20](v17);
  v345 = &v338 - v19;
  v368 = sub_24A62EA94();
  v370 = *(v368 - 8);
  v20 = *(v370 + 64);
  MEMORY[0x28223BE20](v368);
  v367 = &v338 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v366 = sub_24A62EAD4();
  v369 = *(v366 - 8);
  v22 = *(v369 + 64);
  MEMORY[0x28223BE20](v366);
  v365 = &v338 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v361 = sub_24A62EAF4();
  v364 = *(v361 - 8);
  v24 = *(v364 + 64);
  v25 = MEMORY[0x28223BE20](v361);
  v27 = &v338 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v360 = &v338 - v28;
  v29 = sub_24A62E654();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v338 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxIsArcFullRing) = 0;
  *(a3 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetArrow) = 0;
  *(a3 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetSphere) = 0;
  if (qword_27EF4EBF0 != -1)
  {
    swift_once();
  }

  v34 = qword_27EF5C958;
  dispatch_group_enter(a2);
  v35 = sub_24A62E644();
  MEMORY[0x28223BE20](v35);
  v373 = a2;
  *(&v338 - 2) = v3;
  *(&v338 - 8) = 0;
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = a2;
  v37 = a2;
  v371 = v3;
  v38 = v37;
  v342 = v34;
  sub_24A62E3E4();
  v344 = 0;

  v39 = *(v30 + 8);
  v40 = v29;
  v376 = v30 + 8;
  v374 = v39;
  v39(v33, v29);
  dispatch_group_enter(v38);
  v358 = sub_24A545E8C();
  v354 = sub_24A62F014();
  sub_24A62EAE4();
  v41 = v360;
  sub_24A62EB54();
  v42 = v371;
  v375 = v40;
  v43 = v364 + 8;
  v359 = *(v364 + 8);
  v348 = v27;
  v44 = v361;
  v359(v27, v361);
  v45 = swift_allocObject();
  *(v45 + 16) = v42;
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 40) = 0;
  *(v45 + 48) = a2;
  v382 = sub_24A547A54;
  v383 = v45;
  aBlock = MEMORY[0x277D85DD0];
  v379 = 1107296256;
  v380 = sub_24A5A8458;
  v381 = &unk_285DA2B68;
  v46 = _Block_copy(&aBlock);
  v372 = v33;
  v47 = v46;
  v363 = v38;

  v48 = v365;
  sub_24A62EAB4();
  aBlock = MEMORY[0x277D84F90];
  v49 = sub_24A545F60();
  v50 = sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  v51 = sub_24A529464();
  v52 = v367;
  v356 = v50;
  v355 = v51;
  v53 = v368;
  v357 = v49;
  sub_24A62F254();
  v54 = v354;
  MEMORY[0x24C21A910](v41, v48, v52, v47);
  _Block_release(v47);

  v55 = v370 + 8;
  v354 = *(v370 + 8);
  v354(v52, v53);
  v56 = *(v369 + 8);
  v369 += 8;
  v353 = v56;
  v56(v48, v366);
  v364 = v43;
  v359(v41, v44);
  if (qword_27EF4EB10 != -1)
  {
    swift_once();
  }

  v57 = v363;
  dispatch_group_enter(v363);
  v58 = v372;
  sub_24A62E644();
  v59 = swift_allocObject();
  v59[2] = v42;
  v59[3] = 0;
  v60 = v373;
  v59[4] = 0;
  v59[5] = v60;
  v363 = v57;

  v61 = v344;
  sub_24A62E3E4();

  v374(v58, v375);
  if (qword_27EF4EBA0 != -1)
  {
    swift_once();
  }

  v370 = v55;
  if (qword_27EF4EBA8 != -1)
  {
    swift_once();
  }

  v344 = qword_27EF5C910;
  v62 = dispatch_group_create();
  dispatch_group_enter(v62);
  v63 = v372;
  v64 = sub_24A62E644();
  MEMORY[0x28223BE20](v64);
  *(&v338 - 2) = v42;
  *(&v338 - 8) = 0;
  *(swift_allocObject() + 16) = v62;
  v65 = v62;
  sub_24A62E3E4();

  v66 = v375;
  v67 = v374;
  v374(v63, v375);
  dispatch_group_enter(v65);
  v68 = sub_24A62E644();
  MEMORY[0x28223BE20](v68);
  *(&v338 - 2) = v42;
  *(&v338 - 8) = 0;
  *(swift_allocObject() + 16) = v65;
  v343 = v65;
  sub_24A62E3E4();
  v344 = v61;

  v67(v63, v66);
  v69 = v363;
  dispatch_group_enter(v363);
  v70 = sub_24A62F014();
  v71 = swift_allocObject();
  v71[2] = 0;
  v71[3] = 0;
  v72 = v373;
  v71[4] = v373;
  v382 = sub_24A547994;
  v383 = v71;
  aBlock = MEMORY[0x277D85DD0];
  v379 = 1107296256;
  v380 = sub_24A5A8458;
  v381 = &unk_285DA2C30;
  v73 = _Block_copy(&aBlock);
  v74 = v69;
  v75 = v365;
  sub_24A62EAB4();
  v377 = MEMORY[0x277D84F90];
  v76 = v367;
  v77 = v368;
  sub_24A62F254();
  v78 = v343;
  sub_24A62EFB4();
  _Block_release(v73);

  v354(v76, v77);
  v353(v75, v366);

  if (qword_27EF4EC08 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v74);
  v79 = sub_24A62E644();
  MEMORY[0x28223BE20](v79);
  *(&v338 - 2) = v371;
  *(&v338 - 8) = 0;
  v80 = swift_allocObject();
  v80[2] = 0;
  v80[3] = 0;
  v80[4] = v72;
  v81 = v74;
  v82 = v344;
  sub_24A62E3E4();
  v363 = v82;

  v374(v63, v375);
  v83 = v345;
  if (qword_27EF4ECA8 != -1)
  {
    swift_once();
  }

  v84 = sub_24A506EB8(v362, qword_27EF5CAF0);
  dispatch_group_enter(v81);
  v85 = objc_opt_self();
  [v85 begin];
  sub_24A5461E8(v84, v83);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v86 = *(v83 + 8);
  }

  else
  {
    v87 = v350;
    v88 = v349;
    v89 = v351;
    (*(v350 + 32))(v349, v83, v351);
    sub_24A62E934();
    v86 = v90;
    (*(v87 + 8))(v88, v89);
  }

  v91 = v371;
  [v85 setDuration_];
  v92 = sub_24A6268BC();
  [v85 setTimingFunction_];

  v93 = swift_allocObject();
  v93[2] = 0;
  v93[3] = 0;
  v94 = v373;
  v93[4] = v373;
  v382 = sub_24A547994;
  v383 = v93;
  aBlock = MEMORY[0x277D85DD0];
  v379 = 1107296256;
  v380 = sub_24A5A8458;
  v381 = &unk_285DA2CA8;
  v95 = _Block_copy(&aBlock);
  v96 = v81;

  [v85 setCompletionBlock_];
  _Block_release(v95);
  v97 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_vfxManager;
  Strong = swift_weakLoadStrong();
  v99 = MEMORY[0x277D83A90];
  if (Strong)
  {
    v100 = *(Strong + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v381 = v99;
    LODWORD(aBlock) = 0;
    sub_24A583BD0(11, &aBlock);

    sub_24A50EC28(&aBlock);
  }

  [v85 commit];
  v101 = v372;
  v102 = v352;
  if (qword_27EF4ECA0 != -1)
  {
    swift_once();
  }

  v103 = sub_24A506EB8(v362, qword_27EF5CAD8);
  sub_24A5461E8(v103, v102);
  dispatch_group_enter(v96);
  [v85 begin];
  v104 = v346;
  sub_24A5461E8(v102, v346);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v105 = *(v104 + 8);
  }

  else
  {
    v106 = v350;
    v107 = v104;
    v108 = v349;
    v109 = v351;
    (*(v350 + 32))(v349, v107, v351);
    sub_24A62E934();
    v105 = v110;
    v102 = v352;
    (*(v106 + 8))(v108, v109);
  }

  [v85 setDuration_];
  v111 = sub_24A6268BC();
  [v85 setTimingFunction_];

  v112 = swift_allocObject();
  v112[2] = 0;
  v112[3] = 0;
  v112[4] = v94;
  v382 = sub_24A547994;
  v383 = v112;
  aBlock = MEMORY[0x277D85DD0];
  v379 = 1107296256;
  v380 = sub_24A5A8458;
  v381 = &unk_285DA2CF8;
  v113 = _Block_copy(&aBlock);
  v352 = v96;

  [v85 setCompletionBlock_];
  _Block_release(v113);
  v114 = swift_weakLoadStrong();
  if (v114)
  {
    v115 = *(v114 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v381 = MEMORY[0x277D83A90];
    LODWORD(aBlock) = 0;
    sub_24A583BD0(8, &aBlock);

    sub_24A50EC28(&aBlock);
  }

  [v85 commit];
  sub_24A54624C(v102);
  v116 = &unk_27EF5C000;
  if (v347 > 3u)
  {
    if (v347 - 4 >= 2)
    {
      goto LABEL_68;
    }

    *(v91 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0x3FC70A3D70A3D70ALL;
    *(v91 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FF0A3D70A3D70A4;
    if (qword_27EF4EAE0 != -1)
    {
      swift_once();
    }

    v362 = qword_27EF5C848;
    v150 = v352;
    dispatch_group_enter(v352);
    v151 = sub_24A62E644();
    MEMORY[0x28223BE20](v151);
    *(&v338 - 2) = v91;
    *(&v338 - 8) = 0;
    *(swift_allocObject() + 16) = v94;
    v152 = v150;
    v153 = v363;
    sub_24A62E3E4();

    v374(v101, v375);
    sub_24A62EA04();
    dispatch_group_enter(v152);
    v154 = sub_24A62E644();
    v155 = v101;
    v156 = v91;
    v157 = v94;
    MEMORY[0x28223BE20](v154);
    *(&v338 - 2) = v156;
    *(&v338 - 8) = 1;
    v158 = swift_allocObject();
    v158[2] = 0;
    v158[3] = 0;
    v158[4] = v94;
    v159 = v152;
    sub_24A62E3E4();

    v160 = v156;
    v142 = v155;
    v161 = v374;
    v374(v155, v375);
    dispatch_group_enter(v159);
    v162 = sub_24A62E644();
    v363 = &v338;
    MEMORY[0x28223BE20](v162);
    *(&v338 - 2) = v160;
    *(&v338 - 8) = 0;
    v163 = swift_allocObject();
    v163[2] = 0;
    v163[3] = 0;
    v163[4] = v157;
    v164 = v159;
    sub_24A62E3E4();

    v161(v155, v375);
    dispatch_group_enter(v164);
    v165 = sub_24A62E644();
    MEMORY[0x28223BE20](v165);
    *(&v338 - 2) = v160;
    *(&v338 - 8) = 0;
    v166 = swift_allocObject();
    v166[2] = 0;
    v166[3] = 0;
    v166[4] = v157;
    v167 = v164;
    sub_24A62E3E4();

    v374(v155, v375);
    if (qword_27EF4EB58 != -1)
    {
      swift_once();
    }

    v168 = qword_27EF5C8C0;
    dispatch_group_enter(v167);
    v169 = sub_24A62E644();
    MEMORY[0x28223BE20](v169);
    v170 = v371;
    *(&v338 - 2) = v371;
    *(&v338 - 8) = 0;
    v171 = swift_allocObject();
    v171[2] = 0;
    v171[3] = 0;
    v94 = v373;
    v171[4] = v373;
    v172 = v167;
    sub_24A62E3E4();

    v374(v142, v375);
    sub_24A52AE18(0, v168, v94, 0, 0);
    if (qword_27EF4EC20 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v172);
    v173 = sub_24A62E644();
    MEMORY[0x28223BE20](v173);
    *(&v338 - 2) = v170;
    *(&v338 - 8) = 0;
    v174 = swift_allocObject();
    v174[2] = 0;
    v174[3] = 0;
    v174[4] = v94;
    v175 = v172;
    sub_24A62E3E4();

    v374(v142, v375);
    if (qword_27EF4EB68 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v175);
    v176 = sub_24A62E644();
    MEMORY[0x28223BE20](v176);
    *(&v338 - 2) = v170;
    *(&v338 - 8) = 1;
    v177 = swift_allocObject();
    v177[2] = 0;
    v177[3] = 0;
    v177[4] = v94;
    v178 = v175;
    sub_24A62E3E4();
    v363 = v153;
    v144 = v374;
    v116 = &unk_27EF5C000;
    v148 = v170;
  }

  else
  {
    if (!v347)
    {
      *(v91 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEEB851EB851EB8;
      if (qword_27EF4EAE0 != -1)
      {
        swift_once();
      }

      v347 = qword_27EF5C848;
      sub_24A62EA04();
      v179 = v352;
      dispatch_group_enter(v352);
      v180 = sub_24A62E644();
      MEMORY[0x28223BE20](v180);
      *(&v338 - 2) = v91;
      *(&v338 - 8) = 0;
      v181 = swift_allocObject();
      v181[2] = 0;
      v181[3] = 0;
      v181[4] = v373;
      v182 = v179;
      v183 = v363;
      sub_24A62E3E4();
      v363 = v183;

      v184 = v372;
      v374(v372, v375);
      v185 = v339;
      if (qword_27EF4EC68 != -1)
      {
        swift_once();
      }

      v186 = sub_24A506EB8(v362, qword_27EF5CA30);
      dispatch_group_enter(v182);
      [v85 begin];
      sub_24A5461E8(v186, v185);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v187 = *(v185 + 8);
      }

      else
      {
        v226 = v350;
        v227 = v349;
        v228 = v351;
        (*(v350 + 32))(v349, v185, v351);
        sub_24A62E934();
        v187 = v229;
        (*(v226 + 8))(v227, v228);
      }

      v230 = v373;
      [v85 setDuration_];
      v231 = sub_24A6268BC();
      [v85 setTimingFunction_];

      v232 = swift_allocObject();
      v232[2] = 0;
      v232[3] = 0;
      v232[4] = v230;
      v382 = sub_24A547994;
      v383 = v232;
      aBlock = MEMORY[0x277D85DD0];
      v379 = 1107296256;
      v380 = sub_24A5A8458;
      v381 = &unk_285DA3298;
      v233 = _Block_copy(&aBlock);
      v234 = v182;

      [v85 setCompletionBlock_];
      _Block_release(v233);
      v235 = swift_weakLoadStrong();
      if (v235)
      {
        v236 = *(v235 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

        v381 = MEMORY[0x277D83A90];
        LODWORD(aBlock) = 1065353216;
        sub_24A583BD0(9, &aBlock);

        sub_24A50EC28(&aBlock);
      }

      [v85 commit];
      dispatch_group_enter(v234);
      [v85 begin];
      v237 = v340;
      sub_24A5461E8(v186, v340);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v238 = *(v237 + 8);
      }

      else
      {
        v239 = v350;
        v240 = v349;
        v241 = v237;
        v242 = v351;
        (*(v350 + 32))(v349, v241, v351);
        sub_24A62E934();
        v238 = v243;
        (*(v239 + 8))(v240, v242);
      }

      [v85 setDuration_];
      v244 = sub_24A6268BC();
      [v85 setTimingFunction_];

      v245 = swift_allocObject();
      v245[2] = 0;
      v245[3] = 0;
      v245[4] = v230;
      v382 = sub_24A547994;
      v383 = v245;
      aBlock = MEMORY[0x277D85DD0];
      v379 = 1107296256;
      v380 = sub_24A5A8458;
      v381 = &unk_285DA32E8;
      v246 = _Block_copy(&aBlock);
      v247 = v234;

      [v85 setCompletionBlock_];
      _Block_release(v246);
      v248 = swift_weakLoadStrong();
      if (v248)
      {
        v249 = *(v248 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

        v381 = MEMORY[0x277D83A90];
        LODWORD(aBlock) = 1065353216;
        sub_24A583BD0(10, &aBlock);

        sub_24A50EC28(&aBlock);
      }

      [v85 commit];
      *(v91 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0x3FCD70A3D70A3D70;
      if (qword_27EF4EB60 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v247);
      v250 = sub_24A62E644();
      MEMORY[0x28223BE20](v250);
      *(&v338 - 2) = v91;
      *(&v338 - 8) = 0;
      v251 = swift_allocObject();
      v251[2] = 0;
      v251[3] = 0;
      v251[4] = v230;
      v252 = v247;
      v253 = v363;
      sub_24A62E3E4();

      v254 = v91;
      v256 = v374;
      v255 = v375;
      v374(v184, v375);
      dispatch_group_enter(v252);
      v257 = sub_24A62E644();
      MEMORY[0x28223BE20](v257);
      *(&v338 - 2) = v254;
      *(&v338 - 8) = 0;
      v258 = swift_allocObject();
      v258[2] = 0;
      v258[3] = 0;
      v258[4] = v230;
      v259 = v252;
      v260 = v256;
      sub_24A62E3E4();

      v256(v184, v255);
      if (qword_27EF4EB98 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v259);
      v261 = sub_24A62E644();
      v363 = &v338;
      MEMORY[0x28223BE20](v261);
      v262 = v371;
      *(&v338 - 2) = v371;
      *(&v338 - 8) = 1;
      v263 = swift_allocObject();
      v263[2] = 0;
      v263[3] = 0;
      v263[4] = v373;
      v264 = v259;
      sub_24A62E3E4();

      v260(v184, v255);
      if (qword_27EF4EBE8 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v264);
      v265 = sub_24A62E644();
      v363 = &v338;
      MEMORY[0x28223BE20](v265);
      *(&v338 - 2) = v262;
      *(&v338 - 8) = 0;
      *(swift_allocObject() + 16) = v373;
      v266 = v264;
      sub_24A62E3E4();

      v374(v184, v255);
      v267 = v262;
      if (qword_27EF4EB58 != -1)
      {
        swift_once();
      }

      v268 = qword_27EF5C8C0;
      dispatch_group_enter(v266);
      v269 = sub_24A62E644();
      MEMORY[0x28223BE20](v269);
      *(&v338 - 2) = v262;
      *(&v338 - 8) = 0;
      v270 = swift_allocObject();
      v270[2] = 0;
      v270[3] = 0;
      v271 = v184;
      v272 = v373;
      v270[4] = v373;
      v273 = v266;
      sub_24A62E3E4();

      v374(v271, v255);
      sub_24A52AE18(0, v268, v272, 0, 0);
      v274 = v271;
      if (qword_27EF4EB68 != -1)
      {
        swift_once();
      }

      sub_24A62EA04();
      dispatch_group_enter(v273);
      v275 = sub_24A62E644();
      MEMORY[0x28223BE20](v275);
      *(&v338 - 2) = v267;
      *(&v338 - 8) = 1;
      v276 = swift_allocObject();
      v276[2] = 0;
      v276[3] = 0;
      v276[4] = v272;
      v94 = v272;
      v277 = v273;
      sub_24A62E3E4();

      v149 = v375;
      v278 = v374;
      v374(v274, v375);
      dispatch_group_enter(v277);
      v279 = sub_24A62E644();
      MEMORY[0x28223BE20](v279);
      *(&v338 - 2) = v267;
      *(&v338 - 8) = 0;
      v280 = swift_allocObject();
      v280[2] = 0;
      v280[3] = 0;
      v280[4] = v272;
      v281 = v277;
      sub_24A62E3E4();
      v363 = v253;
      v148 = v267;
      v116 = &unk_27EF5C000;
      v142 = v274;
      v144 = v278;
      goto LABEL_93;
    }

    if (v347 != 1)
    {
      if (v347 == 3)
      {
        *(v91 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEE147AE147AE14;
        if (qword_27EF4EAE0 != -1)
        {
          swift_once();
        }

        v117 = qword_27EF5C848;
        v118 = v352;
        dispatch_group_enter(v352);
        v119 = sub_24A62E644();
        MEMORY[0x28223BE20](v119);
        *(&v338 - 2) = v91;
        *(&v338 - 8) = 0;
        v120 = swift_allocObject();
        v120[2] = 0;
        v120[3] = 0;
        v120[4] = v94;
        v121 = v118;
        v122 = v363;
        sub_24A62E3E4();

        v374(v101, v375);
        v363 = v117;
        sub_24A52AE18(0, v117, v94, 0, 0);
        v123 = v94;
        if (qword_27EF4EB08 != -1)
        {
          swift_once();
        }

        dispatch_group_enter(v121);
        v124 = sub_24A62E644();
        MEMORY[0x28223BE20](v124);
        *(&v338 - 2) = v91;
        *(&v338 - 8) = 0;
        *(swift_allocObject() + 16) = v94;
        v125 = v121;
        sub_24A62E3E4();

        v126 = v372;
        v127 = v375;
        v374(v372, v375);
        *(v91 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0;
        sub_24A62EA04();
        dispatch_group_enter(v125);
        v128 = sub_24A62E644();
        v362 = &v338;
        MEMORY[0x28223BE20](v128);
        *(&v338 - 2) = v91;
        *(&v338 - 8) = 0;
        v129 = swift_allocObject();
        v129[2] = 0;
        v129[3] = 0;
        v129[4] = v123;
        v130 = v125;
        sub_24A62E3E4();

        v131 = v374;
        v374(v126, v127);
        sub_24A62EA04();
        dispatch_group_enter(v130);
        v132 = sub_24A62E644();
        MEMORY[0x28223BE20](v132);
        *(&v338 - 2) = v91;
        *(&v338 - 8) = 0;
        v133 = swift_allocObject();
        v133[2] = 0;
        v133[3] = 0;
        v133[4] = v373;
        v134 = v130;
        sub_24A62E3E4();

        v131(v126, v375);
        if (qword_27EF4EB98 != -1)
        {
          swift_once();
        }

        dispatch_group_enter(v134);
        v135 = sub_24A62E644();
        MEMORY[0x28223BE20](v135);
        *(&v338 - 2) = v91;
        *(&v338 - 8) = 1;
        v136 = swift_allocObject();
        v136[2] = 0;
        v136[3] = 0;
        v137 = v373;
        v136[4] = v373;
        v138 = v134;
        sub_24A62E3E4();

        v131(v372, v375);
        sub_24A62EA04();
        dispatch_group_enter(v138);
        v139 = sub_24A62E644();
        MEMORY[0x28223BE20](v139);
        *(&v338 - 2) = v91;
        *(&v338 - 8) = 1;
        v140 = swift_allocObject();
        v140[2] = 0;
        v140[3] = 0;
        v140[4] = v137;
        v141 = v138;
        sub_24A62E3E4();

        v142 = v372;
        v144 = v374;
        v143 = v375;
        v374(v372, v375);
        dispatch_group_enter(v141);
        v145 = sub_24A62E644();
        MEMORY[0x28223BE20](v145);
        *(&v338 - 2) = v91;
        *(&v338 - 8) = 0;
        v146 = swift_allocObject();
        v146[2] = 0;
        v146[3] = 0;
        v94 = v373;
        v146[4] = v373;
        v147 = v141;
        sub_24A62E3E4();
        v363 = v122;
        v148 = v91;
        v149 = v143;
        v116 = &unk_27EF5C000;
        goto LABEL_93;
      }

LABEL_68:
      v225 = v101;
      v148 = v91;
      goto LABEL_94;
    }

    v346 = v97;
    *(v91 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEE147AE147AE14;
    if (qword_27EF4EAE0 != -1)
    {
      swift_once();
    }

    v347 = qword_27EF5C848;
    sub_24A62EA04();
    v188 = v352;
    dispatch_group_enter(v352);
    v189 = sub_24A62E644();
    MEMORY[0x28223BE20](v189);
    *(&v338 - 2) = v91;
    *(&v338 - 8) = 0;
    v190 = swift_allocObject();
    v190[2] = 0;
    v190[3] = 0;
    v190[4] = v373;
    v191 = v188;
    v192 = v363;
    sub_24A62E3E4();

    v193 = v372;
    v374(v372, v375);
    *(v91 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0;
    if (qword_27EF4EB60 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v191);
    v194 = sub_24A62E644();
    MEMORY[0x28223BE20](v194);
    *(&v338 - 2) = v91;
    *(&v338 - 8) = 0;
    v195 = swift_allocObject();
    v196 = v91;
    v195[2] = 0;
    v195[3] = 0;
    v195[4] = v373;
    v197 = v191;
    sub_24A62E3E4();

    v198 = v375;
    v199 = v374;
    v374(v193, v375);
    dispatch_group_enter(v197);
    v200 = sub_24A62E644();
    v363 = &v338;
    MEMORY[0x28223BE20](v200);
    *(&v338 - 2) = v196;
    *(&v338 - 8) = 0;
    v201 = swift_allocObject();
    v201[2] = 0;
    v201[3] = 0;
    v201[4] = v373;
    v202 = v197;
    sub_24A62E3E4();

    v199(v193, v198);
    if (qword_27EF4EB98 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v202);
    v203 = sub_24A62E644();
    MEMORY[0x28223BE20](v203);
    *(&v338 - 2) = v371;
    *(&v338 - 8) = 1;
    v204 = swift_allocObject();
    v204[2] = 0;
    v204[3] = 0;
    v204[4] = v373;
    v205 = v202;
    sub_24A62E3E4();

    v206 = v372;
    v199(v372, v198);
    if (qword_27EF4EBE8 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v205);
    v207 = sub_24A62E644();
    MEMORY[0x28223BE20](v207);
    *(&v338 - 2) = v371;
    *(&v338 - 8) = 0;
    *(swift_allocObject() + 16) = v373;
    v208 = v205;
    sub_24A62E3E4();

    v199(v206, v375);
    if (qword_27EF4EB58 != -1)
    {
      swift_once();
    }

    v209 = qword_27EF5C8C0;
    dispatch_group_enter(v208);
    v210 = sub_24A62E644();
    MEMORY[0x28223BE20](v210);
    v211 = v371;
    *(&v338 - 2) = v371;
    *(&v338 - 8) = 0;
    v212 = swift_allocObject();
    v212[2] = 0;
    v212[3] = 0;
    v213 = v373;
    v212[4] = v373;
    v363 = v208;
    sub_24A62E3E4();
    v214 = v372;

    v215 = v375;
    v374(v214, v375);
    sub_24A52AE18(0, v209, v213, 0, 0);
    v216 = v211;
    if (qword_27EF4EB68 != -1)
    {
      swift_once();
    }

    sub_24A62EA04();
    v217 = v363;
    dispatch_group_enter(v363);
    v218 = sub_24A62E644();
    v345 = &v338;
    MEMORY[0x28223BE20](v218);
    *(&v338 - 2) = v211;
    *(&v338 - 8) = 1;
    v219 = swift_allocObject();
    v219[2] = 0;
    v219[3] = 0;
    v219[4] = v213;
    v220 = v217;
    sub_24A62E3E4();

    v221 = v372;
    v374(v372, v215);
    if (qword_27EF4EC50 != -1)
    {
      swift_once();
    }

    v222 = sub_24A506EB8(v362, qword_27EF5C9E8);
    dispatch_group_enter(v220);
    [v85 begin];
    v223 = v341;
    sub_24A5461E8(v222, v341);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v224 = *(v223 + 8);
    }

    else
    {
      v282 = v350;
      v283 = v349;
      v284 = v351;
      (*(v350 + 32))(v349, v223, v351);
      sub_24A62E934();
      v224 = v285;
      (*(v282 + 8))(v283, v284);
    }

    v94 = v373;
    [v85 setDuration_];
    v286 = sub_24A6268BC();
    [v85 setTimingFunction_];

    v287 = swift_allocObject();
    v287[2] = 0;
    v287[3] = 0;
    v287[4] = v94;
    v382 = sub_24A547994;
    v383 = v287;
    aBlock = MEMORY[0x277D85DD0];
    v379 = 1107296256;
    v380 = sub_24A5A8458;
    v381 = &unk_285DA31F8;
    v288 = _Block_copy(&aBlock);
    v289 = v220;

    [v85 setCompletionBlock_];
    _Block_release(v288);
    v290 = swift_weakLoadStrong();
    if (v290)
    {
      v291 = *(v290 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

      v381 = MEMORY[0x277D83A90];
      LODWORD(aBlock) = 1065353216;
      sub_24A583BD0(10, &aBlock);

      sub_24A50EC28(&aBlock);
    }

    [v85 commit];
    dispatch_group_enter(v289);
    v292 = sub_24A62E644();
    MEMORY[0x28223BE20](v292);
    *(&v338 - 2) = v216;
    *(&v338 - 8) = 0;
    v293 = swift_allocObject();
    v293[2] = 0;
    v293[3] = 0;
    v293[4] = v94;
    v294 = v289;
    sub_24A62E3E4();
    v363 = v192;
    v144 = v374;
    v116 = &unk_27EF5C000;
    v148 = v216;
    v142 = v221;
  }

  v149 = v375;
LABEL_93:

  v225 = v142;
  v144(v142, v149);
LABEL_94:
  if (qword_27EF4EB20 != -1)
  {
    swift_once();
  }

  if (qword_27EF4EB28 != -1)
  {
    swift_once();
  }

  v295 = v352;
  dispatch_group_enter(v352);
  v296 = v148;
  *(v148 + v116[21]);
  sub_24A62EA04();

  v297 = sub_24A62E644();
  MEMORY[0x28223BE20](v297);
  *(&v338 - 2) = v148;
  *(&v338 - 8) = 1;
  v298 = swift_allocObject();
  *(v298 + 16) = v94;
  *(v298 + 24) = 1;
  *(v298 + 40) = 0;
  *(v298 + 48) = 0;
  *(v298 + 32) = v148;
  v299 = v295;

  v300 = v363;
  sub_24A62E3E4();

  v301 = v374;
  v374(v225, v375);
  if (qword_27EF4EB90 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v299);
  v302 = sub_24A62E644();
  MEMORY[0x28223BE20](v302);
  *(&v338 - 2) = v148;
  *(&v338 - 8) = 0;
  v303 = swift_allocObject();
  v303[2] = 0;
  v303[3] = 0;
  v303[4] = v94;
  v304 = v299;
  sub_24A62E3E4();

  v301(v225, v375);
  if (qword_27EF4EB80 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v304);
  v305 = sub_24A62E644();
  MEMORY[0x28223BE20](v305);
  *(&v338 - 2) = v148;
  *(&v338 - 8) = 0;
  v306 = swift_allocObject();
  v306[2] = 0;
  v306[3] = 0;
  v306[4] = v94;
  v307 = v304;
  sub_24A62E3E4();

  v301(v225, v375);
  if (qword_27EF4EC10 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v307);
  v308 = sub_24A62E644();
  MEMORY[0x28223BE20](v308);
  *(&v338 - 2) = v148;
  *(&v338 - 8) = 0;
  v309 = swift_allocObject();
  v309[2] = 0;
  v309[3] = 0;
  v309[4] = v94;
  v310 = v307;
  sub_24A62E3E4();
  v363 = v300;

  v301(v225, v375);
  dispatch_group_enter(v310);
  v358 = sub_24A62F014();
  v311 = v348;
  sub_24A62EAE4();
  v312 = v360;
  sub_24A62EB54();
  v313 = v361;
  v314 = v359;
  v359(v311, v361);
  v315 = swift_allocObject();
  *(v315 + 16) = v296;
  *(v315 + 24) = 0;
  *(v315 + 32) = 0;
  *(v315 + 40) = 0;
  *(v315 + 48) = v94;
  v382 = sub_24A547A30;
  v383 = v315;
  aBlock = MEMORY[0x277D85DD0];
  v379 = 1107296256;
  v380 = sub_24A5A8458;
  v381 = &unk_285DA2DE8;
  v316 = _Block_copy(&aBlock);
  v362 = v310;

  v317 = v313;
  v318 = v365;
  sub_24A62EAB4();
  aBlock = MEMORY[0x277D84F90];
  v320 = v367;
  v319 = v368;
  sub_24A62F254();
  v321 = v358;
  MEMORY[0x24C21A910](v312, v318, v320, v316);
  _Block_release(v316);

  v354(v320, v319);
  v353(v318, v366);
  v314(v312, v317);
  v322 = v375;
  if (qword_27EF4EC00 != -1)
  {
    swift_once();
  }

  v323 = v362;
  dispatch_group_enter(v362);
  v324 = v372;
  v325 = sub_24A62E644();
  MEMORY[0x28223BE20](v325);
  v326 = v371;
  *(&v338 - 2) = v371;
  *(&v338 - 8) = 1;
  v327 = swift_allocObject();
  v327[2] = 0;
  v327[3] = 0;
  v327[4] = v373;
  v328 = v323;
  sub_24A62E3E4();

  v374(v324, v322);
  if (qword_27EF4EAE0 != -1)
  {
    swift_once();
  }

  v370 = qword_27EF5C848;
  dispatch_group_enter(v328);
  v329 = sub_24A62E644();
  MEMORY[0x28223BE20](v329);
  *(&v338 - 2) = v326;
  *(&v338 - 8) = 0;
  v330 = swift_allocObject();
  v330[2] = 0;
  v330[3] = 0;
  v331 = v373;
  v330[4] = v373;
  v332 = v328;
  sub_24A62E3E4();

  v333 = v374;
  v374(v324, v322);
  dispatch_group_enter(v332);
  v334 = sub_24A62E644();
  MEMORY[0x28223BE20](v334);
  *(&v338 - 2) = v326;
  *(&v338 - 8) = 0;
  v335 = swift_allocObject();
  v335[2] = 0;
  v335[3] = 0;
  v335[4] = v331;
  v336 = v332;
  sub_24A62E3E4();

  return v333(v324, v322);
}