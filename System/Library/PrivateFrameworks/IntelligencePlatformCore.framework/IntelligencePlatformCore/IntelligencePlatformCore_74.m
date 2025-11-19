void sub_1C4AA51A8()
{
  sub_1C43FBD3C();
  v124 = v0;
  v2 = v1;
  v4 = v3;
  v132 = v5;
  v6 = type metadata accessor for PGRelationshipStructs.EntityAliasRelationshipType(0);
  v129 = *(v6 - 8);
  v7 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1C43FBFDC();
  v131 = v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD230();
  v130 = v10;
  sub_1C43FBE44();
  v133 = sub_1C4F00978();
  v11 = sub_1C43FCDF8(v133);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v11);
  v18 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v120 - v20;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FD230();
  v127 = v22;
  v23 = sub_1C43FBE44();
  v134 = type metadata accessor for PGRelationshipStructs.AgentAffiliationRelationshipType(v23);
  v24 = sub_1C43FBCE0(v134);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  v126 = (v28 - v27);
  v29 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v120 - v31;
  v33 = sub_1C4EFF1C8();
  v34 = sub_1C43FCDF8(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBCC4();
  v41 = v40 - v39;
  v42 = v2;
  v44 = v43;
  sub_1C445FFF0(v42, v32, &qword_1EC0C2A90, &unk_1C4F16D30);
  if (sub_1C44157D4(v32, 1, v44) == 1)
  {
    sub_1C4420C3C(v32, &qword_1EC0C2A90, &unk_1C4F16D30);
    sub_1C4F00158();
    v45 = sub_1C4F00968();
    v46 = sub_1C4F01CD8();
    if (os_log_type_enabled(v45, v46))
    {
      sub_1C43FD1A8();
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1C43F8000, v45, v46, "Tokenizer was not intialized for current system locale. Not emitting aliases.", v47, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    (*(v13 + 8))(v18, v133);
    sub_1C43FCF64();
    v51 = v134;
LABEL_35:
    sub_1C440BAA8(v48, v49, v50, v51);
    goto LABEL_36;
  }

  v128 = v36;
  v52 = *(v36 + 32);
  v125 = v41;
  v123 = v44;
  v52(v41, v32, v44);
  v53 = [v4 sharedItem];
  v54 = [v53 content];

  v55 = v134;
  if (!v54)
  {
LABEL_32:
    sub_1C4F00158();
    v99 = sub_1C4F00968();
    v100 = sub_1C4F01CD8();
    if (os_log_type_enabled(v99, v100))
    {
      sub_1C43FD1A8();
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_1C43F8000, v99, v100, "No content available from Cascade set change, not emitting aliases.", v101, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    (*(v13 + 8))(v21, v133);
    v102 = sub_1C443287C();
    v103(v102);
    sub_1C43FCF64();
    v51 = v55;
    goto LABEL_35;
  }

  objc_opt_self();
  v56 = swift_dynamicCastObjCClass();
  if (!v56 || (v57 = v56, v58 = [v4 allLocalInstances], sub_1C456902C(&unk_1EC0C2A70, &qword_1C4F4C980), sub_1C4F01678(), v58, v59 = sub_1C4428DA0(), , !v59))
  {

    goto LABEL_32;
  }

  v60 = [v4 sharedItem];
  v61 = [v60 sharedIdentifier];

  sub_1C4EFEEF8();
  v62 = v126;
  sub_1C43FCF64();
  sub_1C440BAA8(v63, v64, v65, v66);
  v67 = v62 + *(v55 + 20);
  sub_1C4EFD318();
  v68 = *(v55 + 24);
  if (qword_1EDDFD2C8 == -1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    sub_1C44072C0();
    swift_once();
LABEL_9:
    v69 = type metadata accessor for Source();
    sub_1C442B738(v69, qword_1EDDFD2D0);
    sub_1C441A268();
    sub_1C448CF6C(v70, v62 + v68, v71);
    v72 = v62 + *(v55 + 28);
    sub_1C4EFE808();
    v73 = (v62 + *(v55 + 32));
    *v73 = 0;
    v73[1] = 0;
    v74 = v62 + *(v55 + 36);
    sub_1C4EFE878();
    v75 = (v62 + *(v55 + 40));
    *v75 = 0;
    v75[1] = 0;
    v76 = v62 + *(v55 + 44);
    sub_1C4EFE2A8();
    v77 = (v62 + *(v55 + 48));
    *v77 = 0;
    v77[1] = 0;
    v120 = v77;
    v78 = v62 + *(v55 + 52);
    sub_1C4EFEB48();
    v79 = (v62 + *(v55 + 56));
    *v79 = 0;
    v79[1] = 0;
    sub_1C4F00158();
    v80 = v54;
    v81 = sub_1C4F00968();
    v82 = sub_1C4F01CB8();
    v121 = v80;

    if (os_log_type_enabled(v81, v82))
    {
      sub_1C43FECF0();
      v83 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v83 = 138412290;
      *(v83 + 4) = v57;
      *v54 = v57;
      v84 = v121;
      _os_log_impl(&dword_1C43F8000, v81, v82, "PGRelationship.content: %@", v83, 0xCu);
      sub_1C4420C3C(v54, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v85 = *(v13 + 8);
    v13 += 8;
    v85(v127, v133);
    if (![v57 isUsersPet])
    {
      break;
    }

    v127 = v61;
    if (qword_1EDDE4448 != -1)
    {
      swift_once();
    }

    v86 = qword_1EDE2CC18;
    v62 = &selRef_localizedName;
    *v75 = sub_1C465CA18([v57 type], qword_1EDE2CC18);
    v75[1] = v87;
    *v79 = sub_1C465CA18([v57 type], v86);
    v79[1] = v88;
    *v73 = sub_1C4EFF048();
    v73[1] = v89;
    *v120 = xmmword_1C4F4C8E0;
    v136 = MEMORY[0x1E69E7CD0];
    if (qword_1EDDE4450 != -1)
    {
      swift_once();
    }

    v90 = sub_1C465CA64([v57 type], qword_1EDE2CC20);
    v68 = v125;
    v122 = v57;
    if (!v90)
    {
      goto LABEL_39;
    }

    v61 = v90;
    v62 = *(v90 + 16);
    if (!v62)
    {

LABEL_39:
      v57 = 0;
      v68 = MEMORY[0x1E69E7CD0];
LABEL_40:
      v54 = 0;
      v106 = 1 << *(v68 + 32);
      v107 = -1;
      if (v106 < 64)
      {
        v107 = ~(-1 << v106);
      }

      v55 = v107 & *(v68 + 56);
      v108 = (v106 + 63) >> 6;
      v61 = MEMORY[0x1E69E7CC0];
      v13 = v130;
      if (v55)
      {
        goto LABEL_47;
      }

      while (1)
      {
        do
        {
          v109 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            __break(1u);
            goto LABEL_56;
          }

          if (v109 >= v108)
          {
            v116 = sub_1C443287C();
            v117(v116);

            goto LABEL_54;
          }

          v55 = *(v68 + 56 + 8 * v109);
          ++v54;
        }

        while (!v55);
        v54 = v109;
        do
        {
LABEL_47:
          v110 = (*(v68 + 48) + ((v54 << 10) | (16 * __clz(__rbit64(v55)))));
          v111 = *v110;
          v112 = v110[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          [v122 type];
          sub_1C4AA63DC();

          sub_1C448CF6C(v13, v131, type metadata accessor for PGRelationshipStructs.EntityAliasRelationshipType);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C458EDF0(0, v61[2] + 1, 1, v61);
            v61 = v114;
          }

          v62 = v61[2];
          v113 = v61[3];
          if (v62 >= v113 >> 1)
          {
            sub_1C458EDF0(v113 > 1, v62 + 1, 1, v61);
            v61 = v115;
          }

          v55 &= v55 - 1;
          sub_1C4AA6848(v130, type metadata accessor for PGRelationshipStructs.EntityAliasRelationshipType);
          v61[2] = v62 + 1;
          sub_1C4AA68A0(v131, v61 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v62);
        }

        while (v55);
      }
    }

    v91 = 0;
    v57 = 0;
    v55 = v90 + 32;
    v133 = (v90 + 32);
    while (v91 < v61[2])
    {
      v92 = (v55 + 16 * v91);
      v93 = *v92;
      v54 = *(v92 + 1);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFF168();
      v94 = sub_1C4EFF198();

      v13 = *(v94 + 16);
      if (v13)
      {
        v95 = (v94 + 40);
        do
        {
          v54 = *(v95 - 1);
          v96 = *v95;
          v97 = HIBYTE(*v95) & 0xF;
          if ((*v95 & 0x2000000000000000) == 0)
          {
            v97 = v54 & 0xFFFFFFFFFFFFLL;
          }

          if (v97)
          {
            v98 = *v95;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C44869B4(&v135, v54, v96);
          }

          v95 += 2;
          --v13;
        }

        while (v13);

        v68 = v125;
        v55 = v133;
      }

      else
      {
      }

      if (++v91 == v62)
      {

        v68 = v136;
        goto LABEL_40;
      }
    }

LABEL_56:
    __break(1u);
  }

  v104 = sub_1C443287C();
  v105(v104);

LABEL_54:
  v118 = v126;
  v119 = v132;
  sub_1C448CF6C(v126, v132, type metadata accessor for PGRelationshipStructs.AgentAffiliationRelationshipType);
  sub_1C440BAA8(v119, 0, 1, v134);
  sub_1C4AA6848(v118, type metadata accessor for PGRelationshipStructs.AgentAffiliationRelationshipType);
LABEL_36:
  sub_1C43FE9F0();
}

uint64_t sub_1C4AA5CE8()
{
  v1 = v0;
  v61 = *MEMORY[0x1E69E9840];
  v2 = sub_1C4F00978();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBFDC();
  v53 = v8;
  sub_1C43FD1D0();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v51 - v11;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C4400B4C();
  sub_1C4F00158();
  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CB8();
  if (os_log_type_enabled(v13, v14))
  {
    sub_1C43FD1A8();
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1C43F8000, v13, v14, "PGRelationship.ingestEvents", v15, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v16 = *(v5 + 8);
  v16(v0, v2);
  v17 = sub_1C4F01108();
  type metadata accessor for PhotoRelationshipSet();
  v18 = [swift_getObjCClassFromMetadata() setEnumeratorWithUseCase_];
  aBlock = 0;
  v19 = [v18 allSets_];
  v20 = aBlock;
  if (v19)
  {
    v21 = v19;
    v51[1] = v18;
    sub_1C456902C(&qword_1EC0C2A58, &qword_1C4F4C968);
    v22 = sub_1C4F01678();
    v23 = v20;

    sub_1C4F00158();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v24 = sub_1C4F00968();
    v25 = sub_1C4F01CB8();
    if (os_log_type_enabled(v24, v25))
    {
      sub_1C43FECF0();
      v26 = swift_slowAlloc();
      v54 = v16;
      v27 = v2;
      v28 = v26;
      *v26 = 134217984;
      *(v26 + 4) = sub_1C4428DA0();

      _os_log_impl(&dword_1C43F8000, v24, v25, "PGRelationship.allsets.count %ld", v28, 0xCu);
      v2 = v27;
      v16 = v54;
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }

    v16(v12, v2);
    v39 = sub_1C4428DA0();
    if (v39)
    {
      v40 = v39;
      if (v39 < 1)
      {
        __break(1u);
      }

      v53 = v22;
      v54 = v17;
      v41 = 0;
      v52 = v22 & 0xC000000000000001;
      do
      {
        if (v52)
        {
          v42 = MEMORY[0x1C6940F90](v41, v53);
        }

        else
        {
          v42 = *(v53 + 8 * v41 + 32);
        }

        v43 = v42;
        ++v41;
        v44 = [v42 changePublisherWithUseCase_];
        v59 = sub_1C4AA6768;
        v60 = v1;
        aBlock = MEMORY[0x1E69E9820];
        v56 = 1107296256;
        v57 = sub_1C4442530;
        v58 = &unk_1F43F7F58;
        v45 = _Block_copy(&aBlock);

        v59 = sub_1C4AA6780;
        v60 = v1;
        aBlock = MEMORY[0x1E69E9820];
        v56 = 1107296256;
        v57 = sub_1C4440590;
        v58 = &unk_1F43F7F80;
        v46 = _Block_copy(&aBlock);

        v47 = [v44 sinkWithBookmark:0 completion:v45 receiveInput:v46];
        _Block_release(v46);
        _Block_release(v45);
      }

      while (v40 != v41);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v54 = v16;
    v29 = aBlock;
    v30 = sub_1C4EF97A8();

    swift_willThrow();
    swift_unknownObjectRelease();

    v31 = v53;
    sub_1C4F00158();
    v32 = v30;
    v33 = sub_1C4F00968();
    v34 = sub_1C4F01CD8();

    if (os_log_type_enabled(v33, v34))
    {
      sub_1C43FECF0();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      v37 = v30;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v38;
      *v36 = v38;
      _os_log_impl(&dword_1C43F8000, v33, v34, "PGRelationship.ingestEvents %@", v35, 0xCu);
      sub_1C4420C3C(v36, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }

    v54(v31, v2);
  }

  swift_beginAccess();
  v48 = *(v1 + 16);
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v50 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C4AA6328()
{
  type metadata accessor for CCPhotosPetType(0);
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4AA6904();
  result = sub_1C4F00F28();
  qword_1EDE2CC20 = result;
  return result;
}

uint64_t sub_1C4AA638C()
{
  type metadata accessor for CCPhotosPetType(0);
  sub_1C4AA6904();
  result = sub_1C4F00F28();
  qword_1EDE2CC18 = result;
  return result;
}

void sub_1C4AA63DC()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v43 = v6;
  v7 = sub_1C4EFD548();
  v8 = sub_1C43FCDF8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  v16 = type metadata accessor for PGRelationshipStructs.EntityAliasRelationshipType(0);
  v17 = sub_1C43FBCE0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v23, v24, v25, v26);
  v27 = v22 + v16[5];
  sub_1C4EFD278();
  v28 = v16[6];
  if (qword_1EDDFD2C8 != -1)
  {
    sub_1C44072C0();
    swift_once();
  }

  v29 = type metadata accessor for Source();
  sub_1C442B738(v29, qword_1EDDFD2D0);
  sub_1C441A268();
  sub_1C448CF6C(v30, v22 + v28, v31);
  v32 = v22 + v16[7];
  sub_1C4EFE3A8();
  v33 = v22 + v16[9];
  sub_1C4EFE4A8();
  v34 = v22 + v16[11];
  sub_1C4EFE658();
  v35 = v16[12];
  v36 = v22 + v16[13];
  sub_1C4EFEA88();
  if (v1 == 2)
  {
    sub_1C4EFD458();
  }

  else if (v1 == 1)
  {
    sub_1C4EFD468();
  }

  else
  {
    sub_1C4EFD478();
  }

  v37 = (v22 + v35);
  v38 = sub_1C4EFD2F8();
  v40 = v39;
  (*(v10 + 8))(v15, v7);
  *v37 = v38;
  v37[1] = v40;
  v41 = (v22 + v16[8]);
  v42 = v16[14];
  *(v22 + v16[10]) = xmmword_1C4F4C8F0;
  *v41 = v5;
  v41[1] = v3;
  *(v22 + v42) = xmmword_1C4F0D2B0;
  sub_1C4AA68A0(v22, v43);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C43FE9F0();
}

uint64_t sub_1C4AA65F0()
{
  v1 = v0[2];

  sub_1C4420C3C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore20PGRelationshipEntity_tokenizer, &qword_1EC0C2A90, &unk_1C4F16D30);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PGRelationshipEntity()
{
  result = qword_1EDDE4438;
  if (!qword_1EDDE4438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C4AA66C0()
{
  sub_1C4682388();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1C4AA6784()
{
  result = qword_1EC0C2A80;
  if (!qword_1EC0C2A80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0C2A80);
  }

  return result;
}

uint64_t sub_1C4AA67C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C4F01108();
  v5 = [a3 localIdentifierWithUUID_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1C4F01138();

  return v6;
}

uint64_t sub_1C4AA6848(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4AA68A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PGRelationshipStructs.EntityAliasRelationshipType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4AA6904()
{
  result = qword_1EDDDB990;
  if (!qword_1EDDDB990)
  {
    type metadata accessor for CCPhotosPetType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDB990);
  }

  return result;
}

void sub_1C4AA69C4()
{
  type metadata accessor for Source();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PhaseStores();
    if (v1 <= 0x3F)
    {
      sub_1C4682388();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C4AA6A68()
{
  v1[4] = v0;
  v2 = sub_1C4F00978();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AA6B28, 0, 0);
}

uint64_t sub_1C4AA6B28()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = *(v0 + 56);
  sub_1C4F00158();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C43F8000, v2, v3, "PGRelationshipFullSourceIngestor", v4, 2u);
    MEMORY[0x1C6942830](v4, -1, -1);
  }

  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);

  (*(v6 + 8))(v5, v7);
  *(v0 + 64) = 0;
  v9 = v8 + *(type metadata accessor for PGRelationshipFullSourceIngestor() + 20);
  v10 = *(v9 + *(type metadata accessor for PhaseStores() + 24));
  v11 = swift_task_alloc();
  v11[2] = v0 + 16;
  v11[3] = v8;
  v11[4] = v0 + 24;
  v11[5] = v0 + 64;
  GraphStore.tripleInsertingTransaction(transactionBody:)(sub_1C4AA7608, v11);
  v12 = *(v0 + 56);
  v13 = *(v0 + 32);

  sub_1C4EF9AE8();
  sub_1C46483B0();
  sub_1C4AA6D14(v13, (v0 + 24), (v0 + 16));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1C4AA6D14(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for PGRelationshipFullSourceIngestor();
  sub_1C4430B24(a1 + *(v11 + 20), v10, type metadata accessor for Configuration);
  v10[*(v7 + 28)] = 1;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C47CE078(v10);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v13 = sub_1C4F01108();

  *(inited + 48) = v13;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  v14 = *a2;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  result = *a3 - *a2;
  if (__OFSUB__(*a3, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

void sub_1C4AA6F88(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X5>, _BYTE *a7@<X8>)
{
  v48[0] = a5;
  v48[1] = a2;
  v49 = a1;
  v50 = sub_1C4F00978();
  v12 = *(v50 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v50);
  v16 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v48 - v17;
  v19 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = v48 - v21;
  v23 = *a3 + 1;
  if (__OFADD__(*a3, 1))
  {
    __break(1u);
  }

  else
  {
    v51 = a7;
    v52 = a6;
    *a3 = v23;
    v24 = type metadata accessor for PGRelationshipFullSourceIngestor();
    v25 = v24[7];
    v57 = *(a4 + v24[6]);
    v53 = a4;
    sub_1C44D9DFC(a4 + v25, v22);
    v26 = type metadata accessor for PGRelationshipEntity();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    sub_1C4AA4264(&v57, v22);
    sub_1C4AA5CE8();
    if (v7)
    {

      v54 = v7;
      v31 = v7;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v32 = swift_dynamicCast();
      v33 = v53;
      if (!v32)
      {

        sub_1C4F00158();
        v42 = sub_1C4F00968();
        v43 = sub_1C4F01CD8();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_1C43F8000, v42, v43, "PGRelationshipFullSourceIngestor.error", v44, 2u);
          v45 = v44;
          v33 = v53;
          MEMORY[0x1C6942830](v45, -1, -1);
        }

        (*(v12 + 8))(v16, v50);
        v46 = v24[5];
        v56[0] = 1;
        static Transformers.reportError(error:context:config:pipelineType:)(v7, 0xD000000000000020, 0x80000001C4F4C990, v33 + v46, v56);

        v47 = v52;
        *v52 = 1;
        goto LABEL_15;
      }

      v34 = v56[1];
      sub_1C4F00158();
      v35 = sub_1C4F00968();
      v36 = sub_1C4F01CD8();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1C43F8000, v35, v36, "PGRelationshipFullSourceIngestor.error", v37, 2u);
        v38 = v37;
        v33 = v53;
        MEMORY[0x1C6942830](v38, -1, -1);
      }

      (*(v12 + 8))(v18, v50);
      sub_1C465B58C();
      v39 = swift_allocError();
      *v40 = v34;
      v41 = v24[5];
      v55 = 1;
      static Transformers.reportError(error:context:config:pipelineType:)(v39, 0xD000000000000020, 0x80000001C4F4C990, v33 + v41, &v55);

LABEL_14:
      v47 = v52;
LABEL_15:
      *v51 = *v47;
      return;
    }

    sub_1C4812140();
    v30 = v29;

    v49(v30);

    if (!__OFADD__(*v48[0], 1))
    {
      ++*v48[0];
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1C4AA73FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return sub_1C4AA6A68();
}

uint64_t sub_1C4AA74F8(uint64_t a1)
{
  result = sub_1C4AA75C4(qword_1EDDDDDE0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4AA753C(uint64_t a1)
{
  result = sub_1C4AA75C4(&qword_1EDDDDDC8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4AA7580(uint64_t a1)
{
  result = sub_1C4AA75C4(&qword_1EDDDDDD0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4AA75C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PGRelationshipFullSourceIngestor();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of PhaseBase.run()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C46A1150;

  return v9(a1, a2);
}

_BYTE *storeEnumTagSinglePayload for PipelineSignal(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PhaseSignal(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C4AA78F0()
{
  swift_getMetatypeMetadata();
  v0 = sub_1C4F01198();
  MEMORY[0x1C6940010](v0);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 60;
}

unint64_t sub_1C4AA795C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000036;
  }

  if (a1 == 1)
  {
    return 0xD00000000000002CLL;
  }

  return 0xD000000000000022;
}

unint64_t sub_1C4AA79C0()
{
  result = qword_1EC0C2A98;
  if (!qword_1EC0C2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2A98);
  }

  return result;
}

unint64_t sub_1C4AA7A54()
{
  result = qword_1EC0C2AA0;
  if (!qword_1EC0C2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2AA0);
  }

  return result;
}

uint64_t static PhaseBuilder.buildExpression(_:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = sub_1C4409678(a1, v1);

  return sub_1C4AA7B20(v3, v1, v2);
}

uint64_t static PhaseBuilder.buildOptional(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4AA7B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  v10 = a3;
  v5 = sub_1C4422F90(&v8);
  (*(*(a2 - 8) + 16))(v5, a1, a2);
  sub_1C456902C(&qword_1EC0B8AA8, &unk_1C4F4E0E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C4F0D130;
  sub_1C441D670(&v8, v6 + 32);
  return v6;
}

_BYTE *storeEnumTagSinglePayload for PhaseBuilder(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C4AA7C7C()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4AA7D00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4AA7D8C;

  return sub_1C4C8C598();
}

uint64_t sub_1C4AA7D8C()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C4AA7EC0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1C4AA7EC0()
{
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDE2DE10);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C43F8000, v2, v3, "Pipeline: Error while executing Delta pipeline via Fastpass.", v4, 2u);
    MEMORY[0x1C6942830](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1C4AA7FE0()
{
  v0 = *sub_1C4C8C530();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4AA8074()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4AA8100;

  return sub_1C4AA7D00();
}

uint64_t sub_1C4AA8100()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t PhaseStores.globalKnowledgeStore.getter()
{
  v1 = *(v0 + *(type metadata accessor for PhaseStores() + 20));
}

uint64_t PhaseStores.graphStore.getter()
{
  v1 = *(v0 + *(type metadata accessor for PhaseStores() + 24));
}

uint64_t PhaseStores.stateStore.getter()
{
  v1 = *(v0 + *(type metadata accessor for PhaseStores() + 28));
}

uint64_t PhaseStores.visionKeyValueStore.getter()
{
  v1 = *(v0 + *(type metadata accessor for PhaseStores() + 32));
}

uint64_t PhaseStores.resolverKeyValueStore.getter()
{
  v1 = *(v0 + *(type metadata accessor for PhaseStores() + 36));
}

uint64_t PhaseStores.relationshipKeyValueStore.getter()
{
  v1 = *(v0 + *(type metadata accessor for PhaseStores() + 40));
}

uint64_t PhaseStores.portraitTopicKeyValueStore.getter()
{
  v1 = *(v0 + *(type metadata accessor for PhaseStores() + 44));
}

uint64_t PhaseStores.walletOrderKeyValueStore.getter()
{
  v1 = *(v0 + *(type metadata accessor for PhaseStores() + 48));
}

uint64_t PhaseStores.init(config:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Configuration();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v74 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v75 = &v71 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v71 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v71 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v71 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v71 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v71 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v71 - v25;
  v78 = a2;
  sub_1C44098F0(a1, a2);
  v27 = type metadata accessor for GlobalKnowledgeStore(0);
  sub_1C44098F0(a1, v26);
  v28 = v76;
  v29 = sub_1C48300AC(v26);
  if (!v28)
  {
    v31 = v29;
    v32 = v21;
    v73 = v12;
    v76 = type metadata accessor for PhaseStores();
    v33 = v78;
    *(v78 + v76[5]) = v31;
    sub_1C44098F0(a1, v24);
    v34 = type metadata accessor for GraphStore();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    v37 = GraphStore.init(config:)(v24);
    v72 = 0;
    v38 = v76;
    v39 = sub_1C442D17C(v37, v76[6]);
    sub_1C44098F0(v39, v32);
    v40 = type metadata accessor for StateStore();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    v43 = StateStore.init(config:)(v32);
    v44 = sub_1C442D17C(v43, v38[7]);
    sub_1C44098F0(v44, v18);
    type metadata accessor for VisionKeyValueStore();
    swift_allocObject();
    VisionKeyValueStore.init(config:)(v18, v45, v46, v47, v48, v49, v50, v51, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
    v53 = sub_1C442D17C(v52, v38[8]);
    sub_1C44098F0(v53, v15);
    type metadata accessor for ResolverKeyValueStore();
    swift_allocObject();
    v54 = sub_1C44200BC();
    v55 = ResolverKeyValueStore.init(config:)(v54);
    v56 = sub_1C442D17C(v55, v38[9]);
    v57 = v73;
    sub_1C44098F0(v56, v73);
    type metadata accessor for RelationshipKeyValueStore();
    swift_allocObject();
    v58 = RelationshipKeyValueStore.init(config:)(v57);
    v59 = sub_1C442D17C(v58, v38[10]);
    sub_1C44098F0(v59, v75);
    type metadata accessor for PortraitTopicKeyValueStore();
    swift_allocObject();
    v60 = sub_1C44200BC();
    v61 = PortraitTopicKeyValueStore.init(config:)(v60);
    v62 = sub_1C442D17C(v61, v76[11]);
    sub_1C44098F0(v62, v74);
    type metadata accessor for WalletOrderKeyValueStore();
    swift_allocObject();
    v63 = sub_1C44200BC();
    v70 = WalletOrderKeyValueStore.init(config:)(v63);
    result = sub_1C4467948(a1);
    *(v33 + v76[12]) = v70;
    return result;
  }

  sub_1C441A280();
  v76 = v28;
  v30 = v78;
  sub_1C4467948(v64);
  result = sub_1C4467948(v30);
  if (v24)
  {
    v66 = *(v30 + *(type metadata accessor for PhaseStores() + 32));

    if (!a1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a1)
  {
LABEL_8:
    v67 = *(v30 + *(type metadata accessor for PhaseStores() + 36));
  }

LABEL_9:
  if (v12)
  {
    v68 = *(v30 + *(type metadata accessor for PhaseStores() + 40));
  }

  if (v27)
  {
    v69 = *(v30 + *(type metadata accessor for PhaseStores() + 44));
  }

  return result;
}

uint64_t sub_1C4AA8908()
{
  result = type metadata accessor for Configuration();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for GlobalKnowledgeStore(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for GraphStore();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for StateStore();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for VisionKeyValueStore();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for ResolverKeyValueStore();
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for RelationshipKeyValueStore();
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for PortraitTopicKeyValueStore();
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for WalletOrderKeyValueStore();
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1C4AA8A50(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v22 = MEMORY[0x1E69E7CC0];
    v21 = *(a1 + 16);
    sub_1C459D738();
    v4 = sub_1C486C288(a1);
    v5 = v21;
    v6 = 0;
    v7 = a1 + 56;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < 1 << *(a1 + 32))
      {
        v8 = v4 >> 6;
        if ((*(v7 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_25;
        }

        v9 = *(*(a1 + 48) + 24 * v4 + 16);
        v10 = *(v22 + 16);
        if (v10 >= *(v22 + 24) >> 1)
        {
          v20 = v2;
          v19 = v3;
          sub_1C459D738();
          v3 = v19;
          v2 = v20;
          v7 = a1 + 56;
          v5 = v21;
        }

        *(v22 + 16) = v10 + 1;
        *(v22 + v10 + 32) = 0x4060503020100uLL >> (8 * v9);
        if (v3)
        {
          goto LABEL_29;
        }

        v11 = 1 << *(a1 + 32);
        if (v4 >= v11)
        {
          goto LABEL_26;
        }

        v12 = *(v7 + 8 * v8);
        if ((v12 & (1 << v4)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_28;
        }

        v13 = v12 & (-2 << (v4 & 0x3F));
        if (v13)
        {
          v11 = __clz(__rbit64(v13)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = v8 << 6;
          v15 = v8 + 1;
          v16 = (a1 + 64 + 8 * v8);
          while (v15 < (v11 + 63) >> 6)
          {
            v18 = *v16++;
            v17 = v18;
            v14 += 64;
            ++v15;
            if (v18)
            {
              sub_1C440951C(v4, v2, 0);
              v7 = a1 + 56;
              v5 = v21;
              v11 = __clz(__rbit64(v17)) + v14;
              goto LABEL_19;
            }
          }

          sub_1C440951C(v4, v2, 0);
          v7 = a1 + 56;
          v5 = v21;
        }

LABEL_19:
        if (++v6 == v5)
        {
          return;
        }

        v3 = 0;
        v2 = *(a1 + 36);
        v4 = v11;
        if (v11 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_1C4AA8CEC(char *a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = 0;
  sub_1C4AA8A50(a2);
  v6 = sub_1C4597BBC(v5);
  if (qword_1EDDF35B0 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v7 = *(sub_1C4A7C718(qword_1EDDF35B8, v6) + 16);

    if (v7)
    {

LABEL_36:
      v30 = 0;
      goto LABEL_39;
    }

    v37 = a1;
    v9 = *(a2 + 32);
    v10 = ((1 << v9) + 63) >> 6;
    if ((v9 & 0x3Fu) > 0xD)
    {
      break;
    }

LABEL_5:
    v41 = &v37;
    MEMORY[0x1EEE9AC00](v8);
    a1 = &v37 - ((8 * v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    v42 = v10;
    sub_1C4501018(0, v10, a1);
    v43 = 0;
    v11 = 0;
    v12 = 1 << *(a2 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a2 + 56);
    v6 = (v12 + 63) >> 6;
    v39 = 0x80000001C4F85600;
    v40 = 0x80000001C4F86760;
    v38 = 0x80000001C4F86740;
    while (v14)
    {
      v15 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v18 = v15 | (v11 << 6);
      v4 = 0xE800000000000000;
      switch(*(*(a2 + 48) + 24 * v18 + 16))
      {
        case 1:
          v4 = v38;
          goto LABEL_22;
        case 2:
          v4 = 0xEC000000746E6576;
          goto LABEL_22;
        case 3:
          v4 = v39;
          goto LABEL_22;
        case 4:

          goto LABEL_23;
        case 5:
          v4 = 0xEB00000000656741;
          goto LABEL_22;
        case 6:
          v4 = v40;
          goto LABEL_22;
        default:
LABEL_22:
          v19 = sub_1C4F02938();

          if (v19)
          {
LABEL_23:
            *&a1[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
            if (__OFADD__(v43++, 1))
            {
              __break(1u);
            }
          }

          return result;
      }
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v6)
      {
        sub_1C4A8DF38(a1, v42, v43, a2);
        v22 = v21;
        goto LABEL_28;
      }

      v17 = *(a2 + 56 + 8 * v11);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v14 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_42:
    swift_once();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_5;
  }

  v35 = swift_slowAlloc();

  v36 = sub_1C4D2C7B8(v35, v10, a2, sub_1C4AA9290);
  if (v4)
  {

    swift_bridgeObjectRelease_n();
    result = MEMORY[0x1C6942830](v35, -1, -1);
    __break(1u);
    return result;
  }

  v22 = v36;
  swift_bridgeObjectRelease_n();
  MEMORY[0x1C6942830](v35, -1, -1);
LABEL_28:
  if (!v22[2])
  {
LABEL_37:

    goto LABEL_38;
  }

  v23 = v22[5];
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](4);
  sub_1C4F01298();
  v24 = sub_1C4F02B68();
  v25 = -1 << *(v22 + 32);
  v26 = v24 & ~v25;
  if (((*(v22 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v26) & 1) == 0)
  {
LABEL_35:

    goto LABEL_36;
  }

  v27 = ~v25;
  while (2)
  {
    v28 = v22[6] + 24 * v26;
    if (*(v28 + 16) != 4)
    {
LABEL_34:
      v26 = (v26 + 1) & v27;
      if (((*(v22 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v26) & 1) == 0)
      {
        goto LABEL_35;
      }

      continue;
    }

    break;
  }

  if ((*v28 & 1) == 0)
  {
    v29 = sub_1C4F02938();

    if (v29)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

LABEL_38:
  sub_1C4D51718(&unk_1F43D8700);
  sub_1C4839234(v37, v31);
  v30 = v32;

LABEL_39:
  v33 = *MEMORY[0x1E69E9840];
  return v30 & 1;
}

uint64_t sub_1C4AA9290(uint64_t a1)
{
  v1 = 1;
  switch(*(a1 + 16))
  {
    case 4:
      break;
    default:
      v1 = sub_1C4F02938();
      break;
  }

  return v1 & 1;
}

uint64_t sub_1C4AA93C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v63 = a2;
  v61 = a5;
  v62 = a1;
  v58 = *(a5 - 8);
  v9 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v56 = v10;
  v60 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 24);
  v13 = *(v11 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v57 = sub_1C4F02268();
  sub_1C43FCE64();
  v55 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v59 = &v49 - v20;
  sub_1C4572308(&unk_1EC0BA420, &qword_1C4F13E78);
  sub_1C4F02408();
  sub_1C441A294();
  swift_getWitnessTable();
  sub_1C4F02508();
  v21 = type metadata accessor for InteractionEvent(255);
  swift_getWitnessTable();
  v54 = v21;
  sub_1C4F02408();
  sub_1C43FCE64();
  v52 = v23;
  v53 = v22;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v22);
  v50 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v49 - v28;
  sub_1C43FCE64();
  v51 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v49 - v34;
  if (sub_1C4AA8CEC(a3, a4))
  {
    v49 = a6;
    v36 = v65;
    v37 = v64;
    result = (*(v13 + 24))(v62, v63, 0, 0, v12, v13);
    if (!v37)
    {
      MEMORY[0x1C6940210](AssociatedTypeWitness, AssociatedConformanceWitness);
      v39 = v58;
      (*(v58 + 16))(v60, v36, v61);
      v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v41 = swift_allocObject();
      *(v41 + 16) = v12;
      *(v41 + 24) = v13;
      (*(v39 + 32))(v41 + v40, v60, v61);
      v42 = v57;
      swift_getWitnessTable();
      v43 = v59;
      sub_1C4F025A8();

      (*(v55 + 8))(v43, v42);
      v45 = v52;
      v44 = v53;
      (*(v52 + 16))(v50, v29, v53);
      sub_1C441A294();
      swift_getWitnessTable();
      v46 = sub_1C4F021B8();
      (*(v45 + 8))(v29, v44);
      result = (*(v51 + 8))(v35, AssociatedTypeWitness);
      v47 = v49;
      *v49 = sub_1C4AAA394;
      v47[1] = v46;
    }
  }

  else
  {
    sub_1C463DFA8();
    swift_allocError();
    *v48 = a3;
    *(v48 + 8) = a4;
    *(v48 + 16) = 0;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

uint64_t sub_1C4AA98F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v53 = a2;
  v54 = a3;
  v4 = sub_1C4EF9CD8();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PhotosPersonObservation(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v51 - v14;
  v16 = sub_1C4EFF0C8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PhotoInteractionEventSourceAdapter();
  sub_1C4409678((v53 + *(v21 + 36)), *(v53 + *(v21 + 36) + 24));
  v22 = (a1 + *(v8 + 20));
  v23 = *v22;
  v24 = v22[1];
  sub_1C4EFFB18();
  v26 = v51;
  v25 = v52;
  if (sub_1C44157D4(v15, 1, v16) == 1)
  {
    sub_1C4423A0C(v15, &unk_1EC0BA0E0, &qword_1C4F105A0);
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v27 = sub_1C4F00978();
    sub_1C442B738(v27, qword_1EDE2DDE0);
    v28 = v11;
    sub_1C4AAA39C(a1, v11);
    v29 = sub_1C4F00968();
    v30 = sub_1C4F01CD8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v55 = v32;
      *v31 = 136315138;
      v33 = &v11[*(v8 + 20)];
      v34 = *v33;
      v35 = v33[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4AAA400(v28);
      v36 = sub_1C441D828(v34, v35, &v55);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_1C43F8000, v29, v30, "Unable to find mdid for PHPerson ID: %s", v31, 0xCu);
      sub_1C440962C(v32);
      MEMORY[0x1C6942830](v32, -1, -1);
      MEMORY[0x1C6942830](v31, -1, -1);
    }

    else
    {

      sub_1C4AAA400(v11);
    }

    result = 0;
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    (*(v26 + 16))(v7, a1, v25);
    v37 = a1;
    v38 = sub_1C4EFF048();
    v40 = v39;
    sub_1C456902C(&qword_1EC0B8ED8, &qword_1C4F4CE40);
    v41 = swift_allocObject();
    v42 = v41;
    *(v41 + 16) = xmmword_1C4F0D130;
    v43 = (v37 + *(v8 + 28));
    v44 = *v43;
    v45 = *(v43 + 2) == 0;
    v46 = 0x10000;
    if (v45)
    {
      v46 = 0;
    }

    *(v41 + 32) = v46 | v44;
    *(v41 + 40) = 0;
    *(v41 + 48) = 5;
    (*(v17 + 8))(v20, v16);
    v47 = type metadata accessor for InteractionEvent(0);
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    swift_allocObject();
    result = sub_1C4950CDC(v7, 3, v38, v40, v42);
  }

  *v54 = result;
  return result;
}

unint64_t sub_1C4AA9EDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1C4AAA294();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4AA9F64(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1C44157D4(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C4AAA0A0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v17 + 8) = 0u;
              *(v17 + 24) = 0u;
              *v17 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v17 + 24) = (a2 - 1);
            }
          }

          else
          {

            sub_1C440BAA8(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C4AAA294()
{
  result = qword_1EC0C2AC0;
  if (!qword_1EC0C2AC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC0C2AC0);
  }

  return result;
}

uint64_t sub_1C4AAA2F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for PhotoInteractionEventSourceAdapter() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1C4AA98F0(a1, v8, a2);
}

uint64_t sub_1C4AAA39C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosPersonObservation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4AAA400(uint64_t a1)
{
  v2 = type metadata accessor for PhotosPersonObservation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4AAA45C(uint64_t a1)
{
  v2 = type metadata accessor for Configuration();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  sub_1C4F01898();
  v9 = sub_1C4F018C8();
  sub_1C440BAA8(v8, 0, 1, v9);
  sub_1C44098F0(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_1C4409954(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_1C4AC1908();

  return sub_1C446F170(v8, &qword_1EC0BC660, &qword_1C4F29150);
}

uint64_t sub_1C4AAA5FC()
{
  result = sub_1C4F01108();
  qword_1EDE2C8E0 = result;
  return result;
}

uint64_t sub_1C4AAA634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = *(*(sub_1C456902C(&qword_1EC0C2AC8, &qword_1C4F4CE58) - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v6 = sub_1C456902C(&qword_1EC0C2AD0, &qword_1C4F4CE60);
  v4[5] = v6;
  v7 = *(v6 - 8);
  v4[6] = v7;
  v8 = *(v7 + 64) + 15;
  v4[7] = swift_task_alloc();
  v9 = sub_1C4F01E38();
  v4[8] = v9;
  v10 = *(v9 - 8);
  v4[9] = v10;
  v11 = *(v10 + 64) + 15;
  v4[10] = swift_task_alloc();
  v12 = sub_1C456902C(&qword_1EC0C2AD8, &qword_1C4F4CE68);
  v4[11] = v12;
  v13 = *(v12 - 8);
  v4[12] = v13;
  v14 = *(v13 + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AAA7FC, 0, 0);
}

uint64_t sub_1C4AAA7FC()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1EDDDB8F8 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];
  sub_1C4F01E48();

  v8 = sub_1C4AAB528(&qword_1EDDDB8D0, MEMORY[0x1E6969F20]);
  MEMORY[0x1C693FA20](v5, v8);
  (*(v6 + 8))(v4, v5);
  sub_1C4F00BD8();
  sub_1C4AAB4C4();
  v9 = *(MEMORY[0x1E69E85A8] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v11 = sub_1C441A2AC(v10);

  return MEMORY[0x1EEE6D8C8](v11);
}

uint64_t sub_1C4AAA980()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1C4AAAC78;
  }

  else
  {
    v3 = sub_1C4AAAA94;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1C4AAAAB0()
{
  v1 = v0[4];
  v2 = sub_1C4EF9508();
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    v4 = v0[12];
    v3 = v0[13];
    v6 = v0[10];
    v5 = v0[11];
    (*(v0[6] + 8))(v0[7], v0[5]);
    (*(v4 + 8))(v3, v5);

    v7 = v0[1];

    v7();
  }

  else
  {
    v8 = v0[15];
    v9 = v0[3];
    v10 = objc_autoreleasePoolPush();
    sub_1C4AAADF4(v9);
    if (v8)
    {

      objc_autoreleasePoolPop(v10);
    }

    else
    {
      v11 = v0[4];
      objc_autoreleasePoolPop(v10);
      sub_1C446F170(v11, &qword_1EC0C2AC8, &qword_1C4F4CE58);
      sub_1C4AAB4C4();
      v12 = *(MEMORY[0x1E69E85A8] + 4);
      v13 = swift_task_alloc();
      v0[14] = v13;
      *v13 = v0;
      v14 = sub_1C441A2AC();

      MEMORY[0x1EEE6D8C8](v14);
    }
  }
}

uint64_t sub_1C4AAAC78()
{
  *(v0 + 16) = *(v0 + 120);
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1C4AAAD04(uint64_t a1)
{
  v4 = *(type metadata accessor for Configuration() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C44A7DA0;

  return sub_1C4AAA634(a1, v6, v7, v1 + v5);
}

void sub_1C4AAADF4(uint64_t a1)
{
  v52 = a1;
  v2 = type metadata accessor for Configuration();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v53 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FeedbackLogEntry(0);
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4EFF6B8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 104))(&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69A9960]);
  v13 = sub_1C4EFF728();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_1C4EFF708();
  v17 = sub_1C4EF96F8();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_1C4EF96E8();
  sub_1C4EF96C8();
  v55 = v16;
  sub_1C4AAB528(&qword_1EC0C2AE0, MEMORY[0x1E69A9988]);
  v20 = sub_1C4EF96D8();
  if (v1)
  {

    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v22 = sub_1C4F00978();
    sub_1C442B738(v22, qword_1EDDFECB8);
    v23 = v1;
    v24 = sub_1C4F00968();
    v25 = sub_1C4F01CD8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v55 = v28;
      *v26 = 136315394;
      if (qword_1EDDDB8F8 != -1)
      {
        swift_once();
      }

      v29 = sub_1C4F01138();
      v31 = sub_1C441D828(v29, v30, &v55);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2112;
      v32 = v1;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v33;
      *v27 = v33;
      _os_log_impl(&dword_1C43F8000, v24, v25, "Failed to respond to %s: %@", v26, 0x16u);
      sub_1C446F170(v27, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v27, -1, -1);
      sub_1C440962C(v28);
      MEMORY[0x1C6942830](v28, -1, -1);
      MEMORY[0x1C6942830](v26, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v34 = v20;
    v35 = v21;
    sub_1C4EF9CC8();
    v36 = sub_1C4EFF6F8();
    v54 = v8;
    v38 = v37;
    v39 = sub_1C4AAB528(&qword_1EDDEFF60, MEMORY[0x1E69A9988]);
    v40 = MEMORY[0x1C693DE10](v13, v39);
    v41 = &v54[v5[5]];
    *v41 = v34;
    v41[1] = v35;
    v42 = &v54[v5[6]];
    *v42 = v36;
    v42[1] = v38;
    v44 = v53;
    v43 = v54;
    v45 = &v54[v5[7]];
    *v45 = v40;
    v45[1] = v46;
    v47 = (v43 + v5[8]);
    *v47 = 0;
    v47[1] = 0;
    *(v43 + v5[9]) = 0;
    v48 = v52;
    sub_1C44098F0(v52, v44);
    type metadata accessor for FeedbackProcessingTask();
    sub_1C4806460(v48);
    type metadata accessor for FeedbackWalker();
    swift_allocObject();
    FeedbackWalker.init(config:processors:)();
    v50 = MEMORY[0x1EEE9AC00](v49);
    *(&v51 - 2) = v43;
    *(&v51 - 1) = v50;
    sub_1C48010FC(sub_1C48065E8, (&v51 - 4));

    sub_1C4AAB570(v43);
  }
}

unint64_t sub_1C4AAB4C4()
{
  result = qword_1EDDDBDB8;
  if (!qword_1EDDDBDB8)
  {
    sub_1C4572308(&qword_1EC0C2AD0, &qword_1C4F4CE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBDB8);
  }

  return result;
}

uint64_t sub_1C4AAB528(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4AAB570(uint64_t a1)
{
  v2 = type metadata accessor for FeedbackLogEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4AAB5CC(uint64_t a1)
{
  v2 = type metadata accessor for Configuration();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C44098F0(a1, v5 - v4);
  v7 = type metadata accessor for PhotosAutonamingViewFeedbackProcessor();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  sub_1C4AAB684(v6);
  sub_1C445421C(a1, _s11InitContextVMa);
  return v10;
}

void sub_1C4AAB874(_BYTE *a1@<X8>)
{
  v49 = a1;
  v2 = sub_1C4EFF6E8();
  v3 = sub_1C43FCDF8(v2);
  v50 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v46 = (v8 - v7);
  v9 = sub_1C4EFF6B8();
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v17 = (v16 - v15);
  v18 = sub_1C456902C(&qword_1EC0C2AE8, &qword_1C4F4CF38);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v44 - v23;
  v52 = v1;
  v25 = *(v1 + 48);
  if (v25)
  {
    v47 = 1;
    sub_1C440BAA8(&v44 - v23, 1, 1, v2);
    v26 = v25;
    sub_1C4EFF718();
    v27 = (*(v12 + 88))(v17, v9);
    v28 = v50;
    if (v27 != *MEMORY[0x1E69A9978])
    {
      v29 = v27;
      if (v27 != *MEMORY[0x1E69A9970])
      {
        if (v27 != *MEMORY[0x1E69A9968])
        {
          v43 = *MEMORY[0x1E69A9960];
          sub_1C446F170(v24, &qword_1EC0C2AE8, &qword_1C4F4CF38);

          v32 = v52;
          if (v29 != v43)
          {
            (*(v12 + 8))(v17, v9);
          }

          goto LABEL_14;
        }

        v34 = [v26 pruner];
        aBlock[4] = sub_1C45646BC;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1C45B7938;
        aBlock[3] = &unk_1F43F82A0;
        v33 = _Block_copy(aBlock);

        [v34 deleteEventsPassingTest_];

        _Block_release(v33);
        sub_1C446F170(v24, &qword_1EC0C2AE8, &qword_1C4F4CF38);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
        v32 = v52;
        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
LABEL_14:
          *(v32 + OBJC_IVAR____TtC24IntelligencePlatformCore37PhotosAutonamingViewFeedbackProcessor_changesMade) = 1;
          *v49 = 0;
          return;
        }

        __break(1u);
        goto LABEL_12;
      }

      v47 = 2;
    }

    v48 = v26;
    sub_1C446F170(v24, &qword_1EC0C2AE8, &qword_1C4F4CF38);
    (*(v12 + 96))(v17, v9);
    v12 = *v17;
    v9 = v17[1];
    v30 = sub_1C456902C(&qword_1EC0C2AF0, &qword_1C4F4CF40);
    v31 = *(v28 + 32);
    v31(v24, v17 + *(v30 + 48), v2);
    sub_1C440BAA8(v24, 0, 1, v2);
    sub_1C4AACA44(v24, v22);
    if (sub_1C44157D4(v22, 1, v2) == 1)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C446F170(v24, &qword_1EC0C2AE8, &qword_1C4F4CF38);
      swift_bridgeObjectRelease_n();

      sub_1C446F170(v22, &qword_1EC0C2AE8, &qword_1C4F4CF38);
      v32 = v52;
      goto LABEL_14;
    }

    v17 = v46;
    v31(v46, v22, v2);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v32 = v52;
    sub_1C4AABE8C(aBlock);
    v33 = SLOBYTE(aBlock[0]);
    if (SLOBYTE(aBlock[0]) == 7)
    {
      swift_bridgeObjectRelease_n();

      (*(v28 + 8))(v17, v2);
LABEL_13:
      sub_1C446F170(v24, &qword_1EC0C2AE8, &qword_1C4F4CF38);
      goto LABEL_14;
    }

LABEL_12:
    v45 = [v48 source];
    HIDWORD(v44) = dword_1C4F4CF4C[v33];
    LOBYTE(aBlock[0]) = v33;
    v36 = v17;
    v37 = sub_1C4AAC060(v12, v9, v17, aBlock);
    v39 = v38;

    v40 = objc_allocWithZone(MEMORY[0x1E698EDB8]);
    v41 = sub_1C4AAC984(v47, HIDWORD(v44), v37, v39, v12, v9);
    v42 = v45;
    [v45 sendEvent_];

    (*(v28 + 8))(v36, v2);
    goto LABEL_13;
  }

  sub_1C44200CC();
  v44 = 50;
  sub_1C4400B6C();
  sub_1C4F024A8();
  __break(1u);
}

void sub_1C4AABE8C(char *a1@<X8>)
{
  sub_1C4EFF6D8();
  if (v4)
  {
    sub_1C440B0E8();
    v5 = VisionKeyValueStore.fetchEntityIdentifiers(for:)();
    v6 = sub_1C4AACAFC(v5, v1, v2);
  }

  else
  {
    sub_1C4EFF6C8();
    if (!v7)
    {
      v9 = MEMORY[0x1E69E7CD0];
      goto LABEL_6;
    }

    sub_1C440B0E8();
    v8 = VisionKeyValueStore.fetchNameEntities(for:)();
    v6 = sub_1C4AACDAC(v8, v1, v2);
  }

  v9 = v6;
LABEL_6:
  v10 = sub_1C486C288(v9);
  v12 = v11;
  v14 = v13;
  v15 = sub_1C486C29C(v9);
  if ((v14 & 1) == 0 && (v17 & 1) == 0)
  {
    if (v12 == v16)
    {
      if (v10 != v15)
      {
        sub_1C486BE74(v10, v12, v9, v23);

        sub_1C4851A34(v23);
        v22 = v23[48];
LABEL_15:
        *a1 = v22;
        return;
      }

      if (qword_1EDDFD028 == -1)
      {
LABEL_11:
        v18 = sub_1C4F00978();
        sub_1C442B738(v18, qword_1EDE2DE10);
        v19 = sub_1C4F00968();
        v20 = sub_1C4F01CD8();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_1C43F8000, v19, v20, "There should be an entry in the vision kvs for an autonaming suggestion.", v21, 2u);
          MEMORY[0x1C6942830](v21, -1, -1);
        }

        v22 = 7;
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1C4AAC060(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v7 = sub_1C4F00DD8();
  v8 = sub_1C43FCDF8(v7);
  v64 = v9;
  v65 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = sub_1C4F00DC8();
  v16 = sub_1C43FCDF8(v15);
  v66 = v17;
  v67 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v62 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v63 = &v61 - v22;
  v23 = sub_1C4F01188();
  v24 = sub_1C43FCDF8(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  v31 = v30 - v29;
  v32 = *a4;
  v33 = sub_1C4EFF6D8();
  if (v34 || (v33 = sub_1C4EFF6C8(), v34))
  {
    v35 = v33;
    v36 = v34;
    v68 = a1;
    v69 = a2;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v35, v36);

    v37 = "association:identifierNoMatch";
    v38 = 0xD00000000000001BLL;
    switch(v32)
    {
      case 1:
        goto LABEL_12;
      case 2:
        v37 = "num_rejected_suggestions";
        v38 = 0xD000000000000014;
        goto LABEL_12;
      case 3:
        v40 = "association:contactsInferred";
        goto LABEL_11;
      case 4:
        v39 = "association:contactsConfirmed";
        goto LABEL_9;
      case 5:
        v39 = "association:userTaggedHomeKit";
        goto LABEL_9;
      case 6:
        v40 = "association:userTaggedPhotos";
LABEL_11:
        v37 = v40 - 32;
        v38 = 0xD00000000000001CLL;
        goto LABEL_12;
      default:
        v39 = "association:identifierNoMatch";
LABEL_9:
        v37 = v39 - 32;
        v38 = 0xD00000000000001DLL;
LABEL_12:
        MEMORY[0x1C6940010](v38, v37 | 0x8000000000000000);

        sub_1C4F01178();
        sub_1C4F01148();
        v42 = v41;

        (*(v26 + 8))(v31, v23);
        if (v42 >> 60 == 15)
        {
          v43 = 0;
        }

        else
        {
          sub_1C4AACAB4(&qword_1EDDFEAD0, MEMORY[0x1E6966620]);
          v44 = v65;
          sub_1C4F00DB8();
          v45 = sub_1C4404DC8();
          sub_1C44344B8(v45, v46);
          v47 = sub_1C4404DC8();
          sub_1C4498FD8(v47, v48);
          v49 = sub_1C4404DC8();
          sub_1C441DFEC(v49, v50);
          v51 = v63;
          sub_1C4F00DA8();
          (*(v64 + 8))(v14, v44);
          v53 = v66;
          v52 = v67;
          v54 = v62;
          (*(v66 + 16))(v62, v51, v67);
          v55 = sub_1C44D5F88(v54);
          v57 = v56;
          v43 = sub_1C4EF9A48();
          sub_1C4434000(v55, v57);
          v58 = sub_1C4404DC8();
          sub_1C441DFEC(v58, v59);
          (*(v53 + 8))(v51, v52);
        }

        result = v43;
        break;
    }
  }

  else
  {
    sub_1C44200CC();
    v61 = 173;
    sub_1C4400B6C();
    result = sub_1C4F024A8();
    __break(1u);
  }

  return result;
}

void sub_1C4AAC4C4()
{
  v20[1] = *MEMORY[0x1E69E9840];
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore37PhotosAutonamingViewFeedbackProcessor_changesMade;
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore37PhotosAutonamingViewFeedbackProcessor_changesMade) == 1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69A9F28]) init];
    v3 = sub_1C4F01108();
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v6 = sub_1C4F01108();
    v20[0] = 0;
    v7 = [v2 sourceUpdatedWithSourceType:v3 sourceIdentifier:v6 error:v20];

    if (v7)
    {
      v8 = v20[0];

      *(v0 + v1) = 0;
    }

    else
    {
      v9 = v20[0];
      v10 = sub_1C4EF97A8();

      swift_willThrow();
      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v11 = sub_1C4F00978();
      sub_1C442B738(v11, qword_1EDDFECB8);
      v12 = v10;
      v13 = sub_1C4F00968();
      v14 = sub_1C4F01CD8();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        v17 = v10;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 4) = v18;
        *v16 = v18;
        _os_log_impl(&dword_1C43F8000, v13, v14, "PhotosAutonamingViewFeedbackProcessor: Could not register sourceUpdated event: %@", v15, 0xCu);
        sub_1C446F170(v16, &qword_1EC0BDA00, &qword_1C4F10D30);
        MEMORY[0x1C6942830](v16, -1, -1);
        MEMORY[0x1C6942830](v15, -1, -1);
      }

      else
      {
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C4AAC71C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  sub_1C442D188();
  sub_1C445421C(v0 + v4, v5);
  return v0;
}

uint64_t sub_1C4AAC768()
{
  sub_1C4AAC71C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PhotosAutonamingViewFeedbackProcessor()
{
  result = qword_1EDDDC8B0;
  if (!qword_1EDDDC8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4AAC814()
{
  result = type metadata accessor for Configuration();
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

id sub_1C4AAC984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a4)
  {
    v10 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_1C4F01108();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_1C4F01108();

LABEL_6:
  v12 = [v6 initWithFeedbackType:a1 associationType:a2 feedbackId:v10 visualId:v11];

  return v12;
}

uint64_t sub_1C4AACA44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C2AE8, &qword_1C4F4CF38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4AACAB4(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1C4AACAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = (8 * v10);
  v12 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v9 > 0xD)
  {
LABEL_24:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v27 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v24 = sub_1C4AAD32C(v27, v10, a1, a2, a3, sub_1C4AAD1C4);

      MEMORY[0x1C6942830](v27, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_22;
    }
  }

  v30 = v4;
  v28[1] = v28;
  MEMORY[0x1EEE9AC00](v12);
  v11 = v28 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  v29 = v10;
  sub_1C4501018(0, v10, v11);
  v13 = 0;
  v4 = 0;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v10 = v15 & *(a1 + 56);
  v16 = (v14 + 63) >> 6;
  while (2)
  {
    v31 = v13;
    do
    {
      if (!v10)
      {
        v18 = v4;
        while (1)
        {
          v4 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v4 >= v16)
          {
            goto LABEL_21;
          }

          v19 = *(a1 + 56 + 8 * v4);
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v10 = (v19 - 1) & v19;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_24;
      }

      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v20 = v17 | (v4 << 6);
      v21 = (*(a1 + 48) + 56 * v20);
      v22 = *v21 == a2 && v21[1] == a3;
    }

    while (!v22 && (sub_1C4F02938() & 1) == 0);
    *&v11[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
    v13 = v31 + 1;
    if (!__OFADD__(v31, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_21:
  sub_1C4A8E4C4(v11, v29, v31, a1);
  v24 = v23;
  swift_bridgeObjectRelease_n();
LABEL_22:
  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

void *sub_1C4AACDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = (8 * v10);
  v12 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v9 > 0xD)
  {
LABEL_24:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v27 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v24 = sub_1C4AAD32C(v27, v10, a1, a2, a3, sub_1C4AAD05C);

      MEMORY[0x1C6942830](v27, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_22;
    }
  }

  v30 = v4;
  v28[1] = v28;
  MEMORY[0x1EEE9AC00](v12);
  v11 = v28 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  v29 = v10;
  sub_1C4501018(0, v10, v11);
  v13 = 0;
  v4 = 0;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v10 = v15 & *(a1 + 56);
  v16 = (v14 + 63) >> 6;
  while (2)
  {
    v31 = v13;
    do
    {
      if (!v10)
      {
        v18 = v4;
        while (1)
        {
          v4 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v4 >= v16)
          {
            goto LABEL_21;
          }

          v19 = *(a1 + 56 + 8 * v4);
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v10 = (v19 - 1) & v19;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_24;
      }

      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v20 = v17 | (v4 << 6);
      v21 = *(a1 + 48) + 56 * v20;
      v22 = *(v21 + 16) == a2 && *(v21 + 24) == a3;
    }

    while (!v22 && (sub_1C4F02938() & 1) == 0);
    *&v11[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
    v13 = v31 + 1;
    if (!__OFADD__(v31, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_21:
  sub_1C4A8E4C4(v11, v29, v31, a1);
  v24 = v23;
  swift_bridgeObjectRelease_n();
LABEL_22:
  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

uint64_t sub_1C4AAD05C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = result;
  v8 = 0;
  v9 = 0;
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v9 << 6);
    v19 = *(a3 + 48) + 56 * v18;
    result = *(v19 + 16);
    if (result != a4 || *(v19 + 24) != a5)
    {
      result = sub_1C4F02938();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    *(v25 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    if (__OFADD__(v8++, 1))
    {
      __break(1u);
LABEL_19:

      sub_1C4A8E4C4(v25, a2, v8, a3);
      v23 = v22;

      return v23;
    }
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

    v17 = *(v10 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4AAD1C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = result;
  v8 = 0;
  v9 = 0;
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v9 << 6);
    v19 = (*(a3 + 48) + 56 * v18);
    result = *v19;
    if (*v19 != a4 || v19[1] != a5)
    {
      result = sub_1C4F02938();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    *(v25 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    if (__OFADD__(v8++, 1))
    {
      __break(1u);
LABEL_19:

      sub_1C4A8E4C4(v25, a2, v8, a3);
      v23 = v22;

      return v23;
    }
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

    v17 = *(v10 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C4AAD32C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v12 = a6(v11, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

uint64_t sub_1C4AAD408()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1C4AAD454(char a1)
{
  result = 0x64497465737361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x73644965636166;
      break;
    case 3:
      result = 0x736E6F73726570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4AAD4D4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1C4687270();
}

uint64_t sub_1C4AAD4F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C4AAD408();
  *a2 = result;
  return result;
}

unint64_t sub_1C4AAD528@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C4AAD454(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C4AAD55C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4AAD408();
  *a1 = result;
  return result;
}

uint64_t sub_1C4AAD584(uint64_t a1)
{
  v2 = sub_1C4AAD884();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4AAD5C0(uint64_t a1)
{
  v2 = sub_1C4AAD884();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetPersonMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C2AF8, &unk_1C4F4CF70);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4AAD884();
  sub_1C4F02BF8();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v21) = 0;
  sub_1C4F02798();
  if (!v2)
  {
    v16 = type metadata accessor for AssetPersonMetadata(0);
    v17 = v16[5];
    LOBYTE(v21) = 1;
    sub_1C4EF9CD8();
    sub_1C442D1A0();
    sub_1C4AADDB8(v18);
    sub_1C44200DC();
    sub_1C4F027E8();
    v21 = *(v3 + v16[6]);
    HIBYTE(v20) = 2;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D0B4(&qword_1EDDFA578);
    sub_1C44200DC();
    sub_1C4F027E8();
    v21 = *(v3 + v16[7]);
    HIBYTE(v20) = 3;
    sub_1C456902C(&qword_1EC0C2B08, &qword_1C4F4CF80);
    sub_1C4AADDFC(&unk_1EC0C2B10);
    sub_1C44200DC();
    sub_1C4F027E8();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_1C4AAD884()
{
  result = qword_1EC0C2B00;
  if (!qword_1EC0C2B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2B00);
  }

  return result;
}

unint64_t sub_1C4AAD8F8()
{
  result = qword_1EC0C2B18;
  if (!qword_1EC0C2B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2B18);
  }

  return result;
}

uint64_t AssetPersonMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_1C4EF9CD8();
  v4 = sub_1C43FCDF8(v3);
  v34 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v36 = sub_1C456902C(&qword_1EC0C2B20, &qword_1C4F4CF88);
  sub_1C43FCDF8(v36);
  v33 = v11;
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v31 - v15;
  v17 = type metadata accessor for AssetPersonMetadata(0);
  v18 = *(*(v17 - 1) + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v21 = (v20 - v19);
  v22 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4AAD884();
  v35 = v16;
  v23 = v37;
  sub_1C4F02BC8();
  if (v23)
  {
    return sub_1C440962C(a1);
  }

  v24 = v21;
  v25 = v33;
  v26 = v34;
  LOBYTE(v39) = 0;
  *v24 = sub_1C4F02678();
  v24[1] = v27;
  v31[2] = v27;
  v37 = v24;
  LOBYTE(v39) = 1;
  sub_1C442D1A0();
  sub_1C4AADDB8(v28);
  sub_1C4F026C8();
  (*(v26 + 32))(v37 + v17[5], v10, v3);
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  v38 = 2;
  sub_1C443D0B4(&qword_1EDDFEA58);
  v31[1] = 0;
  sub_1C4F026C8();
  v29 = v37;
  *(v37 + v17[6]) = v39;
  sub_1C456902C(&qword_1EC0C2B08, &qword_1C4F4CF80);
  v38 = 3;
  sub_1C4AADDFC(&unk_1EC0C2B28);
  sub_1C4F026C8();
  (*(v25 + 8))(v35, v36);
  *(v29 + v17[7]) = v39;
  sub_1C4AADEC4(v29, v32);
  sub_1C440962C(a1);
  return sub_1C4AADF28(v29);
}

unint64_t sub_1C4AADDB8(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C4AADDFC(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    v4 = v3;
    sub_1C4572308(&qword_1EC0C2B08, &qword_1C4F4CF80);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C4AADE70()
{
  result = qword_1EC0C2B30;
  if (!qword_1EC0C2B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2B30);
  }

  return result;
}

uint64_t sub_1C4AADEC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetPersonMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4AADF28(uint64_t a1)
{
  v2 = type metadata accessor for AssetPersonMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4AADF84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496E6F73726570 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E6E6F73726570 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x67416E6F73726570 && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C4AAE0A4(char a1)
{
  if (!a1)
  {
    return 0x64496E6F73726570;
  }

  if (a1 == 1)
  {
    return 0x614E6E6F73726570;
  }

  return 0x67416E6F73726570;
}

uint64_t sub_1C4AAE13C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4AADF84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4AAE164(uint64_t a1)
{
  v2 = sub_1C4AAE3B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4AAE1A0(uint64_t a1)
{
  v2 = sub_1C4AAE3B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetPerson.encode(to:)(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0C2B38, &qword_1C4F4CF90);
  sub_1C43FCDF8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v22 = v1[3];
  v23 = v13;
  LODWORD(v13) = *(v1 + 16);
  v20 = *(v1 + 34);
  v21 = v13;
  v14 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4AAE3B8();
  sub_1C4F02BF8();
  v29 = 0;
  v15 = v24;
  sub_1C4F02798();
  if (!v15)
  {
    v17 = v20;
    v16 = v21;
    v28 = 1;
    sub_1C4F02738();
    v25 = v16;
    v26 = v17;
    v27 = 2;
    type metadata accessor for PHPersonAgeType(0);
    sub_1C4407864();
    sub_1C4AADDB8(v18);
    sub_1C44200DC();
    sub_1C4F02778();
  }

  return (*(v5 + 8))(v10, v3);
}

unint64_t sub_1C4AAE3B8()
{
  result = qword_1EC0C2B40;
  if (!qword_1EC0C2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2B40);
  }

  return result;
}

uint64_t AssetPerson.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0C2B48, &qword_1C4F4CF98);
  sub_1C43FCDF8(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4AAE3B8();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v10 = sub_1C4F02678();
  v19 = v11;
  v17 = sub_1C4F02618();
  v18 = v12;
  type metadata accessor for PHPersonAgeType(0);
  sub_1C4407864();
  sub_1C4AADDB8(v13);
  sub_1C4F02658();
  v14 = sub_1C4402F74();
  v15(v14);
  *a2 = v10;
  *(a2 + 8) = v19;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  *(a2 + 32) = v20;
  *(a2 + 34) = v21;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440962C(a1);
}

uint64_t sub_1C4AAE6B4()
{
  sub_1C4EFFA98();
  if (v3)
  {
    sub_1C4461BB8(0, &qword_1EDDDB860, 0x1E6978630);
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C4423A0C(v2, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    return 0;
  }
}

uint64_t sub_1C4AAE744@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4AAE6B4();
  *a1 = result;
  return result;
}

uint64_t sub_1C4AAE76C(void *a1)
{
  v1 = a1;

  return sub_1C4EFFAB8();
}

void sub_1C4AAE7A4()
{
  v1 = *v0;
  sub_1C4AAE76C(*v0);
}

uint64_t sub_1C4AAE7F0(__int16 a1)
{
  switch(a1)
  {
    case 1:
      result = 2036490562;
      break;
    case 2:
      result = 0x646C696843;
      break;
    case 3:
      result = 0x756441676E756F59;
      break;
    case 4:
      result = 0x726F696E6553;
      break;
    case 5:
      result = 0x746C756441;
      break;
    default:
      result = 0x746553746F4ELL;
      break;
  }

  return result;
}

void sub_1C4AAE9D4()
{
  sub_1C4EF9CD8();
  if (v0 <= 0x3F)
  {
    sub_1C4AAEAA0(319, &qword_1EDDDBC20);
    if (v1 <= 0x3F)
    {
      sub_1C4AAEAA0(319, &qword_1EC0C2B50);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C4AAEAA0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C4F017A8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 sub_1C4AAEAEC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C4AAEB00(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 35))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1C4AAEB40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4AAEB98(uint64_t result)
{
  if (result - 1 >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

id sub_1C4AAEBAC(uint64_t a1)
{
  v2 = [objc_opt_self() fetchPersonWithFace:v1 options:a1];
  v3 = [v2 firstObject];

  return v3;
}

uint64_t sub_1C4AAEC18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v45 = a2;
  v5 = *(*(sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - v7;
  v9 = sub_1C4EF9CD8();
  v10 = sub_1C43FCDF8(v9);
  v49 = v11;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v43 - v17;
  sub_1C43FBDBC();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E7CC0];
  *(v18 + 16) = MEMORY[0x1E69E7CC0];
  v47 = v18 + 16;
  sub_1C43FBDBC();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v46 = v20 + 16;
  v21 = [objc_opt_self() fetchFacesInAsset:v3 options:a1];
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = v18;
  v22[4] = v20;
  aBlock[4] = sub_1C4AB152C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C4AAF5EC;
  aBlock[3] = &unk_1F43F8548;
  v23 = _Block_copy(aBlock);
  v24 = a1;

  [v21 enumerateObjectsUsingBlock_];
  _Block_release(v23);
  result = sub_1C45B4BF8(v3, &selRef_uuid);
  if (v26)
  {
    v27 = result;
    v28 = v26;
    v29 = [v3 creationDate];
    if (v29)
    {
      v30 = v29;
      sub_1C4EF9C78();

      v31 = v49;
      v44 = v20;
      v32 = v18;
      v33 = v28;
      v34 = v27;
      v35 = *(v49 + 32);
      v35(v8, v16, v9);
      sub_1C440BAA8(v8, 0, 1, v9);
      v36 = v48;
      v35(v48, v8, v9);
      v27 = v34;
      v28 = v33;
      v18 = v32;
      v20 = v44;
    }

    else
    {
      sub_1C440BAA8(v8, 1, 1, v9);
      v37 = v48;
      sub_1C4EF9B28();

      v36 = v37;
      v38 = sub_1C44157D4(v8, 1, v9);
      v31 = v49;
      if (v38 != 1)
      {
        sub_1C4423A0C(v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
      }
    }

    swift_beginAccess();
    v39 = *(v18 + 16);
    swift_beginAccess();
    v40 = *(v20 + 16);
    v41 = v45;
    *v45 = v27;
    *(v41 + 1) = v28;
    v42 = type metadata accessor for AssetPersonMetadata(0);
    (*(v31 + 32))(&v41[v42[5]], v36, v9);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    *&v41[v42[6]] = v39;
    *&v41[v42[7]] = v40;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C4AAF02C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = objc_autoreleasePoolPush();
  sub_1C4AAF0A4(a1, a4, (a5 + 16), (a6 + 16));

  objc_autoreleasePoolPop(v10);
}

void sub_1C4AAF0A4(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = sub_1C4AAEBAC(a2);
  if (!v7)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v17 = sub_1C4F00978();
    sub_1C442B738(v17, qword_1EDDFECB8);
    v18 = a1;
    v19 = sub_1C4F00968();
    v20 = sub_1C4F01CD8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v60[0] = v22;
      *v21 = 136315138;
      v23 = sub_1C45B4BF8(v18, &selRef_uuid);
      v25 = v24;

      if (!v25)
      {
LABEL_19:
        __break(1u);
        return;
      }

      v26 = sub_1C441D828(v23, v25, v60);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_1C43F8000, v19, v20, "PhotosMetadataFetcher: Could not fetch person for face: %s", v21, 0xCu);
      sub_1C440962C(v22);
      MEMORY[0x1C6942830](v22, -1, -1);
      MEMORY[0x1C6942830](v21, -1, -1);
    }

    else
    {
    }

    return;
  }

  v8 = v7;
  v9 = sub_1C45B4BF8(a1, &selRef_uuid);
  if (!v10)
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = v9;
  v12 = v10;
  swift_beginAccess();
  sub_1C4588BAC();
  v13 = *(*a3 + 16);
  sub_1C45897E8();
  v14 = *a3;
  *(v14 + 16) = v13 + 1;
  v15 = v14 + 16 * v13;
  *(v15 + 32) = v11;
  *(v15 + 40) = v12;
  swift_endAccess();
  if ([v8 ageType])
  {
    v16 = [v8 ageType];
  }

  else
  {
    v16 = sub_1C4AAEB98([a1 ageType]);
  }

  v59 = v16;
  v27 = [v8 localIdentifier];
  v28 = sub_1C4F01138();
  v30 = v29;

  v31 = sub_1C45B4BF8(v8, &selRef_name);
  v33 = v32;
  swift_beginAccess();
  sub_1C458959C();
  v34 = *(*a4 + 16);
  sub_1C458A124();
  v35 = *a4;
  *(v35 + 16) = v34 + 1;
  v36 = v35 + 40 * v34;
  *(v36 + 32) = v28;
  *(v36 + 40) = v30;
  *(v36 + 48) = v31;
  *(v36 + 56) = v33;
  *(v36 + 64) = v59;
  *(v36 + 66) = 0;
  swift_endAccess();
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v37 = sub_1C4F00978();
  sub_1C442B738(v37, qword_1EDDFECB8);
  v38 = v8;
  v39 = a1;
  v40 = sub_1C4F00968();
  v41 = sub_1C4F01CC8();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v61 = v43;
    *v42 = 136315906;
    v44 = [v38 localIdentifier];
    v45 = sub_1C4F01138();
    v47 = v46;

    v48 = sub_1C441D828(v45, v47, &v61);

    *(v42 + 4) = v48;
    *(v42 + 12) = 2080;
    v60[0] = sub_1C45B4BF8(v38, &selRef_name);
    v60[1] = v49;
    sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
    v50 = sub_1C4F01198();
    v52 = sub_1C441D828(v50, v51, &v61);

    *(v42 + 14) = v52;
    *(v42 + 22) = 2080;
    [v38 ageType];
    type metadata accessor for PHPersonAgeType(0);
    v53 = sub_1C4F01198();
    v55 = sub_1C441D828(v53, v54, &v61);

    *(v42 + 24) = v55;
    *(v42 + 32) = 2080;
    LOWORD(v60[0]) = [v39 ageType];
    type metadata accessor for PHFaceAgeType(0);
    v56 = sub_1C4F01198();
    v58 = sub_1C441D828(v56, v57, &v61);

    *(v42 + 34) = v58;
    _os_log_impl(&dword_1C43F8000, v40, v41, "PhotosMetadataFetcher: PersonID: %s, Person name: %s, PersonAgeType: %s, FaceAgeType: %s", v42, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v43, -1, -1);
    MEMORY[0x1C6942830](v42, -1, -1);
  }

  else
  {
  }
}

void sub_1C4AAF5EC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1C4AAF670(void *a1@<X8>)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C4AAF6CC(v1, a1);

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_1C4AAF6CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v58 = a2;
  v4 = sub_1C4F00978();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v53[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v53[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v53[-v14];
  v16 = sub_1C4AB1538(a1);
  if (v16)
  {
    v17 = v16;
    v18 = [a1 localIdentifier];
    v19 = sub_1C4F01138();
    v21 = v20;

    v22 = [a1 creationDate];
    if (v22)
    {
      v23 = v22;
      sub_1C4EF9C78();

      v24 = sub_1C4EF9CD8();
      v25 = 0;
    }

    else
    {
      v24 = sub_1C4EF9CD8();
      v25 = 1;
    }

    sub_1C440BAA8(v15, v25, 1, v24);
    v45 = sub_1C4618B1C(v17);

    v46 = v58;
    v47 = v19;
    v48 = v21;
    v49 = v15;
    v50 = v45;
  }

  else
  {
    sub_1C4F00198();
    v26 = a1;
    v27 = sub_1C4F00968();
    v28 = sub_1C4F01CF8();

    v29 = os_log_type_enabled(v27, v28);
    v57 = v2;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v59 = v55;
      *v30 = 136315138;
      v31 = [v26 localIdentifier];
      v32 = sub_1C4F01138();
      v54 = v28;
      v33 = v32;
      v56 = v26;
      v35 = v34;

      v36 = sub_1C441D828(v33, v35, &v59);
      v26 = v56;

      *(v30 + 4) = v36;
      _os_log_impl(&dword_1C43F8000, v27, v54, "Couldn't fetch sceneClassifications from asset with ID: %s", v30, 0xCu);
      v37 = v55;
      sub_1C440962C(v55);
      MEMORY[0x1C6942830](v37, -1, -1);
      MEMORY[0x1C6942830](v30, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v38 = [v26 localIdentifier];
    v39 = sub_1C4F01138();
    v41 = v40;

    v42 = [v26 creationDate];
    if (v42)
    {
      v43 = v42;
      sub_1C4EF9C78();

      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    v51 = sub_1C4EF9CD8();
    sub_1C440BAA8(v13, v44, 1, v51);
    v50 = MEMORY[0x1E69E7CC0];
    v46 = v58;
    v47 = v39;
    v48 = v41;
    v49 = v13;
  }

  return sub_1C4AB34A0(v47, v48, v49, v50, v46);
}

id sub_1C4AAFA98(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, char a7)
{
  v27 = objc_autoreleasePoolPush();
  v10 = [a5 librarySpecificFetchOptions];
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C4F0FCC0;
  v12 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v11 + 32) = sub_1C4D29970(0x6E6F697461657263, 0xEC00000065746144, (a4 & 1) == 0);
  sub_1C4AB15E8(v11, v10);
  sub_1C4461BB8(0, &qword_1EDDF05A0, 0x1E696AE18);
  sub_1C456902C(&qword_1EC0B8400, &unk_1C4F175E0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C4F0CE60;
  v14 = sub_1C4EF9BF8();
  v15 = sub_1C4461BB8(0, &unk_1EDDDB878, 0x1E695DF00);
  *(v13 + 56) = v15;
  v16 = sub_1C4AB166C(&unk_1EDDDB870);
  *(v13 + 64) = v16;
  *(v13 + 32) = v14;
  v17 = sub_1C4EF9BF8();
  *(v13 + 96) = v15;
  *(v13 + 104) = v16;
  *(v13 + 72) = v17;
  v18 = sub_1C4F01C58();
  [v10 setPredicate_];

  [v10 setFetchLimit_];
  [v10 setExcludeScreenshotAssets_];
  v19 = objc_opt_self();
  v20 = v10;
  v21 = [v19 fetchAssetsWithOptions_];
  if (a7)
  {
    v22 = v20;
  }

  else
  {
    v23 = [v19 fetchAssetsWithMediaType:a6 options:v20];

    v22 = v21;
    v21 = v23;
  }

  objc_autoreleasePoolPop(v27);
  return v21;
}

uint64_t sub_1C4AAFD4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v10 = sub_1C4EF98F8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  sub_1C4461BB8(0, &qword_1EDDFCE78, 0x1E69789A8);
  v15 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1C4EF98C8();

  v16 = sub_1C44B90E0(v14);
  v17 = [v16 librarySpecificFetchOptions];
  [v17 setMinimumVerifiedFaceCount_];
  [v17 setMinimumUnverifiedFaceCount_];
  [v17 setIncludeTorsoAndFaceDetectionData_];
  v18 = sub_1C4AAFA98(a1, a2, a3, a4, v16, 0, 1);

  sub_1C43FBDBC();
  result = swift_allocObject();
  *(result + 16) = v17;
  *a5 = v18;
  a5[1] = sub_1C4AB1524;
  a5[2] = result;
  return result;
}

void sub_1C4AAFEFC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v11 = objc_autoreleasePoolPush();
  sub_1C4AAFFB4(a1, a2, a3, a4, &v13, &v14);
  objc_autoreleasePoolPop(v11);
  if (!v5)
  {
    v12 = v15;
    *a5 = v14;
    *(a5 + 16) = v12;
  }
}

uint64_t sub_1C4AAFFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, int a4@<W4>, uint64_t *a5@<X5>, void *a6@<X8>)
{
  v120 = a5;
  v118 = a4;
  v119 = a3;
  v133 = a2;
  v136 = a1;
  v117 = a6;
  v6 = sub_1C4EF9F68();
  v125 = *(v6 - 8);
  v126 = v6;
  v7 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v124 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1C4EF9EB8();
  v129 = *(v132 - 8);
  v9 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C4EF9ED8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C4EF9E88();
  v17 = *(v16 - 8);
  v18 = v17;
  v127 = v16;
  v128 = v17;
  v19 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v137 = (&v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v114 - v26;
  v130 = sub_1C4EF9CD8();
  v141 = *(v130 - 8);
  v28 = *(v141 + 64);
  v29 = MEMORY[0x1EEE9AC00](v130);
  v116 = &v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v115 = &v114 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v121 = &v114 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v114 = &v114 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v134 = &v114 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v135 = &v114 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v139 = (&v114 - v42);
  MEMORY[0x1EEE9AC00](v41);
  v138 = &v114 - v43;
  v44 = sub_1C4EF9F88();
  v122 = *(v44 - 8);
  v123 = v44;
  v45 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v114 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EF9F58();
  sub_1C4EF9C88();
  (*(v18 + 104))(v21, *MEMORY[0x1E69698D0], v16);
  v48 = v15;
  v49 = v11;
  (*(v12 + 104))(v15, *MEMORY[0x1E69699C8], v11);
  v50 = v129;
  v52 = v131;
  v51 = v132;
  (*(v129 + 104))(v131, *MEMORY[0x1E6969998], v132);
  v140 = v47;
  sub_1C4EF9EF8();
  v53 = v51;
  v54 = v130;
  (*(v50 + 8))(v52, v53);
  (*(v12 + 8))(v48, v49);
  v55 = v21;
  v56 = v141;
  (*(v128 + 8))(v55, v127);
  v57 = *(v56 + 8);
  v132 = v56 + 8;
  v57(v139, v54);
  result = sub_1C44157D4(v27, 1, v54);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_19;
  }

  v139 = v57;
  v59 = *(v56 + 32);
  v60 = v138;
  v59(v138, v27, v54);
  v61 = v124;
  v62 = v125;
  v63 = v126;
  (*(v125 + 104))(v124, *MEMORY[0x1E6969A48], v126);
  v64 = v137;
  sub_1C4EF9F28();
  (*(v62 + 8))(v61, v63);
  result = sub_1C44157D4(v64, 1, v54);
  if (result == 1)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v65 = v60;
  v66 = v135;
  v59(v135, v137, v54);
  v67 = *(v141 + 16);
  v68 = v134;
  v141 += 16;
  (v67)(v134, v136, v54);
  v69 = sub_1C4EF9C18();
  v70 = v133;
  if (v69)
  {
    v137 = v67;
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v71 = sub_1C4F00978();
    sub_1C442B738(v71, qword_1EDDFECB8);
    v72 = v114;
    v73 = v137;
    (v137)(v114, v136, v54);
    (v73)(v121, v66, v54);
    v74 = sub_1C4F00968();
    v75 = sub_1C4F01CD8();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v142 = v131;
      *v76 = 136315394;
      sub_1C4AADDB8(&qword_1EDDFCD50);
      LODWORD(v129) = v75;
      v77 = sub_1C4F02858();
      v79 = v78;
      v139(v72, v54);
      v80 = sub_1C441D828(v77, v79, &v142);
      v65 = v138;
      v70 = v133;

      *(v76 + 4) = v80;
      *(v76 + 12) = 2080;
      v81 = v121;
      v82 = sub_1C4F02858();
      v84 = v83;
      v85 = v81;
      v86 = v139;
      v139(v85, v54);
      v87 = sub_1C441D828(v82, v84, &v142);
      v66 = v135;

      *(v76 + 14) = v87;
      _os_log_impl(&dword_1C43F8000, v74, v129, "SupportedDate Range is 28 days. Resetting startDate: %s to %s", v76, 0x16u);
      v88 = v131;
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v88, -1, -1);
      v89 = v76;
      v68 = v134;
      MEMORY[0x1C6942830](v89, -1, -1);

      v86(v68, v54);
    }

    else
    {

      v90 = v139;
      v139(v121, v54);
      v90(v72, v54);
      v90(v68, v54);
      v65 = v138;
    }

    v67 = v137;
    (v137)(v68, v66, v54);
  }

  v91 = sub_1C4EF9C18();
  v92 = v140;
  if (v91)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v93 = sub_1C4F00978();
    sub_1C442B738(v93, qword_1EDDFECB8);
    v94 = v115;
    (v67)(v115, v70, v54);
    v95 = v116;
    (v67)(v116, v136, v54);
    v96 = sub_1C4F00968();
    v97 = sub_1C4F01CD8();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v142 = v141;
      *v98 = 136315394;
      sub_1C4AADDB8(&qword_1EDDFCD50);
      v137 = v96;
      v99 = sub_1C4F02858();
      v101 = v100;
      LODWORD(v136) = v97;
      v102 = v139;
      v139(v94, v54);
      v103 = sub_1C441D828(v99, v101, &v142);
      v104 = v138;

      *(v98 + 4) = v103;
      *(v98 + 12) = 2080;
      v105 = sub_1C4F02858();
      v107 = v106;
      v102(v95, v54);
      v108 = sub_1C441D828(v105, v107, &v142);
      v66 = v135;

      *(v98 + 14) = v108;
      v109 = v137;
      _os_log_impl(&dword_1C43F8000, v137, v136, "endDate: %s cannot be before startDate %s", v98, 0x16u);
      v110 = v141;
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v110, -1, -1);
      v111 = v98;
      v68 = v134;
      MEMORY[0x1C6942830](v111, -1, -1);
    }

    else
    {

      v102 = v139;
      v139(v95, v54);
      v102(v94, v54);
      v104 = v138;
    }

    sub_1C4AB14D0();
    v113 = swift_allocError();
    swift_willThrow();
    v102(v68, v54);
    v102(v66, v54);
    v102(v104, v54);
    result = (*(v122 + 8))(v140, v123);
    *v120 = v113;
  }

  else
  {
    sub_1C4AAFD4C(v68, v70, v119, v118 & 1, v117);
    v112 = v139;
    v139(v68, v54);
    v112(v66, v54);
    v112(v65, v54);
    return (*(v122 + 8))(v92, v123);
  }

  return result;
}

double sub_1C4AB0D2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  sub_1C4AAFEFC(a1, a2, a3, a4, &v9);
  if (!v5)
  {
    v8 = v10;
    result = *&v9;
    *a5 = v9;
    *(a5 + 16) = v8;
    *(a5 + 24) = sub_1C4AB0D84;
    *(a5 + 32) = 0;
  }

  return result;
}

void sub_1C4AB0D84(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for AssetPersonMetadata(0) + 28));
  v11[2] = a1;
  sub_1C45DB3C8(sub_1C4AB16AC, v11, v4, v5, v6, v7, v8, v9, v11[0], v11[1]);
  *a2 = v10;
}

uint64_t sub_1C4AB0DF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v9 = *(a1 + 16);
  v10 = *(a1 + 34);
  v11 = *(type metadata accessor for AssetPersonMetadata(0) + 20);
  v12 = sub_1C4EF9CD8();
  (*(*(v12 - 8) + 16))(a3, a2 + v11, v12);
  v13 = type metadata accessor for PhotosPersonObservation(0);
  v14 = (a3 + v13[5]);
  *v14 = v6;
  v14[1] = v5;
  v15 = (a3 + v13[6]);
  *v15 = v8;
  v15[1] = v7;
  v16 = a3 + v13[7];
  *v16 = v9;
  *(v16 + 2) = v10;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4AB0ED4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C4EF98F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C4461BB8(0, &qword_1EDDFCE78, 0x1E69789A8);
  v9 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1C4EF98C8();

  v10 = sub_1C44B90E0(v8);
  v11 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v12 = sub_1C4AAFA98(a1, a1 + *(v11 + 36), 0, 0, v10, 1, 0);
  a2[3] = sub_1C456902C(&qword_1EC0C2B98, &unk_1C4F4D480);
  a2[4] = sub_1C4AB180C(&unk_1EC0C2BA0);

  *a2 = v12;
  a2[1] = sub_1C4AB1048;
  a2[2] = 0;
}

_BYTE *storeEnumTagSinglePayload for AssetPerson.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetPersonMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4AB12C4()
{
  result = qword_1EC0C2B58;
  if (!qword_1EC0C2B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2B58);
  }

  return result;
}

unint64_t sub_1C4AB131C()
{
  result = qword_1EC0C2B60;
  if (!qword_1EC0C2B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2B60);
  }

  return result;
}

unint64_t sub_1C4AB1374()
{
  result = qword_1EC0C2B68;
  if (!qword_1EC0C2B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2B68);
  }

  return result;
}

unint64_t sub_1C4AB13CC()
{
  result = qword_1EC0C2B70;
  if (!qword_1EC0C2B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2B70);
  }

  return result;
}

unint64_t sub_1C4AB1424()
{
  result = qword_1EC0C2B78;
  if (!qword_1EC0C2B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2B78);
  }

  return result;
}

unint64_t sub_1C4AB147C()
{
  result = qword_1EC0C2B80;
  if (!qword_1EC0C2B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2B80);
  }

  return result;
}

unint64_t sub_1C4AB14D0()
{
  result = qword_1EC0C2B88;
  if (!qword_1EC0C2B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2B88);
  }

  return result;
}

uint64_t sub_1C4AB1538(void *a1)
{
  v1 = [a1 sceneClassifications];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C4461BB8(0, &qword_1EC0B9E18, 0x1E6978A38);
  sub_1C4AB166C(&unk_1EC0B9E20);
  v3 = sub_1C4F01AB8();

  return v3;
}

void sub_1C4AB15E8(uint64_t a1, void *a2)
{
  sub_1C4461BB8(0, &unk_1EDDF0458, 0x1E696AEB0);
  v3 = sub_1C4F01658();

  [a2 setSortDescriptors_];
}

unint64_t sub_1C4AB166C(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    sub_1C4461BB8(255, v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosMetadataFetcher.PhotosMetadataFetcherError(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C4AB17A0()
{
  result = sub_1C4EFFAA8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C4AB180C(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    sub_1C4572308(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C4AB1854()
{
  result = qword_1EC0C2BB0;
  if (!qword_1EC0C2BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2BB0);
  }

  return result;
}

uint64_t sub_1C4AB18E0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  type metadata accessor for PhotosMetadataFetcher();
  swift_initStackObject();
  sub_1C4AB0D2C(a1, a2, a3, a4, &v11);
  v10 = v11;
  v12 = sub_1C4AB2CD0;
  v13 = 0;
  sub_1C456902C(&qword_1EC0C2C50, &unk_1C4F4D770);
  sub_1C4AB3340();
  v8 = sub_1C4F014B8();

  return v8;
}

uint64_t PhotosPersonObservation.description.getter()
{
  sub_1C4F02248();
  MEMORY[0x1C6940010](60, 0xE100000000000000);
  v1 = type metadata accessor for PhotosPersonObservation(0);
  sub_1C456902C(&unk_1EC0C2BC0, &unk_1C4F4D590);
  v2 = sub_1C4F01198();
  MEMORY[0x1C6940010](v2);

  MEMORY[0x1C6940010](0x617473656D697420, 0xEC000000203A706DLL);
  sub_1C4EF9CD8();
  sub_1C441A2DC();
  sub_1C4AB2E54(v3, v4);
  v5 = sub_1C4F02858();
  MEMORY[0x1C6940010](v5);

  MEMORY[0x1C6940010](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x1C6940010](*(v0 + v1[5]), *(v0 + v1[5] + 8));
  MEMORY[0x1C6940010](0x203A656D616E202CLL, 0xE800000000000000);
  v6 = (v0 + v1[6]);
  v11 = *v6;
  v12 = v6[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
  v7 = sub_1C4F01198();
  MEMORY[0x1C6940010](v7);

  MEMORY[0x1C6940010](0x76726573626F202CLL, 0xEF203A6567416465);
  v8 = v0 + v1[7];
  if ((*(v8 + 2) & 1) == 0)
  {
    sub_1C4AAE7F0(*v8);
  }

  v9 = sub_1C4F01198();
  MEMORY[0x1C6940010](v9);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C4AB1D54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 6645601 && a2 == 0xE300000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C4F02938();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C4AB1EBC(char a1)
{
  result = 0x6D617473656D6974;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 6645601;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4AB1F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4AB1D54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4AB1F68(uint64_t a1)
{
  v2 = sub_1C4AB2E00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4AB1FA4(uint64_t a1)
{
  v2 = sub_1C4AB2E00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PhotosPersonObservation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C2BD8, &qword_1C4F4D5A0);
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v28[-v11];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4AB2E00();
  sub_1C4F02BF8();
  v33 = 0;
  sub_1C4EF9CD8();
  sub_1C441A2DC();
  sub_1C4AB2E54(v14, v15);
  sub_1C4402150();
  sub_1C4F027E8();
  if (!v2)
  {
    v16 = type metadata accessor for PhotosPersonObservation(0);
    v17 = (v3 + v16[5]);
    v18 = *v17;
    v19 = v17[1];
    v32 = 1;
    sub_1C4402150();
    sub_1C4F02798();
    v20 = (v3 + v16[6]);
    v21 = *v20;
    v22 = v20[1];
    v31 = 2;
    sub_1C4402150();
    sub_1C4F02738();
    v23 = (v3 + v16[7]);
    v24 = *v23;
    LOBYTE(v23) = *(v23 + 2);
    v29 = v24;
    v30 = v23;
    v28[9] = 3;
    type metadata accessor for PHPersonAgeType(0);
    sub_1C442D1B8();
    sub_1C4AB2E54(v25, v26);
    sub_1C4402150();
    sub_1C4F02778();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t PhotosPersonObservation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v5 = sub_1C4EF9CD8();
  v6 = sub_1C43FCDF8(v5);
  v39 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&qword_1EC0C2BF8, &unk_1C4F4D5A8);
  v12 = sub_1C43FCDF8(v11);
  v41 = v13;
  v42 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = sub_1C4413644();
  v17 = type metadata accessor for PhotosPersonObservation(v16);
  v18 = *(*(v17 - 1) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4AB2E00();
  v43 = v3;
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v22 = v39;
  v49 = 0;
  sub_1C441A2DC();
  sub_1C4AB2E54(v23, v24);
  v25 = v40;
  sub_1C4F026C8();
  (*(v22 + 32))(v20, v25, v5);
  v48 = 1;
  v26 = sub_1C4F02678();
  v27 = &v20[v17[5]];
  *v27 = v26;
  v27[1] = v28;
  v47 = 2;
  v40 = 0;
  v29 = sub_1C4F02618();
  v30 = v41;
  v31 = &v20[v17[6]];
  *v31 = v29;
  v31[1] = v32;
  type metadata accessor for PHPersonAgeType(0);
  v44 = 3;
  sub_1C442D1B8();
  sub_1C4AB2E54(v33, v34);
  sub_1C4F02658();
  (*(v30 + 8))(v43, v42);
  v35 = v46;
  v36 = &v20[v17[7]];
  *v36 = v45;
  v36[2] = v35;
  sub_1C4AAA39C(v20, v38);
  sub_1C440962C(a1);
  return sub_1C4AAA400(v20);
}

id static PhotosPersonEvent.event(with:dataVersion:)(uint64_t a1, uint64_t a2, int a3)
{
  v5 = v3;
  v7 = sub_1C456902C(&qword_1EC0C2C00, &qword_1C4F3DA10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1C4413644();
  v10 = type metadata accessor for PhotosPersonObservation(v9);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - v15;
  if (a3 == 1)
  {
    v17 = sub_1C4EF96B8();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_1C4EF96A8();
    v20 = objc_autoreleasePoolPush();
    sub_1C44200EC();
    sub_1C4AB2E54(v21, v22);
    sub_1C4EF9698();
    sub_1C440BAA8(v4, 0, 1, v10);
    objc_autoreleasePoolPop(v20);
    v27 = sub_1C44157D4(v4, 1, v10);
    if (v27 != 1)
    {
      sub_1C4AB2F04(v4, v16);
      sub_1C4AAA39C(v16, v14);
      v33 = objc_allocWithZone(v3);
      sub_1C4AAA39C(v14, v33 + OBJC_IVAR____TtC24IntelligencePlatformCore17PhotosPersonEvent_photosPerson);
      v36.receiver = v33;
      v36.super_class = v5;
      v32 = objc_msgSendSuper2(&v36, sel_init);
      sub_1C4AAA400(v14);

      sub_1C4AAA400(v16);
      return v32;
    }

    sub_1C4AB2E9C(v4);
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v28 = sub_1C4F00978();
    sub_1C442B738(v28, qword_1EDDFECB8);
    v29 = sub_1C4F00968();
    v30 = sub_1C4F01CD8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1C43F8000, v29, v30, "PhotosPersonEvent: Decoding failed", v31, 2u);
      sub_1C43FBE2C();
    }
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v23 = sub_1C4F00978();
    sub_1C442B738(v23, qword_1EDDFECB8);
    v24 = sub_1C4F00968();
    v25 = sub_1C4F01CD8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 67109120;
      *(v26 + 4) = a3;
      _os_log_impl(&dword_1C43F8000, v24, v25, "PhotosPersonEvent: dataVersion = %u not supported", v26, 8u);
      sub_1C43FBE2C();
    }
  }

  return 0;
}

uint64_t PhotosPersonEvent.serialize()()
{
  v0 = sub_1C4EF96F8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1C4EF96E8();
  sub_1C4EF96C8();
  v3 = objc_autoreleasePoolPush();
  type metadata accessor for PhotosPersonObservation(0);
  sub_1C44200EC();
  sub_1C4AB2E54(v4, v5);
  v6 = sub_1C4EF96D8();
  objc_autoreleasePoolPop(v3);

  return v6;
}

id PhotosPersonEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosPersonEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C4AB2CD0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for PhotosPersonObservation(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4AAA39C(a1, v7);
  v8 = type metadata accessor for PhotosPersonEvent(0);
  v9 = objc_allocWithZone(v8);
  sub_1C4AAA39C(v7, v9 + OBJC_IVAR____TtC24IntelligencePlatformCore17PhotosPersonEvent_photosPerson);
  v13.receiver = v9;
  v13.super_class = v8;
  v10 = objc_msgSendSuper2(&v13, sel_init);
  sub_1C4AAA400(v7);
  sub_1C4EF9AD8();
  v12 = [objc_allocWithZone(MEMORY[0x1E698F138]) initWithEventBody:v10 timestamp:v11];

  *a2 = v12;
}

unint64_t sub_1C4AB2E00()
{
  result = qword_1EC0C2BE0;
  if (!qword_1EC0C2BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2BE0);
  }

  return result;
}

uint64_t sub_1C4AB2E54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4AB2E9C(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C2C00, &qword_1C4F3DA10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4AB2F04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosPersonObservation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C4AB2F90()
{
  sub_1C4EF9CD8();
  if (v0 <= 0x3F)
  {
    sub_1C4700EB8();
    if (v1 <= 0x3F)
    {
      sub_1C4AB3034();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C4AB3034()
{
  if (!qword_1EC0C2C18)
  {
    type metadata accessor for PHPersonAgeType(255);
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0C2C18);
    }
  }
}

uint64_t sub_1C4AB30B4()
{
  result = type metadata accessor for PhotosPersonObservation(319);
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

_BYTE *storeEnumTagSinglePayload for PhotosPersonObservation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4AB323C()
{
  result = qword_1EC0C2C38;
  if (!qword_1EC0C2C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2C38);
  }

  return result;
}

unint64_t sub_1C4AB3294()
{
  result = qword_1EC0C2C40;
  if (!qword_1EC0C2C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2C40);
  }

  return result;
}

unint64_t sub_1C4AB32EC()
{
  result = qword_1EC0C2C48;
  if (!qword_1EC0C2C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2C48);
  }

  return result;
}

unint64_t sub_1C4AB3340()
{
  result = qword_1EC0C2C58;
  if (!qword_1EC0C2C58)
  {
    sub_1C4572308(&qword_1EC0C2C50, &unk_1C4F4D770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2C58);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosPrivacyChecker(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C4AB34A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v48 = sub_1C4F00978();
  v10 = sub_1C43FCDF8(v48);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = [objc_allocWithZone(MEMORY[0x1E69C0850]) initWithLatestTaxonomy];
  result = sub_1C4428DA0();
  v45 = a2;
  v46 = a5;
  v44 = a1;
  if (!result)
  {

    v22 = MEMORY[0x1E69E7CC0];
LABEL_23:
    *v46 = v44;
    v46[1] = v45;
    v42 = type metadata accessor for PhotosSceneTagsContent();
    *(v46 + *(v42 + 24)) = v22;
    return sub_1C45B69E4(a3, v46 + *(v42 + 20));
  }

  v20 = result;
  if (result >= 1)
  {
    v43 = a3;
    v21 = 0;
    v51 = a4 & 0xC000000000000001;
    v47 = (v12 + 8);
    v22 = MEMORY[0x1E69E7CC0];
    v49 = result;
    v50 = a4;
    do
    {
      if (v51)
      {
        v23 = MEMORY[0x1C6940F90](v21, a4);
      }

      else
      {
        v23 = *(a4 + 8 * v21 + 32);
      }

      v24 = v23;
      if ([v18 nodeRefForSceneClassId_])
      {
        v25 = PFSceneTaxonomyNodeLocalizedLabel();
        if (v25)
        {
          v26 = v25;
          v27 = sub_1C4F01138();
          v29 = v28;
        }

        else
        {
          v27 = 0;
          v29 = 0;
        }

        v34 = [v24 sceneIdentifier];
        [v24 confidence];
        v36 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = *(v22 + 16);
          sub_1C458EED0();
          v22 = v40;
        }

        v37 = *(v22 + 16);
        if (v37 >= *(v22 + 24) >> 1)
        {
          sub_1C458EED0();
          v22 = v41;
        }

        *(v22 + 16) = v37 + 1;
        v38 = (v22 + 32 * v37);
        v38[4] = v27;
        v38[5] = v29;
        v38[6] = v34;
        v38[7] = v36;
        v20 = v49;
        a4 = v50;
      }

      else
      {
        sub_1C4F00198();
        v30 = v24;
        v31 = sub_1C4F00968();
        v32 = sub_1C4F01CF8();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 67109120;
          *(v33 + 4) = [v30 sceneIdentifier];

          _os_log_impl(&dword_1C43F8000, v31, v32, "Couldn't get sceneNode for %u", v33, 8u);
          MEMORY[0x1C6942830](v33, -1, -1);
        }

        else
        {

          v31 = v30;
        }

        (*v47)(v17, v48);
      }

      ++v21;
    }

    while (v20 != v21);

    a3 = v43;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

BOOL static SceneTag.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (!v3)
  {
    if (v6)
    {
      v12 = 0;
    }

    else
    {
      v12 = v4 == v7;
    }

    if (v12)
    {
      return v5 == v8;
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v6)
  {
    if (v4 == v7)
    {
      return v5 == v8;
    }

    return 0;
  }

  v10 = sub_1C4F02938();
  result = 0;
  if ((v10 & 1) != 0 && v4 == v7)
  {
    return v5 == v8;
  }

  return result;
}

uint64_t sub_1C4AB38B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4FAFAC0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C4AB39DC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x696669746E656469;
  }

  return 0x6E656469666E6F63;
}

uint64_t sub_1C4AB3A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4AB38B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4AB3A84(uint64_t a1)
{
  v2 = sub_1C4AB3C94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4AB3AC0(uint64_t a1)
{
  v2 = sub_1C4AB3C94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SceneTag.encode(to:)(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0C2C60, &qword_1C4F4D7A0);
  sub_1C43FCDF8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - v9;
  v11 = *v1;
  v12 = v1[1];
  v17[1] = v1[2];
  v13 = v1[3];
  v14 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4AB3C94();
  sub_1C4F02BF8();
  v20 = 0;
  v15 = v17[2];
  sub_1C4F02738();
  if (!v15)
  {
    v19 = 1;
    sub_1C43FBF44();
    sub_1C4F027D8();
    v18 = 2;
    sub_1C43FBF44();
    sub_1C4F027B8();
  }

  return (*(v5 + 8))(v10, v3);
}

unint64_t sub_1C4AB3C94()
{
  result = qword_1EC0C2C68;
  if (!qword_1EC0C2C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2C68);
  }

  return result;
}

uint64_t SceneTag.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0C2C70, &qword_1C4F4D7A8);
  sub_1C43FCDF8(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4AB3C94();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  sub_1C440B100();
  v10 = sub_1C4F02618();
  v12 = v11;
  sub_1C440B100();
  v18 = sub_1C4F026B8();
  sub_1C440B100();
  sub_1C4F02698();
  v14 = v13;
  v15 = sub_1C4408A58();
  v16(v15);
  *a2 = v10;
  a2[1] = v12;
  a2[2] = v18;
  a2[3] = v14;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440962C(a1);
}

uint64_t static PhotosSceneTagsContent.== infix(_:_:)(void *a1, void *a2)
{
  v4 = sub_1C4EF9CD8();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  v19 = sub_1C456902C(&qword_1EC0B9CE8, &qword_1C4F11650);
  sub_1C43FBCE0(v19);
  v21 = *(v20 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v34 - v23;
  v25 = *a1 == *a2 && a1[1] == a2[1];
  if (!v25 && (sub_1C4F02938() & 1) == 0)
  {
    goto LABEL_15;
  }

  v26 = type metadata accessor for PhotosSceneTagsContent();
  v27 = *(v26 + 20);
  v28 = *(v19 + 48);
  sub_1C4467FE0(a1 + v27, v24);
  sub_1C4467FE0(a2 + v27, &v24[v28]);
  sub_1C4406BE8(v24);
  if (v25)
  {
    sub_1C4406BE8(&v24[v28]);
    if (v25)
    {
      sub_1C4420C3C(v24, &unk_1EC0B84E0, qword_1C4F0D2D0);
LABEL_17:
      v30 = sub_1C47E6DCC(*(a1 + *(v26 + 24)), *(a2 + *(v26 + 24)));
      return v30 & 1;
    }

    goto LABEL_14;
  }

  sub_1C4467FE0(v24, v18);
  sub_1C4406BE8(&v24[v28]);
  if (v29)
  {
    (*(v7 + 8))(v18, v4);
LABEL_14:
    sub_1C4420C3C(v24, &qword_1EC0B9CE8, &qword_1C4F11650);
    goto LABEL_15;
  }

  (*(v7 + 32))(v12, &v24[v28], v4);
  sub_1C4498DE4(&qword_1EC0B9D00);
  v31 = sub_1C4F010B8();
  v32 = *(v7 + 8);
  v32(v12, v4);
  v32(v18, v4);
  sub_1C4420C3C(v24, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (v31)
  {
    goto LABEL_17;
  }

LABEL_15:
  v30 = 0;
  return v30 & 1;
}

uint64_t type metadata accessor for PhotosSceneTagsContent()
{
  result = qword_1EC0C2CB8;
  if (!qword_1EC0C2CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4AB41FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001C4FAFAE0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x676154656E656373 && a2 == 0xE900000000000073)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C4AB4320(char a1)
{
  if (!a1)
  {
    return 0xD000000000000014;
  }

  if (a1 == 1)
  {
    return 0x6E6F697461657263;
  }

  return 0x676154656E656373;
}

uint64_t sub_1C4AB4388(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4AB43DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4AB41FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4AB4404(uint64_t a1)
{
  v2 = sub_1C4AB4690();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4AB4440(uint64_t a1)
{
  v2 = sub_1C4AB4690();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PhotosSceneTagsContent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C2C78, &qword_1C4F4D7B0);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19[-v11];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4AB4690();
  sub_1C4F02BF8();
  v14 = *v3;
  v15 = v3[1];
  v22 = 0;
  sub_1C43FBF44();
  sub_1C4F02798();
  if (!v2)
  {
    v16 = type metadata accessor for PhotosSceneTagsContent();
    v17 = *(v16 + 20);
    v21 = 1;
    sub_1C4EF9CD8();
    sub_1C4498DE4(&qword_1EDDFCD80);
    sub_1C43FBF44();
    sub_1C4F02778();
    v20 = *(v3 + *(v16 + 24));
    v19[15] = 2;
    sub_1C456902C(&qword_1EC0C2C88, &qword_1C4F4D7B8);
    sub_1C4AB4A80(&qword_1EC0C2C90, sub_1C4AB46E4);
    sub_1C43FBF44();
    sub_1C4F027E8();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_1C4AB4690()
{
  result = qword_1EC0C2C80;
  if (!qword_1EC0C2C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2C80);
  }

  return result;
}

unint64_t sub_1C4AB46E4()
{
  result = qword_1EC0C2C98;
  if (!qword_1EC0C2C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2C98);
  }

  return result;
}

uint64_t PhotosSceneTagsContent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = sub_1C456902C(&qword_1EC0C2CA0, &qword_1C4F4D7C0);
  v11 = sub_1C43FCDF8(v10);
  v33 = v12;
  v34 = v11;
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  v16 = type metadata accessor for PhotosSceneTagsContent();
  v17 = sub_1C43FBCE0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v22 = (v21 - v20);
  v23 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4AB4690();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v38 = 0;
  *v22 = sub_1C4F02678();
  v22[1] = v24;
  v30 = v24;
  v31 = v22;
  sub_1C4EF9CD8();
  v37 = 1;
  sub_1C4498DE4(&unk_1EDDFCD60);
  sub_1C4417688();
  sub_1C4F02658();
  sub_1C45B69E4(v9, v31 + *(v16 + 20));
  sub_1C456902C(&qword_1EC0C2C88, &qword_1C4F4D7B8);
  v36 = 2;
  sub_1C4AB4A80(&qword_1EC0C2CA8, sub_1C4AB4AF8);
  sub_1C4417688();
  sub_1C4F026C8();
  v25 = sub_1C4420104();
  v26(v25);
  v28 = v31;
  v27 = v32;
  *(v31 + *(v16 + 24)) = v35;
  sub_1C4AB4B4C(v28, v27);
  sub_1C440962C(a1);
  return sub_1C4AB4BB0(v28);
}

uint64_t sub_1C4AB4A80(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C2C88, &qword_1C4F4D7B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4AB4AF8()
{
  result = qword_1EC0C2CB0;
  if (!qword_1EC0C2CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2CB0);
  }

  return result;
}

uint64_t sub_1C4AB4B4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSceneTagsContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4AB4BB0(uint64_t a1)
{
  v2 = type metadata accessor for PhotosSceneTagsContent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C4AB4C78()
{
  sub_1C45C2C2C();
  if (v0 <= 0x3F)
  {
    sub_1C4AB4D0C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C4AB4D0C()
{
  if (!qword_1EC0C2CC8)
  {
    v0 = sub_1C4F017A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0C2CC8);
    }
  }
}

_BYTE *sub_1C4AB4D6C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4AB4E5C()
{
  result = qword_1EC0C2CD0;
  if (!qword_1EC0C2CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2CD0);
  }

  return result;
}

uint64_t sub_1C4AB4ED4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = sub_1C4409678(v1, v3);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  (*(v8 + 16))(v7 - v6);
  *&v15 = swift_getAssociatedTypeWitness();
  *(&v15 + 1) = swift_getAssociatedConformanceWitness();
  sub_1C4422F90(v14);
  sub_1C4F01478();
  v13 = v15;
  v9 = v15;
  v10 = sub_1C4409678(v14, v15);
  *(a1 + 24) = v13;
  v11 = sub_1C4422F90(a1);
  (*(*(v9 - 8) + 16))(v11, v10, v9);
  return sub_1C440962C(v14);
}

uint64_t sub_1C4AB5060()
{
  sub_1C43FBCD4();
  v1[6] = v2;
  v1[7] = v0;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v6 = sub_1C4EF9CD8();
  v1[10] = v6;
  v7 = *(v6 - 8);
  v1[11] = v7;
  v8 = *(v7 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v9 = sub_1C456902C(&qword_1EC0C2D08, &qword_1C4F4DC48);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64) + 15;
  v1[14] = swift_task_alloc();
  v12 = type metadata accessor for PhotosSceneTagsContent();
  v1[15] = v12;
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64) + 15;
  v1[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AB51C8, 0, 0);
}

uint64_t sub_1C4AB51C8()
{
  v1 = v0[7];
  v2 = *(v1 + 32);
  sub_1C4418280(v1, *(v1 + 24));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1C4F01F48();
  sub_1C43FCDF8(v4);
  v6 = v5;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  sub_1C4F01FA8();
  v10 = sub_1C44157D4(v9, 1, AssociatedTypeWitness);
  v11 = v0[14];
  v12 = v0[15];
  if (v10 == 1)
  {
    (*(v6 + 8))(v9, v4);

    sub_1C440BAA8(v11, 1, 1, v12);
LABEL_5:
    sub_1C4420C3C(v0[14], &qword_1EC0C2D08, &qword_1C4F4DC48);
    v16 = sub_1C456902C(&qword_1EC0C00C0, qword_1C4F4DC50);
    v17 = 1;
    goto LABEL_15;
  }

  v0[5] = AssociatedTypeWitness;
  v13 = sub_1C4422F90(v0 + 2);
  (*(*(AssociatedTypeWitness - 8) + 32))(v13, v9, AssociatedTypeWitness);

  v14 = swift_dynamicCast();
  sub_1C440BAA8(v11, v14 ^ 1u, 1, v12);
  sub_1C4406BE8(v11);
  if (v15)
  {
    goto LABEL_5;
  }

  v19 = v0[15];
  v18 = v0[16];
  v21 = v0[9];
  v20 = v0[10];
  sub_1C4AB5968(v0[14], v18);
  v22 = *(v19 + 20);
  sub_1C4467FE0(v18 + v22, v21);
  if (sub_1C4403604() == 1)
  {
    v24 = v0[9];
    v23 = v0[10];
    v25 = v0[13];
    sub_1C4EF9AC8();
    if (sub_1C4403604() != 1)
    {
      sub_1C4420C3C(v0[9], &unk_1EC0B84E0, qword_1C4F0D2D0);
    }
  }

  else
  {
    (*(v0[11] + 32))(v0[13], v0[9], v0[10]);
  }

  v26 = v0[10];
  sub_1C4467FE0(v18 + v22, v0[8]);
  if (sub_1C4403604() == 1)
  {
    v27 = v0[10];
    v28 = v0[8];
    v29 = v0[12];
    sub_1C4EF9AC8();
    sub_1C4406BE8(v28);
    if (!v15)
    {
      sub_1C4420C3C(v0[8], &unk_1EC0B84E0, qword_1C4F0D2D0);
    }
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v0[8], v0[10]);
  }

  v30 = v0[16];
  v32 = v0[12];
  v31 = v0[13];
  v33 = v0[10];
  v34 = v0[11];
  v35 = v0[6];
  v16 = sub_1C456902C(&qword_1EC0C00C0, qword_1C4F4DC50);
  sub_1C4AB5968(v30, v35 + *(v16 + 32));
  v36 = *(v34 + 32);
  v36(v35, v31, v33);
  v36(v35 + *(v16 + 28), v32, v33);
  v17 = 0;
LABEL_15:
  v37 = v0[16];
  v39 = v0[13];
  v38 = v0[14];
  v40 = v0[12];
  v42 = v0[8];
  v41 = v0[9];
  sub_1C440BAA8(v0[6], v17, 1, v16);

  v43 = v0[1];

  return v43();
}

uint64_t sub_1C4AB55B0()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4A866DC;

  return sub_1C4AB5060();
}

uint64_t sub_1C4AB5644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1C4A86B48;

  return (sub_1C4982B74)(a1, a2, a3, v3 + 16);
}

uint64_t sub_1C4AB5710@<X0>(uint64_t a1@<X8>)
{
  sub_1C4AB4ED4(a1);

  return sub_1C4AB59CC(v1);
}

unint64_t sub_1C4AB5740()
{
  result = qword_1EC0C2CD8;
  if (!qword_1EC0C2CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2CD8);
  }

  return result;
}

unint64_t sub_1C4AB5798()
{
  result = qword_1EC0C2CE0;
  if (!qword_1EC0C2CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2CE0);
  }

  return result;
}

unint64_t sub_1C4AB580C()
{
  result = qword_1EC0C2CE8;
  if (!qword_1EC0C2CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2CE8);
  }

  return result;
}

unint64_t sub_1C4AB5864()
{
  result = qword_1EC0C2CF0;
  if (!qword_1EC0C2CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2CF0);
  }

  return result;
}

unint64_t sub_1C4AB58BC()
{
  result = qword_1EC0C2CF8;
  if (!qword_1EC0C2CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2CF8);
  }

  return result;
}

unint64_t sub_1C4AB5914()
{
  result = qword_1EC0C2D00;
  if (!qword_1EC0C2D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2D00);
  }

  return result;
}

uint64_t sub_1C4AB5968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSceneTagsContent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4AB5A0C()
{
  result = qword_1EC0C2D10;
  if (!qword_1EC0C2D10)
  {
    sub_1C4572308(&qword_1EC0BFE78, &unk_1C4F4DCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2D10);
  }

  return result;
}

uint64_t sub_1C4AB5A7C(uint64_t a1)
{
  sub_1C4AB5B80(a1, &v6);
  if (v7)
  {
    sub_1C4AB5BF0(a1);
    sub_1C441D670(&v6, &v8);
  }

  else
  {
    v3 = type metadata accessor for PhotosMetadataFetcher();
    v4 = swift_allocObject();
    v9 = v3;
    v10 = &off_1F43F8498;
    *&v8 = v4;
    sub_1C4AB5BF0(a1);
    if (v7)
    {
      sub_1C4AB5BF0(&v6);
    }
  }

  sub_1C441D670(&v8, v1 + 16);
  return v1;
}

uint64_t sub_1C4AB5B24()
{
  sub_1C440962C((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1C4AB5B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C2D18, &qword_1C4F4DCD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4AB5BF0(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C2D18, &qword_1C4F4DCD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4AB5C58(uint64_t a1)
{
  switch(a1)
  {
    case -1:
      return 0x6E6564646948;
    case 0:
      return 0x7972616E6964724FLL;
    case 1:
      return 0x6E6174726F706D49;
  }

  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t sub_1C4AB5D10(uint64_t a1, uint64_t a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = objc_opt_self();
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C4F0D130;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v7 = sub_1C4F01658();

  v8 = [v5 predicateForContactsWithIdentifiers_];

  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C4F10430;
  v10 = *MEMORY[0x1E695C258];
  *(v9 + 32) = *MEMORY[0x1E695C258];
  v11 = objc_opt_self();
  v12 = v10;
  *(v9 + 40) = [v11 descriptorForRequiredKeysForStyle_];
  sub_1C456902C(&unk_1EC0BABE0, &unk_1C4F16F20);
  v13 = sub_1C4F01658();

  v23[0] = 0;
  v14 = [v2 unifiedContactsMatchingPredicate:v8 keysToFetch:v13 error:v23];

  v15 = v23[0];
  if (!v14)
  {
    v19 = v23[0];
    v20 = sub_1C4EF97A8();

    swift_willThrow();
    goto LABEL_5;
  }

  sub_1C4AB5F50();
  v16 = sub_1C4F01678();
  v17 = v15;

  v18 = sub_1C4428DA0();
  if (!v18)
  {

LABEL_5:
    v16 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v16;
}

unint64_t sub_1C4AB5F50()
{
  result = qword_1EDDFA430;
  if (!qword_1EDDFA430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDFA430);
  }

  return result;
}

uint64_t sub_1C4AB5F94(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_1C4AB5FD4(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t sub_1C4AB605C(void *a1, uint64_t a2, char *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v304 = a2;
  v282 = a8;
  v286 = a7;
  v287 = a6;
  v292 = a5;
  v296 = a4;
  v298 = a3;
  v328 = *MEMORY[0x1E69E9840];
  v9 = sub_1C456902C(&qword_1EC0C2D20, &unk_1C4F4DE40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v283 = &v266 - v11;
  v284 = sub_1C4EFCC88();
  v281 = *(v284 - 8);
  v12 = *(v281 + 64);
  MEMORY[0x1EEE9AC00](v284);
  v280 = &v266 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C4EFCCC8();
  v289 = *(v14 - 8);
  v290 = v14;
  v15 = *(v289 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v291 = &v266 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v288 = &v266 - v19;
  v20 = sub_1C4EF98F8();
  v294 = *(v20 - 8);
  v295 = v20;
  v21 = *(v294 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v293 = &v266 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v299 = type metadata accessor for PHPersonStructs.IdentifierRelationshipType(0);
  v297 = *(v299 - 1);
  v23 = *(v297 + 64);
  v24 = MEMORY[0x1EEE9AC00](v299);
  v26 = &v266 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v301 = &v266 - v27;
  v300 = type metadata accessor for PHPersonStructs.Person(0);
  v28 = *(*(v300 - 8) + 64);
  MEMORY[0x1EEE9AC00](v300);
  v306 = &v266 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v279 = &v266 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v266 - v34;
  v36 = sub_1C4EF9D38();
  v308 = *(v36 - 8);
  v37 = *(v308 + 64);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v285 = (&v266 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = MEMORY[0x1EEE9AC00](v38);
  v278 = &v266 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v305 = &v266 - v42;
  v43 = [a1 localIdentifier];
  v44 = sub_1C4F01138();
  v46 = v45;

  v47 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v47 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (!v47)
  {
    sub_1C465B58C();
    swift_allocError();
    *v72 = 0;
    swift_willThrow();
    goto LABEL_77;
  }

  v307 = a1;
  v48 = [a1 localIdentifier];
  v49 = &selRef_localizedName;
  if (!v48)
  {
    sub_1C4F01138();
    v48 = sub_1C4F01108();
    v49 = &selRef_localizedName;
  }

  v50 = [objc_opt_self() uuidFromLocalIdentifier_];

  if (!v50)
  {
    goto LABEL_109;
  }

  v51 = sub_1C4F01138();
  v53 = v52;

  v276 = v51;
  sub_1C4EF9CE8();
  if (sub_1C44157D4(v35, 1, v36) == 1)
  {

    sub_1C4420C3C(v35, &qword_1EC0B9DC8, &unk_1C4F124A0);
LABEL_109:
    result = sub_1C4F024A8();
    __break(1u);
    return result;
  }

  v277 = v26;
  v54 = v312;
  v55 = *(v308 + 32);
  v302 = v36;
  v274 = v55;
  v275 = v308 + 32;
  v55(v305, v35, v36);
  v56 = [v307 &selRef_content + 3];
  v57 = sub_1C4F01138();
  v59 = v58;

  if (qword_1EDDF78B8 != -1)
  {
    goto LABEL_106;
  }

  while (1)
  {
    v60 = type metadata accessor for SourceIdPrefix();
    v61 = sub_1C442B738(v60, &qword_1EDE2D5F0);
    v62 = *v61;
    v63 = v61[1];
    *v54 = *v61;
    v54[1] = v63;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](58, 0xE100000000000000);
    v64 = v54[1];
    *v54 = *v54;
    v54[1] = v64;
    v35 = v312;
    MEMORY[0x1C6940010](v57, v59);

    v65 = v303;
    sub_1C4E3A42C(*v54, v54[1], v66, v67, v68, v69, v70, v71, v266, *(&v266 + 1), v267, v268, v269, v270, *(&v270 + 1), v271, v272, v273, v274, v275);
    if (v65)
    {
      (*(v308 + 8))(v305, v302);

      goto LABEL_77;
    }

    v273 = v53;
    *&v270 = v62;
    *(&v270 + 1) = v63;
    v303 = 0;
    v73 = sub_1C4EFEEF8();
    v74 = v301;
    v272 = v73;
    sub_1C440BAA8(v301, 1, 1, v73);
    v75 = v299;
    v76 = v74 + v299[5];
    sub_1C4EFD258();
    v77 = v75[6];
    if (qword_1EDDFD0A8 != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Source();
    v271 = sub_1C442B738(v78, qword_1EDDFD0B0);
    sub_1C44EF7D0(v271, v74 + v77, type metadata accessor for Source);
    v79 = v74 + v75[7];
    sub_1C4EFE558();
    v80 = v75[9];
    v81 = (v74 + v75[8]);
    sub_1C4EFE658();
    v82 = v75[10];
    v83 = v307;
    v84 = [v307 v49 + 347];
    v85 = sub_1C4F01138();
    v87 = v86;

    *v81 = v85;
    v81[1] = v87;
    *(v74 + v82) = xmmword_1C4F4C8D0;
    sub_1C456902C(&qword_1EC0C0498, &qword_1C4F3E908);
    v88 = (*(v297 + 80) + 32) & ~*(v297 + 80);
    v269 = *(v297 + 72);
    v89 = swift_allocObject();
    v266 = xmmword_1C4F0D130;
    *(v89 + 16) = xmmword_1C4F0D130;
    v268 = v88;
    sub_1C44EF7D0(v74, v89 + v88, type metadata accessor for PHPersonStructs.IdentifierRelationshipType);
    v90 = v300;
    v91 = *(v300 + 72);
    v92 = v306;
    v93 = *(v306 + v91);

    *(v92 + v91) = v89;
    sub_1C4E3FE64();
    v310 = MEMORY[0x1E69E7CD0];
    v94 = sub_1C47851D4(v83);
    if (v95)
    {
      v96 = HIBYTE(v95) & 0xF;
      if ((v95 & 0x2000000000000000) == 0)
      {
        v96 = v94 & 0xFFFFFFFFFFFFLL;
      }

      if (v96)
      {
        sub_1C44869B4(v312, v94, v95);
      }
    }

    v97 = sub_1C481B784(v307);
    v99 = v303;
    if (v98)
    {
      v100 = HIBYTE(v98) & 0xF;
      if ((v98 & 0x2000000000000000) == 0)
      {
        v100 = v97 & 0xFFFFFFFFFFFFLL;
      }

      if (v100)
      {
        sub_1C44869B4(v312, v97, v98);
      }
    }

    v101 = [objc_opt_self() service];
    *&v312[0] = 0;
    v102 = [v101 requestVUIndexURLForSystemPhotosLibraryWithError_];

    v103 = *&v312[0];
    if (!v102)
    {
      break;
    }

    v104 = v90;
    v105 = v293;
    sub_1C4EF98C8();
    v106 = v103;

    v108 = v294;
    v107 = v295;
    v109 = v288;
    (*(v294 + 16))(v288, v105, v295);
    sub_1C440BAA8(v109, 0, 1, v107);
    (*(v289 + 104))(v291, *MEMORY[0x1E69E0610], v290);
    v110 = sub_1C4EFCD18();
    v111 = *(v110 + 48);
    v112 = *(v110 + 52);
    swift_allocObject();
    v113 = sub_1C4EFCCA8();
    if (v99)
    {
      (*(v108 + 8))(v105, v107);

      v114 = v99;
      v115 = 0;
      v116 = v302;
      v90 = v104;
      v92 = v306;
      goto LABEL_30;
    }

    v161 = v113;
    v162 = v283;
    sub_1C4EFCC98();
    v163 = v284;
    v164 = sub_1C44157D4(v162, 1, v284);
    v303 = 0;
    v291 = v161;
    if (v164 == 1)
    {

      sub_1C4420C3C(v162, &qword_1EC0C2D20, &unk_1C4F4DE40);
      v116 = v302;
      goto LABEL_95;
    }

    v211 = v162;
    v213 = v280;
    v212 = v281;
    (*(v281 + 32))(v280, v211, v163);
    v214 = v279;
    sub_1C4EFCC78();
    v215 = v302;
    if (sub_1C44157D4(v214, 1, v302) == 1)
    {
      (*(v212 + 8))(v213, v163);

      sub_1C4420C3C(v214, &qword_1EC0B9DC8, &unk_1C4F124A0);
      v116 = v215;
      goto LABEL_95;
    }

    v230 = v278;
    v274(v278, v214, v215);
    if (sub_1C4EF9CF8() == v276 && v231 == v273)
    {
    }

    else
    {
      v233 = sub_1C4F02938();

      if ((v233 & 1) == 0)
      {
        v116 = v302;
        (*(v308 + 8))(v230, v302);
        (*(v281 + 8))(v280, v163);
        goto LABEL_95;
      }
    }

    v116 = v302;
    (*(v308 + 8))(v230, v302);
    (*(v281 + 8))(v280, v163);
    v248 = v306 + v104[11];
    v249 = *(v248 + 8);

    *v248 = xmmword_1C4F17530;
LABEL_95:
    v250 = sub_1C4AB7C0C();
    v59 = 0;
    v57 = *(v250 + 16);
    v54 = v307;
    v53 = v308 + 16;
    v297 = v308 + 8;
    v49 = v285;
    while (1)
    {
      if (v57 == v59)
      {
        (*(v294 + 8))(v293, v295);

        v92 = v306;
        v115 = v303;
LABEL_104:
        v90 = v300;
        goto LABEL_35;
      }

      if (v59 >= *(v250 + 16))
      {
        break;
      }

      (*(v308 + 16))(v49, v250 + ((*(v308 + 80) + 32) & ~*(v308 + 80)) + *(v308 + 72) * v59, v116);
      sub_1C4AB8278(v49, v304);
      if (v252)
      {
        v253 = v251;
        v254 = v252;

        v255 = sub_1C4EF9CF8();
        v257 = v256;
        v258 = [v307 localIdentifier];
        v259 = sub_1C4F01138();
        v261 = v260;

        LOBYTE(v312[0]) = 5;
        v262.value._countAndFlagsBits = v255;
        v262.value._object = v257;
        v263.value._countAndFlagsBits = v253;
        v263.value._object = v254;
        v264._countAndFlagsBits = v259;
        v264._object = v261;
        VisionKeyValueStore.store(entityIdentifier:name:relationship:visualIdentifier:association:confidence:)(v262, v263, 0, v264, v312, 1.0);
        v114 = v265;
        if (v265)
        {

          v116 = v302;
          (*v297)(v49, v302);
          (*(v294 + 8))(v293, v295);
          v115 = 0;
          v92 = v306;
          v90 = v300;
          goto LABEL_30;
        }

        v116 = v302;
        (*v297)(v49, v302);
        (*(v294 + 8))(v293, v295);
        v92 = v306;
        v54 = v307;
        v115 = 0;
        goto LABEL_104;
      }

      ++v59;
      (*v297)(v49, v116);
      v54 = v307;
    }

    __break(1u);
LABEL_106:
    swift_once();
  }

  v117 = *&v312[0];

  v114 = sub_1C4EF97A8();

  swift_willThrow();
  v115 = 0;
  v116 = v302;
LABEL_30:
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v118 = sub_1C4F00978();
  sub_1C442B738(v118, qword_1EDE2DE10);
  v119 = sub_1C4F00968();
  v120 = sub_1C4F01CD8();
  if (os_log_type_enabled(v119, v120))
  {
    v121 = swift_slowAlloc();
    *v121 = 0;
    _os_log_impl(&dword_1C43F8000, v119, v120, "PHPerson: Invalid call to VUGallery", v121, 2u);
    MEMORY[0x1C6942830](v121, -1, -1);
  }

  v54 = v307;
LABEL_35:
  v122 = sub_1C4AB5C58([v54 type]);
  v124 = v123;
  v125 = (v92 + v90[13]);
  v126 = v125[1];

  *v125 = v122;
  v125[1] = v124;
  v127 = sub_1C4AB8444([v54 detectionType]);
  v129 = v128;
  v130 = (v92 + v90[15]);
  v131 = v130[1];

  *v130 = v127;
  v130[1] = v129;
  v132 = sub_1C45C0104(v54);
  if (!v133)
  {
    goto LABEL_47;
  }

  v134 = sub_1C4AB5D10(v132, v133);

  if (!v134)
  {
    goto LABEL_47;
  }

  if (!sub_1C4428DA0())
  {

LABEL_47:
    if ((Configuration.isAutonamingMessagesIngestionEnabled.getter() & 1) == 0)
    {
      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v177 = sub_1C4F00978();
      sub_1C442B738(v177, qword_1EDDFECB8);
      v178 = sub_1C4F00968();
      v179 = sub_1C4F01CB8();
      if (os_log_type_enabled(v178, v179))
      {
        v180 = swift_slowAlloc();
        *v180 = 0;
        _os_log_impl(&dword_1C43F8000, v178, v179, "Feature flag for KG ingestion of AutonamingMessages disabled.", v180, 2u);
        MEMORY[0x1C6942830](v180, -1, -1);
      }

      v158 = 0;
      goto LABEL_61;
    }

    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v165 = sub_1C4F00978();
    sub_1C442B738(v165, qword_1EDDFECB8);
    v166 = sub_1C4F00968();
    v167 = sub_1C4F01CB8();
    if (os_log_type_enabled(v166, v167))
    {
      v168 = swift_slowAlloc();
      *v168 = 0;
      _os_log_impl(&dword_1C43F8000, v166, v167, "Feature flag for KG ingestion of AutonamingMessages enabled", v168, 2u);
      MEMORY[0x1C6942830](v168, -1, -1);
    }

    if (!v287)
    {

      v208 = sub_1C4F00968();
      v209 = sub_1C4F01CD8();
      if (os_log_type_enabled(v208, v209))
      {
        v210 = swift_slowAlloc();
        *v210 = 0;
        _os_log_impl(&dword_1C43F8000, v208, v209, "autonamingMessageInferenceStream should be non-null for iOS/ macOS.", v210, 2u);
        MEMORY[0x1C6942830](v210, -1, -1);
      }

      (*(v308 + 8))(v305, v116);
      v35 = MEMORY[0x1E69E7CC0];
      goto LABEL_81;
    }

    v169 = v287;
    v170 = v307;
    sub_1C4AB8530(v169, v286, &v319);
    v158 = v323;
    if (!v323)
    {

LABEL_61:
      v304 = v158;
      v181 = sub_1C44FE820(v310);
      v160 = 0;
LABEL_62:
      v303 = v115;
      v182 = v90[9];
      v183 = *(v92 + v182);

      *(v92 + v182) = v181;
      v184 = v307;
      v185 = [v307 localIdentifier];
      v186 = sub_1C4F01138();
      v188 = v187;

      if (!v160)
      {
        v304 = sub_1C4AB8754();
        v160 = v189;
      }

      v190 = [v184 localIdentifier];
      v191 = sub_1C4F01138();
      v193 = v192;

      LOBYTE(v312[0]) = 0;
      v194.value._countAndFlagsBits = v186;
      v194.value._object = v188;
      v195.value._countAndFlagsBits = v304;
      v195.value._object = v160;
      v196._countAndFlagsBits = v191;
      v196._object = v193;
      v35 = v298;
      VisionKeyValueStore.store(entityIdentifier:name:relationship:visualIdentifier:association:confidence:)(v194, v195, 0, v196, v312, 1.0);
      if (v197)
      {
        (*(v308 + 8))(v305, v302);

LABEL_66:
        v198 = v301;
        goto LABEL_76;
      }

      v92 = v306;
      sub_1C45780EC();
      v200 = v199;
      v201 = *(v300 + 68);
      v202 = *(v92 + v201);

      *(v92 + v201) = v200;
      sub_1C4E3FC4C();
      v203 = [v184 localIdentifier];
      v204 = sub_1C4F01138();
      v206 = v205;

      v312[0] = v270;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](58, 0xE100000000000000);
      MEMORY[0x1C6940010](v204, v206);

      v207 = *&v312[0];
      LOBYTE(v312[0]) = 1;
      v35 = sub_1C4E3B954(v207, *(&v312[0] + 1), v312);
      (*(v308 + 8))(v305, v302);

LABEL_81:
      sub_1C44EF5EC(v301, type metadata accessor for PHPersonStructs.IdentifierRelationshipType);
      sub_1C44EF5EC(v92, type metadata accessor for PHPersonStructs.Person);
      goto LABEL_77;
    }

    v303 = v115;
    v312[0] = v319;
    v312[1] = v320;
    v312[2] = v321;
    v313 = v322;
    v314 = v323;
    v315 = v324;
    v316 = v325;
    v317 = v326;
    v171 = v327;
    v318 = v327;
    v172 = *(&v319 + 1);
    v291 = *(&v320 + 1);
    v173 = *&v324;
    v174 = v325;
    v304 = *(&v324 + 1);
    v296 = *(&v326 + 1);
    v175 = v326;
    v297 = *(&v325 + 1);
    sub_1C445FFF0(v312, v311, &qword_1EC0C2D28, &qword_1C4F4DE50);

    v293 = v171;

    v294 = v175;

    v295 = v172;

    v299 = v169;
    if (v174)
    {
      v292 = v174;
      v176 = &selRef_localizedName;
    }

    else
    {
      v176 = &selRef_localizedName;
      v234 = [v170 localIdentifier];
      v304 = sub_1C4F01138();
      v292 = v235;

      v170 = v307;
    }

    v236 = [v170 v176[59]];
    v237 = sub_1C4F01138();
    v239 = v238;

    v309 = 2;
    sub_1C445FFF0(v312, v311, &qword_1EC0C2D28, &qword_1C4F4DE50);

    v240 = v294;

    v241 = v293;

    v242 = v173;
    v243.value._countAndFlagsBits = v304;
    v243.value._object = v292;
    v245.value._countAndFlagsBits = v296;
    v244.value._countAndFlagsBits = v297;
    v244.value._object = v240;
    v245.value._object = v241;
    v246._countAndFlagsBits = v237;
    v246._object = v239;
    v35 = v298;
    VisionKeyValueStore.store(entityIdentifier:name:relationship:visualIdentifier:association:confidence:)(v243, v244, v245, v246, &v309, v242);
    v115 = v247;
    if (v247)
    {

      sub_1C4420C3C(&v319, &qword_1EC0C2D30, &unk_1C4F4DE58);

      (*(v308 + 8))(v305, v302);
      goto LABEL_66;
    }

    sub_1C4420C3C(&v319, &qword_1EC0C2D30, &unk_1C4F4DE58);
    v158 = 0;
    v92 = v306;
LABEL_92:
    v90 = v300;
    goto LABEL_61;
  }

  sub_1C4431590(0, (v134 & 0xC000000000000001) == 0);
  v303 = v115;
  if ((v134 & 0xC000000000000001) != 0)
  {
    v135 = MEMORY[0x1C6940F90](0, v134);
  }

  else
  {
    v135 = *(v134 + 32);
  }

  v136 = v135;
  v138 = v271;
  v137 = v272;

  v139 = v277;
  sub_1C440BAA8(v277, 1, 1, v137);
  v140 = v299;
  v141 = v139 + v299[5];
  sub_1C4EFD258();
  sub_1C44EF7D0(v138, v139 + v140[6], type metadata accessor for Source);
  v142 = v139 + v140[7];
  sub_1C4EFE558();
  v143 = v140[9];
  v144 = (v139 + v140[8]);
  sub_1C4EFE658();
  v145 = v140[10];
  v146 = [v136 identifier];
  v147 = sub_1C4F01138();
  v149 = v148;

  *v144 = v147;
  v144[1] = v149;
  *(v139 + v145) = xmmword_1C4F4DD80;
  v151 = sub_1C4E3B8DC(v312);
  if (*v150)
  {
    v152 = v150;
    sub_1C45895F4();
    v153 = *(*v152 + 16);
    sub_1C458A174();
    v154 = *v152;
    *(v154 + 16) = v153 + 1;
    sub_1C44EF7D0(v139, v154 + v268 + v153 * v269, type metadata accessor for PHPersonStructs.IdentifierRelationshipType);
  }

  v151(v312, 0);
  v155 = v136;
  v156 = [objc_opt_self() stringFromContact:v136 style:0];
  if (v156)
  {
    v157 = v156;
    v158 = sub_1C4F01138();
    v160 = v159;
  }

  else
  {
    v158 = 0;
    v160 = 0;
  }

  v216 = [v155 identifier];
  v217 = sub_1C4F01138();
  v219 = v218;

  v220 = [v307 localIdentifier];
  v221 = sub_1C4F01138();
  v223 = v222;

  LOBYTE(v312[0]) = 6;
  v224.value._countAndFlagsBits = v217;
  v224.value._object = v219;
  v225.value._countAndFlagsBits = v158;
  v225.value._object = v160;
  v226._countAndFlagsBits = v221;
  v226._object = v223;
  VisionKeyValueStore.store(entityIdentifier:name:relationship:visualIdentifier:association:confidence:)(v224, v225, 0, v226, v312, 1.0);
  v115 = v227;
  if (!v227)
  {

    sub_1C44EF5EC(v277, type metadata accessor for PHPersonStructs.IdentifierRelationshipType);
    v92 = v306;
    if (v160)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      v181 = swift_allocObject();
      *(v181 + 16) = v266;
      v304 = v158;
      *(v181 + 32) = v158;
      *(v181 + 40) = v160;
      v90 = v300;
      goto LABEL_62;
    }

    goto LABEL_92;
  }

  (*(v308 + 8))(v305, v302);
  v35 = type metadata accessor for PHPersonStructs.IdentifierRelationshipType;
  sub_1C44EF5EC(v277, type metadata accessor for PHPersonStructs.IdentifierRelationshipType);
  v198 = v301;
LABEL_76:
  sub_1C44EF5EC(v198, type metadata accessor for PHPersonStructs.IdentifierRelationshipType);
  sub_1C44EF5EC(v306, type metadata accessor for PHPersonStructs.Person);
LABEL_77:
  v228 = *MEMORY[0x1E69E9840];
  return v35;
}

uint64_t sub_1C4AB7C0C()
{
  v0 = sub_1C4EF9D38();
  v1 = *(v0 - 8);
  v55 = v0;
  v56 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v50 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C4EFCD08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v52 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v54 = &v49 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v49 - v11;
  v12 = sub_1C4EFCCC8();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v63 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v49 - v17;
  v19 = *MEMORY[0x1E69E0608];
  v65 = v13[13];
  v66 = v13 + 13;
  v65(&v49 - v17, v19, v12);
  v20 = v4;
  v21 = sub_1C4EFCCB8();
  v22 = v13[1];
  v62 = v18;
  v59 = v22;
  v60 = v12;
  v67 = v13 + 1;
  result = (v22)(v18, v12);
  v24 = 0;
  v69 = *(v21 + 16);
  v71 = v5 + 16;
  v58 = *MEMORY[0x1E69E0618];
  v70 = (v5 + 8);
  v68 = v5;
  v51 = (v5 + 32);
  v53 = MEMORY[0x1E69E7CC0];
  v57 = v4;
  v61 = v21;
  v25 = v64;
  v26 = v62;
  v27 = v60;
  while (v69 != v24)
  {
    if (v24 >= *(v21 + 16))
    {
      __break(1u);
      return result;
    }

    v28 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v29 = *(v68 + 72);
    (*(v68 + 16))(v25, v21 + v28 + v29 * v24, v20);
    v30 = v20;
    sub_1C4EFCCE8();
    v31 = v63;
    v65(v63, v58, v27);
    sub_1C4ABA2B4(&qword_1EDDEFFF0, MEMORY[0x1E69E0630]);
    sub_1C4F01578();
    sub_1C4F01578();
    v32 = v31;
    v33 = v59;
    v59(v32, v27);
    v33(v26, v27);
    if (v73 == v72)
    {
      v34 = *v51;
      (*v51)(v52, v25, v20);
      v35 = v53;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v35;
      v74 = v35;
      if (isUniquelyReferenced_nonNull_native)
      {
        v20 = v30;
      }

      else
      {
        v38 = *(v35 + 16);
        sub_1C459EC18();
        v20 = v57;
        v37 = v74;
      }

      v39 = *(v37 + 16);
      if (v39 >= *(v37 + 24) >> 1)
      {
        sub_1C459EC18();
        v20 = v57;
        v37 = v74;
      }

      ++v24;
      *(v37 + 16) = v39 + 1;
      v53 = v37;
      result = v34((v37 + v28 + v39 * v29), v52, v20);
      v21 = v61;
    }

    else
    {
      result = (*v70)(v25, v20);
      ++v24;
      v21 = v61;
    }
  }

  v40 = *(v53 + 16);
  if (v40)
  {
    v74 = MEMORY[0x1E69E7CC0];
    v41 = v53;
    sub_1C459EBC0();
    v42 = v74;
    v43 = v41 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
    v69 = *(v68 + 72);
    v44 = *(v68 + 16);
    v45 = v57;
    v46 = v50;
    do
    {
      v47 = v54;
      v44(v54, v43, v45);
      sub_1C4EFCCD8();
      v45 = v57;
      (*v70)(v47, v57);
      v74 = v42;
      v48 = *(v42 + 16);
      if (v48 >= *(v42 + 24) >> 1)
      {
        sub_1C459EBC0();
        v45 = v57;
        v42 = v74;
      }

      *(v42 + 16) = v48 + 1;
      (*(v56 + 32))(v42 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v48, v46, v55);
      v43 += v69;
      --v40;
    }

    while (v40);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v42;
}

void sub_1C4AB8278(uint64_t a1, uint64_t a2)
{
  v15[1] = a1;
  v3 = sub_1C4EF9D38();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C4428DA0();
  v9 = 0;
  v10 = (v4 + 8);
  while (v8 != v9)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1C6940F90](v9, a2);
    }

    else
    {
      if (v9 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v11 = *(a2 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v13 = [v11 uuid];
    sub_1C4EF9D18();

    LOBYTE(v13) = sub_1C4EF9D08();
    (*v10)(v7, v3);
    if (v13)
    {
      v14 = [v12 name];
      sub_1C4F01138();

      return;
    }

    ++v9;
  }
}

uint64_t sub_1C4AB8444(unsigned __int16 a1)
{
  v1 = a1;
  result = 0x6E776F6E6B6E75;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0x6E616D7568;
      break;
    case 2:
      result = 7628144;
      break;
    case 3:
      result = 6778724;
      break;
    case 4:
      result = 7627107;
      break;
    default:
      result = sub_1C4F024A8();
      __break(1u);
      break;
  }

  return result;
}

void sub_1C4AB8530(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1C4AB87A0(a1, a2, &v34);
  if (!v38)
  {
    v11 = 0;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    goto LABEL_18;
  }

  v42 = v34;
  v43 = v35;
  v44 = v36;
  v45 = v37;
  v46 = v38;
  v47 = v39;
  v6 = *(&v35 + 1);
  if (*(&v35 + 1))
  {
    v7 = v43;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v8 = sub_1C4AB5D10(v7, v6);

    if (v8)
    {
      if (sub_1C4428DA0())
      {
        sub_1C4431590(0, (v8 & 0xC000000000000001) == 0);
        if ((v8 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1C6940F90](0, v8);
        }

        else
        {
          v9 = *(v8 + 32);
        }

        v10 = v9;

        goto LABEL_11;
      }
    }
  }

  v10 = 0;
LABEL_11:
  v19 = MEMORY[0x1E69E7CD0];
  v33 = MEMORY[0x1E69E7CD0];
  v20 = sub_1C47851D4(v4);
  if (v21)
  {
    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v23 = sub_1C4F00FF8();
      v25 = v24;

      sub_1C44869B4(v40, v23, v25);

      v19 = v33;
    }

    else
    {
    }
  }

  sub_1C4AB8DCC(&v42, v10, v19, v40);
  v31 = v40[1];
  v32 = v40[0];
  v29 = v40[3];
  v30 = v40[2];
  v27 = v40[5];
  v28 = v40[4];
  v26 = v40[6];
  v11 = v41;

  sub_1C4420C3C(&v34, &qword_1EC0C2D38, &qword_1C4F4DE68);

  v18 = v26;
  v17 = v27;
  v16 = v28;
  v15 = v29;
  v14 = v30;
  v13 = v31;
  v12 = v32;
LABEL_18:
  *a3 = v12;
  *(a3 + 16) = v13;
  *(a3 + 32) = v14;
  *(a3 + 48) = v15;
  *(a3 + 64) = v16;
  *(a3 + 80) = v17;
  *(a3 + 96) = v18;
  *(a3 + 112) = v11;
}

uint64_t sub_1C4AB8754()
{
  result = sub_1C47851D4(v0);
  if (!v2)
  {
    return 0;
  }

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {

    return 0;
  }

  return result;
}

uint64_t sub_1C4AB87A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = objc_autoreleasePoolPush();
  v64 = [a1 publisher];
  objc_autoreleasePoolPop(v6);
  v71 = MEMORY[0x1E69E7CD0];
  v7 = sub_1C47851D4(v4);
  if (v8)
  {
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v10 = sub_1C4F00FF8();
      v12 = v11;

      sub_1C44869B4(&aBlock, v10, v12);
    }
  }

  v13 = swift_allocObject();
  *(v13 + 16) = sub_1C4F00F28();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1C4F00F28();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1C4F00F28();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  v69 = sub_1C4ABA360;
  v70 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v66 = 1107296256;
  v67 = sub_1C45AF9C8;
  v68 = &unk_1F43F8C30;
  v18 = _Block_copy(&aBlock);
  v19 = v4;

  v20 = [v64 filterWithIsIncluded_];
  _Block_release(v18);
  v69 = nullsub_1;
  v70 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v66 = 1107296256;
  v67 = sub_1C44405F8;
  v68 = &unk_1F43F8C58;
  v21 = _Block_copy(&aBlock);
  v22 = swift_allocObject();
  v22[2] = v19;
  v22[3] = v13;
  v22[4] = v15;
  v22[5] = v14;
  v22[6] = v16;
  v69 = sub_1C4ABA370;
  v70 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v66 = 1107296256;
  v67 = sub_1C4440590;
  v68 = &unk_1F43F8CA8;
  v23 = _Block_copy(&aBlock);
  v58 = v19;

  v24 = [v20 sinkWithCompletion:v21 receiveInput:v23];
  _Block_release(v23);
  _Block_release(v21);

  swift_beginAccess();
  v25 = *(v13 + 16);
  v26 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v60 = sub_1C45B3248(v26);
  v28 = v27;
  v30 = v29;

  swift_beginAccess();
  v31 = *(v15 + 16);
  v32 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v59 = sub_1C45B3248(v32);
  v34 = v33;
  v36 = v35;

  swift_beginAccess();
  v37 = *(v14 + 16);
  v38 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v61 = sub_1C45B3248(v38);
  v40 = v39;
  v42 = v41;

  swift_beginAccess();
  v43 = *(v16 + 16) * 0.8;
  if (v43 >= v30 || v30 < a2)
  {

    v60 = 0;
    v28 = 0;
  }

  if (v43 >= v36 || v36 < a2)
  {

    v59 = 0;
    v34 = 0;
  }

  if (v43 >= v42 || v42 < a2)
  {

    v61 = 0;
    v40 = 0;
  }

  if (v28 || v34 || v40)
  {
    v53 = 0.1;
    if (!*(*(v15 + 16) + 16))
    {
      v53 = 0.0;
    }

    v54 = *(v16 + 16);
    if (v54 >= 10)
    {
      v54 = 10;
    }

    v52 = v53 + v54 / 10.0 * 0.85;
    v55 = [v58 localIdentifier];
    v50 = sub_1C4F01138();
    v51 = v56;

    v48 = v59;
    v47 = v60;
    v49 = v61;
  }

  else
  {

    v47 = 0;
    v28 = 0;
    v48 = 0;
    v34 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0.0;
  }

  *a3 = v47;
  *(a3 + 8) = v28;
  *(a3 + 16) = v48;
  *(a3 + 24) = v34;
  *(a3 + 32) = v49;
  *(a3 + 40) = v40;
  *(a3 + 48) = v50;
  *(a3 + 56) = v51;
  *(a3 + 64) = v52;
  return result;
}

uint64_t sub_1C4AB8DCC@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = result;
  v6 = *result;
  v7 = *(result + 8);
  v8 = *(result + 40);
  v42 = v8;
  v43 = *(result + 56);
  v40 = v7;
  v41 = *(result + 24);
  if (a2)
  {
    v9 = a2;
    v10 = [v9 identifier];
    v11 = sub_1C4F01138();
    v13 = v12;

    v14 = [objc_opt_self() stringFromContact:v9 style:0];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1C4F01138();
      v18 = v17;
    }

    else
    {

      v16 = 0;
      v18 = 0;
    }

    v36 = *(v4 + 32);
    v37 = *(v4 + 40);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    result = sub_1C4ABA2FC(v4, v45);
    v32 = v6;
    goto LABEL_16;
  }

  v18 = v7;
  if (v7)
  {
    v19 = BYTE7(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v19 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1C4F0D130;
      *(v21 + 32) = sub_1C4F00FF8();
      *(v21 + 40) = v22;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4499940(v21, v23, v24, v25, v26, v27, v28, v29, v40, SBYTE8(v40), v41, *(&v41 + 1), v42, *(&v42 + 1), v43, *(&v43 + 1), v44, v45[0], v45[1], v45[2], v45[3], v45[4]);
      v31 = sub_1C4A32590(a3, v30);

      if ((v31 & 1) == 0 || !*(a3 + 16))
      {
        v36 = *(v4 + 32);
        v37 = *(v4 + 40);
        sub_1C4ABA2FC(v4, v45);
        result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v11 = 0;
        v13 = 0;
        v32 = v6;
        v16 = v6;
        goto LABEL_16;
      }
    }
  }

  v32 = 0;
  v46 = *(v4 + 32);
  v33 = 0uLL;
  if (!v18)
  {
    v11 = 0;
    v13 = 0;
    v16 = 0;
    v18 = 0;
    v35 = 0uLL;
    v38 = 0uLL;
    v36 = 0;
    v37 = 0;
    v39 = 0uLL;
    goto LABEL_17;
  }

  v34 = *(&v46 + 1);
  v11 = 0;
  v13 = 0;
  v16 = 0;
  v18 = 0;
  v35 = 0uLL;
  v36 = 0;
  v37 = 0;
  v38 = 0uLL;
  v39 = 0uLL;
  if (*(&v46 + 1))
  {
    v36 = v46;
    sub_1C4ABA2FC(v4, v45);
    result = sub_1C445FFF0(&v46, v45, &qword_1EC0C2BD0, &qword_1C4F0FF50);
    v11 = 0;
    v13 = 0;
    v16 = 0;
    v18 = 0;
    v32 = v6;
    v37 = v34;
LABEL_16:
    v33 = v40;
    v35 = v41;
    v38 = v42;
    v39 = v43;
  }

LABEL_17:
  *a4 = v32;
  *(a4 + 8) = v33;
  *(a4 + 24) = v35;
  *(a4 + 40) = v38;
  *(a4 + 56) = v39;
  *(a4 + 72) = v11;
  *(a4 + 80) = v13;
  *(a4 + 88) = v16;
  *(a4 + 96) = v18;
  *(a4 + 104) = v36;
  *(a4 + 112) = v37;
  return result;
}

uint64_t sub_1C4AB907C(void *a1, void *a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 photosPersonIdentifier];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1C4F01138();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v11 = [a2 localIdentifier];
    v12 = sub_1C4F01138();
    v14 = v13;

    if (v9)
    {
      if (v7 == v12 && v9 == v14)
      {
        v10 = 1;
      }

      else
      {
        v10 = sub_1C4F02938();
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void sub_1C4AB9188(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = [a1 eventBody];
  if (!v11)
  {
    return;
  }

  v79 = v11;
  v12 = [v11 photosPersonIdentifier];
  if (v12)
  {
    v13 = v12;
    v77 = a6;
    v14 = sub_1C4F01138();
    v16 = v15;

    v17 = [a2 localIdentifier];
    v18 = sub_1C4F01138();
    v20 = v19;

    if (v14 == v18 && v16 == v20)
    {
    }

    else
    {
      v22 = sub_1C4F02938();

      if ((v22 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v23 = [v79 inferredName];
    if (v23)
    {
      v24 = v23;
      v25 = sub_1C4F01138();
      v27 = v26;

      swift_beginAccess();
      v28 = *(a3 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      v29 = *(a3 + 16);
      *(a3 + 16) = 0x8000000000000000;
      v30 = sub_1C445FAA8(v25, v27);
      if (__OFADD__(*(v29 + 16), (v31 & 1) == 0))
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v32 = v30;
      v33 = v31;
      sub_1C456902C(&qword_1EC0B9800, &qword_1C4F0FAE0);
      if (sub_1C4F02458())
      {
        v34 = sub_1C445FAA8(v25, v27);
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_52;
        }

        v32 = v34;
      }

      *(a3 + 16) = v29;
      if ((v33 & 1) == 0)
      {
        sub_1C44686AC(v32, v25, v27, 0, v29);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      v36 = *(v29 + 56);
      v37 = *(v36 + 8 * v32);
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_47;
      }

      *(v36 + 8 * v32) = v39;
      swift_endAccess();

      v40 = sub_1C457EB40;
    }

    else
    {
      v40 = 0;
    }

    v41 = [v79 inferredContactIdentifier];
    if (v41)
    {
      v42 = v41;
      v43 = sub_1C4F01138();
      v45 = v44;

      swift_beginAccess();
      v46 = *(a4 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      v47 = *(a4 + 16);
      *(a4 + 16) = 0x8000000000000000;
      v48 = sub_1C445FAA8(v43, v45);
      if (__OFADD__(*(v47 + 16), (v49 & 1) == 0))
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v50 = v48;
      v51 = v49;
      sub_1C456902C(&qword_1EC0B9800, &qword_1C4F0FAE0);
      if (sub_1C4F02458())
      {
        v52 = sub_1C445FAA8(v43, v45);
        if ((v51 & 1) != (v53 & 1))
        {
          goto LABEL_52;
        }

        v50 = v52;
      }

      *(a4 + 16) = v47;
      if ((v51 & 1) == 0)
      {
        sub_1C44686AC(v50, v43, v45, 0, v47);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      v54 = *(v47 + 56);
      v55 = *(v54 + 8 * v50);
      v38 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v38)
      {
        goto LABEL_49;
      }

      *(v54 + 8 * v50) = v56;
      swift_endAccess();

      v57 = sub_1C457EB40;
    }

    else
    {
      v57 = 0;
    }

    v58 = [v79 inferredRelationshipToDeviceOwner];
    if (!v58)
    {
      v74 = 0;
LABEL_42:

      swift_beginAccess();
      v75 = *(v78 + 16);
      v38 = __OFADD__(v75, 1);
      v76 = v75 + 1;
      if (!v38)
      {
        *(v78 + 16) = v76;
        sub_1C45B4C6C(v40);
        sub_1C45B4C6C(v57);
        sub_1C45B4C6C(v74);
        return;
      }

      __break(1u);
      goto LABEL_46;
    }

    v59 = v58;
    v60 = sub_1C4F01138();
    v62 = v61;

    swift_beginAccess();
    v63 = *(a5 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v64 = *(a5 + 16);
    *(a5 + 16) = 0x8000000000000000;
    v65 = sub_1C445FAA8(v60, v62);
    if (__OFADD__(*(v64 + 16), (v66 & 1) == 0))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v67 = v65;
    v68 = v66;
    sub_1C456902C(&qword_1EC0B9800, &qword_1C4F0FAE0);
    if ((sub_1C4F02458() & 1) == 0)
    {
LABEL_37:
      *(a5 + 16) = v64;
      if ((v68 & 1) == 0)
      {
        sub_1C44686AC(v67, v60, v62, 0, v64);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      v71 = *(v64 + 56);
      v72 = *(v71 + 8 * v67);
      v38 = __OFADD__(v72, 1);
      v73 = v72 + 1;
      if (v38)
      {
        goto LABEL_51;
      }

      *(v71 + 8 * v67) = v73;
      swift_endAccess();

      v74 = sub_1C457EB40;
      goto LABEL_42;
    }

    v69 = sub_1C445FAA8(v60, v62);
    if ((v68 & 1) == (v70 & 1))
    {
      v67 = v69;
      goto LABEL_37;
    }

LABEL_52:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

LABEL_8:
}

uint64_t sub_1C4AB9724()
{
  v7 = *MEMORY[0x1E69E9840];
  v1[6] = v0;
  v2 = sub_1C4EF98F8();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C44EE9CC, 0, 0);
}

uint64_t sub_1C4AB981C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v53 = a3;
  v51 = a2;
  v52 = a8;
  v49 = a1;
  v50 = a7;
  v55 = a9;
  v45 = a10;
  v46 = a5;
  v47 = a11;
  v48 = a6;
  v12 = type metadata accessor for PHPersonSourceIngestor();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C44EF7D0(a4, v15, type metadata accessor for PHPersonSourceIngestor);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v44 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_1C4ABA14C(v15, v23 + v16);
  *(v23 + v44) = v46;
  v24 = v48;
  v25 = v49;
  *(v23 + v17) = v48;
  *(v23 + v18) = v50;
  v26 = v24;
  *(v23 + v19) = v52;
  *(v23 + v20) = v45;
  v27 = (v23 + v21);
  v28 = v51;
  *v27 = v25;
  v27[1] = v28;
  v29 = v47;
  *(v23 + v22) = v47;
  aBlock[4] = sub_1C4ABA1B0;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C4AAF5EC;
  aBlock[3] = &unk_1F43F8BB8;
  v30 = _Block_copy(aBlock);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  [v53 enumerateObjectsUsingBlock_];
  _Block_release(v30);
  swift_beginAccess();
  v31 = *(v29 + 16);
  v32 = v54;
  sub_1C4EFFCA8();
  if (v32)
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v33 = sub_1C4F00978();
    sub_1C442B738(v33, qword_1EDE2DE10);
    v34 = v32;
    v35 = sub_1C4F00968();
    v36 = sub_1C4F01CD8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v56 = v38;
      *v37 = 136315138;
      aBlock[8] = v32;
      v39 = v32;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v40 = sub_1C4F01198();
      v42 = sub_1C441D828(v40, v41, &v56);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_1C43F8000, v35, v36, "Failed to send BGST fastpass telemetry due to: %s", v37, 0xCu);
      sub_1C440962C(v38);
      MEMORY[0x1C6942830](v38, -1, -1);
      MEMORY[0x1C6942830](v37, -1, -1);
    }

    else
    {
    }
  }

  result = swift_beginAccess();
  *v55 = *(v26 + 16);
  return result;
}

void sub_1C4AB9C30(void *a1, uint64_t a2, _BYTE *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11, uint64_t a12)
{
  sub_1C4ACEB84();
  swift_beginAccess();
  if (*(a5 + 16))
  {
    *a3 = 1;
    swift_beginAccess();
    *(a6 + 16) = 1;
    return;
  }

  swift_beginAccess();
  v19 = *(a7 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a7 + 16) = v21;
    v31 = objc_autoreleasePoolPush();
    v22 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
    v23 = *&a4[*(type metadata accessor for PhaseStores() + 32)];
    swift_beginAccess();
    v24 = *(a9 + 16);
    v25 = *(type metadata accessor for PHPersonSourceIngestor() + 28);
    v32 = v24;
    v26 = objc_autoreleasePoolPush();
    sub_1C4AB605C(a1, a8, v23, v22, a4, v24, 3, &a4[v25]);
    objc_autoreleasePoolPop(v26);

    sub_1C4812140();
    v28 = v27;

    a10(v28);

    swift_beginAccess();
    v29 = *(a12 + 16);
    v20 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (!v20)
    {
      *(a12 + 16) = v30;
      objc_autoreleasePoolPop(v31);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1C4AB9F84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return sub_1C4AB9724();
}

uint64_t sub_1C4ABA010(uint64_t a1)
{
  result = sub_1C4ABA2B4(&qword_1EDDE29A0, type metadata accessor for PHPersonSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4ABA068(uint64_t a1)
{
  result = sub_1C4ABA2B4(&qword_1EDDE2988, type metadata accessor for PHPersonSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4ABA0C0(uint64_t a1)
{
  result = sub_1C4ABA2B4(&qword_1EDDE2990, type metadata accessor for PHPersonSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4ABA14C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PHPersonSourceIngestor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C4ABA1B0(void *a1, uint64_t a2, _BYTE *a3)
{
  v7 = *(type metadata accessor for PHPersonSourceIngestor() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1C4AB9C30(a1, a2, a3, (v3 + v8), *(v3 + v9), *(v3 + v10), *(v3 + v11), *(v3 + v12), *(v3 + v13), *(v3 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1C4ABA2B4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C4ABA3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v36 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0();
  v29 = v36;
  v30 = *(v36 + 16);
  v31 = *(v36 + 24) >> 1;
  v32 = v30 + 1;
  if (v31 <= v30)
  {
    sub_1C44CD9C0();
    v29 = v36;
    v31 = *(v36 + 24) >> 1;
  }

  *(v29 + 16) = v32;
  v33 = v29 + 16 * v30;
  *(v33 + 32) = 0xD000000000000013;
  *(v33 + 40) = 0x80000001C4FAFD10;
  v34 = v30 + 2;
  if (v31 <= v32)
  {
    sub_1C44CD9C0();
    v29 = v36;
  }

  *(v29 + 16) = v34;
  v35 = v29 + 16 * v32;
  *(v35 + 32) = 0xD000000000000014;
  *(v35 + 40) = 0x80000001C4FAFD30;

  sub_1C4499940(v29, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C4ABA508()
{
  v1 = sub_1C4EF9CD8();
  v2 = sub_1C43FCDF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 16);
  sub_1C4EF9C88();
  v10 = sub_1C4663250(v8);
  (*(v4 + 8))(v8, v1);
  if (v10)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v12 = sub_1C4F00978();
  sub_1C442B738(v12, qword_1EDDFECB8);
  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CF8();
  if (os_log_type_enabled(v13, v14))
  {
    *swift_slowAlloc() = 0;
    sub_1C440BAE8(&dword_1C43F8000, v15, v16, "Unable to fetch recent event from BMContextualUnderstandingPhysicalSocial Stream");
    sub_1C43FE9D4();
  }

  return 0;
}

uint64_t sub_1C4ABA688()
{
  v0 = sub_1C4ABA508();
  if (v0)
  {
    v1 = v0;
    sub_1C4ABA7A4(v0);
    v3 = v2;

    return v3;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(v6, v7))
    {
      *swift_slowAlloc() = 0;
      sub_1C440BAE8(&dword_1C43F8000, v8, v9, "PhysicalSocialEvent is nil");
      sub_1C43FE9D4();
    }

    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);

    return sub_1C4F00F28();
  }
}

void sub_1C4ABA7A4(void *a1)
{
  v28 = sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  v2 = sub_1C4F00F28();
  v3 = [a1 discoveredPeople];
  sub_1C4461BB8(0, &qword_1EC0C2D50, 0x1E698EB68);
  v4 = sub_1C4F01678();

  v5 = sub_1C4428DA0();
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
LABEL_19:

    v15 = objc_opt_self();
    if ([v15 featureValueWithInt64_])
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4660314();
    }

    else
    {
      v16 = sub_1C445FAA8(0xD000000000000013, 0x80000001C4FAFD10);
      if (v17)
      {
        v18 = v16;
        swift_isUniquelyReferenced_nonNull_native();
        v19 = v2[3];
        sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        sub_1C4F02458();
        v20 = *(v2[6] + 16 * v18 + 8);

        v21 = *(v2[7] + 8 * v18);
        sub_1C4F02478();
      }
    }

    if ([v15 featureValueWithInt64_])
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4660314();
    }

    else
    {
      v22 = sub_1C445FAA8(0xD000000000000014, 0x80000001C4FAFD30);
      if (v23)
      {
        v24 = v22;
        swift_isUniquelyReferenced_nonNull_native();
        v25 = v2[3];
        sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        sub_1C4F02458();
        v26 = *(v2[6] + 16 * v24 + 8);

        v27 = *(v2[7] + 8 * v24);
        sub_1C4F02478();
      }
    }

    return;
  }

  v6 = v5;
  if (v5 < 1)
  {
    goto LABEL_29;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = (v4 & 0xC000000000000001) != 0 ? MEMORY[0x1C6940F90](v9, v4) : *(v4 + 8 * v9 + 32);
    v11 = v10;
    sub_1C4ABB5F4(v10);
    if (v12)
    {
      break;
    }

    v14 = [v11 unknownPersonID];
    if (v14)
    {

      v13 = __OFADD__(v7++, 1);
      if (v13)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

LABEL_16:
    if (v6 == ++v9)
    {
      goto LABEL_19;
    }
  }

  v13 = __OFADD__(v8++, 1);
  if (!v13)
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}