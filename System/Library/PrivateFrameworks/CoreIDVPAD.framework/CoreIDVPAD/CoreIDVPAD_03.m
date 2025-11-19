unint64_t sub_2456C7108()
{
  result = qword_27EE215F0;
  if (!qword_27EE215F0)
  {
    sub_2456CB1E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE215F0);
  }

  return result;
}

unint64_t sub_2456C7160()
{
  result = qword_27EE21600;
  if (!qword_27EE21600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE212E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21600);
  }

  return result;
}

void sub_2456C71CC(uint64_t a1)
{
  v3 = v1;
  v102 = *MEMORY[0x277D85DE8];
  if ((v3[56] & 1) == 0)
  {
    v5 = *(v3 + 6);
    v6 = *(a1 + OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_time + 16);
    time.value = *(a1 + OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_time);
    *&time.timescale = *(a1 + OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_time + 8);
    time.epoch = v6;
    if (v5 == CMTimeGetSeconds(&time))
    {
      v7 = sub_2456C9B24(MEMORY[0x277D84F90]);
      v8 = sub_2456CB008();
      v10 = v9;
      v100 = MEMORY[0x277D837D0];
      time.value = 0xD00000000000002DLL;
      *&time.timescale = 0x80000002456D1E00;
      sub_2456A52E8(&time, v98);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = v7;
      sub_2456C8F34(v98, v8, v10, isUniquelyReferenced_nonNull_native);

      v12 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v13 = sub_2456CAFD8();
      v14 = sub_2456CAFA8();

      [v12 initWithDomain:v13 code:-8 userInfo:v14];

      swift_willThrow();
      return;
    }
  }

  v15 = OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_faces;
  swift_beginAccess();
  v16 = *(a1 + v15);
  if (v16 >> 62)
  {
    if (sub_2456CB3F8())
    {
      goto LABEL_6;
    }
  }

  else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_6;
  }

  sub_2456BB76C();
  if (v2)
  {
    return;
  }

LABEL_6:
  v17 = sub_2456BBD5C();
  if (v2)
  {
    return;
  }

  v18 = v17;
  Strong = swift_weakLoadStrong();
  if (!Strong || (v20 = *(Strong + 16), , , !v20))
  {
    v49 = sub_2456C9B24(MEMORY[0x277D84F90]);
    v50 = sub_2456CB008();
    v52 = v51;
    v100 = MEMORY[0x277D837D0];
    time.value = 0xD000000000000036;
    *&time.timescale = 0x80000002456D1DC0;
    sub_2456A52E8(&time, v98);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v97 = v49;
    sub_2456C8F34(v98, v50, v52, v53);

    v54 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v55 = sub_2456CAFD8();
    v56 = sub_2456CAFA8();

    [v54 initWithDomain:v55 code:-9 userInfo:v56];

    swift_willThrow();
    return;
  }

  type metadata accessor for PADFacePoseModelInput();
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  v22 = objc_allocWithZone(MEMORY[0x277CBFF68]);
  v23 = v18;
  v24 = [v22 init];
  v25 = *(v20 + 16);
  time.value = 0;
  v26 = [v25 predictionFromFeatures:v21 options:v24 error:&time];
  if (!v26)
  {
    v57 = time.value;
    sub_2456CAE08();

    swift_willThrow();

    return;
  }

  v89 = v23;
  v27 = v26;
  v28 = time.value;

  v29 = sub_2456CAFD8();
  v30 = [v27 featureValueForName_];

  if (!v30)
  {
    __break(1u);
    goto LABEL_68;
  }

  v31 = [v30 multiArrayValue];

  if (!v31)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v32 = [v31 numberArray];

  sub_24569B080();
  v33 = sub_2456CB0D8();

  v34 = sub_2456CAFD8();
  v35 = [v27 featureValueForName_];

  if (!v35)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v36 = [v35 multiArrayValue];

  if (!v36)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v37 = [v36 numberArray];

  v38 = sub_2456CB0D8();
  v39 = sub_2456CAFD8();
  v40 = [v27 featureValueForName_];

  if (!v40)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v41 = [v40 multiArrayValue];

  if (!v41)
  {
LABEL_72:
    __break(1u);
    return;
  }

  v42 = [v41 numberArray];

  v43 = sub_2456CB0D8();
  v44 = v33 & 0xC000000000000001;
  if ((v33 & 0xC000000000000001) != 0)
  {
    v45 = MEMORY[0x245D6E880](0, v33);
  }

  else
  {
    if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_55:
      v63 = MEMORY[0x245D6E880](1, v38);
      goto LABEL_32;
    }

    v45 = *(v33 + 32);
  }

  v46 = v45;
  [v45 floatValue];
  v93 = v47;

  if (v44)
  {
    v48 = MEMORY[0x245D6E880](1, v33);
  }

  else
  {
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
    }

    v48 = *(v33 + 40);
  }

  v58 = v48;
  [v48 floatValue];
  v91 = v59;

  if (v44)
  {
    v60 = MEMORY[0x245D6E880](2, v33);
  }

  else
  {
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
      goto LABEL_66;
    }

    v60 = *(v33 + 48);
  }

  v61 = v60;
  v44 = 0x278E83000uLL;

  [v61 floatValue];
  v90 = v62;

  if ((v38 & 0xC000000000000001) != 0)
  {
    goto LABEL_55;
  }

  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
    __break(1u);
    goto LABEL_58;
  }

  v63 = *(v38 + 40);
