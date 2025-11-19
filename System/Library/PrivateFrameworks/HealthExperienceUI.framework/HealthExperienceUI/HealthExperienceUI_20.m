uint64_t sub_1BA11BA3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v109 = a2;
  v115 = *v3;
  sub_1BA11E7F8(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v110 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A3EA8();
  v117 = *(v7 - 8);
  v118 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v120 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = *(a1 + 8);
  v9 = *(a1 + 32);
  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = *(a1 + 57);
  v13 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_multiselectValues;
  swift_beginAccess();
  v14 = *(v3 + v13);
  v15 = *(v14 + 16);
  v119 = v9;
  if (v15)
  {

    v16 = v11;
    v17 = sub_1B9F24A34(v9, v11);
    if (v18)
    {
      v19 = *(*(v14 + 56) + v17);

      v112 = v19;
      v114 = v19 ^ 1;
      if (((v19 ^ 1 | v12) & 1) == 0)
      {
LABEL_69:
        v99 = v110;
        sub_1BA120D48(v109, v110, type metadata accessor for ConfirmDetailsProvider.Details);
        v100 = type metadata accessor for ConfirmDetailsProvider.Details();
        (*(*(v100 - 8) + 56))(v99, 0, 1, v100);
        v101 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_visibleRows;
        v102 = swift_beginAccess();
        v103 = *(v3 + v101);
        MEMORY[0x1EEE9AC00](v102);
        *(&v109 - 2) = v3;
        *(&v109 - 1) = v99;

        v104 = sub_1BA24A778(sub_1BA120C6C, (&v109 - 4), v103);

        sub_1BA11FEE8(v99, sub_1BA11E7F8);
        v105 = v3 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_delegate;
        if (!swift_unknownObjectWeakLoadStrong())
        {
        }

        v106 = *(v105 + 1);
        ObjectType = swift_getObjectType();
        (*(v106 + 24))(v104, ObjectType, v106);

        return swift_unknownObjectRelease();
      }

      goto LABEL_8;
    }
  }

  else
  {
    v16 = v11;
  }

  v112 = 0;
  v114 = 1;
LABEL_8:
  v20 = v120;
  sub_1BA4A3DD8();

  v21 = v16;

  v22 = sub_1BA4A3E88();
  v23 = v10;
  v24 = sub_1BA4A6FC8();
  v25 = v21;

  v113 = v23;

  if (os_log_type_enabled(v22, v24))
  {
    v26 = swift_slowAlloc();
    v111 = v22;
    v27 = v26;
    v116 = swift_slowAlloc();
    v123[0] = v116;
    *v27 = 136315906;
    v28 = sub_1BA4A85D8();
    v30 = sub_1B9F0B82C(v28, v29, v123);

    *(v27 + 4) = v30;
    v31 = v24;
    v32 = v119;
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_1B9F0B82C(0xD000000000000021, 0x80000001BA4EC1D0, v123);
    *(v27 + 22) = 2080;
    v33 = v114;
    if (v114)
    {
      v34 = 0x6E697463656C6553;
    }

    else
    {
      v34 = 0x7463656C65736E75;
    }

    if (v114)
    {
      v35 = 0xE900000000000067;
    }

    else
    {
      v35 = 0xEB00000000676E69;
    }

    v36 = sub_1B9F0B82C(v34, v35, v123);

    *(v27 + 24) = v36;
    v25 = v21;
    *(v27 + 32) = 2080;
    *(v27 + 34) = sub_1B9F0B82C(v32, v21, v123);
    v37 = v111;
    _os_log_impl(&dword_1B9F07000, v111, v31, "[%s.%s]: %s multiselect with key %s", v27, 0x2Au);
    v38 = v116;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v38, -1, -1);
    MEMORY[0x1BFAF43A0](v27, -1, -1);

    (*(v117 + 8))(v120, v118);
  }

  else
  {

    (*(v117 + 8))(v20, v118);
    v33 = v114;
    v32 = v119;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v122 = *(v3 + v13);
  *(v3 + v13) = 0x8000000000000000;
  sub_1B9FF1860(v33, v32, v25, isUniquelyReferenced_nonNull_native);
  *(v3 + v13) = v122;
  swift_endAccess();
  v40 = v113;
  v41 = *(v113 + 16);
  if (!v41)
  {
    goto LABEL_69;
  }

  v115 = v113 + 32;
  v116 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_correlatedItemsMapping;
  swift_beginAccess();
  v42 = 0;
  v111 = v41;
  while (v42 < *(v40 + 16))
  {
    v118 = v42;
    v45 = v115 + 24 * v42;
    v46 = *v45;
    v47 = *(v45 + 8);
    LODWORD(v117) = *(v45 + 16);
    v48 = *(v3 + v116);
    v49 = *(v48 + 16);

    v119 = v47;
    v120 = v46;
    if (v49)
    {

      v50 = sub_1B9F24A34(v46, v47);
      v52 = v51;

      v53 = MEMORY[0x1E69E7CC0];
      if (v52)
      {
        v53 = *(*(v48 + 56) + 8 * v50);
      }
    }

    else
    {

      v53 = MEMORY[0x1E69E7CC0];
    }

    v54 = *(v53 + 16);
    if (v54 < 2)
    {

      if (v117)
      {
        v65 = v112;
      }

      else
      {
        v65 = v114;
      }

      swift_beginAccess();
      v66 = swift_isUniquelyReferenced_nonNull_native();
      v121 = *(v3 + v13);
      v67 = v121;
      *(v3 + v13) = 0x8000000000000000;
      v68 = v119;
      v69 = sub_1B9F24A34(v120, v119);
      v71 = v67[2];
      v72 = (v70 & 1) == 0;
      v73 = __OFADD__(v71, v72);
      v74 = v71 + v72;
      if (v73)
      {
        goto LABEL_74;
      }

      v75 = v70;
      if (v67[3] >= v74)
      {
        if ((v66 & 1) == 0)
        {
          v97 = v69;
          sub_1BA0F1B08();
          v69 = v97;
        }

        v76 = v120;
        if ((v75 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      else
      {
        sub_1BA0F3C84(v74, v66);
        v76 = v120;
        v69 = sub_1B9F24A34(v120, v68);
        if ((v75 & 1) != (v77 & 1))
        {
          goto LABEL_77;
        }

        if ((v75 & 1) == 0)
        {
LABEL_54:
          v44 = v121;
          v121[(v69 >> 6) + 8] |= 1 << v69;
          v83 = (v44[6] + 16 * v69);
          *v83 = v76;
          v83[1] = v68;
          *(v44[7] + v69) = v65;
          v84 = v44[2];
          v73 = __OFADD__(v84, 1);
          v85 = v84 + 1;
          if (v73)
          {
            goto LABEL_76;
          }

LABEL_68:
          v44[2] = v85;
          goto LABEL_20;
        }
      }
    }

    else
    {
      v122 = MEMORY[0x1E69E7CC0];
      sub_1BA066FE8(0, v54, 0);
      v55 = v122;
      v56 = (v53 + 40);
      do
      {
        v57 = *(v3 + v13);
        if (*(v57 + 16))
        {
          v58 = *(v56 - 1);
          v59 = *v56;

          v60 = sub_1B9F24A34(v58, v59);
          if (v61)
          {
            v62 = *(*(v57 + 56) + v60);
          }

          else
          {
            v62 = 0;
          }
        }

        else
        {
          v62 = 0;
        }

        v122 = v55;
        v64 = *(v55 + 16);
        v63 = *(v55 + 24);
        if (v64 >= v63 >> 1)
        {
          sub_1BA066FE8((v63 > 1), v64 + 1, 1);
          v55 = v122;
        }

        *(v55 + 16) = v64 + 1;
        *(v55 + v64 + 32) = v62;
        v56 += 3;
        --v54;
      }

      while (v54);

      v78 = *(v55 + 16);
      if (v78)
      {
        v79 = (v55 + 32);
        v80 = *(v55 + 32);
        v40 = v113;
        v41 = v111;
        v81 = v119;
        while (v78)
        {
          v82 = *v79++;
          --v78;
          if (v80 != v82)
          {

            v65 = 0;
            goto LABEL_59;
          }
        }

        v65 = v117 ^ v80;
      }

      else
      {

        v65 = 0;
        v40 = v113;
        v41 = v111;
        v81 = v119;
      }

LABEL_59:
      swift_beginAccess();
      v86 = swift_isUniquelyReferenced_nonNull_native();
      v121 = *(v3 + v13);
      v87 = v121;
      *(v3 + v13) = 0x8000000000000000;
      v69 = sub_1B9F24A34(v120, v81);
      v89 = v87[2];
      v90 = (v88 & 1) == 0;
      v73 = __OFADD__(v89, v90);
      v91 = v89 + v90;
      if (v73)
      {
        goto LABEL_73;
      }

      v92 = v88;
      if (v87[3] >= v91)
      {
        if ((v86 & 1) == 0)
        {
          v98 = v69;
          sub_1BA0F1B08();
          v69 = v98;
        }

        v93 = v120;
        if ((v92 & 1) == 0)
        {
          goto LABEL_67;
        }
      }

      else
      {
        sub_1BA0F3C84(v91, v86);
        v93 = v120;
        v69 = sub_1B9F24A34(v120, v81);
        if ((v92 & 1) != (v94 & 1))
        {
          goto LABEL_77;
        }

        if ((v92 & 1) == 0)
        {
LABEL_67:
          v44 = v121;
          v121[(v69 >> 6) + 8] |= 1 << v69;
          v95 = (v44[6] + 16 * v69);
          *v95 = v93;
          v95[1] = v81;
          *(v44[7] + v69) = v65;
          v96 = v44[2];
          v73 = __OFADD__(v96, 1);
          v85 = v96 + 1;
          if (v73)
          {
            goto LABEL_75;
          }

          goto LABEL_68;
        }
      }
    }

    v43 = v69;

    v44 = v121;
    *(v121[7] + v43) = v65;
LABEL_20:
    *(v3 + v13) = v44;
    swift_endAccess();
    v42 = v118 + 1;
    if ((v118 + 1) == v41)
    {
      goto LABEL_69;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  result = sub_1BA4A83B8();
  __break(1u);
  return result;
}

uint64_t sub_1BA11C4D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a2;
  sub_1BA11E7F8(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v44 - v7;
  sub_1BA11FF48(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v46 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  v14 = sub_1BA4A1148();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7B6A0();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v48 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v49 = &v44 - v21;
  sub_1BA119590(&v44 - v21);
  v45 = a1;
  sub_1BA120D48(a1, v8, sub_1BA11E7F8);
  v22 = type metadata accessor for ConfirmDetailsProvider.Details();
  v23 = *(*(v22 - 8) + 48);
  if (v23(v8, 1, v22) == 1)
  {
    sub_1BA11FEE8(v8, sub_1BA11E7F8);
    (*(v15 + 56))(v13, 1, 1, v14);
LABEL_4:
    sub_1BA11FEE8(v13, sub_1BA11FF48);
    goto LABEL_6;
  }

  sub_1BA120D48(&v8[*(v22 + 20)], v13, sub_1BA11FF48);
  sub_1BA11FEE8(v8, type metadata accessor for ConfirmDetailsProvider.Details);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_4;
  }

  (*(v15 + 32))(v17, v13, v14);
  v24 = v48;
  sub_1BA4A1838();
  (*(v15 + 8))(v17, v14);
  v25 = v49;
  sub_1BA11FEE8(v49, sub_1B9F7B6A0);
  sub_1BA120E18(v24, v25, sub_1B9F7B6A0);
LABEL_6:
  v26 = v46;
  sub_1BA120D48(v45, v5, sub_1BA11E7F8);
  if (v23(v5, 1, v22) == 1)
  {
    sub_1BA11FEE8(v5, sub_1BA11E7F8);
    (*(v15 + 56))(v26, 1, 1, v14);
  }

  else
  {
    sub_1BA120D48(&v5[*(v22 + 20)], v26, sub_1BA11FF48);
    sub_1BA11FEE8(v5, type metadata accessor for ConfirmDetailsProvider.Details);
    if ((*(v15 + 48))(v26, 1, v14) != 1)
    {
      sub_1BA11FEE8(v26, sub_1BA11FF48);
      v27 = 0;
      v29 = 0;
      goto LABEL_13;
    }
  }

  sub_1BA11FEE8(v26, sub_1BA11FF48);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v27 = sub_1BA4A1318();
  v29 = v28;
LABEL_13:
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v30 = sub_1BA4A1318();
  v32 = v31;
  v33 = v48;
  sub_1BA120D48(v49, v48, sub_1B9F7B6A0);
  v34 = type metadata accessor for CompactDatePickerItem();
  v35 = v34[5];
  v36 = sub_1BA4A1728();
  v37 = v47;
  (*(*(v36 - 8) + 56))(v47 + v35, 1, 1, v36);
  v38 = (v37 + v34[6]);
  v39 = (v37 + v34[7]);
  *(v37 + v34[8] + 8) = 0;
  swift_unknownObjectWeakInit();
  *v37 = v30;
  v37[1] = v32;
  sub_1BA120C08(v33, v37 + v35);
  *v38 = v27;
  v38[1] = v29;
  v50 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v51 = v40;

  MEMORY[0x1BFAF1350](46, 0xE100000000000000);

  MEMORY[0x1BFAF1350](0xD000000000000011, 0x80000001BA4EC1B0);

  v41 = v50;
  v42 = v51;
  sub_1BA11FEE8(v33, sub_1B9F7B6A0);
  result = sub_1BA11FEE8(v49, sub_1B9F7B6A0);
  *v39 = v41;
  v39[1] = v42;
  return result;
}

uint64_t sub_1BA11CC0C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v192 = a2;
  v193 = a3;
  sub_1BA11FF48(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v191 = &v179 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v190 = &v179 - v7;
  sub_1BA11E7F8(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v179 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v179 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v179 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v179 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v179 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v179 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v179 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v179 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v179 - v34;
  v37 = *a1;
  v38 = *(a1 + 7) >> 62;
  if (v38 > 1)
  {
    if (v38 == 2)
    {
      if (*a1 > 2u)
      {
        if (v37 == 3)
        {
          sub_1BA120D48(v192, v14, sub_1BA11E7F8);
          v61 = type metadata accessor for ConfirmDetailsProvider.Details();
          v62 = (*(*(v61 - 8) + 48))(v14, 1, v61);
          v63 = sub_1BA11E7F8;
          if (v62 == 1)
          {
            v64 = 0;
          }

          else
          {
            v64 = *&v14[*(v61 + 24)];
            v147 = v64;
            v63 = type metadata accessor for ConfirmDetailsProvider.Details;
          }

          sub_1BA11FEE8(v14, v63);
          sub_1B9F0A534(v194 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_valueFormatter, &v204);
          v148 = type metadata accessor for WeightPickerItem();
          v149 = objc_allocWithZone(v148);
          v150 = WeightPickerItem.init(initialValue:valueFormatter:)(v64, &v204);
          v151 = &v150[OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_delegate];
          swift_beginAccess();
          *(v151 + 1) = &off_1F3807858;
          swift_unknownObjectWeakAssign();
          v152 = v193;
          v193[3] = v148;
          result = sub_1BA120E80(&qword_1EBBEC268, type metadata accessor for WeightPickerItem);
          v152[4] = result;
          *v152 = v150;
          return result;
        }

        sub_1BA120D48(v192, v11, sub_1BA11E7F8);
        v119 = type metadata accessor for ConfirmDetailsProvider.Details();
        v120 = (*(*(v119 - 8) + 48))(v11, 1, v119);
        v121 = sub_1BA11E7F8;
        if (v120 == 1)
        {
          v122 = 0;
        }

        else
        {
          v122 = *&v11[*(v119 + 28)];
          v153 = v122;
          v121 = type metadata accessor for ConfirmDetailsProvider.Details;
        }

        sub_1BA11FEE8(v11, v121);
        sub_1B9F0A534(v194 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_valueFormatter, &v204);
        v154 = type metadata accessor for HeightPickerItem();
        v155 = objc_allocWithZone(v154);
        *&v155[OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v156 = OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_currentHeight;
        *&v155[OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_currentHeight] = 0;
        v155[OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem____lazy_storage___usesImperialUnits] = 2;
        *&v155[v156] = v122;
        sub_1B9F0A534(&v204, &v155[OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_valueFormatter]);
        v214.receiver = v155;
        v214.super_class = v154;
        v142 = objc_msgSendSuper2(&v214, sel_init);
        __swift_destroy_boxed_opaque_existential_1(&v204);
        v157 = &v142[OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_delegate];
        swift_beginAccess();
        *(v157 + 1) = &off_1F3807848;
        swift_unknownObjectWeakAssign();
        v144 = v193;
        v193[3] = v154;
        v145 = &unk_1EBBEC260;
        v146 = type metadata accessor for HeightPickerItem;
      }

      else
      {
        if (*a1)
        {
          if (v37 == 2)
          {
            v109 = v35;
            sub_1BA120D48(v192, v35, sub_1BA11E7F8);
            v110 = type metadata accessor for ConfirmDetailsProvider.Details();
            v111 = (*(*(v110 - 8) + 48))(v109, 1, v110);
            v112 = v191;
            if (v111 == 1)
            {
              sub_1BA11FEE8(v109, sub_1BA11E7F8);
              v113 = sub_1BA4A1148();
              (*(*(v113 - 8) + 56))(v112, 1, 1, v113);
            }

            else
            {
              sub_1BA120D48(v109 + *(v110 + 20), v191, sub_1BA11FF48);
              sub_1BA11FEE8(v109, type metadata accessor for ConfirmDetailsProvider.Details);
            }

            v158 = *(v194 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_defaultAge);
            v159 = type metadata accessor for BirthdayPickerItem();
            v160 = swift_allocObject();
            *(v160 + 24) = 0;
            swift_unknownObjectWeakInit();
            v161 = OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem____lazy_storage___calendar;
            v162 = sub_1BA4A18A8();
            (*(*(v162 - 8) + 56))(v160 + v161, 1, 1, v162);
            v163 = OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_currentValue;
            v164 = sub_1BA4A1148();
            (*(*(v164 - 8) + 56))(v160 + v163, 1, 1, v164);
            swift_beginAccess();
            sub_1BA120DB0(v112, v160 + v163, sub_1BA11FF48);
            swift_endAccess();
            *(v160 + OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_defaultAge) = v158;
            v165 = (v160 + OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_dateGenerator);
            *v165 = sub_1BA0198D0;
            v165[1] = 0;
            swift_beginAccess();
            *(v160 + 24) = &off_1F3807878;
            swift_unknownObjectWeakAssign();
            v166 = v193;
            v193[3] = v159;
            result = sub_1BA120E80(&qword_1EBBEC258, type metadata accessor for BirthdayPickerItem);
            v166[4] = result;
            *v166 = v160;
          }

          else
          {
            result = sub_1BA4A8018();
            __break(1u);
          }

          return result;
        }

        sub_1BA120D48(v192, v17, sub_1BA11E7F8);
        v43 = type metadata accessor for ConfirmDetailsProvider.Details();
        v44 = 1;
        v45 = (*(*(v43 - 8) + 48))(v17, 1, v43);
        v46 = sub_1BA11E7F8;
        if (v45 == 1)
        {
          v47 = 0;
        }

        else
        {
          v47 = *v17;
          v44 = v17[8];
          v46 = type metadata accessor for ConfirmDetailsProvider.Details;
        }

        sub_1BA11FEE8(v17, v46);
        v139 = type metadata accessor for BiologicalSexPickerItem();
        v140 = objc_allocWithZone(v139);
        *&v140[OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v141 = &v140[OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_currentValue];
        *v141 = v47;
        v141[8] = v44;
        v213.receiver = v140;
        v213.super_class = v139;
        v142 = objc_msgSendSuper2(&v213, sel_init);
        v143 = &v142[OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_delegate];
        swift_beginAccess();
        *(v143 + 1) = &off_1F3807888;
        swift_unknownObjectWeakAssign();
        v144 = v193;
        v193[3] = v139;
        v145 = &unk_1EBBEC270;
        v146 = type metadata accessor for BiologicalSexPickerItem;
      }

      result = sub_1BA120E80(v145, v146);
      v144[4] = result;
      *v144 = v142;
      return result;
    }

    v192 = *a1;
    v189 = a1[7];
    v188 = *(a1 + 5);
    v190 = *(a1 + 1);
    v50 = *(a1 + 2);
    v187 = *(a1 + 1);
    v51 = *(a1 + 4);
    v185 = *(a1 + 3);
    v52 = *(a1 + 8);
    v186 = *(a1 + 9);
    v53 = *(a1 + 5);
    v54 = *(a1 + 6);
    v55 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_multiselectValues;
    v56 = v194;
    swift_beginAccess();
    v57 = *(v56 + v55);
    if (*(v57 + 16))
    {

      v58 = sub_1B9F24A34(v51, v53);
      if (v59)
      {
        LOBYTE(v60) = *(*(v57 + 56) + v58);
        goto LABEL_51;
      }
    }

    v183 = v53;
    v184 = v51;
    v72 = *(v54 + 16);
    if (!v72)
    {
      v191 = MEMORY[0x1E69E7CC0];
LABEL_45:
      v85 = *(v191 + 2);
      if (v85)
      {
        v86 = v191 + 32;
        v60 = v191[32];
        v51 = v184;
        v53 = v183;
        v87 = v190;
        v88 = v189;
        v89 = v188;
        while (v85)
        {
          v90 = *v86++;
          --v85;
          if (v60 != v90)
          {
            LOBYTE(v60) = 0;
            goto LABEL_52;
          }
        }

        goto LABEL_52;
      }

      LOBYTE(v60) = 0;
      v51 = v184;
      v53 = v183;
LABEL_51:
      v87 = v190;
      v88 = v189;
      v89 = v188;
LABEL_52:
      v91 = v87 | ((v89 | (v88 << 16)) << 32);

      LOBYTE(v195) = v192;
      if (v185)
      {
        v92 = v50;
      }

      else
      {
        v92 = 0;
      }

      v194 = v92;
      v93 = 0xE000000000000000;
      HIBYTE(v195) = BYTE6(v91);
      *(&v195 + 5) = WORD2(v91);
      if (v185)
      {
        v93 = v185;
      }

      v191 = v93;
      *(&v195 + 1) = v91;
      v94 = v187;
      v196 = v187;
      v95 = v186;

      swift_bridgeObjectRetain_n();

      MEMORY[0x1BFAF1350](95, 0xE100000000000000);

      MEMORY[0x1BFAF1350](v51, v53);

      v190 = v195;
      v96 = v196;
      v97 = v193;
      v193[3] = &type metadata for MultiselectItem;
      v97[4] = sub_1BA120A24();
      v98 = swift_allocObject();
      *v97 = v98;
      v195 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v196 = v99;

      MEMORY[0x1BFAF1350](46, 0xE100000000000000);

      if (!v95)
      {
        v52 = 0x6C657369746C754DLL;
        v95 = 0xEF6D657449746365;
      }

      MEMORY[0x1BFAF1350](v52, v95);

      v100 = v195;
      v101 = v196;
      v102 = v60 & 1;
      if (v102)
      {
        v103 = 0x44455443454C4553;
      }

      else
      {
        v103 = 0x5443454C45534E55;
      }

      if (v102)
      {
        v104 = 0xE800000000000000;
      }

      else
      {
        v104 = 0xEA00000000004445;
      }

      v195 = v190;
      v196 = v96;

      MEMORY[0x1BFAF1350](v103, v104);

      v106 = v196;
      v107 = v192 | (v91 << 8);
      *(v98 + 16) = v195;
      *(v98 + 24) = v106;
      *(v98 + 32) = v107;
      *(v98 + 40) = v94;
      v108 = v191;
      *(v98 + 48) = v194;
      *(v98 + 56) = v108;
      *(v98 + 64) = v100;
      *(v98 + 72) = v101;
      *(v98 + 80) = v102;
      return result;
    }

    v73 = 0;
    v180 = v72 - 1;
    v191 = MEMORY[0x1E69E7CC0];
    v182 = v52;
    v181 = v50;
LABEL_30:
    v74 = (v54 + 48 + 24 * v73);
    v48 = v73;
    while (1)
    {
      if (v48 >= *(v54 + 16))
      {
        __break(1u);
        goto LABEL_104;
      }

      v75 = *(v194 + v55);
      if (*(v75 + 16))
      {
        LOBYTE(v32) = *v74;
        v77 = *(v74 - 2);
        v76 = *(v74 - 1);

        v78 = sub_1B9F24A34(v77, v76);
        if (v79)
        {
          v80 = *(*(v75 + 56) + v78);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v191 = sub_1BA27F96C(0, *(v191 + 2) + 1, 1, v191);
          }

          v50 = v181;
          v82 = *(v191 + 2);
          v81 = *(v191 + 3);
          if (v82 >= v81 >> 1)
          {
            v191 = sub_1BA27F96C((v81 > 1), v82 + 1, 1, v191);
          }

          v73 = v48 + 1;
          v83 = v191;
          *(v191 + 2) = v82 + 1;
          v83[v82 + 32] = (v32 ^ v80) & 1;
          v84 = v180 == v48;
          v52 = v182;
          if (v84)
          {
            goto LABEL_45;
          }

          goto LABEL_30;
        }
      }

      ++v48;
      v74 += 24;
      if (v72 == v48)
      {
        v52 = v182;
        v50 = v181;
        goto LABEL_45;
      }
    }
  }

  if (v38)
  {
    v48 = v192;
    if (v37)
    {
      sub_1BA120D48(v192, v23, sub_1BA11E7F8);
      v49 = type metadata accessor for ConfirmDetailsProvider.Details();
      if ((*(*(v49 - 8) + 48))(v23, 1, v49) == 1)
      {
        sub_1BA11FEE8(v23, sub_1BA11E7F8);
        LOBYTE(v32) = 2;
      }

      else
      {
        LOBYTE(v32) = v23[*(v49 + 36)];
        sub_1BA11FEE8(v23, type metadata accessor for ConfirmDetailsProvider.Details);
      }

      if (qword_1EDC5E100 != -1)
      {
LABEL_104:
        swift_once();
      }

      v114 = sub_1BA4A1318();
      v116 = v115;
      v117 = sub_1BA4A1318();
      v204 = v114;
      v205 = v116;
      v206 = v117;
      v207 = v118;
      strcpy(v208, "betaBlockers");
      BYTE5(v208[1]) = 0;
      HIWORD(v208[1]) = -5120;
      v209 = MEMORY[0x1E69E7CC0];
      LOBYTE(v210) = v32;
      BYTE1(v210) = 1;
      v211 = 0;
      v212 = 0;
      v195 = v114;
      v196 = v116;
      v197 = v117;
      v198 = v118;
      v199 = xmmword_1BA4BF5C0;
      v200 = MEMORY[0x1E69E7CC0];
      v201 = v210 & 0x1FF | 0xC000000000000000;
    }

    else
    {
      sub_1BA120D48(v192, v20, sub_1BA11E7F8);
      v65 = type metadata accessor for ConfirmDetailsProvider.Details();
      if ((*(*(v65 - 8) + 48))(v20, 1, v65) == 1)
      {
        sub_1BA11FEE8(v20, sub_1BA11E7F8);
        v66 = 2;
      }

      else
      {
        v66 = v20[*(v65 + 32)];
        sub_1BA11FEE8(v20, type metadata accessor for ConfirmDetailsProvider.Details);
      }

      if (qword_1EDC5E100 != -1)
      {
        swift_once();
      }

      v123 = sub_1BA4A1318();
      v125 = v124;
      v126 = sub_1BA4A1318();
      v204 = v123;
      v205 = v125;
      v206 = v126;
      v207 = v127;
      v208[0] = 0xD000000000000016;
      v208[1] = 0x80000001BA4E14F0;
      v209 = MEMORY[0x1E69E7CC0];
      LOBYTE(v210) = v66;
      BYTE1(v210) = 1;
      v211 = 0;
      v212 = 0;
      v195 = v123;
      v196 = v125;
      v197 = v126;
      v198 = v127;
      *&v199 = 0xD000000000000016;
      *(&v199 + 1) = 0x80000001BA4E14F0;
      v200 = MEMORY[0x1E69E7CC0];
      v201 = v210 & 0x1FF | 0xC000000000000000;
    }

    v202 = 0;
    v203 = 0;
    sub_1BA11CC0C(&v195, v48);
    return sub_1BA120A78(&v204);
  }

  else if (*a1 <= 1u)
  {
    if (*a1)
    {
      v135 = v192;
      v136 = type metadata accessor for CompactDatePickerItem();
      v137 = v193;
      v193[3] = v136;
      v137[4] = sub_1BA120E80(&qword_1EBBEC278, type metadata accessor for CompactDatePickerItem);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v137);
      sub_1BA11C4D8(v135, boxed_opaque_existential_1);
      *(boxed_opaque_existential_1 + *(v136 + 32) + 8) = &off_1F3807868;

      return swift_unknownObjectWeakAssign();
    }

    else
    {
      sub_1BA120D48(v192, &v179 - v34, sub_1BA11E7F8);
      v67 = type metadata accessor for ConfirmDetailsProvider.Details();
      v68 = 1;
      v69 = (*(*(v67 - 8) + 48))(v36, 1, v67);
      v70 = sub_1BA11E7F8;
      if (v69 == 1)
      {
        v71 = 0;
      }

      else
      {
        v71 = *v36;
        v68 = v36[8];
        v70 = type metadata accessor for ConfirmDetailsProvider.Details;
      }

      sub_1BA11FEE8(v36, v70);
      v178 = v193;
      v193[3] = &type metadata for BiologicalSexItem;
      result = sub_1BA120BB4();
      v178[4] = result;
      *v178 = v71;
      *(v178 + 8) = v68;
    }
  }

  else if (v37 == 2)
  {
    sub_1BA120D48(v192, v32, sub_1BA11E7F8);
    v128 = type metadata accessor for ConfirmDetailsProvider.Details();
    if ((*(*(v128 - 8) + 48))(v32, 1, v128) == 1)
    {
      sub_1BA11FEE8(v32, sub_1BA11E7F8);
      v129 = sub_1BA4A1148();
      v130 = v190;
      (*(*(v129 - 8) + 56))(v190, 1, 1, v129);
    }

    else
    {
      v130 = v190;
      sub_1BA120D48(v32 + *(v128 + 20), v190, sub_1BA11FF48);
      sub_1BA11FEE8(v32, type metadata accessor for ConfirmDetailsProvider.Details);
    }

    v167 = type metadata accessor for DateOfBirthItem();
    v168 = v193;
    v193[3] = v167;
    v168[4] = sub_1BA120E80(&qword_1EBBEC290, type metadata accessor for DateOfBirthItem);
    v169 = __swift_allocate_boxed_opaque_existential_1(v168);
    return DateOfBirthItem.init(dateOfBirthComponents:dateGenerator:)(v130, sub_1BA0198D0, 0, v169);
  }

  else if (v37 == 3)
  {
    sub_1BA120D48(v192, v29, sub_1BA11E7F8);
    v39 = type metadata accessor for ConfirmDetailsProvider.Details();
    v40 = (*(*(v39 - 8) + 48))(v29, 1, v39);
    v41 = sub_1BA11E7F8;
    if (v40 == 1)
    {
      v42 = 0;
    }

    else
    {
      v42 = *&v29[*(v39 + 24)];
      v170 = v42;
      v41 = type metadata accessor for ConfirmDetailsProvider.Details;
    }

    sub_1BA11FEE8(v29, v41);
    v171 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_valueFormatter;
    v172 = v193;
    v193[3] = &type metadata for WeightItem;
    v172[4] = sub_1BA120B20();
    v173 = swift_allocObject();
    *v172 = v173;
    result = sub_1B9F0A534(v194 + v171, v173 + 24);
    *(v173 + 16) = v42;
  }

  else
  {
    sub_1BA120D48(v192, v26, sub_1BA11E7F8);
    v131 = type metadata accessor for ConfirmDetailsProvider.Details();
    v132 = (*(*(v131 - 8) + 48))(v26, 1, v131);
    v133 = sub_1BA11E7F8;
    if (v132 == 1)
    {
      v134 = 0;
    }

    else
    {
      v134 = *&v26[*(v131 + 28)];
      v174 = v134;
      v133 = type metadata accessor for ConfirmDetailsProvider.Details;
    }

    sub_1BA11FEE8(v26, v133);
    v175 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_valueFormatter;
    v176 = v193;
    v193[3] = &type metadata for HeightItem;
    v176[4] = sub_1BA120ACC();
    v177 = swift_allocObject();
    *v176 = v177;
    result = sub_1B9F0A534(v194 + v175, v177 + 24);
    *(v177 + 16) = v134;
  }

  return result;
}

uint64_t sub_1BA11E53C()
{
  sub_1BA11FEE8(v0 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails, sub_1BA11E7F8);

  sub_1B9FAB600(v0 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_delegate);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_valueFormatter);
  v1 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_calendar;
  v2 = sub_1BA4A18A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BA11FEE8(v0 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel____lazy_storage___defaultDateOfBirth, sub_1BA11E82C);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConfirmDetailsModel()
{
  result = qword_1EBBEC230;
  if (!qword_1EBBEC230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA11E6C4()
{
  sub_1BA11E7F8(319);
  if (v0 <= 0x3F)
  {
    sub_1BA4A18A8();
    if (v1 <= 0x3F)
    {
      sub_1BA11E82C(319);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BA11E860(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA11E8D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v55 = a2;
  v49[1] = *v2;
  v51 = sub_1BA4A3EA8();
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v59 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA11FEB4(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v56 = (v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = sub_1BA4A1998();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v60 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA11E7F8(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1BA4A1148();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_calendar;
  sub_1BA11E860(0, &qword_1EBBEC248, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v13 = sub_1BA4A1898();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BA4B9FD0;
  v18 = v17 + v16;
  v19 = *(v14 + 104);
  v19(v18, *MEMORY[0x1E6969A48], v13);
  v19(v18 + v15, *MEMORY[0x1E6969A78], v13);
  v19(v18 + 2 * v15, *MEMORY[0x1E6969A68], v13);
  v20 = v12;
  sub_1B9FF6D00(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1BA4A1808();

  v21 = sub_1BA119530();
  v23 = v22;
  v24 = type metadata accessor for ConfirmDetailsProvider.Details();
  if ((*(*(v24 - 8) + 48))(v23, 1, v24))
  {
    (v21)(v61, 0);
    v25 = v54;
    v26 = v53;
  }

  else
  {
    v27 = *(v24 + 20);
    sub_1BA11FEE8(v23 + v27, sub_1BA11FF48);
    v26 = v53;
    v25 = v54;
    (*(v53 + 16))(v23 + v27, v20, v54);
    (*(v26 + 56))(v23 + v27, 0, 1, v25);
    (v21)(v61, 0);
  }

  *&v61[0] = 1;
  v62 = 0;
  v28 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_1BA120D48(v3 + v28, v10, sub_1BA11E7F8);
  sub_1BA11CC0C(v61, v10, v63);
  sub_1BA11FEE8(v10, sub_1BA11E7F8);
  *&v61[0] = 1;
  v62 = 0;
  v29 = v56;
  sub_1BA11B40C(v61, v56);
  v30 = v57;
  v31 = v58;
  v32 = (*(v57 + 48))(v29, 1, v58) == 1;
  v33 = v59;
  if (v32)
  {
    __swift_destroy_boxed_opaque_existential_1(v63);
    (*(v26 + 8))(v20, v25);
    return sub_1BA11FEE8(v29, sub_1BA11FEB4);
  }

  else
  {
    (*(v30 + 32))(v60, v29, v31);
    sub_1BA4A3DD8();
    v35 = sub_1BA4A3E88();
    v36 = sub_1BA4A6FC8();
    v56 = v35;
    if (os_log_type_enabled(v35, v36))
    {
      v38 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v61[0] = v55;
      *v38 = 136446466;
      v39 = sub_1BA4A85D8();
      v41 = sub_1B9F0B82C(v39, v40, v61);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2082;
      *(v38 + 14) = sub_1B9F0B82C(0xD00000000000002ALL, 0x80000001BA4EC050, v61);
      v42 = v56;
      _os_log_impl(&dword_1B9F07000, v56, v36, "[%{public}s.%{public}s]: updating date of birth value", v38, 0x16u);
      v43 = v55;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v43, -1, -1);
      MEMORY[0x1BFAF43A0](v38, -1, -1);

      (*(v50 + 8))(v59, v51);
    }

    else
    {

      (*(v50 + 8))(v33, v51);
    }

    v44 = v3 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_delegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    v46 = v60;
    if (Strong)
    {
      v47 = *(v44 + 1);
      ObjectType = swift_getObjectType();
      (*(v47 + 8))(v46, v63, ObjectType, v47);
      swift_unknownObjectRelease();
    }

    (*(v30 + 8))(v46, v31);
    __swift_destroy_boxed_opaque_existential_1(v63);
    return (*(v26 + 8))(v20, v25);
  }
}

uint64_t sub_1BA11F15C()
{
  v1 = v0;
  sub_1BA11E7F8(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14[-v6];
  v8 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_1BA120D48(v1 + v8, v7, sub_1BA11E7F8);
  v9 = type metadata accessor for ConfirmDetailsProvider.Details();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9))
  {
    v11 = 2;
  }

  else
  {
    v11 = v7[*(v9 + 36)];
  }

  sub_1BA11FEE8(v7, sub_1BA11E7F8);
  swift_beginAccess();
  sub_1B9FEF394(v11, 0x636F6C4261746562, 0xEC0000007372656BLL);
  swift_endAccess();
  sub_1BA120D48(v1 + v8, v4, sub_1BA11E7F8);
  if (v10(v4, 1, v9))
  {
    v12 = 2;
  }

  else
  {
    v12 = v4[*(v9 + 32)];
  }

  sub_1BA11FEE8(v4, sub_1BA11E7F8);
  swift_beginAccess();
  sub_1B9FEF394(v12, 0xD000000000000016, 0x80000001BA4E14F0);
  return swift_endAccess();
}

uint64_t sub_1BA11F3A8(char *a1)
{
  v2 = v1;
  v45 = a1;
  v3 = *v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  v46 = v4;
  v47 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA11FEB4(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1BA4A1998();
  v11 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA11E7F8(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BA119530();
  v19 = v18;
  v20 = type metadata accessor for ConfirmDetailsProvider.Details();
  if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    v44 = v11;
    v21 = *(v20 + 20);
    sub_1BA11FEE8(v19 + v21, sub_1BA11FF48);
    v22 = sub_1BA4A1148();
    v23 = *(v22 - 8);
    v43[1] = v3;
    v24 = v7;
    v25 = v13;
    v26 = v23;
    (*(v23 + 16))(v19 + v21, v45, v22);
    v27 = v19 + v21;
    v11 = v44;
    (*(v26 + 56))(v27, 0, 1, v22);
    v13 = v25;
    v7 = v24;
  }

  (v17)(v49, 0);
  *&v49[0] = 2;
  v50 = 0;
  v28 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_1BA120D48(v2 + v28, v16, sub_1BA11E7F8);
  sub_1BA11CC0C(v49, v16, v51);
  sub_1BA11FEE8(v16, sub_1BA11E7F8);
  *&v49[0] = 2;
  v50 = 0;
  sub_1BA11B40C(v49, v10);
  if ((*(v11 + 48))(v10, 1, v48) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v51);
    return sub_1BA11FEE8(v10, sub_1BA11FEB4);
  }

  else
  {
    v30 = *(v11 + 32);
    v45 = v13;
    v30(v13, v10, v48);
    sub_1BA4A3DD8();
    v31 = sub_1BA4A3E88();
    v32 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v49[0] = v34;
      *v33 = 136446466;
      v35 = sub_1BA4A85D8();
      v37 = sub_1B9F0B82C(v35, v36, v49);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2082;
      *(v33 + 14) = sub_1B9F0B82C(0xD000000000000032, 0x80000001BA4EC010, v49);
      _os_log_impl(&dword_1B9F07000, v31, v32, "[%{public}s.%{public}s]: updating date of birth value", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v34, -1, -1);
      MEMORY[0x1BFAF43A0](v33, -1, -1);
    }

    (*(v47 + 8))(v7, v46);
    v38 = v2 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_delegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    v40 = v45;
    if (Strong)
    {
      v41 = *(v38 + 1);
      ObjectType = swift_getObjectType();
      (*(v41 + 8))(v40, v51, ObjectType, v41);
      swift_unknownObjectRelease();
    }

    (*(v11 + 8))(v40, v48);
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }
}

uint64_t sub_1BA11F96C(uint64_t a1)
{
  v2 = v1;
  v40 = *v1;
  sub_1BA11E7F8(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A3EA8();
  v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA11FEB4(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A1998();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v43[0] = 0;
  v44 = 0;
  sub_1BA11B40C(v43, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1BA11FEE8(v12, sub_1BA11FEB4);
  }

  (*(v14 + 32))(v16, v12, v13);
  sub_1BA4A3DD8();
  v18 = sub_1BA4A3E88();
  v19 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v39 = a1;
    v21 = v20;
    v38 = swift_slowAlloc();
    *&v43[0] = v38;
    *v21 = 136446466;
    v22 = sub_1BA4A85D8();
    v37 = v18;
    v24 = sub_1B9F0B82C(v22, v23, v43);
    v40 = v7;
    v25 = v24;

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_1B9F0B82C(0xD000000000000032, 0x80000001BA4EBFD0, v43);
    v26 = v37;
    _os_log_impl(&dword_1B9F07000, v37, v19, "[%{public}s.%{public}s]: updating biological sex value", v21, 0x16u);
    v27 = v38;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v27, -1, -1);
    v28 = v21;
    a1 = v39;
    MEMORY[0x1BFAF43A0](v28, -1, -1);

    (*(v41 + 8))(v9, v40);
  }

  else
  {

    (*(v41 + 8))(v9, v7);
  }

  v29 = sub_1BA119530();
  v31 = v30;
  v32 = type metadata accessor for ConfirmDetailsProvider.Details();
  if (!(*(*(v32 - 8) + 48))(v31, 1, v32))
  {
    *v31 = a1;
    *(v31 + 8) = 0;
  }

  (v29)(v43, 0);
  *&v43[0] = 0;
  v44 = 0;
  v33 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_1BA120D48(v2 + v33, v6, sub_1BA11E7F8);
  sub_1BA11CC0C(v43, v6, v42);
  sub_1BA11FEE8(v6, sub_1BA11E7F8);
  v34 = v2 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v35 = *(v34 + 1);
    ObjectType = swift_getObjectType();
    (*(v35 + 8))(v16, v42, ObjectType, v35);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v42);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1BA11FEE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA11FF7C(void *a1)
{
  v2 = v1;
  v46 = *v1;
  sub_1BA11E7F8(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A3EA8();
  v47 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA11FEB4(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A1998();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v49[0] = 3;
  v50 = 0;
  sub_1BA11B40C(v49, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1BA11FEE8(v12, sub_1BA11FEB4);
  }

  (*(v14 + 32))(v16, v12, v13);
  sub_1BA4A3DD8();
  v18 = sub_1BA4A3E88();
  v19 = sub_1BA4A6FC8();
  v20 = os_log_type_enabled(v18, v19);
  v45 = a1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v43 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v44 = v6;
    v24 = v23;
    *&v49[0] = v23;
    *v22 = 136446466;
    v25 = sub_1BA4A85D8();
    v46 = v7;
    v27 = sub_1B9F0B82C(v25, v26, v49);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_1B9F0B82C(0xD000000000000024, 0x80000001BA4EC080, v49);
    _os_log_impl(&dword_1B9F07000, v18, v19, "[%{public}s.%{public}s]: updating weight value", v22, 0x16u);
    swift_arrayDestroy();
    v28 = v24;
    v6 = v44;
    MEMORY[0x1BFAF43A0](v28, -1, -1);
    v29 = v22;
    v13 = v43;
    MEMORY[0x1BFAF43A0](v29, -1, -1);

    (*(v47 + 8))(v9, v46);
  }

  else
  {

    (*(v47 + 8))(v9, v7);
  }

  v30 = sub_1BA119530();
  v32 = v31;
  v33 = type metadata accessor for ConfirmDetailsProvider.Details();
  if (!(*(*(v33 - 8) + 48))(v32, 1, v33))
  {
    v34 = *(v33 + 24);
    v35 = v16;
    v36 = *(v32 + v34);
    v37 = v45;
    *(v32 + v34) = v45;
    v38 = v37;

    v16 = v35;
  }

  (v30)(v49, 0);
  *&v49[0] = 3;
  v50 = 0;
  v39 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_1BA120D48(v2 + v39, v6, sub_1BA11E7F8);
  sub_1BA11CC0C(v49, v6, v48);
  sub_1BA11FEE8(v6, sub_1BA11E7F8);
  v40 = v2 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v41 = *(v40 + 1);
    ObjectType = swift_getObjectType();
    (*(v41 + 8))(v16, v48, ObjectType, v41);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v48);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1BA1204D0(void *a1)
{
  v2 = v1;
  v46 = *v1;
  sub_1BA11E7F8(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A3EA8();
  v47 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA11FEB4(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A1998();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v49[0] = 4;
  v50 = 0;
  sub_1BA11B40C(v49, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1BA11FEE8(v12, sub_1BA11FEB4);
  }

  (*(v14 + 32))(v16, v12, v13);
  sub_1BA4A3DD8();
  v18 = sub_1BA4A3E88();
  v19 = sub_1BA4A6FC8();
  v20 = os_log_type_enabled(v18, v19);
  v45 = a1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v43 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v44 = v6;
    v24 = v23;
    *&v49[0] = v23;
    *v22 = 136446466;
    v25 = sub_1BA4A85D8();
    v46 = v7;
    v27 = sub_1B9F0B82C(v25, v26, v49);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_1B9F0B82C(0xD000000000000024, 0x80000001BA4EC0B0, v49);
    _os_log_impl(&dword_1B9F07000, v18, v19, "[%{public}s.%{public}s]: updating height value", v22, 0x16u);
    swift_arrayDestroy();
    v28 = v24;
    v6 = v44;
    MEMORY[0x1BFAF43A0](v28, -1, -1);
    v29 = v22;
    v13 = v43;
    MEMORY[0x1BFAF43A0](v29, -1, -1);

    (*(v47 + 8))(v9, v46);
  }

  else
  {

    (*(v47 + 8))(v9, v7);
  }

  v30 = sub_1BA119530();
  v32 = v31;
  v33 = type metadata accessor for ConfirmDetailsProvider.Details();
  if (!(*(*(v33 - 8) + 48))(v32, 1, v33))
  {
    v34 = *(v33 + 28);
    v35 = v16;
    v36 = *(v32 + v34);
    v37 = v45;
    *(v32 + v34) = v45;
    v38 = v37;

    v16 = v35;
  }

  (v30)(v49, 0);
  *&v49[0] = 4;
  v50 = 0;
  v39 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_1BA120D48(v2 + v39, v6, sub_1BA11E7F8);
  sub_1BA11CC0C(v49, v6, v48);
  sub_1BA11FEE8(v6, sub_1BA11E7F8);
  v40 = v2 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v41 = *(v40 + 1);
    ObjectType = swift_getObjectType();
    (*(v41 + 8))(v16, v48, ObjectType, v41);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v48);
  return (*(v14 + 8))(v16, v13);
}

unint64_t sub_1BA120A24()
{
  result = qword_1EBBEC250;
  if (!qword_1EBBEC250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC250);
  }

  return result;
}

unint64_t sub_1BA120ACC()
{
  result = qword_1EBBEC280;
  if (!qword_1EBBEC280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC280);
  }

  return result;
}

unint64_t sub_1BA120B20()
{
  result = qword_1EBBEC288;
  if (!qword_1EBBEC288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC288);
  }

  return result;
}

uint64_t objectdestroy_23Tm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

unint64_t sub_1BA120BB4()
{
  result = qword_1EBBEC298;
  if (!qword_1EBBEC298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC298);
  }

  return result;
}

uint64_t sub_1BA120C08(uint64_t a1, uint64_t a2)
{
  sub_1B9F7B6A0();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA120C84(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v9[2] = a1[2];
  v9[3] = v3;
  v9[4] = a1[4];
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = v2[3];
  v8[2] = v2[2];
  v8[3] = v5;
  v8[4] = v2[4];
  v6 = v2[1];
  v8[0] = *v2;
  v8[1] = v6;
  return _s18HealthExperienceUI21ConfirmDetailsSectionV3RowO2eeoiySbAE_AEtFZ_0(v9, v8) & 1;
}

uint64_t sub_1BA120CF4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v6[1] = *(v2 + 16);
  result = sub_1BA24AAD8(sub_1BA120EC8, v6, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1BA120D48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA120DB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA120E18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA120E80(unint64_t *a1, void (*a2)(uint64_t))
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

void *BasicPromotionDismissalStateManager.__allocating_init(healthStore:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  sub_1BA4A2438();
  swift_allocObject();
  v5[2] = sub_1BA4A2408();
  v5[3] = a2;
  v5[4] = a3;
  return v5;
}

void *BasicPromotionDismissalStateManager.init(healthStore:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BA4A2438();
  swift_allocObject();
  v3[2] = sub_1BA4A2408();
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t sub_1BA12102C()
{
  sub_1BA4A2428();
  sub_1BA1210D4();
  sub_1BA121400(&qword_1EBBEC2A8, sub_1BA1210D4);
  v0 = sub_1BA4A4F98();

  return v0;
}

void sub_1BA1210D4()
{
  if (!qword_1EBBEC2A0)
  {
    sub_1B9FED358();
    v0 = sub_1BA4A4E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEC2A0);
    }
  }
}

uint64_t sub_1BA121140()
{
  sub_1BA1212E4();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[1] = sub_1BA4A2418();
  sub_1BA121380();
  sub_1BA121400(&qword_1EDC5F3E8, sub_1BA121380);
  sub_1BA4A4FE8();

  sub_1BA121400(&qword_1EDC5F668, sub_1BA1212E4);
  v5 = sub_1BA4A4F98();
  (*(v2 + 8))(v4, v1);
  return v5;
}

void sub_1BA1212E4()
{
  if (!qword_1EDC5F660)
  {
    sub_1BA121380();
    sub_1BA121400(&qword_1EDC5F3E8, sub_1BA121380);
    v0 = sub_1BA4A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F660);
    }
  }
}

void sub_1BA121380()
{
  if (!qword_1EDC5F3E0)
  {
    sub_1B9F1174C();
    sub_1B9FED358();
    v0 = sub_1BA4A4E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F3E0);
    }
  }
}

uint64_t sub_1BA121400(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t BasicPromotionDismissalStateManager.deinit()
{

  return v0;
}

uint64_t BasicPromotionDismissalStateManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA1214B0()
{
  sub_1BA4A2428();
  sub_1BA1210D4();
  sub_1BA121400(&qword_1EBBEC2A8, sub_1BA1210D4);
  v0 = sub_1BA4A4F98();

  return v0;
}

uint64_t sub_1BA121558()
{
  sub_1BA1212E4();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[1] = sub_1BA4A2418();
  sub_1BA121380();
  sub_1BA121400(&qword_1EDC5F3E8, sub_1BA121380);
  sub_1BA4A4FE8();

  sub_1BA121400(&qword_1EDC5F668, sub_1BA1212E4);
  v5 = sub_1BA4A4F98();
  (*(v2 + 8))(v4, v1);
  return v5;
}

void *ProfileSharingShareAccessViewController.init(healthExperienceStore:healthStore:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI39ProfileSharingShareAccessViewController_profileSharingDescription;
  if (qword_1EBBE81F8 != -1)
  {
    swift_once();
  }

  v7 = &v3[v6];
  v8 = *algn_1EBC092E8;
  *v7 = qword_1EBC092E0;
  *(v7 + 1) = v8;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI39ProfileSharingShareAccessViewController_profileBeingShared;
  v10 = sub_1BA4A2888();
  (*(*(v10 - 8) + 56))(&v3[v9], 1, 1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  v11 = sub_1BA4A1B68();
  v12 = [a2 profileIdentifier];
  type metadata accessor for HealthKitProfileInformationDataSource();
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI39ProfileSharingShareAccessViewController_dataSource] = sub_1BA2B8F0C(v11, v12, 0, 0, sub_1BA121AB8, 0);
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_doneButton] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_cancelButton] = 0;

  v13 = sub_1BA4A6758();
  v14 = sub_1BA4A6758();

  v20.receiver = v3;
  v20.super_class = type metadata accessor for OnboardingViewControllerWithNextButton();
  v15 = objc_msgSendSuper2(&v20, sel_initWithTitle_detailText_icon_contentLayout_, v13, v14, 0, 3);

  v16 = v15;
  v17 = [v16 headerView];
  LODWORD(v18) = 1036831949;
  [v17 setTitleHyphenationFactor_];

  (*((*MEMORY[0x1E69E7D40] & *v16) + 0xB8))(0);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v16;
}

id sub_1BA121AB8()
{
  if (qword_1EDC6D268 != -1)
  {
    swift_once();
  }

  v3[4] = xmmword_1EDC6D2B0;
  v3[5] = *&qword_1EDC6D2C0;
  v3[6] = xmmword_1EDC6D2D0;
  v3[7] = unk_1EDC6D2E0;
  v3[0] = xmmword_1EDC6D270;
  v3[1] = *&qword_1EDC6D280;
  v3[2] = xmmword_1EDC6D290;
  v3[3] = *&qword_1EDC6D2A0;
  sub_1BA0117AC();
  v2[4] = xmmword_1EDC6D2B0;
  v2[5] = *&qword_1EDC6D2C0;
  v2[6] = xmmword_1EDC6D2D0;
  v2[7] = unk_1EDC6D2E0;
  v2[0] = xmmword_1EDC6D270;
  v2[1] = *&qword_1EDC6D280;
  v2[2] = xmmword_1EDC6D290;
  v2[3] = *&qword_1EDC6D2A0;
  sub_1B9F1D9A4(v3, &v1);
  return sub_1B9F293A8(v2);
}

void sub_1BA121B7C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_1BA121ED8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = UIViewController.resolvedHealthStore.getter();
  if (v6)
  {
    v7 = v6;
    UIViewController.resolvedHealthExperienceStore.getter(&v15);
    sub_1BA06FE18(v0 + OBJC_IVAR____TtC18HealthExperienceUI39ProfileSharingShareAccessViewController_profileBeingShared, v5);
    v8 = sub_1BA4A2888();
    if ((*(*(v8 - 8) + 48))(v5, 1, v8) != 1)
    {
      v9 = objc_allocWithZone(type metadata accessor for ProfileSharingYouShouldKnowViewController());
      v10 = sub_1BA31C950(&v15, v5);
      [v1 showViewController:v10 sender:0];

      return;
    }

    __break(1u);
  }

  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1BA4A7DF8();
  v15 = ObjectType;
  swift_getMetatypeMetadata();
  v11 = sub_1BA4A6808();
  v13 = v12;

  v15 = v11;
  v16 = v13;
  MEMORY[0x1BFAF1350](0xD000000000000020, 0x80000001BA4EC310);
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA121DEC()
{

  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI39ProfileSharingShareAccessViewController_profileBeingShared;

  return sub_1BA06F9D0(v1);
}

id ProfileSharingShareAccessViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileSharingShareAccessViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA121ED8()
{
  if (!qword_1EDC6E200)
  {
    sub_1BA4A2888();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6E200);
    }
  }
}

uint64_t type metadata accessor for ProfileSharingShareAccessViewController()
{
  result = qword_1EBBEC2C0;
  if (!qword_1EBBEC2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA121F84()
{
  sub_1BA121ED8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id PDFCollectionViewLayout.__allocating_init(pageSize:horizontalInset:)(double a1, double a2, double a3)
{
  v9.receiver = objc_allocWithZone(v3);
  v9.super_class = v3;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [v7 setScrollDirection_];
  [v7 setMinimumLineSpacing_];
  [v7 setItemSize_];
  [v7 setSectionInset_];

  return v7;
}

id PDFCollectionViewLayout.init(pageSize:horizontalInset:)(double a1, double a2, double a3)
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for PDFCollectionViewLayout();
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [v7 setScrollDirection_];
  [v7 setMinimumLineSpacing_];
  [v7 setItemSize_];
  [v7 setSectionInset_];

  return v7;
}

id PDFCollectionViewLayout.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PDFCollectionViewLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PDFCollectionViewLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SearchDataSource.EmptyStateDataSource.deinit()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t SearchDataSource.EmptyStateDataSource.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t SearchDataSource.CompactEmptyStateDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return v0;
}

uint64_t SearchDataSource.CompactEmptyStateDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return swift_deallocClassInstance();
}

uint64_t SearchDataSource.RegularEmptyStateDataSource.layout(for:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  swift_beginAccess();
  v5 = *&qword_1EDC68DF0;
  v6 = sub_1B9F58798(&unk_1F37FC1F8);
  if (v5 <= 0.0)
  {
    result = sub_1BA4A8018();
    __break(1u);
  }

  else
  {
    v7 = v6;
    sub_1B9F0ADF8(0, &qword_1EDC5E2F0);
    *&v19 = v5;
    *(&v19 + 1) = v7;
    v20 = 0uLL;
    *&v21 = 0x4049000000000000;
    v22 = 0uLL;
    *(&v21 + 1) = sub_1BA4A7648();
    *&v23 = sub_1B9F58BC4;
    *(&v23 + 1) = 0;
    v18[0] = v2;
    v18[1] = v3;
    v18[2] = v4;
    v8 = GridLayoutEngine.layout(for:)(v18);
    if (v1)
    {
      v15 = v21;
      v16 = v22;
      v17 = v23;
      v13 = v19;
      v14 = v20;
      return sub_1B9F5A690(&v13);
    }

    else
    {
      v10 = v8;
      v15 = v21;
      v16 = v22;
      v17 = v23;
      v13 = v19;
      v14 = v20;
      sub_1B9F5A690(&v13);
      v11 = [objc_opt_self() estimatedDimension_];
      v12 = sub_1B9F5CA58(v11, 2);

      return v12;
    }
  }

  return result;
}

uint64_t SearchDataSource.RegularEmptyStateDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SearchDataSource.RegularEmptyStateDataSource.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id PresentationBasedCollectionViewListCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PresentationBasedCollectionViewListCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for PresentationBasedCollectionViewListCell();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id PresentationBasedCollectionViewListCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PresentationBasedCollectionViewListCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PresentationBasedCollectionViewListCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PresentationBasedCollectionViewListCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresentationBasedCollectionViewListCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 static ProfileNameCell.layoutConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v2 = unk_1EDC6D3D8;
  v18[4] = xmmword_1EDC6D3C8;
  v18[5] = unk_1EDC6D3D8;
  v3 = xmmword_1EDC6D3E8;
  v4 = unk_1EDC6D3F8;
  v18[6] = xmmword_1EDC6D3E8;
  v18[7] = unk_1EDC6D3F8;
  v5 = xmmword_1EDC6D388;
  v6 = xmmword_1EDC6D398;
  v18[0] = xmmword_1EDC6D388;
  v18[1] = xmmword_1EDC6D398;
  v7 = xmmword_1EDC6D3A8;
  v8 = xmmword_1EDC6D3B8;
  v18[2] = xmmword_1EDC6D3A8;
  v18[3] = xmmword_1EDC6D3B8;
  v9 = *(&xmmword_1EDC6D388 + 1);
  *(a1 + 64) = xmmword_1EDC6D3C8;
  *(a1 + 80) = v2;
  *(a1 + 96) = v3;
  *(a1 + 112) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  sub_1B9F1D9A4(v18, &v17);
  sub_1B9F1DA18(v10, v11, v12, v13);
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  v14 = [objc_opt_self() estimatedDimension_];

  *(a1 + 8) = v14;
  result = *MEMORY[0x1E69DC5C0];
  v16 = *(MEMORY[0x1E69DC5C0] + 16);
  *(a1 + 96) = *MEMORY[0x1E69DC5C0];
  *(a1 + 112) = v16;
  return result;
}

void sub_1BA122E54(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_1BA4A2C18();
  sub_1BA150394(v3 & 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4A2C28();
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label);
    v6 = sub_1BA4A6758();
    [v5 setAccessibilityLabel_];

    v8 = sub_1BA4A6758();

    [v5 setText_];
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label);

    [v7 setText_];
  }
}

double sub_1BA122FA0()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel);
  [v1 bounds];
  [v1 convertRect:0 toView:?];
  v3 = v2;
  [v1 _lastLineBaseline];
  return v3 + v4;
}

