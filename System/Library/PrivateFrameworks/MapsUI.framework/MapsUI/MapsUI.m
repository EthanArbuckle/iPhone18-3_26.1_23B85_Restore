id EdgeLayout.__allocating_init(item:container:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = [v5 initWithItem:a1 container:a2 insets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v6;
}

id sub_1C56233C8(void *a1, double a2, double a3, double a4, double a5, float a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  [a1 _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E200, &qword_1C5869760);
  swift_unknownObjectRetain();
  sub_1C56236C4();
  swift_unknownObjectRetain();
  sub_1C56236C4();
  *&v18[2] = a2;
  *&v18[3] = a3;
  *&v18[4] = a4;
  *&v18[5] = a5;
  v18[6] = a8;
  v19 = a6;
  *(v9 + OBJC_IVAR___MUEdgeLayoutInternal_builder) = sub_1C562370C(v18);

  return sub_1C562389C(v16, &off_1F44C6BC0);
}

unint64_t sub_1C56234D4(uint64_t a1)
{
  result = sub_1C56234FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C56234FC()
{
  result = qword_1ED77E8E8;
  if (!qword_1ED77E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E8E8);
  }

  return result;
}

unint64_t sub_1C5623550()
{
  result = qword_1ED77E8E0;
  if (!qword_1ED77E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E8E0);
  }

  return result;
}

uint64_t sub_1C56235F0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C56236C4()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1C562370C(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_1C562374C(a1);
  return v5;
}

void *sub_1C562374C(uint64_t a1)
{
  v3 = *v1;
  v1[2] = 1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v1 + *(*v1 + 136)) = 1;
  *(v1 + *(*v1 + 144)) = 1;
  v4 = (v1 + *(*v1 + 152));
  v5 = MEMORY[0x1E69E7CC0];
  v6 = *(v3 + 80);
  *v4 = MEMORY[0x1E69E7CC0];
  v4[1] = v5;
  swift_unknownObjectWeakInit();
  v7 = MEMORY[0x1E69E7CD0];
  *(v1 + *(*v1 + 160)) = MEMORY[0x1E69E7CD0];
  *(v1 + *(*v1 + 168)) = v7;
  (*(*(v6 - 8) + 32))(v1 + *(*v1 + 128), a1, v6);
  return v1;
}

id sub_1C562389C(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder];
  *v4 = a1;
  *(v4 + 1) = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for ConstraintLayout();
  swift_unknownObjectRetain();
  v5 = objc_msgSendSuper2(&v10, sel_init);
  ObjectType = swift_getObjectType();
  v7 = *(a2 + 80);
  v8 = v5;
  v7(v5, ObjectType, a2);

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1C5623988()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C56239D8(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  sub_1C5623A68(v7);
  v8 = a1;
  sub_1C5623B08(v7, v6);
  sub_1C5623B40(v6, v4);
  return sub_1C5623F2C(v7);
}

uint64_t sub_1C5623A68@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C5623B40(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_1C5623BBC(a1, a2);
  v5 = *(*(*(v4 + 80) - 8) + 8);

  return v5(a1);
}

void sub_1C5623BBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v13[-v9];
  v11 = *(v5 + 128);
  swift_beginAccess();
  (*(v7 + 16))(v10, &v3[v11], v6);
  v12 = *(*(*(v5 + 88) + 8) + 8);
  LOBYTE(v5) = sub_1C584F620();
  (*(v7 + 8))(v10, v6);
  swift_beginAccess();
  (*(v7 + 24))(&v3[v11], a1, v6);
  swift_endAccess();
  if ((v5 & 1) == 0)
  {
    v3[*(*v3 + 136)] = 1;
    sub_1C5623E9C();
    swift_beginAccess();
    if (*(v3 + 2) == 2)
    {
      sub_1C5624064();
      sub_1C5627450();
    }
  }
}

BOOL sub_1C5623E30()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v1)
    {
      v2 = v1;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return Strong == v2;
    }
  }

  else if (!v1)
  {
    return 1;
  }

  swift_unknownObjectRelease();
  return 0;
}

void sub_1C5623E9C()
{
  if (*(v0 + *(*v0 + 136)) == 1)
  {
    swift_beginAccess();
    if (v0[2])
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      [Strong setNeedsUpdateConstraints];
    }
  }
}

uint64_t sub_1C5623F64(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder + 8);
  v4 = *(v1 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder);
  ObjectType = swift_getObjectType();
  return (*(v3 + 32))(a1, ObjectType, v3);
}

void sub_1C5623FC8(uint64_t a1)
{
  swift_beginAccess();
  v3 = v1[2];
  v1[2] = a1;
  swift_beginAccess();
  if (v1[2] != v3)
  {
    *(v1 + *(*v1 + 144)) = 1;
    if (v1[2] == 2)
    {
      sub_1C5624064();
    }

    sub_1C5627450();
  }
}

void sub_1C5624064()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v2 + 80);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v7 = &v96 - v6;
  v9 = *(v8 + 136);
  if (*(v1 + v9) == 1)
  {
    swift_beginAccess();
    if (v1[2])
    {
      *(v1 + v9) = 0;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v11 = *(*v1 + 128);
      swift_beginAccess();
      (*(v4 + 16))(v7, v1 + v11, v3);
      v12 = *(*(v2 + 88) + 16);
      v105 = *(v2 + 88);
      v13 = v12(v3);
      v14 = *(v4 + 8);
      v106 = v3;
      v14(v7, v3);
      v15 = (v1 + *(*v1 + 152));
      swift_beginAccess();
      v126 = *v15;
      v16 = swift_allocObject();
      v17 = v15[1];
      v109 = v16;
      *(v16 + 16) = v17;
      v18 = MEMORY[0x1E69E7CC0];
      v125 = MEMORY[0x1E69E7CC0];
      v19 = swift_allocObject();
      v108 = v19;
      *(v19 + 16) = v18;
      v20 = (v19 + 16);
      v107 = swift_allocObject();
      *(v107 + 16) = MEMORY[0x1E69E7CC8];
      v110 = *(v13 + 16);
      if (v110)
      {
        v102 = v20;
        v103 = v13;
        v104 = Strong;
        v112 = v13 + 32;

        v21 = 0;
        v111 = 0;
        v22 = MEMORY[0x1E69E7CC0];
        v23 = MEMORY[0x1E69E7CC0];
        v24 = v110;
        while (1)
        {
          v25 = v112 + 112 * v21++;
          sub_1C5625A18(v25, v117);
          sub_1C5625A18(v117, v116);

          v116[12] = 0;
          v116[13] = 0;
          v26 = v22 + 4;
          v27 = v22[2] + 1;
          while (--v27)
          {
            sub_1C56263BC();
            v26 += 14;
            if (sub_1C584F620())
            {
              goto LABEL_5;
            }
          }

          v28 = v122;
          LODWORD(v113) = v122;
          LODWORD(v127[0]) = 0;
          type metadata accessor for UILayoutPriority(0);
          sub_1C5625AB0(&qword_1ED77E828);
          v29 = sub_1C584F610();
          if ((v29 & 1) == 0)
          {
            sub_1C5625A18(v116, &v113);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = sub_1C5625864(0, v22[2] + 1, 1, v22);
            }

            v49 = v22[2];
            v48 = v22[3];
            if (v49 >= v48 >> 1)
            {
              v22 = sub_1C5625864((v48 > 1), v49 + 1, 1, v22);
            }

            sub_1C562638C(v117);
            v22[2] = v49 + 1;
            sub_1C5625808(&v113, &v22[14 * v49 + 4]);
            goto LABEL_6;
          }

          MEMORY[0x1EEE9AC00](v29, v30);
          *(&v96 - 2) = v117;
          v31 = v111;
          sub_1C5625F44(sub_1C571D734, (&v96 - 4), v32);
          v111 = v31;
          if ((v34 & 1) == 0)
          {
            break;
          }

          v35 = sub_1C5625AF4(v117, v1, v107, v109, v108);
          if (!v35)
          {
LABEL_5:
            sub_1C562638C(v117);
            goto LABEL_6;
          }

          v36 = v35;
          sub_1C5626108(v120, &v113);
          if (v114 == 255)
          {
            sub_1C571D770(&v113);
            swift_getObjectType();
            v127[0] = v36;
            v100 = v119;
            v101 = v118;
            v113 = 0u;
            v114 = 0u;
            v54 = v121;
            swift_unknownObjectRetain();
            v55 = sub_1C584FDB0();
            v56 = *(&v114 + 1);
            if (*(&v114 + 1))
            {
              v57 = __swift_project_boxed_opaque_existential_1(&v113, *(&v114 + 1));
              v98 = &v96;
              v99 = v55;
              v58 = *(v56 - 8);
              v59 = *(v58 + 64);
              MEMORY[0x1EEE9AC00](v57, v57);
              v61 = &v96 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v58 + 16))(v61);
              v62 = sub_1C584FDB0();
              (*(v58 + 8))(v61, v56);
              v55 = v99;
              __swift_destroy_boxed_opaque_existential_1(&v113);
            }

            else
            {
              v62 = 0;
            }

            v65 = [objc_opt_self() constraintWithItem:v55 attribute:v101 relatedBy:v100 toItem:v62 attribute:0 multiplier:1.0 constant:v54];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease_n();
            v64 = v65;
LABEL_31:
            v52 = v64;
LABEL_32:
            LODWORD(v53) = v28;
            [v52 setPriority_];
            v66 = v124;
            if (!v124)
            {
              goto LABEL_37;
            }

            v67 = v123;
            v68 = HIBYTE(v124) & 0xF;
            if ((v124 & 0x2000000000000000) == 0)
            {
              v68 = v123 & 0xFFFFFFFFFFFFLL;
            }

            if (v68)
            {
              *&v113 = sub_1C56262A4();
              *(&v113 + 1) = v69;
              MEMORY[0x1C6949D90](46, 0xE100000000000000);
              MEMORY[0x1C6949D90](v67, v66);
            }

            else
            {
LABEL_37:
              sub_1C56262A4();
            }

            v70 = sub_1C584F630();

            [v52 setIdentifier_];

            MEMORY[0x1C6949DF0]();
            if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v73 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1C584F7A0();
            }

            sub_1C584F7E0();
            v23 = v125;
            sub_1C5625A18(v116, &v113);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = sub_1C5625864(0, v22[2] + 1, 1, v22);
            }

            v72 = v22[2];
            v71 = v22[3];
            if (v72 >= v71 >> 1)
            {
              v22 = sub_1C5625864((v71 > 1), v72 + 1, 1, v22);
            }

            sub_1C562638C(v117);
            v22[2] = v72 + 1;
            sub_1C5625808(&v113, &v22[14 * v72 + 4]);
            goto LABEL_45;
          }

          sub_1C56251C8(&v113, v127);
          v37 = sub_1C5625AF4(v127, v1, v107, v109, v108);
          if (v37)
          {
            v38 = v37;
            swift_getObjectType();
            v115[0] = v36;
            v39 = v118;
            v101 = v119;
            *(&v114 + 1) = swift_getObjectType();
            *&v113 = v38;
            v99 = v120[3];
            v40 = *&v120[4];
            v41 = v121;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v100 = sub_1C584FDB0();
            v42 = *(&v114 + 1);
            if (*(&v114 + 1))
            {
              v43 = __swift_project_boxed_opaque_existential_1(&v113, *(&v114 + 1));
              v96 = &v96;
              v97 = v39;
              v44 = *(v42 - 8);
              v45 = *(v44 + 64);
              MEMORY[0x1EEE9AC00](v43, v43);
              v47 = &v96 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v44 + 16))(v47);
              v98 = sub_1C584FDB0();
              (*(v44 + 8))(v47, v42);
              v39 = v97;
              __swift_destroy_boxed_opaque_existential_1(&v113);
            }

            else
            {
              v98 = 0;
            }

            v63 = [objc_opt_self() constraintWithItem:v100 attribute:v39 relatedBy:v101 toItem:v98 attribute:v99 multiplier:v40 constant:v41];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            sub_1C5626250(v127);
            swift_unknownObjectRelease();
            v64 = v63;
            goto LABEL_31;
          }

          swift_unknownObjectRelease();
          sub_1C5626250(v127);
          sub_1C562638C(v117);
LABEL_45:
          v24 = v110;
LABEL_6:
          sub_1C562638C(v116);
          if (v21 == v24)
          {

            Strong = v104;
            v20 = v102;
            goto LABEL_48;
          }
        }

        v50 = sub_1C571AF44(v33);
        v51 = v121;
        v52 = v50;
        [v52 setConstant_];
        goto LABEL_32;
      }

      v23 = MEMORY[0x1E69E7CC0];
