id _CSEmbeddedFBSDisplayConfiguration()
{
  if (_CSEmbeddedFBSDisplayConfiguration_onceToken != -1)
  {
    _CSEmbeddedFBSDisplayConfiguration_cold_1();
  }

  v1 = _CSEmbeddedFBSDisplayConfiguration_mainDisplayConfiguration;

  return v1;
}

uint64_t CSTimeNumberingSystemStringToType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"latn"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"arab"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"deva"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"khmr"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"mymr"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"beng"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"guru"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"gujr"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"taml"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"telu"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"mlym"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"knda"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"orya"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"olck"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"mtei"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"arabext"])
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id CSLogCommon()
{
  if (CSLogCommon_onceToken != -1)
  {
    CSLogCommon_cold_1();
  }

  v1 = CSLogCommon___logObj;

  return v1;
}

uint64_t sub_1A2D665D4()
{
  v1 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v2 = sub_1A2D9FB70();

  v3 = [v1 initWithString_];

  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xF8);

  return v4(v3);
}

uint64_t sub_1A2D66688()
{
  v1 = *(**(v0 + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 152);

  v3 = v1(v2);

  v4 = [v3 string];

  v5 = sub_1A2D9FB80();
  return v5;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1A2D667EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1A2D66894()
{
  v1 = *(**(v0 + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 424);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

uint64_t sub_1A2D66908()
{
  swift_getKeyPath();
  (*(*v0 + 560))();

  swift_beginAccess();
  return v0[64];
}

id CSFrameworkBundle()
{
  if (CSFrameworkBundle___once != -1)
  {
    CSFrameworkBundle_cold_1();
  }

  v1 = CSFrameworkBundle___bundle;

  return v1;
}

uint64_t sub_1A2D66F6C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v70 = a4;
  v71 = a2;
  v73 = a1;
  v78 = a5;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3288);
  MEMORY[0x1EEE9AC00](v66);
  v61 = (&v60 - v6);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3290);
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v60 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3298);
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v60 - v8;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B32A0);
  MEMORY[0x1EEE9AC00](v76);
  v67 = &v60 - v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B32A8);
  v10 = MEMORY[0x1EEE9AC00](v74);
  v62 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v60 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B32B0);
  MEMORY[0x1EEE9AC00](v63);
  v60 = (&v60 - v13);
  v14 = type metadata accessor for TitleLabelUpdate(0);
  v15 = (v14 - 8);
  v69 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v60 - v20;
  v68 = 0x80000001A2DA5AF0;
  v22 = (*(*a3 + 184))(v19);
  v23 = [v22 string];

  v24 = sub_1A2D9FB80();
  v26 = v25;

  v27 = (*(*a3 + 424))();
  v28 = (*(*a3 + 280))();
  v29 = [v28 fontName];

  v30 = sub_1A2D9FB80();
  v32 = v31;

  sub_1A2D9F5E0();
  v33 = &v21[v15[7]];
  *v33 = 0xD000000000000020;
  *(v33 + 1) = v68;
  v34 = &v21[v15[8]];
  *v34 = v24;
  v34[1] = v26;
  v35 = v27 & 1;
  v36 = v70;
  v21[v15[9]] = v35;
  v37 = &v21[v15[10]];
  *v37 = v30;
  v37[1] = v32;
  sub_1A2D8DDB0(v21, v18);
  swift_beginAccess();
  v38 = *(v36 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v36 + 16) = v38;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v38 = sub_1A2D8CD00(0, v38[2] + 1, 1, v38);
    *(v36 + 16) = v38;
  }

  v41 = v38[2];
  v40 = v38[3];
  if (v41 >= v40 >> 1)
  {
    v38 = sub_1A2D8CD00(v40 > 1, v41 + 1, 1, v38);
  }

  v38[2] = v41 + 1;
  sub_1A2D8DE14(v18, v38 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v41);
  *(v36 + 16) = v38;
  swift_endAccess();
  if (v41 >= 7)
  {
    swift_beginAccess();
    sub_1A2D8D79C(0, 1);
    swift_endAccess();
  }

  v42 = sub_1A2D8DE78(v21);
  v43 = (*(*a3 + 328))(v42);
  if (v43 == 2)
  {
    v51 = sub_1A2D9F8E0();
    v45 = v61;
    *v61 = v51;
    *(v45 + 8) = 0;
    *(v45 + 16) = 1;
    v52 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3478) + 44);
    v53 = v72;
    sub_1A2D679A8(v73, v71 & 1, a3, v36, v72);
    v54 = v62;
    sub_1A2D8FE14(v53, v62, &qword_1EB0B32A8);
    *v52 = 0;
    *(v52 + 8) = 1;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3480);
    sub_1A2D8FE14(v54, v52 + *(v55 + 48), &qword_1EB0B32A8);
    sub_1A2D8FE7C(v53, &qword_1EB0B32A8);
    sub_1A2D8FE7C(v54, &qword_1EB0B32A8);
    v50 = &qword_1EB0B3288;
    sub_1A2D8FE14(v45, v65, &qword_1EB0B3288);
    swift_storeEnumTagMultiPayload();
    sub_1A2D8E774(&qword_1EB0B32C0, &qword_1EB0B32B0);
  }

  else
  {
    if (v43)
    {
      v58 = v72;
      sub_1A2D679A8(v73, v71 & 1, a3, v36, v72);
      v50 = &qword_1EB0B32A8;
      sub_1A2D8FE14(v58, v77, &qword_1EB0B32A8);
      swift_storeEnumTagMultiPayload();
      sub_1A2D8DED4();
      sub_1A2D8DFFC();
      sub_1A2D9F950();
      v57 = v58;
      return sub_1A2D8FE7C(v57, v50);
    }

    v44 = sub_1A2D9F8E0();
    v45 = v60;
    *v60 = v44;
    *(v45 + 8) = 0;
    *(v45 + 16) = 1;
    v46 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3488) + 44);
    v47 = v72;
    sub_1A2D679A8(v73, v71 & 1, a3, v36, v72);
    v48 = v62;
    sub_1A2D8FE14(v47, v62, &qword_1EB0B32A8);
    sub_1A2D8FE14(v48, v46, &qword_1EB0B32A8);
    v49 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0B3490) + 48);
    *v49 = 0;
    *(v49 + 8) = 1;
    sub_1A2D8FE7C(v47, &qword_1EB0B32A8);
    sub_1A2D8FE7C(v48, &qword_1EB0B32A8);
    v50 = &qword_1EB0B32B0;
    sub_1A2D8FE14(v45, v65, &qword_1EB0B32B0);
    swift_storeEnumTagMultiPayload();
    sub_1A2D8E774(&qword_1EB0B32C0, &qword_1EB0B32B0);
  }

  sub_1A2D8E774(&qword_1EB0B32C8, &qword_1EB0B3288);
  v56 = v67;
  sub_1A2D9F950();
  sub_1A2D8FE14(v56, v77, &qword_1EB0B32A0);
  swift_storeEnumTagMultiPayload();
  sub_1A2D8DED4();
  sub_1A2D8DFFC();
  sub_1A2D9F950();
  sub_1A2D8FE7C(v56, &qword_1EB0B32A0);
  v57 = v45;
  return sub_1A2D8FE7C(v57, v50);
}

uint64_t sub_1A2D67928()
{
  swift_getKeyPath();
  (*(*v0 + 560))();

  swift_beginAccess();
  return v0[6];
}

uint64_t sub_1A2D679A8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v126 = a4;
  v117 = a2;
  v128 = a5;
  v129 = a1;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0B3400);
  MEMORY[0x1EEE9AC00](v127);
  v7 = &v104 - v6;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0B3550);
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v104 - v8;
  v9 = sub_1A2D9F790();
  v113 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v112 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1A2D9F8D0();
  v121 = *(v123 - 8);
  v11 = MEMORY[0x1EEE9AC00](v123);
  v119 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v120 = &v104 - v13;
  v14 = sub_1A2D9F8B0();
  v115 = *(v14 - 8);
  v116 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v114 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A2D9F5A0();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0B3320);
  MEMORY[0x1EEE9AC00](v106);
  v18 = &v104 - v17;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0B3300);
  MEMORY[0x1EEE9AC00](v107);
  v118 = &v104 - v19;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0B32F0);
  MEMORY[0x1EEE9AC00](v108);
  v110 = &v104 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0B32E0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v109 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v111 = &v104 - v25;
  v26 = (*(*a3 + 184))(v24);
  v27 = (*(*a3 + 472))();
  v122 = v26;
  sub_1A2D9F5B0();
  v28 = sub_1A2D9F9D0();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  if (v27)
  {
    v105 = v9;
    v35 = v117;
    if ((v117 & 1) == 0)
    {
      v36 = v129;

      sub_1A2D9FC20();
      v37 = sub_1A2D9F980();
      v104 = v21;
      v38 = v35;
      v39 = v37;
      sub_1A2D9F6A0();

      v35 = v38;
      v21 = v104;
      v40 = v114;
      sub_1A2D9F8A0();
      swift_getAtKeyPath();
      sub_1A2D68964(v36, 0);
      (*(v115 + 8))(v40, v116);
    }

    sub_1A2D68970(a3, v28, v30, v32 & 1, v34, v18);
    sub_1A2D690B0(v28, v30, v32 & 1);

    v41 = sub_1A2D9F7D0();
    v42 = sub_1A2D9F990();
    v43 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0B3360) + 36)];
    *v43 = v41;
    v43[8] = v42;
    (*(*a3 + 280))();
    v44 = sub_1A2D9F9A0();
    KeyPath = swift_getKeyPath();
    v46 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0B3350) + 36)];
    *v46 = KeyPath;
    v46[1] = v44;
    v47 = (*(*a3 + 376))();
    v48 = swift_getKeyPath();
    v49 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0B3340) + 36)];
    *v49 = v48;
    *(v49 + 1) = v47;
    v50 = swift_getKeyPath();
    v51 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0B3330) + 36)];
    *v51 = v50;
    *(v51 + 1) = 1;
    v51[16] = 0;
    *&v18[*(v106 + 36)] = 1;
    v52 = v129;
    if ((v35 & 1) == 0)
    {

      sub_1A2D9FC20();
      v80 = sub_1A2D9F980();
      sub_1A2D9F6A0();

      v81 = v114;
      sub_1A2D9F8A0();
      swift_getAtKeyPath();
      sub_1A2D68964(v52, 0);
      (*(v115 + 8))(v81, v116);
    }

    v82 = v118;
    sub_1A2D691D0(a3);
    sub_1A2D8FE7C(v18, &unk_1EB0B3320);
    v83 = v120;
    sub_1A2D9F8C0();
    v84 = v121;
    v85 = v123;
    (*(v121 + 16))(v119, v83, v123);
    sub_1A2D8FCF8(&unk_1EB0B2EC8, MEMORY[0x1E697F260]);
    v86 = sub_1A2D9F7A0();
    v87 = (*(v84 + 8))(v83, v85);
    *(v82 + *(v107 + 36)) = v86;
    if ((*(*a3 + 528))(v87) == 1)
    {
      if (v35)
      {
        if ((v52 & 1) == 0)
        {
LABEL_13:
          v88 = MEMORY[0x1E697DBB8];
LABEL_16:
          v91 = v113;
          v92 = v112;
          v93 = v105;
          (*(v113 + 104))(v112, *v88, v105);
          v94 = swift_getKeyPath();
          v95 = v110;
          v96 = &v110[*(v108 + 36)];
          v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B33F0);
          (*(v91 + 32))(v96 + *(v97 + 28), v92, v93);
          *v96 = v94;
          sub_1A2D8FDAC(v118, v95, &unk_1EB0B3300);
          v98 = swift_allocObject();
          *(v98 + 16) = v52;
          LOBYTE(v96) = v35 & 1;
          *(v98 + 24) = v35 & 1;
          v99 = v126;
          *(v98 + 32) = a3;
          *(v98 + 40) = v99;
          *(v98 + 48) = v122;
          v100 = v109;
          sub_1A2D8FDAC(v95, v109, &unk_1EB0B32F0);
          v101 = (v100 + *(v21 + 36));
          *v101 = sub_1A2D8FDA0;
          v101[1] = v98;
          v101[2] = 0;
          v101[3] = 0;
          v102 = v111;
          sub_1A2D8FDAC(v100, v111, &unk_1EB0B32E0);
          sub_1A2D8FE14(v102, v125, &unk_1EB0B32E0);
          swift_storeEnumTagMultiPayload();
          sub_1A2D68958(v52, v96);
          sub_1A2D8E088();
          sub_1A2D8E7BC();

          sub_1A2D9F950();
          v78 = v102;
          v79 = &unk_1EB0B32E0;
          return sub_1A2D8FE7C(v78, v79);
        }
      }

      else
      {

        sub_1A2D9FC20();
        v89 = sub_1A2D9F980();
        sub_1A2D9F6A0();

        v90 = v114;
        sub_1A2D9F8A0();
        swift_getAtKeyPath();
        sub_1A2D68964(v52, 0);
        (*(v115 + 8))(v90, v116);
        if (v130 != 1)
        {
          goto LABEL_13;
        }
      }
    }

    v88 = MEMORY[0x1E697DBA8];
    goto LABEL_16;
  }

  v53 = v129;
  v54 = v117;
  if ((v117 & 1) == 0)
  {

    sub_1A2D9FC20();
    v55 = v54;
    v56 = sub_1A2D9F980();
    v53 = v129;
    sub_1A2D9F6A0();

    v54 = v55;
    v57 = v114;
    sub_1A2D9F8A0();
    swift_getAtKeyPath();
    sub_1A2D68964(v53, 0);
    (*(v115 + 8))(v57, v116);
  }

  sub_1A2D68970(a3, v28, v30, v32 & 1, v34, v7);
  sub_1A2D690B0(v28, v30, v32 & 1);

  v58 = sub_1A2D9FA50();
  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3470) + 36)] = v58;
  v59 = sub_1A2D9F7D0();
  v60 = sub_1A2D9F990();
  v61 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0B3460) + 36)];
  *v61 = v59;
  v61[8] = v60;
  (*(*a3 + 280))();
  v62 = sub_1A2D9F9A0();
  v63 = swift_getKeyPath();
  v64 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0B3450) + 36)];
  *v64 = v63;
  v64[1] = v62;
  v65 = (*(*a3 + 376))();
  v66 = swift_getKeyPath();
  v67 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0B3440) + 36)];
  *v67 = v66;
  *(v67 + 1) = v65;
  v68 = swift_getKeyPath();
  v69 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0B3430) + 36)];
  *v69 = v68;
  *(v69 + 1) = 1;
  v69[16] = 0;
  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0B3420) + 36)] = 1;
  v70 = v120;
  sub_1A2D9F8C0();
  v71 = v121;
  v72 = v123;
  (*(v121 + 16))(v119, v70, v123);
  sub_1A2D8FCF8(&unk_1EB0B2EC8, MEMORY[0x1E697F260]);
  v73 = sub_1A2D9F7A0();
  (*(v71 + 8))(v70, v72);
  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0B3410) + 36)] = v73;
  v74 = swift_allocObject();
  *(v74 + 16) = v53;
  LOBYTE(v73) = v54 & 1;
  *(v74 + 24) = v54 & 1;
  v76 = v126;
  v75 = v127;
  *(v74 + 32) = a3;
  *(v74 + 40) = v76;
  *(v74 + 48) = v122;
  v77 = &v7[*(v75 + 36)];
  *v77 = sub_1A2D8FD40;
  v77[1] = v74;
  v77[2] = 0;
  v77[3] = 0;
  sub_1A2D8FE14(v7, v125, &unk_1EB0B3400);
  swift_storeEnumTagMultiPayload();

  sub_1A2D68958(v53, v73);
  sub_1A2D8E088();
  sub_1A2D8E7BC();

  sub_1A2D9F950();
  v78 = v7;
  v79 = &unk_1EB0B3400;
  return sub_1A2D8FE7C(v78, v79);
}

uint64_t sub_1A2D68958(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1A2D68964(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1A2D68970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v45 = a3;
  v46 = a5;
  v43 = a4;
  v44 = a2;
  v48 = a6;
  v7 = sub_1A2D9F7F0();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x1EEE9AC00]();
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B34A0);
  MEMORY[0x1EEE9AC00]();
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0B3380);
  v40 = *(v12 - 8);
  MEMORY[0x1EEE9AC00]();
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3378);
  v41 = *(v15 - 8);
  MEMORY[0x1EEE9AC00]();
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B34A8);
  v42 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00]();
  v21 = &v37 - v20;
  if ((*(*a1 + 472))(v19))
  {
    sub_1A2D9F8F0();
    v22 = sub_1A2D9F9B0();
    if ((*(*a1 + 424))(v22))
    {
    }

    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1A2D9F9F0();
    v34 = (*(v40 + 8))(v14, v12);
    (*(*a1 + 496))(v34);
    v49 = v12;
    v50 = OpaqueTypeConformance2;
    v35 = swift_getOpaqueTypeConformance2();
    sub_1A2D9F9E0();

    (*(v41 + 8))(v17, v15);
    v36 = v42;
    (*(v42 + 16))(v11, v21, v18);
    swift_storeEnumTagMultiPayload();
    v49 = v15;
    v50 = v35;
    swift_getOpaqueTypeConformance2();
    sub_1A2D9F950();
    return (*(v36 + 8))(v21, v18);
  }

  else
  {
    sub_1A2D9F7E0();
    v23 = sub_1A2D9F9C0();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    (*(v38 + 8))(v9, v39);
    *v11 = v23;
    *(v11 + 1) = v25;
    v11[16] = v27 & 1;
    *(v11 + 3) = v29;
    swift_storeEnumTagMultiPayload();
    v30 = swift_getOpaqueTypeConformance2();
    v49 = v12;
    v50 = v30;
    v31 = swift_getOpaqueTypeConformance2();
    v49 = v15;
    v50 = v31;
    swift_getOpaqueTypeConformance2();
    return sub_1A2D9F950();
  }
}

uint64_t sub_1A2D68F68()
{
  swift_getKeyPath();
  (*(*v0 + 560))();

  swift_beginAccess();
  return v0[65];
}

uint64_t sub_1A2D68FE8()
{
  result = (*(*v0 + 232))();
  if (result)
  {
    return sub_1A2D9FA40();
  }

  return result;
}

void *sub_1A2D69028()
{
  swift_getKeyPath();
  (*(*v0 + 560))();

  swift_beginAccess();
  v1 = v0[4];
  v2 = v1;
  return v1;
}