uint64_t sub_1BA12302C(char *a1, uint64_t a2)
{
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B8B60;
  v5 = *&a1[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleView];
  v6 = [v5 centerXAnchor];
  v7 = [a1 centerXAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v4 + 32) = v8;
  v9 = [v5 leadingAnchor];
  v10 = [a1 leadingAnchor];
  v11 = (*(a2 + 392))();
  v12 = [v9 constraintGreaterThanOrEqualToAnchor:v10 constant:?];

  *(v4 + 40) = v12;
  v13 = [v5 trailingAnchor];
  v14 = [a1 trailingAnchor];
  v15 = [v13 constraintLessThanOrEqualToAnchor:v14 constant:-v11];

  *(v4 + 48) = v15;
  return v4;
}

uint64_t sub_1BA123214(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = a2(v2, ObjectType);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_1BA12328C(char *a1, uint64_t a2)
{
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B7510;
  v5 = *&a1[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleView];
  v6 = [v5 leadingAnchor];
  v7 = [a1 leadingAnchor];
  v8 = (*(a2 + 392))();
  v9 = [v6 constraintEqualToAnchor:v7 constant:?];

  *(v4 + 32) = v9;
  v10 = [a1 trailingAnchor];
  v11 = [v5 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:v8];

  *(v4 + 40) = v12;
  return v4;
}

char *ProfileNameView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleVibrancyView;
  v12 = [objc_opt_self() effectWithStyle_];
  v13 = [objc_opt_self() effectForBlurEffect:v12 style:4];

  v14 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  v15 = v14;
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setUserInteractionEnabled_];

  *&v5[v11] = v15;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleViewHeightConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleViewTopSpaceConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleLeadingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView____lazy_storage___compactHorizontalSizeConstraints] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView____lazy_storage___regularHorizontalSizeConstraints] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButtonHeightConstraint] = 0;
  v16 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_currentSyncStatus;
  sub_1BA126AA0();
  memset(&v26[1], 0, 32);
  v27 = 0;
  swift_allocObject();
  *&v5[v16] = sub_1BA4A4DF8();
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_syncStatusCancellable] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel] = (*(ObjectType + 440))();
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleView] = (*(ObjectType + 456))();
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButton] = sub_1BA126B34();
  v26[0].receiver = v5;
  v26[0].super_class = type metadata accessor for ProfileNameView();
  v17 = [(objc_super *)v26 initWithFrame:a1, a2, a3, a4];
  sub_1BA1240AC();
  sub_1BA12417C();
  sub_1BA124DCC();
  v18 = *&v17[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleView];
  v19 = OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner;
  v20 = *&v18[OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner];
  v21 = v18;
  [v20 stopAnimating];
  [*&v18[v19] setHidden_];
  v22 = objc_opt_self();
  sub_1BA14F69C();
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v23 = sub_1BA4A6AE8();

  [v22 deactivateConstraints_];

  sub_1BA14F79C();
  v24 = sub_1BA4A6AE8();

  [v22 activateConstraints_];

  return v17;
}

