id sub_1CFC0A91C()
{
  v0 = sub_1CFC9F728();
  v1 = [objc_opt_self() systemImageNamed_];

  return v1;
}

BOOL sub_1CFC0A970(uint64_t a1)
{
  v2 = type metadata accessor for VoicemailsSectionController.Item(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  sub_1CFC09700(a1, v5, type metadata accessor for VoicemailsSectionController.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    sub_1CFC16B30(v5, type metadata accessor for VoicemailsSectionController.Item);
    v11 = sub_1CFC9C448();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  else
  {
    v12 = sub_1CFC9C448();
    v13 = *(v12 - 8);
    (*(v13 + 32))(v9, v5, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
  }

  sub_1CFBC2FB0(v9, &qword_1EC4EE368, &unk_1CFCA4040);
  return EnumCaseMultiPayload == 0;
}

uint64_t sub_1CFC0AB80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v38 - v7;
  v9 = sub_1CFC9C448();
  v41 = *(v9 - 8);
  v10 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for VoicemailsSectionController.Item(0);
  v12 = *(v45 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v45);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v38 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v38 = result;
    v19 = *(a1 + 16);
    if (v19)
    {
      v20 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v21 = *(v12 + 72);
      v47 = (v41 + 32);
      v43 = (v41 + 48);
      v44 = (v41 + 56);
      v48 = MEMORY[0x1E69E7CC0];
      v39 = v21;
      v40 = v6;
      v42 = v16;
      do
      {
        v22 = v6;
        v23 = v49;
        sub_1CFC09700(v20, v49, type metadata accessor for VoicemailsSectionController.Item);
        sub_1CFC09700(v23, v16, type metadata accessor for VoicemailsSectionController.Item);
        if (swift_getEnumCaseMultiPayload())
        {
          sub_1CFC16B30(v16, type metadata accessor for VoicemailsSectionController.Item);
          v24 = 1;
          v6 = v22;
        }

        else
        {
          v6 = v22;
          (*v47)(v22, v16, v9);
          v24 = 0;
        }

        (*v44)(v6, v24, 1, v9);
        sub_1CFBCCE88(v6, v8, &qword_1EC4EE368, &unk_1CFCA4040);
        sub_1CFC16B30(v49, type metadata accessor for VoicemailsSectionController.Item);
        if ((*v43)(v8, 1, v9) == 1)
        {
          sub_1CFBC2FB0(v8, &qword_1EC4EE368, &unk_1CFCA4040);
          v16 = v42;
        }

        else
        {
          v25 = v8;
          v26 = *v47;
          v27 = v25;
          (*v47)(v46);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v28 = v48;
          }

          else
          {
            v28 = sub_1CFC7B390(0, v48[2] + 1, 1, v48);
          }

          v16 = v42;
          v30 = v28[2];
          v29 = v28[3];
          if (v30 >= v29 >> 1)
          {
            v28 = sub_1CFC7B390(v29 > 1, v30 + 1, 1, v28);
          }

          v28[2] = v30 + 1;
          v31 = (*(v41 + 80) + 32) & ~*(v41 + 80);
          v48 = v28;
          (v26)(v28 + v31 + *(v41 + 72) * v30, v46, v9);
          v8 = v27;
          v21 = v39;
          v6 = v40;
        }

        v20 += v21;
        --v19;
      }

      while (v19);
    }

    else
    {
      v48 = MEMORY[0x1E69E7CC0];
    }

    v32 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_voicemails;
    v33 = v38;
    swift_beginAccess();
    v34 = v48;

    v35 = sub_1CFC186D8((v33 + v32), v34);

    v36 = *(*(v33 + v32) + 16);
    if (v36 < v35)
    {
      __break(1u);
    }

    else
    {
      sub_1CFBCC85C(v35, v36);
      swift_endAccess();
      v37 = *(v33 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_dataSource);
      sub_1CFC9C888();

      sub_1CFC0F18C();
    }
  }

  return result;
}

uint64_t sub_1CFC0B08C(uint64_t a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t (*sub_1CFC0B09C(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1CFC09F64();
  return sub_1CFC0B0E4;
}

uint64_t sub_1CFC0B0E4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 56);
  *(v1 + 56) = v2;
}

uint64_t sub_1CFC0B0F4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE540, &qword_1CFCA4690);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController____lazy_storage___cellRegistration;
  swift_beginAccess();
  sub_1CFBA29FC(v1 + v10, v9, &qword_1EC4EE540, &qword_1CFCA4690);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE528, &qword_1CFCA4670);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1CFBC2FB0(v9, &qword_1EC4EE540, &qword_1CFCA4690);
  v13 = *(v1 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_detailsPresenter);
  v19 = a1;
  v14 = *(v1 + 48);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  type metadata accessor for RecentsStyleListCell();
  sub_1CFC9C448();

  v16 = v19;
  sub_1CFC9FB68();
  (*(v12 + 16))(v7, v16, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1CFBA735C(v7, v1 + v10, &qword_1EC4EE540, &qword_1CFCA4690);
  return swift_endAccess();
}

uint64_t sub_1CFC0B380(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1CFC9F728();
  [a1 setAccessibilityIdentifier_];

  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  return sub_1CFBFFF24(sub_1CFC18304, v11);
}

uint64_t sub_1CFC0B424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a3;
  v81 = a2;
  v82 = a1;
  v78 = a4;
  v4 = sub_1CFC9E968();
  v79 = *(v4 - 8);
  v80 = v4;
  v5 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v77 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0B8, &unk_1CFCA49D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v63 - v9;
  v11 = sub_1CFC9C448();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v75 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v63 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v63 - v18;
  v64 = &v63 - v18;
  v20 = type metadata accessor for RecentsItemCell(0);
  v21 = *(*(v20 - 1) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v70 = &v63 - v25;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE200, &qword_1CFCA8720);
  v26 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v63 - v27;
  v29 = v12 + 16;
  v28 = *(v12 + 16);
  v30 = v19;
  v31 = v82;
  v28(v30, v82, v11);
  v32 = sub_1CFC9C5A8();
  v33 = *(*(v32 - 8) + 56);
  v71 = v10;
  v33(v10, 1, 1, v32);
  v28(v17, v31, v11);
  v34 = *(v12 + 80);
  v65 = ~v34;
  v74 = v13;
  v35 = swift_allocObject();
  *(v35 + 16) = v81;
  v67 = *(v12 + 32);
  v68 = v12 + 32;
  v67(v35 + ((v34 + 24) & ~v34), v17, v11);
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  *(v24 + 2) = swift_getKeyPath();
  v24[24] = 0;
  v36 = v20[6];
  *&v24[v36] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFDE0, &unk_1CFCA3E80);
  swift_storeEnumTagMultiPayload();
  v37 = &v24[v20[7]];
  v38 = v64;
  v39 = v11;
  v69 = v28;
  v66 = v29;
  v28(v37, v64, v11);
  v40 = v38;
  v41 = &v24[v20[8]];
  *v41 = sub_1CFC18310;
  v41[1] = v35;

  v42 = sub_1CFC9C408();
  v43 = v42;
  if (v42)
  {
  }

  v44 = v43 == 0;
  v45 = &v24[v20[10]];
  v83 = v44;
  sub_1CFC9F228();
  v46 = v85;
  *v45 = v84;
  *(v45 + 1) = v46;
  v47 = &v24[v20[9]];
  v48 = type metadata accessor for RecentsCellState();
  v47[3] = v48;
  v47[4] = sub_1CFBB7418(&unk_1EE04F9A8, type metadata accessor for RecentsCellState);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v47);
  v50 = v67;
  v67(boxed_opaque_existential_0Tm, v40, v39);
  *(boxed_opaque_existential_0Tm + *(v48 + 20)) = 0;
  sub_1CFBCCE88(v71, boxed_opaque_existential_0Tm + *(v48 + 24), &qword_1EC4ED0B8, &unk_1CFCA49D0);
  v51 = v24;
  v52 = v70;
  sub_1CFC18374(v51, v70, type metadata accessor for RecentsItemCell);
  KeyPath = swift_getKeyPath();
  v54 = v73;
  sub_1CFC18374(v52, v73, type metadata accessor for RecentsItemCell);
  v55 = (v54 + *(v72 + 36));
  v57 = v75;
  v56 = v76;
  *v55 = KeyPath;
  v55[1] = v56;
  v69(v57, v82, v39);
  v58 = (v34 + 32) & v65;
  v59 = swift_allocObject();
  v60 = v81;
  *(v59 + 16) = v56;
  *(v59 + 24) = v60;
  v50(v59 + v58, v57, v39);
  swift_retain_n();

  v61 = v77;
  sub_1CFC9E958();
  sub_1CFBB6E30();
  sub_1CFC9EF98();

  (*(v79 + 8))(v61, v80);
  return sub_1CFBC2FB0(v54, &qword_1EC4EE200, &qword_1CFCA8720);
}

uint64_t sub_1CFC0BA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  swift_getKeyPath();
  sub_1CFBB7418(&qword_1EE04FD50, type metadata accessor for RecentsEditMode);
  sub_1CFC9C158();

  if ((*(a1 + 16) & 1) == 0)
  {
    v9 = objc_opt_self();
    v10 = [v9 shared];
    v11 = [v10 current];

    if (v11 || (v15 = sub_1CFC9C408()) == 0)
    {
      v12 = [v9 shared];
      v13 = [v12 tapRecentsToCall];

      if (v13)
      {
        v14 = *(a2 + 16);
        sub_1CFC9C898();
LABEL_9:
        v8 = MEMORY[0x1E697C980];
        goto LABEL_10;
      }
    }

    else
    {
    }

    sub_1CFC88EA4(a3);
    goto LABEL_9;
  }

  *a4 = 0;
  v8 = MEMORY[0x1E697C978];
LABEL_10:
  v16 = *v8;
  v17 = sub_1CFC9E9D8();
  return (*(*(v17 - 8) + 104))(a4, v16, v17);
}

uint64_t sub_1CFC0BC48@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE548, &qword_1CFCA4698);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController____lazy_storage___mailboxCellRegistration;
  swift_beginAccess();
  sub_1CFBA29FC(v1 + v10, v9, &qword_1EC4EE548, &qword_1CFCA4698);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE520, &unk_1CFCA4660);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1CFBC2FB0(v9, &qword_1EC4EE548, &qword_1CFCA4698);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = v1 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_displayMode;
  swift_beginAccess();
  v15 = *v14;
  LOBYTE(v14) = *(v14 + 8);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  *(v16 + 32) = v14;
  sub_1CFC0DBC0(v15, v14);
  sub_1CFBA2D80(0, &unk_1EE04CF68, 0x1E69DC868);
  sub_1CFC9FB68();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1CFBA735C(v7, v1 + v10, &qword_1EC4EE548, &qword_1CFCA4698);
  return swift_endAccess();
}

uint64_t sub_1CFC0BF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v49 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED518, &unk_1CFCA2430);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v46 = &v42 - v10;
  v11 = sub_1CFC9D9E8();
  v47 = *(v11 - 8);
  v48 = v11;
  v12 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CFC9D988();
  v44 = *(v15 - 8);
  v45 = v15;
  v16 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CFC9DAB8();
  v43 = *(v19 - 8);
  v20 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a3;
  v24 = *(a3 + 2);
  v25 = *(a3 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = result;
    if (a6)
    {
      v28 = sub_1CFC9D758();
      if (v28 == sub_1CFC9D758() || (v29 = sub_1CFC9D758(), v30 = sub_1CFC9D758(), v29 == v30))
      {
        v31 = swift_allocObject();
        swift_weakInit();
        v30 = swift_allocObject();
        v32 = v30;
        *(v30 + 16) = v31;
        *(v30 + 24) = v23;
        *(v30 + 26) = v24;
        *(v30 + 32) = v25;
        v33 = sub_1CFC184D4;
      }

      else
      {
        v33 = 0;
        v32 = 0;
      }

      MEMORY[0x1EEE9AC00](v30);
      *(&v42 - 16) = v23;
      *(&v42 - 30) = v24;
      *(&v42 - 3) = v25;
      *(&v42 - 2) = v33;
      *(&v42 - 1) = v32;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE5A8, &qword_1CFCA4A68);
      v52 = sub_1CFBA57C0(&qword_1EC4EE5B0, &qword_1EC4EE5A8, &qword_1CFCA4A68);
      __swift_allocate_boxed_opaque_existential_0Tm(v50);
      sub_1CFC18480();
      sub_1CFC9E938();
      MEMORY[0x1D38721F0](v50);
      swift_unownedRetain();
      sub_1CFC9FCD8();
      swift_unownedRelease();
      sub_1CFBB2564(v33, v32);
    }

    else
    {
      MEMORY[0x1D3872240]();
      sub_1CFC0C500(v23);
      sub_1CFC9DAA8();
      v50[0] = v25;
      sub_1CFCA0288();
      sub_1CFC9DA98();
      sub_1CFC9DA88();
      v51 = v19;
      v52 = MEMORY[0x1E69DC110];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v50);
      v42 = v27;
      v35 = v43;
      (*(v43 + 16))(boxed_opaque_existential_0Tm, v22, v19);
      MEMORY[0x1D38721F0](v50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED520, &qword_1CFCA4A70);
      v36 = *(sub_1CFC9D9F8() - 8);
      v37 = *(v36 + 72);
      v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      *(swift_allocObject() + 16) = xmmword_1CFCA1DD0;
      v39 = v44;
      v40 = v45;
      (*(v44 + 104))(v18, *MEMORY[0x1E69DBF28], v45);
      v41 = sub_1CFC9D998();
      (*(*(v41 - 8) + 56))(v46, 1, 1, v41);
      sub_1CFC9D9D8();
      sub_1CFC9D9C8();
      (*(v47 + 8))(v14, v48);
      (*(v39 + 8))(v18, v40);
      sub_1CFC9FCF8();
      (*(v35 + 8))(v22, v19);
    }
  }

  return result;
}

uint64_t sub_1CFC0C500(unsigned __int16 a1)
{
  if (a1 == 2)
  {
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
  }

  else
  {
    if (a1 > 1u)
    {
      return 0;
    }

    type metadata accessor for BundleClass();
    v1 = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
  }

  v4 = sub_1CFC9BE28();

  return v4;
}

uint64_t sub_1CFC0C6C4(uint64_t a1, __int16 a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CFC13528(a2);
  }

  return result;
}

uint64_t sub_1CFC0C724@<X0>(int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = BYTE2(a1);
  v8 = sub_1CFC0C500(a1);
  v10 = v9;
  v11 = sub_1CFCA0288();
  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 16) = v11;
  *(a4 + 24) = v12;
  *(a4 + 32) = a2;
  *(a4 + 40) = a3;
  *(a4 + 48) = v6 & 1;
  return sub_1CFBB2568(a2, a3);
}

uint64_t sub_1CFC0C7BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE5C0, &qword_1CFCA4A78);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_1CFC9DA78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9DA68();
  v9 = [objc_opt_self() systemBackgroundColor];
  sub_1CFC9DA58();
  (*(v5 + 16))(v3, v8, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  MEMORY[0x1D3872200](v3);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1CFC0C94C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE550, &qword_1CFCA46A0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController____lazy_storage___legacyCellRegistration;
  swift_beginAccess();
  sub_1CFBA29FC(v1 + v10, v9, &qword_1EC4EE550, &qword_1CFCA46A0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE518, &qword_1CFCA4658);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1CFBC2FB0(v9, &qword_1EC4EE550, &qword_1CFCA46A0);
  v13 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_legacyMailboxService;
  swift_beginAccess();
  sub_1CFBA29FC(v1 + v13, v18, &qword_1EC4EE538, qword_1CFCA9BD0);
  v14 = swift_allocObject();
  v15 = v18[1];
  *(v14 + 16) = v18[0];
  *(v14 + 32) = v15;
  *(v14 + 48) = v19;
  sub_1CFBA2D80(0, &unk_1EE04CF68, 0x1E69DC868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE530, &qword_1CFCA4678);
  sub_1CFC9FB68();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1CFBA735C(v7, v1 + v10, &qword_1EC4EE550, &qword_1CFCA46A0);
  return swift_endAccess();
}

uint64_t sub_1CFC0CC10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE5C8, &qword_1CFCA4A80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14[-v10];
  v12 = sub_1CFC9F728();
  [a1 setAccessibilityIdentifier_];

  v15 = a3;
  v16 = a4;
  type metadata accessor for LegacyMailboxCellView(0);
  sub_1CFBB7418(&qword_1EC4EE5D0, type metadata accessor for LegacyMailboxCellView);
  sub_1CFC9E938();
  sub_1CFC9EC18();
  v17[3] = v7;
  v17[4] = sub_1CFBA57C0(&qword_1EC4EE5D8, &qword_1EC4EE5C8, &qword_1CFCA4A80);
  __swift_allocate_boxed_opaque_existential_0Tm(v17);
  sub_1CFC9E918();
  (*(v8 + 8))(v11, v7);
  return MEMORY[0x1D38721F0](v17);
}

uint64_t sub_1CFC0CE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE530, &qword_1CFCA4678);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  sub_1CFBA29FC(a1, &v21 - v12, &qword_1EC4EE530, &qword_1CFCA4678);
  LOBYTE(v7) = *(a1 + *(v7 + 56));
  sub_1CFBA29FC(a2, v22, &qword_1EC4EE538, qword_1CFCA9BD0);
  sub_1CFBA29FC(a1, v11, &qword_1EC4EE530, &qword_1CFCA4678);
  v14 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v15 = swift_allocObject();
  v16 = v22[1];
  *(v15 + 16) = v22[0];
  *(v15 + 32) = v16;
  *(v15 + 48) = v23;
  sub_1CFBCCE88(v11, v15 + v14, &qword_1EC4EE530, &qword_1CFCA4678);
  sub_1CFC18374(v13, a3, type metadata accessor for LegacyMailbox);
  v17 = type metadata accessor for LegacyMailboxCellView(0);
  *(a3 + v17[5]) = v7;
  v18 = (a3 + v17[6]);
  *v18 = sub_1CFC18508;
  v18[1] = v15;
  v19 = v17[7];
  *(a3 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE5E0, &qword_1CFCA5C40);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CFC0D018(uint64_t a1, uint64_t a2)
{
  sub_1CFBA29FC(a1, v6, &qword_1EC4EE538, qword_1CFCA9BD0);
  v3 = v7;
  if (!v7)
  {
    return sub_1CFBC2FB0(v6, &qword_1EC4EE538, qword_1CFCA9BD0);
  }

  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 56))(a2, v3, v4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_1CFC0D0C0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE558, &unk_1CFCA46A8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController____lazy_storage___accountProvisioningCellRegistration;
  swift_beginAccess();
  sub_1CFBA29FC(v1 + v10, v9, &qword_1EC4EE558, &unk_1CFCA46A8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE508, &qword_1CFCA4648);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1CFBC2FB0(v9, &qword_1EC4EE558, &unk_1CFCA46A8);
  sub_1CFBA2D80(0, &unk_1EE04CF68, 0x1E69DC868);

  sub_1CFC9FB68();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1CFBA735C(v7, v1 + v10, &qword_1EC4EE558, &unk_1CFCA46A8);
  return swift_endAccess();
}

uint64_t sub_1CFC0D31C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE5E8, &qword_1CFCA4AC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10[-1] - v5;
  v7 = sub_1CFC9F728();
  [a1 setAccessibilityIdentifier_];

  sub_1CFC185E0();
  sub_1CFC9E938();
  sub_1CFC9EC18();
  v10[3] = v2;
  v10[4] = sub_1CFBA57C0(&qword_1EC4EE5F8, &qword_1EC4EE5E8, &qword_1CFCA4AC0);
  __swift_allocate_boxed_opaque_existential_0Tm(v10);
  sub_1CFC9E918();
  (*(v3 + 8))(v6, v2);
  return MEMORY[0x1D38721F0](v10);
}

uint64_t sub_1CFC0D4C8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_delegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = *(v1 + 8);

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      (*(v3 + 40))(ObjectType, v3);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1CFC0D56C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE038, &qword_1CFCA3AE0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1CFBA29FC(v1 + v10, v9, &qword_1EC4EE038, &qword_1CFCA3AE0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE018, &unk_1CFCA4680);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1CFBC2FB0(v9, &qword_1EC4EE038, &qword_1CFCA3AE0);
  type metadata accessor for SectionHeaderView();
  sub_1CFC9FB88();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1CFBA735C(v7, v1 + v10, &qword_1EC4EE038, &qword_1CFCA3AE0);
  return swift_endAccess();
}

uint64_t sub_1CFC0D7B8()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1CFC9BE28();
  v4 = v3;

  v5 = type metadata accessor for SectionHeaderConfiguration();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  *(v8 + 49) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 72) = 512;
  sub_1CFC9C188();
  *(v8 + 16) = v2;
  *(v8 + 24) = v4;
  v9 = *(v8 + 40);

  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  if (*(v8 + 49))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB7418(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
    sub_1CFC9C148();
  }

  else
  {
    *(v8 + 49) = 0;
  }

  v11 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v11);
  sub_1CFBB7418(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
  sub_1CFC9C148();

  sub_1CFC882F8(v8);
}

uint64_t sub_1CFC0DA78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_displayMode;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return sub_1CFC0DBC0(v4, v5);
}

uint64_t sub_1CFC0DAD8(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_displayMode;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  *v4 = v2;
  *(v4 + 8) = v3;
  sub_1CFC0DBC0(v2, v3);
  sub_1CFC0DC38(v5, v6);
  return sub_1CFC0F18C();
}

uint64_t sub_1CFC0DB64@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_displayMode;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  return sub_1CFC0DBC0(v4, v5);
}

uint64_t sub_1CFC0DBC0(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1CFC0DBCC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_displayMode;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  *v4 = v2;
  *(v4 + 8) = v3;
  sub_1CFC0DC38(v5, v6);
  return sub_1CFC0F18C();
}

uint64_t sub_1CFC0DC38(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t (*sub_1CFC0DC44(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1CFC0DCA8;
}

uint64_t sub_1CFC0DCA8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_1CFC0F18C();
  }

  return result;
}

uint64_t sub_1CFC0DCDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_items;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v3 + 32);
    swift_getObjectType();
    SectionControllerParent.sectionItemsDidChange()();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CFC0DD80()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_items;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1CFC0DDC8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_items;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v1 + 32);
    swift_getObjectType();
    SectionControllerParent.sectionItemsDidChange()();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_1CFC0DE5C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1CFC0DEC0;
}

uint64_t sub_1CFC0DEC0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = *(*(a1 + 24) + 32);
      swift_getObjectType();
      SectionControllerParent.sectionItemsDidChange()();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1CFC0DF48()
{
  v0[2] = sub_1CFC9F968();
  v0[3] = sub_1CFC9F958();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1CFC0DFF4;

  return sub_1CFC0E664();
}

