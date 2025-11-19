uint64_t sub_1E626C930()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1E65E55E8() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_1E65D7EB8() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E625DDFC(v0 + v2, v0 + v5, v0 + v8, v9);
}

void sub_1E626CA84(uint64_t a1)
{
  v1 = [*(a1 + qword_1EE2D9180) navigationItem];
  [v1 _setBottomPaletteNeedsUpdate];
}

uint64_t sub_1E626CB94()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0) - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490) - 8);
  v11 = (v9 + *(v10 + 80) + 9) & ~*(v10 + 80);
  v12 = v11 + *(v10 + 64);
  v13 = (v0 + (((v12 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
  v15 = v13[1];
  return sub_1E6246074((v0 + v2), v0 + v5, *(v0 + v6), v0 + v8, *(v0 + v9), *(v0 + v9 + 8), (v0 + v11), *(v0 + v12), *(v0 + (v12 & 0xFFFFFFFFFFFFFFF8) + 8), *v13);
}

uint64_t sub_1E626CDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(type metadata accessor for AppComposer() - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_1E624A504(a1, a2, a3, v10, a4);
}

uint64_t sub_1E626CE48@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0) - 8);
  v7 = v1 + ((v5 + *(v6 + 80) + 40) & ~*(v6 + 80));

  return sub_1E624A854(v1 + v4, v1 + v5, v7, a1);
}

char *sub_1E626CF50(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v73 = a8;
  v74 = a7;
  v75 = a5;
  v76 = a6;
  v81 = a2;
  v82 = a4;
  ObjectType = swift_getObjectType();
  v80 = sub_1E65E43B8();
  *&v79 = *(v80 - 8);
  v18 = v79;
  v19 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077810, &qword_1E65F96A0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v71 - v25;
  v27 = &v15[qword_1EE2D9170];
  *(v27 + 1) = 0;
  v72 = v27;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v15[qword_1EE2D91A8] = 0;
  *&v15[qword_1EE2D9130] = 0;
  v78 = a1;
  sub_1E5DFD1CC(a1, v26, &unk_1ED077810, &qword_1E65F96A0);
  v28 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077250, &qword_1E65F9860));
  sub_1E5DFD1CC(v26, v24, &unk_1ED077810, &qword_1E65F96A0);
  v29 = sub_1E65E4058();
  sub_1E5DFE50C(v26, &unk_1ED077810, &qword_1E65F96A0);
  *&v15[qword_1EE2D9180] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074278, &unk_1E65FBA70);
  v30 = *(v18 + 72);
  v31 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v32 = swift_allocObject();
  v79 = xmmword_1E65EB9E0;
  *(v32 + 16) = xmmword_1E65EB9E0;
  v33 = v29;
  sub_1E65E4398();
  sub_1E65E43A8();
  v84 = v32;
  sub_1E6275330(&qword_1EE2D4BC0, MEMORY[0x1E697CC60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074280, &qword_1E65EFF70);
  sub_1E5FED46C(&qword_1EE2D4850, &qword_1ED074280, &qword_1E65EFF70);
  sub_1E65E6738();
  sub_1E65E4028();

  *&v15[qword_1EE2D9158] = v81;
  v84 = MEMORY[0x1E69E7CC0];
  if (!(a3 >> 62))
  {
    v34 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_3;
    }

LABEL_20:
    v36 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v34 = sub_1E65E67C8();
  if (!v34)
  {
    goto LABEL_20;
  }

LABEL_3:
  v35 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  do
  {
    v37 = v35;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x1E694E2D0](v37, a3);
      }

      else
      {
        if (v37 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v38 = *(a3 + 8 * v37 + 32);
      }

      v39 = v38;
      v35 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for BarButtonItem();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v37;
      if (v35 == v34)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1E694D8F0]();
    if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v40 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1E65E5F68();
    }

    sub_1E65E5FA8();
    v36 = v84;
  }

  while (v35 != v34);
LABEL_21:
  v71 = a13;
  *&v15[qword_1EE2D9140] = v36;
  v41 = qword_1EE2D9160;
  v42 = sub_1E65DEEA8();
  v43 = *(v42 - 8);
  v80 = v42;
  v81 = v43;
  (*(v43 + 16))(&v15[v41], v82, v42);
  v45 = v75;
  v44 = v76;
  *&v15[qword_1EE2D9188] = v75;
  *&v15[qword_1EE2D9198] = v44;
  v46 = &v15[qword_1EE2D9120];
  v47 = v73;
  v48 = v74;
  *v46 = v74;
  v46[1] = v47;
  v15[qword_1EE2D9118] = a9 & 1;
  *(v72 + 1) = a11;
  swift_unknownObjectWeakAssign();
  v49 = &v15[qword_1EE2D9108];
  *v49 = v71;
  v49[1] = a14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077258, &qword_1E65FBA80);
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v53 = v48;

  v54 = v45;
  v55 = v44;
  *&v15[qword_1EE2D9148] = sub_1E65E4D18();
  v83.receiver = v15;
  v83.super_class = ObjectType;
  v56 = objc_msgSendSuper2(&v83, sel_initWithNibName_bundle_, 0, 0);
  v57 = *&v56[qword_1EE2D9180];
  v58 = v56;
  v59 = [v57 navigationItem];
  sub_1E5DEF738(0, &unk_1EE2D4680, 0x1E69DC708);
  v60 = sub_1E65E5EF8();

  [v59 setRightBarButtonItems_];

  v61 = qword_1EE2D9148;
  v62 = *&v58[qword_1EE2D9148];
  KeyPath = swift_getKeyPath();
  *(&v71 - 2) = MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E5FED46C(&qword_1EE2D6590, &qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E4D08();

  v64 = *&v58[v61];

  sub_1E65E4CF8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078260, &qword_1E65F98D0);
  v65 = swift_allocObject();
  *(v65 + 16) = v79;
  v66 = sub_1E65E3B98();
  v67 = MEMORY[0x1E69DC0A0];
  *(v65 + 32) = v66;
  *(v65 + 40) = v67;
  v68 = sub_1E65E3BA8();
  v69 = MEMORY[0x1E69DC2B0];
  *(v65 + 48) = v68;
  *(v65 + 56) = v69;
  sub_1E65E6388();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v81 + 8))(v82, v80);
  sub_1E5DFE50C(v78, &unk_1ED077810, &qword_1E65F96A0);
  return v58;
}

char *sub_1E626D770(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v73 = a8;
  v74 = a7;
  v75 = a5;
  v76 = a6;
  v81 = a2;
  v82 = a4;
  ObjectType = swift_getObjectType();
  v80 = sub_1E65E43B8();
  *&v79 = *(v80 - 8);
  v18 = v79;
  v19 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777F0, &qword_1E65F9690);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v71 - v25;
  v27 = &v15[qword_1EE2D9170];
  *(v27 + 1) = 0;
  v72 = v27;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v15[qword_1EE2D91A8] = 0;
  *&v15[qword_1EE2D9130] = 0;
  v78 = a1;
  sub_1E5DFD1CC(a1, v26, &unk_1ED0777F0, &qword_1E65F9690);
  v28 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077268, &qword_1E65F98E0));
  sub_1E5DFD1CC(v26, v24, &unk_1ED0777F0, &qword_1E65F9690);
  v29 = sub_1E65E4058();
  sub_1E5DFE50C(v26, &unk_1ED0777F0, &qword_1E65F9690);
  *&v15[qword_1EE2D9180] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074278, &unk_1E65FBA70);
  v30 = *(v18 + 72);
  v31 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v32 = swift_allocObject();
  v79 = xmmword_1E65EB9E0;
  *(v32 + 16) = xmmword_1E65EB9E0;
  v33 = v29;
  sub_1E65E4398();
  sub_1E65E43A8();
  v84 = v32;
  sub_1E6275330(&qword_1EE2D4BC0, MEMORY[0x1E697CC60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074280, &qword_1E65EFF70);
  sub_1E5FED46C(&qword_1EE2D4850, &qword_1ED074280, &qword_1E65EFF70);
  sub_1E65E6738();
  sub_1E65E4028();

  *&v15[qword_1EE2D9158] = v81;
  v84 = MEMORY[0x1E69E7CC0];
  if (!(a3 >> 62))
  {
    v34 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_3;
    }

LABEL_20:
    v36 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v34 = sub_1E65E67C8();
  if (!v34)
  {
    goto LABEL_20;
  }

LABEL_3:
  v35 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  do
  {
    v37 = v35;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x1E694E2D0](v37, a3);
      }

      else
      {
        if (v37 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v38 = *(a3 + 8 * v37 + 32);
      }

      v39 = v38;
      v35 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for BarButtonItem();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v37;
      if (v35 == v34)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1E694D8F0]();
    if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v40 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1E65E5F68();
    }

    sub_1E65E5FA8();
    v36 = v84;
  }

  while (v35 != v34);
LABEL_21:
  v71 = a13;
  *&v15[qword_1EE2D9140] = v36;
  v41 = qword_1EE2D9160;
  v42 = sub_1E65DEEA8();
  v43 = *(v42 - 8);
  v80 = v42;
  v81 = v43;
  (*(v43 + 16))(&v15[v41], v82, v42);
  v45 = v75;
  v44 = v76;
  *&v15[qword_1EE2D9188] = v75;
  *&v15[qword_1EE2D9198] = v44;
  v46 = &v15[qword_1EE2D9120];
  v47 = v73;
  v48 = v74;
  *v46 = v74;
  v46[1] = v47;
  v15[qword_1EE2D9118] = a9 & 1;
  *(v72 + 1) = a11;
  swift_unknownObjectWeakAssign();
  v49 = &v15[qword_1EE2D9108];
  *v49 = v71;
  v49[1] = a14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077258, &qword_1E65FBA80);
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v53 = v48;

  v54 = v45;
  v55 = v44;
  *&v15[qword_1EE2D9148] = sub_1E65E4D18();
  v83.receiver = v15;
  v83.super_class = ObjectType;
  v56 = objc_msgSendSuper2(&v83, sel_initWithNibName_bundle_, 0, 0);
  v57 = *&v56[qword_1EE2D9180];
  v58 = v56;
  v59 = [v57 navigationItem];
  sub_1E5DEF738(0, &unk_1EE2D4680, 0x1E69DC708);
  v60 = sub_1E65E5EF8();

  [v59 setRightBarButtonItems_];

  v61 = qword_1EE2D9148;
  v62 = *&v58[qword_1EE2D9148];
  KeyPath = swift_getKeyPath();
  *(&v71 - 2) = MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E5FED46C(&qword_1EE2D6590, &qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E4D08();

  v64 = *&v58[v61];

  sub_1E65E4CF8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078260, &qword_1E65F98D0);
  v65 = swift_allocObject();
  *(v65 + 16) = v79;
  v66 = sub_1E65E3B98();
  v67 = MEMORY[0x1E69DC0A0];
  *(v65 + 32) = v66;
  *(v65 + 40) = v67;
  v68 = sub_1E65E3BA8();
  v69 = MEMORY[0x1E69DC2B0];
  *(v65 + 48) = v68;
  *(v65 + 56) = v69;
  sub_1E65E6388();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v81 + 8))(v82, v80);
  sub_1E5DFE50C(v78, &unk_1ED0777F0, &qword_1E65F9690);
  return v58;
}

char *sub_1E626DF90(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, char a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v76 = a8;
  v77 = a7;
  v78 = a5;
  v79 = a6;
  v89 = a2;
  v90 = a4;
  ObjectType = swift_getObjectType();
  v88 = sub_1E65E43B8();
  v85 = *(v88 - 8);
  *&v86 = v85;
  v18 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770D8, &unk_1E65FA4B0);
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v74 - v26;
  v28 = &v15[qword_1EE2D9170];
  *(v28 + 1) = 0;
  v75 = v28;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v15[qword_1EE2D91A8] = 0;
  *&v15[qword_1EE2D9130] = 0;
  v29 = v21[2];
  v84 = a1;
  v29(v27, a1, v20);
  v30 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0772F8, &qword_1E65F9910));
  v29(v25, v27, v20);
  v31 = sub_1E65E4058();
  v32 = v21[1];
  v81 = v21 + 1;
  v82 = v20;
  v80 = v32;
  v32(v27, v20);
  *&v15[qword_1EE2D9180] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074278, &unk_1E65FBA70);
  v33 = *(v85 + 72);
  v34 = (*(v86 + 80) + 32) & ~*(v86 + 80);
  v35 = swift_allocObject();
  v86 = xmmword_1E65EB9E0;
  *(v35 + 16) = xmmword_1E65EB9E0;
  v36 = v31;
  sub_1E65E4398();
  sub_1E65E43A8();
  v92 = v35;
  sub_1E6275330(&qword_1EE2D4BC0, MEMORY[0x1E697CC60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074280, &qword_1E65EFF70);
  sub_1E5FED46C(&qword_1EE2D4850, &qword_1ED074280, &qword_1E65EFF70);
  sub_1E65E6738();
  sub_1E65E4028();

  *&v15[qword_1EE2D9158] = v89;
  v92 = MEMORY[0x1E69E7CC0];
  if (!(a3 >> 62))
  {
    v37 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
      goto LABEL_3;
    }

LABEL_20:
    v39 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v37 = sub_1E65E67C8();
  if (!v37)
  {
    goto LABEL_20;
  }

LABEL_3:
  v38 = 0;
  v39 = MEMORY[0x1E69E7CC0];
  do
  {
    v40 = v38;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x1E694E2D0](v40, a3);
      }

      else
      {
        if (v40 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v41 = *(a3 + 8 * v40 + 32);
      }

      v42 = v41;
      v38 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for BarButtonItem();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v40;
      if (v38 == v37)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1E694D8F0]();
    if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v43 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1E65E5F68();
    }

    sub_1E65E5FA8();
    v39 = v92;
  }

  while (v38 != v37);
LABEL_21:
  v85 = a13;
  v87 = a10;
  *&v15[qword_1EE2D9140] = v39;
  v44 = qword_1EE2D9160;
  v45 = sub_1E65DEEA8();
  v46 = *(v45 - 8);
  v88 = v45;
  v89 = v46;
  (*(v46 + 16))(&v15[v44], v90, v45);
  v47 = v78;
  v48 = v79;
  *&v15[qword_1EE2D9188] = v78;
  *&v15[qword_1EE2D9198] = v48;
  v49 = &v15[qword_1EE2D9120];
  v50 = v76;
  v51 = v77;
  *v49 = v77;
  v49[1] = v50;
  v15[qword_1EE2D9118] = a9 & 1;
  *(v75 + 1) = a11;
  swift_unknownObjectWeakAssign();
  v52 = &v15[qword_1EE2D9108];
  *v52 = v85;
  v52[1] = a14;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077258, &qword_1E65FBA80);
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  v56 = v51;

  v57 = v47;
  v58 = v48;
  *&v15[qword_1EE2D9148] = sub_1E65E4D18();
  v91.receiver = v15;
  v91.super_class = ObjectType;
  v59 = objc_msgSendSuper2(&v91, sel_initWithNibName_bundle_, 0, 0);
  v60 = *&v59[qword_1EE2D9180];
  v61 = v59;
  v62 = [v60 navigationItem];
  sub_1E5DEF738(0, &unk_1EE2D4680, 0x1E69DC708);
  v63 = sub_1E65E5EF8();

  [v62 setRightBarButtonItems_];

  v64 = qword_1EE2D9148;
  v65 = *&v61[qword_1EE2D9148];
  KeyPath = swift_getKeyPath();
  *(&v74 - 2) = MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E5FED46C(&qword_1EE2D6590, &qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E4D08();

  v67 = *&v61[v64];

  sub_1E65E4CF8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078260, &qword_1E65F98D0);
  v68 = swift_allocObject();
  *(v68 + 16) = v86;
  v69 = sub_1E65E3B98();
  v70 = MEMORY[0x1E69DC0A0];
  *(v68 + 32) = v69;
  *(v68 + 40) = v70;
  v71 = sub_1E65E3BA8();
  v72 = MEMORY[0x1E69DC2B0];
  *(v68 + 48) = v71;
  *(v68 + 56) = v72;
  sub_1E65E6388();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v89 + 8))(v90, v88);
  v80(v84, v82);
  return v61;
}

char *sub_1E626E800(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v73 = a8;
  v74 = a7;
  v75 = a5;
  v76 = a6;
  v81 = a2;
  v82 = a4;
  ObjectType = swift_getObjectType();
  v80 = sub_1E65E43B8();
  *&v79 = *(v80 - 8);
  v18 = v79;
  v19 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770D0, &unk_1E65FA480);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v71 - v25;
  v27 = &v15[qword_1EE2D9170];
  *(v27 + 1) = 0;
  v72 = v27;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v15[qword_1EE2D91A8] = 0;
  *&v15[qword_1EE2D9130] = 0;
  v78 = a1;
  sub_1E5DFD1CC(a1, v26, &qword_1ED0770D0, &unk_1E65FA480);
  v28 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077300, &qword_1E65F9918));
  sub_1E5DFD1CC(v26, v24, &qword_1ED0770D0, &unk_1E65FA480);
  v29 = sub_1E65E4058();
  sub_1E5DFE50C(v26, &qword_1ED0770D0, &unk_1E65FA480);
  *&v15[qword_1EE2D9180] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074278, &unk_1E65FBA70);
  v30 = *(v18 + 72);
  v31 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v32 = swift_allocObject();
  v79 = xmmword_1E65EB9E0;
  *(v32 + 16) = xmmword_1E65EB9E0;
  v33 = v29;
  sub_1E65E4398();
  sub_1E65E43A8();
  v84 = v32;
  sub_1E6275330(&qword_1EE2D4BC0, MEMORY[0x1E697CC60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074280, &qword_1E65EFF70);
  sub_1E5FED46C(&qword_1EE2D4850, &qword_1ED074280, &qword_1E65EFF70);
  sub_1E65E6738();
  sub_1E65E4028();

  *&v15[qword_1EE2D9158] = v81;
  v84 = MEMORY[0x1E69E7CC0];
  if (!(a3 >> 62))
  {
    v34 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_3;
    }

LABEL_20:
    v36 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v34 = sub_1E65E67C8();
  if (!v34)
  {
    goto LABEL_20;
  }

LABEL_3:
  v35 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  do
  {
    v37 = v35;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x1E694E2D0](v37, a3);
      }

      else
      {
        if (v37 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v38 = *(a3 + 8 * v37 + 32);
      }

      v39 = v38;
      v35 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for BarButtonItem();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v37;
      if (v35 == v34)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1E694D8F0]();
    if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v40 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1E65E5F68();
    }

    sub_1E65E5FA8();
    v36 = v84;
  }

  while (v35 != v34);
LABEL_21:
  v71 = a13;
  *&v15[qword_1EE2D9140] = v36;
  v41 = qword_1EE2D9160;
  v42 = sub_1E65DEEA8();
  v43 = *(v42 - 8);
  v80 = v42;
  v81 = v43;
  (*(v43 + 16))(&v15[v41], v82, v42);
  v45 = v75;
  v44 = v76;
  *&v15[qword_1EE2D9188] = v75;
  *&v15[qword_1EE2D9198] = v44;
  v46 = &v15[qword_1EE2D9120];
  v47 = v73;
  v48 = v74;
  *v46 = v74;
  v46[1] = v47;
  v15[qword_1EE2D9118] = a9 & 1;
  *(v72 + 1) = a11;
  swift_unknownObjectWeakAssign();
  v49 = &v15[qword_1EE2D9108];
  *v49 = v71;
  v49[1] = a14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077258, &qword_1E65FBA80);
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v53 = v48;

  v54 = v45;
  v55 = v44;
  *&v15[qword_1EE2D9148] = sub_1E65E4D18();
  v83.receiver = v15;
  v83.super_class = ObjectType;
  v56 = objc_msgSendSuper2(&v83, sel_initWithNibName_bundle_, 0, 0);
  v57 = *&v56[qword_1EE2D9180];
  v58 = v56;
  v59 = [v57 navigationItem];
  sub_1E5DEF738(0, &unk_1EE2D4680, 0x1E69DC708);
  v60 = sub_1E65E5EF8();

  [v59 setRightBarButtonItems_];

  v61 = qword_1EE2D9148;
  v62 = *&v58[qword_1EE2D9148];
  KeyPath = swift_getKeyPath();
  *(&v71 - 2) = MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E5FED46C(&qword_1EE2D6590, &qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E4D08();

  v64 = *&v58[v61];

  sub_1E65E4CF8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078260, &qword_1E65F98D0);
  v65 = swift_allocObject();
  *(v65 + 16) = v79;
  v66 = sub_1E65E3B98();
  v67 = MEMORY[0x1E69DC0A0];
  *(v65 + 32) = v66;
  *(v65 + 40) = v67;
  v68 = sub_1E65E3BA8();
  v69 = MEMORY[0x1E69DC2B0];
  *(v65 + 48) = v68;
  *(v65 + 56) = v69;
  sub_1E65E6388();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v81 + 8))(v82, v80);
  sub_1E5DFE50C(v78, &qword_1ED0770D0, &unk_1E65FA480);
  return v58;
}

uint64_t sub_1E626F020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E626F088()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E6316E2C(v0 + v3);
}

uint64_t sub_1E626F17C(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1(v1 + v3, v4);
}

uint64_t sub_1E626F240()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1E626F278()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 47) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v4);
  v7 = *v6;
  v8 = v6[1];

  return sub_1E63B1620((v0 + v2), v0 + v3, v7, v8, (v0 + v5));
}

uint64_t sub_1E626F320()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];

  return sub_1E63B3AD4(v0 + v2, v6, v7, v0 + v4, (v0 + ((v4 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E626F3D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1E65D76F8() - 8);
  v7 = (v5 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v5);
  v10 = *(v1 + v5 + 8);

  return sub_1E63B3C74((v1 + v4), v9, v10, v1 + v7, (v1 + v8), (v1 + ((v8 + 47) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_1E626F510(uint64_t (*a1)(unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return a1(v1 + v3, v5, v6);
}

uint64_t sub_1E626F5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(type metadata accessor for AppComposer() - 8);
  v12 = v5 + ((*(v11 + 80) + 16) & ~*(v11 + 80));

  return sub_1E63B6990(a1, a2, a3, a4, v12, a5);
}

unint64_t sub_1E626F664()
{
  result = qword_1ED077970;
  if (!qword_1ED077970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077960, &unk_1E65FA670);
    sub_1E626F6F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077970);
  }

  return result;
}

unint64_t sub_1E626F6F0()
{
  result = qword_1ED077140;
  if (!qword_1ED077140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077980, &qword_1E65F9720);
    sub_1E5FED46C(&qword_1ED077148, &unk_1ED077990, &unk_1E65FA680);
    sub_1E626F7A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077140);
  }

  return result;
}

unint64_t sub_1E626F7A8()
{
  result = qword_1ED077150;
  if (!qword_1ED077150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0779A0, &qword_1E65F9728);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077158, &unk_1E65FA690);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0779B0, &qword_1E65ED910);
    sub_1E626F8FC();
    sub_1E5FED46C(&qword_1EE2D6870, &unk_1ED0779B0, &qword_1E65ED910);
    swift_getOpaqueTypeConformance2();
    sub_1E5FED46C(&qword_1EE2D4BE8, &unk_1ED0779E0, &qword_1E65EC400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077150);
  }

  return result;
}