id ProfileNameView.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleVibrancyView;
  v6 = [objc_opt_self() effectWithStyle_];
  v7 = [objc_opt_self() effectForBlurEffect:v6 style:4];

  v8 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  v9 = v8;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setUserInteractionEnabled_];

  *&v2[v5] = v9;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleViewHeightConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleViewTopSpaceConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleLeadingConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView____lazy_storage___compactHorizontalSizeConstraints] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView____lazy_storage___regularHorizontalSizeConstraints] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButtonHeightConstraint] = 0;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_currentSyncStatus;
  sub_1BA126AA0();
  memset(&v13[1], 0, 32);
  v14 = 0;
  swift_allocObject();
  *&v2[v10] = sub_1BA4A4DF8();
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_syncStatusCancellable] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel] = (*(ObjectType + 440))();
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleView] = (*(ObjectType + 456))();
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButton] = sub_1BA126B34();
  v13[0].receiver = v2;
  v13[0].super_class = type metadata accessor for ProfileNameView();
  v11 = [(objc_super *)v13 initWithCoder:a1];

  if (v11)
  {
  }

  return v11;
}

id sub_1BA123998()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v2 = [objc_opt_self() labelColor];
  [v1 setTextColor_];

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setNumberOfLines_];
  v3 = (*(v0 + 472))([v1 setLineBreakMode_]);
  [v1 setFont_];

  [v1 setAdjustsFontForContentSizeCategory_];
  [v1 setTextAlignment_];
  return v1;
}

char *sub_1BA123AB0()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(type metadata accessor for LabelWithSpinner()) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label;
  v6 = *&v4[OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 secondaryLabelColor];
  [v8 setTextColor_];

  [*&v4[v5] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v4[v5] setNumberOfLines_];
  v10 = *&v4[v5];
  v11 = *MEMORY[0x1E69DDD80];
  v12 = objc_opt_self();
  v13 = v10;
  v14 = [v12 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:0];
  if (v14)
  {
    v15 = v14;
    v16 = [objc_opt_self() fontWithDescriptor:v14 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v17 = v11;
    v18 = sub_1BA4A3E88();
    v19 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v43 = v1;
      v21 = v20;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v47 = v42;
      *v21 = 136315906;
      v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      HIDWORD(v40) = v19;
      v24 = sub_1B9F0B82C(v22, v23, &v47);
      v44 = v17;
      v25 = v24;

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v45 = 0;
      v46 = 1;
      sub_1BA127200(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
      v26 = sub_1BA4A6808();
      v28 = sub_1B9F0B82C(v26, v27, &v47);

      *(v21 + 14) = v28;
      *(v21 + 22) = 2080;
      LODWORD(v45) = 0;
      type metadata accessor for SymbolicTraits(0);
      v29 = sub_1BA4A6808();
      v31 = sub_1B9F0B82C(v29, v30, &v47);
      v17 = v44;

      *(v21 + 24) = v31;
      *(v21 + 32) = 2112;
      v32 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v21 + 34) = v32;
      v33 = v41;
      *v41 = v32;
      _os_log_impl(&dword_1B9F07000, v18, BYTE4(v40), "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v21, 0x2Au);
      sub_1BA127500(v33, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
      MEMORY[0x1BFAF43A0](v33, -1, -1);
      v34 = v42;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v34, -1, -1);
      MEMORY[0x1BFAF43A0](v21, -1, -1);

      (*(v43 + 8))(v3, v0);
    }

    else
    {

      (*(v1 + 8))(v3, v0);
    }

    v35 = [v12 preferredFontDescriptorWithTextStyle_];
    v16 = [objc_opt_self() fontWithDescriptor:v35 size:0.0];
  }

  [v13 setFont_];

  [*&v4[v5] setMaximumContentSizeCategory_];
  [*&v4[v5] setAdjustsFontForContentSizeCategory_];
  [*&v4[v5] setTextAlignment_];
  LODWORD(v36) = 1148846080;
  [*&v4[v5] setContentCompressionResistancePriority:0 forAxis:v36];
  LODWORD(v37) = 1148846080;
  [*&v4[v5] setContentCompressionResistancePriority:1 forAxis:v37];
  LODWORD(v38) = 1148846080;
  [*&v4[v5] setContentHuggingPriority:1 forAxis:v38];
  [*&v4[v5] setIsAccessibilityElement_];
  return v4;
}

id sub_1BA1240AC()
{
  [v0 addSubview_];
  v1 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleVibrancyView;
  v2 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleVibrancyView] contentView];
  [v2 addSubview_];

  v3 = [*&v0[v1] contentView];
  [v3 addSubview_];

  v4 = *&v0[v1];

  return [v0 addSubview_];
}

void sub_1BA12417C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleVibrancyView;
  v77 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleVibrancyView;
  v4 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleVibrancyView] heightAnchor];
  v5 = [v4 constraintEqualToConstant_];

  v76 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleViewHeightConstraint;
  v6 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleViewHeightConstraint];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleViewHeightConstraint] = v5;

  v7 = [*&v1[v3] topAnchor];
  v8 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButton;
  v75 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButton;
  v9 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButton] bottomAnchor];
  v10 = ObjectType[48]();
  v11 = [v7 constraintEqualToAnchor:v9 constant:?];

  v12 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleViewTopSpaceConstraint];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleViewTopSpaceConstraint] = v11;

  v13 = [*&v1[v8] heightAnchor];
  v14 = [v13 constraintEqualToConstant_];

  v15 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButtonHeightConstraint];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButtonHeightConstraint] = v14;

  sub_1B9F1C048(0, &qword_1EDC6B400);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BA4BF880;
  v17 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel];
  v18 = [v17 topAnchor];
  v19 = [v1 topAnchor];
  v20 = [v18 &selRef:v19 objectAtIndex:8.0 + 6];

  *(v16 + 32) = v20;
  v21 = [v17 leadingAnchor];
  v22 = [v1 layoutMarginsGuide];
  v23 = [v22 leadingAnchor];

  v24 = [v21 constraintEqualToAnchor_];
  *(v16 + 40) = v24;
  v25 = [v17 trailingAnchor];
  v26 = [v1 &selRef__createTableFooterView + 1];
  v27 = [v26 trailingAnchor];

  v28 = [v25 constraintEqualToAnchor_];
  *(v16 + 48) = v28;
  v29 = [*&v1[v75] topAnchor];
  v30 = [v17 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v16 + 56) = v31;
  v32 = [*&v1[v75] leadingAnchor];
  v33 = [v17 leadingAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v16 + 64) = v34;
  v35 = [v1 layoutMarginsGuide];
  v36 = [v35 trailingAnchor];

  v37 = [*&v1[v75] trailingAnchor];
  v38 = [v36 constraintGreaterThanOrEqualToAnchor_];

  *(v16 + 72) = v38;
  v39 = [*&v1[v77] centerXAnchor];
  v40 = [v1 centerXAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v16 + 80) = v41;
  v42 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleView];
  v43 = [v42 topAnchor];
  v44 = [*&v1[v75] bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:v10];

  *(v16 + 88) = v45;
  v46 = [v1 bottomAnchor];
  v47 = [v42 bottomAnchor];
  v48 = ObjectType[50]();
  v49 = [v46 constraintEqualToAnchor:v47 constant:?];

  *(v16 + 96) = v49;
  v50 = *&v1[v76];
  if (v50)
  {
    *(v16 + 104) = v50;
    v51 = *&v1[v77];
    v52 = v50;
    v53 = [v51 topAnchor];
    v54 = [v17 bottomAnchor];
    v55 = [v53 &selRef:v54 objectAtIndex:v10 + 6];

    *(v16 + 112) = v55;
    v56 = [*&v1[v77] leadingAnchor];
    v57 = [v1 leadingAnchor];
    v58 = ObjectType[49]();
    v59 = [v56 &selRef:v57 objectAtIndex:? + 6];

    *(v16 + 120) = v59;
    v60 = [v1 trailingAnchor];
    v61 = [*&v1[v77] trailingAnchor];
    v62 = [v60 &selRef:v61 objectAtIndex:v58 + 6];

    *(v16 + 128) = v62;
    v63 = [v1 bottomAnchor];
    v64 = [*&v1[v77] bottomAnchor];
    v65 = [v63 &selRef:v64 objectAtIndex:v48 + 6];

    *(v16 + 136) = v65;
    v66 = [v1 traitCollection];
    v67 = [v66 horizontalSizeClass];

    if (v67 == 1)
    {
      v68 = sub_1BA12300C();
    }

    else
    {
      v68 = sub_1BA1231F4();
    }

    v69 = v68;
    v70 = objc_opt_self();
    sub_1B9F73B50(v69);
    sub_1B9F0ADF8(0, &qword_1EDC6B570);
    v71 = sub_1BA4A6AE8();

    [v70 activateConstraints_];

    sub_1BA127200(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_1BA4B5480;
    v73 = sub_1BA4A4438();
    v74 = MEMORY[0x1E69DC130];
    *(v72 + 32) = v73;
    *(v72 + 40) = v74;
    MEMORY[0x1BFAF2130](v72, sel_traitWidthDesignationDidChange);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA124A50()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v6 = sub_1BA4A3E88();
  v7 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = sub_1BA4A85D8();
    v12 = sub_1B9F0B82C(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1B9F07000, v6, v7, "[%s] Updating the constraints based on traitWidthDesignation changes", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1BFAF43A0](v9, -1, -1);
    MEMORY[0x1BFAF43A0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = [v1 traitCollection];
  v14 = [v13 horizontalSizeClass];

  sub_1BA124C88(v14);
}

void sub_1BA124C88(uint64_t a1)
{
  v2 = objc_opt_self();
  if (a1 == 1)
  {
    sub_1BA1231F4();
    sub_1B9F0ADF8(0, &qword_1EDC6B570);
    v3 = sub_1BA4A6AE8();

    [v2 deactivateConstraints_];

    sub_1BA12300C();
  }

  else
  {
    sub_1BA12300C();
    sub_1B9F0ADF8(0, &qword_1EDC6B570);
    v4 = sub_1BA4A6AE8();

    [v2 deactivateConstraints_];

    sub_1BA1231F4();
  }

  v5 = sub_1BA4A6AE8();

  [v2 activateConstraints_];
}

uint64_t sub_1BA124DCC()
{
  v1 = v0;
  v14 = sub_1BA4A72D8();
  v2 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA12755C();
  v6 = *(v5 - 8);
  v15 = v5;
  v16 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_currentSyncStatus);

  sub_1BA4A72B8();
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v9 = sub_1BA4A7308();
  v17 = v9;
  sub_1BA126AA0();
  sub_1BA127630(&qword_1EBBEC360, sub_1BA126AA0);
  sub_1B9F3DC80();
  sub_1BA4A50E8();

  (*(v2 + 8))(v4, v14);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BA127630(&qword_1EBBEC368, sub_1BA12755C);
  v10 = v15;
  v11 = sub_1BA4A5148();

  (*(v16 + 8))(v8, v10);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_syncStatusCancellable) = v11;
}

void sub_1BA1250A4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1BA127678(a1, &v6, &qword_1EBBEC320, &unk_1EBBEC328, MEMORY[0x1E69A32C8]);
    if (v7)
    {
      sub_1B9F1134C(&v6, v8);
      [*&v3[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleVibrancyView] setHidden_];
      v4 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleViewHeightConstraint];
      if (v4)
      {
        [v4 setActive_];
        sub_1BA122E54(v8);
        __swift_destroy_boxed_opaque_existential_1(v8);
LABEL_7:

        return;
      }

      __break(1u);
    }

    else
    {
      sub_1BA127500(&v6, &qword_1EBBEC320, &unk_1EBBEC328, MEMORY[0x1E69A32C8], sub_1B9F0D950);
      [*(*&v3[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleView] + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label) setText_];
      v5 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleViewHeightConstraint];
      if (v5)
      {
        [v5 setActive_];
        [*&v3[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleVibrancyView] setHidden_];
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1BA125230(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = MEMORY[0x1E69E6720];
  sub_1BA127200(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v33 = &v32 - v7;
  sub_1BA127200(0, &qword_1EBBEA318, MEMORY[0x1E69A3430], v5);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v11 = sub_1BA4A33C8();
  v12 = *(v11 - 8);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x220))(a1, v13);
  v34 = a1;
  sub_1B9F0A534(a1, v35);
  v32 = sub_1B9F0D950(0, &qword_1EDC6E1F0);
  if (swift_dynamicCast())
  {

    (*(v12 + 56))(v10, 0, 1, v11);
    (*(v12 + 32))(v15, v10, v11);
    sub_1BA4A3328();
    v16 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel);
    v17 = (*(ObjectType + 464))([v16 setNumberOfLines_]);
    [v16 setFont_];

    (*(v12 + 8))(v15, v11);
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    sub_1BA127490(v10, &qword_1EBBEA318, MEMORY[0x1E69A3430]);
    v16 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel);
    v18 = (*(ObjectType + 472))([v16 setNumberOfLines_]);
    [v16 setFont_];
  }

  v19 = sub_1BA4A6758();

  [v16 setText_];

  v20 = MEMORY[0x1E69E7D40];
  v21 = v34;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x230))(v35, v34);
  sub_1BA4A4DA8();
  sub_1BA127500(v35, &qword_1EBBEC320, &unk_1EBBEC328, MEMORY[0x1E69A32C8], sub_1B9F0D950);
  v22 = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
  v23 = [v22 aa_primaryAppleAccount];
  v24 = v33;
  if (v23)
  {
    v25 = v23;
    if ([v23 aa_isManagedAppleID])
    {
      [*(*(v2 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleView) + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label) setText_];
      v26 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleViewHeightConstraint);
      if (!v26)
      {
        __break(1u);
        return;
      }

      [v26 setActive_];
      [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleVibrancyView) setHidden_];
    }
  }

  sub_1B9F0A534(v21, v35);
  v27 = sub_1BA4A2888();
  v28 = swift_dynamicCast();
  v29 = *(*(v27 - 8) + 56);
  if (v28)
  {
    v30 = *(v27 - 8);
    v29(v24, 0, 1, v27);
    v31 = sub_1BA4A2838();
    (*(v30 + 8))(v24, v27);
  }

  else
  {
    v29(v24, 1, 1, v27);
    sub_1BA127490(v24, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
    v31 = 0;
  }

  (*((*v20 & *v2) + 0x228))(v31);
}

id sub_1BA1258E0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButton;
  [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButton) setHidden_];
  result = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButtonHeightConstraint);
  if (result)
  {
    [result setActive_];
    v3 = *(v0 + v1);

    return [v3 setUserInteractionEnabled_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA12595C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA127200(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v17 - v5;
  v7 = sub_1BA4A2888();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0A534(a1, v19);
  sub_1B9F0D950(0, &qword_1EDC6E1F0);
  sub_1B9F0D950(0, &qword_1EBBEC328);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    result = sub_1BA127500(v17, &qword_1EBBEC320, &qword_1EBBEC328, MEMORY[0x1E69A32C8], sub_1B9F0D950);
LABEL_8:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  sub_1B9F1134C(v17, v20);
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  sub_1BA4A2C28();
  if (!v11)
  {
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    goto LABEL_8;
  }

  sub_1B9F0A534(a1, v19);
  v12 = swift_dynamicCast();
  v13 = *(v8 + 56);
  if ((v12 & 1) == 0)
  {
    v13(v6, 1, 1, v7);
    sub_1BA127490(v6, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
    goto LABEL_10;
  }

  v13(v6, 0, 1, v7);
  (*(v8 + 32))(v10, v6, v7);
  v14 = sub_1BA4A2838();
  v15 = [v14 type];

  (*(v8 + 8))(v10, v7);
  if (v15 != 1)
  {
LABEL_10:
    sub_1B9F0A534(v20, a2);
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

void sub_1BA125C90(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel);
    sub_1B9F1C048(0, &qword_1EDC6E330);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BA4B5460;
    *(v6 + 32) = a1;
    *(v6 + 40) = a2;
    *(v6 + 48) = 1701667150;
    *(v6 + 56) = 0xE400000000000000;
    swift_bridgeObjectRetain_n();
    v7 = sub_1BA4A6AE8();

    v8 = HKUIJoinStringsForAutomationIdentifier();

    [v5 setAccessibilityIdentifier_];
    v9 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleView);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1BA4B5460;
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;
    *(v10 + 48) = 0x656C746974627553;
    *(v10 + 56) = 0xE800000000000000;

    v11 = sub_1BA4A6AE8();

    v12 = HKUIJoinStringsForAutomationIdentifier();

    [v9 setAccessibilityIdentifier_];
    v13 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButton);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BA4B5460;
    *(v14 + 32) = a1;
    *(v14 + 40) = a2;
    *(v14 + 48) = 0x6E6F74747542;
    *(v14 + 56) = 0xE600000000000000;
    v15 = v13;
    v16 = sub_1BA4A6AE8();

    v18 = HKUIJoinStringsForAutomationIdentifier();

    [v15 setAccessibilityIdentifier_];
  }

  else
  {
    [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel) setAccessibilityIdentifier_];
    v17 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleView);

    [v17 setAccessibilityIdentifier_];
  }
}

void sub_1BA126028()
{
  v0 = sub_1BA4A6AE8();
  v1 = HKUIJoinStringsForAutomationIdentifier();

  if (v1)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA12609C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_item;
  swift_beginAccess();
  return sub_1BA127678(v1 + v3, a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t sub_1BA12610C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v2 + v5);
  swift_endAccess();
  v6 = sub_1BA126660();
  v7 = (*(ObjectType + 96))(v6);
  v9 = v8;
  v10 = sub_1BA4A6758();
  [v2 setAccessibilityIdentifier_];

  sub_1BA125C90(v7, v9);

  return sub_1BA127500(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
}

void (*sub_1BA126220(uint64_t *a1))(void **a1, char a2)
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
  *(v3 + 24) = v1;
  *(v3 + 32) = swift_getObjectType();
  swift_beginAccess();
  return sub_1BA1262B8;
}