uint64_t sub_1CFC0DFF4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFC0E130, v5, v4);
}

uint64_t sub_1CFC0E130()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CFC0E194()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CFC0EA70();
  }

  return result;
}

uint64_t sub_1CFC0E1EC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = sub_1CFC9F998();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1CFC9F968();

  v8 = sub_1CFC9F958();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a2;
  sub_1CFBDC330(0, 0, v6, &unk_1CFCA4AF8, v9);
}

uint64_t sub_1CFC0E310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1CFC9F968();
  v4[7] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFC0E3A8, v6, v5);
}

uint64_t sub_1CFC0E3A8()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_1CFC0E4AC;

    return sub_1CFC0E664();
  }

  else
  {
    v5 = *(v0 + 56);

    **(v0 + 40) = *(v0 + 80) == 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1CFC0E4AC()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1CFC0E5F0, v5, v4);
}

uint64_t sub_1CFC0E5F0()
{
  v1 = *(v0 + 56);

  **(v0 + 40) = *(v0 + 80) == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CFC0E664()
{
  v1[15] = v0;
  sub_1CFC9F968();
  v1[16] = sub_1CFC9F958();
  v3 = sub_1CFC9F938();
  v1[17] = v3;
  v1[18] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1CFC0E6FC, v3, v2);
}

uint64_t sub_1CFC0E6FC()
{
  v1 = *(v0 + 120);
  v2 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_legacyMailboxService;
  swift_beginAccess();
  sub_1CFBA29FC(v1 + v2, v0 + 56, &qword_1EC4EE538, qword_1CFCA9BD0);
  if (*(v0 + 80))
  {
    sub_1CFBAD070((v0 + 56), v0 + 16);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
    v5 = *(v4 + 48);
    v11 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 152) = v7;
    *v7 = v0;
    v7[1] = sub_1CFC0E8C4;

    return v11(v3, v4);
  }

  else
  {
    v9 = *(v0 + 128);

    sub_1CFBC2FB0(v0 + 56, &qword_1EC4EE538, qword_1CFCA9BD0);
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1CFC0E8C4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = a1;

  v4 = *(v2 + 144);
  v5 = *(v2 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1CFC0E9EC, v5, v4);
}

uint64_t sub_1CFC0E9EC()
{
  v1 = v0[20];
  v3 = v0[15];
  v2 = v0[16];

  v4 = *(v3 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_legacyMailboxes);
  *(v3 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_legacyMailboxes) = v1;

  sub_1CFC0F18C();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1CFC0EA70()
{
  v53 = sub_1CFC9C458();
  v52 = *(v53 - 8);
  v2 = *(v52 + 64);
  v3 = MEMORY[0x1EEE9AC00](v53);
  v51 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v50 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D0, &unk_1CFCA1FE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v50 - v8;
  v10 = sub_1CFC9C448();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v60 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v50 - v15);
  v55 = v1;
  v54 = *(v1 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_dataSource);
  v17 = sub_1CFC9C7B8();
  v18 = v17;
  v63 = *(v17 + 16);
  if (v63)
  {
    v19 = 0;
    v59 = (v11 + 32);
    v61 = (v11 + 8);
    v62 = v11 + 16;
    v20 = MEMORY[0x1E69E7CC0];
    v57 = v10;
    v58 = v9;
    v56 = v17;
    while (v19 < *(v18 + 16))
    {
      v0 = ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v21 = *(v11 + 72);
      (*(v11 + 16))(v16, &v0[v18 + v21 * v19], v10);
      v22 = sub_1CFC9C408();
      if (!v22 || (v22, sub_1CFC9C3A8(), v23 = sub_1CFC9BFB8(), v24 = (*(*(v23 - 8) + 48))(v9, 1, v23), sub_1CFBC2FB0(v9, &qword_1EC4ED0D0, &unk_1CFCA1FE0), v24 == 1))
      {
        (*v61)(v16, v10);
      }

      else
      {
        v25 = *v59;
        (*v59)(v60, v16, v10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v64 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CFBB22BC(0, v20[2] + 1, 1);
          v20 = v64;
        }

        v28 = v20[2];
        v27 = v20[3];
        if (v28 >= v27 >> 1)
        {
          sub_1CFBB22BC(v27 > 1, v28 + 1, 1);
          v20 = v64;
        }

        v20[2] = v28 + 1;
        v29 = &v0[v20 + v28 * v21];
        v10 = v57;
        v25(v29, v60, v57);
        v9 = v58;
        v18 = v56;
      }

      if (v63 == ++v19)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_14:

  v64 = v20;

  sub_1CFC14388(&v64);

  v30 = v64;
  v31 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_voicemails;
  v32 = v55;
  swift_beginAccess();
  v33 = *(v32 + v31);
  *(v32 + v31) = v30;

  sub_1CFC0F18C();
  v34 = v32 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_displayMode;
  result = swift_beginAccess();
  if ((*(v34 + 8) & 1) == 0)
  {
    v36 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_items;
    result = swift_beginAccess();
    if (!*(*(v32 + v36) + 16))
    {
      v37 = v50;
      sub_1CFC9C7E8();
      v38 = v52;
      v39 = v51;
      v40 = v53;
      (*(v52 + 104))(v51, *MEMORY[0x1E69936A0], v53);
      sub_1CFBB7418(&qword_1EC4EE590, MEMORY[0x1E69936A8]);
      v41 = sub_1CFC9F6F8();
      v42 = *(v38 + 8);
      v42(v39, v40);
      result = (v42)(v37, v40);
      if ((v41 & 1) == 0)
      {
        result = sub_1CFC9C838();
        if (result)
        {
          swift_beginAccess();
          result = swift_unknownObjectWeakLoadStrong();
          if (result)
          {
            objc_opt_self();
            v43 = swift_dynamicCastObjCClass();
            if (!v43)
            {
              return swift_unknownObjectRelease();
            }

            v0 = v43;
            if (qword_1EE050010 != -1)
            {
              swift_once();
            }

            v44 = sub_1CFC9D938();
            __swift_project_value_buffer(v44, qword_1EE052308);

            v16 = sub_1CFC9D918();
            v45 = sub_1CFC9FAD8();
            if (os_log_type_enabled(v16, v45))
            {
              v46 = swift_slowAlloc();
              *v46 = 134218240;
              *(v46 + 4) = *(*(v32 + v31) + 16);
              *(v46 + 12) = 2048;
              v47 = *(sub_1CFC9C7B8() + 16);

              *(v46 + 14) = v47;

              _os_log_impl(&dword_1CFB9F000, v16, v45, "Auto-popping voicemail detail view due to empty voicemail list. voicemails.count=%ld, allRecentsItems.count=%ld", v46, 0x16u);
              MEMORY[0x1D3873280](v46, -1, -1);

              goto LABEL_26;
            }

LABEL_25:

LABEL_26:
            v48 = [v0 navigationController];
            if (v48)
            {
              v49 = v48;
            }

            return swift_unknownObjectRelease();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1CFC0F18C()
{
  v183 = type metadata accessor for VoicemailsSectionController.Item(0);
  v191 = *(v183 - 8);
  v1 = *(v191 + 64);
  v2 = MEMORY[0x1EEE9AC00](v183);
  v4 = &v174 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v179 = &v174 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v178 = &v174 - v7;
  v196 = sub_1CFC9C448();
  v195 = *(v196 - 8);
  v8 = *(v195 + 64);
  v9 = MEMORY[0x1EEE9AC00](v196);
  v185 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v194 = &v174 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v177 = &v174 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v175 = &v174 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v193 = &v174 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v190 = &v174 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  *&v176 = &v174 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v174 = &v174 - v23;
  v24 = type metadata accessor for LegacyMailbox(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v192 = (&v174 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v202 = MEMORY[0x1E69E7CC0];
  v182 = v0;
  v28 = (v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_displayMode);
  swift_beginAccess();
  v29 = *(v28 + 8);
  v187 = v4;
  if ((v29 & 1) != 0 || (v30 = *v28, v31 = sub_1CFC9D758(), v31 == sub_1CFC9D758()))
  {
    v32 = v182;
    *&v188 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_legacyMailboxes;
    v33 = *(v182 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_legacyMailboxes);
    v34 = *(v33 + 16);
    if (v34)
    {
      v181 = v28;
      v35 = v33 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
      v184 = *(v25 + 72);
      v180 = v33;

      v36 = MEMORY[0x1E69E7CC0];
      v186 = xmmword_1CFCA1DD0;
      v37 = v192;
      while (1)
      {
        sub_1CFC09700(v35, v37, type metadata accessor for LegacyMailbox);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED578, &qword_1CFCA4B00);
        v38 = (*(v191 + 80) + 32) & ~*(v191 + 80);
        v189 = *(v191 + 72);
        v39 = swift_allocObject();
        *(v39 + 16) = v186;
        v40 = v39 + v38;
        v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE4E8, &qword_1CFCA4608) + 48);
        sub_1CFC09700(v37, v40, type metadata accessor for LegacyMailbox);
        *(v40 + v41) = *(*(v182 + v188) + 16) > 1uLL;
        swift_storeEnumTagMultiPayload();
        v42 = v36[2];
        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || (v44 = v36[3] >> 1, v44 <= v42))
        {
          result = sub_1CFC7B220(result, v42 + 1, 1, v36);
          v36 = result;
          v44 = *(result + 24) >> 1;
        }

        if (v44 <= v36[2])
        {
          break;
        }

        swift_arrayInitWithCopy();

        ++v36[2];
        sub_1CFC16B30(v192, type metadata accessor for LegacyMailbox);
        v35 += v184;
        if (!--v34)
        {

          v202 = v36;
          v32 = v182;
          v28 = v181;
          goto LABEL_11;
        }
      }

LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

LABEL_11:
    v45 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_legacyMailboxService;
    v46 = v32;
    swift_beginAccess();
    sub_1CFBA29FC(v46 + v45, &v197, &qword_1EC4EE538, qword_1CFCA9BD0);
    if (v198)
    {
      sub_1CFBAD070(&v197, &v199);
      v47 = v200;
      v48 = v201;
      __swift_project_boxed_opaque_existential_1(&v199, v200);
      if ((*(v48 + 32))(v47, v48))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED578, &qword_1CFCA4B00);
        v49 = *(v191 + 72);
        v50 = (*(v191 + 80) + 32) & ~*(v191 + 80);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1CFCA1DD0;
        swift_storeEnumTagMultiPayload();
        sub_1CFBAA8CC(v51, sub_1CFC7B220, type metadata accessor for VoicemailsSectionController.Item);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v199);
    }

    else
    {
      sub_1CFBC2FB0(&v197, &qword_1EC4EE538, qword_1CFCA9BD0);
    }
  }

  v52 = *v28;
  v53 = *(v28 + 8);
  v180 = *v28;
  v181 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_voicemails;
  if (v53)
  {
    v54 = v182;
    v55 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_voicemails;
    swift_beginAccess();
    v56 = *(v54 + v55);
    v57 = *(v56 + 16);
    sub_1CFC0DBC0(v52, 1);

    v58 = MEMORY[0x1E69E7CC0];
    v59 = v196;
    if (v57)
    {
      v60 = 0;
      v193 = (v195 + 16);
      v192 = (v195 + 32);
      v61 = (v195 + 8);
      v62 = v175;
      v189 = v57;
      while (v60 < *(v56 + 16))
      {
        v63 = (*(v195 + 80) + 32) & ~*(v195 + 80);
        v64 = *(v195 + 72);
        (*(v195 + 16))(v62, v56 + v63 + v64 * v60, v59);
        v65 = sub_1CFC9C408();
        if (v65 && (v66 = v65, sub_1CFC9D5B8(), v66, LODWORD(v66) = sub_1CFC9D758(), v66 == sub_1CFC9D758()))
        {
          v67 = v62;
          v68 = *v192;
          (*v192)(v177, v67, v196);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v199 = v58;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1CFBB22BC(0, *(v58 + 16) + 1, 1);
            v58 = v199;
          }

          v71 = *(v58 + 16);
          v70 = *(v58 + 24);
          if (v71 >= v70 >> 1)
          {
            sub_1CFBB22BC(v70 > 1, v71 + 1, 1);
            v58 = v199;
          }

          *(v58 + 16) = v71 + 1;
          v59 = v196;
          result = v68(v58 + v63 + v71 * v64, v177, v196);
          v62 = v175;
          v57 = v189;
        }

        else
        {
          v59 = v196;
          result = (*v61)(v62, v196);
        }

        if (v57 == ++v60)
        {
          goto LABEL_41;
        }
      }

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
      return result;
    }

LABEL_41:

    v89 = *(v58 + 16);
    if (v89)
    {
      v199 = MEMORY[0x1E69E7CC0];
      result = sub_1CFBCA984(0, v89, 0);
      v90 = 0;
      v91 = v199;
      v193 = (v58 + ((*(v195 + 80) + 32) & ~*(v195 + 80)));
      v192 = (v195 + 8);
      do
      {
        if (v90 >= *(v58 + 16))
        {
          goto LABEL_117;
        }

        v92 = v195;
        v93 = *(v195 + 16);
        v94 = v190;
        v95 = v196;
        v93(v190, &v193[*(v195 + 72) * v90], v196);
        v96 = v179;
        v93(v179, v94, v95);
        swift_storeEnumTagMultiPayload();
        (*(v92 + 8))(v94, v95);
        v199 = v91;
        v98 = *(v91 + 16);
        v97 = *(v91 + 24);
        if (v98 >= v97 >> 1)
        {
          sub_1CFBCA984(v97 > 1, v98 + 1, 1);
          v96 = v179;
          v91 = v199;
        }

        ++v90;
        *(v91 + 16) = v98 + 1;
        result = sub_1CFC18374(v96, v91 + ((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v98, type metadata accessor for VoicemailsSectionController.Item);
      }

      while (v89 != v90);
    }

    else
    {

      v91 = MEMORY[0x1E69E7CC0];
    }

    sub_1CFBAA8CC(v91, sub_1CFC7B220, type metadata accessor for VoicemailsSectionController.Item);
    result = v180;
    v110 = v182;
    v111 = v196;
    v178 = *(v180 + 16);
    if (v178)
    {
      v112 = 0;
      v177 = (v180 + 32);
      v193 = (v195 + 16);
      v184 = (v195 + 32);
      v192 = (v195 + 8);
      v176 = xmmword_1CFCA1DD0;
      do
      {
        if (v112 >= *(result + 16))
        {
          goto LABEL_119;
        }

        v179 = v112;
        v113 = &v177[16 * v112];
        LODWORD(v186) = *v113;
        LOBYTE(v197) = v113[2];
        v114 = *(v110 + v181);
        v115 = *(v114 + 16);

        if (v115)
        {
          v116 = 0;
          v117 = MEMORY[0x1E69E7CC0];
          while (v116 < *(v114 + 16))
          {
            v118 = (*(v195 + 80) + 32) & ~*(v195 + 80);
            v119 = *(v195 + 72);
            (*(v195 + 16))(v194, v114 + v118 + v119 * v116, v111);
            v120 = sub_1CFC9C408();
            if (v120 && (v121 = v120, sub_1CFC9D5B8(), v121, v122 = sub_1CFC9D758(), v122 == sub_1CFC9D758()))
            {
              v123 = *v184;
              (*v184)(v185, v194, v111);
              v124 = swift_isUniquelyReferenced_nonNull_native();
              v199 = v117;
              if ((v124 & 1) == 0)
              {
                sub_1CFBB22BC(0, *(v117 + 16) + 1, 1);
                v117 = v199;
              }

              v126 = *(v117 + 16);
              v125 = *(v117 + 24);
              if (v126 >= v125 >> 1)
              {
                sub_1CFBB22BC(v125 > 1, v126 + 1, 1);
                v117 = v199;
              }

              *(v117 + 16) = v126 + 1;
              v127 = v117 + v118 + v126 * v119;
              v111 = v196;
              result = (v123)(v127, v185, v196);
            }

            else
            {
              result = (*v192)(v194, v111);
            }

            if (v115 == ++v116)
            {
              goto LABEL_74;
            }
          }

          __break(1u);
          goto LABEL_112;
        }

        v117 = MEMORY[0x1E69E7CC0];
LABEL_74:

        v128 = *(v117 + 16);
        if (v128)
        {
          v199 = MEMORY[0x1E69E7CC0];
          result = sub_1CFBCA984(0, v128, 0);
          v129 = 0;
          v130 = v199;
          *&v188 = v117 + ((*(v195 + 80) + 32) & ~*(v195 + 80));
          v189 = v117;
          while (v129 < *(v117 + 16))
          {
            v131 = v128;
            v132 = v195;
            v133 = *(v195 + 16);
            v134 = v190;
            v135 = v196;
            v133(v190, (v188 + *(v195 + 72) * v129), v196);
            v136 = v187;
            v133(v187, v134, v135);
            swift_storeEnumTagMultiPayload();
            (*(v132 + 8))(v134, v135);
            v199 = v130;
            v138 = *(v130 + 16);
            v137 = *(v130 + 24);
            if (v138 >= v137 >> 1)
            {
              sub_1CFBCA984(v137 > 1, v138 + 1, 1);
              v130 = v199;
            }

            ++v129;
            *(v130 + 16) = v138 + 1;
            result = sub_1CFC18374(v136, v130 + ((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v138, type metadata accessor for VoicemailsSectionController.Item);
            v128 = v131;
            v139 = v131 == v129;
            v117 = v189;
            if (v139)
            {

              v140 = *(v130 + 16);
              if (v140)
              {
                goto LABEL_84;
              }

              goto LABEL_58;
            }
          }

LABEL_112:
          __break(1u);
          goto LABEL_113;
        }

        v130 = MEMORY[0x1E69E7CC0];
        v140 = *(MEMORY[0x1E69E7CC0] + 16);
        if (v140)
        {
LABEL_84:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED578, &qword_1CFCA4B00);
          v141 = *(v191 + 72);
          v142 = (*(v191 + 80) + 32) & ~*(v191 + 80);
          v143 = swift_allocObject();
          *(v143 + 16) = v176;
          v144 = v143 + v142;
          LODWORD(v142) = v197;
          *v144 = v186;
          *(v144 + 2) = v142;
          *(v144 + 8) = v140;
          swift_storeEnumTagMultiPayload();
          sub_1CFBAA8CC(v143, sub_1CFC7B220, type metadata accessor for VoicemailsSectionController.Item);
          if (v142 == 1)
          {
            sub_1CFBAA8CC(v130, sub_1CFC7B220, type metadata accessor for VoicemailsSectionController.Item);
            goto LABEL_59;
          }
        }

LABEL_58:

LABEL_59:
        v111 = v196;
        v112 = (v179 + 1);
        v110 = v182;
        result = v180;
      }

      while (v179 + 1 != v178);
    }

    sub_1CFC0DC38(result, 1);
  }

  else
  {
    v72 = v182;
    v73 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_voicemails;
    swift_beginAccess();
    v74 = *(v72 + v73);
    v75 = *(v74 + 16);

    v76 = MEMORY[0x1E69E7CC0];
    if (v75)
    {
      v77 = 0;
      v194 = (v195 + 16);
      v192 = (v195 + 32);
      v78 = (v195 + 8);
      v79 = v174;
      v189 = v75;
      while (v77 < *(v74 + 16))
      {
        v80 = (*(v195 + 80) + 32) & ~*(v195 + 80);
        v81 = *(v195 + 72);
        (*(v195 + 16))(v79, v74 + v80 + v81 * v77, v196);
        v82 = sub_1CFC9C408();
        if (v82 && (v83 = v82, sub_1CFC9D5B8(), v83, LODWORD(v83) = sub_1CFC9D758(), v83 == sub_1CFC9D758()))
        {
          v84 = v79;
          v85 = *v192;
          (*v192)(v176, v84, v196);
          v86 = swift_isUniquelyReferenced_nonNull_native();
          v199 = v76;
          if ((v86 & 1) == 0)
          {
            sub_1CFBB22BC(0, *(v76 + 16) + 1, 1);
            v76 = v199;
          }

          v88 = *(v76 + 16);
          v87 = *(v76 + 24);
          if (v88 >= v87 >> 1)
          {
            sub_1CFBB22BC(v87 > 1, v88 + 1, 1);
            v76 = v199;
          }

          *(v76 + 16) = v88 + 1;
          result = v85(v76 + v80 + v88 * v81, v176, v196);
          v79 = v174;
          v75 = v189;
        }

        else
        {
          result = (*v78)(v79, v196);
        }

        if (v75 == ++v77)
        {
          goto LABEL_48;
        }
      }

      goto LABEL_116;
    }

LABEL_48:

    v99 = *(v76 + 16);
    if (v99)
    {
      v199 = MEMORY[0x1E69E7CC0];
      result = sub_1CFBCA984(0, v99, 0);
      v100 = 0;
      v101 = v199;
      v194 = (v76 + ((*(v195 + 80) + 32) & ~*(v195 + 80)));
      v192 = (v195 + 8);
      while (v100 < *(v76 + 16))
      {
        v102 = v195;
        v103 = *(v195 + 16);
        v104 = v190;
        v105 = v196;
        v103(v190, &v194[*(v195 + 72) * v100], v196);
        v106 = v178;
        v103(v178, v104, v105);
        swift_storeEnumTagMultiPayload();
        (*(v102 + 8))(v104, v105);
        v199 = v101;
        v108 = *(v101 + 16);
        v107 = *(v101 + 24);
        if (v108 >= v107 >> 1)
        {
          sub_1CFBCA984(v107 > 1, v108 + 1, 1);
          v106 = v178;
          v101 = v199;
        }

        ++v100;
        *(v101 + 16) = v108 + 1;
        result = sub_1CFC18374(v106, v101 + ((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v108, type metadata accessor for VoicemailsSectionController.Item);
        v109 = v193;
        if (v99 == v100)
        {

          goto LABEL_88;
        }
      }

      goto LABEL_118;
    }

    v101 = MEMORY[0x1E69E7CC0];
    v109 = v193;
LABEL_88:
    sub_1CFBAA8CC(v101, sub_1CFC7B220, type metadata accessor for VoicemailsSectionController.Item);
    v145 = sub_1CFC9D758();
    if (v145 == sub_1CFC9D758())
    {
      v146 = 0;
      v147 = 0;
      v194 = (v195 + 16);
      v148 = (v195 + 8);
      v188 = xmmword_1CFCA1DD0;
      while (1)
      {
        v151 = v146;
        v152 = *(v182 + v181);
        v153 = *(v152 + 16);
        if (v153)
        {
          break;
        }

LABEL_93:
        v146 = 1;
        v147 = 1;
        if (v151)
        {
          goto LABEL_108;
        }
      }

      LODWORD(v190) = v146;
      LODWORD(v192) = *(&unk_1F4C6ABC0 + v147 + 16);
      v154 = v152 + ((*(v195 + 80) + 32) & ~*(v195 + 80));
      v155 = *(v195 + 72);
      v156 = *(v195 + 16);
      v189 = v152;

      v157 = 0;
      do
      {
        v158 = v196;
        v156(v109, v154, v196);
        v159 = sub_1CFC9C408();
        if (v159)
        {
          v160 = v159;
          sub_1CFC9D5B8();
          v161 = v109;

          v162 = sub_1CFC9D758();
          LOWORD(v160) = sub_1CFC9D758();
          result = (*v148)(v161, v158);
          if (v162 == v160 && __OFADD__(v157++, 1))
          {
LABEL_113:
            __break(1u);
            goto LABEL_114;
          }

          v109 = v193;
        }

        else
        {
          (*v148)(v109, v158);
        }

        v154 += v155;
        --v153;
      }

      while (v153);

      v151 = v190;
      if (v157 <= 0)
      {
        goto LABEL_93;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED578, &qword_1CFCA4B00);
      v164 = *(v191 + 72);
      v165 = (*(v191 + 80) + 32) & ~*(v191 + 80);
      v166 = swift_allocObject();
      *(v166 + 16) = v188;
      v167 = v166 + v165;
      *v167 = v192;
      *(v167 + 2) = 0;
      *(v167 + 8) = v157;
      swift_storeEnumTagMultiPayload();
      v149 = v202;
      v168 = v202[2];
      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v150 = v149[3] >> 1, v150 <= v168))
      {
        result = sub_1CFC7B220(result, v168 + 1, 1, v149);
        v149 = result;
        v150 = *(result + 24) >> 1;
      }

      if (v150 > v149[2])
      {
        swift_arrayInitWithCopy();

        ++v149[2];
        v202 = v149;
        goto LABEL_93;
      }

      goto LABEL_120;
    }
  }

LABEL_108:
  v169 = v202;
  v170 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_items;
  v171 = v182;
  swift_beginAccess();
  v172 = *(v171 + v170);
  *(v171 + v170) = v169;

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v173 = *(v171 + 32);
    swift_getObjectType();
    SectionControllerParent.sectionItemsDidChange()();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CFC108D4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_items;
  swift_beginAccess();
  if (*(*(v1 + v3) + 16))
  {
    v4 = 1;
  }

  else
  {
    sub_1CFC9DB98();
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    sub_1CFC9BE28();

    sub_1CFC9DB88();
    v4 = 0;
  }

  v7 = sub_1CFC9DBB8();
  return (*(*(v7 - 8) + 56))(a1, v4, 1, v7);
}

void *sub_1CFC10A28(void *a1)
{
  v2 = v1;
  v4 = sub_1CFC9DC18();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v32 = sub_1CFC9DC48();
  v6 = *(v32 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 traitCollection];
  sub_1CFC9CD38();
  sub_1CFC9DC28();
  swift_allocObject();
  swift_weakInit();
  sub_1CFC9DC38();

  sub_1CFC9DC08();
  sub_1CFBA2D80(0, &qword_1EE04CF60, 0x1E6995580);
  v11 = sub_1CFC9FD18();
  v12 = v2 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_displayMode;
  swift_beginAccess();
  v13 = 0x1E69DC000uLL;
  if (*(v12 + 8) == 1)
  {
    v14 = [objc_opt_self() currentDevice];
    v15 = [v14 userInterfaceIdiom];

    v16 = v15 == 6;
    v13 = 0x1E69DC000;
    if (!v16)
    {
      v17 = objc_opt_self();
      v18 = [v17 fractionalWidthDimension_];
      v19 = [v17 estimatedDimension_];
      v20 = [objc_opt_self() sizeWithWidthDimension:v18 heightDimension:v19];

      v21 = sub_1CFC9F728();
      v22 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v20 elementKind:v21 alignment:1];

      [v22 setZIndex_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1CFCA2540;
      *(v23 + 32) = v22;
      sub_1CFBA2D80(0, &qword_1EE04CF58, 0x1E6995548);
      v24 = v22;
      v25 = sub_1CFC9F898();

      [v11 setBoundarySupplementaryItems_];

      v13 = 0x1E69DC000uLL;
      [v11 setSupplementaryContentInsetsReference_];
      [v11 contentInsets];
      [v11 setContentInsets_];
    }
  }

  sub_1CFC9CD38();
  [v11 contentInsets];
  [v11 setContentInsets_];
  sub_1CFC9CD38();
  [v11 contentInsets];
  [v11 setContentInsets_];
  v27 = *(v13 + 2360);
  v28 = [objc_opt_self() currentDevice];
  v29 = [v28 userInterfaceIdiom];

  if (v29 == 6)
  {
    [v11 setInterGroupSpacing_];

    (*(v6 + 8))(v9, v32);
  }

  else
  {
    (*(v6 + 8))(v9, v32);
  }

  return v11;
}

uint64_t sub_1CFC11114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v5 = sub_1CFC9DB68();
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFC9DB78();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for VoicemailsSectionController.Item(0);
  v12 = *(v52 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v52);
  v47 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v46 = &v42 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v48 = &v42 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v42 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v42 - v26;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return (*(v9 + 16))(a3, v56, v8);
  }

  v29 = Strong;
  v54 = a3;
  v55 = v8;
  v30 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_items;
  swift_beginAccess();
  v31 = *(v29 + v30);

  v45 = a1;
  v32 = sub_1CFC9C118();
  if ((v32 & 0x8000000000000000) != 0 || v32 >= *(v31 + 16))
  {

    a3 = v54;
    v8 = v55;
    return (*(v9 + 16))(a3, v56, v8);
  }

  v44 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v43 = *(v12 + 72);
  sub_1CFC09700(v31 + v44 + v43 * v32, v25, type metadata accessor for VoicemailsSectionController.Item);

  sub_1CFC18374(v25, v27, type metadata accessor for VoicemailsSectionController.Item);
  v33 = v53;
  (*(v9 + 16))(v53, v56, v55);
  if (!sub_1CFC9C0F8())
  {
    (*(v50 + 104))(v49, *MEMORY[0x1E69DC178], v51);
    sub_1CFC9DB38();
  }

  sub_1CFC09700(v27, v22, type metadata accessor for VoicemailsSectionController.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1CFC16B30(v22, type metadata accessor for VoicemailsSectionController.Item);
  if (EnumCaseMultiPayload)
  {
    goto LABEL_18;
  }

  v35 = *(v29 + v30);

  result = sub_1CFC9C118();
  v37 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v38 = v48;
    if ((v37 & 0x8000000000000000) != 0 || v37 >= *(v35 + 16))
    {
    }

    else
    {
      v39 = v46;
      sub_1CFC09700(v35 + v44 + v37 * v43, v46, type metadata accessor for VoicemailsSectionController.Item);

      sub_1CFC18374(v39, v38, type metadata accessor for VoicemailsSectionController.Item);
      v40 = v47;
      sub_1CFC09700(v38, v47, type metadata accessor for VoicemailsSectionController.Item);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v50 + 104))(v49, *MEMORY[0x1E69DC178], v51);
        sub_1CFC9DB48();
        v41 = v38;
      }

      else
      {
        sub_1CFC16B30(v38, type metadata accessor for VoicemailsSectionController.Item);
        v41 = v40;
      }

      sub_1CFC16B30(v41, type metadata accessor for VoicemailsSectionController.Item);
    }

LABEL_18:
    sub_1CFC18C50(v33, v27);

    sub_1CFC16B30(v27, type metadata accessor for VoicemailsSectionController.Item);
    return (*(v9 + 32))(v54, v33, v55);
  }

  __break(1u);
  return result;
}

id sub_1CFC116CC(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for VoicemailsSectionController.Item(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CFC9C448();
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - v13;
  v15 = sub_1CFC9C118();
  v16 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_items;
  swift_beginAccess();
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = *&a2[v16];
  if (v15 >= *(v17 + 16))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    sub_1CFC9F8C8();
    goto LABEL_6;
  }

  v18 = a2;
  sub_1CFC09700(v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, v8, type metadata accessor for VoicemailsSectionController.Item);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1CFC16B30(v8, type metadata accessor for VoicemailsSectionController.Item);
    return 0;
  }

  v16 = v43;
  a2 = v44;
  v20 = *(v43 + 32);
  v21 = v8;
  v22 = v14;
  v20(v14, v21, v44);
  v51 = MEMORY[0x1E69E7CC0];
  v23 = swift_allocObject();
  v14 = v18;
  v2 = v22;
  swift_weakInit();
  (*(v16 + 16))(v12, v22, a2);
  v24 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  v20((v25 + v24), v12, a2);
  v49 = sub_1CFC1863C;
  v50 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1CFC1A29C;
  v48 = &block_descriptor_137;
  v26 = _Block_copy(&aBlock);
  v27 = objc_opt_self();

  v28 = [v27 contextualActionWithStyle:1 title:0 handler:v26];
  _Block_release(v26);

  v29 = objc_opt_self();
  v30 = sub_1CFC9F728();
  v31 = [v29 __systemImageNamedSwift_];

  [v28 setImage_];
  v49 = sub_1CFC11EB4;
  v50 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1CFC1A370;
  v48 = &block_descriptor_140;
  v32 = _Block_copy(&aBlock);
  v33 = v28;
  [v33 setAccessibilityIdentifierBlock_];
  _Block_release(v32);

  v12 = v33;
  MEMORY[0x1D3871DC0]();
  if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_16;
  }

LABEL_6:
  sub_1CFC9F8F8();
  v34 = *&v14[OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_remindMeActionConfigurator];
  v35 = &v14[OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v36 = *(*(v35 + 1) + 8);
  }

  else
  {
    v36 = 0;
  }

  v37 = v34 + OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_delegate;
  swift_beginAccess();
  *(v37 + 8) = v36;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v38 = sub_1CFC1A858(v2);
  if (v38)
  {
    v39 = v38;
    MEMORY[0x1D3871DC0]();
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v42 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1CFC9F8C8();
    }

    sub_1CFC9F8F8();
  }

  sub_1CFBA2D80(0, &qword_1EC4EE600, 0x1E69DC8E8);
  v40 = sub_1CFC9F898();

  v41 = [objc_opt_self() configurationWithActions_];

  (*(v16 + 8))(v2, a2);
  return v41;
}