LABEL_48:

      swift_beginAccess();
      v74 = *v20;
      v115[0] = v23;
      v115[1] = v74;

      v75 = Strong;
      swift_unknownObjectWeakInit();

      v76 = *v1;
      v77 = *(*v1 + 152);
      swift_beginAccess();
      v78 = *(v76 + 80);
      v79 = *(v76 + 88);
      v80 = type metadata accessor for LayoutBuilder.Components();
      v81 = *(v80 - 8);
      (*(v81 + 16))(&v113, v1 + v77, v80);
      swift_beginAccess();
      (*(v81 + 24))(v1 + v77, v115, v80);
      swift_endAccess();
      v82 = *v1;
      v83 = (v1 + *(*v1 + 152));
      swift_beginAccess();
      v84 = *(v82 + 80);
      v85 = *(v82 + 88);
      v86 = type metadata accessor for LayoutBuilder.Components();
      v87 = *(v86 - 8);
      (*(v87 + 16))(v116, v83, v86);
      v88 = sub_1C5626784(v116, &v113);
      (*(v87 + 8))(v116, v86);
      if (!v88)
      {
        *(v1 + *(*v1 + 144)) = 1;
        v89 = *v83;
        v90 = *(*v1 + 160);
        swift_beginAccess();

        sub_1C5626ACC(v91, &qword_1ED77E810, 0x1E696ACD8, &qword_1EC170700, &unk_1C5877E48);
        swift_endAccess();

        v92 = v83[1];
        v93 = *(*v1 + 168);
        swift_beginAccess();

        sub_1C5626ACC(v94, &unk_1ED77E840, 0x1E69DCC20, &qword_1EC1706F8, &qword_1C5877E40);
        swift_endAccess();
      }

      (*(v81 + 8))(&v113, v80);
      v95 = type metadata accessor for LayoutBuilder.Components();
      (*(*(v95 - 8) + 8))(v115, v95);
    }
  }
}

uint64_t sub_1C5624E10()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *sub_1C5624E4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E210, &qword_1C5869768);
  v0 = swift_allocObject();
  sub_1C5624FF8(v0 + 32);
  sub_1C562538C(v0 + 144);
  sub_1C56252DC(v0 + 256);
  sub_1C56254E8(v0 + 368);
  sub_1C5625598(v0 + 480);
  sub_1C5625438(v0 + 592);
  v1 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 704; i += 112)
  {
    sub_1C5625648(v0 + i, v8);
    sub_1C5625728(v8, v6);
    if (v6[13] == 1)
    {
      sub_1C56259B0(v6);
    }

    else
    {
      sub_1C5625808(v6, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_1C5625864(0, v1[2] + 1, 1, v1);
      }

      v4 = v1[2];
      v3 = v1[3];
      if (v4 >= v3 >> 1)
      {
        v1 = sub_1C5625864((v3 > 1), v4 + 1, 1, v1);
      }

      v1[2] = v4 + 1;
      sub_1C5625808(v7, &v1[14 * v4 + 4]);
    }
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E218, qword_1C5869770);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v1;
}

uint64_t sub_1C5624FF8@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 48))
  {
    sub_1C56250A4(v1, v8);
    v8[16] = 0;
    sub_1C56250A4(v1 + 8, v7);
    v7[16] = 0;
    v3 = *(v1 + 16);
    v4 = *(v1 + 56);
    v5 = sub_1C5625100();
    return sub_1C5625108(v8, 3, 0, v7, 3, 0, 0, a1, v5, v3, v4);
  }

  else
  {
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 96) = 0;
    *(a1 + 104) = 1;
  }

  return result;
}

uint64_t sub_1C5625108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, float a11@<S2>)
{
  *(a8 + 48) = 0;
  *(a8 + 56) = -1;
  *(a8 + 40) = 0;
  sub_1C56251C8(a1, a8);
  *(a8 + 24) = a2;
  *(a8 + 32) = a3;
  sub_1C5625230(a8 + 40, &unk_1EC16FE40, &qword_1C5876370);
  result = sub_1C56251C8(a4, a8 + 40);
  *(a8 + 64) = a5;
  *(a8 + 72) = a9;
  *(a8 + 80) = a10;
  *(a8 + 88) = a11;
  *(a8 + 96) = a6;
  *(a8 + 104) = a7;
  return result;
}

uint64_t sub_1C5625230(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C56252A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C56252DC@<X0>(uint64_t a1@<X8>)
{
  if ((*(v1 + 48) & 4) != 0)
  {
    sub_1C56250A4(v1, v8);
    v8[16] = 0;
    sub_1C56250A4(v1 + 8, v7);
    v7[16] = 0;
    v3 = -*(v1 + 32);
    v4 = *(v1 + 56);
    v5 = sub_1C5625100();
    return sub_1C5625108(v8, 4, 0, v7, 4, 0, 0, a1, v5, v3, v4);
  }

  else
  {
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 96) = 0;
    *(a1 + 104) = 1;
  }

  return result;
}

uint64_t sub_1C562538C@<X0>(uint64_t a1@<X8>)
{
  if ((*(v1 + 48) & 2) != 0)
  {
    sub_1C56250A4(v1, v8);
    v8[16] = 0;
    sub_1C56250A4(v1 + 8, v7);
    v7[16] = 0;
    v3 = *(v1 + 24);
    v4 = *(v1 + 56);
    v5 = sub_1C5625100();
    return sub_1C5625108(v8, 5, 0, v7, 5, 0, 0, a1, v5, v3, v4);
  }

  else
  {
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 96) = 0;
    *(a1 + 104) = 1;
  }

  return result;
}

uint64_t sub_1C5625438@<X0>(uint64_t a1@<X8>)
{
  if ((*(v1 + 48) & 0xA) != 0)
  {
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 96) = 0;
    *(a1 + 104) = 1;
  }

  else
  {
    sub_1C56250A4(v1, v7);
    v7[16] = 0;
    sub_1C56250A4(v1 + 8, v6);
    v6[16] = 0;
    v3 = *(v1 + 56);
    v4 = sub_1C5625100();
    return sub_1C5625108(v7, 9, 0, v6, 9, 0, 0, a1, v4, 0.0, v3);
  }

  return result;
}

uint64_t sub_1C56254E8@<X0>(uint64_t a1@<X8>)
{
  if ((*(v1 + 48) & 8) != 0)
  {
    sub_1C56250A4(v1, v8);
    v8[16] = 0;
    sub_1C56250A4(v1 + 8, v7);
    v7[16] = 0;
    v3 = -*(v1 + 40);
    v4 = *(v1 + 56);
    v5 = sub_1C5625100();
    return sub_1C5625108(v8, 6, 0, v7, 6, 0, 0, a1, v5, v3, v4);
  }

  else
  {
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 96) = 0;
    *(a1 + 104) = 1;
  }

  return result;
}

uint64_t sub_1C5625598@<X0>(uint64_t a1@<X8>)
{
  if ((*(v1 + 48) & 5) != 0)
  {
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 96) = 0;
    *(a1 + 104) = 1;
  }

  else
  {
    sub_1C56250A4(v1, v7);
    v7[16] = 0;
    sub_1C56250A4(v1 + 8, v6);
    v6[16] = 0;
    v3 = *(v1 + 56);
    v4 = sub_1C5625100();
    return sub_1C5625108(v7, 10, 0, v6, 10, 0, 0, a1, v4, 0.0, v3);
  }

  return result;
}

uint64_t sub_1C5625648(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E218, qword_1C5869770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C56256B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 104);
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

uint64_t get_enum_tag_for_layout_string_6MapsUI23LayoutItemSpecificationOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5625728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E218, qword_1C5869770);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5625798(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 104) = a2;
    }
  }

  return result;
}