void sub_1BA1262B8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    v6 = sub_1BA126660();
    v7 = (*(v4 + 96))(v6);
    v9 = v8;
    v10 = sub_1BA4A6758();
    [v5 setAccessibilityIdentifier_];

    sub_1BA125C90(v7, v9);
  }

  free(v3);
}

char *ProfileNameCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_item];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_profileNameView] = (*(ObjectType + 128))();
  v17.receiver = v4;
  v17.super_class = type metadata accessor for ProfileNameCell();
  v11 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = [v11 contentView];
  v13 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_profileNameView;
  [v12 addSubview_];

  v14 = *&v11[v13];
  v15 = [v11 contentView];

  [v14 hk:v15 alignConstraintsWithView:?];
  return v11;
}

id ProfileNameCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ProfileNameCell.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  sub_1BA4A8018();
  __break(1u);
}

id sub_1BA126614()
{
  type metadata accessor for ProfileNameView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

id sub_1BA126660()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_item;
  swift_beginAccess();
  sub_1BA127678(v0 + v1, v3, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (v4)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &qword_1EDC6E1F0);
    if (swift_dynamicCast())
    {
      if (*(&v6 + 1))
      {
        sub_1B9F1134C(&v5, v8);
        (*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_profileNameView)) + 0x208))(v8);
        return __swift_destroy_boxed_opaque_existential_1(v8);
      }
    }

    else
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
    }
  }

  else
  {
    sub_1BA127500(v3, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
    v5 = 0u;
    v6 = 0u;
    v7 = 0;
  }

  sub_1BA127500(&v5, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208], sub_1B9F0D950);
  return [*(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_profileNameView) + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel) setText_];
}

void sub_1BA126840(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = sub_1BA4A6758();
  }

  else
  {
    v5 = 0;
  }

  [v2 setAccessibilityIdentifier_];

  sub_1BA125C90(a1, a2);
}

id sub_1BA1268DC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BA126980(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  [v5 setAccessibilityIdentifier_];

  sub_1BA125C90(a1, a2);
}

void (*sub_1BA126A08(uint64_t *a1))(void **a1, char a2)
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
  *(v3 + 24) = v1;
  *(v3 + 32) = swift_getObjectType();
  swift_beginAccess();
  return sub_1BA1262B8;
}

void sub_1BA126AA0()
{
  if (!qword_1EBBEC318)
  {
    sub_1BA127264(255, &qword_1EBBEC320, &unk_1EBBEC328, MEMORY[0x1E69A32C8], sub_1B9F0D950);
    v0 = sub_1BA4A4DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEC318);
    }
  }
}

id sub_1BA126B34()
{
  v0 = sub_1BA4A3EA8();
  v47 = *(v0 - 8);
  v48 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v4 = objc_opt_self();
  v5 = [v4 secondaryLabelColor];
  [v3 setTextColor_];

  v6 = v3;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v7) = 1148846080;
  [v6 setContentCompressionResistancePriority:1 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [v6 setContentHuggingPriority:1 forAxis:v8];
  v9 = qword_1EDC5E100;
  v10 = v6;
  if (v9 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v11 = sub_1BA4A6758();

  [v10 setAccessibilityLabel_];

  [v10 setIsAccessibilityElement_];
  [v10 setAdjustsFontForContentSizeCategory_];
  [v10 setMaximumContentSizeCategory_];

  v12 = sub_1BA4A1318();
  v14 = v13;
  v15 = [v4 secondaryLabelColor];
  v16 = sub_1BA4A6758();
  v17 = [objc_opt_self() systemImageNamed_];

  v18 = sub_1BA0BA314(v12, v14, v15, v17, 1);

  v19 = *MEMORY[0x1E69DB648];
  v20 = *MEMORY[0x1E69DDCF8];
  v21 = objc_opt_self();
  v22 = [v21 preferredFontDescriptorWithTextStyle:v20 compatibleWithTraitCollection:0];
  if (v22)
  {
    v23 = v22;
    v24 = [objc_opt_self() fontWithDescriptor:v22 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v25 = v20;
    v26 = sub_1BA4A3E88();
    v27 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v51 = v45;
      *v28 = 136315906;
      v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v46 = v25;
      v31 = sub_1B9F0B82C(v29, v30, &v51);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      v49 = 0;
      v50 = 1;
      sub_1BA127200(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
      v32 = sub_1BA4A6808();
      v34 = sub_1B9F0B82C(v32, v33, &v51);

      *(v28 + 14) = v34;
      *(v28 + 22) = 2080;
      LODWORD(v49) = 0;
      type metadata accessor for SymbolicTraits(0);
      v35 = sub_1BA4A6808();
      v37 = sub_1B9F0B82C(v35, v36, &v51);
      v25 = v46;

      *(v28 + 24) = v37;
      *(v28 + 32) = 2112;
      v38 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v28 + 34) = v38;
      v39 = v44;
      *v44 = v38;
      _os_log_impl(&dword_1B9F07000, v26, v27, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v28, 0x2Au);
      sub_1BA127500(v39, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
      MEMORY[0x1BFAF43A0](v39, -1, -1);
      v40 = v45;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v40, -1, -1);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
    }

    (*(v47 + 8))(v2, v48);
    v41 = [v21 preferredFontDescriptorWithTextStyle_];
    v24 = [objc_opt_self() fontWithDescriptor:v41 size:0.0];
  }

  v42 = v18;
  [v42 addAttribute:v19 value:v24 range:{0, objc_msgSend(v42, sel_length)}];

  [v10 setAttributedText_];
  return v10;
}

void sub_1BA127200(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA127264(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1BA127490(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA127200(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA127500(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1BA127264(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1BA12755C()
{
  if (!qword_1EBBEC358)
  {
    sub_1BA126AA0();
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0);
    sub_1BA127630(&qword_1EBBEC360, sub_1BA126AA0);
    sub_1B9F3DC80();
    v0 = sub_1BA4A4CA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEC358);
    }
  }
}

uint64_t sub_1BA127630(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BA127678(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1BA127264(0, a3, a4, a5, sub_1B9F0D950);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t static UIButton.Configuration.bezeledButton()()
{
  sub_1BA127894();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BA4A7938();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A7998();
  (*(v4 + 104))(v6, *MEMORY[0x1E69DC560], v3);
  sub_1BA4A7828();
  sub_1BA4A4898();
  v7 = sub_1BA4A4888();
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  sub_1BA4A7928();
  return sub_1BA4A7918();
}

void sub_1BA127894()
{
  if (!qword_1EDC5F868)
  {
    sub_1BA4A4888();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F868);
    }
  }
}

uint64_t sub_1BA1278EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BA4A1338();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB970], 0, 0, 0, 0, 1);
  sub_1B9F4DAC8();
  return sub_1BA4A1348();
}

uint64_t static NotificationGenerating.createContactPhotoNotificationAttachment(for:)(void *a1, uint64_t a2)
{
  v59[1] = a2;
  v62 = sub_1BA4A1798();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v60 = v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA4A3EA8();
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v64 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA128470(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v59 - v7;
  v9 = sub_1BA4A15D8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v59 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v59 - v17;
  v19 = sub_1BA4A2F88();
  v67 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  sub_1BA4A2F68();
  sub_1BA4A2F78();
  v23 = *(v10 + 48);
  v69 = v9;
  if (v23(v8, 1, v9) == 1)
  {
    sub_1BA0B17A4(v8);
    v24 = sub_1BA4A2F58();
    sub_1BA12825C();
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x1E69A3380], v24);
    swift_willThrow();
  }

  else
  {
    v59[0] = v19;
    (*(v10 + 32))(v18, v8, v69);
    v26 = [objc_opt_self() defaultManager];
    sub_1BA4A15B8();
    v27 = sub_1BA4A6758();

    v28 = [v26 fileExistsAtPath_];

    if (v28)
    {
      sub_1BA128470(0, &qword_1EDC6B418, sub_1BA1284D4, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BA4B5480;
      v68[0] = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v68[1] = v30;
      sub_1BA4A7D58();
      v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(inited + 96) = sub_1B9F0ADF8(0, &qword_1EDC6E360);
      *(inited + 72) = v31;
      v32 = sub_1B9FDB524(inited);
      swift_setDeallocating();
      sub_1BA128538(inited + 32);
      v33 = v60;
      sub_1BA4A1788();
      v34 = sub_1BA4A1748();
      v36 = v35;
      (*(v61 + 8))(v33, v62);
      v37 = sub_1B9F0ADF8(0, &qword_1EBBEC378);
      (*(v10 + 16))(v12, v18, v69);
      v38 = v34;
      v24 = v37;
      v39 = v63;
      v40 = sub_1BA1282B4(v38, v36, v12, v32);
      if (!v39)
      {
        v24 = v40;
        (*(v10 + 8))(v18, v69);
        (*(v67 + 8))(v21, v59[0]);
        return v24;
      }

      (*(v10 + 8))(v18, v69);
      v19 = v59[0];
    }

    else
    {
      v62 = v21;
      v41 = v64;
      sub_1BA4A3E78();
      v42 = *(v10 + 16);
      v63 = v18;
      v43 = v18;
      v44 = v41;
      v42(v15, v43, v69);
      v45 = sub_1BA4A3E88();
      v46 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v68[0] = v61;
        *v47 = 136315650;
        v48 = sub_1BA4A85D8();
        LODWORD(v60) = v46;
        v50 = sub_1B9F0B82C(v48, v49, v68);

        *(v47 + 4) = v50;
        *(v47 + 12) = 2080;
        *(v47 + 14) = sub_1B9F0B82C(0xD00000000000002ELL, 0x80000001BA4EC940, v68);
        *(v47 + 22) = 2080;
        v51 = sub_1BA4A15B8();
        v53 = v52;
        v54 = *(v10 + 8);
        v54(v15, v69);
        v55 = sub_1B9F0B82C(v51, v53, v68);

        *(v47 + 24) = v55;
        _os_log_impl(&dword_1B9F07000, v45, v60, "%s %s [Contact Photo] file may not exist: %s", v47, 0x20u);
        v56 = v61;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v56, -1, -1);
        MEMORY[0x1BFAF43A0](v47, -1, -1);
      }

      else
      {

        v54 = *(v10 + 8);
        v54(v15, v69);
      }

      (*(v65 + 8))(v44, v66);
      v19 = v59[0];
      v24 = sub_1BA4A2F58();
      sub_1BA12825C();
      swift_allocError();
      (*(*(v24 - 8) + 104))(v57, *MEMORY[0x1E69A3378], v24);
      swift_willThrow();
      v54(v63, v69);
      v21 = v62;
    }
  }

  (*(v67 + 8))(v21, v19);
  return v24;
}

unint64_t sub_1BA12825C()
{
  result = qword_1EBBEC370;
  if (!qword_1EBBEC370)
  {
    sub_1BA4A2F58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC370);
  }

  return result;
}

id sub_1BA1282B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1BA4A6758();

  v7 = sub_1BA4A1548();
  if (a4)
  {
    v8 = sub_1BA4A6618();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() attachmentWithIdentifier:v6 URL:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_1BA4A15D8();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a3, v11);
  }

  else
  {
    v14 = v17[0];
    sub_1BA4A1488();

    swift_willThrow();
    v15 = sub_1BA4A15D8();
    (*(*(v15 - 8) + 8))(a3, v15);
  }

  return v9;
}

void sub_1BA128470(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA1284D4()
{
  if (!qword_1EDC6B480)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC6B480);
    }
  }
}

uint64_t sub_1BA128538(uint64_t a1)
{
  sub_1BA1284D4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA128594()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC380 = result;
  *algn_1EBBEC388 = v1;
  return result;
}

uint64_t sub_1BA128640()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC390 = result;
  *algn_1EBBEC398 = v1;
  return result;
}

uint64_t sub_1BA1286EC()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC3A0 = result;
  *algn_1EBBEC3A8 = v1;
  return result;
}

uint64_t sub_1BA128798()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC3B0 = result;
  *algn_1EBBEC3B8 = v1;
  return result;
}

uint64_t sub_1BA128844()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC3C0 = result;
  *algn_1EBBEC3C8 = v1;
  return result;
}

uint64_t sub_1BA1288F0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC3D0 = result;
  *algn_1EBBEC3D8 = v1;
  return result;
}

uint64_t sub_1BA12899C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC3E0 = result;
  *algn_1EBBEC3E8 = v1;
  return result;
}

uint64_t sub_1BA128A48()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC3F0 = result;
  *algn_1EBBEC3F8 = v1;
  return result;
}

uint64_t sub_1BA128AF4()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC400 = result;
  *algn_1EBBEC408 = v1;
  return result;
}

id sub_1BA128BA0()
{
  v23 = sub_1BA4A23F8();
  MEMORY[0x1EEE9AC00](v23);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = 0;
  v15 = v0;
  v4 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_notificationSettingsManager];
  v5 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_lock;
  v21 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_healthStore;
  v22 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_userDefaults;
  v16 = *MEMORY[0x1E69A3D90];
  v20 = (v6 + 104);
  v17 = *MEMORY[0x1E69A3D88];
  v19 = *MEMORY[0x1E69A3D80];
  v18 = (v6 + 8);
  do
  {
    v11 = byte_1F37FC858[v3 + 32];
    v12 = v5;
    sub_1BA4A1BE8();
    v7 = v23;
    v8 = *(v4 + v22);
    (*v20)(v2);
    ++v3;
    v9 = [*(v4 + v21) profileIdentifier];
    sub_1BA4A23E8();

    (*v18)(v2, v7);
    v10 = sub_1BA4A6758();

    [v8 setBool:0 forKey:v10];

    v5 = v12;
    sub_1BA4A1BF8();
    v24 = v11;
    sub_1BA3E7154(0, &v24, 1);
  }

  while (v3 != 3);
  return [v15 dismissViewControllerAnimated:1 completion:0];
}

void sub_1BA128E40()
{
  swift_getObjectType();
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_notificationAuthorizationStatus + 8))
  {
    sub_1BA4A3DD8();
    v5 = sub_1BA4A3E88();
    v6 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      v9 = sub_1BA4A85D8();
      v11 = sub_1B9F0B82C(v9, v10, &v15);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1B9F07000, v5, v6, "%s No notification authorization status available! Cannot proceed.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1BFAF43A0](v8, -1, -1);
      MEMORY[0x1BFAF43A0](v7, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  else if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_notificationAuthorizationStatus) == 1)
  {

    sub_1BA129358();
  }

  else
  {
    sub_1BA12988C(1);
    v12 = type metadata accessor for SummarySharingInviteToReceiveAnalyticsEvent();
    v13 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_healthStore);
    HIBYTE(v14) = 1;
    *(&v14 + 5) = 769;
    static SummarySharingInviteToReceiveAnalyticsEvent.submitAnalytics(healthStore:location:version:stepDetails:)(v13, &v14 + 7, v12, (&v14 + 5));
  }
}

uint64_t sub_1BA1290D0()
{
  sub_1BA12988C(0);
  v1 = type metadata accessor for SummarySharingInviteToReceiveAnalyticsEvent();
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_healthStore);
  v5 = 1;
  v4 = 1025;
  return static SummarySharingInviteToReceiveAnalyticsEvent.submitAnalytics(healthStore:location:version:stepDetails:)(v2, &v5, v1, &v4);
}

uint64_t sub_1BA12917C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_notificationAuthorizationCancellable;
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_notificationAuthorizationCancellable))
  {

    sub_1BA4A4D48();
  }

  sub_1BA4A1B98();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BA12AC6C(0, &qword_1EBBEC448, &qword_1EBBEC450, 0x1E69832B0, MEMORY[0x1E695C028]);
  sub_1BA12ACE4();
  v3 = sub_1BA4A5148();

  *(v1 + v2) = v3;
}

void sub_1BA129298(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 authorizationStatus];
    v5 = &v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_notificationAuthorizationStatus];
    *v5 = v4;
    v5[8] = 0;
  }
}

void sub_1BA129358()
{
  if (qword_1EBBE83B0 != -1)
  {
    swift_once();
  }

  if (qword_1EBBE83B8 != -1)
  {
    swift_once();
  }

  v1 = sub_1BA4A6758();
  v2 = sub_1BA4A6758();
  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  if (qword_1EBBE83C0 != -1)
  {
    swift_once();
  }

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = sub_1BA4A6758();
  v17 = sub_1BA12ABAC;
  v18 = v4;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1BA0B06D4;
  v16 = &block_descriptor_28;
  v6 = _Block_copy(&v13);

  v7 = objc_opt_self();
  v8 = [v7 actionWithTitle:v5 style:1 handler:v6];
  _Block_release(v6);

  if (qword_1EBBE83C8 != -1)
  {
    swift_once();
  }

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v10 = sub_1BA4A6758();
  v17 = sub_1BA12ABB4;
  v18 = v9;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1BA0B06D4;
  v16 = &block_descriptor_25;
  v11 = _Block_copy(&v13);

  v12 = [v7 actionWithTitle:v10 style:0 handler:v11];
  _Block_release(v11);

  [v3 addAction_];
  [v3 addAction_];
  [v3 setPreferredAction_];
  [v0 presentViewController:v3 animated:1 completion:0];
}

void sub_1BA129718()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1BA12A944();
  }
}

uint64_t sub_1BA129770()
{
  v0 = sub_1BA4A2A48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1BA12A944();
  }

  (*(v1 + 104))(v3, *MEMORY[0x1E69A31A0], v0);
  sub_1BA4A2A38();
  return (*(v1 + 8))(v3, v0);
}

void sub_1BA12988C(int a1)
{
  v2 = v1;
  v42 = a1;
  v41 = sub_1BA4A23F8();
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A33C8();
  v29 = *(v5 - 8);
  v30 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v31 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 buttonTray];
  [v8 showButtonsBusy];

  v9 = 0;
  v32 = v2;
  v10 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_notificationSettingsManager];
  v11 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_lock;
  v38 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_healthStore;
  v39 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_userDefaults;
  v33 = *MEMORY[0x1E69A3D90];
  v37 = (v3 + 104);
  v34 = *MEMORY[0x1E69A3D88];
  v36 = *MEMORY[0x1E69A3D80];
  v35 = (v3 + 8);
  do
  {
    v18 = byte_1F37FC8A8[v9 + 32];
    v19 = v11;
    sub_1BA4A1BE8();
    v12 = v40;
    v13 = *(v10 + v39);
    v14 = v41;
    (*v37)(v40);
    ++v9;
    v15 = [*(v10 + v38) profileIdentifier];
    sub_1BA4A23E8();

    (*v35)(v12, v14);
    v16 = sub_1BA4A6758();

    v17 = v42;
    [v13 setBool:v42 & 1 forKey:v16];

    v11 = v19;
    sub_1BA4A1BF8();
    v43 = v18;
    sub_1BA3E7154(v17 & 1, &v43, 1);
  }

  while (v9 != 3);
  v21 = v31;
  v20 = v32;
  (*(v29 + 16))(v31, &v32[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_profileInformation], v30);
  v22 = *&v20[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_selectedContactPhotoPublisher];
  v23 = *&v20[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_healthStore];
  v24 = objc_allocWithZone(type metadata accessor for SummarySharingInvitationAcceptedViewController());

  v25 = v23;
  v26 = sub_1BA2BF670(v21, v22, v25);

  [v20 showViewController:v26 sender:0];
  v27 = [v20 buttonTray];
  [v27 showButtonsAvailable];
}

id sub_1BA129CA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingInvitationEnableUpdatesViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SummarySharingInvitationEnableUpdatesViewController()
{
  result = qword_1EBBEC428;
  if (!qword_1EBBEC428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA129E00()
{
  result = sub_1BA4A33C8();
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

uint64_t sub_1BA129EC8()
{
  sub_1BA4A33C8();
  v0 = sub_1BA4A2AF8();
  v2 = v1;
  if ((sub_1BA4A33B8() & 1) == 0)
  {
    goto LABEL_8;
  }

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    if (qword_1EBBE8388 != -1)
    {
      swift_once();
    }

    sub_1BA12A8D4(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BA4B5480;
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_1B9F1BE20();
    *(v4 + 32) = v0;
    *(v4 + 40) = v2;
    v5 = sub_1BA4A6768();
  }

  else
  {
LABEL_8:

    if (qword_1EBBE8390 != -1)
    {
      swift_once();
    }

    v5 = qword_1EBBEC390;
  }

  return v5;
}

char *sub_1BA12A050(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v63 = a3;
  v64 = a2;
  sub_1BA12A8D4(0, &qword_1EDC5F360, sub_1BA078F34, MEMORY[0x1E695C070]);
  v59 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v58 - v10;
  v12 = sub_1BA4A1798();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v4[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_notificationAuthorizationStatus];
  *v16 = 0;
  v16[8] = 1;
  v17 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_healthAppNotificationManager;
  sub_1BA4A1BC8();
  *&v4[v17] = sub_1BA4A1BB8();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_notificationAuthorizationCancellable] = 0;
  v18 = [objc_allocWithZone(MEMORY[0x1E696C4F0]) initWithHealthStore_];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_sharingEntryStore] = v18;
  v19 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_profileInformation;
  v20 = sub_1BA4A33C8();
  v61 = *(v20 - 8);
  v62 = v20;
  v21 = *(v61 + 16);
  v58 = a1;
  v21(&v5[v19], a1);
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_healthStore] = a4;
  v22 = objc_allocWithZone(MEMORY[0x1E696C1C0]);
  v23 = a4;
  v24 = [v22 init];
  v25 = objc_opt_self();
  sub_1BA4A3358();
  v26 = sub_1BA4A1758();
  (*(v13 + 8))(v15, v12);
  v27 = [v25 _profileWithUUID_type_];

  [v24 setProfileIdentifier_];
  [v24 resume];
  v28 = objc_opt_self();
  v29 = v24;
  v60 = v28;
  v30 = [v28 defaultCenter];
  sub_1B9F0ADF8(0, &qword_1EDC6B610);
  v31 = sub_1BA4A70E8();
  v32 = type metadata accessor for SharedProfileNotificationSettingsManager();
  v33 = objc_allocWithZone(v32);
  v34 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_lock;
  sub_1BA4A1C18();
  swift_allocObject();
  *&v33[v34] = sub_1BA4A1C08();
  v35 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager__currentValues;
  v67 = sub_1B9FDB444(MEMORY[0x1E69E7CC0]);
  sub_1BA078F34();
  sub_1BA4A4EE8();
  (*(v9 + 32))(&v33[v35], v11, v59);
  *&v33[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_healthStore] = v29;
  v36 = *MEMORY[0x1E696C890];
  v37 = objc_allocWithZone(MEMORY[0x1E696C210]);
  v38 = v29;
  v39 = [v37 initWithCategory:1 domainName:v36 healthStore:v38];
  *&v33[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_legacyKeyValueDomain] = v39;
  *&v33[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_notificationCenter] = v30;
  v40 = v58;
  *&v33[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_userDefaults] = v31;
  v66.receiver = v33;
  v66.super_class = v32;
  v41 = objc_msgSendSuper2(&v66, sel_init);

  *&v5[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_notificationSettingsManager] = v41;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_selectedContactPhotoPublisher] = v64;

  sub_1BA129EC8();
  v42 = sub_1BA4A6758();

  v43 = sub_1BA4A3348();
  v45 = v44;
  if (qword_1EBBE8398 != -1)
  {
    swift_once();
  }

  sub_1BA12A8D4(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1BA4B5480;
  *(v46 + 56) = MEMORY[0x1E69E6158];
  *(v46 + 64) = sub_1B9F1BE20();
  *(v46 + 32) = v43;
  *(v46 + 40) = v45;
  sub_1BA4A6768();

  v47 = sub_1BA4A6758();

  v48 = type metadata accessor for SummarySharingInvitationEnableUpdatesViewController();
  v65.receiver = v5;
  v65.super_class = v48;
  v49 = objc_msgSendSuper2(&v65, sel_initWithTitle_detailText_icon_contentLayout_, v42, v47, 0, 3);

  v67 = *&v49[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_selectedContactPhotoPublisher];
  *(swift_allocObject() + 16) = v49;
  sub_1BA12AC6C(0, &qword_1EBBEC120, &qword_1EDC6E370, 0x1E69DCAB8, MEMORY[0x1E695BED0]);
  sub_1BA11085C();
  v50 = v49;

  sub_1BA4A4F88();

  sub_1BA12917C();
  v51 = [v60 defaultCenter];
  [v51 addObserver:v50 selector:sel_fetchNotificationAuthorizationStatus name:*MEMORY[0x1E69DDBC0] object:0];

  if (qword_1EBBE83A0 != -1)
  {
    swift_once();
  }

  v52 = sub_1BA4A6758();
  v53 = sub_1BA4A6758();

  if (qword_1EBBE83A8 != -1)
  {
    swift_once();
  }

  v54 = sub_1BA4A6758();
  v55 = sub_1BA4A6758();

  v56 = [v50 navigationItem];
  [v56 setHidesBackButton_];

  __swift_destroy_boxed_opaque_existential_1(v63);
  (*(v61 + 8))(v40, v62);
  return v50;
}

void sub_1BA12A8D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA12A944()
{
  sub_1BA4A2F48();
  sub_1BA4A2F38();
  sub_1BA12ABBC();
  sub_1BA4A2CB8();
  if (sub_1BA4A2F28())
  {

    v12 = MEMORY[0x1E69E6158];
    v9 = 0x20676E6972616853;
    v10 = 0xEF73657461647055;
    sub_1BA4A2CC8();
    sub_1B9F23224(&v9);
  }

  sub_1BA4A2CE8();
  v0 = sub_1BA4A6758();
  v1 = sub_1BA4A6758();
  v2 = sub_1BA4A6758();
  v3 = sub_1BA4A6758();

  v4 = sub_1BA4A6758();

  v5 = sub_1BA4A6758();

  v9 = v0;
  v10 = v2;
  v11 = v3;
  v12 = v1;
  v13 = v4;
  v14 = v5;
  v6 = sub_1BA4A29B8();
  v7 = sub_1BA4A29A8();
  v8[3] = v6;
  v8[4] = MEMORY[0x1E69A3198];
  v8[0] = v7;
  sub_1BA12AC10();
  sub_1BA4A2B58();
  __swift_destroy_boxed_opaque_existential_1(v8);
}

unint64_t sub_1BA12ABBC()
{
  result = qword_1EBBEC438;
  if (!qword_1EBBEC438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC438);
  }

  return result;
}

unint64_t sub_1BA12AC10()
{
  result = qword_1EBBEC440;
  if (!qword_1EBBEC440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC440);
  }

  return result;
}

