void sub_1B9FD44D8(uint64_t a1)
{
  v68 = a1;
  v1 = sub_1BA4A3FB8();
  v66 = *(v1 - 8);
  v67 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v65 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BA4A3F18();
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v64 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E6720];
  sub_1B9F1D0F4(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v69 = &v57 - v7;
  v8 = sub_1BA4A3FD8();
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A3F98();
  v62 = *(v10 - 8);
  v63 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A3158();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9FD7D5C();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1E69A33B0];
  sub_1B9F1D0F4(0, &qword_1EBBE97C8, MEMORY[0x1E69A33B0], v5);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v57 - v21;
  sub_1B9F1D0F4(0, &qword_1EBBE97F8, MEMORY[0x1E69A33C8], v5);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v57 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v57 - v30;
  sub_1B9FD7DF0(v68, v22, &qword_1EBBE97C8, v19);
  v32 = sub_1BA4A3118();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v22, 1, v32) == 1)
  {
    sub_1B9FD7E70(v22, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
    v34 = 1;
  }

  else
  {
    sub_1BA4A30F8();
    (*(v33 + 8))(v22, v32);
    v34 = 0;
  }

  v35 = *(v13 + 56);
  v35(v31, v34, 1, v12);
  (*(v13 + 104))(v28, *MEMORY[0x1E69A33C0], v12);
  v35(v28, 0, 1, v12);
  v36 = *(v16 + 48);
  v37 = MEMORY[0x1E69A33C8];
  sub_1B9FD7DF0(v31, v18, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
  sub_1B9FD7DF0(v28, &v18[v36], &qword_1EBBE97F8, v37);
  v38 = *(v13 + 48);
  if (v38(v18, 1, v12) != 1)
  {
    sub_1B9FD7DF0(v18, v25, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
    if (v38(&v18[v36], 1, v12) != 1)
    {
      v46 = v57;
      (*(v13 + 32))(v57, &v18[v36], v12);
      sub_1B9FD8164(&qword_1EBBE9800, MEMORY[0x1E69A33C8]);
      v47 = sub_1BA4A6728();
      v48 = *(v13 + 8);
      v48(v46, v12);
      v49 = MEMORY[0x1E69A33C8];
      sub_1B9FD7E70(v28, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
      sub_1B9FD7E70(v31, &qword_1EBBE97F8, v49);
      v48(v25, v12);
      sub_1B9FD7E70(v18, &qword_1EBBE97F8, v49);
      if (v47)
      {
        goto LABEL_12;
      }

LABEL_10:
      sub_1B9F1D0F4(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
      sub_1BA4A3FE8();
      *(swift_allocObject() + 16) = xmmword_1BA4B5480;
      v42 = v70;
      v41 = v71;
      v43 = v64;
      (*(v70 + 104))(v64, *MEMORY[0x1E69DBF28], v71);
      v44 = sub_1BA4A3F48();
      (*(*(v44 - 8) + 56))(v69, 1, 1, v44);
      v45 = v65;
      sub_1BA4A3FA8();
      sub_1BA4A3F78();
      (*(v66 + 8))(v45, v67);
      (*(v42 + 8))(v43, v41);
      sub_1BA4A75F8();
      return;
    }

    v40 = MEMORY[0x1E69A33C8];
    sub_1B9FD7E70(v28, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
    sub_1B9FD7E70(v31, &qword_1EBBE97F8, v40);
    (*(v13 + 8))(v25, v12);
LABEL_9:
    sub_1B9FD81AC(v18, sub_1B9FD7D5C);
    goto LABEL_10;
  }

  v39 = MEMORY[0x1E69A33C8];
  sub_1B9FD7E70(v28, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
  sub_1B9FD7E70(v31, &qword_1EBBE97F8, v39);
  if (v38(&v18[v36], 1, v12) != 1)
  {
    goto LABEL_9;
  }

  sub_1B9FD7E70(v18, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
LABEL_12:
  v50 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  [v50 startAnimating];
  sub_1B9F1D0F4(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  *(swift_allocObject() + 16) = xmmword_1BA4B5480;
  sub_1B9FD7EE0();
  v52 = v61;
  v53 = &v61[*(v51 + 48)];
  (*(v70 + 104))(v61, *MEMORY[0x1E69DBF28], v71);
  *v53 = sub_1B9FF87F0;
  v53[1] = 0;
  (*(v58 + 104))(v52, *MEMORY[0x1E69DBF60], v59);
  v54 = sub_1BA4A3F48();
  (*(*(v54 - 8) + 56))(v69, 1, 1, v54);
  v55 = v50;
  v56 = v60;
  sub_1BA4A3F88();
  sub_1BA4A3EE8();
  (*(v62 + 8))(v56, v63);
  sub_1BA4A75F8();
}

id YouAreSharingWithCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id YouAreSharingWithCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithCell_accessibilityIdentifierBase];
  v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v15 = v10;

  MEMORY[0x1BFAF1350](0x676E69726168532ELL, 0xE800000000000000);

  MEMORY[0x1BFAF1350](0x6E696F6774754F2ELL, 0xE900000000000067);

  MEMORY[0x1BFAF1350](0x6E6F737265502ELL, 0xE700000000000000);

  v11 = v15;
  *v9 = v14;
  v9[1] = v11;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for YouAreSharingWithCell();
  return objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
}

id YouAreSharingWithCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id YouAreSharingWithCell.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithCell_accessibilityIdentifierBase];
  v9 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v10 = v4;

  MEMORY[0x1BFAF1350](0x676E69726168532ELL, 0xE800000000000000);

  MEMORY[0x1BFAF1350](0x6E696F6774754F2ELL, 0xE900000000000067);

  MEMORY[0x1BFAF1350](0x6E6F737265502ELL, 0xE700000000000000);

  v5 = v10;
  *v3 = v9;
  v3[1] = v5;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for YouAreSharingWithCell();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id YouAreSharingWithCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for YouAreSharingWithCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B9FD544C()
{
  v0 = objc_opt_self();
  v1 = [v0 systemGray5Color];
  v2 = [v0 tertiarySystemGroupedBackgroundColor];
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = v2;
  v3[4] = 0;
  v3[5] = v1;
  v4 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v8[4] = sub_1B9FD7F54;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B9F7EBBC;
  v8[3] = &block_descriptor_0;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithDynamicProvider_];
  _Block_release(v5);

  return v6;
}

id sub_1B9FD5578()
{
  v0 = [objc_opt_self() secondarySystemGroupedBackgroundColor];

  return v0;
}

uint64_t sub_1B9FD55E8()
{
  type metadata accessor for YouAreSharingWithCell();
  sub_1B9FD7B2C();
  return sub_1BA4A6808();
}

uint64_t sub_1B9FD5620(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_uniqueIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1B9FD568C()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_uniqueIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1B9FD56E4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_uniqueIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t YouAreSharingWithItem.__allocating_init(profileInformation:healthExperienceStore:healthStore:contactStore:disabledState:)(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned __int8 *a5)
{
  v10 = swift_allocObject();
  YouAreSharingWithItem.init(profileInformation:healthExperienceStore:healthStore:contactStore:disabledState:)(a1, a2, a3, a4, a5);
  return v10;
}

void *YouAreSharingWithItem.init(profileInformation:healthExperienceStore:healthStore:contactStore:disabledState:)(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned __int8 *a5)
{
  v6 = v5;
  v42 = a2;
  v43 = a3;
  v40 = *v6;
  v45 = a4;
  v46 = MEMORY[0x1E69A33B0];
  sub_1B9F1D0F4(0, &qword_1EBBE97C8, MEMORY[0x1E69A33B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v40 - v11;
  v13 = sub_1BA4A1798();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_image) = 0;
  *(v6 + OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_status) = 0;
  v44 = *a5;
  *(v6 + OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_disabledState) = 2;
  v47 = sub_1BA4A85D8();
  v48 = v17;
  v18 = MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v19 = MEMORY[0x1BFAEDD10](v18);
  MEMORY[0x1BFAF1350](v19);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  sub_1BA4A1788();
  v20 = sub_1BA4A1748();
  v22 = v21;
  (*(v14 + 8))(v16, v13);
  MEMORY[0x1BFAF1350](v20, v22);

  v23 = v48;
  v24 = (v6 + OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_uniqueIdentifier);
  *v24 = v47;
  v24[1] = v23;
  sub_1B9F0A534(a2, v6 + OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_healthExperienceStore);
  v25 = v43;
  *(v6 + OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_healthStore) = v43;
  v26 = OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_sharingEntryProfileInformation;
  v27 = sub_1BA4A33C8();
  v28 = *(v27 - 8);
  v29 = *(v28 + 16);
  v41 = a1;
  v29(v6 + v26, a1, v27);
  v30 = v25;
  v31 = sub_1B9FD5C44(a1);
  v32 = *(v6 + OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_status);
  *(v6 + OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_status) = v31;

  swift_beginAccess();
  v49 = v27;
  v50 = MEMORY[0x1E69A3410];
  v51 = MEMORY[0x1E69A3418];
  v33 = __swift_allocate_boxed_opaque_existential_1(&v47);
  v29(v33, v6 + v26, v27);
  sub_1B9F53270();
  sub_1BA4A6FF8();
  v34 = v45;
  v35 = sub_1BA4A7018();

  __swift_destroy_boxed_opaque_existential_1(&v47);
  v36 = sub_1BA4A79E8();
  v37 = *(v6 + OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_image);
  *(v6 + OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_image) = v36;

  v38 = OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_disabledState;
  *(v6 + OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_disabledState) = v44;
  swift_beginAccess();
  sub_1BA4A3278();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v42);
  (*(v28 + 8))(v41, v27);
  sub_1B9FD665C(v12, &v47);
  sub_1B9FD7E70(v12, &qword_1EBBE97C8, v46);
  *(v6 + v38) = v47;
  return v6;
}

id sub_1B9FD5C44(uint64_t a1)
{
  v59 = sub_1BA4A33C8();
  v65 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v64 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BA4A3EA8();
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9FD7F60();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E6720];
  sub_1B9F1D0F4(0, &qword_1EBBE97C8, MEMORY[0x1E69A33B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v58 - v11;
  sub_1B9F1D0F4(0, &qword_1EBBE97F8, MEMORY[0x1E69A33C8], v9);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v58 - v17;
  sub_1BA4A3278();
  v19 = sub_1BA4A3118();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v12, 1, v19) == 1)
  {
    sub_1B9FD7E70(v12, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
    v21 = 1;
  }

  else
  {
    sub_1BA4A30F8();
    (*(v20 + 8))(v12, v19);
    v21 = 0;
  }

  v22 = sub_1BA4A3158();
  v23 = *(v22 - 8);
  (*(v23 + 56))(v18, v21, 1, v22);
  v24 = sub_1BA4A32B8();
  v26 = v25;
  v63 = a1;
  v27 = sub_1BA4A3388();
  v28 = &v8[*(v6 + 48)];
  v29 = *(v6 + 64);
  sub_1B9FD8034(v18, v8);
  *v28 = v24;
  v28[8] = v26 & 1;
  v8[v29] = v27 & 1;
  if ((*(v23 + 48))(v8, 1, v22) == 1)
  {
LABEL_10:
    if (v27)
    {
      if (qword_1EDC5E100 != -1)
      {
        swift_once();
      }

      sub_1BA4A1318();
      _sSS18HealthExperienceUIE34attributedTextWithLeadingPauseIcon4textSo18NSAttributedStringCSS_tFZ_0();
      v32 = v33;

      goto LABEL_14;
    }

    v35 = v64;
    v34 = v65;
    v36 = v63;
    if ((v26 & 1) == 0)
    {
      if (v24 == 1)
      {
        v52 = sub_1BA4A3298();
        if ((v53 & 1) == 0)
        {
          v54 = v52;
          if (qword_1EDC5E100 != -1)
          {
            swift_once();
          }

          sub_1BA4A1318();
          sub_1B9F1B310(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
          v55 = swift_allocObject();
          v56 = MEMORY[0x1E69E6530];
          *(v55 + 16) = xmmword_1BA4B5480;
          v57 = MEMORY[0x1E69E65A8];
          *(v55 + 56) = v56;
          *(v55 + 64) = v57;
          *(v55 + 32) = v54;
          sub_1BA4A6768();

          goto LABEL_8;
        }

        sub_1B9FD7E70(v8, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
        return 0;
      }

      if (!v24)
      {
        if (qword_1EDC5E100 == -1)
        {
          goto LABEL_7;
        }

        goto LABEL_31;
      }
    }

    v37 = v60;
    sub_1BA4A3DD8();
    v38 = v59;
    (*(v34 + 16))(v35, v36, v59);
    v39 = sub_1BA4A3E88();
    v40 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v66 = v63;
      *v41 = 136315394;
      v42 = sub_1BA4A85D8();
      v44 = v34;
      v45 = sub_1B9F0B82C(v42, v43, &v66);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      sub_1B9FD8164(&qword_1EBBE9818, MEMORY[0x1E69A3430]);
      v46 = sub_1BA4A82D8();
      v48 = v47;
      (*(v44 + 8))(v35, v38);
      v49 = sub_1B9F0B82C(v46, v48, &v66);

      *(v41 + 14) = v49;
      _os_log_impl(&dword_1B9F07000, v39, v40, "[%s)]: Unexpected configuration of sharing entry: %s", v41, 0x16u);
      v50 = v63;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v50, -1, -1);
      MEMORY[0x1BFAF43A0](v41, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v35, v38);
    }

    (*(v61 + 8))(v37, v62);
    sub_1B9FD81AC(v8, sub_1B9FD7F60);
    return 0;
  }

  sub_1B9FD7DF0(v8, v16, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
  if ((*(v23 + 88))(v16, v22) != *MEMORY[0x1E69A33C0])
  {
    (*(v23 + 8))(v16, v22);
    goto LABEL_10;
  }

  if (qword_1EDC5E100 != -1)
  {
LABEL_31:
    swift_once();
  }

LABEL_7:
  sub_1BA4A1318();
LABEL_8:
  v30 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v31 = sub_1BA4A6758();

  v32 = [v30 initWithString_];

LABEL_14:
  sub_1B9FD7E70(v8, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
  return v32;
}

uint64_t sub_1B9FD665C@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = result;
  v5 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_disabledState);
  if (v5 == 2 || (v5 & 1) == 0)
  {
    v6 = sub_1BA4A3118();
    result = (*(*(v6 - 8) + 48))(v3, 1, v6);
    if (result != 1)
    {
      LOBYTE(v5) = 0;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t YouAreSharingWithItem.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_sharingEntryProfileInformation;
  v2 = sub_1BA4A33C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_healthExperienceStore);

  return v0;
}

uint64_t YouAreSharingWithItem.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_sharingEntryProfileInformation;
  v2 = sub_1BA4A33C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_healthExperienceStore);

  return swift_deallocClassInstance();
}

uint64_t sub_1B9FD68A4()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_uniqueIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1B9FD6900(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

char *sub_1B9FD6964(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1C048(0, &qword_1EDC6E318);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t type metadata accessor for YouAreSharingWithItem()
{
  result = qword_1EBBE97E0;
  if (!qword_1EBBE97E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B9FD6AA8(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t, uint64_t), uint64_t a3, uint64_t a4, void *a5)
{
  v109 = a5;
  v100 = a4;
  v99 = a3;
  v110 = a2;
  v6 = type metadata accessor for SummarySharingOnboardingError();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v96 = &v90[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v95 = sub_1BA4A1798();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v92 = v8;
  v93 = &v90[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1BA4A3158();
  v111 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v90[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v97 = &v90[-v12];
  sub_1B9FD7D5C();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v90[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x1E69A33B0];
  v18 = MEMORY[0x1E69E6720];
  sub_1B9F1D0F4(0, &qword_1EBBE97C8, MEMORY[0x1E69A33B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v98 = &v90[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v103 = &v90[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v90[-v24];
  sub_1B9F1D0F4(0, &qword_1EBBE97F8, MEMORY[0x1E69A33C8], v18);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v90[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v90[-v30];
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v90[-v33];
  v35 = sub_1BA4A33C8();
  v36 = MEMORY[0x1EEE9AC00](v35);
  v104 = &v90[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v105 = v38;
  v39 = *(v38 + 16);
  v106 = v40;
  v39(v36);
  v108 = a1;
  sub_1B9FD7DF0(a1, v25, &qword_1EBBE97C8, v17);
  v41 = sub_1BA4A3118();
  v42 = *(v41 - 8);
  v110 = *(v42 + 48);
  v43 = v110(v25, 1, v41);
  v102 = v41;
  v101 = v42;
  if (v43 == 1)
  {
    sub_1B9FD7E70(v25, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
    v44 = 1;
  }

  else
  {
    sub_1BA4A30F8();
    (*(v42 + 8))(v25, v41);
    v44 = 0;
  }

  v45 = v111;
  v46 = *(v111 + 56);
  v46(v34, v44, 1, v9);
  (*(v45 + 104))(v31, *MEMORY[0x1E69A33C0], v9);
  v46(v31, 0, 1, v9);
  v47 = *(v14 + 48);
  v48 = MEMORY[0x1E69A33C8];
  sub_1B9FD7DF0(v34, v16, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
  sub_1B9FD7DF0(v31, &v16[v47], &qword_1EBBE97F8, v48);
  v49 = *(v45 + 48);
  if (v49(v16, 1, v9) == 1)
  {
    v50 = MEMORY[0x1E69A33C8];
    sub_1B9FD7E70(v31, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
    sub_1B9FD7E70(v34, &qword_1EBBE97F8, v50);
    v51 = v49(&v16[v47], 1, v9);
    v52 = v102;
    if (v51 == 1)
    {
      sub_1B9FD7E70(v16, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
      v53 = 0;
LABEL_10:
      v55 = v108;
      v56 = v109;
      v57 = v107;
      goto LABEL_12;
    }

LABEL_9:
    sub_1B9FD81AC(v16, sub_1B9FD7D5C);
    v53 = 1;
    goto LABEL_10;
  }

  sub_1B9FD7DF0(v16, v28, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
  if (v49(&v16[v47], 1, v9) == 1)
  {
    v54 = MEMORY[0x1E69A33C8];
    sub_1B9FD7E70(v31, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
    sub_1B9FD7E70(v34, &qword_1EBBE97F8, v54);
    (*(v111 + 8))(v28, v9);
    v52 = v102;
    goto LABEL_9;
  }

  v58 = v111;
  v59 = v97;
  (*(v111 + 32))(v97, &v16[v47], v9);
  sub_1B9FD8164(&qword_1EBBE9800, MEMORY[0x1E69A33C8]);
  v91 = sub_1BA4A6728();
  v60 = *(v58 + 8);
  v60(v59, v9);
  v61 = MEMORY[0x1E69A33C8];
  sub_1B9FD7E70(v31, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
  sub_1B9FD7E70(v34, &qword_1EBBE97F8, v61);
  v60(v28, v9);
  sub_1B9FD7E70(v16, &qword_1EBBE97F8, v61);
  v53 = v91 ^ 1;
  v55 = v108;
  v56 = v109;
  v57 = v107;
  v52 = v102;
LABEL_12:
  [v56 setUserInteractionEnabled_];
  v62 = v103;
  sub_1B9FD7DF0(v55, v103, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
  if (v110(v62, 1, v52) == 1)
  {
    (*(v105 + 8))(v104, v106);
    return sub_1B9FD7E70(v62, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
  }

  sub_1BA4A30F8();
  v64 = *(v101 + 8);
  v64(v62, v52);
  v65 = v111;
  if ((*(v111 + 88))(v57, v9) != *MEMORY[0x1E69A33B8])
  {
    (*(v105 + 8))(v104, v106);
    return (*(v65 + 8))(v57, v9);
  }

  (*(v65 + 8))(v57, v9);
  v66 = v98;
  sub_1B9FD7DF0(v55, v98, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
  if (v110(v66, 1, v52) == 1)
  {
    sub_1B9FD7E70(v66, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
LABEL_23:
    v84 = [v56 viewController];
    v85 = v104;
    v86 = v106;
    v87 = sub_1BA4A2AB8();
    v89 = v88;
    (*(v105 + 8))(v85, v86);
    sub_1BA198EE8(v84, v87, v89, v99, v100);
  }

  v67 = sub_1BA4A3108();
  v69 = v68;
  v64(v66, v52);
  if (v69)
  {
    goto LABEL_23;
  }

  v70 = [v56 viewController];
  if (!v70)
  {
    goto LABEL_23;
  }

  v71 = v70;
  (*(v105 + 8))(v104, v106);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v72 = v94;
  v73 = v93;
  v74 = v95;
  (*(v94 + 16))(v93, v99, v95);
  v75 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v76 = (v92 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  (*(v72 + 32))(&v77[v75], v73, v74);
  *&v77[v76] = v100;
  v78 = sub_1BA4A6758();
  aBlock[4] = sub_1B9FD80C8;
  aBlock[5] = v77;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA0B06D4;
  aBlock[3] = &block_descriptor_24;
  v79 = _Block_copy(aBlock);

  v80 = [objc_opt_self() actionWithTitle:v78 style:0 handler:v79];
  _Block_release(v79);

  type metadata accessor for HKError(0);
  v112 = v67;
  sub_1BA198DE4(MEMORY[0x1E69E7CC0]);
  sub_1B9FD8164(&qword_1EBBE9090, type metadata accessor for HKError);
  sub_1BA4A1478();
  v81 = v96;
  SummarySharingOnboardingError.init(error:)(aBlock[0], v96);
  sub_1B9F1C048(0, &qword_1EDC6B400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5470;
  *(inited + 32) = v80;
  v83 = v80;
  sub_1BA0C6BA4(v71, 0, 0, 0, 0, inited, 0, 0);

  swift_setDeallocating();
  swift_arrayDestroy();
  return sub_1B9FD81AC(v81, type metadata accessor for SummarySharingOnboardingError);
}

void sub_1B9FD78EC(void *a1)
{
  v3 = sub_1BA4A33C8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v7, v17);
  if (v18)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    type metadata accessor for YouAreSharingWithItem();
    if (swift_dynamicCast())
    {
      v8 = v16[1];
      v9 = [a1 parentViewController];
      if (v9)
      {
        v10 = v9;
        v11 = OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_sharingEntryProfileInformation;
        swift_beginAccess();
        (*(v4 + 16))(v6, v8 + v11, v3);
        sub_1B9F0A534(v8 + OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_healthExperienceStore, v17);
        v12 = *(v8 + OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_healthStore);
        v13 = objc_allocWithZone(type metadata accessor for SummarySharingRelationshipDetailsViewController());
        v14 = sub_1BA0854CC(v6, v17, v12);
        v15 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
        [v15 setModalInPresentation_];
        [v10 presentViewController:v15 animated:1 completion:0];
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1B9F7B644(v17);
  }
}

unint64_t sub_1B9FD7B2C()
{
  result = qword_1EDC67278[0];
  if (!qword_1EDC67278[0])
  {
    type metadata accessor for YouAreSharingWithCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_1EDC67278);
  }

  return result;
}

uint64_t sub_1B9FD7BD8()
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

void sub_1B9FD7D5C()
{
  if (!qword_1EBBE97F0)
  {
    sub_1B9F1D0F4(255, &qword_1EBBE97F8, MEMORY[0x1E69A33C8], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBE97F0);
    }
  }
}

uint64_t sub_1B9FD7DF0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F1D0F4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B9FD7E70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F1D0F4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1B9FD7EE0()
{
  if (!qword_1EDC6B788)
  {
    sub_1BA4A3F18();
    sub_1B9F37BB8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC6B788);
    }
  }
}

void sub_1B9FD7F60()
{
  if (!qword_1EBBE9808)
  {
    v0 = MEMORY[0x1E69E6720];
    sub_1B9F1D0F4(255, &qword_1EBBE97F8, MEMORY[0x1E69A33C8], MEMORY[0x1E69E6720]);
    sub_1B9F1D0F4(255, &qword_1EBBE9810, type metadata accessor for HKSharingStatus, v0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBBE9808);
    }
  }
}

uint64_t sub_1B9FD8034(uint64_t a1, uint64_t a2)
{
  sub_1B9F1D0F4(0, &qword_1EBBE97F8, MEMORY[0x1E69A33C8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B9FD80C8(uint64_t a1)
{
  v3 = *(sub_1BA4A1798() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BA461DBC(a1, v1 + v4, v5);
}

uint64_t sub_1B9FD8164(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9FD81AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DataLoggingPluginViewModel.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DataLoggingPluginViewModel.viewLabel.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DataLoggingPluginViewModel.viewIcon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DataLoggingPluginViewModel() + 24);
  v4 = sub_1BA4A2BF8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DataLoggingPluginViewModel()
{
  result = qword_1EBBE9850;
  if (!qword_1EBBE9850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DataLoggingPluginViewModel.color.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DataLoggingPluginViewModel() + 28);
  v4 = sub_1BA4A2B98();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DataLoggingPluginViewModel.init(uniqueIdentifier:viewLabel:viewIcon:color:lastSampleDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  v12 = type metadata accessor for DataLoggingPluginViewModel();
  v13 = v12[6];
  v14 = sub_1BA4A2BF8();
  (*(*(v14 - 8) + 32))(&a8[v13], a5, v14);
  v15 = v12[7];
  v16 = sub_1BA4A2B98();
  (*(*(v16 - 8) + 32))(&a8[v15], a6, v16);
  v17 = &a8[v12[8]];

  return sub_1B9FD84F0(a7, v17);
}

uint64_t sub_1B9FD84F0(uint64_t a1, uint64_t a2)
{
  sub_1B9F7B6A0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DataLoggingPluginViewModel.init(displayType:lastSampleDate:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = [a1 displayCategory];
  v7 = [v6 listIconName];

  v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v10 = v9;

  sub_1B9FD8844();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = [v12 bundleIdentifier];

  if (v13)
  {
    v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v36 = v15;

    v16 = [a1 displayTypeIdentifierString];
    v38 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v37 = v17;

    v18 = [a1 localization];
    v19 = v10;
    v20 = v8;
    v21 = [v18 displayName];

    v35 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v23 = v22;

    v24 = type metadata accessor for DataLoggingPluginViewModel();
    v25 = a2;
    v26 = (a3 + v24[6]);
    *v26 = v20;
    v26[1] = v19;
    v26[2] = v14;
    v26[3] = v36;
    v27 = *MEMORY[0x1E69A3280];
    v28 = sub_1BA4A2BF8();
    (*(*(v28 - 8) + 104))(v26, v27, v28);
    v29 = v24[7];
    v30 = [a1 objectType];
    sub_1BA4A2FA8();

    v31 = *MEMORY[0x1E69A3250];
    v32 = sub_1BA4A2B98();
    (*(*(v32 - 8) + 104))(a3 + v29, v31, v32);
    *a3 = v38;
    a3[1] = v37;
    a3[2] = v35;
    a3[3] = v23;
    return sub_1B9FD84F0(v25, a3 + v24[8]);
  }

  else
  {

    sub_1B9FD8890();
    swift_allocError();
    *v34 = 1;
    swift_willThrow();

    return sub_1B9FD9768(a2, sub_1B9F7B6A0);
  }
}

unint64_t sub_1B9FD8844()
{
  result = qword_1EDC6B5C0;
  if (!qword_1EDC6B5C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6B5C0);
  }

  return result;
}

unint64_t sub_1B9FD8890()
{
  result = qword_1EBBE9820;
  if (!qword_1EBBE9820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9820);
  }

  return result;
}

uint64_t sub_1B9FD88E4()
{
  sub_1B9F7B6A0();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA4A1728();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DataLoggingPluginViewModel();
  sub_1B9FD9700(v0 + *(v8 + 32), v3, sub_1B9F7B6A0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1B9FD9768(v3, sub_1B9F7B6A0);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v9 = sub_1BA4A16B8();
    if (qword_1EDC6E3F8 != -1)
    {
      swift_once();
    }

    v10 = HKMostRecentSampleEndDateText();

    if (v10)
    {
      v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      (*(v5 + 8))(v7, v4);
      return v11;
    }

    (*(v5 + 8))(v7, v4);
  }

  return 0;
}

uint64_t _s18HealthExperienceUI16PDFTextAlignmentO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

uint64_t sub_1B9FD8B68()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

unint64_t sub_1B9FD8BAC()
{
  v1 = *v0;
  v2 = 0x6562614C77656976;
  v3 = 0x6E6F634977656976;
  v4 = 0x726F6C6F63;
  if (v1 != 3)
  {
    v4 = 0x706D61537473616CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_1B9FD8C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B9FD9AD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B9FD8C8C(uint64_t a1)
{
  v2 = sub_1B9FD8FE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B9FD8CC8(uint64_t a1)
{
  v2 = sub_1B9FD8FE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DataLoggingPluginViewModel.encode(to:)(void *a1)
{
  sub_1B9FD969C(0, &qword_1EBBE9828, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9FD8FE0();
  sub_1BA4A8548();
  v9[15] = 0;
  sub_1BA4A8248();
  if (!v1)
  {
    v9[14] = 1;
    sub_1BA4A8248();
    type metadata accessor for DataLoggingPluginViewModel();
    v9[13] = 2;
    sub_1BA4A2BF8();
    sub_1B9F2080C(&qword_1EDC6AD68, MEMORY[0x1E69A32A0]);
    sub_1BA4A8288();
    v9[12] = 3;
    sub_1BA4A2B98();
    sub_1B9F2080C(&qword_1EDC6AD70, MEMORY[0x1E69A3260]);
    sub_1BA4A8288();
    v9[11] = 4;
    sub_1BA4A1728();
    sub_1B9F2080C(&qword_1EDC6AE80, MEMORY[0x1E6969530]);
    sub_1BA4A8238();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1B9FD8FE0()
{
  result = qword_1EBBE9830;
  if (!qword_1EBBE9830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9830);
  }

  return result;
}

uint64_t DataLoggingPluginViewModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  sub_1B9F7B6A0();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1BA4A2B98();
  v32 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v30 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A2BF8();
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9FD969C(0, &qword_1EBBE9838, MEMORY[0x1E69E6F48]);
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = type metadata accessor for DataLoggingPluginViewModel();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9FD8FE0();
  v36 = v11;
  v15 = v37;
  sub_1BA4A8528();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v35;
  v42 = 0;
  *v14 = sub_1BA4A8188();
  v14[1] = v17;
  v37 = v17;
  v41 = 1;
  v18 = sub_1BA4A8188();
  v27 = v14;
  v14[2] = v18;
  v14[3] = v19;
  v40 = 2;
  sub_1B9F2080C(&qword_1EDC6AD58, MEMORY[0x1E69A32A0]);
  v25 = v8;
  v26 = 0;
  sub_1BA4A81C8();
  v24 = v12;
  (*(v31 + 32))(v14 + *(v12 + 24), v25, v6);
  v39 = 3;
  sub_1B9F2080C(&qword_1EDC6E1D8, MEMORY[0x1E69A3260]);
  v20 = v30;
  sub_1BA4A81C8();
  (*(v32 + 32))(v14 + *(v24 + 28), v20, v16);
  sub_1BA4A1728();
  v38 = 4;
  sub_1B9F2080C(&qword_1EDC6AE70, MEMORY[0x1E6969530]);
  v21 = v29;
  sub_1BA4A8178();
  v22 = v24;
  (*(v33 + 8))(v36, v34);
  sub_1B9FD84F0(v21, v14 + *(v22 + 32));
  sub_1B9FD9700(v14, v28, type metadata accessor for DataLoggingPluginViewModel);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B9FD9768(v14, type metadata accessor for DataLoggingPluginViewModel);
}

void sub_1B9FD969C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B9FD8FE0();
    v7 = a3(a1, &type metadata for DataLoggingPluginViewModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1B9FD9700(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B9FD9768(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9FD97C8(uint64_t a1)
{
  *(a1 + 16) = sub_1B9F2080C(&qword_1EBBE9840, type metadata accessor for DataLoggingPluginViewModel);
  result = sub_1B9F2080C(&qword_1EBBE9848, type metadata accessor for DataLoggingPluginViewModel);
  *(a1 + 24) = result;
  return result;
}

void sub_1B9FD98A4()
{
  sub_1BA4A2BF8();
  if (v0 <= 0x3F)
  {
    sub_1BA4A2B98();
    if (v1 <= 0x3F)
    {
      sub_1B9F7B6A0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1B9FD9974()
{
  result = qword_1EBBE9860;
  if (!qword_1EBBE9860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9860);
  }

  return result;
}

unint64_t sub_1B9FD99CC()
{
  result = qword_1EBBE9868;
  if (!qword_1EBBE9868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9868);
  }

  return result;
}

unint64_t sub_1B9FD9A24()
{
  result = qword_1EBBE9870;
  if (!qword_1EBBE9870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9870);
  }

  return result;
}

unint64_t sub_1B9FD9A7C()
{
  result = qword_1EBBE9878;
  if (!qword_1EBBE9878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9878);
  }

  return result;
}

uint64_t sub_1B9FD9AD0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001BA4E1DC0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6562614C77656976 && a2 == 0xE90000000000006CLL || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F634977656976 && a2 == 0xE800000000000000 || (sub_1BA4A8338() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000 || (sub_1BA4A8338() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x706D61537473616CLL && a2 == 0xEE0065746144656CLL)
  {

    return 4;
  }

  else
  {
    v5 = sub_1BA4A8338();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t EmptyHeaderItem.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EmptyHeaderItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t EmptyHeaderItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t EmptyHeaderItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

HealthExperienceUI::EmptyHeaderItem __swiftcall EmptyHeaderItem.init()()
{
  v1 = v0;
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[2] = 0xD000000000000021;
  v1[3] = 0x80000001BA4E1F20;
  v12 = 0xD000000000000010;
  v13 = 0x80000001BA4E1F50;
  sub_1BA4A1788();
  sub_1B9FD9EDC();
  v6 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v6);

  v7 = (*(v3 + 8))(v5, v2);
  v11 = v13;
  *v1 = v12;
  v1[1] = v11;
  result.reuseIdentifier._object = v10;
  result.reuseIdentifier._countAndFlagsBits = v9;
  result.uniqueIdentifier._object = v8;
  result.uniqueIdentifier._countAndFlagsBits = v7;
  return result;
}

unint64_t sub_1B9FD9EDC()
{
  result = qword_1EDC6AE60;
  if (!qword_1EDC6AE60)
  {
    sub_1BA4A1798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6AE60);
  }

  return result;
}

uint64_t static EmptyHeaderItem.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1BA4A8338(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1BA4A8338();
    }
  }

  return result;
}

uint64_t EmptyHeaderItem.hash(into:)()
{
  sub_1BA4A68C8();

  return sub_1BA4A68C8();
}

uint64_t EmptyHeaderItem.hashValue.getter()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  return sub_1BA4A84D8();
}

uint64_t _s18HealthExperienceUI33OrganDonationRegisteredDataSourceC10HeaderItemV9hashValueSivg_0()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  return sub_1BA4A84D8();
}

uint64_t _s18HealthExperienceUI33OrganDonationRegisteredDataSourceC10HeaderItemV4hash4intoys6HasherVz_tF_0()
{
  sub_1BA4A68C8();

  return sub_1BA4A68C8();
}

uint64_t sub_1B9FDA148()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  return sub_1BA4A84D8();
}

unint64_t sub_1B9FDA1B0()
{
  result = qword_1EDC68F60;
  if (!qword_1EDC68F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC68F60);
  }

  return result;
}

unint64_t sub_1B9FDA208()
{
  result = qword_1EBBE9880;
  if (!qword_1EBBE9880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9880);
  }

  return result;
}

uint64_t sub_1B9FDA25C(uint64_t a1)
{
  v2 = sub_1B9FDA3E4();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t _s18HealthExperienceUI33OrganDonationRegisteredDataSourceC10HeaderItemV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1BA4A8338(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1BA4A8338();
    }
  }

  return result;
}

uint64_t sub_1B9FDA34C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1B9FDA394(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1B9FDA3E4()
{
  result = qword_1EDC68F58;
  if (!qword_1EDC68F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC68F58);
  }

  return result;
}

unint64_t ArrayDataSourceSection.debugDescription.getter()
{
  v1 = *(v0 + 16);

  sub_1BA4A7DF8();

  sub_1B9F63F58(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v2 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v2);

  MEMORY[0x1BFAF1350](32, 0xE100000000000000);
  v3 = sub_1B9F32244();
  v4 = MEMORY[0x1BFAF1560](v1, v3);
  MEMORY[0x1BFAF1350](v4);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return 0xD000000000000019;
}

uint64_t ArrayDataSourceSection.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1B9FDA578(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 16) = v3;
  v4 = Array<A>.identifierToIndexDict()(v3);

  *(a2 + 24) = v4;
  return result;
}

uint64_t ArrayDataSourceSection.arrangedItems.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  v3 = Array<A>.identifierToIndexDict()(a1);

  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_1B9FDA63C(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *result;
    v3 = Array<A>.identifierToIndexDict()(*(*result + 16));

    *(v2 + 24) = v3;
  }

  return result;
}

uint64_t ArrayDataSourceSection.identifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ArrayDataSourceSection.init(title:arrangedItems:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;

  v13 = Array<A>.identifierToIndexDict()(v12);

  a6[3] = v13;
  a6[4] = a4;
  a6[5] = a5;
  return result;
}

uint64_t ArrayDataSourceSection.copyWith(newArrangedItems:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v8 = v2[4];
  v7 = v2[5];

  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);
  *a2 = v6;
  a2[1] = v5;
  a2[2] = a1;

  v10 = Array<A>.identifierToIndexDict()(v9);

  a2[3] = v10;
  a2[4] = v8;
  a2[5] = v7;
  return result;
}

unint64_t sub_1B9FDA81C(unsigned __int8 a1)
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  v2 = sub_1BA4A84D8();

  return sub_1B9FDAB88(a1, v2);
}

unint64_t sub_1B9FDA8E4(uint64_t a1)
{
  v2 = sub_1BA4A7D38();

  return sub_1B9FDAD18(a1, v2);
}

unint64_t sub_1B9FDA928(uint64_t a1)
{
  v2 = sub_1BA4A8478();

  return sub_1B9F28FD8(a1, v2);
}

unint64_t sub_1B9FDAA5C(uint64_t a1)
{
  sub_1BA4A35F8();
  sub_1B9F28EB8(&qword_1EDC6ACE8, MEMORY[0x1E69A2BC0]);
  v2 = sub_1BA4A6698();

  return sub_1B9FDAEAC(a1, v2);
}

unint64_t sub_1B9FDAB44(uint64_t a1)
{
  v2 = sub_1BA4A7788();

  return sub_1B9FDB06C(a1, v2);
}

unint64_t sub_1B9FDAB88(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xD000000000000012;
          v8 = 0x80000001BA4E14D0;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0xE700000000000000;
          v7 = 0x73657461647075;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE600000000000000;
            if (v7 != 0x737472656C61)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE600000000000000;
        v7 = 0x737472656C61;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0xD000000000000012;
      }

      else
      {
        v10 = 0x73657461647075;
      }

      if (v9 == 1)
      {
        v11 = 0x80000001BA4E14D0;
      }

      else
      {
        v11 = 0xE700000000000000;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_1BA4A8338();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_1B9FDAD18(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1B9FDC70C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1BFAF2780](v9, a1);
      sub_1B9FDC768(v9);
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

unint64_t sub_1B9FDADE0(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_1B9F0ADF8(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_1BA4A7798();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B9FDAEAC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1BA4A35F8();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1B9F28EB8(&qword_1EDC6ACE0, MEMORY[0x1E69A2BC0]);
      v16 = sub_1BA4A6728();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1B9FDB06C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1BA4A27B8();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1BA4A7798();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1B9FDB130(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1B9FDB178(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1B9FDB1F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B9FDC2DC();
    v3 = sub_1BA4A8098();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1B9FDA7CC(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1B9FDB2E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B9F24D7C(0, &unk_1EDC6E910);
    v3 = sub_1BA4A8098();

    for (i = (a1 + 48); ; i += 8)
    {
      v20 = v1;
      v5 = *(i - 2);
      v6 = *(i - 1);
      v8 = *i;
      v7 = i[1];
      v10 = i[2];
      v9 = i[3];
      v11 = i[4];
      v12 = i[5];

      result = sub_1B9F24A34(v5, v6);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = (v3[7] + 48 * result);
      *v16 = v8;
      v16[1] = v7;
      v16[2] = v10;
      v16[3] = v9;
      v16[4] = v11;
      v16[5] = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
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

unint64_t sub_1B9FDB444(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B9FDC85C();
    v3 = sub_1BA4A8098();

    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1B9FDA81C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
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

unint64_t sub_1B9FDB524(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x1E69E69B8];
    sub_1B9F24D7C(0, &qword_1EDC6B470);
    v4 = sub_1BA4A8098();
    v5 = a1 + 32;

    while (1)
    {
      sub_1B9F6C7B4(v5, v14, &qword_1EDC6B480, v3, sub_1B9FDC914);
      result = sub_1B9FDA8E4(v14);
      if (v7)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = v4[6] + 40 * result;
      v9 = v14[0];
      v10 = v14[1];
      *(v8 + 32) = v15;
      *v8 = v9;
      *(v8 + 16) = v10;
      result = sub_1B9F46920(&v16, (v4[7] + 32 * result));
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
      v5 += 72;
      if (!--v1)
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B9FDB688(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B9F24D7C(0, &unk_1EBBEE690);
    v3 = sub_1BA4A8098();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B9F24A34(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B9FDB798(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x1E69E6158];
    sub_1B9F24D7C(0, &qword_1EDC6E348);
    v4 = sub_1BA4A8098();
    v5 = a1 + 32;

    while (1)
    {
      sub_1B9F6C7B4(v5, &v14, &qword_1EDC6B690, v3, sub_1B9FDC914);
      v6 = v14;
      v7 = v15;
      result = sub_1B9F24A34(v14, v15);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v4[6] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      result = sub_1B9F46920(&v16, (v4[7] + 32 * result));
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
      v5 += 48;
      if (!--v1)
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B9FDB8F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B9FDCA18();
    v3 = sub_1BA4A8098();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B9F24A34(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B9FDBA1C(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    a2(0);
    v4 = sub_1BA4A8098();
    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v7 = *i;
      result = sub_1B9F1D2E0(v6);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + 8 * result) = v6;
      *(v4[7] + 8 * result) = v7;
      v10 = v4[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v4[2] = v12;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B9FDBAF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B9FDC3E0(0, &qword_1EBBE98C8, sub_1B9FDCAA4);
    v3 = sub_1BA4A8098();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B9F24A34(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B9FDBC20(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1B9FDC444(0, a2, a3);
    v5 = sub_1BA4A8098();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *i;
      v8 = *(i - 1);
      v9 = v7;
      result = sub_1B9F4E590(v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v9;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1B9FDBD0C(uint64_t a1)
{
  sub_1B9F6C824(0, &qword_1EDC6ACD0, MEMORY[0x1E69A2BC0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1B9FDC978();
    v8 = sub_1BA4A8098();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1B9F6C7B4(v10, v6, &qword_1EDC6ACD0, MEMORY[0x1E69A2BC0], sub_1B9F6C824);
      result = sub_1B9FDAA5C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1BA4A35F8();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_1B9F46920(&v6[v9], (v8[7] + 32 * v14));
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1B9FDBF1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B9FDC3E0(0, &qword_1EBBEE5D0, type metadata accessor for HKSharingReachabilityStatus);
    v3 = sub_1BA4A8098();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B9F24A34(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B9FDC028(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B9F36484();
    v3 = sub_1BA4A8098();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1B9F24A34(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1B9FDC120(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B9FDC20C();
    v3 = sub_1BA4A8098();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1B9F4E590(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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

void sub_1B9FDC20C()
{
  if (!qword_1EBBE9888)
  {
    type metadata accessor for HKFeatureAvailabilityContext(255);
    sub_1B9F63F58(255, &qword_1EBBEA690, &type metadata for FeatureRequirementEvaluation, MEMORY[0x1E69E62F8]);
    sub_1B9F28EB8(&qword_1EBBE9420, type metadata accessor for HKFeatureAvailabilityContext);
    v0 = sub_1BA4A80A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBE9888);
    }
  }
}

void sub_1B9FDC2DC()
{
  if (!qword_1EBBE9890)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6E920);
    sub_1B9F0ADF8(255, &qword_1EDC6E370);
    sub_1B9FDC378();
    v0 = sub_1BA4A80A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBE9890);
    }
  }
}

unint64_t sub_1B9FDC378()
{
  result = qword_1EDC5E578;
  if (!qword_1EDC5E578)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6E920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E578);
  }

  return result;
}

void sub_1B9FDC3E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A80A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9FDC444(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for Key(255);
    sub_1B9F0ADF8(255, a3);
    sub_1B9F28EB8(&qword_1EDC5E3D0, type metadata accessor for Key);
    v5 = sub_1BA4A80A8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B9FDC534()
{
  if (!qword_1EBBE98A0)
  {
    type metadata accessor for RBDisplayListRenderKey(255);
    sub_1B9F28EB8(&qword_1EBBE9410, type metadata accessor for RBDisplayListRenderKey);
    v0 = sub_1BA4A80A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBE98A0);
    }
  }
}

void sub_1B9FDC5D4()
{
  if (!qword_1EDC5DFA8)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    sub_1B9F28EB8(&unk_1EDC5E320, type metadata accessor for UIUserInterfaceSizeClass);
    v0 = sub_1BA4A80A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5DFA8);
    }
  }
}

void sub_1B9FDC670()
{
  if (!qword_1EBBE98B0)
  {
    type metadata accessor for HKWidthDesignation(255);
    sub_1B9F28EB8(&qword_1EDC5E478, type metadata accessor for HKWidthDesignation);
    v0 = sub_1BA4A80A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBE98B0);
    }
  }
}

void sub_1B9FDC7BC()
{
  if (!qword_1EDC5DFB8)
  {
    type metadata accessor for Key(255);
    sub_1B9F28EB8(&qword_1EDC5E3D0, type metadata accessor for Key);
    v0 = sub_1BA4A80A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5DFB8);
    }
  }
}

void sub_1B9FDC85C()
{
  if (!qword_1EDC5E010)
  {
    sub_1B9FDC8C0();
    v0 = sub_1BA4A80A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E010);
    }
  }
}

unint64_t sub_1B9FDC8C0()
{
  result = qword_1EDC63C98;
  if (!qword_1EDC63C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC63C98);
  }

  return result;
}

void sub_1B9FDC914(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1B9FDC978()
{
  if (!qword_1EDC5E018)
  {
    sub_1BA4A35F8();
    sub_1B9F28EB8(&qword_1EDC6ACE8, MEMORY[0x1E69A2BC0]);
    v0 = sub_1BA4A80A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E018);
    }
  }
}

void sub_1B9FDCA18()
{
  if (!qword_1EBBE98B8)
  {
    sub_1B9F63F58(255, &qword_1EBBE98C0, &type metadata for ConfirmDetailsSection.Row.CorrelatedItem, MEMORY[0x1E69E62F8]);
    v0 = sub_1BA4A80A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBE98B8);
    }
  }
}

void sub_1B9FDCAA4()
{
  if (!qword_1EBBE98D0)
  {
    sub_1B9FDCAFC();
    v0 = sub_1BA4A6BF8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBE98D0);
    }
  }
}

void sub_1B9FDCAFC()
{
  if (!qword_1EBBE98D8)
  {
    v0 = type metadata accessor for DataSourceSectionTransaction();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBE98D8);
    }
  }
}

void *sub_1B9FDCB74()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B9FDCBC0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1B9FDCC78()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_recreateViewControllerOnHostedFeedItemChange;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B9FDCCBC(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_recreateViewControllerOnHostedFeedItemChange;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B9FDCD6C(uint64_t a1, void **a2)
{
  sub_1B9F68124(a1, v7);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v7, v3 + v4);
  v5 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x110))(v5);
  return sub_1B9F43AAC(v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t (*sub_1B9FDCE44(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1B9FDCEA8;
}

uint64_t sub_1B9FDCEA8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x110))(result);
  }

  return result;
}

uint64_t sub_1B9FDCF14(uint64_t a1, uint64_t *a2)
{
  sub_1B9F35130();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13[-v8];
  sub_1B9F75B30(a1, &v13[-v8]);
  v10 = *a2;
  v11 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_sectionContext;
  swift_beginAccess();
  sub_1B9F75B30(v10 + v11, v6);
  swift_beginAccess();
  sub_1B9F75CCC(v9, v10 + v11);
  swift_endAccess();
  sub_1B9F75D30(v6);
  sub_1B9F76220(v6, sub_1B9F35130);
  return sub_1B9F76220(v9, sub_1B9F35130);
}

void (*sub_1B9FDD04C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1B9F35130();
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v7);
    v5[11] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_sectionContext;
  v5[12] = v8;
  v5[13] = v10;
  swift_beginAccess();
  sub_1B9F75B30(v1 + v10, v9);
  return sub_1B9FDD160;
}

void sub_1B9FDD160(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_1B9F75B30(*(*a1 + 96), v6);
    sub_1B9F75B30(v7 + v4, v5);
    swift_beginAccess();
    sub_1B9F75CCC(v6, v7 + v4);
    swift_endAccess();
    sub_1B9F75D30(v5);
    sub_1B9F76220(v5, sub_1B9F35130);
  }

  else
  {
    sub_1B9F75B30(v7 + v4, v6);
    swift_beginAccess();
    sub_1B9F75CCC(v3, v7 + v4);
    swift_endAccess();
    sub_1B9F75D30(v6);
  }

  sub_1B9F76220(v6, sub_1B9F35130);
  sub_1B9F76220(v3, sub_1B9F35130);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

id HostViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void sub_1B9FDD300()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for HostViewCell(0);
  objc_msgSendSuper2(&v12, sel_prepareForReuse);
  v1 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = v2 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable;
    swift_beginAccess();
    v4 = *v3;
    if (*v3)
    {
      v5 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 16);
      v8 = v4;
      v9 = v7(ObjectType, v5);

      if (v9)
      {
        v10 = swift_getObjectType();
        v11 = swift_conformsToProtocol2();
        if (v11)
        {
          (*(v11 + 8))(v10, v11);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1B9FDD47C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v2 + v0, v11);
  if (!v11[3])
  {
    goto LABEL_8;
  }

  sub_1B9F0D9AC(0, &qword_1EDC6E1B0);
  sub_1BA4A27B8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    sub_1BA4A7DF8();

    sub_1B9F68124(v2 + v1, v11);
    sub_1B9F0CE40(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v9 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v9);

    sub_1BA4A8018();
    __break(1u);
    return;
  }

  v3 = objc_allocWithZone(type metadata accessor for InternalFeedItemDetailViewController());
  v2 = v10;
  v4 = sub_1BA051E40(v2);
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  v6 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView;
  swift_beginAccess();
  v1 = *(v1 + v6);
  if (!v1)
  {
    __break(1u);
LABEL_8:
    sub_1B9F43AAC(v11, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    goto LABEL_9;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [Strong presentViewController:v5 animated:1 completion:0];
  }
}

uint64_t (*sub_1B9FDD820(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView;
  *(v3 + 104) = v1;
  *(v3 + 112) = v5;
  result = swift_beginAccess();
  if (*(v1 + v5))
  {
    swift_beginAccess();
    *(v4 + 96) = swift_unknownObjectWeakLoadStrong();
    return sub_1B9FDD8E4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B9FDD900(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for HostViewCell(0);
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  sub_1B9FDD96C();
}

void sub_1B9FDD96C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (!v2)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v3 = v2 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable;
  swift_beginAccess();
  v4 = *v3;
  if (!*v3)
  {
    return;
  }

  v5 = *(v3 + 8);
  v46 = *v3;
  v47 = v5;
  sub_1B9F0D9AC(0, qword_1EDC6B7C0);
  sub_1B9F0D9AC(0, qword_1EDC6CC28);
  v6 = v4;
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(&v43, &v37);
    v7 = v40;
    v8 = v41;
    __swift_project_boxed_opaque_existential_1(&v37, v40);
    if ((*(v8 + 1))(v7, v8))
    {
LABEL_12:

      __swift_destroy_boxed_opaque_existential_1(&v37);
      return;
    }

    __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    sub_1B9F43AAC(&v43, &qword_1EDC6CC20, qword_1EDC6CC28);
  }

  if ([v0 isHighlighted])
  {
    v9 = 1;
  }

  else
  {
    v9 = [v0 isSelected];
  }

  v46 = v6;
  v47 = v5;
  sub_1B9F0D9AC(0, &qword_1EDC6CD00);
  v6 = v6;
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(&v43, &v37);
    v10 = v40;
    v11 = v41;
    __swift_project_boxed_opaque_existential_1(&v37, v40);
    (*(v11 + 1))(v9, v9 ^ 1, v10, v11);
    goto LABEL_12;
  }

  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1B9F43AAC(&v43, &qword_1EDC6CCF8, &qword_1EDC6CD00);
  v12 = *&v0[v1];
  if (!v12)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v13 = [v12 viewController];
  if (v13)
  {
    v14 = v0;
    v15 = v13;
    v16 = [v13 traitCollection];

    sub_1B9F3AEE8();
    sub_1BA4A7358();

    v17 = v37;
    type metadata accessor for BrowseTileViewController();
    if (swift_dynamicCastClass())
    {
      ObjectType = swift_getObjectType();
      v19 = (*(v5 + 24))(ObjectType, v5);
      if (v9)
      {
LABEL_17:
        if ((v17 - 6) < 2)
        {
          v31 = objc_opt_self();
          v32 = [v31 systemGray5Color];
          v33 = [v31 tertiarySystemGroupedBackgroundColor];
          v34 = swift_allocObject();
          v34[2] = 0;
          v34[3] = v33;
          v34[4] = 0;
          v34[5] = v32;
          v24 = objc_allocWithZone(MEMORY[0x1E69DC888]);
          v41 = sub_1B9FD7F54;
          v42 = v34;
          v37 = MEMORY[0x1E69E9820];
          v38 = 1107296256;
          v25 = &block_descriptor_1;
          goto LABEL_28;
        }

        if (v17 == 4 || v17 == 12)
        {
          v20 = objc_opt_self();
          v21 = [v20 systemGray5Color];
          v22 = [v20 systemGray4Color];
          v23 = swift_allocObject();
          v23[2] = 0;
          v23[3] = v22;
          v23[4] = 0;
          v23[5] = v21;
          v24 = objc_allocWithZone(MEMORY[0x1E69DC888]);
          v41 = sub_1B9FE1088;
          v42 = v23;
          v37 = MEMORY[0x1E69E9820];
          v38 = 1107296256;
          v25 = &block_descriptor_33;
LABEL_28:
          v39 = sub_1B9F7EBBC;
          v40 = v25;
          v35 = _Block_copy(&v37);
          v36 = [v24 initWithDynamicProvider_];
          _Block_release(v35);

LABEL_32:
          [v19 setBackgroundColor_];

          goto LABEL_33;
        }

        v30 = [objc_opt_self() systemGray5Color];
LABEL_31:
        v36 = v30;
        goto LABEL_32;
      }

LABEL_25:
      if ((v17 | 8) == 0xC)
      {
        v30 = [objc_opt_self() tertiarySystemBackgroundColor];
      }

      else
      {
        v30 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
      }

      goto LABEL_31;
    }

    v26 = [v14 contentView];
    v27 = [v26 subviews];

    sub_1B9F0ADF8(0, &qword_1EDC6B4A0);
    v28 = sub_1BA4A6B08();

    if ((v28 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x1BFAF2860](0, v28);
LABEL_24:
      v19 = v29;

      if (v9)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }

    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v29 = *(v28 + 32);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_33:
}

uint64_t sub_1B9FDDFB0(uint64_t a1, uint64_t a2)
{
  sub_1B9FDE130();
  v5 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  if (v7)
  {
    v8 = v7 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable;
    swift_beginAccess();
    v9 = *v8;
    if (*v8 && (v10 = *(v8 + 8), v17[0] = *v8, v17[1] = v10, sub_1B9F0D9AC(0, qword_1EDC6B7C0), sub_1B9F0D9AC(0, &qword_1EDC6CCF0), v11 = v9, (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v15 + 1))
      {
        sub_1B9F1134C(&v14, v17);
        v12 = v18;
        v13 = v19;
        __swift_project_boxed_opaque_existential_1(v17, v18);
        (*(v13 + 16))(a1, a2, v12, v13);
        return __swift_destroy_boxed_opaque_existential_1(v17);
      }
    }

    else
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
    }

    return sub_1B9F43AAC(&v14, qword_1EDC67B40, &qword_1EDC6CCF0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B9FDE130()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v24 - v6;
  v8 = sub_1BA4A1C68();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v12, v25);
  if (v25[3])
  {
    sub_1B9F0D9AC(0, &qword_1EDC6E1B0);
    sub_1BA4A27B8();
    if (swift_dynamicCast())
    {
      v13 = v24[1];
      if (UIResponder.resolvedPersonalizedFeedTrainer()())
      {
        if (qword_1EDC6CB58 != -1)
        {
          swift_once();
        }

        v14 = off_1EDC6CB60;
        sub_1BA4A26B8();
        LOBYTE(v14) = sub_1BA3D2E98(v11, v14);
        (*(v9 + 8))(v11, v8);
        if (v14)
        {
          sub_1BA3C0D3C(v13);
        }
      }

      else
      {
        sub_1BA4A3DB8();
        v20 = sub_1BA4A3E88();
        v21 = sub_1BA4A6F98();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v25[0] = v23;
          *v22 = 136315138;
          *(v22 + 4) = sub_1B9F0B82C(0x7765695674736F48, 0xEC0000006C6C6543, v25);
          _os_log_impl(&dword_1B9F07000, v20, v21, "[%s]: Unable to resolve PersonalizedFeedTrainer; cannot submit feedback", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v23);
          MEMORY[0x1BFAF43A0](v23, -1, -1);
          MEMORY[0x1BFAF43A0](v22, -1, -1);
        }

        return (*(v2 + 8))(v7, v1);
      }
    }
  }

  else
  {
    sub_1B9F43AAC(v25, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  }

  sub_1BA4A3DB8();
  v16 = sub_1BA4A3E88();
  v17 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1B9F0B82C(0x7765695674736F48, 0xEC0000006C6C6543, v25);
    _os_log_impl(&dword_1B9F07000, v16, v17, "[%s]: SectionedItem is not a feed item, only submit training on feed items", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1BFAF43A0](v19, -1, -1);
    MEMORY[0x1BFAF43A0](v18, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1B9FDE584()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3)
  {
    v4 = v3 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable;
    swift_beginAccess();
    v5 = *v4;
    if (*v4 && (v6 = *(v4 + 8), v14[0] = *v4, v14[1] = v6, sub_1B9F0D9AC(0, qword_1EDC6B7C0), sub_1B9F0D9AC(0, &qword_1EBBE9900), v7 = v5, (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v12 + 1))
      {
        sub_1B9F1134C(&v11, v14);
        v8 = v15;
        v9 = v16;
        __swift_project_boxed_opaque_existential_1(v14, v15);
        v10 = (*(v9 + 8))(v8, v9);
        __swift_destroy_boxed_opaque_existential_1(v14);
        return v10;
      }
    }

    else
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
    }

    sub_1B9F43AAC(&v11, &qword_1EBBE98F8, &qword_1EBBE9900);
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B9FDE6F4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3)
  {
    v4 = v3 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable;
    swift_beginAccess();
    v5 = *v4;
    if (*v4 && (v6 = *(v4 + 8), v14[0] = *v4, v14[1] = v6, sub_1B9F0D9AC(0, qword_1EDC6B7C0), sub_1B9F0D9AC(0, &qword_1EBBE9900), v7 = v5, (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v12 + 1))
      {
        sub_1B9F1134C(&v11, v14);
        v8 = v15;
        v9 = v16;
        __swift_project_boxed_opaque_existential_1(v14, v15);
        v10 = (*(v9 + 16))(v8, v9);
        __swift_destroy_boxed_opaque_existential_1(v14);
        return v10;
      }
    }

    else
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
    }

    sub_1B9F43AAC(&v11, &qword_1EBBE98F8, &qword_1EBBE9900);
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B9FDE864()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3)
  {
    v4 = v3 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable;
    swift_beginAccess();
    v5 = *v4;
    if (*v4 && (v6 = *(v4 + 8), v14[0] = *v4, v14[1] = v6, sub_1B9F0D9AC(0, qword_1EDC6B7C0), sub_1B9F0D9AC(0, &qword_1EBBE9910), v7 = v5, (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v12 + 1))
      {
        sub_1B9F1134C(&v11, v14);
        v8 = v15;
        v9 = v16;
        __swift_project_boxed_opaque_existential_1(v14, v15);
        v10 = (*(v9 + 8))(v8, v9);
        __swift_destroy_boxed_opaque_existential_1(v14);
        return v10;
      }
    }

    else
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
    }

    sub_1B9F43AAC(&v11, &qword_1EBBE9908, &qword_1EBBE9910);
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B9FDE9D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  if (v7)
  {
    v8 = (v7 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable);
    swift_beginAccess();
    v9 = *v8;
    if (*v8 && (sub_1B9F0D9AC(0, qword_1EDC6B7C0), sub_1B9F0D9AC(0, &qword_1EDC6CCF0), v10 = v9, (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v14 + 1))
      {
        sub_1B9F1134C(&v13, v16);
        v11 = v17;
        v12 = v18;
        __swift_project_boxed_opaque_existential_1(v16, v17);
        (*(v12 + 24))(a1, v11, v12);
        return __swift_destroy_boxed_opaque_existential_1(v16);
      }
    }

    else
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
    }

    result = sub_1B9F43AAC(&v13, qword_1EDC67B40, &qword_1EDC6CCF0);
    *a2 = 2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_1B9FDEBA4(uint64_t **a1))()
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
  v2[4] = sub_1B9FDD04C(v2);
  return sub_1B9FCF2C4;
}

uint64_t (*sub_1B9FDEC20(uint64_t **a1))()
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
  v2[4] = sub_1B9FDD820(v2);
  return sub_1B9FCDCF4;
}

void sub_1B9FDEDA0(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

void *sub_1B9FDEDFC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI17HostViewTableCell_hostView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B9FDEE48(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI17HostViewTableCell_hostView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1B9FDEF00()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI17HostViewTableCell_recreateViewControllerOnHostedFeedItemChange;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B9FDEF44(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI17HostViewTableCell_recreateViewControllerOnHostedFeedItemChange;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B9FDEFF4(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI17HostViewTableCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1B9FDFD30();
  return sub_1B9F43AAC(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t sub_1B9FDF088@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1B9F68124(v2 + v4, a2);
}

uint64_t sub_1B9FDF0DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI17HostViewTableCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1B9FDFD30();
  return sub_1B9F43AAC(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t (*sub_1B9FDF160(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1B9FDF1C4;
}

uint64_t sub_1B9FDF1DC(uint64_t a1, uint64_t *a2)
{
  sub_1B9F35130();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F75B30(a1, v6);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI17HostViewTableCell_sectionContext;
  swift_beginAccess();
  sub_1B9F75CCC(v6, v7 + v8);
  swift_endAccess();
  sub_1B9FDFFB0();
  return sub_1B9F76220(v6, sub_1B9F35130);
}

uint64_t sub_1B9FDF2C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1B9F75B30(v2 + v4, a2);
}

uint64_t sub_1B9FDF314(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI17HostViewTableCell_sectionContext;
  swift_beginAccess();
  sub_1B9F75CCC(a1, v1 + v3);
  swift_endAccess();
  sub_1B9FDFFB0();
  return sub_1B9F76220(a1, sub_1B9F35130);
}

uint64_t (*sub_1B9FDF394(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1B9FDF3F8;
}

uint64_t sub_1B9FDF410(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id HostViewTableCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

void *HostViewTableCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI17HostViewTableCell_hostView] = 0;
  v3[OBJC_IVAR____TtC18HealthExperienceUI17HostViewTableCell_recreateViewControllerOnHostedFeedItemChange] = 1;
  v6 = &v3[OBJC_IVAR____TtC18HealthExperienceUI17HostViewTableCell_item];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI17HostViewTableCell_sectionContext;
  v8 = type metadata accessor for SectionContext(0);
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  if (a3)
  {
    v9 = sub_1BA4A6758();
  }

  else
  {
    v9 = 0;
  }

  v18.receiver = v3;
  v18.super_class = type metadata accessor for HostViewTableCell(0);
  v10 = objc_msgSendSuper2(&v18, sel_initWithStyle_reuseIdentifier_, a1, v9);

  v11 = *((*MEMORY[0x1E69E7D40] & *v10) + 0xD8);
  v12 = v10;
  v13 = v11();
  v14 = OBJC_IVAR____TtC18HealthExperienceUI17HostViewTableCell_hostView;
  swift_beginAccess();
  v15 = *(v12 + v14);
  *(v12 + v14) = v13;

  result = [v12 contentView];
  if (*(v12 + v14))
  {
    v17 = result;
    [result addSubview_];

    sub_1B9FDF93C();
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HostViewTableCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void *HostViewTableCell.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI17HostViewTableCell_hostView] = 0;
  v1[OBJC_IVAR____TtC18HealthExperienceUI17HostViewTableCell_recreateViewControllerOnHostedFeedItemChange] = 1;
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI17HostViewTableCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI17HostViewTableCell_sectionContext;
  v5 = type metadata accessor for SectionContext(0);
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v15.receiver = v1;
  v15.super_class = type metadata accessor for HostViewTableCell(0);
  v6 = objc_msgSendSuper2(&v15, sel_initWithCoder_, a1);
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v8 = *((*MEMORY[0x1E69E7D40] & *v6) + 0xD8);
  v9 = v6;
  v10 = v8();
  v11 = OBJC_IVAR____TtC18HealthExperienceUI17HostViewTableCell_hostView;
  swift_beginAccess();
  v12 = *(v9 + v11);
  *(v9 + v11) = v10;

  result = [v9 contentView];
  if (*(v9 + v11))
  {
    v14 = result;
    [result addSubview_];

    sub_1B9FDF93C();
LABEL_4:

    return v7;
  }

  __break(1u);
  return result;
}

id sub_1B9FDF8C4()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = objc_allocWithZone(type metadata accessor for HostView());

  return [v9 initWithFrame_];
}

uint64_t sub_1B9FDF948@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  if (*(v4 + v5))
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B9FDF9CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *a5;
  swift_beginAccess();
  v7 = *(v5 + v6);
  if (v7)
  {
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v8 = v7;
    sub_1B9F67948();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B9FDFA6C(uint64_t *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  if (*(v1 + v2))
  {
    swift_beginAccess();
    return swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B9FDFAE8(void *a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5)
  {
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v6 = v5;
    sub_1B9F67948();
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1B9FDFB7C(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI17HostViewTableCell_hostView;
  *(v3 + 104) = v1;
  *(v3 + 112) = v5;
  result = swift_beginAccess();
  if (*(v1 + v5))
  {
    swift_beginAccess();
    *(v4 + 96) = swift_unknownObjectWeakLoadStrong();
    return sub_1B9FE1094;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B9FDFC40(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*(*a1 + 104) + *(*a1 + 112));
  if ((a2 & 1) == 0)
  {
    if (v3)
    {
      v8 = v2[12];
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      v7 = v3;
      sub_1B9F67948();

      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v2[12];
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5 = v4;
  v6 = v3;
  sub_1B9F67948();

  v7 = v2[12];
LABEL_6:

  free(v2);
}

void sub_1B9FDFD30()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI17HostViewTableCell_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v1, v15);
  if (!v15[3])
  {
    goto LABEL_8;
  }

  sub_1B9F0D9AC(0, &qword_1EDC6E1B0);
  sub_1BA4A27B8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_1BA4A7DF8();

    sub_1B9F68124(v0 + v1, v15);
    sub_1B9F0CE40(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v13 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v13);

    sub_1BA4A8018();
    __break(1u);
    return;
  }

  v1 = OBJC_IVAR____TtC18HealthExperienceUI17HostViewTableCell_hostView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    __break(1u);
LABEL_8:
    sub_1B9F43AAC(v15, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    goto LABEL_9;
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI17HostViewTableCell_recreateViewControllerOnHostedFeedItemChange;
  swift_beginAccess();
  v2[OBJC_IVAR____TtC18HealthExperienceUI8HostView_recreateViewControllerOnHostedFeedItemChange] = *(v0 + v3);
  v4 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedFeedItem;
  swift_beginAccess();
  v5 = *&v2[v4];
  *&v2[v4] = v14;
  v6 = v14;
  v7 = v2;
  sub_1B9F681A0(v5);

  v8 = [v6 baseAutomationIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v12 = v11;

    sub_1B9FE02E8(v10, v12);
  }
}

uint64_t sub_1B9FDFFB0()
{
  sub_1B9F35130();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI17HostViewTableCell_hostView;
  result = swift_beginAccess();
  v12 = *(v0 + v10);
  if (v12)
  {
    v13 = OBJC_IVAR____TtC18HealthExperienceUI17HostViewTableCell_sectionContext;
    swift_beginAccess();
    sub_1B9F75B30(v0 + v13, v9);
    v14 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_sectionContext;
    swift_beginAccess();
    v15 = v12;
    sub_1B9F75CCC(v9, v12 + v14);
    swift_endAccess();
    v16 = (v15 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable);
    swift_beginAccess();
    v17 = *v16;
    if (!*v16)
    {

      return sub_1B9F76220(v9, sub_1B9F35130);
    }

    sub_1B9F75B30(v12 + v14, v6);
    ObjectType = swift_getObjectType();
    v19 = swift_conformsToProtocol2();
    v26 = v6;
    if (v19)
    {
      v20 = v19;
      sub_1B9F75B30(v6, v3);
      v25 = *(v20 + 16);
      v21 = v17;
      v25(v3, ObjectType, v20);
      v22 = HAFeatureFlagViewLoggingEnabled();
      if (!v22)
      {
LABEL_6:
        (*((*MEMORY[0x1E69E7D40] & *v15) + 0x130))(v22);

        sub_1B9F76220(v26, sub_1B9F35130);
        return sub_1B9F76220(v9, sub_1B9F35130);
      }
    }

    else
    {
      v23 = v17;
      v22 = HAFeatureFlagViewLoggingEnabled();
      if (!v22)
      {
        goto LABEL_6;
      }
    }

    v22 = sub_1BA20775C(v15, v17);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id sub_1B9FE030C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B9FE03F4@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1B9F68124(v2 + v4, a2);
}

uint64_t sub_1B9FE0454@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1B9F75B30(v2 + v4, a2);
}

uint64_t sub_1B9FE04B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  result = swift_beginAccess();
  if (*(v3 + v4))
  {
    swift_beginAccess();
    return swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_1B9FE0530(uint64_t **a1))()
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
  v2[4] = sub_1B9FDFB7C(v2);
  return sub_1B9FCF2C4;
}

id keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t keypath_get_1Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_2Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t keypath_get_3Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_1B9F68124(v4 + v5, a3);
}

uint64_t keypath_get_5Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_1B9F75B30(v4 + v5, a3);
}

uint64_t sub_1B9FE1020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static ProfileGradientsProviderFactory.sharedFactory.getter()
{
  type metadata accessor for ProfileGradientsProviderFactory();

  return swift_initStaticObject();
}

char *sub_1B9FE10EC(void *a1, void *a2)
{
  v58 = a2;
  v3 = sub_1BA4A3EA8();
  *&v57 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0C974(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v57 - v8;
  v10 = [a1 profileIdentifier];
  v11 = [v10 type];

  if ((v11 - 1) >= 2)
  {
    v28 = v58;
    if (v11 == 3)
    {
      sub_1BA4A27B8();
      sub_1B9F0C974(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
      v29 = sub_1BA4A1C68();
      v30 = *(v29 - 8);
      v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v32 = swift_allocObject();
      v57 = xmmword_1BA4B5480;
      *(v32 + 16) = xmmword_1BA4B5480;
      (*(v30 + 104))(v32 + v31, *MEMORY[0x1E69A3BB0], v29);
      v33 = sub_1BA4A0FA8();
      (*(*(v33 - 8) + 56))(v9, 1, 1, v33);
      v34 = MEMORY[0x1E69E6F90];
      sub_1B9F1C094(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58], MEMORY[0x1E69E6F90]);
      v35 = swift_allocObject();
      *(v35 + 16) = v57;
      *(v35 + 32) = sub_1BA4A6F38();
      v36 = MEMORY[0x1BFAED020](v32, 0, v9, v35);

      sub_1B9F1C1B0(v9);
      sub_1B9F1C094(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, v34);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1BA4B5470;
      *(v37 + 32) = v36;
      sub_1B9F0ADF8(0, &qword_1EDC6B630);
      v38 = v36;
      v39 = sub_1BA4A6AE8();

      v40 = [objc_opt_self() andPredicateWithSubpredicates_];

      v41 = objc_allocWithZone(type metadata accessor for SummarySharingProfileGradientsProvider());
      v42 = v40;
      v27 = sub_1BA26BC68(v28, v42);
    }

    else
    {
      sub_1BA4A3E28();
      v43 = a1;
      v44 = sub_1BA4A3E88();
      v45 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v60 = v58;
        *v46 = 136315394;
        v47 = sub_1BA4A85D8();
        v49 = sub_1B9F0B82C(v47, v48, &v60);

        *(v46 + 4) = v49;
        *(v46 + 12) = 2080;
        v50 = [v43 profileIdentifier];
        v51 = [v50 type];

        v59 = v51;
        type metadata accessor for HKProfileType(0);
        v52 = sub_1BA4A6808();
        v54 = sub_1B9F0B82C(v52, v53, &v60);

        *(v46 + 14) = v54;
        _os_log_impl(&dword_1B9F07000, v44, v45, "%s Unsupported profile type %s for ProfileGradientsProvider", v46, 0x16u);
        v55 = v58;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v55, -1, -1);
        MEMORY[0x1BFAF43A0](v46, -1, -1);
      }

      (*(v57 + 8))(v5, v3);
      return [objc_allocWithZone(type metadata accessor for DefaultProfileGradientsProvider()) init];
    }
  }

  else
  {
    sub_1BA4A27B8();
    sub_1B9F0C974(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
    v12 = sub_1BA4A1C68();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    v57 = xmmword_1BA4B5480;
    *(v15 + 16) = xmmword_1BA4B5480;
    (*(v13 + 104))(v15 + v14, *MEMORY[0x1E69A3B68], v12);
    sub_1BA4A2178();
    v16 = sub_1BA4A0FA8();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    v17 = MEMORY[0x1E69E6F90];
    sub_1B9F1C094(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58], MEMORY[0x1E69E6F90]);
    v18 = swift_allocObject();
    *(v18 + 16) = v57;
    *(v18 + 32) = sub_1BA4A6F38();
    v19 = sub_1BA4A25F8();

    sub_1B9F1C1B0(v9);
    sub_1B9F1C094(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, v17);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1BA4B5470;
    *(v20 + 32) = v19;
    v60 = v20;
    v21 = v19;

    sub_1B9F33850(v22, sub_1B9F33960);
    sub_1B9F0ADF8(0, &qword_1EDC6B630);
    v23 = sub_1BA4A6AE8();

    v24 = [objc_opt_self() andPredicateWithSubpredicates_];

    objc_allocWithZone(type metadata accessor for SummarySharingProfileGradientsProvider());
    v25 = v58;
    v26 = v24;
    v27 = sub_1BA26BC68(v25, v26);
  }

  return v27;
}

id DefaultProfileGradientsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_1B9FE19E8(uint64_t a1, void *a2)
{
  v35 = *v2;
  v5 = sub_1BA4A1798();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = sub_1BA4A3EA8();
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E28();
  v36 = *(v6 + 16);
  v36(v10, a1, v5);
  v14 = sub_1BA4A3E88();
  v15 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = a2;
    v17 = v16;
    v33 = swift_slowAlloc();
    v40 = v33;
    *v17 = 136315394;
    v18 = sub_1BA4A85D8();
    v20 = sub_1B9F0B82C(v18, v19, &v40);
    v35 = a1;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = sub_1BA4A1748();
    v24 = v23;
    (*(v6 + 8))(v10, v5);
    v25 = sub_1B9F0B82C(v22, v24, &v40);
    a1 = v35;

    *(v17 + 14) = v25;
    _os_log_impl(&dword_1B9F07000, v14, v15, "[%s] Creating gradient provider for sharing entry with uuid: %s", v17, 0x16u);
    v26 = v33;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v26, -1, -1);
    v27 = v17;
    a2 = v34;
    MEMORY[0x1BFAF43A0](v27, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v10, v5);
  }

  (*(v37 + 8))(v13, v38);
  v28 = v39;
  v36(v39, a1, v5);
  v29 = objc_allocWithZone(type metadata accessor for PendingSummarySharingProfileGradientProvider());
  v30 = a2;
  v31 = sub_1BA39DD2C(v28, v30);

  return v31;
}

id DefaultProfileGradientsProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultProfileGradientsProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DefaultProfileGradientsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultProfileGradientsProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B9FE1E9C(uint64_t result, uint64_t (*a2)(void), unint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1B9F0D9AC(0, a3);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, v4);
  v12 = v10 + v4;
  if (!v11)
  {
    *(v5 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1B9FE1FC4(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1BA27EFDC(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B9FE20B8(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1B9F1E00C(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1B9F0D9AC(0, &qword_1EDC67F10);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1B9FE21C4(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1BA27F15C(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1B9F7B6F8();
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1B9FE22C0(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1BA27F2BC(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for ActivityType(0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B9FE242C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1BA27F5FC(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B9FE2518(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1BA27F834(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B9FE2624(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1BA4A7CC8();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1BA4A7CC8();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1B9F2A6B4(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1B9FE271C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1BA27EE34(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B9FE2810(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = sub_1BA4A7E38();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1B9FE4218(0, &qword_1EDC5E588, &qword_1EDC6E920, 0x1E696C2E0, MEMORY[0x1E69E6720]);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1B9FE2990(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1B9FE2B04(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BA4A7CC8();
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
      result = sub_1BA4A7CC8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B9FE4218(0, &qword_1EBBE9A40, &qword_1EDC6B5D0, 0x1E69DD258, MEMORY[0x1E69E62F8]);
          sub_1B9FE43C8(&qword_1EBBE9A48, &qword_1EBBE9A40, &qword_1EDC6B5D0, 0x1E69DD258);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1BA0CA818(v13, i, a3);
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
        sub_1B9F0ADF8(0, &qword_1EDC6B5D0);
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

uint64_t sub_1B9FE2CCC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BA4A7CC8();
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
      result = sub_1BA4A7CC8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B9F1C094(0, &qword_1EBBE9998, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E62F8]);
          sub_1B9FE4348();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1BA0CADC4(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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

uint64_t sub_1B9FE2E5C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BA4A7CC8();
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
      result = sub_1BA4A7CC8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B9FE4218(0, &qword_1EBBE9948, &qword_1EBBE9940, 0x1E69DC648, MEMORY[0x1E69E62F8]);
          sub_1B9FE43C8(&unk_1EBBE9950, &qword_1EBBE9948, &qword_1EBBE9940, 0x1E69DC648);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1BA0CA818(v13, i, a3);
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
        sub_1B9F0ADF8(0, &qword_1EBBE9940);
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

uint64_t sub_1B9FE3024(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BA4A7CC8();
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
      result = sub_1BA4A7CC8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B9F0C974(0, &qword_1EBBE9988, type metadata accessor for SummarySharingSelectedDataTypesDataSource, MEMORY[0x1E69E62F8]);
          sub_1B9FE42E4(&qword_1EBBE9990, &qword_1EBBE9988, type metadata accessor for SummarySharingSelectedDataTypesDataSource);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1BA0CAE44(v13, i, a3);
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
        type metadata accessor for SummarySharingSelectedDataTypesDataSource();
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

uint64_t sub_1B9FE31D8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BA4A7CC8();
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
      result = sub_1BA4A7CC8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B9FE4218(0, &qword_1EBBE9A50, &qword_1EDC5E288, 0x1E69A4138, MEMORY[0x1E69E62F8]);
          sub_1B9FE43C8(&unk_1EBBE9A58, &qword_1EBBE9A50, &qword_1EDC5E288, 0x1E69A4138);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1BA0CA818(v13, i, a3);
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
        sub_1B9F0ADF8(0, &qword_1EDC5E288);
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

uint64_t sub_1B9FE33A0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BA4A7CC8();
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
      result = sub_1BA4A7CC8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B9F0C974(0, &qword_1EBBE9960, sub_1B9FE4280, MEMORY[0x1E69E62F8]);
          sub_1B9FE42E4(&qword_1EBBE9968, &qword_1EBBE9960, sub_1B9FE4280);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1BA0CAECC(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        sub_1B9FE4280();
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

uint64_t sub_1B9FE3554(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BA4A7CC8();
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
      result = sub_1BA4A7CC8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B9FE4218(0, &unk_1EDC5E620, &qword_1EDC5E1C0, 0x1E696C3A8, MEMORY[0x1E69E62F8]);
          sub_1B9FE43C8(&unk_1EBBE9A18, &unk_1EDC5E620, &qword_1EDC5E1C0, 0x1E696C3A8);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1BA0CA818(v13, i, a3);
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
        sub_1B9F0ADF8(0, &qword_1EDC5E1C0);
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

uint64_t sub_1B9FE371C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BA4A7CC8();
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
      result = sub_1BA4A7CC8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B9FE4218(0, &qword_1EBBE9978, &qword_1EBBE9970, 0x1E6996408, MEMORY[0x1E69E62F8]);
          sub_1B9FE43C8(&qword_1EBBE9980, &qword_1EBBE9978, &qword_1EBBE9970, 0x1E6996408);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1BA0CA818(v13, i, a3);
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
        sub_1B9F0ADF8(0, &qword_1EBBE9970);
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

uint64_t sub_1B9FE38E4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BA4A7CC8();
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
      result = sub_1BA4A7CC8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B9FE4218(0, &qword_1EBBE9A08, &qword_1EDC5E370, 0x1E69DC608, MEMORY[0x1E69E62F8]);
          sub_1B9FE43C8(&qword_1EBBE9A10, &qword_1EBBE9A08, &qword_1EDC5E370, 0x1E69DC608);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1BA0CA818(v13, i, a3);
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
        sub_1B9F0ADF8(0, &qword_1EDC5E370);
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

uint64_t sub_1B9FE3AAC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BA4A7CC8();
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
      result = sub_1BA4A7CC8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B9FE4218(0, &qword_1EBBE99C0, &qword_1EDC5E4A0, 0x1E695D630, MEMORY[0x1E69E62F8]);
          sub_1B9FE43C8(&qword_1EBBE99C8, &qword_1EBBE99C0, &qword_1EDC5E4A0, 0x1E695D630);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1BA0CA818(v13, i, a3);
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
        sub_1B9F0ADF8(0, &qword_1EDC5E4A0);
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

uint64_t sub_1B9FE3C74(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BA4A7CC8();
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
      result = sub_1BA4A7CC8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B9F0C974(0, &qword_1EBBE99A8, type metadata accessor for InternalSettingsFeatureStateModel, MEMORY[0x1E69E62F8]);
          sub_1B9FE42E4(&unk_1EBBE99B0, &qword_1EBBE99A8, type metadata accessor for InternalSettingsFeatureStateModel);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1BA0CA818(v13, i, a3);
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
        type metadata accessor for InternalSettingsFeatureStateModel(0);
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

uint64_t sub_1B9FE3E28(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BA4A7CC8();
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
      result = sub_1BA4A7CC8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B9FE4218(0, &qword_1EBBE99F0, &qword_1EBBE99E8, 0x1E69A44B8, MEMORY[0x1E69E62F8]);
          sub_1B9FE43C8(&unk_1EBBE99F8, &qword_1EBBE99F0, &qword_1EBBE99E8, 0x1E69A44B8);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1BA0CA818(v13, i, a3);
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
        sub_1B9F0ADF8(0, &qword_1EBBE99E8);
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

uint64_t sub_1B9FE3FF0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BA4A7CC8();
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
      result = sub_1BA4A7CC8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B9FE4218(0, &qword_1EBBE99D8, &qword_1EBBE99D0, 0x1E6964E80, MEMORY[0x1E69E62F8]);
          sub_1B9FE43C8(&qword_1EBBE99E0, &qword_1EBBE99D8, &qword_1EBBE99D0, 0x1E6964E80);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1BA0CA818(v13, i, a3);
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
        sub_1B9F0ADF8(0, &qword_1EBBE99D0);
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

void sub_1B9FE4218(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0ADF8(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1B9FE4280()
{
  result = qword_1EDC6B608;
  if (!qword_1EDC6B608)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC6B608);
  }

  return result;
}

uint64_t sub_1B9FE42E4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1B9F0C974(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B9FE4348()
{
  result = qword_1EBBE99A0;
  if (!qword_1EBBE99A0)
  {
    sub_1B9F1C094(255, &qword_1EBBE9998, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE99A0);
  }

  return result;
}

uint64_t sub_1B9FE43C8(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B9FE4218(255, a2, a3, a4, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t EmptyStateTableViewCellItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EmptyStateTableViewCellItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t EmptyStateTableViewCellItem.uniqueIdentifier.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    sub_1B9FE4520();
    v1 = sub_1BA4A6808();
  }

  return v1;
}

unint64_t sub_1B9FE4520()
{
  result = qword_1EBBE9A80;
  if (!qword_1EBBE9A80)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9A80);
  }

  return result;
}

uint64_t EmptyStateTableViewCellItem.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t EmptyStateTableViewCellItem.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void __swiftcall EmptyStateTableViewCellItem.init(title:showSpinner:)(HealthExperienceUI::EmptyStateTableViewCellItem *__return_ptr retstr, Swift::String title, Swift::Bool showSpinner)
{
  object = title._object;
  countAndFlagsBits = title._countAndFlagsBits;
  type metadata accessor for EmptyStateTableViewCell();
  sub_1B9FE46A8();
  retstr->reuseIdentifier._countAndFlagsBits = sub_1BA4A6808();
  retstr->reuseIdentifier._object = v7;
  retstr->title.value._countAndFlagsBits = countAndFlagsBits;
  retstr->title.value._object = object;
  retstr->showSpinner = showSpinner;
}

unint64_t sub_1B9FE46A8()
{
  result = qword_1EBBE9A88;
  if (!qword_1EBBE9A88)
  {
    type metadata accessor for EmptyStateTableViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9A88);
  }

  return result;
}

unint64_t sub_1B9FE46F0()
{
  result = qword_1EBBE9A90;
  if (!qword_1EBBE9A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9A90);
  }

  return result;
}

uint64_t sub_1B9FE4744(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1B9FE47CC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    sub_1B9FE4520();
    v1 = sub_1BA4A6808();
  }

  return v1;
}

uint64_t sub_1B9FE4834(uint64_t a1)
{
  v2 = sub_1B9FE4F44();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1B9FE4880(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1B9FE48C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1B9FE491C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI23EmptyStateTableViewCell____lazy_storage___emptyStateCellView;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI23EmptyStateTableViewCell____lazy_storage___emptyStateCellView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI23EmptyStateTableViewCell____lazy_storage___emptyStateCellView];
  }

  else
  {
    v4 = [v0 contentView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [objc_allocWithZone(type metadata accessor for EmptyStateCellView()) initWithFrame_];
    v14 = *&v0[v1];
    *&v0[v1] = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

char *sub_1B9FE49EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI23EmptyStateTableViewCell____lazy_storage___emptyStateCellView] = 0;
  v5 = &v3[OBJC_IVAR____TtC18HealthExperienceUI23EmptyStateTableViewCell_item];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v16.receiver = v3;
  v16.super_class = type metadata accessor for EmptyStateTableViewCell();
  v7 = objc_msgSendSuper2(&v16, sel_initWithStyle_reuseIdentifier_, a1, v6);

  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 tertiarySystemFillColor];
  [v9 setBackgroundColor_];

  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = [v9 contentView];
  v12 = sub_1B9FE491C();
  [v11 addSubview_];

  v13 = *&v9[OBJC_IVAR____TtC18HealthExperienceUI23EmptyStateTableViewCell____lazy_storage___emptyStateCellView];
  v14 = [v9 contentView];
  [v13 hk:v14 alignConstraintsWithView:?];

  return v9;
}

id sub_1B9FE4C74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmptyStateTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B9FE4CF4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI23EmptyStateTableViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1B9FE4D4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI23EmptyStateTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  v4 = sub_1B9FE491C();
  sub_1B9F68124(v1 + v3, v7);
  v5 = OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView_item;
  swift_beginAccess();
  sub_1B9F63E74(v7, v4 + v5);
  swift_endAccess();
  sub_1BA41F534();

  sub_1B9F7B644(a1);
  return sub_1B9F7B644(v7);
}

void (*sub_1B9FE4E10(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI23EmptyStateTableViewCell_item;
  *(v3 + 64) = v1;
  *(v3 + 72) = v4;
  swift_beginAccess();
  return sub_1B9FE4E98;
}

void sub_1B9FE4E98(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[8];
    v5 = v3[9];
    v6 = sub_1B9FE491C();
    sub_1B9F68124(v4 + v5, v3);
    v7 = OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView_item;
    swift_beginAccess();
    sub_1B9F63E74(v3, v6 + v7);
    swift_endAccess();
    sub_1BA41F534();

    sub_1B9F7B644(v3);
  }

  free(v3);
}

unint64_t sub_1B9FE4F44()
{
  result = qword_1EBBE9AA8;
  if (!qword_1EBBE9AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9AA8);
  }

  return result;
}

uint64_t sub_1B9FE4FF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1BA066C84(0, v1, 0);
    v2 = v15;
    v4 = a1 + 32;
    do
    {
      sub_1B9F0A534(v4, v11);
      sub_1B9F0D9AC(0, &qword_1EDC6E1B0);
      sub_1B9F7B6F8();
      swift_dynamicCast();
      v15 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1BA066C84((v5 > 1), v6 + 1, 1);
        v2 = v15;
      }

      *(v2 + 16) = v6 + 1;
      v7 = v2 + 40 * v6;
      v8 = v12;
      v9 = v13;
      *(v7 + 64) = v14;
      *(v7 + 32) = v8;
      *(v7 + 48) = v9;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_1B9FE511C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1BA4A7CC8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x1E69E7CC0];
  result = sub_1B9F468EC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1BFAF2860](i, a1);
        swift_dynamicCast();
        v12 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1B9F468EC((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v7 + 1;
        sub_1B9F46920(v11, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        swift_dynamicCast();
        v12 = v3;
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_1B9F468EC((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v10 + 1;
        sub_1B9F46920(v11, (v3 + 32 * v10 + 32));
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9FE52E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1BA066D34(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    sub_1B9FE96DC();
    sub_1B9F3BF3C();
    do
    {
      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1BA066D34((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B9FE53EC(uint64_t a1)
{
  v2 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1BA066B80(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1B9FE9290(v8, v5, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1BA066B80((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_1B9FE9694(&unk_1EBBE9B38, type metadata accessor for SummarySharingSelectableDataTypeItem);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_1B9FE9290(v5, boxed_opaque_existential_1, type metadata accessor for SummarySharingSelectableDataTypeItem);
      *(v7 + 16) = v11 + 1;
      sub_1B9F1134C(&v14, v7 + 40 * v11 + 32);
      sub_1B9F43B08(v5, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_1B9FE55F0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1BA4A7CC8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1B9F39554(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1BFAF2860](v5, a1);
        v8 = *(v17 + 16);
        v7 = *(v17 + 24);
        if (v8 >= v7 >> 1)
        {
          v10 = v6;
          sub_1B9F39554((v7 > 1), v8 + 1, 1);
          v6 = v10;
        }

        ++v5;
        *(v17 + 16) = v8 + 1;
        v9 = v17 + 16 * v8;
        *(v9 + 32) = v6;
        *(v9 + 40) = &protocol witness table for MutableArrayDataSource;
      }

      while (v2 != v5);
    }

    else
    {
      v11 = (a1 + 32);
      v12 = *(v17 + 16);
      v13 = 16 * v12;
      do
      {
        v14 = *v11;
        v15 = *(v17 + 24);

        if (v12 >= v15 >> 1)
        {
          sub_1B9F39554((v15 > 1), v12 + 1, 1);
        }

        *(v17 + 16) = v12 + 1;
        v16 = v17 + v13;
        *(v16 + 32) = v14;
        *(v16 + 40) = &protocol witness table for MutableArrayDataSource;
        v13 += 16;
        ++v11;
        ++v12;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9FE5788(uint64_t a1)
{
  v2 = type metadata accessor for ContentConfigurationItem();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1BA066B80(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1B9FE9290(v8, v5, type metadata accessor for ContentConfigurationItem);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1BA066B80((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_1B9FE9694(&qword_1EDC664A0, type metadata accessor for ContentConfigurationItem);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_1B9FE9290(v5, boxed_opaque_existential_1, type metadata accessor for ContentConfigurationItem);
      *(v7 + 16) = v11 + 1;
      sub_1B9F1134C(&v14, v7 + 40 * v11 + 32);
      sub_1B9F43B08(v5, type metadata accessor for ContentConfigurationItem);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1B9FE598C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1BA066BEC(0, v1, 0);
    v2 = v20;
    v4 = a1 + 32;
    do
    {
      sub_1B9F0A534(v4, v16);
      sub_1B9F0D9AC(0, &qword_1EBBE9B10);
      sub_1B9F0D9AC(0, &qword_1EDC6E1B0);
      swift_dynamicCast();
      v20 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1BA066BEC((v5 > 1), v6 + 1, 1);
      }

      v7 = v18;
      v8 = v19;
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
      v10 = MEMORY[0x1EEE9AC00](v9);
      v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v13 + 16))(v12, v10);
      sub_1BA1F2854(v6, v12, &v20, v7, v8);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v2 = v20;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_1B9FE5B9C(unint64_t a1, unint64_t *a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1BA4A7CC8();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1B9F468EC(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        MEMORY[0x1BFAF2860](i, a1);
        sub_1B9F0ADF8(0, a2);
        swift_dynamicCast();
        v15 = v5;
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1B9F468EC((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v9 + 1;
        sub_1B9F46920(v14, (v5 + 32 * v9 + 32));
      }
    }

    else
    {
      v10 = (a1 + 32);
      sub_1B9F0ADF8(0, a2);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1B9F468EC((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v13 + 1;
        sub_1B9F46920(v14, (v5 + 32 * v13 + 32));
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9FE5D88(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1BA066B80(0, v1, 0);
    v2 = v19;
    v4 = (a1 + 80);
    do
    {
      v5 = *(v4 - 5);
      v7 = *(v4 - 4);
      v6 = *(v4 - 3);
      v8 = *(v4 - 1);
      v14 = *(v4 - 2);
      v15 = *(v4 - 6);
      v13 = *v4;
      v19 = v2;
      v9 = *(v2 + 16);
      v10 = *(v2 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_1BA066B80((v10 > 1), v9 + 1, 1);
        v2 = v19;
      }

      v17 = &type metadata for PlaceholderTextItem;
      v18 = sub_1B9FE9528();
      v11 = swift_allocObject();
      *&v16 = v11;
      *(v11 + 16) = v15;
      *(v11 + 24) = v5;
      *(v11 + 32) = v7;
      *(v11 + 40) = v6;
      *(v11 + 48) = v14;
      *(v11 + 56) = v8;
      *(v11 + 64) = v13;
      *(v2 + 16) = v9 + 1;
      sub_1B9F1134C(&v16, v2 + 40 * v9 + 32);
      v4 += 56;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B9FE5EFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1BA066BEC(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      sub_1B9FE92F8(v4, v11);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1BA066BEC((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for SampleDescriptionItem;
      v10 = sub_1B9FE9354();
      *&v8 = swift_allocObject();
      sub_1B9FE92F8(v11, v8 + 16);
      *(v2 + 16) = v6 + 1;
      sub_1B9F1134C(&v8, v2 + 40 * v6 + 32);
      sub_1B9FE93A8(v11);
      v4 += 176;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1B9FE6028(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1BA4A7CC8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1BA067028(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1BFAF2860](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1BA067028((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_1B9F0ADF8(0, &qword_1EDC5E1C0);
        v16 = &off_1F3809FA8;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_1B9F1134C(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_1BA067028((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_1B9F0ADF8(0, &qword_1EDC5E1C0);
        v16 = &off_1F3809FA8;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        sub_1B9F1134C(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9FE621C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1B9F39554(0, v1, 0);
    v2 = v11;
    v4 = a1 + 32;
    sub_1B9F0D9AC(0, &unk_1EBBE9B28);
    sub_1B9F0D9AC(0, &qword_1EDC67F10);
    do
    {
      swift_unknownObjectRetain();
      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B9F39554((v5 > 1), v6 + 1, 1);
      }

      ObjectType = swift_getObjectType();
      sub_1B9F38934(v6, v9, &v11, ObjectType, v10);
      v2 = v11;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B9FE635C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1BA067080(0, v1, 0);
    v2 = v17;
    v4 = (a1 + 41);
    do
    {
      v5 = *(v4 - 9);
      v6 = *(v4 - 1);
      v7 = *v4;
      v17 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      v10 = v5;
      if (v9 >= v8 >> 1)
      {
        v11 = v8 > 1;
        v12 = v10;
        sub_1BA067080(v11, v9 + 1, 1);
        v10 = v12;
        v2 = v17;
      }

      v15 = &type metadata for PDFBody;
      v16 = &protocol witness table for PDFBody;
      *&v14 = v10;
      BYTE8(v14) = v6;
      BYTE9(v14) = v7;
      *(v2 + 16) = v9 + 1;
      sub_1B9F1134C(&v14, v2 + 40 * v9 + 32);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1B9FE6470(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1BA4A7CC8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v18 = MEMORY[0x1E69E7CC0];
  result = sub_1BA066B80(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v18;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      v6 = MEMORY[0x1E69A3360];
      do
      {
        v7 = MEMORY[0x1BFAF2860](v5, a1);
        v18 = v3;
        v9 = *(v3 + 16);
        v8 = *(v3 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1BA066B80((v8 > 1), v9 + 1, 1);
          v3 = v18;
        }

        ++v5;
        v16 = sub_1BA4A2EE8();
        v17 = v6;
        *&v15 = v7;
        *(v3 + 16) = v9 + 1;
        sub_1B9F1134C(&v15, v3 + 40 * v9 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v10 = (a1 + 32);
      v11 = MEMORY[0x1E69A3360];
      do
      {
        v12 = *v10;
        v18 = v3;
        v13 = *(v3 + 16);
        v14 = *(v3 + 24);

        if (v13 >= v14 >> 1)
        {
          sub_1BA066B80((v14 > 1), v13 + 1, 1);
          v3 = v18;
        }

        v16 = sub_1BA4A2EE8();
        v17 = v11;
        *&v15 = v12;
        *(v3 + 16) = v13 + 1;
        sub_1B9F1134C(&v15, v3 + 40 * v13 + 32);
        ++v10;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9FE663C(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1BA066B80(0, v2, 0);
    v3 = v21;
    v6 = a1 + 32;
    do
    {
      sub_1B9F0A534(v6, v17);
      sub_1B9F0D9AC(0, a2);
      sub_1B9F0D9AC(0, &qword_1EDC6AD50);
      swift_dynamicCast();
      v21 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1BA066B80((v7 > 1), v8 + 1, 1);
      }

      v9 = v19;
      v10 = v20;
      v11 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
      MEMORY[0x1EEE9AC00](v11);
      v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v14 + 16))(v13);
      sub_1BA1F2854(v8, v13, &v21, v9, v10);
      __swift_destroy_boxed_opaque_existential_1(v18);
      v3 = v21;
      v6 += 40;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void *sub_1B9FE6864(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_1BA4A7CC8();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v22 = MEMORY[0x1E69E7CC0];
  result = sub_1BA066B80(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v22;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        v12 = MEMORY[0x1BFAF2860](v11, a1);
        v22 = v9;
        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1BA066B80((v13 > 1), v14 + 1, 1);
          v9 = v22;
        }

        ++v11;
        v20 = a2(0);
        v21 = sub_1B9FE9694(a3, a4);
        *&v19 = v12;
        *(v9 + 16) = v14 + 1;
        sub_1B9F1134C(&v19, v9 + 40 * v14 + 32);
      }

      while (v8 != v11);
    }

    else
    {
      v15 = (a1 + 32);
      do
      {
        v16 = *v15;
        v22 = v9;
        v18 = *(v9 + 16);
        v17 = *(v9 + 24);

        if (v18 >= v17 >> 1)
        {
          sub_1BA066B80((v17 > 1), v18 + 1, 1);
          v9 = v22;
        }

        v20 = a2(0);
        v21 = sub_1B9FE9694(a3, a4);
        *&v19 = v16;
        *(v9 + 16) = v18 + 1;
        sub_1B9F1134C(&v19, v9 + 40 * v18 + 32);
        ++v15;
        --v8;
      }

      while (v8);
    }

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9FE6A4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1BA067178(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 32);
    sub_1B9FE97A4();
    sub_1B9FE983C();
    do
    {
      v5 = *v4;

      swift_dynamicCast();
      v6 = v10;
      v8 = *(v11 + 16);
      v7 = *(v11 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1BA067178((v7 > 1), v8 + 1, 1);
        v6 = v10;
      }

      *(v11 + 16) = v8 + 1;
      *(v11 + 16 * v8 + 32) = v6;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t HeaderWithIconItem.init(reuseIdentifier:title:icon:iconTintColor:accessibilityPrefix:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

unint64_t HeaderWithIconItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1BA4A7DF8();

  MEMORY[0x1BFAF1350](v1, v2);
  return 0xD000000000000013;
}

uint64_t HeaderWithIconItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HeaderWithIconItem.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *HeaderWithIconItem.icon.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *HeaderWithIconItem.iconTintColor.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t HeaderWithIconItem.accessibilityPrefix.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t HeaderWithIconItem.accessibilityPrefix.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

unint64_t sub_1B9FE6D44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1BA4A7DF8();

  MEMORY[0x1BFAF1350](v1, v2);
  return 0xD000000000000013;
}

uint64_t sub_1B9FE6DC0(uint64_t a1)
{
  v2 = sub_1B9FE94D4();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

char *HeaderWithIconView.init(configuration:)(uint64_t a1)
{
  v3 = sub_1BA4A4218();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &v1[OBJC_IVAR____TtC18HealthExperienceUI18HeaderWithIconView_item];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI18HeaderWithIconView_configuration;
  v9 = sub_1BA4A4428();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v1[v8], a1, v9);
  v11 = type metadata accessor for HeaderWithIconView();
  v19.receiver = v1;
  v19.super_class = v11;
  v12 = objc_msgSendSuper2(&v19, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1BA4A4248();
  v13 = sub_1BA4A41D8();
  (*(v4 + 8))(v6, v3);
  v14 = OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView_font;
  v15 = *&v12[OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView_font];
  *&v12[OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView_font] = v13;
  v16 = v13;

  v17 = sub_1B9FE7DE0();
  [v17 setFont_];

  [v12 setNeedsLayout];
  [v12 invalidateIntrinsicContentSize];

  sub_1BA4A4338();
  [v12 setDirectionalLayoutMargins_];

  (*(v10 + 8))(a1, v9);
  return v12;
}

uint64_t type metadata accessor for HeaderWithIconView()
{
  result = qword_1EBBE9AE0;
  if (!qword_1EBBE9AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B9FE712C(uint64_t a1, uint64_t *a2)
{
  sub_1B9FE9290(a1, v6, sub_1B9F7B6F8);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI18HeaderWithIconView_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1B9FE71C4();
  return sub_1B9F43B08(v6, sub_1B9F7B6F8);
}

void sub_1B9FE71C4()
{
  v1 = sub_1BA4A42C8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC18HealthExperienceUI18HeaderWithIconView_item;
  swift_beginAccess();
  sub_1B9FE9290(v0 + v5, &v16, sub_1B9F7B6F8);
  if (!*(&v17 + 1))
  {
    sub_1B9F43B08(&v16, sub_1B9F7B6F8);
    goto LABEL_10;
  }

  sub_1B9F0D9AC(0, &qword_1EDC6E1B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *&v23 = 0;
    *(&v23 + 1) = 0xE000000000000000;
    sub_1BA4A7DF8();

    *&v16 = 0xD00000000000002DLL;
    *(&v16 + 1) = 0x80000001BA4E2350;
    sub_1B9FE9290(v0 + v5, &v23, sub_1B9F7B6F8);
    sub_1B9F7B6F8();
    v12 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v12);

    sub_1BA4A8018();
    __break(1u);
    return;
  }

  v15 = *(&v23 + 1);
  v14 = v24;
  v6 = v25;
  v7 = *(&v26 + 1);
  v13 = v26;
  v8 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDDC0] scale:3];
  sub_1BA4A42E8();
  v9 = sub_1BA4A4258();
  (*(v2 + 8))(v4, v1);
  if (!v9)
  {
    v9 = v8;
  }

  v10 = [v6 imageByApplyingSymbolConfiguration_];
  v22 = 1;
  v21 = 1;
  v20 = 1;
  *&v16 = 0;
  BYTE8(v16) = 1;
  *&v17 = 0;
  *(&v17 + 1) = *(&v6 + 1);
  *&v18 = 0;
  DWORD2(v18) = 0;
  BYTE12(v18) = 1;
  LODWORD(v19) = 0;
  BYTE4(v19) = 1;
  *(&v19 + 1) = 0;
  v11 = *(&v6 + 1);
  sub_1B9FE7890(v10, v14, *(&v14 + 1), &v16);
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  sub_1B9FE9724(&v23);
  if (v7)
  {

    sub_1B9FE7BE4(v13, v7);
    swift_bridgeObjectRelease_n();
  }

  else
  {
  }
}

uint64_t sub_1B9FE758C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI18HeaderWithIconView_item;
  swift_beginAccess();
  return sub_1B9FE9290(v1 + v3, a1, sub_1B9F7B6F8);
}

uint64_t sub_1B9FE75F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI18HeaderWithIconView_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1B9FE71C4();
  return sub_1B9F43B08(a1, sub_1B9F7B6F8);
}

void (*sub_1B9FE7678(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1B9FE76DC;
}

void sub_1B9FE76DC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1B9FE71C4();
  }
}

uint64_t sub_1B9FE7770()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI18HeaderWithIconView_configuration;
  v2 = sub_1BA4A4428();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return sub_1B9F43B08(v0 + OBJC_IVAR____TtC18HealthExperienceUI18HeaderWithIconView_item, sub_1B9F7B6F8);
}

id sub_1B9FE7890(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v6 = *a4;
  v7 = *(a4 + 8);
  v9 = a4[2];
  v8 = a4[3];
  v10 = a4[4];
  v11 = *(a4 + 10);
  v12 = *(a4 + 44);
  v13 = *(a4 + 12);
  v42 = *(a4 + 52);
  v14 = *&v4[OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView_imageView];
  v43 = a4[7];
  v15 = OBJC_IVAR____TtC18HealthExperienceUI25AspectFitScalingImageView_image;
  v16 = *&v14[OBJC_IVAR____TtC18HealthExperienceUI25AspectFitScalingImageView_image];
  *&v14[OBJC_IVAR____TtC18HealthExperienceUI25AspectFitScalingImageView_image] = a1;
  v17 = a1;

  v18 = sub_1BA3B4DA4();
  v19 = *&v14[v15];
  [v18 setImage_];

  sub_1BA3B4FB0();
  if (v9 == 1)
  {
    [v14 setContentMode_];
    [v14 setTintColor_];
    v22 = 0;
  }

  else
  {
    if (v7)
    {
      v20 = 0;
    }

    else
    {
      v20 = v6;
    }

    [v14 setContentMode_];
    v21 = v8;
    [v14 setTintColor_];

    v22 = v9;
  }

  [v14 setBackgroundColor_];

  v23 = [v14 layer];
  v24 = 0;
  if (v9 != 1 && v10)
  {
    v24 = [v10 CGColor];
  }

  [v23 setBorderColor_];

  v25 = [v14 layer];
  v26 = v25;
  v27 = v11;
  if (v12)
  {
    v27 = 0.0;
  }

  v28 = v13;
  if (v42)
  {
    v28 = 0.0;
  }

  if (v9 == 1)
  {
    v27 = 0.0;
    v29 = 0.0;
  }

  else
  {
    v29 = v28;
  }

  [v25 setBorderWidth_];

  v30 = [v14 layer];
  [v30 setCornerRadius_];

  v31 = [v14 layer];
  if (v9 == 1)
  {
    v33 = *MEMORY[0x1E69796E0];
    v32 = v43;
  }

  else
  {
    v32 = v43;
    if (v43)
    {
      v33 = v43;
    }

    else
    {
      v33 = *MEMORY[0x1E69796E0];
    }
  }

  v34 = v33;
  [v31 setCornerCurve_];

  v35 = [v14 layer];
  v36 = v35;
  v38 = v9 != 1 && v32 != 0;
  [v35 setCornerContentsMasksEdges_];

  v39 = sub_1B9FE7DE0();
  v40 = sub_1BA4A6758();
  [v39 setText_];

  [v5 setNeedsLayout];

  return [v5 invalidateIntrinsicContentSize];
}

void sub_1B9FE7BE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B9FE7DE0();
  v7 = [v6 text];

  if (v7)
  {
    v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v10 = v9;

    sub_1B9F21678(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BA4B5460;
    *(v11 + 32) = a1;
    *(v11 + 40) = a2;
    *(v11 + 48) = v8;
    *(v11 + 56) = v10;

    v12 = sub_1BA4A6AE8();

    v13 = HKUIJoinStringsForAutomationIdentifier();

    [v3 setAccessibilityIdentifier_];
  }

  v14 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView____lazy_storage___titleLabel];

  v15 = v14;
  MEMORY[0x1BFAF1350](0x656C7469542ELL, 0xE600000000000000);
  v16 = sub_1BA4A6758();

  [v15 setAccessibilityIdentifier_];

  v17 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView_imageView];

  MEMORY[0x1BFAF1350](0x6567616D492ELL, 0xE600000000000000);
  v18 = sub_1BA4A6758();

  [v17 setAccessibilityIdentifier_];
}

id sub_1B9FE7DE0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v5 = [objc_opt_self() labelColor];
    [v4 setTextColor_];

    [v4 setNumberOfLines_];
    [v4 setAdjustsFontForContentSizeCategory_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

double sub_1B9FE7EBC()
{
  v0 = sub_1B9FE7DE0();
  v1 = [v0 font];

  if (!v1)
  {
    v1 = [objc_opt_self() systemFontOfSize_];
  }

  sub_1B9F0ADF8(0, &qword_1EDC5E0C0);
  v2 = sub_1BA4A77C8();
  sub_1B9FE95D4(0, &qword_1EDC5DBB0, sub_1B9FE9628);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  v4 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  *(inited + 64) = sub_1B9F0ADF8(0, &unk_1EDC5E210);
  *(inited + 40) = v1;
  v5 = v4;
  v6 = v1;
  sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9F43B08(inited + 32, sub_1B9FE9628);
  type metadata accessor for Key(0);
  sub_1B9FE9694(&qword_1EDC5E3D0, type metadata accessor for Key);
  v7 = sub_1BA4A6618();

  [v2 sizeWithAttributes_];
  v9 = v8;

  return v9;
}

uint64_t sub_1B9FE80DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI18HeaderWithIconView_item;
  swift_beginAccess();
  return sub_1B9FE9290(v3 + v4, a1, sub_1B9F7B6F8);
}

uint64_t sub_1B9FE814C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI18HeaderWithIconView_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v3 + v4);
  swift_endAccess();
  sub_1B9FE71C4();
  return sub_1B9F43B08(a1, sub_1B9F7B6F8);
}

void (*sub_1B9FE81D0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_1B9FE76DC;
}

id _s18HealthExperienceUI24CollectionViewHeaderCellC5frameACSo6CGRectV_tcfC_0(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *LabelAndImageView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView_font;
  *&v4[v9] = [objc_opt_self() preferredFontForTextStyle_];
  v4[OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView_enabled] = 1;
  v4[OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView_doubleLabelImageSpaceForBrowse] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView____lazy_storage___titleLabel] = 0;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView_imageView;
  type metadata accessor for AspectFitScalingImageView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for LabelAndImageView();
  v11 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = sub_1B9FE7DE0();
  [v11 addSubview_];

  [v11 addSubview_];
  sub_1B9FE9200(sub_1B9FE96DC, &unk_1EDC5DC20, sub_1B9FE96DC);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = sub_1BA4A4858();
  sub_1B9FE52E4(inited);
  swift_setDeallocating();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1B9FE8ED0();
  sub_1BA4A7708();

  swift_unknownObjectRelease();

  return v11;
}

void sub_1B9FE84E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setNeedsLayout];
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    [v2 invalidateIntrinsicContentSize];
  }
}

void sub_1B9FE85C4()
{
  v42.receiver = v0;
  v42.super_class = type metadata accessor for LabelAndImageView();
  objc_msgSendSuper2(&v42, sel_layoutSubviews);
  v1 = [v0 effectiveUserInterfaceLayoutDirection];
  v2 = sub_1B9FE7DE0();
  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView_imageView];
  v4 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI25AspectFitScalingImageView_image];
  if (v1 == 1)
  {
    if (!v4)
    {
      v15 = 4.0;
LABEL_15:
      [v0 bounds];
      v27 = CGRectGetWidth(v47) - v15;
      [v0 bounds];
      Height = CGRectGetHeight(v48);
      [v0 bounds];
      v29 = CGRectGetWidth(v49) - v15;
      v30 = 0.0;
      v50.origin.y = 0.0;
      v50.origin.x = v15;
      v50.size.width = v27;
      v50.size.height = Height;
      [v2 setFrame_];

      v31 = 0.0;
      v32 = 0.0;
      if (!*&v3[OBJC_IVAR____TtC18HealthExperienceUI25AspectFitScalingImageView_image])
      {
LABEL_20:
        [v0 bounds];
        v36 = CGRectGetWidth(v53) - v30;
        v54.origin.x = v30;
        v54.origin.y = v31;
        v54.size.width = v32;
        v54.size.height = v32;
        v37 = v36 - CGRectGetWidth(v54);
LABEL_27:
        [v3 setFrame_];
        return;
      }

      [v0 bounds];
      CGRectGetHeight(v51);
      v33 = sub_1B9FE7DE0();
      v34 = [v33 font];

      if (v34)
      {
        [v34 lineHeight];
        v32 = v35;

        if (v32 <= 36.0)
        {
          v32 = 36.0;
        }

        [v0 bounds];
        v31 = round((CGRectGetHeight(v52) - v32) * 0.5);
        v30 = 4.0;
        goto LABEL_20;
      }

      goto LABEL_30;
    }

    [v0 bounds];
    CGRectGetHeight(v43);
    v5 = sub_1B9FE7DE0();
    v6 = [v5 font];

    if (v6)
    {
      [v6 lineHeight];
      v8 = v7;

      [v0 bounds];
      v9 = CGRectGetHeight(v44);
      if (v8 > 36.0)
      {
        v10 = v8;
      }

      else
      {
        v10 = 36.0;
      }

      v11 = round((v9 - v10) * 0.5);
      v12 = 4.0;
      v13 = v10;
      MaxX = CGRectGetMaxX(*(&v10 - 2));
      v15 = MaxX + sub_1B9FE7EBC();
      goto LABEL_15;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v4)
  {
    [v0 bounds];
    CGRectGetHeight(v45);
    v16 = sub_1B9FE7DE0();
    v17 = [v16 font];

    if (!v17)
    {
      goto LABEL_29;
    }

    [v17 lineHeight];
    v19 = v18;

    [v0 bounds];
    v20 = CGRectGetHeight(v46);
    if (v19 > 36.0)
    {
      v21 = v19;
    }

    else
    {
      v21 = 36.0;
    }

    v22 = round((v20 - v21) * 0.5);
    v23 = 4.0;
    v24 = v21;
    v25 = CGRectGetMaxX(*(&v21 - 2));
    v26 = v25 + sub_1B9FE7EBC();
  }

  else
  {
    v26 = 4.0;
  }

  [v0 bounds];
  v38 = CGRectGetWidth(v55) - v26;
  [v0 bounds];
  v37 = 0.0;
  [v2 setFrame_];

  v31 = 0.0;
  v32 = 0.0;
  if (!*&v3[OBJC_IVAR____TtC18HealthExperienceUI25AspectFitScalingImageView_image])
  {
    goto LABEL_27;
  }

  [v0 bounds];
  CGRectGetHeight(v57);
  v39 = sub_1B9FE7DE0();
  v40 = [v39 font];

  if (v40)
  {
    [v40 lineHeight];
    v32 = v41;

    if (v32 <= 36.0)
    {
      v32 = 36.0;
    }

    [v0 bounds];
    v31 = round((CGRectGetHeight(v58) - v32) * 0.5);
    v37 = 4.0;
    goto LABEL_27;
  }

LABEL_31:
  __break(1u);
}

void sub_1B9FE8A58(double a1)
{
  if (!*(*(v1 + OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView_imageView) + OBJC_IVAR____TtC18HealthExperienceUI25AspectFitScalingImageView_image))
  {
    v8 = 4.0;
    if (a1 > 0.0)
    {
LABEL_6:
      v9 = sub_1B9FE7DE0();
      [v9 textRectForBounds:0 limitedToNumberOfLines:{0.0, 0.0, a1 - v8, 1.79769313e308}];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v19.origin.x = v11;
      v19.origin.y = v13;
      v19.size.width = v15;
      v19.size.height = v17;
      CGRectGetHeight(v19);
      return;
    }

    goto LABEL_8;
  }

  v3 = sub_1B9FE7DE0();
  v4 = [v3 font];

  if (v4)
  {
    [v4 lineHeight];
    v6 = v5;

    v7 = 36.0;
    if (v6 > 36.0)
    {
      v7 = v6;
    }

    v8 = sub_1B9FE7EBC() + v7 + 4.0;
    if (a1 > 0.0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v18 = sub_1B9FE7DE0();
    [v18 textRectForBounds:0 limitedToNumberOfLines:{0.0, 0.0, 0.0, 0.0}];

    return;
  }

  __break(1u);
}

uint64_t sub_1B9FE8CA4()
{
  v1 = v0;
  swift_getObjectType();
  sub_1BA4A7DF8();

  v2 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](v2);

  MEMORY[0x1BFAF1350](0x4C656C746974203ELL, 0xEE00203A6C656261);
  v3 = sub_1B9FE7DE0();
  v4 = [v3 description];
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v7 = v6;

  MEMORY[0x1BFAF1350](v5, v7);

  MEMORY[0x1BFAF1350](0x566567616D69202CLL, 0xED0000203A776569);
  v8 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView_imageView) description];
  v9 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v11 = v10;

  MEMORY[0x1BFAF1350](v9, v11);

  return 60;
}

id sub_1B9FE8E34(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1B9FE8ED0()
{
  result = qword_1EDC5E3F0;
  if (!qword_1EDC5E3F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC5E3F0);
  }

  return result;
}

unint64_t sub_1B9FE8F38()
{
  result = qword_1EBBEBB80;
  if (!qword_1EBBEBB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBB80);
  }

  return result;
}

uint64_t sub_1B9FE8F8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1B9FE8FD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B9FE903C()
{
  result = sub_1BA4A4428();
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

void sub_1B9FE9200(uint64_t (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  v5 = a1(0);
  if (swift_isClassType() && v5)
  {
    sub_1B9F21678(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  }

  else
  {
    sub_1B9FE95D4(0, a2, a3);
  }
}

uint64_t sub_1B9FE9290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B9FE9354()
{
  result = qword_1EBBE9B00;
  if (!qword_1EBBE9B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9B00);
  }

  return result;
}

void sub_1B9FE93FC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView_font;
  *(v0 + v1) = [objc_opt_self() preferredFontForTextStyle_];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView_enabled) = 1;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView_doubleLabelImageSpaceForBrowse) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView____lazy_storage___titleLabel) = 0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView_imageView;
  type metadata accessor for AspectFitScalingImageView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1BA4A8018();
  __break(1u);
}

unint64_t sub_1B9FE94D4()
{
  result = qword_1EBBE9B08;
  if (!qword_1EBBE9B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9B08);
  }

  return result;
}

unint64_t sub_1B9FE9528()
{
  result = qword_1EBBE9B48;
  if (!qword_1EBBE9B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9B48);
  }

  return result;
}

unint64_t sub_1B9FE957C()
{
  result = qword_1EDC5E4C0;
  if (!qword_1EDC5E4C0)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6B5D0);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EDC5E4C0);
  }

  return result;
}

void sub_1B9FE95D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A82E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9FE9628()
{
  if (!qword_1EDC5E390)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5E390);
    }
  }
}

uint64_t sub_1B9FE9694(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B9FE96DC()
{
  result = qword_1EDC5F878;
  if (!qword_1EDC5F878)
  {
    sub_1BA4A4858();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EDC5F878);
  }

  return result;
}

uint64_t sub_1B9FE9724(uint64_t a1)
{
  sub_1B9F21678(0, &qword_1EBBE9B58, &type metadata for ImageStyle, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B9FE97A4()
{
  if (!qword_1EBBE9B60)
  {
    type metadata accessor for HKFeatureAvailabilityContext(255);
    sub_1B9F21678(255, &qword_1EBBEA690, &type metadata for FeatureRequirementEvaluation, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBE9B60);
    }
  }
}

void sub_1B9FE983C()
{
  if (!qword_1EBBE9B70)
  {
    type metadata accessor for HKFeatureAvailabilityContext(255);
    sub_1B9F21678(255, &qword_1EBBEA690, &type metadata for FeatureRequirementEvaluation, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBE9B70);
    }
  }
}

uint64_t ContactProfile.init(profileInformation:emailOrPhoneNumber:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1B9F1134C(a1, a4);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t ContactProfile.init(sharingEntryProfileInformation:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = MEMORY[0x1BFAEDD10]();
  v6 = v5;
  v7 = sub_1BA4A33C8();
  v8 = MEMORY[0x1E69A3418];
  a2[3] = v7;
  a2[4] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  result = (*(*(v7 - 8) + 32))(boxed_opaque_existential_1, a1, v7);
  a2[5] = v4;
  a2[6] = v6;
  return result;
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

uint64_t sub_1B9FE99C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1B9FE9A0C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1B9FE9A68()
{
  sub_1B9FEA96C();
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v1, v9);
  if (!v10)
  {
    sub_1B9F43A50(v9, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
    goto LABEL_7;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  sub_1B9F0D950(0, qword_1EDC61778);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    goto LABEL_7;
  }

  v2 = *(&v12 + 1);
  if (!*(&v12 + 1))
  {
LABEL_7:
    sub_1B9F43A50(&v11, &qword_1EDC61770, qword_1EDC61778);
    v7 = 0;
    v6 = 0;
    goto LABEL_8;
  }

  v3 = v13;
  __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
  v4 = (*(v3 + 8))(v2, v3);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(&v11);
  v7 = v4;
LABEL_8:
  sub_1B9FEB76C(v7, v6);
}

id sub_1B9FE9BE4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell____lazy_storage___font;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell____lazy_storage___font);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell____lazy_storage___font);
  }

  else
  {
    v4 = sub_1B9F6B774(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell_textStyle), *MEMORY[0x1E69DB978], 0, 0x8000, 0, 0, 1);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1B9FE9C70()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell____lazy_storage___imageForUnpinnedState;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell____lazy_storage___imageForUnpinnedState);
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = [objc_opt_self() configurationWithTextStyle_];
  v4 = sub_1BA4A6758();
  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  if (v5)
  {
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v5;

    v2 = 0;
LABEL_4:
    v7 = v2;
    return;
  }

  __break(1u);
}

void sub_1B9FE9D6C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell____lazy_storage___imageForPinnedState;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell____lazy_storage___imageForPinnedState);
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = [objc_opt_self() configurationWithTextStyle_];
  v4 = sub_1BA4A6758();
  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  if (v5)
  {
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v5;

    v2 = 0;
LABEL_4:
    v7 = v2;
    return;
  }

  __break(1u);
}

id sub_1B9FE9E60()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell____lazy_storage___accessoryImageView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell____lazy_storage___accessoryImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell____lazy_storage___accessoryImageView);
  }

  else
  {
    sub_1B9FE9C70();
    v5 = v4;
    v6 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

    v7 = [objc_opt_self() systemYellowColor];
    [v6 setTintColor_];

    v8 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_1B9FE9F60()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v1, v9);
  if (!v10)
  {
    sub_1B9F43A50(v9, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v6 = 0u;
    v7 = 0u;
    v8 = 0;
    goto LABEL_7;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  sub_1B9F0D950(0, &qword_1EDC6CCD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    goto LABEL_7;
  }

  if (!*(&v7 + 1))
  {
LABEL_7:
    sub_1B9F43A50(&v6, &qword_1EBBE9BB0, &qword_1EDC6CCD8);
    v4 = 0;
    return v4 & 1;
  }

  sub_1B9F1134C(&v6, v9);
  v2 = v10;
  v3 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v4 = (*(v3 + 48))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v4 & 1;
}

id sub_1B9FEA0C4(double a1, double a2, double a3, double a4)
{
  sub_1B9F661B8(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = &v4[OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell_item];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  v13 = *MEMORY[0x1E69DDCF8];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell_textStyle] = *MEMORY[0x1E69DDCF8];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell____lazy_storage___font] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell____lazy_storage___imageForUnpinnedState] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell____lazy_storage___imageForPinnedState] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell____lazy_storage___accessoryImageView] = 0;
  v14 = type metadata accessor for EditFavoritesCollectionViewCell();
  v19.receiver = v4;
  v19.super_class = v14;
  v15 = v13;
  v16 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA4A4158();
  v17 = sub_1BA4A4168();
  (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
  MEMORY[0x1BFAF1F10](v11);

  return v16;
}

id sub_1B9FEA298(void *a1)
{
  sub_1B9F661B8(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = &v1[OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell_item];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = *MEMORY[0x1E69DDCF8];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell_textStyle] = *MEMORY[0x1E69DDCF8];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell____lazy_storage___font] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell____lazy_storage___imageForUnpinnedState] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell____lazy_storage___imageForPinnedState] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell____lazy_storage___accessoryImageView] = 0;
  v8 = type metadata accessor for EditFavoritesCollectionViewCell();
  v15.receiver = v1;
  v15.super_class = v8;
  v9 = v7;
  v10 = objc_msgSendSuper2(&v15, sel_initWithCoder_, a1);
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    sub_1BA4A4158();
    v13 = sub_1BA4A4168();
    (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
    MEMORY[0x1BFAF1F10](v5);
  }

  return v11;
}

uint64_t sub_1B9FEA450(uint64_t a1, void *a2)
{
  sub_1B9FEA614(a1, a2);
  v4 = OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v2 + v4, v14);
  if (!v15)
  {
    sub_1B9F43A50(v14, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
    return sub_1B9F43A50(&v11, &qword_1EBBE9BB0, &qword_1EDC6CCD8);
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  sub_1B9F0D950(0, &qword_1EDC6CCD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    return sub_1B9F43A50(&v11, &qword_1EBBE9BB0, &qword_1EDC6CCD8);
  }

  if (!*(&v12 + 1))
  {
    return sub_1B9F43A50(&v11, &qword_1EBBE9BB0, &qword_1EDC6CCD8);
  }

  sub_1B9F1134C(&v11, v14);
  v5 = v15;
  v6 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  if ((*(v6 + 48))(v5, v6))
  {
    v7 = 11;
  }

  else
  {
    v7 = 12;
  }

  type metadata accessor for HealthAppAnalyticsManager();
  v10 = v7;
  v9 = 14;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  static HealthAppAnalyticsManager.submitInteraction(action:viewController:presentation:pinnedContentManager:)(&v10, a2, &v9, &v11);
  sub_1B9F43A50(&v11, &unk_1EDC6ADB0, &qword_1EDC6ADC0);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

void sub_1B9FEA614(uint64_t a1, void *a2)
{
  v4 = sub_1BA4A2458();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedBehavior];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 features];

    if (v10)
    {
      v11 = [v10 simplifiedLogging];

      if (v11)
      {
        sub_1B9FEB28C(&OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell_item, v30);
        v12 = v31;
        v13 = v32;
        __swift_project_boxed_opaque_existential_1(v30, v31);
        (*(v13 + 32))(v29, v12, v13);
        __swift_project_boxed_opaque_existential_1(v29, v29[3]);
        v14 = sub_1BA4A2368();
        if (v14)
        {
          v15 = v14;
          v16 = sub_1BA4A0E68();

          v17 = *(v16 + 16);

          __swift_destroy_boxed_opaque_existential_1(v29);
          __swift_destroy_boxed_opaque_existential_1(v30);
          if (v17 == 1)
          {
            sub_1B9FEB28C(&OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell_item, v30);
            v18 = v31;
            v19 = v32;
            __swift_project_boxed_opaque_existential_1(v30, v31);
            LOBYTE(v18) = (*(v19 + 48))(v18, v19);
            __swift_destroy_boxed_opaque_existential_1(v30);
            if (v18)
            {
              sub_1B9FEB28C(&OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell_item, v30);
              v20 = v31;
              v21 = v32;
              __swift_project_boxed_opaque_existential_1(v30, v31);
              v22 = (*(v21 + 24))(v20, v21);
              v24 = v23;
              (*(v5 + 104))(v7, *MEMORY[0x1E69A3DA8], v4);
              v25 = sub_1BA4A2448();
              v27 = v26;
              (*(v5 + 8))(v7, v4);
              if (v22 == v25 && v24 == v27)
              {

                __swift_destroy_boxed_opaque_existential_1(v30);
LABEL_13:
                sub_1B9FEBB2C(a2, a1);
                return;
              }

              v28 = sub_1BA4A8338();

              __swift_destroy_boxed_opaque_existential_1(v30);
              if (v28)
              {
                goto LABEL_13;
              }
            }
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v29);
          __swift_destroy_boxed_opaque_existential_1(v30);
        }
      }

      sub_1BA02775C();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1B9FEA96C()
{
  v48 = sub_1BA4A3F38();
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v41 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_1BA4A3F18();
  v56 = *(v1 - 8);
  v57 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v45 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1BA4A3FE8();
  v55 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F661B8(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v54 = &v41 - v6;
  v51 = sub_1BA4A3FD8();
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A3F98();
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9FEB28C(&OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell_item, v59);
  v13 = v60;
  v12 = v61;
  __swift_project_boxed_opaque_existential_1(v59, v60);
  (*(v12 + 80))(v13, v12);
  v63 = sub_1BA4A4428();
  v64 = MEMORY[0x1E69DC110];
  __swift_allocate_boxed_opaque_existential_1(v62);
  MEMORY[0x1BFAF2040]();
  sub_1BA4A43B8();
  sub_1B9FE9BE4();
  v14 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v14(v58, 0);
  __swift_destroy_boxed_opaque_existential_1(v59);
  MEMORY[0x1BFAF1EF0](v62);
  sub_1B9FEB28C(&OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell_item, v62);
  v15 = v63;
  v16 = v64;
  __swift_project_boxed_opaque_existential_1(v62, v63);
  v17 = FavoritableDisplaying.favoriteStatus.getter(v15, v16);
  if (!v17)
  {
    v44 = v4;
    sub_1B9F661B8(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
    v21 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v43 = *(v55 + 72);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1BA4B5480;
    sub_1B9FE9E60();
    sub_1B9FD7EE0();
    v24 = &v8[*(v23 + 48)];
    v25 = *(v56 + 104);
    v42 = *MEMORY[0x1E69DBF28];
    v41 = v25;
    v25(v8);
    *v24 = sub_1BA04D9A8;
    v24[1] = 0;
    (*(v50 + 104))(v8, *MEMORY[0x1E69DBF58], v51);
    v26 = sub_1BA4A3F48();
    v27 = v54;
    v50 = *(*(v26 - 8) + 56);
    (v50)(v54, 1, 1, v26);
    v28 = v27;
    sub_1BA4A3F88();
    v51 = v21;
    sub_1BA4A3EE8();
    (*(v52 + 8))(v11, v53);
    sub_1B9FEB28C(&OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell_item, v59);
    v29 = v60;
    v30 = v61;
    __swift_project_boxed_opaque_existential_1(v59, v60);
    v31 = (*(v30 + 72))(v29, v30);
    __swift_destroy_boxed_opaque_existential_1(v59);
    if (v31)
    {
      v32 = v45;
      v33 = v57;
      v41(v45, v42, v57);
      (v50)(v28, 1, 1, v26);
      v34 = v46;
      sub_1BA4A3F28();
      v35 = v44;
      sub_1BA4A3FC8();
      (*(v47 + 8))(v34, v48);
      (*(v56 + 8))(v32, v33);
      v37 = *(v22 + 16);
      v36 = *(v22 + 24);
      if (v37 >= v36 >> 1)
      {
        v22 = sub_1BA27EF58(v36 > 1, v37 + 1, 1, v22);
      }

      v38 = v49;
      v39 = v43;
      v40 = v51;
      *(v22 + 16) = v37 + 1;
      (*(v55 + 32))(v22 + v40 + v37 * v39, v35, v38);
    }

    goto LABEL_8;
  }

  if (v17)
  {
    sub_1B9F661B8(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
    *(swift_allocObject() + 16) = xmmword_1BA4B5480;
    sub_1B9FE9E60();
    sub_1B9FD7EE0();
    v19 = &v8[*(v18 + 48)];
    (*(v56 + 104))(v8, *MEMORY[0x1E69DBF28], v57);
    *v19 = sub_1BA04D9A8;
    v19[1] = 0;
    (*(v50 + 104))(v8, *MEMORY[0x1E69DBF58], v51);
    v20 = sub_1BA4A3F48();
    (*(*(v20 - 8) + 56))(v54, 1, 1, v20);
    sub_1BA4A3F88();
    sub_1BA4A3EE8();
    (*(v52 + 8))(v11, v53);
LABEL_8:
    sub_1BA4A75F8();
  }

  __swift_destroy_boxed_opaque_existential_1(v62);
  sub_1B9FEB474();
}