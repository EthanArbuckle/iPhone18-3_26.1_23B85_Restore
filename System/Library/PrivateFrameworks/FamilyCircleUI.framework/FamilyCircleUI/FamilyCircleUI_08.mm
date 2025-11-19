uint64_t sub_21BC4C608()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v7 = *v0;

  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBDBEE0, v5, v4);
}

uint64_t sub_21BC4C744@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21BE275DC();
  sub_21BC4CAD4(&v48);
  v32 = *&v49[16];
  v33 = *&v49[32];
  v34 = *&v49[48];
  v30 = v48;
  v31 = *v49;
  v35[2] = *&v49[16];
  v35[3] = *&v49[32];
  v36 = *&v49[48];
  v35[0] = v48;
  v35[1] = *v49;
  sub_21BBA3854(&v30, &v45, &qword_27CDB7D98, &qword_21BE39C38);
  sub_21BB3A4CC(v35, &qword_27CDB7D98, &qword_21BE39C38);
  *(&v29[1] + 7) = v31;
  *(&v29[2] + 7) = v32;
  *(&v29[3] + 7) = v33;
  *(&v29[4] + 7) = v34;
  *(v29 + 7) = v30;
  v3 = sub_21BE275DC();
  LOBYTE(v19[0]) = 1;
  sub_21BC4CCFC(&v48);
  v39 = *&v49[16];
  v40 = *&v49[32];
  v37 = v48;
  v38 = *v49;
  v42[1] = *v49;
  v42[2] = *&v49[16];
  v42[3] = *&v49[32];
  v42[4] = *&v49[48];
  v41 = *&v49[48];
  v42[0] = v48;
  sub_21BBA3854(&v37, &v45, &qword_27CDB7DA0, &qword_21BE39C40);
  sub_21BB3A4CC(v42, &qword_27CDB7DA0, &qword_21BE39C40);
  *&v28[23] = v38;
  *&v28[39] = v39;
  *&v28[55] = v40;
  *&v28[71] = v41;
  *&v28[7] = v37;
  v4 = sub_21BE282DC();
  v5 = sub_21BE27B7C();
  v43[0] = v2;
  v43[1] = 0;
  LOBYTE(v44[0]) = 1;
  *(v44 + 1) = v29[0];
  *(&v44[3] + 1) = v29[3];
  *(&v44[2] + 1) = v29[2];
  *(&v44[1] + 1) = v29[1];
  v44[4] = *(&v29[3] + 15);
  *&v26[23] = v44[0];
  *&v26[7] = v2;
  *&v26[87] = *(&v29[3] + 15);
  *&v26[71] = v44[3];
  *&v26[55] = v44[2];
  *&v26[39] = v44[1];
  v6 = *&v28[16];
  *&v46[17] = *&v28[16];
  v7 = *v28;
  *&v46[1] = *v28;
  *&v46[80] = *&v28[79];
  v8 = *&v28[64];
  *&v46[65] = *&v28[64];
  v9 = *&v28[48];
  *&v46[49] = *&v28[48];
  v10 = *&v28[32];
  *&v46[33] = *&v28[32];
  v11 = *&v26[48];
  *(a1 + 41) = *&v26[32];
  v12 = *v26;
  *(a1 + 25) = *&v26[16];
  *(a1 + 9) = v12;
  v13 = *&v26[64];
  v14 = *&v26[80];
  *(a1 + 104) = *&v26[95];
  *(a1 + 89) = v14;
  v45 = v3;
  v46[0] = 1;
  *&v46[88] = v4;
  *(a1 + 73) = v13;
  *(a1 + 57) = v11;
  v15 = *&v46[32];
  *(a1 + 144) = *&v46[16];
  *(a1 + 160) = v15;
  v16 = *v46;
  *(a1 + 112) = v45;
  *(a1 + 128) = v16;
  v17 = *&v46[80];
  *(a1 + 192) = *&v46[64];
  *(a1 + 208) = v17;
  *(a1 + 176) = *&v46[48];
  *&v49[17] = v6;
  v27 = 1;
  v47 = v5;
  v25 = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 224) = v5;
  *(a1 + 232) = 0;
  *(a1 + 240) = 1;
  v48 = v3;
  v49[0] = 1;
  *&v49[1] = v7;
  *&v50[15] = *&v28[79];
  v51 = v4;
  *v50 = v8;
  *&v49[49] = v9;
  *&v49[33] = v10;
  v52 = v5;
  sub_21BBA3854(v43, v19, &qword_27CDB7DA8, &qword_21BE39C48);
  sub_21BBA3854(&v45, v19, &qword_27CDB7DB0, &qword_21BE39C50);
  sub_21BB3A4CC(&v48, &qword_27CDB7DB0, &qword_21BE39C50);
  v19[0] = v2;
  v19[1] = 0;
  v20 = 1;
  v22 = v29[1];
  v23 = v29[2];
  v24[0] = v29[3];
  *(v24 + 15) = *(&v29[3] + 15);
  v21 = v29[0];
  return sub_21BB3A4CC(v19, &qword_27CDB7DA8, &qword_21BE39C48);
}

void sub_21BC4CAD4(uint64_t a1@<X8>)
{
  v2 = sub_21BE2838C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_21BE289CC();
  v10 = [objc_opt_self() imageNamed:v9 inBundle:v8 withConfiguration:0];

  if (v10)
  {
    v11 = v10;
    sub_21BE2836C();
    (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
    v10 = sub_21BE283CC();

    (*(v3 + 8))(v6, v2);
    sub_21BE2869C();
    sub_21BE26F2C();

    v16[8] = 1;
    v12 = v17;
    v13 = v18;
    v14 = v19;
    v15 = 1;
  }

  else
  {
    v15 = 0;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  *a1 = v10;
  *(a1 + 8) = 0;
  *(a1 + 16) = v15;
  *(a1 + 24) = v12;
  *(a1 + 40) = v13;
  *(a1 + 56) = v14;
}

double sub_21BC4CCFC@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_21BE2599C();
  v6 = v5;

  *&v19 = v4;
  *(&v19 + 1) = v6;
  sub_21BB41FA4();
  v7 = sub_21BE27DBC();
  v9 = v8;
  LOBYTE(v6) = v10;
  sub_21BE27BEC();
  v11 = sub_21BE27D9C();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_21BBC7C7C(v7, v9, v6 & 1);

  sub_21BE2869C();
  sub_21BE26F2C();
  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v17;
  *(a1 + 32) = v19;
  *(a1 + 48) = v20;
  result = *&v21;
  *(a1 + 64) = v21;
  return result;
}

void *sub_21BC4CE84(unsigned __int8 *a1)
{
  v2 = v1;
  v128 = *MEMORY[0x277D85DE8];
  v121 = type metadata accessor for MultipleInviteViewForInvitee();
  v4 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v6 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21BE26A4C();
  v122 = *(v7 - 8);
  v8 = *(v122 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v120 = &v114 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v114 - v14;
  v16 = sub_21BE25FCC();
  v17 = *(v16 - 8);
  v18 = v17[8];
  MEMORY[0x28223BE20](v16);
  v20 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = *a1;
  v21 = *MEMORY[0x277D07F18];
  v119 = v17[13];
  v119(v20, v21, v16);
  LOBYTE(a1) = MEMORY[0x21CF01150](v20);
  v118 = v17[1];
  v118(v20, v16);
  if ((a1 & 1) == 0)
  {
    v31 = OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastFamilyView;
    v32 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastFamilyView);
    if (v32)
    {
      goto LABEL_6;
    }

    v35 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7D60, &qword_21BE39BC8));
    v36 = sub_21BC49EE0();
    v37 = *(v2 + v31);
    *(v2 + v31) = v36;
    v38 = v36;

    *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastRowStatus) = 1;
LABEL_66:
    v113 = *MEMORY[0x277D85DE8];
    return v38;
  }

  v22 = v2[7];
  v117 = v7;
  if (!v22)
  {
    v116 = v2;
    sub_21BE260FC();
    v23 = sub_21BE26A2C();
    v24 = sub_21BE28FFC();
    v25 = os_log_type_enabled(v23, v24);
    v114 = v6;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v125 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_21BB3D81C(0xD000000000000014, 0x800000021BE59270, &v125);
      _os_log_impl(&dword_21BB35000, v23, v24, "%s appears to be here from direct navigation", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x21CF05C50](v27, -1, -1);
      MEMORY[0x21CF05C50](v26, -1, -1);

      v28 = *(v122 + 8);
      v29 = v15;
      v30 = v117;
    }

    else
    {

      v28 = *(v122 + 8);
      v29 = v15;
      v30 = v7;
    }

    v115 = v28;
    (v28)(v29, v30);
    v39 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
    [v39 setCachePolicy_];
    *&v125 = 0;
    v40 = [v39 fetchCachedFamilyCircle_];
    v41 = v125;
    if (v40)
    {
      v2 = v116;
      v42 = v116[7];
      v116[7] = v40;
      v43 = v40;
      v44 = v41;
      v45 = v43;

      FAFamilyCircle.rowStatusForFamily()();
      v123 = v125;
    }

    else
    {
      v46 = v125;
      v47 = sub_21BE25A8C();

      swift_willThrow();
      v2 = v116;
    }

    v22 = v2[7];
    v6 = v114;
    if (!v22)
    {
      sub_21BE260FC();
      v56 = sub_21BE26A2C();
      v57 = sub_21BE28FDC();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_21BB35000, v56, v57, "Invalid no family!!", v58, 2u);
        MEMORY[0x21CF05C50](v58, -1, -1);
      }

      v115(v11, v117);
      v38 = sub_21BC4FDD4();
      goto LABEL_66;
    }
  }

  v48 = OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastFamilyView;
  v32 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastFamilyView);
  if (!v32)
  {
    v52 = v22;
    v51 = v123;
    if (v123 <= 2)
    {
LABEL_23:
      if ((v51 - 1) < 2)
      {
        v115 = v48;
        v54 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7D60, &qword_21BE39BC8));
        v38 = sub_21BC49EE0();
        v55 = [v38 navigationItem];
        [v55 setLargeTitleDisplayMode_];

LABEL_52:
        *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastRowStatus) = v51;
        if (v51 == 1)
        {
          goto LABEL_53;
        }

        v105 = sub_21BE2995C();

        if (v105)
        {

          goto LABEL_58;
        }

        if (v51 == 2)
        {
LABEL_53:
        }

        else
        {
          v106 = sub_21BE2995C();

          if ((v106 & 1) == 0)
          {
            v108 = 0;
            goto LABEL_59;
          }
        }

LABEL_58:
        v107 = v38;
        v108 = v38;
LABEL_59:
        v109 = *(v115 + v2);
        *(v115 + v2) = v108;

        goto LABEL_66;
      }

      v61 = v120;
      sub_21BE260FC();
      v62 = sub_21BE26A2C();
      v63 = sub_21BE28FDC();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_21BB35000, v62, v63, "Invalid fallthrough!", v64, 2u);
        MEMORY[0x21CF05C50](v64, -1, -1);
      }

      (*(v122 + 8))(v61, v117);
      v65 = sub_21BC4FDD4();
LABEL_65:
      v38 = v65;

      goto LABEL_66;
    }

LABEL_34:
    if (v51 != 3 || (v119(v20, *MEMORY[0x277D07EF8], v16), v66 = MEMORY[0x21CF01150](v20), v118(v20, v16), (v66 & 1) == 0))
    {
      v75 = v2;
      v76 = v2[3];
      v115 = v48;
      v116 = v75;
      v77 = v75[5];
      v78 = type metadata accessor for FamilyPictureStore(0);
      v126 = v78;
      v127 = &off_282D95F60;
      *&v125 = v77;
      v79 = type metadata accessor for MultipleInviteViewModel();
      v80 = *(v79 + 48);
      v81 = *(v79 + 52);
      v82 = v6;
      v83 = swift_allocObject();
      v84 = __swift_mutable_project_boxed_opaque_existential_1(&v125, v78);
      v85 = *(*(v78 - 8) + 64);
      MEMORY[0x28223BE20](v84);
      v87 = (&v114 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v88 + 16))(v87);
      v89 = *v87;

      sub_21BC4F8AC(v76, v89, v83);
      __swift_destroy_boxed_opaque_existential_0Tm(&v125);
      sub_21BC5000C(&qword_27CDB7D68, type metadata accessor for MultipleInviteViewModel);

      *v82 = sub_21BE270CC();
      *(v82 + 8) = v90;
      v124 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7D70, &qword_21BE39BD0);
      sub_21BE283EC();
      *(v82 + 16) = v125;
      v91 = v121;
      v92 = *(v121 + 24);
      *(v82 + v92) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
      swift_storeEnumTagMultiPayload();
      v93 = *(v91 + 28);
      sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
      v94 = [swift_getObjCClassFromMetadata() defaultCenter];
      if (qword_27CDB4EE8 != -1)
      {
        swift_once();
      }

      sub_21BE2935C();

      v95 = v82 + *(v91 + 32);
      LOBYTE(v124) = 0;
      sub_21BE283EC();
      v96 = *(&v125 + 1);
      *v95 = v125;
      *(v95 + 8) = v96;
      v97 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7D78, &qword_21BE39C10));
      v38 = sub_21BC499C8(v82);
      if (v51 == 4)
      {
        v98 = sub_21BE2995C();

        if ((v98 & 1) == 0)
        {
          type metadata accessor for ConfirmChildAgeViewModel();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v100 = [objc_opt_self() bundleForClass_];
          v101 = sub_21BE2599C();
          v103 = v102;

          *&v125 = v101;
          *(&v125 + 1) = v103;
          sub_21BE28B8C();
        }
      }

      else
      {
      }

      v104 = sub_21BE289CC();

      [v38 setTitle_];

      if (qword_27CDB4F20 != -1)
      {
        swift_once();
      }

      sub_21BC83E50();

      v2 = v116;
      goto LABEL_52;
    }

    v67 = *(v2 + v48);
    *(v2 + v48) = 0;

    *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastRowStatus) = 0;
    v68 = sub_21BE290EC();
    if (v68 >> 62)
    {
      v110 = v68;
      v111 = sub_21BE2951C();
      v68 = v110;
      if (v111)
      {
LABEL_38:
        if ((v68 & 0xC000000000000001) != 0)
        {
          v69 = MEMORY[0x21CF047C0](0);
        }

        else
        {
          if (!*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v69 = *(v68 + 32);
        }

        v70 = v69;

        v71 = [v70 code];

        if (v71)
        {
          v72 = sub_21BE28A0C();
          v74 = v73;

LABEL_64:
          v112 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7D80, &qword_21BE39C18));
          v65 = sub_21BC49C88(v72, v74);
          goto LABEL_65;
        }

LABEL_63:
        v72 = 0;
        v74 = 0xE000000000000000;
        goto LABEL_64;
      }
    }

    else if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_38;
    }

    goto LABEL_63;
  }

  v49 = v2;
  v50 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastRowStatus);
  v51 = v123;
  if (v123 != 5)
  {
    if (v50 == 5)
    {
      goto LABEL_22;
    }

    v114 = v6;
    v115 = OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastFamilyView;
    v116 = v32;
    v59 = v123;
    v60 = v22;
    v38 = v116;
    if ((sub_21BB42864(v59, v50) & 1) == 0)
    {

      v2 = v49;
      v51 = v123;
      v6 = v114;
      v48 = v115;
      if (v123 <= 2)
      {
        goto LABEL_23;
      }

      goto LABEL_34;
    }

    goto LABEL_66;
  }

  if (v50 != 5)
  {
LABEL_22:
    v53 = v22;
    v2 = v49;
    if (v51 <= 2)
    {
      goto LABEL_23;
    }

    goto LABEL_34;
  }

LABEL_6:
  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

uint64_t sub_21BC4DD44(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v65 = a2;
  v62 = type metadata accessor for FamilyRowView();
  v5 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21BE26A4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v61 - v14;
  v16 = *a1;
  sub_21BE260FC();

  v17 = sub_21BE26A2C();
  v18 = sub_21BE28FCC();
  v66 = a3;

  if (os_log_type_enabled(v17, v18))
  {
    v63 = v13;
    v64 = v9;
    v61 = v8;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v68 = v20;
    *v19 = 136315650;
    *(v19 + 4) = sub_21BB3D81C(0xD000000000000014, 0x800000021BE59230, &v68);
    *(v19 + 12) = 2080;
    v21 = 0x69766E49746E6573;
    v22 = 0xEA00000000006574;
    v23 = 0x6465766965636572;
    v24 = 0xEE00657469766E49;
    if (v16 != 3)
    {
      v23 = 0xD000000000000013;
      v24 = 0x800000021BE54640;
    }

    if (v16 != 2)
    {
      v21 = v23;
      v22 = v24;
    }

    v25 = 0x796C696D6166;
    if (!v16)
    {
      v25 = 0x6E6564646968;
    }

    if (v16 <= 1)
    {
      v26 = v25;
    }

    else
    {
      v26 = v21;
    }

    if (v16 <= 1)
    {
      v27 = 0xE600000000000000;
    }

    else
    {
      v27 = v22;
    }

    v28 = sub_21BB3D81C(v26, v27, &v68);

    *(v19 + 14) = v28;
    *(v19 + 22) = 2080;
    *(v19 + 24) = sub_21BB3D81C(v65, v66, &v68);
    _os_log_impl(&dword_21BB35000, v17, v18, "%s returning a row for:%s hint:%s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v20, -1, -1);
    MEMORY[0x21CF05C50](v19, -1, -1);

    v9 = v64;
    v29 = *(v64 + 8);
    v8 = v61;
    v29(v15, v61);
    v13 = v63;
  }

  else
  {

    v29 = *(v9 + 8);
    v29(v15, v8);
  }

  v30 = v67;
  v31 = *(v67 + 56);
  if (v31)
  {
    goto LABEL_17;
  }

  v32 = *(v67 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_rowCache);
  FamilyRowCache.rowStatusFromCache()();
  v33 = v68;
  if (v68 != 5)
  {
    v31 = *(v30 + 56);
    if (!v31)
    {
      KeyPath = swift_getKeyPath();
      v35 = v62;
      *&v7[*(v62 + 20)] = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7D48, &qword_21BE39B88);
      swift_storeEnumTagMultiPayload();
      *v7 = 0;
      v7[8] = v33;
      v36 = v66;
      *(v7 + 2) = v65;
      *(v7 + 3) = v36;
      v37 = *(v35 + 24);
      *&v7[v37] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7D50, &qword_21BE39BC0);
      swift_storeEnumTagMultiPayload();
      sub_21BC5000C(&qword_27CDB7D58, type metadata accessor for FamilyRowView);

      return sub_21BE2852C();
    }

    goto LABEL_17;
  }

  v31 = *(v30 + 56);
  if (v31)
  {
LABEL_17:
    if (v16)
    {
      v38 = sub_21BE2995C();
      v39 = v31;

      if ((v38 & 1) == 0)
      {
        v56 = swift_getKeyPath();
        v57 = v62;
        *&v7[*(v62 + 20)] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7D48, &qword_21BE39B88);
        swift_storeEnumTagMultiPayload();
        *v7 = v31;
        v7[8] = v16;
        v58 = v66;
        *(v7 + 2) = v65;
        *(v7 + 3) = v58;
        v59 = *(v57 + 24);
        *&v7[v59] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7D50, &qword_21BE39BC0);
        swift_storeEnumTagMultiPayload();
        sub_21BC5000C(&qword_27CDB7D58, type metadata accessor for FamilyRowView);

        return sub_21BE2852C();
      }
    }

    else
    {
    }
  }

  sub_21BE260FC();

  v40 = sub_21BE26A2C();
  v41 = sub_21BE28FDC();

  if (os_log_type_enabled(v40, v41))
  {
    v63 = v13;
    v64 = v9;
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v68 = v44;
    *v42 = 136315394;
    v45 = 0x69766E49746E6573;
    v46 = 0xEA00000000006574;
    v47 = 0x6465766965636572;
    v48 = 0xEE00657469766E49;
    if (v16 != 3)
    {
      v47 = 0xD000000000000013;
      v48 = 0x800000021BE54640;
    }

    if (v16 != 2)
    {
      v45 = v47;
      v46 = v48;
    }

    v49 = 0x796C696D6166;
    if (!v16)
    {
      v49 = 0x6E6564646968;
    }

    if (v16 <= 1)
    {
      v50 = v49;
    }

    else
    {
      v50 = v45;
    }

    if (v16 <= 1)
    {
      v51 = 0xE600000000000000;
    }

    else
    {
      v51 = v46;
    }

    v52 = sub_21BB3D81C(v50, v51, &v68);

    *(v42 + 4) = v52;
    *(v42 + 12) = 2112;
    v53 = *(v67 + 56);
    *(v42 + 14) = v53;
    *v43 = v53;
    v54 = v53;
    _os_log_impl(&dword_21BB35000, v40, v41, "Invalid row request %s for %@!", v42, 0x16u);
    sub_21BB3A4CC(v43, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v43, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    MEMORY[0x21CF05C50](v44, -1, -1);
    MEMORY[0x21CF05C50](v42, -1, -1);

    v55 = v63;
  }

  else
  {

    v55 = v13;
  }

  v29(v55, v8);
  return sub_21BE2852C();
}