uint64_t sub_1A2D690B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_1A2D690C0()
{
  swift_getKeyPath();
  (*(*v0 + 560))();

  swift_beginAccess();
  v1 = v0[5];

  return v1;
}

double sub_1A2D69150()
{
  swift_getKeyPath();
  (*(*v0 + 560))();

  swift_beginAccess();
  return v0[7];
}

uint64_t sub_1A2D691D0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0B33C0);
  MEMORY[0x1EEE9AC00]();
  v6 = &v12 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3560);
  v7 = MEMORY[0x1EEE9AC00]();
  v9 = &v12 - v8;
  if ((*(*a1 + 472))(v7))
  {
    sub_1A2D8FE14(v2, v9, &unk_1EB0B3320);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0B3320);
    sub_1A2D8E310();
    sub_1A2D69420();
    return sub_1A2D9F950();
  }

  else
  {
    v11 = sub_1A2D9FA50();
    sub_1A2D8FE14(v2, v6, &unk_1EB0B3320);
    *&v6[*(v4 + 36)] = v11;
    sub_1A2D8FE14(v6, v9, &unk_1EB0B33C0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0B3320);
    sub_1A2D8E310();
    sub_1A2D69420();
    sub_1A2D9F950();
    return sub_1A2D8FE7C(v6, &unk_1EB0B33C0);
  }
}

unint64_t sub_1A2D69420()
{
  result = qword_1ED6915B8;
  if (!qword_1ED6915B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0B33C0);
    sub_1A2D8E310();
    sub_1A2D8E774(&unk_1ED691598, &unk_1EB0B33D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6915B8);
  }

  return result;
}

void sub_1A2D69568(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for TitleLabelUpdate(0);
  v40 = *(v4 - 1);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - v8;
  if (qword_1ED691E10 != -1)
  {
    swift_once();
  }

  v39 = v7;
  v10 = sub_1A2D9F6D0();
  __swift_project_value_buffer(v10, qword_1ED692250);
  v11 = sub_1A2D9F6B0();
  v12 = sub_1A2D9FC30();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a1 & 1;
    _os_log_impl(&dword_1A2D63000, v11, v12, "[TitleElementViewAdapter] text became visible: %{BOOL}d", v13, 8u);
    MEMORY[0x1A58E72D0](v13, -1, -1);
  }

  v14 = *(v2 + OBJC_IVAR___CSTitleElementViewAdapter_stateCaptureLogger);
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_1A2D9FD20();
  MEMORY[0x1A58E64F0](0xD000000000000037, 0x80000001A2DA60B0);
  v15 = sub_1A2D9FBF0();
  v37 = v42;
  v38 = v41;
  v16 = MEMORY[0x1E69E7D40];
  v17 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x108))(v15);
  v19 = v18;
  v20 = (*((*v16 & *v2) + 0x98))();
  v21 = (*((*v16 & *v2) + 0x138))();
  v22 = [v21 fontName];

  v23 = sub_1A2D9FB80();
  v25 = v24;

  sub_1A2D9F5E0();
  v26 = &v9[v4[5]];
  v27 = v37;
  *v26 = v38;
  *(v26 + 1) = v27;
  v28 = &v9[v4[6]];
  *v28 = v17;
  v28[1] = v19;
  v9[v4[7]] = v20 & 1;
  v29 = &v9[v4[8]];
  *v29 = v23;
  v29[1] = v25;
  v30 = v39;
  sub_1A2D8DDB0(v9, v39);
  swift_beginAccess();
  v31 = *(v14 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v14 + 16) = v31;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v31 = sub_1A2D8CD00(0, v31[2] + 1, 1, v31);
    *(v14 + 16) = v31;
  }

  v34 = v31[2];
  v33 = v31[3];
  if (v34 >= v33 >> 1)
  {
    v31 = sub_1A2D8CD00(v33 > 1, v34 + 1, 1, v31);
  }

  v31[2] = v34 + 1;
  sub_1A2D8DE14(v30, v31 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v34);
  *(v14 + 16) = v31;
  swift_endAccess();
  if (v34 >= 7)
  {
    swift_beginAccess();
    sub_1A2D8D79C(0, 1);
    swift_endAccess();
  }

  sub_1A2D8DE78(v9);
  v35 = *(v2 + OBJC_IVAR___CSTitleElementViewAdapter_hostingController);
  v36 = sub_1A2D9F910();
  sub_1A2D9F970();
  v36(&v41, 0);
}

uint64_t sub_1A2D6A2B4()
{
  v1 = type metadata accessor for AdaptiveFontProvider.LayoutContext(0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))(v2);
  v5 = *v4;
  sub_1A2D9BEC8(v4, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  return v5;
}

double sub_1A2D6A5BC(void *a1, double a2, double a3)
{
  v5 = sub_1A2D6B008(a2);

  return sub_1A2D98E04(a1, v5, a3);
}

uint64_t sub_1A2D6A644(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A2D6A67C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdaptiveTimeParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2D6A6E0@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, char *a6@<X8>)
{
  v7 = v6;
  v65 = a5;
  v66 = a3;
  v67 = a4;
  v64 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3618);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v56 - v14;
  v16 = sub_1A2D9FB00();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v6;
  if (*(v20 + 16) && (v21 = sub_1A2D6AB64(a1), (v22 & 1) != 0) && (v23 = *(v7 + 1), *(v23 + 16)) && (v24 = *(v20 + 56) + 24 * v21, v25 = *v24, v62 = *(v24 + 8), v63 = v25, v61 = *(v24 + 16), v26 = sub_1A2D6AB64(a1), (v27 & 1) != 0))
  {
    v28 = *(v23 + 56) + 24 * v26;
    v29 = *v28;
    v60 = *(v28 + 8);
    v59 = *(v28 + 16);
    v56 = type metadata accessor for AdaptiveTimeParameters(0);
    v30 = *&v7[*(v56 + 28)];
    if (*(v30 + 16) && (v31 = sub_1A2D6AB64(a1), (v32 & 1) != 0))
    {
      (*(v17 + 16))(v15, *(v30 + 56) + *(v17 + 72) * v31, v16);
      (*(v17 + 56))(v15, 0, 1, v16);
    }

    else
    {
      (*(v17 + 56))(v15, 1, 1, v16);
    }

    v36 = v61;
    sub_1A2D9499C(v15, v13);
    v37 = (*(v17 + 48))(v13, 1, v16);
    v57 = v17;
    v58 = v29;
    if (v37 == 1)
    {
      (*(v17 + 16))(v19, &v7[*(v56 + 24)], v16);
      v38 = v62;
      sub_1A2D947C0(v63, v62, v36);
      sub_1A2D947C0(v29, v60, v59);
      sub_1A2D8FE7C(v13, &qword_1EB0B3618);
    }

    else
    {
      (*(v17 + 32))(v19, v13, v16);
      v38 = v62;
      sub_1A2D947C0(v63, v62, v36);
      sub_1A2D947C0(v29, v60, v59);
    }

    v39 = v36;
    v40 = v65;
    v42 = v63;
    v41 = v64;
    v44 = v66;
    v43 = v67;
    v45 = v39;
    sub_1A2D6AC40(v64, v66, v67, v65 & 1, v63, v38, v39);
    v47 = v46;
    v48 = v40 & 1;
    v49 = v44;
    v50 = v43;
    v51 = v58;
    v52 = v60;
    LOBYTE(v44) = v59;
    sub_1A2D6AC40(v41, v49, v50, v48, v58, v60, v59);
    v54 = v53;
    sub_1A2D947AC(v42, v38, v45);
    sub_1A2D947AC(v51, v52, v44);
    *a6 = v47;
    *(a6 + 1) = v54;
    v55 = type metadata accessor for AdaptiveTimeParameters.Entry(0);
    (*(v57 + 32))(&a6[*(v55 + 24)], v19, v16);
    return (*(*(v55 - 8) + 56))(a6, 0, 1, v55);
  }

  else
  {
    v33 = type metadata accessor for AdaptiveTimeParameters.Entry(0);
    v34 = *(*(v33 - 8) + 56);

    return v34(a6, 1, 1, v33);
  }
}

unint64_t sub_1A2D6AB64(unsigned __int8 a1)
{
  sub_1A2D9FE10();
  MEMORY[0x1A58E6760](a1);
  v2 = sub_1A2D9FE40();

  return sub_1A2D6ABD0(a1, v2);
}

unint64_t sub_1A2D6ABD0(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_1A2D6AC40(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
    if (a7)
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v9 = HIBYTE(a2) & 0xF;
      }

      else
      {
        v9 = a1 & 0xFFFFFFFFFFFFLL;
      }

      v10 = 4 * v9;
      v11 = 15;
      if (v9)
      {
        do
        {
          sub_1A2D9FBE0();
          v12 = sub_1A2D9FB50();

          if (v12)
          {
            break;
          }

          v11 = sub_1A2D9FBA0();
        }

        while (v10 != v11 >> 14);
      }

      v13 = 7;
      if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
      {
        v13 = 11;
      }

      v14 = v13 | (v9 << 16);
      if (sub_1A2D6CFC8(v11, v14, a1, a2, sub_1A2D6D15C) == 4)
      {
        v15 = 15;
        if (v9)
        {
          while (sub_1A2D9FBE0() != 49 || v16 != 0xE100000000000000)
          {
            v17 = sub_1A2D9FDD0();

            if ((v17 & 1) == 0)
            {
              v15 = sub_1A2D9FBA0();
              if (v10 != v15 >> 14)
              {
                continue;
              }
            }

            goto LABEL_25;
          }
        }

LABEL_25:
        sub_1A2D6CFC8(v15, v14, a1, a2, sub_1A2D9108C);
      }
    }
  }

  else if (a7 != 2 && a7 != 3)
  {
    sub_1A2D6AC40(a1, a2, a3, a4 & 1, *(a5 + 24), *(a5 + 32), *(a5 + 40));
  }
}

uint64_t sub_1A2D6AE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1A2D9FB00();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1A2D6AF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1A2D9FB00();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1A2D6AFA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1A2D6B008(double a1)
{
  v2 = v1;
  v91 = sub_1A2D9FB00();
  v88 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v95 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36D0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v93 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v84 - v8;
  v10 = type metadata accessor for AdaptiveTimeParameters(0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v92 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v84 - v13;
  v94 = type metadata accessor for AdaptiveTimeParameters.Entry(0);
  v15 = *(v94 - 8);
  v16 = MEMORY[0x1EEE9AC00](v94);
  v90 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v84 - v19);
  v21 = MEMORY[0x1E69E7D40];
  v22 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x100);
  v23 = (v22)(v18);
  v24 = *((*v21 & *v1) + 0xE8);
  v25 = 1.0;
  if (v23 != v24() && a1 > 0.0)
  {
    v26 = v24();
    v27 = v22();
    v28 = v24();
    v29 = OBJC_IVAR___CSAdaptiveFontProvider_parameters;
    swift_beginAccess();
    sub_1A2D9BE60(v1 + v29, v14, type metadata accessor for AdaptiveTimeParameters);
    v30 = sub_1A2D90BAC();
    sub_1A2D6A6E0(3u, v30, v31, 0, 1, v9);

    sub_1A2D9BEC8(v14, type metadata accessor for AdaptiveTimeParameters);
    v32 = *(v15 + 48);
    v33 = v94;
    if (v32(v9, 1, v94) == 1)
    {
      sub_1A2D8FE7C(v9, &qword_1EB0B36D0);
    }

    else
    {
      sub_1A2D6AFA0(v9, v20, type metadata accessor for AdaptiveTimeParameters.Entry);
      v34 = v92;
      sub_1A2D9BE60(v2 + v29, v92, type metadata accessor for AdaptiveTimeParameters);
      v35 = sub_1A2D90BAC();
      v36 = v93;
      sub_1A2D6A6E0(0, v35, v37, 0, 1, v93);

      sub_1A2D9BEC8(v34, type metadata accessor for AdaptiveTimeParameters);
      if (v32(v36, 1, v33) == 1)
      {
        sub_1A2D9BEC8(v20, type metadata accessor for AdaptiveTimeParameters.Entry);
        sub_1A2D8FE7C(v36, &qword_1EB0B36D0);
      }

      else
      {
        v38 = (a1 - v26) / (v27 - v28);
        v39 = v90;
        sub_1A2D6AFA0(v36, v90, type metadata accessor for AdaptiveTimeParameters.Entry);
        v40 = *v39;
        v86 = *(v39 + 8) - *v39;
        v87 = v40;
        v42 = *v20;
        v41 = v20[1];
        v94 = v20;
        v85 = v42;
        v84 = v41 - v42;
        v89 = OBJC_IVAR___CSAdaptiveFontProvider_maximumFont;
        v92 = OBJC_IVAR___CSAdaptiveFontProvider_minimumFont;
        v93 = (v88 + 8);
        v43 = 10;
        v44 = -0.5;
        v45 = 0x1FAA5F000uLL;
        v46 = v91;
        v47 = v95;
        do
        {
          v48 = v45;
          sub_1A2D9FAF0();
          sub_1A2D9FAC0();
          v49 = *v93;
          (*v93)(v47, v46);
          sub_1A2D9FAC0();
          v51 = v50;
          sub_1A2D9FAC0();
          v53 = *(v2 + v92);
          v54 = 0.0;
          if (v53 && (v55 = *(v2 + v89)) != 0)
          {
            v56 = v52;
            v57 = v53;
            v58 = v55;
            v45 = v48;
            [v58 (v48 + 1400)];
            v60 = v59;
            [v57 (v48 + 1400)];
            if (v61 >= v60)
            {
            }

            else
            {
              v62 = v87 + v86 * v51;
              v63 = v85 + v84 * v56;
              [v57 (v48 + 1400)];
              v65 = v62 - v64;
              [v58 (v48 + 1400)];
              v67 = v66;
              [v57 (v48 + 1400)];
              v69 = v65 / (v67 - v68);
              [v57 ascender];
              v71 = v70;
              [v58 ascender];
              v73 = v71 + v69 * (v72 - v71);
              [v57 capHeight];
              v75 = v74;
              [v58 capHeight];
              v77 = v73 + (v63 / 100.0 + -1.0) * (v75 + v69 * (v76 - v75));
              v44 = -0.5;
              sub_1A2D6B844();
              v45 = v48;
              v79 = v78;

              v54 = v79 + v77;
            }

            v39 = v90;
            v46 = v91;
          }

          else
          {
            v45 = v48;
          }

          if (vabdd_f64(v54, a1) < 0.5)
          {
            break;
          }

          v38 = v38 + (v54 - a1) / a1 * v44;
          --v43;
        }

        while (v43);
        v80 = v94;
        v81 = v95;
        sub_1A2D9FAF0();
        sub_1A2D9FAC0();
        v25 = v82;
        v49(v81, v46);
        sub_1A2D9BEC8(v39, type metadata accessor for AdaptiveTimeParameters.Entry);
        sub_1A2D9BEC8(v80, type metadata accessor for AdaptiveTimeParameters.Entry);
      }
    }
  }

  return v25;
}