uint64_t sub_1CFC11CE8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED500, &qword_1CFCA2420);
    v10 = sub_1CFC9C448();
    v11 = *(v10 - 8);
    v12 = *(v11 + 72);
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1CFCA1DD0;
    (*(v11 + 16))(v14 + v13, a6, v10);
    v15 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_voicemails;
    swift_beginAccess();

    v16 = sub_1CFC186D8((v9 + v15), v14);

    v17 = *(*(v9 + v15) + 16);
    if (v17 < v16)
    {
      __break(1u);
    }

    else
    {
      sub_1CFBCC85C(v16, v17);
      swift_endAccess();
      v18 = *(v9 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_dataSource);
      sub_1CFC9C888();

      sub_1CFC0F18C();
      a3(1);
    }
  }

  return result;
}

uint64_t sub_1CFC11ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v60 = a2;
  v62 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE508, &qword_1CFCA4648);
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE510, &qword_1CFCA4650);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v59 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE518, &qword_1CFCA4658);
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v50 - v11;
  v12 = type metadata accessor for LegacyMailbox(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v52 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE520, &unk_1CFCA4660);
  v51 = *(v15 - 8);
  v16 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v50 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v50 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE528, &qword_1CFCA4670);
  v50 = *(v23 - 8);
  v24 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v50 - v25;
  v27 = sub_1CFC9C448();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v50 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for VoicemailsSectionController.Item(0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = (&v50 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CFC09700(v60, v35, type metadata accessor for VoicemailsSectionController.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v38 = *(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE4E8, &qword_1CFCA4608) + 48));
      v39 = v52;
      sub_1CFC18374(v35, v52, type metadata accessor for LegacyMailbox);
      v40 = v54;
      sub_1CFC0C94C(v54);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE530, &qword_1CFCA4678);
      v42 = *(v41 + 48);
      v43 = v59;
      sub_1CFC09700(v39, v59, type metadata accessor for LegacyMailbox);
      *(v43 + v42) = v38;
      (*(*(v41 - 8) + 56))(v43, 0, 1, v41);
      sub_1CFBA2D80(0, &unk_1EE04CF68, 0x1E69DC868);
      v37 = sub_1CFC9FBA8();
      sub_1CFBC2FB0(v43, &qword_1EC4EE510, &qword_1CFCA4650);
      (*(v57 + 8))(v40, v58);
      sub_1CFC16B30(v39, type metadata accessor for LegacyMailbox);
    }

    else
    {
      v48 = v53;
      sub_1CFC0D0C0(v53);
      LOBYTE(v63) = 0;
      sub_1CFBA2D80(0, &unk_1EE04CF68, 0x1E69DC868);
      v37 = sub_1CFC9FBA8();
      (*(v55 + 8))(v48, v56);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v44 = *v35;
    v45 = *(v35 + 2);
    v46 = *(v35 + 1);
    sub_1CFC0BC48(v18);
    v47 = 0x10000;
    if (!v45)
    {
      v47 = 0;
    }

    v63 = v47 | v44;
    v64 = v46;
    sub_1CFBA2D80(0, &unk_1EE04CF68, 0x1E69DC868);
    v37 = sub_1CFC9FBA8();
    (*(v51 + 8))(v18, v15);
  }

  else
  {
    (*(v28 + 32))(v31, v35, v27);
    sub_1CFC0B0F4(v26);
    (*(v28 + 16))(v22, v31, v27);
    (*(v28 + 56))(v22, 0, 1, v27);
    type metadata accessor for RecentsStyleListCell();
    v37 = sub_1CFC9FBA8();
    sub_1CFBC2FB0(v22, &qword_1EC4EE368, &unk_1CFCA4040);
    (*(v50 + 8))(v26, v23);
    (*(v28 + 8))(v31, v27);
  }

  return v37;
}

uint64_t sub_1CFC12624()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE018, &unk_1CFCA4680);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - v3;
  sub_1CFC0D56C(&v7 - v3);
  type metadata accessor for SectionHeaderView();
  v5 = sub_1CFC9FBB8();
  (*(v1 + 8))(v4, v0);
  return v5;
}

id sub_1CFC12720(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v50 = a4;
  v51 = a3;
  v7 = type metadata accessor for LegacyMailbox(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v49 - v13;
  v15 = sub_1CFC9C448();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for VoicemailsSectionController.Item(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC09700(a1, v23, type metadata accessor for VoicemailsSectionController.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v16 + 32))(v19, v23, v15);
      v25 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_selectedCell;
      v26 = *(v4 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_selectedCell);
      if (v26)
      {
        [v26 setSelected_];
      }

      [a2 setSelected_];
      v27 = *(v4 + v25);
      *(v4 + v25) = a2;
      v28 = a2;

      (*(v16 + 16))(v14, v19, v15);
      (*(v16 + 56))(v14, 0, 1, v15);
      v29 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_selectedItem;
      swift_beginAccess();
      sub_1CFBA735C(v14, v4 + v29, &qword_1EC4EE368, &unk_1CFCA4040);
      swift_endAccess();
      v30 = *(v4 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_detailsPresenter);
      v31 = objc_opt_self();
      v32 = [v31 shared];
      v33 = [v32 current];

      if (v33 || (v48 = sub_1CFC9C408()) == 0)
      {
        v34 = [v31 shared];
        v35 = [v34 tapRecentsToCall];

        if (v35)
        {
          v36 = *(v30 + 16);
          sub_1CFC9C898();
          sub_1CFC12CAC(v51, v50);
          return (*(v16 + 8))(v19, v15);
        }
      }

      else
      {
      }

      sub_1CFC88EA4(v19);
      return (*(v16 + 8))(v19, v15);
    }

    v40 = v23[2];
    v41 = *(v23 + 1);
    v55 = *v23;
    v56 = v40;
    v57 = v41;
    sub_1CFC1308C(&v55);
    v42 = v4 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_displayMode;
    swift_beginAccess();
    if (*(v42 + 8) != 1)
    {
      return [a2 setSelected_];
    }

    v43 = 0;
    return v51(v43);
  }

  if (EnumCaseMultiPayload != 2)
  {
    v44 = v4 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v45 = *(v44 + 8);
      ObjectType = swift_getObjectType();
      (*(v45 + 40))(ObjectType, v45);
      swift_unknownObjectRelease();
    }

    [a2 setSelected_];
    v43 = 1;
    return v51(v43);
  }

  sub_1CFC18374(v23, v10, type metadata accessor for LegacyMailbox);
  v37 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_legacyMailboxService;
  swift_beginAccess();
  sub_1CFBA29FC(v4 + v37, &v55, &qword_1EC4EE538, qword_1CFCA9BD0);
  if (v58)
  {
    sub_1CFBB94B0(&v55, v52);
    sub_1CFBC2FB0(&v55, &qword_1EC4EE538, qword_1CFCA9BD0);
    v38 = v53;
    v39 = v54;
    __swift_project_boxed_opaque_existential_1(v52, v53);
    (*(v39 + 56))(v10, v38, v39);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
  }

  else
  {
    sub_1CFBC2FB0(&v55, &qword_1EC4EE538, qword_1CFCA9BD0);
  }

  [a2 setSelected_];
  v51(1);
  return sub_1CFC16B30(v10, type metadata accessor for LegacyMailbox);
}

uint64_t sub_1CFC12CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFC9F638();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFC9F658();
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CFC9F678();
  v26 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  v24 = sub_1CFC9FC28();
  sub_1CFC9F668();
  sub_1CFC9F688();
  v25 = *(v13 + 8);
  v25(v17, v12);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  aBlock[4] = sub_1CFC182D0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFC56F38;
  aBlock[3] = &block_descriptor_82;
  v21 = _Block_copy(aBlock);

  sub_1CFC9F648();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1CFBB7418(&qword_1EE04D130, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5B0, &unk_1CFCA24A0);
  sub_1CFBA57C0(&qword_1EE04D110, &unk_1EC4ED5B0, &unk_1CFCA24A0);
  sub_1CFC9FF58();
  v22 = v24;
  MEMORY[0x1D3872120](v19, v11, v7, v21);
  _Block_release(v21);

  (*(v29 + 8))(v7, v4);
  (*(v27 + 8))(v11, v28);
  return (v25)(v19, v26);
}

uint64_t sub_1CFC1308C(unsigned __int16 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = (v1 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_displayMode);
  swift_beginAccess();
  v5 = v4[8];
  if (v5 == 1)
  {
    v6 = *v4;
    v7 = *(*v4 + 16);
    v8 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v25 = v4;
      v26 = MEMORY[0x1E69E7CC0];
      v9 = *v4;

      sub_1CFBCA9C8(0, v7, 0);
      v8 = v26;
      v10 = v3 ^ 1;
      v24 = v9;
      v11 = (v9 + 34);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v14 = sub_1CFC9D758();
        if (v14 == sub_1CFC9D758())
        {
          v15 = v10;
        }

        else
        {
          v15 = v13;
        }

        v17 = *(v26 + 16);
        v16 = *(v26 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1CFBCA9C8((v16 > 1), v17 + 1, 1);
        }

        *(v26 + 16) = v17 + 1;
        v18 = v26 + 16 * v17;
        *(v18 + 32) = v12;
        *(v18 + 34) = v15 & 1;
        *(v18 + 40) = 0;
        v11 += 16;
        --v7;
      }

      while (v7);
      sub_1CFC0DC38(v24, 1);
      v4 = v25;
      v6 = *v25;
      v23 = v25[8];
      LOBYTE(v5) = 1;
    }

    else
    {
      v23 = 1;
    }

    *v4 = v8;
    v4[8] = v5;
    sub_1CFC0DC38(v6, v23);
    return sub_1CFC0F18C();
  }

  else
  {
    v19 = v1 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v21 = *(v19 + 8);
      ObjectType = swift_getObjectType();
      (*(v21 + 24))(v2, ObjectType, v21);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1CFC13254(int a1)
{
  v3 = sub_1CFC9C448();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v26 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v23 = *(v1 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_dataSource);
  v10 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_voicemails;
  swift_beginAccess();
  v11 = *(*(v1 + v10) + 16);

  v30 = v11;
  if (v11)
  {
    v13 = 0;
    v25 = (v4 + 32);
    v27 = (v4 + 8);
    v28 = v4 + 16;
    v14 = MEMORY[0x1E69E7CC0];
    v24 = a1;
    v29 = result;
    while (v13 < *(result + 16))
    {
      v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v16 = *(v4 + 72);
      (*(v4 + 16))(v9, result + v15 + v16 * v13, v3);
      v17 = sub_1CFC9C408();
      if (v17 && (v18 = v17, sub_1CFC9D5B8(), v18, LODWORD(v18) = sub_1CFC9D758(), v18 == sub_1CFC9D758()))
      {
        v19 = *v25;
        (*v25)(v26, v9, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CFBB22BC(0, *(v14 + 16) + 1, 1);
          v14 = v31;
        }

        v22 = *(v14 + 16);
        v21 = *(v14 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1CFBB22BC(v21 > 1, v22 + 1, 1);
          v14 = v31;
        }

        *(v14 + 16) = v22 + 1;
        v19((v14 + v15 + v22 * v16), v26, v3);
      }

      else
      {
        (*v27)(v9, v3);
      }

      ++v13;
      result = v29;
      if (v30 == v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    sub_1CFC9C888();
  }

  return result;
}

void sub_1CFC13528(__int16 a1)
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_1CFC9BE28();

  v4 = [v2 &:ObjCClassFromMetadata OBJC:0xE000000000000000 LABEL:? PROTOCOL:? :? :?UISearchControllerDelegate + 3];
  sub_1CFC9BE28();

  v5 = sub_1CFC9F728();

  v6 = sub_1CFC9F728();

  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:{0, 0xE000000000000000}];

  v8 = [v2 bundleForClass_];
  sub_1CFC9BE28();

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;

  v11 = sub_1CFC9F728();

  aBlock[4] = sub_1CFC181A0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFBDBE60;
  aBlock[3] = &block_descriptor_7;
  v12 = _Block_copy(aBlock);

  v13 = objc_opt_self();
  v14 = [v13 actionWithTitle:v11 style:2 handler:{v12, 0xE000000000000000}];
  _Block_release(v12);

  v15 = [v2 bundleForClass_];
  sub_1CFC9BE28();

  v16 = sub_1CFC9F728();

  v17 = [v13 actionWithTitle:v16 style:1 handler:{0, 0xE000000000000000}];

  [v7 addAction_];
  [v7 addAction_];
  v18 = v22 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    (*(v19 + 48))(v7, ObjectType, v19);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1CFC139A0(uint64_t a1, uint64_t a2, int a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CFC13254(a3);
  }

  return result;
}

uint64_t VoicemailsSectionController.deinit()
{
  sub_1CFBA79B8(v0 + 24);
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController____lazy_storage___cellRegistration, &qword_1EC4EE540, &qword_1CFCA4690);
  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController____lazy_storage___mailboxCellRegistration, &qword_1EC4EE548, &qword_1CFCA4698);
  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController____lazy_storage___legacyCellRegistration, &qword_1EC4EE550, &qword_1CFCA46A0);
  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController____lazy_storage___accountProvisioningCellRegistration, &qword_1EC4EE558, &unk_1CFCA46A8);
  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController____lazy_storage___headerRegistration, &qword_1EC4EE038, &qword_1CFCA3AE0);
  sub_1CFBA79B8(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_delegate);

  v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_detailsPresenter);

  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_legacyMailboxService, &qword_1EC4EE538, qword_1CFCA9BD0);
  sub_1CFC0DC38(*(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_displayMode), *(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_displayMode + 8));
  v4 = *(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_cancellables);

  v5 = *(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_legacyMailboxes);

  v6 = *(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_voicemails);

  v7 = *(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_items);

  v8 = *(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_remindMeActionConfigurator);

  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_selectedItem, &qword_1EC4EE368, &unk_1CFCA4040);

  return v0;
}