uint64_t sub_21BC4E5C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  v5 = *v0;
  v6 = sub_21BE28DAC();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_21BE28D7C();

  v7 = sub_21BE28D6C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v5;
  sub_21BBA932C(0, 0, v4, &unk_21BE39B48, v8);
}

void sub_21BC4E6E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastFamilyView;
  if (*(a2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastFamilyView))
  {
    sub_21BE260FC();
    v9 = sub_21BE26A2C();
    v10 = sub_21BE28FFC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_21BB3D81C(0x4D726F74696E6F6DLL, 0xEF292879726F6D65, &v15);
      _os_log_impl(&dword_21BB35000, v9, v10, "%s releasing cached view", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x21CF05C50](v12, -1, -1);
      MEMORY[0x21CF05C50](v11, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    v13 = *(a2 + v8);
    *(a2 + v8) = 0;

    *(a2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastRowStatus) = 0;
  }
}

uint64_t sub_21BC4E8BC(uint64_t a1)
{
  v2 = sub_21BE2581C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_21BE2580C();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21BC4E9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_21BE25D6C();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = sub_21BE2626C();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v12 = sub_21BE26A4C();
  v4[14] = v12;
  v13 = *(v12 - 8);
  v4[15] = v13;
  v14 = *(v13 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = sub_21BE28D7C();
  v4[19] = sub_21BE28D6C();
  v16 = sub_21BE28D0C();
  v4[20] = v16;
  v4[21] = v15;

  return MEMORY[0x2822009F8](sub_21BC4EBA4, v16, v15);
}

uint64_t sub_21BC4EBA4()
{
  v71 = v0;
  v1 = *(v0[6] + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v2 = v0[5];
  v0[22] = v2;
  if (!v2)
  {
    v8 = v0[19];
    v9 = v0[16];

    sub_21BE260FC();
    v10 = sub_21BE26A2C();
    v11 = sub_21BE28FFC();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[15];
    v13 = v0[16];
    v15 = v0[14];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v70 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_21BB3D81C(0xD000000000000012, 0x800000021BE592D0, &v70);
      _os_log_impl(&dword_21BB35000, v10, v11, "%s user logged out?", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x21CF05C50](v17, -1, -1);
      MEMORY[0x21CF05C50](v16, -1, -1);
    }

    (*(v14 + 8))(v13, v15);
    v18 = v0[6];
    v19 = OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_activeAccount;
    v20 = v18;
    if (*(v18 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_activeAccount))
    {
      v22 = v0[11];
      v21 = v0[12];
      v23 = v0[10];
      v24 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
      sub_21BE2909C();

      v25 = OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_invitationStatus;
      swift_beginAccess();
      (*(v22 + 40))(v18 + v25, v21, v23);
      swift_endAccess();
      if (qword_280BD84F8 != -1)
      {
        swift_once();
      }

      v27 = v0[8];
      v26 = v0[9];
      v29 = v0[6];
      v28 = v0[7];
      v30 = *algn_280BD8508;
      v31 = qword_280BD8510;
      v32 = unk_280BD8518;
      v33 = (v29 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_marqueeImages);
      v34 = *(v29 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_marqueeImages + 8);
      v35 = *(v29 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_marqueeImages + 24);
      *v33 = qword_280BD8500;
      v33[1] = v30;
      v33[2] = v31;
      v33[3] = v32;

      sub_21BE25D5C();
      v36 = sub_21BE25D2C();
      v38 = v37;
      (*(v27 + 8))(v26, v28);
      v39 = (v29 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_imageHint);
      v40 = *(v29 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_imageHint + 8);
      *v39 = v36;
      v39[1] = v38;

      v20 = v0[6];
    }

    v41 = v0[18];
    v42 = v0[13];
    v43 = *(v20 + 56);
    *(v20 + 56) = 0;

    v44 = *(v18 + v19);
    *(v18 + v19) = 0;

    v45 = sub_21BE28DAC();
    (*(*(v45 - 8) + 56))(v42, 1, 1, v45);

    v46 = sub_21BE28D6C();
    v47 = swift_allocObject();
    v48 = MEMORY[0x277D85700];
    v47[2] = v46;
    v47[3] = v48;
    v47[4] = v20;
    sub_21BBA932C(0, 0, v42, &unk_21BE39E10, v47);
    goto LABEL_11;
  }

  v3 = v0[6];
  v4 = OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_activeAccount;
  v5 = *(v3 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_activeAccount);
  v6 = v5;
  v73.value.super.isa = v5;
  LOBYTE(v5) = ACAccount.isSameUser(_:)(v73);

  if (v5)
  {
    v7 = v0[19];

LABEL_11:

    v50 = v0[16];
    v49 = v0[17];
    v52 = v0[12];
    v51 = v0[13];
    v53 = v0[9];

    v54 = v0[1];

    return v54();
  }

  v56 = v0[17];
  sub_21BE260FC();
  v57 = sub_21BE26A2C();
  v58 = sub_21BE28FFC();
  v59 = os_log_type_enabled(v57, v58);
  v60 = v0[17];
  v62 = v0[14];
  v61 = v0[15];
  if (v59)
  {
    v69 = v0[17];
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70 = v64;
    *v63 = 136315138;
    *(v63 + 4) = sub_21BB3D81C(0xD000000000000012, 0x800000021BE592D0, &v70);
    _os_log_impl(&dword_21BB35000, v57, v58, "%s new? user logged in...", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
    MEMORY[0x21CF05C50](v64, -1, -1);
    MEMORY[0x21CF05C50](v63, -1, -1);

    (*(v61 + 8))(v69, v62);
  }

  else
  {

    (*(v61 + 8))(v60, v62);
  }

  v65 = *(v3 + v4);
  *(v3 + v4) = v2;
  v66 = v2;

  v67 = swift_task_alloc();
  v0[23] = v67;
  *v67 = v0;
  v67[1] = sub_21BC4F178;
  v68 = v0[6];

  return sub_21BB448F0();
}

uint64_t sub_21BC4F178()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v6 = *v0;

  v3 = *(v1 + 168);
  v4 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_21BC4F298, v4, v3);
}

uint64_t sub_21BC4F298()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[13];
  v5 = v0[6];

  v6 = sub_21BE28DAC();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);

  v7 = sub_21BE28D6C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v5;
  sub_21BBA932C(0, 0, v4, &unk_21BE39E18, v8);

  v11 = v0[16];
  v10 = v0[17];
  v13 = v0[12];
  v12 = v0[13];
  v14 = v0[9];

  v15 = v0[1];

  return v15();
}

uint64_t sub_21BC4F3E8(uint64_t a1)
{
  v2 = sub_21BE2788C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21BE273FC();
}

uint64_t sub_21BC4F4B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v6 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = v7;
  v10[5] = v6;
  v10[6] = v9;
  v10[7] = v8;

  sub_21BE2633C();
}

uint64_t sub_21BC4F568(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  *(v3 + 16) = *a3;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v9 = (a1 + *a1);
  v6 = a1[1];
  v7 = swift_task_alloc();
  *(v3 + 48) = v7;
  *v7 = v3;
  v7[1] = sub_21BC4F66C;

  return v9(v3 + 16);
}

uint64_t sub_21BC4F66C()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_21BC4F780;
  }

  else
  {
    v3 = sub_21BC086DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21BC4F798()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_21BC504E0;
  }

  else
  {
    v3 = sub_21BC504E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21BC4F8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB72B0, &qword_21BE36C60);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - v13;
  v25[3] = type metadata accessor for FamilyCircleStore(0);
  v25[4] = &protocol witness table for FamilyCircleStore;
  v25[0] = a1;
  v24[3] = type metadata accessor for FamilyPictureStore(0);
  v24[4] = &off_282D95F60;
  v24[0] = a2;
  *(a3 + 96) = 0;
  v15 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_21BE2951C())
  {
    v16 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  *(a3 + 104) = v16;
  v17 = OBJC_IVAR____TtC14FamilyCircleUI23MultipleInviteViewModel__invites;
  v23[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB72D0, &qword_21BE36D30);
  sub_21BE26C6C();
  (*(v11 + 32))(a3 + v17, v14, v10);
  sub_21BB3A35C(v25, a3 + 16);
  sub_21BB3A35C(v24, a3 + 56);
  v18 = sub_21BE28DAC();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  sub_21BE28D7C();

  v19 = sub_21BE28D6C();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = a3;
  sub_21BBA932C(0, 0, v9, &unk_21BE39C20, v20);

  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  return a3;
}

uint64_t sub_21BC4FB54(unsigned __int8 *a1)
{
  v2 = sub_21BE25FCC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  (*(v3 + 104))(v6, *MEMORY[0x277D07EF8], v2);
  LOBYTE(a1) = MEMORY[0x21CF01150](v6);
  (*(v3 + 8))(v6, v2);
  if (a1)
  {
    if (v7 == 3)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_21BE2995C();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_21BC4FD20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BC4A5FC(a1, v4, v5, v6);
}

uint64_t sub_21BC4FDD4()
{
  v0 = sub_21BE2770C();
  v8 = 1;
  sub_21BC4C744(&__src);
  v27 = *&v10[176];
  v28 = *&v10[192];
  v29 = *&v10[208];
  v23 = *&v10[112];
  v24 = *&v10[128];
  v25 = *&v10[144];
  v26 = *&v10[160];
  v19 = *&v10[48];
  v20 = *&v10[64];
  v21 = *&v10[80];
  v22 = *&v10[96];
  v15 = __src;
  v16 = *v10;
  v17 = *&v10[16];
  v18 = *&v10[32];
  v31[12] = *&v10[176];
  v31[13] = *&v10[192];
  v31[14] = *&v10[208];
  v31[8] = *&v10[112];
  v31[9] = *&v10[128];
  v31[10] = *&v10[144];
  v31[11] = *&v10[160];
  v31[4] = *&v10[48];
  v31[5] = *&v10[64];
  v31[6] = *&v10[80];
  v31[7] = *&v10[96];
  v31[0] = __src;
  v31[1] = *v10;
  v30 = v10[224];
  v32 = v10[224];
  v31[2] = *&v10[16];
  v31[3] = *&v10[32];
  sub_21BBA3854(&v15, v6, &qword_27CDB7D88, &qword_21BE39C28);
  sub_21BB3A4CC(v31, &qword_27CDB7D88, &qword_21BE39C28);
  *&v7[199] = v27;
  *&v7[215] = v28;
  *&v7[231] = v29;
  *&v7[135] = v23;
  *&v7[151] = v24;
  *&v7[167] = v25;
  *&v7[183] = v26;
  *&v7[71] = v19;
  *&v7[87] = v20;
  *&v7[103] = v21;
  *&v7[119] = v22;
  *&v7[7] = v15;
  *&v7[23] = v16;
  *&v7[39] = v17;
  v7[247] = v30;
  *&v7[55] = v18;
  v1 = v8;
  v2 = sub_21BE282DC();
  v3 = sub_21BE27B7C();
  *&v10[193] = *&v7[192];
  *&v10[209] = *&v7[208];
  v11 = *&v7[224];
  *&v10[129] = *&v7[128];
  *&v10[145] = *&v7[144];
  *&v10[161] = *&v7[160];
  *&v10[177] = *&v7[176];
  *&v10[65] = *&v7[64];
  *&v10[81] = *&v7[80];
  *&v10[97] = *&v7[96];
  *&v10[113] = *&v7[112];
  *&v10[1] = *v7;
  *&v10[17] = *&v7[16];
  *&v10[33] = *&v7[32];
  __src = v0;
  v10[0] = v1;
  v12 = *&v7[240];
  *&v10[49] = *&v7[48];
  v13 = v2;
  v14 = v3;
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7D90, &qword_21BE39C30));
  return sub_21BC49764(&__src);
}

uint64_t sub_21BC5000C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BC50054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipleInviteViewForInvitee();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC500B8(uint64_t a1)
{
  v2 = type metadata accessor for MultipleInviteViewForInvitee();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BC50114(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BC18588(a1, v4, v5, v6);
}

uint64_t sub_21BC501C8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BC4C004(a1, v1);
}

uint64_t sub_21BC5026C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBB7EB8;

  return sub_21BC4F568(v2, v3, v0 + 32);
}

uint64_t sub_21BC5031C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DF0, &qword_21BE39D50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_82Tm()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BC503CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BC4E9B0(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_4(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return swift_deallocObject();
}

uint64_t type metadata accessor for RecoveryContactView()
{
  result = qword_27CDB7E00;
  if (!qword_27CDB7E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BC5055C()
{
  type metadata accessor for RecoveryContactDataItem(319);
  if (v0 <= 0x3F)
  {
    sub_21BC41F08();
    if (v1 <= 0x3F)
    {
      sub_21BC505F8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21BC505F8()
{
  result = qword_27CDB7E10;
  if (!qword_27CDB7E10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDB7E10);
  }

  return result;
}

uint64_t sub_21BC50660()
{
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_21BE289CC();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1 withConfiguration:0];

  if (v3)
  {
    return v3;
  }

  result = sub_21BE2978C();
  __break(1u);
  return result;
}

uint64_t sub_21BC50760()
{
  v1 = type metadata accessor for RecoveryContactDataItem(0);
  v2 = *(v0 + *(v1 + 24));
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v8 = *(v0 + *(v1 + 24));
    }

    sub_21BE2951C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_21BE2599C();

  return v6;
}

uint64_t sub_21BC50890()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_21BE32770;
  v2 = type metadata accessor for RecoveryContactDataItem(0);
  v3 = *(v0 + *(v2 + 24));
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v11 = *(v0 + *(v2 + 24));
    }

    v4 = sub_21BE2951C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D83C10];
  *(v1 + 56) = MEMORY[0x277D83B88];
  *(v1 + 64) = v5;
  *(v1 + 32) = v4;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();

  v8 = [v7 bundleForClass_];
  sub_21BE2599C();

  v9 = sub_21BE289DC();

  return v9;
}

unint64_t sub_21BC50A14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v44 - v3;
  v5 = sub_21BE25D1C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RecoveryContactDataItem(0);
  v11 = v10;
  v12 = *(v0 + *(v10 + 24));
  if (v12 >> 62)
  {
    if (v12 < 0)
    {
      v43 = *(v0 + *(v10 + 24));
    }

    v13 = sub_21BE2951C();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = __OFSUB__(v13, 1);
  result = v13 - 1;
  if (v14)
  {
    __break(1u);
  }

  else if ((v12 & 0xC000000000000001) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v12 + 8 * result + 32);
      goto LABEL_9;
    }

    __break(1u);
    return result;
  }

  v16 = MEMORY[0x21CF047C0](result, v12);
LABEL_9:
  v17 = v16;
  v18 = [v16 firstName];

  if (!v18)
  {
LABEL_11:
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass_];
    v19 = sub_21BE2599C();
    goto LABEL_12;
  }

  v19 = sub_21BE28A0C();
LABEL_12:
  v22 = v19;
  v23 = v20;

  sub_21BC1E1AC(v0 + *(v11 + 20), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21BC51500(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_21BE32770;
    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 64) = sub_21BBBEFE8();
    *(v24 + 32) = v22;
    *(v24 + 40) = v23;
    type metadata accessor for ConfirmChildAgeViewModel();
    v25 = swift_getObjCClassFromMetadata();
    v26 = objc_opt_self();

    v27 = [v26 bundleForClass_];
    sub_21BE2599C();

    v28 = sub_21BE289DC();
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v29 = *(v0 + *(type metadata accessor for RecoveryContactView() + 24));
    v30 = sub_21BE289CC();
    [v29 setLocalizedDateFormatFromTemplate_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_21BE33260;
    v45 = v5;
    v32 = v9;
    v33 = MEMORY[0x277D837D0];
    *(v31 + 56) = MEMORY[0x277D837D0];
    v34 = sub_21BBBEFE8();
    *(v31 + 64) = v34;
    *(v31 + 32) = v22;
    *(v31 + 40) = v23;
    v35 = sub_21BE25CAC();
    v36 = [v29 stringFromDate_];

    v37 = sub_21BE28A0C();
    v39 = v38;

    *(v31 + 96) = v33;
    *(v31 + 104) = v34;
    *(v31 + 72) = v37;
    *(v31 + 80) = v39;
    type metadata accessor for ConfirmChildAgeViewModel();
    v40 = swift_getObjCClassFromMetadata();
    v41 = objc_opt_self();

    v42 = [v41 bundleForClass_];
    sub_21BE2599C();

    v28 = sub_21BE289DC();

    (*(v6 + 8))(v32, v45);
  }

  return v28;
}

uint64_t sub_21BC50FA8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RecoveryContactNotSetupCell();
  v4 = *(*(v3 - 1) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7E18, &qword_21BE39EC8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  IsSetupCell = type metadata accessor for RecoveryContactIsSetupCell();
  v12 = *(*(IsSetupCell - 8) + 64);
  MEMORY[0x28223BE20](IsSetupCell);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1 == 1)
  {
    v15 = sub_21BC50760();
    v34 = v16;
    v35 = v15;
    v17 = sub_21BC50890();
    v33 = v18;
    v19 = sub_21BC50A14();
    v36 = a1;
    v21 = v20;
    v22 = sub_21BC50660();
    sub_21BC51438(v1, &v14[*(IsSetupCell + 36)], type metadata accessor for RecoveryContactDataItem);
    type metadata accessor for ChecklistStateVars();
    sub_21BC513F0(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
    *v14 = sub_21BE26E9C();
    v14[8] = v23 & 1;
    v24 = v34;
    *(v14 + 2) = v35;
    *(v14 + 3) = v24;
    v25 = v33;
    *(v14 + 4) = v17;
    *(v14 + 5) = v25;
    *(v14 + 6) = v19;
    *(v14 + 7) = v21;
    *(v14 + 8) = v22;
    sub_21BC51438(v14, v10, type metadata accessor for RecoveryContactIsSetupCell);
    swift_storeEnumTagMultiPayload();
    sub_21BC513F0(&qword_27CDB7E20, type metadata accessor for RecoveryContactIsSetupCell);
    sub_21BC513F0(&qword_27CDB7E28, type metadata accessor for RecoveryContactNotSetupCell);
    sub_21BE2784C();
    v26 = type metadata accessor for RecoveryContactIsSetupCell;
    v27 = v14;
  }

  else
  {
    v28 = sub_21BC50660();
    sub_21BC51438(v1, &v6[v3[6]], type metadata accessor for RecoveryContactDataItem);
    *v6 = swift_getKeyPath();
    v6[8] = 0;
    *(v6 + 2) = v28;
    v29 = v3[7];
    *&v6[v29] = [objc_allocWithZone(type metadata accessor for CustodianSetupFlowDelegate()) init];
    v30 = v3[8];
    v37 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5E70, &qword_21BE33908);
    sub_21BE283EC();
    *&v6[v30] = v38;
    sub_21BC51438(v6, v10, type metadata accessor for RecoveryContactNotSetupCell);
    swift_storeEnumTagMultiPayload();
    sub_21BC513F0(&qword_27CDB7E20, type metadata accessor for RecoveryContactIsSetupCell);
    sub_21BC513F0(&qword_27CDB7E28, type metadata accessor for RecoveryContactNotSetupCell);
    sub_21BE2784C();
    v26 = type metadata accessor for RecoveryContactNotSetupCell;
    v27 = v6;
  }

  return sub_21BC514A0(v27, v26);
}

uint64_t sub_21BC513F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BC51438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21BC514A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21BC51500(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BC51568()
{
  result = qword_27CDB7E30;
  if (!qword_27CDB7E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7E38, qword_21BE39F10);
    sub_21BC513F0(&qword_27CDB7E20, type metadata accessor for RecoveryContactIsSetupCell);
    sub_21BC513F0(&qword_27CDB7E28, type metadata accessor for RecoveryContactNotSetupCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7E30);
  }

  return result;
}

uint64_t sub_21BC51654()
{
  result = sub_21BE289CC();
  qword_27CDB7E40 = result;
  return result;
}

uint64_t sub_21BC516B0()
{
  result = sub_21BE289CC();
  qword_27CDB7E48 = result;
  return result;
}