double sub_1A2D6B7BC()
{
  v1 = OBJC_IVAR___CSAdaptiveFontProvider_maximumHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_1A2D6B800()
{
  v1 = OBJC_IVAR___CSAdaptiveFontProvider_minimumHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A2D6B844()
{
  v1 = type metadata accessor for AdaptiveTimeParameters(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36D0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v25 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v13 = *(v0 + OBJC_IVAR___CSAdaptiveFontProvider_minimumFont);
  if (v13)
  {
    v14 = *(v0 + OBJC_IVAR___CSAdaptiveFontProvider_maximumFont);
    if (v14)
    {
      v15 = v13;
      v16 = v14;
      [v16 pointSize];
      v18 = v17;
      [v15 pointSize];
      if (v19 >= v18)
      {
      }

      else
      {
        [v15 pointSize];
        [v16 pointSize];
        [v15 pointSize];
        v20 = OBJC_IVAR___CSAdaptiveFontProvider_parameters;
        swift_beginAccess();
        sub_1A2D9BE60(v0 + v20, v3, type metadata accessor for AdaptiveTimeParameters);
        v21 = sub_1A2D90BAC();
        sub_1A2D6A6E0(7u, v21, v22, 0, 1, v12);

        sub_1A2D9BEC8(v3, type metadata accessor for AdaptiveTimeParameters);
        sub_1A2D8FE14(v12, v10, &qword_1EB0B36D0);
        v23 = type metadata accessor for AdaptiveTimeParameters.Entry(0);
        v24 = *(*(v23 - 8) + 48);
        if (v24(v10, 1, v23) == 1)
        {
          sub_1A2D8FE7C(v10, &qword_1EB0B36D0);
        }

        else
        {
          sub_1A2D9BEC8(v10, type metadata accessor for AdaptiveTimeParameters.Entry);
        }

        sub_1A2D8FE14(v12, v7, &qword_1EB0B36D0);
        if (v24(v7, 1, v23) == 1)
        {
          sub_1A2D8FE7C(v7, &qword_1EB0B36D0);
        }

        else
        {
          sub_1A2D9BEC8(v7, type metadata accessor for AdaptiveTimeParameters.Entry);
        }

        [v16 ascender];
        [v16 capHeight];
        [v15 ascender];
        [v15 capHeight];

        sub_1A2D8FE7C(v12, &qword_1EB0B36D0);
      }
    }
  }
}

uint64_t sub_1A2D6BC38(void *a1)
{
  v35 = sub_1A2D6BFD0(MEMORY[0x1E69E7CC0]);
  v3 = v1 + OBJC_IVAR___CSAdaptiveFontProvider_parameters;
  swift_beginAccess();
  v4 = *(v3 + *(type metadata accessor for AdaptiveTimeParameters(0) + 32));
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 56);
  v8 = (v5 + 63) >> 6;
  attribute = *MEMORY[0x1E6965890];

  v9 = 0;
  while (v7)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = *(*(v4 + 48) + (v11 | (v9 << 6)));
    if (v12 <= 3)
    {
      if (*(*(v4 + 48) + (v11 | (v9 << 6))) <= 1u)
      {
        if (v12 != 1)
        {
          [a1 pointSize];
          v15 = v19;
          goto LABEL_30;
        }

        v13 = 2003265652;
      }

      else if (v12 == 2)
      {
        v13 = 2003072104;
      }

      else
      {
        v13 = 1212631124;
      }

LABEL_25:
      v16 = CTFontCopyVariation(a1);
      if (v16)
      {
        v17 = v16;
        LODWORD(v37) = v13;
        v18 = [(__CFDictionary *)v16 __swift_objectForKeyedSubscript:sub_1A2D9FDE0()];
        swift_unknownObjectRelease();
        if (v18)
        {
          sub_1A2D9FCD0();
          swift_unknownObjectRelease();

          sub_1A2D6C348(&v38, &v37);
          if (swift_dynamicCast())
          {
            v15 = v36;
LABEL_30:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v38 = v35;
            v21 = sub_1A2D6AB64(v12);
            v23 = *(v35 + 16);
            v24 = (v22 & 1) == 0;
            v25 = __OFADD__(v23, v24);
            v26 = v23 + v24;
            if (v25)
            {
              goto LABEL_42;
            }

            v27 = v22;
            if (*(v35 + 24) >= v26)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v32 = v21;
                sub_1A2D9B718();
                v21 = v32;
              }
            }

            else
            {
              sub_1A2D6C0BC(v26, isUniquelyReferenced_nonNull_native);
              v21 = sub_1A2D6AB64(v12);
              if ((v27 & 1) != (v28 & 1))
              {
                goto LABEL_44;
              }
            }

            v29 = v38;
            v35 = v38;
            if (v27)
            {
              *(*(v38 + 56) + 8 * v21) = v15;
            }

            else
            {
              *(v38 + 8 * (v21 >> 6) + 64) |= 1 << v21;
              *(v29[6] + v21) = v12;
              *(v29[7] + 8 * v21) = v15;
              v30 = v29[2];
              v25 = __OFADD__(v30, 1);
              v31 = v30 + 1;
              if (v25)
              {
                goto LABEL_43;
              }

              v29[2] = v31;
            }
          }
        }

        else
        {
        }
      }
    }

    else
    {
      if (*(*(v4 + 48) + (v11 | (v9 << 6))) <= 5u)
      {
        if (v12 == 4)
        {
          v13 = 1129270608;
        }

        else
        {
          v13 = 1397704276;
        }

        goto LABEL_25;
      }

      if (v12 == 6)
      {
        v14 = CTFontCopyAttribute(a1, attribute);
        if (v14)
        {
          *&v38 = v14;
          if (swift_dynamicCast())
          {
            v15 = v37;
            goto LABEL_30;
          }
        }
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return v35;
    }

    v7 = *(v4 + 56 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_1A2D9FE00();
  __break(1u);
  return result;
}

unint64_t sub_1A2D6BFD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36F0);
    v3 = sub_1A2D9FDB0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1A2D6AB64(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A2D6C0BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36F0);
  result = sub_1A2D9FD90();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_1A2D6C358();
      result = sub_1A2D9FB40();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

_OWORD *sub_1A2D6C348(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1A2D6C358()
{
  result = qword_1ED691A30[0];
  if (!qword_1ED691A30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED691A30);
  }

  return result;
}

uint64_t sub_1A2D6C3AC()
{
  v1 = *v0;
  sub_1A2D9FE10();
  MEMORY[0x1A58E6760](v1);
  return sub_1A2D9FE40();
}

uint64_t sub_1A2D6C3F0(uint64_t a1, uint64_t a2, unint64_t a3, double a4, double a5)
{
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36E8);
  MEMORY[0x1EEE9AC00](v92);
  v95 = &v79 - v10;
  v91 = type metadata accessor for AdaptiveTimeParameters.Entry(0);
  v96 = *(v91 - 8);
  v11 = MEMORY[0x1EEE9AC00](v91);
  v81 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v80 = &v79 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v79 - v15;
  v16 = type metadata accessor for AdaptiveTimeParameters(0);
  v17 = v16 - 8;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v79 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36D0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v97 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v79 - v26;
  if (a5 < 0.0)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = a5;
  }

  if (a5 <= 1.0)
  {
    v29 = v28;
  }

  else
  {
    v29 = 1.0;
  }

  v30 = v5 + OBJC_IVAR___CSAdaptiveFontProvider_portraitParameters;
  swift_beginAccess();
  v31 = *(v17 + 40);
  v89 = v30;
  v32 = *(v30 + v31);
  v33 = v5 + OBJC_IVAR___CSAdaptiveFontProvider_landscapeParameters;
  swift_beginAccess();
  v88 = v33;

  v35 = v32;
  v36 = v27;
  v37 = sub_1A2D6CC8C(v34, v35);
  v38 = v37 + 56;
  v39 = 1 << *(v37 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v37 + 56);
  v42 = (v39 + 63) >> 6;
  v85 = (v96 + 48);
  v96 = v37;

  v43 = 0;
  v83 = MEMORY[0x1E69E7CC0];
  v93 = a1;
  v90 = v22;
  v87 = v38;
  v94 = v20;
  v86 = v42;
LABEL_10:
  v44 = v43;
  if (!v41)
  {
    goto LABEL_12;
  }

  do
  {
    v43 = v44;
LABEL_15:
    v45 = *(*(v96 + 48) + (__clz(__rbit64(v41)) | (v43 << 6)));
    sub_1A2D9BE60(v89, v22, type metadata accessor for AdaptiveTimeParameters);
    if (*(a1 + 16) && (v46 = sub_1A2D6AB64(v45), (v47 & 1) != 0))
    {
      v48 = 0;
      v49 = *(*(a1 + 56) + 8 * v46);
    }

    else
    {
      v49 = 0;
      v48 = 1;
    }

    sub_1A2D6A6E0(v45, a2, a3, v49, v48, v36);
    sub_1A2D9BEC8(v22, type metadata accessor for AdaptiveTimeParameters);
    sub_1A2D9BE60(v88, v20, type metadata accessor for AdaptiveTimeParameters);
    if (*(a1 + 16) && (v50 = sub_1A2D6AB64(v45), (v51 & 1) != 0))
    {
      v52 = 0;
      v53 = *(*(a1 + 56) + 8 * v50);
    }

    else
    {
      v53 = 0;
      v52 = 1;
    }

    v41 &= v41 - 1;
    v54 = v97;
    v84 = v45;
    v55 = a2;
    v56 = a2;
    v57 = a3;
    sub_1A2D6A6E0(v45, v56, a3, v53, v52, v97);
    sub_1A2D9BEC8(v20, type metadata accessor for AdaptiveTimeParameters);
    v58 = v95;
    v59 = v95 + *(v92 + 48);
    v60 = v36;
    sub_1A2D8FE14(v36, v95, &qword_1EB0B36D0);
    sub_1A2D8FE14(v54, v59, &qword_1EB0B36D0);
    v61 = *v85;
    v62 = v91;
    LODWORD(v58) = (*v85)(v58, 1, v91);
    v63 = v61(v59, 1, v62);
    if (v58 != 1)
    {
      v64 = v95;
      if (v63 == 1)
      {
LABEL_28:
        v65 = v82;
        sub_1A2D6AFA0(v64, v82, type metadata accessor for AdaptiveTimeParameters.Entry);
        v66 = sub_1A2D6CE70();
        sub_1A2D9BEC8(v65, type metadata accessor for AdaptiveTimeParameters.Entry);
        sub_1A2D8FE7C(v97, &qword_1EB0B36D0);
        v36 = v60;
        sub_1A2D8FE7C(v60, &qword_1EB0B36D0);
      }

      else
      {
        v67 = v80;
        sub_1A2D6AFA0(v95, v80, type metadata accessor for AdaptiveTimeParameters.Entry);
        v68 = v81;
        sub_1A2D6AFA0(v59, v81, type metadata accessor for AdaptiveTimeParameters.Entry);
        v69 = sub_1A2D6CE70();
        v70 = sub_1A2D6CE70();
        sub_1A2D9BEC8(v68, type metadata accessor for AdaptiveTimeParameters.Entry);
        sub_1A2D9BEC8(v67, type metadata accessor for AdaptiveTimeParameters.Entry);
        sub_1A2D8FE7C(v97, &qword_1EB0B36D0);
        v36 = v60;
        sub_1A2D8FE7C(v60, &qword_1EB0B36D0);
        v66 = v69 + v29 * (v70 - v69);
      }

      a3 = v57;
      v71 = v83;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a2 = v55;
      v38 = v87;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v71 = sub_1A2D6CEC4(0, *(v71 + 2) + 1, 1, v71);
      }

      a1 = v93;
      v74 = *(v71 + 2);
      v73 = *(v71 + 3);
      if (v74 >= v73 >> 1)
      {
        v71 = sub_1A2D6CEC4((v73 > 1), v74 + 1, 1, v71);
      }

      *(v71 + 2) = v74 + 1;
      v83 = v71;
      v75 = &v71[16 * v74];
      v75[32] = v84;
      *(v75 + 5) = v66;
      v20 = v94;
      v22 = v90;
      v42 = v86;
      goto LABEL_10;
    }

    v64 = v59;
    v20 = v94;
    if (v63 != 1)
    {
      goto LABEL_28;
    }

    sub_1A2D8FE7C(v97, &qword_1EB0B36D0);
    v36 = v60;
    sub_1A2D8FE7C(v60, &qword_1EB0B36D0);
    v44 = v43;
    a3 = v57;
    a2 = v55;
    a1 = v93;
    v22 = v90;
    v38 = v87;
    v42 = v86;
  }

  while (v41);
  while (1)
  {
LABEL_12:
    v43 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v43 >= v42)
    {
      break;
    }

    v41 = *(v38 + 8 * v43);
    ++v44;
    if (v41)
    {
      goto LABEL_15;
    }
  }

  v76 = v83;
  if (*(v83 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36F0);
    v77 = sub_1A2D9FDB0();
  }

  else
  {
    v77 = MEMORY[0x1E69E7CC8];
  }

  v98 = v77;
  sub_1A2D6D168(v76, 1, &v98);
  return v98;
}

uint64_t sub_1A2D6CC8C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1A2D6CD68(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A2D6CD68(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1A2D9FE10();
  MEMORY[0x1A58E6760](a2);
  v6 = sub_1A2D9FE40();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1A2D93D50(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

double sub_1A2D6CE70()
{
  type metadata accessor for AdaptiveTimeParameters.Entry(0);
  sub_1A2D9FAC0();
  return *v0 + v1 * (v0[1] - *v0);
}

char *sub_1A2D6CEC4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3700);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t sub_1A2D6CFC8(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void *))
{
  result = sub_1A2D9FBC0();
  if (a2 >> 14 < a1 >> 14)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  if (a2 >> 14 >= a1 >> 14)
  {
    v12 = a2;
  }

  else
  {
    v12 = a1;
  }

  if (a2 >> 14 >= a1 >> 14)
  {
    v13 = a1;
  }

  else
  {
    v13 = a2;
  }

  v17 = v13;
  v14 = v12 >> 14;
  if (v12 >> 14 == v13 >> 14)
  {
    return 0;
  }

  else
  {
    v16 = 0;
    while (1)
    {
      v15 = v16 + v11;
      if (__OFADD__(v16, v11))
      {
        break;
      }

      result = sub_1A2D6D08C(&v17, a3, a4, a5);
      v16 += v11;
      if (v14 == v17 >> 14)
      {
        return v15;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1A2D6D08C(unint64_t result, uint64_t a2, unint64_t a3, uint64_t (*a4)(void *))
{
  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 4 * v4;
  if (4 * v4 == *result >> 14)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    do
    {
      result = sub_1A2D9FBA0();
      v8 = result;
      if (v5 == result >> 14)
      {
        break;
      }

      v11[0] = sub_1A2D9FBE0();
      v11[1] = v9;
      v10 = a4(v11);
    }

    while ((v10 & 1) == 0);
    *v7 = v8;
  }

  return result;
}

void sub_1A2D6D168(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 32);
  v9 = *a3;
  v10 = sub_1A2D6AB64(v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1A2D6C0BC(v15, a2 & 1);
    v10 = sub_1A2D6AB64(v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_1A2D9FE00();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_1A2D9B718();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36F8);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v21[6] + v10) = v7;
  *(v21[7] + 8 * v10) = v8;
  v22 = v21[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (!v14)
  {
    v21[2] = v23;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v24 = (a1 + 56);
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      v27 = *v24;
      v26 = *(v24 - 8);
      v28 = *a3;
      v29 = sub_1A2D6AB64(v26);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v14 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v14)
      {
        goto LABEL_23;
      }

      v34 = v30;
      if (v28[3] < v33)
      {
        sub_1A2D6C0BC(v33, 1);
        v29 = sub_1A2D6AB64(v26);
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v34)
      {
        goto LABEL_9;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      *(v36[6] + v29) = v26;
      *(v36[7] + 8 * v29) = v27;
      v37 = v36[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v36[2] = v38;
      v24 += 2;
      if (v4 == v25)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1A2D9FD20();
  MEMORY[0x1A58E64F0](0xD00000000000001BLL, 0x80000001A2DA6560);
  sub_1A2D9FD30();
  MEMORY[0x1A58E64F0](39, 0xE100000000000000);
  sub_1A2D9FD70();
  __break(1u);
}

uint64_t sub_1A2D6D4C8(void *a1, uint64_t a2)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = *(v2 + OBJC_IVAR___CSAdaptiveFontProvider_baseFont);
  }

  v6 = a1;
  v7 = [v5 fontDescriptor];
  v8 = sub_1A2D6DD94(MEMORY[0x1E69E7CC0]);
  v9 = a2 + 64;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 64);
  v13 = (v10 + 63) >> 6;
  v94 = *MEMORY[0x1E6965890];
  v14 = *MEMORY[0x1E69658F8];
  v93 = *MEMORY[0x1E6965848];

  v15 = 0;
  while (v12)
  {
LABEL_7:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = *(*(a2 + 48) + (v16 | (v15 << 6)));
    if (v17 != 7)
    {
      v95 = v7;
      v96 = v14;
      if (*(*(a2 + 48) + (v16 | (v15 << 6))) <= 2u)
      {
        if (!*(*(a2 + 48) + (v16 | (v15 << 6))))
        {
          v54 = sub_1A2D9F660();
          type metadata accessor for CFNumber(0);
          v101 = v55;
          *&v100 = v54;
          sub_1A2D6C348(&v100, &v98);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v97[0] = v8;
          v43 = sub_1A2D6E568(v93);
          v58 = v8[2];
          v59 = (v57 & 1) == 0;
          v38 = __OFADD__(v58, v59);
          v60 = v58 + v59;
          if (v38)
          {
            goto LABEL_85;
          }

          v61 = v57;
          if (v8[3] >= v60)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v78 = v43;
              sub_1A2D9B598();
              v43 = v78;
            }
          }

          else
          {
            sub_1A2D6E6C0(v60, isUniquelyReferenced_nonNull_native);
            v43 = sub_1A2D6E568(v93);
            if ((v61 & 1) != (v62 & 1))
            {
              goto LABEL_89;
            }
          }

          v7 = v95;
          v8 = *&v97[0];
          if (v61)
          {
            goto LABEL_51;
          }

          *(*&v97[0] + 8 * (v43 >> 6) + 64) |= 1 << v43;
          v72 = v93;
          *(v8[6] + 8 * v43) = v93;
          sub_1A2D6C348(&v98, (v8[7] + 32 * v43));
          v73 = v8[2];
          v38 = __OFADD__(v73, 1);
          v74 = v73 + 1;
          if (v38)
          {
            goto LABEL_87;
          }

          goto LABEL_72;
        }

LABEL_19:
        if (v8[2] && (v19 = sub_1A2D6E568(v14), (v20 & 1) != 0))
        {
          sub_1A2D667EC(v8[7] + 32 * v19, &v98);
        }

        else
        {
          v98 = 0u;
          v99 = 0u;
        }

        v97[0] = v98;
        v97[1] = v99;
        if (*(&v99 + 1))
        {
          sub_1A2D6C348(v97, &v100);
        }

        else
        {
          v21 = sub_1A2D6DEBC(MEMORY[0x1E69E7CC0]);
          v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3580);
          *&v100 = v21;
          sub_1A2D8FE7C(v97, &qword_1EB0B36E0);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3708);
        if (swift_dynamicCast())
        {
          v22 = v98;
        }

        else
        {
          v22 = sub_1A2D9B864(MEMORY[0x1E69E7CC0]);
        }

        v23 = sub_1A2D9FE50();
        v91 = v5;
        v92 = sub_1A2D9F660();
        v90 = a2;
        if ((v22 & 0xC000000000000001) != 0)
        {
          if (v22 >= 0)
          {
            v22 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v24 = sub_1A2D9FD50();
          if (__OFADD__(v24, 1))
          {
            goto LABEL_81;
          }

          v22 = sub_1A2D9B324(v22, v24 + 1);
        }

        v25 = swift_isUniquelyReferenced_nonNull_native();
        *&v100 = v22;
        v27 = sub_1A2D6E020(v23);
        v28 = *(v22 + 16);
        v29 = (v26 & 1) == 0;
        v30 = v28 + v29;
        if (__OFADD__(v28, v29))
        {
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
          type metadata accessor for CFNumber(0);
          sub_1A2D9FE00();
          __break(1u);
LABEL_89:
          type metadata accessor for CFString(0);
          result = sub_1A2D9FE00();
          __break(1u);
          return result;
        }

        v31 = v26;
        if (*(v22 + 24) >= v30)
        {
          if ((v25 & 1) == 0)
          {
            sub_1A2D6E9A0();
          }
        }

        else
        {
          sub_1A2D6E290(v30, v25);
          v32 = sub_1A2D6E020(v23);
          if ((v31 & 1) != (v33 & 1))
          {
            goto LABEL_88;
          }

          v27 = v32;
        }

        v34 = v100;
        if (v31)
        {
          v35 = *(v100 + 56);
          v36 = *(v35 + 8 * v27);
          *(v35 + 8 * v27) = v92;
        }

        else
        {
          *(v100 + 8 * (v27 >> 6) + 64) |= 1 << v27;
          *(v34[6] + 8 * v27) = v23;
          *(v34[7] + 8 * v27) = v92;
          v37 = v34[2];
          v38 = __OFADD__(v37, 1);
          v39 = v37 + 1;
          if (v38)
          {
            goto LABEL_82;
          }

          v34[2] = v39;
        }

        type metadata accessor for CFNumber(0);
        sub_1A2D6E104(&qword_1ED6914D8, type metadata accessor for CFNumber);
        v40 = sub_1A2D9FB20();

        type metadata accessor for CFDictionary(0);
        v101 = v41;
        *&v100 = v40;
        sub_1A2D6C348(&v100, &v98);
        v42 = swift_isUniquelyReferenced_nonNull_native();
        *&v97[0] = v8;
        v43 = sub_1A2D6E568(v96);
        v45 = v8[2];
        v46 = (v44 & 1) == 0;
        v38 = __OFADD__(v45, v46);
        v47 = v45 + v46;
        a2 = v90;
        v5 = v91;
        if (v38)
        {
          goto LABEL_80;
        }

        v48 = v44;
        if (v8[3] >= v47)
        {
          if ((v42 & 1) == 0)
          {
            v77 = v43;
            sub_1A2D9B598();
            v43 = v77;
          }
        }

        else
        {
          sub_1A2D6E6C0(v47, v42);
          v43 = sub_1A2D6E568(v96);
          if ((v48 & 1) != (v49 & 1))
          {
            goto LABEL_89;
          }
        }

        v7 = v95;
        v8 = *&v97[0];
        if (v48)
        {
LABEL_51:
          v50 = (v8[7] + 32 * v43);
          __swift_destroy_boxed_opaque_existential_0(v50);
          sub_1A2D6C348(&v98, v50);
          v14 = v96;
        }

        else
        {
          *(*&v97[0] + 8 * (v43 >> 6) + 64) |= 1 << v43;
          v14 = v96;
          *(v8[6] + 8 * v43) = v96;
          sub_1A2D6C348(&v98, (v8[7] + 32 * v43));
          v51 = v8[2];
          v38 = __OFADD__(v51, 1);
          v52 = v51 + 1;
          if (v38)
          {
            goto LABEL_83;
          }

          v8[2] = v52;
          v53 = v96;
        }
      }

      else
      {
        if (*(*(a2 + 48) + (v16 | (v15 << 6))) <= 4u || v17 == 5)
        {
          goto LABEL_19;
        }

        v63 = sub_1A2D9F660();
        type metadata accessor for CFNumber(0);
        v101 = v64;
        *&v100 = v63;
        sub_1A2D6C348(&v100, &v98);
        v65 = swift_isUniquelyReferenced_nonNull_native();
        *&v97[0] = v8;
        v43 = sub_1A2D6E568(v94);
        v67 = v8[2];
        v68 = (v66 & 1) == 0;
        v38 = __OFADD__(v67, v68);
        v69 = v67 + v68;
        if (v38)
        {
          goto LABEL_84;
        }

        v70 = v66;
        if (v8[3] >= v69)
        {
          if ((v65 & 1) == 0)
          {
            v79 = v43;
            sub_1A2D9B598();
            v43 = v79;
          }
        }

        else
        {
          sub_1A2D6E6C0(v69, v65);
          v43 = sub_1A2D6E568(v94);
          if ((v70 & 1) != (v71 & 1))
          {
            goto LABEL_89;
          }
        }

        v7 = v95;
        v8 = *&v97[0];
        if (v70)
        {
          goto LABEL_51;
        }

        *(*&v97[0] + 8 * (v43 >> 6) + 64) |= 1 << v43;
        v72 = v94;
        *(v8[6] + 8 * v43) = v94;
        sub_1A2D6C348(&v98, (v8[7] + 32 * v43));
        v75 = v8[2];
        v38 = __OFADD__(v75, 1);
        v74 = v75 + 1;
        if (v38)
        {
          goto LABEL_86;
        }

LABEL_72:
        v8[2] = v74;
        v76 = v72;
        v14 = v96;
      }
    }
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_79;
    }

    if (v18 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v18);
    ++v15;
    if (v12)
    {
      v15 = v18;
      goto LABEL_7;
    }
  }

  type metadata accessor for CFString(0);
  sub_1A2D6E104(&qword_1ED6914B8, type metadata accessor for CFString);
  v80 = sub_1A2D9FB20();
  CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v7, v80);

  v82 = *(a2 + 16);
  v83 = CopyWithAttributes;
  if (v82 && (v84 = sub_1A2D6AB64(0), (v85 & 1) != 0))
  {
    v86 = *(*(a2 + 56) + 8 * v84);
  }

  else
  {
    [v5 pointSize];
    v86 = v87;
  }

  v88 = [objc_opt_self() fontWithDescriptor:v83 size:v86];

  return v88;
}