uint64_t VoicemailsSectionController.__deallocating_deinit()
{
  VoicemailsSectionController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t (*sub_1CFC13C20(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1CFC19124;
}

void sub_1CFC13CB4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void (*sub_1CFC13D3C(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1CFC09D00(v2);
  return sub_1CFC13DAC;
}

void sub_1CFC13DAC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t VoicemailsSectionController.contextMenu(for:at:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for VoicemailsSectionController.Item(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFC9C448();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC09700(a1, v7, type metadata accessor for VoicemailsSectionController.Item);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1CFC16B30(v7, type metadata accessor for VoicemailsSectionController.Item);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v14 = *(v2 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_dataSource);
    v15 = sub_1CFC9C828();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (!v16)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = objc_allocWithZone(type metadata accessor for ContactActionsController());
    v18 = sub_1CFC9619C(v15, v16);
    v19 = *(v2 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_contactActionsController);
    *(v2 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_contactActionsController) = v18;
    v20 = v18;

    v21 = sub_1CFC96E60();
    if (v21)
    {
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1CFCA2540;
      v24 = v23;
      *(v23 + 32) = v22;
    }

    else
    {

      v24 = 0;
    }

    (*(v9 + 8))(v12, v8);
    return v24;
  }
}

uint64_t sub_1CFC140F0(unsigned __int16 a1)
{
  if (a1 == 2)
  {
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
  }

  else
  {
    if (a1 > 1u)
    {
      return 0;
    }

    type metadata accessor for BundleClass();
    v1 = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
  }

  v4 = sub_1CFC9BE28();

  return v4;
}

uint64_t sub_1CFC14290(uint64_t a1)
{
  v2 = sub_1CFC9DE68();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1CFC9E338();
}

uint64_t sub_1CFC14358@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1CFC14388(void **a1)
{
  v2 = *(sub_1CFC9C448() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1CFBA5EC4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1CFC14430(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1CFC14430(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CFCA0278();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1CFC9C448();
        v6 = sub_1CFC9F8E8();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1CFC9C448() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1CFC14938(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1CFC1455C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CFC1455C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D0, &unk_1CFCA1FE0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v44 - v13;
  v14 = sub_1CFC9C448();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v54 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v60 = &v44 - v19;
  result = MEMORY[0x1EEE9AC00](v18);
  v23 = &v44 - v21;
  v46 = a2;
  if (a3 != a2)
  {
    v24 = *a4;
    v58 = *(v22 + 16);
    v59 = v22 + 16;
    v25 = *(v22 + 72);
    v55 = (v22 + 8);
    v56 = &v44 - v21;
    v26 = v24 + v25 * (a3 - 1);
    v51 = -v25;
    v52 = (v22 + 32);
    v27 = a1 - a3;
    v53 = v24;
    v45 = v25;
    v28 = v24 + v25 * a3;
    v57 = v14;
LABEL_5:
    v49 = v26;
    v50 = a3;
    v47 = v28;
    v48 = v27;
    while (1)
    {
      v61 = v27;
      v29 = v58;
      v58(v23, v28, v14);
      v30 = v60;
      v29(v60, v26, v14);
      v31 = v62;
      sub_1CFC9C3A8();
      v32 = v30;
      v33 = sub_1CFC9BFB8();
      v34 = *(v33 - 8);
      v35 = *(v34 + 48);
      result = v35(v31, 1, v33);
      if (result == 1)
      {
        break;
      }

      sub_1CFC9C3A8();
      result = v35(v12, 1, v33);
      if (result == 1)
      {
        goto LABEL_14;
      }

      v36 = v62;
      v37 = sub_1CFC9BF78();
      v38 = *(v34 + 8);
      v38(v12, v33);
      v38(v36, v33);
      v39 = *v55;
      v14 = v57;
      (*v55)(v32, v57);
      v23 = v56;
      result = v39(v56, v14);
      v40 = v61;
      if (v37)
      {
        if (!v53)
        {
          goto LABEL_15;
        }

        v41 = *v52;
        v42 = v54;
        (*v52)(v54, v28, v14);
        swift_arrayInitWithTakeFrontToBack();
        result = (v41)(v26, v42, v14);
        v26 += v51;
        v28 += v51;
        v43 = __CFADD__(v40, 1);
        v27 = v40 + 1;
        if (!v43)
        {
          continue;
        }
      }

      a3 = v50 + 1;
      v26 = v49 + v45;
      v27 = v48 - 1;
      v28 = v47 + v45;
      if (v50 + 1 == v46)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFC14938(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v164 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D0, &unk_1CFCA1FE0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v182 = &v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v189 = &v155 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v155 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v176 = &v155 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v155 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v155 - v22;
  v186 = sub_1CFC9C448();
  v24 = *(v186 - 8);
  v25 = v24[8];
  v26 = MEMORY[0x1EEE9AC00](v186);
  v169 = &v155 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v180 = &v155 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v188 = &v155 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v159 = &v155 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v175 = &v155 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  result = MEMORY[0x1EEE9AC00](v37);
  v163 = &v155 - v41;
  v42 = a3[1];
  if (v42 >= 1)
  {
    v161 = a4;
    v157 = v40;
    v155 = v39;
    v158 = v23;
    v156 = v21;
    v43 = 0;
    v184 = (v24 + 1);
    v185 = v24 + 2;
    v183 = (v24 + 4);
    v44 = MEMORY[0x1E69E7CC0];
    v166 = a3;
    v170 = v16;
    v160 = v24;
    while (1)
    {
      v45 = v43;
      v167 = v44;
      if (v43 + 1 >= v42)
      {
        v72 = v43 + 1;
      }

      else
      {
        v177 = v42;
        v162 = v5;
        v46 = *a3;
        v47 = v24[9];
        v16 = &v46[v47 * (v43 + 1)];
        v48 = v24[2];
        v49 = v186;
        v48(v163, v16, v186);
        v165 = v43;
        v187 = v47;
        v168 = v46;
        v50 = &v46[v47 * v43];
        v51 = v157;
        v179 = v48;
        v48(v157, v50, v49);
        v52 = v158;
        sub_1CFC9C3A8();
        v53 = sub_1CFC9BFB8();
        v54 = *(v53 - 8);
        v55 = *(v54 + 48);
        result = v55(v52, 1, v53);
        if (result == 1)
        {
          goto LABEL_145;
        }

        v56 = v156;
        sub_1CFC9C3A8();
        v178 = v54 + 48;
        v174 = v55;
        result = v55(v56, 1, v53);
        v57 = v159;
        if (result == 1)
        {
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        LODWORD(v181) = sub_1CFC9BF78();
        v58 = *(v54 + 8);
        v58(v56, v53);
        v172 = v58;
        v173 = v54 + 8;
        v58(v52, v53);
        v59 = *v184;
        v60 = v186;
        (*v184)(v51, v186);
        v171 = v59;
        result = (v59)(v163, v60);
        v61 = (v165 + 2);
        v62 = v168 + v187 * (v165 + 2);
        while (v177 != v61)
        {
          v63 = v179;
          v179(v175, v62, v60);
          v63(v57, v16, v60);
          v64 = v174;
          v65 = v176;
          sub_1CFC9C3A8();
          result = v64(v65, 1, v53);
          if (result == 1)
          {
            goto LABEL_140;
          }

          v66 = v170;
          sub_1CFC9C3A8();
          result = v64(v66, 1, v53);
          if (result == 1)
          {
            goto LABEL_139;
          }

          v67 = v57;
          v68 = v176;
          v69 = sub_1CFC9BF78() & 1;
          v70 = v172;
          (v172)(v66, v53);
          v70(v68, v53);
          v60 = v186;
          v71 = v171;
          (v171)(v67, v186);
          result = (v71)(v175, v60);
          ++v61;
          v62 += v187;
          v16 += v187;
          v57 = v67;
          if ((v181 & 1) != v69)
          {
            v72 = (v61 - 1);
            goto LABEL_15;
          }
        }

        v72 = v177;
LABEL_15:
        v5 = v162;
        a3 = v166;
        v24 = v160;
        v44 = v167;
        v45 = v165;
        if (v181)
        {
          if (v72 < v165)
          {
            goto LABEL_132;
          }

          if (v165 < v72)
          {
            v73 = v187 * (v72 - 1);
            v74 = v72 * v187;
            v177 = v72;
            v75 = v165;
            v76 = v165 * v187;
            do
            {
              if (v75 != --v72)
              {
                v77 = *a3;
                if (!v77)
                {
                  goto LABEL_142;
                }

                v16 = &v77[v76];
                v78 = *v183;
                (*v183)(v169, &v77[v76], v60);
                if (v76 < v73 || v16 >= &v77[v74])
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v76 != v73)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = (v78)(&v77[v73], v169, v60);
                a3 = v166;
                v44 = v167;
              }

              ++v75;
              v73 -= v187;
              v74 -= v187;
              v76 += v187;
            }

            while (v75 < v72);
            v5 = v162;
            v24 = v160;
            v79 = v161;
            v45 = v165;
            v72 = v177;
            goto LABEL_29;
          }
        }
      }

      v79 = v161;
LABEL_29:
      v80 = a3[1];
      if (v72 >= v80)
      {
        goto LABEL_38;
      }

      if (__OFSUB__(v72, v45))
      {
        goto LABEL_131;
      }

      if (v72 - v45 >= v79)
      {
        goto LABEL_38;
      }

      if (__OFADD__(v45, v79))
      {
        goto LABEL_133;
      }

      if (v45 + v79 >= v80)
      {
        v16 = a3[1];
      }

      else
      {
        v16 = v45 + v79;
      }

      if (v16 < v45)
      {
LABEL_134:
        __break(1u);
LABEL_135:
        result = sub_1CFC7E7DC(v44);
        v44 = result;
LABEL_105:
        v190 = v44;
        v151 = *(v44 + 2);
        if (v151 >= 2)
        {
          while (*a3)
          {
            v152 = *&v44[16 * v151];
            v153 = *&v44[16 * v151 + 24];
            sub_1CFC157A0(*a3 + v24[9] * v152, *a3 + v24[9] * *&v44[16 * v151 + 16], *a3 + v24[9] * v153, v16);
            if (v5)
            {
            }

            if (v153 < v152)
            {
              goto LABEL_128;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v44 = sub_1CFC7E7DC(v44);
            }

            if (v151 - 2 >= *(v44 + 2))
            {
              goto LABEL_129;
            }

            v154 = &v44[16 * v151];
            *v154 = v152;
            *(v154 + 1) = v153;
            v190 = v44;
            result = sub_1CFBB26AC(v151 - 1);
            v44 = v190;
            v151 = *(v190 + 2);
            if (v151 <= 1)
            {
            }
          }

          goto LABEL_143;
        }
      }

      if (v72 == v16)
      {
LABEL_38:
        v16 = v72;
        if (v72 < v45)
        {
          goto LABEL_130;
        }
      }

      else
      {
        v162 = v5;
        v127 = *a3;
        v128 = v24[9];
        v181 = v24[2];
        v129 = &v127[v128 * (v72 - 1)];
        v178 = -v128;
        v165 = v45;
        v130 = v45 - v72;
        v177 = v72;
        v179 = v127;
        v168 = v128;
        v131 = &v127[v72 * v128];
        v132 = v186;
        v133 = v155;
        v171 = v16;
        do
        {
          v172 = v131;
          v173 = v130;
          v134 = v131;
          v135 = v130;
          v174 = v129;
          do
          {
            v187 = v135;
            v136 = v181;
            v181(v188, v134, v132);
            v136(v133, v129, v132);
            v137 = v133;
            v138 = v189;
            sub_1CFC9C3A8();
            v139 = sub_1CFC9BFB8();
            v140 = *(v139 - 8);
            v141 = *(v140 + 48);
            result = v141(v138, 1, v139);
            if (result == 1)
            {
              goto LABEL_137;
            }

            v142 = v182;
            sub_1CFC9C3A8();
            result = v141(v142, 1, v139);
            if (result == 1)
            {
              __break(1u);
LABEL_137:
              __break(1u);
LABEL_138:
              __break(1u);
LABEL_139:
              __break(1u);
LABEL_140:
              __break(1u);
LABEL_141:
              __break(1u);
LABEL_142:
              __break(1u);
LABEL_143:
              __break(1u);
LABEL_144:
              __break(1u);
LABEL_145:
              __break(1u);
              goto LABEL_146;
            }

            v143 = v189;
            v144 = sub_1CFC9BF78();
            v145 = *(v140 + 8);
            v145(v142, v139);
            v145(v143, v139);
            v146 = *v184;
            v132 = v186;
            (*v184)(v137, v186);
            result = (v146)(v188, v132);
            v133 = v137;
            if ((v144 & 1) == 0)
            {
              break;
            }

            v147 = v187;
            if (!v179)
            {
              goto LABEL_138;
            }

            v148 = *v183;
            v149 = v180;
            (*v183)(v180, v134, v132);
            swift_arrayInitWithTakeFrontToBack();
            v148(v129, v149, v132);
            v129 += v178;
            v134 += v178;
            v150 = __CFADD__(v147, 1);
            v135 = v147 + 1;
          }

          while (!v150);
          v129 = &v174[v168];
          v130 = v173 - 1;
          v16 = v171;
          v131 = &v172[v168];
          ++v177;
        }

        while (v177 != v171);
        v5 = v162;
        a3 = v166;
        v24 = v160;
        v44 = v167;
        v45 = v165;
        if (v171 < v165)
        {
          goto LABEL_130;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v171 = v16;
      if ((result & 1) == 0)
      {
        result = sub_1CFBB2454(0, *(v44 + 2) + 1, 1, v44);
        v44 = result;
      }

      v16 = *(v44 + 2);
      v81 = *(v44 + 3);
      v82 = v16 + 1;
      if (v16 >= v81 >> 1)
      {
        result = sub_1CFBB2454((v81 > 1), v16 + 1, 1, v44);
        v44 = result;
      }

      *(v44 + 2) = v82;
      v83 = &v44[16 * v16];
      v84 = v171;
      *(v83 + 4) = v45;
      *(v83 + 5) = v84;
      if (!*v164)
      {
        goto LABEL_144;
      }

      if (v16)
      {
        v85 = *v164;
        while (1)
        {
          v16 = v82 - 1;
          if (v82 >= 4)
          {
            break;
          }

          if (v82 == 3)
          {
            v86 = *(v44 + 4);
            v87 = *(v44 + 5);
            v96 = __OFSUB__(v87, v86);
            v88 = v87 - v86;
            v89 = v96;
LABEL_59:
            if (v89)
            {
              goto LABEL_119;
            }

            v102 = &v44[16 * v82];
            v104 = *v102;
            v103 = *(v102 + 1);
            v105 = __OFSUB__(v103, v104);
            v106 = v103 - v104;
            v107 = v105;
            if (v105)
            {
              goto LABEL_122;
            }

            v108 = &v44[16 * v16 + 32];
            v110 = *v108;
            v109 = *(v108 + 1);
            v96 = __OFSUB__(v109, v110);
            v111 = v109 - v110;
            if (v96)
            {
              goto LABEL_125;
            }

            if (__OFADD__(v106, v111))
            {
              goto LABEL_126;
            }

            if (v106 + v111 >= v88)
            {
              if (v88 < v111)
              {
                v16 = v82 - 2;
              }

              goto LABEL_80;
            }

            goto LABEL_73;
          }

          v112 = &v44[16 * v82];
          v114 = *v112;
          v113 = *(v112 + 1);
          v96 = __OFSUB__(v113, v114);
          v106 = v113 - v114;
          v107 = v96;
LABEL_73:
          if (v107)
          {
            goto LABEL_121;
          }

          v115 = &v44[16 * v16];
          v117 = *(v115 + 4);
          v116 = *(v115 + 5);
          v96 = __OFSUB__(v116, v117);
          v118 = v116 - v117;
          if (v96)
          {
            goto LABEL_124;
          }

          if (v118 < v106)
          {
            goto LABEL_3;
          }

LABEL_80:
          v123 = v16 - 1;
          if (v16 - 1 >= v82)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
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
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
            goto LABEL_134;
          }

          if (!*a3)
          {
            goto LABEL_141;
          }

          v124 = *&v44[16 * v123 + 32];
          v125 = *&v44[16 * v16 + 40];
          sub_1CFC157A0(*a3 + v24[9] * v124, *a3 + v24[9] * *&v44[16 * v16 + 32], *a3 + v24[9] * v125, v85);
          if (v5)
          {
          }

          if (v125 < v124)
          {
            goto LABEL_115;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_1CFC7E7DC(v44);
          }

          if (v123 >= *(v44 + 2))
          {
            goto LABEL_116;
          }

          v126 = &v44[16 * v123];
          *(v126 + 4) = v124;
          *(v126 + 5) = v125;
          v190 = v44;
          result = sub_1CFBB26AC(v16);
          v44 = v190;
          v82 = *(v190 + 2);
          if (v82 <= 1)
          {
            goto LABEL_3;
          }
        }

        v90 = &v44[16 * v82 + 32];
        v91 = *(v90 - 64);
        v92 = *(v90 - 56);
        v96 = __OFSUB__(v92, v91);
        v93 = v92 - v91;
        if (v96)
        {
          goto LABEL_117;
        }

        v95 = *(v90 - 48);
        v94 = *(v90 - 40);
        v96 = __OFSUB__(v94, v95);
        v88 = v94 - v95;
        v89 = v96;
        if (v96)
        {
          goto LABEL_118;
        }

        v97 = &v44[16 * v82];
        v99 = *v97;
        v98 = *(v97 + 1);
        v96 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v96)
        {
          goto LABEL_120;
        }

        v96 = __OFADD__(v88, v100);
        v101 = v88 + v100;
        if (v96)
        {
          goto LABEL_123;
        }

        if (v101 >= v93)
        {
          v119 = &v44[16 * v16 + 32];
          v121 = *v119;
          v120 = *(v119 + 1);
          v96 = __OFSUB__(v120, v121);
          v122 = v120 - v121;
          if (v96)
          {
            goto LABEL_127;
          }

          if (v88 < v122)
          {
            v16 = v82 - 2;
          }

          goto LABEL_80;
        }

        goto LABEL_59;
      }

LABEL_3:
      v42 = a3[1];
      v43 = v171;
      if (v171 >= v42)
      {
        goto LABEL_103;
      }
    }
  }

  v44 = MEMORY[0x1E69E7CC0];
LABEL_103:
  v16 = *v164;
  if (*v164)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_105;
  }

LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_1CFC157A0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D0, &unk_1CFCA1FE0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v89 = &v79 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v87 = &v79 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v91 = &v79 - v17;
  v93 = sub_1CFC9C448();
  v18 = *(v93 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v93);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v88 = &v79 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  result = MEMORY[0x1EEE9AC00](v25);
  v90 = &v79 - v28;
  v30 = *(v29 + 72);
  if (!v30)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (a2 - a1 == 0x8000000000000000 && v30 == -1)
  {
    goto LABEL_66;
  }

  v31 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v30 != -1)
  {
    v32 = (a2 - a1) / v30;
    v96 = a1;
    v95 = a4;
    if (v32 >= v31 / v30)
    {
      v87 = v12;
      v34 = v31 / v30 * v30;
      if (a4 < a2 || a2 + v34 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      if (v34 < 1)
      {
        v60 = a4 + v34;
      }

      else
      {
        v82 = (v18 + 8);
        v83 = (v18 + 16);
        v58 = -v30;
        v59 = (a4 + v34);
        v60 = a4 + v34;
        v92 = a1;
        v80 = -v30;
        v81 = a4;
        do
        {
          v79 = v60;
          v61 = a2;
          a2 += v58;
          v85 = v61;
          v86 = a2;
          while (1)
          {
            if (v61 <= a1)
            {
              v96 = v61;
              v94 = v79;
              goto LABEL_64;
            }

            v62 = a3;
            v84 = v60;
            v63 = *v83;
            v90 = &v59[v58];
            v91 = v59;
            v64 = v93;
            v63(v88);
            (v63)(v22, a2, v64);
            v65 = v89;
            sub_1CFC9C3A8();
            v66 = v22;
            v67 = sub_1CFC9BFB8();
            v68 = *(v67 - 8);
            v69 = *(v68 + 48);
            result = v69(v65, 1, v67);
            if (result == 1)
            {
              goto LABEL_70;
            }

            v70 = v87;
            sub_1CFC9C3A8();
            result = v69(v70, 1, v67);
            if (result == 1)
            {
              goto LABEL_71;
            }

            v71 = &v62[v58];
            v72 = v89;
            v73 = sub_1CFC9BF78();
            v74 = *(v68 + 8);
            v74(v70, v67);
            v74(v72, v67);
            v75 = *v82;
            v76 = v93;
            (*v82)(v66, v93);
            v75(v88, v76);
            a2 = v86;
            v77 = v81;
            v22 = v66;
            if (v73)
            {
              break;
            }

            v78 = v90;
            v60 = v90;
            a1 = v92;
            a3 = v71;
            if (v62 < v91 || v71 >= v91)
            {
              swift_arrayInitWithTakeFrontToBack();
              v58 = v80;
            }

            else
            {
              v58 = v80;
              if (v62 != v91)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v59 = v60;
            v61 = v85;
            if (v78 <= v77)
            {
              a2 = v85;
              goto LABEL_63;
            }
          }

          a1 = v92;
          a3 = v71;
          if (v62 < v85 || v71 >= v85)
          {
            swift_arrayInitWithTakeFrontToBack();
            v60 = v84;
            v58 = v80;
          }

          else
          {
            v60 = v84;
            v58 = v80;
            if (v62 != v85)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = v91;
        }

        while (v91 > v77);
      }

LABEL_63:
      v96 = a2;
      v94 = v60;
    }

    else
    {
      v33 = v32 * v30;
      v86 = v27;
      if (a4 < a1 || a1 + v33 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v89 = (a4 + v33);
      v94 = a4 + v33;
      if (v33 >= 1 && a2 < a3)
      {
        v36 = *(v18 + 16);
        v84 = a3;
        v85 = v36;
        v88 = (v18 + 16);
        v82 = (v18 + 8);
        v83 = v30;
        do
        {
          v92 = a1;
          v37 = a2;
          v38 = v93;
          v39 = v85;
          (v85)(v90, a2, v93);
          v40 = v86;
          (v39)(v86, a4, v38);
          v41 = v91;
          sub_1CFC9C3A8();
          v42 = sub_1CFC9BFB8();
          v43 = *(v42 - 8);
          v44 = *(v43 + 48);
          result = v44(v41, 1, v42);
          if (result == 1)
          {
            goto LABEL_68;
          }

          v45 = v87;
          sub_1CFC9C3A8();
          v46 = v45;
          result = v44(v45, 1, v42);
          if (result == 1)
          {
            goto LABEL_69;
          }

          v47 = v91;
          v48 = sub_1CFC9BF78();
          v49 = v46;
          v50 = v48;
          v51 = *(v43 + 8);
          v51(v49, v42);
          v51(v47, v42);
          v52 = *v82;
          v53 = v93;
          (*v82)(v40, v93);
          v52(v90, v53);
          a2 = v37;
          v54 = v92;
          if (v50)
          {
            v56 = v83;
            v55 = v84;
            if (v92 < a2 || v92 >= v83 + a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v92 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v56;
          }

          else
          {
            v56 = v83;
            v55 = v84;
            v57 = v83 + a4;
            if (v92 < a4 || v92 >= v57)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v92 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v95 = v57;
            a4 += v56;
          }

          a1 = v56 + v54;
          v96 = a1;
        }

        while (a4 < v89 && a2 < v55);
      }
    }

LABEL_64:
    sub_1CFBB25C8(&v96, &v95, &v94);
    return 1;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_1CFC15FE8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1CFC9FFD8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1CFC9FFD8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1CFBA57C0(&qword_1EC4EE630, &qword_1EC4EE628, &qword_1CFCA4B08);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE628, &qword_1CFCA4B08);
            v9 = sub_1CFC16350(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1CFBA2D80(0, &qword_1EE04FF78, 0x1E696ACD8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFC1619C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1CFC9FFD8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1CFC9FFD8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1CFBA57C0(&qword_1EC4EE5A0, &qword_1EC4EE598, &unk_1CFCA4970);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE598, &unk_1CFCA4970);
            v9 = sub_1CFC163D0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1CFC16350(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D3872640](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1CFC19114;
  }

  __break(1u);
  return result;
}

void (*sub_1CFC163D0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D3872640](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1CFC16450;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFC16458()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE608, &qword_1CFCA4AC8);
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v36 = v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF860, &qword_1CFCA4AD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE610, &qword_1CFCA4AD8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v31 - v11;
  v40 = *(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_dataSource);
  v44[0] = sub_1CFC9C848();
  v13 = sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  v14 = sub_1CFC9FC28();
  v43 = v14;
  v15 = sub_1CFC9FBF8();
  v16 = *(v15 - 8);
  v32 = *(v16 + 56);
  v33 = v15;
  v31[1] = v16 + 56;
  v32(v7, 1, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE618, &unk_1CFCA4AE0);
  sub_1CFBA57C0(&qword_1EE04D5C8, &qword_1EC4EE618, &unk_1CFCA4AE0);
  v34 = sub_1CFC18FBC();
  v35 = v13;
  sub_1CFC9DD88();
  sub_1CFBC2FB0(v7, &qword_1EC4EF860, &qword_1CFCA4AD0);

  swift_allocObject();
  v17 = v39;
  swift_weakInit();
  sub_1CFBA57C0(&qword_1EE04D5E0, &qword_1EC4EE610, &qword_1CFCA4AD8);
  sub_1CFC9DD68();

  (*(v9 + 8))(v12, v8);
  swift_beginAccess();
  sub_1CFC9DC88();
  swift_endAccess();

  v18 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_legacyMailboxService;
  swift_beginAccess();
  sub_1CFBA29FC(v17 + v18, v44, &qword_1EC4EE538, qword_1CFCA9BD0);
  v19 = v45;
  if (v45)
  {
    v20 = v46;
    v21 = __swift_project_boxed_opaque_existential_1(v44, v45);
    v22 = *(v19 - 8);
    v23 = *(v22 + 64);
    MEMORY[0x1EEE9AC00](v21);
    v25 = v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25);
    sub_1CFBC2FB0(v44, &qword_1EC4EE538, qword_1CFCA9BD0);
    v26 = (*(v20 + 8))(v19, v20);
    (*(v22 + 8))(v25, v19);
    v42 = v26;
    v27 = sub_1CFC9FC28();
    v41 = v27;
    (v32)(v7, 1, 1, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF890, &unk_1CFCA8270);
    sub_1CFBA57C0(&qword_1EC4EFD80, &qword_1EC4EF890, &unk_1CFCA8270);
    v28 = v36;
    sub_1CFC9DD88();
    sub_1CFBC2FB0(v7, &qword_1EC4EF860, &qword_1CFCA4AD0);

    swift_allocObject();
    swift_weakInit();
    sub_1CFBA57C0(&qword_1EC4EE620, &qword_1EC4EE608, &qword_1CFCA4AC8);
    v29 = v38;
    sub_1CFC9DD68();

    (*(v37 + 8))(v28, v29);
    swift_beginAccess();
    sub_1CFC9DC88();
    swift_endAccess();
  }

  else
  {
    sub_1CFBC2FB0(v44, &qword_1EC4EE538, qword_1CFCA9BD0);
  }

  sub_1CFC9C8B8();
  return sub_1CFC9C8C8();
}

uint64_t sub_1CFC16B30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFC16B90(uint64_t a1, uint64_t a2)
{
  v39 = sub_1CFC9C448();
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470);
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v36 = v30 - v14;
  v15 = *(a1 + 16);
  v16 = v15 == 0;
  v35 = v15;
  if (!v15)
  {
    return 0;
  }

  v30[1] = v2;
  v17 = 0;
  v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v34 = a1 + v18;
  v19 = *(v5 + 72);
  v41 = (v5 + 16);
  v42 = v19;
  v31 = a2 + v18;
  v32 = a2;
  while (1)
  {
    v33 = v16;
    v20 = *(a2 + 16);
    if (v20)
    {
      v37 = v17;
      v43 = MEMORY[0x1E69E7CC0];
      sub_1CFBCA9E8(0, v20, 0);
      v21 = v43;
      v40 = *v41;
      v22 = v31;
      do
      {
        v23 = v39;
        v40(v8, v22, v39);
        sub_1CFC9C338();
        (*(v5 + 8))(v8, v23);
        v43 = v21;
        v24 = v13;
        v26 = *(v21 + 16);
        v25 = *(v21 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1CFBCA9E8(v25 > 1, v26 + 1, 1);
          v21 = v43;
        }

        *(v21 + 16) = v26 + 1;
        sub_1CFBCCE88(v24, v21 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v26, &qword_1EC4ED570, &unk_1CFCA2470);
        v22 += v42;
        --v20;
        v13 = v24;
      }

      while (v20);
      a2 = v32;
      v17 = v37;
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
    }

    v27 = v36;
    sub_1CFC9C338();
    v28 = sub_1CFC1D394(v27, v21);

    sub_1CFBC2FB0(v27, &qword_1EC4ED570, &unk_1CFCA2470);
    if (v28)
    {
      break;
    }

    v16 = ++v17 == v35;
    if (v17 == v35)
    {
      return 0;
    }
  }

  return v17;
}

uint64_t sub_1CFC16EEC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v44 - v12;
  v14 = *a4;
  v15 = *(a4 + 8);
  *(v5 + 16) = 1;
  *(v5 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 40) = 0;
  v16 = type metadata accessor for RecentsEditMode(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  sub_1CFC9C188();
  *(v5 + 48) = v19;
  *(v5 + 56) = 0;
  v20 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController____lazy_storage___cellRegistration;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE528, &qword_1CFCA4670);
  (*(*(v21 - 8) + 56))(v5 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController____lazy_storage___mailboxCellRegistration;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE520, &unk_1CFCA4660);
  (*(*(v23 - 8) + 56))(v5 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController____lazy_storage___legacyCellRegistration;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE518, &qword_1CFCA4658);
  (*(*(v25 - 8) + 56))(v5 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController____lazy_storage___accountProvisioningCellRegistration;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE508, &qword_1CFCA4648);
  (*(*(v27 - 8) + 56))(v5 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController____lazy_storage___headerRegistration;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE018, &unk_1CFCA4680);
  (*(*(v29 - 8) + 56))(v5 + v28, 1, 1, v29);
  *(v5 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_contactActionsController) = 0;
  v30 = v5 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_legacyMailboxService;
  *v30 = 0u;
  *(v30 + 16) = 0u;
  *(v30 + 32) = 0;
  *(v5 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_cancellables) = MEMORY[0x1E69E7CD0];
  v31 = MEMORY[0x1E69E7CC0];
  *(v5 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_legacyMailboxes) = MEMORY[0x1E69E7CC0];
  *(v5 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_voicemails) = v31;
  *(v5 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_items) = v31;
  v32 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_selectedItem;
  v33 = sub_1CFC9C448();
  (*(*(v33 - 8) + 56))(v5 + v32, 1, 1, v33);
  *(v5 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_selectedCell) = 0;
  *(v5 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_dataSource) = a1;
  *(v5 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_detailsPresenter) = a2;
  v34 = v5 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_displayMode;
  *v34 = v14;
  *(v34 + 8) = v15;
  swift_beginAccess();
  a1;

  sub_1CFC181AC(a3, v30);
  swift_endAccess();
  v35 = sub_1CFC9C878();
  v36 = type metadata accessor for RecentsRemindMeActionConfigurator();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  *(v5 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_remindMeActionConfigurator) = RecentsRemindMeActionConfigurator.init(recentsReminderActionProvider:)(v35);
  sub_1CFC0EA70();
  v39 = sub_1CFC9F998();
  (*(*(v39 - 8) + 56))(v13, 1, 1, v39);
  sub_1CFC9F968();

  v40 = sub_1CFC9F958();
  v41 = swift_allocObject();
  v42 = MEMORY[0x1E69E85E0];
  v41[2] = v40;
  v41[3] = v42;
  v41[4] = v5;
  sub_1CFBDC030(0, 0, v13, &unk_1CFCA4968, v41);

  sub_1CFBC2FB0(a3, &qword_1EC4EE538, qword_1CFCA9BD0);
  return v5;
}

id _s10CallsAppUI27VoicemailsSectionControllerC21dragPreviewParameters4cellSo06UIDraghI0CSgSo20UICollectionViewCellC_tF_0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC9A0]) init];
  v10 = MEMORY[0x1E69E63B0];
  LOBYTE(v8) = 2;
  sub_1CFC9CD28();
  v3 = v2;
  [a1 bounds];
  v4 = CGRectGetWidth(v13) - v12;
  [a1 bounds];
  Height = CGRectGetHeight(v14);
  v11 = MEMORY[0x1E69E7DE0];
  LOBYTE(v9) = 2;
  sub_1CFC9CD28();
  v6 = [objc_opt_self() bezierPathWithRoundedRect:v12 cornerRadius:{0.0, v4, Height, v12, sub_1CFBCCF10, 0, sub_1CFBCCF10, 0, sub_1CFBCCF10, 0, v9, v11}];
  [v3 setVisiblePath_];

  return v3;
}

uint64_t sub_1CFC17624(uint64_t a1)
{
  result = sub_1CFBB7418(&qword_1EC4EE560, type metadata accessor for VoicemailsSectionController.Item);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CFC17680()
{
  result = qword_1EC4EE568;
  if (!qword_1EC4EE568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE568);
  }

  return result;
}

uint64_t sub_1CFC1771C(uint64_t a1)
{
  result = sub_1CFBB7418(&qword_1EC4EFAC0, type metadata accessor for VoicemailsSectionController);
  *(a1 + 8) = result;
  return result;
}

void sub_1CFC1779C()
{
  sub_1CFC17E50(319, &qword_1EE04D0C0, &qword_1EC4EE528, &qword_1CFCA4670);
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    sub_1CFC17E50(319, &qword_1EE04D0A0, &qword_1EC4EE520, &unk_1CFCA4660);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      sub_1CFC17E50(319, &qword_1EE04D0A8, &qword_1EC4EE518, &qword_1CFCA4658);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        sub_1CFC17E50(319, &qword_1EE04D098, &qword_1EC4EE508, &qword_1CFCA4648);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          sub_1CFC17E50(319, &qword_1EE04D078, &qword_1EC4EE018, &unk_1CFCA4680);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            sub_1CFC17EA4();
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1CFC17E50(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1CFC9FEB8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1CFC17EA4()
{
  if (!qword_1EE04D6B8)
  {
    sub_1CFC9C448();
    v0 = sub_1CFC9FEB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE04D6B8);
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

uint64_t sub_1CFC17F1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1CFC17F64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_1CFC18014()
{
  sub_1CFC9C448();
  if (v0 <= 0x3F)
  {
    sub_1CFC18090();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1CFC18090()
{
  if (!qword_1EC4EE588)
  {
    type metadata accessor for LegacyMailbox(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC4EE588);
    }
  }
}

uint64_t getEnumTagSinglePayload for VoicemailsSectionController.MailboxItem(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 2);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for VoicemailsSectionController.MailboxItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 2) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1CFC181AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE538, qword_1CFCA9BD0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC1821C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1CFBD431C;

  return sub_1CFC0DF48();
}

uint64_t sub_1CFC182D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(1);
}

void sub_1CFC18310()
{
  v1 = *(sub_1CFC9C448() - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);
  sub_1CFC88D6C(v2);
}

uint64_t sub_1CFC18374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFC183DC@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(sub_1CFC9C448() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1CFC0BA94(v4, v5, v6, a1);
}

uint64_t sub_1CFC1845C@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 18))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v1 + 24);
  return sub_1CFC0C724(v2 | *(v1 + 16), *(v1 + 32), *(v1 + 40), a1);
}

unint64_t sub_1CFC18480()
{
  result = qword_1EC4EE5B8;
  if (!qword_1EC4EE5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE5B8);
  }

  return result;
}

uint64_t sub_1CFC18508()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE530, &qword_1CFCA4678) - 8);
  v2 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_1CFC0D018(v0 + 16, v2);
}