uint64_t sub_21BC5170C()
{
  result = sub_21BE289CC();
  qword_27CDB7E50 = result;
  return result;
}

uint64_t sub_21BC51768()
{
  result = sub_21BE289CC();
  qword_27CDB7E58 = result;
  return result;
}

uint64_t sub_21BC517C4()
{
  result = sub_21BE289CC();
  qword_27CDB7E60 = result;
  return result;
}

uint64_t sub_21BC51820()
{
  result = sub_21BE289CC();
  qword_27CDB7E68 = result;
  return result;
}

uint64_t sub_21BC5187C()
{
  result = sub_21BE289CC();
  qword_27CDB7E70 = result;
  return result;
}

uint64_t sub_21BC518D8()
{
  result = sub_21BE289CC();
  qword_27CDB7E78 = result;
  return result;
}

uint64_t sub_21BC51934()
{
  result = sub_21BE289CC();
  qword_27CDB7E80 = result;
  return result;
}

uint64_t sub_21BC51990()
{
  result = sub_21BE289CC();
  qword_27CDB7E88 = result;
  return result;
}

uint64_t sub_21BC519EC()
{
  result = sub_21BE289CC();
  qword_27CDB7E90 = result;
  return result;
}

uint64_t sub_21BC51A48()
{
  result = sub_21BE289CC();
  qword_27CDB7E98 = result;
  return result;
}

uint64_t sub_21BC51AA4()
{
  result = sub_21BE289CC();
  qword_280BD7038 = result;
  return result;
}

uint64_t sub_21BC51B00()
{
  result = sub_21BE289CC();
  qword_280BD6FC0 = result;
  return result;
}

uint64_t sub_21BC51B80()
{
  result = sub_21BE289CC();
  qword_27CDB7EA0 = result;
  return result;
}

uint64_t sub_21BC51BDC()
{
  result = sub_21BE289CC();
  qword_27CDB7EA8 = result;
  return result;
}

uint64_t sub_21BC51C38()
{
  result = sub_21BE289CC();
  qword_27CDB7EB0 = result;
  return result;
}

uint64_t sub_21BC51C94()
{
  result = sub_21BE289CC();
  qword_27CDB7EB8 = result;
  return result;
}

id sub_21BC51CF0(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

void sub_21BC51D50(void *a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_21BE32770;
    swift_getErrorValue();
    v3 = a1;
    v4 = sub_21BE29A5C();
    v6 = v5;
    *(v2 + 56) = MEMORY[0x277D837D0];
    *(v2 + 64) = sub_21BBBEFE8();
    *(v2 + 32) = v4;
    *(v2 + 40) = v6;
    v7 = sub_21BE28A2C();
    v9 = v8;
    v10 = sub_21BE26A2C();
    v11 = sub_21BE28FDC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      v14 = sub_21BB3D81C(v7, v9, &v15);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_21BB35000, v10, v11, "%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x21CF05C50](v13, -1, -1);
      MEMORY[0x21CF05C50](v12, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_21BC51F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21BC52040;

  return v11(a1, a2, a3);
}

uint64_t sub_21BC52040(uint64_t a1, int a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2 & 0x10101);
}

uint64_t sub_21BC5214C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_21BBA6A64;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_21BC5228C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_21BC522AC, 0, 0);
}

uint64_t sub_21BC522AC()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  *v4 = v0;
  v4[1] = sub_21BC523B4;
  v6 = v0[2];

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD00000000000001CLL, 0x800000021BE59750, sub_21BC529C0, v2, v5);
}

uint64_t sub_21BC523B4()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21BC524F0, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_21BC524F0()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

void sub_21BC52554(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7EC0, &qword_21BE39F98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = [objc_allocWithZone(MEMORY[0x277D4BA08]) init];
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_21BC529C8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BCCB2E0;
  aBlock[3] = &block_descriptor_14;
  v12 = _Block_copy(aBlock);

  [v9 lastModifcationDateForDSID:a2 completionHandler:v12];
  _Block_release(v12);
}

uint64_t sub_21BC52728(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = sub_21BE25D1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v21 = a2;
    v16 = a2;
  }

  else
  {
    sub_21BC1E1AC(a1, v10);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      (*(v12 + 32))(v15, v10, v11);
      (*(v12 + 16))(v8, v15, v11);
      (*(v12 + 56))(v8, 0, 1, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7EC0, &qword_21BE39F98);
      sub_21BE28D2C();
      return (*(v12 + 8))(v15, v11);
    }

    sub_21BC51500(v10);
    sub_21BC1E158();
    v17 = swift_allocError();
    *v18 = 0;
    v21 = v17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7EC0, &qword_21BE39F98);
  return sub_21BE28D1C();
}

uint64_t sub_21BC529C8(uint64_t a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7EC0, &qword_21BE39F98) - 8) + 80);

  return sub_21BC52728(a1, a2);
}

unint64_t sub_21BC52A54(void *a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 dsid];
  if (result)
  {
    v8 = result;
    v9 = [objc_allocWithZone(MEMORY[0x277D4BAE0]) initWithDSID_];
    v10 = [objc_allocWithZone(MEMORY[0x277D4BA98]) init];
    v21[0] = 0;
    v11 = [v10 currentConfigurationForUser:v9 error:v21];

    if (v11)
    {
      v12 = v21[0];
      v13 = [v11 screenTimeState];

      result = v13 == 1;
    }

    else
    {
      v14 = v21[0];
      v15 = sub_21BE25A8C();

      swift_willThrow();
      sub_21BE2614C();
      v16 = sub_21BE26A2C();
      v17 = sub_21BE28FDC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_21BB35000, v16, v17, "Unable to get current configuration from STSetupClient", v18, 2u);
        MEMORY[0x21CF05C50](v18, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v6, v2);
      result = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_21BC52CE4()
{
  result = qword_27CDB7EC8;
  if (!qword_27CDB7EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7EC8);
  }

  return result;
}

id ScreenTimeConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ScreenTimeConfiguration.init()()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI23ScreenTimeConfiguration_stManagementState;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D4BA08]) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ScreenTimeConfiguration();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_21BC52E5C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_21BE26A4C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BC52F1C, 0, 0);
}

uint64_t sub_21BC52F1C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_21BE261EC();
  v5 = v4;
  v6 = swift_allocObject();
  v0[8] = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  v7 = *(MEMORY[0x277CE4600] + 4);
  v8 = v1;
  v9 = v2;
  v10 = swift_task_alloc();
  v0[9] = v10;
  v11 = sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
  *v10 = v0;
  v10[1] = sub_21BC5303C;

  return MEMORY[0x2821372C0](v0 + 2, v3, v5, &unk_21BE3A070, v6, v11);
}

uint64_t sub_21BC5303C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_21BC531C4;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_21BC53158;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21BC53158()
{
  v1 = v0[7];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_21BC531C4()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v5 = v0[6];

  sub_21BE261AC();
  v6 = v1;
  sub_21BC51D50(v1);

  (*(v5 + 8))(v3, v4);
  swift_willThrow();

  v7 = v0[1];
  v8 = v0[10];

  return v7();
}

uint64_t sub_21BC5329C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_21BC532C0, 0, 0);
}

uint64_t sub_21BC532C0()
{
  v1 = v0[21];
  v2 = *(v0[20] + OBJC_IVAR____TtC14FamilyCircleUI23ScreenTimeConfiguration_stManagementState);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21BC533F4;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7EF0, &unk_21BE405B0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BBB25CC;
  v0[13] = &block_descriptor_15;
  v0[14] = v3;
  [v2 isContentPrivacyEnabledForDSID:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BC533F4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_21BC53524;
  }

  else
  {
    v3 = sub_21BC53504;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21BC53524()
{
  v1 = *(v0 + 176);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 176);

  return v2();
}

uint64_t sub_21BC53590(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBA6A64;

  return sub_21BC5329C(a1, v5, v4);
}

uint64_t sub_21BC537C4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_21BC53888;

  return sub_21BC52E5C(v6);
}

uint64_t sub_21BC53888(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 32);
  if (v3)
  {
    v11 = sub_21BE25A7C();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 32), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

id sub_21BC53A40()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = sub_21BE289CC();
    v3 = [v1 BOOLRestrictionForFeature_];

    return (v3 == 2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ScreenTimeConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenTimeConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ScreenTimeWrapperStatus.hashValue.getter()
{
  v1 = *v0;
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](v1);
  return sub_21BE29B0C();
}

id sub_21BC53C28(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUserDSID_];

  return v2;
}

id sub_21BC53C70()
{
  v1 = [v0 getScreenTimeUsageGraphForUser];

  return v1;
}

unint64_t sub_21BC53D04()
{
  result = qword_27CDB7ED8;
  if (!qword_27CDB7ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7ED8);
  }

  return result;
}

unint64_t sub_21BC53D58(uint64_t a1)
{
  result = sub_21BC53D80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BC53D80()
{
  result = qword_27CDB7EE0;
  if (!qword_27CDB7EE0)
  {
    sub_21BB3A2A4(255, &qword_27CDB7EE8, off_2782F0D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7EE0);
  }

  return result;
}

uint64_t dispatch thunk of ScreenTimeConfiguration.isContentPrivacyEnabled(forDSID:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBB8C3C;

  return v8(a1);
}

uint64_t sub_21BC53FD8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BC537C4(v2, v3, v4);
}

uint64_t sub_21BC5408C(uint64_t a1, char a2)
{
  *(v2 + 265) = a2;
  *(v2 + 216) = a1;
  v3 = sub_21BE26A4C();
  *(v2 + 224) = v3;
  v4 = *(v3 - 8);
  *(v2 + 232) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BC54150, 0, 0);
}

uint64_t sub_21BC54150()
{
  v1 = *(v0 + 265);
  v2 = *(v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7EF8, &unk_21BE40470);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  v4 = *MEMORY[0x277D081F8];
  *(inited + 32) = *MEMORY[0x277D081F8];
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = v1;
  v5 = v4;
  sub_21BBB6848(inited);
  swift_setDeallocating();
  sub_21BC545C8(inited + 32);
  v6 = objc_allocWithZone(MEMORY[0x277D08350]);
  type metadata accessor for FAUpdateMemberFlagKey(0);
  sub_21BC54630();
  v7 = sub_21BE288EC();

  v8 = [v6 initWithFamilyMemberDSID:v2 flags:v7];
  *(v0 + 248) = v8;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 264;
  *(v0 + 24) = sub_21BC5435C;
  v9 = swift_continuation_init();
  *(v0 + 208) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7F00, &qword_21BE40480);
  *(v0 + 152) = MEMORY[0x277D85DD0];
  *(v0 + 160) = 1107296256;
  *(v0 + 168) = sub_21BD63750;
  *(v0 + 176) = &block_descriptor_16;
  *(v0 + 184) = v9;
  [v8 startRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_21BC5435C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_21BC544DC;
  }

  else
  {
    v3 = sub_21BC5446C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21BC5446C()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_21BC544DC()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  swift_willThrow();
  sub_21BE2614C();
  v6 = v1;
  sub_21BC51D50(v1);

  (*(v4 + 8))(v3, v5);
  v7 = v0[30];

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_21BC545C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58A0, &qword_21BE32998);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BC54630()
{
  result = qword_27CDB5510;
  if (!qword_27CDB5510)
  {
    type metadata accessor for FAUpdateMemberFlagKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5510);
  }

  return result;
}

uint64_t sub_21BC54688()
{
  v0 = sub_21BE25D1C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCAC78]) init];
  [v5 setUnitsStyle_];
  [v5 setDateTimeStyle_];
  v6 = sub_21BE25CAC();
  sub_21BE25CEC();
  v7 = sub_21BE25CAC();
  (*(v1 + 8))(v4, v0);
  v8 = [v5 localizedStringForDate:v6 relativeToDate:v7];

  v9 = sub_21BE28A0C();
  v11 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21BE32770;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_21BBBEFE8();
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = objc_opt_self();

  v15 = [v14 bundleForClass_];
  sub_21BE2599C();

  v16 = sub_21BE289DC();

  return v16;
}

uint64_t sub_21BC54908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_21BBA3854(a3, v24 - v10, &qword_27CDB5790, &qword_21BE32800);
  v12 = sub_21BE28DAC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21BB3A4CC(v11, &qword_27CDB5790, &qword_21BE32800);
  }

  else
  {
    sub_21BE28D9C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_21BE28D0C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_21BE28A8C() + 32;

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

      sub_21BB3A4CC(a3, &qword_27CDB5790, &qword_21BE32800);

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

  sub_21BB3A4CC(a3, &qword_27CDB5790, &qword_21BE32800);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_21BC54BB4()
{
  swift_getKeyPath();
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager);
  sub_21BE25F1C();

  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_21BC54C6C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);

  v5 = sub_21BC20644(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 24);
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager);
    sub_21BE25F0C();
  }
}

uint64_t sub_21BC54DB4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  *(a1 + 24) = a2;
}

uint64_t sub_21BC54E1C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager);
  sub_21BE25F1C();

  swift_beginAccess();
  return sub_21BBA3854(v1 + 32, a1, &qword_27CDB7278, &qword_21BE3A250);
}

uint64_t sub_21BC54EEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager);
  sub_21BE25F1C();

  swift_beginAccess();
  return sub_21BBA3854(v3 + 32, a2, &qword_27CDB7278, &qword_21BE3A250);
}

uint64_t sub_21BC54FBC(uint64_t a1, uint64_t *a2)
{
  sub_21BBA3854(a1, v5, &qword_27CDB7278, &qword_21BE3A250);
  v3 = *a2;
  return sub_21BC55008(v5);
}

uint64_t sub_21BC55008(uint64_t a1)
{
  swift_beginAccess();
  sub_21BBA3854(v1 + 32, v6, &qword_27CDB7278, &qword_21BE3A250);
  v3 = sub_21BC5A430(v6, a1);
  sub_21BB3A4CC(v6, &qword_27CDB7278, &qword_21BE3A250);
  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v6[0] = v1;
    sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager);
    sub_21BE25F0C();
  }

  else
  {
    sub_21BBA3854(a1, v6, &qword_27CDB7278, &qword_21BE3A250);
    swift_beginAccess();
    sub_21BC5A578(v6, v1 + 32);
    swift_endAccess();
  }

  return sub_21BB3A4CC(a1, &qword_27CDB7278, &qword_21BE3A250);
}

uint64_t sub_21BC551BC(uint64_t a1, uint64_t a2)
{
  sub_21BBA3854(a2, v4, &qword_27CDB7278, &qword_21BE3A250);
  swift_beginAccess();
  sub_21BC5A578(v4, a1 + 32);
  return swift_endAccess();
}

uint64_t sub_21BC55234()
{
  swift_getKeyPath();
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager);
  sub_21BE25F1C();

  swift_beginAccess();
  v1 = *(v0 + 88);
}

uint64_t sub_21BC552EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager);
  sub_21BE25F1C();

  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_21BC553AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager);
  sub_21BE25F0C();
}

uint64_t sub_21BC55478(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 88);
  *(a1 + 88) = a2;
}

uint64_t sub_21BC554E0()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager);
  sub_21BE25F1C();

  v2 = *(v0 + 96);
  v1 = *(v4 + 104);
  sub_21BB3D80C(v2);
  return v2;
}

uint64_t sub_21BC55594@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager);
  sub_21BE25F1C();

  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21BC5A3EC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21BB3D80C(v4);
}

uint64_t sub_21BC55680(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21BC5A3C4;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_21BB3D80C(v3);
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager);
  sub_21BE25F0C();
  sub_21BB5AEC4(v6);
}

uint64_t sub_21BC557DC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[12];
  v5 = a1[13];
  a1[12] = a2;
  a1[13] = a3;
  swift_getKeyPath();
  sub_21BB3D80C(a2);
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager);
  sub_21BE25F1C();

  if (!a1[12] || v6)
  {
    return sub_21BB5AEC4(v6);
  }

  swift_getKeyPath();
  sub_21BE25F1C();

  swift_beginAccess();
  v8 = a1[3];

  sub_21BC55C18(v9);
}

uint64_t sub_21BC5592C()
{
  swift_getKeyPath();
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager);
  sub_21BE25F1C();

  v1 = *(v0 + 112);
}

uint64_t sub_21BC559D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager);
  sub_21BE25F1C();

  *a2 = *(v3 + 112);
}

uint64_t sub_21BC55A7C(uint64_t a1)
{
  if (!*(v1 + 112))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager);
    sub_21BE25F0C();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 112);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  v4 = sub_21BE28DBC();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = *(v1 + 112);
LABEL_7:
  *(v1 + 112) = a1;
}

uint64_t sub_21BC55C18(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    v5 = *(a1 + 16);
    while (1)
    {
      sub_21BC23F14(v4, &v23);
      v6 = *(&v24 + 1);
      v7 = v25;
      __swift_project_boxed_opaque_existential_1Tm(&v23, *(&v24 + 1));
      (*(v7 + 16))(&v27, v6, v7);
      if (v27 != 3)
      {
        break;
      }

      sub_21BC17C80(&v23);
      v4 += 56;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    v27 = v23;
    v28 = v24;
    v29 = v25;
    v30 = v26;
  }

  else
  {
LABEL_5:
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
  }

  sub_21BC55008(&v27);
  if (v3)
  {
    v8 = a1 + 32;
    v9 = MEMORY[0x277D84F90];
    v10 = v3;
    do
    {
      sub_21BC23F14(v8, &v27);
      v11 = *(&v28 + 1);
      v12 = v29;
      __swift_project_boxed_opaque_existential_1Tm(&v27, *(&v28 + 1));
      (*(v12 + 16))(&v23, v11, v12);
      if (v23 == 3)
      {
        v23 = v27;
        v24 = v28;
        v25 = v29;
        v26 = v30;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21BC59A1C(0, *(v9 + 16) + 1, 1);
        }

        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_21BC59A1C((v13 > 1), v14 + 1, 1);
        }

        *(v9 + 16) = v14 + 1;
        v15 = v9 + 56 * v14;
        v16 = v23;
        v17 = v24;
        v18 = v25;
        *(v15 + 80) = v26;
        *(v15 + 48) = v17;
        *(v15 + 64) = v18;
        *(v15 + 32) = v16;
      }

      else
      {
        sub_21BC17C80(&v27);
      }

      v8 += 56;
      --v10;
    }

    while (v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  sub_21BC54C6C(v9);
  swift_getKeyPath();
  *&v27 = v1;
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager);
  sub_21BE25F1C();

  v20 = *(v1 + 96);
  if (v20)
  {
    v21 = *(v1 + 104);

    if (v3)
    {
      v22 = a1 + 32;
      do
      {
        v20(v22);
        v22 += 56;
        --v3;
      }

      while (v3);
    }

    return sub_21BB5AEC4(v20);
  }

  return result;
}

uint64_t sub_21BC55EE0(uint64_t a1, uint64_t a2)
{
  v2 = static AnyLinkDestination.path(fromString:)(a1, a2);
  sub_21BC55C18(v2);
}

uint64_t sub_21BC55F1C(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v4);
  if (sub_21BC5CED8(v4, v5))
  {
    sub_21BC23F14(a1, v17);
    return sub_21BC55008(v17);
  }

  else
  {
    sub_21BC23F14(a1, v17);
    swift_getKeyPath();
    sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager);
    sub_21BE25F1C();

    swift_getKeyPath();
    sub_21BE25F3C();

    swift_beginAccess();
    v7 = *(v2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 24) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_21BBBD0A0(0, *(v7 + 2) + 1, 1, v7);
      *(v2 + 24) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_21BBBD0A0((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 2) = v10 + 1;
    v11 = &v7[56 * v10];
    v12 = v17[0];
    v13 = v17[1];
    v14 = v17[2];
    *(v11 + 10) = v18;
    *(v11 + 3) = v13;
    *(v11 + 4) = v14;
    *(v11 + 2) = v12;
    *(v2 + 24) = v7;
    swift_endAccess();
    swift_getKeyPath();
    sub_21BE25F2C();

    if (*(v2 + 16) == 1)
    {
      swift_getKeyPath();
      *&v17[0] = v2;
      sub_21BE25F1C();

      v15 = *(v2 + 96);
      if (v15)
      {
        v16 = *(v2 + 104);

        v15(a1);
        return sub_21BB5AEC4(v15);
      }
    }
  }

  return result;
}