unint64_t sub_1A2D6DD94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3718);
    v3 = sub_1A2D9FDB0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A2D8FE14(v4, &v11, &qword_1EB0B3720);
      v5 = v11;
      result = sub_1A2D6E568(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1A2D6C348(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A2D6DEBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3598);
    v3 = sub_1A2D9FDB0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A2D8FE14(v4, v13, &qword_1EB0B35A0);
      result = sub_1A2D8CF50(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1A2D6C348(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A2D6E020(uint64_t a1)
{
  sub_1A2D9FE10();
  type metadata accessor for CFNumber(0);
  sub_1A2D6E104(&qword_1ED6914E0, type metadata accessor for CFNumber);
  sub_1A2D9F680();
  v2 = sub_1A2D9FE40();
  return sub_1A2D6E198(a1, v2, type metadata accessor for CFNumber, &qword_1ED6914E0, type metadata accessor for CFNumber);
}

uint64_t sub_1A2D6E104(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A2D6E198(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v6 = -1 << *(v5 + 32);
  v7 = a2 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = ~v6;
    a3(0);
    sub_1A2D6E104(a4, a5);
    do
    {
      v11 = *(*(v5 + 48) + 8 * v7);
      v12 = sub_1A2D9F670();

      if (v12)
      {
        break;
      }

      v7 = (v7 + 1) & v10;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

uint64_t sub_1A2D6E290(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3710);
  v32 = a2;
  result = sub_1A2D9FD90();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v32 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      sub_1A2D9FE10();
      type metadata accessor for CFNumber(0);
      sub_1A2D6E104(&qword_1ED6914E0, type metadata accessor for CFNumber);
      sub_1A2D9F680();
      result = sub_1A2D9FE40();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1A2D6E568(uint64_t a1)
{
  sub_1A2D9FE10();
  type metadata accessor for CFString(0);
  sub_1A2D6E104(&qword_1ED6914C0, type metadata accessor for CFString);
  sub_1A2D9F680();
  v2 = sub_1A2D9FE40();
  return sub_1A2D6E198(a1, v2, type metadata accessor for CFString, &qword_1ED6914C0, type metadata accessor for CFString);
}

uint64_t sub_1A2D6E6C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3718);
  result = sub_1A2D9FD90();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        sub_1A2D6C348(v21, v31);
      }

      else
      {
        sub_1A2D667EC(v21, v31);
        v22 = v20;
      }

      sub_1A2D9FE10();
      type metadata accessor for CFString(0);
      sub_1A2D6E104(&qword_1ED6914C0, type metadata accessor for CFString);
      sub_1A2D9F680();
      result = sub_1A2D9FE40();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_1A2D6C348(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

id sub_1A2D6E9A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3710);
  v2 = *v0;
  v3 = sub_1A2D9FD80();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

uint64_t sub_1A2D6EB18()
{
  sub_1A2D9FE10();
  swift_getWitnessTable();
  sub_1A2D9F680();
  return sub_1A2D9FE40();
}

uint64_t sub_1A2D6EB7C()
{
  swift_getWitnessTable();

  return sub_1A2D9F670();
}

uint64_t sub_1A2D6EC00()
{
  swift_getWitnessTable();

  return sub_1A2D9F670();
}

uint64_t sub_1A2D6ED0C(double a1)
{
  result = swift_beginAccess();
  if (v1[7] == a1)
  {
    v1[7] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 568))(v5, sub_1A2D8EE8C);
  }

  return result;
}

void *sub_1A2D6F2B8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1A2D6F2D8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0B33D0);
  sub_1A2D9F7C0();
  sub_1A2D9F960();
  sub_1A2D8E774(&unk_1ED691598, &unk_1EB0B33D0);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A2D6F3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A2D9F5F0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A2D6F488(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A2D9F5F0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A2D6F544()
{
  MEMORY[0x1A58E7330](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2D6F57C()
{
  sub_1A2D947AC(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1A2D6F5B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A2D9FB00();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1A2D6F664(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1A2D9FB00();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A2D6F708()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2D6F740(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36D8);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 32)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1A2D6F7FC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 32)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1A2D72088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getPRPosterContentVibrantMonochromeStyleClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRPosterContentVibrantMonochromeStyleClass_softClass;
  v7 = getPRPosterContentVibrantMonochromeStyleClass_softClass;
  if (!getPRPosterContentVibrantMonochromeStyleClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPRPosterContentVibrantMonochromeStyleClass_block_invoke;
    v3[3] = &unk_1E76B9ED8;
    v3[4] = &v4;
    __getPRPosterContentVibrantMonochromeStyleClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2D738F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPRPosterContentVibrantMonochromeStyleClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PosterKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PosterKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E76B9EF8;
    v5 = 0;
    PosterKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PosterKitLibraryCore_frameworkLibrary)
  {
    __getPRPosterContentVibrantMonochromeStyleClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("PRPosterContentVibrantMonochromeStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRPosterContentVibrantMonochromeStyleClass_block_invoke_cold_1();
  }

  getPRPosterContentVibrantMonochromeStyleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PosterKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PosterKitLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t _CS_Private_MainScreenClass()
{
  if (_CS_Private_MainScreenClass_onceToken != -1)
  {
    +[CSDeviceDetermination baseCategory];
  }

  return _CS_Private_MainScreenClass_mainScreenClass;
}

uint64_t _CS_Private_BaseIsN84OrSimilarDevice()
{
  if (_CS_Private_BaseIsN84OrSimilarDevice_onceToken != -1)
  {
    +[CSDeviceDetermination baseCategory];
  }

  return _CS_Private_BaseIsN84OrSimilarDevice_baseIsN84OrSimilarDevice;
}

uint64_t _CS_Private_ProductType()
{
  if (_CS_Private_ProductType_onceToken[0] != -1)
  {
    +[CSDeviceDetermination baseCategory];
  }

  return _CS_Private_ProductType_productType;
}

uint64_t CSEffectiveArtworkSubtype()
{
  if (CSEffectiveArtworkSubtype_onceToken != -1)
  {
    +[CSDeviceDetermination categoryFromReferenceBounds:];
  }

  return CSEffectiveArtworkSubtype_deviceSubtype;
}

void __CSEffectiveArtworkSubtype_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFDictionaryGetValue(v0, @"ArtworkDeviceSubType");
    if (v2)
    {
      CSEffectiveArtworkSubtype_deviceSubtype = [v2 intValue];
    }

    CFRelease(v1);
  }
}

void sub_1A2D79194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *CSTimeNumberingSystemTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 0xF)
  {
    return 0;
  }

  else
  {
    return off_1E76BA068[a1 - 1];
  }
}

__CFString *CSTimeNumberingSystemTypeLanguageTag(uint64_t a1)
{
  if (a1 == 16)
  {
    v2 = @"ur";
  }

  else if (a1 == 3)
  {
    v1 = [MEMORY[0x1E696AAE8] preferredLocalizationsFromArray:&unk_1F15930F8];
    v2 = [v1 firstObject];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1A2D7A2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, id a23)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a23);
  _Unwind_Resume(a1);
}

void sub_1A2D7C584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2D7E0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __CSFrameworkBundle_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = CSFrameworkBundle___bundle;
  CSFrameworkBundle___bundle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __CSLogCommon_block_invoke()
{
  v0 = os_log_create("com.apple.CoverSheetKit", "Common");
  v1 = CSLogCommon___logObj;
  CSLogCommon___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1A2D839B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double OUTLINED_FUNCTION_1(double result)
{
  if (v1 < result)
  {
    return v1;
  }

  return result;
}

double _CSEmbeddedDisplayNativeScale()
{
  v0 = _CSEmbeddedFBSDisplayConfiguration();
  [v0 bounds];
  v2 = v1;

  v3 = _CSEmbeddedFBSDisplayConfiguration();
  [v3 pixelSize];
  v5 = v4;

  return v5 / v2;
}

id sub_1A2D85A5C()
{
  _s23CoverSheetKitDummyClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

uint64_t sub_1A2D85AE8(uint64_t a1)
{
  v3 = sub_1A2D8D54C(a1);
  (*(*(*(v1 + qword_1ED692268) - 8) + 8))(a1);
  return v3;
}

uint64_t sub_1A2D85B54(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = sub_1A2D8D464(a1);
  (*(*(*(v3 + qword_1ED692268) - 8) + 8))(a1);
  return v4;
}

void *sub_1A2D85C3C(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + qword_1ED692268);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v11 - v6);
  v7 = sub_1A2D9F920();
  v8 = *(v5 + 8);
  v9 = v7;
  v8(a2, v4);
  if (v7)
  {
  }

  return v7;
}

id sub_1A2D85D74(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_1A2D85DB8(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LockScreenHostingController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1A2D85E90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockScreenHostingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A2D85F48()
{
  v0 = sub_1A2D9F6D0();
  __swift_allocate_value_buffer(v0, qword_1ED692250);
  __swift_project_value_buffer(v0, qword_1ED692250);
  return sub_1A2D9F6C0();
}

uint64_t sub_1A2D85FBC()
{
  if (qword_1ED691E10 != -1)
  {
    swift_once();
  }

  v0 = sub_1A2D9F6D0();

  return __swift_project_value_buffer(v0, qword_1ED692250);
}

uint64_t sub_1A2D86020@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED691E10 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D9F6D0();
  v3 = __swift_project_value_buffer(v2, qword_1ED692250);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1A2D860C8()
{
  v58 = type metadata accessor for TitleLabelUpdate(0);
  v1 = *(v58 - 1);
  MEMORY[0x1EEE9AC00](v58);
  v3 = v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v4 = *(v0 + 16);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v72 = MEMORY[0x1E69E7CC0];

  sub_1A2D8D114(0, v5, 0);
  v6 = v72;
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v55[1] = v4;
  v8 = v4 + v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3530);
  v56 = *(v1 + 72);
  v57 = v9;
  while (1)
  {
    v59 = v6;
    v60 = v5;
    sub_1A2D8DDB0(v8, v3);
    v64[0] = 0x6D617473656D6974;
    v64[1] = 0xE900000000000070;
    v10 = sub_1A2D9F5F0();
    v65[3] = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v65);
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, v3, v10);
    v66[0] = 0x656372756F73;
    v66[1] = 0xE600000000000000;
    v12 = &v3[v58[5]];
    v13 = *(v12 + 1);
    v66[2] = *v12;
    v66[3] = v13;
    v66[5] = MEMORY[0x1E69E6158];
    v67[0] = 1954047348;
    v67[1] = 0xE400000000000000;
    v14 = &v3[v58[6]];
    v15 = *(v14 + 1);
    v67[2] = *v14;
    v67[3] = v15;
    v67[5] = MEMORY[0x1E69E6158];
    v68[0] = 0x736574616D696E61;
    v68[1] = 0xEF7365676E616843;
    v69 = v3[v58[7]];
    v70 = MEMORY[0x1E69E6370];
    v71[0] = 1953394534;
    v71[1] = 0xE400000000000000;
    v16 = &v3[v58[8]];
    v17 = *v16;
    v18 = *(v16 + 1);
    v71[5] = MEMORY[0x1E69E6158];
    v71[2] = v17;
    v71[3] = v18;
    v19 = sub_1A2D9FDB0();

    sub_1A2D8FE14(v64, &v61, &qword_1EB0B3538);
    v21 = v61;
    v20 = v62;
    result = sub_1A2D8CED8(v61, v62);
    if (v23)
    {
      break;
    }

    v24 = v19 + 8;
    *(v19 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v25 = (v19[6] + 16 * result);
    *v25 = v21;
    v25[1] = v20;
    result = sub_1A2D6C348(v63, (v19[7] + 32 * result));
    v26 = v19[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_19;
    }

    v19[2] = v28;
    sub_1A2D8FE14(v66, &v61, &qword_1EB0B3538);
    v29 = v61;
    v30 = v62;
    result = sub_1A2D8CED8(v61, v62);
    if (v31)
    {
      break;
    }

    *(v24 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v32 = (v19[6] + 16 * result);
    *v32 = v29;
    v32[1] = v30;
    result = sub_1A2D6C348(v63, (v19[7] + 32 * result));
    v33 = v19[2];
    v27 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (v27)
    {
      goto LABEL_19;
    }

    v19[2] = v34;
    sub_1A2D8FE14(v67, &v61, &qword_1EB0B3538);
    v35 = v61;
    v36 = v62;
    result = sub_1A2D8CED8(v61, v62);
    if (v37)
    {
      break;
    }

    *(v24 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v38 = (v19[6] + 16 * result);
    *v38 = v35;
    v38[1] = v36;
    result = sub_1A2D6C348(v63, (v19[7] + 32 * result));
    v39 = v19[2];
    v27 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v27)
    {
      goto LABEL_19;
    }

    v19[2] = v40;
    sub_1A2D8FE14(v68, &v61, &qword_1EB0B3538);
    v41 = v61;
    v42 = v62;
    result = sub_1A2D8CED8(v61, v62);
    if (v43)
    {
      break;
    }

    *(v24 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v44 = (v19[6] + 16 * result);
    *v44 = v41;
    v44[1] = v42;
    result = sub_1A2D6C348(v63, (v19[7] + 32 * result));
    v45 = v19[2];
    v27 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (v27)
    {
      goto LABEL_19;
    }

    v19[2] = v46;
    sub_1A2D8FE14(v71, &v61, &qword_1EB0B3538);
    v47 = v61;
    v48 = v62;
    result = sub_1A2D8CED8(v61, v62);
    if (v49)
    {
      break;
    }

    *(v24 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v50 = (v19[6] + 16 * result);
    *v50 = v47;
    v50[1] = v48;
    result = sub_1A2D6C348(v63, (v19[7] + 32 * result));
    v51 = v19[2];
    v27 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (v27)
    {
      goto LABEL_19;
    }

    v19[2] = v52;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3538);
    swift_arrayDestroy();
    sub_1A2D8DE78(v3);
    v6 = v59;
    v72 = v59;
    v54 = *(v59 + 16);
    v53 = *(v59 + 24);
    if (v54 >= v53 >> 1)
    {
      sub_1A2D8D114((v53 > 1), v54 + 1, 1);
      v6 = v72;
    }

    *(v6 + 16) = v54 + 1;
    *(v6 + 8 * v54 + 32) = v19;
    v8 += v56;
    v5 = v60 - 1;
    if (v60 == 1)
    {

      return v6;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1A2D86684()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A2D866C4()
{
  type metadata accessor for StateCaptureLogger();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  *(result + 24) = 7;
  return result;
}

uint64_t sub_1A2D86818(uint64_t a1)
{
  v3 = *(**(v1 + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 432);

  v3(a1);
}

uint64_t sub_1A2D86898@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x98))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A2D86950(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR___CSTitleElementViewAdapter_coordinator;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(**(v1 + v3) + 424);

  LOBYTE(v4) = v4(v5);

  *(a1 + 16) = v4 & 1;
  return sub_1A2D869EC;
}

uint64_t sub_1A2D869EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(**(*a1 + *(a1 + 8)) + 432);

  v2(v1);
}

void sub_1A2D86A70(void *a1, int a2)
{
  v5 = type metadata accessor for TitleLabelUpdate(0);
  v74 = *(v5 - 1);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v73 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v67 - v8;
  v75 = OBJC_IVAR___CSTitleElementViewAdapter_coordinator;
  v76 = v2;
  v10 = *(**(&v2->isa + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 184);
  v11 = a1;

  v13 = v10(v12);
  v15 = v14;

  sub_1A2D8FEDC(0, &qword_1ED691550);
  v16 = v11;
  v17 = v13;
  v18 = sub_1A2D9FC90();

  if (v18 & 1) != 0 && ((a2 | v15 ^ 1))
  {
    if (qword_1ED691E10 != -1)
    {
      swift_once();
    }

    v19 = sub_1A2D9F6D0();
    __swift_project_value_buffer(v19, qword_1ED692250);
    v20 = v16;
    v76 = sub_1A2D9F6B0();
    v21 = sub_1A2D9FC30();

    if (os_log_type_enabled(v76, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v20;
      *v23 = v20;
      v75 = v20;
      _os_log_impl(&dword_1A2D63000, v76, v21, "[TitleElementViewAdapter] newUpdate: %@ does not supersede previous, skipping update", v22, 0xCu);
      sub_1A2D901BC(v23);
      MEMORY[0x1A58E72D0](v23, -1, -1);
      MEMORY[0x1A58E72D0](v22, -1, -1);

      v24 = v75;
    }

    else
    {

      v24 = v76;
    }
  }

  else
  {
    v71 = a2;
    if (qword_1ED691E10 != -1)
    {
      swift_once();
    }

    v25 = sub_1A2D9F6D0();
    __swift_project_value_buffer(v25, qword_1ED692250);
    v26 = v76;
    v27 = v16;
    v28 = v26;
    v29 = sub_1A2D9F6B0();
    v30 = sub_1A2D9FC30();

    v31 = os_log_type_enabled(v29, v30);
    v32 = MEMORY[0x1E69E7D40];
    v72 = v27;
    if (v31)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412546;
      *(v33 + 4) = v27;
      *v34 = v27;
      *(v33 + 12) = 1024;
      v35 = (*((*v32 & v28->isa) + 0x98))(v72);
      v27 = v72;
      v36 = v35;

      *(v33 + 14) = v36 & 1;
      _os_log_impl(&dword_1A2D63000, v29, v30, "[TitleElementViewAdapter] setting text to value: %@, with animation: %{BOOL}d", v33, 0x12u);
      sub_1A2D901BC(v34);
      v37 = v34;
      v38 = MEMORY[0x1E69E7D40];
      MEMORY[0x1A58E72D0](v37, -1, -1);
      MEMORY[0x1A58E72D0](v33, -1, -1);
    }

    else
    {

      v38 = v32;
    }

    v39 = *(&v28->isa + OBJC_IVAR___CSTitleElementViewAdapter_stateCaptureLogger);
    v68 = 0x80000001A2DA60F0;
    v40 = [v27 string];
    v41 = sub_1A2D9FB80();
    v43 = v42;

    v44 = *((*v38 & v28->isa) + 0x98);
    v69 = (*v38 & v28->isa) + 152;
    v70 = v44;
    v45 = v44();
    v46 = *(**(&v75->isa + v76) + 280);

    v48 = v46(v47);

    v49 = [v48 fontName];

    v50 = sub_1A2D9FB80();
    v52 = v51;

    sub_1A2D9F5E0();
    v53 = &v9[v5[5]];
    *v53 = 0xD000000000000028;
    *(v53 + 1) = v68;
    v54 = &v9[v5[6]];
    *v54 = v41;
    v54[1] = v43;
    v9[v5[7]] = v45 & 1;
    v55 = &v9[v5[8]];
    *v55 = v50;
    v55[1] = v52;
    v56 = v73;
    sub_1A2D8DDB0(v9, v73);
    swift_beginAccess();
    v57 = *(v39 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v39 + 16) = v57;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v57 = sub_1A2D8CD00(0, v57[2] + 1, 1, v57);
      *(v39 + 16) = v57;
    }

    v59 = v71;
    v60 = v74;
    v62 = v57[2];
    v61 = v57[3];
    if (v62 >= v61 >> 1)
    {
      v57 = sub_1A2D8CD00(v61 > 1, v62 + 1, 1, v57);
    }

    v57[2] = v62 + 1;
    sub_1A2D8DE14(v56, v57 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v62);
    *(v39 + 16) = v57;
    swift_endAccess();
    if (v62 >= 7)
    {
      swift_beginAccess();
      sub_1A2D8D79C(0, 1);
      swift_endAccess();
    }

    v63 = sub_1A2D8DE78(v9);
    v64 = (v70)(v63);
    v65 = v72;
    if (v64)
    {
      MEMORY[0x1EEE9AC00](v64);
      *(&v67 - 4) = v28;
      *(&v67 - 3) = v65;
      *(&v67 - 16) = v59 & 1;
      sub_1A2D9FAB0();
      sub_1A2D9F7B0();
    }

    else
    {
      v66 = *(**(&v75->isa + v76) + 192);

      v66(v65, v59 & 1);
    }
  }
}

BOOL sub_1A2D87204(void *a1, int a2, void *a3, int a4)
{
  sub_1A2D8FEDC(0, &qword_1ED691550);
  v8 = a3;
  v9 = a1;
  LODWORD(a3) = sub_1A2D9FC90();

  return (a3 & (a4 | ~a2) & 1) == 0;
}

uint64_t sub_1A2D87320()
{
  v1 = *(**(v0 + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 152);

  v3 = v1(v2);

  return v3;
}

void sub_1A2D87418(void *a1)
{
  v1 = [objc_opt_self() areAnimationsEnabled];
  sub_1A2D86A70(a1, v1);
}

uint64_t sub_1A2D87470@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF0))();
  *a2 = result;
  return result;
}

void (*sub_1A2D87530(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  v3 = *(**(v1 + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 152);

  v5 = v3(v4);

  *a1 = v5;
  return sub_1A2D875C0;
}

void sub_1A2D875C0(id *a1, char a2)
{
  v6 = *a1;
  v3 = objc_opt_self();
  if (a2)
  {
    v4 = v3;
    v5 = v6;
    sub_1A2D86A70(v5, [v4 areAnimationsEnabled]);
  }

  else
  {
    sub_1A2D86A70(v6, [v3 areAnimationsEnabled]);
  }
}

uint64_t sub_1A2D87670@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x108))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A2D876D4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x110);

  return v4(v2, v3);
}