uint64_t sub_1CFC18580@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = swift_allocObject();
  result = swift_weakInit();
  *a1 = sub_1CFC18634;
  a1[1] = v2;
  return result;
}

unint64_t sub_1CFC185E0()
{
  result = qword_1EC4EE5F0;
  if (!qword_1EC4EE5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE5F0);
  }

  return result;
}

uint64_t sub_1CFC1863C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v9 = *(sub_1CFC9C448() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_1CFC11CE8(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_1CFC186D8(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470);
  v72 = *(v4 - 8);
  v5 = *(v72 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v60 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v55 - v8;
  v10 = sub_1CFC9C448();
  v64 = *(v10 - 8);
  v11 = *(v64 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v55 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v55 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v55 - v21;
  v23 = a1;
  v24 = *a1;
  v25 = v76;
  result = sub_1CFC16B90(v24, a2);
  if (v25)
  {
    return v24;
  }

  v63 = a2;
  v28 = v24;
  v67 = v22;
  v61 = v17;
  v59 = v14;
  if (v27)
  {
    return *(v24 + 16);
  }

  v56 = v23;
  v29 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v24 = result;
    v30 = v28;
    v55[1] = 0;
    v31 = v64;
    v75 = v64 + 16;
    v73 = (v64 + 8);
    v57 = v10;
    v58 = (v64 + 40);
    v32 = v67;
    v62 = v9;
    while (1)
    {
      v35 = v30[2];
      if (v29 == v35)
      {
        return v24;
      }

      if (v29 >= v35)
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        break;
      }

      v36 = v9;
      v69 = v30;
      v70 = v24;
      v37 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v38 = *(v31 + 72);
      v71 = v29;
      v74 = v38;
      v39 = *(v31 + 16);
      v68 = v38 * v29;
      v66 = v30 + v37;
      v76 = v39;
      v39(v32, v30 + v37 + v38 * v29, v10);
      v40 = v63;
      v41 = *(v63 + 16);
      v65 = v37;
      if (v41)
      {
        v42 = v10;
        v77 = MEMORY[0x1E69E7CC0];
        sub_1CFBCA9E8(0, v41, 0);
        v43 = v76;
        v44 = v77;
        v45 = v40 + v37;
        v46 = v60;
        do
        {
          v43(v20, v45, v42);
          sub_1CFC9C338();
          (*v73)(v20, v42);
          v77 = v44;
          v48 = *(v44 + 16);
          v47 = *(v44 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_1CFBCA9E8(v47 > 1, v48 + 1, 1);
            v44 = v77;
          }

          *(v44 + 16) = v48 + 1;
          sub_1CFBCCE88(v46, v44 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v48, &qword_1EC4ED570, &unk_1CFCA2470);
          v45 += v74;
          --v41;
          v43 = v76;
        }

        while (v41);
        v9 = v62;
        v10 = v42;
        v31 = v64;
      }

      else
      {
        v44 = MEMORY[0x1E69E7CC0];
        v9 = v36;
      }

      v32 = v67;
      sub_1CFC9C338();
      v49 = sub_1CFC1D394(v9, v44);

      sub_1CFBC2FB0(v9, &qword_1EC4ED570, &unk_1CFCA2470);
      result = (*v73)(v32, v10);
      v24 = v70;
      if (v49)
      {
        v30 = v69;
        v33 = v71;
      }

      else
      {
        v33 = v71;
        result = v61;
        v30 = v69;
        if (v70 != v71)
        {
          if ((v70 & 0x8000000000000000) != 0)
          {
            goto LABEL_33;
          }

          v50 = v69[2];
          if (v70 >= v50)
          {
            goto LABEL_34;
          }

          v51 = v66;
          v74 *= v70;
          v52 = v76;
          result = (v76)(v61, &v66[v74], v10);
          if (v71 >= v50)
          {
            goto LABEL_35;
          }

          v52(v59, &v51[v68], v10);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_1CFC829D4(v30);
          }

          v31 = v64;
          v53 = v30 + v65;
          v54 = *v58;
          v10 = v57;
          result = (*v58)(v30 + v65 + v74, v59, v57);
          v33 = v71;
          if (v71 >= v30[2])
          {
            goto LABEL_36;
          }

          result = v54(&v53[v68], v61, v10);
          *v56 = v30;
          v32 = v67;
          v9 = v62;
        }

        v34 = __OFADD__(v24++, 1);
        if (v34)
        {
          goto LABEL_32;
        }
      }

      v34 = __OFADD__(v33, 1);
      v29 = v33 + 1;
      if (v34)
      {
        goto LABEL_31;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFC18C50(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CFC9DB68();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VoicemailsSectionController.Item(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9CD28();
  sub_1CFC09700(a2, v11, type metadata accessor for VoicemailsSectionController.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1CFC16B30(v11, type metadata accessor for LegacyMailbox);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v13 = MEMORY[0x1E69DC178];
    if (!v11[2])
    {
      v13 = MEMORY[0x1E69DC180];
    }

    (*(v4 + 104))(v7, *v13, v3);
    sub_1CFC9DB48();
  }

  else
  {
    sub_1CFC9CD28();
    sub_1CFC16B30(v11, type metadata accessor for VoicemailsSectionController.Item);
  }

  return sub_1CFC9DB58();
}

unint64_t sub_1CFC18FBC()
{
  result = qword_1EE04FF90;
  if (!qword_1EE04FF90)
  {
    sub_1CFBA2D80(255, &qword_1EE04FF80, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04FF90);
  }

  return result;
}

uint64_t sub_1CFC19034(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFC0E310(a1, v4, v5, v6);
}

id static CAUILayoutManager.shared.getter()
{
  if (qword_1EE04CFB0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE04CFB8;

  return v1;
}

id static CAUILayoutManager.classicAvailable.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1)
  {
    return 0;
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v4 = [v3 phoneClassicEnabled];

  return v4;
}

void sub_1CFC19218(uint64_t a1)
{
  v2 = v1;
  sub_1CFBA2114();
  v5 = v4;
  v6 = [v2 current];
  v7 = *&v2[OBJC_IVAR___CAUILayoutManager_layoutKey];
  v8 = *&v2[OBJC_IVAR___CAUILayoutManager_layoutKey + 8];
  v9 = sub_1CFC9F728();
  [v5 setInteger:v6 forKey:v9];

  v10 = OBJC_IVAR___CAUILayoutManager__current;
  if (*&v2[OBJC_IVAR___CAUILayoutManager__current] != a1)
  {
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v11 = sub_1CFC9D938();
    __swift_project_value_buffer(v11, qword_1EE052308);
    v12 = v2;
    v13 = sub_1CFC9D918();
    v14 = sub_1CFC9FAF8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v27[0] = v16;
      *v15 = 136315138;
      *&v25 = *&v2[v10];
      type metadata accessor for CAUILayout(0);
      v17 = sub_1CFC9F798();
      v19 = sub_1CFBB531C(v17, v18, v27);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1CFB9F000, v13, v14, "Current CAUILayout changed to %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1D3873280](v16, -1, -1);
      MEMORY[0x1D3873280](v15, -1, -1);
    }

    v20 = [*&v12[OBJC_IVAR___CAUILayoutManager_observers] objectEnumerator];
    if (v20)
    {
      v21 = v20;
      while (1)
      {
        if ([v21 nextObject])
        {
          sub_1CFC9FF18();
          swift_unknownObjectRelease();
        }

        else
        {
          v25 = 0u;
          v26 = 0u;
        }

        v27[0] = v25;
        v27[1] = v26;
        if (!*(&v26 + 1))
        {

          sub_1CFBA235C(v27);
          return;
        }

        _s24LayoutUpdateRegistrationCMa();
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v23 = *(v24 + 16);
        v22 = *(v24 + 24);

        v23([v12 current]);
      }
    }
  }
}

uint64_t CAUILayoutManager.tapRecentsToCall.getter()
{
  if ([v0 current] == 1)
  {
    return v0[OBJC_IVAR___CAUILayoutManager__tapRecentsToCall];
  }

  else
  {
    return 1;
  }
}

id CAUILayoutManager.shouldShowTip.getter()
{
  sub_1CFBA2114();
  v2 = v1;
  v3 = *(v0 + OBJC_IVAR___CAUILayoutManager_layoutKey);
  v4 = *(v0 + OBJC_IVAR___CAUILayoutManager_layoutKey + 8);
  v5 = sub_1CFC9F728();
  v6 = [v2 objectForKey_];

  if (v6)
  {
    sub_1CFC9FF18();
    swift_unknownObjectRelease();
    sub_1CFBA235C(v12);
    return 0;
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    sub_1CFBA235C(v12);
    v8 = [objc_opt_self() currentDevice];
    v9 = [v8 userInterfaceIdiom];

    if (v9)
    {
      return 0;
    }

    else
    {
      v10 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
      v11 = [v10 phoneClassicEnabled];

      return v11;
    }
  }
}

uint64_t sub_1CFC19644()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t CAUILayoutManager.addObserver(_:onUpdate:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_1CFCA02A8();
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1CFBA296C;
  v9[3] = &block_descriptor_8;
  v7 = _Block_copy(v9);

  [v3 addObserver:v6 initialUpdate:1 onUpdate:v7];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

uint64_t CAUILayoutManager.addObserver(_:initialUpdate:onUpdate:)(void *a1, char a2, uint64_t (*a3)(id), uint64_t a4)
{
  v9 = *&v4[OBJC_IVAR___CAUILayoutManager_observers];
  _s24LayoutUpdateRegistrationCMa();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v9;

  [v11 setObject:v10 forKey:sub_1CFCA02A8()];

  result = swift_unknownObjectRelease();
  if (a2)
  {
    return a3([v4 current]);
  }

  return result;
}

uint64_t CAUILayoutManager.removeObserver(_:)(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___CAUILayoutManager_observers);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = v2;
  [v3 removeObjectForKey_];

  return swift_unknownObjectRelease();
}

unint64_t type metadata accessor for CAUILayoutManager()
{
  result = qword_1EC4EE668;
  if (!qword_1EC4EE668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4EE668);
  }

  return result;
}

uint64_t sub_1CFC19A44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1CFC19A8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CFC19AF4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE678, &qword_1CFCA4C00);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v24 - v7;
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_1CFC9BE28();
  v13 = v12;

  v24[0] = v11;
  v24[1] = v13;
  sub_1CFBB4460();
  v14 = sub_1CFC9EDF8();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  *v8 = sub_1CFC9E588();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE680, &qword_1CFCA4C08);
  sub_1CFC19D2C(&v8[*(v21 + 44)]);
  sub_1CFC19FE0(v8, v6);
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE688, &unk_1CFCA4C10);
  sub_1CFC19FE0(v6, a1 + *(v22 + 48));
  sub_1CFBB45F4(v14, v16, v18 & 1);

  sub_1CFC1A050(v8);
  sub_1CFC1A050(v6);
  sub_1CFBB44C0(v14, v16, v18 & 1);
}