uint64_t sub_21BC56190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getMetatypeMetadata();
  v9 = sub_21BE28A7C();
  v11 = v10;
  swift_getKeyPath();
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager);
  sub_21BE25F1C();

  swift_beginAccess();
  if (*(*(v5 + 88) + 16))
  {
    v12 = *(v5 + 88);

    sub_21BBB3108(v9, v11);
    if (v13)
    {
    }
  }

  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a2;
  v15[5] = a3;
  swift_getKeyPath();

  sub_21BE25F1C();

  swift_getKeyPath();
  sub_21BE25F3C();

  swift_beginAccess();
  v16 = *(v5 + 88);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v5 + 88);
  *(v5 + 88) = 0x8000000000000000;
  sub_21BC7FF4C(sub_21BC5A314, v15, v9, v11, isUniquelyReferenced_nonNull_native);

  *(v5 + 88) = v19;
  swift_endAccess();
  swift_getKeyPath();
  sub_21BE25F2C();
}

uint64_t sub_21BC563F4@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_21BE2946C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23[-v12 - 8];
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v23[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_21BB3A35C(a1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
  v18 = swift_dynamicCast();
  v19 = *(v14 + 56);
  if (v18)
  {
    v19(v13, 0, 1, a3);
    (*(v14 + 32))(v17, v13, a3);
    a2(v17);
    return (*(v14 + 8))(v17, a3);
  }

  else
  {
    v19(v13, 1, 1, a3);
    result = (*(v9 + 8))(v13, v8);
    v21 = MEMORY[0x277CE1410];
    *(a4 + 24) = MEMORY[0x277CE1428];
    *(a4 + 32) = v21;
  }

  return result;
}

uint64_t sub_21BC56624(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v26 = a4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - v17;
  swift_getKeyPath();
  v27 = v7;
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager);
  sub_21BE25F1C();

  if (*(v7 + 112))
  {
    v19 = *(v7 + 112);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
    sub_21BE28DDC();
  }

  sub_21BE28D8C();
  v20 = sub_21BE28DAC();
  (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
  sub_21BE28D7C();

  v21 = sub_21BE28D6C();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v21;
  *(v22 + 24) = v23;
  *(v22 + 32) = a6;
  *(v22 + 40) = a7;
  *(v22 + 48) = v8;
  *(v22 + 56) = a1;
  *(v22 + 64) = a2;
  *(v22 + 72) = a3 & 1;
  *(v22 + 80) = v26;
  *(v22 + 88) = a5;
  v24 = sub_21BC54908(0, 0, v18, &unk_21BE3A238, v22);
  return sub_21BC55A7C(v24);
}

uint64_t sub_21BC56874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v8[10] = v19;
  v8[11] = v20;
  v8[9] = a4;
  v13 = *(*(v19 - 8) + 64) + 15;
  v14 = swift_task_alloc();
  v8[12] = v14;
  v8[13] = sub_21BE28D7C();
  v8[14] = sub_21BE28D6C();
  v15 = swift_task_alloc();
  v8[15] = v15;
  *v15 = v8;
  v15[1] = sub_21BC569A0;

  return sub_21BC56E40(v14, a5, a6, a7, a8, v18, v19);
}

uint64_t sub_21BC569A0()
{
  v2 = v0;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v10 = *v1;
  *(*v1 + 128) = v2;

  v7 = sub_21BE28D0C();
  if (v2)
  {
    v8 = sub_21BC56B9C;
  }

  else
  {
    v8 = sub_21BC56AFC;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21BC56AFC()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  sub_21BD2BD38(v2, v5, v3, v0 + 2);
  sub_21BC55F1C(v0 + 2);
  sub_21BC17C80((v0 + 2));

  v6 = v0[1];

  return v6();
}

uint64_t sub_21BC56B9C()
{
  v1 = v0[14];
  v2 = v0[12];

  v3 = v0[1];
  v4 = v0[16];

  return v3();
}

uint64_t sub_21BC56C0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v6 = LinkDestination.linkTypeIdentifier.getter();
  v8 = v7;
  swift_getKeyPath();
  v23[0] = v2;
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager);
  sub_21BE25F1C();

  swift_beginAccess();
  v9 = *(v2 + 88);
  if (*(v9 + 16) && (, v10 = sub_21BBB3108(v6, v8), v12 = v11, , (v12 & 1) != 0))
  {
    v13 = *(v9 + 56) + 16 * v10;
    v15 = *v13;
    v14 = *(v13 + 8);

    v15(v23, a1);
    v16 = v24;
    v17 = __swift_project_boxed_opaque_existential_1Tm(v23, v24);
    v18 = *(*(v16 - 8) + 64);
    MEMORY[0x28223BE20](v17);
    (*(v20 + 16))(v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = sub_21BE2852C();

    result = __swift_destroy_boxed_opaque_existential_0Tm(v23);
  }

  else
  {

    v21 = 0;
  }

  *a2 = v21;
  return result;
}

uint64_t sub_21BC56E40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 120) = a6;
  *(v7 + 128) = a7;
  *(v7 + 36) = a4;
  *(v7 + 104) = a3;
  *(v7 + 112) = a5;
  *(v7 + 88) = a1;
  *(v7 + 96) = a2;
  v8 = *(a7 - 8);
  *(v7 + 136) = v8;
  v9 = *(v8 + 64) + 15;
  *(v7 + 144) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = sub_21BE28D7C();
  *(v7 + 168) = sub_21BE28D6C();
  v12 = sub_21BE28D0C();
  *(v7 + 176) = v12;
  *(v7 + 184) = v11;

  return MEMORY[0x2822009F8](sub_21BC56F70, v12, v11);
}

uint64_t sub_21BC56F70()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 36);
  v6 = *(v0 + 96);
  v7 = sub_21BE28DAC();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);

  v8 = sub_21BE28D6C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = v6;
  *(v9 + 40) = v4;
  *(v9 + 48) = v5;
  *(v0 + 192) = sub_21BC54908(0, 0, v2, &unk_21BE3A3B0, v9);
  v16 = (v3 + *v3);
  v11 = v3[1];
  v12 = swift_task_alloc();
  *(v0 + 200) = v12;
  *v12 = v0;
  v12[1] = sub_21BC57130;
  v13 = *(v0 + 144);
  v14 = *(v0 + 120);

  return v16(v13);
}

uint64_t sub_21BC57130()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);
  if (v0)
  {
    v7 = sub_21BC57498;
  }

  else
  {
    v7 = sub_21BC5726C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21BC5726C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);

  sub_21BE28DFC();
  v3 = *(v0 + 192);
  if (v1)
  {
    v4 = *(v0 + 36);
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
    sub_21BE28DDC();
    *(v0 + 40) = v6;
    *(v0 + 48) = v5;
    *(v0 + 56) = v4;
    *(v0 + 34) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2854C();

    v8 = *(v0 + 144);
    v7 = *(v0 + 152);
  }

  else
  {
    v10 = *(v0 + 152);
    v11 = *(v0 + 36);
    v13 = *(v0 + 96);
    v12 = *(v0 + 104);
    (*(*(v0 + 136) + 32))(*(v0 + 88), *(v0 + 144), *(v0 + 128));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
    sub_21BE28DDC();
    *(v0 + 64) = v13;
    *(v0 + 72) = v12;
    *(v0 + 80) = v11;
    *(v0 + 35) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2854C();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21BC57498()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 36);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  sub_21BE28DDC();
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  *(v0 + 32) = v3;
  *(v0 + 33) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2854C();

  v6 = *(v0 + 208);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21BC575BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 34) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  v7 = sub_21BE2971C();
  *(v6 + 56) = v7;
  v8 = *(v7 - 8);
  *(v6 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 72) = swift_task_alloc();
  sub_21BE28D7C();
  *(v6 + 80) = sub_21BE28D6C();
  v11 = sub_21BE28D0C();
  *(v6 + 88) = v11;
  *(v6 + 96) = v10;

  return MEMORY[0x2822009F8](sub_21BC576B4, v11, v10);
}

uint64_t sub_21BC576B4()
{
  v1 = *(v0 + 72);
  sub_21BE29A2C();
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_21BC57780;
  v3 = *(v0 + 72);

  return sub_21BC59524(300000000000000000, 0, 0, 0, 1);
}

uint64_t sub_21BC57780()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 112) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 96);
  v9 = *(v2 + 88);
  if (v0)
  {
    v10 = sub_21BC579F8;
  }

  else
  {
    v10 = sub_21BC57918;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_21BC57918()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);

  sub_21BE28DFC();
  if (v1)
  {
    v3 = *(v0 + 72);
  }

  else
  {
    v5 = *(v0 + 72);
    v6 = *(v0 + 34);
    v7 = *(v0 + 48);
    *(v0 + 16) = *(v0 + 40);
    *(v0 + 24) = v7;
    *(v0 + 32) = v6;
    *(v0 + 33) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2854C();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21BC579F8()
{
  v1 = v0[10];

  v2 = v0[14];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_21BC57A64(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - v14;
  swift_getKeyPath();
  v24 = v5;
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager);
  sub_21BE25F1C();

  if (*(v5 + 112))
  {
    v16 = *(v5 + 112);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
    sub_21BE28DDC();
  }

  sub_21BE28D8C();
  v17 = sub_21BE28DAC();
  (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  sub_21BE28D7C();

  v18 = sub_21BE28D6C();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v18;
  *(v19 + 24) = v20;
  *(v19 + 32) = v6;
  *(v19 + 40) = a1;
  *(v19 + 48) = a2;
  *(v19 + 56) = a3 & 1;
  *(v19 + 64) = a4;
  *(v19 + 72) = a5;
  v21 = sub_21BC54908(0, 0, v15, &unk_21BE3A248, v19);
  return sub_21BC55A7C(v21);
}

uint64_t sub_21BC57CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 104) = a8;
  *(v8 + 112) = v14;
  *(v8 + 36) = a7;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = sub_21BE28D7C();
  *(v8 + 136) = sub_21BE28D6C();
  v11 = sub_21BE28D0C();
  *(v8 + 144) = v11;
  *(v8 + 152) = v10;

  return MEMORY[0x2822009F8](sub_21BC57D88, v11, v10);
}

uint64_t sub_21BC57D88()
{
  v1 = v0[16];
  v2 = v0[14];

  v0[20] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v0[21] = v4;
  v0[22] = v3;

  return MEMORY[0x2822009F8](sub_21BC57E1C, v4, v3);
}

uint64_t sub_21BC57E1C()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 36);
  v6 = *(v0 + 88);
  v7 = sub_21BE28DAC();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);

  v8 = sub_21BE28D6C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = v6;
  *(v9 + 40) = v4;
  *(v9 + 48) = v5;
  *(v0 + 184) = sub_21BC54908(0, 0, v2, &unk_21BE3A3F0, v9);
  v15 = (v3 + *v3);
  v11 = v3[1];
  v12 = swift_task_alloc();
  *(v0 + 192) = v12;
  *v12 = v0;
  v12[1] = sub_21BC57FD4;
  v13 = *(v0 + 112);

  return v15();
}

uint64_t sub_21BC57FD4()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 176);
  v6 = *(v2 + 168);
  if (v0)
  {
    v7 = sub_21BC582C0;
  }

  else
  {
    v7 = sub_21BC58110;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21BC58110()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 160);

  sub_21BE28DFC();
  v3 = *(v0 + 184);
  v4 = *(v0 + 112);
  v5 = *(v0 + 36);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  sub_21BE28DDC();
  if (v1)
  {
    *(v0 + 40) = v7;
    *(v0 + 48) = v6;
    *(v0 + 56) = v5;
    *(v0 + 34) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2854C();

    *(v0 + 208) = v1;
    v8 = *(v0 + 144);
    v9 = *(v0 + 152);
    v10 = sub_21BC58458;
  }

  else
  {
    *(v0 + 64) = v7;
    *(v0 + 72) = v6;
    *(v0 + 80) = v5;
    *(v0 + 35) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2854C();

    v8 = *(v0 + 144);
    v9 = *(v0 + 152);
    v10 = sub_21BC583E8;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_21BC582C0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 112);
  v4 = *(v0 + 36);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  sub_21BE28DDC();
  *(v0 + 16) = v6;
  *(v0 + 24) = v5;
  *(v0 + 32) = v4;
  *(v0 + 33) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2854C();

  *(v0 + 208) = *(v0 + 200);
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);

  return MEMORY[0x2822009F8](sub_21BC58458, v7, v8);
}

uint64_t sub_21BC583E8()
{
  v1 = v0[17];
  v2 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21BC58458()
{
  v1 = v0[17];
  v2 = v0[15];

  v3 = v0[1];
  v4 = v0[26];

  return v3();
}

uint64_t sub_21BC584C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;
  v7[5] = a3;
  v7[6] = v3;
  v7[7] = a1;
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v3;
  swift_retain_n();
  sub_21BE2857C();
  return v10;
}

uint64_t sub_21BC585A0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, _BYTE *a3@<X8>)
{
  swift_getKeyPath();
  v14[0] = a1;
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager);
  sub_21BE25F1C();

  swift_beginAccess();
  sub_21BBA3854(a1 + 32, v14, &qword_27CDB7278, &qword_21BE3A250);
  if (v14[3])
  {
    sub_21BC23F14(v14, v13);
    sub_21BB3A4CC(v14, &qword_27CDB7278, &qword_21BE3A250);
    __swift_project_boxed_opaque_existential_1Tm(v13, v13[3]);
    v6 = LinkDestination.linkTypeIdentifier.getter();
    v8 = v7;
    sub_21BC17C80(v13);
  }

  else
  {
    sub_21BB3A4CC(v14, &qword_27CDB7278, &qword_21BE3A250);
    v6 = 0;
    v8 = 0;
  }

  v14[0] = a2;
  swift_getMetatypeMetadata();
  v9 = sub_21BE28A7C();
  if (v8)
  {
    if (v6 == v9 && v8 == v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_21BE2995C();
    }
  }

  else
  {
    v11 = 0;
  }

  *a3 = v11 & 1;
  return result;
}

uint64_t sub_21BC58778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;
  v7[5] = a3;
  v7[6] = v3;
  v7[7] = a1;
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;
  v8[5] = a3;
  v8[6] = v3;
  v8[7] = a1;
  swift_retain_n();
  sub_21BE2857C();
  return v10;
}

uint64_t sub_21BC58854@<X0>(uint64_t a1@<X2>, BOOL *a2@<X8>)
{
  swift_getKeyPath();
  v12[0] = a1;
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager);
  sub_21BE25F1C();

  swift_beginAccess();
  v3 = *(a1 + 24);
  v4 = *(v3 + 16);
  v5 = v3 + 32;

  v6 = -v4;
  v7 = -1;
  while (1)
  {
    v8 = v6 + v7;
    if (v6 + v7 == -1)
    {
LABEL_5:

      *a2 = v8 != -1;
      return result;
    }

    if (++v7 >= *(v3 + 16))
    {
      break;
    }

    sub_21BC23F14(v5, v12);
    v9 = sub_21BC589D0(v12);
    v5 += 56;
    sub_21BC17C80(v12);
    if (v9)
    {
      goto LABEL_5;
    }
  }

  __break(1u);

  result = sub_21BC17C80(v12);
  __break(1u);
  return result;
}

uint64_t sub_21BC589D0(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v2 = LinkDestination.linkTypeIdentifier.getter();
  v4 = v3;
  swift_getMetatypeMetadata();
  if (v2 == sub_21BE28A7C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_21BE2995C();
  }

  return v7 & 1;
}