uint64_t (*sub_1A2D87754(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = *(**(v1 + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 152);

  v5 = v3(v4);

  v6 = [v5 string];

  v7 = sub_1A2D9FB80();
  v9 = v8;

  *a1 = v7;
  a1[1] = v9;
  return sub_1A2D87818;
}

uint64_t sub_1A2D87818(uint64_t a1, char a2)
{
  v4 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v5 = *(a1 + 16);
  if (a2)
  {

    v6 = sub_1A2D9FB70();

    v7 = [v4 initWithString_];

    (*((*MEMORY[0x1E69E7D40] & *v5) + 0xF8))(v7);
  }

  else
  {
    v9 = sub_1A2D9FB70();

    v10 = [v4 initWithString_];

    return (*((*MEMORY[0x1E69E7D40] & *v5) + 0xF8))(v10);
  }
}

uint64_t sub_1A2D879F8()
{
  v1 = *(**(v0 + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 232);

  v3 = v1(v2);

  return v3;
}

void sub_1A2D87AC0(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x120))();
  v6 = v5;
  if (a1)
  {
    if (v5)
    {
      sub_1A2D8FEDC(0, &qword_1EB0B2E88);
      v10 = a1;
      v7 = sub_1A2D9FC90();

      if (v7)
      {

        return;
      }
    }
  }

  else
  {
    if (!v5)
    {
      return;
    }
  }

  v8 = (*((*v4 & *v2) + 0x98))();
  if (v8)
  {
    MEMORY[0x1EEE9AC00](v8);
    sub_1A2D9FAB0();
    sub_1A2D9F7B0();
  }

  else
  {
    v9 = *(**(v2 + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 240);

    v9(a1);
  }
}

uint64_t sub_1A2D87CC0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x120))();
  *a2 = result;
  return result;
}

uint64_t sub_1A2D87D24(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x128);
  v4 = *a1;
  return v3(v2);
}

void (*sub_1A2D87D94(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = *(**(v1 + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 232);

  v5 = v3(v4);

  *a1 = v5;
  return sub_1A2D87E24;
}

void sub_1A2D87E24(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1A2D87AC0(v2);
  }

  else
  {
    sub_1A2D87AC0(*a1);
  }
}

uint64_t sub_1A2D87E8C()
{
  v1 = *(**(v0 + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 280);

  v3 = v1(v2);

  return v3;
}

void sub_1A2D87F58(void *a1)
{
  sub_1A2D8D85C(a1);
}

uint64_t sub_1A2D87F90@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x138))();
  *a2 = result;
  return result;
}

void (*sub_1A2D88060(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR___CSTitleElementViewAdapter_coordinator;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(**(v1 + v3) + 280);

  v6 = v4(v5);

  *a1 = v6;
  return sub_1A2D880F8;
}

void sub_1A2D880F8(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = *(**(v3 + v2) + 288);
  v16 = v4;
  if ((a2 & 1) == 0)
  {

    v5(v16);

    v12 = OBJC_IVAR___CSTitleElementViewAdapter_hostingController;
    v13 = [*(v3 + OBJC_IVAR___CSTitleElementViewAdapter_hostingController) view];
    if (v13)
    {
      v14 = v13;
      [v13 setNeedsLayout];

      v15 = [*(v3 + v12) view];
      if (v15)
      {
        v6 = v15;
        [v15 layoutIfNeeded];
        goto LABEL_8;
      }

LABEL_14:
      __break(1u);
      return;
    }

    goto LABEL_12;
  }

  v6 = v4;

  v5(v6);

  v7 = OBJC_IVAR___CSTitleElementViewAdapter_hostingController;
  v8 = [*(v3 + OBJC_IVAR___CSTitleElementViewAdapter_hostingController) view];
  if (!v8)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = v8;
  [v8 setNeedsLayout];

  v10 = [*(v3 + v7) view];
  if (!v10)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v10;
  [v10 layoutIfNeeded];

LABEL_8:
}

uint64_t sub_1A2D882A0()
{
  v1 = *(**(v0 + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 328);

  v3 = v1(v2);

  return v3;
}

uint64_t sub_1A2D883AC(uint64_t a1)
{
  v3 = *(**(v1 + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 336);

  v3(a1);
}

uint64_t sub_1A2D8842C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x150))();
  *a2 = result;
  return result;
}

uint64_t (*sub_1A2D884F0(uint64_t *a1))(uint64_t *a1)
{
  v3 = OBJC_IVAR___CSTitleElementViewAdapter_coordinator;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(**(v1 + v3) + 328);

  v6 = v4(v5);

  *a1 = v6;
  return sub_1A2D88588;
}

uint64_t sub_1A2D88588(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(**(a1[1] + a1[2]) + 336);

  v2(v1);
}

double sub_1A2D8868C()
{
  v1 = *(**(v0 + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 376);

  v3 = v1(v2);

  return v3;
}

uint64_t sub_1A2D88708(double a1)
{
  v3 = *(**(v1 + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 384);

  v3(v4, a1);
}

uint64_t (*sub_1A2D88854(double *a1))(double *a1)
{
  v3 = OBJC_IVAR___CSTitleElementViewAdapter_coordinator;
  *(a1 + 1) = v1;
  *(a1 + 2) = v3;
  v4 = *(**(v1 + v3) + 376);

  v6 = v4(v5);

  *a1 = v6;
  return sub_1A2D888F4;
}

uint64_t sub_1A2D888F4(double *a1)
{
  v1 = *a1;
  v2 = *(**(*(a1 + 1) + *(a1 + 2)) + 384);

  v2(v3, v1);
}

void sub_1A2D88A48()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
  v2 = [v1 view];

  if (v2)
  {
    [v2 frame];
  }

  else
  {
    __break(1u);
  }
}

void sub_1A2D88B04(double a1, double a2, double a3, double a4)
{
  v9 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x78))();
  v10 = [v9 view];

  if (v10)
  {
    [v10 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1A2D88BDC(void **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x180))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void sub_1A2D88CA8(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v6 = ((*MEMORY[0x1E69E7D40] & *v1) + 120) & 0xFFFFFFFFFFFFLL | 0xE202000000000000;
  v3[5] = v5;
  v3[6] = v6;
  v7 = v5();
  v8 = [v7 view];

  if (v8)
  {
    [v8 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    *v4 = v10;
    v4[1] = v12;
    v4[2] = v14;
    v4[3] = v16;
  }

  else
  {
    __break(1u);
  }
}

void sub_1A2D88DBC(double **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v8 = (*(*a1 + 5))(a1);
  v9 = [v8 view];

  if (a2)
  {
    if (v9)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (!v9)
  {
    __break(1u);
    return;
  }

LABEL_5:
  [v9 setFrame_];

  free(v3);
}

uint64_t sub_1A2D88EC8()
{
  v1 = OBJC_IVAR___CSTitleElementViewAdapter_visible;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A2D88F0C(char a1)
{
  v3 = OBJC_IVAR___CSTitleElementViewAdapter_visible;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1A2D69568(a1);
}

uint64_t sub_1A2D88F64@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x198))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A2D8902C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___CSTitleElementViewAdapter_visible;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A2D890B4;
}

void sub_1A2D890B4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1A2D69568(*(v3[3] + v3[4]));
  }

  free(v3);
}

uint64_t sub_1A2D89184()
{
  v1 = *(**(v0 + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 472);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

uint64_t sub_1A2D89290(uint64_t a1)
{
  v3 = *(**(v1 + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 480);

  v3(a1);
}

uint64_t sub_1A2D89310@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1B0))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A2D893D8(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR___CSTitleElementViewAdapter_coordinator;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(**(v1 + v3) + 472);

  LOBYTE(v4) = v4(v5);

  *(a1 + 16) = v4 & 1;
  return sub_1A2D89474;
}

uint64_t sub_1A2D89474(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(**(*a1 + *(a1 + 8)) + 480);

  v2(v1);
}

uint64_t sub_1A2D89570()
{
  v1 = *(**(v0 + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 528);

  v3 = v1(v2);

  return v3;
}

uint64_t sub_1A2D8967C(uint64_t a1)
{
  v3 = *(**(v1 + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 536);

  v3(a1);
}

uint64_t sub_1A2D896FC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C8))();
  *a2 = result;
  return result;
}

uint64_t (*sub_1A2D897C0(uint64_t *a1))(uint64_t *a1)
{
  v3 = OBJC_IVAR___CSTitleElementViewAdapter_coordinator;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(**(v1 + v3) + 528);

  v6 = v4(v5);

  *a1 = v6;
  return sub_1A2D89858;
}

uint64_t sub_1A2D89858(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(**(a1[1] + a1[2]) + 536);

  v2(v1);
}

uint64_t sub_1A2D89904()
{
  v0 = sub_1A2D9F5A0();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A2D8FEDC(0, &qword_1ED691550);
  sub_1A2D9F590();
  return sub_1A2D9FC50();
}

id sub_1A2D8999C()
{
  if (qword_1ED691F68 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED691F70;

  return v1;
}

uint64_t sub_1A2D89A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = swift_allocObject();
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  sub_1A2D9F640();
  *(v10 + 16) = a1;
  *(v10 + 24) = 1;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  *(v10 + 48) = a4;
  *(v10 + 56) = a5;
  return v10;
}

id sub_1A2D89A90(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v10, v2);

  v3 = v11;
  if (v11)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v10, v11);
    v5 = *(v3 - 8);
    MEMORY[0x1EEE9AC00](v4);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v8 = sub_1A2D9FDC0();
    (*(v5 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id TitleElementViewAdapter.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR___CSTitleElementViewAdapter_stateCaptureHandle];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for TitleElementViewAdapter();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id TitleElementViewAdapter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1A2D89DDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A2D9F820();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A2D89E3C(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1A2D89E8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A2D9F940();
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1A2D9F950();
}

uint64_t sub_1A2D89F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A2D9F940();
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1A2D9F950();
}

uint64_t sub_1A2D8A158()
{
  sub_1A2D9FE10();
  sub_1A2D9FCA0();
  sub_1A2D9FE30();
  return sub_1A2D9FE40();
}

uint64_t sub_1A2D8A1AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_1A2D8FEDC(0, &unk_1EB0B2E78);
  return sub_1A2D9FC90() & ~(v2 ^ v3) & 1;
}

uint64_t sub_1A2D8A218()
{
  sub_1A2D9FE10();
  sub_1A2D9FCA0();
  sub_1A2D9FE30();
  return sub_1A2D9FE40();
}

uint64_t sub_1A2D8A2BC()
{
  sub_1A2D9FE10();
  sub_1A2D9FCA0();
  sub_1A2D9FE30();
  return sub_1A2D9FE40();
}

void sub_1A2D8A318()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E69DDD58];
  v2 = [v0 preferredFontForTextStyle_];

  qword_1ED691F70 = v2;
}

uint64_t sub_1A2D8A3F8@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

void *sub_1A2D8A404()
{
  swift_getKeyPath();
  (*(*v0 + 560))();

  swift_beginAccess();
  v1 = v0[2];
  v2 = v1;
  return v1;
}