LABEL_32:
  v64 = v63;

  [v64 *(v44 + 3824)];
  v88 = v65;

  if ((v43 & 0xC000000000000001) != 0)
  {
    v66 = MEMORY[0x245D6E880](0, v43);
  }

  else
  {
    if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_61;
    }

    v66 = *(v43 + 32);
  }

  v67 = v66;

  [v67 *(v44 + 3824)];
  v69 = v68;

  v43 = a1 + OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_time;
  v70 = *(a1 + OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_time + 16);
  time.value = *(a1 + OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_time);
  *&time.timescale = *(a1 + OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_time + 8);
  time.epoch = v70;
  Seconds = CMTimeGetSeconds(&time);
  v72.i64[0] = LODWORD(v93);
  v72.i64[1] = LODWORD(v90);
  *(v3 + 24) = vorrq_s8(vshll_n_s32(__PAIR64__(v88, LODWORD(v91)), 0x20uLL), v72);
  *(v3 + 5) = v69;
  *(v3 + 6) = Seconds;
  v3[56] = 0;
  v73 = type metadata accessor for PADSWPose();
  v74 = objc_allocWithZone(v73);
  *&v74[OBJC_IVAR____TtC10CoreIDVPAD9PADSWPose_pitch] = v90;
  *&v74[OBJC_IVAR____TtC10CoreIDVPAD9PADSWPose_yaw] = v91;
  *&v74[OBJC_IVAR____TtC10CoreIDVPAD9PADSWPose_roll] = v93;
  v96.receiver = v74;
  v96.super_class = v73;
  v3 = objc_msgSendSuper2(&v96, sel_init);
  v33 = *(a1 + v15);
  if (!(v33 >> 62))
  {
    if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

LABEL_37:
    if ((v33 & 0xC000000000000001) != 0)
    {

      v75 = MEMORY[0x245D6E880](0, v33);
    }

    else
    {
      if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v75 = *(v33 + 32);
    }

    v76 = &v75[OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds];
    v77 = type metadata accessor for PADSWFace();
    v92 = *(v76 + 1);
    v94 = *v76;
    v78 = objc_allocWithZone(v77);
    v79 = &v78[OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds];
    *v79 = v94;
    *(v79 + 1) = v92;
    *&v78[OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_pose] = v3;
    v95.receiver = v78;
    v95.super_class = v77;
    v80 = v3;
    v81 = objc_msgSendSuper2(&v95, sel_init);
    swift_beginAccess();
    v82 = *(a1 + v15);
    v83 = v81;
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(a1 + v15) = v82;
    if (!isUniquelyReferenced_nonNull_bridgeObject || (v82 & 0x8000000000000000) != 0 || (v82 & 0x4000000000000000) != 0)
    {
      v82 = sub_2456C7E18(v82);
      *(a1 + v15) = v82;
    }

    if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v85 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x20);
      *((v82 & 0xFFFFFFFFFFFFFF8) + 0x20) = v83;
      *(a1 + v15) = v82;
      swift_endAccess();

      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_64;
  }

LABEL_58:
  if (sub_2456CB3F8())
  {
    goto LABEL_37;
  }

LABEL_46:
  if (qword_27EE20D28 != -1)
  {
LABEL_61:
    swift_once();
  }

  if (qword_27EE210E0)
  {
    time.value = *v43;
    v86 = sub_2456CB518();
    sub_2456A1A9C(v89, v86, v87, v3);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_2456C7CB0()
{
  if (*(v0 + 56))
  {
    return 0;
  }

  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21598);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2456CE280;
  *(v6 + 56) = &type metadata for PADFacePoseObservation;
  v7 = swift_allocObject();
  result = v6;
  *(v6 + 32) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v3;
  *(v7 + 40) = v2;
  return result;
}

uint64_t sub_2456C7D74()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8D8](v0, 57, 7);
}