void sub_1BA12AC6C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v8 = sub_1B9F0ADF8(255, a3);
    v9 = a5(a1, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1BA12ACE4()
{
  result = qword_1EBBEC458[0];
  if (!qword_1EBBEC458[0])
  {
    sub_1BA12AC6C(255, &qword_1EBBEC448, &qword_1EBBEC450, 0x1E69832B0, MEMORY[0x1E695C028]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBBEC458);
  }

  return result;
}

uint64_t AdditionalItemsDataSource.Mode.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA12AE08()
{
  sub_1BA4A8488();
  AdditionalItemsDataSource.Mode.hash(into:)();
  return sub_1BA4A84D8();
}

uint64_t AdditionalItemsDataSource.identifier.getter()
{
  v0 = sub_1B9F25DF0();

  return v0;
}

uint64_t AdditionalItemsDataSource.wrappedDataSource.getter()
{
  sub_1B9F264D0();

  return swift_unknownObjectRetain();
}

uint64_t *AdditionalItemsDataSource.__allocating_init(_:additionalItems:mode:)(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = sub_1BA12B940(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t *AdditionalItemsDataSource.init(_:additionalItems:mode:)(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = sub_1BA12B890(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1BA12AF0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1BA4A1798();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F12538();
  v7 = v6;
  v56 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - v12;
  v14 = *(v3 + 88);
  v15 = *(v14 + 16);
  v16 = *(v3 + 80);
  v55 = a1;
  v17 = v1;
  v15(v16, v14, v11);
  if ((v1[7] & 1) == 0)
  {
    (v15)(v16, v14);
    v18 = sub_1BA4A4538();
    v19 = *(v56 + 8);
    v51 = v7;
    v19(v13, v7);
    if (v18[2])
    {
      v20 = v17;
      v22 = v18[4];
      v21 = v18[5];

      v23 = v20[5];
      v24 = *(v23 + 16);
      if (v24)
      {
        v60 = MEMORY[0x1E69E7CC0];
        sub_1B9F1C360(0, v24, 0);
        v25 = v60;
        v26 = v23 + 32;
        do
        {
          sub_1B9F0A534(v26, &v57);
          __swift_project_boxed_opaque_existential_1(&v57, v59);
          v27 = sub_1BA4A2D58();
          v29 = v28;
          __swift_destroy_boxed_opaque_existential_1(&v57);
          v60 = v25;
          v31 = *(v25 + 16);
          v30 = *(v25 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_1B9F1C360((v30 > 1), v31 + 1, 1);
            v25 = v60;
          }

          *(v25 + 16) = v31 + 1;
          v32 = v25 + 16 * v31;
          *(v32 + 32) = v27;
          *(v32 + 40) = v29;
          v26 += 40;
          --v24;
        }

        while (v24);
      }

      v57 = v22;
      v58 = v21;
      sub_1BA4A4478();
    }

    v7 = v51;
  }

  (v15)(v16, v14);
  v33 = sub_1BA4A4578();
  (*(v56 + 8))(v9, v7);
  v34 = *(v33 + 16);

  if (!v34)
  {
    sub_1B9F25350();
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1BA4B5480;
    v36 = v52;
    sub_1BA4A1788();
    v37 = sub_1BA4A1748();
    v39 = v38;
    (*(v53 + 8))(v36, v54);
    *(v35 + 32) = v37;
    *(v35 + 40) = v39;
    sub_1BA4A44C8();
  }

  v40 = v17[5];
  v41 = *(v40 + 16);
  if (v41)
  {
    v60 = MEMORY[0x1E69E7CC0];
    sub_1B9F1C360(0, v41, 0);
    v42 = v60;
    v43 = v40 + 32;
    do
    {
      sub_1B9F0A534(v43, &v57);
      __swift_project_boxed_opaque_existential_1(&v57, v59);
      v44 = sub_1BA4A2D58();
      v46 = v45;
      __swift_destroy_boxed_opaque_existential_1(&v57);
      v60 = v42;
      v48 = *(v42 + 16);
      v47 = *(v42 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1B9F1C360((v47 > 1), v48 + 1, 1);
        v42 = v60;
      }

      *(v42 + 16) = v48 + 1;
      v49 = v42 + 16 * v48;
      *(v49 + 32) = v44;
      *(v49 + 40) = v46;
      v43 += 40;
      --v41;
    }

    while (v41);
  }

  v57 = 0;
  v58 = 0;
  sub_1BA4A4448();
}

uint64_t sub_1BA12B3D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v5 = *v3;
  v6 = v3[6];
  if (!*(v6 + 16))
  {
    return (*(*(v5 + 88) + 24))(result, a2, *(v5 + 80));
  }

  v7 = result;
  v8 = a2;
  v10 = sub_1B9F24A34(result, a2);
  result = v7;
  v12 = v11;
  a2 = v8;
  if ((v12 & 1) == 0)
  {
    return (*(*(v5 + 88) + 24))(result, a2, *(v5 + 80));
  }

  v13 = *(*(v6 + 56) + 8 * v10);
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v4[5];
  if (v13 >= *(v14 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  return sub_1B9F0A534(v14 + 40 * v13 + 32, a3);
}

uint64_t AdditionalItemsDataSource.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t AdditionalItemsDataSource.__deallocating_deinit()
{
  AdditionalItemsDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t AdditionalItemsDataSource<>.supplementaryItem(ofKind:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v10 = *(*v4 + 80);
  swift_unknownObjectRetain();
  v9(a1, a2, a3, v10, a4);
  return swift_unknownObjectRelease();
}

uint64_t AdditionalItemsDataSource<>.layout(for:)(__int128 *a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *a1;
  v5 = *(a1 + 2);
  v9 = v2[4];
  v7 = v4;
  v8 = v5;
  return (*(a2 + 8))(&v7, *(v3 + 80), a2);
}

uint64_t AdditionalItemsDataSource<>.registerCells(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v6 = *(*v2 + 80);
  swift_unknownObjectRetain();
  v5(a1, v6, a2);
  return swift_unknownObjectRelease();
}

uint64_t *sub_1BA12B814(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = v4;
  type metadata accessor for AdditionalItemsDataSource();
  v10 = a4;
  swift_unknownObjectRetain();

  v8 = sub_1BA12B940(v6, a1, &v10);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t *sub_1BA12B890(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *v3;
  v5 = *a3;
  v3[4] = a1;
  v3[5] = a2;
  swift_unknownObjectRetain();

  v7 = Array<A>.identifierToIndexDict()(v6);

  v3[6] = v7;
  *(v3 + 56) = v5;
  v3[2] = (*(*(v4 + 88) + 8))(*(v4 + 80));
  v3[3] = v8;
  return v3;
}

uint64_t *sub_1BA12B940(uint64_t a1, uint64_t a2, char *a3)
{
  type metadata accessor for AdditionalItemsDataSource();
  swift_allocObject();
  return sub_1BA12B890(a1, a2, a3);
}

uint64_t FeatureStatusActionHandlerUserData.featureStatusKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_featureStatusKind;
  v4 = sub_1BA4A2A88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeatureStatusActionHandlerUserData.__allocating_init(featureStatusKind:actionURL:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_featureStatusKind;
  v6 = sub_1BA4A2A88();
  (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  sub_1BA12BCA4(a2, v4 + OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_actionURL);
  return v4;
}

uint64_t FeatureStatusActionHandlerUserData.init(featureStatusKind:actionURL:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_featureStatusKind;
  v6 = sub_1BA4A2A88();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  sub_1BA12BCA4(a2, v2 + OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_actionURL);
  return v2;
}

uint64_t sub_1BA12BCA4(uint64_t a1, uint64_t a2)
{
  sub_1BA12D6EC(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA12BD24()
{
  if (*v0)
  {
    return 0x52556E6F69746361;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1BA12BD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001BA4ECD60 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x52556E6F69746361 && a2 == 0xE90000000000004CLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1BA4A8338();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1BA12BE58(uint64_t a1)
{
  v2 = sub_1BA12C238();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA12BE94(uint64_t a1)
{
  v2 = sub_1BA12C238();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeatureStatusActionHandlerUserData.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_featureStatusKind;
  v2 = sub_1BA4A2A88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BA12D7AC(v0 + OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_actionURL, &qword_1EDC6AE90, MEMORY[0x1E6968FB0]);
  return v0;
}

uint64_t FeatureStatusActionHandlerUserData.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_featureStatusKind;
  v2 = sub_1BA4A2A88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BA12D7AC(v0 + OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_actionURL, &qword_1EDC6AE90, MEMORY[0x1E6968FB0]);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA12C024(void *a1)
{
  sub_1BA12C6C4(0, &qword_1EBBEC4E0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA12C238();
  sub_1BA4A8548();
  v9[15] = 0;
  sub_1BA4A2A88();
  sub_1BA12D808(&qword_1EBBEC4F0, MEMORY[0x1E69A31E0]);
  sub_1BA4A8288();
  if (!v1)
  {
    v9[14] = 1;
    sub_1BA4A15D8();
    sub_1BA12D808(&qword_1EBBEC4F8, MEMORY[0x1E6968FB0]);
    sub_1BA4A8238();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1BA12C238()
{
  result = qword_1EBBEC4E8;
  if (!qword_1EBBEC4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC4E8);
  }

  return result;
}

uint64_t FeatureStatusActionHandlerUserData.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FeatureStatusActionHandlerUserData.init(from:)(a1);
  return v2;
}

uint64_t FeatureStatusActionHandlerUserData.init(from:)(void *a1)
{
  sub_1BA12D6EC(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_1BA4A2A88();
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA12C6C4(0, &qword_1EBBEC500, MEMORY[0x1E69E6F48]);
  v21 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA12C238();
  sub_1BA4A8528();
  if (v1)
  {
    v13 = v22;
    type metadata accessor for FeatureStatusActionHandlerUserData();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = v10;
    v14 = v19;
    v24 = 0;
    sub_1BA12D808(&qword_1EBBEC508, MEMORY[0x1E69A31E0]);
    sub_1BA4A81C8();
    v15 = *(v14 + 32);
    v13 = v22;
    v17 = OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_featureStatusKind;
    v15(v22 + OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_featureStatusKind, v8, v20);
    sub_1BA4A15D8();
    v23 = 1;
    sub_1BA12D808(&qword_1EBBEC510, MEMORY[0x1E6968FB0]);
    sub_1BA4A8178();
    (*(v18 + 8))(v12, v21);
    sub_1BA12BCA4(v5, v13 + OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_actionURL);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

void sub_1BA12C6C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA12C238();
    v7 = a3(a1, &type metadata for FeatureStatusActionHandlerUserData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t type metadata accessor for FeatureStatusActionHandlerUserData()
{
  result = qword_1EBBEC528;
  if (!qword_1EBBEC528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA12C774@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 112))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BA12C814()
{
  v0 = *MEMORY[0x1E696B7E0];
  v1 = *MEMORY[0x1E696B7E0];
  return v0;
}

uint64_t HealthChecklistFeatureStatusFeedItemProvider.onboardingPromotionAvailabilityContext.getter()
{
  v0 = *MEMORY[0x1E696B7E0];
  v1 = *MEMORY[0x1E696B7E0];
  return v0;
}

uint64_t HealthChecklistFeatureStatusFeedItemProvider.makeUpgradeConfiguration()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BA4A30B8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t HealthChecklistFeatureStatusFeedItemProvider.makeActionHandlerUserData(for:featureStatus:)(uint64_t a1)
{
  v2 = sub_1BA4A2A88();
  v94 = *(v2 - 8);
  v95 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v92 = v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA4A15D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v80 = v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1BA4A1268();
  v79 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v100 = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1BA4A1248();
  v78 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v98 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F427F8();
  v77[1] = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1BA4A1278();
  v88 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v77[0] = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v87 = v77 - v14;
  v84 = sub_1BA4A11D8();
  v15 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v83 = v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1BA4A11E8();
  v17 = *(v82 - 1);
  MEMORY[0x1EEE9AC00](v82);
  v81 = v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BA4A1208();
  MEMORY[0x1EEE9AC00](v19 - 8);
  sub_1BA12D6EC(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v89 = v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v97 = v77 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v90 = v77 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v77 - v27;
  sub_1BA12D6EC(0, &unk_1EDC6E290, MEMORY[0x1E6968848]);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v96 = (v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v31);
  v33 = v77 - v32;
  v91 = a1;
  sub_1BA4A3038();
  v93 = v5;
  v34 = *(v5 + 56);
  v103 = v4;
  v35 = v4;
  v36 = v33;
  v86 = v5 + 56;
  v85 = v34;
  v34(v28, 1, 1, v35);
  (*(v17 + 104))(v81, *MEMORY[0x1E6968750], v82);
  (*(v15 + 104))(v83, *MEMORY[0x1E6968728], v84);
  sub_1BA4A11F8();
  sub_1BA4A12A8();
  v37 = 0;
  v38 = sub_1BA4A12C8();
  v39 = *(v38 - 8);
  (*(v39 + 56))(v33, 0, 1, v38);
  v40 = v96;
  sub_1BA12D740(v33, v96, &unk_1EDC6E290, MEMORY[0x1E6968848]);
  v41 = (*(v39 + 48))(v40, 1, v38);
  v42 = v102;
  v44 = v94;
  v43 = v95;
  if (v41 == 1)
  {
    sub_1BA12D7AC(v40, &unk_1EDC6E290, MEMORY[0x1E6968848]);
    v45 = v90;
    v85(v90, 1, 1, v103);
    v46 = v89;
  }

  else
  {
    v81 = v36;
    v47 = v87;
    sub_1BA4A1288();
    (*(v39 + 8))(v40, v38);
    (*(v88 + 16))(v77[0], v47, v42);
    v48 = MEMORY[0x1E69687C8];
    sub_1BA12D808(&qword_1EDC6AED0, MEMORY[0x1E69687C8]);
    sub_1BA4A69F8();
    sub_1BA12D808(&qword_1EDC6AEC8, v48);
    v49 = (v79 + 8);
    v96 = (v78 + 16);
    v50 = (v78 + 8);
    v51 = (v93 + 48);
    v83 = MEMORY[0x1E69E7CC0];
    v82 = (v93 + 32);
LABEL_4:
    v84 = v37;
    while (1)
    {
      v52 = v100;
      v53 = v102;
      sub_1BA4A6E38();
      sub_1BA12D808(&qword_1EDC6AED8, MEMORY[0x1E69687B0]);
      v54 = v101;
      v55 = sub_1BA4A6728();
      (*v49)(v52, v54);
      if (v55)
      {
        break;
      }

      v56 = sub_1BA4A6E88();
      v58 = v98;
      v57 = v99;
      (*v96)(v98);
      v56(v104, 0);
      sub_1BA4A6E48();
      sub_1BA12D850();
      v59 = v97;
      sub_1BA4A1258();
      (*v50)(v58, v57);
      if ((*v51)(v59, 1, v103) != 1)
      {
        v60 = v59;
        v61 = *v82;
        (*v82)(v80, v60, v103);
        v62 = v83;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_1BA27FFA4(0, *(v62 + 2) + 1, 1, v62);
        }

        v37 = v84;
        v64 = *(v62 + 2);
        v63 = *(v62 + 3);
        v65 = v64 + 1;
        if (v64 >= v63 >> 1)
        {
          v84 = v64 + 1;
          v67 = sub_1BA27FFA4(v63 > 1, v64 + 1, 1, v62);
          v65 = v84;
          v62 = v67;
        }

        *(v62 + 2) = v65;
        v66 = (*(v93 + 80) + 32) & ~*(v93 + 80);
        v83 = v62;
        v61(&v62[v66 + *(v93 + 72) * v64], v80, v103);
        goto LABEL_4;
      }

      sub_1BA12D7AC(v59, &qword_1EDC6AE90, MEMORY[0x1E6968FB0]);
    }

    sub_1BA12E418(v11);
    (*(v88 + 8))(v87, v53);
    if (*(v83 + 2))
    {
      v45 = v90;
      v68 = v103;
      (*(v93 + 16))(v90, &v83[(*(v93 + 80) + 32) & ~*(v93 + 80)], v103);

      v69 = v45;
      v70 = 0;
      v71 = v68;
    }

    else
    {

      v45 = v90;
      v69 = v90;
      v70 = 1;
      v71 = v103;
    }

    v85(v69, v70, 1, v71);
    v44 = v94;
    v43 = v95;
    v36 = v81;
    v46 = v89;
    v37 = v84;
  }

  v72 = v92;
  sub_1BA4A3018();
  sub_1BA12D740(v45, v46, &qword_1EDC6AE90, MEMORY[0x1E6968FB0]);
  type metadata accessor for FeatureStatusActionHandlerUserData();
  v73 = swift_allocObject();
  (*(v44 + 32))(v73 + OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_featureStatusKind, v72, v43);
  sub_1BA12BCA4(v46, v73 + OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_actionURL);
  sub_1BA4A0EE8();
  swift_allocObject();
  sub_1BA4A0ED8();
  v104[0] = v73;
  sub_1BA12D808(&qword_1EBBEC518, type metadata accessor for FeatureStatusActionHandlerUserData);
  v74 = sub_1BA4A0EC8();
  if (v37)
  {

    v75 = 0;
  }

  else
  {
    v75 = v74;
  }

  sub_1BA12D7AC(v45, &qword_1EDC6AE90, MEMORY[0x1E6968FB0]);
  sub_1BA12D7AC(v36, &unk_1EDC6E290, MEMORY[0x1E6968848]);

  return v75;
}

void sub_1BA12D6EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA12D740(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1BA12D6EC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA12D7AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1BA12D6EC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA12D808(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BA12D850()
{
  result = qword_1EBBEC520;
  if (!qword_1EBBEC520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC520);
  }

  return result;
}

uint64_t HealthChecklistFeatureStatusFeedItemProvider.makeConfiguration(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a3;
  v67 = a2;
  v68 = a4;
  v5 = sub_1BA4A3EA8();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A3908();
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1BA4A38B8();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A38E8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A3938();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v54 - v22;
  v24 = a1;
  v25 = a1;
  v26 = *(v15 + 16);
  v26(&v54 - v22, v25, v14, v21);
  v27 = (*(v15 + 88))(v23, v14);
  if (v27 == *MEMORY[0x1E69A3888])
  {
    (*(v15 + 96))(v23, v14);
    (*(v11 + 32))(v13, v23, v10);
    sub_1BA12DF48(v13, v24, v67, v65, v68);
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v29 = v65;
    v30 = v24;
    if (v27 == *MEMORY[0x1E69A3880])
    {
      (*(v15 + 96))(v23, v14);
      v32 = v56;
      v31 = v57;
      v33 = v59;
      (*(v57 + 32))(v56, v23, v59);
      v34 = v58;
      sub_1BA4A38A8();
      sub_1BA12E2B4(v30, v67, v29, v68);
      (*(v60 + 8))(v34, v61);
      return (*(v31 + 8))(v32, v33);
    }

    else
    {
      v35 = v64;
      _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
      v36 = v19;
      (v26)(v19, v30, v14);
      v37 = sub_1BA4A3E88();
      v38 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        LODWORD(v65) = v38;
        v40 = v36;
        v41 = v39;
        v66 = swift_slowAlloc();
        v69 = v66;
        *v41 = 136446466;
        v42 = sub_1BA4A85D8();
        v44 = sub_1B9F0B82C(v42, v43, &v69);

        *(v41 + 4) = v44;
        *(v41 + 12) = 2080;
        (v26)(v55, v40, v14);
        v45 = sub_1BA4A6808();
        v47 = v46;
        v48 = v40;
        v49 = *(v15 + 8);
        v49(v48, v14);
        v50 = sub_1B9F0B82C(v45, v47, &v69);

        *(v41 + 14) = v50;
        _os_log_impl(&dword_1B9F07000, v37, v65, "[%{public}s] Unknown feature status received: %s", v41, 0x16u);
        v51 = v66;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v51, -1, -1);
        MEMORY[0x1BFAF43A0](v41, -1, -1);

        (*(v62 + 8))(v64, v63);
      }

      else
      {

        v49 = *(v15 + 8);
        v49(v36, v14);
        (*(v62 + 8))(v35, v63);
      }

      v52 = v68;
      v53 = sub_1BA4A30B8();
      (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
      return (v49)(v23, v14);
    }
  }
}

void sub_1BA12DF48(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a2;
  v10 = sub_1BA4A3908();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a4 + 32);
  v38 = v5;
  v16 = v15(a3, a4, v12);
  v37 = a1;
  if (v16)
  {
    v17 = v16;
    sub_1BA4A38A8();
    v18 = sub_1BA4A3918();
    (*(v11 + 8))(v14, v10);
    v19 = [v18 areAllRequirementsSatisfied];

    if (v19)
    {
      (*(a4 + 48))(a3, a4);

      return;
    }
  }

  v35 = a5;
  sub_1BA4A38A8();
  v33 = *(a4 + 16);
  v20 = v33(a3, a4);
  v21 = sub_1BA4A3918();

  v22 = *(v11 + 8);
  v34 = v10;
  v23 = v10;
  v24 = v22;
  v22(v14, v23);
  LODWORD(v20) = [v21 areAllRequirementsSatisfied];

  if (v20)
  {
    (*(a4 + 40))(v36, a3, a4);
    return;
  }

  v25 = (*(a4 + 24))(a3, a4);
  v26 = v24;
  v27 = v34;
  if (v25)
  {
    v28 = v25;
    sub_1BA4A38A8();
    v29 = sub_1BA4A3918();
    v26(v14, v27);
    v30 = [v29 areAllRequirementsSatisfied];

    if (v30)
    {
      (*(a4 + 56))(1, v36, a3, a4);

      return;
    }
  }

  sub_1BA4A38A8();
  v31 = v33(a3, a4);
  v32 = sub_1BA4A3918();

  v26(v14, v27);
  (*(a4 + 64))(1, v32, a3, a4);
}

void sub_1BA12E2B4(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = (*(a3 + 24))(a2, a3);
  if (v8)
  {
    v9 = v8;
    v13 = sub_1BA4A3918();
    v10 = [v13 areAllRequirementsSatisfied];
    if (v10)
    {
      (*(a3 + 56))(0, a1, a2, a3);
    }

    else
    {
      (*(a3 + 64))(v10, v13, a2, a3);
    }
  }

  else
  {
    v11 = sub_1BA4A30B8();
    v12 = *(*(v11 - 8) + 56);

    v12(a4, 1, 1, v11);
  }
}

uint64_t sub_1BA12E418(uint64_t a1)
{
  sub_1B9F427F8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA12E47C()
{
  sub_1BA4A2A88();
  if (v0 <= 0x3F)
  {
    sub_1BA12D6EC(319, &qword_1EDC6AE90, MEMORY[0x1E6968FB0]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1BA12E690()
{
  result = qword_1EBBEC538;
  if (!qword_1EBBEC538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC538);
  }

  return result;
}

unint64_t sub_1BA12E6E8()
{
  result = qword_1EBBEC540;
  if (!qword_1EBBEC540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC540);
  }

  return result;
}

unint64_t sub_1BA12E740()
{
  result = qword_1EBBEC548;
  if (!qword_1EBBEC548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC548);
  }

  return result;
}

uint64_t UserInterface.reuseIdentifierComponent.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    goto LABEL_5;
  }

  if (a3 == 3)
  {
    type metadata accessor for ContentConfigurationHostCell();
    v3 = &qword_1EDC646E8;
    v4 = type metadata accessor for ContentConfigurationHostCell;
    goto LABEL_6;
  }

  if (a3 == 4)
  {
    type metadata accessor for ListContentConfigurationHostCell();
    v3 = &qword_1EDC62898;
    v4 = type metadata accessor for ListContentConfigurationHostCell;
  }

  else
  {
LABEL_5:
    type metadata accessor for ChromeHostViewCell(0);
    v3 = qword_1EDC6D7F8;
    v4 = type metadata accessor for ChromeHostViewCell;
  }

LABEL_6:
  sub_1BA12E858(0, v3, v4);
  return sub_1BA4A6808();
}

uint64_t sub_1BA12E858(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t MostRecentSamplesQueryError.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

void sub_1BA12E930()
{
  sub_1BA130AB0();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA130CC4();
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA130E08();
  v25 = v9;
  v23 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v21 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA130FF8();
  v26 = v11;
  v24 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v22 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleResult))
  {
    v28 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleResult);
    v27 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_countResult);
    sub_1BA130B98();
    sub_1BA130C48();
    sub_1BA13C020(&qword_1EDC5F3F8, sub_1BA130B98);
    sub_1BA13C020(&unk_1EDC5F3C0, sub_1BA130C48);
    sub_1BA4A4FF8();
    sub_1BA130D70();
    sub_1BA13C020(&qword_1EDC5F5E8, sub_1BA130AB0);
    sub_1BA4A4FE8();
    (*(v3 + 8))(v5, v2);
    sub_1BA13C020(&qword_1EDC5F638, sub_1BA130CC4);
    v13 = v20;
    v14 = sub_1BA4A4F98();
    (*(v19 + 8))(v8, v13);
    v27 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47ElectrocardiogramDataTypeMostRecentSamplesQuery_activeAlgorithmVersionResult);
    v28 = v14;
    sub_1BA132AB4(0, &qword_1EDC5F4C8, sub_1BA130D70);
    sub_1BA130F00();
    sub_1BA130FA8(&unk_1EDC5F4D0, &qword_1EDC5F4C8, sub_1BA130D70);
    sub_1BA13C020(&qword_1EDC5F3D8, sub_1BA130F00);
    v15 = v21;
    sub_1BA4A4FF8();

    sub_1BA1310A4();
    sub_1BA13C020(&qword_1EDC5F600, sub_1BA130E08);
    v16 = v22;
    v17 = v25;
    sub_1BA4A4FE8();
    (*(v23 + 8))(v15, v17);
    sub_1BA13C020(&qword_1EDC5F648, sub_1BA130FF8);
    v18 = v26;
    sub_1BA4A4F98();
    (*(v24 + 8))(v16, v18);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA12EEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;
}

void *ElectrocardiogramDataTypeMostRecentSamplesQuery.init(sampleType:healthStore:unitController:sampleQueryLimit:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v38 = a3;
  v9 = *v4;
  v36 = a4;
  v37 = v9;
  Limit = type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit(0);
  v11 = *(Limit - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](Limit - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  *(swift_allocObject() + 16) = a2;
  sub_1BA130F00();
  swift_allocObject();
  v17 = a2;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI47ElectrocardiogramDataTypeMostRecentSamplesQuery_activeAlgorithmVersionResult) = sub_1BA4A4EA8();
  sub_1BA13B644(a4, v16, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);
  v18 = OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_cancellables;
  sub_1BA4A2AA8();
  swift_allocObject();
  *(v4 + v18) = sub_1BA4A2A98();
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleResult) = 0;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery____lazy_storage___allowedMetadataKeys) = 0;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_healthStore) = v17;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleType) = a1;
  v39 = v16;
  v35 = type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit;
  sub_1BA13B644(v16, v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_queryLimit, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);
  sub_1BA13B644(v16, v13, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v34 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_1BA132190(v13, v21 + v19);
  *(v21 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  *(v21 + v20) = v17;
  sub_1BA130C48();
  swift_allocObject();
  v22 = v17;
  v23 = a1;
  v33 = v22;
  v32 = v23;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_countResult) = sub_1BA4A4EA8();
  v24 = v35;
  sub_1BA13B644(v39, v13, v35);
  v25 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  sub_1BA132190(v13, v27 + v19);
  v28 = v33;
  *(v27 + v34) = v32;
  *(v27 + v20) = v28;
  v29 = v37;
  *(v27 + v25) = v38;
  *(v27 + v26) = v5;
  *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v29;
  sub_1BA130B98();
  swift_allocObject();

  v30 = sub_1BA4A4EA8();
  sub_1BA13B6AC(v36, v24);
  sub_1BA13B6AC(v39, v24);
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleResult) = v30;

  return v5;
}

void sub_1BA12F2A4(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v33 = 0;
  v11 = [v10 versionWithHealthStore:a3 error:&v33];
  v12 = v11;
  v13 = v33;
  if (v33)
  {
    v14 = v33;

    swift_willThrow();
    sub_1BA4A3D88();
    v15 = v14;
    v16 = sub_1BA4A3E88();
    v17 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31 = a1;
      v19 = v18;
      v20 = swift_slowAlloc();
      v30[1] = a2;
      v21 = v20;
      v33 = v20;
      *v19 = 136446210;
      v32 = v15;
      sub_1B9F0D9AC(0, &qword_1EDC6E310);
      v22 = v15;
      v23 = sub_1BA4A6808();
      v25 = sub_1B9F0B82C(v23, v24, &v33);
      v30[0] = v6;
      v26 = v25;

      *(v19 + 4) = v26;
      _os_log_impl(&dword_1B9F07000, v16, v17, "Error fetching active ECG version %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
      v27 = v19;
      a1 = v31;
      MEMORY[0x1BFAF43A0](v27, -1, -1);

      (*(v7 + 8))(v9, v30[0]);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    v33 = v13;
    v34 = 256;
    v29 = v15;
    a1(&v33);
  }

  else
  {
    if (v11)
    {
      v28 = [v11 integerValue];
    }

    else
    {
      v28 = 0;
    }

    v33 = v28;
    v34 = v12 == 0;
    a1(&v33);
  }
}

void *DataTypeMostRecentSamplesQuery.init(sampleType:healthStore:unitController:sampleQueryLimit:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v31 = a2;
  v35 = *v4;
  v36 = a3;
  Limit = type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit(0);
  v10 = *(Limit - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](Limit - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_cancellables;
  sub_1BA4A2AA8();
  swift_allocObject();
  *(v4 + v13) = sub_1BA4A2A98();
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleResult) = 0;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery____lazy_storage___allowedMetadataKeys) = 0;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_healthStore) = a2;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleType) = a1;
  v34 = type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit;
  v14 = a4;
  sub_1BA13B644(a4, v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_queryLimit, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);
  v32 = a4;
  sub_1BA13B644(a4, v12, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = v16;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_1BA132190(v12, v18 + v15);
  v19 = a1;
  *(v18 + v16) = a1;
  v20 = v31;
  *(v18 + v17) = v31;
  sub_1BA130C48();
  swift_allocObject();
  v21 = v20;
  v31 = v19;
  v30 = v21;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_countResult) = sub_1BA4A4EA8();
  v22 = v34;
  sub_1BA13B644(v14, v12, v34);
  v23 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_1BA132190(v12, v25 + v15);
  *(v25 + v33) = v31;
  *(v25 + v17) = v30;
  v26 = v35;
  *(v25 + v23) = v36;
  *(v25 + v24) = v5;
  *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
  sub_1BA130B98();
  swift_allocObject();

  v27 = sub_1BA4A4EA8();
  sub_1BA13B6AC(v32, v22);
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleResult) = v27;

  return v5;
}

void sub_1BA12F8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v40 = a4;
  sub_1BA130AB0();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA130CC4();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA130E08();
  v37 = v13;
  v35 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v33 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA130FF8();
  v38 = v15;
  v36 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v34 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleResult))
  {
    v42 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleResult);
    v41 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_countResult);
    sub_1BA130B98();
    sub_1BA130C48();
    sub_1BA13C020(&qword_1EDC5F3F8, sub_1BA130B98);
    sub_1BA13C020(&unk_1EDC5F3C0, sub_1BA130C48);
    v17 = v4;
    sub_1BA4A4FF8();
    sub_1BA130D70();
    sub_1BA13C020(&qword_1EDC5F5E8, sub_1BA130AB0);
    sub_1BA4A4FE8();
    (*(v7 + 8))(v9, v6);
    sub_1BA13C020(&qword_1EDC5F638, sub_1BA130CC4);
    v18 = v32;
    v19 = sub_1BA4A4F98();
    (*(v31 + 8))(v12, v18);
    v41 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI47ElectrocardiogramDataTypeMostRecentSamplesQuery_activeAlgorithmVersionResult);
    v42 = v19;
    sub_1BA132AB4(0, &qword_1EDC5F4C8, sub_1BA130D70);
    sub_1BA130F00();
    sub_1BA130FA8(&unk_1EDC5F4D0, &qword_1EDC5F4C8, sub_1BA130D70);
    sub_1BA13C020(&qword_1EDC5F3D8, sub_1BA130F00);
    v20 = v33;
    sub_1BA4A4FF8();

    sub_1BA1310A4();
    sub_1BA13C020(&qword_1EDC5F600, sub_1BA130E08);
    v21 = v34;
    v22 = v37;
    sub_1BA4A4FE8();
    (*(v35 + 8))(v20, v22);
    sub_1BA13C020(&qword_1EDC5F648, sub_1BA130FF8);
    v23 = v38;
    v24 = sub_1BA4A4F98();
    (*(v36 + 8))(v21, v23);
    v42 = v24;
    v25 = swift_allocObject();
    v26 = v39;
    v27 = v40;
    *(v25 + 16) = v39;
    *(v25 + 24) = v27;
    v28 = swift_allocObject();
    v28[2] = v26;
    v28[3] = v27;
    v28[4] = v17;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1BA132A6C;
    *(v29 + 24) = v28;
    sub_1BA132AB4(0, &qword_1EDC5F4E0, sub_1BA1310A4);
    sub_1BA130FA8(&qword_1EDC5F4E8, &qword_1EDC5F4E0, sub_1BA1310A4);
    swift_retain_n();

    v30 = sub_1BA4A5008();

    v42 = v30;
    sub_1BA4A4D58();
    sub_1BA4A4CE8();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA12FF94(unint64_t a1, uint64_t a2, id a3, void *a4, void (*a5)(void *, void), uint64_t a6, uint64_t a7)
{
  v54 = a7;
  v56 = a6;
  v57 = a5;
  v10 = sub_1BA4A3EA8();
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A1728();
  v50 = *(v13 - 8);
  v51 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Limit = type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit(0);
  v17 = Limit;
  MEMORY[0x1EEE9AC00](Limit);
  v19 = (&v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = sub_1BA4A0FA8();
  v49 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_allocWithZone(MEMORY[0x1E69A4190]) init];
  if (!v22)
  {
    goto LABEL_15;
  }

  v23 = v22;
  v24 = [objc_allocWithZone(MEMORY[0x1E69A4180]) init];
  if (!v24)
  {

LABEL_15:
    v57(0, 0);
    return;
  }

  v25 = v24;
  if (a4)
  {
    if (a1 >> 62)
    {
      v26 = sub_1BA4A7CC8();
      if (!v26)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
        goto LABEL_22;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x1BFAF2860](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_34;
      }

      v27 = *(a1 + 32);
    }

    v28 = v27;
    objc_opt_self();
    v48 = v28;
    v29 = swift_dynamicCastObjCClass();
    if (v29)
    {
      v30 = [v29 _algorithmVersion];
      if (v30)
      {
        v31 = v30;
        a3 = [v30 integerValue];

        goto LABEL_12;
      }
    }

LABEL_22:
    sub_1BA4A3D88();

    v19 = sub_1BA4A3E88();
    v17 = sub_1BA4A6FA8();

    if (!os_log_type_enabled(v19, v17))
    {
LABEL_29:

      (*(v52 + 8))(v12, v53);
      v57(0, 0);

      return;
    }

    a4 = v25;
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v15 = 138412290;
    if (!v26)
    {
      v47 = 0;
LABEL_28:
      *(v15 + 4) = v47;
      *v25 = v47;
      _os_log_impl(&dword_1B9F07000, v19, v17, "Unable to resolve ECG version from sample %@", v15, 0xCu);
      sub_1B9F8C6C8(v25);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
      v25 = a4;
      goto LABEL_29;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v47 = *(a1 + 32);
      goto LABEL_28;
    }

LABEL_34:
    v47 = MEMORY[0x1BFAF2860](0, a1);
    goto LABEL_28;
  }

LABEL_12:
  v32 = sub_1BA13AC4C(a1, a3);
  if (v33 >> 60 == 15)
  {
    v34 = 0;
  }

  else
  {
    v35 = v32;
    v36 = v33;
    v34 = sub_1BA4A15F8();
    sub_1B9F6AC8C(v35, v36);
  }

  [v25 setQueryDataObject_];

  [v25 setType_];
  sub_1BA13B644(v54 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_queryLimit, v19, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = v49;
    (*(v49 + 32))(v21, v19, v55);
    v38 = sub_1BA4A0F28();
    v39 = [v38 hk_codableDateInterval];

    [v23 setSixMonthDateInterval_];
    sub_1BA4A0F88();
    v40 = sub_1BA4A16B8();
    v41 = v51;
    v42 = *(v50 + 8);
    v42(v15, v51);
    v43 = MEMORY[0x1BFAF3470](v40);

    [v25 setStartDate_];
    sub_1BA4A0F58();
    v44 = sub_1BA4A16B8();
    v42(v15, v41);
    v45 = MEMORY[0x1BFAF3470](v44);

    [v25 setEndDate_];
    (*(v37 + 8))(v21, v55);
  }

  else
  {
    sub_1BA13B6AC(v19, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);
  }

  [v23 setSixMonthData_];
  v46 = v23;
  v57(v23, 0);
}

uint64_t ElectrocardiogramDataTypeMostRecentSamplesQuery.deinit()
{
  sub_1BA13B6AC(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_queryLimit, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);

  return v0;
}

uint64_t DataTypeMostRecentSamplesQuery.deinit()
{
  sub_1BA13B6AC(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_queryLimit, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);

  return v0;
}

uint64_t ElectrocardiogramDataTypeMostRecentSamplesQuery.__deallocating_deinit()
{
  ElectrocardiogramDataTypeMostRecentSamplesQuery.deinit();

  return swift_deallocClassInstance();
}

void sub_1BA1307D0()
{
  sub_1BA130AB0();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA130CC4();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleResult))
  {
    v11[1] = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleResult);
    v11[0] = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_countResult);
    sub_1BA130B98();
    sub_1BA130C48();
    sub_1BA13C020(&qword_1EDC5F3F8, sub_1BA130B98);
    sub_1BA13C020(&unk_1EDC5F3C0, sub_1BA130C48);
    sub_1BA4A4FF8();
    sub_1BA130D70();
    sub_1BA13C020(&qword_1EDC5F5E8, sub_1BA130AB0);
    sub_1BA4A4FE8();
    (*(v3 + 8))(v5, v2);
    sub_1BA13C020(&qword_1EDC5F638, sub_1BA130CC4);
    sub_1BA4A4F98();
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA130AB0()
{
  if (!qword_1EDC5F5D8)
  {
    sub_1BA130B98();
    sub_1BA130C48();
    sub_1BA13C020(&qword_1EDC5F3F8, sub_1BA130B98);
    sub_1BA13C020(&unk_1EDC5F3C0, sub_1BA130C48);
    v0 = sub_1BA4A4B88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F5D8);
    }
  }
}

