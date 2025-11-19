unint64_t sub_18BADE68C()
{
  type metadata accessor for SFFluidCollectionView.DropItem();
  result = sub_18BC20E78();
  if (v1 <= 0x3F)
  {
    sub_18BC21848();
    result = swift_getTupleTypeMetadata2();
    if (v2 <= 0x3F)
    {
      result = sub_18B9F6AD4();
      if (v3 <= 0x3F)
      {
        result = sub_18B7B0AC0(319, qword_1EA9D8D60);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_18BADE7A0(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = v9;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  if (v8)
  {
    v12 = 7;
  }

  else
  {
    v12 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v7 + 80);
  v14 = *(v7 + 80) | *(v4 + 80);
  v15 = *(*(*(a3 + 16) - 8) + 64) + v13;
  if (v11 >= a2)
  {
    goto LABEL_36;
  }

  v16 = ((((v12 + *(*(v6 - 8) + 64) + (v15 & ~v13) + ((v14 + 8) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v17 = a2 - v11;
  v18 = v16 & 0xFFFFFFF8;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = v17 + 1;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = *(a1 + v16);
      if (!v22)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v22 = *(a1 + v16);
      if (!v22)
      {
        goto LABEL_36;
      }
    }

LABEL_33:
    v24 = v22 - 1;
    if (v18)
    {
      v24 = 0;
      v25 = *a1;
    }

    else
    {
      v25 = 0;
    }

    return v11 + (v25 | v24) + 1;
  }

  if (v21)
  {
    v22 = *(a1 + v16);
    if (v22)
    {
      goto LABEL_33;
    }
  }

LABEL_36:
  if ((v10 & 0x80000000) != 0)
  {
    v27 = (a1 + v14 + 8) & ~v14;
    if (v5 >= v9)
    {
      v29 = *(v4 + 48);

      return v29(v27);
    }

    else
    {
      v28 = (*(v7 + 48))((v15 + v27) & ~v13, v8, v6);
      if (v28 >= 2)
      {
        return v28 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v26 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v26) = -1;
    }

    return (v26 + 1);
  }
}

void sub_18BADEA00()
{
  sub_18BADEAF8();
  if (v0 <= 0x3F)
  {
    sub_18BC21848();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_18BADEAF8()
{
  if (!qword_1EA9D8DE8)
  {
    sub_18BC1EDD8();
    v0 = sub_18BC21848();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA9D8DE8);
    }
  }
}

void sub_18BADEB50()
{
  sub_18BADEAF8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SFFluidCollectionView.DropIntent();
    sub_18BC21848();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_18BADEC90(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = sub_18BB47300();
  v5 = v4;

  if (!v3)
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v7 = swift_unknownObjectUnownedLoadStrong();
  v8 = *(v5 + 16);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D8F10);
  v10 = v8(v7, a1, v9, ObjectType, v5);
  swift_unknownObjectRelease();

  return v10 & 1;
}

void sub_18BADED84(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = sub_18BB47300();
  v5 = v4;

  if (v3)
  {
    ObjectType = swift_getObjectType();
    v9 = swift_unknownObjectUnownedLoadStrong();
    v7 = *(v5 + 32);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D8F10);
    v7(v9, a1, v8, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_18BADEE90(void *a1)
{
  v2 = v1;
  v127 = a1;
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v133 = *MEMORY[0x1E69E7D40] & v3;
  v5 = *((v4 & v3) + 0x50);
  v131 = *((v4 & v3) + 0x58);
  v6 = sub_18BC21848();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v119 = sub_18BC21848();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v117 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v115 - v9;
  v126 = v6;
  v125 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v120 = &v115 - v12;
  ObjectType = v5;
  v124 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v129 = &v115 - v14;
  v15 = sub_18BC1EDD8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v115 - v23;
  v25 = *((v4 & v3) + 0x80);
  Strong = swift_unknownObjectUnownedLoadStrong();
  LOBYTE(v3) = sub_18BB468CC();

  v128 = v25;
  v121 = v15;
  v122 = v16;
  v123 = v24;
  if ((v3 & 1) == 0)
  {
    (*(v16 + 56))(v24, 1, 1, v15);
    v33 = MEMORY[0x1E69E7D40];
    v34 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x98);
    swift_beginAccess();
    sub_18BAE2118(v24, v2 + v34);
    swift_endAccess();
    v28 = v127;
    goto LABEL_5;
  }

  v27 = swift_unknownObjectUnownedLoadStrong();
  v28 = v127;
  [v127 locationInView_];
  v30 = v29;
  v32 = v31;

  sub_18BAD9FAC(v21, v30, v32);
  if ((*(v16 + 48))(v21, 1, v15) == 1)
  {
    sub_18B988BAC(v21, &unk_1EA9D5BD0);
    v33 = MEMORY[0x1E69E7D40];
LABEL_5:
    v35 = ObjectType;
    goto LABEL_6;
  }

  v65 = *(v16 + 32);
  v65(v18, v21, v15);
  sub_18BADC330(v18, v28, v10);
  v66 = TupleTypeMetadata2;
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v10, 1, TupleTypeMetadata2) == 1)
  {
    (*(v118 + 8))(v10, v119);
    v67 = v123;
    v65(v123, v18, v15);
    (*(v16 + 56))(v67, 0, 1, v15);
    v33 = MEMORY[0x1E69E7D40];
    v68 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x98);
    swift_beginAccess();
    sub_18BAE2118(v67, v2 + v68);
    swift_endAccess();
    goto LABEL_5;
  }

  v69 = *(v66 + 48);
  v70 = v124;
  v35 = ObjectType;
  (*(v124 + 32))(v129, v10, ObjectType);
  v71 = v125;
  v72 = &v10[v69];
  v73 = v120;
  v74 = v126;
  (*(v125 + 32))(v120, v72, v126);
  sub_18BADC7D8(v73, v123);
  (*(v71 + 8))(v73, v74);
  (*(v70 + 8))(v129, v35);
  (*(v122 + 8))(v18, v15);
  v33 = MEMORY[0x1E69E7D40];
  v75 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x98);
  swift_beginAccess();
  sub_18BAE2118(v123, v2 + v75);
  swift_endAccess();
LABEL_6:
  v36 = [v28 localDragSession];
  *&v137 = v35;
  *(&v137 + 1) = v131;
  v37 = *(v133 + 112);
  v138 = *(v133 + 96);
  v139 = v37;
  v38 = type metadata accessor for SFFluidCollectionView();
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D8EF0);
  swift_getTupleTypeMetadata2();
  v40 = sub_18BC20DE8();
  WitnessTable = swift_getWitnessTable();
  v129 = v39;
  v126 = WitnessTable;
  v42 = sub_18B7C29AC(v40, v38, v39, WitnessTable);

  v140 = v42;
  TupleTypeMetadata2 = v38;
  v120 = v36;
  if (v36)
  {
    v116 = v2;
    v43 = [v36 items];
    sub_18B7B0AC0(0, &qword_1EA9D7CE0);
    v44 = sub_18BC20D98();

    if (v44 >> 62)
    {
      goto LABEL_40;
    }

    for (i = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18BC219A8())
    {
      v46 = 0;
      v47 = 0;
      v133 = v44 & 0xC000000000000001;
      v125 = v44 & 0xFFFFFFFFFFFFFF8;
      ObjectType = i;
      v124 = v44;
      while (1)
      {
        if (v133)
        {
          v48 = MEMORY[0x18CFFD010](v46, v44);
        }

        else
        {
          if (v46 >= *(v125 + 16))
          {
            goto LABEL_38;
          }

          v48 = *(v44 + 8 * v46 + 32);
        }

        v49 = v48;
        v50 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        if ([v48 safari_fluidCollectionViewSourceView])
        {
          sub_18BC218B8();
          i = ObjectType;
          swift_unknownObjectRelease();
        }

        else
        {
          v135 = 0u;
          v136 = 0u;
        }

        v137 = v135;
        v138 = v136;
        if (*(&v136 + 1))
        {
          if (swift_dynamicCast())
          {
            v131 = v134;
            *&v137 = v134;
            sub_18B7B171C(v47);
            v51 = v140;
            swift_isUniquelyReferenced_nonNull_native();
            *&v135 = v51;
            v44 = v126;
            v52 = sub_18B84FAF0(&v137, v38, v126);
            v54 = *(v51 + 16);
            v55 = (v53 & 1) == 0;
            v28 = (v54 + v55);
            if (__OFADD__(v54, v55))
            {
              goto LABEL_39;
            }

            v56 = v52;
            v57 = v53;
            sub_18BC21CE8();
            if (sub_18BC21CC8())
            {
              v58 = sub_18B84FAF0(&v137, v38, v44);
              v28 = v127;
              if ((v57 & 1) != (v59 & 1))
              {
                goto LABEL_69;
              }

              v56 = v58;
            }

            else
            {
              v28 = v127;
            }

            v60 = v131;
            v61 = v135;
            v140 = v135;
            if ((v57 & 1) == 0)
            {
              v134 = v131;
              *&v135 = MEMORY[0x1E69E7CC0];
              v62 = v131;
              sub_18BC21CD8();
            }

            v63 = (*(v61 + 56) + 8 * v56);
            v64 = v49;
            MEMORY[0x18CFFC270]();
            if (*((*v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_18BC20DD8();
              v60 = v131;
            }

            sub_18BC20E18();

            v47 = sub_18BADD3CC;
            v38 = TupleTypeMetadata2;
            v44 = v124;
            i = ObjectType;
          }

          else
          {
          }
        }

        else
        {

          sub_18B988BAC(&v137, &qword_1EA9D5220);
        }

        ++v46;
        if (v50 == i)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      ;
    }

    v47 = 0;
LABEL_42:
    v133 = v47;

    v2 = v116;
    v33 = MEMORY[0x1E69E7D40];
  }

  else
  {
    v133 = 0;
  }

  v76 = swift_unknownObjectUnownedLoadStrong();
  v77 = sub_18BB468CC();

  if (v77)
  {
    v78 = swift_unknownObjectUnownedLoadStrong();
    v79 = sub_18BB47300();
    v81 = v80;

    if (v79 && (ObjectType = swift_getObjectType(), v82 = swift_unknownObjectUnownedLoadStrong(), v83 = v117, sub_18BADC078(v117), v84 = v2, v85 = *(v81 + 48), v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D8F10), v87 = v85(v82, v28, v83, v86, ObjectType, v81), v2 = v84, v88 = v87, swift_unknownObjectRelease(), v82, v33 = MEMORY[0x1E69E7D40], (*(v118 + 8))(v83, v119), v88))
    {
      v89 = v88;
    }

    else
    {
      if (sub_18BC209C8() <= 0)
      {
        v90 = 2;
      }

      else
      {
        v90 = 3;
      }

      v89 = [objc_allocWithZone(MEMORY[0x1E69DC9C0]) initWithDropOperation_];
    }
  }

  else
  {
    v89 = [objc_allocWithZone(MEMORY[0x1E69DC9C0]) initWithDropOperation_];
  }

  v91 = v89;
  v92 = [v91 operation];
  v93 = v123;
  if (v92 == 1)
  {
    (*(v122 + 56))(v123, 1, 1, v121);
    v94 = *((*v33 & *v2) + 0x98);
    swift_beginAccess();
    sub_18BAE2118(v93, v2 + v94);
    swift_endAccess();
  }

  v95 = *(v2 + *((*v33 & *v2) + 0xB8));
  v96 = *(v95 + 24);
  v97 = __OFADD__(v96, 1);
  v98 = v96 + 1;
  if (v97)
  {
    __break(1u);
  }

  else
  {
    *(v95 + 24) = v98;
    if (v98 == 1)
    {
      swift_beginAccess();
      v99 = *(v95 + 16);
      v100 = *(v99 + 16);
      if (v100)
      {
        sub_18BC1E3F8();
        v101 = v99 + 40;
        do
        {
          v102 = *(v101 - 8);
          LOBYTE(v137) = *(v95 + 24) > 0;
          sub_18BC1E1A8();
          v102(&v137);

          v101 += 16;
          --v100;
        }

        while (v100);

        v33 = MEMORY[0x1E69E7D40];
      }
    }

    v103 = swift_unknownObjectUnownedLoadStrong();
    v104 = *(v103 + *((*v33 & *v103) + 0x90));

    MEMORY[0x1EEE9AC00](v105);
    *(&v115 - 4) = v2;
    *(&v115 - 3) = &v140;
    *(&v115 - 2) = v91;
    sub_18BB23D68(sub_18BAE2188);

    v106 = *(v95 + 24);
    v97 = __OFSUB__(v106, 1);
    v107 = v106 - 1;
    if (!v97)
    {
      *(v95 + 24) = v107;
      if (!v107)
      {
        swift_beginAccess();
        v108 = *(v95 + 16);
        v109 = *(v108 + 16);
        if (v109)
        {
          sub_18BC1E3F8();
          v110 = v108 + 40;
          do
          {
            v111 = *(v110 - 8);
            LOBYTE(v134) = *(v95 + 24) > 0;
            sub_18BC1E1A8();
            v111(&v134);

            v110 += 16;
            --v109;
          }

          while (v109);

          v33 = MEMORY[0x1E69E7D40];
        }
      }

      swift_unknownObjectRelease();
      v112 = *((*v33 & *v2) + 0xA0);
      v113 = *(v2 + v112);
      *(v2 + v112) = v91;

      sub_18B7B171C(v133);
      return v91;
    }
  }

  __break(1u);
LABEL_69:
  result = sub_18BC22078();
  __break(1u);
  return result;
}

void sub_18BADFDD0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  sub_18BADCD48();
  v6 = sub_18BC1EDD8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  swift_beginAccess();
  sub_18BAE2118(v5, v1 + v7);
  swift_endAccess();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v9 = sub_18BB47300();
  v11 = v10;

  if (v9)
  {
    ObjectType = swift_getObjectType();
    v13 = swift_unknownObjectUnownedLoadStrong();
    v14 = *(v11 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D8F10);
    v14(v13, a1, v15, ObjectType, v11);
    swift_unknownObjectRelease();
  }
}

void sub_18BADFF94()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  sub_18BADCD48();
  v5 = sub_18BC1EDD8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  swift_beginAccess();
  sub_18BAE2118(v4, v1 + v7);
  swift_endAccess();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v9 = sub_18BB47300();

  if (v9)
  {

    swift_unknownObjectRelease();
  }

  v10 = *((*v6 & *v1) + 0xA0);
  v11 = *(v1 + v10);
  *(v1 + v10) = 0;
}

void sub_18BAE012C(void *a1)
{
  v2 = v1;
  v134 = a1;
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40] & *v1;
  v6 = *(v5 + 0x58);
  v7 = sub_18BC21848();
  MEMORY[0x1EEE9AC00](v7);
  v138 = &v110 - v8;
  v9 = *((v4 & v3) + 0x50);
  v142 = *(v5 + 96);
  v10 = *((v4 & v3) + 0x70);
  v11 = *((v4 & v3) + 0x78);
  v145 = v9;
  v146 = v6;
  v147 = v142;
  v148 = v10;
  v149 = v11;
  v141 = type metadata accessor for SFFluidCollectionView.DropItem();
  v122 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v137 = (&v110 - v12);
  v13 = sub_18BC21DC8();
  v121 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v139 = &v110 - v14;
  v120 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v136 = &v110 - v16;
  v140 = sub_18BC21DE8();
  v124 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v143 = &v110 - v17;
  v145 = v9;
  v146 = v6;
  v147 = v142;
  v132 = v10;
  v148 = v10;
  v149 = v11;
  v129 = v11;
  v18 = type metadata accessor for SFFluidCollectionView.DropIntent();
  v128 = sub_18BC21848();
  v127 = *(v128 - 1);
  MEMORY[0x1EEE9AC00](v128);
  v126 = &v110 - v19;
  v131 = v18;
  v130 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v135 = (&v110 - v21);
  v133 = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v23 = sub_18BC21848();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v110 - v25;
  v27 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v125 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v110 - v31;
  sub_18BADC078(v26);
  if ((*(v27 + 48))(v26, 1, TupleTypeMetadata2) == 1)
  {
    (*(v24 + 8))(v26, v23);
    return;
  }

  (*(v27 + 32))(v32, v26, TupleTypeMetadata2);
  v33 = *MEMORY[0x1E69E7D40] & *v1;
  v34 = *(v1 + *(v33 + 0xA0));
  if (!v34)
  {
    (*(v27 + 8))(v32, TupleTypeMetadata2);
    return;
  }

  v117 = v32;
  v118 = v27;
  v119 = TupleTypeMetadata2;
  v35 = *(v33 + 128);
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18BB65AD8();
  sub_18BC1E1A8();
  v114 = v34;

  sub_18B810930(&v145);

  v37 = v146;
  v38 = v147;
  sub_18BC1E1A8();

  v39 = v134;
  sub_18BADCD48();
  v116 = v35;
  v40 = swift_unknownObjectUnownedLoadStrong();
  v41 = sub_18BB47300();
  v43 = v42;

  v115 = v41;
  if (v41)
  {
    v110 = v43;
    v112 = v38;
    v113 = v37;
    v44 = [v39 items];
    v123 = sub_18B7B0AC0(0, &qword_1EA9D7CE0);
    v45 = sub_18BC20D98();

    v111 = &v110;
    v145 = v45;
    MEMORY[0x1EEE9AC00](v46);
    *&v47 = v133;
    *(&v47 + 1) = v6;
    *(&v110 - 3) = v47;
    v48 = v132;
    v49 = v129;
    MEMORY[0x1EEE9AC00](v50);
    *(&v110 - 8) = v51;
    *(&v110 - 7) = v6;
    *(&v110 - 3) = v142;
    v106 = v48;
    v107 = v49;
    v108 = sub_18BAE1F58;
    v109 = v52;
    v53 = v39;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8ED8);
    v55 = sub_18BAE1FA0();
    v57 = sub_18B82DECC(sub_18BAE1F68, (&v110 - 10), v54, v141, MEMORY[0x1E69E73E0], v55, MEMORY[0x1E69E7410], v56);

    v58 = v125;
    v59 = v119;
    (*(v118 + 16))(v125, v117, v119);
    v60 = *(v59 + 48);
    v107 = v48;
    v108 = v49;
    v61 = &v58[v60];
    v106 = *(&v142 + 1);
    v62 = v135;
    v63 = v58;
    v64 = v114;
    sub_18BAD952C(v57, v63, v61, v53, v114, v133, v135);
    v65 = v130;
    v66 = v126;
    v67 = v131;
    (*(v130 + 16))(v126, v62, v131);
    (*(v65 + 56))(v66, 0, 1, v67);
    v68 = MEMORY[0x1E69E7D40];
    v69 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xA8);
    swift_beginAccess();
    v70 = *(v127 + 40);
    v114 = v64;
    swift_unknownObjectRetain();
    v70(&v2[v69], v66, v128);
    swift_endAccess();
    v71 = *&v2[*((*v68 & *v2) + 0xB8)];
    v72 = *(v71 + 24);
    v73 = __OFADD__(v72, 1);
    v74 = v72 + 1;
    if (v73)
    {
      __break(1u);
    }

    else
    {
      *(v71 + 24) = v74;
      *&v142 = v13;
      v75 = v140;
      if (v74 == 1)
      {
        swift_beginAccess();
        v76 = *(v71 + 16);
        v77 = *(v76 + 16);
        if (v77)
        {
          sub_18BC1E3F8();
          v78 = v76 + 40;
          do
          {
            v79 = *(v78 - 8);
            LOBYTE(v145) = *(v71 + 24) > 0;
            sub_18BC1E1A8();
            v79(&v145);

            v78 += 16;
            --v77;
          }

          while (v77);

          v13 = v142;
        }
      }

      ObjectType = swift_getObjectType();
      v81 = swift_unknownObjectUnownedLoadStrong();
      (*(v110 + 24))(v81, v135, ObjectType);

      v82 = *(v71 + 24);
      v73 = __OFSUB__(v82, 1);
      v83 = v82 - 1;
      if (!v73)
      {
        *(v71 + 24) = v83;
        if (!v83)
        {
          swift_beginAccess();
          v84 = *(v71 + 16);
          v85 = *(v84 + 16);
          if (v85)
          {
            sub_18BC1E3F8();
            v86 = v84 + 40;
            do
            {
              v87 = *(v86 - 8);
              LOBYTE(v145) = *(v71 + 24) > 0;
              sub_18BC1E1A8();
              v87(&v145);

              v86 += 16;
              --v85;
            }

            while (v85);

            v13 = v142;
          }
        }

        v88 = swift_unknownObjectUnownedLoadStrong();
        sub_18BB65AD8();
        sub_18BC1E1A8();

        sub_18B810930(&v145);

        v89 = v146;
        v90 = v147;
        sub_18BC1E1A8();

        v116 = v89;
        v111 = v90;
        sub_18BC1F058();
        sub_18BC21DA8();
        v91 = sub_18BC20E28();

        v134 = *v135;
        v92 = v91 == sub_18BC20E28();
        v93 = v139;
        if (!v92)
        {
          goto LABEL_26;
        }

        v94 = sub_18BC20E28();
        if ((v94 & 0x8000000000000000) == 0)
        {
          v95 = v94;
          if (v94)
          {
            v96 = 0;
            v133 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xB0);
            v132 = (v120 + 32);
            v129 = (v122 + 8);
            v128 = (v120 + 16);
            v127 = v120 + 56;
            v126 = (v120 + 8);
            v125 = (v121 + 8);
            v97 = v136;
            do
            {
              sub_18BC21DA8();
              sub_18BC20EA8();

              if (swift_getEnumCaseMultiPayload() == 1)
              {
                (*v125)(v93, v13);
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D8EF8);
                TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
                (*v132)(v97, &v93[*(TupleTypeMetadata3 + 48)], v6);
                v99 = v137;
                v100 = v141;
                sub_18BC20EA8();
                v101 = *v129;
                v102 = *v99;
                v103 = v99;
                v93 = v139;
                v104 = v100;
                v13 = v142;
                v101(v103, v104);
                v105 = v138;
                (*v128)(v138, v97, v6);
                (*v127)(v105, 0, 1, v6);
                v144 = v102;
                swift_beginAccess();
                sub_18BAE1EF0();
                sub_18BC209F8();
                v75 = v140;
                sub_18BC20A38();
                swift_endAccess();
                (*v126)(v97, v6);
              }

              ++v96;
            }

            while (v95 != v96);
          }

LABEL_26:

          swift_unknownObjectRelease();

          (*(v124 + 8))(v143, v75);
          (*(v118 + 8))(v117, v119);
          (*(v130 + 8))(v135, v131);
          return;
        }

        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    return;
  }

  (*(v118 + 8))(v117, v119);
}

id sub_18BAE11A4(void *a1, void *a2)
{
  v3 = v2;
  v53 = a2;
  v5 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x58);
  v6 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x60);
  v7 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x68);
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x70);
  v9 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x78);
  v49 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x50);
  *&v59 = v49;
  *(&v59 + 1) = v5;
  v48 = v6;
  *&v60 = v6;
  *(&v60 + 1) = v7;
  v47 = v7;
  v55 = v8;
  *&v61[0] = v8;
  *(&v61[0] + 1) = v9;
  v46 = v9;
  v52 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = v45 - v10;
  v11 = sub_18BC21848();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v45 - v13;
  v15 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v54 = v45 - v17;
  swift_beginAccess();
  *&v56 = a1;
  sub_18B7B0AC0(0, &qword_1EA9D7CE0);
  sub_18BAE1EF0();
  v18 = a1;
  sub_18BC20A28();

  v19 = v15;
  if ((*(v15 + 48))(v14, 1, v5) == 1)
  {
    (*(v12 + 8))(v14, v11);
    swift_endAccess();
    return 0;
  }

  v20 = *(v15 + 32);
  v21 = v54;
  v20(v54, v14, v5);
  swift_endAccess();
  v45[1] = *((*MEMORY[0x1E69E7D40] & *v3) + 0x80);
  v22 = v19;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18BB65AD8();
  sub_18BC1E1A8();

  sub_18B810930(&v59);

  sub_18BC1E1A8();

  v24 = v55;
  LOBYTE(Strong) = sub_18BC1F0C8();

  if ((Strong & 1) == 0)
  {
    (*(v22 + 8))(v21, v5);
    return 0;
  }

  v45[0] = v22;
  v25 = swift_unknownObjectUnownedLoadStrong();
  v26 = sub_18BB47300();
  v28 = v27;

  v29 = v53;
  if (v26 && (ObjectType = swift_getObjectType(), v31 = swift_unknownObjectUnownedLoadStrong(), v32 = (*(v28 + 64))(v31, v21, v29, ObjectType, v28), swift_unknownObjectRelease(), v31, v32))
  {
    (*(v45[0] + 8))(v21, v5);
    return v32;
  }

  else
  {
    v34 = swift_unknownObjectUnownedLoadStrong();
    sub_18BB65AD8();
    sub_18BC1E1A8();

    sub_18B81D198(&v56);

    *&v59 = v49;
    *(&v59 + 1) = v5;
    *&v60 = v48;
    *(&v60 + 1) = v47;
    *&v61[0] = v24;
    *(&v61[0] + 1) = v46;
    v35 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot();
    v36 = v50;
    SFFluidCollectionView.LayoutSnapshot.layoutAttributesForItem(_:)(v21, v35, v50);
    v59 = v56;
    v60 = v57;
    v61[0] = v58[0];
    *(v61 + 9) = *(v58 + 9);
    (*(*(v35 - 1) + 8))(&v59, v35);
    v37 = swift_unknownObjectUnownedLoadStrong();
    v38 = v52;
    v39 = (v36 + *(v52 + 72));
    v40 = *v39;
    v41 = v39[1];
    v42 = objc_allocWithZone(MEMORY[0x1E69DC9A8]);
    v56 = 0x3FF0000000000000uLL;
    *&v57 = 0;
    *(&v57 + 1) = 0x3FF0000000000000;
    v58[0] = 0uLL;
    v43 = [v42 initWithContainer:v37 center:&v56 transform:{v40, v41}];

    v44 = [v29 retargetedPreviewWithTarget_];
    (*(v51 + 8))(v36, v38);
    (*(v45[0] + 8))(v21, v5);
    return v44;
  }
}