unint64_t sub_1E626F8FC()
{
  result = qword_1ED077160;
  if (!qword_1ED077160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077158, &unk_1E65FA690);
    sub_1E5FED46C(&unk_1ED0779C0, &qword_1ED077168, &unk_1E65FA6A0);
    sub_1E5FED46C(&unk_1ED0779D0, &qword_1ED077170, &qword_1E65F9730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077160);
  }

  return result;
}

unint64_t sub_1E626F9E0()
{
  result = qword_1ED077180;
  if (!qword_1ED077180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0770E0, &unk_1E65FA4C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077790, &qword_1E65F9668);
    sub_1E5FED46C(&unk_1ED0779F0, &unk_1ED077790, &qword_1E65F9668);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077180);
  }

  return result;
}

uint64_t sub_1E626FAE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1E626FB0C()
{
  result = qword_1ED077188;
  if (!qword_1ED077188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0777A0, &qword_1E65F9670);
    sub_1E626F9E0();
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077188);
  }

  return result;
}

unint64_t sub_1E626FB98()
{
  result = qword_1ED077A30;
  if (!qword_1ED077A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077100, &unk_1E65FA500);
    sub_1E626FC24();
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077A30);
  }

  return result;
}

unint64_t sub_1E626FC24()
{
  result = qword_1ED0771A8;
  if (!qword_1ED0771A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077A40, &qword_1E65F9748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0771B0, &qword_1E65FA6D0);
    sub_1E5FED46C(&unk_1ED077A50, &qword_1ED0771B0, &qword_1E65FA6D0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0771A8);
  }

  return result;
}

unint64_t sub_1E626FD54()
{
  result = qword_1ED07A420;
  if (!qword_1ED07A420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0776C0, &qword_1E65F9648);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0738F0, &qword_1E65F7280);
    sub_1E65E3F88();
    sub_1E5FED46C(&qword_1EE2D68F0, &qword_1ED0738F0, &qword_1E65F7280);
    sub_1E6275330(&unk_1ED07A410, MEMORY[0x1E697C4E8]);
    swift_getOpaqueTypeConformance2();
    sub_1E5FED46C(&qword_1EE2D4C00, &unk_1ED07A430, &qword_1E65EC470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A420);
  }

  return result;
}

uint64_t sub_1E626FED4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + ((v6 + 87) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E61C9FC8(v1 + v4, v1 + v5, v1 + v6, v7, a1);
}

uint64_t sub_1E626FF88@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + v5);
  v10 = *(v1 + ((v7 + 87) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E61CA3B0(v8, v1 + v4, v9, v1 + v6, (v1 + v7), v10, a1);
}

uint64_t objectdestroy_116Tm()
{
  v116 = type metadata accessor for AppComposer();
  v114 = *(*(v116 - 1) + 80);
  v112 = *(*(v116 - 1) + 64);
  v113 = (v114 + 16) & ~v114;
  v115 = v0;
  v109 = v0 + v113;
  v1 = *(v0 + v113);

  v2 = (v0 + v113 + v116[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v111 = type metadata accessor for AccountService();
  v110 = *(v111[-1].Description + 1);
  v110(&v2[v5], v111);
  v6 = v4[7];
  v108 = type metadata accessor for AppStateService();
  v107 = *(v108[-1].Description + 1);
  v107(&v2[v6], v108);
  v7 = v4[8];
  v106 = type metadata accessor for ArchivedSessionService();
  v105 = *(v106[-1].Description + 1);
  v105(&v2[v7], v106);
  v8 = v4[9];
  v104 = type metadata accessor for AssetService();
  v103 = *(v104[-1].Description + 1);
  v103(&v2[v8], v104);
  v9 = v4[10];
  v102 = type metadata accessor for AwardsService();
  v101 = *(v102[-1].Description + 1);
  v101(&v2[v9], v102);
  v10 = v4[11];
  v100 = type metadata accessor for BookmarkService();
  v99 = *(v100[-1].Description + 1);
  v99(&v2[v10], v100);
  v11 = v4[12];
  v98 = type metadata accessor for CatalogService();
  v97 = *(v98[-1].Description + 1);
  v97(&v2[v11], v98);
  v12 = v4[13];
  v96 = type metadata accessor for ConfigurationService();
  v95 = *(v96[-1].Description + 1);
  v95(&v2[v12], v96);
  v13 = v4[14];
  v94 = type metadata accessor for ContentAvailabilityService();
  v93 = *(v94[-1].Description + 1);
  v93(&v2[v13], v94);
  v14 = v4[15];
  v92 = type metadata accessor for EngagementService();
  v91 = *(v92[-1].Description + 1);
  v91(&v2[v14], v92);
  v15 = v4[16];
  v90 = type metadata accessor for HealthDataService();
  v89 = *(v90[-1].Description + 1);
  v89(&v2[v15], v90);
  v16 = v4[17];
  v88 = type metadata accessor for InteropService();
  v87 = *(v88[-1].Description + 1);
  v87(&v2[v16], v88);
  v17 = v4[18];
  v86 = type metadata accessor for LocalizationService();
  v85 = *(v86[-1].Description + 1);
  v85(&v2[v17], v86);
  v18 = v4[19];
  v84 = type metadata accessor for MarketingService();
  v83 = *(v84[-1].Description + 1);
  v83(&v2[v18], v84);
  v19 = v4[20];
  v82 = type metadata accessor for MetricService();
  v81 = *(v82[-1].Description + 1);
  v81(&v2[v19], v82);
  v20 = v4[21];
  v80 = type metadata accessor for PersonalizationService();
  v79 = *(v80[-1].Description + 1);
  v79(&v2[v20], v80);
  v21 = v4[22];
  v78 = type metadata accessor for PlayerService();
  v77 = *(v78[-1].Description + 1);
  v77(&v2[v21], v78);
  v22 = v4[23];
  v76 = type metadata accessor for PrivacyPreferenceService();
  v75 = *(v76[-1].Description + 1);
  v75(&v2[v22], v76);
  v23 = v4[24];
  v74 = type metadata accessor for RecommendationService();
  v73 = *(v74[-1].Description + 1);
  v73(&v2[v23], v74);
  v24 = v4[25];
  v72 = type metadata accessor for RemoteBrowsingService();
  v71 = *(v72[-1].Description + 1);
  v71(&v2[v24], v72);
  v25 = v4[26];
  v70 = type metadata accessor for SearchService();
  v69 = *(v70[-1].Description + 1);
  v69(&v2[v25], v70);
  v26 = v4[27];
  v68 = type metadata accessor for ServiceSubscriptionService();
  v67 = *(v68[-1].Description + 1);
  v67(&v2[v26], v68);
  v27 = v4[28];
  v61 = type metadata accessor for SessionService();
  v66 = *(v61[-1].Description + 1);
  v66(&v2[v27], v61);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v65 = *(v29[-1].Description + 1);
  v65(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v64 = *(v31[-1].Description + 1);
  v64(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v63 = *(v33[-1].Description + 1);
  v63(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v62 = *(QueueService[-1].Description + 1);
  v62(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v60 = *(v42[-1].Description + 1);
  v60(&v2[v41], v42);
  v43 = *(v109 + v116[6]);

  v44 = (v109 + v116[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v110(&v47[v4[6]], v111);
  v107(&v47[v4[7]], v108);
  v105(&v47[v4[8]], v106);
  v103(&v47[v4[9]], v104);
  v101(&v47[v4[10]], v102);
  v99(&v47[v4[11]], v100);
  v97(&v47[v4[12]], v98);
  v95(&v47[v4[13]], v96);
  v93(&v47[v4[14]], v94);
  v91(&v47[v4[15]], v92);
  v89(&v47[v4[16]], v90);
  v87(&v47[v4[17]], v88);
  v85(&v47[v4[18]], v86);
  v83(&v47[v4[19]], v84);
  v81(&v47[v4[20]], v82);
  v79(&v47[v4[21]], v80);
  v77(&v47[v4[22]], v78);
  v75(&v47[v4[23]], v76);
  v73(&v47[v4[24]], v74);
  v71(&v47[v4[25]], v72);
  v69(&v47[v4[26]], v70);
  v67(&v47[v4[27]], v68);
  v66(&v47[v4[28]], v61);
  v65(&v47[v4[29]], v29);
  v64(&v47[v4[30]], v31);
  v63(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v62(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v60(&v47[v4[36]], v42);
  v54 = *(v109 + v116[8]);
  swift_unknownObjectRelease();
  if (*(v109 + v116[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v109 + v116[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v112 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 23) & 0xFFFFFFFFFFFFFFF8;
  v58 = *(v115 + v56 + 8);

  __swift_destroy_boxed_opaque_existential_1((v115 + v57));

  return swift_deallocObject();
}

uint64_t sub_1E6270D70(uint64_t (*a1)(void, void))
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return a1(*v4, v4[1]);
}

uint64_t objectdestroy_125Tm()
{
  v139 = type metadata accessor for AppComposer();
  v137 = *(*(v139 - 1) + 80);
  v1 = (v137 + 16) & ~v137;
  v2 = v1 + *(*(v139 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v136 = *(*(v3 - 8) + 80);
  v133 = *(*(v3 - 8) + 64);
  v4 = sub_1E65D76F8();
  v134 = *(v4 - 8);
  v135 = v4;
  v132 = *(v134 + 80);
  v131 = *(v134 + 64);
  v138 = v0;
  v128 = v0 + v1;
  v5 = *(v0 + v1);

  v6 = (v0 + v1 + v139[5]);
  v7 = *v6;
  swift_unknownObjectRelease();
  v8 = type metadata accessor for AppEnvironment();
  v9 = v8[6];
  v130 = type metadata accessor for AccountService();
  v129 = *(v130[-1].Description + 1);
  v129(v6 + v9, v130);
  v10 = v8[7];
  v127 = type metadata accessor for AppStateService();
  v126 = *(v127[-1].Description + 1);
  v126(v6 + v10, v127);
  v11 = v8[8];
  v125 = type metadata accessor for ArchivedSessionService();
  v124 = *(v125[-1].Description + 1);
  v124(v6 + v11, v125);
  v12 = v8[9];
  v123 = type metadata accessor for AssetService();
  v122 = *(v123[-1].Description + 1);
  v122(v6 + v12, v123);
  v13 = v8[10];
  v121 = type metadata accessor for AwardsService();
  v120 = *(v121[-1].Description + 1);
  v120(v6 + v13, v121);
  v14 = v8[11];
  v119 = type metadata accessor for BookmarkService();
  v118 = *(v119[-1].Description + 1);
  v118(v6 + v14, v119);
  v15 = v8[12];
  v117 = type metadata accessor for CatalogService();
  v116 = *(v117[-1].Description + 1);
  v116(v6 + v15, v117);
  v16 = v8[13];
  v115 = type metadata accessor for ConfigurationService();
  v114 = *(v115[-1].Description + 1);
  v114(v6 + v16, v115);
  v17 = v8[14];
  v113 = type metadata accessor for ContentAvailabilityService();
  v112 = *(v113[-1].Description + 1);
  v112(v6 + v17, v113);
  v18 = v8[15];
  v111 = type metadata accessor for EngagementService();
  v110 = *(v111[-1].Description + 1);
  v110(v6 + v18, v111);
  v19 = v8[16];
  v109 = type metadata accessor for HealthDataService();
  v108 = *(v109[-1].Description + 1);
  v108(v6 + v19, v109);
  v20 = v8[17];
  v107 = type metadata accessor for InteropService();
  v106 = *(v107[-1].Description + 1);
  v106(v6 + v20, v107);
  v21 = v8[18];
  v105 = type metadata accessor for LocalizationService();
  v104 = *(v105[-1].Description + 1);
  v104(v6 + v21, v105);
  v22 = v8[19];
  v103 = type metadata accessor for MarketingService();
  v102 = *(v103[-1].Description + 1);
  v102(v6 + v22, v103);
  v23 = v8[20];
  v101 = type metadata accessor for MetricService();
  v100 = *(v101[-1].Description + 1);
  v100(v6 + v23, v101);
  v24 = v8[21];
  v99 = type metadata accessor for PersonalizationService();
  v98 = *(v99[-1].Description + 1);
  v98(v6 + v24, v99);
  v25 = v8[22];
  v97 = type metadata accessor for PlayerService();
  v96 = *(v97[-1].Description + 1);
  v96(v6 + v25, v97);
  v26 = v8[23];
  v95 = type metadata accessor for PrivacyPreferenceService();
  v94 = *(v95[-1].Description + 1);
  v94(v6 + v26, v95);
  v27 = v8[24];
  v93 = type metadata accessor for RecommendationService();
  v92 = *(v93[-1].Description + 1);
  v92(v6 + v27, v93);
  v28 = v8[25];
  v91 = type metadata accessor for RemoteBrowsingService();
  v90 = *(v91[-1].Description + 1);
  v90(v6 + v28, v91);
  v29 = v8[26];
  v89 = type metadata accessor for SearchService();
  v88 = *(v89[-1].Description + 1);
  v88(v6 + v29, v89);
  v30 = v8[27];
  v87 = type metadata accessor for ServiceSubscriptionService();
  v86 = *(v87[-1].Description + 1);
  v86(v6 + v30, v87);
  v31 = v8[28];
  v80 = type metadata accessor for SessionService();
  v85 = *(v80[-1].Description + 1);
  v85(v6 + v31, v80);
  v32 = v8[29];
  v33 = type metadata accessor for SharePlayService();
  v84 = *(v33[-1].Description + 1);
  v84(v6 + v32, v33);
  v34 = v8[30];
  v35 = type metadata accessor for SiriService();
  v83 = *(v35[-1].Description + 1);
  v83(v6 + v34, v35);
  v36 = v8[31];
  v37 = type metadata accessor for SyncService();
  v82 = *(v37[-1].Description + 1);
  v82(v6 + v36, v37);
  v38 = (v6 + v8[32]);
  v39 = v38[1];

  v40 = v38[3];

  v41 = v38[5];

  v42 = v8[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v81 = *(QueueService[-1].Description + 1);
  v81(v6 + v42, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v6 + v8[34]));
  v44 = *(v6 + v8[35]);

  v45 = v8[36];
  v46 = type metadata accessor for WorkoutPlanService();
  v79 = *(v46[-1].Description + 1);
  v79(v6 + v45, v46);
  v47 = *(v128 + v139[6]);

  v48 = (v128 + v139[7]);
  v49 = *v48;

  v50 = v48[1];

  v51 = (v48 + *(type metadata accessor for AppDataItemResolver() + 24));
  v52 = *v51;
  swift_unknownObjectRelease();
  v129(v51 + v8[6], v130);
  v126(v51 + v8[7], v127);
  v124(v51 + v8[8], v125);
  v122(v51 + v8[9], v123);
  v120(v51 + v8[10], v121);
  v118(v51 + v8[11], v119);
  v116(v51 + v8[12], v117);
  v114(v51 + v8[13], v115);
  v112(v51 + v8[14], v113);
  v110(v51 + v8[15], v111);
  v108(v51 + v8[16], v109);
  v106(v51 + v8[17], v107);
  v104(v51 + v8[18], v105);
  v102(v51 + v8[19], v103);
  v100(v51 + v8[20], v101);
  v98(v51 + v8[21], v99);
  v96(v51 + v8[22], v97);
  v94(v51 + v8[23], v95);
  v92(v51 + v8[24], v93);
  v90(v51 + v8[25], v91);
  v88(v51 + v8[26], v89);
  v86(v51 + v8[27], v87);
  v85(v51 + v8[28], v80);
  v84(v51 + v8[29], v33);
  v83(v51 + v8[30], v35);
  v82(v51 + v8[31], v37);
  v53 = (v51 + v8[32]);
  v54 = v53[1];

  v55 = v53[3];

  v56 = v53[5];

  v81(v51 + v8[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v51 + v8[34]));
  v57 = *(v51 + v8[35]);

  v79(v51 + v8[36], v46);
  v58 = *(v128 + v139[8]);
  swift_unknownObjectRelease();
  if (*(v128 + v139[9] + 8) >= 0xCuLL)
  {
  }

  v59 = (v2 + v136) & ~v136;
  v60 = (v128 + v139[10]);
  if (v60[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v61 = v138 + v59;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v61, *(v61 + 8), *(v61 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v63 = v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3F0, &unk_1E65F7290) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
    v64 = swift_getEnumCaseMultiPayload();
    switch(v64)
    {
      case 2:
        v69 = *(v63 + 8);

        v70 = *(v63 + 32);

        break;
      case 1:
        v66 = sub_1E65DE508();
        (*(*(v66 - 8) + 8))(v63, v66);
        v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A400, &unk_1E65F7150) + 48);
        v68 = sub_1E65D76A8();
        (*(*(v68 - 8) + 8))(v63 + v67, v68);
        break;
      case 0:
        v65 = sub_1E65DE508();
        (*(*(v65 - 8) + 8))(v63, v65);
        break;
    }
  }

  v71 = (v59 + v133 + v132) & ~v132;
  v72 = (v131 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v134 + 8))(v138 + v71, v135);
  v73 = *(v138 + v72);
  swift_unknownObjectRelease();
  v74 = *(v138 + v72 + 24);

  v75 = *(v138 + v72 + 40);

  v76 = *(v138 + v72 + 56);

  v77 = *(v138 + v72 + 72);

  return swift_deallocObject();
}

void sub_1E6271D70(uint64_t a1, void *a2)
{
  v5 = *(sub_1E65D74E8() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1E63267A8(a1, a2, v6);
}

uint64_t objectdestroy_195Tm()
{
  v116 = type metadata accessor for AppComposer();
  v114 = *(*(v116 - 1) + 80);
  v112 = *(*(v116 - 1) + 64);
  v113 = (v114 + 16) & ~v114;
  v115 = v0;
  v109 = v0 + v113;
  v1 = *(v0 + v113);

  v2 = (v0 + v113 + v116[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v111 = type metadata accessor for AccountService();
  v110 = *(v111[-1].Description + 1);
  v110(&v2[v5], v111);
  v6 = v4[7];
  v108 = type metadata accessor for AppStateService();
  v107 = *(v108[-1].Description + 1);
  v107(&v2[v6], v108);
  v7 = v4[8];
  v106 = type metadata accessor for ArchivedSessionService();
  v105 = *(v106[-1].Description + 1);
  v105(&v2[v7], v106);
  v8 = v4[9];
  v104 = type metadata accessor for AssetService();
  v103 = *(v104[-1].Description + 1);
  v103(&v2[v8], v104);
  v9 = v4[10];
  v102 = type metadata accessor for AwardsService();
  v101 = *(v102[-1].Description + 1);
  v101(&v2[v9], v102);
  v10 = v4[11];
  v100 = type metadata accessor for BookmarkService();
  v99 = *(v100[-1].Description + 1);
  v99(&v2[v10], v100);
  v11 = v4[12];
  v98 = type metadata accessor for CatalogService();
  v97 = *(v98[-1].Description + 1);
  v97(&v2[v11], v98);
  v12 = v4[13];
  v96 = type metadata accessor for ConfigurationService();
  v95 = *(v96[-1].Description + 1);
  v95(&v2[v12], v96);
  v13 = v4[14];
  v94 = type metadata accessor for ContentAvailabilityService();
  v93 = *(v94[-1].Description + 1);
  v93(&v2[v13], v94);
  v14 = v4[15];
  v92 = type metadata accessor for EngagementService();
  v91 = *(v92[-1].Description + 1);
  v91(&v2[v14], v92);
  v15 = v4[16];
  v90 = type metadata accessor for HealthDataService();
  v89 = *(v90[-1].Description + 1);
  v89(&v2[v15], v90);
  v16 = v4[17];
  v88 = type metadata accessor for InteropService();
  v87 = *(v88[-1].Description + 1);
  v87(&v2[v16], v88);
  v17 = v4[18];
  v86 = type metadata accessor for LocalizationService();
  v85 = *(v86[-1].Description + 1);
  v85(&v2[v17], v86);
  v18 = v4[19];
  v84 = type metadata accessor for MarketingService();
  v83 = *(v84[-1].Description + 1);
  v83(&v2[v18], v84);
  v19 = v4[20];
  v82 = type metadata accessor for MetricService();
  v81 = *(v82[-1].Description + 1);
  v81(&v2[v19], v82);
  v20 = v4[21];
  v80 = type metadata accessor for PersonalizationService();
  v79 = *(v80[-1].Description + 1);
  v79(&v2[v20], v80);
  v21 = v4[22];
  v78 = type metadata accessor for PlayerService();
  v77 = *(v78[-1].Description + 1);
  v77(&v2[v21], v78);
  v22 = v4[23];
  v76 = type metadata accessor for PrivacyPreferenceService();
  v75 = *(v76[-1].Description + 1);
  v75(&v2[v22], v76);
  v23 = v4[24];
  v74 = type metadata accessor for RecommendationService();
  v73 = *(v74[-1].Description + 1);
  v73(&v2[v23], v74);
  v24 = v4[25];
  v72 = type metadata accessor for RemoteBrowsingService();
  v71 = *(v72[-1].Description + 1);
  v71(&v2[v24], v72);
  v25 = v4[26];
  v70 = type metadata accessor for SearchService();
  v69 = *(v70[-1].Description + 1);
  v69(&v2[v25], v70);
  v26 = v4[27];
  v68 = type metadata accessor for ServiceSubscriptionService();
  v67 = *(v68[-1].Description + 1);
  v67(&v2[v26], v68);
  v27 = v4[28];
  v61 = type metadata accessor for SessionService();
  v66 = *(v61[-1].Description + 1);
  v66(&v2[v27], v61);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v65 = *(v29[-1].Description + 1);
  v65(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v64 = *(v31[-1].Description + 1);
  v64(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v63 = *(v33[-1].Description + 1);
  v63(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v62 = *(QueueService[-1].Description + 1);
  v62(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v60 = *(v42[-1].Description + 1);
  v60(&v2[v41], v42);
  v43 = *(v109 + v116[6]);

  v44 = (v109 + v116[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v110(&v47[v4[6]], v111);
  v107(&v47[v4[7]], v108);
  v105(&v47[v4[8]], v106);
  v103(&v47[v4[9]], v104);
  v101(&v47[v4[10]], v102);
  v99(&v47[v4[11]], v100);
  v97(&v47[v4[12]], v98);
  v95(&v47[v4[13]], v96);
  v93(&v47[v4[14]], v94);
  v91(&v47[v4[15]], v92);
  v89(&v47[v4[16]], v90);
  v87(&v47[v4[17]], v88);
  v85(&v47[v4[18]], v86);
  v83(&v47[v4[19]], v84);
  v81(&v47[v4[20]], v82);
  v79(&v47[v4[21]], v80);
  v77(&v47[v4[22]], v78);
  v75(&v47[v4[23]], v76);
  v73(&v47[v4[24]], v74);
  v71(&v47[v4[25]], v72);
  v69(&v47[v4[26]], v70);
  v67(&v47[v4[27]], v68);
  v66(&v47[v4[28]], v61);
  v65(&v47[v4[29]], v29);
  v64(&v47[v4[30]], v31);
  v63(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v62(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v60(&v47[v4[36]], v42);
  v54 = *(v109 + v116[8]);
  swift_unknownObjectRelease();
  if (*(v109 + v116[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v109 + v116[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v112 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
  v58 = *(v115 + v56);

  __swift_destroy_boxed_opaque_existential_1((v115 + v57));

  return swift_deallocObject();
}

uint64_t sub_1E6272B58(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, void, unint64_t, uint64_t, unint64_t))
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v3 + v8);

  return a3(a1, a2 & 1, v3 + v7, v9, v3 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_1E6272C28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6272C88()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 17) & ~*(v1 + 80));

  return sub_1E650988C(v2, v3);
}

unint64_t sub_1E6272CEC()
{
  result = qword_1ED07A470;
  if (!qword_1ED07A470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077820, &qword_1E65F96A8);
    sub_1E6272D78();
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A470);
  }

  return result;
}

unint64_t sub_1E6272D78()
{
  result = qword_1ED077AF0;
  if (!qword_1ED077AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED07A480, &qword_1E65F97F0);
    sub_1E6272E30();
    sub_1E5FED46C(qword_1EE2D85C0, &unk_1ED07A4B0, &unk_1E65FA7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077AF0);
  }

  return result;
}

unint64_t sub_1E6272E30()
{
  result = qword_1ED077B00;
  if (!qword_1ED077B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED07A490, &unk_1E65FA7B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077B10, &qword_1E65F97F8);
    sub_1E5FED46C(&unk_1ED07A4A0, &unk_1ED077B10, &qword_1E65F97F8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077B00);
  }

  return result;
}

uint64_t sub_1E6272F2C()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_1E625CED4(v2);
}

uint64_t sub_1E6272FC4(uint64_t (*a1)(uint64_t))
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E625DA00(v1 + v4, *(v1 + v5), *(v1 + v5 + 8), v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8), a1);
}

unint64_t sub_1E6273064()
{
  result = qword_1ED0771E0;
  if (!qword_1ED0771E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0770C8, &unk_1E65FA420);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077B40, &qword_1E65F9808);
    sub_1E627312C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0771E0);
  }

  return result;
}

unint64_t sub_1E627312C()
{
  result = qword_1ED0771E8;
  if (!qword_1ED0771E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077B40, &qword_1E65F9808);
    sub_1E5FED46C(&unk_1ED077B50, &qword_1ED0771F0, &unk_1E65FA7E0);
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0771E8);
  }

  return result;
}

uint64_t sub_1E62731E4(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E625CAB4(a1, v1 + v5);
}

uint64_t sub_1E62732C0()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0 + (v4 & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 1);
  v11 = *(v9 + 2);
  v12 = *(v0 + v4);
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_1E5DFE6BC;

  return sub_1E617344C(v5, v6, v7, v8, v0 + v3, v12, v10, v11);
}

uint64_t objectdestroy_157Tm()
{
  v116 = type metadata accessor for AppComposer();
  v114 = *(*(v116 - 1) + 80);
  v112 = *(*(v116 - 1) + 64);
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v115 = v0;
  v113 = (v114 + 48) & ~v114;
  v109 = v0 + v113;
  v3 = *(v0 + v113);

  v4 = (v0 + v113 + v116[5]);
  v5 = *v4;
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment();
  v7 = v6[6];
  v111 = type metadata accessor for AccountService();
  v110 = *(v111[-1].Description + 1);
  v110(&v4[v7], v111);
  v8 = v6[7];
  v108 = type metadata accessor for AppStateService();
  v107 = *(v108[-1].Description + 1);
  v107(&v4[v8], v108);
  v9 = v6[8];
  v106 = type metadata accessor for ArchivedSessionService();
  v105 = *(v106[-1].Description + 1);
  v105(&v4[v9], v106);
  v10 = v6[9];
  v104 = type metadata accessor for AssetService();
  v103 = *(v104[-1].Description + 1);
  v103(&v4[v10], v104);
  v11 = v6[10];
  v102 = type metadata accessor for AwardsService();
  v101 = *(v102[-1].Description + 1);
  v101(&v4[v11], v102);
  v12 = v6[11];
  v100 = type metadata accessor for BookmarkService();
  v99 = *(v100[-1].Description + 1);
  v99(&v4[v12], v100);
  v13 = v6[12];
  v98 = type metadata accessor for CatalogService();
  v97 = *(v98[-1].Description + 1);
  v97(&v4[v13], v98);
  v14 = v6[13];
  v96 = type metadata accessor for ConfigurationService();
  v95 = *(v96[-1].Description + 1);
  v95(&v4[v14], v96);
  v15 = v6[14];
  v94 = type metadata accessor for ContentAvailabilityService();
  v93 = *(v94[-1].Description + 1);
  v93(&v4[v15], v94);
  v16 = v6[15];
  v92 = type metadata accessor for EngagementService();
  v91 = *(v92[-1].Description + 1);
  v91(&v4[v16], v92);
  v17 = v6[16];
  v90 = type metadata accessor for HealthDataService();
  v89 = *(v90[-1].Description + 1);
  v89(&v4[v17], v90);
  v18 = v6[17];
  v88 = type metadata accessor for InteropService();
  v87 = *(v88[-1].Description + 1);
  v87(&v4[v18], v88);
  v19 = v6[18];
  v86 = type metadata accessor for LocalizationService();
  v85 = *(v86[-1].Description + 1);
  v85(&v4[v19], v86);
  v20 = v6[19];
  v84 = type metadata accessor for MarketingService();
  v83 = *(v84[-1].Description + 1);
  v83(&v4[v20], v84);
  v21 = v6[20];
  v82 = type metadata accessor for MetricService();
  v81 = *(v82[-1].Description + 1);
  v81(&v4[v21], v82);
  v22 = v6[21];
  v80 = type metadata accessor for PersonalizationService();
  v79 = *(v80[-1].Description + 1);
  v79(&v4[v22], v80);
  v23 = v6[22];
  v78 = type metadata accessor for PlayerService();
  v77 = *(v78[-1].Description + 1);
  v77(&v4[v23], v78);
  v24 = v6[23];
  v76 = type metadata accessor for PrivacyPreferenceService();
  v75 = *(v76[-1].Description + 1);
  v75(&v4[v24], v76);
  v25 = v6[24];
  v74 = type metadata accessor for RecommendationService();
  v73 = *(v74[-1].Description + 1);
  v73(&v4[v25], v74);
  v26 = v6[25];
  v72 = type metadata accessor for RemoteBrowsingService();
  v71 = *(v72[-1].Description + 1);
  v71(&v4[v26], v72);
  v27 = v6[26];
  v70 = type metadata accessor for SearchService();
  v69 = *(v70[-1].Description + 1);
  v69(&v4[v27], v70);
  v28 = v6[27];
  v68 = type metadata accessor for ServiceSubscriptionService();
  v67 = *(v68[-1].Description + 1);
  v67(&v4[v28], v68);
  v29 = v6[28];
  v61 = type metadata accessor for SessionService();
  v66 = *(v61[-1].Description + 1);
  v66(&v4[v29], v61);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v65 = *(v31[-1].Description + 1);
  v65(&v4[v30], v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v64 = *(v33[-1].Description + 1);
  v64(&v4[v32], v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v63 = *(v35[-1].Description + 1);
  v63(&v4[v34], v35);
  v36 = &v4[v6[32]];
  v37 = *(v36 + 1);

  v38 = *(v36 + 3);

  v39 = *(v36 + 5);

  v40 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v62 = *(QueueService[-1].Description + 1);
  v62(&v4[v40], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v4[v6[34]]);
  v42 = *&v4[v6[35]];

  v43 = v6[36];
  v44 = type metadata accessor for WorkoutPlanService();
  v60 = *(v44[-1].Description + 1);
  v60(&v4[v43], v44);
  v45 = *(v109 + v116[6]);

  v46 = (v109 + v116[7]);
  v47 = *v46;

  v48 = v46[1];

  v49 = v46 + *(type metadata accessor for AppDataItemResolver() + 24);
  v50 = *v49;
  swift_unknownObjectRelease();
  v110(&v49[v6[6]], v111);
  v107(&v49[v6[7]], v108);
  v105(&v49[v6[8]], v106);
  v103(&v49[v6[9]], v104);
  v101(&v49[v6[10]], v102);
  v99(&v49[v6[11]], v100);
  v97(&v49[v6[12]], v98);
  v95(&v49[v6[13]], v96);
  v93(&v49[v6[14]], v94);
  v91(&v49[v6[15]], v92);
  v89(&v49[v6[16]], v90);
  v87(&v49[v6[17]], v88);
  v85(&v49[v6[18]], v86);
  v83(&v49[v6[19]], v84);
  v81(&v49[v6[20]], v82);
  v79(&v49[v6[21]], v80);
  v77(&v49[v6[22]], v78);
  v75(&v49[v6[23]], v76);
  v73(&v49[v6[24]], v74);
  v71(&v49[v6[25]], v72);
  v69(&v49[v6[26]], v70);
  v67(&v49[v6[27]], v68);
  v66(&v49[v6[28]], v61);
  v65(&v49[v6[29]], v31);
  v64(&v49[v6[30]], v33);
  v63(&v49[v6[31]], v35);
  v51 = &v49[v6[32]];
  v52 = *(v51 + 1);

  v53 = *(v51 + 3);

  v54 = *(v51 + 5);

  v62(&v49[v6[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v49[v6[34]]);
  v55 = *&v49[v6[35]];

  v60(&v49[v6[36]], v44);
  v56 = *(v109 + v116[8]);
  swift_unknownObjectRelease();
  if (*(v109 + v116[9] + 8) >= 0xCuLL)
  {
  }

  v57 = (v109 + v116[10]);
  if (v57[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v58 = *(v115 + ((v112 + v113 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1E62740F4(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E61753E4(a1, v6, v7, v1 + v5);
}

unint64_t sub_1E6274228()
{
  result = qword_1ED077C80;
  if (!qword_1ED077C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073DA8, &unk_1E65FA550);
    sub_1E6071DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077C80);
  }

  return result;
}

uint64_t sub_1E62742B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getObjectType();
  return sub_1E65DB678();
}

uint64_t sub_1E62742F0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1E6274384(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, unint64_t, unint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_1E65D76F8() - 8);
  v11 = v3 + ((v9 + *(v10 + 80) + 80) & ~*(v10 + 80));

  return a3(a1, a2, v3 + v7, v3 + v8, v3 + v9, v11);
}

uint64_t sub_1E62744A8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1E627451C()
{
  result = qword_1ED077210;
  if (!qword_1ED077210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077208, &qword_1E65F9848);
    sub_1E5FED46C(&qword_1ED077218, &qword_1ED077220, &qword_1E65F9850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077210);
  }

  return result;
}

unint64_t sub_1E62745D4()
{
  result = qword_1ED077230;
  if (!qword_1ED077230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077228, &unk_1E65FA8E0);
    sub_1E5FED46C(&qword_1ED077238, &qword_1ED077240, &qword_1E65F9858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077230);
  }

  return result;
}

unint64_t sub_1E627468C()
{
  result = qword_1ED077278;
  if (!qword_1ED077278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0770B8, &unk_1E65FA400);
    sub_1E5FED46C(&qword_1ED077280, &qword_1ED077288, &qword_1E65F98E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077278);
  }

  return result;
}

unint64_t sub_1E6274744()
{
  result = qword_1ED077290;
  if (!qword_1ED077290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076F58, &qword_1E65F8FA0);
    sub_1E5FED46C(&qword_1ED077298, &qword_1ED076F78, &qword_1E65F8FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077290);
  }

  return result;
}

unint64_t sub_1E62747FC()
{
  result = qword_1ED0772A0;
  if (!qword_1ED0772A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076FA0, &qword_1E65F90D0);
    sub_1E5FED46C(&qword_1ED0772A8, &qword_1ED076FD0, &qword_1E65F9118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0772A0);
  }

  return result;
}

unint64_t sub_1E62748B4()
{
  result = qword_1ED0772B8;
  if (!qword_1ED0772B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0772B0, &qword_1E65F98F0);
    sub_1E6274940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0772B8);
  }

  return result;
}

unint64_t sub_1E6274940()
{
  result = qword_1ED0772C0;
  if (!qword_1ED0772C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0772C8, &qword_1E65F98F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0772D0, &qword_1E65F9900);
    sub_1E5FED46C(&qword_1ED0772D8, &qword_1ED0772D0, &qword_1E65F9900);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0772C0);
  }

  return result;
}

unint64_t sub_1E6274A3C()
{
  result = qword_1ED0772E8;
  if (!qword_1ED0772E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0772E0, &qword_1E65F9908);
    sub_1E5FED46C(&qword_1ED0772F0, &unk_1ED077DB0, &unk_1E65FAB30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0772E8);
  }

  return result;
}

char *sub_1E6274AF4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v73 = a8;
  v74 = a7;
  v75 = a5;
  v76 = a6;
  v81 = a2;
  v82 = a4;
  ObjectType = swift_getObjectType();
  v80 = sub_1E65E43B8();
  *&v79 = *(v80 - 8);
  v18 = v79;
  v19 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0756B8, &qword_1E65F1C68);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v71 - v25;
  v27 = &v15[qword_1EE2D9170];
  *(v27 + 1) = 0;
  v72 = v27;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v15[qword_1EE2D91A8] = 0;
  *&v15[qword_1EE2D9130] = 0;
  v78 = a1;
  sub_1E5DFD1CC(a1, v26, &qword_1ED0756B8, &qword_1E65F1C68);
  v28 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077310, &qword_1E65F9928));
  sub_1E5DFD1CC(v26, v24, &qword_1ED0756B8, &qword_1E65F1C68);
  v29 = sub_1E65E4058();
  sub_1E5DFE50C(v26, &qword_1ED0756B8, &qword_1E65F1C68);
  *&v15[qword_1EE2D9180] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074278, &unk_1E65FBA70);
  v30 = *(v18 + 72);
  v31 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v32 = swift_allocObject();
  v79 = xmmword_1E65EB9E0;
  *(v32 + 16) = xmmword_1E65EB9E0;
  v33 = v29;
  sub_1E65E4398();
  sub_1E65E43A8();
  v84 = v32;
  sub_1E6275330(&qword_1EE2D4BC0, MEMORY[0x1E697CC60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074280, &qword_1E65EFF70);
  sub_1E5FED46C(&qword_1EE2D4850, &qword_1ED074280, &qword_1E65EFF70);
  sub_1E65E6738();
  sub_1E65E4028();

  *&v15[qword_1EE2D9158] = v81;
  v84 = MEMORY[0x1E69E7CC0];
  if (!(a3 >> 62))
  {
    v34 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_3;
    }

LABEL_20:
    v36 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v34 = sub_1E65E67C8();
  if (!v34)
  {
    goto LABEL_20;
  }

LABEL_3:
  v35 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  do
  {
    v37 = v35;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x1E694E2D0](v37, a3);
      }

      else
      {
        if (v37 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v38 = *(a3 + 8 * v37 + 32);
      }

      v39 = v38;
      v35 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for BarButtonItem();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v37;
      if (v35 == v34)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1E694D8F0]();
    if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v40 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1E65E5F68();
    }

    sub_1E65E5FA8();
    v36 = v84;
  }

  while (v35 != v34);
LABEL_21:
  v71 = a13;
  *&v15[qword_1EE2D9140] = v36;
  v41 = qword_1EE2D9160;
  v42 = sub_1E65DEEA8();
  v43 = *(v42 - 8);
  v80 = v42;
  v81 = v43;
  (*(v43 + 16))(&v15[v41], v82, v42);
  v45 = v75;
  v44 = v76;
  *&v15[qword_1EE2D9188] = v75;
  *&v15[qword_1EE2D9198] = v44;
  v46 = &v15[qword_1EE2D9120];
  v47 = v73;
  v48 = v74;
  *v46 = v74;
  v46[1] = v47;
  v15[qword_1EE2D9118] = a9 & 1;
  *(v72 + 1) = a11;
  swift_unknownObjectWeakAssign();
  v49 = &v15[qword_1EE2D9108];
  *v49 = v71;
  v49[1] = a14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077258, &qword_1E65FBA80);
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v53 = v48;

  v54 = v45;
  v55 = v44;
  *&v15[qword_1EE2D9148] = sub_1E65E4D18();
  v83.receiver = v15;
  v83.super_class = ObjectType;
  v56 = objc_msgSendSuper2(&v83, sel_initWithNibName_bundle_, 0, 0);
  v57 = *&v56[qword_1EE2D9180];
  v58 = v56;
  v59 = [v57 navigationItem];
  sub_1E5DEF738(0, &unk_1EE2D4680, 0x1E69DC708);
  v60 = sub_1E65E5EF8();

  [v59 setRightBarButtonItems_];

  v61 = qword_1EE2D9148;
  v62 = *&v58[qword_1EE2D9148];
  KeyPath = swift_getKeyPath();
  *(&v71 - 2) = MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E5FED46C(&qword_1EE2D6590, &qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E4D08();

  v64 = *&v58[v61];

  sub_1E65E4CF8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078260, &qword_1E65F98D0);
  v65 = swift_allocObject();
  *(v65 + 16) = v79;
  v66 = sub_1E65E3B98();
  v67 = MEMORY[0x1E69DC0A0];
  *(v65 + 32) = v66;
  *(v65 + 40) = v67;
  v68 = sub_1E65E3BA8();
  v69 = MEMORY[0x1E69DC2B0];
  *(v65 + 48) = v68;
  *(v65 + 56) = v69;
  sub_1E65E6388();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v81 + 8))(v82, v80);
  sub_1E5DFE50C(v78, &qword_1ED0756B8, &qword_1E65F1C68);
  return v58;
}