void sub_1BA130B98()
{
  if (!qword_1EDC5F3F0)
  {
    sub_1BA13B7A8(255, &unk_1EDC5E620, &qword_1EDC5E1C0, 0x1E696C3A8, MEMORY[0x1E69E62F8]);
    sub_1B9F0D9AC(255, &qword_1EDC6E310);
    v0 = sub_1BA4A4E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F3F0);
    }
  }
}

void sub_1BA130C48()
{
  if (!qword_1EDC5F3B0)
  {
    sub_1B9F0D9AC(255, &qword_1EDC6E310);
    v0 = sub_1BA4A4E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F3B0);
    }
  }
}

void sub_1BA130CC4()
{
  if (!qword_1EDC5F628)
  {
    sub_1BA130AB0();
    sub_1BA130D70();
    sub_1BA13C020(&qword_1EDC5F5E8, sub_1BA130AB0);
    v0 = sub_1BA4A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F628);
    }
  }
}

void sub_1BA130D70()
{
  if (!qword_1EDC5E630)
  {
    sub_1BA13B7A8(255, &unk_1EDC5E620, &qword_1EDC5E1C0, 0x1E696C3A8, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5E630);
    }
  }
}

void sub_1BA130E08()
{
  if (!qword_1EDC5F5F0)
  {
    sub_1BA132AB4(255, &qword_1EDC5F4C8, sub_1BA130D70);
    sub_1BA130F00();
    sub_1BA130FA8(&unk_1EDC5F4D0, &qword_1EDC5F4C8, sub_1BA130D70);
    sub_1BA13C020(&qword_1EDC5F3D8, sub_1BA130F00);
    v0 = sub_1BA4A4B88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F5F0);
    }
  }
}

void sub_1BA130F00()
{
  if (!qword_1EDC5F3D0)
  {
    sub_1BA13BAA0(255, &qword_1EDC6B640, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    sub_1B9F0D9AC(255, &qword_1EDC6E310);
    v0 = sub_1BA4A4E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F3D0);
    }
  }
}

uint64_t sub_1BA130FA8(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1BA132AB4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA130FF8()
{
  if (!qword_1EDC5F640)
  {
    sub_1BA130E08();
    sub_1BA1310A4();
    sub_1BA13C020(&qword_1EDC5F600, sub_1BA130E08);
    v0 = sub_1BA4A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F640);
    }
  }
}

void sub_1BA1310A4()
{
  if (!qword_1EDC5E638)
  {
    sub_1BA13B7A8(255, &unk_1EDC5E620, &qword_1EDC5E1C0, 0x1E696C3A8, MEMORY[0x1E69E62F8]);
    sub_1BA13BAA0(255, &qword_1EDC6B640, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDC5E638);
    }
  }
}

char *sub_1BA131178()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery____lazy_storage___allowedMetadataKeys;
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery____lazy_storage___allowedMetadataKeys))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery____lazy_storage___allowedMetadataKeys);
  }

  else
  {
    v2 = sub_1BA131A58(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t (*sub_1BA1311F8(char **a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_1BA131178();
  return sub_1BA131240;
}

id sub_1BA131258(unint64_t a1, void *a2)
{
  v49 = a2;
  v3 = sub_1BA4A2338();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BA4A7CC8())
  {
    v7 = MEMORY[0x1E69E7CC0];
    v43 = v5;
    if (!i)
    {
      goto LABEL_32;
    }

    v61 = MEMORY[0x1E69E7CC0];
    result = sub_1BA4A7F08();
    if (i < 0)
    {
      break;
    }

    v9 = 0;
    v10 = a1;
    a1 = 0;
    v48 = v10 & 0xC000000000000001;
    v45 = v10 & 0xFFFFFFFFFFFFFF8;
    v46 = v10;
    v44 = v10 + 32;
    v47 = i;
    while (1)
    {
      v5 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v48)
      {
        v11 = MEMORY[0x1BFAF2860]();
      }

      else
      {
        if (v9 >= *(v45 + 16))
        {
          goto LABEL_38;
        }

        v11 = *(v44 + 8 * v9);
      }

      v12 = v11;
      v13 = sub_1BA13AF24(v11, v49);
      v14 = [v12 metadata];
      v52 = v5;
      v51 = v13;
      v50 = v12;
      if (v14)
      {
        v15 = v14;
        v16 = sub_1BA4A6628();
      }

      else
      {
        v16 = sub_1B9FDB798(v7);
      }

      v5 = sub_1BA13B484(v17);
      v53 = a1;
      a1 = v16;

      v60 = v7;
      v18 = 1 << *(v5 + 32);
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v20 = v19 & v5[8];
      v21 = (v18 + 63) >> 6;

      for (j = 0; v20; v7 = v60)
      {
LABEL_22:
        v24 = __clz(__rbit64(v20)) | (j << 6);
        v25 = (v5[6] + 16 * v24);
        v27 = *v25;
        v26 = v25[1];
        sub_1B9F0AD9C(v5[7] + 32 * v24, &v59);
        v58[0] = v27;
        v58[1] = v26;
        sub_1BA13B644(v58, v56, sub_1BA0009D8);
        v29 = v56[0];
        v28 = v56[1];
        sub_1BA13B644(v58, v55, sub_1BA0009D8);

        sub_1B9F0ADF8(0, &qword_1EDC6E350);
        if (swift_dynamicCast())
        {
          v30 = v54;
        }

        else
        {
          v30 = 0;
        }

        sub_1B9F0ADF8(0, &qword_1EDC5E270);
        HKCodableMetadataKeyValuePair.init(pair:)(v29, v28, v30);
        v31 = __swift_destroy_boxed_opaque_existential_1(&v57);
        MEMORY[0x1BFAF1510](v31);
        if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BA4A6B68();
        }

        v20 &= v20 - 1;
        sub_1BA4A6BB8();
        sub_1BA13B6AC(v58, sub_1BA0009D8);
      }

      while (1)
      {
        v23 = j + 1;
        if (__OFADD__(j, 1))
        {
          __break(1u);
          goto LABEL_37;
        }

        if (v23 >= v21)
        {
          break;
        }

        v20 = v5[v23 + 8];
        ++j;
        if (v20)
        {
          j = v23;
          goto LABEL_22;
        }
      }

      result = [objc_allocWithZone(MEMORY[0x1E69A41F0]) init];
      if (!result)
      {
        goto LABEL_41;
      }

      v32 = result;

      sub_1B9FE5EE8(v7);

      v33 = objc_allocWithZone(MEMORY[0x1E695DF70]);
      v34 = sub_1BA4A6AE8();

      v35 = [v33 initWithArray_];

      [v32 setKeyValuePairs_];
      [v51 setMetadataDictionary_];

      sub_1BA4A7ED8();
      sub_1BA4A7F18();
      sub_1BA4A7F28();
      sub_1BA4A7EE8();
      v9 = v52;
      v7 = MEMORY[0x1E69E7CC0];
      a1 = v53;
      if (v52 == v47)
      {
        v7 = v61;
LABEL_32:
        sub_1B9F0ADF8(0, &qword_1EDC5E5A8);
        v36 = v49;
        v37 = v43;
        sub_1BA4A2308();
        v38 = sub_1BA0813C0(v7, v36, v37);

        v39 = [v38 data];
        if (v39)
        {
          v40 = v39;
          v41 = sub_1BA4A1608();
        }

        else
        {

          return 0;
        }

        return v41;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1BA1318A0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
}

void sub_1BA1318D8()
{
  sub_1BA13BAA0(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B7510;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  swift_getKeyPath();
  *(v0 + 32) = sub_1BA4A71B8();
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v1 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v2 = sub_1BA4A6758();

  v3 = [v1 initWithKey:v2 ascending:0];

  *(v0 + 40) = v3;
  qword_1EDC63890 = v0;
}

void sub_1BA1319E8(id *a1)
{
  v1 = [*a1 endDate];
  sub_1BA4A16F8();
}

char *sub_1BA131A58(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleType);
  v2 = [v1 hk_primaryMetadataKey];
  if (v2)
  {
    v3 = v2;
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v41[0] = v5;
  v6 = [v1 hk_secondaryMetadataKey];
  if (v6)
  {
    v7 = v6;
    v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = 0;
  v41[1] = v8;
  v41[2] = v10;
  v12 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v13 = &v41[2 * v11];
  while (++v11 != 3)
  {
    v14 = v13 + 2;
    v15 = *v13;
    v13 += 2;
    if (v15)
    {
      v16 = *(v14 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1BA27EE34(0, *(v12 + 2) + 1, 1, v12);
      }

      v18 = *(v12 + 2);
      v17 = *(v12 + 3);
      if (v18 >= v17 >> 1)
      {
        v12 = sub_1BA27EE34((v17 > 1), v18 + 1, 1, v12);
      }

      *(v12 + 2) = v18 + 1;
      v19 = &v12[16 * v18];
      *(v19 + 4) = v16;
      *(v19 + 5) = v15;
      goto LABEL_8;
    }
  }

  sub_1BA13BAA0(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    v22 = v1;
    v23 = [v21 identifier];
    if (!v23)
    {
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v23 = sub_1BA4A6758();
    }

    v24 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v26 = v25;
    if (v24 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v26 == v27)
    {
    }

    else
    {
      v29 = sub_1BA4A8338();
      v30 = v23;

      if (v29)
      {

LABEL_27:
        sub_1BA13BAA0(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BA4B5480;
        *(inited + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        *(inited + 40) = v32;
        sub_1B9FE271C(inited);

        return v12;
      }

      v34 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v36 = v35;
      v37 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v39 = v38;

      if (v34 != v37 || v36 != v39)
      {
        v40 = sub_1BA4A8338();

        if ((v40 & 1) == 0)
        {

          return v12;
        }

        goto LABEL_27;
      }
    }

    goto LABEL_27;
  }

  return v12;
}

uint64_t sub_1BA131E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = swift_allocObject();
  a5(a1, a2, a3, a4);
  return v10;
}

void sub_1BA131E84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v26 = a5;
  v9 = sub_1BA4A0FA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Limit = type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit(0);
  MEMORY[0x1EEE9AC00](Limit);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  sub_1BA13B644(a3, v15, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v15, v9);
    sub_1B9F0ADF8(0, &qword_1EDC5E548);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    v18 = sub_1BA4A0F28();
    v19 = [ObjCClassFromMetadata predicateForSamplesWithinDateInterval:v18 options:0];

    (*(v10 + 8))(v12, v9);
    v20 = v19;
  }

  else
  {

    v20 = 0;
  }

  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = sub_1BA13C168;
  v21[4] = v16;
  v22 = objc_allocWithZone(MEMORY[0x1E696C3B0]);
  aBlock[4] = sub_1BA13C128;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA139CB4;
  aBlock[3] = &block_descriptor_174;
  v23 = _Block_copy(aBlock);
  v24 = [v22 initWithSampleType:a4 predicate:v20 resultsHandler:v23];

  _Block_release(v23);

  [v26 executeQuery_];
}

uint64_t sub_1BA132190(uint64_t a1, uint64_t a2)
{
  Limit = type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit(0);
  (*(*(Limit - 8) + 32))(a2, a1, Limit);
  return a2;
}

void sub_1BA1321F8(int a1, uint64_t a2, id a3, void *a4, void (*a5)(id, uint64_t))
{
  if (a2 && (v7 = sub_1BA03E8A0(a4, a2)) != 0)
  {
    v12 = v7;
    a5([v7 integerValue], 0);
    v8 = v12;
  }

  else
  {
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      sub_1BA13BB28();
      v9 = swift_allocError();
      *v10 = 0;
    }

    v11 = a3;
    a5(v9, 1);
    v8 = v9;
  }
}

void sub_1BA1322E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v12 = sub_1BA4A0FA8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Limit = type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit(0);
  MEMORY[0x1EEE9AC00](Limit);
  v18 = (&v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  sub_1BA13B644(a3, v18, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v15, v18, v12);
    sub_1B9F0ADF8(0, &qword_1EDC5E548);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    v21 = sub_1BA4A0F28();
    v22 = [ObjCClassFromMetadata predicateForSamplesWithinDateInterval:v21 options:0];

    (*(v13 + 8))(v15, v12);
    v23 = v22;
    v24 = 0;
  }

  else
  {
    v24 = *v18;

    v23 = 0;
  }

  if (qword_1EDC63880 != -1)
  {
    swift_once();
  }

  v25 = swift_allocObject();
  v25[2] = sub_1BA13BAF0;
  v25[3] = v19;
  v26 = v37;
  v27 = v38;
  v25[4] = a4;
  v25[5] = v26;
  v28 = v39;
  v25[6] = v27;
  v25[7] = v28;
  v25[8] = v36;
  v29 = objc_allocWithZone(MEMORY[0x1E696C3C8]);
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v30 = a4;
  v31 = v26;
  v32 = v27;

  v33 = sub_1BA4A6AE8();
  aBlock[4] = sub_1BA13BAF4;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA139DD4;
  aBlock[3] = &block_descriptor_138;
  v34 = _Block_copy(aBlock);
  v35 = [v29 initWithSampleType:v30 predicate:v23 limit:v24 sortDescriptors:v33 resultsHandler:v34];

  _Block_release(v34);

  [v31 executeQuery_];
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = *(type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1BA4A0FA8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  v6 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v2 | 7);
}

void sub_1BA1327A0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1BA131E84(a1, a2, v2 + v6, v8, v9);
}

uint64_t objectdestroy_5Tm_0()
{
  v1 = *(type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1BA4A0FA8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  v6 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

void sub_1BA132990(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + v7);
  v12 = *(v2 + v8);
  v13 = *(v2 + v9);
  v14 = *(v2 + v10);
  v15 = *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1BA1322E0(a1, a2, v2 + v6, v11, v12, v13, v14, v15);
}

void sub_1BA132AB4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1B9F0D9AC(255, &qword_1EDC6E310);
    v4 = sub_1BA4A4D18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BA132B3C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *, uint64_t), uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9)
{
  v16 = sub_1BA4A3EA8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v20 = swift_allocObject();
    v20[2] = a4;
    v20[3] = a5;
    v20[4] = a9;

    v21 = sub_1BA133000(a2, a6, a7, a8, sub_1BA13BB7C, v20);

    v37 = v21;
    sub_1BA4A4D58();
    sub_1BA4A4CE8();
  }

  else
  {
    sub_1BA4A3D88();
    v22 = a3;
    v23 = sub_1BA4A3E88();
    v24 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = a3;
      v37 = v35;
      *v25 = 136446210;
      v26 = a3;
      sub_1B9F224CC(0, &qword_1EDC6B3E0, &qword_1EDC6E310, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
      v27 = sub_1BA4A6808();
      HIDWORD(v34) = v24;
      v29 = sub_1B9F0B82C(v27, v28, &v37);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_1B9F07000, v23, BYTE4(v34), "Error fetching most recent samples %{public}s", v25, 0xCu);
      v30 = v35;
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
    }

    (*(v17 + 8))(v19, v16);
    v31 = a3;
    if (!a3)
    {
      sub_1BA13BB28();
      v31 = swift_allocError();
      *v32 = 1;
    }

    v33 = a3;
    a4(v31, 1);
  }
}

void sub_1BA132E64(uint64_t a1, id a2, void (*a3)(void))
{
  if (a1)
  {
    swift_getKeyPath();
    sub_1BA13B7A8(0, &unk_1EDC5E620, &qword_1EDC5E1C0, 0x1E696C3A8, MEMORY[0x1E69E62F8]);
    sub_1BA13BC34();
    sub_1BA13C020(&qword_1EDC6E260, MEMORY[0x1E6969530]);
    v4 = sub_1BA4A6A08();

    sub_1BA326750(v4);
    a3();
  }

  else
  {
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      sub_1BA13BB28();
      v5 = swift_allocError();
      v7 = v6;
      a2 = 0;
      *v7 = 1;
    }

    v8 = a2;
    (a3)(v5, 1);
  }
}