uint64_t sub_1CFC19D2C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF670, &qword_1CFCA3640);
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - v8;
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_1CFC9BE28();
  v14 = v13;

  v20[0] = v12;
  v20[1] = v14;
  sub_1CFBB4460();

  sub_1CFC9F2C8();
  v15 = v3[2];
  v15(v7, v9, v2);
  *a1 = 0;
  *(a1 + 8) = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE690, &qword_1CFCA4C20);
  v15((a1 + *(v16 + 48)), v7, v2);
  v17 = a1 + *(v16 + 64);
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v3[1];
  v18(v9, v2);
  return (v18)(v7, v2);
}

uint64_t sub_1CFC19F7C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_1CFC9E688();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE670, &qword_1CFCA4BF8);
  return sub_1CFC19AF4(a1 + *(v5 + 44));
}

uint64_t sub_1CFC19FE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE678, &qword_1CFCA4C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC1A050(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE678, &qword_1CFCA4C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CFC1A0B8()
{
  result = qword_1EC4EE698;
  if (!qword_1EC4EE698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE6A0, &qword_1CFCA4C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE698);
  }

  return result;
}

void *sub_1CFC1A11C(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = 0;
    do
    {
      v14 = result;
      for (i = v8; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v10 = sub_1CFC9C488();
        v12 = *(v10 - 8);
        result = (v10 - 8);
        v11 = v12;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v15, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
        if (v3)
        {

          return v14;
        }

        if (v15)
        {
          break;
        }

        if (v8 == v6)
        {
          return v14;
        }
      }

      MEMORY[0x1D3871DC0](result);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1CFC9F8C8();
      }

      sub_1CFC9F8F8();
      result = v16;
    }

    while (v8 != v6);
  }

  return result;
}

void sub_1CFC1A29C(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v11 = a2;
  v10 = a3;
  v7(v11, v10, sub_1CFC1D374, v9);
}

id sub_1CFC1A370(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
  v5 = v4;

  if (v5)
  {
    v6 = sub_1CFC9F728();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t RecentsRemindMeActionConfigurator.__allocating_init(recentsReminderActionProvider:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  RecentsRemindMeActionConfigurator.init(recentsReminderActionProvider:)(a1);
  return v5;
}

uint64_t sub_1CFC1A434()
{
  v1 = v0 + OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1CFC1A484(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1CFC1A4F0(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1CFC1A590;
}

void sub_1CFC1A590(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

char *RecentsRemindMeActionConfigurator.init(recentsReminderActionProvider:)(uint64_t a1)
{
  *(v1 + 3) = 0;
  *(v1 + 4) = 0;
  *(v1 + 5) = 0;
  v3 = OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_reminderCreationModule;
  v4 = sub_1CFC9D398();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_item;
  v6 = sub_1CFC9C448();
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_featureFlags;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v8 = OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_staticReminderTimes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6B0, &qword_1CFCA4C50);
  v9 = sub_1CFC9C488();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1CFCA4C30;
  v14 = v13 + v12;
  v15 = *(v10 + 104);
  v15(v14, *MEMORY[0x1E69936C0], v9);
  v15(v14 + v11, *MEMORY[0x1E69936C8], v9);
  v15(v14 + 2 * v11, *MEMORY[0x1E69936D0], v9);
  *&v1[v8] = v13;
  *&v1[OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 2) = a1;
  return v1;
}

id sub_1CFC1A858(uint64_t a1)
{
  if (![*(v1 + OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_featureFlags) callRemindersEnabled] || (sub_1CFC9C388() & 1) == 0)
  {
    return 0;
  }

  v3 = MEMORY[0x1D386E860]();
  v4 = swift_allocObject();
  swift_weakInit();
  v26 = sub_1CFC1AD24;
  v27 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1CFC1A29C;
  v25 = &block_descriptor_9;
  v5 = _Block_copy(&aBlock);
  v6 = objc_opt_self();

  v7 = [v6 contextualActionWithStyle:0 title:0 handler:v5];
  _Block_release(v5);

  v8 = objc_opt_self();
  v10 = sub_1CFC9F728();
  v11 = [v8 __systemImageNamedSwift_];

  [v7 setImage_];
  v12 = [objc_opt_self() systemBlueColor];
  [v7 setBackgroundColor_];

  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  sub_1CFC9BE28();

  v15 = sub_1CFC1AD50(v3 & 1, a1);
  v16 = v15;
  if (v15 >> 62)
  {
    sub_1CFBA2D80(0, &qword_1EE04D0E0, 0x1E69DCC78);
    v17 = sub_1CFCA01E8();
  }

  else
  {

    sub_1CFCA02C8();
    sub_1CFBA2D80(0, &qword_1EE04D0E0, 0x1E69DCC78);
    v17 = v16;
  }

  sub_1CFBA2D80(0, &unk_1EE04CF40, 0x1E69DCC60);
  v21 = v17;
  v18 = sub_1CFC9FD68();
  [v7 _setMenu_];

  v26 = sub_1CFC1AD2C;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1CFC1A370;
  v25 = &block_descriptor_3;
  v19 = _Block_copy(&aBlock);
  v20 = v7;
  [v20 setAccessibilityIdentifierBlock_];
  _Block_release(v19);

  return v20;
}

uint64_t sub_1CFC1AC88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + 24);
    *(result + 24) = a2;
    v9 = result;
    v10 = a2;

    v11 = *(v9 + 32);
    v12 = *(v9 + 40);
    *(v9 + 32) = a3;
    *(v9 + 40) = a4;

    sub_1CFBB2564(v11, v12);
  }

  return result;
}

uint64_t sub_1CFC1AD50(char a1, uint64_t a2)
{
  v62 = sub_1CFC9C448();
  v4 = *(v62 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v63 = v6;
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6D8, &qword_1CFCA4DB8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6E0, &qword_1CFCA4DC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v52 - v14;
  v16 = sub_1CFC9C488();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v7;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1CFCA3B40;
    v58 = sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v57 = ObjCClassFromMetadata;
    v56 = objc_opt_self();
    v23 = [v56 bundleForClass_];
    v50 = 0xE000000000000000;
    sub_1CFC9BE28();

    v24 = a2;
    v54 = a2;
    v25 = v4;
    v26 = v62;
    v55 = *(v25 + 16);
    v55(v7, v24, v62);
    v27 = v7;
    v28 = (*(v25 + 80) + 24) & ~*(v25 + 80);
    v29 = swift_allocObject();
    v30 = v60;
    *(v29 + 16) = v60;
    v53 = *(v25 + 32);
    v53(v29 + v28, v27, v26);

    *(v59 + 32) = sub_1CFC9FDF8();
    v31 = [v56 bundleForClass_];
    sub_1CFC9BE28();

    v32 = v61;
    v55(v61, v54, v26);
    v33 = swift_allocObject();
    *(v33 + 16) = v30;
    v53(v33 + v28, v32, v26);

    v49 = sub_1CFC1D1C8;
    v50 = v33;
    v48 = 0;
    v34 = sub_1CFC9FDF8();
    result = v59;
    *(v59 + 40) = v34;
  }

  else
  {
    v36 = v60;
    v37 = *(v60 + OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_staticReminderTimes);
    MEMORY[0x1EEE9AC00](v19);
    v50 = v36;
    v51 = a2;
    v64 = sub_1CFC1A11C(sub_1CFC1D1E0, &v48, v38);
    sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
    v39 = sub_1CFC9C078();
    (*(*(v39 - 8) + 56))(v15, 1, 1, v39);
    v40 = sub_1CFC9C0B8();
    (*(*(v40 - 8) + 56))(v11, 1, 1, v40);
    LOBYTE(v51) = 1;
    v50 = 0;
    LOBYTE(v49) = 1;
    v48 = 0;
    sub_1CFC9BDD8();
    (*(v17 + 104))(v21, *MEMORY[0x1E69936B8], v16);
    sub_1CFC9C468();
    (*(v17 + 8))(v21, v16);
    v41 = v61;
    v42 = a2;
    v43 = v62;
    (*(v4 + 16))(v61, v42, v62);
    v44 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = v36;
    (*(v4 + 32))(v45 + v44, v41, v43);

    v49 = sub_1CFC1D1FC;
    v50 = v45;
    v48 = 0;
    v46 = sub_1CFC9FDF8();
    MEMORY[0x1D3871DC0]();
    if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v47 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1CFC9F8C8();
    }

    sub_1CFC9F8F8();

    return v64;
  }

  return result;
}

uint64_t sub_1CFC1B520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v27 = a3;
  v29 = a2;
  v30 = a4;
  v28 = sub_1CFC9C488();
  v6 = *(v28 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v8 = sub_1CFC9C448();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CFC9C478();
  result = 0;
  if (v12)
  {
    v26 = sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
    v14 = sub_1CFC9C468();
    v24 = v15;
    v25 = v14;
    (*(v9 + 16))(&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v8);
    v16 = *(v6 + 16);
    v23 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = v28;
    v16(v23, a1, v28);
    v18 = *(v9 + 80);
    v27 = v4;
    v19 = (v18 + 24) & ~v18;
    v20 = (v10 + *(v6 + 80) + v19) & ~*(v6 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v29;
    (*(v9 + 32))(v21 + v19, v11, v8);
    (*(v6 + 32))(v21 + v20, v23, v17);

    result = sub_1CFC9FDF8();
  }

  *v30 = result;
  return result;
}

uint64_t sub_1CFC1B7C0(uint64_t a1, void *a2)
{
  v3 = a2[2];
  result = sub_1CFC9CB38();
  v5 = a2[4];
  if (v5)
  {
    v6 = a2[5];

    v5(1);
    sub_1CFBB2564(v5, v6);
    v7 = a2[4];
    v8 = a2[5];
    a2[4] = 0;
    a2[5] = 0;

    return sub_1CFBB2564(v7, v8);
  }

  return result;
}

void sub_1CFC1B850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 8))(ObjectType, v5);
    swift_unknownObjectRelease();
    if (v7)
    {
      v8 = v7;
      sub_1CFC1BAE8(a3, v7);
    }
  }
}

uint64_t sub_1CFC1B90C(uint64_t a1, void *a2)
{
  v4 = a2 + 4;
  v3 = a2[4];
  if (v3)
  {
    v5 = a2[5];

    v3(1);
    sub_1CFBB2564(v3, v5);
    v6 = a2[4];
    v7 = a2[5];
    *v4 = 0;
    v4[1] = 0;
    sub_1CFBB2564(v6, v7);
  }

  v8 = a2[2];
  return sub_1CFC9CB28();
}

uint64_t sub_1CFC1B988(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED500, &qword_1CFCA2420);
  v6 = sub_1CFC9C448();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1CFCA1DD0;
  (*(v7 + 16))(v10 + v9, a3, v6);
  sub_1CFC9CB18();

  v12 = a2[4];
  if (v12)
  {
    v13 = a2[5];

    v12(1);
    sub_1CFBB2564(v12, v13);
    v14 = a2[4];
    v15 = a2[5];
    a2[4] = 0;
    a2[5] = 0;

    return sub_1CFBB2564(v14, v15);
  }

  return result;
}

uint64_t sub_1CFC1BAE8(uint64_t a1, void *a2)
{
  v98 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6B8, &unk_1CFCA4C58);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v89 = &v74 - v5;
  v6 = sub_1CFC9D398();
  v91 = *(v6 - 8);
  v92 = v6;
  v7 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v90 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFAB0, &qword_1CFCA4DA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v84 = &v74 - v11;
  v12 = sub_1CFC9BF28();
  v13 = *(v12 - 8);
  v82 = v12;
  v83 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6C8, &unk_1CFCA4DA8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v81 = &v74 - v18;
  v19 = sub_1CFC9D3D8();
  v87 = *(v19 - 8);
  v88 = v19;
  v20 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v79 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1CFC9C488();
  v78 = *(v80 - 8);
  v22 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v77 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1CFC9C448();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v76 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1CFC9C768();
  v85 = *(v28 - 8);
  v86 = v28;
  v29 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v94 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1CFC9BFB8();
  v31 = *(v75 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v34 = &v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1CFC9BDE8();
  v96 = *(v93 - 8);
  v35 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v37 = &v74 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v41 = &v74 - v40;
  v42 = *(v25 + 16);
  v42(&v74 - v40, a1, v24);
  (*(v25 + 56))(v41, 0, 1, v24);
  v43 = OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_item;
  v44 = v97;
  swift_beginAccess();
  sub_1CFBA735C(v41, v44 + v43, &qword_1EC4EE368, &unk_1CFCA4040);
  swift_endAccess();
  swift_unknownObjectWeakAssign();
  type metadata accessor for RecentsRemindMeActionConfigurator();
  sub_1CFC9BFA8();
  v45 = v37;
  v95 = v37;
  sub_1CFC1C59C(v37);
  (*(v31 + 8))(v34, v75);
  v46 = v24;
  v47 = v93;
  v42(v76, a1, v46);
  v48 = v79;
  v49 = v96;
  v50 = *(v96 + 16);
  v51 = v77;
  v50(v77, v45, v47);
  (*(v78 + 104))(v51, *MEMORY[0x1E69936B8], v80);
  sub_1CFC9C748();
  sub_1CFC9D3C8();
  sub_1CFC9C758();
  v52 = sub_1CFC9D3B8();
  v53 = v82;
  sub_1CFC9D408();
  v52(v99, 0);
  v54 = v83;
  v55 = v81;
  v50(v81, v95, v47);
  (*(v49 + 56))(v55, 0, 1, v47);
  v56 = sub_1CFC9D3B8();
  sub_1CFC9D3F8();
  v56(v99, 0);
  v57 = v84;
  sub_1CFC9C738();
  if ((*(v54 + 48))(v57, 1, v53) == 1)
  {
    sub_1CFBC2FB0(v57, &qword_1EC4EFAB0, &qword_1CFCA4DA0);
  }

  else
  {
    v58 = v74;
    (*(v54 + 32))(v74, v57, v53);
    v59 = objc_allocWithZone(MEMORY[0x1E69C6D30]);
    v60 = sub_1CFC9BEE8();
    [v59 initWithUniversalLink_];

    v61 = sub_1CFC9D3B8();
    sub_1CFC9D3E8();
    v61(v99, 0);
    (*(v54 + 8))(v58, v53);
  }

  v62 = v90;
  sub_1CFC9D3A8();
  v63 = sub_1CFC9D378();
  v64 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];

  v65 = v64;
  [v65 setModalPresentationStyle_];
  sub_1CFC9D388();
  swift_getObjectType();
  sub_1CFC1D0E8();
  v66 = v97;
  swift_unknownObjectRetain();
  sub_1CFC9D418();
  swift_unknownObjectRelease();
  v67 = [v65 popoverPresentationController];

  if (v67)
  {
    v68 = *(v66 + 24);
    [v67 setSourceView_];
  }

  v70 = v91;
  v69 = v92;
  v71 = v89;
  (*(v91 + 16))(v89, v62, v92);
  (*(v70 + 56))(v71, 0, 1, v69);
  v72 = OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_reminderCreationModule;
  swift_beginAccess();
  sub_1CFBA735C(v71, v66 + v72, &qword_1EC4EE6B8, &unk_1CFCA4C58);
  swift_endAccess();
  if (v98)
  {
    [v98 presentViewController:v65 animated:1 completion:0];
  }

  (*(v70 + 8))(v62, v69);
  (*(v87 + 8))(v48, v88);
  (*(v85 + 8))(v94, v86);
  return (*(v96 + 8))(v95, v93);
}

uint64_t sub_1CFC1C59C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_1CFC9C038();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFC9C078();
  v22 = *(v6 - 8);
  v23 = v6;
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CFC9BFB8();
  v10 = *(v21 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9BF58();
  (*(v2 + 104))(v5, *MEMORY[0x1E6969868], v1);
  sub_1CFC9C048();
  (*(v2 + 8))(v5, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6C0, &qword_1CFCA4D98);
  v14 = sub_1CFC9C068();
  v15 = *(v14 - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1CFCA4C40;
  v19 = *(v15 + 104);
  v19(v18 + v17, *MEMORY[0x1E6969AB8], v14);
  v19(v18 + v17 + v16, *MEMORY[0x1E6969A50], v14);
  v19(v18 + v17 + 2 * v16, *MEMORY[0x1E6969AC0], v14);
  v19(v18 + v17 + 3 * v16, *MEMORY[0x1E6969A68], v14);
  v19(v18 + v17 + 4 * v16, *MEMORY[0x1E6969A78], v14);
  v19(v18 + v17 + 5 * v16, *MEMORY[0x1E6969A48], v14);
  v19(v18 + v17 + 6 * v16, *MEMORY[0x1E6969A58], v14);
  sub_1CFC72714(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1CFC9C058();

  (*(v22 + 8))(v9, v23);
  return (*(v10 + 8))(v13, v21);
}

uint64_t RecentsRemindMeActionConfigurator.deinit()
{
  v1 = *(v0 + 16);

  sub_1CFBB2564(*(v0 + 32), *(v0 + 40));
  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_reminderCreationModule, &qword_1EC4EE6B8, &unk_1CFCA4C58);
  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_item, &qword_1EC4EE368, &unk_1CFCA4040);
  MEMORY[0x1D3873340](v0 + OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_hostViewController);

  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_staticReminderTimes);

  sub_1CFBA79B8(v0 + OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_delegate);
  return v0;
}

uint64_t RecentsRemindMeActionConfigurator.__deallocating_deinit()
{
  RecentsRemindMeActionConfigurator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1CFC1CAD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6B8, &unk_1CFCA4C58);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }

  v11 = sub_1CFC9C448();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_item;
  swift_beginAccess();
  sub_1CFBA735C(v8, v0 + v12, &qword_1EC4EE368, &unk_1CFCA4040);
  swift_endAccess();
  swift_unknownObjectWeakAssign();
  v13 = sub_1CFC9D398();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_reminderCreationModule;
  swift_beginAccess();
  sub_1CFBA735C(v4, v0 + v14, &qword_1EC4EE6B8, &unk_1CFCA4C58);
  swift_endAccess();
  v15 = v0[3];
  v0[3] = 0;

  v16 = v0[4];
  if (v16)
  {
    v17 = v0[5];

    v16(1);
    sub_1CFBB2564(v16, v17);
    v18 = v0[4];
    v19 = v0[5];
    v0[4] = 0;
    v0[5] = 0;
    sub_1CFBB2564(v18, v19);
  }
}

uint64_t sub_1CFC1CD3C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v22 - v9;
  v11 = sub_1CFC9C448();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_item;
  swift_beginAccess();
  sub_1CFC1D140(v1 + v16, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1CFBC2FB0(v10, &qword_1EC4EE368, &unk_1CFCA4040);
  }

  (*(v12 + 32))(v15, v10, v11);
  v18 = *(v1 + 16);
  v19 = [a1 remObjectID];
  v20 = [v19 uuid];

  sub_1CFC9BFE8();
  v21 = sub_1CFC9C008();
  (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
  sub_1CFC9CB48();
  sub_1CFBC2FB0(v6, &qword_1EC4ED570, &unk_1CFCA2470);
  sub_1CFC1CAD0();
  return (*(v12 + 8))(v15, v11);
}

unint64_t sub_1CFC1D0E8()
{
  result = qword_1EC4EE6D0;
  if (!qword_1EC4EE6D0)
  {
    type metadata accessor for RecentsRemindMeActionConfigurator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE6D0);
  }

  return result;
}