uint64_t sub_1E6275330(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1E6275404(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17, uint64_t *a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v22 = v21;
  v71 = a7;
  v72 = a8;
  v76 = a4;
  v77 = a6;
  LODWORD(v75) = a3;
  ObjectType = swift_getObjectType();
  v26 = sub_1E65E43B8();
  v74 = *(v26 - 8);
  v27 = v74;
  v28 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v21[qword_1EE2D9170];
  *(v29 + 1) = 0;
  v70 = v29;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v21[qword_1EE2D91A8] = 0;
  *&v21[qword_1EE2D9130] = 0;
  v30 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(a17, a18));
  v79 = a1;
  v80 = a2;
  v81 = v75;
  v31 = sub_1E65E4058();
  *&v21[qword_1EE2D9180] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074278, &unk_1E65FBA70);
  v32 = *(v27 + 72);
  v33 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v75 = xmmword_1E65EB9E0;
  *(swift_allocObject() + 16) = xmmword_1E65EB9E0;
  v34 = v31;
  sub_1E65E4398();
  sub_1E65E43A8();
  sub_1E6275330(&qword_1EE2D4BC0, MEMORY[0x1E697CC60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074280, &qword_1E65EFF70);
  sub_1E5FED46C(&qword_1EE2D4850, &qword_1ED074280, &qword_1E65EFF70);
  sub_1E65E6738();
  sub_1E65E4028();

  *&v21[qword_1EE2D9158] = v76;
  v79 = MEMORY[0x1E69E7CC0];
  if (!(a5 >> 62))
  {
    v35 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_3;
    }

LABEL_20:
    v37 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v35 = sub_1E65E67C8();
  if (!v35)
  {
    goto LABEL_20;
  }

LABEL_3:
  v36 = 0;
  v37 = MEMORY[0x1E69E7CC0];
  do
  {
    v38 = v36;
    while (1)
    {
      if ((a5 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x1E694E2D0](v38, a5);
      }

      else
      {
        if (v38 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v39 = *(a5 + 8 * v38 + 32);
      }

      v40 = v39;
      v36 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for BarButtonItem();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v38;
      if (v36 == v35)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1E694D8F0]();
    if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v41 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1E65E5F68();
    }

    sub_1E65E5FA8();
    v37 = v79;
  }

  while (v36 != v35);
LABEL_21:
  v76 = a21;
  v68[2] = a19;
  v68[3] = a20;
  v68[0] = a15;
  v68[1] = a14;
  *&v22[qword_1EE2D9140] = v37;
  v42 = qword_1EE2D9160;
  v69 = sub_1E65DEEA8();
  v74 = *(v69 - 8);
  (*(v74 + 16))(&v22[v42], v77, v69);
  v43 = v71;
  v44 = v72;
  *&v22[qword_1EE2D9188] = v71;
  *&v22[qword_1EE2D9198] = v44;
  v45 = &v22[qword_1EE2D9120];
  *v45 = a9;
  v45[1] = a10;
  v22[qword_1EE2D9118] = a11 & 1;
  *(v70 + 1) = a13;
  swift_unknownObjectWeakAssign();
  v46 = &v22[qword_1EE2D9108];
  *v46 = v68[0];
  v46[1] = a16;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077258, &qword_1E65FBA80);
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  v50 = a9;

  v51 = v43;
  v52 = v44;
  *&v22[qword_1EE2D9148] = sub_1E65E4D18();
  v78.receiver = v22;
  v78.super_class = ObjectType;
  v53 = objc_msgSendSuper2(&v78, sel_initWithNibName_bundle_, 0, 0);
  v54 = *&v53[qword_1EE2D9180];
  v55 = v53;
  v56 = [v54 navigationItem];
  sub_1E5DEF738(0, &unk_1EE2D4680, 0x1E69DC708);
  v57 = sub_1E65E5EF8();

  [v56 setRightBarButtonItems_];

  v58 = qword_1EE2D9148;
  v59 = *&v55[qword_1EE2D9148];
  KeyPath = swift_getKeyPath();
  v68[-2] = MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E5FED46C(&qword_1EE2D6590, &qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E4D08();

  v61 = *&v55[v58];

  sub_1E65E4CF8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078260, &qword_1E65F98D0);
  v62 = swift_allocObject();
  *(v62 + 16) = v75;
  v63 = sub_1E65E3B98();
  v64 = MEMORY[0x1E69DC0A0];
  *(v62 + 32) = v63;
  *(v62 + 40) = v64;
  v65 = sub_1E65E3BA8();
  v66 = MEMORY[0x1E69DC2B0];
  *(v62 + 48) = v65;
  *(v62 + 56) = v66;
  sub_1E65E6388();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v74 + 8))(v77, v69);
  return v55;
}

uint64_t ToastService.publishToastAction.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ToastService.actionStream.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ToastService.requestToastDismissal.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
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

uint64_t sub_1E6275C18(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1E6275C60(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t dispatch thunk of RouteDetourProtocol.resolveDetour(for:composer:display:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 8);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_1E5DFA78C;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1E6275E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for PageMetricsClick();
  v6[5] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v9 = sub_1E65DF618();
  v6[7] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6275EE0, 0, 0);
}