uint64_t sub_2456C7E18(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2456CB3F8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

void sub_2456C7E7C(uint64_t a1)
{
  v3 = v1;
  v5 = OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_faces;
  swift_beginAccess();
  v6 = *(a1 + v5);
  if (v6 >> 62)
  {
    if (sub_2456CB3F8())
    {
      goto LABEL_3;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  sub_2456BB76C();
  if (v2)
  {
    return;
  }

LABEL_3:
  v7 = *(a1 + v5);
  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_5;
    }

LABEL_16:
    *&v28 = 0;
    *(&v28 + 1) = 0xE000000000000000;
    sub_2456CB348();
    MEMORY[0x245D6E590](0xD00000000000003DLL, 0x80000002456D1E60);
    v15 = *(a1 + v5);
    if (v15 >> 62)
    {
      v16 = sub_2456CB3F8();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *&v27[0] = v16;
    v17 = sub_2456CB518();
    MEMORY[0x245D6E590](v17);

    v11 = sub_2456C9B24(MEMORY[0x277D84F90]);
    v12 = sub_2456CB008();
    v14 = v18;
    v29 = MEMORY[0x277D837D0];
    goto LABEL_19;
  }

  if (sub_2456CB3F8() != 1)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((sub_2456C8208() & 1) == 0)
  {
    v11 = sub_2456C9B24(MEMORY[0x277D84F90]);
    v12 = sub_2456CB008();
    v14 = v13;
    v29 = MEMORY[0x277D837D0];
    *&v28 = 0xD000000000000042;
    *(&v28 + 1) = 0x80000002456D1EA0;
LABEL_19:
    sub_2456A52E8(&v28, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v11;
    sub_2456C8F34(v27, v12, v14, isUniquelyReferenced_nonNull_native);

    v20 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v21 = sub_2456CAFD8();
    v22 = sub_2456CAFA8();

    [v20 initWithDomain:v21 code:-6 userInfo:v22];

    swift_willThrow();
    return;
  }

  v8 = *(a1 + v5);
  if (v8 >> 62)
  {
    if (sub_2456CB3F8())
    {
LABEL_8:
      if ((v8 & 0xC000000000000001) != 0)
      {

        v25 = MEMORY[0x245D6E880](0, v8);

        v9 = *(v25 + OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_pose);
        v26 = v9;
        swift_unknownObjectRelease();
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v9 = *(*(v8 + 32) + OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_pose);
        v10 = v9;
      }

      goto LABEL_23;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  v9 = 0;
LABEL_23:
  v23 = *(v3 + 24);
  v24 = *(v3 + 32);
  *(v3 + 24) = 0;
  *(v3 + 32) = v9;
  sub_2456C85B4(v23, v24);
}

uint64_t sub_2456C8208()
{
  v1 = OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_faces;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    result = sub_2456CB3F8();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v2 & 0xC000000000000001) != 0)
  {

    v12 = MEMORY[0x245D6E880](0, v2);

    result = v12;
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_18;
    }

    result = *(v2 + 32);
  }

  v2 = *(result + OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_pose);
  if (!v2)
  {
    goto LABEL_19;
  }

  v4 = *(v0 + v1);
  if (v4 >> 62)
  {
LABEL_18:
    v13 = result;
    v14 = sub_2456CB3F8();
    result = v13;
    if (v14 == 1)
    {
      goto LABEL_9;
    }

LABEL_19:

    return 0;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_19;
  }

LABEL_9:
  if (fabs(*(v2 + OBJC_IVAR____TtC10CoreIDVPAD9PADSWPose_pitch)) <= 15.0 || fabs(*(v2 + OBJC_IVAR____TtC10CoreIDVPAD9PADSWPose_roll)) <= 15.0 || fabs(*(v2 + OBJC_IVAR____TtC10CoreIDVPAD9PADSWPose_yaw)) <= 15.0)
  {

    return 1;
  }

  else
  {
    v5 = *(result + OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds);
    v6 = *(result + OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds + 8);
    v7 = *(result + OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds + 16);
    v8 = *(result + OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds + 24);
    v9 = result;
    v10 = v2;
    v15.origin.x = v5;
    v15.origin.y = v6;
    v15.size.width = v7;
    v15.size.height = v8;
    Height = CGRectGetHeight(v15);

    return Height > 0.15;
  }
}

uint64_t sub_2456C8400()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (v2 == 1)
  {
    v3 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21598);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_2456CE280;
    *(v3 + 56) = &type metadata for PADPrintReplayObservation;
    *(v3 + 32) = v1;
    *(v3 + 40) = v2;
  }

  sub_2456C85C4(v1, v2);
  return v3;
}