uint64_t sub_21BC58A94(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v5 = OBJC_IVAR____TtC14FamilyCircleUI17NavigationManager___observationRegistrar;
  v29[0] = v2;
  v6 = sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager);
  sub_21BE25F1C();

  swift_beginAccess();
  v7 = *(v2 + 24);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v25 = a1;
    v26 = a2;
    v27 = v6;
    v28 = v5;
    v30 = MEMORY[0x277D84F90];

    sub_21BC599DC(0, v8, 0);
    v9 = v30;
    v10 = v7 + 32;
    do
    {
      sub_21BC23F14(v10, v29);
      __swift_project_boxed_opaque_existential_1Tm(v29, v29[3]);
      v11 = LinkDestination.linkTypeIdentifier.getter();
      v13 = v12;
      sub_21BC17C80(v29);
      v30 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_21BC599DC((v14 > 1), v15 + 1, 1);
        v9 = v30;
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v10 += 56;
      --v8;
    }

    while (v8);

    a1 = v25;
  }

  v29[0] = a1;
  swift_getMetatypeMetadata();
  v29[0] = sub_21BE28A7C();
  v29[1] = v17;
  MEMORY[0x28223BE20](v29[0]);
  v24[2] = v29;
  v18 = sub_21BC59E34(sub_21BC5A084, v24, v9);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    if ((v18 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      v29[0] = v2;
      sub_21BE25F1C();

      result = *(v2 + 24);
      v22 = *(result + 16);
      if (v22 >= v18)
      {
        if (v22 == v18)
        {
        }

        else
        {
          sub_21BDE6D94(result, result + 32, 0, (2 * v18) | 1);
        }

        return sub_21BC54C6C(v23);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21BC58D4C@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a5;
  v31 = a4;
  v27 = a2;
  v28 = a1;
  v32 = sub_21BE2946C();
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v32);
  v11 = &v25 - v10;
  v29 = *(a3 - 8);
  v12 = *(v29 + 64);
  MEMORY[0x28223BE20](v9);
  v26 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v33[0] = v5;
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager);
  sub_21BE25F1C();

  swift_beginAccess();
  v14 = *(v5 + 24);
  v15 = *(v14 + 16);

  if (v15)
  {
    v17 = 0;
    v18 = v14 + 32;
    v19 = (v29 + 56);
    while (v17 < *(v14 + 16))
    {
      sub_21BB3A35C(v18, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
      if (swift_dynamicCast())
      {
        v22 = v29;
        (*(v29 + 56))(v11, 0, 1, a3);

        v23 = v26;
        (*(v22 + 32))(v26, v11, a3);
        v24 = v30;
        v28(v23);
        (*(v22 + 8))(v23, a3);
        v21 = v24;
        v20 = 0;
        return (*(*(v31 - 8) + 56))(v21, v20, 1);
      }

      ++v17;
      (*v19)(v11, 1, 1, a3);
      result = (*(v7 + 8))(v11, v32);
      v18 += 56;
      if (v15 == v17)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v20 = 1;
    v21 = v30;
    return (*(*(v31 - 8) + 56))(v21, v20, 1);
  }

  return result;
}

uint64_t NavigationManager.__allocating_init(usesNavigationStack:path:)(char a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  NavigationManager.init(usesNavigationStack:path:)(a1, a2);
  return v7;
}

uint64_t NavigationManager.init(usesNavigationStack:path:)(char a1, uint64_t a2)
{
  v3 = v2;
  v5 = MEMORY[0x277D84F90];
  *(v3 + 24) = MEMORY[0x277D84F90];
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0;
  *(v3 + 88) = sub_21BBB6718(v5);
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  result = sub_21BE25F4C();
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = a2 + 32;
    v10 = MEMORY[0x277D84F90];
    v11 = a2 + 32;
    do
    {
      if (v8 >= *(a2 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      sub_21BC23F14(v11, &v35);
      v12 = *(&v36 + 1);
      v13 = v37;
      __swift_project_boxed_opaque_existential_1Tm(&v35, *(&v36 + 1));
      (*(v13 + 16))(&v31, v12, v13);
      if (v31 == 3)
      {
        v31 = v35;
        v32 = v36;
        v33 = v37;
        v34 = v38;
        result = swift_isUniquelyReferenced_nonNull_native();
        v39 = v10;
        if ((result & 1) == 0)
        {
          result = sub_21BC59A1C(0, *(v10 + 16) + 1, 1);
          v10 = v39;
        }

        v15 = *(v10 + 16);
        v14 = *(v10 + 24);
        if (v15 >= v14 >> 1)
        {
          result = sub_21BC59A1C((v14 > 1), v15 + 1, 1);
          v10 = v39;
        }

        *(v10 + 16) = v15 + 1;
        v16 = v10 + 56 * v15;
        v17 = v31;
        v18 = v32;
        v19 = v33;
        *(v16 + 80) = v34;
        *(v16 + 48) = v18;
        *(v16 + 64) = v19;
        *(v16 + 32) = v17;
      }

      else
      {
        result = sub_21BC17C80(&v35);
      }

      ++v8;
      v11 += 56;
    }

    while (v7 != v8);
    v20 = *(v3 + 24);

    v21 = 0;
    *(v3 + 24) = v10;
    while (v21 < *(a2 + 16))
    {
      sub_21BC23F14(v9, &v35);
      v22 = *(&v36 + 1);
      v23 = v37;
      __swift_project_boxed_opaque_existential_1Tm(&v35, *(&v36 + 1));
      (*(v23 + 16))(&v31, v22, v23);
      if (v31 != 3)
      {

        v28 = v36;
        v29 = v35;
        v26 = *(&v37 + 1);
        v27 = v37;
        v25 = v38;
        goto LABEL_20;
      }

      ++v21;
      result = sub_21BC17C80(&v35);
      v9 += 56;
      if (v7 == v21)
      {
        goto LABEL_18;
      }
    }

LABEL_22:
    __break(1u);
  }

  else
  {
    v24 = *(v3 + 24);

    *(v3 + 24) = v5;
LABEL_18:

    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0u;
    v29 = 0u;
LABEL_20:
    sub_21BB3A4CC(v3 + 32, &qword_27CDB7278, &qword_21BE3A250);
    *(v3 + 32) = v29;
    *(v3 + 48) = v28;
    *(v3 + 64) = v27;
    *(v3 + 72) = v26;
    *(v3 + 80) = v25;
    *(v3 + 16) = a1 & 1;
    return v3;
  }

  return result;
}

char *NavigationManager.deinit()
{
  v1 = *(v0 + 3);

  sub_21BB3A4CC((v0 + 32), &qword_27CDB7278, &qword_21BE3A250);
  v2 = *(v0 + 11);

  v3 = *(v0 + 13);
  sub_21BB5AEC4(*(v0 + 12));
  v4 = *(v0 + 14);

  v5 = OBJC_IVAR____TtC14FamilyCircleUI17NavigationManager___observationRegistrar;
  v6 = sub_21BE25F5C();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  return v0;
}

uint64_t NavigationManager.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  sub_21BB3A4CC((v0 + 32), &qword_27CDB7278, &qword_21BE3A250);
  v2 = *(v0 + 11);

  v3 = *(v0 + 13);
  sub_21BB5AEC4(*(v0 + 12));
  v4 = *(v0 + 14);

  v5 = OBJC_IVAR____TtC14FamilyCircleUI17NavigationManager___observationRegistrar;
  v6 = sub_21BE25F5C();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21BC59524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_21BE2970C();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_21BC59624, 0, 0);
}

uint64_t sub_21BC59624()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_21BE2971C();
  v7 = sub_21BC5A2B0(&qword_27CDB7F08, MEMORY[0x277D85928]);
  sub_21BE29A0C();
  sub_21BC5A2B0(&qword_27CDB7F10, MEMORY[0x277D858F8]);
  sub_21BE2972C();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_21BC597B4;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_21BC597B4()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21BC59970, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_21BC59970()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

char *sub_21BC599DC(char *a1, int64_t a2, char a3)
{
  result = sub_21BDFB09C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21BC599FC(char *a1, int64_t a2, char a3)
{
  result = sub_21BDFB1CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21BC59A1C(char *a1, int64_t a2, char a3)
{
  result = sub_21BDFB3CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t type metadata accessor for NavigationManager()
{
  result = qword_280BD72C8;
  if (!qword_280BD72C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BC59A88(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 24);
  v14 = *(v1 + 16);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  v11 = *(v1 + 80);
  v10 = *(v1 + 88);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_21BBB7EB8;

  return sub_21BC56874(a1, v14, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_21BC59B84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v11 = *(v1 + 64);
  v10 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_21BBA6A64;

  return sub_21BC57CA4(a1, v4, v5, v6, v7, v8, v9, v11);
}

char *sub_21BC59C74(char *a1, int64_t a2, char a3)
{
  result = sub_21BDFB2C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21BC59C94(void *a1, int64_t a2, char a3)
{
  result = sub_21BDFB1A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21BC59CB4(void *a1, int64_t a2, char a3)
{
  result = sub_21BDFB628(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21BC59CD4(char *a1, int64_t a2, char a3)
{
  result = sub_21BDFB75C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21BC59CF4(void *a1, int64_t a2, char a3)
{
  result = sub_21BDFB87C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21BC59D14(size_t a1, int64_t a2, char a3)
{
  result = sub_21BDFB9C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21BC59D34(size_t a1, int64_t a2, char a3)
{
  result = sub_21BDFB9EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21BC59D54(char *a1, int64_t a2, char a3)
{
  result = sub_21BDFBA14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21BC59D74(size_t a1, int64_t a2, char a3)
{
  result = sub_21BDFBB18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21BC59D94(char *a1, int64_t a2, char a3)
{
  result = sub_21BDFBB40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21BC59DB4(size_t a1, int64_t a2, char a3)
{
  result = sub_21BDFBC50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21BC59DD4(char *a1, int64_t a2, char a3)
{
  result = sub_21BDFBE54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21BC59DF4(char *a1, int64_t a2, char a3)
{
  result = sub_21BDFBF74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21BC59E14(char *a1, int64_t a2, char a3)
{
  result = sub_21BDFC080(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_21BC59E34(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  result = *(a3 + 16);
  v6 = (a3 + 16 * result + 24);
  do
  {
    v7 = result;
    if (!result)
    {
      break;
    }

    v8 = *v6;
    v10[0] = *(v6 - 1);
    v10[1] = v8;

    v9 = a1(v10);

    if (v3)
    {
      break;
    }

    v6 -= 2;
    result = v7 - 1;
  }

  while ((v9 & 1) == 0);
  return result;
}

uint64_t sub_21BC59EE0()
{
  result = sub_21BE25F5C();
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

uint64_t sub_21BC5A084(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21BE2995C() & 1;
  }
}

_BYTE *sub_21BC5A0F4(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    v2 = v1[4];
    v3 = v1[7];
    v4 = v1[6];
    return sub_21BC58A94(v3, v2);
  }

  return result;
}

uint64_t objectdestroy_46Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return swift_deallocObject();
}

_BYTE *sub_21BC5A19C(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    v2 = *(v1 + 32);
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    return sub_21BC55008(v3);
  }

  return result;
}

uint64_t sub_21BC5A1E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21BBB7EB8;

  return sub_21BC575BC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21BC5A2B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BC5A314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 40);
  return sub_21BC563F4(a1, *(v2 + 32), *(v2 + 16), a2);
}

uint64_t objectdestroy_62Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_21BC5A368()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 112);
  *(v1 + 112) = *(v0 + 24);
}

uint64_t sub_21BC5A3C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_21BC5A3EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_21BC5A430(uint64_t a1, uint64_t a2)
{
  sub_21BBA3854(a1, v9, &qword_27CDB7278, &qword_21BE3A250);
  sub_21BBA3854(a2, &v11, &qword_27CDB7278, &qword_21BE3A250);
  if (!v10)
  {
    if (!*(&v12 + 1))
    {
      sub_21BB3A4CC(v9, &qword_27CDB7278, &qword_21BE3A250);
      v4 = 0;
      return v4 & 1;
    }

LABEL_7:
    sub_21BB3A4CC(v9, &qword_27CDB7F18, &qword_21BE3A3F8);
    v4 = 1;
    return v4 & 1;
  }

  sub_21BBA3854(v9, v8, &qword_27CDB7278, &qword_21BE3A250);
  if (!*(&v12 + 1))
  {
    sub_21BC17C80(v8);
    goto LABEL_7;
  }

  v6[0] = v11;
  v6[1] = v12;
  v6[2] = v13;
  v7 = v14;
  v3 = sub_21BD2D924(v6, v8);
  sub_21BC17C80(v6);
  sub_21BC17C80(v8);
  sub_21BB3A4CC(v9, &qword_27CDB7278, &qword_21BE3A250);
  v4 = v3 ^ 1;
  return v4 & 1;
}

uint64_t sub_21BC5A578(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7278, &qword_21BE3A250);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC5A60C()
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC5A714()
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC5A824()
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC5A934()
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

unint64_t sub_21BC5AA84(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x696D694C6D6D6F63;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x69636966656E6562;
      break;
    case 7:
      result = 0x6C5064756F6C4369;
      break;
    case 8:
      result = 0x6D657449656D6F68;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x736143656C707061;
      break;
    case 11:
      result = 0x49746361746E6F63;
      break;
    case 12:
    case 15:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21BC5AC7C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_21BC5AA84(*a1);
  v5 = v4;
  if (v3 == sub_21BC5AA84(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21BE2995C();
  }

  return v8 & 1;
}

uint64_t sub_21BC5AD04()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BC5AA84(v1);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC5AD68()
{
  sub_21BC5AA84(*v0);
  sub_21BE28ABC();
}

uint64_t sub_21BC5ADBC()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BC5AA84(v1);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC5AE1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21BC5C438();
  *a2 = result;
  return result;
}

unint64_t sub_21BC5AE4C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21BC5AA84(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21BC5AF00()
{
  *v0;
  *v0;
  *v0;
  sub_21BE28ABC();
}

uint64_t sub_21BC5B044@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21BC5C4D8();
  *a2 = result;
  return result;
}

void sub_21BC5B074(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x756F59726F66;
  v5 = 0x800000021BE542B0;
  v6 = 0xD000000000000014;
  if (v2 != 5)
  {
    v6 = 0x4D65726F6C707865;
    v5 = 0xEB0000000065726FLL;
  }

  v7 = 0xEA00000000007075;
  v8 = 0x746553646C696863;
  if (v2 != 3)
  {
    v8 = 0x7250797465666173;
    v7 = 0xED00007963617669;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED0000736E6F6974;
  v10 = 0x7069726373627573;
  if (v2 != 1)
  {
    v10 = 0x646C696843726F66;
    v9 = 0xEB000000006E6572;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_21BC5B1EC()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC5B2D4()
{
  *v0;
  *v0;
  sub_21BE28ABC();
}

uint64_t sub_21BC5B3A8()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC5B48C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21BC5C5E0();
  *a2 = result;
  return result;
}

void sub_21BC5B4BC(unint64_t *a1@<X8>)
{
  v2 = 0xEC000000746C7564;
  v3 = 0x41726F46796C6E6FLL;
  v4 = 0xEF6E6572646C6968;
  v5 = 0x43726F46796C6E6FLL;
  if (*v1 != 2)
  {
    v5 = 0x47726F46796C6E6FLL;
    v4 = 0xEF6E616964726175;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000021BE54660;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t FamilyDestinations.ChecklistDestination.linkType.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BB3A35C(v1, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59E8, &unk_21BE3A400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7F20, &unk_21BE46130);
  if (swift_dynamicCast())
  {
    sub_21BB3D104(v26, v29);
    v9 = v30;
    v8 = v31;
    __swift_project_boxed_opaque_existential_1Tm(v29, v30);
    (*(*(v8 + 8) + 16))(v9);
    return __swift_destroy_boxed_opaque_existential_0Tm(v29);
  }

  else
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    sub_21BC5BE3C(v26);
    sub_21BE261BC();
    sub_21BC5BEA4(v1, v29);
    v11 = sub_21BE26A2C();
    v12 = sub_21BE28FDC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v25 = a1;
      v14 = v13;
      v15 = swift_slowAlloc();
      v28[0] = v15;
      *v14 = 136315138;
      v16 = v30;
      v17 = v31;
      __swift_project_boxed_opaque_existential_1Tm(v29, v30);
      v18 = (*(v17 + 32))(v16, v17);
      v19 = sub_21BC5AA84(v18);
      v21 = v20;
      sub_21BC5BEDC(v29);
      v22 = sub_21BB3D81C(v19, v21, v28);

      *(v14 + 4) = v22;
      _os_log_impl(&dword_21BB35000, v11, v12, "Unexpected link type request for %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x21CF05C50](v15, -1, -1);
      v23 = v14;
      a1 = v25;
      MEMORY[0x21CF05C50](v23, -1, -1);

      result = (*(v4 + 8))(v7, v3);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
      result = sub_21BC5BEDC(v29);
    }

    *a1 = 0;
  }

  return result;
}

uint64_t FamilyDestinations.ChecklistDestination.hash(into:)()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  sub_21BBE7CF8(v2, v3);
  sub_21BE28ABC();

  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v4);
  v6 = (*(v5 + 32))(v4, v5);
  sub_21BC5AA84(v6);
  sub_21BE28ABC();
}

uint64_t FamilyDestinations.ChecklistDestination.hashValue.getter()
{
  v1 = v0;
  sub_21BE29ACC();
  v2 = v0[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  sub_21BBE7CF8(v2, v3);
  sub_21BE28ABC();

  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v4);
  v6 = (*(v5 + 32))(v4, v5);
  sub_21BC5AA84(v6);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC5BA00()
{
  v1 = v0;
  sub_21BE29ACC();
  v2 = v0[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  sub_21BBE7CF8(v2, v3);
  sub_21BE28ABC();

  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v4);
  v6 = (*(v5 + 32))(v4, v5);
  sub_21BC5AA84(v6);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC5BAE0()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  sub_21BBE7CF8(v2, v3);
  sub_21BE28ABC();

  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v4);
  v6 = (*(v5 + 32))(v4, v5);
  sub_21BC5AA84(v6);
  sub_21BE28ABC();
}

uint64_t sub_21BC5BBBC()
{
  v1 = v0;
  sub_21BE29ACC();
  v2 = v0[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  sub_21BBE7CF8(v2, v3);
  sub_21BE28ABC();

  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v4);
  v6 = (*(v5 + 32))(v4, v5);
  sub_21BC5AA84(v6);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t _s14FamilyCircleUI0A12DestinationsO20ChecklistDestinationV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v4);
  v6 = sub_21BBE7CF8(v4, v5);
  v8 = v7;
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v9);
  if (v6 == sub_21BBE7CF8(v9, v10) && v8 == v11)
  {
  }

  else
  {
    v13 = sub_21BE2995C();

    v14 = 0;
    if ((v13 & 1) == 0)
    {
      return v14 & 1;
    }
  }

  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v15);
  v17 = (*(v16 + 32))(v15, v16);
  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v18);
  v20 = (*(v19 + 32))(v18, v19);
  v21 = sub_21BC5AA84(v17);
  v23 = v22;
  if (v21 == sub_21BC5AA84(v20) && v23 == v24)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_21BE2995C();
  }

  return v14 & 1;
}

uint64_t sub_21BC5BE3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7F28, &qword_21BE3A410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BC5BF0C(uint64_t a1)
{
  result = sub_21BC5BF34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BC5BF34()
{
  result = qword_27CDB7F30;
  if (!qword_27CDB7F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7F30);
  }

  return result;
}

unint64_t sub_21BC5BF8C()
{
  result = qword_27CDB7F38;
  if (!qword_27CDB7F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7F38);
  }

  return result;
}

uint64_t sub_21BC5BFE0(uint64_t a1, int a2)
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

uint64_t sub_21BC5C028(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ChecklistItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChecklistItemType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChecklistCategory(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ChecklistCategory(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21BC5C324()
{
  result = qword_280BD72F0;
  if (!qword_280BD72F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD72F0);
  }

  return result;
}

unint64_t sub_21BC5C37C()
{
  result = qword_27CDB7F40;
  if (!qword_27CDB7F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7F48, qword_21BE3A618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7F40);
  }

  return result;
}

unint64_t sub_21BC5C3E4()
{
  result = qword_280BD72E0;
  if (!qword_280BD72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD72E0);
  }

  return result;
}

uint64_t sub_21BC5C438()
{
  v0 = sub_21BE2980C();

  if (v0 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_21BC5C484()
{
  result = qword_27CDB7F50;
  if (!qword_27CDB7F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7F50);
  }

  return result;
}

uint64_t sub_21BC5C4D8()
{
  v0 = sub_21BE2980C();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_21BC5C524()
{
  result = qword_27CDB7F58;
  if (!qword_27CDB7F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7F58);
  }

  return result;
}

unint64_t sub_21BC5C58C()
{
  result = qword_280BD76F8;
  if (!qword_280BD76F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD76F8);
  }

  return result;
}

uint64_t sub_21BC5C5E0()
{
  v0 = sub_21BE2980C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21BC5C638(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  *v5 = v1[2];
  *&v5[9] = *(v1 + 41);
  return sub_21BC5C680(a1) & 1;
}

uint64_t sub_21BC5C680(uint64_t a1)
{
  sub_21BB3A35C(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
  if (!swift_dynamicCast())
  {
    v12 = 0u;
    memset(v13, 0, 25);
    v11 = 0u;
    goto LABEL_7;
  }

  if (!v12)
  {
LABEL_7:
    v8 = v11;
    v9 = v12;
    *v10 = v13[0];
    *&v10[9] = *(v13 + 9);
    sub_21BB3A4CC(&v8, &qword_27CDB7F70, &qword_21BE3A8F0);
    v6 = 0;
    return v6 & 1;
  }

  *&v10[9] = *(v13 + 9);
  v8 = v11;
  v9 = v12;
  *v10 = v13[0];
  v2 = sub_21BC5C62C(*(v1 + 56));
  v4 = v3;
  if (v2 == sub_21BC5C62C(BYTE8(v13[1])) && v4 == v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_21BE2995C();
  }

  sub_21BB3A4CC(&v8, &qword_27CDB7F70, &qword_21BE3A8F0);

  return v6 & 1;
}

uint64_t sub_21BC5C7D0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7F80, &unk_21BE3A900);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24[-v5 - 8];
  v7 = type metadata accessor for FamilyDestinations.MemberPendingDetails();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_21BB3A35C(a1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
  v12 = swift_dynamicCast();
  v13 = *(v8 + 56);
  if (v12)
  {
    v13(v6, 0, 1, v7);
    sub_21BC5D574(v6, v11);
    v14 = *v1 == *v11 && v1[1] == v11[1];
    if (v14 || (sub_21BE2995C()) && (v15 = *(v7 + 20), (sub_21BE25B4C()))
    {
      v16 = *(v7 + 24);
      v17 = *(v1 + v16);
      v18 = *(v1 + v16 + 8);
      v19 = (v11 + v16);
      if (v17 == *v19 && v18 == v19[1])
      {
        v21 = 1;
      }

      else
      {
        v21 = sub_21BE2995C();
      }
    }

    else
    {
      v21 = 0;
    }

    sub_21BC22AF8(v11);
  }

  else
  {
    v13(v6, 1, 1, v7);
    sub_21BB3A4CC(v6, &qword_27CDB7F80, &unk_21BE3A900);
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_21BC5C9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21BB3A35C(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
  if (swift_dynamicCast() && v8)
  {
    if (v7 == a2 && v8 == a3)
    {

      v5 = 1;
    }

    else
    {
      v5 = sub_21BE2995C();
    }
  }

  else
  {

    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_21BC5CAC0(uint64_t a1)
{
  sub_21BB3A35C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
  if (swift_dynamicCast())
  {
    v8[0] = v4;
    v8[1] = v5;
    v9 = v6;
    v2 = _s14FamilyCircleUI0A12DestinationsO20ChecklistDestinationV2eeoiySbAE_AEtFZ_0(v1, v8);
    sub_21BC5BEDC(v8);
  }

  else
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    sub_21BB3A4CC(&v4, &qword_27CDB7F78, &qword_21BE3A8F8);
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_21BC5CB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21BB3A35C(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
  if (swift_dynamicCast())
  {
    if (v8 == a2 && v9 == a3)
    {

      v6 = 1;
    }

    else
    {
      v6 = sub_21BE2995C();
    }
  }

  else
  {

    v6 = 0;
  }

  return v6 & 1;
}

uint64_t LinkDestination.isEqual(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BE2946C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v22[-v10 - 8];
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_21BB3A35C(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
  v16 = swift_dynamicCast();
  v17 = *(v12 + 56);
  if (v16)
  {
    v17(v11, 0, 1, a2);
    (*(v12 + 32))(v15, v11, a2);
    v18 = *(*(a3 + 8) + 8);
    v19 = sub_21BE2899C();
    (*(v12 + 8))(v15, a2);
  }

  else
  {
    v17(v11, 1, 1, a2);
    (*(v7 + 8))(v11, v6);
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_21BC5CE7C(uint64_t a1)
{
  sub_21BB3A35C(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
  return swift_dynamicCast();
}

BOOL static DestinationType.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t DestinationType.hash(into:)()
{
  v1 = *v0;
  if (v1 == 3)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x21CF04C80](0);
  }

  return MEMORY[0x21CF04C80](v1);
}

uint64_t DestinationType.hashValue.getter()
{
  v1 = *v0;
  sub_21BE29ACC();
  if (v1 == 3)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x21CF04C80](0);
  }

  MEMORY[0x21CF04C80](v1);
  return sub_21BE29B0C();
}

uint64_t sub_21BC5D01C()
{
  v1 = *v0;
  sub_21BE29ACC();
  if (v1 == 3)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x21CF04C80](0);
  }

  MEMORY[0x21CF04C80](v1);
  return sub_21BE29B0C();
}

uint64_t sub_21BC5D080()
{
  v1 = *v0;
  if (v1 == 3)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x21CF04C80](0);
  }

  return MEMORY[0x21CF04C80](v1);
}

uint64_t sub_21BC5D0C8()
{
  v1 = *v0;
  sub_21BE29ACC();
  if (v1 == 3)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x21CF04C80](0);
  }

  MEMORY[0x21CF04C80](v1);
  return sub_21BE29B0C();
}

uint64_t FamilySheetBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](v1);
  return sub_21BE29B0C();
}

uint64_t LinkDestination.linkTypeIdentifier.getter()
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_21BE28A7C();
}

unint64_t sub_21BC5D204()
{
  result = qword_27CDB7F60;
  if (!qword_27CDB7F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7F60);
  }

  return result;
}

unint64_t sub_21BC5D25C()
{
  result = qword_27CDB7F68;
  if (!qword_27CDB7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7F68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DestinationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DestinationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
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
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_21BC5D42C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_21BC5D440(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_21BC5D478(uint64_t a1, uint64_t a2)
{
  sub_21BB3A35C(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
  if (swift_dynamicCast() && v9)
  {
    v3 = sub_21BC5C62C(a2);
    v5 = v4;
    if (v3 == sub_21BC5C62C(v11) && v5 == v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_21BE2995C();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_21BC5D574(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyDestinations.MemberPendingDetails();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC5D5E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_21BC5D630(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_21BC5D6B0()
{
  type metadata accessor for SubscriptionFamilyCache();
  swift_allocObject();
  return sub_21BE20608();
}

uint64_t sub_21BC5D6E8@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v26 - v5;
  v7 = *(v1 + 8);
  if (*(v7 + 16) && (v8 = sub_21BBB3108(0xD000000000000011, 0x800000021BE55910), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = sub_21BE25B9C();
    v13 = *(v12 - 8);
    v14 = v13;
    v15 = *(v13 + 72);
    v16 = v11 + v15 * v10;
    v17 = *(v13 + 16);
    v17(v6, v16, v12);
    v18 = *(v14 + 56);
    v18(v6, 0, 1, v12);
    sub_21BB3A4CC(v6, &unk_27CDB57F0, &qword_21BE328A0);
    if (*(v7 + 16) && (v19 = sub_21BBB3108(0xD000000000000011, 0x800000021BE55910), (v20 & 1) != 0))
    {
      v17(a1, *(v7 + 56) + v19 * v15, v12);
      v21 = a1;
      v22 = 0;
    }

    else
    {
      v21 = a1;
      v22 = 1;
    }

    return v18(v21, v22, 1, v12);
  }

  else
  {
    v23 = sub_21BE25B9C();
    v24 = *(*(v23 - 8) + 56);
    v24(v6, 1, 1, v23);
    sub_21BB3A4CC(v6, &unk_27CDB57F0, &qword_21BE328A0);
    return (v24)(a1, 1, 1, v23);
  }
}

uint64_t sub_21BC5D940()
{
  if (!*v0 || (v1 = [*v0 subLabel]) == 0)
  {
    v14 = *(v0 + 40);
    v15 = *(v0 + 48);
    v16 = *(v0 + 56);
    type metadata accessor for SubscriptionFamilyCache();
    sub_21BC5E1D0(&qword_27CDB7FA0, type metadata accessor for SubscriptionFamilyCache);
    sub_21BE26EAC();
    sub_21BE1EF28(&v23);
    v21 = v23;
    v22 = v24;
    v17 = sub_21BE20000(&v21);

    if (v17)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v23 = 0;
        v24 = 0;
        sub_21BE289FC();

        if (v24)
        {
          return v23;
        }
      }

      else
      {
      }
    }

    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass_];
    v3 = sub_21BE2599C();

    return v3;
  }

  v2 = v1;
  v3 = sub_21BE28A0C();
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  type metadata accessor for SubscriptionFamilyCache();
  sub_21BC5E1D0(&qword_27CDB7FA0, type metadata accessor for SubscriptionFamilyCache);
  v7 = sub_21BE26EAC();
  sub_21BE1EF28(&v23);
  v9 = v23;
  v8 = v24;
  v10 = sub_21BE1F55C();
  if (v10)
  {
    v11 = v10;
    v12 = *(v7 + 24);
    v21 = *(v7 + 16);
    v22 = v12;

    MEMORY[0x21CF03CA0](46, 0xE100000000000000);
    MEMORY[0x21CF03CA0](v9, v8);
    v13 = sub_21BE289CC();

    [v11 setValue:v2 forKey:v13];
  }

  else
  {
  }

  return v3;
}

uint64_t sub_21BC5DC18@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v38 = sub_21BE27A2C();
  v36 = *(v38 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticSelectableCellTemplate();
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7F88, &qword_21BE3AA38);
  v8 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v34 = &v33 - v9;
  sub_21BC5D6E8(&v7[v4[5]]);
  swift_unknownObjectWeakLoadStrong();
  v10 = sub_21BC5D940();
  v12 = v11;
  v13 = *(v1 + 24);
  v14 = *(v1 + 32);
  v42 = *(v1 + 16);
  v43 = v13;
  v44 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2856C();
  v15 = v39;
  v16 = v40;
  v17 = v41;
  if (qword_280BD76F0 != -1)
  {
    swift_once();
  }

  *v7 = 0xD000000000000011;
  *(v7 + 1) = 0x800000021BE55910;
  v7[v4[6]] = 1;
  v18 = v4[7];
  swift_unknownObjectWeakInit();

  swift_unknownObjectRelease();
  v19 = &v7[v4[8]];
  *v19 = v10;
  v19[1] = v12;
  v20 = &v7[v4[9]];
  *v20 = 0;
  v20[8] = 1;
  v21 = &v7[v4[10]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v7[v4[11]];
  *v22 = v15;
  *(v22 + 1) = v16;
  v22[16] = v17;
  v23 = &v7[v4[12]];
  *v23 = 0;
  *(v23 + 1) = 0;
  *&v7[v4[13]] = 0;
  v7[v4[14]] = 6;
  v24 = &v7[v4[15]];
  type metadata accessor for ServicesStore();
  sub_21BC5E1D0(&qword_27CDB5750, type metadata accessor for ServicesStore);
  *v24 = sub_21BE270CC();
  v24[1] = v25;
  v7[v4[16]] = 0;
  v26 = &v7[v4[17]];
  LOBYTE(v39) = 0;
  sub_21BE283EC();
  v27 = v43;
  *v26 = v42;
  *(v26 + 1) = v27;
  v28 = v4[18];
  sub_21BC46FB4();
  v29 = [swift_getObjCClassFromMetadata() defaultCenter];
  if (qword_27CDB4EE0 != -1)
  {
    swift_once();
  }

  sub_21BE2935C();

  sub_21BC5E1D0(&qword_27CDB7F90, type metadata accessor for StaticSelectableCellTemplate);
  v30 = v34;
  sub_21BE2809C();
  sub_21BC5E088(v7);
  v31 = v35;
  sub_21BE27A0C();
  sub_21BC5E0E4();
  sub_21BE2805C();
  (*(v36 + 8))(v31, v38);
  return sub_21BB3A4CC(v30, &qword_27CDB7F88, &qword_21BE3AA38);
}

uint64_t sub_21BC5E088(uint64_t a1)
{
  v2 = type metadata accessor for StaticSelectableCellTemplate();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BC5E0E4()
{
  result = qword_27CDB7F98;
  if (!qword_27CDB7F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7F88, &qword_21BE3AA38);
    sub_21BC5E1D0(&qword_27CDB7F90, type metadata accessor for StaticSelectableCellTemplate);
    sub_21BC5E1D0(&qword_27CDB6790, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7F98);
  }

  return result;
}

uint64_t sub_21BC5E1D0(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall UIViewController.fa_pushViaSettingsNavigation(_:)(UIViewController *a1)
{
  v3 = sub_21BE2694C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21BE288BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v1 traitCollection];
  sub_21BE292BC();

  v14 = a1;
  sub_21BE2695C();
  sub_21BC5E3C0();
  sub_21BE2889C();
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

unint64_t sub_21BC5E3C0()
{
  result = qword_27CDB7FA8;
  if (!qword_27CDB7FA8)
  {
    sub_21BE2694C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7FA8);
  }

  return result;
}

uint64_t sub_21BC5E418(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_21BE2694C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21BE288BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a3;
  v16 = a1;
  v17 = [v16 traitCollection];
  sub_21BE292BC();

  v18 = v15;
  sub_21BE2695C();
  sub_21BC5E3C0();
  sub_21BE2889C();

  (*(v6 + 8))(v9, v5);
  return (*(v11 + 8))(v14, v10);
}

void sub_21BC5E5E4(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_21BE25A7C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_21BC5E6B0()
{
  v1 = OBJC_IVAR___FAPickerSelectMemberHook_delegate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_21BC5E760(uint64_t a1)
{
  v3 = OBJC_IVAR___FAPickerSelectMemberHook_delegate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_21BC5E7B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___FAPickerSelectMemberHook_delegate;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_21BC5E95C()
{
  v1 = (v0 + OBJC_IVAR___FAPickerSelectMemberHook_activateAction);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_21BB3D80C(v3);
  return v3;
}

uint64_t sub_21BC5EA78(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___FAPickerSelectMemberHook_activateAction);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_21BB5AEC4(v6);
}

uint64_t sub_21BC5EAD8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___FAPickerSelectMemberHook_activateAction);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21BC61B64;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21BB3D80C(v4);
}

uint64_t sub_21BC5EB78(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21BC61B2C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___FAPickerSelectMemberHook_activateAction);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_21BB3D80C(v3);
  return sub_21BB5AEC4(v8);
}

uint64_t sub_21BC5ED48(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, void))
{
  sub_21BC604DC(a3, a2);
  v7 = v4 + OBJC_IVAR___FAPickerSelectMemberHook_activateAction;
  swift_beginAccess();
  v8 = *v7;
  if (*v7)
  {
    v9 = *(v7 + 8);

    v8(a3);
    sub_21BB5AEC4(v8);
  }

  return a4(1, 0);
}

uint64_t sub_21BC5EEFC(void *a1, uint64_t (*a2)(uint64_t, void))
{
  v4 = sub_21BBB5D24(MEMORY[0x277D84F90]);
  sub_21BC604DC(a1, v4);

  return a2(1, 0);
}

id sub_21BC5F018(char a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR___FAPickerSelection_isAddSelection] = a1;
  *&v5[OBJC_IVAR___FAPickerSelection_selectedMember] = 0;
  v5[OBJC_IVAR___FAPickerSelection_isAddExistingTeenSelection] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id FAPickerSelection.__allocating_init(selectedMember:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___FAPickerSelection_isAddSelection] = 0;
  *&v3[OBJC_IVAR___FAPickerSelection_selectedMember] = a1;
  v3[OBJC_IVAR___FAPickerSelection_isAddExistingTeenSelection] = 0;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_21BC5F0F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1684632420;
  }

  else
  {
    v4 = 25705;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1684632420;
  }

  else
  {
    v6 = 25705;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21BE2995C();
  }

  return v9 & 1;
}

uint64_t sub_21BC5F188()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC5F1F8()
{
  *v0;
  sub_21BE28ABC();
}

uint64_t sub_21BC5F254()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC5F2C0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21BE2980C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_21BC5F320(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 1684632420;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21BC5F34C()
{
  if (*v0)
  {
    result = 1684632420;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_21BC5F374@<X0>(char *a1@<X8>)
{
  v2 = sub_21BE2980C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_21BC5F3D8(uint64_t a1)
{
  v2 = sub_21BC61B90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BC5F414(uint64_t a1)
{
  v2 = sub_21BC61B90();

  return MEMORY[0x2821FE720](a1, v2);
}

id FAPickerSelectMemberHook.init()()
{
  *&v0[OBJC_IVAR___FAPickerSelectMemberHook_delegate] = 0;
  v1 = &v0[OBJC_IVAR___FAPickerSelectMemberHook_activateAction];
  v2 = type metadata accessor for FAPickerSelectMemberHook();
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

id FAPickerSelectMemberHook.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FAPickerSelectMemberHook();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BC5F594()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC5F674()
{
  *v0;
  *v0;
  *v0;
  sub_21BE28ABC();
}

uint64_t sub_21BC5F740()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC5F81C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21BC61FA8();
  *a2 = result;
  return result;
}

void sub_21BC5F84C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1684632420;
  v5 = 0xE700000000000000;
  v6 = 0x6469656C707061;
  v7 = 0xE900000000000065;
  v8 = 0x6D614E7473726966;
  if (v2 != 3)
  {
    v8 = 0x656D614E7473616CLL;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x64697364746C61;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_21BC5F8E8()
{
  v1 = *v0;
  v2 = 1684632420;
  v3 = 0x6469656C707061;
  v4 = 0x6D614E7473726966;
  if (v1 != 3)
  {
    v4 = 0x656D614E7473616CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x64697364746C61;
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

uint64_t sub_21BC5F980@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BC61FA8();
  *a1 = result;
  return result;
}

uint64_t sub_21BC5F9A8(uint64_t a1)
{
  v2 = sub_21BC61BE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BC5F9E4(uint64_t a1)
{
  v2 = sub_21BC61BE4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *FAPickerSelection.selectedMember.getter()
{
  v1 = *(v0 + OBJC_IVAR___FAPickerSelection_selectedMember);
  v2 = v1;
  return v1;
}

id sub_21BC5FAD4(uint64_t a1, uint64_t a2, char a3, char a4)
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v7 = objc_allocWithZone(ObjCClassMetadata);
  v7[OBJC_IVAR___FAPickerSelection_isAddSelection] = a3;
  *&v7[OBJC_IVAR___FAPickerSelection_selectedMember] = 0;
  v7[OBJC_IVAR___FAPickerSelection_isAddExistingTeenSelection] = a4;
  v10.receiver = v7;
  v10.super_class = ObjCClassMetadata;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

id FAPickerSelection.init(selectedMember:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR___FAPickerSelection_isAddSelection] = 0;
  *&v1[OBJC_IVAR___FAPickerSelection_selectedMember] = a1;
  v1[OBJC_IVAR___FAPickerSelection_isAddExistingTeenSelection] = 0;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id FAPickerSelection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FAPickerSelection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BC5FD10(void *a1)
{
  v1 = [a1 name];
  if (v1)
  {
    v2 = v1;
    v3 = sub_21BE28A0C();
    v5 = v4;

    if (v3 == 0xD000000000000014 && 0x800000021BE59B90 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_21BE2995C();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_21BC5FDBC(void *a1)
{
  v1 = [a1 clientInfo];
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_21BE2890C();

  v4 = *MEMORY[0x277D46250];
  sub_21BE28A0C();
  sub_21BE2958C();
  if (!*(v3 + 16) || (v5 = sub_21BBB31E8(v9), (v6 & 1) == 0))
  {

    sub_21BBB7238(v9);
LABEL_10:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_11;
  }

  sub_21BB3DCD4(*(v3 + 56) + 32 * v5, &v10);
  sub_21BBB7238(v9);

  if (!*(&v11 + 1))
  {
LABEL_11:
    sub_21BB3A4CC(&v10, &qword_27CDB5940, &unk_21BE32B10);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v7 = 0;
    return v7 & 1;
  }

  if (v9[0] == 0xD000000000000014 && 0x800000021BE59B90 == v9[1])
  {

    v7 = 1;
  }

  else
  {
    v7 = sub_21BE2995C();
  }

  return v7 & 1;
}

void *sub_21BC5FF50(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8080, &qword_21BE3AAE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BC61BE4();
  sub_21BE29B4C();
  if (!v1)
  {
    v10 = sub_21BBB52D8(MEMORY[0x277D84F90]);
    v38 = v10;
    LOBYTE(v36) = 2;
    v11 = sub_21BE2982C();
    if (v12)
    {
      v37 = MEMORY[0x277D837D0];
      *&v36 = v11;
      *(&v36 + 1) = v12;
      sub_21BB414D0(&v36, v35);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v10;
      sub_21BC800D4(v35, 0x612D7265626D656DLL, 0xEF64692D656C7070, isUniquelyReferenced_nonNull_native);
      v38 = v34;
    }

    else
    {
      sub_21BC7B790(0x612D7265626D656DLL, 0xEF64692D656C7070, &v36);
      sub_21BB3A4CC(&v36, &qword_27CDB5940, &unk_21BE32B10);
    }

    LOBYTE(v36) = 3;
    v14 = sub_21BE2982C();
    if (v15)
    {
      v37 = MEMORY[0x277D837D0];
      *&v36 = v14;
      *(&v36 + 1) = v15;
      sub_21BB414D0(&v36, v35);
      v16 = v38;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v34 = v16;
      sub_21BC800D4(v35, 0xD000000000000011, 0x800000021BE59B50, v17);
      v38 = v34;
    }

    else
    {
      sub_21BC7B790(0xD000000000000011, 0x800000021BE59B50, &v36);
      sub_21BB3A4CC(&v36, &qword_27CDB5940, &unk_21BE32B10);
    }

    LOBYTE(v36) = 4;
    v18 = sub_21BE2982C();
    if (v19)
    {
      v37 = MEMORY[0x277D837D0];
      *&v36 = v18;
      *(&v36 + 1) = v19;
      sub_21BB414D0(&v36, v35);
      v20 = v38;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v34 = v20;
      sub_21BC800D4(v35, 0xD000000000000010, 0x800000021BE59B70, v21);
      v38 = v34;
    }

    else
    {
      sub_21BC7B790(0xD000000000000010, 0x800000021BE59B70, &v36);
      sub_21BB3A4CC(&v36, &qword_27CDB5940, &unk_21BE32B10);
    }

    LOBYTE(v36) = 1;
    v22 = sub_21BE2982C();
    if (v23)
    {
      v37 = MEMORY[0x277D837D0];
      *&v36 = v22;
      *(&v36 + 1) = v23;
      sub_21BB414D0(&v36, v35);
      v24 = v38;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v34 = v24;
      sub_21BC800D4(v35, 0x612D7265626D656DLL, 0xEE0044495344746CLL, v25);
      v38 = v34;
    }

    else
    {
      sub_21BC7B790(0x612D7265626D656DLL, 0xEE0044495344746CLL, &v36);
      sub_21BB3A4CC(&v36, &qword_27CDB5940, &unk_21BE32B10);
    }

    LOBYTE(v36) = 0;
    v26 = sub_21BE2982C();
    if (v27)
    {
      v37 = MEMORY[0x277D837D0];
      *&v36 = v26;
      *(&v36 + 1) = v27;
      sub_21BB414D0(&v36, v35);
      v29 = v38;
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v34 = v29;
      sub_21BC800D4(v35, 0x642D7265626D656DLL, 0xEB00000000646973, v30);
      v28 = v34;
    }

    else
    {
      sub_21BC7B790(0x642D7265626D656DLL, 0xEB00000000646973, &v36);
      sub_21BB3A4CC(&v36, &qword_27CDB5940, &unk_21BE32B10);
      v28 = v38;
    }

    sub_21BCA3434(v28);

    v31 = objc_allocWithZone(MEMORY[0x277D08268]);
    v32 = sub_21BE288EC();

    v9 = [v31 initWithDictionaryRepresentation_];

    (*(v4 + 8))(v7, v3);
  }

  return v9;
}

void sub_21BC604DC(void *a1, uint64_t a2)
{
  v119 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8048, &qword_21BE3AAB8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v107 - v8;
  v10 = sub_21BE26A4C();
  v117 = *(v10 - 8);
  v118 = v10;
  v11 = *(v117 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v113 = &v107 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v114 = &v107 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v115 = &v107 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v107 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v107 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v107 - v27;
  *&v128 = 0x6E6F69746361;
  *(&v128 + 1) = 0xE600000000000000;
  sub_21BE2958C();
  if (!*(a2 + 16) || (v29 = sub_21BBB31E8(v132), (v30 & 1) == 0))
  {
LABEL_10:
    sub_21BBB7238(v132);
    goto LABEL_11;
  }

  sub_21BB3DCD4(*(a2 + 56) + 32 * v29, &v130);
  sub_21BBB7238(v132);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v31 = 0;
    v32 = 0;
    goto LABEL_12;
  }

  v32 = *(&v128 + 1);
  v31 = v128;
  if (v128 == __PAIR128__(0xEF6E656554676E69, 0x7473697845646461) || (sub_21BE2995C() & 1) != 0)
  {

    sub_21BE2614C();
    v33 = sub_21BE26A2C();
    v34 = sub_21BE28FCC();
    if (os_log_type_enabled(v33, v34))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21BB35000, v33, v34, "FAPickerSelectMemberHook.processElement selected addExistingTeen", v9, 2u);
      MEMORY[0x21CF05C50](v9, -1, -1);
    }

    (*(v117 + 8))(v28, v118);
    v35 = type metadata accessor for FAPickerSelection();
    v36 = objc_allocWithZone(v35);
    v36[OBJC_IVAR___FAPickerSelection_isAddSelection] = 0;
    *&v36[OBJC_IVAR___FAPickerSelection_selectedMember] = 0;
    v36[OBJC_IVAR___FAPickerSelection_isAddExistingTeenSelection] = 1;
    v120.receiver = v36;
    v120.super_class = v35;
    v37 = objc_msgSendSuper2(&v120, sel_init);
    *&v130 = 0xD000000000000010;
    *(&v130 + 1) = 0x800000021BE59940;
    sub_21BE2958C();
    v131 = v35;
    *&v130 = v37;
    v26 = v37;
    v38 = [v119 clientInfo];
    if (v38)
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_12:
  *&v130 = 0x64657463656C6573;
  *(&v130 + 1) = 0xEA00000000006449;
  sub_21BE2958C();
  v39 = [v119 clientInfo];
  if (!v39)
  {
    goto LABEL_89;
  }

  v40 = v39;
  v41 = sub_21BE2890C();

  if (!*(v41 + 16) || (v42 = sub_21BBB31E8(v132), (v43 & 1) == 0))
  {

    sub_21BBB7238(v132);
    v116 = 0;
    v46 = 0;
    if (!v32)
    {
      goto LABEL_27;
    }

LABEL_23:
    if (v31 == 0xD000000000000014 && v32 == 0x800000021BE59B30)
    {
    }

    else
    {
      v47 = sub_21BE2995C();

      if ((v47 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

LABEL_34:
    sub_21BE2614C();

    v48 = sub_21BE26A2C();
    v49 = sub_21BE28FCC();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v130 = v51;
      *v50 = 136315138;
      v132[0] = v116;
      v132[1] = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AB0, &qword_21BE39110);
      v52 = sub_21BE28A5C();
      v54 = sub_21BB3D81C(v52, v53, &v130);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_21BB35000, v48, v49, "FAPickerSelectMemberHook.processElement %s selected", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x21CF05C50](v51, -1, -1);
      MEMORY[0x21CF05C50](v50, -1, -1);
    }

    else
    {
    }

    (*(v117 + 8))(v26, v118);
    v35 = type metadata accessor for FAPickerSelection();
    v55 = objc_allocWithZone(v35);
    v55[OBJC_IVAR___FAPickerSelection_isAddSelection] = 1;
    *&v55[OBJC_IVAR___FAPickerSelection_selectedMember] = 0;
    v55[OBJC_IVAR___FAPickerSelection_isAddExistingTeenSelection] = 0;
    v121.receiver = v55;
    v121.super_class = v35;
    v56 = objc_msgSendSuper2(&v121, sel_init);
    *&v130 = 0xD000000000000010;
    *(&v130 + 1) = 0x800000021BE59940;
    sub_21BE2958C();
    v131 = v35;
    *&v130 = v56;
    v26 = v56;
    v38 = [v119 clientInfo];
    if (!v38)
    {
      goto LABEL_90;
    }

LABEL_38:
    v57 = v38;
    v58 = sub_21BE2890C();

    *&v125 = v58;
    if (v35)
    {
      sub_21BB414D0(&v130, &v128);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v123[0] = v58;
      sub_21BC80224(&v128, v132, isUniquelyReferenced_nonNull_native);
      sub_21BBB7238(v132);
      if (*&v123[0])
      {
LABEL_40:
        v60 = sub_21BE288EC();

LABEL_43:
        [v119 setClientInfo_];

        return;
      }
    }

    else
    {
      sub_21BB3A4CC(&v130, &qword_27CDB5940, &unk_21BE32B10);
      sub_21BC7B834(v132, &v128);
      sub_21BB3A4CC(&v128, &qword_27CDB5940, &unk_21BE32B10);
      sub_21BBB7238(v132);
      if (v125)
      {
        goto LABEL_40;
      }
    }

    v60 = 0;
    goto LABEL_43;
  }

  sub_21BB3DCD4(*(v41 + 56) + 32 * v42, &v130);
  sub_21BBB7238(v132);

  v44 = swift_dynamicCast();
  v45 = v128;
  if (!v44)
  {
    v45 = 0;
  }

  v116 = v45;
  if (v44)
  {
    v46 = *(&v128 + 1);
  }

  else
  {
    v46 = 0;
  }

  if (v32)
  {
    goto LABEL_23;
  }

LABEL_27:
  if (!v46)
  {
    sub_21BE2614C();
    v61 = sub_21BE26A2C();
    v62 = sub_21BE28FCC();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_21BB35000, v61, v62, "FAPickerSelectMemberHook.processElement selectedId is nil", v63, 2u);
      MEMORY[0x21CF05C50](v63, -1, -1);
    }

    (*(v117 + 8))(v14, v118);
    return;
  }

  if (v116 == 0x646C696843646461 && v46 == 0xE800000000000000 || (sub_21BE2995C() & 1) != 0 || v116 == 0x6E656554646461 && v46 == 0xE700000000000000 || (sub_21BE2995C() & 1) != 0)
  {
    goto LABEL_34;
  }

  sub_21BE2614C();

  v64 = sub_21BE26A2C();
  v65 = sub_21BE28FCC();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v132[0] = v67;
    *v66 = 136315138;
    *(v66 + 4) = sub_21BB3D81C(v116, v46, v132);
    _os_log_impl(&dword_21BB35000, v64, v65, "FAPickerSelectMemberHook.processElement selected id is %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v67);
    MEMORY[0x21CF05C50](v67, -1, -1);
    MEMORY[0x21CF05C50](v66, -1, -1);
  }

  v107 = *(v117 + 8);
  v107(v23, v118);
  *&v130 = 0xD000000000000013;
  *(&v130 + 1) = 0x800000021BE546F0;
  sub_21BE2958C();
  v68 = [v119 clientInfo];
  if (!v68)
  {
    goto LABEL_91;
  }

  v69 = v68;
  v70 = sub_21BE2890C();

  if (*(v70 + 16) && (v71 = sub_21BBB31E8(v132), (v72 & 1) != 0))
  {
    sub_21BB3DCD4(*(v70 + 56) + 32 * v71, &v130);
    sub_21BBB7238(v132);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB8070, &unk_21BE3AAD8);
    if (swift_dynamicCast())
    {
      v73 = v128;
      goto LABEL_56;
    }
  }

  else
  {

    sub_21BBB7238(v132);
  }

  v73 = MEMORY[0x277D84F90];
LABEL_56:
  v111 = *(v73 + 16);
  if (v111)
  {
    v112 = v9;
    v74 = 0;
    v75 = v73 + 32;
    v109 = v7;
    v110 = v73;
    while (1)
    {
      if (v74 >= *(v73 + 16))
      {
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        return;
      }

      sub_21BB3A35C(v75, &v130);
      __swift_project_boxed_opaque_existential_1Tm(&v130, v131);
      sub_21BC61B90();
      v76 = v112;
      sub_21BE29B4C();
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8058, &unk_21BE3AAC0);
      (*(*(v77 - 8) + 56))(v76, 0, 1, v77);
      v78 = v109;
      sub_21BBA3854(v76, v109, &qword_27CDB8048, &qword_21BE3AAB8);
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8058, &unk_21BE3AAC0);
      v80 = *(v79 - 8);
      if ((*(v80 + 48))(v78, 1, v79) == 1)
      {
        break;
      }

      LOBYTE(v128) = 0;
      v81 = sub_21BE2982C();
      v83 = v82;
      v108 = v81;
      (*(v80 + 8))(v78, v79);
      if (!v83)
      {
        v73 = v110;
        goto LABEL_59;
      }

      v73 = v110;
      if (v108 == v116 && v83 == v46)
      {

        sub_21BB3A4CC(v112, &qword_27CDB8048, &qword_21BE3AAB8);
LABEL_87:
        sub_21BB3D104(&v130, v132);
        goto LABEL_70;
      }

      v84 = sub_21BE2995C();

      sub_21BB3A4CC(v112, &qword_27CDB8048, &qword_21BE3AAB8);
      if (v84)
      {
        goto LABEL_87;
      }

LABEL_60:
      ++v74;
      __swift_destroy_boxed_opaque_existential_0Tm(&v130);
      v75 += 40;
      if (v111 == v74)
      {
        goto LABEL_69;
      }
    }

    sub_21BB3A4CC(v78, &qword_27CDB8048, &qword_21BE3AAB8);
    v73 = v110;
LABEL_59:
    sub_21BB3A4CC(v112, &qword_27CDB8048, &qword_21BE3AAB8);
    goto LABEL_60;
  }

LABEL_69:
  memset(v132, 0, 40);
LABEL_70:
  sub_21BBA3854(v132, &v128, &unk_27CDB8060, &qword_21BE3BDC0);
  if (v129)
  {
    sub_21BB3D104(&v128, &v130);
    v89 = sub_21BC5FF50(&v130);
    sub_21BE2614C();
    v90 = v89;
    v91 = sub_21BE26A2C();
    v92 = sub_21BE28FCC();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v93 = 138412290;
      *(v93 + 4) = v90;
      *v94 = v90;
      v95 = v90;
      _os_log_impl(&dword_21BB35000, v91, v92, "FAPickerSelectMemberHook.processElement selected member %@", v93, 0xCu);
      sub_21BB3A4CC(v94, &qword_27CDB7AF0, &qword_21BE37410);
      MEMORY[0x21CF05C50](v94, -1, -1);
      MEMORY[0x21CF05C50](v93, -1, -1);
    }

    v107(v115, v118);
    v96 = type metadata accessor for FAPickerSelection();
    v97 = objc_allocWithZone(v96);
    v97[OBJC_IVAR___FAPickerSelection_isAddSelection] = 0;
    *&v97[OBJC_IVAR___FAPickerSelection_selectedMember] = v90;
    v97[OBJC_IVAR___FAPickerSelection_isAddExistingTeenSelection] = 0;
    v127.receiver = v97;
    v127.super_class = v96;
    v98 = v90;
    v99 = objc_msgSendSuper2(&v127, sel_init);
    *&v125 = 0xD000000000000010;
    *(&v125 + 1) = 0x800000021BE59940;
    sub_21BE2958C();
    v126 = v96;
    *&v125 = v99;
    v100 = v99;
    v101 = [v119 clientInfo];
    if (!v101)
    {
      goto LABEL_92;
    }

    v102 = v101;
    v103 = sub_21BE2890C();

    v124 = v103;
    if (v96)
    {
      sub_21BB414D0(&v125, v123);
      v104 = swift_isUniquelyReferenced_nonNull_native();
      v122 = v103;
      sub_21BC80224(v123, &v128, v104);
      sub_21BBB7238(&v128);
      v105 = v122;
    }

    else
    {
      sub_21BB3A4CC(&v125, &qword_27CDB5940, &unk_21BE32B10);
      sub_21BC7B834(&v128, v123);
      sub_21BB3A4CC(v123, &qword_27CDB5940, &unk_21BE32B10);
      sub_21BBB7238(&v128);
      v105 = v124;
    }

    if (v105)
    {
      v106 = sub_21BE288EC();
    }

    else
    {
      v106 = 0;
    }

    [v119 setClientInfo_];

    __swift_destroy_boxed_opaque_existential_0Tm(&v130);
  }

  else
  {

    sub_21BB3A4CC(&v128, &unk_27CDB8060, &qword_21BE3BDC0);
    v85 = v113;
    sub_21BE2614C();
    v86 = sub_21BE26A2C();
    v87 = sub_21BE28FCC();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_21BB35000, v86, v87, "FAPickerSelectMemberHook.processElement selectedOptionDecoder is nil", v88, 2u);
      MEMORY[0x21CF05C50](v88, -1, -1);
    }

    v107(v85, v118);
  }

  sub_21BB3A4CC(v132, &unk_27CDB8060, &qword_21BE3BDC0);
}

uint64_t dispatch thunk of FAPickerSelectMemberHook.shouldMatch(_:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x90))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x98))();
}

uint64_t sub_21BC61B2C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_21BC61B64(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_21BC61B90()
{
  result = qword_27CDB8050;
  if (!qword_27CDB8050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8050);
  }

  return result;
}

unint64_t sub_21BC61BE4()
{
  result = qword_27CDB8088;
  if (!qword_27CDB8088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8088);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FamilyRowStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FamilyRowStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21BC61D9C()
{
  result = qword_27CDB8090;
  if (!qword_27CDB8090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8090);
  }

  return result;
}

unint64_t sub_21BC61DF4()
{
  result = qword_27CDB8098;
  if (!qword_27CDB8098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8098);
  }

  return result;
}

unint64_t sub_21BC61E4C()
{
  result = qword_27CDB80A0;
  if (!qword_27CDB80A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB80A0);
  }

  return result;
}

unint64_t sub_21BC61EA4()
{
  result = qword_27CDB80A8;
  if (!qword_27CDB80A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB80A8);
  }

  return result;
}

unint64_t sub_21BC61EFC()
{
  result = qword_27CDB80B0;
  if (!qword_27CDB80B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB80B0);
  }

  return result;
}

unint64_t sub_21BC61F54()
{
  result = qword_27CDB80B8;
  if (!qword_27CDB80B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB80B8);
  }

  return result;
}

uint64_t sub_21BC61FA8()
{
  v0 = sub_21BE2980C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21BC62014()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 8);
  v6 = *v0;
  v11 = *v0;
  v7 = v12;

  if ((v7 & 1) == 0)
  {
    sub_21BE28FEC();
    v8 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v11, &qword_27CDB5C50, &qword_21BE33490);
    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_21BC62170()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 8);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = v8 >> 62;
  if (v8 >> 62)
  {
    goto LABEL_34;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return 0;
  }

  while (1)
  {
    v11 = v9 >> 62;
    if (v9 >> 62)
    {
      v34 = v5;
      v35 = sub_21BE2951C();
      v5 = v34;
      if (!v35)
      {
        return 0;
      }
    }

    else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 0;
    }

    v44 = MEMORY[0x277D84FA0];
    v41 = v5;
    v10 = v10 ? sub_21BE2951C() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = sub_21BC65D2C(v1, v43);
    if (!v10)
    {
      break;
    }

    v37 = v9 >> 62;
    v38 = v9;
    v39 = v7;
    v40 = v3;
    v7 = 0;
    v42 = v8 & 0xC000000000000001;
    v12 = v8 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v42)
      {
        v5 = MEMORY[0x21CF047C0](v7, v8);
      }

      else
      {
        if (v7 >= *(v12 + 16))
        {
          goto LABEL_33;
        }

        v5 = *(v8 + 8 * v7 + 32);
      }

      v13 = v5;
      v3 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v14 = [v5 participants];
      sub_21BB3A2A4(0, &qword_27CDB60E0, 0x277D445D8);
      v9 = v8;
      v15 = v10;
      sub_21BC692B8();
      v16 = sub_21BE28E4C();

      sub_21BC65D2C(v1, v43);
      sub_21BC68CD0(v16, v1, &v44);
      sub_21BC69320(v1);

      v10 = v15;
      v8 = v9;

      ++v7;
      if (v3 == v10)
      {
        v17 = v44;
        v7 = v39;
        v3 = v40;
        v11 = v37;
        v9 = v38;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v32 = v5;
    v33 = sub_21BE2951C();
    v5 = v32;
    if (v33 < 1)
    {
      return 0;
    }
  }

  v17 = MEMORY[0x277D84FA0];