uint64_t sub_1E6275EE0()
{
  v1 = v0[7];
  sub_1E6276C38(v0[2], v0[8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[8];
  if (EnumCaseMultiPayload > 1)
  {
    v3 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077328, &qword_1E65F99C0) + 48);
    v38 = sub_1E65DF6C8();
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v5 = v0[5];
      v4 = v0[6];
      v6 = v0[3];
      v7 = v0[4];
      v8 = *v3;
      v9 = sub_1E65D9D78();
      (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
      v10 = v5[5];
      v11 = *MEMORY[0x1E69CBAA0];
      v12 = sub_1E65D8C68();
      (*(*(v12 - 8) + 104))(v4 + v10, v11, v12);
      v13 = v5[6];
      v14 = sub_1E65D74E8();
      (*(*(v14 - 8) + 56))(v4 + v13, 1, 1, v14);
      v15 = v5[8];
      v16 = sub_1E65DA208();
      (*(*(v16 - 8) + 56))(v4 + v15, 1, 1, v16);
      v17 = sub_1E6462E80(v6, v8);
      v19 = v18;
      v20 = v5[14];
      v21 = *MEMORY[0x1E69CBCC8];
      v22 = sub_1E65D8F28();
      (*(*(v22 - 8) + 104))(v4 + v20, v21, v22);
      v23 = v5[15];
      v24 = *MEMORY[0x1E69CC488];
      v25 = sub_1E65D9908();
      v26 = *(v25 - 8);
      (*(v26 + 104))(v4 + v23, v24, v25);
      (*(v26 + 56))(v4 + v23, 0, 1, v25);
      v27 = MEMORY[0x1E69E7CC0];
      v28 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v4 + v5[7]) = v27;
      v29 = (v4 + v5[9]);
      *v29 = 0;
      v29[1] = 0;
      v30 = (v4 + v5[10]);
      *v30 = 0;
      v30[1] = 0;
      *(v4 + v5[11]) = v28;
      v31 = (v4 + v5[12]);
      *v31 = 0;
      v31[1] = 0;
      v32 = (v4 + v5[13]);
      *v32 = v17;
      v32[1] = v19;
      v33 = *(v7 + 56);
      v42 = (*(v7 + 48) + **(v7 + 48));
      v34 = *(*(v7 + 48) + 4);
      v35 = swift_task_alloc();
      v0[9] = v35;
      *v35 = v0;
      v35[1] = sub_1E627632C;
      v36 = v0[6];

      return v42(v36);
    }

    v38 = sub_1E65DF658();
  }

  (*(*(v38 - 8) + 8))(v3, v38);
  v39 = v0[8];
  v40 = v0[6];

  v41 = v0[1];

  return v41();
}

uint64_t sub_1E627632C()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1E62764B8;
  }

  else
  {
    v3 = sub_1E6276440;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6276440()
{
  sub_1E5FC0990(v0[6]);
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E62764B8()
{
  v1 = v0[8];
  sub_1E5FC0990(v0[6]);

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1E6276534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a6;
  v7 = sub_1E65DF6C8();
  v6[4] = v7;
  v8 = *(v7 - 8);
  v6[5] = v8;
  v9 = *(v8 + 64) + 15;
  v6[6] = swift_task_alloc();
  v10 = type metadata accessor for PageMetricsClick();
  v6[7] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6276624, 0, 0);
}

uint64_t sub_1E6276624()
{
  v1 = v0[2];
  v2 = v0[8];
  if (v1 >> 62)
  {
    v37 = v0[6];
    v38 = v0[8];

    v39 = v0[1];

    return v39();
  }

  else
  {
    v3 = v0[6];
    v4 = v0[7];
    v5 = v0[4];
    v6 = v0[5];
    v7 = v0[3];
    v8 = sub_1E65D9D78();
    (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
    v9 = v4[5];
    v10 = *MEMORY[0x1E69CBAA0];
    v11 = sub_1E65D8C68();
    (*(*(v11 - 8) + 104))(v2 + v9, v10, v11);
    v12 = v4[6];
    v13 = sub_1E65D74E8();
    (*(*(v13 - 8) + 56))(v2 + v12, 1, 1, v13);
    v14 = v4[8];
    v15 = sub_1E65DA208();
    (*(*(v15 - 8) + 56))(v2 + v14, 1, 1, v15);
    (*(v6 + 104))(v3, *MEMORY[0x1E699E6E8], v5);
    v16 = sub_1E6462E80(v3, v1);
    v18 = v17;
    (*(v6 + 8))(v3, v5);
    v19 = v4[14];
    v20 = *MEMORY[0x1E69CBCC8];
    v21 = sub_1E65D8F28();
    (*(*(v21 - 8) + 104))(v2 + v19, v20, v21);
    v22 = v4[15];
    v23 = *MEMORY[0x1E69CC488];
    v24 = sub_1E65D9908();
    v25 = *(v24 - 8);
    (*(v25 + 104))(v2 + v22, v23, v24);
    (*(v25 + 56))(v2 + v22, 0, 1, v24);
    v26 = MEMORY[0x1E69E7CC0];
    v27 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v2 + v4[7]) = v26;
    v28 = (v2 + v4[9]);
    *v28 = 0;
    v28[1] = 0;
    v29 = (v2 + v4[10]);
    *v29 = 0;
    v29[1] = 0;
    *(v2 + v4[11]) = v27;
    v30 = (v2 + v4[12]);
    *v30 = 0;
    v30[1] = 0;
    v31 = (v2 + v4[13]);
    *v31 = v16;
    v31[1] = v18;
    v32 = *(v7 + 56);
    v40 = (*(v7 + 48) + **(v7 + 48));
    v33 = *(*(v7 + 48) + 4);
    v34 = swift_task_alloc();
    v0[9] = v34;
    *v34 = v0;
    v34[1] = sub_1E6276A30;
    v35 = v0[8];

    return v40(v35);
  }
}

uint64_t sub_1E6276A30()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1E6276BBC;
  }

  else
  {
    v3 = sub_1E6276B44;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6276B44()
{
  sub_1E5FC0990(v0[8]);
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6276BBC()
{
  v1 = v0[6];
  sub_1E5FC0990(v0[8]);

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1E6276C38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DF618();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6276C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752C8, &unk_1E65F8500) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v10 = sub_1E65D8668();
  v4[16] = v10;
  v11 = *(v10 - 8);
  v4[17] = v11;
  v12 = *(v11 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753C0, &unk_1E6606290);
  v4[25] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v15 = sub_1E65D9658();
  v4[27] = v15;
  v16 = *(v15 - 8);
  v4[28] = v16;
  v17 = *(v16 + 64) + 15;
  v4[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6276F64, 0, 0);
}

uint64_t sub_1E6276F64()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  sub_1E65E4C98();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_17;
  }

  if (!EnumCaseMultiPayload)
  {
    (*(v0[28] + 32))(v0[29], v0[26], v0[27]);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5DFE50C(v0[26], &qword_1ED0753C0, &unk_1E6606290);
LABEL_17:
    v69 = v0[6];
    v70 = sub_1E65D7A38();
    (*(*(v70 - 8) + 56))(v69, 1, 1, v70);
    goto LABEL_18;
  }

  v6 = v0[28];
  v5 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753C8, &qword_1E65F1A48) + 48);
  (*(v6 + 32))(v5, v8, v7);
  v10 = sub_1E65D76A8();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);
LABEL_6:
  v11 = v0[29];
  v12 = v0[24];
  v13 = v0[16];
  v14 = v0[17];
  v15 = v0[15];
  sub_1E65D9618();
  sub_1E65D85C8();
  v16 = *(v14 + 8);
  v16(v12, v13);
  v17 = sub_1E65D9678();
  LODWORD(v11) = (*(*(v17 - 8) + 48))(v15, 1, v17);
  sub_1E5DFE50C(v15, &qword_1ED0752C8, &unk_1E65F8500);
  v18 = v0[29];
  v89 = v0[27];
  v90 = v0[28];
  v19 = v0[16];
  v98 = v0[12];
  v91 = v0[10];
  v92 = v0[11];
  v96 = v0[8];
  v94 = v0[7];
  v100 = v0[6];
  if (v11 == 1)
  {
    v21 = v0[22];
    v20 = v0[23];
    v85 = v0[21];
    v88 = v0[20];
    v22 = v0[14];
    sub_1E65D9618();
    sub_1E65D8528();
    v16(v20, v19);
    v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077330, &qword_1E65F99D0) + 48);
    sub_1E65D9618();
    v23 = sub_1E65D8658();
    v25 = v24;
    v27 = v26;
    v16(v21, v19);
    sub_1E6277978(v23, v25, v27 & 1, v22);
    sub_1E5F87058(v23, v25, v27 & 1);
    v28 = sub_1E65D9648();
    v29 = sub_1E6277BA4(v28);
    LOBYTE(v25) = v30;

    if (v25)
    {
      v31 = 0;
    }

    else
    {
      v31 = v29;
    }

    *(v22 + v83) = v31;
    v32 = *MEMORY[0x1E69CBDE0];
    v33 = sub_1E65D8F38();
    v34 = *(v33 - 8);
    (*(v34 + 104))(v22, v32, v33);
    (*(v34 + 56))(v22, 0, 1, v33);
    sub_1E65D9618();
    sub_1E65D8538();
    v16(v85, v19);
    v35 = sub_1E65D74E8();
    (*(*(v35 - 8) + 56))(v98, 0, 1, v35);
    sub_1E65D9618();
    (*(v90 + 8))(v18, v89);
    v36 = sub_1E65D85B8();
    v38 = v37;
    v16(v88, v19);
    v0[4] = v36;
    v0[5] = v38;
    sub_1E65E5E58();
    v39 = sub_1E65D9908();
    (*(*(v39 - 8) + 56))(v92, 1, 1, v39);
    v40 = sub_1E65D9F88();
    (*(*(v40 - 8) + 56))(v91, 1, 1, v40);
    sub_1E5FA9D34(v94, v96);
    v41 = v100;
  }

  else
  {
    v86 = v0[21];
    v87 = v0[20];
    v43 = v0[18];
    v42 = v0[19];
    v44 = v0[16];
    v45 = v0[13];
    sub_1E65D9618();
    sub_1E65D8528();
    v16(v42, v44);
    v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077330, &qword_1E65F99D0) + 48);
    sub_1E65D9618();
    v46 = sub_1E65D8658();
    v48 = v47;
    v50 = v49;
    v16(v43, v44);
    sub_1E6277978(v46, v48, v50 & 1, v45);
    sub_1E5F87058(v46, v48, v50 & 1);
    v51 = sub_1E65D9648();
    v52 = sub_1E6277BA4(v51);
    LOBYTE(v43) = v53;

    if (v43)
    {
      v54 = 0;
    }

    else
    {
      v54 = v52;
    }

    *(v45 + v84) = v54;
    v55 = *MEMORY[0x1E69CBDE0];
    v56 = sub_1E65D8F38();
    v57 = *(v56 - 8);
    (*(v57 + 104))(v45, v55, v56);
    (*(v57 + 56))(v45, 0, 1, v56);
    sub_1E65D9618();
    sub_1E65D8538();
    v16(v86, v44);
    v58 = sub_1E65D74E8();
    (*(*(v58 - 8) + 56))(v98, 0, 1, v58);
    sub_1E65D9618();
    (*(v90 + 8))(v18, v89);
    v59 = sub_1E65D85B8();
    v61 = v60;
    v16(v87, v44);
    v0[2] = v59;
    v0[3] = v61;
    sub_1E65E5E58();
    v62 = *MEMORY[0x1E69CC498];
    v63 = sub_1E65D9908();
    v64 = *(v63 - 8);
    (*(v64 + 104))(v92, v62, v63);
    (*(v64 + 56))(v92, 0, 1, v63);
    v65 = *MEMORY[0x1E69CCA78];
    v66 = sub_1E65D9F88();
    v67 = *(v66 - 8);
    (*(v67 + 104))(v91, v65, v66);
    (*(v67 + 56))(v91, 0, 1, v66);
    sub_1E5FA9D34(v94, v96);
    v41 = v100;
  }

  sub_1E65D7A28();
  v68 = sub_1E65D7A38();
  (*(*(v68 - 8) + 56))(v41, 0, 1, v68);
LABEL_18:
  v71 = v0[29];
  v72 = v0[26];
  v74 = v0[23];
  v73 = v0[24];
  v76 = v0[21];
  v75 = v0[22];
  v78 = v0[19];
  v77 = v0[20];
  v79 = v0[18];
  v80 = v0[15];
  v93 = v0[14];
  v95 = v0[13];
  v97 = v0[12];
  v99 = v0[11];
  v101 = v0[10];

  v81 = v0[1];

  return v81();
}

uint64_t sub_1E6277978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077338, &qword_1E65F99D8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - v10;
  v20 = a1;
  v21 = a2;
  v22 = a3 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
  sub_1E65D7FB8();
  if (HIBYTE(v19) >= 2u)
  {
    if (HIBYTE(v19) - 2 >= 2)
    {
      v17 = sub_1E65D88B8();
      v18 = *(v17 - 8);
      (*(v18 + 56))(v11, 1, 1, v17);
      return (*(v18 + 104))(a4, *MEMORY[0x1E69CB640], v17);
    }

    v12 = MEMORY[0x1E69CB638];
  }

  else
  {
    v12 = MEMORY[0x1E69CB630];
  }

  v13 = *v12;
  v14 = sub_1E65D88B8();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v11, v13, v14);
  (*(v15 + 56))(v11, 0, 1, v14);
  return (*(v15 + 32))(a4, v11, v14);
}

uint64_t sub_1E6277BA4(uint64_t a1)
{
  v2 = sub_1E65DADF8();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return 0;
  }

  v11 = 0;
  v12 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v13 = *(v7 + 72);
  do
  {
    sub_1E6277CFC(v12, v9);
    sub_1E60EB82C(v9, v6);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = *v6;
    }

    else
    {
      sub_1E6277D60(v6);
    }

    v12 += v13;
    --v10;
  }

  while (v10);
  return v11;
}

uint64_t sub_1E6277CFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DADF8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6277D60(uint64_t a1)
{
  v2 = sub_1E65DADF8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for PresentationAction(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3FFF)
  {
    goto LABEL_17;
  }

  if (a2 + 49153 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 49153 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 49153;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 49153;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 49153;
    }
  }

LABEL_17:
  v6 = (*a1 & 0xFE | (*a1 >> 15) | (*a1 >> 1) & 0x3F00) ^ 0x3FFF;
  if (v6 >= 0x3FFE)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for PresentationAction(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 49153 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 49153 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3FFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3FFE)
  {
    v6 = ((a2 - 0x3FFF) >> 16) + 1;
    *result = a2 - 0x3FFF;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    v7 = ((-a2 >> 1) & 0x1FFF) - (a2 << 13);
    *result = (4 * v7) & 0xFE00 | (2 * (v7 & 0x7F));
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_1E6277F80(uint64_t a1)
{
  v3 = sub_1E65D76A8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E65DA558();
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1E65DA2D8();
  v9 = *(v45 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
    return v14;
  }

  v36 = v1;
  v54 = MEMORY[0x1E69E7CC0];
  sub_1E601BD9C(0, v13, 0);
  v14 = v54;
  v15 = -1 << *(a1 + 32);
  v53 = a1 + 56;
  result = sub_1E65E6748();
  v17 = result;
  v18 = 0;
  v43 = v9;
  v44 = v6;
  v41 = v6 + 8;
  v42 = v6 + 16;
  v39 = a1;
  v40 = v9 + 32;
  v37 = a1 + 64;
  v38 = v13;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
  {
    if ((*(v53 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_21;
    }

    v49 = v18;
    v50 = *(a1 + 36);
    v51 = v17 >> 6;
    v21 = v44;
    v22 = *(a1 + 48) + *(v44 + 72) * v17;
    v23 = *(v44 + 16);
    v24 = v46;
    v52 = v14;
    v25 = v47;
    v23(v46, v22, v47);
    sub_1E65DA548();
    sub_1E65DA538();
    sub_1E65DA2C8();
    v26 = v25;
    v14 = v52;
    (*(v21 + 8))(v24, v26);
    v54 = v14;
    v28 = *(v14 + 16);
    v27 = *(v14 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_1E601BD9C(v27 > 1, v28 + 1, 1);
      v14 = v54;
    }

    *(v14 + 16) = v28 + 1;
    result = (*(v43 + 32))(v14 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v28, v12, v45);
    a1 = v39;
    v19 = 1 << *(v39 + 32);
    if (v17 >= v19)
    {
      goto LABEL_22;
    }

    v29 = *(v53 + 8 * v51);
    if ((v29 & (1 << v17)) == 0)
    {
      goto LABEL_23;
    }

    if (v50 != *(v39 + 36))
    {
      goto LABEL_24;
    }

    v30 = v29 & (-2 << (v17 & 0x3F));
    if (v30)
    {
      v19 = __clz(__rbit64(v30)) | v17 & 0x7FFFFFFFFFFFFFC0;
      v20 = v38;
    }

    else
    {
      v31 = v51 << 6;
      v32 = v51 + 1;
      v20 = v38;
      v33 = (v37 + 8 * v51);
      while (v32 < (v19 + 63) >> 6)
      {
        v35 = *v33++;
        v34 = v35;
        v31 += 64;
        ++v32;
        if (v35)
        {
          result = sub_1E5F87098(v17, v50, 0);
          v19 = __clz(__rbit64(v34)) + v31;
          goto LABEL_4;
        }
      }

      result = sub_1E5F87098(v17, v50, 0);
    }

LABEL_4:
    v18 = v49 + 1;
    v17 = v19;
    if (v49 + 1 == v20)
    {
      return v14;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E62783AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65D8668();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1E65D9658();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_1E65D9EA8();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v13 = sub_1E65D9C48();
  v3[14] = v13;
  v14 = *(v13 - 8);
  v3[15] = v14;
  v15 = *(v14 + 64) + 15;
  v3[16] = swift_task_alloc();
  v16 = sub_1E65D9FF8();
  v3[17] = v16;
  v17 = *(v16 - 8);
  v3[18] = v17;
  v18 = *(v17 + 64) + 15;
  v3[19] = swift_task_alloc();
  v19 = type metadata accessor for RouteResource();
  v3[20] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v21 = sub_1E65DB718();
  v3[22] = v21;
  v22 = *(v21 - 8);
  v3[23] = v22;
  v23 = *(v22 + 64) + 15;
  v3[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E627866C, 0, 0);
}

uint64_t sub_1E627866C()
{
  v1 = *(v0 + 160);
  sub_1E62796F0(*(v0 + 24), *(v0 + 168), type metadata accessor for RouteResource);
  if (swift_getEnumCaseMultiPayload() == 14)
  {
    v2 = *(v0 + 32);
    (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 168), *(v0 + 176));
    v3 = *(type metadata accessor for AppComposer() + 20);
    *(v0 + 288) = v3;
    v4 = v2 + v3;
    v5 = type metadata accessor for AppEnvironment();
    *(v0 + 200) = v5;
    v6 = v4 + *(v5 + 100);
    active = RemoteBrowsingService.requireActiveEnvironment.getter();
    *(v0 + 208) = v8;
    v23 = (active + *active);
    v9 = active[1];
    v10 = swift_task_alloc();
    *(v0 + 216) = v10;
    *v10 = v0;
    v10[1] = sub_1E62788B0;
    v11 = *(v0 + 152);

    return v23(v11);
  }

  else
  {
    v13 = *(v0 + 16);
    v14 = *(v0 + 24);
    sub_1E62386D4(*(v0 + 168));
    sub_1E62796F0(v14, v13, type metadata accessor for RouteDestination);
    v15 = *(v0 + 192);
    v16 = *(v0 + 168);
    v17 = *(v0 + 152);
    v18 = *(v0 + 128);
    v19 = *(v0 + 104);
    v20 = *(v0 + 80);
    v21 = *(v0 + 56);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1E62788B0()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = *(v2 + 208);

    v5 = sub_1E6279324;
  }

  else
  {
    v5 = sub_1E62789CC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E62789CC()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 288);
  v18 = *(v0 + 200);
  v4 = *(v0 + 192);
  v5 = *(v0 + 152);
  v6 = *(v0 + 128);
  v7 = *(v0 + 32);

  sub_1E65D9FA8();
  sub_1E65D9FB8();
  v8 = sub_1E65D9FC8();
  v9 = sub_1E6277F80(v8);

  sub_1E65DB6C8();
  sub_1E600A4E8(v9);

  sub_1E65DB6E8();
  sub_1E65DB6F8();
  sub_1E65D9C38();
  v10 = v7 + v3 + *(v18 + 120);
  started = SiriService.evaluateStartWorkoutRequest.getter();
  *(v0 + 232) = v12;
  v19 = (started + *started);
  v13 = started[1];
  v14 = swift_task_alloc();
  *(v0 + 240) = v14;
  *v14 = v0;
  v14[1] = sub_1E6278BA4;
  v15 = *(v0 + 128);
  v16 = *(v0 + 104);

  return v19(v16, v15);
}

uint64_t sub_1E6278BA4()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v7 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = *(v2 + 232);

    v5 = sub_1E6279400;
  }

  else
  {
    v5 = sub_1E6278CC0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6278CC0()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 200);
  v3 = *(v0 + 288);
  v4 = *(v0 + 104);
  v5 = *(v0 + 32);

  v6 = v5 + v3 + *(v2 + 48);
  v7 = CatalogService.fetchRemoteCatalogWorkoutDetail.getter();
  *(v0 + 256) = v8;
  v9 = sub_1E65D9E88();
  v11 = v10;
  *(v0 + 264) = v10;
  v16 = (v7 + *v7);
  v12 = v7[1];
  v13 = swift_task_alloc();
  *(v0 + 272) = v13;
  *v13 = v0;
  v13[1] = sub_1E6278E0C;
  v14 = *(v0 + 80);

  return v16(v14, v9, v11);
}

uint64_t sub_1E6278E0C()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 264);
  v6 = *(v2 + 256);
  if (v0)
  {

    v7 = sub_1E6279510;
  }

  else
  {

    v7 = sub_1E6278F70;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E6278F70()
{
  v1 = v0[13];
  v2 = sub_1E65D9E98();
  if ((v3 & 1) == 0)
  {
    v4 = v2;
    v5 = v0[10];
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[5];
    sub_1E65D9618();
    v9 = sub_1E65D8658();
    v11 = v10;
    v13 = v12;
    (*(v7 + 8))(v6, v8);
    if (v13)
    {
      v61 = v0[22];
      v63 = v0[24];
      v57 = v0[19];
      v59 = v0[23];
      v14 = v0[18];
      v15 = v0[15];
      v54 = v0[16];
      v55 = v0[17];
      v16 = v0[13];
      v17 = v0[12];
      v52 = v0[11];
      v53 = v0[14];
      v18 = v0[9];
      v51 = v0[10];
      v49 = v0[20];
      v50 = v0[8];
      v19 = v0[2];
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      *v19 = 0;
      *(v19 + 8) = 0;
      *(v19 + 16) = sub_1E65D9E88();
      *(v19 + 24) = v21;
      *(v19 + 32) = v4;
      *(v19 + 40) = v9;
      v22 = sub_1E65D96F8();
      (*(*(v22 - 8) + 56))(v19 + v20, 1, 1, v22);
      *(v19 + 48) = 0;
      swift_storeEnumTagMultiPayload();
      v23 = type metadata accessor for RouteDestination();
      v24 = *(v23 + 20);
      type metadata accessor for RouteSource(0);
      swift_storeEnumTagMultiPayload();
      (*(v18 + 8))(v51, v50);
      (*(v17 + 8))(v16, v52);
      (*(v15 + 8))(v54, v53);
      (*(v14 + 8))(v57, v55);
      (*(v59 + 8))(v63, v61);
      *(v19 + *(v23 + 24)) = MEMORY[0x1E69E7CD0];
      v25 = v0[24];
      v26 = v0[21];
      v27 = v0[19];
      v28 = v0[16];
      v29 = v0[13];
      v30 = v0[10];
      v31 = v0[7];

      v32 = v0[1];
      goto LABEL_6;
    }

    sub_1E5F87058(v9, v11, 0);
  }

  v33 = v0[18];
  v60 = v0[17];
  v62 = v0[19];
  v34 = v0[15];
  v56 = v0[14];
  v58 = v0[16];
  v35 = v0[12];
  v36 = v0[13];
  v38 = v0[10];
  v37 = v0[11];
  v39 = v0[8];
  v40 = v0[9];
  sub_1E6279758();
  swift_allocError();
  *v41 = 1;
  swift_willThrow();
  (*(v40 + 8))(v38, v39);
  (*(v35 + 8))(v36, v37);
  (*(v34 + 8))(v58, v56);
  (*(v33 + 8))(v62, v60);
  v42 = v0[21];
  v43 = v0[19];
  v44 = v0[16];
  v45 = v0[13];
  v46 = v0[10];
  v47 = v0[7];
  (*(v0[23] + 8))(v0[24], v0[22]);

  v32 = v0[1];
LABEL_6:

  return v32();
}

uint64_t sub_1E6279324()
{
  v1 = v0[28];
  v2 = v0[21];
  v3 = v0[19];
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[7];
  (*(v0[23] + 8))(v0[24], v0[22]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E6279400()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[31];
  v5 = v0[21];
  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[10];
  v10 = v0[7];
  (*(v0[23] + 8))(v0[24], v0[22]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E6279510()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[35];
  v8 = v0[21];
  v9 = v0[19];
  v10 = v0[16];
  v11 = v0[13];
  v12 = v0[10];
  v13 = v0[7];
  (*(v0[23] + 8))(v0[24], v0[22]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E6279640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFA78C;

  return sub_1E62783AC(a1, a2, a3);
}

uint64_t sub_1E62796F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E6279758()
{
  result = qword_1ED077340;
  if (!qword_1ED077340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077340);
  }

  return result;
}

unint64_t sub_1E62797D0()
{
  result = qword_1ED077348;
  if (!qword_1ED077348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077348);
  }

  return result;
}

void sub_1E6279824(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1E627988C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = sub_1E65E60A8();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v7 + 16))(v10, a1, v6);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  (*(v7 + 32))(v17 + v16, v10, v6);
  v18 = (v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a2;
  v18[1] = a3;
  swift_unknownObjectRetain();
  sub_1E64B80F8(0, 0, v14, &unk_1E65F9C10, v17);
}

uint64_t sub_1E6279A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v6[13] = *(v8 + 64);
  v6[14] = swift_task_alloc();
  v9 = *(*(sub_1E65D7848() - 8) + 64) + 15;
  v6[15] = swift_task_alloc();
  v10 = *(*(sub_1E65E5C28() - 8) + 64) + 15;
  v6[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6279BC4, 0, 0);
}

uint64_t sub_1E6279BC4()
{
  v2 = v0[15];
  v1 = v0[16];
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[17] = ObjCClassFromMetadata;
  v4 = objc_opt_self();
  v0[18] = v4;
  v5 = [v4 bundleForClass_];
  sub_1E65D77C8();
  v0[19] = sub_1E65E5CD8();
  v0[20] = v6;
  sub_1E65E5BA8();
  v7 = [v4 bundleForClass_];
  sub_1E65D77C8();
  v0[21] = sub_1E65E5CD8();
  v0[22] = v8;
  v0[23] = sub_1E65E6058();
  v0[24] = sub_1E65E6048();
  v10 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6279D80, v10, v9);
}