uint64_t sub_1A2D8A494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1A2D8A544(void *a1, int a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  sub_1A2D8FEDC(0, &unk_1EB0B2E78);
  v8 = v6;
  v9 = sub_1A2D9FC90();

  if (v9 & 1) == 0 || ((v7 ^ a2))
  {
    KeyPath = swift_getKeyPath();
    v12 = MEMORY[0x1EEE9AC00](KeyPath);
    v13 = v3;
    v14 = a1;
    v15 = a2 & 1;
    (*(*v3 + 568))(v12, sub_1A2D8ECF8);
  }

  else
  {
    v10 = *(v3 + 16);
    *(v3 + 16) = a1;
    *(v3 + 24) = a2 & 1;
  }
}

void (*sub_1A2D8A6A8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 560))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV13CoverSheetKit14TitleLabelView11Coordinator___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A2D8FCF8(&qword_1ED6918C0, type metadata accessor for TitleLabelView.Coordinator);
  sub_1A2D9F630();

  v4[7] = sub_1A2D8A3A8();
  return sub_1A2D8A7F8;
}

uint64_t sub_1A2D8A860@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

uint64_t sub_1A2D8A8AC(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 240);
  v4 = *a1;
  return v3(v2);
}

void sub_1A2D8A904(void *a1)
{
  swift_beginAccess();
  v3 = v1[4];
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 568))(v9, sub_1A2D8ED84);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A2D8FEDC(0, &qword_1EB0B2E88);
  v4 = v3;
  v5 = a1;
  v6 = sub_1A2D9FC90();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v1[4];
LABEL_8:
  v1[4] = a1;
}

void (*sub_1A2D8AA70(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 560))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV13CoverSheetKit14TitleLabelView11Coordinator___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A2D8FCF8(&qword_1ED6918C0, type metadata accessor for TitleLabelView.Coordinator);
  sub_1A2D9F630();

  v4[7] = sub_1A2D8A804();
  return sub_1A2D8ABC0;
}

uint64_t sub_1A2D8AC1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result;
  return result;
}

void sub_1A2D8ACCC(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[5];
  sub_1A2D8FEDC(0, &qword_1ED691548);
  v5 = v4;
  v6 = sub_1A2D9FC90();

  if (v6)
  {
    v7 = v2[5];
    v2[5] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 568))(v9, sub_1A2D8EDE0);
  }
}

void (*sub_1A2D8AE10(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 560))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV13CoverSheetKit14TitleLabelView11Coordinator___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A2D8FCF8(&qword_1ED6918C0, type metadata accessor for TitleLabelView.Coordinator);
  sub_1A2D9F630();

  v4[7] = sub_1A2D8ABCC();
  return sub_1A2D8AF60;
}

uint64_t sub_1A2D8AFBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 328))();
  *a2 = result;
  return result;
}

uint64_t sub_1A2D8B060(uint64_t a1)
{
  result = swift_beginAccess();
  if (v1[6] != a1)
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 568))(v5, sub_1A2D8EE3C);
  }

  return result;
}

void (*sub_1A2D8B158(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 560))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV13CoverSheetKit14TitleLabelView11Coordinator___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A2D8FCF8(&qword_1ED6918C0, type metadata accessor for TitleLabelView.Coordinator);
  sub_1A2D9F630();

  v4[7] = sub_1A2D8AF6C();
  return sub_1A2D8B2A8;
}

void (*sub_1A2D8B3B0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 560))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV13CoverSheetKit14TitleLabelView11Coordinator___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A2D8FCF8(&qword_1ED6918C0, type metadata accessor for TitleLabelView.Coordinator);
  sub_1A2D9F630();

  v4[7] = sub_1A2D8B2B4();
  return sub_1A2D8B500;
}

uint64_t sub_1A2D8B564@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 424))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A2D8B60C(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[64] == v2)
  {
    v1[64] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 568))(v5, sub_1A2D8EEE0);
  }

  return result;
}

void (*sub_1A2D8B708(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 560))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV13CoverSheetKit14TitleLabelView11Coordinator___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A2D8FCF8(&qword_1ED6918C0, type metadata accessor for TitleLabelView.Coordinator);
  sub_1A2D9F630();

  v4[7] = sub_1A2D8B50C();
  return sub_1A2D8B858;
}

uint64_t sub_1A2D8B8B4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 472))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A2D8B95C(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[65] == v2)
  {
    v1[65] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 568))(v5, sub_1A2D8EF34);
  }

  return result;
}

void (*sub_1A2D8BA58(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 560))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV13CoverSheetKit14TitleLabelView11Coordinator___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A2D8FCF8(&qword_1ED6918C0, type metadata accessor for TitleLabelView.Coordinator);
  sub_1A2D9F630();

  v4[7] = sub_1A2D8B864();
  return sub_1A2D8BBA8;
}

uint64_t sub_1A2D8BC04()
{
  swift_getKeyPath();
  (*(*v0 + 560))();

  swift_beginAccess();
  return v0[9];
}

uint64_t sub_1A2D8BC84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 528))();
  *a2 = result;
  return result;
}

uint64_t sub_1A2D8BD28(uint64_t a1)
{
  result = swift_beginAccess();
  if (v1[9] != a1)
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 568))(v5, sub_1A2D8EF88);
  }

  return result;
}

void (*sub_1A2D8BE20(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 560))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV13CoverSheetKit14TitleLabelView11Coordinator___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A2D8FCF8(&qword_1ED6918C0, type metadata accessor for TitleLabelView.Coordinator);
  sub_1A2D9F630();

  v4[7] = sub_1A2D8BBB4();
  return sub_1A2D8BF70;
}

void sub_1A2D8BF7C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A2D9F620();

  free(v1);
}

uint64_t sub_1A2D8C010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 32) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  sub_1A2D9F640();
  *(v5 + 16) = a1;
  *(v5 + 24) = 1;

  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  return v5;
}

id *sub_1A2D8C09C()
{
  v1 = OBJC_IVAR____TtCV13CoverSheetKit14TitleLabelView11Coordinator___observationRegistrar;
  v2 = sub_1A2D9F650();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1A2D8C114()
{
  v1 = OBJC_IVAR____TtCV13CoverSheetKit14TitleLabelView11Coordinator___observationRegistrar;
  v2 = sub_1A2D9F650();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A2D8C1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v42 = a3;
  v40 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0B33D0);
  v6 = sub_1A2D9F7C0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v36 - v12;
  v14 = *(a2 - 8);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - v18;
  v20 = sub_1A2D9F960();
  v39 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v41 = &v36 - v22;
  if ((*(*a1 + 472))(v21))
  {
    v23 = *(v14 + 16);
    v23(v19, v38, a2);
    v23(v17, v19, a2);
    v24 = sub_1A2D8E774(&unk_1ED691598, &unk_1EB0B33D0);
    v43 = v42;
    v44 = v24;
    swift_getWitnessTable();
    sub_1A2D89E8C(v17, a2);
    v25 = *(v14 + 8);
    v25(v17, a2);
    v25(v19, a2);
  }

  else
  {
    v51 = sub_1A2D9FA50();
    v37 = v20;
    v26 = v42;
    sub_1A2D9FA30();

    v27 = sub_1A2D8E774(&unk_1ED691598, &unk_1EB0B33D0);
    v49 = v26;
    v50 = v27;
    swift_getWitnessTable();
    v28 = *(v7 + 16);
    v28(v13, v10, v6);
    v29 = *(v7 + 8);
    v29(v10, v6);
    v28(v10, v13, v6);
    v20 = v37;
    sub_1A2D89F84(v10, a2, v6);
    v29(v10, v6);
    v29(v13, v6);
  }

  v30 = sub_1A2D8E774(&unk_1ED691598, &unk_1EB0B33D0);
  v31 = v42;
  v47 = v42;
  v48 = v30;
  WitnessTable = swift_getWitnessTable();
  v45 = v31;
  v46 = WitnessTable;
  swift_getWitnessTable();
  v33 = v39;
  v34 = v41;
  (*(v39 + 16))(v40, v41, v20);
  return (*(v33 + 8))(v34, v20);
}

uint64_t sub_1A2D8C6E8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for TitleLabelUpdate(0);
  v7 = (v6 - 8);
  v32 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v31 = 0x80000001A2DA6020;
  v13 = [a3 string];
  v14 = sub_1A2D9FB80();
  v16 = v15;

  LOBYTE(v13) = (*(*a1 + 424))();
  v17 = (*(*a1 + 280))();
  v18 = [v17 fontName];

  v19 = sub_1A2D9FB80();
  v21 = v20;

  sub_1A2D9F5E0();
  v22 = &v12[v7[7]];
  *v22 = 0xD00000000000001FLL;
  *(v22 + 1) = v31;
  v23 = &v12[v7[8]];
  *v23 = v14;
  v23[1] = v16;
  v12[v7[9]] = v13 & 1;
  v24 = &v12[v7[10]];
  *v24 = v19;
  v24[1] = v21;
  sub_1A2D8DDB0(v12, v10);
  swift_beginAccess();
  v25 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_1A2D8CD00(0, v25[2] + 1, 1, v25);
    *(a2 + 16) = v25;
  }

  v28 = v25[2];
  v27 = v25[3];
  if (v28 >= v27 >> 1)
  {
    v25 = sub_1A2D8CD00(v27 > 1, v28 + 1, 1, v25);
  }

  v25[2] = v28 + 1;
  sub_1A2D8DE14(v10, v25 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28);
  *(a2 + 16) = v25;
  swift_endAccess();
  if (v28 >= 7)
  {
    swift_beginAccess();
    sub_1A2D8D79C(0, 1);
    swift_endAccess();
  }

  return sub_1A2D8DE78(v12);
}

uint64_t sub_1A2D8C9F4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for TitleLabelUpdate(0) - 8;
  v31 = *v6;
  v7 = (MEMORY[0x1EEE9AC00])();
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - v10;
  v30 = 0x80000001A2DA6040;
  v12 = [a3 string];
  v13 = sub_1A2D9FB80();
  v15 = v14;

  LOBYTE(v12) = (*(*a1 + 424))();
  v16 = (*(*a1 + 280))();
  v17 = [v16 fontName];

  v18 = sub_1A2D9FB80();
  v20 = v19;

  sub_1A2D9F5E0();
  v21 = &v11[*(v6 + 28)];
  *v21 = 0xD000000000000023;
  *(v21 + 1) = v30;
  v22 = &v11[*(v6 + 32)];
  *v22 = v13;
  v22[1] = v15;
  v11[*(v6 + 36)] = v12 & 1;
  v23 = &v11[*(v6 + 40)];
  *v23 = v18;
  v23[1] = v20;
  sub_1A2D8DDB0(v11, v9);
  swift_beginAccess();
  v24 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_1A2D8CD00(0, v24[2] + 1, 1, v24);
    *(a2 + 16) = v24;
  }

  v27 = v24[2];
  v26 = v24[3];
  if (v27 >= v26 >> 1)
  {
    v24 = sub_1A2D8CD00(v26 > 1, v27 + 1, 1, v24);
  }

  v24[2] = v27 + 1;
  sub_1A2D8DE14(v9, v24 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v27);
  *(a2 + 16) = v24;
  swift_endAccess();
  if (v27 >= 7)
  {
    swift_beginAccess();
    sub_1A2D8D79C(0, 1);
    swift_endAccess();
  }

  return sub_1A2D8DE78(v11);
}

size_t sub_1A2D8CD00(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3568);
  v10 = *(type metadata accessor for TitleLabelUpdate(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for TitleLabelUpdate(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_1A2D8CED8(uint64_t a1, uint64_t a2)
{
  sub_1A2D9FE10();
  sub_1A2D9FB90();
  v4 = sub_1A2D9FE40();

  return sub_1A2D8CF94(a1, a2, v4);
}

unint64_t sub_1A2D8CF50(uint64_t a1)
{
  v2 = sub_1A2D9FCE0();

  return sub_1A2D8D04C(a1, v2);
}

unint64_t sub_1A2D8CF94(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1A2D9FDD0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1A2D8D04C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1A2D90084(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1A58E6630](v9, a1);
      sub_1A2D900E0(v9);
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

void *sub_1A2D8D114(void *a1, int64_t a2, char a3)
{
  result = sub_1A2D8D134(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A2D8D134(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3540);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3548);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A2D8D268@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A2D9F860();
  *a1 = result;
  return result;
}

uint64_t sub_1A2D8D2C0@<X0>(void *a1@<X8>)
{
  result = sub_1A2D9F840();
  *a1 = v3;
  return result;
}

uint64_t sub_1A2D8D314@<X0>(uint64_t a1@<X8>)
{
  result = sub_1A2D9F880();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1A2D8D39C(uint64_t a1)
{
  v2 = sub_1A2D9F790();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1A2D9F810();
}

uint64_t sub_1A2D8D464(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(&v4 - v1);
  return sub_1A2D9F930();
}

uint64_t sub_1A2D8D5D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(**(v1 + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 240);
  v4 = v2;

  v3(v2);
}

unint64_t sub_1A2D8D654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for TitleLabelUpdate(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1A2D8D79C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1A2D8CD00(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1A2D8D654(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_1A2D8D85C(void *a1)
{
  v2 = v1;
  v4 = *(**(v2 + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 288);

  v4(a1);

  v5 = OBJC_IVAR___CSTitleElementViewAdapter_hostingController;
  v6 = [*(v2 + OBJC_IVAR___CSTitleElementViewAdapter_hostingController) view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6;
  [v6 setNeedsLayout];

  v8 = [*(v2 + v5) view];
  if (!v8)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 layoutIfNeeded];
}

char *_s13CoverSheetKit23TitleElementViewAdapterC5frameACSo6CGRectV_tcfc_0()
{
  v1 = v0;
  v2 = sub_1A2D9F5A0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  *&v0[OBJC_IVAR___CSTitleElementViewAdapter_stateCaptureHandle] = 0;
  v3 = OBJC_IVAR___CSTitleElementViewAdapter_stateCaptureLogger;
  type metadata accessor for StateCaptureLogger();
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  *(v4 + 24) = 7;
  *&v0[v3] = v4;
  v0[OBJC_IVAR___CSTitleElementViewAdapter_visible] = 0;
  sub_1A2D8FEDC(0, &qword_1ED691550);
  sub_1A2D9F590();
  v5 = sub_1A2D9FC50();
  if (qword_1ED691F68 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED691F70;
  type metadata accessor for TitleLabelView.Coordinator(0);
  v7 = swift_allocObject();
  *(v7 + 32) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  v8 = v6;
  sub_1A2D9F640();
  *(v7 + 16) = v5;
  *(v7 + 24) = 1;

  *(v7 + 32) = 0;
  *(v7 + 40) = v8;
  *(v7 + 48) = 1;
  *(v7 + 56) = 0x3FE0000000000000;
  *&v1[OBJC_IVAR___CSTitleElementViewAdapter_coordinator] = v7;
  v9 = *&v1[v3];
  KeyPath = swift_getKeyPath();
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3570));
  aBlock = KeyPath;
  LOBYTE(v24) = 0;
  v25 = v7;
  v26 = v9;

  v11 = sub_1A2D9F930();
  v12 = OBJC_IVAR___CSTitleElementViewAdapter_hostingController;
  *&v1[OBJC_IVAR___CSTitleElementViewAdapter_hostingController] = v11;
  result = [v11 view];
  if (result)
  {
    v14 = result;
    v15 = [objc_opt_self() clearColor];
    [v14 setBackgroundColor_];

    v16 = *&v1[v12];
    sub_1A2D9F900();

    v29.receiver = v1;
    v29.super_class = type metadata accessor for TitleElementViewAdapter();
    v17 = objc_msgSendSuper2(&v29, sel_init);
    v18 = sub_1A2D9FB70();
    sub_1A2D8FEDC(0, &qword_1EB0B3578);
    v19 = sub_1A2D9FC40();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = sub_1A2D8FF24;
    v28 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = sub_1A2D89A90;
    v26 = &block_descriptor;
    v21 = _Block_copy(&aBlock);

    v22 = BSLogAddStateCaptureBlock();
    _Block_release(v21);

    *&v17[OBJC_IVAR___CSTitleElementViewAdapter_stateCaptureHandle] = v22;
    swift_unknownObjectRelease();
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A2D8DDB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleLabelUpdate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2D8DE14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleLabelUpdate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2D8DE78(uint64_t a1)
{
  v2 = type metadata accessor for TitleLabelUpdate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A2D8DED4()
{
  result = qword_1EB0B32B8;
  if (!qword_1EB0B32B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0B32A0);
    sub_1A2D8E774(&qword_1EB0B32C0, &qword_1EB0B32B0);
    sub_1A2D8E774(&qword_1EB0B32C8, &qword_1EB0B3288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0B32B8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1A2D8DFFC()
{
  result = qword_1EB0B32D0;
  if (!qword_1EB0B32D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0B32A8);
    sub_1A2D8E088();
    sub_1A2D8E7BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0B32D0);
  }

  return result;
}

unint64_t sub_1A2D8E088()
{
  result = qword_1EB0B32D8;
  if (!qword_1EB0B32D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0B32E0);
    sub_1A2D8E114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0B32D8);
  }

  return result;
}

unint64_t sub_1A2D8E114()
{
  result = qword_1EB0B2F28;
  if (!qword_1EB0B2F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0B32F0);
    sub_1A2D8E1CC();
    sub_1A2D8E774(&unk_1EB0B2E98, &qword_1EB0B33F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0B2F28);
  }

  return result;
}

unint64_t sub_1A2D8E1CC()
{
  result = qword_1EB0B2F48;
  if (!qword_1EB0B2F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0B3300);
    sub_1A2D8E284();
    sub_1A2D8E774(&unk_1EB0B2EA8, &unk_1EB0B33E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0B2F48);
  }

  return result;
}

unint64_t sub_1A2D8E284()
{
  result = qword_1EB0B2EB8;
  if (!qword_1EB0B2EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0B3310);
    sub_1A2D8E310();
    sub_1A2D69420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0B2EB8);
  }

  return result;
}

unint64_t sub_1A2D8E310()
{
  result = qword_1ED6915C8;
  if (!qword_1ED6915C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0B3320);
    sub_1A2D8E39C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6915C8);
  }

  return result;
}

unint64_t sub_1A2D8E39C()
{
  result = qword_1ED6915D8;
  if (!qword_1ED6915D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0B3330);
    sub_1A2D8E454();
    sub_1A2D8E774(&unk_1ED691568, &unk_1EB0B33B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6915D8);
  }

  return result;
}

unint64_t sub_1A2D8E454()
{
  result = qword_1ED6915E8;
  if (!qword_1ED6915E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0B3340);
    sub_1A2D8E50C();
    sub_1A2D8E774(&unk_1ED691588, &unk_1EB0B33A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6915E8);
  }

  return result;
}

unint64_t sub_1A2D8E50C()
{
  result = qword_1ED6915F8;
  if (!qword_1ED6915F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0B3350);
    sub_1A2D8E5C4();
    sub_1A2D8E774(&unk_1ED691578, &unk_1EB0B3390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6915F8);
  }

  return result;
}