uint64_t sub_1CFC1D140(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC1D214(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_1CFC9C448() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_1CFC1D29C(uint64_t a1)
{
  v3 = *(sub_1CFC9C448() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1CFC9C488() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1CFC1B7C0(a1, v7);
}

uint64_t sub_1CFC1D394(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v3 = sub_1CFC9C008();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v33 = &v26 - v10;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE730, &qword_1CFCA51D0);
  v11 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v26 - v12;
  v14 = *(a2 + 16);
  if (!v14)
  {
    return 0;
  }

  v15 = (v4 + 48);
  v26 = (v4 + 32);
  v16 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v17 = *(v8 + 72);
  v30 = (v4 + 8);
  v31 = v17;
  v18 = v28;
  while (1)
  {
    v19 = *(v18 + 48);
    sub_1CFBA29FC(v16, v13, &qword_1EC4ED570, &unk_1CFCA2470);
    sub_1CFBA29FC(v32, &v13[v19], &qword_1EC4ED570, &unk_1CFCA2470);
    v20 = *v15;
    if ((*v15)(v13, 1, v3) == 1)
    {
      break;
    }

    sub_1CFBA29FC(v13, v33, &qword_1EC4ED570, &unk_1CFCA2470);
    if (v20(&v13[v19], 1, v3) == 1)
    {
      (*v30)(v33, v3);
      goto LABEL_4;
    }

    v21 = v27;
    (*v26)(v27, &v13[v19], v3);
    sub_1CFC1FED8(&qword_1EC4EE738, MEMORY[0x1E69695A8]);
    v29 = sub_1CFC9F6F8();
    v22 = v15;
    v23 = *v30;
    v24 = v21;
    v18 = v28;
    (*v30)(v24, v3);
    v23(v33, v3);
    v15 = v22;
    sub_1CFBC2FB0(v13, &qword_1EC4ED570, &unk_1CFCA2470);
    if (v29)
    {
      return 1;
    }

LABEL_5:
    v16 += v31;
    if (!--v14)
    {
      return 0;
    }
  }

  if (v20(&v13[v19], 1, v3) != 1)
  {
LABEL_4:
    sub_1CFBC2FB0(v13, &qword_1EC4EE730, &qword_1CFCA51D0);
    goto LABEL_5;
  }

  sub_1CFBC2FB0(v13, &qword_1EC4ED570, &unk_1CFCA2470);
  return 1;
}

BOOL sub_1CFC1D7A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    v12 = *(a3(0) - 8);
    ++v9;
    v13 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11;
    sub_1CFC1FED8(a4, a5);
  }

  while ((sub_1CFC9F6F8() & 1) == 0);
  return v10 != v11;
}

uint64_t sub_1CFC1D8A8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v3 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__item;
  swift_beginAccess();
  v4 = sub_1CFC9C448();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1CFC1D9A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v4 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__item;
  swift_beginAccess();
  v5 = sub_1CFC9C448();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1CFC1DA98(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1CFC9C448();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_1CFC1DB64(v7);
}

uint64_t sub_1CFC1DB64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1CFC9C448();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__item;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_1CFC1FED8(&qword_1EC4EE740, MEMORY[0x1E6993688]);
  v15[0] = a1;
  LOBYTE(a1) = sub_1CFC9F6F8();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v15[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13 = v15[0];
    v15[-2] = v2;
    v15[-1] = v13;
    v15[1] = v2;
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }

  return (v11)(v15[0], v4);
}

uint64_t sub_1CFC1DE04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFC9C448();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__item;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

void sub_1CFC1DF48(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1CFC1DF78(v2);
}

void sub_1CFC1DF78(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message;
  v5 = *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1CFC9D698();
  v6 = v5;
  v7 = a1;
  v8 = sub_1CFC9FDE8();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t VoicemailDetailContainerViewModel.deleteAction.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_deleteAction);
  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_deleteAction + 8);

  return v1;
}

uint64_t sub_1CFC1E1B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1CFC1E1DC(v4);
}

uint64_t sub_1CFC1E1DC(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__smartActionCustomRanges);
  v3 = v2[1].i64[0];
  if (v3 == *(result + 16))
  {
    if (v3)
    {
      v4 = v2 == result;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
LABEL_10:
      *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__smartActionCustomRanges) = result;
    }

    else
    {
      v5 = v2 + 2;
      v6 = (result + 32);
      while (v3)
      {
        v7 = vmovn_s64(vceqq_s64(*v5, *v6));
        if ((v7.i32[0] & v7.i32[1] & 1) == 0)
        {
          goto LABEL_13;
        }

        ++v5;
        ++v6;
        if (!--v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }

  return result;
}

uint64_t sub_1CFC1E38C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__smartActionMenuItems;
  if (sub_1CFC28368(*(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__smartActionMenuItems), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }
}

uint64_t sub_1CFC1E4FC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__smartActionId;
  swift_beginAccess();
  sub_1CFBA29FC(v1 + v7, v6, &qword_1EC4ED570, &unk_1CFCA2470);
  v8 = sub_1CFC294F0(v6, a1);
  sub_1CFBC2FB0(v6, &qword_1EC4ED570, &unk_1CFCA2470);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }

  else
  {
    sub_1CFBA29FC(a1, v6, &qword_1EC4ED570, &unk_1CFCA2470);
    swift_beginAccess();
    sub_1CFBA735C(v6, v1 + v7, &qword_1EC4ED570, &unk_1CFCA2470);
    swift_endAccess();
  }

  return sub_1CFBC2FB0(a1, &qword_1EC4ED570, &unk_1CFCA2470);
}

uint64_t sub_1CFC1E804(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }

  return result;
}

uint64_t sub_1CFC1E91C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  return *(v2 + *a2);
}

uint64_t sub_1CFC1E9D0@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  *a3 = *(v5 + *a2);
  return result;
}

void sub_1CFC1EAAC(char a1)
{
  v2 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isPlaying[0];
  if (*(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isPlaying[0]) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isPlaying[0]) = a1 & 1;
    swift_getKeyPath();
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
    sub_1CFC9C158();

    if (*(v1 + v2) == 1)
    {
      sub_1CFC27310();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }
}

void sub_1CFC1EC48(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isPlaying[0];
  *(a1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isPlaying[0]) = a2;
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  if (*(a1 + v3) == 1)
  {
    sub_1CFC27310();
  }
}

void *sub_1CFC1ED20(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_1CFC1EDDC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_1CFC1EEA0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1CFC1EED0(v2);
}

void sub_1CFC1EED0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player;
  v5 = *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1CFBA2D80(0, &qword_1EC4EE728, 0x1E6988098);
  v6 = v5;
  v7 = a1;
  v8 = sub_1CFC9FDE8();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_1CFC1F100(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v4 = (v2 + *a2);
  result = *v4;
  v6 = v4[1];
  v7 = v4[2];
  return result;
}

double sub_1CFC1F1BC@<D0>(uint64_t *a1@<X0>, void *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v6 = v5 + *a2;
  v7 = *(v6 + 16);
  *a3 = *v6;
  result = *(v6 + 8);
  *(a3 + 8) = result;
  *(a3 + 16) = v7;
  return result;
}

uint64_t sub_1CFC1F2E0(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = HIDWORD(a2);
  v9 = (v4 + *a4);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  result = sub_1CFC9FD48();
  if (result)
  {
    *v9 = a1;
    *(v9 + 2) = v6;
    *(v9 + 3) = v8;
    v9[2] = a3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }

  return result;
}

uint64_t sub_1CFC1F424@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v3 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__timeObserver;
  swift_beginAccess();
  return sub_1CFBA29FC(v5 + v3, a1, &qword_1EC4EE650, &qword_1CFCA4B10);
}

uint64_t sub_1CFC1F4FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v4 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__timeObserver;
  swift_beginAccess();
  return sub_1CFBA29FC(v3 + v4, a2, &qword_1EC4EE650, &qword_1CFCA4B10);
}

uint64_t sub_1CFC1F5D4(uint64_t a1, uint64_t *a2)
{
  sub_1CFBA29FC(a1, v5, &qword_1EC4EE650, &qword_1CFCA4B10);
  v3 = *a2;
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C148();

  return sub_1CFBC2FB0(v5, &qword_1EC4EE650, &qword_1CFCA4B10);
}

uint64_t sub_1CFC1F6DC(uint64_t a1, uint64_t a2)
{
  sub_1CFBA29FC(a2, v5, &qword_1EC4EE650, &qword_1CFCA4B10);
  v3 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__timeObserver;
  swift_beginAccess();
  sub_1CFBA735C(v5, a1 + v3, &qword_1EC4EE650, &qword_1CFCA4B10);
  return swift_endAccess();
}

uint64_t sub_1CFC1F77C()
{
  v0 = [objc_opt_self() sharedApplication];
  [v0 userInterfaceLayoutDirection];

  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_1CFC9BE28();

  return v3;
}

uint64_t VoicemailDetailContainerViewModel.transcriptPrefix.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_transcriptPrefix);
  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_transcriptPrefix + 8);

  return v1;
}

uint64_t sub_1CFC1F8C8()
{
  v0 = [objc_opt_self() sharedApplication];
  [v0 userInterfaceLayoutDirection];

  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_1CFC9BE28();

  return v3;
}

uint64_t VoicemailDetailContainerViewModel.transcriptSuffix.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_transcriptSuffix);
  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_transcriptSuffix + 8);

  return v1;
}

uint64_t sub_1CFC1FA14()
{
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v1 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CFC9D618();

  return v3;
}

uint64_t type metadata accessor for VoicemailDetailContainerViewModel()
{
  result = qword_1EE04DF60;
  if (!qword_1EE04DF60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFC1FB4C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6E8, &qword_1CFCA4E08);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v27 - v4;
  v6 = sub_1CFC9D6A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  swift_getKeyPath();
  v31 = v0;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v13 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message;
  v14 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message);
  if (v14)
  {
    v28 = v7;
    v29 = v6;
    v15 = v14;
    v16 = sub_1CFC9D618();
    v18 = v17;

    v14 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v14 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      swift_getKeyPath();
      v31 = v1;
      sub_1CFC9C158();

      v19 = *(v1 + v13);
      if (v19)
      {
        v20 = v19;
        sub_1CFC9D638();

        v22 = v28;
        v21 = v29;
        if ((*(v28 + 48))(v5, 1, v29) != 1)
        {
          (*(v22 + 32))(v12, v5, v21);
          v23 = v30;
          (*(v22 + 104))(v30, *MEMORY[0x1E699BF28], v21);
          sub_1CFC1FED8(&qword_1EC4EE6F0, MEMORY[0x1E699BF40]);
          v24 = sub_1CFC9F6F8();
          v25 = *(v22 + 8);
          v25(v23, v21);
          v25(v12, v21);
          LOBYTE(v14) = v24 ^ 1;
          return v14 & 1;
        }
      }

      else
      {
        (*(v28 + 56))(v5, 1, 1, v29);
      }

      sub_1CFBC2FB0(v5, &qword_1EC4EE6E8, &qword_1CFCA4E08);
      LOBYTE(v14) = 1;
    }
  }

  return v14 & 1;
}

uint64_t sub_1CFC1FED8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFC1FF20()
{
  v1 = 206967550000;
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_timeIntervalFormatter);
    v4 = v2;
    sub_1CFC9D678();
    v5 = [v3 stringFromTimeInterval_];
    if (v5)
    {
      v6 = v5;
      v1 = sub_1CFC9F768();
    }

    else
    {
    }
  }

  return v1;
}

uint64_t sub_1CFC20038()
{
  v1 = v0;
  v2 = sub_1CFC9C318();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CFC9C448();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v18 = v0;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v12 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__item;
  swift_beginAccess();
  (*(v8 + 16))(v11, v1 + v12, v7);
  sub_1CFC9C3B8();
  (*(v8 + 8))(v11, v7);
  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E6993658])
  {
    (*(v3 + 96))(v6, v2);
    v13 = *v6;

    v14 = [v13 callerIdLocation];
    v15 = sub_1CFC9F768();

    return v15;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }
}

uint64_t sub_1CFC202E8()
{
  v1 = v0;
  v2 = sub_1CFC9C448();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v30 = v0;
  v7 = sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  if (*(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isUnknownCaller) != 1)
  {
    swift_getKeyPath();
    v30 = v0;
    sub_1CFC9C158();

    v13 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__item;
    swift_beginAccess();
    (*(v3 + 16))(v6, v1 + v13, v2);
    v14 = sub_1CFC9C428();
    (*(v3 + 8))(v6, v2);
    if (v14 >> 62)
    {
      if (sub_1CFC9FFD8())
      {
        goto LABEL_6;
      }
    }

    else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1D3872640](0, v14);
      }

      else
      {
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_33;
        }

        v15 = *(v14 + 32);
      }

      v2 = v15;

      swift_getKeyPath();
      v29 = v1;
      sub_1CFC9C158();

      v16 = *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message);
      if (!v16)
      {
        goto LABEL_38;
      }

      v17 = v16;
      v14 = sub_1CFC9D5F8();

      if (!v14)
      {
        goto LABEL_38;
      }

      v18 = [v14 type];
      if (v18 == 2)
      {
        v23 = [v2 phoneNumbers];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED8D0, &unk_1CFCA4E60);
        v24 = sub_1CFC9F8A8();

        if (v24 >> 62)
        {
          result = sub_1CFC9FFD8();
          if (!result)
          {
            goto LABEL_36;
          }
        }

        else
        {
          result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!result)
          {
            goto LABEL_36;
          }
        }

        if ((v24 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x1D3872640](0, v24);
        }

        else
        {
          if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v25 = *(v24 + 32);
        }

        v21 = v25;

        v22 = [v21 label];
        if (v22)
        {
LABEL_26:
          v26 = v22;
          v27 = [objc_opt_self() localizedStringForLabel_];

          v28 = sub_1CFC9F768();
          return v28;
        }

        goto LABEL_28;
      }

      if (v18 == 3)
      {
        v19 = [v2 emailAddresses];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED8D0, &unk_1CFCA4E60);
        v7 = sub_1CFC9F8A8();

        if (!(v7 >> 62))
        {
          result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result)
          {
LABEL_15:
            if ((v7 & 0xC000000000000001) != 0)
            {
              v20 = MEMORY[0x1D3872640](0, v7);
LABEL_18:
              v21 = v20;

              v22 = [v21 label];
              if (v22)
              {
                goto LABEL_26;
              }

LABEL_28:

LABEL_37:
LABEL_38:

              return 0;
            }

            if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v20 = *(v7 + 32);
              goto LABEL_18;
            }

            __break(1u);
LABEL_44:
            __break(1u);
            return result;
          }

LABEL_36:

          goto LABEL_37;
        }

LABEL_33:
        result = sub_1CFC9FFD8();
        if (result)
        {
          goto LABEL_15;
        }

        goto LABEL_36;
      }

      return 0;
    }

    return 0;
  }

  result = sub_1CFC20038();
  if (!v9)
  {
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    v12 = sub_1CFC9BE28();

    return v12;
  }

  return result;
}

uint64_t sub_1CFC208AC@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  v11 = v4;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v9 = *a1;
  swift_beginAccess();
  return sub_1CFBA29FC(v11 + v9, a4, a2, a3);
}

uint64_t sub_1CFC209B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t *a4@<X6>, uint64_t a5@<X8>)
{
  v9 = *a1;
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v10 = *a2;
  swift_beginAccess();
  return sub_1CFBA29FC(v9 + v10, a5, a3, a4);
}

uint64_t sub_1CFC20ABC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v18 - v14;
  sub_1CFBA29FC(a1, &v18 - v14, a5, a6);
  v16 = *a2;
  return a7(v15);
}

uint64_t sub_1CFC20B68(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6F8, &qword_1CFCA6060);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentPickedAudioRoute;
  swift_beginAccess();
  sub_1CFBA29FC(v1 + v7, v6, &qword_1EC4EE6F8, &qword_1CFCA6060);
  v8 = sub_1CFC29810(v6, a1);
  sub_1CFBC2FB0(v6, &qword_1EC4EE6F8, &qword_1CFCA6060);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }

  else
  {
    sub_1CFBA29FC(a1, v6, &qword_1EC4EE6F8, &qword_1CFCA6060);
    swift_beginAccess();
    sub_1CFBA735C(v6, v1 + v7, &qword_1EC4EE6F8, &qword_1CFCA6060);
    swift_endAccess();
  }

  return sub_1CFBC2FB0(a1, &qword_1EC4EE6F8, &qword_1CFCA6060);
}

uint64_t sub_1CFC20D70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v16 - v12;
  sub_1CFBA29FC(a2, &v16 - v12, a3, a4);
  v14 = *a5;
  swift_beginAccess();
  sub_1CFBA735C(v13, a1 + v14, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1CFC20E68(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v4 = *(v2 + *a2);
}

uint64_t sub_1CFC20F20@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  *a3 = *(v5 + *a2);
}

uint64_t sub_1CFC20FD8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1CFC21004(v4);
}

uint64_t sub_1CFC21004(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__availableAudioRoutes;
  v4 = *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__availableAudioRoutes);

  v6 = sub_1CFC28528(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }
}

uint64_t sub_1CFC21190()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6F8, &qword_1CFCA6060);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - v4;
  v6 = sub_1CFC9D4D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v15 = v0;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v11 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentPickedAudioRoute;
  swift_beginAccess();
  sub_1CFBA29FC(v1 + v11, v5, &qword_1EC4EE6F8, &qword_1CFCA6060);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1CFBC2FB0(v5, &qword_1EC4EE6F8, &qword_1CFCA6060);
    v12 = 0;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    if (sub_1CFC9D488())
    {
      v12 = 0;
    }

    else
    {
      v12 = sub_1CFC9D478() ^ 1;
    }

    (*(v7 + 8))(v10, v6);
  }

  return v12 & 1;
}

BOOL sub_1CFC213E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6E8, &qword_1CFCA4E08);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v29 - v3;
  v5 = sub_1CFC9D6A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v30 = v0;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v10 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message;
  v11 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = sub_1CFC9D5E8();
  if (v13)
  {
    if (v13 == 1)
    {
      v29 = v6;
      swift_getKeyPath();
      v30 = v0;
      sub_1CFC9C158();

      v14 = *(v0 + v10);
      if (v14)
      {
        v15 = v14;
        sub_1CFC9D638();

        v16 = v29;
        if ((*(v29 + 48))(v4, 1, v5) != 1)
        {
          (*(v16 + 32))(v9, v4, v5);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE700, &unk_1CFCA4E98);
          v24 = *(v16 + 72);
          v25 = (*(v16 + 80) + 32) & ~*(v16 + 80);
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_1CFCA4C30;
          v27 = v26 + v25;
          v28 = *(v16 + 104);
          v28(v27, *MEMORY[0x1E699BF38], v5);
          v28(v27 + v24, *MEMORY[0x1E699BF28], v5);
          v28(v27 + 2 * v24, *MEMORY[0x1E699BF30], v5);
          v22 = sub_1CFC1D7A0(v9, v26, MEMORY[0x1E699BF40], &qword_1EC4EE6F0, MEMORY[0x1E699BF40]);

          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          (*(v16 + 8))(v9, v5);
          return v22;
        }
      }

      else
      {

        (*(v29 + 56))(v4, 1, 1, v5);
      }

      sub_1CFBC2FB0(v4, &qword_1EC4EE6E8, &qword_1CFCA4E08);
      return 0;
    }

    goto LABEL_8;
  }

  v17 = sub_1CFC9D628();
  if (v18)
  {
LABEL_8:

    return 0;
  }

  v19 = v17;
  sub_1CFC29B30();
  v21 = v20;

  return (v21 * 100.0) >= v19;
}

uint64_t sub_1CFC21814()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v1 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__cancellables;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_1CFC218D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v4 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__cancellables;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1CFC2199C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__cancellables;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_1CFC950B8(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }
}

uint64_t sub_1CFC21AEC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__cancellables;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

uint64_t sub_1CFC21B5C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1CFC21004(v3);
  }

  return result;
}

uint64_t sub_1CFC21BC0(uint64_t a1)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6F8, &qword_1CFCA6060);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v4);
  v8 = v22 - v7 + 16;
  v9 = sub_1CFC9D4D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_1CFBA29FC(a1, v8, &qword_1EC4EE6F8, &qword_1CFCA6060);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1CFBC2FB0(v8, &qword_1EC4EE6F8, &qword_1CFCA6060);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    if (sub_1CFC9D4C8())
    {
      v14 = [objc_opt_self() sharedInstance];
      v22[0] = 0;
      v15 = [v14 overrideOutputAudioPort:1936747378 error:v22];

      if (v15)
      {
        v16 = v22[0];
      }

      else
      {
        v17 = v22[0];
        v18 = sub_1CFC9BE88();

        swift_willThrow();
      }
    }

    (*(v10 + 8))(v13, v9);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1CFBA29FC(a1, v6, &qword_1EC4EE6F8, &qword_1CFCA6060);
    sub_1CFC20B68(v6);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CFC27310();
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CFC21EC0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - v5;
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v7 = sub_1CFC9D938();
  __swift_project_value_buffer(v7, qword_1EE052308);
  v8 = sub_1CFC9D918();
  v9 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    v11 = [objc_opt_self() currentDevice];
    v12 = [v11 proximityState];

    *(v10 + 4) = v12;
    _os_log_impl(&dword_1CFB9F000, v8, v9, "Voicemail proximityStateDidChangeNotification %{BOOL}d", v10, 8u);
    MEMORY[0x1D3873280](v10, -1, -1);
  }

  v13 = sub_1CFC9F998();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  sub_1CFC9F968();

  v14 = sub_1CFC9F958();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = a2;
  sub_1CFBDC330(0, 0, v6, &unk_1CFCA5280, v15);
}

uint64_t sub_1CFC220EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a1;
  v4[9] = a4;
  sub_1CFC9F968();
  v4[10] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFC22184, v6, v5);
}

uint64_t sub_1CFC22184()
{
  v1 = *(v0 + 80);

  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 proximityState];

  v4 = *(v0 + 72);
  if (v3)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1CFC264F0();
LABEL_6:

      v5 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1CFC2680C();
      goto LABEL_6;
    }
  }

  v5 = 1;
LABEL_8:
  **(v0 + 64) = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1CFC22290(uint64_t a1)
{
  v2 = sub_1CFC9BDC8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1CFC9BDB8();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t VoicemailDetailContainerViewModel.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__item;
  v3 = sub_1CFC9C448();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_deleteAction + 8);

  v5 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_activityAction + 8);

  v6 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_createContactAction + 8);

  v7 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_reportSpamAction + 8);

  v8 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__smartActionCustomRanges);

  v9 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__smartActionMenuItems);

  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__smartActionId, &qword_1EC4ED570, &unk_1CFCA2470);

  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__timeObserver, &qword_1EC4EE650, &qword_1CFCA4B10);
  v10 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_messageStoreController);

  v11 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_playerLoadingTask);

  v12 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_transcriptPrefix + 8);

  v13 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_transcriptSuffix + 8);

  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentPickedAudioRoute, &qword_1EC4EE6F8, &qword_1CFCA6060);
  v14 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__availableAudioRoutes);

  v15 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__cancellables);

  v16 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel___observationRegistrar;
  v17 = sub_1CFC9C198();
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  return v0;
}