uint64_t sub_1E6279D80()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];

  v6 = sub_1E65E5C48();

  v7 = sub_1E65E5C48();

  v0[25] = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  return MEMORY[0x1EEE6DFA0](sub_1E6279E60, 0, 0);
}

uint64_t sub_1E6279E60()
{
  v1 = v0[23];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v17 = v0[13];
  v7 = v0[11];
  v8 = v0[12];
  v9 = v0[8];
  sub_1E65E5BA8();
  v10 = [v2 bundleForClass_];
  sub_1E65D77C8();
  v0[26] = sub_1E65E5CD8();
  v0[27] = v11;
  (*(v8 + 16))(v6, v9, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  v0[28] = v13;
  (*(v8 + 32))(v13 + v12, v6, v7);
  v0[29] = sub_1E65E6048();
  v15 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6279FE8, v15, v14);
}

uint64_t sub_1E6279FE8()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  v4 = v0[27];

  v5 = sub_1E65E5C48();

  v0[6] = sub_1E627EAB0;
  v0[7] = v2;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1E6279824;
  v0[5] = &block_descriptor_9;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];

  v0[30] = [objc_opt_self() actionWithTitle:v5 style:1 handler:v6];
  _Block_release(v6);

  return MEMORY[0x1EEE6DFA0](sub_1E627A11C, 0, 0);
}

uint64_t sub_1E627A11C()
{
  v1 = *(v0 + 184);
  *(v0 + 248) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E627A1A8, v3, v2);
}

uint64_t sub_1E627A1A8()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[25];

  [v3 addAction_];

  return MEMORY[0x1EEE6DFA0](sub_1E627A228, 0, 0);
}

uint64_t sub_1E627A228()
{
  v1 = v0[25];
  v2 = v0[9];
  v13 = v0[10];
  ObjectType = swift_getObjectType();
  v4 = swift_allocObject();
  v0[32] = v4;
  *(v4 + 16) = v1;
  v5 = *(v13 + 24);
  v6 = v1;
  v12 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  v0[33] = v8;
  *v8 = v0;
  v8[1] = sub_1E627A394;
  v10 = v0[9];
  v9 = v0[10];

  return v12(sub_1E5FB7C38, v4, ObjectType, v9);
}

uint64_t sub_1E627A394()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E627A4AC, 0, 0);
}

uint64_t sub_1E627A4AC()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 112);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1E627A53C()
{
  v0 = sub_1E65D8018();
  sub_1E627F2D8(&qword_1ED077378, 255, MEMORY[0x1E69CB200]);
  swift_allocError();
  (*(*(v0 - 8) + 104))(v1, *MEMORY[0x1E69CB1F8], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  return sub_1E65E5FE8();
}

uint64_t type metadata accessor for RemoteDisplayDetour.State()
{
  result = qword_1ED077358;
  if (!qword_1ED077358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E627A6D8()
{
  sub_1E627A730();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1E627A730()
{
  if (!qword_1ED077368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0726C8, &qword_1E66094D0);
    type metadata accessor for AppEnvironment();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED071EE8, &qword_1E65F59D0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ED077368);
    }
  }
}

uint64_t sub_1E627A87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*(type metadata accessor for RemoteDisplayDetour.State() - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v8 = type metadata accessor for RouteResource();
  v6[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = sub_1E65D74E8();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E627A9A0, 0, 0);
}

uint64_t sub_1E627A9A0()
{
  v1 = v0[9];
  sub_1E627E900(v0[3], v0[10], type metadata accessor for RouteResource);
  if (swift_getEnumCaseMultiPayload() == 19)
  {
    v2 = v0[7];
    v3 = v0[8];
    (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
    v4 = *(v2 + 24);
    v5 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
    v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v4 + v6));
    sub_1E627E900(v4 + v5, v3, type metadata accessor for RemoteDisplayDetour.State);
    os_unfair_lock_unlock((v4 + v6));
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077350, &qword_1E65F9B38);
    LODWORD(v4) = (*(*(v7 - 8) + 48))(v3, 1, v7);
    sub_1E627ECF0(v3, type metadata accessor for RemoteDisplayDetour.State);
    if (v4 == 1)
    {
      v8 = v0[4];
      v9 = *(type metadata accessor for AppComposer() + 20);
      v10 = swift_task_alloc();
      v0[14] = v10;
      *v10 = v0;
      v10[1] = sub_1E627ACA4;
      v11 = v0[5];
      v12 = v0[6];

      return sub_1E627E224(v8 + v9, v11, v12);
    }

    sub_1E627E1D0();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    v20 = v0[10];
    v21 = v0[8];
    (*(v0[12] + 8))(v0[13], v0[11]);

    v18 = v0[1];
  }

  else
  {
    v14 = v0[13];
    v15 = v0[8];
    v17 = v0[2];
    v16 = v0[3];
    sub_1E627ECF0(v0[10], type metadata accessor for RouteResource);
    sub_1E627E900(v16, v17, type metadata accessor for RouteDestination);

    v18 = v0[1];
  }

  return v18();
}

uint64_t sub_1E627ACA4()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E627B1E8, 0, 0);
  }

  else
  {
    v4 = v3[5];
    v13 = v3[6];
    ObjectType = swift_getObjectType();
    v6 = *(v13 + 24);
    v12 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v3[16] = v8;
    *v8 = v3;
    v8[1] = sub_1E627AEBC;
    v10 = v3[5];
    v9 = v3[6];

    return (v12)(nullsub_1, 0, ObjectType, v9);
  }
}

uint64_t sub_1E627AEBC()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E627AFB8, 0, 0);
}

uint64_t sub_1E627AFB8()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  v6 = *(v0 + 32);
  *(v5 + 16) = v2;
  *(v5 + 24) = v6;
  *(v5 + 40) = v3;
  *(v5 + 48) = v1;
  *(v5 + 56) = v4;
  v7 = *(MEMORY[0x1E69E88F0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *v8 = v0;
  v8[1] = sub_1E627B0CC;
  v9 = *(v0 + 56);
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v8, &unk_1E65F9BF8, v5, sub_1E627E8A4, v9, 0, 0, v10);
}

uint64_t sub_1E627B0CC()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_1E627B354;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_1E627B284;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E627B1E8()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = v0[8];
  (*(v0[12] + 8))(v0[13], v0[11]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E627B284()
{
  sub_1E5FAA54C();
  swift_allocError();
  *v1 = 3;
  swift_willThrow();
  v2 = v0[10];
  v3 = v0[8];
  (*(v0[12] + 8))(v0[13], v0[11]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E627B354()
{
  v1 = v0[17];

  v2 = v0[19];
  v3 = v0[10];
  v4 = v0[8];
  (*(v0[12] + 8))(v0[13], v0[11]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E627B3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E627B424, 0, 0);
}

uint64_t sub_1E627B424()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  v1[1] = *(v0 + 24);
  v1[2] = v2;
  v1[3] = v3;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1E627B524;
  v6 = *(v0 + 16);
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000024, 0x80000001E66103D0, sub_1E627E8C8, v1, v7);
}

uint64_t sub_1E627B524()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E61244C0, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

void sub_1E627B660(uint64_t a1, uint64_t a2)
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  v4 = sub_1E65E3B18();
  v5 = *(a2 + 24);
  MEMORY[0x1EEE9AC00](v4);
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_1E627E8D8(v5 + v6);
  os_unfair_lock_unlock((v5 + v7));
}

uint64_t sub_1E627B7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a6;
  v37 = a8;
  v40 = a7;
  v34 = a3;
  v35 = a5;
  v11 = type metadata accessor for RouteSource(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65E5238();
  v38 = *(v15 - 8);
  v39 = v15;
  v16 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E627ECF0(a1, type metadata accessor for RemoteDisplayDetour.State);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077350, &qword_1E65F9B38);
  v20 = *(v19 + 48);
  v21 = (a1 + *(v19 + 64));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  (*(*(v22 - 8) + 16))(a1, a2, v22);
  v23 = type metadata accessor for AppComposer();
  sub_1E627E900(v34 + *(v23 + 20), a1 + v20, type metadata accessor for AppEnvironment);
  v24 = v35;
  *v21 = a4;
  v21[1] = v24;
  (*(*(v19 - 8) + 56))(a1, 0, 1, v19);
  v25 = *(v36 + 16);
  v26 = type metadata accessor for RouteDestination();
  sub_1E627E900(v37 + *(v26 + 20), v14, type metadata accessor for RouteSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    v28 = v39;
    v29 = v38;
    swift_unknownObjectRetain();
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload > 1)
  {
    v29 = v38;
    v28 = v39;
    if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
    {
      v30 = sub_1E65D8D48();
      v31 = *(*(v30 - 8) + 8);
      swift_unknownObjectRetain();
      v31(v14, v30);
LABEL_10:
      (*(v29 + 104))(v18, *MEMORY[0x1E69CD740], v28);
      goto LABEL_11;
    }

LABEL_9:
    swift_unknownObjectRetain();
    sub_1E627ECF0(v14, type metadata accessor for RouteSource);
    goto LABEL_10;
  }

  v29 = v38;
  v28 = v39;
  if (EnumCaseMultiPayload)
  {
    goto LABEL_9;
  }

  (*(v38 + 104))(v18, *MEMORY[0x1E69CD748], v39);
  swift_unknownObjectRetain();
  sub_1E627ECF0(v14, type metadata accessor for RouteSource);
LABEL_11:
  sub_1E65E54C8();
  return (*(v29 + 8))(v18, v28);
}

uint64_t sub_1E627BBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1E5DFA78C;

  return sub_1E627A87C(a1, a2, a3, a4, a5);
}

uint64_t sub_1E627BC84(uint64_t a1)
{
  v2 = type metadata accessor for RemoteDisplayDetour.State();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - v9;
  sub_1E627E900(a1, v5, type metadata accessor for RemoteDisplayDetour.State);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077350, &qword_1E65F9B38);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    return sub_1E627ECF0(v5, type metadata accessor for RemoteDisplayDetour.State);
  }

  sub_1E627ECF0(a1, type metadata accessor for RemoteDisplayDetour.State);
  v14 = *(v11 + 48);
  v15 = *&v5[*(v11 + 64)];
  swift_unknownObjectRelease();
  (*(v7 + 32))(v10, v5, v6);
  sub_1E627ECF0(&v5[v14], type metadata accessor for AppEnvironment);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v16 = sub_1E65E3B68();
  __swift_project_value_buffer(v16, qword_1EE2EA2A0);
  sub_1E65E3B18();
  (*(v12 + 56))(a1, 1, 1, v11);
  sub_1E627E1D0();
  v17 = swift_allocError();
  *v18 = 2;
  v19[1] = v17;
  sub_1E65E5FE8();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1E627BF90(uint64_t a1)
{
  v2 = type metadata accessor for RemoteDisplayDetour.State();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E627E900(a1, v5, type metadata accessor for RemoteDisplayDetour.State);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077350, &qword_1E65F9B38);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    return sub_1E627ECF0(v5, type metadata accessor for RemoteDisplayDetour.State);
  }

  v8 = *(v6 + 48);
  v9 = &v5[*(v6 + 64)];
  v10 = *v9;
  v11 = *(v9 + 1);
  sub_1E627ECF0(&v5[v8], type metadata accessor for AppEnvironment);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  (*(*(v12 - 8) + 8))(v5, v12);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v13 = sub_1E65E3B68();
  __swift_project_value_buffer(v13, qword_1EE2EA2A0);
  sub_1E65E3B18();
  ObjectType = swift_getObjectType();
  (*(v11 + 8))(ObjectType, v11);
  return swift_unknownObjectRelease();
}

uint64_t sub_1E627C1B8(uint64_t a1)
{
  v3 = type metadata accessor for RemoteDisplayDetour.State();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v22 - v10;
  sub_1E627E900(a1, v6, type metadata accessor for RemoteDisplayDetour.State);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077350, &qword_1E65F9B38);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v6, 1, v12) == 1)
  {
    return sub_1E627ECF0(v6, type metadata accessor for RemoteDisplayDetour.State);
  }

  v22[1] = v1;
  sub_1E627ECF0(a1, type metadata accessor for RemoteDisplayDetour.State);
  v15 = *(v12 + 48);
  v16 = &v6[*(v12 + 64)];
  v17 = *v16;
  v22[0] = *(v16 + 1);
  (*(v8 + 32))(v11, v6, v7);
  sub_1E627ECF0(&v6[v15], type metadata accessor for AppEnvironment);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v18 = sub_1E65E3B68();
  __swift_project_value_buffer(v18, qword_1EE2EA2A0);
  sub_1E65E3B18();
  (*(v13 + 56))(a1, 1, 1, v12);
  sub_1E627E1D0();
  v19 = swift_allocError();
  *v20 = 2;
  v22[3] = v19;
  sub_1E65E5FE8();
  ObjectType = swift_getObjectType();
  (*(v22[0] + 16))(ObjectType);
  swift_unknownObjectRelease();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1E627C500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(a3 + 24);
  v8 = *(*v7 + *MEMORY[0x1E69E6B68] + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v7 + v9));
  sub_1E627EEAC(v7 + v8);
  os_unfair_lock_unlock((v7 + v9));
}

void sub_1E627C61C(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v32 = a6;
  v33 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v31 - v17;
  v19 = type metadata accessor for RemoteDisplayDetour.State();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E627E900(a1, v22, type metadata accessor for RemoteDisplayDetour.State);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077350, &qword_1E65F9B38);
  if ((*(*(v23 - 8) + 48))(v22, 1, v23) == 1)
  {
    sub_1E627ECF0(v22, type metadata accessor for RemoteDisplayDetour.State);
    sub_1E5FAA54C();
    v24 = swift_allocError();
    *v25 = 3;
    a2(v24, 1);
  }

  else
  {
    v26 = *(v23 + 48);
    v31 = *&v22[*(v23 + 64)];
    sub_1E627ECF0(&v22[v26], type metadata accessor for AppEnvironment);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
    (*(*(v27 - 8) + 8))(v22, v27);
    v28 = sub_1E65E60A8();
    (*(*(v28 - 8) + 56))(v18, 1, 1, v28);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    *(v29 + 32) = a4;
    *(v29 + 40) = a5;
    v30 = v33;
    *(v29 + 48) = v32;
    *(v29 + 56) = a7;
    *(v29 + 64) = v30;
    *(v29 + 72) = a9;
    *(v29 + 80) = a2;
    *(v29 + 88) = a3;
    *(v29 + 96) = v31;

    sub_1E64B80F8(0, 0, v18, &unk_1E65F9C30, v29);
  }
}

uint64_t sub_1E627C91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v12;
  *(v8 + 120) = v11;
  *(v8 + 104) = v10;
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 64) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E627C95C, 0, 0);
}

uint64_t sub_1E627C95C()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  sub_1E65E3B18();
  *(v0 + 144) = sub_1E65E6058();
  *(v0 + 152) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E627CA74, v3, v2);
}

uint64_t sub_1E627CA74()
{
  v1 = v0[19];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];

  v5 = sub_1E65E5C48();
  if (v2)
  {
    v6 = v0[10];
    v7 = v0[11];
    v8 = sub_1E65E5C48();
  }

  else
  {
    v8 = 0;
  }

  v0[20] = [objc_opt_self() alertControllerWithTitle:v5 message:v8 preferredStyle:1];

  return MEMORY[0x1EEE6DFA0](sub_1E627CB4C, 0, 0);
}

uint64_t sub_1E627CB4C()
{
  v1 = v0[20];
  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v5 = swift_allocObject();
  v0[21] = v5;
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v3;
  v6 = v1;

  v0[22] = sub_1E65E6048();
  v8 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E627CC14, v8, v7);
}

uint64_t sub_1E627CC14()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[12];
  v3 = v0[13];

  v5 = sub_1E65E5C48();
  v0[6] = sub_1E627EFEC;
  v0[7] = v2;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1E6279824;
  v0[5] = &block_descriptor_48;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];

  v0[23] = [objc_opt_self() actionWithTitle:v5 style:2 handler:v6];
  _Block_release(v6);

  return MEMORY[0x1EEE6DFA0](sub_1E627CD40, 0, 0);
}

uint64_t sub_1E627CD40()
{
  v1 = *(v0 + 144);
  *(v0 + 192) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E627CDCC, v3, v2);
}

uint64_t sub_1E627CDCC()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[20];

  [v3 addAction_];

  return MEMORY[0x1EEE6DFA0](sub_1E627CE4C, 0, 0);
}

uint64_t sub_1E627CE4C()
{
  v1 = v0[20];
  v2 = v0[16];
  v13 = v0[17];
  ObjectType = swift_getObjectType();
  v4 = swift_allocObject();
  v0[25] = v4;
  *(v4 + 16) = v1;
  v5 = *(v13 + 24);
  v6 = v1;
  v12 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  v0[26] = v8;
  *v8 = v0;
  v8[1] = sub_1E627CFB8;
  v10 = v0[16];
  v9 = v0[17];

  return v12(sub_1E627F328, v4, ObjectType, v9);
}

uint64_t sub_1E627CFB8()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E627D0D0, 0, 0);
}

uint64_t sub_1E627D0D0()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E627D138(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - v9;
  v11 = sub_1E65E60A8();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v13 = a2;

  sub_1E64B80F8(0, 0, v10, &unk_1E65F9C40, v12);
}

uint64_t sub_1E627D25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E627D280, 0, 0);
}

uint64_t sub_1E627D280()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v0[6] = sub_1E627F0C0;
  v0[7] = v3;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1E5E05AB0;
  v0[5] = &block_descriptor_62;
  v0[11] = _Block_copy(v0 + 2);
  v4 = v0[7];

  sub_1E65E6058();
  v0[12] = sub_1E65E6048();
  v6 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E627D3B0, v6, v5);
}

uint64_t sub_1E627D3B0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];

  [v3 dismissViewControllerAnimated:1 completion:v2];
  _Block_release(v2);
  v4 = v0[1];

  return v4();
}