LABEL_18:
  sub_21BC69320(v1);
  if ((v17 & 0xC000000000000001) == 0)
  {
    if (*(v17 + 16))
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (!sub_21BE2951C())
  {
LABEL_23:
    sub_21BE261BC();
    v20 = sub_21BE26A2C();
    v21 = sub_21BE28FDC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v43[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_21BB3D81C(0x64616548627573, 0xE700000000000000, v43);
      _os_log_impl(&dword_21BB35000, v20, v21, "%s no grocery list participant is part of family", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x21CF05C50](v23, -1, -1);
      MEMORY[0x21CF05C50](v22, -1, -1);
    }

    (*(v3 + 1))(v7, v41);

    return 0;
  }

LABEL_20:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21BE33260;
  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = sub_21BE2951C();
  }

  else
  {
    v19 = *(v17 + 16);
  }

  v25 = MEMORY[0x277D83B88];
  v26 = MEMORY[0x277D83C10];
  *(v18 + 56) = MEMORY[0x277D83B88];
  *(v18 + 64) = v26;
  *(v18 + 32) = v19;
  if (v11)
  {
    v27 = sub_21BE2951C();
  }

  else
  {
    v27 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v18 + 96) = v25;
  *(v18 + 104) = v26;
  *(v18 + 72) = v27;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = objc_opt_self();

  v30 = [v29 bundleForClass_];
  sub_21BE2599C();

  v31 = sub_21BE289DC();

  return v31;
}