void *sub_1C5625864(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E8B0, &qword_1C5869AC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[14 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C56259B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E218, qword_1C5869770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C5625A64(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1C5625AB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1C5625AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C5625EE8(a1, &v44);
  if (v46)
  {
    v9 = v44;
    v8 = v45;
    v10 = HIBYTE(v45) & 0xF;
    if ((v45 & 0x2000000000000000) == 0)
    {
      v10 = v44 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      v42 = sub_1C56262A4();
      v43 = v11;
      MEMORY[0x1C6949D90](46, 0xE100000000000000);
      MEMORY[0x1C6949D90](v9, v8);
      v13 = v42;
      v12 = v43;
    }

    else
    {
      v13 = sub_1C56262A4();
      v12 = v16;
    }

    swift_beginAccess();
    v17 = *(a3 + 16);
    if (*(v17 + 16) && (v18 = sub_1C5645D34(v13, v12), (v19 & 1) != 0))
    {
      v20 = *(*(v17 + 56) + 8 * v18);
      swift_endAccess();
      v15 = v20;
    }

    else
    {
      v38 = v13;
      v39 = v12;
      v40 = a3;
      swift_endAccess();
      swift_beginAccess();
      v21 = *(a4 + 16);
      if (v21 >> 62)
      {
LABEL_38:
        v22 = sub_1C584FB90();
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v23 = 0;
      while (1)
      {
        if (v22 == v23)
        {
          v15 = 0;
          goto LABEL_27;
        }

        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1C694A320](v23, v21);
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          v24 = *(v21 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = sub_1C5706414(v24, v9, v8);

        if (v26)
        {
          break;
        }

        if (__OFADD__(v23++, 1))
        {
          goto LABEL_37;
        }
      }

      v15 = sub_1C571AF44(v23);
LABEL_27:
      swift_endAccess();

      if (v15)
      {
        swift_beginAccess();
        v28 = v15;
        MEMORY[0x1C6949DF0]();
        if (*((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v36 = *((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C584F7A0();
        }

        sub_1C584F7E0();
        swift_endAccess();
        swift_beginAccess();
        v29 = v28;
        sub_1C571AE4C(v15, v38, v39);
      }

      else
      {
        v30 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
        v31 = sub_1C584F630();
        [v30 setIdentifier_];

        swift_beginAccess();
        v32 = v30;
        MEMORY[0x1C6949DF0]();
        if (*((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v37 = *((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C584F7A0();
        }

        sub_1C584F7E0();
        swift_endAccess();
        swift_beginAccess();
        v15 = v32;
        v33 = *(v40 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = *(v40 + 16);
        *(v40 + 16) = 0x8000000000000000;
        sub_1C571CC38(v15, v38, v39, isUniquelyReferenced_nonNull_native);

        *(v40 + 16) = v41;
      }

      swift_endAccess();
    }
  }

  else
  {
    sub_1C5626058(&v44, &v42);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1C56260B4(&v42);
    if (Strong)
    {
      return Strong;
    }

    else
    {
      return 0;
    }
  }

  return v15;
}

void sub_1C5625F44(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_1C584FB90();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1C694A320](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_1C5626108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16FE40, &qword_1C5876370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5626178(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1C56262A4()
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170708, &qword_1C5877E58);
  v0 = sub_1C584F680();
  MEMORY[0x1C6949D90](v0);

  MEMORY[0x1C6949D90](58, 0xE100000000000000);
  sub_1C584FCF0();
  swift_unknownObjectRelease();
  return 0;
}

unint64_t sub_1C56263BC()
{
  result = qword_1ED77E878;
  if (!qword_1ED77E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E878);
  }

  return result;
}

uint64_t sub_1C5626410(uint64_t a1, uint64_t a2)
{
  sub_1C5625EE8(a1, v8);
  sub_1C5625EE8(a2, v9);
  if (v8[16])
  {
    sub_1C5625EE8(v8, v7);
    if (v10 == 1)
    {
      if (v7[0] == v9[0] && v7[1] == v9[1])
      {

LABEL_13:
        sub_1C5626250(v8);
        v3 = 1;
        return v3 & 1;
      }

      v4 = sub_1C584FDC0();

      if (v4)
      {
        goto LABEL_13;
      }

      sub_1C5626250(v8);
      goto LABEL_10;
    }
  }

  else
  {
    sub_1C5625EE8(v8, v7);
    if ((v10 & 1) == 0)
    {
      sub_1C5626058(v9, &v6);
      v3 = sub_1C5623E2C(v7, &v6);
      sub_1C56260B4(&v6);
      sub_1C56260B4(v7);
      sub_1C5626250(v8);
      return v3 & 1;
    }

    sub_1C56260B4(v7);
  }

  sub_1C5625230(v8, &unk_1EC16FEB0, &qword_1C58768D8);
LABEL_10:
  v3 = 0;
  return v3 & 1;
}

BOOL sub_1C562656C(uint64_t a1, uint64_t a2)
{
  if ((sub_1C5626410(a1, a2) & 1) == 0 || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  sub_1C5626108(a1 + 40, v10);
  sub_1C5626108(a2 + 40, v11);
  if (v10[16] != 255)
  {
    sub_1C5626108(v10, v9);
    if (v12 != 255)
    {
      sub_1C56251C8(v11, v8);
      v4 = sub_1C5626410(v9, v8);
      sub_1C5626250(v8);
      sub_1C5626250(v9);
      sub_1C5625230(v10, &unk_1EC16FE40, &qword_1C5876370);
      if ((v4 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    sub_1C5626250(v9);
LABEL_21:
    sub_1C5625230(v10, &qword_1EC16FE50, qword_1C5876378);
    return 0;
  }

  if (v12 != 255)
  {
    goto LABEL_21;
  }

  sub_1C5625230(v10, &unk_1EC16FE40, &qword_1C5876370);
LABEL_10:
  if (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88))
  {
    return 0;
  }

  v5 = *(a1 + 104);
  v6 = *(a2 + 104);
  if (v5)
  {
    return v6 && (*(a1 + 96) == *(a2 + 96) && v5 == v6 || (sub_1C584FDC0() & 1) != 0);
  }

  return !v6;
}

uint64_t sub_1C562673C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

BOOL sub_1C5626784(unint64_t *a1, uint64_t *a2)
{
  if ((sub_1C5626864(*a1, *a2, &qword_1ED77E810, 0x1E696ACD8) & 1) == 0 || (sub_1C5626864(a1[1], a2[1], &unk_1ED77E840, 0x1E69DCC20) & 1) == 0)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = swift_unknownObjectWeakLoadStrong();
  v6 = v5;
  if (Strong)
  {
    if (v5)
    {
      sub_1C5626E40(0, &qword_1ED77E800, 0x1E69DD250);
      v7 = sub_1C584FAC0();

      return (v7 & 1) != 0;
    }

    v6 = Strong;
  }

  else if (!v5)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1C5626864(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_1C5626E40(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1C694A320](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x1C694A320](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_1C584FAC0();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_1C584FAC0();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_1C584FB90();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_1C584FB90();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

void sub_1C5626ACC(unint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C584FB90())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1C694A320](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v11 = *(a1 + 8 * j + 32);
      }

      v12 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1C5626BCC(&v14, v11, a2, a3, a4, a5);

      if (v12 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_1C5626BCC(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_1C584FBA0();

    if (v17)
    {

      sub_1C5626E40(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_1C584FB90();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_1C571BACC(v15, result + 1, a5, a6, a3, a4);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_1C5627224(v30 + 1, a5, a6);
        }

        v31 = v16;
        sub_1C571BE80(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_1C5626E40(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_1C584FAB0();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_1C584FAC0();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      v28 = a2;
      sub_1C5626E88(v28, v22, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1C5626E40(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1C5626E88(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_1C5627224(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1C571C504(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_1C5627018(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_1C584FAB0();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_1C5626E40(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_1C584FAC0();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1C584FDF0();
  __break(1u);
}

uint64_t sub_1C5627018(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1C584FC10();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_1C584FAB0();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_1C5627224(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1C584FC10();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_1C584FAB0();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

void sub_1C5627450()
{
  v1 = *(*v0 + 144);
  if (*(v0 + v1) != 1)
  {
    return;
  }

  *(v0 + v1) = 0;
  v2 = (v0 + *(*v0 + 152));
  swift_beginAccess();
  v3 = *v2;

  v5 = sub_1C571D14C(v4);

  v6 = *(*v0 + 160);
  swift_beginAccess();
  v7 = *(v0 + v6);

  v41 = sub_1C571AFD4(v5, v7);
  v8 = sub_1C56280FC(v41, &qword_1ED77E810, 0x1E696ACD8, &qword_1ED77E808);
  sub_1C56281CC(v8);

  v9 = *(v0 + v6);
  *(v0 + v6) = v5;

  v39 = v2;
  v10 = v2[1];

  v12 = sub_1C571D2D8(v11);

  v13 = *(*v0 + 168);
  swift_beginAccess();
  v14 = *(v0 + v13);

  v40 = sub_1C571B0F0(v12, v14);
  v15 = sub_1C56280FC(v40, &unk_1ED77E840, 0x1E69DCC20, &qword_1ED77E838);
  v16 = v15;
  if ((v15 & 0x8000000000000000) != 0 || (v15 & 0x4000000000000000) != 0)
  {
    v17 = sub_1C584FB90();
    if (!v17)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v17 = *(v15 + 16);
    if (!v17)
    {
      goto LABEL_14;
    }
  }

  if (v17 >= 1)
  {
    for (i = 0; i != v17; ++i)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1C694A320](i, v16);
      }

      else
      {
        v19 = *(v16 + 8 * i + 32);
      }

      v20 = v19;
      v21 = [v19 owningView];
      if (v21)
      {

        v22 = [v20 owningView];
        [v22 removeLayoutGuide_];
      }
    }

LABEL_14:

    v14 = *(v0 + v13);
    *(v0 + v13) = v12;

    swift_beginAccess();
    v23 = v0[2];
    if (v23)
    {
      if (v23 == 1)
      {

        sub_1C5628320();
        return;
      }

      if (v23 == 2)
      {

        sub_1C5628320();
        v32 = *v39;

        if (v32 >> 62)
        {
          v33 = sub_1C584FB90();
        }

        else
        {
          v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v34 = 0;
        while (v33 != v34)
        {
          if ((v32 & 0xC000000000000001) != 0)
          {
            v35 = MEMORY[0x1C694A320](v34, v32);
          }

          else
          {
            if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_42;
            }

            v35 = *(v32 + 8 * v34 + 32);
          }

          v14 = v35;
          if (__OFADD__(v34, 1))
          {
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          v36 = [v35 isActive];

          ++v34;
          if ((v36 & 1) == 0)
          {
            v37 = objc_opt_self();
            sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
            v38 = sub_1C584F750();
            [v37 activateConstraints_];

            goto LABEL_39;
          }
        }

        goto LABEL_39;
      }

      goto LABEL_48;
    }

    v24 = *v39;

    sub_1C56281CC(v25);

    v14 = v39[1];
    if (!(v14 >> 62))
    {
      v26 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
        return;
      }

      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  v26 = sub_1C584FB90();
  if (v26)
  {
LABEL_19:
    if (v26 >= 1)
    {

      for (j = 0; j != v26; ++j)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x1C694A320](j, v14);
        }

        else
        {
          v28 = *(v14 + 8 * j + 32);
        }

        v29 = v28;
        v30 = [v28 owningView];
        if (v30)
        {

          v31 = [v29 owningView];
          [v31 removeLayoutGuide_];
        }
      }

LABEL_39:

      return;
    }

    __break(1u);
LABEL_48:
    sub_1C584FD00();
    __break(1u);
  }
}

uint64_t sub_1C56279C0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C5626E40(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C5627A10(int64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v77 = a4;
  v75 = a3;
  v8 = a2;
  v95 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v8 = MEMORY[0x1E69E7CD0];
    goto LABEL_63;
  }

  v9 = a1;
  v73 = a7;
  v74 = a6;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C584FB80();
    v7 = v75;
    sub_1C5626E40(0, v75, v77);
    sub_1C56279C0(a5, v75, v77);
    sub_1C584F950();
    v9 = v90;
    v12 = v91;
    v13 = v92;
    v14 = v93;
    v15 = v94;
  }

  else
  {
    v16 = -1 << *(a1 + 32);
    v12 = a1 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a1 + 56);

    v14 = 0;
  }

  v85 = v9;
  v86 = v12;
  v87 = v13;
  v88 = v14;
  v76 = v13;
  v19 = (v13 + 64) >> 6;
  v82 = (v8 + 56);
  v89 = v15;
  v79 = v12;
  v80 = v9;
  for (i = v19; ; v19 = i)
  {
    if (v9 < 0)
    {
      v27 = sub_1C584FBB0();
      if (!v27)
      {
        goto LABEL_62;
      }

      v83 = v27;
      sub_1C5626E40(0, v75, v77);
      swift_dynamicCast();
      v25 = v84;
      v23 = v14;
      v7 = v15;
      if (!v84)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v20 = v15;
      v21 = v14;
      if (v15)
      {
LABEL_20:
        v7 = (v20 - 1) & v20;
        v25 = *(*(v9 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
        v26 = v25;
        v23 = v21;
      }

      else
      {
        v22 = v19 <= v14 + 1 ? v14 + 1 : v19;
        v23 = v22 - 1;
        v24 = v14;
        while (1)
        {
          v21 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_66;
          }

          if (v21 >= v19)
          {
            break;
          }

          v20 = *(v12 + 8 * v21);
          ++v24;
          if (v20)
          {
            goto LABEL_20;
          }
        }

        v25 = 0;
        v7 = 0;
      }

      v85 = v9;
      v86 = v12;
      v87 = v76;
      v88 = v23;
      v89 = v7;
      if (!v25)
      {
        goto LABEL_62;
      }
    }

    v28 = *(v8 + 40);
    v29 = v25;
    v30 = sub_1C584FAB0();
    v31 = -1 << *(v8 + 32);
    v15 = v30 & ~v31;
    v9 = v15 >> 6;
    v21 = 1 << v15;
    if (((1 << v15) & v82[v15 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v14 = v23;
    v15 = v7;
    v12 = v79;
    v9 = v80;
  }

  v32 = ~v31;
  v33 = sub_1C5626E40(0, v75, v77);
  v34 = *(*(v8 + 48) + 8 * v15);
  v81 = v33;
  while (1)
  {
    v35 = sub_1C584FAC0();

    if (v35)
    {
      break;
    }

    v15 = (v15 + 1) & v32;
    v9 = v15 >> 6;
    v21 = 1 << v15;
    if (((1 << v15) & v82[v15 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v34 = *(*(v8 + 48) + 8 * v15);
  }

  v38 = *(v8 + 32);
  v71 = ((1 << v38) + 63) >> 6;
  v11 = 8 * v71;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v72 = &v70;
    MEMORY[0x1EEE9AC00](v36, v37);
    v40 = &v70 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v9] & ~v21;
    v42 = *(v8 + 16);
    v75 = v40;
    *&v40[8 * v9] = v41;
    v9 = v42 - 1;
    v44 = v79;
    v43 = v80;
    v45 = i;
LABEL_33:
    v77 = v9;
    while (v43 < 0)
    {
      v46 = sub_1C584FBB0();
      if (!v46)
      {
        goto LABEL_61;
      }

      v83 = v46;
      swift_dynamicCast();
      v15 = v84;
      if (!v84)
      {
        goto LABEL_61;
      }

LABEL_50:
      v51 = *(v8 + 40);
      v52 = sub_1C584FAB0();
      v53 = v8;
      v54 = -1 << *(v8 + 32);
      v55 = v52 & ~v54;
      v56 = v55 >> 6;
      v57 = 1 << v55;
      if (((1 << v55) & v82[v55 >> 6]) != 0)
      {
        v58 = ~v54;
        while (1)
        {
          v59 = *(*(v53 + 48) + 8 * v55);
          v60 = sub_1C584FAC0();

          if (v60)
          {
            break;
          }

          v55 = (v55 + 1) & v58;
          v56 = v55 >> 6;
          v57 = 1 << v55;
          if (((1 << v55) & v82[v55 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v45 = i;

        v61 = v75[v56];
        v75[v56] = v61 & ~v57;
        v62 = (v61 & v57) == 0;
        v8 = v53;
        v44 = v79;
        v43 = v80;
        v9 = v77;
        if (!v62)
        {
          v9 = v77 - 1;
          if (__OFSUB__(v77, 1))
          {
            __break(1u);
          }

          if (v77 == 1)
          {

            v8 = MEMORY[0x1E69E7CD0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v8 = v53;
        v44 = v79;
        v43 = v80;
        v9 = v77;
        v45 = i;
      }
    }

    if (v7)
    {
      v21 = v23;
LABEL_48:
      v49 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = *(*(v43 + 48) + ((v21 << 9) | (8 * v49)));
      v50 = v15;
      v48 = v21;
LABEL_49:
      v85 = v43;
      v86 = v44;
      v87 = v76;
      v88 = v48;
      v23 = v48;
      v89 = v7;
      if (!v15)
      {
LABEL_61:
        v8 = sub_1C571C198(v75, v71, v9, v8, v74, v73);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v45 <= v23 + 1)
    {
      v47 = v23 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v21 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v21 >= v45)
      {
        v15 = 0;
        v7 = 0;
        goto LABEL_49;
      }

      v7 = *(v44 + 8 * v21);
      ++v23;
      if (v7)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v65 = v11;

    v66 = v8;
    v67 = v65;
    if (swift_stdlib_isStackAllocationSafe())
    {

      v8 = v66;
      continue;
    }

    break;
  }

  v68 = swift_slowAlloc();
  memcpy(v68, v82, v67);
  sub_1C571BF04(v68, v71, v66, v15, &v85, v75, v77, v74, v73);
  v8 = v69;

  MEMORY[0x1C694B7A0](v68, -1, -1);
LABEL_62:
  sub_1C56280F4();
LABEL_63:
  v63 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t **sub_1C56280FC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v8 = sub_1C584FB90();
  if (!v8)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v9 = sub_1C571B594(v8, 0);

    a4 = sub_1C571CF1C(&v11, v9 + 4, v8, a1, a2, a3, a4);
    sub_1C56280F4();
    if (a4 == v8)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v8 = *(a1 + 16);
    if (!v8)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v9;
}

void sub_1C56281CC(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_18:
    v3 = sub_1C584FB90();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1C694A320](i, a1);
    }

    else
    {
      if (i >= *(v2 + 16))
      {
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v7 = [v5 isActive];

    if (v7)
    {
      v8 = objc_opt_self();
      sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
      v9 = sub_1C584F750();
      [v8 deactivateConstraints_];

      return;
    }
  }
}

void sub_1C5628320()
{
  v1 = v0 + *(*v0 + 152);
  swift_beginAccess();
  v2 = *(v1 + 8);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v14 = *(v1 + 8);
    }

    if (!sub_1C584FB90())
    {
      return;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v3 = *(v1 + 8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (v3 >> 62)
  {
    v5 = sub_1C584FB90();
    if (!v5)
    {
LABEL_20:

      return;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  if (v5 >= 1)
  {

    v6 = 0;
    while (1)
    {
      v8 = (v3 & 0xC000000000000001) != 0 ? MEMORY[0x1C694A320](v6, v3) : *(v3 + 8 * v6 + 32);
      v9 = v8;
      v10 = [v8 owningView];
      if (!v10)
      {
        break;
      }

      v11 = v10;
      if (Strong)
      {
        sub_1C5626E40(0, &qword_1ED77E800, 0x1E69DD250);
        v12 = Strong;
        v13 = sub_1C584FAC0();

        if (v13)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }

      v7 = [v9 owningView];
      [v7 removeLayoutGuide_];
LABEL_8:

LABEL_9:
      ++v6;

      if (v5 == v6)
      {

        goto LABEL_20;
      }
    }

    if (!Strong)
    {
      goto LABEL_9;
    }

LABEL_18:
    v7 = Strong;
    [v7 addLayoutGuide_];
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t *sub_1C562852C()
{
  v1 = *v0;
  MEMORY[0x1C694B870](v0 + 3);
  MEMORY[0x1C694B870](v0 + 4);
  sub_1C56286BC((v0 + 5));
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 128), *(v1 + 80));
  v2 = *(*v0 + 152);
  v3 = *(v1 + 88);
  v4 = type metadata accessor for LayoutBuilder.Components();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = *(v0 + *(*v0 + 160));

  v6 = *(v0 + *(*v0 + 168));

  return v0;
}

uint64_t sub_1C5628664()
{
  sub_1C562852C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C56287D0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5628808()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5628844()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5628960()
{
  v1 = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 80) & ~v2;
  v26 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 3);

  v5 = *(v0 + 5);

  v6 = *(v0 + 7);

  v7 = *(v0 + 9);

  v8 = *&v0[v3];

  v9 = *&v0[v3 + 8];

  v10 = v1[6];
  v11 = sub_1C584EFD0();
  v12 = *(*(v11 - 8) + 8);
  v12(&v0[v3 + v10], v11);
  v13 = *&v0[v3 + 8 + v1[7]];

  v14 = *&v0[v3 + 8 + v1[8]];

  v15 = *&v0[v3 + 8 + v1[9]];

  v16 = *&v0[v3 + 8 + v1[10]];

  v17 = *&v0[v3 + 8 + v1[11]];

  v18 = &v0[v3 + v1[12]];
  v19 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    v12(v18, v11);
    v20 = *&v18[*(v19 + 20)];
  }

  v21 = &v0[v3 + v1[14]];
  v22 = type metadata accessor for WebPlacecardBridge.MUWebMenuIcon(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    v12(v21, v11);
    v23 = *&v21[*(v22 + 20) + 8];

    v24 = *&v21[*(v22 + 24) + 8];
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v26, v2 | 7);
}

uint64_t sub_1C5628BD4()
{
  v1 = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v27 = *(*(v1 - 1) + 64);
  v4 = *(v0 + v3);

  v5 = *(v0 + v3 + 8);

  v6 = v1[6];
  v7 = sub_1C584EFD0();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v9 = *(v0 + v3 + v1[7] + 8);

  v10 = *(v0 + v3 + v1[8] + 8);

  v11 = *(v0 + v3 + v1[9] + 8);

  v12 = *(v0 + v3 + v1[10] + 8);

  v13 = *(v0 + v3 + v1[11] + 8);

  v14 = v0 + v3 + v1[12];
  v15 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v8(v14, v7);
    v16 = *(v14 + *(v15 + 20));
  }

  v17 = v0 + v3 + v1[14];
  v18 = type metadata accessor for WebPlacecardBridge.MUWebMenuIcon(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    v8(v17, v7);
    v19 = *(v17 + *(v18 + 20) + 8);

    v20 = *(v17 + *(v18 + 24) + 8);
  }

  v21 = (v27 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v0 + v21 + 8);

  v23 = *(v0 + v21 + 24);

  v24 = *(v0 + v21 + 40);

  v25 = *(v0 + v21 + 56);

  return MEMORY[0x1EEE6BDD0](v0, v21 + 64, v2 | 7);
}

uint64_t sub_1C5628E58()
{
  v1 = (type metadata accessor for MUSendToDevice(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 3);

  v6 = *(v0 + 5);

  v7 = *(v0 + 7);

  v8 = *(v0 + 9);

  v9 = sub_1C584EFD0();
  (*(*(v9 - 8) + 8))(&v0[v3], v9);
  v10 = *&v0[v3 + 8 + v1[7]];

  v11 = *&v0[v3 + 8 + v1[8]];

  v12 = *&v0[v3 + 8 + v1[9]];

  v13 = *&v0[v3 + 8 + v1[10]];

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C5628F94()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5628FCC()
{
  v1 = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 80) & ~v2;
  v28 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 3);

  v5 = *(v0 + 5);

  v6 = *(v0 + 7);

  v7 = *(v0 + 9);

  v8 = *&v0[v3];

  v9 = *&v0[v3 + 8];

  v10 = v1[6];
  v11 = sub_1C584EFD0();
  v12 = *(*(v11 - 8) + 8);
  v12(&v0[v3 + v10], v11);
  v13 = *&v0[v3 + 8 + v1[7]];

  v14 = *&v0[v3 + 8 + v1[8]];

  v15 = *&v0[v3 + 8 + v1[9]];

  v16 = *&v0[v3 + 8 + v1[10]];

  v17 = *&v0[v3 + 8 + v1[11]];

  v18 = &v0[v3 + v1[12]];
  v19 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    v12(v18, v11);
    v20 = *&v18[*(v19 + 20)];
  }

  v21 = &v0[v3 + v1[14]];
  v22 = type metadata accessor for WebPlacecardBridge.MUWebMenuIcon(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    v12(v21, v11);
    v23 = *&v21[*(v22 + 20) + 8];

    v24 = *&v21[*(v22 + 24) + 8];
  }

  v25 = (v28 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *&v0[v25 + 8];

  return MEMORY[0x1EEE6BDD0](v0, v25 + 16, v2 | 7);
}

uint64_t sub_1C5629258()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5629298()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C56292D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584E8B0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C562938C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584E8B0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C5629444()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562947C()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C56294B4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C56294EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C584ED50();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C5629558(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C584ED50();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C56295C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5629608()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5629644()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562967C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C56296B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C56296F8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1C5629750()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C56297A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  if (v2 != 255)
  {
    sub_1C56608F0(*(v0 + 32), *(v0 + 40), v2);
  }

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1C56297EC()
{
  sub_1C5660908(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C5629840()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5629878()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C56298B8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C56298F8()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5629940()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C5629990()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C56299D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5629A1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5629A5C()
{
  v1 = (type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = sub_1C584EFD0();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v9 = v6 + v1[8];
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v8(v9, v7);
    v11 = *(v9 + *(v10 + 20));
  }

  if (*(v0 + v5))
  {
    v12 = *(v0 + v5 + 8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v2 | 7);
}

uint64_t sub_1C5629BEC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5629C34()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5629C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E260, &unk_1C586A900);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E258, &unk_1C5869AF0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C5629D90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E260, &unk_1C586A900);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E258, &unk_1C5869AF0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1C5629EB0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562A110(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

unint64_t sub_1C562A134(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_1C562A15C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C584EFD0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC30, &qword_1C586B0A8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C562A28C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C584EFD0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC30, &qword_1C586B0A8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C562A3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC30, &qword_1C586B0A8);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1C562A4FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584EFD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC30, &qword_1C586B0A8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C562A630(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C584EFD0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB18, &qword_1C586AF80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C562A760(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C584EFD0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB18, &qword_1C586AF80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C562A8B8(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1C584EFD0();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB18, &qword_1C586AF80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[12];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC40, &qword_1C586B0B8);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[14]];

  return v15(v16, a2, v14);
}

char *sub_1C562AA3C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1C584EFD0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB18, &qword_1C586AF80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC40, &qword_1C586B0B8);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[14]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1C562ABC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 6)
    {
      v11 = 6;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 6;
    if (v10 >= 6)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C562AC8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584EFD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 6;
  }

  return result;
}

uint64_t sub_1C562AD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC48, &qword_1C586B0C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 2)
  {
    v15 = ((v14 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v15 = -2;
  }

  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1C562AE78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C584EFD0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC48, &qword_1C586B0C0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1C562AF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 28));
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C562B050(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584EFD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1C562B108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1C562B1E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584EFD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1C562B298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC50, &qword_1C586B0C8);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 44);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1C562B3D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584EFD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC50, &qword_1C586B0C8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C562B50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1C562B5D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584EFD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C562B6BC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C584EFD0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1C562B768(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C584EFD0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C562B814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 242)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 0xD)
    {
      v11 = 13;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 13;
    if (v10 >= 0xD)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECD0, &qword_1C586B158);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1C562B948(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584EFD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 242)
  {
    *(a1 + *(a4 + 20)) = a2 + 13;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECD0, &qword_1C586B158);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C562BA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1C562BB40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584EFD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C562BC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1C562BCF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584EFD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C562BDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1C562BE7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584EFD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C562BF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 3;
    if (v10 >= 3)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C562C000(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584EFD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_1C562C0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED18, &qword_1C586B1A0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1C562C228(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584EFD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED18, &qword_1C586B1A0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C562C55C()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562C74C()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562C784()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C562C7C4()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562C7FC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C562C83C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562C874()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562C8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FE18, &unk_1C5877850);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C562C974(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FE18, &unk_1C5877850);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C562CA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170510, qword_1C5877770);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C562CB04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170510, qword_1C5877770);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C562CBCC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562CC04()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562CC3C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C584EB30();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1702F0, &unk_1C5877650);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C562CD6C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C584EB30();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1702F0, &unk_1C5877650);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C562CEE8()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562CF6C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C562CFB4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562CFF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C562D038()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C562D0A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562D0D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C562D120()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170A88, &qword_1C58783C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C562D264()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562D29C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C562D2D4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C584EB30();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1702F0, &unk_1C5877650);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C562D404(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C584EB30();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1702F0, &unk_1C5877650);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C562D534()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562D56C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C562D5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EEC0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for PlaceActionBarLayoutItem(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C562D6A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C584EEC0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for PlaceActionBarLayoutItem(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1C562D7A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C562D7E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C562D820()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562D85C()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562D894()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1C562D8D4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C562D914()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562D94C()
{
  v1 = *(v0 + 16);

  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C562D99C()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562D9D4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562DA1C()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562DB28()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562DB60()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1C562DBA0()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562DBD8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562DC10()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1C562DC48(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1C584F400();
  sub_1C584F470();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C584F410();
  swift_getWitnessTable();
  sub_1C584F450();
  return swift_getWitnessTable();
}

uint64_t sub_1C562DD8C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C562DDD4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C562DE14()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5632F48(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5632F68(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1C5632F90(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C5632FA8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_1C5632FB8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C5633014(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5633034(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1C5633060(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C5633088@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_unknownObjectRetain();
  result = sub_1C56236C4();
  *(a1 + 16) = 0;
  return result;
}

void sub_1C56330C0(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];

  GEOLocationCoordinate2DMake(v4, v3);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = 1;
}

uint64_t sub_1C563310C()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_1C56331B4(v3, v10);
      sub_1C563326C(v10, v7);
      sub_1C56332A4(v10);
      v4 = v8;
      v5 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      (*(v5 + 16))(v4, v5);
      result = __swift_destroy_boxed_opaque_existential_1(v7);
      v3 += 96;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1C56331B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16D8C8, &qword_1C58677D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C56332A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16D8C8, &qword_1C58677D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5633310(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C563337C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 8))(v9, v3, v4);
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  (*(v6 + 8))(v8, v5, v6);
  LOBYTE(a2) = sub_1C57057BC(v9, v8);
  sub_1C5626250(v8);
  sub_1C5626250(v9);
  return a2 & 1;
}

unint64_t sub_1C5633434()
{
  result = qword_1ED77E898;
  if (!qword_1ED77E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E898);
  }

  return result;
}

uint64_t sub_1C5633488()
{
  sub_1C584FEA0();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v4, v1, v2);
  sub_1C5633434();
  sub_1C584F5F0();
  sub_1C5626250(v4);
  return sub_1C584FEF0();
}

uint64_t sub_1C5633520()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v4, v1, v2);
  sub_1C5633434();
  sub_1C584F5F0();
  return sub_1C5626250(v4);
}

uint64_t sub_1C56335A8()
{
  sub_1C584FEA0();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v4, v1, v2);
  sub_1C5633434();
  sub_1C584F5F0();
  sub_1C5626250(v4);
  return sub_1C584FEF0();
}

unint64_t sub_1C5633640()
{
  result = qword_1ED77E860;
  if (!qword_1ED77E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E860);
  }

  return result;
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

uint64_t sub_1C56336A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C56336F0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1C5633958(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1C5633A28(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t PlaceItemShareItemSource.excludedActivityTypes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16D8E0, &qword_1C5867910);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C5867900;
  v1 = *MEMORY[0x1E69CDA70];
  *(v0 + 32) = sub_1C584F660();
  *(v0 + 40) = v2;
  return v0;
}

uint64_t PlaceItemShareItemSource.includedActivityTypes.getter()
{
  v1 = OBJC_IVAR___MUPlaceItemShareItemSource_includedActivityTypes;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t PlaceItemShareItemSource.includedActivityTypes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MUPlaceItemShareItemSource_includedActivityTypes;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id PlaceItemShareItemSource.__allocating_init(placeItem:applicationActivities:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1C563404C(a1, a2);
  swift_unknownObjectRelease();
  return v6;
}

id PlaceItemShareItemSource.init(placeItem:applicationActivities:)(void *a1, uint64_t a2)
{
  v2 = sub_1C563404C(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

id PlaceItemShareItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlaceItemShareItemSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C563404C(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___MUPlaceItemShareItemSource_includedActivityTypes] = 0;
  *&v3[OBJC_IVAR___MUPlaceItemShareItemSource_placeItem] = a1;
  v28 = MEMORY[0x1E69E7CC0];
  v7 = [swift_unknownObjectRetain() mapItem];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MUPlaceActivityDataProviderConfiguration) initWithMapItem_];
    if (([a1 representsPerson] & 1) == 0)
    {
      [v9 setSupportsURLShorteningService_];
    }

    v10 = [objc_allocWithZone(MUPlaceActivityDataProvider) initWithConfiguration_];
    *&v3[OBJC_IVAR___MUPlaceItemShareItemSource_dataProvider] = v10;
    v11 = objc_opt_self();
    v12 = v10;
    v13 = [v11 activityProviderFromDataProvider_];
    if (v13)
    {
      v14 = v13;
      MEMORY[0x1C6949DF0]();
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C584F7A0();
      }

      sub_1C584F7E0();
      v15 = v28;
      v16 = [objc_opt_self() activityProviderFromDataProvider_];
      if (v16)
      {
        v17 = v16;
        MEMORY[0x1C6949DF0]();
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v26 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C584F7A0();
        }

        sub_1C584F7E0();

        v15 = v28;
      }

      else
      {
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    if (GEOConfigGetBOOL())
    {
      v18 = [objc_allocWithZone(MUPlaceMapItemActivityProvider) initWithDataProvider_];
      if (v18)
      {
        v19 = v18;
        MEMORY[0x1C6949DF0]();
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v25 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C584F7A0();
        }

        sub_1C584F7E0();

        v15 = v28;
      }
    }

    v20 = [objc_opt_self() activityProviderFromDataProvider_];
    if (v20)
    {
      v21 = v20;
      MEMORY[0x1C6949DF0]();
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v24 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C584F7A0();
      }

      sub_1C584F7E0();

      v15 = v28;
    }

    else
    {
    }

    *&v3[OBJC_IVAR___MUPlaceItemShareItemSource_activityProviders] = v15;
    *&v3[OBJC_IVAR___MUPlaceItemShareItemSource_applicationActivities] = a2;
    v27.receiver = v3;
    v27.super_class = ObjectType;
    return objc_msgSendSuper2(&v27, sel_init);
  }

  else
  {
    result = sub_1C584FD00();
    __break(1u);
  }

  return result;
}

unint64_t sub_1C5634494()
{
  result = qword_1EC16D9C8;
  if (!qword_1EC16D9C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC16D9C8);
  }

  return result;
}

uint64_t MUEVChargingViewModel.SectionGroup.headerTitle.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MUEVChargingViewModel.SectionGroup.headerSubtitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1C5634564@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_observer;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C56345C0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_observer;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t MUEVChargingViewModel.observer.getter()
{
  v1 = v0 + OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_observer;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t MUEVChargingViewModel.observer.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_observer;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MUEVChargingViewModel.observer.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_observer;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1C5634780;
}

void sub_1C5634780(uint64_t a1, char a2)
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

uint64_t MUEVChargingViewModel.isActive.getter()
{
  v1 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_isActive;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MUEVChargingViewModel.isActive.setter(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_isActive;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id MUEVChargingViewModel.__allocating_init(availabilityProvider:)(char *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_connectedVehiclesSectionGroups] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_otherPlugsSectionGroup] = v4;
  *&v3[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_observer + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_isActive] = 0;
  *&v3[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_availabilityProvider] = a1;
  v5 = OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_availability;
  swift_beginAccess();
  v6 = *&a1[v5];
  *&v3[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_availability] = v6;
  v11.receiver = v3;
  v11.super_class = v1;
  v7 = a1;
  v8 = v6;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_1C5634B14();
  MUEVChargerAvailabilityProvider.registerObserver(_:)(v9);

  return v9;
}

id MUEVChargingViewModel.init(availabilityProvider:)(char *a1)
{
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_connectedVehiclesSectionGroups] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_otherPlugsSectionGroup] = v4;
  *&v1[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_observer + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_isActive] = 0;
  *&v1[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_availabilityProvider] = a1;
  v5 = OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_availability;
  swift_beginAccess();
  v6 = *&a1[v5];
  *&v1[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_availability] = v6;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v7 = a1;
  v8 = v6;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_1C5634B14();
  MUEVChargerAvailabilityProvider.registerObserver(_:)(v9);

  return v9;
}

uint64_t sub_1C5634B14()
{
  v4 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_connectedVehiclesSectionGroups;
  swift_beginAccess();
  v5 = *(v0 + v4);
  v6 = MEMORY[0x1E69E7CC0];
  v177 = v4;
  *(v0 + v4) = MEMORY[0x1E69E7CC0];

  v7 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_otherPlugsSectionGroup;
  swift_beginAccess();
  v8 = *(v0 + v7);
  v176 = v7;
  *(v0 + v7) = v6;

  v9 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_availability;
  v195 = [*(*(v0 + OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_availability) + OBJC_IVAR____TtC6MapsUI23MUEVChargerAvailability_aggregatedInfo) status];
  v181 = v9;
  v10 = *(*(v0 + v9) + OBJC_IVAR____TtC6MapsUI23MUEVChargerAvailability_plugs);

  v12 = sub_1C563B950(v11);

  v13 = *(v12 + 16);
  v189 = v0;
  v194 = v12;
  if (v13)
  {
    v14 = sub_1C56383B8(v13, 0);
    v15 = sub_1C563B850(v199, (v14 + 32), v13, v12);
    v2 = v199[0];
    v3 = v199[1];
    v16 = v199[2];
    v1 = v199[3];
    swift_bridgeObjectRetain_n();
    sub_1C56280F4();
    if (v15 != v13)
    {
      goto LABEL_235;
    }
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v199[0] = v14;
  sub_1C5637B74(v199);

  v16 = v199[0];
  v17 = *(*(v0 + v181) + OBJC_IVAR____TtC6MapsUI23MUEVChargerAvailability_vehicles);
  if (v17 >> 62)
  {
    v13 = sub_1C584FB90();
    if (v13)
    {
      goto LABEL_7;
    }

LABEL_15:
    v1 = 0;
    goto LABEL_16;
  }

  v13 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (v13 < 1)
  {
    goto LABEL_236;
  }

  v1 = 0;
  v18 = 0;
  do
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1C694A320](v18, v17);
    }

    else
    {
      v19 = *(v17 + 8 * v18 + 32);
    }

    v20 = v19;
    ++v18;
    v21 = [v19 supportedConnectors];

    v1 |= v21;
  }

  while (v13 != v18);

LABEL_16:
  v198 = v6;
  v22 = *(v16 + 2);
  if (v22)
  {
    v23 = (v16 + 32);
    v24 = MEMORY[0x1E69E7CC0];
    v6 = MEMORY[0x1E69E7CC0];
    v193 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      while (1)
      {
        v27 = *v23++;
        v26 = v27;
        if (v27 > 4)
        {
          break;
        }

        if (v26 > 2)
        {
          if (v26 == 3)
          {
            v28 = v1 & 0x100;
            if ((v1 & 0x40) != 0)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v28 = v1 & 2;
            if (v26 != 4)
            {
              goto LABEL_41;
            }
          }
        }

        else
        {
          v28 = v1 & 8;
          if (v26 != 1)
          {
            v28 = v1 & 1;
            if (v26 != 2)
            {
              goto LABEL_41;
            }
          }
        }

LABEL_36:
        if (!v28)
        {
          goto LABEL_41;
        }

        if (!v195)
        {
          goto LABEL_49;
        }

LABEL_37:
        if (*(v194 + 16) && (v29 = sub_1C5637498(v26), (v30 & 1) != 0))
        {
          v31 = *(*(v194 + 56) + 8 * v29);
        }

        else
        {
          v31 = MEMORY[0x1E69E7CC0];
        }

        v34 = sub_1C563BBA8(v31);

        if (!v34)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v193 = sub_1C5638124(0, *(v193 + 2) + 1, 1, v193);
          }

          v38 = *(v193 + 2);
          v37 = *(v193 + 3);
          if (v38 >= v37 >> 1)
          {
            v193 = sub_1C5638124((v37 > 1), v38 + 1, 1, v193);
          }

          *(v193 + 2) = v38 + 1;
          v25 = &v193[4 * v38];
        }

        else
        {
LABEL_49:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1C5638124(0, *(v6 + 2) + 1, 1, v6);
          }

          v36 = *(v6 + 2);
          v35 = *(v6 + 3);
          if (v36 >= v35 >> 1)
          {
            v6 = sub_1C5638124((v35 > 1), v36 + 1, 1, v6);
          }

          *(v6 + 2) = v36 + 1;
          v25 = &v6[4 * v36];
        }

        *(v25 + 8) = v26;
        if (!--v22)
        {
          goto LABEL_59;
        }
      }

      if (v26 <= 6)
      {
        v28 = v1 & 4;
        if (v26 != 5)
        {
          v28 = v1 & 0x10;
          if (v26 != 6)
          {
            goto LABEL_41;
          }
        }

        goto LABEL_36;
      }

      v28 = v1 & 0x20;
      if (v26 == 7)
      {
        goto LABEL_36;
      }

      if (v26 == 8)
      {
        v28 = v1 & 0x80;
        goto LABEL_36;
      }

LABEL_41:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1C5638124(0, *(v24 + 2) + 1, 1, v24);
      }

      v33 = *(v24 + 2);
      v32 = *(v24 + 3);
      if (v33 >= v32 >> 1)
      {
        v24 = sub_1C5638124((v32 > 1), v33 + 1, 1, v24);
      }

      *(v24 + 2) = v33 + 1;
      *&v24[4 * v33 + 32] = v26;
      v198 = v24;
      if (!--v22)
      {
        goto LABEL_59;
      }
    }
  }

  v193 = v6;
LABEL_59:

  v197 = v193;
  *(v193 + 2);

  sub_1C5636280(v6);
  v39 = v189;
  v40 = *(*(v189 + v181) + OBJC_IVAR____TtC6MapsUI23MUEVChargerAvailability_vehicles);
  if (v195)
  {
    LODWORD(v13) = *(v193 + 2) == 0;
  }

  else
  {
    LODWORD(v13) = 1;
  }

  v41 = v197;
  v42 = *(*(v189 + v181) + OBJC_IVAR____TtC6MapsUI23MUEVChargerAvailability_vehicles);

  v14 = v40 >> 62;
  if (v40 >> 62)
  {
    goto LABEL_233;
  }

  v43 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v180 = v41;
    if (v43 < 1)
    {
      v41 = MEMORY[0x1E69E7CC0];
      goto LABEL_176;
    }

    v186 = v40;
    v187 = *(v41 + 16);
    if (!v187)
    {
      v41 = MEMORY[0x1E69E7CC0];
      goto LABEL_176;
    }

    if (v43 == 1 || v43 >= 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAE8, &qword_1C5867AE8);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1C5867900;
      v45 = objc_opt_self();
      v46 = &selRef_evChargers;
      if (!v13)
      {
        v46 = &selRef_evChargingSectionHeaderAvailableNow;
      }

      v47 = [v45 *v46];
      v48 = sub_1C584F660();
      v50 = v49;

      if (v43 < 4)
      {
        v52 = sub_1C563BC94(v186);
        v54 = v55;
      }

      else
      {
        v51 = [objc_opt_self() forYourVehicles];
        v52 = sub_1C584F660();
        v54 = v53;
      }

      v39 = v189;
      v56 = sub_1C563636C(v180, v194);
      *(v41 + 32) = v48;
      *(v41 + 40) = v50;
      *(v41 + 48) = v52;
      *(v41 + 56) = v54;
      *(v41 + 64) = v56;
      goto LABEL_176;
    }

    if (v14)
    {
      v40 = sub_1C584FB90();
    }

    else
    {
      v40 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v174 = v13;
    if (!v40)
    {
      v190 = MEMORY[0x1E69E7CC0];
      goto LABEL_124;
    }

    v57 = 0;
    v182 = (v41 + 32);
    v1 = &_OBJC_LABEL_PROTOCOL___MUAmenityItemViewModel;
    v190 = MEMORY[0x1E69E7CC0];
    do
    {
LABEL_85:
      if ((v186 & 0xC000000000000001) != 0)
      {
        v58 = MEMORY[0x1C694A320](v57, v186);
      }

      else
      {
        if (v57 >= *((v186 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_232;
        }

        v58 = *(v186 + 32 + 8 * v57);
      }

      v59 = v58;
      v60 = __OFADD__(v57++, 1);
      if (v60)
      {
        goto LABEL_230;
      }

      v61 = v182;
      v41 = v187;
      v39 = MEMORY[0x1E69E7CC0];
      do
      {
        v64 = *v61++;
        LODWORD(v13) = v64;
        v65 = [v59 supportedConnectors];
        if (v64 > 4)
        {
          if (v13 > 6)
          {
            if (v13 == 7)
            {
              v66 = 32;
            }

            else
            {
              if (v13 != 8)
              {
                goto LABEL_94;
              }

              v66 = 128;
            }
          }

          else if (v13 == 5)
          {
            v66 = 4;
          }

          else
          {
            v66 = 16;
          }

LABEL_113:
          if ((v66 & v65) == 0)
          {
            goto LABEL_94;
          }

          goto LABEL_114;
        }

        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v66 = 8;
          }

          else
          {
            if (v13 != 2)
            {
              goto LABEL_94;
            }

            v66 = 1;
          }

          goto LABEL_113;
        }

        if (v13 != 3)
        {
          v66 = 2;
          goto LABEL_113;
        }

        if ((v65 & 0x40) == 0)
        {
          v66 = 256;
          goto LABEL_113;
        }

LABEL_114:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v199[0] = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C563B164(0, *(v39 + 16) + 1, 1);
          v39 = v199[0];
        }

        v63 = *(v39 + 16);
        v62 = *(v39 + 24);
        v14 = v63 + 1;
        if (v63 >= v62 >> 1)
        {
          sub_1C563B164((v62 > 1), v63 + 1, 1);
          v39 = v199[0];
        }

        *(v39 + 16) = v14;
        *(v39 + 4 * v63 + 32) = v13;
LABEL_94:
        --v41;
      }

      while (v41);
      if (!*(v39 + 16))
      {

        if (v57 == v40)
        {
          break;
        }

        goto LABEL_85;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v190 = sub_1C5637FF0(0, v190[2] + 1, 1, v190);
      }

      v41 = v190[2];
      v68 = v190[3];
      v14 = v41 + 1;
      if (v41 >= v68 >> 1)
      {
        v190 = sub_1C5637FF0((v68 > 1), v41 + 1, 1, v190);
      }

      v190[2] = v14;
      v69 = &v190[2 * v41];
      v69[4] = v59;
      v69[5] = v39;
    }

    while (v57 != v40);
LABEL_124:
    v14 = v190;

    v41 = 0;
    v40 = sub_1C563D508(v70);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB00, &qword_1C5867B00);
    v71 = sub_1C584FD30();
    v3 = 0;
    v72 = 1 << *(v40 + 32);
    v73 = -1;
    if (v72 < 64)
    {
      v73 = ~(-1 << v72);
    }

    v74 = v40 + 64;
    v39 = v73 & *(v40 + 64);
    v16 = ((v72 + 63) >> 6);
    v188 = v71;
    v2 = (v71 + 64);
    v178 = (v71 + 64);
    v175 = v40;
    if (v39)
    {
      goto LABEL_127;
    }

LABEL_128:
    v76 = v3;
LABEL_129:
    v3 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      v43 = sub_1C584FB90();
      continue;
    }

    break;
  }

  if (v3 >= v16)
  {

    v196 = MEMORY[0x1E69E7CD0];
    v85 = 1 << *(v188 + 32);
    v86 = -1;
    if (v85 < 64)
    {
      v86 = ~(-1 << v85);
    }

    v40 = v86 & *(v188 + 64);
    v41 = (v85 + 63) >> 6;

    v87 = 0;
    if (v40)
    {
      while (1)
      {
        v13 = v87;
LABEL_148:
        v88 = *(*(v188 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v40)))));

        v14 = sub_1C563D730(v89);

        v90 = v196;

        v1 = *(sub_1C563A9DC(v14, v90) + 16);

        if (v1)
        {
          break;
        }

        v40 &= v40 - 1;
        v39 = &v196;
        sub_1C56364A8(v14);
        v87 = v13;
        if (!v40)
        {
          goto LABEL_145;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAE8, &qword_1C5867AE8);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1C5867900;
      v118 = objc_opt_self();
      v119 = &selRef_evChargers;
      if (!v174)
      {
        v119 = &selRef_evChargingSectionHeaderAvailableNow;
      }

      v120 = [v118 *v119];
      v121 = sub_1C584F660();
      v123 = v122;

      v124 = [objc_opt_self() forYourVehicles];
      v125 = sub_1C584F660();
      v127 = v126;

      v39 = v189;
      v128 = sub_1C563636C(v180, v194);
      *(v41 + 32) = v121;
      *(v41 + 40) = v123;
      *(v41 + 48) = v125;
      *(v41 + 56) = v127;
      *(v41 + 64) = v128;

LABEL_176:

      v111 = *(v39 + v177);
      *(v39 + v177) = v41;

      v112 = v198;
      v113 = *(v198 + 2);
      if (v113)
      {
        v114 = MEMORY[0x1E69E7CC0];
        v115 = 32;
        v116 = MEMORY[0x1E69E7CC0];
        v117 = MEMORY[0x1E69E7CC0];
        do
        {
          v130 = *&v112[v115];
          if (!v195)
          {
            goto LABEL_190;
          }

          if (*(v194 + 16) && (v131 = sub_1C5637498(*&v112[v115]), (v132 & 1) != 0))
          {
            v133 = *(*(v194 + 56) + 8 * v131);
          }

          else
          {
            v133 = v114;
          }

          v134 = sub_1C563BBA8(v133);

          if (!v134)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v117 = sub_1C5638124(0, *(v117 + 2) + 1, 1, v117);
            }

            v136 = *(v117 + 2);
            v138 = *(v117 + 3);
            v137 = v136 + 1;
            if (v136 >= v138 >> 1)
            {
              v129 = sub_1C5638124((v138 > 1), v136 + 1, 1, v117);
              v117 = v129;
            }

            else
            {
              v129 = v117;
            }
          }

          else
          {
LABEL_190:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v116 = sub_1C5638124(0, *(v116 + 2) + 1, 1, v116);
            }

            v136 = *(v116 + 2);
            v135 = *(v116 + 3);
            v137 = v136 + 1;
            if (v136 >= v135 >> 1)
            {
              v129 = sub_1C5638124((v135 > 1), v136 + 1, 1, v116);
              v116 = v129;
            }

            else
            {
              v129 = v116;
            }
          }

          *(v129 + 2) = v137;
          *&v129[4 * v136 + 32] = v130;
          v115 += 4;
          --v113;
        }

        while (v113);

        if (*(v117 + 2))
        {
          sub_1C563D404(0, 0);
          v39 = v189;
          v139 = *(*(v189 + v177) + 16);
          v140 = objc_opt_self();
          if (v139)
          {
            v141 = [v140 evChargingOtherChargers];
            v142 = sub_1C584F660();
            v144 = v143;

            v145 = 0;
            v146 = 0xE000000000000000;
          }

          else
          {
            v148 = [v140 evChargingSectionHeaderAvailableNow];
            v145 = sub_1C584F660();
            v146 = v149;

            v142 = 0;
            v144 = 0;
          }

          v150 = sub_1C563636C(v117, v194);

          if (v146)
          {
            swift_beginAccess();
            v151 = *(v189 + v176);

            v152 = swift_isUniquelyReferenced_nonNull_native();
            *(v189 + v176) = v151;
            v153 = v142;
            if ((v152 & 1) == 0)
            {
              v151 = sub_1C5637ED0(0, *(v151 + 2) + 1, 1, v151);
              *(v189 + v176) = v151;
            }

            v155 = *(v151 + 2);
            v154 = *(v151 + 3);
            if (v155 >= v154 >> 1)
            {
              v151 = sub_1C5637ED0((v154 > 1), v155 + 1, 1, v151);
            }

            *(v151 + 2) = v155 + 1;
            v156 = &v151[40 * v155];
            *(v156 + 4) = v145;
            *(v156 + 5) = v146;
            *(v156 + 6) = v153;
            *(v156 + 7) = v144;
            *(v156 + 8) = v150;
            v39 = v189;
            *(v189 + v176) = v151;
            swift_endAccess();
            v147 = 0;
            if (*(v116 + 2))
            {
LABEL_212:
              v192 = v145;
              v157 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_connectedVehiclesSectionGroups;
              swift_beginAccess();
              v158 = *(*(v39 + v157) + 16);
              v159 = objc_opt_self();
              if (v158)
              {
                v160 = [v159 evChargingOfflineChargers];
                v2 = sub_1C584F660();
                v16 = v161;

                v3 = 0;
                v1 = 0xE000000000000000;
              }

              else
              {
                if (v147)
                {
                  v162 = [v159 evChargers];
                }

                else
                {
                  v162 = [v159 evChargingOfflineChargers];
                }

                v163 = v162;
                v3 = sub_1C584F660();
                v1 = v164;

                v2 = 0;
                v16 = 0;
              }

              sub_1C563D404(v192, v146);
              v13 = sub_1C563636C(v116, v194);

              swift_beginAccess();
              v14 = *(v189 + v176);
              v165 = swift_isUniquelyReferenced_nonNull_native();
              *(v189 + v176) = v14;
              if ((v165 & 1) == 0)
              {
                goto LABEL_237;
              }

              goto LABEL_221;
            }
          }

          else
          {
            v147 = 1;
            if (*(v116 + 2))
            {
              goto LABEL_212;
            }
          }
        }

        else
        {

          v145 = 0;
          v146 = 0;
          v147 = 1;
          v39 = v189;
          if (*(v116 + 2))
          {
            goto LABEL_212;
          }
        }

        sub_1C563D404(v145, v146);
      }

      else
      {
      }

      goto LABEL_224;
    }

    while (1)
    {
LABEL_145:
      v13 = v87 + 1;
      if (__OFADD__(v87, 1))
      {
        goto LABEL_229;
      }

      if (v13 >= v41)
      {
        break;
      }

      v40 = *&v2[8 * v13];
      ++v87;
      if (v40)
      {
        goto LABEL_148;
      }
    }

    v39 = *(v188 + 16);
    if (v39)
    {
      v91 = sub_1C5638334(*(v188 + 16), 0);
      v92 = sub_1C563B6FC(v199, v91 + 4, v39, v188);
      swift_retain_n();
      sub_1C56280F4();
      if (v92 == v39)
      {
LABEL_155:
        v199[0] = v91;
        sub_1C5637AF0(v199, sub_1C563B6D4, sub_1C5638760);

        v93 = v199[0];
        v40 = *(v199[0] + 2);
        if (!v40)
        {
          v41 = MEMORY[0x1E69E7CC0];
LABEL_175:

          v39 = v189;
          goto LABEL_176;
        }

        v94 = 0;
        v13 = (v199[0] + 32);
        v95 = v40 - 1;
        v41 = MEMORY[0x1E69E7CC0];
        v14 = 0x1E8216000uLL;
LABEL_157:
        v1 = v94;
        while (v1 < *(v93 + 2))
        {
          if (*(v188 + 16))
          {
            v96 = *(v13 + 8 * v1);
            v39 = v188;
            v97 = sub_1C5637404(v96);
            if (v98)
            {
              v99 = *(*(v188 + 56) + 8 * v97);
              v184 = v95;
              if (v1)
              {

                v191 = 0;
                v185 = 0xE000000000000000;
              }

              else
              {
                v100 = *(v14 + 1368);
                v101 = objc_opt_self();

                if (v174)
                {
                  v102 = [v101 evChargers];
                }

                else
                {
                  v102 = [v101 evChargingSectionHeaderAvailableNow];
                }

                v103 = v102;
                v191 = sub_1C584F660();
                v185 = v104;
              }

              v105 = sub_1C563BC94(v99);
              v179 = v106;

              v107 = sub_1C563636C(v96, v194);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v41 = sub_1C5637ED0(0, *(v41 + 16) + 1, 1, v41);
              }

              v109 = *(v41 + 16);
              v108 = *(v41 + 24);
              v39 = v109 + 1;
              if (v109 >= v108 >> 1)
              {
                v41 = sub_1C5637ED0((v108 > 1), v109 + 1, 1, v41);
              }

              v94 = (v1 + 1);
              *(v41 + 16) = v39;
              v110 = (v41 + 40 * v109);
              v110[4] = v191;
              v110[5] = v185;
              v110[6] = v105;
              v110[7] = v179;
              v110[8] = v107;
              v95 = v184;
              v14 = 0x1E8216000;
              if (v184 != v1)
              {
                goto LABEL_157;
              }

              goto LABEL_175;
            }
          }

          if (v40 == ++v1)
          {
            goto LABEL_175;
          }
        }

        goto LABEL_231;
      }

      __break(1u);
    }

    v91 = MEMORY[0x1E69E7CC0];
    goto LABEL_155;
  }

  v77 = *(v74 + 8 * v3);
  ++v76;
  if (!v77)
  {
    goto LABEL_129;
  }

  v75 = __clz(__rbit64(v77));
  v39 = (v77 - 1) & v77;
  while (2)
  {
    v41 = v75 | (v3 << 6);
    v78 = *(*(v40 + 48) + 8 * v41);
    v14 = *(*(v40 + 56) + 8 * v41);
    v13 = *(v14 + 16);
    if (v13)
    {
      v199[0] = MEMORY[0x1E69E7CC0];
      v183 = v78;

      sub_1C584FCC0();
      v79 = 32;
      do
      {
        v80 = *(v14 + v79);
        sub_1C584FCA0();
        v1 = *(v199[0] + 2);
        sub_1C584FCD0();
        sub_1C584FCE0();
        sub_1C584FCB0();
        v79 += 16;
        --v13;
      }

      while (v13);

      v81 = v199[0];
      v2 = v178;
      v40 = v175;
      v82 = v183;
    }

    else
    {

      v81 = MEMORY[0x1E69E7CC0];
    }

    *&v2[(v41 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v41;
    *(*(v188 + 48) + 8 * v41) = v82;
    *(*(v188 + 56) + 8 * v41) = v81;
    v83 = *(v188 + 16);
    v60 = __OFADD__(v83, 1);
    v84 = v83 + 1;
    if (!v60)
    {
      *(v188 + 16) = v84;
      if (!v39)
      {
        goto LABEL_128;
      }

LABEL_127:
      v75 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_235:
  __break(1u);
LABEL_236:
  __break(1u);
LABEL_237:
  v14 = sub_1C5637ED0(0, *(v14 + 16) + 1, 1, v14);
  *(v189 + v176) = v14;
LABEL_221:
  v167 = *(v14 + 16);
  v166 = *(v14 + 24);
  if (v167 >= v166 >> 1)
  {
    v14 = sub_1C5637ED0((v166 > 1), v167 + 1, 1, v14);
  }

  *(v14 + 16) = v167 + 1;
  v168 = (v14 + 40 * v167);
  v168[4] = v3;
  v168[5] = v1;
  v168[6] = v2;
  v168[7] = v16;
  v168[8] = v13;
  v39 = v189;
  *(v189 + v176) = v14;
  swift_endAccess();
LABEL_224:
  v169 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_isActive;
  swift_beginAccess();
  if (*(v39 + v169) != 1)
  {
  }

  v170 = v39 + OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_observer;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v171 = *(v170 + 8);
  ObjectType = swift_getObjectType();
  (*(v171 + 8))(v39, ObjectType, v171);

  return swift_unknownObjectRelease();
}

id MUEVChargingViewModel.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_availabilityProvider];
  v3 = v0;
  MUEVChargerAvailabilityProvider.unregisterObserver(_:)(v3);

  v5.receiver = v3;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1C5636280(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1C5638124(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v8 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1C563636C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = (a1 + 32);
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = *v4++;
    v23 = v6;
    sub_1C5636588(&v23, a2, ObjectType, &v18);
    v8 = v21;
    v7 = v22;
    v10 = v18;
    v9 = v19;
    v11 = v20;
    if (v22)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1C5637DB0(0, *(v5 + 2) + 1, 1, v5);
      }

      v13 = *(v5 + 2);
      v12 = *(v5 + 3);
      if (v13 >= v12 >> 1)
      {
        v5 = sub_1C5637DB0((v12 > 1), v13 + 1, 1, v5);
      }

      *(v5 + 2) = v13 + 1;
      v14 = &v5[40 * v13];
      *(v14 + 4) = v10;
      *(v14 + 5) = v9;
      *(v14 + 6) = v11;
      *(v14 + 7) = v8;
      *(v14 + 8) = v7;
    }

    else
    {
      sub_1C563D454(v18, v19, v20, v21, 0);
    }

    --v3;
  }

  while (v3);
  return v5;
}

uint64_t sub_1C56364A8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_1C563A1D8(&v10, *(*(v1 + 48) + ((v8 << 8) | (4 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1C5636588@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v37 = a3;
  v7 = type metadata accessor for EVChargingRow(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x1EEE9AC00](v7 - 8, v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16) || (LODWORD(v14) = *a1, result = sub_1C5637498(*a1), (v15 & 1) == 0))
  {
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return result;
  }

  v16 = *(*(a2 + 56) + 8 * result);
  if (v16 >> 62)
  {
LABEL_26:
    v17 = sub_1C584FB90();
    if (v17)
    {
      goto LABEL_5;
    }

LABEL_27:

    v18 = MEMORY[0x1E69E7CC0];
    if ((v16 & 0xC000000000000001) != 0)
    {
LABEL_28:
      v24 = MEMORY[0x1C694A320](0, v16);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_27;
  }

LABEL_5:
  HIDWORD(v34) = v14;
  v35 = a4;
  *&v38[0] = MEMORY[0x1E69E7CC0];

  result = sub_1C563B184(0, v17 & ~(v17 >> 63), 0);
  if (v17 < 0)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v14 = 0;
  v18 = *&v38[0];
  v19 = v16 & 0xC000000000000001;
  v36 = v16 & 0xFFFFFFFFFFFFFF8;
  do
  {
    a4 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v19)
    {
      v20 = MEMORY[0x1C694A320](v14, v16);
    }

    else
    {
      if (v14 >= *(v36 + 16))
      {
        goto LABEL_25;
      }

      v20 = *(v16 + 8 * v14 + 32);
    }

    v21 = v20;
    v40 = v20;
    sub_1C563688C(&v40, v13);

    *&v38[0] = v18;
    v23 = *(v18 + 16);
    v22 = *(v18 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_1C563B184(v22 > 1, v23 + 1, 1);
      v18 = *&v38[0];
    }

    *(v18 + 16) = v23 + 1;
    result = sub_1C563D4A4(v13, v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v23);
    ++v14;
  }

  while (a4 != v17);
  a4 = v35;
  LODWORD(v14) = HIDWORD(v34);
  if (v19)
  {
    goto LABEL_28;
  }

LABEL_18:
  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_30;
  }

  v24 = *(v16 + 32);
LABEL_20:
  v25 = v24;

  v26 = [v25 connectorTypeDisplayText];

  if (v26)
  {
    v27 = sub_1C584F660();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v30 = sub_1C5636CA0(v14);
  result = sub_1C564A0D8(v27, v29, v30, v31, v18, v38);
  v32 = v39;
  v33 = v38[1];
  *a4 = v38[0];
  *(a4 + 16) = v33;
  *(a4 + 32) = v32;
  return result;
}

uint64_t sub_1C563688C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C584E8B0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_1C5636928(v9);
  v10 = sub_1C563CE80(v9);
  return sub_1C564A1A4(v8, v10, a2);
}

uint64_t sub_1C5636928(void *a1)
{
  v2 = sub_1C584E900();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C584ECE0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 currentTypeDisplayText];
  if (v13)
  {
    v31 = v6;
    v14 = v13;
    v15 = sub_1C584F660();
    v17 = v16;

    v18 = sub_1C5638228(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    if (v20 >= v19 >> 1)
    {
      v18 = sub_1C5638228((v19 > 1), v20 + 1, 1, v18);
    }

    *(v18 + 2) = v20 + 1;
    v21 = &v18[16 * v20];
    *(v21 + 4) = v15;
    *(v21 + 5) = v17;
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v22 = [a1 powerWatts];
  sub_1C584EC20();
  v23 = sub_1C563C124(v12, v22);
  v25 = v24;
  (*(v8 + 8))(v12, v7);
  if (v25)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1C5638228(0, *(v18 + 2) + 1, 1, v18);
    }

    v27 = *(v18 + 2);
    v26 = *(v18 + 3);
    if (v27 >= v26 >> 1)
    {
      v18 = sub_1C5638228((v26 > 1), v27 + 1, 1, v18);
    }

    *(v18 + 2) = v27 + 1;
    v28 = &v18[16 * v27];
    *(v28 + 4) = v23;
    *(v28 + 5) = v25;
  }

  v32 = v18;
  v29 = [objc_opt_self() evChargingPlugDescriptionDelimiter];
  sub_1C584F660();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DA70, &qword_1C58679D0);
  sub_1C563D368(&qword_1EC170BB0, &qword_1EC16DA70, &qword_1C58679D0);
  sub_1C584F600();

  sub_1C584E8F0();
  sub_1C584E8C0();
  v32 = [objc_opt_self() labelColor];
  sub_1C563C8DC();
  return sub_1C584E8D0();
}

unint64_t sub_1C5636CA0(int a1)
{
  v1 = 0xD000000000000014;
  if (a1 > 4)
  {
    v5 = 0xD000000000000016;
    if (a1 != 8)
    {
      v5 = 0;
    }

    if (a1 != 7)
    {
      v1 = v5;
    }

    v3 = 0xD000000000000014;
    v6 = 0xD000000000000014;
    if (a1 != 6)
    {
      v6 = 0;
    }

    if (a1 != 5)
    {
      v3 = v6;
    }

    v4 = a1 <= 6;
  }

  else
  {
    if (a1 == 4)
    {
      v2 = 0xD000000000000014;
    }

    else
    {
      v2 = 0;
    }

    if (a1 != 3)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000016;
    if (a1 != 2)
    {
      v3 = 0;
    }

    if (a1 == 1)
    {
      v3 = 0xD000000000000017;
    }

    v4 = a1 <= 2;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

id MUEVChargingViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t MUEVChargingViewModel.evChargerAvailabilityProvider(_:didUpdateAvailability:)(uint64_t a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_availability);
  *(v2 + OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_availability) = a2;
  v4 = a2;

  return sub_1C5634B14();
}

uint64_t sub_1C5636F1C()
{
  v1 = *v0;
  sub_1C584FEA0();
  sub_1C584FED0();
  return sub_1C584FEF0();
}

uint64_t sub_1C5636F90()
{
  v1 = *v0;
  sub_1C584FEA0();
  sub_1C584FED0();
  return sub_1C584FEF0();
}

uint64_t sub_1C5636FDC(uint64_t a1, id *a2)
{
  result = sub_1C584F640();
  *a2 = 0;
  return result;
}

uint64_t sub_1C5637054(uint64_t a1, id *a2)
{
  v3 = sub_1C584F650();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C56370D4@<X0>(uint64_t *a1@<X8>)
{
  sub_1C584F660();
  v2 = sub_1C584F630();

  *a1 = v2;
  return result;
}

uint64_t sub_1C5637118()
{
  v1 = *v0;
  v2 = sub_1C584F660();
  v3 = MEMORY[0x1C6949DB0](v2);

  return v3;
}

uint64_t sub_1C5637154()
{
  v1 = *v0;
  sub_1C584F660();
  sub_1C584F6C0();
}

uint64_t sub_1C56371A8()
{
  v1 = *v0;
  sub_1C584F660();
  sub_1C584FEA0();
  sub_1C584F6C0();
  v2 = sub_1C584FEF0();

  return v2;
}

_DWORD *sub_1C5637230@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1C563724C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1C584F660();
  v6 = v5;
  if (v4 == sub_1C584F660() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C584FDC0();
  }

  return v9 & 1;
}

uint64_t sub_1C56372D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C584F630();

  *a2 = v5;
  return result;
}

uint64_t sub_1C563731C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1C584F660();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1C5637348()
{
  sub_1C563D7F0(&qword_1EC170AE0, type metadata accessor for Key);
  sub_1C563D7F0(&qword_1EC16DB70, type metadata accessor for Key);

  return sub_1C584FD60();
}

unint64_t sub_1C5637404(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1C584FEA0();
  v4 = *(a1 + 16);
  MEMORY[0x1C694A560](v4);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1C584FED0();
      --v4;
    }

    while (v4);
  }

  v7 = sub_1C584FEF0();

  return sub_1C563843C(a1, v7);
}

unint64_t sub_1C5637498(int a1)
{
  v3 = *(v1 + 40);
  sub_1C584FEA0();
  sub_1C584FED0();
  v4 = sub_1C584FEF0();

  return sub_1C56384F8(a1, v4);
}

unint64_t sub_1C5637504(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1C584F660();
  sub_1C584FEA0();
  sub_1C584F6C0();
  v4 = sub_1C584FEF0();

  return sub_1C5638564(a1, v4);
}

uint64_t sub_1C5637598(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB38, &qword_1C5867B30);
  v38 = a2;
  result = sub_1C584FD40();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
      }

      v24 = *(v8 + 40);
      sub_1C584FEA0();
      MEMORY[0x1C694A560](*(v22 + 16));
      v25 = *(v22 + 16);
      if (v25)
      {
        v26 = (v22 + 32);
        do
        {
          v27 = *v26++;
          sub_1C584FED0();
          --v25;
        }

        while (v25);
      }

      result = sub_1C584FEF0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v17 = v23;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v17 = v23;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v17;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_40;
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
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_38;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_1C5637860(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB48, &qword_1C5867B40);
  v33 = a2;
  result = sub_1C584FD40();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_1C584FEA0();
      sub_1C584FED0();
      result = sub_1C584FEF0();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C5637AF0(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a2(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = a3(v9);
  *a1 = v6;
  return result;
}

uint64_t sub_1C5637B74(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C563B6E8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1C584FD80();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for GEOEVChargerPlugConnectorType(0);
      v7 = sub_1C584F7C0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1C5639580(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

char *sub_1C5637CAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAE0, &qword_1C5867AE0);
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

char *sub_1C5637DB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAF0, &qword_1C5867AF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C5637ED0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAE8, &qword_1C5867AE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C5637FF0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB30, &qword_1C5867B28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB40, &qword_1C5867B38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C5638124(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB08, &qword_1C5867B08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1C5638228(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16D8E0, &qword_1C5867910);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C5638334(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB18, &qword_1C5867B18);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1C56383B8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB08, &qword_1C5867B08);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

unint64_t sub_1C563843C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(a1 + 16);
    while (1)
    {
      v8 = *(*(v2 + 48) + 8 * result);
      if (*(v8 + 16) == v7)
      {
        break;
      }

LABEL_3:
      result = (result + 1) & v6;
      if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (v7 && v8 != a1)
    {
      v9 = (v8 + 32);
      v10 = (a1 + 32);
      v11 = *(a1 + 16);
      while (v11)
      {
        if (*v9 != *v10)
        {
          goto LABEL_3;
        }

        ++v9;
        ++v10;
        if (!--v11)
        {
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1C56384F8(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C5638564(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1C584F660();
      v9 = v8;
      if (v7 == sub_1C584F660() && v9 == v10)
      {
        break;
      }

      v12 = sub_1C584FDC0();

      if ((v12 & 1) == 0)
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

uint64_t sub_1C5638668(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C584FD80();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1C584F7C0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1C56389C8(v7, v8, a1, v4);
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
    return sub_1C5638868(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C5638760(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C584FD80();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB10, &qword_1C5867B10);
        v5 = sub_1C584F7C0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1C5638FA4(v7, v8, a1, v4);
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
    return sub_1C5638938(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C5638868(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1C584FDC0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C5638938(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (*(v7 + 16))
      {
        v11 = *(v7 + 32);
        if (!*(v10 + 16))
        {
          if ((v11 & 0x80000000) == 0)
          {
            goto LABEL_4;
          }

          goto LABEL_13;
        }
      }

      else
      {
        if (!*(v10 + 16))
        {
          goto LABEL_4;
        }

        v11 = 0;
      }

      if (v11 >= *(v10 + 32))
      {
        goto LABEL_4;
      }

LABEL_13:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_1C56389C8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1C563A1C4(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1C5639ACC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1C584FDC0();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1C584FDC0();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C5637CAC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1C5637CAC((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1C5639ACC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1C563A1C4(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1C563A138(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1C584FDC0(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_1C5638FA4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_102:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_140;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_134:
      result = sub_1C563A1C4(v10);
      v10 = result;
    }

    v79 = *(v10 + 2);
    if (v79 >= 2)
    {
      while (*a3)
      {
        v80 = *&v10[16 * v79];
        v81 = *&v10[16 * v79 + 24];
        sub_1C5639CF4((*a3 + 8 * v80), (*a3 + 8 * *&v10[16 * v79 + 16]), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v80)
        {
          goto LABEL_127;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1C563A1C4(v10);
        }

        if (v79 - 2 >= *(v10 + 2))
        {
          goto LABEL_128;
        }

        v82 = &v10[16 * v79];
        *v82 = v80;
        *(v82 + 1) = v81;
        result = sub_1C563A138(v79 - 1);
        v79 = *(v10 + 2);
        if (v79 <= 1)
        {
        }
      }

      goto LABEL_138;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *a3;
      v13 = *(*a3 + 8 * v9);
      v14 = *(v13 + 16);
      if (v14)
      {
        LODWORD(v14) = *(v13 + 32);
      }

      v15 = *(v12 + 8 * v11);
      if (*(v15 + 16))
      {
        v16 = *(v15 + 32);
      }

      else
      {
        v16 = 0;
      }

      v9 = v11 + 2;
      if (v11 + 2 < v7)
      {
        do
        {
          v17 = *(v12 + 8 * v9);
          v18 = *(v17 + 16);
          if (v18)
          {
            LODWORD(v18) = *(v17 + 32);
          }

          if (*(v13 + 16))
          {
            if (v14 < v16 == v18 >= *(v13 + 32))
            {
              goto LABEL_18;
            }
          }

          else if (v14 < v16 == v18 >= 0)
          {
            goto LABEL_18;
          }

          ++v9;
          v13 = v17;
        }

        while (v7 != v9);
        v9 = v7;
        if (v14 >= v16)
        {
          goto LABEL_28;
        }

LABEL_19:
        if (v9 < v11)
        {
          goto LABEL_131;
        }

        if (v11 < v9)
        {
          v19 = 8 * v9 - 8;
          v20 = 8 * v11;
          v21 = v9;
          v22 = v11;
          do
          {
            if (v22 != --v21)
            {
              v23 = *a3;
              if (!*a3)
              {
                goto LABEL_137;
              }

              v24 = *(v23 + v20);
              *(v23 + v20) = *(v23 + v19);
              *(v23 + v19) = v24;
            }

            ++v22;
            v19 -= 8;
            v20 += 8;
          }

          while (v22 < v21);
          v7 = a3[1];
        }

        goto LABEL_28;
      }

LABEL_18:
      if (v14 < v16)
      {
        goto LABEL_19;
      }
    }

LABEL_28:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_130;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_132;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_51:
    if (v9 < v11)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C5637CAC(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v34 = *(v10 + 3);
    v35 = v5 + 1;
    if (v5 >= v34 >> 1)
    {
      result = sub_1C5637CAC((v34 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v35;
    v36 = &v10[16 * v5];
    *(v36 + 4) = v11;
    *(v36 + 5) = v9;
    v37 = *v84;
    if (!*v84)
    {
      goto LABEL_139;
    }

    if (v5)
    {
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = *(v10 + 4);
          v40 = *(v10 + 5);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_71:
          if (v42)
          {
            goto LABEL_118;
          }

          v55 = &v10[16 * v35];
          v57 = *v55;
          v56 = *(v55 + 1);
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_121;
          }

          v61 = &v10[16 * v38 + 32];
          v63 = *v61;
          v62 = *(v61 + 1);
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_124;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_125;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        v65 = &v10[16 * v35];
        v67 = *v65;
        v66 = *(v65 + 1);
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_85:
        if (v60)
        {
          goto LABEL_120;
        }

        v68 = &v10[16 * v38];
        v70 = *(v68 + 4);
        v69 = *(v68 + 5);
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_123;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_92:
        v76 = v38 - 1;
        if (v38 - 1 >= v35)
        {
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
          goto LABEL_133;
        }

        if (!*a3)
        {
          goto LABEL_136;
        }

        v77 = *&v10[16 * v76 + 32];
        v5 = *&v10[16 * v38 + 40];
        sub_1C5639CF4((*a3 + 8 * v77), (*a3 + 8 * *&v10[16 * v38 + 32]), (*a3 + 8 * v5), v37);
        if (v4)
        {
        }

        if (v5 < v77)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1C563A1C4(v10);
        }

        if (v76 >= *(v10 + 2))
        {
          goto LABEL_115;
        }

        v78 = &v10[16 * v76];
        *(v78 + 4) = v77;
        *(v78 + 5) = v5;
        result = sub_1C563A138(v38);
        v35 = *(v10 + 2);
        if (v35 <= 1)
        {
          goto LABEL_3;
        }
      }

      v43 = &v10[16 * v35 + 32];
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_116;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_117;
      }

      v50 = &v10[16 * v35];
      v52 = *v50;
      v51 = *(v50 + 1);
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_119;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_122;
      }

      if (v54 >= v46)
      {
        v72 = &v10[16 * v38 + 32];
        v74 = *v72;
        v73 = *(v72 + 1);
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_126;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_71;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_102;
    }
  }

  v25 = *a3;
  v26 = *a3 + 8 * v9 - 8;
  v27 = v11 - v9;
LABEL_38:
  v28 = *(v25 + 8 * v9);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    v31 = *v30;
    if (*(v28 + 16))
    {
      v32 = *(v28 + 32);
      if (!*(v31 + 16))
      {
        if ((v32 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_46;
      }
    }

    else
    {
      if (!*(v31 + 16))
      {
        goto LABEL_37;
      }

      v32 = 0;
    }

    if (v32 >= *(v31 + 32))
    {
      goto LABEL_37;
    }

LABEL_46:
    if (!v25)
    {
      break;
    }

    *v30 = v28;
    v30[1] = v31;
    --v30;
    if (__CFADD__(v29++, 1))
    {
LABEL_37:
      ++v9;
      v26 += 8;
      --v27;
      if (v9 != v7)
      {
        goto LABEL_38;
      }

      v9 = v7;
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
  return result;
}