unint64_t sub_1A2D8E5C4()
{
  result = qword_1ED691608;
  if (!qword_1ED691608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0B3360);
    sub_1A2D8E650();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED691608);
  }

  return result;
}

unint64_t sub_1A2D8E650()
{
  result = qword_1ED6915A8;
  if (!qword_1ED6915A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0B3370);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0B3378);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0B3380);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6915A8);
  }

  return result;
}

uint64_t sub_1A2D8E774(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_1A2D8E7BC()
{
  result = qword_1EB0B33F8;
  if (!qword_1EB0B33F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0B3400);
    sub_1A2D8E848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0B33F8);
  }

  return result;
}

unint64_t sub_1A2D8E848()
{
  result = qword_1EB0B2ED8;
  if (!qword_1EB0B2ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0B3410);
    sub_1A2D8E900();
    sub_1A2D8E774(&unk_1EB0B2EA8, &unk_1EB0B33E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0B2ED8);
  }

  return result;
}

unint64_t sub_1A2D8E900()
{
  result = qword_1EB0B2EE8;
  if (!qword_1EB0B2EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0B3420);
    sub_1A2D8E98C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0B2EE8);
  }

  return result;
}

unint64_t sub_1A2D8E98C()
{
  result = qword_1EB0B2EF8;
  if (!qword_1EB0B2EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0B3430);
    sub_1A2D8EA44();
    sub_1A2D8E774(&unk_1ED691568, &unk_1EB0B33B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0B2EF8);
  }

  return result;
}

unint64_t sub_1A2D8EA44()
{
  result = qword_1EB0B2F08;
  if (!qword_1EB0B2F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0B3440);
    sub_1A2D8EAFC();
    sub_1A2D8E774(&unk_1ED691588, &unk_1EB0B33A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0B2F08);
  }

  return result;
}

unint64_t sub_1A2D8EAFC()
{
  result = qword_1EB0B2F18;
  if (!qword_1EB0B2F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0B3450);
    sub_1A2D8EBB4();
    sub_1A2D8E774(&unk_1ED691578, &unk_1EB0B3390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0B2F18);
  }

  return result;
}

unint64_t sub_1A2D8EBB4()
{
  result = qword_1EB0B2F38;
  if (!qword_1EB0B2F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0B3460);
    sub_1A2D8EC40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0B2F38);
  }

  return result;
}

unint64_t sub_1A2D8EC40()
{
  result = qword_1EB0B2F58;
  if (!qword_1EB0B2F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0B3470);
    sub_1A2D8E650();
    sub_1A2D8E774(&unk_1ED691598, &unk_1EB0B33D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0B2F58);
  }

  return result;
}

void sub_1A2D8ECF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  swift_beginAccess();
  v4 = *(v1 + 16);
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  v5 = v2;
}

void sub_1A2D8ED84()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 32);
  *(v2 + 32) = v1;
  v4 = v1;
}

void sub_1A2D8EDE0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  v4 = v1;
}

uint64_t sub_1A2D8EE3C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  result = swift_beginAccess();
  *(v2 + 48) = v1;
  return result;
}

uint64_t sub_1A2D8EE8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 56) = v2;
  return result;
}

uint64_t sub_1A2D8EEE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 64) = v2;
  return result;
}

uint64_t sub_1A2D8EF34()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 65) = v2;
  return result;
}

uint64_t sub_1A2D8EF88()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  result = swift_beginAccess();
  *(v2 + 72) = v1;
  return result;
}

unint64_t sub_1A2D8EFF8()
{
  result = qword_1EB0B34B0;
  if (!qword_1EB0B34B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0B34B0);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A2D8F8C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A2D8F910(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A2D8F968()
{
  result = sub_1A2D9F650();
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1A2D8FA4C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1A2D8FA94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A2D8FAE4()
{
  result = qword_1EB0B3520;
  if (!qword_1EB0B3520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0B3528);
    sub_1A2D8DED4();
    sub_1A2D8DFFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0B3520);
  }

  return result;
}

void sub_1A2D8FB98(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1A2D8FC0C()
{
  result = sub_1A2D9F5F0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1A2D8FCF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm()
{
  sub_1A2D68964(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A2D8FDAC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2D8FE14(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2D8FE7C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A2D8FEDC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1A2D8FF24(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3588);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1A2DA4330;

    v5 = sub_1A2D860C8();

    *(v4 + 32) = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3590);
  }

  else
  {
    v4 = sub_1A2D6DEBC(MEMORY[0x1E69E7CC0]);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3580);
  }

  a1[3] = v6;
  *a1 = v4;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1A2D90134()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(**(v1 + OBJC_IVAR___CSTitleElementViewAdapter_coordinator) + 192);

  v4(v2, v3);
}

uint64_t sub_1A2D901BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B35A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1A2D902E4()
{
  v0 = sub_1A2D9FB00();
  __swift_allocate_value_buffer(v0, qword_1ED692298);
  __swift_project_value_buffer(v0, qword_1ED692298);
  return sub_1A2D9FAD0();
}

uint64_t sub_1A2D9037C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED692030 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D9FB00();
  v3 = __swift_project_value_buffer(v2, qword_1ED692298);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A2D9044C(unsigned __int8 a1)
{
  sub_1A2D9FE10();
  MEMORY[0x1A58E6760](a1);
  return sub_1A2D9FE40();
}

uint64_t sub_1A2D904A8()
{
  v1 = *v0;
  sub_1A2D9FE10();
  MEMORY[0x1A58E6760](v1);
  return sub_1A2D9FE40();
}

uint64_t sub_1A2D9051C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  sub_1A2D90634();
  sub_1A2D9FB10();
  (*(v4 + 8))(a1, a2);
  return v7[1];
}

unint64_t sub_1A2D90634()
{
  result = qword_1EB0B3610;
  if (!qword_1EB0B3610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0B3610);
  }

  return result;
}

uint64_t sub_1A2D906AC(uint64_t a1, uint64_t a2, char a3, double a4)
{
  if (a3)
  {
    v8 = COERCE_DOUBLE(swift_allocObject());
    *(*&v8 + 16) = a4;
    *(*&v8 + 24) = *&a1;
    *(*&v8 + 32) = a2;
    *(*&v8 + 40) = a3;
    sub_1A2D947C0(a1, a2, a3);
  }

  else
  {
    v8 = *&a1 * a4;
  }

  return *&v8;
}

uint64_t sub_1A2D90754(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
    if (*&result > *&a2)
    {
      __break(1u);
    }
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

void *sub_1A2D9078C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

double sub_1A2D9079C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1A2D907C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v10 = type metadata accessor for AdaptiveTimeParameters(0);
  v11 = v10[6];
  v12 = sub_1A2D9FB00();
  v13 = *(v12 - 8);
  (*(v13 + 16))(a5 + v11, a3, v12);
  *(a5 + v10[7]) = a4;

  v14 = sub_1A2D908C8(a1);
  v15 = sub_1A2D909C0(a2, v14);
  result = (*(v13 + 8))(a3, v12);
  *(a5 + v10[8]) = v15;
  return result;
}