void sub_18BAE186C(void *a1, uint64_t a2)
{
  v23 = a2;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v26 = *MEMORY[0x1E69E7D40] & v4;
  v6 = *((v5 & v4) + 0x58);
  v7 = sub_18BC21848();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v25 = *((v5 & v4) + 0x80);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v15 = sub_18BB47300();
  v22 = v16;

  if (v15)
  {
    v24 = v15;
    swift_beginAccess();
    v28[6] = a1;
    sub_18B7B0AC0(0, &qword_1EA9D7CE0);
    sub_18BAE1EF0();
    v17 = a1;
    sub_18BC20A28();

    if ((*(v27 + 48))(v10, 1, v6) == 1)
    {
      (*(v8 + 8))(v10, v7);
      swift_endAccess();
    }

    else
    {
      (*(v27 + 32))(v13, v10, v6);
      swift_endAccess();
      v18 = swift_unknownObjectUnownedLoadStrong();
      sub_18BB65AD8();
      sub_18BC1E1A8();

      sub_18B810930(v28);

      sub_18BC1E1A8();

      LOBYTE(v18) = sub_18BC1F0C8();

      if (v18)
      {
        ObjectType = swift_getObjectType();
        v20 = swift_unknownObjectUnownedLoadStrong();
        (*(v22 + 72))(v20, v13, v23, ObjectType);
        swift_unknownObjectRelease();

        (*(v27 + 8))(v13, v6);
        return;
      }

      (*(v27 + 8))(v13, v6);
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_18BAE1C50()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *MEMORY[0x1E69E7D40] & *v0;
  v3 = *(v2 + 0x78);
  v19 = *(v2 + 0x50);
  v18 = *(v2 + 88);
  v20 = v18;
  v21 = *(v2 + 104);
  v22 = v3;
  v4 = type metadata accessor for SFFluidCollectionView.DropIntent();
  v5 = sub_18BC21848();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  (*(*(v4 - 8) + 56))(&v18 - v8, 1, 1, v4, v7);
  v10 = *((*v1 & *v0) + 0xA8);
  swift_beginAccess();
  (*(v6 + 40))(&v0[v10], v9, v5);
  swift_endAccess();
  v11 = sub_18B7B0AC0(255, &qword_1EA9D7CE0);
  v12 = v18;
  swift_getTupleTypeMetadata2();
  v13 = sub_18BC20DE8();
  v14 = sub_18BAE1EF0();
  v15 = sub_18B7C29AC(v13, v11, v12, v14);

  v16 = *((*v1 & *v0) + 0xB0);
  swift_beginAccess();
  *&v0[v16] = v15;
}

unint64_t sub_18BAE1EF0()
{
  result = qword_1EA9D8ED0;
  if (!qword_1EA9D8ED0)
  {
    sub_18B7B0AC0(255, &qword_1EA9D7CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8ED0);
  }

  return result;
}

unint64_t sub_18BAE1FA0()
{
  result = qword_1EA9D8EE0;
  if (!qword_1EA9D8EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D8ED8);
    sub_18B7B0B08(&qword_1EA9D8EE8, &qword_1EA9D8EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8EE0);
  }

  return result;
}

uint64_t sub_18BAE2058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BAE2118(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SFSiriLinkCoordinator.findOnPageInteraction()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = &unk_18BC4C228;
  *(v1 + 24) = v0;
  v2 = objc_allocWithZone(sub_18BC1F038());
  sub_18B80A3F8();
  return sub_18BC1F028();
}

uint64_t sub_18BAE2274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_18BC1EC08();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  type metadata accessor for TabEntity();
  v4[14] = swift_task_alloc();
  sub_18BC20F28();
  v4[15] = sub_18BC20F18();
  v7 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BAE2398, v7, v6);
}

uint64_t sub_18BAE2398()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong actionPerformer], v2, v3))
  {
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1F2C8();
    __swift_project_value_buffer(v4, qword_1EA9F7EC8);
    v5 = sub_18BC1F2A8();
    v6 = sub_18BC21218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_18B7AC000, v5, v6, "Find on Page", v7, 2u);
      MEMORY[0x18CFFEEE0](v7, -1, -1);
    }

    v8 = v0[13];
    v9 = v0[14];
    v10 = v0[11];
    v11 = v0[12];
    v12 = v0[7];

    sub_18BC1E0A8();
    v13 = sub_18BC20B98();

    sub_18BC1E0A8();
    (*(v11 + 16))(v8, v9, v10);
    sub_18BA5F48C(v9);
    v14 = sub_18BC1EBC8();
    (*(v11 + 8))(v8, v10);
    [v3 findString:v13 onTabWithUUID:v14];

    v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45C0);
    v12[4] = sub_18B9A3450();
    __swift_allocate_boxed_opaque_existential_0Tm(v12);
    sub_18BC1DF98();
    swift_unknownObjectRelease();

    v15 = v0[1];
  }

  else
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v16 = sub_18BC1DE48();
    v17 = __swift_project_value_buffer(v16, qword_1EA9F8578);
    sub_18B9A33F8();
    swift_allocError();
    (*(*(v16 - 8) + 16))(v18, v17, v16);
    swift_willThrow();

    v15 = v0[1];
  }

  return v15();
}

uint64_t sub_18BAE26D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_18B7B6968;

  return sub_18BAE2274(a1, a2, a3, v3);
}

uint64_t sub_18BAE2784(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v9 = (a3 + *a3);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B987B10;

  return v9(a1, v5, v6);
}

uint64_t sub_18BAE2890(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18BAE2784(a1, a2, v6);
}

uint64_t sub_18BAE2958(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B987B10;

  return sub_18BAE2784(a1, a2, v6);
}

void sub_18BAE2A20()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v21 = objc_opt_self();
      if (v2 < 1)
      {
        break;
      }

      v3 = 0;
      v20 = v24;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x18CFFD010](v3, v1);
        }

        else
        {
          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = 1.0 - *(v22 + 16);
        v7 = OBJC_IVAR___SFTabThumbnailView_controlsVisibility;
        v8 = *&v4[OBJC_IVAR___SFTabThumbnailView_controlsVisibility];
        *&v4[OBJC_IVAR___SFTabThumbnailView_controlsVisibility] = v6;
        if (v6 != v8)
        {
          [*&v4[OBJC_IVAR___SFTabThumbnailView_controlsContainerView] setAlpha_];
          v9 = sub_18B7DE654();
          v10 = 1.0;
          [v9 setValue_];

          if (*&v5[OBJC_IVAR___SFTabThumbnailView_configuration + 24] != 1)
          {
            v10 = 1.0 - *&v5[v7];
          }

          [*&v5[OBJC_IVAR___SFTabThumbnailView_snapshotImageView] setAlpha_];
        }

        v11 = *&v5[OBJC_IVAR___SFTabThumbnailView_controlsContainerView];
        v12 = sub_18B7DE654();
        [v12 value];
        v14 = v13;

        v15 = swift_allocObject();
        *(v15 + 16) = v11;
        *(v15 + 24) = v14;
        v16 = swift_allocObject();
        *(v16 + 16) = sub_18B7EA1B8;
        *(v16 + 24) = v15;
        v17 = swift_allocObject();
        *(v17 + 16) = sub_18B7D1EC4;
        *(v17 + 24) = v16;
        v24[2] = sub_18B7D1E94;
        v24[3] = v17;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v24[0] = sub_18B7E3BF4;
        v24[1] = &block_descriptor_40;
        v18 = _Block_copy(aBlock);
        v19 = v11;
        sub_18BC1E1A8();
        sub_18BC1E1A8();

        [v21 performWithoutAnimation_];

        _Block_release(v18);
        LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

        if (v18)
        {
          break;
        }

        if (v2 == ++v3)
        {
          return;
        }
      }

      __break(1u);
LABEL_16:
      v2 = sub_18BC219A8();
      if (!v2)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_18BAE2D60()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (v2 >> 62)
  {
    v3 = sub_18BC219A8();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x18CFFD010](i, v2);
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      v6 = v5;
      v7 = *(v1 + 16);
      v8 = OBJC_IVAR___SFTabThumbnailView_controlsVisibility;
      v9 = *&v5[OBJC_IVAR___SFTabThumbnailView_controlsVisibility];
      *&v5[OBJC_IVAR___SFTabThumbnailView_controlsVisibility] = v7;
      if (v7 != v9)
      {
        [*&v5[OBJC_IVAR___SFTabThumbnailView_controlsContainerView] setAlpha_];
        v10 = sub_18B7DE654();
        v11 = 1.0;
        [v10 setValue_];

        if (*&v6[OBJC_IVAR___SFTabThumbnailView_configuration + 24] != 1)
        {
          v11 = 1.0 - *&v6[v8];
        }

        [*&v6[OBJC_IVAR___SFTabThumbnailView_snapshotImageView] setAlpha_];
      }
    }
  }
}

uint64_t sub_18BAE2EE0()
{

  return swift_deallocClassInstance();
}

id sub_18BAE2F54(double *a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_18B9B66A0(0, v5, 0);
    v6 = v21;
    v7 = (v4 + 32);
    v8 = v5;
    do
    {
      v9 = *v7;
      v10 = [v9 CGColor];
      type metadata accessor for CGColor(0);
      v20 = v11;

      *&v19 = v10;
      v21 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_18B9B66A0((v12 > 1), v13 + 1, 1);
        v6 = v21;
      }

      *(v6 + 16) = v13 + 1;
      sub_18B7B1AD4(&v19, (v6 + 32 * v13 + 32));
      v7 += 2;
      --v8;
    }

    while (v8);
    v14 = sub_18BC20D88();

    [v2 setColors_];

    *&v19 = MEMORY[0x1E69E7CC0];
    sub_18BC21B98();
    v15 = v4 + 40;
    do
    {
      v15 += 16;
      sub_18BC1EEA8();
      sub_18BC21B68();
      sub_18BC21BA8();
      sub_18BC21BB8();
      sub_18BC21B78();
      --v5;
    }

    while (v5);
  }

  else
  {
    v16 = sub_18BC20D88();

    [v1 setColors_];
  }

  sub_18B7B0AC0(0, &qword_1EA9D8F88);
  v17 = sub_18BC20D88();

  [v2 setLocations_];

  [v2 setStartPoint_];
  return [v2 setEndPoint_];
}

void sub_18BAE31BC(void *a1)
{
  v2 = v1;
  v4 = sub_18BC20B98();
  v5 = [v1 animationForKey_];

  if (!v5)
  {
    goto LABEL_4;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

LABEL_4:
    v6 = 0;
  }

  v17 = v6;
  v7 = [v6 sourceLayer];
  if (v7 && (v8 = v7, sub_18B7B0AC0(0, &qword_1EA9D57F8), v9 = a1, v10 = sub_18BC215C8(), v9, v8, (v10 & 1) != 0))
  {
    v11 = v17;
  }

  else
  {
    v12 = sub_18BC20B98();
    [v2 removeAnimationForKey_];

    v13 = [objc_allocWithZone(MEMORY[0x1E69793B8]) init];
    [v13 setDuration_];
    [v13 setFillMode_];
    [v13 setRemovedOnCompletion_];
    [v13 setSourceLayer_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18BC42C20;
    *(v14 + 32) = sub_18BC21588();
    *(v14 + 40) = sub_18BC21588();
    *(v14 + 48) = sub_18BC21588();
    *(v14 + 56) = sub_18BC21588();
    sub_18B7B0AC0(0, &qword_1EA9D53D0);
    v15 = sub_18BC20D88();

    [v13 setSourcePoints_];

    [v13 setUsesNormalizedCoordinates_];
    v16 = sub_18BC20B98();
    [v2 addAnimation:v13 forKey:v16];

    v11 = v16;
  }
}

void sub_18BAE348C(void *a1)
{
  v10 = [v1 superlayer];
  if (v10)
  {
    v3 = [a1 superlayer];
    if (v3)
    {
      v4 = v3;
      [a1 position];
      [v4 convertPoint:v10 toLayer:?];
      v6 = v5;
      v8 = v7;
      if (CGFloatIsValid() && CGFloatIsValid())
      {
        [a1 bounds];
        [v1 setBounds_];
        [v1 setPosition_];
        v9 = v10;
        v10 = v4;
      }

      else
      {

        v9 = v4;
      }
    }
  }
}

void sub_18BAE35D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 filters];
  if (v6)
  {
    v7 = v6;
    v8 = sub_18BC20D98();

    v16 = v8;
    sub_18BC1E3F8();
    v9 = sub_18BAE3F60(&v16, a1, a2);

    v10 = v16;
    v11 = *(v16 + 16);
    if (v9 > v11)
    {
      __break(1u);
    }

    else if ((v9 & 0x8000000000000000) == 0)
    {
      if (!__OFADD__(v11, v9 - v11))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v9 <= *(v10 + 24) >> 1)
        {
          sub_18BAE41DC(v9, v11, 0);
        }

        else
        {
          if (v11 <= v9)
          {
            v13 = v9;
          }

          else
          {
            v13 = v11;
          }

          v14 = sub_18B9B5C8C(isUniquelyReferenced_nonNull_native, v13, 1, v10);
          v16 = v14;
          sub_18BAE41DC(v9, v11, 0);
          if (!v14)
          {
            v15 = 0;
            [v3 setFilters_];
            goto LABEL_16;
          }
        }

        v15 = sub_18BC20D88();

        [v3 setFilters_];
LABEL_16:

        return;
      }

LABEL_22:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  [v3 setFilters_];
}

uint64_t sub_18BAE3850(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_18BC219A8();
  }

  return sub_18BC21B28();
}

unint64_t sub_18BAE38F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
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
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_18BAE3A44(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 16 * result);
  if (!v6)
  {
    goto LABEL_13;
  }

  v9 = *(v7 + 16);
  v10 = __OFSUB__(v9, a2);
  v11 = v9 - a2;
  if (v10)
  {
    goto LABEL_21;
  }

  result = v8 + 16 * a3;
  v12 = (v7 + 32 + 16 * a2);
  if (result != v12 || result >= v12 + 16 * v11)
  {
    v14 = a3;
    v15 = a4;
    result = memmove(result, v12, 16 * v11);
    a3 = v14;
    a4 = v15;
  }

  v16 = *(v7 + 16);
  v10 = __OFADD__(v16, v6);
  v17 = v16 + v6;
  if (v10)
  {
    goto LABEL_22;
  }

  *(v7 + 16) = v17;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v18 = 16 * a3;

  return memcpy(v8, (a4 + 32), v18);
}

id sub_18BAE3B38(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v3 = sub_18BC20B98();
  [v2 setValue:a1 forKey:v3];

  v4 = sub_18BC20EC8();
  [v2 setValue:v4 forKey:*MEMORY[0x1E6979B78]];

  v5 = sub_18BC1EEA8();
  [v2 setValue:v5 forKey:*MEMORY[0x1E6979BA8]];

  return v2;
}

unint64_t sub_18BAE3C48(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 144 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 144 * a3;
  v13 = (v7 + 32 + 144 * a2);
  if (result != v13 || result >= v13 + 144 * v12)
  {
    result = memmove(result, v13, 144 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_18BAE3D20(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_18BAE3DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v6 = 0;
    for (i = a1 + 32; ; i += 32)
    {
      sub_18B7B193C(i, v19);
      sub_18B7B0AC0(0, &qword_1EA9D40B8);
      if (swift_dynamicCast())
      {
        v8 = v20;
        v9 = [v20 type];

        if (v9)
        {
          v10 = a2;
          v11 = a3;
          v12 = sub_18BC20BD8();
          v14 = v13;

          v15 = v12;
          a3 = v11;
          if (v15 == v10 && v14 == v11)
          {

            return v6;
          }

          a2 = v10;
          v17 = sub_18BC21FD8();

          if (v17)
          {
            return v6;
          }
        }
      }

      if (v3 == ++v6)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_18BAE3F60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *a1;
  result = sub_18BAE3DE0(*a1, a2, a3);
  v8 = result;
  v9 = v3;
  if (v3)
  {
    return v8;
  }

  if (v7)
  {
    return *(v5 + 16);
  }

  v10 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_33;
  }

  v12 = (v5 + 16);
  v11 = *(v5 + 16);
  if (v10 == v11)
  {
    return v8;
  }

  v13 = 32 * result + 64;
  v23 = v4;
  while (v10 < v11)
  {
    sub_18B7B193C(v5 + v13, v27);
    sub_18B7B193C(v27, v26);
    sub_18B7B0AC0(0, &qword_1EA9D40B8);
    if (swift_dynamicCast() && (v14 = v28, v15 = [v28 type], v14, v15))
    {
      v16 = v9;
      v17 = sub_18BC20BD8();
      v19 = v18;

      if (v17 == a2 && v19 == a3)
      {

        result = __swift_destroy_boxed_opaque_existential_1Tm(v27);
        v9 = v16;
        v4 = v23;
        goto LABEL_10;
      }

      v22 = sub_18BC21FD8();

      result = __swift_destroy_boxed_opaque_existential_1Tm(v27);
      v9 = v16;
      v4 = v23;
      if (v22)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_1Tm(v27);
    }

    if (v10 != v8)
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      v20 = *v12;
      if (v8 >= v20)
      {
        goto LABEL_30;
      }

      result = sub_18B7B193C(v5 + 32 + 32 * v8, v27);
      if (v10 >= v20)
      {
        goto LABEL_31;
      }

      sub_18B7B193C(v5 + v13, v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_18BAE3828(v5);
      }

      v21 = v5 + 32 * v8;
      __swift_destroy_boxed_opaque_existential_1Tm(v21 + 32);
      result = sub_18B7B1AD4(v26, (v21 + 32));
      if (v10 >= *(v5 + 16))
      {
        goto LABEL_32;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v5 + v13);
      result = sub_18B7B1AD4(v27, (v5 + v13));
      *v4 = v5;
    }

    ++v8;
LABEL_10:
    ++v10;
    v12 = (v5 + 16);
    v11 = *(v5 + 16);
    v13 += 32;
    if (v10 == v11)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

unint64_t sub_18BAE41DC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_18BAE42A0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_18BAE4364()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_18BC1E8B8();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_18BC1E8D8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_18BC1E4F8();
  __swift_allocate_value_buffer(v10, qword_1EA9F8268);
  __swift_project_value_buffer(v10, qword_1EA9F8268);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_18BC1E8F8();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_18BC1E4E8();
}

uint64_t sub_18BAE4654@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4608);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v16 = &v14 - v2;
  v15 = sub_18BC1EA98();
  v3 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v14 = sub_18BC1E8D8();
  v9 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v10 = sub_18BC20B68();
  MEMORY[0x1EEE9AC00](v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  sub_18BC20B58();
  sub_18BC20B48();
  sub_18BC1DFE8();
  if (!v18)
  {
    sub_18BC1DFE8();
  }

  sub_18BC20B38();

  sub_18BC20B48();
  sub_18BC1E8C8();
  sub_18BC20B58();
  sub_18BC20B48();
  sub_18BC1DFE8();
  sub_18BC1E9B8();
  (*(v3 + 8))(v5, v15);
  sub_18BC20B38();

  sub_18BC20B48();
  sub_18BC1E8C8();
  (*(v9 + 56))(v8, 0, 1, v14);
  v12 = sub_18BC1E398();
  (*(*(v12 - 8) + 56))(v16, 1, 1, v12);
  return sub_18BC1E3A8();
}

unint64_t sub_18BAE4A10()
{
  result = qword_1EA9D8FA8;
  if (!qword_1EA9D8FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8FA8);
  }

  return result;
}

unint64_t sub_18BAE4A68()
{
  result = qword_1EA9D8FB0;
  if (!qword_1EA9D8FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8FB0);
  }

  return result;
}

unint64_t sub_18BAE4AC0()
{
  result = qword_1EA9D8FB8;
  if (!qword_1EA9D8FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8FB8);
  }

  return result;
}

unint64_t sub_18BAE4B18()
{
  result = qword_1EA9D8FC0;
  if (!qword_1EA9D8FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8FC0);
  }

  return result;
}

unint64_t sub_18BAE4B70()
{
  result = qword_1EA9D8FC8;
  if (!qword_1EA9D8FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8FC8);
  }

  return result;
}

unint64_t sub_18BAE4BC4()
{
  result = qword_1EA9D8FD0;
  if (!qword_1EA9D8FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8FD0);
  }

  return result;
}

unint64_t sub_18BAE4C18()
{
  result = qword_1EA9D8FD8;
  if (!qword_1EA9D8FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8FD8);
  }

  return result;
}

unint64_t sub_18BAE4C70()
{
  result = qword_1EA9D8FE0;
  if (!qword_1EA9D8FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8FE0);
  }

  return result;
}

uint64_t sub_18BAE4CC4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA9D2420 != -1)
  {
    swift_once();
  }

  v2 = sub_18BC1E4F8();
  v3 = __swift_project_value_buffer(v2, qword_1EA9F8268);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_18BAE4DB0(uint64_t a1)
{
  v2 = sub_18BA83570();

  return MEMORY[0x1EEDB2C50](a1, v2);
}

unint64_t sub_18BAE4E00()
{
  result = qword_1EA9D8FF8;
  if (!qword_1EA9D8FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8FF8);
  }

  return result;
}

uint64_t sub_18BAE4E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_18B987B10;

  return MEMORY[0x1EEDB3F58](a1, a2, a3, a4);
}

uint64_t sub_18BAE4F1C(uint64_t a1)
{
  v2 = sub_18BAE4C70();

  return MEMORY[0x1EEDB3F70](a1, v2);
}

unint64_t sub_18BAE4F6C()
{
  result = qword_1EA9D9000;
  if (!qword_1EA9D9000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9000);
  }

  return result;
}

unint64_t sub_18BAE4FC4()
{
  result = qword_1EA9D9008;
  if (!qword_1EA9D9008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9008);
  }

  return result;
}

uint64_t sub_18BAE5018(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D90A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &aBlock - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x1E69E7CC0];
  v19 = sub_18BAE6EC4;
  v20 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_18BAE545C;
  v18 = &block_descriptor_42;
  v10 = _Block_copy(&aBlock);
  sub_18BC1E1A8();

  [a2 setFoundItemsHandler_];
  _Block_release(v10);
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v19 = sub_18BAE6ECC;
  v20 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_18BAE556C;
  v18 = &block_descriptor_17_0;
  v13 = _Block_copy(&aBlock);
  sub_18BC1E1A8();

  [a2 setCompletionHandler_];
  _Block_release(v13);
  [a2 start];
}

uint64_t sub_18BAE52B8(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_20:
    v3 = sub_18BC219A8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x18CFFD010](v4, a1);
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_19;
      }

      v6 = *(a1 + 8 * v4 + 32);
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    sub_18BAE60B8(v6, &v17);
    ++v4;
    if (v18)
    {
      v16 = v18;
      v8 = v17;
      v15 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_18B9B6278(0, *(v5 + 2) + 1, 1, v5);
      }

      v10 = *(v5 + 2);
      v9 = *(v5 + 3);
      v11 = v16;
      if (v10 >= v9 >> 1)
      {
        v13 = sub_18B9B6278((v9 > 1), v10 + 1, 1, v5);
        v11 = v16;
        v5 = v13;
      }

      *(v5 + 2) = v10 + 1;
      v12 = &v5[40 * v10];
      *(v12 + 4) = v8;
      *(v12 + 40) = v11;
      *(v12 + 56) = v15;
      v4 = v7;
    }
  }

  swift_beginAccess();
  sub_18BA02284(v5);
  return swift_endAccess();
}