uint64_t sub_21BC62694@<X0>(uint64_t a1@<X8>)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8170, &unk_21BE3AE70);
  v2 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v57 = &v49 - v3;
  v53 = sub_21BE2723C();
  v4 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8100, &unk_21BE4D1C0);
  v7 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v9 = &v49 - v8;
  v10 = sub_21BE2838C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v16 = sub_21BE289CC();
  v17 = [v15 initWithBundleIdentifier_];

  v18 = [objc_opt_self() imageDescriptorNamed_];
  v19 = [v17 prepareImageForDescriptor_];

  if (v19)
  {
    v54 = v17;
    v58 = a1;
    v20 = [v19 CGImage];
    if (v20)
    {
      v21 = v20;
      [v19 iconSize];
      [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

      sub_21BE2836C();
      (*(v11 + 104))(v14, *MEMORY[0x277CE0FE0], v10);
      v22 = sub_21BE283CC();

      (*(v11 + 8))(v14, v10);
      sub_21BE2869C();
      sub_21BE26F2C();
      v52 = v59;
      v23 = v60;
      v24 = v61;
      v51 = v62;
      v49 = v64;
      v50 = v63;
      v25 = *(v53 + 20);
      v26 = *MEMORY[0x277CE0118];
      v27 = sub_21BE276AC();
      (*(*(v27 - 8) + 104))(&v6[v25], v26, v27);
      __asm { FMOV            V0.2D, #9.0 }

      *v6 = _Q0;
      sub_21BE282AC();
      v33 = sub_21BE2831C();

      sub_21BE26ECC();
      v34 = &v9[*(v55 + 36)];
      sub_21BC691F8(v6, v34);
      v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8178, &unk_21BE4D270) + 36);
      v36 = v66;
      *v35 = v65;
      *(v35 + 16) = v36;
      *(v35 + 32) = v67;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8180, &qword_21BE3AE80);
      *(v34 + *(v37 + 52)) = v33;
      *(v34 + *(v37 + 56)) = 256;
      v38 = sub_21BE2869C();
      v40 = v39;
      sub_21BC6925C(v6);
      v41 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8188, &unk_21BE4D280) + 36));
      *v41 = v38;
      v41[1] = v40;
      v42 = sub_21BE2869C();
      v44 = v43;
      v45 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8120, &qword_21BE4D1D0) + 36));
      *v45 = v42;
      v45[1] = v44;
      v46 = v52;
      *v9 = v22;
      *(v9 + 1) = v46;
      v9[16] = v23;
      *(v9 + 3) = v24;
      v9[32] = v51;
      v47 = v49;
      *(v9 + 5) = v50;
      *(v9 + 6) = v47;
      sub_21BBA3854(v9, v57, &qword_27CDB8100, &unk_21BE4D1C0);
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8110, &unk_21BE3AE10);
      sub_21BC65DF0();
      sub_21BC65EA8();
      sub_21BE2784C();

      return sub_21BB3A4CC(v9, &qword_27CDB8100, &unk_21BE4D1C0);
    }

    __break(1u);
  }

  result = sub_21BE2978C();
  __break(1u);
  return result;
}