void sub_1E627D434(void (*a1)(void *, void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
  sub_1E65E6D88();
  a1(v2, v3);
  sub_1E627F0C8(v2, v3);
}

uint64_t sub_1E627D4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v38 = a3;
  v4 = sub_1E65E5798();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v39 = &v33 - v10;
  v11 = type metadata accessor for RemoteDisplayDetour.State();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AppEnvironment();
  v36 = *(v15 - 8);
  v16 = *(v36 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  sub_1E627E900(a1, v14, type metadata accessor for RemoteDisplayDetour.State);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077350, &qword_1E65F9B38);
  if ((*(*(v20 - 8) + 48))(v14, 1, v20) == 1)
  {
    v21 = type metadata accessor for RemoteDisplayDetour.State;
    v22 = v14;
  }

  else
  {
    v23 = *(v20 + 48);
    v35 = *&v14[*(v20 + 64)];
    v33 = type metadata accessor for AppEnvironment;
    v34 = v19;
    sub_1E5DFABE8(&v14[v23], v19, type metadata accessor for AppEnvironment);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
    (*(*(v24 - 8) + 8))(v14, v24);
    v25 = sub_1E65E60A8();
    (*(*(v25 - 8) + 56))(v39, 1, 1, v25);
    v26 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1E627E900(v19, v26, type metadata accessor for AppEnvironment);
    (*(v5 + 16))(&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v4);
    v27 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v28 = (v16 + *(v5 + 80) + v27) & ~*(v5 + 80);
    v29 = (v6 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = v4;
    v30 = v38;
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    sub_1E5DFABE8(v26, v31 + v27, v33);
    (*(v5 + 32))(v31 + v28, v7, v37);
    *(v31 + v29) = v35;
    *(v31 + ((v29 + 23) & 0xFFFFFFFFFFFFFFF8)) = v30;
    swift_unknownObjectRetain();

    sub_1E6059EAC(0, 0, v39, &unk_1E65F9C20, v31);
    swift_unknownObjectRelease();

    v21 = type metadata accessor for AppEnvironment;
    v22 = v34;
  }

  return sub_1E627ECF0(v22, v21);
}

uint64_t sub_1E627D934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E627D95C, 0, 0);
}

uint64_t sub_1E627D95C()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v3 = v1 + *(type metadata accessor for AppEnvironment() + 88);
  v4 = PlayerService.makeSessionViewController.getter();
  v0[7] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1E627DAEC;
  v8 = v0[3];

  return v10(v8);
}

uint64_t sub_1E627DAEC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_1E627DF10;
  }

  else
  {
    v8 = *(v4 + 56);

    *(v4 + 80) = a1;
    v7 = sub_1E627DC1C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E627DC1C()
{
  v1 = v0[10];
  v2 = v0[6];
  v14 = v0[5];
  v3 = v0[4];
  ObjectType = swift_getObjectType();
  v5 = swift_allocObject();
  v0[11] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  v6 = *(v14 + 24);
  v7 = v1;

  v13 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_1E627DD94;
  v11 = v0[4];
  v10 = v0[5];

  return v13(sub_1E627EDA4, v5, ObjectType, v10);
}

uint64_t sub_1E627DD94()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E627DEAC, 0, 0);
}

uint64_t sub_1E627DEAC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E627DF10()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

void sub_1E627DFBC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *(v3 + 24);
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  a3(v5 + v6);

  os_unfair_lock_unlock((v5 + v7));
}

uint64_t sub_1E627E060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_allocObject();
  v13[2] = v6;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a4;
  v13[7] = a5;
  v13[8] = a6;

  return sub_1E65DACA8();
}

void sub_1E627E138()
{
  v1 = *(v0 + 24);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1E627EB2C(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

unint64_t sub_1E627E1D0()
{
  result = qword_1ED077370;
  if (!qword_1ED077370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077370);
  }

  return result;
}

uint64_t sub_1E627E224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E627E248, 0, 0);
}

uint64_t sub_1E627E248()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v3 = v1 + *(type metadata accessor for AppEnvironment() + 112);
  v4 = SessionService.requireNewSessionsAllowed.getter();
  v0[5] = v5;
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_1E627E3D4;

  return v9();
}

uint64_t sub_1E627E3D4()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1E627E4E8;
  }

  else
  {
    v3 = sub_1E5F9E40C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E627E4E8()
{
  v1 = *(v0 + 40);
  v7 = *(v0 + 24);

  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *(v2 + 16) = v7;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1E627E5E4;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD00000000000002FLL, 0x80000001E6615180, sub_1E627E968, v2, v5);
}

uint64_t sub_1E627E5E4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1E627E764;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_1E627E700;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E627E700()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E627E764()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);
  v3 = *(v0 + 80);

  return v2();
}

uint64_t sub_1E627E7D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFA78C;

  return sub_1E627B3F8(a1, v4, v5, v6, v7, v9, v8);
}

void sub_1E627E8C8(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  sub_1E627B660(a1, v1[2]);
}

uint64_t sub_1E627E900(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E627E970(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFA78C;

  return sub_1E6279A94(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_1E627EAB0()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0) - 8) + 80);

  return sub_1E627A53C();
}

uint64_t sub_1E627EB48(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppEnvironment() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1E65E5798() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = (v1 + v10);
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v1 + v11);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_1E5DFE6BC;

  return sub_1E627D934(a1, v12, v13, v1 + v6, v1 + v9, v15, v16, v17);
}

uint64_t sub_1E627ECF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E627ED50(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 24);

  return a1(v1, 32, 7);
}

id sub_1E627EDA4(void *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_1E627F2D8(&qword_1ED077380, a2, type metadata accessor for RemoteDisplayDetour);
  sub_1E65E53D8();

  return [a1 pushViewController:v5 animated:1];
}

uint64_t sub_1E627EE38(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  v9 = v2[8];
  return sub_1E627C500(a1, a2, v2[2]);
}

uint64_t sub_1E627EE6C(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_1E627EEE0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 88);
  v15 = *(v1 + 72);
  v11 = *(v1 + 104);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E627C91C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1E627EFF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E627D25C(a1, v4, v5, v6, v7, v8);
}

void sub_1E627F0C8(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_1E627F0D4()
{
  v1 = v0;
  v2 = type metadata accessor for RemoteDisplayDetour.State();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077350, &qword_1E65F9B38);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077388, &qword_1E65F9C50);
  v8 = *(v7 + 52);
  v9 = (*(v7 + 48) + 3) & 0x1FFFFFFFCLL;
  v10 = swift_allocObject();
  *(v10 + ((*(*v10 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1E5DFABE8(v5, v10 + *(*v10 + *MEMORY[0x1E69E6B68] + 16), type metadata accessor for RemoteDisplayDetour.State);
  *(v0 + 24) = v10;
  objc_allocWithZone(sub_1E65E54D8());

  v11 = sub_1E65E5488();
  *(v1 + 16) = v11;
  sub_1E627F2D8(&qword_1ED077390, v12, type metadata accessor for RemoteDisplayDetour);
  v13 = v11;

  sub_1E65E54B8();

  return v1;
}

uint64_t sub_1E627F2D8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AppComposer.workoutPlanArtworkViewBuilder(identifier:schedule:modalityIdentifierCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a3;
  v40 = a2;
  v41 = a1;
  v44 = a4;
  v45 = type metadata accessor for WorkoutPlanArtworkViewRepresentable();
  v4 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077398, &qword_1E65F9C58);
  v7 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v9 = &v36 - v8;
  v43 = sub_1E65E55C8();
  v39 = *(v43 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v38 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65D76F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D78, &qword_1E65F38F8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v36 - v19;
  v21 = sub_1E65D9388();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v36 - v27;
  sub_1E617D084(v40, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1E627F898(v20);
    (*(v13 + 16))(v6, v41, v12);
    *&v6[*(v45 + 20)] = v37;
    sub_1E627F900(v6, v9);
    swift_storeEnumTagMultiPayload();
    sub_1E627F964(&qword_1EE2D49B0, MEMORY[0x1E69CD8A8]);
    sub_1E627F964(qword_1EE2D7828, type metadata accessor for WorkoutPlanArtworkViewRepresentable);
    sub_1E65E4138();
    return sub_1E627F9AC(v6);
  }

  else
  {
    (*(v22 + 32))(v28, v20, v21);
    (*(v13 + 16))(v16, v41, v12);
    (*(v22 + 16))(v26, v28, v21);
    v30 = sub_1E65E53A8();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    sub_1E65E5398();

    v33 = v38;
    sub_1E65E55B8();
    v34 = v39;
    v35 = v43;
    (*(v39 + 16))(v9, v33, v43);
    swift_storeEnumTagMultiPayload();
    sub_1E627F964(&qword_1EE2D49B0, MEMORY[0x1E69CD8A8]);
    sub_1E627F964(qword_1EE2D7828, type metadata accessor for WorkoutPlanArtworkViewRepresentable);
    sub_1E65E4138();

    (*(v34 + 8))(v33, v35);
    return (*(v22 + 8))(v28, v21);
  }
}

uint64_t sub_1E627F898(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D78, &qword_1E65F38F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E627F900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanArtworkViewRepresentable();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E627F964(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E627F9AC(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanArtworkViewRepresentable();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E627FA08(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0773A0, &qword_1E65F9C60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - v10;
  if (a4 < 2u)
  {
    v12 = OBJC_IVAR____TtC10Blackbeard9AppRouter_offlineRoutingContext;
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = a2;
    v14[4] = a3;

    v15 = sub_1E6114F70((a1 + v12), sub_1E628007C, v13, sub_1E6280070, v14);

    return v15;
  }

  if (a4 == 3)
  {
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = a2;
    v17[4] = a3;

    sub_1E61163B8(sub_1E627FCF4, v16, sub_1E627FDE4, v17, v11);

    v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0773A8, &qword_1E65F9C68));
    v15 = sub_1E65E4058();
    v19 = [v15 view];
    if (v19)
    {
      v20 = v19;
      [v19 setAlpha_];

      return v15;
    }

    __break(1u);
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E627FD10(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t *, void, void, void, void, char *))
{
  v5 = type metadata accessor for NavigationControllerRoutingContext();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  v13 = v10;
  v14 = v9;
  sub_1E5E24114(&v13, v8);
  v13 = v10;
  v14 = v9;
  v11 = a3(&v13, 0, 0, 0, 0, v8);
  sub_1E613584C(v8);
  return v11;
}

uint64_t sub_1E627FDF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A30, &qword_1E65EEA70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14[-1] - v6;
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_4;
  }

  v14[0] = v9;
  v14[1] = v8;
  sub_1E63350F4(v14, v7);

  v11 = type metadata accessor for NavigationControllerRoutingContext();
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    result = sub_1E6135780(v7);
LABEL_4:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  *(a2 + 24) = v11;
  *(a2 + 32) = &off_1F5FA9B10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_1E61357E8(v7, boxed_opaque_existential_1);
}

uint64_t sub_1E627FF3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v13 = type metadata accessor for NavigationControllerRoutingContext();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v17 = a1[1];
  v21 = v18;
  v22 = v17;
  sub_1E5E24114(&v21, v16);
  v21 = v18;
  v22 = v17;
  v19 = a7(&v21, a2, a3, a4, a5, v16);
  sub_1E613584C(v16);
  return v19;
}

uint64_t objectdestroy_2Tm_1()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1E6280140(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = *(v1 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker + 24);
  v4 = *(v1 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker), v3);
  return a1(v3, v4);
}

uint64_t sub_1E6280258(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = (*v3 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  return a3(v6, v7);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E62802D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1E6280318(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E6280378(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DAFD8();
  v82 = *(v4 - 8);
  v5 = *(v82 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v80 = &v62 - v9;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
  v72 = *(v81 - 8);
  v10 = *(v72 + 64);
  v11 = MEMORY[0x1EEE9AC00](v81);
  v73 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v71 = &v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077558, &qword_1E65F9F48);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  result = MEMORY[0x1EEE9AC00](v16);
  v75 = &v62 - v19;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v74 = v18;
  v69 = v8;
  v70 = a2;
  v20 = 0;
  v66 = a1;
  v23 = *(a1 + 64);
  v22 = a1 + 64;
  v21 = v23;
  v24 = 1 << *(v22 - 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v63 = (v24 + 63) >> 6;
  v64 = v22;
  v65 = v72 + 16;
  v79 = (v72 + 32);
  v77 = v82 + 16;
  v78 = (v82 + 32);
  v67 = (v72 + 8);
  v68 = (v82 + 8);
  while (v26)
  {
    v76 = (v26 - 1) & v26;
    v27 = __clz(__rbit64(v26)) | (v20 << 6);
LABEL_16:
    v34 = v66;
    v36 = v71;
    v35 = v72;
    v37 = v81;
    (*(v72 + 16))(v71, *(v66 + 48) + *(v72 + 72) * v27, v81);
    v38 = *(v34 + 56);
    v39 = v82;
    v40 = v80;
    (*(v82 + 16))(v80, v38 + *(v82 + 72) * v27, v4);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077560, &unk_1E65F9F50);
    v42 = *(v41 + 48);
    v43 = *(v35 + 32);
    v31 = v74;
    v43(v74, v36, v37);
    (*(v39 + 32))(v31 + v42, v40, v4);
    (*(*(v41 - 8) + 56))(v31, 0, 1, v41);
    v30 = v75;
    v26 = v76;
LABEL_17:
    sub_1E5FAB460(v31, v30, &qword_1ED077558, &qword_1E65F9F48);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077560, &unk_1E65F9F50);
    v45 = (*(*(v44 - 8) + 48))(v30, 1, v44);
    v46 = v45 == 1;
    if (v45 == 1)
    {
      return v46;
    }

    v47 = *(v44 + 48);
    v48 = v4;
    v49 = v73;
    v50 = v81;
    (*v79)(v73, v30, v81);
    v51 = v69;
    (*v78)(v69, v30 + v47, v48);
    v52 = v70;
    v53 = sub_1E6416E74(v49);
    v55 = v54;
    (*v67)(v49, v50);
    if ((v55 & 1) == 0)
    {
      (*v68)(v51, v48);
      return 0;
    }

    v56 = v82;
    v57 = *(v52 + 56) + *(v82 + 72) * v53;
    v58 = v80;
    (*(v82 + 16))(v80, v57, v48);
    sub_1E6288E70(&qword_1ED077568, MEMORY[0x1E699CFC0]);
    v59 = sub_1E65E5B98();
    v60 = *(v56 + 8);
    v60(v58, v48);
    result = (v60)(v51, v48);
    v4 = v48;
    if ((v59 & 1) == 0)
    {
      return v46;
    }
  }

  if (v63 <= v20 + 1)
  {
    v28 = v20 + 1;
  }

  else
  {
    v28 = v63;
  }

  v29 = v28 - 1;
  v31 = v74;
  v30 = v75;
  while (1)
  {
    v32 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v32 >= v63)
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077560, &unk_1E65F9F50);
      (*(*(v61 - 8) + 56))(v31, 1, 1, v61);
      v26 = 0;
      v20 = v29;
      goto LABEL_17;
    }

    v33 = *(v64 + 8 * v32);
    ++v20;
    if (v33)
    {
      v76 = (v33 - 1) & v33;
      v27 = __clz(__rbit64(v33)) | (v32 << 6);
      v20 = v32;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E62809C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E31D8();
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077540, &qword_1E65F9F30);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  result = MEMORY[0x1EEE9AC00](v12);
  v58 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v58 + 16))
  {
    return 0;
  }

  v56 = (&v52 - v14);
  v57 = v15;
  v55 = v8;
  v16 = 0;
  v53 = a1;
  v17 = *(a1 + 64);
  v52 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v59 = v63 + 16;
  v60 = (v63 + 32);
  v54 = (v63 + 8);
  while (1)
  {
    v22 = v57;
    if (!v20)
    {
      break;
    }

    v61 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v28 = (*(v53 + 48) + 16 * v23);
    v29 = *v28;
    v30 = v28[1];
    v32 = v62;
    v31 = v63;
    (*(v63 + 16))(v62, *(v53 + 56) + *(v63 + 72) * v23, v4);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077548, &unk_1E65F9F38);
    v34 = *(v33 + 48);
    *v22 = v29;
    *(v22 + 1) = v30;
    (*(v31 + 32))(&v22[v34], v32, v4);
    (*(*(v33 - 8) + 56))(v22, 0, 1, v33);

LABEL_17:
    v35 = v56;
    sub_1E5FAB460(v22, v56, &qword_1ED077540, &qword_1E65F9F30);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077548, &unk_1E65F9F38);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v41 = *v35;
    v40 = v35[1];
    v42 = v58;
    v43 = v55;
    (*v60)(v55, v35 + v39, v4);
    v44 = sub_1E6215038(v41, v40);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      (*v54)(v43, v4);
      return 0;
    }

    v48 = v62;
    v47 = v63;
    (*(v63 + 16))(v62, *(v42 + 56) + *(v63 + 72) * v44, v4);
    sub_1E6288E70(&qword_1ED077550, MEMORY[0x1E699EB58]);
    v49 = sub_1E65E5B98();
    v50 = *(v47 + 8);
    v50(v48, v4);
    result = (v50)(v43, v4);
    v20 = v61;
    if ((v49 & 1) == 0)
    {
      return v38;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077548, &unk_1E65F9F38);
      (*(*(v51 - 8) + 56))(v22, 1, 1, v51);
      v61 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v52 + 8 * v26);
    ++v16;
    if (v27)
    {
      v61 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6280ED8(uint64_t a1, uint64_t a2)
{
  v60 = sub_1E65DB048();
  v55 = *(v60 - 8);
  v4 = *(v55 + 64);
  v5 = MEMORY[0x1EEE9AC00](v60);
  v56 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v54 = v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077508, &qword_1E65F9EF8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v53 = v50 - v13;
  v14 = 0;
  v51 = a1;
  v17 = *(a1 + 64);
  v16 = a1 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v50[0] = v16;
  v50[1] = v55 + 16;
  v58 = (v55 + 32);
  v52 = (v55 + 8);
  while (v20)
  {
    v59 = (v20 - 1) & v20;
    v22 = __clz(__rbit64(v20)) | (v14 << 6);
LABEL_16:
    v27 = v51;
    v28 = v54;
    v29 = v55;
    v30 = v60;
    (*(v55 + 16))(v54, *(v51 + 48) + *(v55 + 72) * v22, v60);
    v31 = *(*(v27 + 56) + 8 * v22);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077510, &unk_1E65F9F00);
    v33 = *(v32 + 48);
    v34 = *(v29 + 32);
    v35 = v57;
    v34(v57, v28, v30);
    *(v35 + v33) = v31;
    (*(*(v32 - 8) + 56))(v35, 0, 1, v32);

LABEL_17:
    v36 = v53;
    sub_1E5FAB460(v35, v53, &qword_1ED077508, &qword_1E65F9EF8);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077510, &unk_1E65F9F00);
    v38 = (*(*(v37 - 8) + 48))(v36, 1, v37);
    v39 = v38 == 1;
    if (v38 == 1)
    {
      return v39;
    }

    v40 = *(v37 + 48);
    v41 = v56;
    v42 = v60;
    (*v58)(v56, v36, v60);
    v43 = *(v36 + v40);
    v44 = sub_1E6416C60(v41);
    LOBYTE(v40) = v45;
    (*v52)(v41, v42);
    if ((v40 & 1) == 0)
    {

      return 0;
    }

    v46 = *(*(a2 + 56) + 8 * v44);

    v48 = sub_1E6282D9C(v47, v43);

    v20 = v59;
    if ((v48 & 1) == 0)
    {
      return v39;
    }
  }

  if (v21 <= v14 + 1)
  {
    v23 = v14 + 1;
  }

  else
  {
    v23 = v21;
  }

  v24 = v23 - 1;
  while (1)
  {
    v25 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v25 >= v21)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077510, &unk_1E65F9F00);
      v35 = v57;
      (*(*(v49 - 8) + 56))(v57, 1, 1, v49);
      v59 = 0;
      v14 = v24;
      goto LABEL_17;
    }

    v26 = *(v50[0] + 8 * v25);
    ++v14;
    if (v26)
    {
      v59 = (v26 - 1) & v26;
      v22 = __clz(__rbit64(v26)) | (v25 << 6);
      v14 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6281364(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E3508();
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774D0, &qword_1E65F9EC8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  result = MEMORY[0x1EEE9AC00](v12);
  v58 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v58 + 16))
  {
    return 0;
  }

  v56 = (&v52 - v14);
  v57 = v15;
  v55 = v8;
  v16 = 0;
  v53 = a1;
  v17 = *(a1 + 64);
  v52 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v59 = v63 + 16;
  v60 = (v63 + 32);
  v54 = (v63 + 8);
  while (1)
  {
    v22 = v57;
    if (!v20)
    {
      break;
    }

    v61 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v28 = (*(v53 + 48) + 16 * v23);
    v29 = *v28;
    v30 = v28[1];
    v32 = v62;
    v31 = v63;
    (*(v63 + 16))(v62, *(v53 + 56) + *(v63 + 72) * v23, v4);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774D8, &qword_1E65F9ED0);
    v34 = *(v33 + 48);
    *v22 = v29;
    *(v22 + 1) = v30;
    (*(v31 + 32))(&v22[v34], v32, v4);
    (*(*(v33 - 8) + 56))(v22, 0, 1, v33);

LABEL_17:
    v35 = v56;
    sub_1E5FAB460(v22, v56, &qword_1ED0774D0, &qword_1E65F9EC8);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774D8, &qword_1E65F9ED0);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v41 = *v35;
    v40 = v35[1];
    v42 = v58;
    v43 = v55;
    (*v60)(v55, v35 + v39, v4);
    v44 = sub_1E6215038(v41, v40);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      (*v54)(v43, v4);
      return 0;
    }

    v48 = v62;
    v47 = v63;
    (*(v63 + 16))(v62, *(v42 + 56) + *(v63 + 72) * v44, v4);
    sub_1E6288E70(&qword_1ED0774E0, MEMORY[0x1E699ECC8]);
    v49 = sub_1E65E5B98();
    v50 = *(v47 + 8);
    v50(v48, v4);
    result = (v50)(v43, v4);
    v20 = v61;
    if ((v49 & 1) == 0)
    {
      return v38;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774D8, &qword_1E65F9ED0);
      (*(*(v51 - 8) + 56))(v22, 1, 1, v51);
      v61 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v52 + 8 * v26);
    ++v16;
    if (v27)
    {
      v61 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6281874(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E2F28();
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774B8, &qword_1E65F9EB8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  result = MEMORY[0x1EEE9AC00](v12);
  v58 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v58 + 16))
  {
    return 0;
  }

  v56 = (&v52 - v14);
  v57 = v15;
  v55 = v8;
  v16 = 0;
  v53 = a1;
  v17 = *(a1 + 64);
  v52 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v59 = v63 + 16;
  v60 = (v63 + 32);
  v54 = (v63 + 8);
  while (1)
  {
    v22 = v57;
    if (!v20)
    {
      break;
    }

    v61 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v28 = (*(v53 + 48) + 16 * v23);
    v29 = *v28;
    v30 = v28[1];
    v32 = v62;
    v31 = v63;
    (*(v63 + 16))(v62, *(v53 + 56) + *(v63 + 72) * v23, v4);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774C0, &qword_1E65F9EC0);
    v34 = *(v33 + 48);
    *v22 = v29;
    *(v22 + 1) = v30;
    (*(v31 + 32))(&v22[v34], v32, v4);
    (*(*(v33 - 8) + 56))(v22, 0, 1, v33);