uint64_t sub_2456C8494()
{
  swift_weakDestroy();
  sub_2456C85B4(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_2456C84F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_2456C8554(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2456C85B4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return MEMORY[0x2821F96F8]();
  }

  return result;
}

id sub_2456C85C4(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
    return a2;
  }

  return result;
}

unint64_t sub_2456C85D4(uint64_t a1, uint64_t a2)
{
  sub_2456CB588();
  sub_2456CB058();
  v4 = sub_2456CB5A8();

  return sub_2456C9408(a1, a2, v4);
}

unint64_t sub_2456C864C(uint64_t a1)
{
  v2 = sub_2456CB2D8();

  return sub_2456C94C0(a1, v2);
}

unint64_t sub_2456C8694(uint64_t a1)
{
  sub_2456CB008();
  sub_2456CB588();
  sub_2456CB058();
  v2 = sub_2456CB5A8();

  return sub_2456C9588(a1, v2);
}

uint64_t sub_2456C8738(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21610);
  v33 = a2;
  result = sub_2456CB418();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_2456A52E8(v24, v34);
      }

      else
      {
        sub_2456A530C(v24, v34);
      }

      sub_2456CB588();
      sub_2456CB058();
      result = sub_2456CB5A8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_2456A52E8(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_2456C89F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21620);
  v34 = a2;
  result = sub_2456CB418();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_2456CB588();
      sub_2456CB058();
      result = sub_2456CB5A8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2456C8C98(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = sub_2456CB418();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      sub_2456CB588();
      sub_2456CB058();
      result = sub_2456CB5A8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

_OWORD *sub_2456C8F34(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2456C85D4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2456C96A0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2456C8738(v16, a4 & 1);
    v11 = sub_2456C85D4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2456CB568();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_2456A52E8(a1, v22);
  }

  else
  {
    sub_2456C939C(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_2456C9084(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2456C85D4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2456C89F0(v16, a4 & 1);
      v11 = sub_2456C85D4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_2456CB568();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2456C9844();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_2456C9200(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2456C85D4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2456C8C98(v16, a4 & 1, &qword_27EE21618);
      v11 = sub_2456C85D4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_2456CB568();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_2456C99B4(&qword_27EE21618);
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

_OWORD *sub_2456C939C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2456A52E8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_2456C9408(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2456CB538())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2456C94C0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2456C9FC8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245D6E810](v9, a1);
      sub_2456B3054(v9);
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

unint64_t sub_2456C9588(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_2456CB008();
      v8 = v7;
      if (v6 == sub_2456CB008() && v8 == v9)
      {
        break;
      }

      v11 = sub_2456CB538();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *sub_2456C96A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21610);
  v2 = *v0;
  v3 = sub_2456CB408();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2456A530C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2456A52E8(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_2456C9844()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21620);
  v2 = *v0;
  v3 = sub_2456CB408();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_2456C99B4(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_2456CB408();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;

        result = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

unint64_t sub_2456C9B24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21610);
    v3 = sub_2456CB428();
    v4 = a1 + 32;

    while (1)
    {
      sub_24569BF14(v4, &v13, &qword_27EE212B8);
      v5 = v13;
      v6 = v14;
      result = sub_2456C85D4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2456A52E8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_2456C9C78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21620);
    v3 = sub_2456CB428();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2456C85D4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_2456C9DA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_2456CB428();
    v8 = a1 + 32;

    while (1)
    {
      sub_24569BF14(v8, &v15, a4);
      v9 = v15;
      result = sub_2456C8694(v15);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      result = sub_2456A52E8(&v16, (v7[7] + 32 * result));
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      v8 += 40;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_2456C9ECC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_2456CB428();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_2456C85D4(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
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

void sub_2456CA024()
{
  v1 = *(v0 + 40);
}

uint64_t sub_2456CA054()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2456CA360()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_2456CA3BC()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v1 = sub_2456CAFD8();
  v2 = sub_2456CAFD8();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (v3)
  {
    sub_2456CAE68();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2456CA4B4()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2456CA510(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21648);
    v3 = sub_2456CB328();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_2456CB588();

      sub_2456CB058();
      result = sub_2456CB5A8();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_2456CB538();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void PADVNFaceprintInit_cold_1(os_log_t log)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = 0;
  _os_log_error_impl(&dword_245686000, log, OS_LOG_TYPE_ERROR, "The reported faceprint has invalid dimensions %d.", v1, 8u);
}

void VNCreateFaceprintRequestInit_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_245686000, a2, OS_LOG_TYPE_ERROR, "FaceprintRequest update failed (%{public}@).", &v2, 0xCu);
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

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}