uint64_t sub_21BC62C8C()
{
  v49[16] = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v48 - v6;
  v8 = sub_21BE25D6C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21BC6326C();
  if (result)
  {
    goto LABEL_24;
  }

  v14 = *(v0 + 24);
  if (v14 >> 62)
  {
    if (v14 < 0)
    {
      v35 = *(v0 + 24);
    }

    if (sub_21BE2951C())
    {
      if (sub_21BE2951C() == 1)
      {
        goto LABEL_5;
      }

LABEL_16:
      v36 = objc_opt_self();
      v49[0] = 0;
      v37 = [v36 urlDestinationTo:11 error:v49];
      v38 = v49[0];
      if (v37)
      {
        v39 = v37;
        sub_21BE25B5C();
        v40 = v38;

        v41 = 0;
      }

      else
      {
        v44 = v49[0];
        v45 = sub_21BE25A8C();

        swift_willThrow();
        v41 = 1;
      }

      v46 = sub_21BE25B9C();
      (*(*(v46 - 8) + 56))(v5, v41, 1, v46);
      sub_21BDEF00C(v5);
      result = sub_21BB3A4CC(v5, &unk_27CDB57F0, &qword_21BE328A0);
      goto LABEL_24;
    }

LABEL_18:
    v42 = sub_21BC62014();
    swift_beginAccess();
    if (*(v42 + 17) == 1)
    {
      *(v42 + 17) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v48[-2] = v42;
      LOBYTE(v48[-1]) = 1;
      v48[1] = v42;
      sub_21BC65FE8(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
      sub_21BE25F0C();
    }

    goto LABEL_24;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_18;
  }

  if (v15 != 1)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x21CF047C0](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v16 = *(v14 + 32);
  }

  v17 = v16;
  v18 = [v16 listID];

  v19 = [v18 uuid];
  sub_21BE25D4C();

  v20 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DF8, &unk_21BE39E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  sub_21BE2939C();
  v49[0] = sub_21BE2938C();
  v49[1] = v22;
  v23 = MEMORY[0x277D837D0];
  v24 = sub_21BE2958C();
  v25 = MEMORY[0x21CF00EE0](v24);
  *(inited + 96) = v23;
  *(inited + 72) = v25;
  *(inited + 80) = v26;
  sub_21BBB5D24(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB5900, &qword_21BE32AB0);
  v27 = sub_21BE288EC();

  v49[0] = 0;
  v28 = [v20 urlDestinationTo:10 params:v27 error:v49];

  v29 = v49[0];
  if (v28)
  {
    sub_21BE25B5C();
    v30 = v29;

    v31 = 0;
  }

  else
  {
    v32 = v49[0];
    v33 = sub_21BE25A8C();

    swift_willThrow();
    v31 = 1;
  }

  v34 = sub_21BE25B9C();
  (*(*(v34 - 8) + 56))(v7, v31, 1, v34);
  sub_21BDEF00C(v7);
  sub_21BB3A4CC(v7, &unk_27CDB57F0, &qword_21BE328A0);
  result = (*(v9 + 8))(v12, v8);
LABEL_24:
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21BC6326C()
{
  v47[1] = *MEMORY[0x277D85DE8];
  v1 = sub_21BE26A4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v40 = &v40 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v41 = &v40 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - v11;
  v13 = sub_21BE25DFC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v0;
  v18 = *(v0 + 88);
  sub_21BE25DBC();
  v19 = sub_21BE25DAC();
  (*(v14 + 8))(v17, v13);
  *&v46 = 0;
  v20 = [v18 fetchFamilyGroceryListEligibilityForFamilyChecklistWithLocale:v19 error:&v46];

  if (v20)
  {
    v21 = v2;
    v22 = v46;
    if ([v20 isEligible])
    {
      sub_21BE261BC();
      v23 = sub_21BE26A2C();
      v24 = sub_21BE28FFC();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_21BB35000, v23, v24, "Not showing any alerts for grocery checklist item", v25, 2u);
        MEMORY[0x21CF05C50](v25, -1, -1);
      }

      (*(v21 + 8))(v12, v1);
      goto LABEL_7;
    }

    if (([v20 ineligibilityReasons] & 0x100) != 0)
    {
      v30 = v41;
      sub_21BE261BC();
      v31 = sub_21BE26A2C();
      v32 = sub_21BE28FFC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_21BB35000, v31, v32, "Showing account update alert on grocery checklist item", v33, 2u);
        MEMORY[0x21CF05C50](v33, -1, -1);
      }

      (*(v21 + 8))(v30, v1);
      v46 = *(v42 + 56);
      v34 = *(v42 + 56);
    }

    else
    {
      if (([v20 ineligibilityReasons] & 4) == 0)
      {

LABEL_18:
        result = 1;
        goto LABEL_19;
      }

      v35 = v40;
      sub_21BE261BC();
      v36 = sub_21BE26A2C();
      v37 = sub_21BE28FFC();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_21BB35000, v36, v37, "Showing iCloud disabled alert on grocery checklist item", v38, 2u);
        MEMORY[0x21CF05C50](v38, -1, -1);
      }

      (*(v2 + 8))(v35, v1);
      v46 = *(v42 + 72);
      v34 = *(v42 + 72);
    }

    v45 = v34;
    v43 = 1;
    v47[0] = *(&v46 + 1);
    sub_21BBA3854(v47, v44, &qword_27CDB5E28, &qword_21BE33898);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    sub_21BE2840C();

    sub_21BB3A4CC(&v46, &qword_27CDBBB50, &unk_21BE333D0);
    goto LABEL_18;
  }

  v26 = v46;
  v27 = sub_21BE25A8C();

  swift_willThrow();
  sub_21BE261BC();
  v28 = v27;
  sub_21BC51D50(v27);

  (*(v2 + 8))(v6, v1);
LABEL_7:
  result = 0;
LABEL_19:
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21BC637C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v144 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v129 = *(v3 - 8);
  v4 = *(v129 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v127 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v128 = &v116 - v7;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB80C0, &qword_21BE3ADD8);
  v126 = *(v139 - 8);
  v8 = *(v126 + 64);
  MEMORY[0x28223BE20](v139);
  v132 = (&v116 - v9);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB80C8, &qword_21BE3ADE0);
  v123 = *(v142 - 8);
  v10 = *(v123 + 64);
  MEMORY[0x28223BE20](v142);
  v131 = &v116 - v11;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB80D0, &qword_21BE3ADE8);
  v124 = *(v143 - 8);
  v12 = *(v124 + 64);
  MEMORY[0x28223BE20](v143);
  v14 = &v116 - v13;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB80D8, &unk_21BE3ADF0);
  v15 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v141 = &v116 - v16;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB80E0, &qword_21BE4D190);
  v17 = *(*(v137 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v137);
  v135 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v136 = &v116 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB80E8, &unk_21BE3AE00);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v140 = &v116 - v23;
  v130 = v3;
  v24 = swift_allocBox();
  v26 = v25;
  sub_21BC62014();
  type metadata accessor for ChecklistStateVars();
  sub_21BC65FE8(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
  v125 = v26;
  sub_21BE2864C();
  v27 = *(v2 + 24);
  v134 = *(v2 + 16);
  v28 = *(v2 + 32);
  v170 = *(v2 + 40);
  v171 = *(v2 + 48);
  v173[0] = v27;
  if (v27 >> 62)
  {
    v29 = sub_21BE2951C();
  }

  else
  {
    v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v145 = v24;
  v172 = v28;
  v133 = v28;
  if (v29)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v31 = objc_opt_self();
    sub_21BBA3854(v173, &v156, &qword_27CDB5F20, &unk_21BE33BA0);
    sub_21BBA3854(&v172, &v156, &qword_27CDB5CC8, &qword_21BE36190);
    v32 = [v31 bundleForClass_];
    v33 = sub_21BE2599C();
    v131 = v34;
    v132 = v33;

    v35 = sub_21BC62170();
    v37 = v36;
    v38 = [v31 bundleForClass_];
    v39 = sub_21BE2599C();
    v41 = v40;

    v42 = v136;
    sub_21BC62694(v136);
    v43 = swift_allocObject();
    v44 = *(v2 + 48);
    v43[3] = *(v2 + 32);
    v43[4] = v44;
    v45 = *(v2 + 80);
    v43[5] = *(v2 + 64);
    v43[6] = v45;
    v46 = *(v2 + 16);
    v43[1] = *v2;
    v43[2] = v46;
    v167 = &type metadata for SharedFamilyGroceryItem;
    v168 = sub_21BBDAA6C();
    v47 = swift_allocObject();
    v166 = v47;
    v48 = v133;
    *(v47 + 16) = v134;
    *(v47 + 24) = v27;
    v49 = v170;
    *(v47 + 32) = v48;
    *(v47 + 40) = v49;
    *(v47 + 48) = v171;
    v156 = v132;
    v157 = v131;
    v158 = v35;
    v159 = v37;
    v160 = v39;
    v161 = v41;
    sub_21BBA3854(v42, v135, &qword_27CDB80E0, &qword_21BE4D190);
    sub_21BC65D2C(v2, &v148);
    sub_21BC65D64();
    v50 = sub_21BE2852C();
    sub_21BB3A4CC(v42, &qword_27CDB80E0, &qword_21BE4D190);
    v169 = v50;
    v164 = v43;
    v165 = 0;
    v162 = 0;
    v163 = sub_21BC6960C;
    sub_21BBC7A18(&v156, v141);
    swift_storeEnumTagMultiPayload();
    v138 = sub_21BBC24D4();
    v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8128, &qword_21BE3AE20);
    v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8130, &qword_21BE3ED60);
    v53 = sub_21BBC2528();
    v54 = sub_21BB41FA4();
    v55 = sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60);
    v56 = MEMORY[0x277D837D0];
    v148 = &type metadata for ChecklistNotSetupButtonCell;
    v149 = MEMORY[0x277D837D0];
    v57 = MEMORY[0x277CE0BD8];
    v150 = v52;
    v151 = MEMORY[0x277CE0BD8];
    v152 = v53;
    v153 = v54;
    v58 = MEMORY[0x277CE0BC8];
    v154 = v55;
    v155 = MEMORY[0x277CE0BC8];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v148 = v139;
    v149 = v56;
    v150 = v52;
    v151 = v57;
    v152 = OpaqueTypeConformance2;
    v153 = v54;
    v154 = v55;
    v155 = v58;
    v60 = swift_getOpaqueTypeConformance2();
    v61 = sub_21BC65F2C();
    v148 = v142;
    v149 = v51;
    v150 = v60;
    v151 = v61;
    swift_getOpaqueTypeConformance2();
    v62 = v140;
    sub_21BE2784C();
    sub_21BBC7A74(&v156);
  }

  else
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    v63 = swift_getObjCClassFromMetadata();
    v64 = objc_opt_self();
    sub_21BBA3854(v173, &v156, &qword_27CDB5F20, &unk_21BE33BA0);
    sub_21BBA3854(&v172, &v156, &qword_27CDB5CC8, &qword_21BE36190);
    v65 = v63;
    v66 = [v64 bundleForClass_];
    v67 = sub_21BE2599C();
    v118 = v68;
    v119 = v67;

    v121 = v64;
    v122 = v65;
    v69 = v65;
    v70 = [v64 bundleForClass_];
    v71 = sub_21BE2599C();
    v120 = v14;
    v72 = v71;
    v74 = v73;

    v75 = v136;
    sub_21BC62694(v136);
    v76 = swift_allocObject();
    v77 = *(v2 + 48);
    v76[3] = *(v2 + 32);
    v76[4] = v77;
    v78 = *(v2 + 80);
    v76[5] = *(v2 + 64);
    v76[6] = v78;
    v79 = *(v2 + 16);
    v76[1] = *v2;
    v76[2] = v79;
    sub_21BC65D2C(v2, &v156);
    v80 = [v64 bundleForClass_];
    v81 = sub_21BE2599C();
    v117 = v82;

    v167 = &type metadata for SharedFamilyGroceryItem;
    v168 = sub_21BBDAA6C();
    v83 = swift_allocObject();
    v166 = v83;
    v84 = v133;
    *(v83 + 16) = v134;
    *(v83 + 24) = v27;
    v85 = v170;
    *(v83 + 32) = v84;
    *(v83 + 40) = v85;
    *(v83 + 48) = v171;
    v156 = v119;
    v157 = v118;
    v158 = v72;
    v159 = v74;
    sub_21BBA3854(v75, v135, &qword_27CDB80E0, &qword_21BE4D190);
    sub_21BC65D64();
    v86 = sub_21BE2852C();
    sub_21BB3A4CC(v75, &qword_27CDB80E0, &qword_21BE4D190);
    v169 = v86;
    v162 = v76;
    v163 = v81;
    v164 = v117;
    v165 = 0;
    v160 = 0;
    v161 = sub_21BC66084;
    v87 = [v121 bundleForClass_];
    v88 = sub_21BE2599C();
    v90 = v89;
    v134 = v89;

    *&v147 = v88;
    *(&v147 + 1) = v90;
    v146 = *(v2 + 72);
    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    v91 = sub_21BE2841C();
    v119 = &v116;
    LODWORD(v118) = v150;
    MEMORY[0x28223BE20](v91);
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8130, &qword_21BE3ED60);
    v93 = sub_21BBC2528();
    v136 = sub_21BB41FA4();
    v137 = sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60);
    v94 = v93;
    sub_21BE280EC();

    sub_21BBC79C4(&v156);
    v95 = [v121 bundleForClass_];
    v96 = sub_21BE2599C();
    v98 = v97;
    v134 = v97;

    v148 = v96;
    v149 = v98;
    v147 = *(v2 + 56);
    v99 = sub_21BE2841C();
    v122 = &v116;
    LODWORD(v121) = v158;
    MEMORY[0x28223BE20](v99);
    v156 = &type metadata for ChecklistNotSetupButtonCell;
    v157 = MEMORY[0x277D837D0];
    v158 = v92;
    v133 = v92;
    v159 = MEMORY[0x277CE0BD8];
    v160 = v94;
    v161 = v136;
    v162 = v137;
    v163 = MEMORY[0x277CE0BC8];
    v135 = MEMORY[0x277CDEDF8];
    v100 = swift_getOpaqueTypeConformance2();
    v101 = v139;
    v102 = v132;
    sub_21BE280EC();

    (*(v126 + 8))(v102, v101);
    v104 = v129;
    v103 = v130;
    v105 = v127;
    (*(v129 + 16))(v127, v125, v130);
    v106 = v128;
    sub_21BE2863C();
    v107 = *(v104 + 8);
    v107(v105, v103);
    swift_getKeyPath();
    sub_21BE2865C();

    v107(v106, v103);

    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8128, &qword_21BE3AE20);
    v156 = v101;
    v157 = MEMORY[0x277D837D0];
    v158 = v133;
    v159 = MEMORY[0x277CE0BD8];
    v160 = v100;
    v161 = v136;
    v162 = v137;
    v163 = MEMORY[0x277CE0BC8];
    v114 = swift_getOpaqueTypeConformance2();
    v115 = sub_21BC65F2C();
    v108 = v120;
    v109 = v142;
    v110 = v131;
    sub_21BE2812C();

    (*(v123 + 8))(v110, v109);
    v111 = v124;
    v112 = v143;
    (*(v124 + 16))(v141, v108, v143);
    swift_storeEnumTagMultiPayload();
    sub_21BBC24D4();
    v156 = v109;
    v157 = v134;
    v158 = v114;
    v159 = v115;
    swift_getOpaqueTypeConformance2();
    v62 = v140;
    sub_21BE2784C();
    (*(v111 + 8))(v108, v112);
  }

  sub_21BB4B810(v62, v144);
}

uint64_t sub_21BC648C0@<X0>(void (*a1)(char *, uint64_t)@<X0>, _OWORD *a2@<X1>, char *a3@<X8>)
{
  v58 = a1;
  v65 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8158, &unk_21BE3AE50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v62 = &v54 - v6;
  v59 = sub_21BE271FC();
  v7 = *(v59 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v59);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v57 = *(v66 - 8);
  v11 = *(v57 + 64);
  v12 = MEMORY[0x28223BE20](v66);
  v64 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v54 - v14;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8160, &unk_21BE3AE60);
  v61 = *(v63 - 8);
  v16 = *(v61 + 64);
  v17 = MEMORY[0x28223BE20](v63);
  v60 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v54 - v19;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = objc_opt_self();
  v23 = [v22 bundleForClass_];
  v24 = sub_21BE2599C();
  v26 = v25;

  v67[0] = v24;
  v67[1] = v26;
  sub_21BB41FA4();

  sub_21BE2845C();
  sub_21BE271EC();
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460);
  v27 = v20;
  v56 = v20;
  v28 = v66;
  sub_21BE27FBC();
  (*(v7 + 8))(v10, v59);
  v29 = v57;
  v58 = *(v57 + 8);
  v59 = v57 + 8;
  v58(v15, v28);
  v30 = [v22 bundleForClass_];
  v31 = sub_21BE2599C();
  v33 = v32;

  v67[12] = v31;
  v67[13] = v33;
  v34 = v62;
  sub_21BE26DEC();
  v35 = sub_21BE26DFC();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  v36 = swift_allocObject();
  v37 = a2[3];
  v36[3] = a2[2];
  v36[4] = v37;
  v38 = a2[5];
  v36[5] = a2[4];
  v36[6] = v38;
  v39 = a2[1];
  v36[1] = *a2;
  v36[2] = v39;
  sub_21BC65D2C(a2, v67);
  v55 = v15;
  sub_21BE2844C();
  v40 = v60;
  v41 = v61;
  v42 = *(v61 + 16);
  v43 = v27;
  v44 = v63;
  v42(v60, v43, v63);
  v45 = *(v29 + 16);
  v46 = v64;
  v47 = v15;
  v48 = v66;
  v45(v64, v47, v66);
  v49 = v65;
  v42(v65, v40, v44);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8168, &qword_21BE48080);
  v45(&v49[*(v50 + 48)], v46, v48);
  v51 = v58;
  v58(v55, v48);
  v52 = *(v41 + 8);
  v52(v56, v44);
  v51(v46, v48);
  return (v52)(v40, v44);
}

uint64_t sub_21BC64EF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - v3;
  v5 = swift_projectBox();
  (*(v1 + 16))(v4, v5, v0);
  sub_21BE2862C();
  (*(v1 + 8))(v4, v0);
  v6 = v9[3];
  swift_beginAccess();
  if (*(v6 + 17) == 1)
  {
    *(v6 + 17) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v9[-2] = v6;
    LOBYTE(v9[-1]) = 1;
    v9[2] = v6;
    sub_21BC65FE8(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
    sub_21BE25F0C();
  }
}

uint64_t sub_21BC650F8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_21BC651D8@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8158, &unk_21BE3AE50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = &v57 - v5;
  v62 = sub_21BE271FC();
  v61 = *(v62 - 8);
  v6 = *(v61 + 64);
  MEMORY[0x28223BE20](v62);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v69 = *(v9 - 8);
  v10 = *(v69 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v67 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v57 - v13;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8160, &unk_21BE3AE60);
  v64 = *(v66 - 8);
  v15 = *(v64 + 64);
  v16 = MEMORY[0x28223BE20](v66);
  v63 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v57 - v18;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = objc_opt_self();
  v22 = [v21 bundleForClass_];
  v23 = sub_21BE2599C();
  v25 = v24;

  v71 = v23;
  v72 = v25;
  v26 = swift_allocObject();
  v27 = a1[3];
  v26[3] = a1[2];
  v26[4] = v27;
  v28 = a1[5];
  v26[5] = a1[4];
  v26[6] = v28;
  v29 = a1[1];
  v26[1] = *a1;
  v26[2] = v29;
  sub_21BC65D2C(a1, v70);
  v60 = sub_21BB41FA4();
  sub_21BE2845C();
  sub_21BE271EC();
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460);
  v30 = v19;
  v59 = v9;
  sub_21BE27FBC();
  (*(v61 + 8))(v8, v62);
  v31 = v69;
  v61 = *(v69 + 8);
  v62 = v69 + 8;
  v32 = v14;
  (v61)(v14, v9);
  v33 = [v21 bundleForClass_];
  v34 = sub_21BE2599C();
  v36 = v35;

  v71 = v34;
  v72 = v36;
  v37 = v65;
  sub_21BE26DEC();
  v38 = sub_21BE26DFC();
  (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  v39 = swift_allocObject();
  v40 = a1[3];
  v39[3] = a1[2];
  v39[4] = v40;
  v41 = a1[5];
  v39[5] = a1[4];
  v39[6] = v41;
  v42 = a1[1];
  v39[1] = *a1;
  v39[2] = v42;
  sub_21BC65D2C(a1, v70);
  v43 = v32;
  v58 = v32;
  sub_21BE2844C();
  v45 = v63;
  v44 = v64;
  v46 = *(v64 + 16);
  v47 = v66;
  v46(v63, v30, v66);
  v48 = *(v31 + 16);
  v69 = v31 + 16;
  v49 = v67;
  v50 = v43;
  v51 = v59;
  v48(v67, v50, v59);
  v52 = v68;
  v46(v68, v45, v47);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8168, &qword_21BE48080);
  v48(&v52[*(v53 + 48)], v49, v51);
  v54 = v61;
  (v61)(v58, v51);
  v55 = *(v44 + 8);
  v55(v30, v47);
  v54(v49, v51);
  return (v55)(v45, v47);
}