LABEL_17:
    v35 = v56;
    sub_1E5FAB460(v22, v56, &qword_1ED0774B8, &qword_1E65F9EB8);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774C0, &qword_1E65F9EC0);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v41 = *v35;
    v40 = v35[1];
    v42 = v58;
    v43 = v55;
    (*v60)(v55, v35 + v39, v4);
    v44 = sub_1E6215038(v41, v40);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      (*v54)(v43, v4);
      return 0;
    }

    v48 = v62;
    v47 = v63;
    (*(v63 + 16))(v62, *(v42 + 56) + *(v63 + 72) * v44, v4);
    sub_1E6288E70(&qword_1ED0774C8, MEMORY[0x1E699EA38]);
    v49 = sub_1E65E5B98();
    v50 = *(v47 + 8);
    v50(v48, v4);
    result = (v50)(v43, v4);
    v20 = v61;
    if ((v49 & 1) == 0)
    {
      return v38;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774C0, &qword_1E65F9EC0);
      (*(*(v51 - 8) + 56))(v22, 1, 1, v51);
      v61 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v52 + 8 * v26);
    ++v16;
    if (v27)
    {
      v61 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6281D84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E3468();
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774A8, &qword_1E65F9EA8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  result = MEMORY[0x1EEE9AC00](v12);
  v58 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v58 + 16))
  {
    return 0;
  }

  v56 = (&v52 - v14);
  v57 = v15;
  v55 = v8;
  v16 = 0;
  v53 = a1;
  v17 = *(a1 + 64);
  v52 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v59 = v63 + 16;
  v60 = (v63 + 32);
  v54 = (v63 + 8);
  while (1)
  {
    v22 = v57;
    if (!v20)
    {
      break;
    }

    v61 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v28 = (*(v53 + 48) + 16 * v23);
    v29 = *v28;
    v30 = v28[1];
    v32 = v62;
    v31 = v63;
    (*(v63 + 16))(v62, *(v53 + 56) + *(v63 + 72) * v23, v4);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774B0, &qword_1E65F9EB0);
    v34 = *(v33 + 48);
    *v22 = v29;
    *(v22 + 1) = v30;
    (*(v31 + 32))(&v22[v34], v32, v4);
    (*(*(v33 - 8) + 56))(v22, 0, 1, v33);

LABEL_17:
    v35 = v56;
    sub_1E5FAB460(v22, v56, &qword_1ED0774A8, &qword_1E65F9EA8);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774B0, &qword_1E65F9EB0);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v41 = *v35;
    v40 = v35[1];
    v42 = v58;
    v43 = v55;
    (*v60)(v55, v35 + v39, v4);
    v44 = sub_1E6215038(v41, v40);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      (*v54)(v43, v4);
      return 0;
    }

    v48 = v62;
    v47 = v63;
    (*(v63 + 16))(v62, *(v42 + 56) + *(v63 + 72) * v44, v4);
    sub_1E6288E70(&qword_1ED074FB0, MEMORY[0x1E699EC68]);
    v49 = sub_1E65E5B98();
    v50 = *(v47 + 8);
    v50(v48, v4);
    result = (v50)(v43, v4);
    v20 = v61;
    if ((v49 & 1) == 0)
    {
      return v38;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774B0, &qword_1E65F9EB0);
      (*(*(v51 - 8) + 56))(v22, 1, 1, v51);
      v61 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v52 + 8 * v26);
    ++v16;
    if (v27)
    {
      v61 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6282294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E2498();
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774E8, &qword_1E65F9ED8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  result = MEMORY[0x1EEE9AC00](v12);
  v58 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v58 + 16))
  {
    return 0;
  }

  v56 = (&v52 - v14);
  v57 = v15;
  v55 = v8;
  v16 = 0;
  v53 = a1;
  v17 = *(a1 + 64);
  v52 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v59 = v63 + 16;
  v60 = (v63 + 32);
  v54 = (v63 + 8);
  while (1)
  {
    v22 = v57;
    if (!v20)
    {
      break;
    }

    v61 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v28 = (*(v53 + 48) + 16 * v23);
    v29 = *v28;
    v30 = v28[1];
    v32 = v62;
    v31 = v63;
    (*(v63 + 16))(v62, *(v53 + 56) + *(v63 + 72) * v23, v4);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774F0, &qword_1E65F9EE0);
    v34 = *(v33 + 48);
    *v22 = v29;
    *(v22 + 1) = v30;
    (*(v31 + 32))(&v22[v34], v32, v4);
    (*(*(v33 - 8) + 56))(v22, 0, 1, v33);

LABEL_17:
    v35 = v56;
    sub_1E5FAB460(v22, v56, &qword_1ED0774E8, &qword_1E65F9ED8);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774F0, &qword_1E65F9EE0);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v41 = *v35;
    v40 = v35[1];
    v42 = v58;
    v43 = v55;
    (*v60)(v55, v35 + v39, v4);
    v44 = sub_1E6215038(v41, v40);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      (*v54)(v43, v4);
      return 0;
    }

    v48 = v62;
    v47 = v63;
    (*(v63 + 16))(v62, *(v42 + 56) + *(v63 + 72) * v44, v4);
    sub_1E6288E70(&qword_1ED074DA8, MEMORY[0x1E699F2C0]);
    v49 = sub_1E65E5B98();
    v50 = *(v47 + 8);
    v50(v48, v4);
    result = (v50)(v43, v4);
    v20 = v61;
    if ((v49 & 1) == 0)
    {
      return v38;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774F0, &qword_1E65F9EE0);
      (*(*(v51 - 8) + 56))(v22, 1, 1, v51);
      v61 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v52 + 8 * v26);
    ++v16;
    if (v27)
    {
      v61 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E62827A4(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_1E6416C34(*(*(v3 + 48) + v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E62828AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DF438();
  v56 = *(v4 - 8);
  v5 = *(v56 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v57 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0774F8, &qword_1E65F9EE8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  result = MEMORY[0x1EEE9AC00](v11);
  v58 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v58 + 16))
  {
    return 0;
  }

  v50 = &v47 - v13;
  v51 = v14;
  v15 = 0;
  v48 = a1;
  v16 = *(a1 + 64);
  v47 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v52 = v56 + 16;
  v53 = (v56 + 32);
  v49 = (v56 + 8);
  while (1)
  {
    v21 = v51;
    if (!v19)
    {
      break;
    }

    v54 = (v19 - 1) & v19;
    v22 = __clz(__rbit64(v19)) | (v15 << 6);
LABEL_16:
    v27 = *(*(v48 + 48) + v22);
    v29 = v55;
    v28 = v56;
    (*(v56 + 16))(v55, *(v48 + 56) + *(v56 + 72) * v22, v4);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077500, &qword_1E65F9EF0);
    v31 = *(v30 + 48);
    *v21 = v27;
    (*(v28 + 32))(&v21[v31], v29, v4);
    (*(*(v30 - 8) + 56))(v21, 0, 1, v30);
LABEL_17:
    v32 = v21;
    v33 = v50;
    sub_1E5FAB460(v32, v50, &qword_1ED0774F8, &qword_1E65F9EE8);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077500, &qword_1E65F9EF0);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *(v34 + 48);
    v38 = *v33;
    (*v53)(v57, &v33[v37], v4);
    v39 = sub_1E6416C34(v38);
    if ((v40 & 1) == 0)
    {
      (*v49)(v57, v4);
      return 0;
    }

    v41 = v55;
    v42 = v56;
    (*(v56 + 16))(v55, *(v58 + 56) + *(v56 + 72) * v39, v4);
    sub_1E6288E70(&qword_1ED074BA0, MEMORY[0x1E699E610]);
    v43 = v57;
    v44 = sub_1E65E5B98();
    v45 = *(v42 + 8);
    v45(v41, v4);
    result = (v45)(v43, v4);
    v19 = v54;
    if ((v44 & 1) == 0)
    {
      return v36;
    }
  }

  if (v20 <= v15 + 1)
  {
    v23 = v15 + 1;
  }

  else
  {
    v23 = v20;
  }

  v24 = v23 - 1;
  while (1)
  {
    v25 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v25 >= v20)
    {
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077500, &qword_1E65F9EF0);
      (*(*(v46 - 8) + 56))(v21, 1, 1, v46);
      v54 = 0;
      v15 = v24;
      goto LABEL_17;
    }

    v26 = *(v47 + 8 * v25);
    ++v15;
    if (v26)
    {
      v54 = (v26 - 1) & v26;
      v22 = __clz(__rbit64(v26)) | (v25 << 6);
      v15 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6282D9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074B28, &qword_1E65F1080);
  v82 = *(v4 - 8);
  v5 = *(v82 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v80 = &v62 - v9;
  v81 = sub_1E65DB0E8();
  v72 = *(v81 - 8);
  v10 = *(v72 + 64);
  v11 = MEMORY[0x1EEE9AC00](v81);
  v73 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v71 = &v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077518, &qword_1E65F9F10);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  result = MEMORY[0x1EEE9AC00](v16);
  v75 = &v62 - v19;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v74 = v18;
  v69 = v8;
  v70 = a2;
  v20 = 0;
  v66 = a1;
  v23 = *(a1 + 64);
  v22 = a1 + 64;
  v21 = v23;
  v24 = 1 << *(v22 - 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v63 = (v24 + 63) >> 6;
  v64 = v22;
  v65 = v72 + 16;
  v79 = (v72 + 32);
  v77 = v82 + 16;
  v78 = (v82 + 32);
  v67 = (v72 + 8);
  v68 = (v82 + 8);
  while (v26)
  {
    v76 = (v26 - 1) & v26;
    v27 = __clz(__rbit64(v26)) | (v20 << 6);
LABEL_16:
    v34 = v66;
    v36 = v71;
    v35 = v72;
    v37 = v81;
    (*(v72 + 16))(v71, *(v66 + 48) + *(v72 + 72) * v27, v81);
    v38 = *(v34 + 56);
    v39 = v82;
    v40 = v80;
    (*(v82 + 16))(v80, v38 + *(v82 + 72) * v27, v4);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077520, &qword_1E65F9F18);
    v42 = *(v41 + 48);
    v43 = *(v35 + 32);
    v31 = v74;
    v43(v74, v36, v37);
    (*(v39 + 32))(v31 + v42, v40, v4);
    (*(*(v41 - 8) + 56))(v31, 0, 1, v41);
    v30 = v75;
    v26 = v76;
LABEL_17:
    sub_1E5FAB460(v31, v30, &qword_1ED077518, &qword_1E65F9F10);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077520, &qword_1E65F9F18);
    v45 = (*(*(v44 - 8) + 48))(v30, 1, v44);
    v46 = v45 == 1;
    if (v45 == 1)
    {
      return v46;
    }

    v47 = *(v44 + 48);
    v48 = v4;
    v49 = v73;
    v50 = v81;
    (*v79)(v73, v30, v81);
    v51 = v69;
    (*v78)(v69, v30 + v47, v48);
    v52 = v70;
    v53 = sub_1E6416D34(v49);
    v55 = v54;
    (*v67)(v49, v50);
    if ((v55 & 1) == 0)
    {
      (*v68)(v51, v48);
      return 0;
    }

    v56 = v82;
    v57 = *(v52 + 56) + *(v82 + 72) * v53;
    v58 = v80;
    (*(v82 + 16))(v80, v57, v48);
    sub_1E5FED46C(&qword_1ED077528, &qword_1ED074B28, &qword_1E65F1080);
    v59 = sub_1E65E5B98();
    v60 = *(v56 + 8);
    v60(v58, v48);
    result = (v60)(v51, v48);
    v4 = v48;
    if ((v59 & 1) == 0)
    {
      return v46;
    }
  }

  if (v63 <= v20 + 1)
  {
    v28 = v20 + 1;
  }

  else
  {
    v28 = v63;
  }

  v29 = v28 - 1;
  v31 = v74;
  v30 = v75;
  while (1)
  {
    v32 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v32 >= v63)
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077520, &qword_1E65F9F18);
      (*(*(v61 - 8) + 56))(v31, 1, 1, v61);
      v26 = 0;
      v20 = v29;
      goto LABEL_17;
    }

    v33 = *(v64 + 8 * v32);
    ++v20;
    if (v33)
    {
      v76 = (v33 - 1) & v33;
      v27 = __clz(__rbit64(v33)) | (v32 << 6);
      v20 = v32;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E62833E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E0D48();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v59 - v10;
  v11 = sub_1E65E0B48();
  v68 = *(v11 - 8);
  v12 = *(v68 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v69 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v59 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077530, &qword_1E65F9F20);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  result = MEMORY[0x1EEE9AC00](v18);
  v70 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v70 + 16))
  {
    return 0;
  }

  v65 = &v59 - v20;
  v66 = v21;
  v22 = 0;
  v63 = a1;
  v25 = *(a1 + 64);
  v24 = a1 + 64;
  v23 = v25;
  v26 = 1 << *(v24 - 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v23;
  v60 = (v26 + 63) >> 6;
  v61 = v24;
  v71 = v5 + 16;
  v72 = (v5 + 32);
  v64 = (v5 + 8);
  v62 = v9;
  while (v28)
  {
    v73 = (v28 - 1) & v28;
    v29 = __clz(__rbit64(v28)) | (v22 << 6);
    v30 = v66;
LABEL_16:
    v35 = v63;
    v36 = v67;
    v37 = MEMORY[0x1E699DD40];
    sub_1E6288EB8(*(v63 + 48) + *(v68 + 72) * v29, v67, MEMORY[0x1E699DD40]);
    v38 = v74;
    (*(v5 + 16))(v74, *(v35 + 56) + *(v5 + 72) * v29, v4);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077538, &qword_1E65F9F28);
    v40 = *(v39 + 48);
    sub_1E6288F20(v36, v30, v37);
    (*(v5 + 32))(v30 + v40, v38, v4);
    (*(*(v39 - 8) + 56))(v30, 0, 1, v39);
    v9 = v62;
LABEL_17:
    v41 = v65;
    sub_1E5FAB460(v30, v65, &qword_1ED077530, &qword_1E65F9F20);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077538, &qword_1E65F9F28);
    v43 = (*(*(v42 - 8) + 48))(v41, 1, v42);
    v44 = v43 == 1;
    if (v43 == 1)
    {
      return v44;
    }

    v45 = *(v42 + 48);
    v46 = MEMORY[0x1E699DD40];
    v47 = v69;
    sub_1E6288F20(v41, v69, MEMORY[0x1E699DD40]);
    (*v72)(v9, v41 + v45, v4);
    v48 = v70;
    v49 = v4;
    v50 = v9;
    v51 = sub_1E6416E08(v47);
    v53 = v52;
    sub_1E6288F88(v47, v46);
    if ((v53 & 1) == 0)
    {
      (*v64)(v50, v49);
      return 0;
    }

    v54 = *(v48 + 56) + *(v5 + 72) * v51;
    v55 = v74;
    (*(v5 + 16))(v74, v54, v49);
    sub_1E6288E70(&qword_1ED074A98, MEMORY[0x1E699DEB0]);
    v56 = sub_1E65E5B98();
    v57 = *(v5 + 8);
    v57(v55, v49);
    result = (v57)(v50, v49);
    v9 = v50;
    v4 = v49;
    v28 = v73;
    if ((v56 & 1) == 0)
    {
      return v44;
    }
  }

  if (v60 <= v22 + 1)
  {
    v31 = v22 + 1;
  }

  else
  {
    v31 = v60;
  }

  v32 = v31 - 1;
  v30 = v66;
  while (1)
  {
    v33 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v33 >= v60)
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077538, &qword_1E65F9F28);
      (*(*(v58 - 8) + 56))(v30, 1, 1, v58);
      v73 = 0;
      v22 = v32;
      goto LABEL_17;
    }

    v34 = *(v61 + 8 * v33);
    ++v22;
    if (v34)
    {
      v73 = (v34 - 1) & v34;
      v29 = __clz(__rbit64(v34)) | (v33 << 6);
      v22 = v33;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E62839FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077570, &qword_1E65F9F60);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  result = MEMORY[0x1EEE9AC00](v12);
  v58 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v58 + 16))
  {
    return 0;
  }

  v56 = (&v52 - v14);
  v57 = v15;
  v55 = v8;
  v16 = 0;
  v53 = a1;
  v17 = *(a1 + 64);
  v52 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v59 = v63 + 16;
  v60 = (v63 + 32);
  v54 = (v63 + 8);
  while (1)
  {
    v22 = v57;
    if (!v20)
    {
      break;
    }

    v61 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v28 = (*(v53 + 48) + 16 * v23);
    v29 = *v28;
    v30 = v28[1];
    v32 = v62;
    v31 = v63;
    (*(v63 + 16))(v62, *(v53 + 56) + *(v63 + 72) * v23, v4);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077578, &qword_1E65F9F68);
    v34 = *(v33 + 48);
    *v22 = v29;
    *(v22 + 1) = v30;
    (*(v31 + 32))(&v22[v34], v32, v4);
    (*(*(v33 - 8) + 56))(v22, 0, 1, v33);

LABEL_17:
    v35 = v56;
    sub_1E5FAB460(v22, v56, &qword_1ED077570, &qword_1E65F9F60);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077578, &qword_1E65F9F68);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v41 = *v35;
    v40 = v35[1];
    v42 = v58;
    v43 = v55;
    (*v60)(v55, v35 + v39, v4);
    v44 = sub_1E6215038(v41, v40);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      (*v54)(v43, v4);
      return 0;
    }

    v48 = v62;
    v47 = v63;
    (*(v63 + 16))(v62, *(v42 + 56) + *(v63 + 72) * v44, v4);
    sub_1E5FED46C(&qword_1ED074998, &qword_1ED072810, &qword_1E65EBE08);
    v49 = sub_1E65E5B98();
    v50 = *(v47 + 8);
    v50(v48, v4);
    result = (v50)(v43, v4);
    v20 = v61;
    if ((v49 & 1) == 0)
    {
      return v38;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077578, &qword_1E65F9F68);
      (*(*(v51 - 8) + 56))(v22, 1, 1, v51);
      v61 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v52 + 8 * v26);
    ++v16;
    if (v27)
    {
      v61 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6283F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DFA08();
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077580, &qword_1E65F9F70);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  result = MEMORY[0x1EEE9AC00](v12);
  v58 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v58 + 16))
  {
    return 0;
  }

  v56 = (&v52 - v14);
  v57 = v15;
  v55 = v8;
  v16 = 0;
  v53 = a1;
  v17 = *(a1 + 64);
  v52 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v59 = v63 + 16;
  v60 = (v63 + 32);
  v54 = (v63 + 8);
  while (1)
  {
    v22 = v57;
    if (!v20)
    {
      break;
    }

    v61 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v28 = (*(v53 + 48) + 16 * v23);
    v29 = *v28;
    v30 = v28[1];
    v32 = v62;
    v31 = v63;
    (*(v63 + 16))(v62, *(v53 + 56) + *(v63 + 72) * v23, v4);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077588, &qword_1E65F9F78);
    v34 = *(v33 + 48);
    *v22 = v29;
    *(v22 + 1) = v30;
    (*(v31 + 32))(&v22[v34], v32, v4);
    (*(*(v33 - 8) + 56))(v22, 0, 1, v33);

LABEL_17:
    v35 = v56;
    sub_1E5FAB460(v22, v56, &qword_1ED077580, &qword_1E65F9F70);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077588, &qword_1E65F9F78);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v41 = *v35;
    v40 = v35[1];
    v42 = v58;
    v43 = v55;
    (*v60)(v55, v35 + v39, v4);
    v44 = sub_1E6215038(v41, v40);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      (*v54)(v43, v4);
      return 0;
    }

    v48 = v62;
    v47 = v63;
    (*(v63 + 16))(v62, *(v42 + 56) + *(v63 + 72) * v44, v4);
    sub_1E6288E70(&qword_1ED074950, MEMORY[0x1E699D450]);
    v49 = sub_1E65E5B98();
    v50 = *(v47 + 8);
    v50(v48, v4);
    result = (v50)(v43, v4);
    v20 = v61;
    if ((v49 & 1) == 0)
    {
      return v38;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077588, &qword_1E65F9F78);
      (*(*(v51 - 8) + 56))(v22, 1, 1, v51);
      v61 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v52 + 8 * v26);
    ++v16;
    if (v27)
    {
      v61 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E6284424(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    sub_1E5E06368(v16);
    v17 = sub_1E6215038(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_1E5F87148(v16);
      return 0;
    }

    v20 = *(*(a2 + 56) + 8 * v17);
    sub_1E5E06368(v20);
    v21 = sub_1E65DBFE8();
    sub_1E5F87148(v20);
    result = sub_1E5F87148(v16);
    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6284590(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DBED8();
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077590, &qword_1E65F9F80);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  result = MEMORY[0x1EEE9AC00](v12);
  v58 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v58 + 16))
  {
    return 0;
  }

  v56 = (&v52 - v14);
  v57 = v15;
  v55 = v8;
  v16 = 0;
  v53 = a1;
  v17 = *(a1 + 64);
  v52 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v59 = v63 + 16;
  v60 = (v63 + 32);
  v54 = (v63 + 8);
  while (1)
  {
    v22 = v57;
    if (!v20)
    {
      break;
    }

    v61 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v28 = (*(v53 + 48) + 16 * v23);
    v29 = *v28;
    v30 = v28[1];
    v32 = v62;
    v31 = v63;
    (*(v63 + 16))(v62, *(v53 + 56) + *(v63 + 72) * v23, v4);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077598, &qword_1E65F9F88);
    v34 = *(v33 + 48);
    *v22 = v29;
    *(v22 + 1) = v30;
    (*(v31 + 32))(&v22[v34], v32, v4);
    (*(*(v33 - 8) + 56))(v22, 0, 1, v33);