uint64_t sub_18BAE545C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_18BAE6F74();
  v2 = sub_18BC20D98();
  sub_18BC1E1A8();
  v1(v2);
}

uint64_t sub_18BAE54D0(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D90A8);
    return sub_18BC20EE8();
  }

  else
  {
    swift_beginAccess();
    sub_18BC1E3F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D90A8);
    return sub_18BC20EF8();
  }
}

void sub_18BAE556C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_18BC1E1A8();
  v4 = a2;
  v3(a2);
}

uint64_t sub_18BAE55D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18B9EDB00;

  return sub_18BAE6710(a1);
}

uint64_t sub_18BAE5680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B987B10;

  return MEMORY[0x1EEDB2EB8](a1, a2, a3);
}

unint64_t sub_18BAE5738()
{
  result = qword_1EA9D9010;
  if (!qword_1EA9D9010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9010);
  }

  return result;
}

unint64_t sub_18BAE5790()
{
  result = qword_1EA9D9018;
  if (!qword_1EA9D9018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D9020);
    sub_18BAE4C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9018);
  }

  return result;
}

uint64_t sub_18BAE5814(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_18BAE4B18();
  *v5 = v2;
  v5[1] = sub_18B7B6968;

  return MEMORY[0x1EEDB2ED0](a1, a2, v6);
}

uint64_t sub_18BAE58C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return MEMORY[0x1EEDB3B88](a1, a2, a3);
}

uint64_t sub_18BAE598C(uint64_t a1, int a2)
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

uint64_t sub_18BAE59D4(uint64_t result, int a2, int a3)
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

uint64_t sub_18BAE5A2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v66 = a3;
  v67 = a4;
  v57 = a2;
  v63 = a1;
  v4 = sub_18BC1EA98();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v55 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v55 - v11;
  v12 = sub_18BC1E8B8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = sub_18BC1E8D8();
  MEMORY[0x1EEE9AC00](v18 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9028);
  sub_18BC20B18();
  sub_18BC1EC38();
  v19 = *MEMORY[0x1E6968DF0];
  v20 = *(v13 + 104);
  v20(v15, v19, v12);
  sub_18BC1E8F8();
  v64 = sub_18BC1E018();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9030);
  sub_18BC20B18();
  sub_18BC1EC38();
  v20(v15, v19, v12);
  sub_18BC1E8F8();
  v65 = sub_18BC1E038();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5460);
  sub_18BC20B18();
  sub_18BC1EC38();
  v20(v15, v19, v12);
  v21 = v63;
  sub_18BC1E8F8();
  v22 = sub_18BC1E038();
  v23 = [v21 url];
  if (v23)
  {
    v55 = v22;
    v24 = v56;
    v25 = v23;
    sub_18BC1EA38();

    v26 = v60;
    v27 = v61;
    v28 = v62;
    (*(v61 + 32))(v60, v24, v62);
    v29 = objc_opt_self();
    sub_18BC1E9B8();
    v30 = sub_18BC20B98();

    v31 = sub_18BC20B98();

    v32 = [v29 historyItemIdentifierForURLString:v30 profileIdentifier:v31];

    v66 = sub_18BC20BD8();
    v34 = v33;

    v35 = *(v27 + 16);
    v36 = v59;
    v35(v59, v26, v28);
    v35(v58, v36, v28);
    sub_18BC1E3F8();
    v37 = v64;
    sub_18BC1DFF8();
    v38 = *(v27 + 8);
    v38(v36, v28);
    v39 = [v21 title];
    v40 = v37;
    if (v39)
    {
      v41 = v37;
      v42 = v26;
      v43 = v39;
      v44 = sub_18BC20BD8();
      v46 = v45;

      v26 = v42;
      v40 = v41;
    }

    else
    {
      v44 = sub_18BC1E9B8();
      v46 = v51;
    }

    v68 = v44;
    v69 = v46;
    v49 = v65;
    sub_18BC1DFF8();
    sub_18BC1DFE8();
    v52 = v68;
    v53 = v69;
    if (!v69)
    {
      v52 = 0;
      v53 = 0xE000000000000000;
    }

    v68 = v52;
    v69 = v53;
    v50 = v55;
    sub_18BC1DFF8();

    v38(v26, v28);

    v48 = v66;
  }

  else
  {

    v48 = 0;
    v34 = 0;
    v40 = 0;
    v49 = 0;
    v50 = 0;
  }

  v54 = v67;
  *v67 = v48;
  v54[1] = v34;
  v54[2] = v40;
  v54[3] = v49;
  v54[4] = v50;
  return result;
}

void sub_18BAE60B8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v53 = a1;
  v55 = a2;
  v2 = sub_18BC1EA98();
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v47 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v47 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v47 - v9;
  v10 = sub_18BC1E8B8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_18BC1E8D8();
  MEMORY[0x1EEE9AC00](v16 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9028);
  sub_18BC20B18();
  sub_18BC1EC38();
  v17 = *MEMORY[0x1E6968DF0];
  v18 = *(v11 + 104);
  v18(v13, v17, v10);
  sub_18BC1E8F8();
  v57 = sub_18BC1E018();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9030);
  sub_18BC20B18();
  sub_18BC1EC38();
  v18(v13, v17, v10);
  sub_18BC1E8F8();
  v54 = sub_18BC1E038();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5460);
  sub_18BC20B18();
  sub_18BC1EC38();
  v18(v13, v17, v10);
  v19 = v53;
  sub_18BC1E8F8();
  v20 = sub_18BC1E038();
  v21 = [v19 attributeSet];
  v22 = [v21 contentURL];

  if (v22)
  {
    v23 = v48;
    sub_18BC1EA38();

    v24 = v51;
    v25 = v56;
    v26 = v23;
    v27 = v52;
    (*(v51 + 32))(v56, v26, v52);
    v28 = [v19 uniqueIdentifier];
    v29 = sub_18BC20BD8();
    v31 = v30;

    v32 = *(v24 + 16);
    v33 = v50;
    v32(v50, v25, v27);
    v32(v49, v33, v27);
    sub_18BC1E3F8();
    sub_18BC1DFF8();
    v34 = *(v24 + 8);
    v34(v33, v27);
    v35 = [v19 attributeSet];
    v36 = [v35 title];

    if (v36)
    {
      v37 = sub_18BC20BD8();
      v39 = v38;

      v40 = v56;
    }

    else
    {
      v40 = v56;
      v37 = sub_18BC1E9B8();
      v39 = v43;
    }

    v58 = v37;
    v59 = v39;
    v42 = v54;
    sub_18BC1DFF8();
    sub_18BC1DFE8();
    v44 = v58;
    v45 = v59;
    if (!v59)
    {
      v44 = 0;
      v45 = 0xE000000000000000;
    }

    v58 = v44;
    v59 = v45;
    sub_18BC1DFF8();

    v34(v40, v27);

    v41 = v57;
  }

  else
  {

    v29 = 0;
    v31 = 0;
    v41 = 0;
    v42 = 0;
    v20 = 0;
  }

  v46 = v55;
  *v55 = v29;
  v46[1] = v31;
  v46[2] = v41;
  v46[3] = v42;
  v46[4] = v20;
}

uint64_t sub_18BAE6730()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E6964ED0]) init];
  v0[6] = v1;
  v2 = v1;
  v3 = sub_18BC20D88();
  [v2 setFetchAttributes_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9040);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18BC3E410;
  v5 = [objc_opt_self() safari_safariApplicationPlatformBundleIdentifier];
  v6 = sub_18BC20BD8();
  v8 = v7;

  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = sub_18BC20D88();

  [v2 setBundleIDs_];

  v10 = sub_18BC20B98();
  [v2 setFilterQuery_];

  v11 = [objc_opt_self() sharedApplication];
  v0[2] = &unk_1F0032D40;
  v12 = swift_dynamicCastObjCProtocolConditional();
  if (v12)
  {
    v13 = [v12 lastActiveProfileIdentifier];

    if (!v13)
    {
      sub_18BC20BD8();
      v13 = sub_18BC20B98();
    }

    v14 = v0[5];
    v15 = [objc_opt_self() coreSpotlightPageDonationIdentifierForProfileWithIdentifier_];

    v39 = sub_18BC20BD8();
    v17 = v16;

    v18 = *(v14 + 16);
    if (v18)
    {
      v37 = v2;
      v38 = v0;
      v19 = v0[5];
      v40 = MEMORY[0x1E69E7CC0];
      sub_18B7B7A54(0, v18, 0);
      v20 = v40;
      v21 = (v19 + 40);
      do
      {
        v22 = *(v21 - 1);
        v23 = *v21;
        sub_18BC1E3F8();
        sub_18BC21AD8();
        MEMORY[0x18CFFC150](0xD000000000000029, 0x800000018BC6C670);
        MEMORY[0x18CFFC150](v22, v23);
        MEMORY[0x18CFFC150](0xD000000000000022, 0x800000018BC6C6A0);
        v24 = v17;
        MEMORY[0x18CFFC150](v39, v17);
        MEMORY[0x18CFFC150](41, 0xE100000000000000);

        v26 = *(v40 + 16);
        v25 = *(v40 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_18B7B7A54((v25 > 1), v26 + 1, 1);
        }

        *(v40 + 16) = v26 + 1;
        v27 = v40 + 16 * v26;
        *(v27 + 32) = 0;
        *(v27 + 40) = 0xE000000000000000;
        v21 += 2;
        --v18;
        v17 = v24;
      }

      while (v18);

      v2 = v37;
      v0 = v38;
    }

    else
    {

      v20 = MEMORY[0x1E69E7CC0];
    }

    v0[3] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1C0);
    sub_18B7B0B08(&unk_1EA9D39A0, &unk_1EA9DB1C0);
    sub_18BC20AB8();

    v31 = objc_allocWithZone(MEMORY[0x1E6964E68]);
    v32 = sub_18BC20B98();

    v33 = [v31 initWithQueryString:v32 queryContext:v2];
    v0[7] = v33;

    v34 = swift_task_alloc();
    v0[8] = v34;
    *(v34 + 16) = v33;
    v35 = swift_task_alloc();
    v0[9] = v35;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9020);
    *v35 = v0;
    v35[1] = sub_18BAE6CC0;

    return MEMORY[0x1EEE6DE38](v0 + 4, 0, 0, 0x7365697469746E65, 0xEE00293A726F6628, sub_18BAE6EBC, v34, v36);
  }

  else
  {

    v28 = v0[1];
    v29 = MEMORY[0x1E69E7CC0];

    return v28(v29);
  }
}

uint64_t sub_18BAE6CC0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_18BAE6E48;
  }

  else
  {

    v2 = sub_18BAE6DDC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18BAE6DDC()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 32);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_18BAE6E48()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_18BAE6ECC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D90A8);

  return sub_18BAE54D0(a1);
}

unint64_t sub_18BAE6F74()
{
  result = qword_1EA9D90B0;
  if (!qword_1EA9D90B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9D90B0);
  }

  return result;
}

id SFTooltip.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for SFTooltip()
{
  result = qword_1EA9D9140;
  if (!qword_1EA9D9140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9D9140);
  }

  return result;
}

void sub_18BAE71D4()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v6 = 0;
  while (v4)
  {
LABEL_9:
    v8 = *(*(v1 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v4)))));
    if ([v8 isDragging])
    {

      return;
    }

    v4 &= v4 - 1;
    v9 = [v8 isDecelerating];

    if (v9)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {
      goto LABEL_11;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_18BAE733C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  sub_18BC1E3F8();
  v8 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v11 = v8;
LABEL_14:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = v14 | (v11 << 6);
      v16 = *(*(v3 + 48) + 8 * v15);
      sub_18B7CE7E4(*(v3 + 56) + 16 * v15, v19);
      v20 = v16;
      sub_18B7CDFCC(v19, v21);
      v17 = v16;
      v13 = v11;
LABEL_15:
      sub_18B7CE840(&v20, &v22);
      v18 = v22;
      if (!v22)
      {

        return;
      }

      sub_18B7CDFCC(&v23, &v20);
      sub_18B7B0AC0(0, &qword_1EA9D5BE0);
      if (sub_18BC215C8())
      {
        break;
      }

      swift_unknownObjectUnownedLoadStrong();
      v9 = v21[0];
      ObjectType = swift_getObjectType();
      (*(v9 + 40))(a1, ObjectType, v9);

      swift_unknownObjectRelease();
      sub_18B7E1848(&v20);
      v8 = v13;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    sub_18B7E1848(&v20);

    v8 = v13;
  }

  while (v6);
LABEL_7:
  if (v7 <= v8 + 1)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v7;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {
      v6 = 0;
      v20 = 0;
      v21[0] = 0;
      v21[1] = 0;
      goto LABEL_15;
    }

    v6 = *(v3 + 64 + 8 * v11);
    ++v8;
    if (v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_18BAE7534(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  sub_18BC1E3F8();
  v8 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v11 = v8;
LABEL_14:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = v14 | (v11 << 6);
      v16 = *(*(v3 + 48) + 8 * v15);
      sub_18B7CE7E4(*(v3 + 56) + 16 * v15, v19);
      v20 = v16;
      sub_18B7CDFCC(v19, v21);
      v17 = v16;
      v13 = v11;
LABEL_15:
      sub_18B7CE840(&v20, &v22);
      v18 = v22;
      if (!v22)
      {

        return;
      }

      sub_18B7CDFCC(&v23, &v20);
      sub_18B7B0AC0(0, &qword_1EA9D5BE0);
      if (sub_18BC215C8())
      {
        break;
      }

      swift_unknownObjectUnownedLoadStrong();
      v9 = v21[0];
      ObjectType = swift_getObjectType();
      (*(v9 + 48))(a1, ObjectType, v9);

      swift_unknownObjectRelease();
      sub_18B7E1848(&v20);
      v8 = v13;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    sub_18B7E1848(&v20);

    v8 = v13;
  }

  while (v6);
LABEL_7:
  if (v7 <= v8 + 1)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v7;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {
      v6 = 0;
      v20 = 0;
      v21[0] = 0;
      v21[1] = 0;
      goto LABEL_15;
    }

    v6 = *(v3 + 64 + 8 * v11);
    ++v8;
    if (v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_18BAE772C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  sub_18BC1E3F8();
  v8 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v11 = v8;
LABEL_14:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = v14 | (v11 << 6);
      v16 = *(*(v3 + 48) + 8 * v15);
      sub_18B7CE7E4(*(v3 + 56) + 16 * v15, v19);
      v20 = v16;
      sub_18B7CDFCC(v19, v21);
      v17 = v16;
      v13 = v11;
LABEL_15:
      sub_18B7CE840(&v20, &v22);
      v18 = v22;
      if (!v22)
      {

        return;
      }

      sub_18B7CDFCC(&v23, &v20);
      sub_18B7B0AC0(0, &qword_1EA9D5BE0);
      if (sub_18BC215C8())
      {
        break;
      }

      swift_unknownObjectUnownedLoadStrong();
      v9 = v21[0];
      ObjectType = swift_getObjectType();
      (*(v9 + 64))(a1, ObjectType, v9);

      swift_unknownObjectRelease();
      sub_18B7E1848(&v20);
      v8 = v13;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    sub_18B7E1848(&v20);

    v8 = v13;
  }

  while (v6);
LABEL_7:
  if (v7 <= v8 + 1)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v7;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {
      v6 = 0;
      v20 = 0;
      v21[0] = 0;
      v21[1] = 0;
      goto LABEL_15;
    }

    v6 = *(v3 + 64 + 8 * v11);
    ++v8;
    if (v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_18BAE7924(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  sub_18BC1E3F8();
  v8 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v11 = v8;
LABEL_14:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = v14 | (v11 << 6);
      v16 = *(*(v3 + 48) + 8 * v15);
      sub_18B7CE7E4(*(v3 + 56) + 16 * v15, v19);
      v20 = v16;
      sub_18B7CDFCC(v19, v21);
      v17 = v16;
      v13 = v11;
LABEL_15:
      sub_18B7CE840(&v20, &v22);
      v18 = v22;
      if (!v22)
      {

        return;
      }

      sub_18B7CDFCC(&v23, &v20);
      sub_18B7B0AC0(0, &qword_1EA9D5BE0);
      if (sub_18BC215C8())
      {
        break;
      }

      swift_unknownObjectUnownedLoadStrong();
      v9 = v21[0];
      ObjectType = swift_getObjectType();
      (*(v9 + 72))(a1, ObjectType, v9);

      swift_unknownObjectRelease();
      sub_18B7E1848(&v20);
      v8 = v13;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    sub_18B7E1848(&v20);

    v8 = v13;
  }

  while (v6);
LABEL_7:
  if (v7 <= v8 + 1)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v7;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {
      v6 = 0;
      v20 = 0;
      v21[0] = 0;
      v21[1] = 0;
      goto LABEL_15;
    }

    v6 = *(v3 + 64 + 8 * v11);
    ++v8;
    if (v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_18BAE7B1C(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 32);
  if (*(v8 + 16))
  {
    sub_18BC1E3F8();
    v9 = sub_18B7E172C(a1);
    if (v10)
    {
      sub_18B7CE7E4(*(v8 + 56) + 16 * v9, &v40);

      sub_18B7CDFCC(&v40, v42);
      swift_unknownObjectUnownedLoadStrong();
      v11 = v43;
      ObjectType = swift_getObjectType();
      v13 = (*(v11 + 32))(ObjectType, v11, a2, a3);
      v15 = v14;
      swift_unknownObjectRelease();
      v16 = *(v4 + 32);
      v17 = 1 << *(v16 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v18 & *(v16 + 64);
      v20 = (v17 + 63) >> 6;
      sub_18BC1E3F8();
      v21 = 0;
      if (!v19)
      {
        goto LABEL_9;
      }

      do
      {
        while (1)
        {
          v29 = v21;
LABEL_16:
          v32 = __clz(__rbit64(v19));
          v19 &= v19 - 1;
          v33 = v32 | (v29 << 6);
          v34 = *(*(v16 + 48) + 8 * v33);
          sub_18B7CE7E4(*(v16 + 56) + 16 * v33, v37);
          v38 = v34;
          sub_18B7CDFCC(v37, v39);
          v35 = v34;
          v31 = v29;
LABEL_17:
          sub_18B7CE840(&v38, &v40);
          v36 = v40;
          if (!v40)
          {
            sub_18B7E1848(v42);

            return;
          }

          sub_18B7CDFCC(&v41, &v38);
          sub_18B7B0AC0(0, &qword_1EA9D5BE0);
          if (sub_18BC215C8())
          {
            break;
          }

          swift_unknownObjectUnownedLoadStrong();
          v22 = v39[0];
          v23 = swift_getObjectType();
          v24 = (*(v22 + 24))(v23, v22, v13, v15);
          v26 = v25;
          swift_unknownObjectRelease();
          swift_unknownObjectUnownedLoadStrong();
          v27 = v39[0];
          v28 = swift_getObjectType();
          (*(v27 + 80))(a1, v28, v27, v24, v26);

          swift_unknownObjectRelease();
          sub_18B7E1848(&v38);
          v21 = v31;
          if (!v19)
          {
            goto LABEL_9;
          }
        }

        sub_18B7E1848(&v38);

        v21 = v31;
      }

      while (v19);
LABEL_9:
      if (v20 <= v21 + 1)
      {
        v30 = v21 + 1;
      }

      else
      {
        v30 = v20;
      }

      v31 = v30 - 1;
      while (1)
      {
        v29 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v29 >= v20)
        {
          v19 = 0;
          v38 = 0;
          v39[0] = 0;
          v39[1] = 0;
          goto LABEL_17;
        }

        v19 = *(v16 + 64 + 8 * v29);
        ++v21;
        if (v19)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
    }
  }
}

uint64_t sub_18BAE7E18(uint64_t result)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 24);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v6 = result;
  *(v2 + 24) = v5;
  if (v5 == 1)
  {
    result = swift_beginAccess();
    v7 = *(v2 + 16);
    v8 = *(v7 + 16);
    if (v8)
    {
      sub_18BC1E1A8();
      sub_18BC1E3F8();
      v9 = v7 + 40;
      do
      {
        v10 = *(v9 - 8);
        v19[0] = *(v2 + 24) > 0;
        sub_18BC1E1A8();
        v10(v19);

        v9 += 16;
        --v8;
      }

      while (v8);
    }
  }

  result = v6(result);
  v11 = *(v1 + 24);
  v12 = *(v11 + 24);
  v4 = __OFSUB__(v12, 1);
  v13 = v12 - 1;
  if (v4)
  {
    goto LABEL_15;
  }

  *(v11 + 24) = v13;
  if (!v13)
  {
    result = swift_beginAccess();
    v14 = *(v11 + 16);
    v15 = *(v14 + 16);
    if (v15)
    {
      sub_18BC1E1A8();
      sub_18BC1E3F8();
      v16 = v14 + 40;
      do
      {
        v17 = *(v16 - 8);
        v18 = *(v11 + 24) > 0;
        sub_18BC1E1A8();
        v17(&v18);

        v16 += 16;
        --v15;
      }

      while (v15);
    }
  }

  return result;
}

uint64_t sub_18BAE7FB0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_18BAE7FF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18BAE8044(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

void sub_18BAE8084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  v4 = *(v3 + 24);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v9 = a1;
  *(v3 + 24) = v6;
  if (v6 == 1)
  {
    a1 = swift_beginAccess();
    v10 = *(v3 + 16);
    v11 = *(v10 + 16);
    if (v11)
    {
      sub_18BC1E1A8();
      sub_18BC1E3F8();
      v12 = v10 + 40;
      do
      {
        v13 = *(v12 - 8);
        LOBYTE(v30[0]) = *(v3 + 24) > 0;
        sub_18BC1E1A8();
        v13(v30);

        v12 += 16;
        --v11;
      }

      while (v11);
    }
  }

  v14 = sub_18B7C2E68(a1);
  v15 = sub_18B7D292C();
  v16 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
  swift_beginAccess();
  sub_18B80DBC4(v15 + v16, v30);
  v17 = v31;
  v18 = v32;
  __swift_project_boxed_opaque_existential_1Tm(v30, v31);
  v19 = (*(v18 + 96))(a3, v17, v18);
  v21 = v20;

  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  [v14 setContentOffset_];

  if ((*(a2 + qword_1ED651628 + 32) & 1) == 0)
  {
    sub_18BA429B0(1, 0);
  }

  v22 = *(v9 + 24);
  v23 = *(v22 + 24);
  v5 = __OFSUB__(v23, 1);
  v24 = v23 - 1;
  if (v5)
  {
    goto LABEL_17;
  }

  *(v22 + 24) = v24;
  if (!v24)
  {
    swift_beginAccess();
    v25 = *(v22 + 16);
    v26 = *(v25 + 16);
    if (v26)
    {
      sub_18BC1E1A8();
      sub_18BC1E3F8();
      v27 = v25 + 40;
      do
      {
        v28 = *(v27 - 8);
        v29 = *(v22 + 24) > 0;
        sub_18BC1E1A8();
        v28(&v29);

        v27 += 16;
        --v26;
      }

      while (v26);
    }
  }
}

uint64_t sub_18BAE8310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a1;
  v3[22] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6EC8);
  v3[23] = swift_task_alloc();
  v4 = type metadata accessor for TabEntity();
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v5 = sub_18BC1EC08();
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  sub_18BC20F28();
  v3[33] = sub_18BC20F18();
  v7 = sub_18BC20ED8();
  v3[34] = v7;
  v3[35] = v6;

  return MEMORY[0x1EEE6DFA0](sub_18BAE84E8, v7, v6);
}

uint64_t sub_18BAE84E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong actionPerformer], v0[36] = v3, v2, v3))
  {
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1F2C8();
    __swift_project_value_buffer(v4, qword_1EA9F7EC8);
    v5 = sub_18BC1F2A8();
    v6 = sub_18BC21218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_18B7AC000, v5, v6, "Create new tab via view-based action.", v7, 2u);
      MEMORY[0x18CFFEEE0](v7, -1, -1);
    }

    v8 = v0[28];

    v0[2] = v0;
    v0[7] = v8;
    v0[3] = sub_18BAE8864;
    v9 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9158);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_18BAE8DDC;
    v0[13] = &block_descriptor_71;
    v0[14] = v9;
    [v3 createNewTabWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v10 = sub_18BC1DE48();
    v11 = __swift_project_value_buffer(v10, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v10 - 8) + 16))(v12, v11, v10);
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_18BAE8864()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);

  return MEMORY[0x1EEE6DFA0](sub_18BAE896C, v2, v1);
}