uint64_t sub_1BA133000(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v43 = a5;
  v44 = a6;
  sub_1BA13BB88();
  v38 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA13BCB8();
  v17 = *(v16 - 8);
  v39 = v16;
  v40 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA13BF30();
  v21 = *(v20 - 8);
  v41 = v20;
  v42 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  sub_1BA13B7A8(0, &unk_1EDC5E620, &qword_1EDC5E1C0, 0x1E696C3A8, MEMORY[0x1E69E62F8]);
  sub_1BA13BC34();
  sub_1BA4A6A18();
  v24 = swift_allocObject();
  v24[2] = a2;
  v24[3] = a3;
  v24[4] = a4;
  v24[5] = v7;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  sub_1BA4A4D08();
  v28 = MEMORY[0x1E695BED0];
  sub_1BA13BDC4(0, &qword_1EDC5F480, MEMORY[0x1E695BED0]);
  sub_1BA13C020(&qword_1EDC5F570, sub_1BA13BB88);
  sub_1BA13C0C8(&qword_1EDC5F488, &qword_1EDC5F480, v28);
  v29 = v38;
  sub_1BA4A5168();

  (*(v13 + 8))(v15, v29);
  sub_1BA13C020(&qword_1EDC5F5A0, sub_1BA13BCB8);
  v30 = v39;
  sub_1BA4A5068();
  (*(v40 + 8))(v19, v30);
  v31 = swift_allocObject();
  v32 = v43;
  v33 = v44;
  *(v31 + 16) = v43;
  *(v31 + 24) = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v34 + 24) = v33;
  sub_1BA13C020(&qword_1EDC5F5B8, sub_1BA13BF30);
  swift_retain_n();
  v35 = v41;
  v36 = sub_1BA4A5008();

  (*(v42 + 8))(v23, v35);
  return v36;
}

void sub_1BA133490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  sub_1BA130AB0();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA130CC4();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleResult);
  if (v15)
  {
    v26 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleType);
    v30 = v15;
    v29 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_countResult);
    sub_1BA130B98();
    sub_1BA130C48();
    v25 = v4;
    sub_1BA13C020(&qword_1EDC5F3F8, sub_1BA130B98);
    sub_1BA13C020(&unk_1EDC5F3C0, sub_1BA130C48);
    sub_1BA4A4FF8();
    sub_1BA130D70();
    sub_1BA13C020(&qword_1EDC5F5E8, sub_1BA130AB0);
    sub_1BA4A4FE8();
    (*(v7 + 8))(v9, v6);
    sub_1BA13C020(&qword_1EDC5F638, sub_1BA130CC4);
    v16 = sub_1BA4A4F98();
    (*(v12 + 8))(v14, v11);
    v30 = v16;
    v17 = swift_allocObject();
    v19 = v27;
    v18 = v28;
    *(v17 + 16) = v27;
    *(v17 + 24) = v18;
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = v18;
    v21 = v26;
    v20[4] = v25;
    v20[5] = v21;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1BA133D30;
    *(v22 + 24) = v20;
    sub_1BA132AB4(0, &qword_1EDC5F4C8, sub_1BA130D70);
    sub_1BA130FA8(&unk_1EDC5F4D0, &qword_1EDC5F4C8, sub_1BA130D70);
    swift_retain_n();

    v23 = v21;
    v24 = sub_1BA4A5008();

    v30 = v24;
    sub_1BA4A4D58();
    sub_1BA4A4CE8();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA13390C(unint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5, void *a6)
{
  v43 = a4;
  v10 = sub_1BA4A1728();
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Limit = type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit(0);
  MEMORY[0x1EEE9AC00](Limit);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1BA4A0FA8();
  v42 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_allocWithZone(MEMORY[0x1E69A4190]) init];
  if (!v18)
  {
    goto LABEL_6;
  }

  v19 = v18;
  v41 = a3;
  v20 = [objc_allocWithZone(MEMORY[0x1E69A4180]) init];
  if (!v20)
  {

    a3 = v41;
LABEL_6:
    a3(0, 0);
    return;
  }

  v21 = v20;
  v22 = sub_1BA131258(a1, a6);
  if (v23 >> 60 == 15)
  {
    v24 = 0;
  }

  else
  {
    v25 = v22;
    v26 = v23;
    v24 = sub_1BA4A15F8();
    sub_1B9F6AC8C(v25, v26);
  }

  [v21 setQueryDataObject_];

  [v21 setType_];
  sub_1BA13B644(a5 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_queryLimit, v15, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = v15;
    v28 = v38;
    (*(v42 + 32))(v17, v27, v38);
    v29 = sub_1BA4A0F28();
    v30 = [v29 hk_codableDateInterval];

    [v19 setSixMonthDateInterval_];
    sub_1BA4A0F88();
    v31 = sub_1BA4A16B8();
    v32 = v40;
    v33 = *(v39 + 8);
    v33(v12, v40);
    v34 = MEMORY[0x1BFAF3470](v31);

    [v21 setStartDate_];
    sub_1BA4A0F58();
    v35 = sub_1BA4A16B8();
    v33(v12, v32);
    v36 = MEMORY[0x1BFAF3470](v35);

    [v21 setEndDate_];
    (*(v42 + 8))(v17, v28);
  }

  else
  {
    sub_1BA13B6AC(v15, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);
  }

  [v19 setSixMonthData_];
  v37 = v19;
  v41(v19, 0);
}

void sub_1BA133D6C(void **a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v43 = a4;
  v44 = a5;
  sub_1BA13B7A8(0, &qword_1EDC5F420, &qword_1EDC5E1C0, 0x1E696C3A8, MEMORY[0x1E695C000]);
  v9 = v8;
  v41 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - v10;
  sub_1BA13BDC4(0, &qword_1EDC5DB58, MEMORY[0x1E695C0C0]);
  v13 = v12;
  v42 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  v17 = *a1;
  v18 = [a2 identifier];
  if (!v18)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v18 = sub_1BA4A6758();
  }

  v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v21 = v20;
  if (v19 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v21 == v22)
  {

LABEL_10:

    goto LABEL_11;
  }

  v40 = v13;
  v24 = sub_1BA4A8338();
  v25 = v18;

  if (v24)
  {

    goto LABEL_11;
  }

  v33 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v35 = v34;
  if (v33 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v35 == v36)
  {

    goto LABEL_10;
  }

  v37 = sub_1BA4A8338();

  if ((v37 & 1) == 0)
  {
    v45 = v17;
    sub_1B9F0ADF8(0, &qword_1EDC5E1C0);
    v38 = v17;
    sub_1BA4A4E78();
    sub_1B9F0D9AC(0, &qword_1EDC6E310);
    sub_1BA4A4E48();
    (*(v41 + 8))(v11, v9);
    sub_1BA13C0C8(&qword_1EDC5DB60, &qword_1EDC5DB58, MEMORY[0x1E695C0C0]);
    v39 = v40;
    v32 = sub_1BA4A4F98();

    (*(v42 + 8))(v16, v39);
    goto LABEL_12;
  }

LABEL_11:
  v26 = swift_allocObject();
  v26[2] = v17;
  v26[3] = a3;
  v27 = v43;
  v26[4] = v43;
  v28 = MEMORY[0x1E695C028];
  sub_1BA13BDC4(0, &qword_1EBBEC6C8, MEMORY[0x1E695C028]);
  swift_allocObject();
  v29 = v17;
  v30 = a3;
  v31 = v27;
  v45 = sub_1BA4A4EA8();
  sub_1BA13C0C8(&qword_1EBBEC6D0, &qword_1EBBEC6C8, v28);
  v32 = sub_1BA4A4F98();

LABEL_12:
  *v44 = v32;
}

void sub_1BA134214(void **a1, void (*a2)(void, void *))
{
  v2 = *a1;
  if (*a1)
  {
    v4 = v2;
    a2(0, v2);
  }
}

void sub_1BA134284(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v34 = a4;
  v9 = sub_1BA4A1728();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = objc_opt_self();

  v15 = [a3 startDate];
  sub_1BA4A16F8();

  v16 = sub_1BA4A16B8();
  v17 = *(v10 + 8);
  v17(v12, v9);
  v18 = [a3 endDate];
  sub_1BA4A16F8();

  v19 = sub_1BA4A16B8();
  v17(v12, v9);
  v20 = [v14 predicateForSamplesWithStartDate:v16 endDate:v19 inclusiveEndDates:1 options:3];

  v21 = [objc_opt_self() quantityTypeForIdentifier_];
  if (v21)
  {
    v22 = v21;
    v23 = v34;
    v24 = [v34 displayTypeController];
    if (v24)
    {
      v25 = v24;
      v26 = swift_allocObject();
      v26[2] = v25;
      v26[3] = a5;
      v26[4] = a3;
      v26[5] = sub_1BA13C168;
      v26[6] = v13;
      v27 = objc_allocWithZone(MEMORY[0x1E696C3C8]);
      aBlock[4] = sub_1BA13C10C;
      aBlock[5] = v26;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BA139DD4;
      aBlock[3] = &block_descriptor_162;
      v28 = _Block_copy(aBlock);
      v29 = v25;
      v30 = a5;
      v31 = a3;
      v32 = [v27 initWithSampleType:v22 predicate:v20 limit:0 sortDescriptors:0 resultsHandler:v28];
      _Block_release(v28);

      [v23 executeQuery_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BA1345BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t (*a7)(void *, void))
{
  if (a2)
  {
    if (sub_1BA1FAD58(a2))
    {
      v11 = objc_opt_self();
      sub_1B9F0ADF8(0, &qword_1EBBEC6D8);
      v12 = sub_1BA4A6AE8();

      v13 = [v11 minMaxStringForHeartRates:v12 displayTypeController:a4 unitController:a5];

      if (v13)
      {
        v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v16 = v15;

        v17 = [a6 metadata];
        v18 = MEMORY[0x1E69E6158];
        if (v17)
        {
          v19 = v17;
          sub_1BA4A6628();
        }

        else
        {
          sub_1B9FDB798(MEMORY[0x1E69E7CC0]);
        }

        v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v22 = v21;
        v28 = v18;
        *&v27 = v14;
        *(&v27 + 1) = v16;
        sub_1B9F46920(&v27, v26);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1B9FF1994(v26, v20, v22, isUniquelyReferenced_nonNull_native);

        v24 = sub_1BA4A6618();

        [a6 _setMetadata_];
      }
    }
  }

  return a7(a6, 0);
}

uint64_t DataTypeMostRecentSamplesQuery.__deallocating_deinit()
{
  sub_1BA13B6AC(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_queryLimit, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA134894()
{
  v2 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_healthStore) displayTypeController];
  if (v2)
  {
    v3 = v2;
    v0 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_sampleType);
    v4 = [v2 displayTypeForObjectType_];

    if (v4)
    {
      v5 = [v4 localization];

      v6 = [v5 shortenedDisplayName];
      v7 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1BA4A7DF8();

  v9 = [v0 description];
  v10 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v12 = v11;

  MEMORY[0x1BFAF1350](v10, v12);

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

uint64_t sub_1BA134A2C@<X0>(void *a1@<X1>, void *a2@<X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  v24 = a4;
  sub_1BA130AB0();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA130CC4();
  v23 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Limit = type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit(0);
  MEMORY[0x1EEE9AC00](Limit);
  v18 = (&v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v18 = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for DataTypeMostRecentSamplesQuery(0);
  v19 = swift_allocObject();
  result = DataTypeMostRecentSamplesQuery.init(sampleType:healthStore:unitController:sampleQueryLimit:)(a1, a2, a3, v18);
  if (*(v19 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleResult))
  {
    v26 = *(v19 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleResult);
    v25 = *(v19 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_countResult);
    sub_1BA130B98();
    sub_1BA130C48();
    sub_1BA13C020(&qword_1EDC5F3F8, sub_1BA130B98);
    sub_1BA13C020(&unk_1EDC5F3C0, sub_1BA130C48);
    sub_1BA4A4FF8();
    sub_1BA130D70();
    sub_1BA13C020(&qword_1EDC5F5E8, sub_1BA130AB0);
    sub_1BA4A4FE8();
    (*(v9 + 8))(v11, v8);
    sub_1BA13C020(&qword_1EDC5F638, sub_1BA130CC4);
    v21 = v23;
    v22 = sub_1BA4A4F98();
    (*(v13 + 8))(v15, v21);

    *v24 = v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA134DD0(void **a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = *a1;
  if (*a1)
  {
    sub_1BA4A3D88();
    v10 = v9;
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v9;
      v24 = v14;
      *v13 = 136315138;
      v15 = v9;
      sub_1B9F0D9AC(0, &qword_1EDC6E310);
      v16 = sub_1BA4A6808();
      v18 = sub_1B9F0B82C(v16, v17, &v24);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1B9F07000, v11, v12, "Encountered error in DataTypeMostRecentSamplesQuery: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    return (*(v3 + 8))(v8, v2);
  }

  else
  {
    sub_1BA4A3D88();
    v20 = sub_1BA4A3E88();
    v21 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1B9F07000, v20, v21, "DataTypeMostRecentSamplesQuery succeeded", v22, 2u);
      MEMORY[0x1BFAF43A0](v22, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1BA135058(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = sub_1B9FE6028(a1);
    sub_1BA137810(a2, 0, v5);
  }

  return result;
}

uint64_t sub_1BA1350E4(void *a1, void *a2, void *a3, void *a4, char a5)
{
  v6 = v5;
  v46 = a4;
  v47 = a3;
  v44 = a1;
  v45 = MEMORY[0x1E6968130];
  sub_1B9F3D5A4(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41 - v12;
  type metadata accessor for DataTypeMostRecentSamplesDisclosureItemsDataSource(0);
  swift_allocObject();
  v14 = sub_1BA13A0B8(a1, a2, a3, a5);
  v15 = type metadata accessor for SampleMetadataViewControllerProvider();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v16 + 16) = a2;
  swift_unknownObjectWeakAssign();
  v49 = v15;
  v50 = &off_1F381AEB8;
  aBlock[0] = v16;
  v17 = OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_sampleMetadataViewControllerProvider;
  swift_beginAccess();
  v42 = a2;

  sub_1BA13B70C(aBlock, v14 + v17, &qword_1EBBF18F0, &qword_1EBBEC590, &protocol descriptor for SampleMetadataViewControllerProviding);
  swift_endAccess();
  sub_1BA1356D4();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v6;
  v43 = v18;
  sub_1BA4A27B8();
  sub_1B9F3D5A4(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v20 = sub_1BA4A1C68();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v41 = xmmword_1BA4B5480;
  *(v23 + 16) = xmmword_1BA4B5480;
  (*(v21 + 104))(v23 + v22, *MEMORY[0x1E69A3B98], v20);
  v24 = MEMORY[0x1E69E6F90];
  sub_1BA13BAA0(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BA4B5470;
  v26 = v44;
  *(v25 + 32) = v44;
  v27 = sub_1BA4A0FA8();
  (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
  sub_1BA13BAA0(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58], v24);
  v28 = swift_allocObject();
  *(v28 + 16) = v41;
  v29 = v26;

  v30 = v42;
  *(v28 + 32) = sub_1BA4A6F38();
  v31 = MEMORY[0x1BFAED020](v23, v25, v13, v28);

  sub_1B9F829D4(v13, &qword_1EDC6E2A0, v45);
  v32 = v31;
  v33 = sub_1BA4A26C8();

  v34 = v46;
  __swift_project_boxed_opaque_existential_1(v46, v46[3]);
  v35 = sub_1BA4A1B68();
  sub_1B9F0A534(v34, v52);
  v36 = swift_allocObject();
  sub_1B9F1134C(v52, (v36 + 2));
  v36[7] = v33;
  v36[8] = v29;
  v36[9] = sub_1BA13B790;
  v36[10] = v19;
  v50 = sub_1BA13B798;
  v51 = v36;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  v49 = &block_descriptor_29;
  v37 = _Block_copy(aBlock);
  v38 = v29;
  v39 = v33;

  [v35 performBlock_];
  _Block_release(v37);

  __swift_destroy_boxed_opaque_existential_1(v34);

  return v14;
}

uint64_t sub_1BA13566C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BA137810(*(a1 + 16), 0, a1);
  }

  return result;
}

uint64_t sub_1BA1356D4()
{
  v0 = sub_1BA4A1798();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v4 = sub_1BA4A1318();
  v6 = v5;
  sub_1B9F224CC(0, &qword_1EDC6B448, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v18 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 56) = &type metadata for TitleEmptyStateCollectionViewCellItem;
  *(inited + 64) = sub_1BA139F30();
  v8 = swift_allocObject();
  *(inited + 32) = v8;
  v19 = type metadata accessor for TitleEmptyStateCollectionViewCell();
  sub_1B9F2EFEC();
  v8[2] = sub_1BA4A6808();
  v8[3] = v9;
  v8[4] = v4;
  v8[5] = v6;
  sub_1BA13BAA0(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  v10 = swift_initStackObject();
  *(v10 + 16) = v18;
  v11 = sub_1B9FE4F98(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(inited + 32);
  sub_1BA4A1788();
  v12 = sub_1BA4A1748();
  v14 = v13;
  (*(v1 + 8))(v3, v0);
  v15 = MEMORY[0x1E69E7CC0];
  *(v10 + 48) = MEMORY[0x1E69E7CC0];
  *(v10 + 56) = sub_1B9F1C5F0(v15);
  *(v10 + 40) = 0;
  *(v10 + 32) = 0;

  *(v10 + 48) = v11;
  v16 = Array<A>.identifierToIndexDict()(v11);

  *(v10 + 56) = v16;
  *(v10 + 64) = v12;
  *(v10 + 72) = v14;
  sub_1BA0E7F10(v10, 1);
  swift_setDeallocating();
  return sub_1B9FF7224(v10 + 32);
}

void sub_1BA1359E8(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v103 = a5;
  v104 = a4;
  v105 = a3;
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  v107 = v6;
  v108 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v106 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v100 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v100 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v100 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v100 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v100 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v100 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v27 = sub_1BA4A1B68();
  sub_1BA4A27B8();
  v35 = sub_1BA4A7598();
  v101 = v20;
  v102 = v14;
  v100 = v17;
  v36 = v104;

  if (v35 >> 62)
  {
    if (sub_1BA4A7CC8())
    {
      goto LABEL_7;
    }

LABEL_54:

    v28 = v106;
    sub_1BA4A3DD8();
    v29 = v105;
    v30 = sub_1BA4A3E88();
    v31 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      *(v32 + 4) = v29;
      *v33 = v29;
      v34 = v29;
      _os_log_impl(&dword_1B9F07000, v30, v31, "Missing feed item when creating DataTypeMostRecentSamplesDisclosureItemsDataSource for %@", v32, 0xCu);
      sub_1B9F8C6C8(v33);
      MEMORY[0x1BFAF43A0](v33, -1, -1);
      MEMORY[0x1BFAF43A0](v32, -1, -1);
    }

    (*(v108 + 8))(v28, v107);
    return;
  }

  if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_54;
  }

LABEL_7:
  if ((v35 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x1BFAF2860](0, v35);
  }

  else
  {
    if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_57;
    }

    v37 = *(v35 + 32);
  }

  v106 = v37;
  v38 = [v37 userData];
  if (v38)
  {
    v39 = v38;
    v40 = sub_1BA4A1608();
    v42 = v41;

    v43 = sub_1BA4A15F8();
    sub_1B9F2BB4C(v40, v42);
  }

  else
  {
    v43 = 0;
  }

  v44 = [objc_allocWithZone(MEMORY[0x1E69A4188]) initWithData_];

  if (v44)
  {
    v45 = [v44 chartModel];
    if (v45)
    {
      v46 = v45;
      v47 = [v45 hasSixMonthData];

      if (!v47)
      {

        sub_1BA4A3DD8();
        v63 = sub_1BA4A3E88();
        v64 = sub_1BA4A6FB8();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&dword_1B9F07000, v63, v64, "Missing data charting model", v65, 2u);
          MEMORY[0x1BFAF43A0](v65, -1, -1);
        }

        goto LABEL_27;
      }

      v48 = [v44 chartModel];
      if (v48)
      {
        v49 = v48;

        v50 = [v49 sixMonthData];

        if (!v50)
        {
          sub_1BA4A3DD8();
          v66 = sub_1BA4A3E88();
          v67 = sub_1BA4A6FB8();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            *v68 = 0;
            _os_log_impl(&dword_1B9F07000, v66, v67, "Unable to decode sharable charting model", v68, 2u);
            MEMORY[0x1BFAF43A0](v68, -1, -1);
          }

          goto LABEL_49;
        }

        v51 = [v50 type];
        if (v51 == 11)
        {
          v69 = [v50 queryDataObject];
          if (v69)
          {
            v70 = v69;
            v71 = sub_1BA4A1608();
            v73 = v72;

            v74 = sub_1BA4A15F8();
            sub_1B9F2BB4C(v71, v73);
          }

          else
          {
            v74 = 0;
          }

          v84 = v36;
          v85 = [objc_allocWithZone(MEMORY[0x1E69A4200]) initWithData_];

          if (v85)
          {
LABEL_41:
            v94 = [v85 samples];
            if (v94 && (v95 = v94, v110[0] = 0, sub_1B9F0D9AC(0, &qword_1EBBF18E0), sub_1BA4A6AF8(), v95, v110[0]))
            {
              swift_getKeyPath();
              sub_1B9F224CC(0, &qword_1EBBEC670, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel, MEMORY[0x1E69E62F8]);
              sub_1BA13B810();
              sub_1BA13C020(&qword_1EDC6E260, MEMORY[0x1E6969530]);
              v96 = sub_1BA4A6A08();
            }

            else
            {

              v96 = MEMORY[0x1E69E7CC0];
            }

            v84(v96);

            return;
          }

          v23 = v101;
          sub_1BA4A3D88();
          v75 = v50;
          v66 = sub_1BA4A3E88();
          v76 = sub_1BA4A6FA8();

          if (os_log_type_enabled(v66, v76))
          {
            v77 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            v109 = v75;
            v110[0] = v78;
            *v77 = 136315138;
            sub_1B9F0ADF8(0, &unk_1EBBEC660);
            v79 = v75;
            v97 = sub_1BA4A6828();
            v99 = sub_1B9F0B82C(v97, v98, v110);

            *(v77 + 4) = v99;
            v83 = "Could not decode query data %s";
            goto LABEL_48;
          }
        }

        else
        {
          if (v51 == 13)
          {
            v52 = [v50 queryDataObject];
            if (v52)
            {
              v53 = v52;
              v54 = v50;
              v55 = sub_1BA4A1608();
              v57 = v56;

              v58 = sub_1BA4A15F8();
              v59 = v55;
              v50 = v54;
              sub_1B9F2BB4C(v59, v57);
            }

            else
            {
              v58 = 0;
            }

            v84 = v36;
            v85 = [objc_allocWithZone(MEMORY[0x1E69A41C0]) initWithData_];

            if (!v85)
            {
              v11 = v100;
              sub_1BA4A3D88();
              v86 = v50;
              v63 = sub_1BA4A3E88();
              v87 = sub_1BA4A6FA8();

              if (!os_log_type_enabled(v63, v87))
              {

                goto LABEL_28;
              }

              v88 = swift_slowAlloc();
              v89 = swift_slowAlloc();
              v109 = v86;
              v110[0] = v89;
              *v88 = 136315138;
              sub_1B9F0ADF8(0, &unk_1EBBEC660);
              v90 = v86;
              v91 = sub_1BA4A6828();
              v93 = sub_1B9F0B82C(v91, v92, v110);

              *(v88 + 4) = v93;
              _os_log_impl(&dword_1B9F07000, v63, v87, "Could not decode query data %s", v88, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v89);
              MEMORY[0x1BFAF43A0](v89, -1, -1);
              MEMORY[0x1BFAF43A0](v88, -1, -1);

LABEL_27:
LABEL_28:
              (*(v108 + 8))(v11, v107);
              return;
            }

            goto LABEL_41;
          }

          v23 = v102;
          sub_1BA4A3D88();
          v75 = v50;
          v66 = sub_1BA4A3E88();
          v76 = sub_1BA4A6FA8();

          if (os_log_type_enabled(v66, v76))
          {
            v77 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            v109 = v75;
            v110[0] = v78;
            *v77 = 136315138;
            sub_1B9F0ADF8(0, &unk_1EBBEC660);
            v79 = v75;
            v80 = sub_1BA4A6828();
            v82 = sub_1B9F0B82C(v80, v81, v110);

            *(v77 + 4) = v82;
            v83 = "Unsupported chart model %s";
LABEL_48:
            _os_log_impl(&dword_1B9F07000, v66, v76, v83, v77, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v78);
            MEMORY[0x1BFAF43A0](v78, -1, -1);
            MEMORY[0x1BFAF43A0](v77, -1, -1);

LABEL_49:
LABEL_51:
            (*(v108 + 8))(v23, v107);
            return;
          }
        }

        goto LABEL_51;
      }

LABEL_58:
      __break(1u);
      return;
    }

LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  sub_1BA4A3DD8();
  v60 = sub_1BA4A3E88();
  v61 = sub_1BA4A6FB8();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_1B9F07000, v60, v61, "Unable to decode chart feed item data", v62, 2u);
    MEMORY[0x1BFAF43A0](v62, -1, -1);
  }

  (*(v108 + 8))(v26, v107);
}

uint64_t sub_1BA1365A4@<X0>(void *a1@<X8>)
{
  v3 = sub_1BA4A4428();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_sampleType);
  v11 = sub_1BA134894();
  v13 = v12;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  (*(v4 + 16))(v6, v9, v3);
  v14 = type metadata accessor for HeaderItem();
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v11, v13, 0, 0, 0, 0, v6, 0, 0);
  v16 = v15;

  (*(v4 + 8))(v9, v3);
  a1[3] = v14;
  result = sub_1BA13C020(&qword_1EDC69800, type metadata accessor for HeaderItem);
  a1[4] = result;
  *a1 = v16;
  return result;
}

void sub_1BA13679C(uint64_t a1)
{
  v2 = v1;
  v45 = *v2;
  v48 = sub_1BA4A3EA8();
  v4 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1BA4A1798();
  v6 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v2;
  v8 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_detailMode);
  if (v8 <= 1 && v8)
  {
    v9 = 1;
LABEL_9:

    goto LABEL_10;
  }

  v10 = sub_1BA4A8338();

  if ((v10 & 1) == 0)
  {
    if (v8 > 1)
    {
      v9 = sub_1BA4A8338();
    }

    else
    {
      v9 = 1;
    }

    goto LABEL_9;
  }

  v9 = 1;
LABEL_10:
  v58 = *(a1 + 16);
  v53 = OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_dataMetadataDelegate;
  v54 = OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_sampleMetadataViewControllerProvider;
  v55 = OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_healthStore;
  swift_beginAccess();
  v11 = 0;
  v49 = a1 + 32;
  v52 = (v6 + 8);
  v51 = v9 & 1;
  v12 = MEMORY[0x1E69E7CC0];
  v46 = v4 + 8;
  v13 = MEMORY[0x1E69E6158];
  *(&v14 + 1) = 4;
  v50 = xmmword_1BA4B5460;
  *&v14 = 136315394;
  v44 = v14;
  while (1)
  {
    v15 = v58;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    if (v11 != v58)
    {
      if (v11 >= v58)
      {
        goto LABEL_29;
      }

      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_30;
      }

      *&v65[0] = v11;
      sub_1B9F0A534(v49 + 40 * v11, v65 + 8);
      v16 = v65[0];
      v17 = v65[1];
      v18 = v66;
    }

    v78[0] = v16;
    v78[1] = v17;
    v78[2] = v18;
    if (!v18)
    {
      return;
    }

    v60 = v16;
    v61 = v15;
    sub_1B9F1134C((v78 + 8), v75);
    sub_1B9F0A534(v75, v65);
    v19 = *(v59 + v55);
    sub_1B9F37558(v59 + v54, &v67, &qword_1EBBF18F0, &qword_1EBBEC590, &protocol descriptor for SampleMetadataViewControllerProviding);
    memset(v68, 0, sizeof(v68));
    v69 = 0;
    v20 = v19;
    swift_unknownObjectRetain();
    v21 = v56;
    sub_1BA4A1788();
    v22 = sub_1BA4A1748();
    v24 = v23;
    (*v52)(v21, v57);
    *(&v66 + 1) = v20;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v70 = v51;
    v71 = 0;
    v72 = 0;
    v73 = v22;
    v74 = v24;
    v25 = v76;
    v26 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    v27 = (*(v26 + 8))(v25, v26);
    if (v27)
    {
      break;
    }

LABEL_22:
    sub_1B9FE92F8(v65, &v63);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1BA27FFD8(0, v12[2] + 1, 1, v12);
    }

    v43 = v12[2];
    v42 = v12[3];
    if (v43 >= v42 >> 1)
    {
      v12 = sub_1BA27FFD8((v42 > 1), v43 + 1, 1, v12);
    }

    v12[2] = v43 + 1;
    sub_1BA13A05C(&v63, &v12[22 * v43 + 4]);
    sub_1B9FE93A8(v65);
    __swift_destroy_boxed_opaque_existential_1(v75);
    v11 = v61;
  }

  v28 = v27;
  sub_1BA13BAA0(0, &qword_1EDC6E330, v13, MEMORY[0x1E69E6F90]);
  v29 = swift_allocObject();
  *(v29 + 16) = v50;
  v30 = [v28 identifier];
  v31 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v32 = v13;
  v34 = v33;

  *(v29 + 32) = v31;
  *(v29 + 40) = v34;
  v63 = 0x5F656C706D6153;
  v64 = 0xE700000000000000;
  if (!__OFADD__(v60, 1))
  {
    v62 = v60 + 1;
    v35 = sub_1BA4A82D8();
    MEMORY[0x1BFAF1350](v35);

    v36 = v64;
    *(v29 + 48) = v63;
    *(v29 + 56) = v36;
    v37 = sub_1BA4A6AE8();

    v38 = HKUIJoinStringsForAutomationIdentifier();

    v13 = v32;
    if (v38)
    {
      v39 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    v71 = v39;
    v72 = v41;
    sub_1BA42F378(v28, &v63);

    sub_1BA13B70C(&v63, v68, &unk_1EBBEC650, &qword_1EBBF18D0, &protocol descriptor for SampleDescriptionItemTextProviding);
    goto LABEL_22;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_1BA137040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a2;
  v35 = a3;
  v41 = a1;
  sub_1B9F3D5A4(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = &v33 - v6;
  v40 = sub_1BA4A3FB8();
  v37 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1BA4A3F18();
  v9 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A1798();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1BA4A4428();
  v39 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A4418();
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1BA4A43B8();

  sub_1BA4A41A8();
  *&v43 = 0;
  *(&v43 + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();

  *&v43 = 0xD000000000000011;
  *(&v43 + 1) = 0x80000001BA4ED2D0;
  sub_1BA4A1788();
  sub_1BA13C020(&qword_1EDC6AE60, MEMORY[0x1E69695A8]);
  v18 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v18);

  (*(v13 + 8))(v15, v12);
  v34 = *(&v43 + 1);
  v35 = v43;
  v19 = MEMORY[0x1E69DC110];
  v20 = v42;
  *(a4 + 96) = v42;
  *(a4 + 104) = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a4 + 72));
  v22 = v39;
  (*(v39 + 16))(boxed_opaque_existential_1, v17, v20);
  sub_1B9F3D5A4(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BA4B5480;
  v24 = v36;
  (*(v9 + 104))(v11, *MEMORY[0x1E69DBF28], v36);
  v25 = sub_1BA4A3F48();
  (*(*(v25 - 8) + 56))(v38, 1, 1, v25);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v37 + 8))(v8, v40);
  (*(v9 + 8))(v11, v24);
  v26 = swift_allocObject();
  *(v26 + 16) = v41;
  v27 = type metadata accessor for ContentConfigurationItem();
  v28 = v27[10];
  v29 = sub_1BA4A4168();
  (*(*(v29 - 8) + 56))(a4 + v28, 1, 1, v29);
  v45 = 0;
  v43 = 0u;
  v44 = 0u;

  sub_1BA139F8C(&v43, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
  *(&v44 + 1) = &type metadata for BasicCellSelectionHandler;
  v45 = &off_1F381BCC8;
  *&v43 = sub_1BA139F84;
  *(&v43 + 1) = v26;
  LOBYTE(v44) = 2;
  (*(v22 + 8))(v17, v42);
  sub_1B9F37558(&v43, a4 + 16, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
  *(a4 + v27[12]) = 0;
  *(a4 + v27[13]) = 0;
  v30 = v34;
  *a4 = v35;
  *(a4 + 8) = v30;
  *(a4 + 112) = 0;
  *(a4 + 120) = v23;
  *(a4 + 56) = 0xD00000000000001DLL;
  *(a4 + 64) = 0x80000001BA4ED2F0;
  v31 = (a4 + v27[11]);
  *v31 = 0;
  v31[1] = 0;
  return sub_1BA139F8C(&v43, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
}

void sub_1BA137790(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for SharedAllDataCollectionViewController());

  v4 = sub_1BA138E20(v3);
  [a1 showAdaptively:v4 sender:a1];
}

uint64_t sub_1BA137810(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v120 = a1;
  v7 = MEMORY[0x1E69E6720];
  sub_1B9F3D5A4(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  *&v124 = &v110 - v9;
  sub_1B9F3D5A4(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], v7);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v117 = &v110 - v11;
  v12 = sub_1BA4A3FB8();
  v118 = *(v12 - 8);
  v119 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v115 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1BA4A3F18();
  v114 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v15 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BA4A4428();
  v122 = *(v16 - 8);
  v123 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v121 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BA4A1798();
  v126 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v125 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BA4A64F8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  *v23 = sub_1BA4A7308();
  (*(v21 + 104))(v23, *MEMORY[0x1E69E8020], v20);
  LOBYTE(v7) = sub_1BA4A6528();
  v25 = *(v21 + 8);
  v24 = v21 + 8;
  v25(v23, v20);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_34:
    swift_once();
    goto LABEL_9;
  }

  if (*(a3 + 16) <= 3uLL)
  {

    v27 = a3;
  }

  else
  {
    sub_1BA2A1388(a3, a3 + 32, 0, 7uLL);
    v27 = v26;
  }

  sub_1BA13679C(v27);
  v29 = v28;

  v30 = sub_1B9FE5EFC(v29);

  v31 = OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_dataSourceItems;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_dataSourceItems) = v30;

  v32 = *(v4 + v31);
  if (v32[2])
  {
    v33 = &unk_1BA4B5000;
    if (a2)
    {

LABEL_30:
      sub_1BA13BAA0(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = v33[72];
      v99 = sub_1B9FE4F98(v32);

      v100 = v125;
      sub_1BA4A1788();
      v101 = sub_1BA4A1748();
      v103 = v102;
      (*(v126 + 8))(v100, v18);
      v104 = MEMORY[0x1E69E7CC0];
      *(inited + 48) = MEMORY[0x1E69E7CC0];
      *(inited + 56) = sub_1B9F1C5F0(v104);
      *(inited + 40) = 0;
      *(inited + 32) = 0;

      *(inited + 48) = v99;
      v105 = Array<A>.identifierToIndexDict()(v99);

      *(inited + 56) = v105;
      *(inited + 64) = v101;
      *(inited + 72) = v103;
      sub_1BA0E7F10(inited, 1);
      swift_setDeallocating();
      v48 = inited + 32;
      return sub_1B9FF7224(v48);
    }

    v49 = objc_opt_self();

    v50 = [v49 hk_wholeNumberFormatter];
    v51 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v52 = [v51 initWithInteger_];
    v53 = [v50 stringFromNumber_];

    v113 = v18;
    if (v53)
    {
      v112 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v120 = v54;
    }

    else
    {
      v112 = 0;
      v120 = 0xE000000000000000;
    }

    v55 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_detailMode);
    if (v55 <= 1 && *(v4 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_detailMode))
    {
      goto LABEL_17;
    }

    v56 = sub_1BA4A8338();

    if ((v56 & 1) == 0)
    {
      if (!v55)
      {
LABEL_17:

        goto LABEL_19;
      }

      v57 = sub_1BA4A8338();

      if ((v57 & 1) == 0)
      {
        sub_1BA13679C(a3);
        v108 = sub_1B9FE5EFC(v107);

        v131 = type metadata accessor for ContentConfigurationItem();
        v132 = sub_1BA13C020(&qword_1EDC66498, type metadata accessor for ContentConfigurationItem);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v130);
        sub_1BA137040(v108, v112, v120, boxed_opaque_existential_1);

LABEL_25:
        sub_1B9F0A534(v130, &v127);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v133 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32 = sub_1BA27EFB4(0, v32[2] + 1, 1, v32);
          v133 = v32;
        }

        v90 = v32[2];
        v89 = v32[3];
        if (v90 >= v89 >> 1)
        {
          v32 = sub_1BA27EFB4((v89 > 1), v90 + 1, 1, v32);
          v133 = v32;
        }

        v91 = v128;
        v92 = v129;
        v93 = __swift_mutable_project_boxed_opaque_existential_1(&v127, v128);
        v94 = MEMORY[0x1EEE9AC00](v93);
        v96 = &v110 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v97 + 16))(v96, v94);
        sub_1B9F1C4F4(v90, v96, &v133, v91, v92);
        __swift_destroy_boxed_opaque_existential_1(&v127);
        __swift_destroy_boxed_opaque_existential_1(v130);
        v18 = v113;
        v33 = &unk_1BA4B5000;
        goto LABEL_30;
      }
    }