LABEL_17:
    v35 = v56;
    sub_1E5FAB460(v22, v56, &qword_1ED077590, &qword_1E65F9F80);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077598, &qword_1E65F9F88);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v41 = *v35;
    v40 = v35[1];
    v42 = v58;
    v43 = v55;
    (*v60)(v55, v35 + v39, v4);
    v44 = sub_1E6215038(v41, v40);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      (*v54)(v43, v4);
      return 0;
    }

    v48 = v62;
    v47 = v63;
    (*(v63 + 16))(v62, *(v42 + 56) + *(v63 + 72) * v44, v4);
    sub_1E6288E70(&qword_1ED074808, MEMORY[0x1E699D318]);
    v49 = sub_1E65E5B98();
    v50 = *(v47 + 8);
    v50(v48, v4);
    result = (v50)(v43, v4);
    v20 = v61;
    if ((v49 & 1) == 0)
    {
      return v38;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077598, &qword_1E65F9F88);
      (*(*(v51 - 8) + 56))(v22, 1, 1, v51);
      v61 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v52 + 8 * v26);
    ++v16;
    if (v27)
    {
      v61 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6284AA0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_1E6215038(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0)
    {

      return 0;
    }

    v20 = *(*(a2 + 56) + 8 * v17);

    v22 = sub_1E6284C08(v21, v16);

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6284C08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DBD18();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0775A0, &qword_1E65F9F90);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = (&v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v59 - v17);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v62 = v9;
  v63 = a2;
  v65 = v5;
  v19 = 0;
  v61 = a1;
  v22 = *(a1 + 64);
  v21 = a1 + 64;
  v20 = v22;
  v23 = 1 << *(v21 - 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v59 = (v23 + 63) >> 6;
  v60 = v21;
  v26 = &unk_1ED0775A8;
  v27 = &unk_1E65F9F98;
  while (v25)
  {
    v64 = (v25 - 1) & v25;
    v28 = __clz(__rbit64(v25)) | (v19 << 6);
    v29 = v65;
LABEL_16:
    v35 = (*(v61 + 48) + 16 * v28);
    v36 = *v35;
    v37 = v35[1];
    v38 = MEMORY[0x1E699D278];
    v39 = v66;
    sub_1E6288EB8(*(v61 + 56) + *(v29 + 72) * v28, v66, MEMORY[0x1E699D278]);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
    v41 = *(v40 + 48);
    *v15 = v36;
    v15[1] = v37;
    sub_1E6288F20(v39, v15 + v41, v38);
    (*(*(v40 - 8) + 56))(v15, 0, 1, v40);
    v32 = v63;
LABEL_17:
    sub_1E5FAB460(v15, v18, &qword_1ED0775A0, &qword_1E65F9F90);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
    v43 = (*(*(v42 - 8) + 48))(v18, 1, v42);
    v44 = v43 == 1;
    if (v43 == 1)
    {
      return v44;
    }

    v45 = *v18;
    v46 = v18[1];
    v47 = v62;
    sub_1E6288F20(v18 + *(v42 + 48), v62, MEMORY[0x1E699D278]);
    v48 = sub_1E6416F1C(v45, v46);
    if ((v49 & 1) == 0)
    {
      sub_1E6288F88(v47, MEMORY[0x1E699D278]);
      return 0;
    }

    v50 = MEMORY[0x1E699D278];
    v51 = v27;
    v52 = v26;
    v53 = v18;
    v54 = v15;
    v55 = v66;
    sub_1E6288EB8(*(v32 + 56) + *(v65 + 72) * v48, v66, MEMORY[0x1E699D278]);
    v56 = MEMORY[0x1E6943710](v55, v47);
    v57 = v55;
    v15 = v54;
    v18 = v53;
    v26 = v52;
    v27 = v51;
    sub_1E6288F88(v57, v50);
    result = sub_1E6288F88(v47, v50);
    v25 = v64;
    if ((v56 & 1) == 0)
    {
      return v44;
    }
  }

  if (v59 <= v19 + 1)
  {
    v30 = v19 + 1;
  }

  else
  {
    v30 = v59;
  }

  v31 = v30 - 1;
  v29 = v65;
  v32 = v63;
  while (1)
  {
    v33 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v33 >= v59)
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
      (*(*(v58 - 8) + 56))(v15, 1, 1, v58);
      v64 = 0;
      v19 = v31;
      goto LABEL_17;
    }

    v34 = *(v60 + 8 * v33);
    ++v19;
    if (v34)
    {
      v64 = (v34 - 1) & v34;
      v28 = __clz(__rbit64(v34)) | (v33 << 6);
      v19 = v33;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6285090(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DBD88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0775B0, &qword_1E65F9FA0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = (&v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v13);
  v60 = (&v55 - v17);
  if (a1 == a2)
  {
    return 1;
  }

  v18 = *(a1 + 16);
  v59 = a2;
  if (v18 != *(a2 + 16))
  {
    return 0;
  }

  v57 = v5;
  v58 = v9;
  v19 = 0;
  v56 = a1;
  v20 = *(a1 + 64);
  v55 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  while (v23)
  {
    v61 = (v23 - 1) & v23;
    v25 = __clz(__rbit64(v23)) | (v19 << 6);
    v26 = v60;
LABEL_16:
    v31 = (*(v56 + 48) + 16 * v25);
    v32 = *v31;
    v33 = v31[1];
    v34 = MEMORY[0x1E699D2D0];
    v35 = v62;
    sub_1E6288EB8(*(v56 + 56) + *(v5 + 72) * v25, v62, MEMORY[0x1E699D2D0]);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0775B8, &qword_1E65F9FA8);
    v37 = *(v36 + 48);
    *v15 = v32;
    v15[1] = v33;
    sub_1E6288F20(v35, v15 + v37, v34);
    (*(*(v36 - 8) + 56))(v15, 0, 1, v36);

LABEL_17:
    sub_1E5FAB460(v15, v26, &qword_1ED0775B0, &qword_1E65F9FA0);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0775B8, &qword_1E65F9FA8);
    v39 = (*(*(v38 - 8) + 48))(v26, 1, v38);
    v40 = v39 == 1;
    if (v39 == 1)
    {
      return v40;
    }

    v41 = *(v38 + 48);
    v42 = *v26;
    v43 = v26[1];
    v44 = v58;
    sub_1E6288F20(v26 + v41, v58, MEMORY[0x1E699D2D0]);
    v45 = v59;
    v46 = sub_1E6215038(v42, v43);
    v48 = v47;

    if ((v48 & 1) == 0)
    {
      sub_1E6288F88(v44, MEMORY[0x1E699D2D0]);
      return 0;
    }

    v5 = v57;
    v49 = MEMORY[0x1E699D2D0];
    v50 = v15;
    v51 = v62;
    sub_1E6288EB8(*(v45 + 56) + *(v57 + 72) * v46, v62, MEMORY[0x1E699D2D0]);
    v52 = MEMORY[0x1E6943780](v51, v44);
    v53 = v51;
    v15 = v50;
    sub_1E6288F88(v53, v49);
    result = sub_1E6288F88(v44, v49);
    v23 = v61;
    if ((v52 & 1) == 0)
    {
      return v40;
    }
  }

  if (v24 <= v19 + 1)
  {
    v27 = v19 + 1;
  }

  else
  {
    v27 = v24;
  }

  v28 = v27 - 1;
  v26 = v60;
  while (1)
  {
    v29 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v29 >= v24)
    {
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0775B8, &qword_1E65F9FA8);
      (*(*(v54 - 8) + 56))(v15, 1, 1, v54);
      v61 = 0;
      v19 = v28;
      goto LABEL_17;
    }

    v30 = *(v55 + 8 * v29);
    ++v19;
    if (v30)
    {
      v61 = (v30 - 1) & v30;
      v25 = __clz(__rbit64(v30)) | (v29 << 6);
      v19 = v29;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6285524(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + v12);

    v17 = sub_1E6215038(v14, v15);
    v19 = v18;

    if (v19)
    {
      v20 = *(*(a2 + 56) + v17);
      result = sub_1E65E2E68();
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E628565C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076340, &qword_1E65F53F0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  result = MEMORY[0x1EEE9AC00](v12);
  v58 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v58 + 16))
  {
    return 0;
  }

  v56 = (&v52 - v14);
  v57 = v15;
  v55 = v8;
  v16 = 0;
  v53 = a1;
  v17 = *(a1 + 64);
  v52 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v59 = v63 + 16;
  v60 = (v63 + 32);
  v54 = (v63 + 8);
  while (1)
  {
    v22 = v57;
    if (!v20)
    {
      break;
    }

    v61 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v28 = (*(v53 + 48) + 16 * v23);
    v29 = *v28;
    v30 = v28[1];
    v32 = v62;
    v31 = v63;
    (*(v63 + 16))(v62, *(v53 + 56) + *(v63 + 72) * v23, v4);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076348, &unk_1E65F9E90);
    v34 = *(v33 + 48);
    *v22 = v29;
    *(v22 + 1) = v30;
    (*(v31 + 32))(&v22[v34], v32, v4);
    (*(*(v33 - 8) + 56))(v22, 0, 1, v33);

LABEL_17:
    v35 = v56;
    sub_1E5FAB460(v22, v56, &qword_1ED076340, &qword_1E65F53F0);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076348, &unk_1E65F9E90);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v41 = *v35;
    v40 = v35[1];
    v42 = v58;
    v43 = v55;
    (*v60)(v55, v35 + v39, v4);
    v44 = sub_1E6215038(v41, v40);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      (*v54)(v43, v4);
      return 0;
    }

    v48 = v62;
    v47 = v63;
    (*(v63 + 16))(v62, *(v42 + 56) + *(v63 + 72) * v44, v4);
    sub_1E5FED46C(&qword_1ED077498, &qword_1ED072AE0, &qword_1E65F9E00);
    v49 = sub_1E65E5B98();
    v50 = *(v47 + 8);
    v50(v48, v4);
    result = (v50)(v43, v4);
    v20 = v61;
    if ((v49 & 1) == 0)
    {
      return v38;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076348, &unk_1E65F9E90);
      (*(*(v51 - 8) + 56))(v22, 1, 1, v51);
      v61 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v52 + 8 * v26);
    ++v16;
    if (v27)
    {
      v61 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6285B74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  v5 = *(v4 - 8);
  v68 = v4;
  v69 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076328, &qword_1E65F53E8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v70 = (&v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v13);
  v17 = &v56 - v16;
  v71 = a2;
  if (a1 == a2)
  {
    LODWORD(v62) = 1;
    return v62;
  }

  if (*(a1 + 16) != *(v71 + 16))
  {
LABEL_24:
    LODWORD(v62) = 0;
    return v62;
  }

  v18 = 0;
  v59 = a1;
  v19 = *(a1 + 64);
  v57 = a1 + 64;
  v58 = v9;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v63 = v69 + 16;
  v64 = &v56 - v16;
  v65 = (v69 + 32);
  v60 = v23;
  v61 = (v69 + 8);
  while (v22)
  {
    v66 = (v22 - 1) & v22;
    v24 = __clz(__rbit64(v22)) | (v18 << 6);
LABEL_16:
    v29 = *(v59 + 56);
    v30 = *(v59 + 48) + 24 * v24;
    v31 = *(v30 + 8);
    v62 = *v30;
    v32 = v62;
    v34 = v68;
    v33 = v69;
    v35 = *(v30 + 16);
    v36 = v67;
    (*(v69 + 16))(v67, v29 + *(v69 + 72) * v24, v68);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076330, &unk_1E65F9E80);
    v38 = *(v37 + 48);
    v39 = v70;
    *v70 = v32;
    v39[1] = v31;
    *(v39 + 16) = v35;
    (*(v33 + 32))(v39 + v38, v36, v34);
    (*(*(v37 - 8) + 56))(v39, 0, 1, v37);
    sub_1E600B01C(v62, v31, v35);
    v9 = v58;
    v17 = v64;
LABEL_17:
    sub_1E5FAB460(v70, v17, &qword_1ED076328, &qword_1E65F53E8);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076330, &unk_1E65F9E80);
    v41 = (*(*(v40 - 8) + 48))(v17, 1, v40);
    LODWORD(v62) = v41 == 1;
    if (v41 == 1)
    {
      return v62;
    }

    v42 = v67;
    v43 = v68;
    v44 = v69;
    v45 = *(v40 + 48);
    v46 = *v17;
    v47 = *(v17 + 1);
    v48 = v17[16];
    (*v65)(v9, &v17[v45], v68);
    v49 = v9;
    v50 = sub_1E6416FB4(v46, v47, v48);
    v51 = v43;
    LOBYTE(v43) = v52;
    sub_1E6001C2C(v46, v47, v48);
    if ((v43 & 1) == 0)
    {
      (*v61)(v49, v51);
      goto LABEL_24;
    }

    (*(v44 + 16))(v42, *(v71 + 56) + *(v44 + 72) * v50, v51);
    sub_1E5FED46C(&qword_1ED077498, &qword_1ED072AE0, &qword_1E65F9E00);
    v53 = sub_1E65E5B98();
    v54 = *(v44 + 8);
    v54(v42, v51);
    result = (v54)(v49, v51);
    v9 = v49;
    v17 = v64;
    v23 = v60;
    v22 = v66;
    if ((v53 & 1) == 0)
    {
      return v62;
    }
  }

  if (v23 <= v18 + 1)
  {
    v25 = v18 + 1;
  }

  else
  {
    v25 = v23;
  }

  v26 = v25 - 1;
  while (1)
  {
    v27 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v27 >= v23)
    {
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076330, &unk_1E65F9E80);
      (*(*(v55 - 8) + 56))(v70, 1, 1, v55);
      v66 = 0;
      v18 = v26;
      goto LABEL_17;
    }

    v28 = *(v57 + 8 * v27);
    ++v18;
    if (v28)
    {
      v66 = (v28 - 1) & v28;
      v24 = __clz(__rbit64(v28)) | (v27 << 6);
      v18 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E62860DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076308, &qword_1E65F53D8);
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076310, &qword_1E65F53E0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  result = MEMORY[0x1EEE9AC00](v12);
  v58 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v58 + 16))
  {
    return 0;
  }

  v56 = (&v52 - v14);
  v57 = v15;
  v55 = v8;
  v16 = 0;
  v53 = a1;
  v17 = *(a1 + 64);
  v52 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v59 = v63 + 16;
  v60 = (v63 + 32);
  v54 = (v63 + 8);
  while (1)
  {
    v22 = v57;
    if (!v20)
    {
      break;
    }

    v61 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v28 = (*(v53 + 48) + 16 * v23);
    v29 = *v28;
    v30 = v28[1];
    v32 = v62;
    v31 = v63;
    (*(v63 + 16))(v62, *(v53 + 56) + *(v63 + 72) * v23, v4);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076318, &unk_1E65F9E70);
    v34 = *(v33 + 48);
    *v22 = v29;
    *(v22 + 1) = v30;
    (*(v31 + 32))(&v22[v34], v32, v4);
    (*(*(v33 - 8) + 56))(v22, 0, 1, v33);

LABEL_17:
    v35 = v56;
    sub_1E5FAB460(v22, v56, &qword_1ED076310, &qword_1E65F53E0);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076318, &unk_1E65F9E70);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v41 = *v35;
    v40 = v35[1];
    v42 = v58;
    v43 = v55;
    (*v60)(v55, v35 + v39, v4);
    v44 = sub_1E6215038(v41, v40);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      (*v54)(v43, v4);
      return 0;
    }

    v48 = v62;
    v47 = v63;
    (*(v63 + 16))(v62, *(v42 + 56) + *(v63 + 72) * v44, v4);
    sub_1E5FED46C(&qword_1ED077490, &qword_1ED076308, &qword_1E65F53D8);
    v49 = sub_1E65E5B98();
    v50 = *(v47 + 8);
    v50(v48, v4);
    result = (v50)(v43, v4);
    v20 = v61;
    if ((v49 & 1) == 0)
    {
      return v38;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076318, &unk_1E65F9E70);
      (*(*(v51 - 8) + 56))(v22, 1, 1, v51);
      v61 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v52 + 8 * v26);
    ++v16;
    if (v27)
    {
      v61 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E62865F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762E8, &qword_1E65F53C8);
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762F0, &qword_1E65F53D0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  result = MEMORY[0x1EEE9AC00](v12);
  v58 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v58 + 16))
  {
    return 0;
  }

  v56 = (&v52 - v14);
  v57 = v15;
  v55 = v8;
  v16 = 0;
  v53 = a1;
  v17 = *(a1 + 64);
  v52 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v59 = v63 + 16;
  v60 = (v63 + 32);
  v54 = (v63 + 8);
  while (1)
  {
    v22 = v57;
    if (!v20)
    {
      break;
    }

    v61 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v28 = (*(v53 + 48) + 16 * v23);
    v29 = *v28;
    v30 = v28[1];
    v32 = v62;
    v31 = v63;
    (*(v63 + 16))(v62, *(v53 + 56) + *(v63 + 72) * v23, v4);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762F8, &unk_1E65F9E60);
    v34 = *(v33 + 48);
    *v22 = v29;
    *(v22 + 1) = v30;
    (*(v31 + 32))(&v22[v34], v32, v4);
    (*(*(v33 - 8) + 56))(v22, 0, 1, v33);

LABEL_17:
    v35 = v56;
    sub_1E5FAB460(v22, v56, &qword_1ED0762F0, &qword_1E65F53D0);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762F8, &unk_1E65F9E60);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v41 = *v35;
    v40 = v35[1];
    v42 = v58;
    v43 = v55;
    (*v60)(v55, v35 + v39, v4);
    v44 = sub_1E6215038(v41, v40);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      (*v54)(v43, v4);
      return 0;
    }

    v48 = v62;
    v47 = v63;
    (*(v63 + 16))(v62, *(v42 + 56) + *(v63 + 72) * v44, v4);
    sub_1E5FED46C(&qword_1ED077488, &qword_1ED0762E8, &qword_1E65F53C8);
    v49 = sub_1E65E5B98();
    v50 = *(v47 + 8);
    v50(v48, v4);
    result = (v50)(v43, v4);
    v20 = v61;
    if ((v49 & 1) == 0)
    {
      return v38;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762F8, &unk_1E65F9E60);
      (*(*(v51 - 8) + 56))(v22, 1, 1, v51);
      v61 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v52 + 8 * v26);
    ++v16;
    if (v27)
    {
      v61 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6286B0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762C8, &qword_1E65F53B8);
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762D0, &qword_1E65F53C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  result = MEMORY[0x1EEE9AC00](v12);
  v58 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v58 + 16))
  {
    return 0;
  }

  v56 = (&v52 - v14);
  v57 = v15;
  v55 = v8;
  v16 = 0;
  v53 = a1;
  v17 = *(a1 + 64);
  v52 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v59 = v63 + 16;
  v60 = (v63 + 32);
  v54 = (v63 + 8);
  while (1)
  {
    v22 = v57;
    if (!v20)
    {
      break;
    }

    v61 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v28 = (*(v53 + 48) + 16 * v23);
    v29 = *v28;
    v30 = v28[1];
    v32 = v62;
    v31 = v63;
    (*(v63 + 16))(v62, *(v53 + 56) + *(v63 + 72) * v23, v4);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762D8, &unk_1E65F9E50);
    v34 = *(v33 + 48);
    *v22 = v29;
    *(v22 + 1) = v30;
    (*(v31 + 32))(&v22[v34], v32, v4);
    (*(*(v33 - 8) + 56))(v22, 0, 1, v33);

LABEL_17:
    v35 = v56;
    sub_1E5FAB460(v22, v56, &qword_1ED0762D0, &qword_1E65F53C0);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762D8, &unk_1E65F9E50);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v41 = *v35;
    v40 = v35[1];
    v42 = v58;
    v43 = v55;
    (*v60)(v55, v35 + v39, v4);
    v44 = sub_1E6215038(v41, v40);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      (*v54)(v43, v4);
      return 0;
    }

    v48 = v62;
    v47 = v63;
    (*(v63 + 16))(v62, *(v42 + 56) + *(v63 + 72) * v44, v4);
    sub_1E5FED46C(&qword_1ED077480, &qword_1ED0762C8, &qword_1E65F53B8);
    v49 = sub_1E65E5B98();
    v50 = *(v47 + 8);
    v50(v48, v4);
    result = (v50)(v43, v4);
    v20 = v61;
    if ((v49 & 1) == 0)
    {
      return v38;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762D8, &unk_1E65F9E50);
      (*(*(v51 - 8) + 56))(v22, 1, 1, v51);
      v61 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v52 + 8 * v26);
    ++v16;
    if (v27)
    {
      v61 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6287024(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1E6215038(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1E65E6C18();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E62871C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E2A38();
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076350, &qword_1E65F53F8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  result = MEMORY[0x1EEE9AC00](v12);
  v58 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v58 + 16))
  {
    return 0;
  }

  v56 = (&v52 - v14);
  v57 = v15;
  v55 = v8;
  v16 = 0;
  v53 = a1;
  v17 = *(a1 + 64);
  v52 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v59 = v63 + 16;
  v60 = (v63 + 32);
  v54 = (v63 + 8);
  while (1)
  {
    v22 = v57;
    if (!v20)
    {
      break;
    }

    v61 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v28 = (*(v53 + 48) + 16 * v23);
    v29 = *v28;
    v30 = v28[1];
    v32 = v62;
    v31 = v63;
    (*(v63 + 16))(v62, *(v53 + 56) + *(v63 + 72) * v23, v4);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076358, &qword_1E65F9EA0);
    v34 = *(v33 + 48);
    *v22 = v29;
    *(v22 + 1) = v30;
    (*(v31 + 32))(&v22[v34], v32, v4);
    (*(*(v33 - 8) + 56))(v22, 0, 1, v33);

LABEL_17:
    v35 = v56;
    sub_1E5FAB460(v22, v56, &qword_1ED076350, &qword_1E65F53F8);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076358, &qword_1E65F9EA0);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v41 = *v35;
    v40 = v35[1];
    v42 = v58;
    v43 = v55;
    (*v60)(v55, v35 + v39, v4);
    v44 = sub_1E6215038(v41, v40);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      (*v54)(v43, v4);
      return 0;
    }

    v48 = v62;
    v47 = v63;
    (*(v63 + 16))(v62, *(v42 + 56) + *(v63 + 72) * v44, v4);
    sub_1E6288E70(&qword_1ED0774A0, MEMORY[0x1E699F498]);
    v49 = sub_1E65E5B98();
    v50 = *(v47 + 8);
    v50(v48, v4);
    result = (v50)(v43, v4);
    v20 = v61;
    if ((v49 & 1) == 0)
    {
      return v38;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076358, &qword_1E65F9EA0);
      (*(*(v51 - 8) + 56))(v22, 1, 1, v51);
      v61 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v52 + 8 * v26);
    ++v16;
    if (v27)
    {
      v61 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E62876D8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077430, &unk_1E65F9E40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E62886EC();
  sub_1E65E6DA8();
  v17 = *v3;
  v16 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0773C0, &qword_1E65F9DF8);
  sub_1E6288AD8();
  sub_1E65E6B78();
  if (!v2)
  {
    v15[2] = v11;
    v17 = v3[1];
    v16 = 1;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0773D8, &qword_1E65F9E08);
    v13 = sub_1E6288B90();
    sub_1E65E6B78();
    v15[0] = v13;
    v15[1] = v12;
    v17 = v3[2];
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0773E8, &unk_1E65F9E10);
    sub_1E6288C48();
    sub_1E65E6B78();
    v17 = v3[3];
    v16 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077400, &unk_1E65F9E20);
    sub_1E6288D00();
    sub_1E65E6B78();
    v17 = v3[4];
    v16 = 4;
    sub_1E65E6B78();
    v17 = v3[5];
    v16 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077418, &unk_1E65F9E30);
    sub_1E6288DB8();
    sub_1E65E6B78();
    v17 = v3[6];
    v16 = 6;
    sub_1E65E6B78();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E6287A18()
{
  v1 = *v0;
  v2 = 0x4C676E6972616873;
  v3 = 0xD00000000000001ELL;
  if (v1 != 5)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000013;
  v5 = 0xD00000000000001DLL;
  if (v1 != 1)
  {
    v5 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}