uint64_t sub_18BAE896C()
{
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];

  sub_18BAEBF48(v3, v4);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    v5 = v0[27];
    v6 = &unk_1EA9D3AE0;
  }

  else
  {
    v7 = v0[31];
    v8 = v0[32];
    v9 = v0[29];
    v10 = v0[30];
    v11 = v0[24];
    v12 = v0[25];
    v13 = v0[23];
    (*(v10 + 32))(v8, v0[27], v9);
    (*(v10 + 16))(v7, v8, v9);
    sub_18BA7A354(v7, v13);
    if ((*(v12 + 48))(v13, 1, v11) != 1)
    {
      v19 = v0[32];
      v20 = v0[30];
      v24 = v0[29];
      v21 = v0[26];
      v22 = v0[21];
      sub_18BA5F428(v0[23], v21);
      v22[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6F28);
      v22[4] = sub_18BAEBFB8(&unk_1EA9D9160, &qword_1EA9D6F28);
      __swift_allocate_boxed_opaque_existential_0Tm(v22);
      sub_18BA5F958(&qword_1EA9D69C0, type metadata accessor for TabEntity);
      sub_18BC1DF88();
      swift_unknownObjectRelease();
      sub_18BA5F48C(v21);
      (*(v20 + 8))(v19, v24);

      v18 = v0[1];
      goto LABEL_9;
    }

    v14 = v0[23];
    (*(v0[30] + 8))(v0[32], v0[29]);
    v6 = &qword_1EA9D6EC8;
    v5 = v14;
  }

  sub_18B988BAC(v5, v6);
  if (qword_1EA9D2550 != -1)
  {
    swift_once();
  }

  v15 = sub_18BC1DE48();
  v16 = __swift_project_value_buffer(v15, qword_1EA9F8578);
  sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
  swift_allocError();
  (*(*(v15 - 8) + 16))(v17, v16, v15);
  swift_willThrow();
  swift_unknownObjectRelease();

  v18 = v0[1];
LABEL_9:

  return v18();
}

uint64_t sub_18BAE8D30(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return sub_18BAE8310(a1, a2, v2);
}

uint64_t sub_18BAE8DDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_18BC1EBE8();
    v11 = sub_18BC1EC08();
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  }

  else
  {
    v12 = sub_18BC1EC08();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  sub_18BAEBF48(v6, v9);
  sub_18BAEBF48(v9, *(*(v10 + 64) + 40));
  return swift_continuation_resume();
}

uint64_t sub_18BAE8F78(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v3 + 168) = a1;
  *(v3 + 176) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6EC8);
  *(v3 + 184) = swift_task_alloc();
  v5 = type metadata accessor for TabEntity();
  *(v3 + 192) = v5;
  *(v3 + 200) = *(v5 - 8);
  *(v3 + 208) = swift_task_alloc();
  v6 = sub_18BC1EA98();
  *(v3 + 216) = v6;
  *(v3 + 224) = *(v6 - 8);
  *(v3 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4500);
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  v7 = sub_18BC1EC08();
  *(v3 + 272) = v7;
  *(v3 + 280) = *(v7 - 8);
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = *a2;
  sub_18BC20F28();
  *(v3 + 320) = sub_18BC20F18();
  v9 = sub_18BC20ED8();
  *(v3 + 328) = v9;
  *(v3 + 336) = v8;

  return MEMORY[0x1EEE6DFA0](sub_18BAE91FC, v9, v8);
}

uint64_t sub_18BAE91FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong actionPerformer], *(v0 + 344) = v3, v2, v3))
  {
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1F2C8();
    __swift_project_value_buffer(v4, qword_1EA9F7EC8);
    v5 = sub_18BC1F2A8();
    v6 = sub_18BC21218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_18B7AC000, v5, v6, "Create new tab for assistant via view-based action.", v7, 2u);
      MEMORY[0x18CFFEEE0](v7, -1, -1);
    }

    v8 = *(v0 + 240);
    v9 = *(v0 + 216);
    v10 = *(v0 + 224);

    sub_18BC1E0A8();
    v11 = *(v10 + 48);
    v12 = v11(v8, 1, v9);
    v13 = *(v0 + 216);
    v14 = *(v0 + 224);
    if (v12)
    {
      v15 = *(v0 + 248);
      sub_18B988BAC(*(v0 + 240), &qword_1EA9D4500);
      (*(v14 + 56))(v15, 1, 1, v13);
      v16 = 0;
    }

    else
    {
      v22 = *(v0 + 240);
      (*(v14 + 16))(*(v0 + 232), v22, *(v0 + 216));
      sub_18B988BAC(v22, &qword_1EA9D4500);
      v23 = sub_18BC1E9E8();
      v24 = [v23 safari_originalDataAsString];

      if (!v24)
      {
        sub_18BC20BD8();
        v24 = sub_18BC20B98();
      }

      v25 = [v24 safari_bestURLForUserTypedString];

      if (v25)
      {
        sub_18BC1EA38();

        v26 = 0;
      }

      else
      {
        v26 = 1;
      }

      v27 = *(v0 + 248);
      v29 = *(v0 + 224);
      v28 = *(v0 + 232);
      v30 = *(v0 + 216);
      (*(v29 + 56))(v27, v26, 1, v30);
      v31 = *(v29 + 8);
      v31(v28, v30);
      if (v11(v27, 1, v30) == 1)
      {
        v16 = 0;
      }

      else
      {
        v32 = *(v0 + 248);
        v33 = *(v0 + 216);
        v16 = sub_18BC1E9E8();
        v31(v32, v33);
      }
    }

    *(v0 + 352) = v16;
    v34 = *(v0 + 264);
    sub_18BC1E0A8();
    v35 = *(v0 + 360);
    *(v0 + 16) = v0;
    *(v0 + 56) = v34;
    *(v0 + 24) = sub_18BAE9784;
    v36 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9158);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_18BAE8DDC;
    *(v0 + 104) = &block_descriptor_43;
    *(v0 + 112) = v36;
    [v3 createNewTabWithURL:v16 isPrivate:v35 completionHandler:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v17 = sub_18BC1DE48();
    v18 = __swift_project_value_buffer(v17, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v17 - 8) + 16))(v19, v18, v17);
    swift_willThrow();

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_18BAE9784()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 328);

  return MEMORY[0x1EEE6DFA0](sub_18BAE988C, v2, v1);
}

uint64_t sub_18BAE988C()
{
  v1 = v0[34];
  v2 = v0[35];
  v4 = v0[32];
  v3 = v0[33];

  sub_18BAEBF48(v3, v4);
  v5 = (*(v2 + 48))(v4, 1, v1);
  v6 = v0[44];
  if (v5 == 1)
  {
    sub_18B988BAC(v0[32], &unk_1EA9D3AE0);
  }

  else
  {
    v7 = v0[36];
    v8 = v0[37];
    v9 = v0[34];
    v10 = v0[35];
    v11 = v0[24];
    v12 = v0[25];
    v13 = v0[23];
    (*(v10 + 32))(v8, v0[32], v9);

    (*(v10 + 16))(v7, v8, v9);
    sub_18BA7A354(v7, v13);
    if ((*(v12 + 48))(v13, 1, v11) != 1)
    {
      v19 = v0[37];
      v20 = v0[35];
      v24 = v0[34];
      v21 = v0[26];
      v22 = v0[21];
      sub_18BA5F428(v0[23], v21);
      v22[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6F28);
      v22[4] = sub_18BAEBFB8(&unk_1EA9D9160, &qword_1EA9D6F28);
      __swift_allocate_boxed_opaque_existential_0Tm(v22);
      sub_18BA5F958(&qword_1EA9D69C0, type metadata accessor for TabEntity);
      sub_18BC1DF88();
      swift_unknownObjectRelease();
      sub_18BA5F48C(v21);
      (*(v20 + 8))(v19, v24);

      v18 = v0[1];
      goto LABEL_9;
    }

    v14 = v0[23];
    (*(v0[35] + 8))(v0[37], v0[34]);
    sub_18B988BAC(v14, &qword_1EA9D6EC8);
  }

  if (qword_1EA9D2550 != -1)
  {
    swift_once();
  }

  v15 = sub_18BC1DE48();
  v16 = __swift_project_value_buffer(v15, qword_1EA9F8578);
  sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
  swift_allocError();
  (*(*(v15 - 8) + 16))(v17, v16, v15);
  swift_willThrow();
  swift_unknownObjectRelease();

  v18 = v0[1];
LABEL_9:

  return v18();
}

uint64_t sub_18BAE9CA4(uint64_t a1, _OWORD *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return sub_18BAE8F78(a1, a2, v2);
}

uint64_t SFSiriLinkCoordinator.openTabInteraction()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = &unk_18BC4C750;
  *(v1 + 24) = v0;
  v2 = objc_allocWithZone(sub_18BC1F038());
  sub_18B8084B0();
  return sub_18BC1F028();
}

uint64_t sub_18BAE9E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_18BC1EC08();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  type metadata accessor for TabEntity();
  v3[11] = swift_task_alloc();
  sub_18BC20F28();
  v3[12] = sub_18BC20F18();
  v6 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BAE9F24, v6, v5);
}

uint64_t sub_18BAE9F24()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong actionPerformer], v2, v3))
  {
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1F2C8();
    __swift_project_value_buffer(v4, qword_1EA9F7EC8);
    v5 = sub_18BC1F2A8();
    v6 = sub_18BC21218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_18B7AC000, v5, v6, "Open tab", v7, 2u);
      MEMORY[0x18CFFEEE0](v7, -1, -1);
    }

    v8 = v0[10];
    v9 = v0[11];
    v10 = v0[8];
    v11 = v0[9];
    v12 = v0[5];

    sub_18BC1E0A8();
    (*(v11 + 16))(v8, v9, v10);
    sub_18BA5F48C(v9);
    v13 = sub_18BC1EBC8();
    (*(v11 + 8))(v8, v10);
    [v3 openTabWithUUID_];

    v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45C0);
    v12[4] = sub_18BAEBFB8(&qword_1EA9D45B8, &qword_1EA9D45C0);
    __swift_allocate_boxed_opaque_existential_0Tm(v12);
    sub_18BC1DF98();
    swift_unknownObjectRelease();

    v14 = v0[1];
  }

  else
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v15 = sub_18BC1DE48();
    v16 = __swift_project_value_buffer(v15, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v15 - 8) + 16))(v17, v16, v15);
    swift_willThrow();

    v14 = v0[1];
  }

  return v14();
}

uint64_t sub_18BAEA274(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return sub_18BAE9E00(a1, a2, v2);
}

uint64_t sub_18BAEA320(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return v8(a1, v5);
}

uint64_t sub_18BAEA424(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18BAEA320(a1, a2, v6);
}

uint64_t SFSiriLinkCoordinator.closeTabInteraction()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = &unk_18BC4C770;
  *(v1 + 24) = v0;
  v2 = objc_allocWithZone(sub_18BC1F038());
  sub_18B8086B4();
  return sub_18BC1F028();
}

uint64_t sub_18BAEA59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_18BC1EC08();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  type metadata accessor for TabEntity();
  v3[11] = swift_task_alloc();
  sub_18BC20F28();
  v3[12] = sub_18BC20F18();
  v6 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BAEA6C0, v6, v5);
}

uint64_t sub_18BAEA6C0()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong actionPerformer], v2, v3))
  {
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1F2C8();
    __swift_project_value_buffer(v4, qword_1EA9F7EC8);
    v5 = sub_18BC1F2A8();
    v6 = sub_18BC21218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_18B7AC000, v5, v6, "Close tab", v7, 2u);
      MEMORY[0x18CFFEEE0](v7, -1, -1);
    }

    v8 = v0[10];
    v9 = v0[11];
    v10 = v0[8];
    v11 = v0[9];
    v12 = v0[5];

    sub_18BC1E0A8();
    (*(v11 + 16))(v8, v9, v10);
    sub_18BA5F48C(v9);
    v13 = sub_18BC1EBC8();
    (*(v11 + 8))(v8, v10);
    [v3 closeTabWithUUID_];

    v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45C0);
    v12[4] = sub_18BAEBFB8(&qword_1EA9D45B8, &qword_1EA9D45C0);
    __swift_allocate_boxed_opaque_existential_0Tm(v12);
    sub_18BC1DF98();
    swift_unknownObjectRelease();

    v14 = v0[1];
  }

  else
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v15 = sub_18BC1DE48();
    v16 = __swift_project_value_buffer(v15, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v15 - 8) + 16))(v17, v16, v15);
    swift_willThrow();

    v14 = v0[1];
  }

  return v14();
}

uint64_t sub_18BAEAA10(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return sub_18BAEA59C(a1, a2, v2);
}

uint64_t sub_18BAEAABC(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return v8(a1, v5);
}

uint64_t sub_18BAEABC0(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18BAEAABC(a1, a2, v6);
}

uint64_t sub_18BAEACBC(void (*a1)(void))
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(sub_18BC1F038());
  a1();
  return sub_18BC1F028();
}

uint64_t sub_18BAEAD48(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = a3;
  v5 = sub_18BC1EC08();
  *(v3 + 56) = v5;
  *(v3 + 64) = *(v5 - 8);
  *(v3 + 72) = swift_task_alloc();
  type metadata accessor for TabEntity();
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = *a2;
  sub_18BC20F28();
  *(v3 + 104) = sub_18BC20F18();
  v7 = sub_18BC20ED8();
  *(v3 + 112) = v7;
  *(v3 + 120) = v6;

  return MEMORY[0x1EEE6DFA0](sub_18BAEAE74, v7, v6);
}

uint64_t sub_18BAEAE74()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong actionPerformer], v0[16] = v3, v2, v3))
  {
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1F2C8();
    __swift_project_value_buffer(v4, qword_1EA9F7EC8);
    v5 = sub_18BC1F2A8();
    v6 = sub_18BC21218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_18B7AC000, v5, v6, "Load URL in tab", v7, 2u);
      MEMORY[0x18CFFEEE0](v7, -1, -1);
    }

    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[7];
    v11 = v0[8];
    v12 = v0[5];

    sub_18BC1E0A8();
    (*(v11 + 16))(v9, v8, v10);
    sub_18BA5F48C(v8);
    v13 = sub_18BC1EBC8();
    (*(v11 + 8))(v9, v10);
    [v3 openTabWithUUID_];

    v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45C0);
    v12[4] = sub_18BAEBFB8(&qword_1EA9D45B8, &qword_1EA9D45C0);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v12);
    v15 = swift_task_alloc();
    v0[17] = v15;
    *v15 = v0;
    v15[1] = sub_18BAEB21C;
    v16 = v0[11];
    v17 = v0[12];

    return sub_18BA7ED88(boxed_opaque_existential_0Tm, v16, v17);
  }

  else
  {

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v19 = sub_18BC1DE48();
    v20 = __swift_project_value_buffer(v19, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v19 - 8) + 16))(v21, v20, v19);
    swift_willThrow();

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_18BAEB21C()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_18BAEB3E4;
  }

  else
  {
    v5 = sub_18BAEB358;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_18BAEB358()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18BAEB3E4()
{
  v1 = *(v0 + 40);

  swift_unknownObjectRelease();
  __swift_deallocate_boxed_opaque_existential_1(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_18BAEB470(uint64_t a1, _OWORD *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return sub_18BAEAD48(a1, a2, v2);
}

uint64_t SFSiriLinkCoordinator.closeTabsInteraction()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = &unk_18BC4C7A0;
  *(v1 + 24) = v0;
  v2 = objc_allocWithZone(sub_18BC1F038());
  sub_18B809DA4();
  return sub_18BC1F028();
}

uint64_t sub_18BAEB5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v3[10] = *(type metadata accessor for TabEntity() - 8);
  v3[11] = swift_task_alloc();
  v4 = sub_18BC1EC08();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  sub_18BC20F28();
  v3[15] = sub_18BC20F18();
  v6 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BAEB71C, v6, v5);
}

uint64_t sub_18BAEB71C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong actionPerformer], v2, v3))
  {
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1F2C8();
    __swift_project_value_buffer(v4, qword_1EA9F7EC8);
    sub_18BC1E1A8();
    v5 = sub_18BC1F2A8();
    v6 = sub_18BC21218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      sub_18BC1E0A8();
      v8 = *(v0[6] + 16);

      *(v7 + 4) = v8;

      _os_log_impl(&dword_18B7AC000, v5, v6, "Closing %ld tabs", v7, 0xCu);
      MEMORY[0x18CFFEEE0](v7, -1, -1);
    }

    else
    {
    }

    sub_18BC1E0A8();
    v13 = v0[5];
    v14 = *(v13 + 16);
    if (v14)
    {
      v28 = v3;
      v15 = v0[13];
      v16 = v0[10];
      v30 = MEMORY[0x1E69E7CC0];
      sub_18B855A90(0, v14, 0);
      v17 = v13 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
      v29 = *(v16 + 72);
      do
      {
        v18 = v0[14];
        v20 = v0[11];
        v19 = v0[12];
        sub_18BA82420(v17, v20);
        (*(v15 + 16))(v18, v20, v19);
        sub_18BA5F48C(v20);
        v22 = *(v30 + 16);
        v21 = *(v30 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_18B855A90(v21 > 1, v22 + 1, 1);
        }

        v23 = v0[14];
        v24 = v0[12];
        *(v30 + 16) = v22 + 1;
        (*(v15 + 32))(v30 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v22, v23, v24);
        v17 += v29;
        --v14;
      }

      while (v14);

      v3 = v28;
    }

    else
    {
    }

    v25 = v0[7];
    v26 = sub_18BC20D88();

    [v3 closeTabsWithUUIDs_];

    v25[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45C0);
    v25[4] = sub_18BAEBFB8(&qword_1EA9D45B8, &qword_1EA9D45C0);
    __swift_allocate_boxed_opaque_existential_0Tm(v25);
    sub_18BC1DF98();
    swift_unknownObjectRelease();

    v12 = v0[1];
  }

  else
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v9 = sub_18BC1DE48();
    v10 = __swift_project_value_buffer(v9, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v9 - 8) + 16))(v11, v10, v9);
    swift_willThrow();

    v12 = v0[1];
  }

  return v12();
}

uint64_t sub_18BAEBBB8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return sub_18BAEB5CC(a1, a2, v2);
}

uint64_t sub_18BAEBC64(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B987B10;

  return v8(a1, v5);
}

uint64_t sub_18BAEBD68(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18BAEBC64(a1, a2, v6);
}

uint64_t sub_18BAEBE30(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B987B10;

  return sub_18BAEBC64(a1, a2, v6);
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x18CFFEEE0);
  }

  return result;
}

uint64_t sub_18BAEBF48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BAEBFB8(unint64_t *a1, uint64_t *a2)
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