uint64_t VoicemailDetailContainerViewModel.__deallocating_deinit()
{
  VoicemailDetailContainerViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1CFC2262C()
{
  v1 = v0;
  v84 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v74 - v4;
  v6 = sub_1CFC9BF28();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v74 - v12;
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel___observationRegistrar;
  *&aBlock = v0;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  if (*(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player))
  {
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v15 = sub_1CFC9D938();
    __swift_project_value_buffer(v15, qword_1EE052308);
    v16 = sub_1CFC9D918();
    v17 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1CFB9F000, v16, v17, "Not creating an AVPlayer as we already have one", v18, 2u);
      MEMORY[0x1D3873280](v18, -1, -1);
    }
  }

  else
  {
    v78 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player;
    swift_getKeyPath();
    *&aBlock = v0;
    sub_1CFC9C158();

    v19 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message);
    if (v19)
    {
      v20 = v19;
      sub_1CFC9D5D8();

      v75 = v7;
      (*(v7 + 32))(v13, v10, v6);
      v21 = [objc_opt_self() sharedInstance];
      v22 = *MEMORY[0x1E6958090];
      *&aBlock = 0;
      v23 = [v21 setCategory:v22 error:&aBlock];

      v76 = v6;
      v77 = v13;
      v74[1] = v14;
      if (v23)
      {
        v24 = aBlock;
      }

      else
      {
        v25 = aBlock;
        v26 = sub_1CFC9BE88();

        swift_willThrow();
        if (qword_1EE050010 != -1)
        {
          swift_once();
        }

        v27 = sub_1CFC9D938();
        __swift_project_value_buffer(v27, qword_1EE052308);
        v28 = v26;
        v29 = sub_1CFC9D918();
        v30 = sub_1CFC9FAF8();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          *&aBlock = v32;
          *v31 = 136315138;
          swift_getErrorValue();
          v33 = sub_1CFCA0318();
          v35 = sub_1CFBB531C(v33, v34, &aBlock);

          *(v31 + 4) = v35;
          _os_log_impl(&dword_1CFB9F000, v29, v30, "Failed to configure voicemail audio session %s", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v32);
          MEMORY[0x1D3873280](v32, -1, -1);
          MEMORY[0x1D3873280](v31, -1, -1);
        }

        else
        {
        }
      }

      v74[0] = 0;
      v36 = objc_allocWithZone(MEMORY[0x1E6988098]);
      v37 = sub_1CFC9BEE8();
      v38 = [v36 initWithURL_];

      sub_1CFC1EED0(v38);
      v39 = sub_1CFC9F998();
      (*(*(v39 - 8) + 56))(v5, 1, 1, v39);
      v40 = swift_allocObject();
      swift_weakInit();
      sub_1CFC9F968();

      v41 = sub_1CFC9F958();
      v42 = swift_allocObject();
      v43 = MEMORY[0x1E69E85E0];
      v42[2] = v41;
      v42[3] = v43;
      v42[4] = v40;

      v44 = sub_1CFBDC030(0, 0, v5, &unk_1CFCA50B8, v42);
      v45 = *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_playerLoadingTask);
      *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_playerLoadingTask) = v44;

      v46 = objc_opt_self();
      v47 = [v46 defaultCenter];
      v48 = sub_1CFC9F728();
      v49 = objc_opt_self();
      v50 = [v49 mainQueue];
      v51 = swift_allocObject();
      swift_weakInit();
      v82 = sub_1CFC2A474;
      v83 = v51;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v81 = sub_1CFC22290;
      *(&v81 + 1) = &block_descriptor_10;
      v52 = _Block_copy(&aBlock);

      v53 = [v47 addObserverForName:v48 object:0 queue:v50 usingBlock:v52];
      _Block_release(v52);
      swift_unknownObjectRelease();

      v54 = [v46 defaultCenter];
      v55 = *MEMORY[0x1E6987A10];
      swift_getKeyPath();
      *&aBlock = v1;
      sub_1CFC9C158();

      v56 = *(v1 + v78);
      if (v56 && (v57 = [v56 currentItem]) != 0)
      {
        *&aBlock = v57;
        sub_1CFBA2D80(0, &qword_1EE04D0E8, 0x1E69880B0);
        v58 = sub_1CFCA02A8();
      }

      else
      {
        v58 = 0;
      }

      v59 = [v49 mainQueue];
      v60 = swift_allocObject();
      swift_weakInit();
      v82 = sub_1CFC2A47C;
      v83 = v60;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v81 = sub_1CFC22290;
      *(&v81 + 1) = &block_descriptor_152;
      v61 = _Block_copy(&aBlock);

      v62 = [v54 addObserverForName:v55 object:v58 queue:v59 usingBlock:v61];
      _Block_release(v61);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_getKeyPath();
      *&aBlock = v1;
      sub_1CFC9C158();

      v63 = *(v1 + v78);
      if (v63)
      {
        v64 = v63;
        CMTimeMake(&aBlock, 1, 40);
        v65 = aBlock;
        v66 = v81;
        sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
        v67 = *(&aBlock + 1);
        v68 = sub_1CFC9FC28();
        v69 = swift_allocObject();
        swift_weakInit();
        v82 = sub_1CFC2A484;
        v83 = v69;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v81 = sub_1CFC250A0;
        *(&v81 + 1) = &block_descriptor_156;
        v70 = _Block_copy(&aBlock);

        *&aBlock = v65;
        *(&aBlock + 1) = v67;
        *&v81 = v66;
        v71 = [v64 addPeriodicTimeObserverForInterval:&aBlock queue:v68 usingBlock:v70];
        _Block_release(v70);

        sub_1CFC9FF18();
        swift_unknownObjectRelease();
      }

      else
      {
        aBlock = 0u;
        v81 = 0u;
      }

      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v74[-2] = v1;
      v74[-1] = &aBlock;
      v79 = v1;
      sub_1CFC9C148();

      (*(v75 + 8))(v77, v76);
      sub_1CFBC2FB0(&aBlock, &qword_1EC4EE650, &qword_1CFCA4B10);
    }
  }

  v73 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CFC23158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a4;
  v4[21] = sub_1CFC9F968();
  v4[22] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();
  v4[23] = v6;
  v4[24] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFC231F4, v6, v5);
}

uint64_t sub_1CFC231F4()
{
  v1 = v0[20];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[25] = Strong;
  if (Strong)
  {
    v3 = v0[20];
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    if (v4)
    {
      v5 = v4;
      swift_getKeyPath();
      v0[17] = v5;
      sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
      sub_1CFC9C158();

      v6 = *(v5 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player);
      v7 = v6;

      if (v6)
      {
        v8 = [v7 currentItem];

        if (v8)
        {
          v9 = v0[21];
          v0[26] = [v8 asset];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE710, &qword_1CFCA5148);
          v10 = sub_1CFC9C1F8();
          v0[27] = v10;
          v11 = sub_1CFC9F958();
          v0[28] = v11;
          v12 = *(MEMORY[0x1E69E5A20] + 4);
          v13 = swift_task_alloc();
          v0[29] = v13;
          *v13 = v0;
          v13[1] = sub_1CFC235C4;
          v14 = MEMORY[0x1E69E85E0];

          return MEMORY[0x1EEE68140](v0 + 31, v10, v11, v14);
        }
      }
    }

    v15 = v0[22];
    v16 = *MEMORY[0x1E6960CC0];
    v17 = *(MEMORY[0x1E6960CC0] + 8);
    v18 = *(MEMORY[0x1E6960CC0] + 12);
    v19 = *(MEMORY[0x1E6960CC0] + 16);

    v20 = v0[25] + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__duration;
    v21 = *v20;
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    v24 = sub_1CFC9FD48();
    v25 = v0[25];
    if (v24)
    {
      *v20 = v16;
      *(v20 + 8) = v17;
      *(v20 + 12) = v18;
      *(v20 + 16) = v19;
    }

    else
    {
      swift_getKeyPath();
      v27 = swift_task_alloc();
      *(v27 + 16) = v25;
      *(v27 + 24) = v16;
      *(v27 + 32) = v17;
      *(v27 + 36) = v18;
      *(v27 + 40) = v19;
      v0[18] = v25;
      sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
      sub_1CFC9C148();
    }
  }

  else
  {
    v26 = v0[22];
  }

  v28 = v0[20];
  swift_beginAccess();
  v29 = swift_weakLoadStrong();
  if (v29)
  {
    v30 = *(v29 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_playerLoadingTask);
    *(v29 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_playerLoadingTask) = 0;
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_1CFC235C4()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  v2[30] = v0;

  v5 = v2[28];
  v6 = v2[27];
  v7 = v2[26];
  if (v0)
  {
    v8 = v2[25];

    v9 = v2[23];
    v10 = v2[24];
    v11 = sub_1CFC23924;
  }

  else
  {

    v9 = v2[23];
    v10 = v2[24];
    v11 = sub_1CFC23750;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1CFC23750()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 256);
  v3 = *(v0 + 260);
  v4 = *(v0 + 264);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  v7 = *(v0 + 200) + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__duration;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  if (sub_1CFC9FD48())
  {
    v11 = *(v0 + 200);
    *v7 = v6;
    *(v7 + 8) = v2;
    *(v7 + 12) = v3;
    *(v7 + 16) = v4;
  }

  else
  {
    v12 = *(v0 + 200);
    swift_getKeyPath();
    v13 = swift_task_alloc();
    *(v13 + 16) = v12;
    *(v13 + 24) = v6;
    *(v13 + 32) = v2;
    *(v13 + 36) = v3;
    *(v13 + 40) = v4;
    *(v0 + 144) = v12;
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }

  v14 = *(v0 + 160);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_playerLoadingTask);
    *(Strong + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_playerLoadingTask) = 0;
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1CFC23924()
{
  v23 = v0;
  v1 = v0[22];

  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v2 = v0[30];
  v3 = sub_1CFC9D938();
  __swift_project_value_buffer(v3, qword_1EE052308);
  v4 = v2;
  v5 = sub_1CFC9D918();
  v6 = sub_1CFC9FAF8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[30];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[14];
    v10 = v0[15];
    v12 = v0[16];
    v13 = sub_1CFCA0318();
    v15 = sub_1CFBB531C(v13, v14, &v22);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_1CFB9F000, v5, v6, "Failed to load voicemail audio asset %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1D3873280](v9, -1, -1);
    MEMORY[0x1D3873280](v8, -1, -1);
  }

  v16 = v0[30];
  v17 = v0[20];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();

  if (Strong)
  {
    v19 = *(Strong + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_playerLoadingTask);
    *(Strong + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_playerLoadingTask) = 0;
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1CFC23B28(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_1CFC9F998();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;

  sub_1CFBDC330(0, 0, v6, &unk_1CFCA5118, v8);
}

uint64_t sub_1CFC23C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1CFC23C54, 0, 0);
}

uint64_t sub_1CFC23C54()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_1CFC9F968();
    *(v0 + 64) = sub_1CFC9F958();
    v4 = sub_1CFC9F938();

    return MEMORY[0x1EEE6DFA0](sub_1CFC23D4C, v4, v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1CFC23D4C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  sub_1CFC2680C();

  return MEMORY[0x1EEE6DFA0](sub_1CFC23DC0, 0, 0);
}

uint64_t sub_1CFC23DE8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = sub_1CFC9F998();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1CFC9F968();

  v8 = sub_1CFC9F958();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a2;
  sub_1CFC247A4(0, 0, v6, &unk_1CFCA5100, v9);
}

uint64_t sub_1CFC23F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[31] = a4;
  sub_1CFC9F968();
  v4[32] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();
  v4[33] = v6;
  v4[34] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFC23FA4, v6, v5);
}

uint64_t sub_1CFC23FA4()
{
  v1 = v0[31];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v3 = Strong;
  swift_getKeyPath();
  v0[30] = v3;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v4 = *(v3 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player);
  v0[35] = v4;
  v5 = v4;

  if (v4)
  {
    v6 = MEMORY[0x1E6960CC0];
    v7 = *MEMORY[0x1E6960CC0];
    v8 = *(MEMORY[0x1E6960CC0] + 16);
    v0[2] = v0;
    v0[7] = v0 + 42;
    v0[3] = sub_1CFC242F0;
    v9 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE708, &qword_1CFCA5108);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1CFC24748;
    v0[13] = &block_descriptor_175;
    v0[14] = v9;
    v0[39] = v7;
    v0[40] = *(v6 + 8);
    v0[41] = v8;
    [v5 seekToTime:v0 + 39 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
LABEL_6:
    v10 = v0[31];
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1CFC2680C();
    }

    v11 = v0[31];
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1CFC27310();
    }

    v12 = v0[31];
    swift_beginAccess();
    v13 = swift_weakLoadStrong();
    v0[36] = v13;
    if (v13)
    {
      v14 = swift_task_alloc();
      v0[37] = v14;
      *v14 = v0;
      v14[1] = sub_1CFC24558;

      return sub_1CFC2570C();
    }

    else
    {
      v15 = v0[32];

      v16 = v0[1];

      return v16();
    }
  }
}

uint64_t sub_1CFC242F0()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1CFC243F8, v2, v1);
}

uint64_t sub_1CFC243F8()
{
  v1 = *(v0 + 248);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1CFC2680C();
  }

  v2 = *(v0 + 248);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1CFC27310();
  }

  v3 = *(v0 + 248);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 288) = Strong;
  if (Strong)
  {
    v5 = swift_task_alloc();
    *(v0 + 296) = v5;
    *v5 = v0;
    v5[1] = sub_1CFC24558;

    return sub_1CFC2570C();
  }

  else
  {
    v7 = *(v0 + 256);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1CFC24558()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v9 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = v2[33];
    v5 = v2[34];
    v6 = sub_1CFC246D8;
  }

  else
  {
    v7 = v2[36];

    v4 = v2[33];
    v5 = v2[34];
    v6 = sub_1CFC24674;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1CFC24674()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CFC246D8()
{
  v1 = v0[36];
  v2 = v0[32];

  v3 = v0[1];
  v4 = v0[38];

  return v3();
}

uint64_t sub_1CFC24748(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x1EEE6DED8](v3);
}

uint64_t sub_1CFC247A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1CFBA29FC(a3, v24 - v10, &qword_1EC4ED950, &qword_1CFCA2710);
  v12 = sub_1CFC9F998();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1CFBC2FB0(v11, &qword_1EC4ED950, &qword_1CFCA2710);
  }

  else
  {
    sub_1CFC9F988();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1CFC9F938();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1CFC9F7A8() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1CFBC2FB0(a3, &qword_1EC4ED950, &qword_1CFCA2710);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1CFBC2FB0(a3, &qword_1EC4ED950, &qword_1CFCA2710);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1CFC24A50(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = HIDWORD(a2);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v18 - v11;
  v13 = sub_1CFC9F998();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1CFC9F968();

  v14 = sub_1CFC9F958();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *(v15 + 32) = a4;
  *(v15 + 40) = a1;
  *(v15 + 48) = v6;
  *(v15 + 52) = v8;
  *(v15 + 56) = a3;
  sub_1CFC247A4(0, 0, v12, &unk_1CFCA50F0, v15);
}

uint64_t sub_1CFC24B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  sub_1CFC9F968();
  v7[10] = sub_1CFC9F958();
  v9 = sub_1CFC9F938();
  v7[11] = v9;
  v7[12] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1CFC24C38, v9, v8);
}

uint64_t sub_1CFC24C38()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 104) = Strong;
  if (!Strong)
  {
    v16 = *(v0 + 80);
LABEL_8:

    v21 = *(v0 + 8);

    return v21();
  }

  v3 = Strong;
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = Strong + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentTime;
  v8 = *(Strong + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentTime);
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = sub_1CFC9FD48();
  v12 = *(v0 + 72);
  v14 = *(v0 + 64);
  v13 = *(v0 + 68);
  v15 = *(v0 + 56);
  if (v11)
  {
    *v7 = v15;
    *(v7 + 8) = v14;
    *(v7 + 12) = v13;
    *(v7 + 16) = v12;
  }

  else
  {
    swift_getKeyPath();
    v17 = swift_task_alloc();
    *(v17 + 16) = v3;
    *(v17 + 24) = v15;
    *(v17 + 32) = v14;
    *(v17 + 36) = v13;
    *(v17 + 40) = v12;
    *(v0 + 40) = v3;
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }

  v19 = *(v0 + 64);
  v18 = *(v0 + 72);
  *(v0 + 128) = *(v0 + 56);
  *(v0 + 136) = v19;
  *(v0 + 144) = v18;
  if (CMTimeGetSeconds((v0 + 128)) < 5.0)
  {
    v20 = *(v0 + 80);

    goto LABEL_8;
  }

  v23 = swift_task_alloc();
  *(v0 + 112) = v23;
  *v23 = v0;
  v23[1] = sub_1CFC24E84;

  return sub_1CFC2570C();
}

uint64_t sub_1CFC24E84()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_1CFC25030;
  }

  else
  {
    v7 = sub_1CFC24FC0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1CFC24FC0()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1CFC25030()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_1CFC250A0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(v2, v3, v4);
}

void sub_1CFC2510C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  swift_getKeyPath();
  v16 = v0;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v6 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__markedAsRead;
  if ((*(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__markedAsRead) & 1) != 0 || (sub_1CFC1FB4C() & 1) == 0 || sub_1CFC213E4())
  {
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v7 = sub_1CFC9D938();
    __swift_project_value_buffer(v7, qword_1EE052308);
    swift_retain_n();
    v8 = sub_1CFC9D918();
    v9 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109632;
      swift_getKeyPath();
      v16 = v0;
      sub_1CFC9C158();

      *(v10 + 4) = *(v0 + v6);

      *(v10 + 8) = 1024;
      *(v10 + 10) = sub_1CFC1FB4C() & 1;

      *(v10 + 14) = 1024;
      *(v10 + 16) = sub_1CFC213E4();

      _os_log_impl(&dword_1CFB9F000, v8, v9, "Not marking item as read onAppear. markedAsRead: %{BOOL}d, shouldShowTranscript: %{BOOL}d, transcriptIsLowConfidence: %{BOOL}d", v10, 0x14u);
      MEMORY[0x1D3873280](v10, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v11 = sub_1CFC9F998();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    sub_1CFC9F968();

    v12 = sub_1CFC9F958();
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E85E0];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v1;
    sub_1CFC247A4(0, 0, v5, &unk_1CFCA50A8, v13);
  }
}

uint64_t sub_1CFC2543C()
{
  v0[2] = sub_1CFC9F968();
  v0[3] = sub_1CFC9F958();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1CFC254E8;

  return sub_1CFC2570C();
}

uint64_t sub_1CFC254E8()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_1CFC9F938();
  if (v2)
  {
    v8 = sub_1CFC256A8;
  }

  else
  {
    v8 = sub_1CFC25644;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1CFC25644()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CFC256A8()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_1CFC2570C()
{
  v1[9] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFAB0, &qword_1CFCA4DA0) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v4 = sub_1CFC9C448();
  v1[14] = v4;
  v5 = *(v4 - 8);
  v1[15] = v5;
  v6 = *(v5 + 64) + 15;
  v1[16] = swift_task_alloc();
  v7 = sub_1CFC9C008();
  v1[17] = v7;
  v8 = *(v7 - 8);
  v1[18] = v8;
  v9 = *(v8 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  sub_1CFC9F968();
  v1[22] = sub_1CFC9F958();
  v11 = sub_1CFC9F938();
  v1[23] = v11;
  v1[24] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1CFC258FC, v11, v10);
}

uint64_t sub_1CFC258FC()
{
  v1 = v0[18];
  v45 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  v43 = v0[13];
  v5 = v0[9];
  swift_getKeyPath();
  v0[5] = v5;
  v0[25] = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel___observationRegistrar;
  v0[26] = sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v6 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__item;
  swift_beginAccess();
  (*(v2 + 16))(v3, v5 + v6, v4);
  sub_1CFC9C3C8();
  (*(v2 + 8))(v3, v4);
  if ((*(v1 + 48))(v43, 1, v45) == 1)
  {
    v7 = v0[22];
    v8 = v0[13];

    sub_1CFBC2FB0(v8, &qword_1EC4ED570, &unk_1CFCA2470);
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v9 = sub_1CFC9D938();
    __swift_project_value_buffer(v9, qword_1EE052308);
    v10 = sub_1CFC9D918();
    v11 = sub_1CFC9FAD8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1CFB9F000, v10, v11, "Missing message UUID from RecentItem", v12, 2u);
      MEMORY[0x1D3873280](v12, -1, -1);
    }

    goto LABEL_9;
  }

  v13 = v0[9];
  (*(v0[18] + 32))(v0[21], v0[13], v0[17]);
  swift_getKeyPath();
  v0[6] = v13;
  sub_1CFC9C158();

  v14 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__markedAsRead;
  v0[27] = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__markedAsRead;
  if (*(v13 + v14))
  {
    v15 = v0[22];
    (*(v0[18] + 8))(v0[21], v0[17]);

LABEL_9:
    v17 = v0[20];
    v16 = v0[21];
    v18 = v0[19];
    v19 = v0[16];
    v21 = v0[12];
    v20 = v0[13];
    v23 = v0[10];
    v22 = v0[11];

    v24 = v0[1];

    return v24();
  }

  v26 = v0[20];
  v28 = v0[17];
  v27 = v0[18];
  v41 = v0[21];
  v42 = v0[12];
  v44 = v0[11];
  v29 = v0[9];
  v46 = v0[10];
  swift_getKeyPath();
  v30 = swift_task_alloc();
  *(v30 + 16) = v29;
  *(v30 + 24) = 1;
  v0[7] = v29;
  sub_1CFC9C148();

  v31 = *(v27 + 16);
  v0[28] = v31;
  v0[29] = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v31(v26, v41, v28);
  v32 = *(v27 + 56);
  v32(v42, 1, 1, v28);
  v32(v44, 1, 1, v28);
  v33 = sub_1CFC9BF28();
  (*(*(v33 - 8) + 56))(v46, 1, 1, v33);
  v34 = objc_allocWithZone(sub_1CFC9D6D8());
  v35 = sub_1CFC9D6C8();
  v0[30] = v35;
  v36 = *(v29 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_messageStoreController);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v37 = swift_allocObject();
  v0[31] = v37;
  *(v37 + 16) = xmmword_1CFCA2540;
  *(v37 + 32) = v35;
  v38 = *(MEMORY[0x1E699BFA0] + 4);
  v39 = v35;
  v40 = swift_task_alloc();
  v0[32] = v40;
  *v40 = v0;
  v40[1] = sub_1CFC25EE0;

  return MEMORY[0x1EEE03C18](v37);
}