LABEL_19:
    v58 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_sampleType);
    v59 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_healthStore);
    v110 = v4;
    v111 = v59;
    v60 = v121;
    sub_1BA4A4418();
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1BA4A43B8();
    sub_1BA4A41A8();
    strcpy(v130, "ShowAllData_");
    BYTE5(v130[1]) = 0;
    HIWORD(v130[1]) = -5120;
    v61 = [v58 description];
    v62 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v64 = v63;

    MEMORY[0x1BFAF1350](v62, v64);

    v120 = v130[0];
    v112 = v130[1];
    v65 = v123;
    v128 = v123;
    v129 = MEMORY[0x1E69DC110];
    v66 = __swift_allocate_boxed_opaque_existential_1(&v127);
    (*(v122 + 16))(v66, v60, v65);
    sub_1B9F3D5A4(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
    sub_1BA4A3FE8();
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1BA4B5480;
    v68 = v114;
    v69 = v116;
    (*(v114 + 104))(v15, *MEMORY[0x1E69DBF28], v116);
    v70 = sub_1BA4A3F48();
    (*(*(v70 - 8) + 56))(v117, 1, 1, v70);
    v71 = v115;
    sub_1BA4A3FA8();
    v117 = v67;
    sub_1BA4A3F78();
    (*(v118 + 8))(v71, v119);
    (*(v68 + 8))(v15, v69);
    v72 = swift_allocObject();
    v73 = v111;
    *(v72 + 16) = v111;
    *(v72 + 24) = v58;
    v74 = v73;
    v75 = v58;
    v76 = v124;
    sub_1BA4A4158();
    v77 = [objc_opt_self() tertiarySystemBackgroundColor];
    sub_1BA4A4118();
    v78 = sub_1BA4A4168();
    (*(*(v78 - 8) + 56))(v76, 0, 1, v78);
    v79 = sub_1BA4A6AE8();
    v80 = HKUIJoinStringsForAutomationIdentifier();

    if (v80)
    {
      v81 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v83 = v82;
    }

    else
    {
      v81 = 0;
      v83 = 0;
    }

    v84 = type metadata accessor for ContentConfigurationItem();
    v131 = v84;
    v132 = sub_1BA13C020(&qword_1EDC66498, type metadata accessor for ContentConfigurationItem);
    v85 = __swift_allocate_boxed_opaque_existential_1(v130);
    *(v85 + v84[12]) = 0;
    *(v85 + v84[13]) = 0;
    v86 = v112;
    *v85 = v120;
    v85[1] = v86;
    sub_1B9F1134C(&v127, (v85 + 9));
    *(v85 + 112) = 0;
    v85[15] = v117;
    v85[2] = sub_1BA139F28;
    v85[3] = v72;
    v85[5] = &type metadata for BasicCellSelectionWithDeselectionOnRegularHorizontalSizeClassHandler;
    v85[6] = &off_1F381BCA0;
    sub_1B9F2F728(v124, v85 + v84[10]);
    v85[7] = v81;
    v85[8] = v83;
    v87 = (v85 + v84[11]);
    *v87 = sub_1BA1B760C;
    v87[1] = 0;
    (*(v122 + 8))(v121, v123);
    goto LABEL_25;
  }

  v24 = v18;
  if (qword_1EDC5E100 != -1)
  {
    goto LABEL_34;
  }

LABEL_9:
  v34 = sub_1BA4A1318();
  v36 = v35;
  sub_1B9F224CC(0, &qword_1EDC6B448, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], MEMORY[0x1E69E6F90]);
  v37 = swift_initStackObject();
  v124 = xmmword_1BA4B5480;
  *(v37 + 16) = xmmword_1BA4B5480;
  *(v37 + 56) = &type metadata for TitleEmptyStateCollectionViewCellItem;
  *(v37 + 64) = sub_1BA139F30();
  v38 = swift_allocObject();
  *(v37 + 32) = v38;
  v130[0] = type metadata accessor for TitleEmptyStateCollectionViewCell();
  sub_1B9F2EFEC();
  v38[2] = sub_1BA4A6808();
  v38[3] = v39;
  v38[4] = v34;
  v38[5] = v36;
  sub_1BA13BAA0(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  v40 = swift_initStackObject();
  *(v40 + 16) = v124;
  v41 = sub_1B9FE4F98(v37);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v37 + 32);
  v42 = v125;
  sub_1BA4A1788();
  v43 = sub_1BA4A1748();
  v45 = v44;
  (*(v126 + 8))(v42, v24);
  v46 = MEMORY[0x1E69E7CC0];
  *(v40 + 48) = MEMORY[0x1E69E7CC0];
  *(v40 + 56) = sub_1B9F1C5F0(v46);
  *(v40 + 40) = 0;
  *(v40 + 32) = 0;

  *(v40 + 48) = v41;
  v47 = Array<A>.identifierToIndexDict()(v41);

  *(v40 + 56) = v47;
  *(v40 + 64) = v43;
  *(v40 + 72) = v45;
  sub_1BA0E7F10(v40, 1);
  swift_setDeallocating();
  v48 = v40 + 32;
  return sub_1B9FF7224(v48);
}

uint64_t sub_1BA138930()
{
  swift_unknownObjectRelease();

  return sub_1BA139F8C(v0 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_sampleMetadataViewControllerProvider, &qword_1EBBF18F0, &qword_1EBBEC590, &protocol descriptor for SampleMetadataViewControllerProviding);
}

uint64_t DataTypeMostRecentSamplesDisclosureItemsDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  sub_1BA139F8C(v0 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_sampleMetadataViewControllerProvider, &qword_1EBBF18F0, &qword_1EBBEC590, &protocol descriptor for SampleMetadataViewControllerProviding);
  return v0;
}

uint64_t DataTypeMostRecentSamplesDisclosureItemsDataSource.__deallocating_deinit()
{
  DataTypeMostRecentSamplesDisclosureItemsDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA138B54@<X0>(void *a1@<X8>)
{
  v3 = sub_1BA4A4428();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = *(*v1 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_sampleType);
  v11 = sub_1BA134894();
  v13 = v12;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  (*(v4 + 16))(v6, v9, v3);
  v14 = type metadata accessor for HeaderItem();
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v11, v13, 0, 0, 0, 0, v6, 0, 0);
  v16 = v15;

  (*(v4 + 8))(v9, v3);
  a1[3] = v14;
  result = sub_1BA13C020(&qword_1EDC69800, type metadata accessor for HeaderItem);
  a1[4] = result;
  *a1 = v16;
  return result;
}

void *DataTypeMostRecentSamplesDisclosureItemsDataSource.layout(for:)(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (qword_1EDC6CBB0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ListLayoutConfiguration();
  __swift_project_value_buffer(v2, qword_1EDC6CBB8);
  return ListLayoutConfiguration.layout(for:)(v1);
}

void *sub_1BA138DA4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (qword_1EDC6CBB0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ListLayoutConfiguration();
  __swift_project_value_buffer(v2, qword_1EDC6CBB8);
  return ListLayoutConfiguration.layout(for:)(v1);
}

char *sub_1BA138E20(uint64_t a1)
{
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B9FE4F98(a1);

  sub_1BA4A1788();
  v7 = sub_1BA4A1748();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v11 = Array<A>.identifierToIndexDict()(v10);

  sub_1BA13BAA0(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v21 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = v6;
  *(inited + 56) = v11;
  *(inited + 64) = v7;
  *(inited + 72) = v9;
  type metadata accessor for MutableArrayDataSourceWithLayout();
  swift_allocObject();
  v13 = sub_1B9F1DAFC(inited, 1, sub_1BA139094, 0);
  sub_1BA139FFC();
  v14 = swift_allocObject();
  v14[4] = v13;
  v14[5] = sub_1BA139194;
  v14[6] = 0;
  v15 = *(v13 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v16 = *(v13 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  v14[2] = v15;
  v14[3] = v16;
  type metadata accessor for CompoundSectionedDataSource();
  sub_1B9F1DEA0();
  v17 = swift_initStackObject();
  *(v17 + 16) = v21;
  *(v17 + 32) = v14;
  *(v17 + 40) = &protocol witness table for CellRegistering<A>;

  v18 = CompoundSectionedDataSource.__allocating_init(_:)(v17);
  v19 = CompoundDataSourceCollectionViewController.init(dataSource:)(v18);

  return v19;
}

void *sub_1BA139094(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC6CB88 != -1)
  {
    v10 = v4;
    swift_once();
    v4 = v10;
  }

  v7 = __swift_project_value_buffer(v4, qword_1EDC6CB90);
  sub_1BA13B644(v7, v6, type metadata accessor for ListLayoutConfiguration);
  *(v6 + 6) = 0x4030000000000000;
  v8 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1BA13B6AC(v6, type metadata accessor for ListLayoutConfiguration);
  return v8;
}

void sub_1BA139218()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SharedAllDataCollectionViewController();
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 setPreservesSuperviewLayoutMargins_];

    v3 = [v0 navigationItem];
    [v3 setLargeTitleDisplayMode_];

    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v4 = sub_1BA4A6758();

    [v0 setTitle_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA1393D8()
{
  sub_1B9F36938();
  sub_1B9F23FB0();
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    CompoundSectionedDataSource.registerCells(for:)(v1);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA139450()
{
  v1 = [v0 navigationItem];
  sub_1B9F0ADF8(0, &qword_1EDC6B600);
  sub_1B9F0ADF8(0, &unk_1EDC5E0B0);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BA4A77E8();
  v3 = sub_1BA4A7128();
  [v1 setLeftBarButtonItem_];
}

id sub_1BA139784(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1BA139814()
{
  result = qword_1EBBEC598;
  if (!qword_1EBBEC598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC598);
  }

  return result;
}

uint64_t sub_1BA139954()
{
  result = type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit(319);
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

uint64_t sub_1BA139AF0()
{
  result = sub_1BA4A0FA8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BA139CB4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1B9F0ADF8(0, &qword_1EDC5E570);
    sub_1B9F0ADF8(0, &qword_1EDC6E360);
    sub_1B9F3E1E0(&unk_1EDC5E560, &qword_1EDC5E570);
    v5 = sub_1BA4A6628();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t sub_1BA139DD4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1B9F0ADF8(0, &qword_1EDC5E1C0);
    v5 = sub_1BA4A6B08();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

unint64_t *sub_1BA139E8C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_1BA13B280(v5, a2, a3);

    return v6;
  }

  return result;
}

unint64_t sub_1BA139F30()
{
  result = qword_1EBBEC648;
  if (!qword_1EBBEC648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC648);
  }

  return result;
}

uint64_t sub_1BA139F8C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1B9F224CC(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1BA139FFC()
{
  if (!qword_1EDC69040)
  {
    type metadata accessor for MutableArrayDataSourceWithLayout();
    v0 = type metadata accessor for CellRegistering();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC69040);
    }
  }
}

uint64_t sub_1BA13A0B8(void *a1, void *a2, void *a3, char a4)
{
  v5 = v4;
  v10 = sub_1BA4A1798();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_cancellables) = MEMORY[0x1E69E7CD0];
  v14 = v5 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_sampleMetadataViewControllerProvider;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_sampleType) = a1;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_healthStore) = a2;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_unitController) = a3;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_detailMode) = a4;
  v15 = type metadata accessor for DataMetadataDelegate();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC18HealthExperienceUIP33_32BBCFBB356028961E4520309C3A50C420DataMetadataDelegate_healthStore] = a2;
  *&v16[OBJC_IVAR____TtC18HealthExperienceUIP33_32BBCFBB356028961E4520309C3A50C420DataMetadataDelegate_unitPreferencesController] = a3;
  v39.receiver = v16;
  v39.super_class = v15;
  v17 = a2;
  v18 = a3;
  v19 = v17;
  v20 = v18;
  v21 = a1;
  v22 = objc_msgSendSuper2(&v39, sel_init);
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_dataMetadataDelegate) = v22;
  v23 = MEMORY[0x1E69E7CC0];
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_dataSourceItems) = MEMORY[0x1E69E7CC0];
  sub_1BA13BAA0(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  v37 = v22;
  v25 = sub_1B9FE4F98(v23);
  sub_1BA4A1788();
  v26 = sub_1BA4A1748();
  v28 = v27;
  v29 = *(v11 + 8);
  v29(v13, v10);
  *(inited + 48) = v23;
  *(inited + 56) = sub_1B9F1C5F0(v23);
  *(inited + 32) = 0;
  *(inited + 40) = 0;

  *(inited + 48) = v25;
  v30 = Array<A>.identifierToIndexDict()(v25);

  *(inited + 56) = v30;
  *(inited + 64) = v26;
  *(inited + 72) = v28;
  v38[0] = 0;
  v38[1] = 0xE000000000000000;
  sub_1BA4A7DF8();

  strcpy(v38, "MutableArray<");
  HIWORD(v38[1]) = -4864;
  sub_1BA4A1788();
  v31 = sub_1BA4A1748();
  v33 = v32;
  v29(v13, v10);
  MEMORY[0x1BFAF1350](v31, v33);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v34 = MutableArrayDataSource.init(arrangedSections:identifier:)(inited, v38[0], v38[1]);

  return v34;
}

uint64_t sub_1BA13A3EC(void *a1, void *a2, void *a3, uint64_t a4, char a5)
{
  sub_1B9F3D5A4(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v55 = &v50 - v11;
  v12 = sub_1BA4A6F48();
  v51 = *(v12 - 8);
  v52 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA13B894();
  v53 = *(v15 - 8);
  v54 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA13B98C();
  v57 = *(v18 - 8);
  v58 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v56 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DataTypeMostRecentSamplesDisclosureItemsDataSource(0);
  swift_allocObject();
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = sub_1BA13A0B8(v20, v21, v22, a5);

  v59 = a4;
  sub_1B9F37558(a4, &v61, &qword_1EBBF18F0, &qword_1EBBEC590, &protocol descriptor for SampleMetadataViewControllerProviding);
  if (v62)
  {
    sub_1B9F1134C(&v61, &v63);
  }

  else
  {
    v24 = type metadata accessor for SampleMetadataViewControllerProvider();
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v25 + 16) = v21;
    swift_unknownObjectWeakAssign();
    v65 = v24;
    v66 = &off_1F381AEB8;
    v63 = v25;
    v26 = v62;
    v27 = v21;

    if (v26)
    {
      sub_1BA139F8C(&v61, &qword_1EBBF18F0, &qword_1EBBEC590, &protocol descriptor for SampleMetadataViewControllerProviding);
    }
  }

  v28 = OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_sampleMetadataViewControllerProvider;
  swift_beginAccess();
  sub_1BA13B70C(&v63, v23 + v28, &qword_1EBBF18F0, &qword_1EBBEC590, &protocol descriptor for SampleMetadataViewControllerProviding);
  swift_endAccess();
  sub_1BA1356D4();
  sub_1BA13BAA0(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BA4B5470;
  *(v29 + 32) = v20;
  v63 = 0;
  v64 = 0xE000000000000000;
  v30 = v20;
  sub_1BA4A7DF8();
  v31 = sub_1BA4A85D8();
  v33 = v32;

  v63 = v31;
  v64 = v33;
  MEMORY[0x1BFAF1350](0xD000000000000015, 0x80000001BA4ED310);
  sub_1BA4A6F58();

  v34 = swift_allocObject();
  v34[2] = v30;
  v34[3] = v21;
  v34[4] = v22;
  v35 = v30;
  v36 = v21;
  v37 = v22;
  sub_1BA4A4D08();
  sub_1BA130D70();
  sub_1BA132AB4(0, &qword_1EDC5F4C8, sub_1BA130D70);
  sub_1BA13C020(&qword_1EBBEC688, MEMORY[0x1E69A3960]);
  sub_1BA130FA8(&unk_1EDC5F4D0, &qword_1EDC5F4C8, sub_1BA130D70);
  v38 = v52;
  sub_1BA4A5088();

  (*(v51 + 8))(v14, v38);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v39 = sub_1BA4A7308();
  v63 = v39;
  v40 = sub_1BA4A72A8();
  v41 = v55;
  (*(*(v40 - 8) + 56))(v55, 1, 1, v40);
  sub_1BA13C020(&unk_1EBBEC698, sub_1BA13B894);
  sub_1B9F3E1E0(&qword_1EDC6B5B0, &qword_1EDC6B5A0);
  v42 = v56;
  v43 = v54;
  sub_1BA4A50A8();
  sub_1B9F829D4(v41, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);

  (*(v53 + 8))(v17, v43);
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = swift_allocObject();
  v46 = v60;
  *(v45 + 16) = v44;
  *(v45 + 24) = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_1BA13BA98;
  *(v47 + 24) = v45;
  sub_1BA13C020(&unk_1EBBEC6A8, sub_1BA13B98C);
  v48 = v58;
  sub_1BA4A5008();

  (*(v57 + 8))(v42, v48);
  swift_beginAccess();
  sub_1BA4A4D28();
  swift_endAccess();

  sub_1BA139F8C(v59, &qword_1EBBF18F0, &qword_1EBBEC590, &protocol descriptor for SampleMetadataViewControllerProviding);
  return v23;
}