uint64_t sub_1A2D908C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1A2D6C358();
  result = MEMORY[0x1A58E6540](v2, &type metadata for AdaptiveTimeParameters.FontParameter, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_1A2D6CD68(&v12, *(*(a1 + 48) + (v11 | (v10 << 6)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A2D909C0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = sub_1A2D6CD68(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A2D90AAC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdaptiveTimeParameters.Entry(0) + 24);
  v4 = sub_1A2D9FB00();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1A2D90B28@<X0>(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = a3;
  a2[1] = a4;
  v6 = *(type metadata accessor for AdaptiveTimeParameters.Entry(0) + 24);
  v7 = sub_1A2D9FB00();
  v8 = *(*(v7 - 8) + 32);

  return v8(a2 + v6, a1, v7);
}

unint64_t sub_1A2D90BB8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = 0.0;
  if (!*(*v2 + 16))
  {
    goto LABEL_14;
  }

  v6 = result;
  result = sub_1A2D6AB64(result);
  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

  v8 = v2[1];
  if (!*(v8 + 16))
  {
    goto LABEL_14;
  }

  v9 = *(v4 + 56) + 24 * result;
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  result = sub_1A2D6AB64(v6);
  if ((v13 & 1) == 0)
  {
    goto LABEL_14;
  }

  v14 = *(v8 + 56) + 24 * result;
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  if (v12 == 3)
  {
    v5 = *&v11;
    v18 = *&v10;
    if (*&v11 > *&v10)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v17 == 3)
    {
LABEL_12:
      v22 = *&v16;
      v20 = *&v15;
      if (*&v15 <= *&v16)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }

    sub_1A2D947C0(*v14, *(v14 + 8), *(v14 + 16));
    sub_1A2D6AC40(0, 0xE000000000000000, 0, 1, v15, v16, v17);
    v20 = v19;
    sub_1A2D6AC40(0, 0xE000000000000000, 0, 1, v15, v16, v17);
    v22 = v21;
    result = sub_1A2D947AC(v15, v16, v17);
    if (v20 <= v22)
    {
LABEL_13:
      v25 = 0;
LABEL_15:
      *a2 = v5;
      *(a2 + 8) = v18;
      *(a2 + 16) = v20;
      *(a2 + 24) = v22;
      *(a2 + 32) = v25;
      return result;
    }

    __break(1u);
  }

  if (v17 != 3)
  {
LABEL_14:
    v25 = 1;
    v18 = 0.0;
    v20 = 0.0;
    v22 = 0.0;
    goto LABEL_15;
  }

  sub_1A2D947C0(v11, v10, v12);
  sub_1A2D947C0(v15, v16, 3);
  sub_1A2D6AC40(0, 0xE000000000000000, 0, 1, v11, v10, v12);
  v5 = v23;
  sub_1A2D6AC40(0, 0xE000000000000000, 0, 1, v11, v10, v12);
  v18 = v24;
  result = sub_1A2D947AC(v11, v10, v12);
  if (v5 <= v18)
  {
    goto LABEL_12;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A2D90DC0@<X0>(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t *a3@<X8>, uint64_t a4@<D0>)
{
  v5 = v4;
  v10 = sub_1A2D9FB00();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v11 + 16);
  if (a2)
  {
    v15 = v5[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v15;
    sub_1A2D944C0(a4, 0, 0, a1, isUniquelyReferenced_nonNull_native);
    v17 = v34;
    v18 = *v5;
    v19 = type metadata accessor for AdaptiveTimeParameters(0);
    v20 = *v14;
    (*v14)(v13, v5 + v19[6], v10);
    v21 = *(v5 + v19[7]);
    *a3 = v18;
    a3[1] = v17;
    v20(a3 + v19[6], v13, v10);
    *(a3 + v19[7]) = v21;
    swift_bridgeObjectRetain_n();

    v22 = sub_1A2D908C8(v18);
    v23 = v17;
  }

  else
  {
    v24 = *v5;

    v25 = swift_isUniquelyReferenced_nonNull_native();
    v34 = v24;
    sub_1A2D944C0(a4, 0, 0, a1, v25);
    v26 = v34;
    v27 = v5[1];
    v19 = type metadata accessor for AdaptiveTimeParameters(0);
    v28 = *v14;
    (*v14)(v13, v5 + v19[6], v10);
    v29 = *(v5 + v19[7]);
    *a3 = v26;
    a3[1] = v27;
    v28(a3 + v19[6], v13, v10);
    *(a3 + v19[7]) = v29;

    v30 = sub_1A2D908C8(v26);

    v22 = v30;
  }

  v31 = sub_1A2D909C0(v23, v22);
  result = (*(v11 + 8))(v13, v10);
  *(a3 + v19[8]) = v31;
  return result;
}

uint64_t sub_1A2D91058()
{
  type metadata accessor for AdaptiveTimeParameters(0);
}

uint64_t sub_1A2D9108C(void *a1)
{
  if (*a1 == 49 && a1[1] == 0xE100000000000000)
  {
    return 1;
  }

  else
  {
    return sub_1A2D9FDD0();
  }
}

uint64_t sub_1A2D910C0()
{
  v0 = sub_1A2D9FB00();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AdaptiveTimeParameters(0);
  __swift_allocate_value_buffer(v4, qword_1EB0B4608);
  v5 = __swift_project_value_buffer(v4, qword_1EB0B4608);
  v20 = sub_1A2D94A0C(&unk_1F158C160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36A0);
  swift_arrayDestroy();
  v19 = sub_1A2D94A0C(&unk_1F158C260);
  swift_arrayDestroy();
  if (qword_1ED692030 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1ED692298);
  v7 = *(v1 + 16);
  v7(v3, v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36A8);
  v8 = v3;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36B0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A2DA4330;
  v12 = (v11 + v10);
  *v12 = 3;
  sub_1A2D9FAE0();
  v13 = sub_1A2D947D4(v11);
  swift_setDeallocating();
  sub_1A2D8FE7C(v12, &qword_1EB0B36B0);
  swift_deallocClassInstance();
  v15 = v19;
  v14 = v20;
  *v5 = v20;
  *(v5 + 1) = v15;
  v7(&v5[v4[6]], v8, v0);
  *&v5[v4[7]] = v13;

  v16 = sub_1A2D908C8(v14);
  v17 = sub_1A2D909C0(v15, v16);
  result = (*(v1 + 8))(v8, v0);
  *&v5[v4[8]] = v17;
  return result;
}

uint64_t sub_1A2D91408(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

uint64_t sub_1A2D91514@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for AdaptiveTimeParameters(0);
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_1A2D6A67C(v6, a3);
}

uint64_t sub_1A2D91574()
{
  v0 = sub_1A2D9FB00();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AdaptiveTimeParameters(0);
  __swift_allocate_value_buffer(v4, qword_1ED692280);
  v5 = __swift_project_value_buffer(v4, qword_1ED692280);
  v20 = sub_1A2D94A0C(&unk_1F158C360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36A0);
  swift_arrayDestroy();
  v19 = sub_1A2D94A0C(&unk_1F158C460);
  swift_arrayDestroy();
  if (qword_1ED692030 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1ED692298);
  v7 = *(v1 + 16);
  v7(v3, v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36A8);
  v8 = v3;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36B0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A2DA4330;
  v12 = (v11 + v10);
  *v12 = 3;
  sub_1A2D9FAE0();
  v13 = sub_1A2D947D4(v11);
  swift_setDeallocating();
  sub_1A2D8FE7C(v12, &qword_1EB0B36B0);
  swift_deallocClassInstance();
  v15 = v19;
  v14 = v20;
  *v5 = v20;
  *(v5 + 1) = v15;
  v7(&v5[v4[6]], v8, v0);
  *&v5[v4[7]] = v13;

  v16 = sub_1A2D908C8(v14);
  v17 = sub_1A2D909C0(v15, v16);
  result = (*(v1 + 8))(v8, v0);
  *&v5[v4[8]] = v17;
  return result;
}

uint64_t sub_1A2D9190C(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_1A2D9FB00();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AdaptiveTimeParameters(0);
  __swift_allocate_value_buffer(v11, a2);
  v12 = __swift_project_value_buffer(v11, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v11, a4);

  v15 = sub_1A2D94B2C(v14);

  v17 = sub_1A2D94B2C(v16);

  v18 = *(v8 + 16);
  v18(v10, v13 + v11[6], v7);
  v19 = *(v13 + v11[7]);
  *v12 = v15;
  *(v12 + 1) = v17;
  v18(&v12[v11[6]], v10, v7);
  *&v12[v11[7]] = v19;

  v20 = sub_1A2D908C8(v15);
  v21 = sub_1A2D909C0(v17, v20);
  result = (*(v8 + 8))(v10, v7);
  *&v12[v11[8]] = v21;
  return result;
}

uint64_t sub_1A2D91B5C()
{
  v0 = sub_1A2D9FB00();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AdaptiveTimeParameters(0);
  __swift_allocate_value_buffer(v4, qword_1ED6922B0);
  v5 = __swift_project_value_buffer(v4, qword_1ED6922B0);
  v20 = sub_1A2D94A0C(&unk_1F158C560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36A0);
  swift_arrayDestroy();
  v19 = sub_1A2D94A0C(&unk_1F158C660);
  swift_arrayDestroy();
  if (qword_1ED692030 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1ED692298);
  v7 = *(v1 + 16);
  v7(v3, v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36A8);
  v8 = v3;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36B0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A2DA4330;
  v12 = (v11 + v10);
  *v12 = 3;
  sub_1A2D9FAE0();
  v13 = sub_1A2D947D4(v11);
  swift_setDeallocating();
  sub_1A2D8FE7C(v12, &qword_1EB0B36B0);
  swift_deallocClassInstance();
  v15 = v19;
  v14 = v20;
  *v5 = v20;
  *(v5 + 1) = v15;
  v7(&v5[v4[6]], v8, v0);
  *&v5[v4[7]] = v13;

  v16 = sub_1A2D908C8(v14);
  v17 = sub_1A2D909C0(v15, v16);
  result = (*(v1 + 8))(v8, v0);
  *&v5[v4[8]] = v17;
  return result;
}

uint64_t sub_1A2D91F50()
{
  v0 = sub_1A2D9FB00();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AdaptiveTimeParameters(0);
  __swift_allocate_value_buffer(v4, qword_1EB0B4638);
  v5 = __swift_project_value_buffer(v4, qword_1EB0B4638);
  v20 = sub_1A2D94A0C(&unk_1F158C760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36A0);
  swift_arrayDestroy();
  v19 = sub_1A2D94A0C(&unk_1F158C880);
  swift_arrayDestroy();
  if (qword_1ED692030 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1ED692298);
  v7 = *(v1 + 16);
  v7(v3, v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36A8);
  v8 = v3;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36B0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A2DA4330;
  v12 = (v11 + v10);
  *v12 = 3;
  sub_1A2D9FAE0();
  v13 = sub_1A2D947D4(v11);
  swift_setDeallocating();
  sub_1A2D8FE7C(v12, &qword_1EB0B36B0);
  swift_deallocClassInstance();
  v15 = v19;
  v14 = v20;
  *v5 = v20;
  *(v5 + 1) = v15;
  v7(&v5[v4[6]], v8, v0);
  *&v5[v4[7]] = v13;

  v16 = sub_1A2D908C8(v14);
  v17 = sub_1A2D909C0(v15, v16);
  result = (*(v1 + 8))(v8, v0);
  *&v5[v4[8]] = v17;
  return result;
}

uint64_t sub_1A2D922BC()
{
  v0 = sub_1A2D9FB00();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AdaptiveTimeParameters(0);
  __swift_allocate_value_buffer(v4, qword_1EB0B4650);
  v5 = __swift_project_value_buffer(v4, qword_1EB0B4650);
  v20 = sub_1A2D94A0C(&unk_1F158C9A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36A0);
  swift_arrayDestroy();
  v19 = sub_1A2D94A0C(&unk_1F158CAC0);
  swift_arrayDestroy();
  if (qword_1ED692030 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1ED692298);
  v7 = *(v1 + 16);
  v7(v3, v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36A8);
  v8 = v3;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36B0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A2DA4330;
  v12 = (v11 + v10);
  *v12 = 3;
  sub_1A2D9FAE0();
  v13 = sub_1A2D947D4(v11);
  swift_setDeallocating();
  sub_1A2D8FE7C(v12, &qword_1EB0B36B0);
  swift_deallocClassInstance();
  v15 = v19;
  v14 = v20;
  *v5 = v20;
  *(v5 + 1) = v15;
  v7(&v5[v4[6]], v8, v0);
  *&v5[v4[7]] = v13;

  v16 = sub_1A2D908C8(v14);
  v17 = sub_1A2D909C0(v15, v16);
  result = (*(v1 + 8))(v8, v0);
  *&v5[v4[8]] = v17;
  return result;
}

uint64_t sub_1A2D92628()
{
  v0 = sub_1A2D9FB00();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AdaptiveTimeParameters(0);
  __swift_allocate_value_buffer(v4, qword_1EB0B4668);
  v5 = __swift_project_value_buffer(v4, qword_1EB0B4668);
  v20 = sub_1A2D94A0C(&unk_1F158CBE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36A0);
  swift_arrayDestroy();
  v19 = sub_1A2D94A0C(&unk_1F158CD00);
  swift_arrayDestroy();
  if (qword_1ED692030 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1ED692298);
  v7 = *(v1 + 16);
  v7(v3, v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36A8);
  v8 = v3;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36B0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A2DA4330;
  v12 = (v11 + v10);
  *v12 = 3;
  sub_1A2D9FAE0();
  v13 = sub_1A2D947D4(v11);
  swift_setDeallocating();
  sub_1A2D8FE7C(v12, &qword_1EB0B36B0);
  swift_deallocClassInstance();
  v15 = v19;
  v14 = v20;
  *v5 = v20;
  *(v5 + 1) = v15;
  v7(&v5[v4[6]], v8, v0);
  *&v5[v4[7]] = v13;

  v16 = sub_1A2D908C8(v14);
  v17 = sub_1A2D909C0(v15, v16);
  result = (*(v1 + 8))(v8, v0);
  *&v5[v4[8]] = v17;
  return result;
}

uint64_t sub_1A2D92994()
{
  v0 = sub_1A2D9FB00();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AdaptiveTimeParameters(0);
  __swift_allocate_value_buffer(v4, qword_1EB0B4680);
  v5 = __swift_project_value_buffer(v4, qword_1EB0B4680);
  v20 = sub_1A2D94A0C(&unk_1F158CE20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36A0);
  swift_arrayDestroy();
  v19 = sub_1A2D94A0C(&unk_1F158CF40);
  swift_arrayDestroy();
  if (qword_1ED692030 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1ED692298);
  v7 = *(v1 + 16);
  v7(v3, v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36A8);
  v8 = v3;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36B0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A2DA4330;
  v12 = (v11 + v10);
  *v12 = 3;
  sub_1A2D9FAE0();
  v13 = sub_1A2D947D4(v11);
  swift_setDeallocating();
  sub_1A2D8FE7C(v12, &qword_1EB0B36B0);
  swift_deallocClassInstance();
  v15 = v19;
  v14 = v20;
  *v5 = v20;
  *(v5 + 1) = v15;
  v7(&v5[v4[6]], v8, v0);
  *&v5[v4[7]] = v13;

  v16 = sub_1A2D908C8(v14);
  v17 = sub_1A2D909C0(v15, v16);
  result = (*(v1 + 8))(v8, v0);
  *&v5[v4[8]] = v17;
  return result;
}

uint64_t sub_1A2D92D00()
{
  v0 = sub_1A2D9FB00();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AdaptiveTimeParameters(0);
  __swift_allocate_value_buffer(v4, qword_1EB0B4698);
  v5 = __swift_project_value_buffer(v4, qword_1EB0B4698);
  v20 = sub_1A2D94A0C(&unk_1F158D060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36A0);
  swift_arrayDestroy();
  v19 = sub_1A2D94A0C(&unk_1F158D180);
  swift_arrayDestroy();
  if (qword_1ED692030 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1ED692298);
  v7 = *(v1 + 16);
  v7(v3, v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36A8);
  v8 = v3;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36B0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A2DA4330;
  v12 = (v11 + v10);
  *v12 = 3;
  sub_1A2D9FAE0();
  v13 = sub_1A2D947D4(v11);
  swift_setDeallocating();
  sub_1A2D8FE7C(v12, &qword_1EB0B36B0);
  swift_deallocClassInstance();
  v15 = v19;
  v14 = v20;
  *v5 = v20;
  *(v5 + 1) = v15;
  v7(&v5[v4[6]], v8, v0);
  *&v5[v4[7]] = v13;

  v16 = sub_1A2D908C8(v14);
  v17 = sub_1A2D909C0(v15, v16);
  result = (*(v1 + 8))(v8, v0);
  *&v5[v4[8]] = v17;
  return result;
}

uint64_t sub_1A2D9306C()
{
  v0 = sub_1A2D9FB00();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AdaptiveTimeParameters(0);
  __swift_allocate_value_buffer(v4, qword_1EB0B46B0);
  v5 = __swift_project_value_buffer(v4, qword_1EB0B46B0);
  v20 = sub_1A2D94A0C(&unk_1F158D2A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36A0);
  swift_arrayDestroy();
  v19 = sub_1A2D94A0C(&unk_1F158D3C0);
  swift_arrayDestroy();
  if (qword_1ED692030 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1ED692298);
  v7 = *(v1 + 16);
  v7(v3, v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36A8);
  v8 = v3;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36B0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A2DA4330;
  v12 = (v11 + v10);
  *v12 = 3;
  sub_1A2D9FAE0();
  v13 = sub_1A2D947D4(v11);
  swift_setDeallocating();
  sub_1A2D8FE7C(v12, &qword_1EB0B36B0);
  swift_deallocClassInstance();
  v15 = v19;
  v14 = v20;
  *v5 = v20;
  *(v5 + 1) = v15;
  v7(&v5[v4[6]], v8, v0);
  *&v5[v4[7]] = v13;

  v16 = sub_1A2D908C8(v14);
  v17 = sub_1A2D909C0(v15, v16);
  result = (*(v1 + 8))(v8, v0);
  *&v5[v4[8]] = v17;
  return result;
}

uint64_t sub_1A2D9340C()
{
  sub_1A2D9FE10();
  MEMORY[0x1A58E6760](0);
  return sub_1A2D9FE40();
}

uint64_t sub_1A2D93450()
{
  sub_1A2D9FE10();
  MEMORY[0x1A58E6760](0);
  return sub_1A2D9FE40();
}

uint64_t sub_1A2D93520(char a1)
{
  sub_1A2D9FE10();
  MEMORY[0x1A58E6760](a1 & 1);
  return sub_1A2D9FE40();
}

uint64_t sub_1A2D935E8(unsigned __int8 a1)
{
  sub_1A2D9FE10();
  MEMORY[0x1A58E6760](a1 >> 6);
  MEMORY[0x1A58E6760](a1 & 1);
  return sub_1A2D9FE40();
}

uint64_t sub_1A2D9364C()
{
  v1 = *v0;
  sub_1A2D9FE10();
  MEMORY[0x1A58E6760](v1 >> 6);
  MEMORY[0x1A58E6760](v1 & 1);
  return sub_1A2D9FE40();
}

uint64_t sub_1A2D936A0()
{
  v1 = *v0;
  MEMORY[0x1A58E6760](v1 >> 6);
  return MEMORY[0x1A58E6760](v1 & 1);
}

uint64_t sub_1A2D936E0()
{
  v1 = *v0;
  sub_1A2D9FE10();
  MEMORY[0x1A58E6760](v1 >> 6);
  MEMORY[0x1A58E6760](v1 & 1);
  return sub_1A2D9FE40();
}

uint64_t sub_1A2D9373C@<X0>(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if (a1)
      {
        if (a2)
        {
          if (qword_1EB0B3B40 != -1)
          {
            swift_once();
          }

          v4 = qword_1EB0B4680;
        }

        else
        {
          if (qword_1EB0B3B38 != -1)
          {
            swift_once();
          }

          v4 = qword_1EB0B4668;
        }
      }

      else if (a2)
      {
        if (qword_1EB0B38F0 != -1)
        {
          swift_once();
        }

        v4 = qword_1EB0B45F0;
      }

      else
      {
        if (qword_1ED692028 != -1)
        {
          swift_once();
        }

        v4 = qword_1ED692280;
      }
    }

    else if (a1)
    {
      if (a2)
      {
        if (qword_1EB0B3B50[0] != -1)
        {
          swift_once();
        }

        v4 = qword_1EB0B46B0;
      }

      else
      {
        if (qword_1EB0B3B48 != -1)
        {
          swift_once();
        }

        v4 = qword_1EB0B4698;
      }
    }

    else if (a2)
    {
      if (qword_1ED691DF0 != -1)
      {
        swift_once();
      }

      v4 = qword_1ED692238;
    }

    else
    {
      if (qword_1ED692168 != -1)
      {
        swift_once();
      }

      v4 = qword_1ED6922B0;
    }
  }

  else if (a1)
  {
    if (a2)
    {
      if (qword_1EB0B3B30 != -1)
      {
        swift_once();
      }

      v4 = qword_1EB0B4650;
    }

    else
    {
      if (qword_1EB0B3B28 != -1)
      {
        swift_once();
      }

      v4 = qword_1EB0B4638;
    }
  }

  else if (a2)
  {
    if (qword_1EB0B3B20 != -1)
    {
      swift_once();
    }

    v4 = qword_1EB0B4620;
  }

  else
  {
    if (qword_1EB0B3B18 != -1)
    {
      swift_once();
    }

    v4 = qword_1EB0B4608;
  }

  v5 = type metadata accessor for AdaptiveTimeParameters(0);
  v6 = __swift_project_value_buffer(v5, v4);

  return sub_1A2D6A67C(v6, a3);
}

uint64_t sub_1A2D93A80(unint64_t a1)
{
  if (a1 > 0x22)
  {
    return 64;
  }

  else
  {
    return byte_1A2DA512A[a1];
  }
}

uint64_t sub_1A2D93AA0()
{
  v0 = [objc_opt_self() effectiveCategory];
  if (v0 > 0x21)
  {
    return 64;
  }

  else
  {
    return byte_1A2DA514D[v0];
  }
}

uint64_t sub_1A2D93B00()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36C0);
  result = sub_1A2D9FD10();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_1A2D9FE10();
      MEMORY[0x1A58E6760](v16);
      result = sub_1A2D9FE40();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1A2D93D50(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A2D93B00();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1A2D93E9C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1A2D93FDC();
  }

  v8 = *v3;
  sub_1A2D9FE10();
  MEMORY[0x1A58E6760](v4);
  result = sub_1A2D9FE40();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A2D9FDF0();
  __break(1u);
  return result;
}

void *sub_1A2D93E9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36C0);
  v2 = *v0;
  v3 = sub_1A2D9FD00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_1A2D93FDC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36C0);
  result = sub_1A2D9FD10();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1A2D9FE10();
      MEMORY[0x1A58E6760](v15);
      result = sub_1A2D9FE40();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A2D941FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36B8);
  v35 = a2;
  result = sub_1A2D9FD90();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
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
      v36 = *(*(v5 + 48) + v20);
      v21 = *(v5 + 56) + 24 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      if ((v35 & 1) == 0)
      {
        sub_1A2D947C0(v22, v23, v24);
      }

      sub_1A2D9FE10();
      MEMORY[0x1A58E6760](v36);
      result = sub_1A2D9FE40();
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
      *(*(v7 + 48) + v15) = v36;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(v16 + 16) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

unint64_t sub_1A2D944C0(uint64_t a1, uint64_t a2, char a3, unsigned __int8 a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_1A2D6AB64(a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1A2D941FC(v18, a5 & 1);
      result = sub_1A2D6AB64(a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_1A2D9FE00();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_1A2D94638();
      result = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + result) = a4;
    v28 = v23[7] + 24 * result;
    *v28 = a1;
    *(v28 + 8) = a2;
    *(v28 + 16) = a3;
    v29 = v23[2];
    v17 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (!v17)
    {
      v23[2] = v30;
      return result;
    }

    goto LABEL_15;
  }

  v24 = v23[7] + 24 * result;
  v25 = *v24;
  v26 = *(v24 + 8);
  *v24 = a1;
  *(v24 + 8) = a2;
  v27 = *(v24 + 16);
  *(v24 + 16) = a3;

  return sub_1A2D947AC(v25, v26, v27);
}

void *sub_1A2D94638()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36B8);
  v2 = *v0;
  v3 = sub_1A2D9FD80();
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        result = sub_1A2D947C0(v19, v20, v21);
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

uint64_t sub_1A2D947AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 4)
  {
  }

  return result;
}

uint64_t sub_1A2D947C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 4)
  {
  }

  return result;
}

unint64_t sub_1A2D947D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36C8);
    v7 = sub_1A2D9FDB0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1A2D95948(v9, v5);
      v11 = *v5;
      result = sub_1A2D6AB64(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1A2D9FB00();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A2D9499C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3618);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A2D94A0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36B8);
  v3 = sub_1A2D9FDB0();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  result = sub_1A2D6AB64(v4);
  if (v9)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v10 = (a1 + 88);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    v11 = v3[7] + 24 * result;
    *v11 = v5;
    *(v11 + 8) = v6;
    *(v11 + 16) = v7;
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v3[2] = v14;
    sub_1A2D947C0(v5, v6, v7);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v10 - 24);
    v5 = *(v10 - 2);
    v6 = *(v10 - 1);
    v7 = *v10;
    result = sub_1A2D6AB64(v4);
    v10 += 32;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A2D94B2C(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = sub_1A2D6AB64(0), (v3 & 1) != 0))
  {
    v4 = *(a1 + 56) + 24 * v2;
    v5 = *v4;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (v7)
    {
      v8 = COERCE_DOUBLE(swift_allocObject());
      *(*&v8 + 16) = 0x3FE6666666666666;
      *(*&v8 + 24) = v5;
      *(*&v8 + 32) = v6;
      *(*&v8 + 40) = v7;
      sub_1A2D947C0(*&v5, v6, v7);
      v9 = 4;
    }

    else
    {
      v9 = 0;
      v8 = v5 * 0.7;
    }

    sub_1A2D947C0(*&v5, v6, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A2D944C0(*&v8, 0, v9, 0, isUniquelyReferenced_nonNull_native);
    sub_1A2D947AC(*&v5, v6, v7);
  }

  else
  {
  }

  return a1;
}

BOOL sub_1A2D94C54(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a2 ^ a1;
  v3 = ((a2 ^ a1) & 1) == 0;
  if (a2 >= 0x40u)
  {
    v3 = 0;
  }

  v4 = a2 & 0xC0;
  v5 = (v2 & 1) == 0;
  if (v4 != 64)
  {
    v5 = 0;
  }

  v6 = (v2 & 1) == 0;
  if (v4 != 128)
  {
    v6 = 0;
  }

  if (a1 >> 6 == 1)
  {
    v6 = v5;
  }

  if (a1 >> 6)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1A2D94CB0()
{
  result = qword_1ED691A28;
  if (!qword_1ED691A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED691A28);
  }

  return result;
}

unint64_t sub_1A2D94D20()
{
  result = qword_1EB0B3620;
  if (!qword_1EB0B3620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0B3620);
  }

  return result;
}

unint64_t sub_1A2D94D78()
{
  result = qword_1EB0B3628;
  if (!qword_1EB0B3628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0B3628);
  }

  return result;
}

unint64_t sub_1A2D94E00()
{
  result = qword_1EB0B3640;
  if (!qword_1EB0B3640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0B3640);
  }

  return result;
}

unint64_t sub_1A2D94E88()
{
  result = qword_1EB0B3658;
  if (!qword_1EB0B3658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0B3658);
  }

  return result;
}

unint64_t sub_1A2D94F10()
{
  result = qword_1EB0B3670;
  if (!qword_1EB0B3670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0B3670);
  }

  return result;
}

uint64_t sub_1A2D94FC4(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_1A2D9501C()
{
  result = qword_1EB0B3698;
  if (!qword_1EB0B3698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0B3698);
  }

  return result;
}

void sub_1A2D95098()
{
  sub_1A2D9514C();
  if (v0 <= 0x3F)
  {
    sub_1A2D9FB00();
    if (v1 <= 0x3F)
    {
      sub_1A2D951B0();
      if (v2 <= 0x3F)
      {
        sub_1A2D9521C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A2D9514C()
{
  if (!qword_1ED691900)
  {
    sub_1A2D6C358();
    v0 = sub_1A2D9FB30();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED691900);
    }
  }
}

void sub_1A2D951B0()
{
  if (!qword_1ED691908[0])
  {
    sub_1A2D9FB00();
    sub_1A2D6C358();
    v0 = sub_1A2D9FB30();
    if (!v1)
    {
      atomic_store(v0, qword_1ED691908);
    }
  }
}

void sub_1A2D9521C()
{
  if (!qword_1ED6918F8)
  {
    sub_1A2D6C358();
    v0 = sub_1A2D9FC10();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED6918F8);
    }
  }
}

uint64_t getEnumTagSinglePayload for AdaptiveTimeParameters.FontParameter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AdaptiveTimeParameters.FontParameter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A2D95408(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}