id sub_18BAEC014()
{
  v1 = OBJC_IVAR___SFTabOverviewNavigationBarTitleView____lazy_storage___textFieldLeadingConstraint;
  v2 = *(v0 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView____lazy_storage___textFieldLeadingConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView____lazy_storage___textFieldLeadingConstraint);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField) leadingAnchor];
    v5 = [*(v0 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_contentView) leadingAnchor];
    v6 = [v4 constraintEqualToAnchor_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_18BAEC0E4(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration];
  *v9 = 1;
  v9[2] = 0;
  *(v9 + 1) = 0;
  *(v9 + 2) = 0xE000000000000000;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 0u;
  *(v9 + 7) = 0;
  *(v9 + 8) = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_didBeginRetitling];
  *v10 = CGRectMake;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_didCancelRetitling];
  *v11 = CGRectMake;
  *(v11 + 1) = 0;
  v12 = &v4[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_retitleHandler];
  *v12 = CGRectMake;
  *(v12 + 1) = 0;
  v13 = OBJC_IVAR___SFTabOverviewNavigationBarTitleView_cancelRetitlingButton;
  type metadata accessor for BlurrableButton();
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = OBJC_IVAR___SFTabOverviewNavigationBarTitleView_contentView;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  UIEdgeInsetsMakeWithEdges();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (result)
  {
    v24 = result;
    v25 = &v4[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_metrics];
    UIEdgeInsetsMakeWithEdges();
    *v25 = v16;
    *(v25 + 1) = v18;
    *(v25 + 2) = v20;
    *(v25 + 3) = v22;
    *(v25 + 4) = v24;
    *(v25 + 5) = v26;
    *(v25 + 6) = v27;
    *(v25 + 7) = v28;
    *(v25 + 8) = v29;
    *(v25 + 72) = xmmword_18BC4C810;
    *(v25 + 88) = xmmword_18BC4C820;
    v30 = OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField;
    *&v4[v30] = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) init];
    *&v4[OBJC_IVAR___SFTabOverviewNavigationBarTitleView____lazy_storage___textFieldLeadingConstraint] = 0;
    v31 = OBJC_IVAR___SFTabOverviewNavigationBarTitleView_titleButton;
    *&v4[v31] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
    v33.receiver = v4;
    v33.super_class = type metadata accessor for TabOverviewNavigationBarTitleView();
    v32 = objc_msgSendSuper2(&v33, sel_initWithFrame_, a1, a2, a3, a4);
    sub_18BAEC5D0();

    return v32;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_18BAEC364(void *a1)
{
  v3 = &v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration];
  *v3 = 1;
  v3[2] = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0xE000000000000000;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 7) = 0;
  *(v3 + 8) = 0xE000000000000000;
  v4 = &v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_didBeginRetitling];
  *v4 = CGRectMake;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_didCancelRetitling];
  *v5 = CGRectMake;
  *(v5 + 1) = 0;
  v6 = &v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_retitleHandler];
  *v6 = CGRectMake;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR___SFTabOverviewNavigationBarTitleView_cancelRetitlingButton;
  type metadata accessor for BlurrableButton();
  *&v1[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR___SFTabOverviewNavigationBarTitleView_contentView;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  UIEdgeInsetsMakeWithEdges();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (result)
  {
    v18 = result;
    v19 = &v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_metrics];
    UIEdgeInsetsMakeWithEdges();
    *v19 = v10;
    *(v19 + 1) = v12;
    *(v19 + 2) = v14;
    *(v19 + 3) = v16;
    *(v19 + 4) = v18;
    *(v19 + 5) = v20;
    *(v19 + 6) = v21;
    *(v19 + 7) = v22;
    *(v19 + 8) = v23;
    *(v19 + 72) = xmmword_18BC4C810;
    *(v19 + 88) = xmmword_18BC4C820;
    v24 = OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField;
    *&v1[v24] = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) init];
    *&v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView____lazy_storage___textFieldLeadingConstraint] = 0;
    v25 = OBJC_IVAR___SFTabOverviewNavigationBarTitleView_titleButton;
    *&v1[v25] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
    v29.receiver = v1;
    v29.super_class = type metadata accessor for TabOverviewNavigationBarTitleView();
    v26 = objc_msgSendSuper2(&v29, sel_initWithCoder_, a1);
    v27 = v26;
    if (v26)
    {
      v28 = v26;
      sub_18BAEC5D0();
    }

    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18BAEC5D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D91C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v64 - v3;
  v5 = sub_18BC1F6C8();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_18BC21628();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730);
  *&v11 = MEMORY[0x1EEE9AC00](v10 - 8).n128_u64[0];
  v13 = &v64 - v12;
  v14 = *&v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_cancelRetitlingButton];
  [v14 addTarget:v1 action:sel_cancelRetitling forControlEvents:{0x2000, v11}];
  sub_18BC216D8();
  (*(v7 + 104))(v9, *MEMORY[0x1E69DC508], v6);
  sub_18BC21638();
  sub_18BC21788();
  v15 = [objc_opt_self() configurationWithScale_];
  sub_18BC215F8();
  v16 = sub_18BC21808();
  (*(*(v16 - 8) + 56))(v13, 0, 1, v16);
  sub_18BC21828();
  [v14 setPointerInteractionEnabled_];
  LODWORD(v17) = 1148846080;
  [v14 setContentCompressionResistancePriority:0 forAxis:v17];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setHideStandardTitle_];
  v18 = *&v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField];
  v19 = sub_18BC20B98();
  [v18 setAccessibilityIdentifier_];

  [v18 setAdjustsFontForContentSizeCategory_];
  [v18 setAutocapitalizationType_];
  [v18 setBorderStyle_];
  [v18 setClearButtonMode_];
  [v18 setDelegate_];
  v20 = *&v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_metrics + 32];
  v21 = &v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_metrics];
  v65 = &v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_metrics];
  [v18 setFont_];
  [v18 setReturnKeyType_];
  [v18 &selRef:0 showPromptForExtensionDisabledBecauseItDoesNotSupportThisVersionOfSafariWithMessage:? extensionIdentifier:? + 2];
  [v18 _setRoundedRectBackgroundCornerRadius_];
  v22 = objc_opt_self();
  v23 = [v22 tertiarySystemFillColor];
  [v18 _setBackgroundFillColor_];

  v24 = [v22 clearColor];
  [v18 _setBackgroundStrokeColor_];

  v25 = *&v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_titleButton];
  sub_18BAED0AC(v13);
  sub_18BC21828();
  v26 = sub_18BC20B98();
  [v25 setAccessibilityIdentifier_];

  sub_18B7B0AC0(0, &qword_1EA9D91C8);
  sub_18BC1F3C8();
  v27 = sub_18BC20028();
  (*(*(v27 - 8) + 56))(v4, 1, 1, v27);
  v28 = sub_18BC211E8();
  [v25 setHoverStyle_];

  [v25 setPointerInteractionEnabled_];
  [v25 setShowsMenuAsPrimaryAction_];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  v29 = *&v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_contentView];
  [v1 addSubview_];
  [v29 addSubview_];
  [v29 addSubview_];
  [v29 addSubview_];
  v64 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_18BC4B720;
  v31 = [v25 leadingAnchor];
  v32 = [v29 &selRef_initWithRow_itemRange_ + 1];
  v33 = [v31 constraintEqualToAnchor_];

  *(v30 + 32) = v33;
  v34 = [v25 trailingAnchor];
  v35 = [v29 &selRef_stringByAppendingPathExtension_ + 4];
  v36 = [v34 constraintLessThanOrEqualToAnchor_];

  *(v30 + 40) = v36;
  v37 = [v25 centerYAnchor];
  v38 = [v29 centerYAnchor];
  v39 = [v37 constraintEqualToAnchor_];

  *(v30 + 48) = v39;
  *(v30 + 56) = sub_18BAEC014();
  v40 = [v18 centerYAnchor];
  v41 = [v29 centerYAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  *(v30 + 64) = v42;
  v43 = [v18 widthAnchor];
  v44 = v65;
  v45 = [v43 constraintEqualToConstant_];

  LODWORD(v46) = 1144750080;
  [v45 setPriority_];
  *(v30 + 72) = v45;
  v47 = [v14 leadingAnchor];
  v48 = [v18 trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:v44[11]];

  *(v30 + 80) = v49;
  v50 = [v14 centerYAnchor];
  v51 = [v29 centerYAnchor];
  v52 = [v50 constraintEqualToAnchor_];

  *(v30 + 88) = v52;
  v53 = [v14 trailingAnchor];
  v54 = [v29 trailingAnchor];
  v55 = [v53 constraintLessThanOrEqualToAnchor_];

  *(v30 + 96) = v55;
  sub_18B7B0AC0(0, &qword_1EA9D4700);
  v56 = sub_18BC20D88();

  [v64 activateConstraints_];

  v57 = swift_allocObject();
  *(v57 + 16) = v1;
  v58 = objc_opt_self();
  v59 = swift_allocObject();
  *(v59 + 16) = sub_18BAEF4D4;
  *(v59 + 24) = v57;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_18B7D1EC4;
  *(v60 + 24) = v59;
  aBlock[4] = sub_18B7D1E94;
  aBlock[5] = v60;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B7E3BF4;
  aBlock[3] = &block_descriptor_64_1;
  v61 = _Block_copy(aBlock);
  v62 = v1;
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v58 performWithoutAnimation_];
  _Block_release(v61);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18BAED0AC@<X0>(uint64_t a1@<X8>)
{
  sub_18BC21798();
  v2 = objc_opt_self();
  v3 = [v2 labelColor];
  sub_18BC21708();
  sub_18BC21678();
  v4 = sub_18BC20B98();
  v5 = [objc_opt_self() systemImageNamed_];

  sub_18BC21788();
  sub_18BC21648();
  sub_18BC21698();
  v6 = *MEMORY[0x1E69DDD40];
  v7 = objc_opt_self();
  v8 = [v7 configurationWithTextStyle:v6 scale:2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18BC41E60;
  *(v9 + 32) = [v2 secondaryLabelColor];
  *(v9 + 40) = [v2 secondarySystemFillColor];
  sub_18B7B0AC0(0, &unk_1EA9D91D0);
  v10 = sub_18BC20D88();

  v11 = [v7 configurationWithPaletteColors_];

  v12 = [v8 configurationByApplyingConfiguration_];
  sub_18BC215F8();
  sub_18BC216E8();
  v13 = sub_18BC21808();
  v14 = *(*(v13 - 8) + 56);

  return v14(a1, 0, 1, v13);
}

uint64_t sub_18BAED30C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_18BC1E7F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_18BC1E758();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  sub_18BC1E748();
  v15 = v2[6];
  if (v15)
  {
    v38 = v5;
    v17 = v2[3];
    v16 = v2[4];
    v18 = v2[5];
    if (v17)
    {
      v36 = a1;
      v34 = *MEMORY[0x1E69DDD40];
      v19 = v16;
      v20 = objc_opt_self();
      v35 = v18;
      v21 = v20;
      v37 = v19;
      sub_18B82B844(v17, v19, v35, v15);
      v22 = v17;
      v33 = v22;
      v34 = [v21 configurationWithTextStyle:v34 scale:1];
      v23 = [v22 imageWithConfiguration_];
      v24 = [objc_opt_self() textAttachmentWithImage_];

      v25 = objc_opt_self();
      v26 = v24;
      v27 = [v25 attributedStringWithAttachment_];
      sub_18BC1E788();

      sub_18BC1E6E8();
      sub_18BC1E6F8();
      v28 = *(v6 + 8);
      v29 = v8;
      v30 = v38;
      v28(v29, v38);
      v28(v11, v30);
      sub_18BC1E718();

      v5 = v30;
      v31 = v33;

      v28(v14, v5);
      v18 = v35;
    }

    else
    {
      v37 = v16;
      sub_18BC1E3F8();
      v31 = 0;
      v5 = v38;
    }

    v39 = v18;
    v40 = v15;
    sub_18BC1E3F8();
    MEMORY[0x18CFFC150](0x209480E220, 0xA500000000000000);
    sub_18BC1E7E8();
    sub_18BC1E768();
    sub_18BC1E718();

    (*(v6 + 8))(v14, v5);
  }

  sub_18BC1E3F8();
  sub_18BC1E7E8();
  sub_18BC1E768();
  sub_18BC1E718();
  return (*(v6 + 8))(v14, v5);
}

uint64_t sub_18BAED6E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_18BAEF0E0(v7, v9) & 1;
}

uint64_t sub_18BAED744(uint64_t a1)
{
  v2 = v1;
  v86 = a1;
  v81 = sub_18BC1E708();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52F8);
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v72 = &v69 - v4;
  v83 = sub_18BC1E7F8();
  v78 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v69 - v8;
  v76 = sub_18BC1E758();
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v82 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5300);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v69 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v69 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v69 - v20;
  v22 = *&v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 16];
  v99 = *&v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration];
  v23 = *&v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 32];
  v24 = *&v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 48];
  v100 = v22;
  v101 = v23;
  v102 = v24;
  v25 = *&v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField];
  v103 = *&v2[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 64];
  v26 = BYTE1(v99) != 0;
  v85 = BYTE1(v99);
  v27 = BYTE1(v99) > 1u;
  sub_18B9EA6E8(&v99, &v93);
  [v25 setEnablesReturnKeyAutomatically_];
  v28 = BYTE2(v99);
  v84 = v26 | BYTE2(v99);
  if (v84)
  {
    sub_18BC1E3F8();
    v29 = sub_18BC20B98();

    [v25 setPlaceholder_];

    v30 = v86;
    if ((v28 & 1) == 0 || *(v86 + 16) && (*(v86 + 2) & 1) == 0)
    {
      sub_18BC1E3F8();
      v31 = sub_18BC20B98();

      [v25 setText_];
    }

    v32 = v2;
    if (v85)
    {
      sub_18BC21818();
      v33 = sub_18BC21808();
      if ((*(*(v33 - 8) + 48))(v15, 1, v33))
      {
        sub_18B9A2744(v15, v18);
        sub_18BC21828();
        sub_18B9A27B4(v15);
      }

      else
      {
        sub_18B99F6AC(v85);
        sub_18BC21788();
        sub_18BC21828();
      }
    }
  }

  else
  {
    v34 = *&v2[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_titleButton];
    sub_18BC21818();
    v35 = sub_18BC21808();
    v32 = v2;
    if ((*(*(v35 - 8) + 48))(v21, 1, v35))
    {
      sub_18B9A2744(v21, v18);
      sub_18BC21828();
      sub_18B9A27B4(v21);
    }

    else
    {
      sub_18BAED30C(v82);
      sub_18BC1E7E8();
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v69 - 2) = v37;
      swift_getKeyPath();
      sub_18B9EA798();
      v38 = v72;
      sub_18BC1E7C8();

      v70 = *(v78 + 1);
      v70(v6, v83);
      v93 = *&v32[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_metrics + 32];
      v71 = v34;
      v39 = v73;
      v40 = v77;
      sub_18BC1E7D8();
      (*(v75 + 8))(v38, v40);
      v41 = v80;
      v42 = v79;
      v43 = v81;
      (*(v80 + 104))(v79, *MEMORY[0x1E69686E8], v81);
      sub_18BAAD724();
      v44 = v76;
      v78 = v32;
      v45 = v12;
      v46 = v82;
      sub_18BC1E908();
      (*(v41 + 8))(v42, v43);
      v70(v39, v83);
      v47 = v74;
      (*(v74 + 8))(v46, v44);
      (*(v47 + 56))(v45, 0, 1, v44);
      v32 = v78;
      sub_18BC216C8();
      sub_18BC21828();
    }

    v30 = v86;
  }

  v48 = *(v30 + 16);
  if (v48 && (v49 = *(v30 + 1), (*(v30 + 2) & 1 | (*(v30 + 1) != 0)) == (v84 & 1)))
  {
    v56 = v32;
    v59 = &selRef__adjustedActiveItemFrame_pinActiveItem_squishActiveItem_centerExpandedItem_;
  }

  else
  {
    type metadata accessor for AnimationSettings();
    inited = swift_initStaticObject();
    v51 = swift_allocObject();
    *(v51 + 16) = v32;
    v52 = v101;
    *(v51 + 40) = v100;
    *(v51 + 56) = v52;
    *(v51 + 72) = v102;
    *(v51 + 88) = v103;
    *(v51 + 24) = v99;
    v53 = objc_opt_self();
    v54 = swift_allocObject();
    v54[2] = inited;
    v54[3] = sub_18BAEF3D4;
    v54[4] = v51;
    v91 = sub_18B7D80AC;
    v92 = v54;
    aBlock = MEMORY[0x1E69E9820];
    v88 = 1107296256;
    v89 = sub_18B7B0DB0;
    v90 = &block_descriptor_44;
    v55 = _Block_copy(&aBlock);
    sub_18B9EA6E8(&v99, &v93);
    v56 = v32;
    v57 = v32;
    sub_18BC1E1A8();

    v97 = CGRectMake;
    v98 = 0;
    v93 = MEMORY[0x1E69E9820];
    v94 = 1107296256;
    v95 = sub_18B8043A0;
    v96 = &block_descriptor_36_0;
    v58 = _Block_copy(&v93);

    v59 = &selRef__adjustedActiveItemFrame_pinActiveItem_squishActiveItem_centerExpandedItem_;
    [v53 _animateUsingSpringBehavior_tracking_animations_completion_];
    _Block_release(v58);
    _Block_release(v55);

    if (!v48)
    {
      goto LABEL_20;
    }

    v49 = *(v86 + 1);
  }

  if ((v85 != 0) != (v49 == 0))
  {
    return sub_18B9EA744(&v99);
  }

LABEL_20:
  type metadata accessor for AnimationSettings();
  v61 = swift_initStaticObject();
  v62 = swift_allocObject();
  *(v62 + 16) = v56;
  v63 = v101;
  *(v62 + 40) = v100;
  *(v62 + 56) = v63;
  *(v62 + 72) = v102;
  *(v62 + 88) = v103;
  *(v62 + 24) = v99;
  v64 = objc_opt_self();
  v65 = swift_allocObject();
  v65[2] = v61;
  v65[3] = sub_18BAEF4C8;
  v65[4] = v62;
  v91 = sub_18B7E767C;
  v92 = v65;
  aBlock = MEMORY[0x1E69E9820];
  v88 = 1107296256;
  v89 = sub_18B7B0DB0;
  v90 = &block_descriptor_46_1;
  v66 = _Block_copy(&aBlock);
  sub_18B9EA6E8(&v99, &v93);
  v67 = v56;
  sub_18BC1E1A8();

  v97 = CGRectMake;
  v98 = 0;
  v93 = MEMORY[0x1E69E9820];
  v94 = 1107296256;
  v95 = sub_18B8043A0;
  v96 = &block_descriptor_49_0;
  v68 = _Block_copy(&v93);

  [v64 v59[8]];
  _Block_release(v68);
  _Block_release(v66);
  sub_18B9EA744(&v99);
}

id sub_18BAEE39C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_cancelRetitlingButton);
  if (*(a2 + 1))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  if (*(a2 + 1))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 3.0;
  }

  if (*(a2 + 1))
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.8;
  }

  [*(a1 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_cancelRetitlingButton) setAlpha_];
  v6 = sub_18BC0F2C4();
  [v6 setValue_];

  CGAffineTransformMakeScale(&v8, v5, v5);
  return [v2 setTransform_];
}

id sub_18BAEE4BC()
{
  v1 = v0;
  v2 = [v0 overlays];
  v3 = MEMORY[0x1E695F050];
  if (!v2 || (v4 = v2, sub_18BC214B8(), v6 = v36, v5 = v37, v8 = v38, v7 = v39, v4, (v40 & 1) != 0))
  {
    v6 = *v3;
    v5 = v3[1];
    v8 = v3[2];
    v7 = v3[3];
  }

  v9 = [v1 overlays];
  if (!v9 || (v10 = v9, sub_18BC214C8(), v11 = v41, v12 = v42, v13 = v43, v14 = v44, v10, (v45 & 1) != 0))
  {
    v11 = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v14 = v3[3];
  }

  v15 = [v1 effectiveUserInterfaceLayoutDirection];
  v16 = [v1 effectiveUserInterfaceLayoutDirection];
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  if (v16)
  {
    v17 = v6;
    v18 = v5;
    v19 = v8;
    v20 = v7;
  }

  if (v15)
  {
    v7 = v14;
    v8 = v13;
    v5 = v12;
    v6 = v11;
  }

  v21 = v17;
  v47.origin.x = v6;
  v22 = v18;
  v47.origin.y = v5;
  v23 = v19;
  v47.size.width = v8;
  v24 = v20;
  v47.size.height = v7;
  CGRectIsNull(v47);
  v48.origin.x = v21;
  v48.origin.y = v22;
  v48.size.width = v23;
  v48.size.height = v24;
  CGRectIsNull(v48);
  v49.origin.x = v6;
  v49.origin.y = v5;
  v49.size.width = v8;
  v49.size.height = v7;
  CGRectGetMaxX(v49);
  [v1 bounds];
  CGRectGetWidth(v50);
  v51.origin.x = v21;
  v51.origin.y = v22;
  v51.size.width = v23;
  v51.size.height = v24;
  CGRectGetMinX(v51);
  UIEdgeInsetsAdd();
  UIEdgeInsetsReplace();
  [v1 safeAreaInsets];
  UIEdgeInsetsMax();
  UIEdgeInsetsMax();
  v26 = v25;
  v28 = v27;
  v29 = *&v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_contentView];
  [v1 bounds];
  v34 = UIEdgeInsetsInsetRect(v30, v31, v32, v33, v26, v28);

  return [v29 setFrame_];
}

void sub_18BAEE7F4()
{
  [*&v0[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField] textRectForBounds_];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  Height = v7;
  if ([v0 effectiveUserInterfaceLayoutDirection] == 1)
  {
    v19.size.width = 100.0;
    v19.size.height = 32.0;
    v19.origin.x = 0.0;
    v19.origin.y = 0.0;
    MaxX = CGRectGetMaxX(v19);
    v20.origin.x = v2;
    v20.origin.y = v4;
    v20.size.width = v6;
    v20.size.height = Height;
    v10 = MaxX - CGRectGetMaxX(v20);
    v21.origin.x = v2;
    v21.origin.y = v4;
    v21.size.width = v6;
    v21.size.height = Height;
    MinY = CGRectGetMinY(v21);
    v22.origin.x = v2;
    v22.origin.y = v4;
    v22.size.width = v6;
    v22.size.height = Height;
    Width = CGRectGetWidth(v22);
    v23.origin.x = v2;
    v23.origin.y = v4;
    v23.size.width = v6;
    v23.size.height = Height;
    Height = CGRectGetHeight(v23);
    v2 = v10;
    v4 = MinY;
    v6 = Width;
  }

  v24.origin.x = v2;
  v24.origin.y = v4;
  v24.size.width = v6;
  v24.size.height = Height;
  v13 = -CGRectGetMinX(v24);
  v14 = sub_18BAEC014();
  [v14 constant];
  v16 = v15;

  if (v16 != v13)
  {
    v17 = *&v0[OBJC_IVAR___SFTabOverviewNavigationBarTitleView____lazy_storage___textFieldLeadingConstraint];

    [v17 setConstant_];
  }
}

void sub_18BAEE994()
{
  v1 = v0 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration;
  if (*(v0 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 2) == 1)
  {
    v2 = *(v1 + 16);
    v7[0] = *v1;
    v7[1] = v2;
    v3 = *(v1 + 48);
    v7[2] = *(v1 + 32);
    v7[3] = v3;
    v8 = *(v1 + 64);
    v9 = v7[0];
    v10 = 0;
    *&v14[13] = v8;
    *v14 = *(v1 + 51);
    v13 = *(v1 + 35);
    v12 = *(v1 + 19);
    v11 = *(v1 + 3);
    sub_18B9EA6E8(v7, v6);
    sub_18BAEF2DC(&v9);
    sub_18B9EA744(&v9);
    [*(v0 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField) resignFirstResponder];
    v4 = *(v0 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_didCancelRetitling);
    v5 = sub_18BC1E1A8();
    v4(v5);
  }
}

void sub_18BAEEAC8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ((*(Strong + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 2) & 1) == 0)
    {
      v2 = OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField;
      [*(Strong + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField) becomeFirstResponder];
      [*&v1[v2] selectAll];
    }
  }
}

void *sub_18BAEEC2C(void *result)
{
  v2 = v1 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration;
  if (*(v1 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 2) == 1)
  {
    v3 = [result text];
    if (v3)
    {
      v4 = v3;
      v5 = sub_18BC20BD8();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0xE000000000000000;
    }

    v8 = *(v2 + 16);
    v12[0] = *v2;
    v12[1] = v8;
    v9 = *(v2 + 48);
    v12[2] = *(v2 + 32);
    v12[3] = v9;
    v13 = *(v2 + 64);
    v14 = v12[0];
    v15 = 0;
    *&v19[13] = v13;
    *v19 = *(v2 + 51);
    v18 = *(v2 + 35);
    v17 = *(v2 + 19);
    v16 = *(v2 + 3);
    sub_18B9EA6E8(v12, v11);
    sub_18BAEF2DC(&v14);
    sub_18B9EA744(&v14);
    v10 = *(v1 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_retitleHandler);
    sub_18BC1E1A8();
    v10(v5, v7);
  }

  return result;
}

id sub_18BAEEE00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabOverviewNavigationBarTitleView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18BAEEF70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18BAEEFB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12MobileSafari11TabSwitcherC7ProfileVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18BAEF038(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_18BAEF080(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_18BAEF0E0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2) & 1) != 0 || a1[1] != a2[1] || ((a1[2] ^ a2[2]))
  {
    return 0;
  }

  if (*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2))
  {
    v3 = a1;
    v4 = a2;
    v5 = sub_18BC21FD8();
    a2 = v4;
    v6 = v5;
    a1 = v3;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  v9 = *(a1 + 5);
  v10 = *(a1 + 6);
  v12 = *(a2 + 3);
  v11 = *(a2 + 4);
  v14 = *(a2 + 5);
  v13 = *(a2 + 6);
  if (v10)
  {
    if (v13)
    {
      v15 = a1;
      v16 = a2;
      sub_18B82B844(*(a2 + 3), *(a2 + 4), v14, v13);
      sub_18B82B844(v7, v8, v9, v10);
      v17 = sub_18BBDC17C(v7, v8, v9, v10, v12, v11, v14, v13);

      sub_18B7E9C58(v7, v8, v9, v10);
      a1 = v15;
      a2 = v16;
      if (v17)
      {
        goto LABEL_16;
      }

      return 0;
    }

LABEL_14:
    sub_18B82B844(*(a2 + 3), *(a2 + 4), v14, v13);
    sub_18B82B844(v7, v8, v9, v10);
    sub_18B7E9C58(v7, v8, v9, v10);
    sub_18B7E9C58(v12, v11, v14, v13);
    return 0;
  }

  if (v13)
  {
    goto LABEL_14;
  }

LABEL_16:
  if (*(a1 + 7) == *(a2 + 7) && *(a1 + 8) == *(a2 + 8))
  {
    return 1;
  }

  return sub_18BC21FD8();
}

uint64_t sub_18BAEF2DC(uint64_t a1)
{
  v2 = a1;
  v3 = v1 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration;
  v4 = *(v1 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 48);
  v17 = *(v1 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 32);
  v18 = v4;
  v19 = *(v1 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 64);
  v5 = *(v1 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 16);
  v16[0] = *(v1 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration);
  v16[1] = v5;
  v20[2] = v17;
  v20[3] = v4;
  v21 = v19;
  v20[0] = v16[0];
  v20[1] = v5;
  v23 = v19;
  v22[2] = v17;
  v22[3] = v4;
  v22[0] = v16[0];
  v22[1] = v5;
  v6 = *a1;
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 32) = v8;
  *(v3 + 48) = v9;
  *v3 = v6;
  *(v3 + 16) = v7;
  sub_18B9EA6E8(v16, v14);
  sub_18B9EA6E8(v2, v14);
  sub_18B9EA744(v22);
  v10 = *(v3 + 48);
  v14[2] = *(v3 + 32);
  v14[3] = v10;
  v15 = *(v3 + 64);
  v11 = *(v3 + 16);
  v14[0] = *v3;
  v14[1] = v11;
  sub_18B9EA6E8(v14, v13);
  LOBYTE(v2) = sub_18BAEF0E0(v14, v16);
  sub_18B9EA744(v14);
  if ((v2 & 1) == 0)
  {
    sub_18BAED744(v20);
  }

  return sub_18B9EA744(v16);
}

id sub_18BAEF3D4()
{
  v1 = *(v0 + 16);
  if (*(v0 + 26) & 1 | (*(v0 + 25) != 0))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  if (*(v0 + 26) & 1 | (*(v0 + 25) != 0))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  [*(v1 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField) setAlpha_];
  v4 = *(v1 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_titleButton);

  return [v4 setAlpha_];
}

uint64_t objectdestroyTm_2()
{

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18BAEF4D4()
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  return sub_18BAED744(v1);
}

uint64_t sub_18BAEF534(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), void (*a4)(_OWORD *, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v12 = *a1;
  v34 = *(a1 + 16);
  v35 = v10;
  v36[0] = v11;
  *(v36 + 9) = *(a1 + 57);
  v33 = v12;
  a3(&v37, a2);
  if (v37)
  {
    v27 = v37;
    v29 = v39;
    v30 = v40;
    v31 = v41;
    v32 = v42;
    v28 = v38;
    (*v5)(a2, &v27);
    sub_18B988BAC(&v37, &unk_1EA9D92A0);
  }

  if (*a1)
  {
    v19 = *a1;
    v21 = *(a1 + 24);
    v22 = *(a1 + 40);
    v23 = *(a1 + 56);
    v24 = *(a1 + 72);
    v20 = *(a1 + 8);
    v13 = *(v5 + 24);
    *&v18[9] = *(v36 + 9);
    v17[2] = v35;
    *v18 = v36[0];
    v17[0] = v33;
    v17[1] = v34;
    sub_18BA93A88(v17, v25);
    v13(a2, &v19);
    v25[2] = v35;
    v26[0] = v36[0];
    *(v26 + 9) = *(v36 + 9);
    v25[0] = v33;
    v25[1] = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v5 + 16);
    a4(v25, a2, isUniquelyReferenced_nonNull_native);
    sub_18B988BAC(a1, &unk_1EA9D92A0);
    *(v5 + 16) = v16;
  }

  return sub_18B7DFF64(a2, a5);
}

uint64_t sub_18BAEF6FC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v3);
  sub_18B7CA054(a1, v16 - v4, &unk_1EA9D92F0);
  *(v1 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_representedElement) = sub_18BC22058();
  swift_unknownObjectRelease();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
  [v1 setAlpha_];
  [v1 setCenter_];
  [v1 setBounds_];
  v6 = (a1 + v5[20]);
  v7 = v6[1];
  v16[0] = *v6;
  v16[1] = v7;
  v16[2] = v6[2];
  [v1 setTransform_];
  v8 = [v1 layer];
  [v8 setZPosition_];

  v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE0);
  v10 = _s7SectionVMa_1();
  v11 = _s4ItemVMa_2();
  v12 = sub_18B82AD34(&qword_1EA9D4EF0, _s7SectionVMa_1);
  v13 = sub_18B82AD34(&unk_1EA9D9310, _s4ItemVMa_2);
  v14 = sub_18B8103B0();
  return v9(a1, v10, v11, &type metadata for SFFluidTabOverviewSupplementary, v12, v13, v14);
}

uint64_t sub_18BAEF984()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return swift_weakAssign();
  }

  v2 = Strong;
  MEMORY[0x1EEE9AC00](Strong);
  v5[2] = v0;
  v5[3] = &off_1EE463558;
  swift_beginAccess();
  result = sub_18BB0B470(sub_18BB1092C, v5);
  v4 = *(*(v2 + 32) + 16);
  if (v4 >= result)
  {
    sub_18BB7A674(result, v4);
    swift_endAccess();

    return swift_weakAssign();
  }

  __break(1u);
  return result;
}

uint64_t sub_18BAEFA70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9300);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  v11 = *(*v0 + 176);
  swift_beginAccess();
  sub_18B7CA054(v0 + v11, v3, &unk_1EA9D9300);
  v12 = *(v5 + 48);
  if (v12(v3, 1, v4) == 1)
  {
    v13 = *(*v0 + 184);
    swift_beginAccess();
    sub_18B7CA054(v0 + v13, v10, &unk_1EA9D4F40);
    if (v12(v3, 1, v4) != 1)
    {
      sub_18B988BAC(v3, &unk_1EA9D9300);
    }
  }

  else
  {
    sub_18B7CF39C(v3, v10, &unk_1EA9D4F40);
  }

  v14 = *(*v0 + 152);
  swift_beginAccess();
  sub_18B7FD070(v10, v0 + v14, &unk_1EA9D4F40);
  result = swift_endAccess();
  v16 = v0[3];
  if (v16)
  {
    sub_18B7CA054(v0 + v14, v8, &unk_1EA9D4F40);
    v17 = v16;
    sub_18BAEF6FC(v8);

    return sub_18B988BAC(v8, &unk_1EA9D4F40);
  }

  return result;
}

void sub_18BAEFD44(char *a1, uint64_t a2)
{
  v4 = &a1[OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_reuseIdentifier];
  swift_beginAccess();
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_18BC1E3F8();
    if (Strong)
    {
      v8 = [a1 superview];
      if (!v8 || (v9 = v8, sub_18B7B0AC0(0, &qword_1EA9D46F0), v10 = Strong, v11 = sub_18BC215C8(), v9, v10, (v11 & 1) == 0))
      {
        [Strong addSubview_];
      }
    }

    [a1 setHidden_];
    swift_beginAccess();
    if (*(*(a2 + 24) + 16) && (sub_18B831970(v6, v5), (v12 & 1) != 0))
    {
      swift_endAccess();
      sub_18BC1E1A8();

      swift_beginAccess();
      sub_18BB5EC0C(&v13, a1);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      __break(1u);
    }
  }

  else
  {
    [a1 removeFromSuperview];
  }
}

void sub_18BAEFF0C(uint64_t a1)
{
  v56 = _s4ItemVMa();
  v2 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v50 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9268);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v48 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v48 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v48 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9298);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  v51 = a1;
  sub_18B7CA054(a1, &v48 - v17, &qword_1EA9D9298);
  v19 = type metadata accessor for TabSwitcher.BorrowedContentViewRegistration(0);
  v20 = *(*(v19 - 8) + 48);
  if (v20(v18, 1, v19) == 1)
  {
    sub_18B988BAC(v18, &qword_1EA9D9298);
    v21 = 0;
  }

  else
  {
    v21 = *&v18[*(v19 + 20)];
    sub_18B7DFF64(v18, type metadata accessor for TabSwitcher.BorrowedContentViewRegistration);
  }

  v22 = &v58[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentViewRegistration];
  swift_beginAccess();
  v23 = v20(v22, 1, v19);
  v55 = 0;
  v53 = v21;
  if (!v23)
  {
    v24 = *&v22[*(v19 + 20)];
    v55 = v24;
    if (v21)
    {
      sub_18B7B0AC0(0, &qword_1EA9D9228);
      v25 = v24;
      v26 = v53;
      v49 = v4;
      v27 = v26;
      v28 = sub_18BC215C8();

      v4 = v49;
      if (v28)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v29 = v24;
    }

    [v58 addChildViewController_];
  }

LABEL_10:
  v30 = 1;
  if (!v20(v22, 1, v19))
  {
    sub_18B7DF638(v22, v57, _s4ItemVMa);
    v30 = 0;
  }

  v31 = *(v2 + 56);
  v31(v57, v30, 1, v56);
  sub_18B7CA054(v51, v15, &qword_1EA9D9298);
  if (v20(v15, 1, v19) == 1)
  {
    sub_18B988BAC(v15, &qword_1EA9D9298);
    v32 = 1;
    v33 = v52;
    v34 = v54;
  }

  else
  {
    v34 = v54;
    sub_18B7DF638(v15, v54, _s4ItemVMa);
    sub_18B7DFF64(v15, type metadata accessor for TabSwitcher.BorrowedContentViewRegistration);
    v32 = 0;
    v33 = v52;
  }

  v35 = v56;
  v31(v34, v32, 1, v56);
  v36 = *(v4 + 48);
  v37 = v57;
  sub_18B7CA054(v57, v6, &qword_1EA9D7CD0);
  sub_18B7CA054(v34, &v6[v36], &qword_1EA9D7CD0);
  v38 = v34;
  v39 = *(v2 + 48);
  if (v39(v6, 1, v35) == 1)
  {
    sub_18B988BAC(v38, &qword_1EA9D7CD0);
    sub_18B988BAC(v37, &qword_1EA9D7CD0);
    if (v39(&v6[v36], 1, v35) == 1)
    {
      sub_18B988BAC(v6, &qword_1EA9D7CD0);
      v40 = v53;
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  sub_18B7CA054(v6, v33, &qword_1EA9D7CD0);
  if (v39(&v6[v36], 1, v35) == 1)
  {
    sub_18B988BAC(v54, &qword_1EA9D7CD0);
    sub_18B988BAC(v37, &qword_1EA9D7CD0);
    sub_18B7DFF64(v33, _s4ItemVMa);
LABEL_20:
    sub_18B988BAC(v6, &qword_1EA9D9268);
    v40 = v53;
LABEL_21:
    v41 = v58;
    sub_18BB0C608();
    v42 = *&v41[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_thumbnailMatchMoveViewOwningBorrowedContent];
    *&v41[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_thumbnailMatchMoveViewOwningBorrowedContent] = 0;

    sub_18BAF309C();
    goto LABEL_22;
  }

  v45 = &v6[v36];
  v46 = v50;
  sub_18B82FE24(v45, v50, _s4ItemVMa);
  updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
  sub_18B7DFF64(v46, _s4ItemVMa);
  sub_18B988BAC(v54, &qword_1EA9D7CD0);
  sub_18B988BAC(v37, &qword_1EA9D7CD0);
  sub_18B7DFF64(v33, _s4ItemVMa);
  sub_18B988BAC(v6, &qword_1EA9D7CD0);
  v40 = v53;
  if ((updated & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_22:
  sub_18BAF309C();
  v43 = v55;
  if (v55)
  {
    if (!v40 || (sub_18B7B0AC0(0, &qword_1EA9D9228), v40 = v40, v43 = v43, v44 = sub_18BC215C8(), v43, v40, (v44 & 1) == 0))
    {
      [v43 didMoveToParentViewController_];
    }
  }
}

double sub_18BAF06E0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *(a1 + 57) = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

id sub_18BAF0728()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4520);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  result = [objc_opt_self() areAnimationsEnabled];
  if (result)
  {
    result = UIAccessibilityIsReduceMotionEnabled();
    if (result)
    {
      if (*(v0 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentPresentationTransition))
      {
        return 0;
      }

      else
      {
        v5 = sub_18B7C07CC();
        v6 = *&v5[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

        v7 = sub_18B7EBEFC();
        v8 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState;
        swift_beginAccess();
        sub_18B7CA054(v7 + v8, v3, &qword_1EA9D4520);

        v9 = _s17PinchGestureStateVMa(0);
        v10 = (*(*(v9 - 8) + 48))(v3, 1, v9) == 1;
        sub_18B988BAC(v3, &qword_1EA9D4520);
        return v10;
      }
    }
  }

  return result;
}

void sub_18BAF08E4(_BYTE *a1, void *a2)
{
  v4 = _s4ItemVMa_4();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_relinquishBorrowedCapsuleView);
    v9 = Strong;
    sub_18BC1E1A8();

    v8(*a2);
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = sub_18B7C07CC();

    v13 = *&v12[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];
    LOBYTE(v12) = *a1;
    v14 = _s4ItemVMa();
    v15 = v14[7];
    v16 = v4[5];
    v17 = sub_18BC1EC08();
    (*(*(v17 - 8) + 16))(&v6[v16], &a1[v15], v17);
    v18 = a1[v14[8]];
    v19 = a1[v14[11]];
    v20 = *&a1[v14[12]];
    v21 = v14[15];
    v22 = *&a1[v14[14]];
    *v6 = v12;
    v6[v4[6]] = v18;
    v6[v4[7]] = v19;
    *&v6[v4[8]] = v20;
    v23 = *&a1[v21];
    v24 = *&a1[v21 + 8];
    *&v6[v4[9]] = v22;
    v25 = &v6[v4[10]];
    *v25 = v23;
    v25[1] = v24;
    v26 = &v13[qword_1EA9F8520];
    swift_beginAccess();
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    sub_18BB59DF8(v6, v28);
    v29[0] = v28[0];
    v29[1] = v28[1];
    v29[2] = v28[2];
    v30[0] = v28[3];
    *(v30 + 9) = *(&v28[3] + 9);
    if (*&v28[0])
    {
      v31 = *&v29[0];
      v33 = *(&v28[1] + 8);
      v34 = *(&v28[2] + 8);
      v35 = *(&v28[3] + 8);
      v36 = BYTE8(v28[4]);
      v32 = *(v28 + 8);
      (*v26)(v6, &v31);
      sub_18B988BAC(v29, &unk_1EA9D92A0);
    }

    sub_18B7DFF64(v6, _s4ItemVMa_4);
    swift_endAccess();
  }
}

uint64_t sub_18BAF0BBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9298);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_18B7CA054(a1, v7, &qword_1EA9D9298);
    v10 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentViewRegistration;
    swift_beginAccess();
    sub_18B7CA054(v9 + v10, v4, &qword_1EA9D9298);
    swift_beginAccess();
    sub_18B7EC8D0(v7, v9 + v10, &qword_1EA9D9298);
    swift_endAccess();
    sub_18BAEFF0C(v4);

    sub_18B988BAC(v4, &qword_1EA9D9298);
    return sub_18B988BAC(v7, &qword_1EA9D9298);
  }

  return result;
}

uint64_t sub_18BAF0D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
  v10 = _s4ItemVMa();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_6;
  }

  v15 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  v16 = Strong;
  swift_beginAccess();
  sub_18B7DF638(v16 + v15, v6, _s7ContentVMa);

  MEMORY[0x1EEE9AC00](v17);
  *(&v23 - 2) = a1;
  sub_18BB17290(sub_18B9EB468, (&v23 - 4), v9);
  sub_18B7DFF64(v6, _s7ContentVMa);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
LABEL_6:
    sub_18B988BAC(v9, &qword_1EA9D7CD0);
    goto LABEL_7;
  }

  sub_18B82FE24(v9, v13, _s4ItemVMa);
  swift_beginAccess();
  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = *(v18 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentViewProvider);
    v20 = v18;
    sub_18BC1E1A8();

    v19(v13);

    return sub_18B7DFF64(v13, _s4ItemVMa);
  }

  sub_18B7DFF64(v13, _s4ItemVMa);
LABEL_7:
  v22 = type metadata accessor for TabSwitcher.BorrowedContentViewRegistration(0);
  return (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
}

uint64_t sub_18BAF10B4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_relinquishBorrowedContentViewRegistration);
    v4 = result;
    sub_18BC1E1A8();

    v3(a1);
  }

  return result;
}

void sub_18BAF113C(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = 3;
    if (a1)
    {
      v4 = 1;
    }

    v5 = *(Strong + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState);
    *&v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState] = v4;
    if (v4 != v5)
    {
      sub_18BAFE7A0(v5);
    }
  }
}

void sub_18BAF11B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_18BAF29C4();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    v4 = sub_18B7C07CC();

    v5 = OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_didDeferContentUpdate;
    if (v4[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_didDeferContentUpdate] == 1)
    {
      sub_18B7ED1D8();
      v4[v5] = 0;
    }
  }
}

uint64_t sub_18BAF1260(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = sub_18BB001AC(a1);

  return v4;
}

void sub_18BAF12CC(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_18B7C5C10();

    v5 = 0.011;
    if (a1)
    {
      v5 = 0.8;
    }

    v6 = &v4[OBJC_IVAR___SFTabOverviewDisplayItem_state];
    v7 = *&v4[OBJC_IVAR___SFTabOverviewDisplayItem_state];
    v8 = v4[OBJC_IVAR___SFTabOverviewDisplayItem_state + 8];
    v9 = v4[OBJC_IVAR___SFTabOverviewDisplayItem_state + 9];
    v10 = *&v4[OBJC_IVAR___SFTabOverviewDisplayItem_state + 16];
    v11 = v4[OBJC_IVAR___SFTabOverviewDisplayItem_state + 24];
    v12 = *&v4[OBJC_IVAR___SFTabOverviewDisplayItem_state + 32];
    *v6 = 18.0;
    *(v6 + 8) = 0;
    *(v6 + 9) = a1 & 1;
    v6[2] = v5;
    *(v6 + 24) = 1;
    v6[4] = 0.9;
    v13 = 256;
    if (!v9)
    {
      v13 = 0;
    }

    v14[0] = v7;
    v14[1] = v13 | v8;
    v14[2] = v10;
    v14[3] = v11;
    v14[4] = v12;
    sub_18B9E2784(v14);
  }
}

uint64_t sub_18BAF13C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *, char *))
{
  v4 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v19 - v8;
  v10 = _s4ItemVMa();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
    swift_beginAccess();
    sub_18B7DF638(v15 + v16, v6, _s7ContentVMa);
    v17 = _s4ItemVMa_4();
    MEMORY[0x1EEE9AC00](v17);
    v19[-2] = v18;
    sub_18BB17290(a3, &v19[-4], v9);
    sub_18B7DFF64(v6, _s7ContentVMa);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {

      return sub_18B988BAC(v9, &qword_1EA9D7CD0);
    }

    else
    {
      sub_18B82FE24(v9, v13, _s4ItemVMa);
      sub_18BB05234(v13);

      return sub_18B7DFF64(v13, _s4ItemVMa);
    }
  }

  return result;
}

uint64_t sub_18BAF1674(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_18B7C5C10();
    sub_18B7C9974();
    v6 = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18BC3E3E0;
    *(inited + 32) = sub_18B7CC278();

    v12 = a1;
    MEMORY[0x1EEE9AC00](v8);
    v11[2] = &v12;
    v9 = sub_18B9B8B10(sub_18BB11758, v11, inited);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_18BAF17B4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_18B7C5C10();
    sub_18B7C9974();
    v6 = v5;

    v7 = sub_18B7CEA3C();
    if (v7)
    {
      v8 = v7;
      v9 = off_1EFF1E068;
      type metadata accessor for TabOverview();
      v10 = v9();

      v6 = v8;
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    v15 = a1;
    MEMORY[0x1EEE9AC00](v12);
    v14[2] = &v15;
    v11 = sub_18B9B8B10(sub_18BB115E4, v14, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void sub_18BAF18FC(char a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_18BAFBEC4(a1 & 1, a2);
  }
}

void sub_18BAF1968(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_18BAFC1FC(v14, a2, a3);
    v12 = v14[1];
    v13 = v14[0];
    v8 = v15;
    v9 = v16;

    v11 = v12;
    v10 = v13;
  }

  else
  {
    v8 = 0;
    v10 = 0uLL;
    v9 = 2;
    v11 = 0uLL;
  }

  *a1 = v10;
  *(a1 + 16) = v11;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
}

uint64_t sub_18BAF1A18(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v3 = Strong;
  v4 = sub_18B7C5C10();

  v5 = *&v4[OBJC_IVAR___SFTabOverviewDisplayItem_state];
  v6 = v4[OBJC_IVAR___SFTabOverviewDisplayItem_state + 8];
  v7 = v4[OBJC_IVAR___SFTabOverviewDisplayItem_state + 9];
  v8 = *&v4[OBJC_IVAR___SFTabOverviewDisplayItem_state + 16];
  v9 = v4[OBJC_IVAR___SFTabOverviewDisplayItem_state + 24];
  v10 = *&v4[OBJC_IVAR___SFTabOverviewDisplayItem_state + 32];

  if (a1 < 1.0)
  {
    return 1;
  }

  else
  {
    return (v10 == 1.0) & ~((v5 != 0.0) | v6 | ~v7 | (v8 != 1.0) | v9);
  }
}

void sub_18BAF1AF8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&Strong[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentPresentationTransition] = 0;
  }

  swift_beginAccess();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (v1)
  {
    v2 = v1;
    v3 = *(v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState);
    *&v2[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState] = 1;
    if (v3 != 1)
    {
      sub_18BAFE7A0(v3);
    }
  }
}

void sub_18BAF1BA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_needsResetLayoutAfterMovingToWindow) == 1)
    {
      v1 = Strong;
      v2 = [Strong view];
      if (!v2)
      {
        __break(1u);
        return;
      }

      v3 = v2;
      [v2 layoutIfNeeded];

      Strong = v1;
    }
  }
}

void sub_18BAF1C3C(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    a4(a1, a2 & 1);
  }
}

uint64_t sub_18BAF1CB4(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = *&Strong[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_reducedMotionTransitionObserver];
  sub_18BC1E1A8();

  v3(a1);
}

uint64_t sub_18BAF1D28(char *a1, uint64_t a2)
{
  v5 = _s4ItemVMa();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s4ItemVMa_4();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a2 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration);
  if (!*(a2 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration))
  {
    v44 = v7;
    v45 = v2;
    v46 = a2;
    v12 = sub_18B7C07CC();
    v13 = *&v12[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

    v14 = *a1;
    v15 = v5[7];
    v16 = v8[5];
    v17 = sub_18BC1EC08();
    (*(*(v17 - 8) + 16))(&v10[v16], &a1[v15], v17);
    v18 = a1[v5[8]];
    v19 = a1[v5[11]];
    v20 = *&a1[v5[12]];
    v21 = *&a1[v5[14]];
    v22 = &a1[v5[15]];
    *v10 = v14;
    v10[v8[6]] = v18;
    v10[v8[7]] = v19;
    *&v10[v8[8]] = v20;
    v23 = *v22;
    v24 = v22[1];
    *&v10[v8[9]] = v21;
    v25 = &v10[v8[10]];
    *v25 = v23;
    v25[1] = v24;
    v26 = &v13[qword_1EA9F8520];
    swift_beginAccess();
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    sub_18BB59DF8(v10, v62);
    v63 = v62[0];
    v64 = v62[1];
    v65 = v62[2];
    v66[0] = v62[3];
    *(v66 + 9) = *(&v62[3] + 9);
    if (*&v62[0])
    {
      *v67 = v63;
      *&v67[24] = *(&v62[1] + 8);
      *&v67[40] = *(&v62[2] + 8);
      *&v67[56] = *(&v62[3] + 8);
      v67[72] = BYTE8(v62[4]);
      *&v67[8] = *(v62 + 8);
      (*v26)(v10, v67);
      sub_18B7DFF64(v10, _s4ItemVMa_4);
      swift_endAccess();

      v52 = v65;
      v53[0] = v66[0];
      *(v53 + 9) = *(v66 + 9);
      v50 = v63;
      v51 = v64;
      sub_18BA93A88(&v50, &v58);
      sub_18BA18474();
      v27 = v11[3];
      v56 = v11[2];
      v57[0] = v27;
      *(v57 + 9) = *(v11 + 57);
      v28 = v11[1];
      v54 = *v11;
      v55 = v28;
      v29 = v66[0];
      v30 = v65;
      v31 = v66[0];
      v11[2] = v65;
      v11[3] = v29;
      *(v11 + 57) = *(v66 + 9);
      v32 = v64;
      v33 = v63;
      v34 = v64;
      *v11 = v63;
      v11[1] = v32;
      *(v61 + 9) = *(v66 + 9);
      v60 = v30;
      v61[0] = v31;
      v58 = v33;
      v59 = v34;
      sub_18BA93A88(&v58, v48);
      sub_18B988BAC(&v54, &unk_1EA9D92A0);
      sub_18BA181B8();
      sub_18B988BAC(&v63, &unk_1EA9D92A0);
      v35 = &v63;
    }

    else
    {
      sub_18B7DFF64(v10, _s4ItemVMa_4);
      swift_endAccess();

      v36 = *(v45 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedCapsuleViewProvider);
      sub_18BC1E1A8();
      v36(v67, a1);
      v60 = *&v67[32];
      v61[0] = *&v67[48];
      *(v61 + 9) = *&v67[57];
      v58 = *v67;
      v59 = *&v67[16];

      if (!*v67)
      {
        return 0;
      }

      v48[2] = v60;
      v49[0] = v61[0];
      *(v49 + 9) = *(v61 + 9);
      v48[0] = v58;
      v48[1] = v59;
      sub_18B7CA054(v67, &v54, &unk_1EA9D92A0);
      sub_18BA93A88(v48, &v54);
      sub_18BA18474();
      v37 = v11[3];
      v52 = v11[2];
      v53[0] = v37;
      *(v53 + 9) = *(v11 + 57);
      v38 = v11[1];
      v50 = *v11;
      v51 = v38;
      v39 = *&v67[48];
      v11[2] = *&v67[32];
      v11[3] = v39;
      *(v11 + 57) = *&v67[57];
      v40 = *&v67[16];
      *v11 = *v67;
      v11[1] = v40;
      *(v57 + 9) = *(v61 + 9);
      v56 = v60;
      v57[0] = v61[0];
      v54 = v58;
      v55 = v59;
      sub_18BA93A88(&v54, &v47);
      sub_18B988BAC(&v50, &unk_1EA9D92A0);
      sub_18BA181B8();
      sub_18B988BAC(v67, &unk_1EA9D92A0);
      v41 = v44;
      sub_18B7DF638(a1, v44, _s4ItemVMa);
      swift_beginAccess();
      sub_18BAEF534(v67, v41, sub_18BB59EEC, sub_18BAA76A0, _s4ItemVMa);
      swift_endAccess();
      v35 = v67;
    }

    sub_18B988BAC(v35, &unk_1EA9D92A0);
  }

  return 1;
}

void sub_18BAF228C(unsigned __int8 *a1)
{
  v3 = _s4ItemVMa();
  v4 = (v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s4ItemVMa_4();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v55 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v47 - v10;
  v59 = v1;
  v12 = sub_18B7C07CC(v9);
  v13 = *&v12[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

  v14 = *a1;
  v15 = v4[9];
  v16 = v6[5];
  v17 = sub_18BC1EC08();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v56 = v15;
  v53 = v19;
  v54 = v17;
  v52 = v18 + 16;
  (v19)(&v11[v16], &a1[v15]);
  v20 = a1[v4[10]];
  v21 = a1[v4[13]];
  v22 = *&a1[v4[14]];
  v23 = *&a1[v4[16]];
  v24 = &a1[v4[17]];
  v57 = v14;
  *v11 = v14;
  v25 = v6[6];
  v50 = v20;
  v11[v25] = v20;
  v26 = v6[7];
  v48 = v21;
  v11[v26] = v21;
  v27 = v6[8];
  v49 = v22;
  *&v11[v27] = v22;
  v28 = *v24;
  v29 = *(v24 + 1);
  *&v11[v6[9]] = v23;
  v30 = &v11[v6[10]];
  v47 = v28;
  *v30 = v28;
  v30[1] = v29;
  v31 = &v13[qword_1EA9F8520];
  swift_beginAccess();
  v32 = *(v31 + 2);
  v51 = v29;
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();

  if (*(v32 + 16) && (v33 = sub_18BB8B258(v11), (v34 & 1) != 0))
  {
    v35 = (*(v32 + 56) + 80 * v33);
    v69 = *v35;
    v37 = v35[2];
    v36 = v35[3];
    v38 = *(v35 + 57);
    v70 = v35[1];
    v71 = v37;
    *(v72 + 9) = v38;
    v72[0] = v36;
    sub_18BA93A88(&v69, &v65);
    sub_18B7DFF64(v11, _s4ItemVMa_4);

    sub_18BB11480(&v69);
  }

  else
  {

    sub_18B7DFF64(v11, _s4ItemVMa_4);
    v39 = v59;
    v40 = *(v59 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedCapsuleViewProvider);
    sub_18BC1E1A8();
    v40(&v69, a1);
    v67 = v71;
    v68[0] = v72[0];
    *(v68 + 9) = *(v72 + 9);
    v65 = v69;
    v66 = v70;

    if (v69)
    {
      v41 = v58;
      sub_18B7DF638(a1, v58, _s4ItemVMa);
      swift_beginAccess();
      v61[2] = v67;
      v62[0] = v68[0];
      *(v62 + 9) = *(v68 + 9);
      v61[0] = v65;
      v61[1] = v66;
      v63[2] = v67;
      v64[0] = v68[0];
      *(v64 + 9) = *(v68 + 9);
      v63[0] = v65;
      v63[1] = v66;
      sub_18BA93A88(v63, v60);
      sub_18BA93A88(v61, v60);
      sub_18BAEF534(&v69, v41, sub_18BB59EEC, sub_18BAA76A0, _s4ItemVMa);
      swift_endAccess();
      v42 = *(*(v39 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___quickTabSwitcherDisplayItem) + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher);
      v43 = v55;
      v53(&v55[v6[5]], &a1[v56], v54);
      *v43 = v57;
      v43[v6[6]] = v50;
      v43[v6[7]] = v48;
      *&v43[v6[8]] = v49;
      *&v43[v6[9]] = v23;
      v44 = &v43[v6[10]];
      v45 = v51;
      *v44 = v47;
      v44[1] = v45;
      swift_beginAccess();
      sub_18BC1E3F8();
      sub_18BC1E3F8();
      v46 = v42;
      sub_18BAEF534(&v69, v43, sub_18BB59DF8, sub_18BAA74F8, _s4ItemVMa_4);
      swift_endAccess();
      sub_18B988BAC(&v69, &unk_1EA9D92A0);
    }
  }
}

uint64_t sub_18BAF2800(uint64_t a1)
{
  v2 = v1;
  v4 = _s4ItemVMa();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationTransitionsByItem;
  swift_beginAccess();
  if (*(*(v2 + v7) + 16))
  {
    sub_18BC1E3F8();
    sub_18BB8B29C(a1);
    if (v8)
    {
      sub_18BC1E1A8();

      sub_18B99B2C4();
    }

    else
    {
    }
  }

  sub_18B7DF638(a1, v6, _s4ItemVMa);
  v9 = (v2 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedCapsuleRegistrations);
  swift_beginAccess();
  sub_18BB59EEC(v6, &v12);
  if (v12)
  {
    v18 = v12;
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v23 = v17;
    v19 = v13;
    (*v9)(v6, &v18);
    sub_18B988BAC(&v12, &unk_1EA9D92A0);
  }

  sub_18B7DFF64(v6, _s4ItemVMa);
  return swift_endAccess();
}

uint64_t sub_18BAF29C4()
{
  v1 = v0;
  v71 = _s4ItemVMa_4();
  v59 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v3 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v56 - v5;
  v65 = _s4ItemVMa();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v58 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v56 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v56 - v11;
  v12 = sub_18B7C07CC();
  v13 = *&v12[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

  v14 = &v13[qword_1EA9F8520];
  swift_beginAccess();
  v15 = *(v14 + 2);
  sub_18BC1E1A8();
  swift_bridgeObjectRetain_n();
  sub_18BC1E1A8();

  v16 = sub_18BBA0D50(v15);

  v17 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedCapsuleRegistrations);
  swift_beginAccess();
  v57 = v17;
  v56 = (v17 + 2);
  v18 = sub_18BC1E3F8();
  result = sub_18BBA0B04(v18);
  v20 = 0;
  v22 = result + 56;
  v21 = *(result + 56);
  v66 = result;
  v23 = 1 << *(result + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & v21;
  v26 = (v23 + 63) >> 6;
  v70 = v16 + 56;
  v72 = v16;
  v60 = v26;
  v61 = result + 56;
  v64 = v6;
  if ((v24 & v21) == 0)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    while (1)
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v29 = v62;
      sub_18B7DF638(*(v66 + 48) + *(v63 + 72) * (v28 | (v20 << 6)), v62, _s4ItemVMa);
      v30 = v69;
      sub_18B82FE24(v29, v69, _s4ItemVMa);
      v68 = *v30;
      v31 = v65;
      v32 = *(v65 + 28);
      v33 = v71;
      v34 = *(v71 + 20);
      v35 = sub_18BC1EC08();
      v36 = *(*(v35 - 8) + 16);
      v37 = v64;
      v67 = v35;
      v36(&v64[v34], &v30[v32]);
      v38 = v30[v31[8]];
      v39 = v30[v31[11]];
      v40 = *&v30[v31[12]];
      v41 = v31[14];
      v42 = v31[15];
      v43 = v37;
      v44 = *&v30[v41];
      *v37 = v68;
      v37[v33[6]] = v38;
      v37[v33[7]] = v39;
      *&v37[v33[8]] = v40;
      *&v37[v33[9]] = v44;
      v45 = *&v30[v42 + 8];
      v46 = (v43 + v33[10]);
      *v46 = *&v30[v42];
      v46[1] = v45;
      v47 = v72;
      if (*(v72 + 16))
      {
        break;
      }

      sub_18BC1E3F8();
      sub_18BC1E3F8();
LABEL_7:
      sub_18B7DFF64(v43, _s4ItemVMa_4);
      result = sub_18B7DFF64(v69, _s4ItemVMa);
      v26 = v60;
      v22 = v61;
      if (!v25)
      {
        goto LABEL_8;
      }
    }

    sub_18BC22158();
    sub_18B82AD34(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    sub_18BC20A78();
    v48 = sub_18BC221A8();
    v49 = -1 << *(v47 + 32);
    v50 = v48 & ~v49;
    if (((*(v70 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
    {
      goto LABEL_7;
    }

    v51 = ~v49;
    v52 = *(v59 + 72);
    while (1)
    {
      sub_18B7DF638(*(v72 + 48) + v52 * v50, v3, _s4ItemVMa_4);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B7DFF64(v3, _s4ItemVMa_4);
      if (updated)
      {
        break;
      }

      v50 = (v50 + 1) & v51;
      if (((*(v70 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    sub_18B7DFF64(v43, _s4ItemVMa_4);
    v54 = v58;
    sub_18B7DF638(v69, v58, _s4ItemVMa);
    v55 = v57;
    swift_beginAccess();
    sub_18BB59EEC(v54, v73);
    v74[0] = v73[0];
    v74[1] = v73[1];
    v74[2] = v73[2];
    v75[0] = v73[3];
    *(v75 + 9) = *(&v73[3] + 9);
    if (*&v73[0])
    {
      v76 = *&v73[0];
      v78 = *(&v73[1] + 8);
      v79 = *(&v73[2] + 8);
      v80 = *(&v73[3] + 8);
      v81 = BYTE8(v73[4]);
      v77 = *(v73 + 8);
      (*v55)(v54, &v76);
      sub_18B988BAC(v74, &unk_1EA9D92A0);
    }

    v26 = v60;
    v22 = v61;
    sub_18B7DFF64(v54, _s4ItemVMa);
    swift_endAccess();
    result = sub_18B7DFF64(v69, _s4ItemVMa);
  }

  while (v25);
LABEL_8:
  while (1)
  {
    v27 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v27 >= v26)
    {
    }

    v25 = *(v22 + 8 * v27);
    ++v20;
    if (v25)
    {
      v20 = v27;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

id sub_18BAF309C()
{
  v52 = _s4ItemVMa_4();
  MEMORY[0x1EEE9AC00](v52);
  v2 = &v51 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9360);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v51 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9298);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v51 - v9;
  v11 = type metadata accessor for TabSwitcher.BorrowedContentViewRegistration(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentViewRegistration;
  swift_beginAccess();
  sub_18B7CA054(v0 + v15, v10, &qword_1EA9D9298);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_18B988BAC(v10, &qword_1EA9D9298);
    v16 = sub_18B7C07CC();
    v17 = *&v16[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

    v18 = type metadata accessor for QuickTabSwitcher.BorrowedContentViewRegistration(0);
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    sub_18BBF3890();
    v19 = qword_1EA9F8570;
    swift_beginAccess();
    sub_18B7EC8D0(v7, v17 + v19, &unk_1EA9D9360);
    swift_endAccess();
    sub_18BBF3AC8();

    return sub_18B988BAC(v7, &unk_1EA9D9360);
  }

  sub_18B82FE24(v10, v14, type metadata accessor for TabSwitcher.BorrowedContentViewRegistration);
  v21 = *(v0 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_thumbnailMatchMoveViewOwningBorrowedContent);
  if (!v21)
  {
    v29 = sub_18B7C07CC();
    v30 = *&v29[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

    v31 = *v14;
    v32 = _s4ItemVMa();
    v33 = v32[7];
    v34 = v52;
    v35 = *(v52 + 20);
    v36 = sub_18BC1EC08();
    (*(*(v36 - 8) + 16))(&v2[v35], &v14[v33], v36);
    v37 = v14[v32[8]];
    v38 = v14[v32[11]];
    v39 = *&v14[v32[12]];
    v40 = v32[15];
    v41 = *&v14[v32[14]];
    v42 = &v14[v40];
    v44 = *&v14[v40];
    v43 = *(v42 + 1);
    *v2 = v31;
    v2[v34[6]] = v37;
    v2[v34[7]] = v38;
    *&v2[v34[8]] = v39;
    *&v2[v34[9]] = v41;
    v45 = &v2[v34[10]];
    *v45 = v44;
    v45[1] = v43;
    v46 = *&v14[*(v11 + 20)];
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    result = [v46 view];
    if (result)
    {
      v47 = result;
      v48 = v51;
      sub_18B82FE24(v2, v51, _s4ItemVMa_4);
      v49 = type metadata accessor for QuickTabSwitcher.BorrowedContentViewRegistration(0);
      *(v48 + *(v49 + 20)) = v47;
      (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
      sub_18BBF3890();
      v50 = qword_1EA9F8570;
      swift_beginAccess();
      sub_18B7EC8D0(v48, v30 + v50, &unk_1EA9D9360);
      swift_endAccess();
      sub_18BBF3AC8();

      sub_18B988BAC(v48, &unk_1EA9D9360);
      return sub_18B7DFF64(v14, type metadata accessor for TabSwitcher.BorrowedContentViewRegistration);
    }

LABEL_11:
    __break(1u);
    return result;
  }

  v22 = v21;
  v23 = sub_18B7C07CC();
  v24 = *&v23[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

  v25 = type metadata accessor for QuickTabSwitcher.BorrowedContentViewRegistration(0);
  (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
  sub_18BBF3890();
  v26 = qword_1EA9F8570;
  swift_beginAccess();
  sub_18B7EC8D0(v7, v24 + v26, &unk_1EA9D9360);
  swift_endAccess();
  sub_18BBF3AC8();

  sub_18B988BAC(v7, &unk_1EA9D9360);
  result = [*&v14[*(v11 + 20)] view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v27 = *&v22[OBJC_IVAR___SFTabThumbnailView_borrowedContentView];
  *&v22[OBJC_IVAR___SFTabThumbnailView_borrowedContentView] = result;
  v28 = result;
  sub_18BA14FAC(v27);

  return sub_18B7DFF64(v14, type metadata accessor for TabSwitcher.BorrowedContentViewRegistration);
}

unint64_t sub_18BAF3798()
{
  v1 = [v0 traitCollection];
  sub_18B7C9C68(v1, v24);
  v28 = v24[0];
  v29 = v24[1];
  v30[0] = v25[0];
  *(v30 + 14) = *(v25 + 14);

  sub_18B7C9B24(v26);
  LOBYTE(v1) = sub_18B7EB864(v26, v24);
  sub_18B7DFD58(v26);
  if (v1)
  {
    return sub_18B7DFD58(v24);
  }

  v3 = &v0[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___configuration];
  v4 = *&v0[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___configuration + 16];
  v22[0] = *&v0[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___configuration];
  v22[1] = v4;
  v23[0] = *&v0[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___configuration + 32];
  *(v23 + 14) = *&v0[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___configuration + 46];
  v5 = v29;
  *v3 = v28;
  *(v3 + 1) = v5;
  *(v3 + 2) = v30[0];
  *(v3 + 46) = *(v30 + 14);
  sub_18B7C9FF8(v24, v27);
  sub_18B988BAC(v22, &qword_1EA9D9358);
  sub_18BA48FCC(v24, v27);
  v6 = &v0[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_metrics];
  v7 = v27[3];
  *(v6 + 2) = v27[2];
  *(v6 + 3) = v7;
  *(v6 + 4) = v27[4];
  v8 = v27[1];
  *v6 = v27[0];
  *(v6 + 1) = v8;
  result = sub_18B7D6E1C();
  v9 = result;
  if (result >> 62)
  {
    result = sub_18BC219A8();
    v10 = result;
    if (!result)
    {
    }
  }

  else
  {
    v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    return result;
  }

  v11 = 0;
  v12 = MEMORY[0x1E69E7D40];
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x18CFFD010](v11, v9);
    }

    else
    {
      v13 = *(v9 + 8 * v11 + 32);
    }

    v21 = v13;
    ++v11;
    (*((*v12 & *v13) + 0xF8))(v13, v14, v15, v16, v17, v18, v19, v20);
  }

  while (v10 != v11);
}

unint64_t sub_18BAF3994(uint64_t a1, uint64_t a2)
{
  v4 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B7DF638(a2, v6, _s7ContentVMa);
  v7 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_unresolvedContent;
  swift_beginAccess();
  sub_18B8339EC(v6, a1 + v7);
  swift_endAccess();
  return sub_18B833A74();
}

uint64_t sub_18BAF3A60(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9350);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = _s7SectionVMa_0();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v28 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v26 - v12;
  v14 = *(a2 + 16);
  if (!v14)
  {
    return result;
  }

  v29 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v15 = a2 + v29;
  v27 = a1;
  v16 = *a1;
  v17 = *(v11 + 72);
  while (1)
  {
    sub_18B7DF638(v15, v13, _s7SectionVMa_0);
    v18 = *(v7 + 24);
    v19 = v16[2];
    if ((v13[v18] & 1) == 0)
    {
      if (!v19 || *(v16 + v29 + (v19 - 1) * v17) != 1 || *v13 != 1)
      {
        sub_18B7DF638(v13, v28, _s7SectionVMa_0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_18B9B5C64(0, v19 + 1, 1, v16);
        }

        v22 = v16[2];
        v21 = v16[3];
        if (v22 >= v21 >> 1)
        {
          v16 = sub_18B9B5C64(v21 > 1, v22 + 1, 1, v16);
        }

        sub_18B7DFF64(v13, _s7SectionVMa_0);
        v16[2] = v22 + 1;
        result = sub_18B82FE24(v28, v16 + v29 + v22 * v17, _s7SectionVMa_0);
        goto LABEL_7;
      }

      v20 = *&v13[*(v7 + 28)];
      sub_18BC1E3F8();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_18BAE3814(v16);
        v16 = result;
      }

      if (v19 > v16[2])
      {
        goto LABEL_40;
      }

      goto LABEL_20;
    }

    if (v19 && *(v16 + v29 + v18) == 1)
    {
      break;
    }

    sub_18B7DF638(v13, v6, _s7SectionVMa_0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v19 >= v16[3] >> 1)
    {
      v16 = sub_18B9B5C64(isUniquelyReferenced_nonNull_native, v19 + 1, 1, v16);
    }

    v24 = v16 + v29;
    swift_arrayDestroy();
    v25 = v16[2];
    if (v17 < 0 || v17 >= v25 * v17)
    {
      swift_arrayInitWithTakeFrontToBack();
      ++v16[2];
      if (v17 <= 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (!v17)
      {
        v16[2] = v25 + 1;
        goto LABEL_5;
      }

      swift_arrayInitWithTakeBackToFront();
      ++v16[2];
    }

    sub_18B7DF638(v6, v24, _s7SectionVMa_0);
LABEL_5:
    sub_18B988BAC(v6, &qword_1EA9D9350);
LABEL_6:
    result = sub_18B7DFF64(v13, _s7SectionVMa_0);
LABEL_7:
    v15 += v17;
    if (!--v14)
    {
      *v27 = v16;
      return result;
    }
  }

  v20 = *&v13[*(v7 + 28)];
  sub_18BC1E3F8();
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (!v16[2])
    {
      goto LABEL_39;
    }

    goto LABEL_20;
  }

  result = sub_18BAE3814(v16);
  v16 = result;
  if (*(result + 16))
  {
LABEL_20:
    sub_18BA019B8(v20);
    goto LABEL_6;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_18BAF3ED8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v25 = a3;
  v26 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  v24 = _s4ItemVMa();
  v9 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  v18 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
  swift_beginAccess();
  sub_18B7CA054(v4 + v18, v17, &unk_1EA9D5350);
  v19 = a1;
  sub_18B7DF638(a1, v14, _s11TransactionVMa);
  v20 = _s11TransactionVMa();
  (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
  swift_beginAccess();
  sub_18B7FD070(v14, v4 + v18, &unk_1EA9D5350);
  v21 = swift_endAccess();
  v26(v21);
  sub_18B7CA054(v19 + *(v20 + 20), v8, &qword_1EA9D7CD0);
  if ((*(v9 + 48))(v8, 1, v24) == 1)
  {
    sub_18B988BAC(v8, &qword_1EA9D7CD0);
  }

  else
  {
    sub_18B82FE24(v8, v11, _s4ItemVMa);
    sub_18BAFF9A0(v11);
    sub_18B7DFF64(v11, _s4ItemVMa);
  }

  swift_beginAccess();
  sub_18B7FD070(v17, v4 + v18, &unk_1EA9D5350);
  return swift_endAccess();
}

uint64_t sub_18BAF421C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = _s11TransactionVMa();
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for RetargetableTransitionCoordinator();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  *(v11 + 24) = MEMORY[0x1E69E7CC0];
  *(v11 + 32) = v12;
  *(v11 + 40) = 1;
  *(v11 + 16) = a1;
  v9[3] = v10;
  v9[4] = &off_1EFF27FD8;
  *v9 = v11;
  v13 = *(v7 + 28);
  v14 = _s4ItemVMa();
  (*(*(v14 - 8) + 56))(v9 + v13, 1, 1, v14);
  _s14ScrollPositionOMa();
  swift_storeEnumTagMultiPayload();
  *(v9 + *(v7 + 32)) = 0;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BAF3ED8(v9, a2, a3);
  v15 = *(v11 + 16);
  swift_retain_n();
  sub_18B7D8090(v15);
  sub_18B7EAA64(sub_18B9EB460, v11, sub_18B9EB538, v11, v15);

  sub_18B7EBAE8(v15);
  sub_18B7DFF64(v9, _s11TransactionVMa);
  *(v11 + 40) = 0;
}

void sub_18BAF4400(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemToPresentToAfterNextLayoutPass;
  swift_beginAccess();
  sub_18B7CA054(v1 + v10, v9, &qword_1EA9D7CD0);
  v11 = _s4ItemVMa();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v9, 1, v11);
  sub_18B988BAC(v9, &qword_1EA9D7CD0);
  if (v13 != 1)
  {
LABEL_11:
    sub_18B7DF638(a1, v6, _s4ItemVMa);
    (*(v12 + 56))(v6, 0, 1, v11);
    swift_beginAccess();
    sub_18B7FD070(v6, v2 + v10, &qword_1EA9D7CD0);
    swift_endAccess();
    return;
  }

  v14 = sub_18B7C07CC();
  v15 = *&v14[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

  v16 = *&v15[qword_1EA9F8558];
  sub_18BC1E1A8();

  v17 = *(v16 + 24);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v16 + 24) = v19;
    v28 = a1;
    if (v19 == 1)
    {
      swift_beginAccess();
      v20 = *(*(v16 + 16) + 16);
      if (v20)
      {
        v27 = sub_18BC1E3F8();
        v21 = v27 + 40;
        do
        {
          v22 = *(v21 - 8);
          v29[0] = *(v16 + 24) > 0;
          sub_18BC1E1A8();
          v22(v29);

          v21 += 16;
          --v20;
        }

        while (v20);
      }
    }

    v23 = *(v2 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState);
    *(v2 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState) = 1;
    if (v23 != 1)
    {
      sub_18BAFE7A0(v23);
    }

    v24 = *(v11 + 28);
    sub_18BC1E1A8();
    v25 = v28 + v24;
    a1 = v28;
    sub_18BB0A8E4(v25, "deferring presentation", 22, 2);

    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_18BAF471C(char *a1, char a2)
{
  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  result = [v2 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v7 = result;
  [result bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [a1 superview];
  [v6 convertRect:v16 toView:{v9, v11, v13, v15}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  if (a2)
  {
    v25 = 0.04;
  }

  else
  {
    v25 = 0.82;
  }

  v26 = sub_18B7C07CC();
  v27 = *&v26[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

  v28 = *&v27[qword_1EA9F8568 + 80];
  v29 = v25 * v28;
  if (v25 * v28 <= *&v2[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_metrics + 24])
  {
    v29 = *&v2[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_metrics + 24];
  }

  v50 = v29;
  v63.origin.x = v18;
  v63.origin.y = v20;
  v63.size.width = v22;
  v63.size.height = v24;
  MidX = CGRectGetMidX(v63);
  v64.origin.x = v18;
  v64.origin.y = v20;
  v64.size.width = v22;
  v64.size.height = v24;
  MidY = CGRectGetMidY(v64);
  v65.origin.x = v18;
  v65.origin.y = v20;
  v65.size.width = v22;
  v65.size.height = v24;
  v32 = MidX + v25 * (CGRectGetMinX(v65) - MidX);
  v66.origin.x = v18;
  v66.origin.y = v20;
  v66.size.width = v22;
  v66.size.height = v24;
  v33 = MidY + v25 * (CGRectGetMinY(v66) - MidY);
  v67.origin.x = v18;
  v67.origin.y = v20;
  v67.size.width = v22;
  v67.size.height = v24;
  v34 = v25 * CGRectGetWidth(v67);
  v68.origin.x = v18;
  v68.origin.y = v20;
  v68.size.width = v22;
  v68.size.height = v24;
  [a1 setFrame_];
  v35 = &a1[OBJC_IVAR___SFTabThumbnailView_metrics];
  v36 = *&a1[OBJC_IVAR___SFTabThumbnailView_metrics + 112];
  v37 = *&a1[OBJC_IVAR___SFTabThumbnailView_metrics + 144];
  v60 = *&a1[OBJC_IVAR___SFTabThumbnailView_metrics + 128];
  v38 = v60;
  v61 = v37;
  v40 = *&a1[OBJC_IVAR___SFTabThumbnailView_metrics + 48];
  v39 = *&a1[OBJC_IVAR___SFTabThumbnailView_metrics + 64];
  *(v35 + 8) = 0x3FF0000000000000;
  v42 = *(v35 + 4);
  v41 = *(v35 + 5);
  v56 = v39;
  v57 = v41;
  *(v35 + 10) = v50;
  v43 = *(v35 + 7);
  v44 = *(v35 + 5);
  v58 = *(v35 + 6);
  v59 = v43;
  v45 = *(v35 + 1);
  v53[0] = *v35;
  v53[1] = v45;
  v46 = *(v35 + 3);
  v48 = *v35;
  v47 = *(v35 + 1);
  v54 = *(v35 + 2);
  v55 = v46;
  v49 = *(v35 + 9);
  v51[8] = v38;
  v51[9] = v49;
  v51[6] = v58;
  v51[7] = v36;
  v51[0] = v48;
  v51[1] = v47;
  v51[2] = v54;
  v51[3] = v40;
  v62 = *(v35 + 20);
  v52 = *(v35 + 20);
  v51[4] = v42;
  v51[5] = v44;
  result = sub_18BA1A2E4(v51, v53);
  if ((result & 1) == 0)
  {
    return sub_18BA18DB4();
  }

  return result;
}

uint64_t sub_18BAF4A00(uint64_t a1, char a2)
{
  v3 = v2;
  type metadata accessor for TabThumbnailView();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v5 setHidden_];
  v6 = &v5[OBJC_IVAR___SFTabThumbnailView_metrics];
  LOBYTE(v40[0]) = 0;
  v7 = *&v5[OBJC_IVAR___SFTabThumbnailView_metrics + 112];
  v8 = *&v5[OBJC_IVAR___SFTabThumbnailView_metrics + 144];
  v46 = *&v5[OBJC_IVAR___SFTabThumbnailView_metrics + 128];
  v9 = v46;
  v47 = v8;
  v10 = *&v5[OBJC_IVAR___SFTabThumbnailView_metrics + 80];
  v43[4] = *&v5[OBJC_IVAR___SFTabThumbnailView_metrics + 64];
  v43[5] = v10;
  v11 = *&v5[OBJC_IVAR___SFTabThumbnailView_metrics + 112];
  v13 = *&v5[OBJC_IVAR___SFTabThumbnailView_metrics + 64];
  v12 = *&v5[OBJC_IVAR___SFTabThumbnailView_metrics + 80];
  v44 = *&v5[OBJC_IVAR___SFTabThumbnailView_metrics + 96];
  v14 = v44;
  v45 = v11;
  v15 = *&v5[OBJC_IVAR___SFTabThumbnailView_metrics + 16];
  v43[0] = *&v5[OBJC_IVAR___SFTabThumbnailView_metrics];
  v43[1] = v15;
  v16 = *&v5[OBJC_IVAR___SFTabThumbnailView_metrics + 48];
  v43[2] = *&v5[OBJC_IVAR___SFTabThumbnailView_metrics + 32];
  v43[3] = v16;
  v17 = *&v2[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_browserContentInsets + 16];
  *v6 = *&v2[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_browserContentInsets];
  *(v6 + 1) = v17;
  v18 = *(v6 + 9);
  v41[8] = v9;
  v41[9] = v18;
  v48 = *(v6 + 20);
  v6[32] = 0;
  v42 = *(v6 + 20);
  v41[4] = v13;
  v41[5] = v12;
  v41[6] = v14;
  v41[7] = v7;
  v19 = *(v6 + 1);
  v41[0] = *v6;
  v41[1] = v19;
  v20 = *(v6 + 3);
  v41[2] = *(v6 + 2);
  v41[3] = v20;
  v21 = sub_18BA1A2E4(v41, v43);
  if ((v21 & 1) == 0)
  {
    v21 = sub_18BA18DB4();
  }

  v22 = sub_18B7C5C10(v21);
  v23 = *&v22[OBJC_IVAR___SFTabOverviewDisplayItem_transitionContainerView];

  [v23 addSubview_];
  v24 = swift_allocObject();
  *(v24 + 16) = v3;
  *(v24 + 24) = v5;
  v25 = a2 & 1;
  *(v24 + 32) = a2 & 1;
  v26 = objc_opt_self();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_18BB11328;
  *(v27 + 24) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_18B9D53AC;
  *(v28 + 24) = v27;
  v40[4] = sub_18B9D53B0;
  v40[5] = v28;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 1107296256;
  v40[2] = sub_18B7E3BF4;
  v40[3] = &block_descriptor_536;
  v29 = _Block_copy(v40);
  v30 = v3;
  v31 = v5;
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v26 performWithoutAnimation_];
  _Block_release(v29);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v34 = swift_allocObject();
    *(v34 + 16) = v30;
    *(v34 + 24) = v31;
    *(v34 + 32) = v25;
    v35 = swift_allocObject();
    *(v35 + 16) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE30);
    v36 = swift_allocObject();
    v36[2] = v31;
    v36[3] = CGRectMake;
    v36[4] = 0;
    v36[5] = CGRectMake;
    v36[6] = 0;
    v36[7] = sub_18BB11374;
    v36[8] = v34;
    v36[9] = sub_18BA1A81C;
    v36[10] = v35;
    v37 = v31;
    v38 = v30;
    v39 = v37;
    return v36;
  }

  return result;
}

uint64_t sub_18BAF4DAC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_selectedItems;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_mode) = 0;
  *(a1 + v4) = MEMORY[0x1E69E7CD0];
  v6 = *(a1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemCloseHandler);
  sub_18BC1E1A8();
  v6(v5, a2);
}

uint64_t sub_18BAF4E50(uint64_t a1, void *a2, uint64_t a3)
{
  sub_18BC1E3F8();
  v5 = sub_18BBA3838(a3);

  v6 = qword_1EA9D2200;
  v7 = a2;
  sub_18BC1E3F8();
  if (v6 != -1)
  {
    swift_once();
  }

  sub_18BB0D56C(qword_1EA9F7A90, v7, v7, v5);

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_18BAF4F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemPinHandler);
  sub_18BC1E1A8();
  v5(a2, a3);
}

uint64_t sub_18BAF4F6C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, int64_t a4, uint64_t a5)
{
  v84 = a5;
  v97 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v76 - v9;
  v88 = _s4ItemVMa();
  v11 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s4ItemVMa_2();
  v89 = *(v14 - 8);
  v90 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v81 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v76 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v76 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v83 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v86 = &v76 - v26;
  v82 = a1;
  v27 = sub_18B7C5C10(v25);
  sub_18B7C9974();
  v29 = v28;

  v30 = sub_18B7CEA3C();
  v85 = v30;
  if (!v30)
  {
    return a2();
  }

  v79 = a3;
  v80 = a2;
  v31 = v97;
  v32 = *(v97 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  if (v32)
  {
    v77 = v19;
    v78 = v10;
    *&v106[0] = MEMORY[0x1E69E7CC0];
    sub_18B85A1AC(0, v32, 0);
    v33 = *&v106[0];
    v34 = v31 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v87 = *(v11 + 72);
    v35 = v90;
    do
    {
      v97 = v32;
      sub_18B7DF638(v34, v13, _s4ItemVMa);
      v96 = *v13;
      v36 = v88;
      v37 = *(v88 + 28);
      v38 = v35[5];
      v39 = sub_18BC1EC08();
      (*(*(v39 - 8) + 16))(&v21[v38], &v13[v37], v39);
      v40 = v13[v36[9]];
      v94 = v13[v36[10]];
      v41 = v36[12];
      v42 = v13[v36[11]];
      v92 = v40;
      v93 = v42;
      v95 = *&v13[v41];
      v43 = &v13[v36[13]];
      v44 = *v43;
      v45 = *(v43 + 1);
      v46 = *&v13[v36[14]];
      v47 = &v13[v36[15]];
      v48 = *(v47 + 1);
      v91 = *v47;
      sub_18BC1E3F8();
      sub_18BC1E1A8();
      sub_18BC1E3F8();
      sub_18B7DFF64(v13, _s4ItemVMa);
      *v21 = v96;
      v21[v35[6]] = v92;
      v49 = v93;
      v21[v35[7]] = v94;
      v21[v35[8]] = 0;
      v21[v35[9]] = v49;
      *&v21[v35[10]] = v95;
      v50 = &v21[v35[11]];
      *v50 = v44;
      v50[1] = v45;
      *&v21[v35[12]] = v46;
      v51 = &v21[v35[13]];
      *v51 = v91;
      v51[1] = v48;
      *&v106[0] = v33;
      v53 = *(v33 + 16);
      v52 = *(v33 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_18B85A1AC(v52 > 1, v53 + 1, 1);
        v33 = *&v106[0];
      }

      *(v33 + 16) = v53 + 1;
      sub_18B82FE24(v21, v33 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v53, _s4ItemVMa_2);
      v34 += v87;
      v32 = v97 - 1;
    }

    while (v97 != 1);
    v19 = v77;
    v54 = v78;
  }

  else
  {
    v54 = v10;
  }

  v56 = sub_18B82ABA4(v33);

  v58 = v85;
  v57 = v86;
  v59 = v84;
  v60 = *&v85[OBJC_IVAR___SFTabOverview_content];
  v61 = *&v85[OBJC_IVAR___SFTabOverview_content + 16];
  v62 = *&v85[OBJC_IVAR___SFTabOverview_content + 48];
  v106[2] = *&v85[OBJC_IVAR___SFTabOverview_content + 32];
  v106[3] = v62;
  v106[0] = v60;
  v106[1] = v61;
  v63 = *&v85[OBJC_IVAR___SFTabOverview_content + 64];
  v64 = *&v85[OBJC_IVAR___SFTabOverview_content + 80];
  v65 = *&v85[OBJC_IVAR___SFTabOverview_content + 112];
  v106[6] = *&v85[OBJC_IVAR___SFTabOverview_content + 96];
  v106[7] = v65;
  v106[4] = v63;
  v106[5] = v64;
  v66 = *&v85[OBJC_IVAR___SFTabOverview_content + 128];
  v67 = *&v85[OBJC_IVAR___SFTabOverview_content + 144];
  v68 = *&v85[OBJC_IVAR___SFTabOverview_content + 176];
  v106[10] = *&v85[OBJC_IVAR___SFTabOverview_content + 160];
  v106[11] = v68;
  v106[8] = v66;
  v106[9] = v67;
  if (v84)
  {
    sub_18B82B150(v106, &v104);
    sub_18BB1A9E4(v56, v57);
  }

  else
  {
    sub_18B82B150(v106, &v104);
    sub_18BB1AE30(v56, v57);
  }

  v69 = sub_18B82B2F0(v106);
  (v80)(v69);
  v70 = v83;
  sub_18B7CA054(v57, v83, &unk_1EA9D4F30);
  if ((*(v89 + 48))(v70, 1, v90) == 1)
  {
    sub_18B988BAC(v57, &unk_1EA9D4F30);

    return sub_18B988BAC(v70, &unk_1EA9D4F30);
  }

  else
  {
    sub_18B82FE24(v70, v19, _s4ItemVMa_2);
    if (v59)
    {
      v71 = 256;
    }

    else
    {
      v71 = 0;
    }

    sub_18B7DF638(v19, v81, _s4ItemVMa_2);
    sub_18B82AD34(&qword_1EA9D9230, _s4ItemVMa_2);
    sub_18BC21A68();
    sub_18B7F44EC(v102, v105);
    v105[5] = 0x767265764F626174;
    v105[6] = 0xEF6D657449776569;
    v104 = sub_18B82E2EC(MEMORY[0x1E69E7CC0]);
    v101 = &_s18ItemScrollPositionON;
    *&v100 = v71 & 0xFFFFFFFFFFFFFFFELL | v59 & 1;
    BYTE8(v100) = 0;
    sub_18B7B1AD4(&v100, v99);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = v104;
    sub_18BAA7848(v99, 0xD000000000000012, 0x800000018BC62780, isUniquelyReferenced_nonNull_native);
    sub_18B831014(v102);
    v104 = v98;
    v73 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
    v74 = v82;
    swift_beginAccess();
    sub_18B7CA054(v74 + v73, v54, &unk_1EA9D5350);
    v75 = _s11TransactionVMa();
    if ((*(*(v75 - 8) + 48))(v54, 1, v75))
    {
      sub_18B988BAC(v54, &unk_1EA9D5350);
      memset(v102, 0, sizeof(v102));
      v103 = 0;
    }

    else
    {
      sub_18B7CA054(v54, v102, &unk_1EA9D5060);
      sub_18B988BAC(v54, &unk_1EA9D5350);
    }

    sub_18B861588(&v104, v102);

    sub_18B988BAC(v102, &unk_1EA9D5060);
    sub_18B7DFF64(v19, _s4ItemVMa_2);
    sub_18B988BAC(v57, &unk_1EA9D4F30);
    return sub_18B8303BC(&v104);
  }
}

uint64_t sub_18BAF583C(uint64_t a1, uint64_t a2)
{
  v5 = sub_18BC1EC08();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = _s4PageVMa();
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_interactivelyInsertedPageID;
  swift_beginAccess();
  (*(v6 + 16))(&v12[v10[10]], v2 + v13, v5);
  *v12 = 0;
  *&v12[v10[11]] = 0;
  v12[v10[12]] = 0;
  v12[v10[13]] = 0;
  v12[v10[14]] = 0;
  v12[v10[15]] = 1;
  *&v12[v10[16]] = xmmword_18BC42B60;
  v12[v10[17]] = 3;
  v14 = &v12[v10[18]];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *&v12[v10[19]] = MEMORY[0x1E69E7CC0];
  v15 = &v12[v10[20]];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = CGRectMake;
  *(v15 + 5) = 0;
  v16 = &v12[v10[21]];
  *v16 = a1;
  *(v16 + 1) = a2;
  sub_18BC1E3F8();
  sub_18BC1DE28();
  swift_beginAccess();
  (*(v6 + 40))(v2 + v13, v8, v5);
  swift_endAccess();
  v19 = v2;
  v20 = v12;
  if (qword_1EA9D2200 != -1)
  {
    swift_once();
  }

  sub_18BAF421C(qword_1EA9F7A90, sub_18BB112C8, v18);
  return sub_18B7DFF64(v12, _s4PageVMa);
}

uint64_t sub_18BAF5ADC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemAddHandler);
  sub_18BC1E1A8();
  v3(a2);
}

uint64_t sub_18BAF5B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemCloseHandler);
  sub_18BC1E1A8();
  v5(a2, a3);
}

uint64_t sub_18BAF5BA8(uint64_t a1)
{
  v2 = v1;
  v4 = _s4PageVMa_0();
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v37 = a1;
  v10 = sub_18BA23330();
  v11 = sub_18B7C5C10(v10);
  sub_18B7C9974();
  v13 = v12;

  v40 = "quickTabSwitcherItem";
  sub_18BBE9E20(v10, 0xD000000000000017, 0x800000018BC60750);

  v14 = 0;
  v16 = v10 + 56;
  v15 = *(v10 + 56);
  v42 = v10;
  v17 = 1 << *(v10 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v15;
  v38 = v2;
  v39 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___tabOverviewDisplayItem;
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
LABEL_11:
    sub_18B7DF638(*(v42 + 48) + *(v41 + 72) * (__clz(__rbit64(v19)) | (v14 << 6)), v9, _s4PageVMa_0);
    sub_18B82FE24(v9, v6, _s4PageVMa_0);
    v22 = *(v2 + v39);
    sub_18B7C9974();
    v24 = v23;

    v25 = *((*MEMORY[0x1E69E7D40] & *v24) + 0x98);
    swift_beginAccess();
    v26 = *(v24 + v25);
    if (!*(v26 + 16))
    {
      goto LABEL_26;
    }

    sub_18BC1E3F8();
    v27 = sub_18B7C4104(0xD000000000000017, v40 | 0x8000000000000000);
    if ((v28 & 1) == 0)
    {
      goto LABEL_25;
    }

    v29 = *(*(v26 + 56) + 8 * v27);
    sub_18BC1E1A8();

    swift_beginAccess();
    v30 = *(v29 + 32);
    if (*(v30 + 16))
    {
      sub_18BC1E3F8();
      v31 = sub_18B8629FC(v6);
      if (v32)
      {
        v33 = *(*(v30 + 56) + 16 * v31);

        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          v34 = v33 == 0;
        }

        else
        {
          v34 = 1;
        }

        if (v34)
        {
          v24 = v33;
        }

        else
        {
          v35 = sub_18BA236B4(v6);
          v24 = sub_18B82FEA0();
          sub_18BB07B3C(v35);
        }

        v2 = v38;
      }

      else
      {
      }
    }

    else
    {
    }

    v19 &= v19 - 1;

    sub_18B7DFF64(v6, _s4PageVMa_0);
  }

  while (1)
  {
    v21 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v21 >= v20)
    {
    }

    v19 = *(v16 + 8 * v21);
    ++v14;
    if (v19)
    {
      v14 = v21;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_25:

LABEL_26:
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

uint64_t sub_18BAF5FAC()
{
  type metadata accessor for AnimationSettings();
  inited = swift_initStaticObject();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  v5[2] = inited;
  v5[3] = sub_18BB11270;
  v5[4] = v2;
  v14 = sub_18B7E767C;
  v15 = v5;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_18B7B0DB0;
  v13 = &block_descriptor_506;
  v6 = _Block_copy(&v10);
  v7 = v0;
  sub_18BC1E1A8();

  v14 = sub_18BB1129C;
  v15 = v3;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_18B8043A0;
  v13 = &block_descriptor_509_0;
  v8 = _Block_copy(&v10);
  sub_18BC1E1A8();

  [v4 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v8);
  _Block_release(v6);
}

uint64_t sub_18BAF61AC(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for AnimationSettings();
  inited = swift_initStaticObject();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  v7[2] = inited;
  v7[3] = sub_18BB112A4;
  v7[4] = v5;
  v16 = sub_18B7E767C;
  v17 = v7;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_18B7B0DB0;
  v15 = &block_descriptor_519_0;
  v8 = _Block_copy(&v12);
  v9 = a3;
  sub_18BC1E1A8();

  v16 = CGRectMake;
  v17 = 0;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_18B8043A0;
  v15 = &block_descriptor_522;
  v10 = _Block_copy(&v12);

  [v6 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v10);
  _Block_release(v8);
}

void sub_18BAF6374(uint64_t a1, double a2, double a3)
{
  v6 = sub_18B7C5C10(a1);
  sub_18B7C9974();
  v8 = v7;

  v9 = *&v8[qword_1EA9F7FF8 + 112];
  v22[6] = *&v8[qword_1EA9F7FF8 + 96];
  v22[7] = v9;
  v22[8] = *&v8[qword_1EA9F7FF8 + 128];
  v23 = *&v8[qword_1EA9F7FF8 + 144];
  v10 = *&v8[qword_1EA9F7FF8 + 48];
  v22[2] = *&v8[qword_1EA9F7FF8 + 32];
  v22[3] = v10;
  v11 = *&v8[qword_1EA9F7FF8 + 80];
  v22[4] = *&v8[qword_1EA9F7FF8 + 64];
  v22[5] = v11;
  v12 = *&v8[qword_1EA9F7FF8 + 16];
  v22[0] = *&v8[qword_1EA9F7FF8];
  v22[1] = v12;
  *&v8[qword_1EA9F7FF8 + 64] = a2;
  sub_18B7CBBC4(v22);

  v13 = *(a1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___tabOverviewDisplayItem);
  sub_18B7C9974();
  v19 = v14;

  v15 = *&v19[qword_1EA9F7FF8 + 112];
  v20[6] = *&v19[qword_1EA9F7FF8 + 96];
  v20[7] = v15;
  v20[8] = *&v19[qword_1EA9F7FF8 + 128];
  v21 = *&v19[qword_1EA9F7FF8 + 144];
  v16 = *&v19[qword_1EA9F7FF8 + 48];
  v20[2] = *&v19[qword_1EA9F7FF8 + 32];
  v20[3] = v16;
  v17 = *&v19[qword_1EA9F7FF8 + 80];
  v20[4] = *&v19[qword_1EA9F7FF8 + 64];
  v20[5] = v17;
  v18 = *&v19[qword_1EA9F7FF8 + 16];
  v20[0] = *&v19[qword_1EA9F7FF8];
  v20[1] = v18;
  *&v19[qword_1EA9F7FF8 + 72] = a3;
  sub_18B7CBBC4(v20);
}

void sub_18BAF64A8(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5348);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  v5 = _s15MoveItemsIntentVMa(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_pendingMoveIntent;
  swift_beginAccess();
  sub_18B7FD070(v4, &a1[v6], &qword_1EA9D5348);
  swift_endAccess();
  v7 = sub_18B833A74();
  v8 = sub_18B7C5C10(v7);
  sub_18B7C9974();
  v10 = v9;

  [v10 layoutIfNeeded];
  v11 = *&a1[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_interactivePageInsertionIsDisabledAssertion];
  v12 = *(v11 + 24);
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_8;
  }

  *(v11 + 24) = v14;
  if (!v14)
  {
    swift_beginAccess();
    v15 = *(v11 + 16);
    v16 = *(v15 + 16);
    if (v16)
    {
      sub_18BC1E1A8();
      sub_18BC1E3F8();
      v17 = v15 + 40;
      do
      {
        v18 = *(v17 - 8);
        HIBYTE(v20) = *(v11 + 24) > 0;
        sub_18BC1E1A8();
        v18(&v20 + 7);

        v17 += 16;
        --v16;
      }

      while (v16);
    }
  }

  v19 = qword_1EA9D2200;
  a1 = a1;
  if (v19 != -1)
  {
    goto LABEL_10;
  }

LABEL_8:
  sub_18BB0DCB4(qword_1EA9F7A90, a1, a1, sub_18B9EB460, sub_18B9EB538);
}

uint64_t sub_18BAF6700(uint64_t a1, uint64_t a2)
{
  v4 = _s15MoveItemsIntentV11DestinationOMa(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s4PageVMa();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5348);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  v13 = _s15MoveItemsIntentVMa(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_pendingMoveIntent;
  swift_beginAccess();
  sub_18B7FD070(v12, a1 + v14, &qword_1EA9D5348);
  swift_endAccess();
  v15 = *(a1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemMoveHandler);
  v16 = *(a2 + *(v13 + 36));
  sub_18B7DF638(a2, v6, _s15MoveItemsIntentV11DestinationOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_18B82FE24(v6, v9, _s4PageVMa);
    sub_18BC1E1A8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6338);
    sub_18BC1E1A8();

    sub_18B82FE24(v6, v9, _s4PageVMa);
  }

  v15(v16, v9);

  return sub_18B7DFF64(v9, _s4PageVMa);
}

uint64_t sub_18BAF69A8(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v37 = a2;
  v39 = _s15MoveItemsIntentV11DestinationOMa(0);
  MEMORY[0x1EEE9AC00](v39);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = _s4PageVMa();
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5348);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = _s15MoveItemsIntentVMa(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_pendingMoveIntent;
  swift_beginAccess();
  sub_18B7CA054(&v2[v16], v11, &qword_1EA9D5348);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_18B988BAC(v11, &qword_1EA9D5348);
  }

  sub_18B82FE24(v11, v15, _s15MoveItemsIntentVMa);
  sub_18B7DF638(v15, v4, _s15MoveItemsIntentV11DestinationOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_18B7DFF64(v15, _s15MoveItemsIntentVMa);
    v32 = _s15MoveItemsIntentV11DestinationOMa;
    v33 = v4;
    return sub_18B7DFF64(v33, v32);
  }

  v18 = v38;
  sub_18B82FE24(v4, v38, _s4PageVMa);
  (*(v13 + 56))(v8, 1, 1, v12);
  swift_beginAccess();
  sub_18B7FD070(v8, &v2[v16], &qword_1EA9D5348);
  swift_endAccess();
  v2[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_mode] = 0;
  v19 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_selectedItems;
  swift_beginAccess();
  *&v2[v19] = MEMORY[0x1E69E7CD0];

  v20 = *&v2[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_interactivePageInsertionIsDisabledAssertion];
  v21 = *(v20 + 24);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 24) = v23;
    if (!v23)
    {
      swift_beginAccess();
      v24 = *(v20 + 16);
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = v15;
        sub_18BC1E1A8();
        sub_18BC1E3F8();
        v27 = v24 + 40;
        do
        {
          v28 = *(v27 - 8);
          v40 = *(v20 + 24) > 0;
          sub_18BC1E1A8();
          v28(&v40);

          v27 += 16;
          --v25;
        }

        while (v25);

        v15 = v26;
      }
    }

    v29 = (v18 + *(v35 + 76));
    v30 = v37;
    sub_18BC1E3F8();

    *v29 = v36;
    v29[1] = v30;
    v31 = qword_1EA9D2200;
    v2 = v2;
    if (v31 == -1)
    {
      goto LABEL_11;
    }
  }

  swift_once();
LABEL_11:
  sub_18BB0CA78(qword_1EA9F7A90, v2, v2, v18);

  sub_18B7DFF64(v15, _s15MoveItemsIntentVMa);
  v32 = _s4PageVMa;
  v33 = v18;
  return sub_18B7DFF64(v33, v32);
}