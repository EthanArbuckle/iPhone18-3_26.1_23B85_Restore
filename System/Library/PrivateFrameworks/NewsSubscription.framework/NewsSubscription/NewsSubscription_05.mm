void sub_1D77B9534(void (*a1)(void **), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t *a7)
{
  v14 = type metadata accessor for PurchaseContext();
  v31 = *(v14 - 8);
  v15 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  if (a5)
  {

    v17 = a5;

    v18 = sub_1D77B919C(v17, a6, a7);
    v32 = v18;
    a1(&v32);
  }

  else
  {
    v28 = *(a6 + 24);
    v29 = a3;
    v30 = a4;
    ObjectType = swift_getObjectType();
    v21 = *a7;
    v20 = a7[1];

    sub_1D775F820(v21, v20, ObjectType, v28);
    sub_1D7770378(a7, &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = (*(v31 + 80) + 40) & ~*(v31 + 80);
    v23 = swift_allocObject();
    v23[2] = sub_1D77B9B08;
    v23[3] = v16;
    v23[4] = a6;
    sub_1D777044C(&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);

    v24 = sub_1D78B4014();
    sub_1D78B4094();

    v25 = swift_allocObject();
    *(v25 + 16) = v29;
    *(v25 + 24) = v30;

    v26 = sub_1D78B4014();
    sub_1D78B40D4();
  }
}

uint64_t sub_1D77B97C0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B6094();
  sub_1D774FE1C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D78BCAB0;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  sub_1D78B6504();
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D775ABD4();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  sub_1D78B42C4();

  return a2(a1);
}

void sub_1D77B995C(void **a1)
{
  v3 = *(type metadata accessor for PurchaseContext() - 8);
  v4 = *(v1 + 16);
  v5 = sub_1D77B919C(*a1, *(v1 + 32), v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80)));
  v4();
}

unint64_t sub_1D77B9A1C()
{
  result = qword_1EC9C91E0;
  if (!qword_1EC9C91E0)
  {
    type metadata accessor for SKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C91E0);
  }

  return result;
}

double sub_1D77B9A74(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 12;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

uint64_t sub_1D77B9AA8(uint64_t a1)
{
  sub_1D773F0BC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D77B9B0C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1D78B5C74();
  }

  sub_1D774819C();
  result = sub_1D78B6294();
  qword_1EE09C260 = result;
  return result;
}

uint64_t sub_1D77B9BDC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1D78B5C74();
  }

  sub_1D774819C();
  result = sub_1D78B6294();
  qword_1EC9D9DF0 = result;
  return result;
}

uint64_t sub_1D77B9CA4()
{
  v0 = sub_1D78B4304();
  __swift_allocate_value_buffer(v0, qword_1EC9D9E00);
  __swift_project_value_buffer(v0, qword_1EC9D9E00);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1D78B5C74();
  }

  return sub_1D78B42F4();
}

uint64_t sub_1D77B9D94()
{
  v0 = sub_1D78B4304();
  __swift_allocate_value_buffer(v0, qword_1EE09C1F0);
  __swift_project_value_buffer(v0, qword_1EE09C1F0);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1D78B5C74();
  }

  return sub_1D78B42F4();
}

uint64_t sub_1D77B9E88()
{
  v0 = sub_1D78B4304();
  __swift_allocate_value_buffer(v0, qword_1EE09C270);
  __swift_project_value_buffer(v0, qword_1EE09C270);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1D78B5C74();
  }

  return sub_1D78B42F4();
}

id sub_1D77B9F78(char a1)
{
  v3 = *(v1 + 64);
  if (a1)
  {
    v4 = [v3 primaryColor];
    v5 = sub_1D77BAD38(v4);

    result = v5;
    if (v5)
    {
      return result;
    }

    v7 = [objc_opt_self() systemBlueColor];
    return v7;
  }

  v8 = [v3 secondaryColor];
  v9 = sub_1D77BAD38(v8);

  if (!v9 || (v10 = [v9 colorWithAlphaComponent_], v9, (result = v10) == 0))
  {
    v7 = [objc_opt_self() lightGrayColor];
    return v7;
  }

  return result;
}

id sub_1D77BA068()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = [v1 headlineTitleTextInfo];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 font];

      if (v4)
      {
        v5 = [v4 fontName];

        if (v5)
        {
          sub_1D78B5C74();
        }
      }
    }
  }

  v6 = sub_1D773F004(0, &qword_1EE08FC10);
  v7 = sub_1D78B61A4();

  sub_1D778AF9C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BF690;
  v9 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v10 = MEMORY[0x1E69DB688];
  *(inited + 40) = v7;
  v11 = *v10;
  *(inited + 64) = v6;
  *(inited + 72) = v11;
  v12 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v13 = v9;
  v14 = v7;
  v15 = v11;
  v16 = [v12 init];
  [v16 setAlignment_];
  v17 = sub_1D773F004(0, &qword_1EC9CA0F8);
  *(inited + 80) = v16;
  v18 = *MEMORY[0x1E69DB650];
  *(inited + 104) = v17;
  *(inited + 112) = v18;
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 labelColor];
  *(inited + 144) = sub_1D773F004(0, &qword_1EE08FC00);
  *(inited + 120) = v21;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4();
  swift_arrayDestroy();
  v22 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v23 = sub_1D78B5C44();
  type metadata accessor for Key(0);
  sub_1D778B060();
  v24 = sub_1D78B5BB4();

  v25 = [v22 initWithString:v23 attributes:v24];

  return v25;
}

id sub_1D77BA33C(uint64_t a1)
{
  v1 = [*(a1 + 64) primaryColor];
  v2 = sub_1D77BAD38(v1);

  if (v2)
  {
    v3 = objc_opt_self();
    v4 = [v3 whiteColor];
    v5 = [v2 _isSimilarToColor_withinPercentage_];

    if (v5)
    {
      v6 = [v3 blackColor];
    }

    else
    {
      v6 = [v3 whiteColor];
    }

    v9 = v6;

    return v9;
  }

  else
  {
    v7 = [objc_opt_self() whiteColor];

    return v7;
  }
}

id sub_1D77BA458()
{
  v1 = *(v0 + 64);
  v2 = [v1 policyText];
  v3 = [v2 text];

  if (!v3)
  {
    sub_1D78B5C74();
    v3 = sub_1D78B5C44();
  }

  sub_1D778AF9C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BF690;
  v5 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v6 = sub_1D773F004(0, &qword_1EE08FC10);
  v7 = v5;
  v8 = sub_1D78B61B4();
  v9 = MEMORY[0x1E69DB688];
  *(inited + 40) = v8;
  v10 = *v9;
  *(inited + 64) = v6;
  *(inited + 72) = v10;
  v11 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v12 = v10;
  v13 = [v11 init];
  [v13 setAlignment_];
  v14 = sub_1D773F004(0, &qword_1EC9CA0F8);
  *(inited + 80) = v13;
  v15 = *MEMORY[0x1E69DB650];
  *(inited + 104) = v14;
  *(inited + 112) = v15;
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 secondaryLabelColor];
  *(inited + 144) = sub_1D773F004(0, &qword_1EE08FC00);
  *(inited + 120) = v18;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4();
  swift_arrayDestroy();
  v19 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  type metadata accessor for Key(0);
  sub_1D778B060();
  v20 = sub_1D78B5BB4();

  v45 = [v19 initWithString:v3 attributes:v20];

  v21 = [v1 policyText];
  v22 = [v21 links];

  if (v22)
  {
    sub_1D773F004(0, &unk_1EC9CA100);
    v23 = sub_1D78B5EB4();

    v46 = v23;
    if (v23 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D78B6534())
    {
      v25 = 0;
      v26 = v46 & 0xC000000000000001;
      v44 = *MEMORY[0x1E69DB670];
      v27 = &selRef_isUserSignedIntoiTunes;
      while (1)
      {
        if (v26)
        {
          v28 = MEMORY[0x1DA703700](v25, v46);
        }

        else
        {
          if (v25 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v28 = *(v46 + 8 * v25 + 32);
        }

        v29 = v28;
        v30 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (([v28 v27[86]] & 0x8000000000000000) == 0 && (objc_msgSend(v29, sel_rangeLength) & 0x8000000000000000) == 0)
        {
          v31 = v26;
          v32 = [v29 v27[86]];
          v33 = [v29 rangeLength];
          v34 = &v33[v32];
          if (__OFADD__(v32, v33))
          {
            goto LABEL_23;
          }

          v35 = [v45 string];
          sub_1D78B5C74();
          v36 = v27;
          v37 = i;

          v38 = sub_1D78B5D34();

          v39 = v34 < v38;
          v26 = v31;
          if (v39)
          {
            v40 = [v29 v27 + 107];
            v41 = [v29 rangeLength];
            v42 = [v29 url];
            if (!v42)
            {
              sub_1D78B5C74();
              v42 = sub_1D78B5C44();
              v26 = v31;
            }

            [v45 addAttribute:v44 value:v42 range:{v40, v41, v44}];

            v27 = v36;
            i = v37;
          }
        }

        ++v25;
        if (v30 == i)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_25:
  }

  return v45;
}

void sub_1D77BA950(void *a1)
{
  sub_1D778AF9C();
  inited = swift_initStackObject();
  v4 = MEMORY[0x1E69DB650];
  *(inited + 16) = xmmword_1D78BCAB0;
  v5 = *v4;
  *(inited + 32) = v5;
  v6 = *(v1 + 64);
  v7 = v5;
  v8 = [v6 primaryColor];
  v9 = sub_1D77BAD38(v8);

  *(inited + 64) = sub_1D773F004(0, &qword_1EE08FC00);
  if (!v9)
  {
    v9 = [objc_opt_self() systemBlueColor];
  }

  *(inited + 40) = v9;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D77BAEDC(inited + 32);
  type metadata accessor for Key(0);
  sub_1D778B060();
  v10 = sub_1D78B5BB4();

  [a1 setLinkTextAttributes_];
}

void sub_1D77BAAA0(void *a1, char a2)
{
  v5 = [a1 layer];
  [v5 setCornerRadius_];

  v6 = [a1 layer];
  [v6 setCornerCurve_];

  v7 = objc_opt_self();
  v8 = [v7 whiteColor];
  [a1 setTitleColor:v8 forState:0];

  [a1 setEnabled_];
  if (a2)
  {
    v9 = [*(v2 + 64) primaryColor];
    v11 = sub_1D77BAD38(v9);

    if (!v11)
    {
      v11 = [v7 systemBlueColor];
      [a1 setBackgroundColor_];
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D773F004(0, &qword_1EE08FC00);
    v10 = sub_1D78B61F4();
    v11 = [v10 colorWithAlphaComponent_];
  }

  [a1 setBackgroundColor_];
LABEL_6:
}

uint64_t sub_1D77BAC64()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1D77BACD0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_1D77BAD38(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 lightColor];
  v3 = [v2 ne_color];

  v4 = [a1 darkColor];
  v5 = [v4 ne_color];

  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  v7 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v11[4] = sub_1D77BAE98;
  v11[5] = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D77BACD0;
  v11[3] = &block_descriptor_7;
  v8 = _Block_copy(v11);
  v9 = [v7 initWithDynamicProvider_];
  _Block_release(v8);

  return v9;
}

id sub_1D77BAE98(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if ([a1 userInterfaceStyle] == 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

uint64_t sub_1D77BAEDC(uint64_t a1)
{
  sub_1D778AFF4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D77BAF68@<X0>(uint64_t *a1@<X8>)
{
  sub_1D78B3F24();
  sub_1D77BD0A8(0);
  swift_allocObject();
  result = sub_1D78B4394();
  *a1 = result;
  return result;
}

void sub_1D77BAFF8()
{
  sub_1D7748F58(0, &qword_1EE0904C8, sub_1D77BD124, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D78B3F24();
    sub_1D78B43A4();

    sub_1D77BD124(0);
    v4 = v3;
    v5 = *(v3 - 8);
    if ((*(v5 + 48))(v2, 1, v3) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1D78B4384();
      (*(v5 + 8))(v2, v4);
      v6 = sub_1D78B4014();
      sub_1D77BD4B8(0, &qword_1EE090010, MEMORY[0x1E69E62F8]);
      sub_1D78B4084();

      v7 = sub_1D78B4014();
      sub_1D77BD23C();
      type metadata accessor for PurchaseContextEntriesManager();
      sub_1D78B40A4();

      v8 = sub_1D78B4014();
      sub_1D78B40B4();

      v9 = sub_1D78B4014();
      sub_1D78B40D4();
    }
  }
}

uint64_t sub_1D77BB2B8()
{
  sub_1D77BD438();
  swift_allocObject();

  return sub_1D78B4104();
}

uint64_t sub_1D77BB318()
{
  sub_1D7748F58(0, &qword_1EE0904C8, sub_1D77BD124, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  sub_1D78B3F24();
  sub_1D78B43A4();

  sub_1D77BD124(0);
  v4 = v3;
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_1D78B4354();
    (*(v5 + 8))(v2, v4);
    return v7;
  }

  return result;
}

uint64_t sub_1D77BB488(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseContext();
  v69 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77BD2A4(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v71 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v70 = &v62 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v62 - v14);
  sub_1D7748F58(0, &unk_1EE08FF50, sub_1D77BD2A4, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = (&v62 - v17);
  v19 = *a1;

  sub_1D78B3854();

  v20 = -1 << *(v19 + 32);
  v21 = *(v19 + 64);
  v22 = ~v20;
  v23 = -v20;
  v72 = v19;
  v73 = v19 + 64;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v74 = v22;
  v75 = 0;
  v76 = v24 & v21;
  v77 = 0;

  sub_1D7828788(v18);
  v67 = *(v9 + 48);
  v68 = v9 + 48;
  if (v67(v18, 1, v8) == 1)
  {
LABEL_5:
    sub_1D779D528();

    sub_1D78B3864();
  }

  sub_1D77BD2D4(0);
  v27 = v26;
  v65 = v15;
  v66 = v8;
  v63 = v26;
  v64 = v18;
  while (1)
  {
    v30 = *(v8 + 48);
    v31 = v18 + v30;
    v32 = *(v18 + v30);
    v33 = *(v18 + v30 + 8);
    v34 = *(v27 + 48);
    v35 = (v15 + v30);
    *v15 = *v18;
    *v35 = v32;
    v35[1] = v33;
    sub_1D777044C(&v31[v34], v35 + v34);
    v36 = v70;
    sub_1D77BD50C(v15, v70, sub_1D77BD2A4);
    v37 = (v36 + *(v8 + 48));
    v38 = v27;
    v40 = *v37;
    v39 = v37[1];
    v41 = v15;
    v42 = v71;
    sub_1D77BD50C(v41, v71, sub_1D77BD2A4);
    v43 = v42 + *(v8 + 48);

    v44 = *(v38 + 48);
    swift_beginAccess();
    v45 = a2;
    v46 = v6;
    sub_1D777044C(v43 + v44, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = *(v45 + 24);
    v48 = v78;
    v49 = v45;
    *(v45 + 24) = 0x8000000000000000;
    v51 = sub_1D777BBB4(v40, v39);
    v52 = v48[2];
    v53 = (v50 & 1) == 0;
    v54 = v52 + v53;
    if (__OFADD__(v52, v53))
    {
      break;
    }

    v55 = v50;
    if (v48[3] >= v54)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v50)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_1D782F10C();
        if (v55)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      sub_1D782BCD8(v54, isUniquelyReferenced_nonNull_native);
      v56 = sub_1D777BBB4(v40, v39);
      if ((v55 & 1) != (v57 & 1))
      {
        goto LABEL_22;
      }

      v51 = v56;
      if (v55)
      {
LABEL_7:

        v28 = v78;
        v6 = v46;
        sub_1D77BD3D4(v46, v78[7] + *(v69 + 72) * v51);
        goto LABEL_8;
      }
    }

    v28 = v78;
    v78[(v51 >> 6) + 8] |= 1 << v51;
    v58 = (v28[6] + 16 * v51);
    *v58 = v40;
    v58[1] = v39;
    v6 = v46;
    sub_1D777044C(v46, v28[7] + *(v69 + 72) * v51);
    v59 = v28[2];
    v60 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (v60)
    {
      goto LABEL_21;
    }

    v28[2] = v61;
LABEL_8:
    v27 = v63;
    v29 = *(v63 + 48);
    a2 = v49;
    *(v49 + 24) = v28;

    swift_endAccess();
    v15 = v65;
    sub_1D77BD374(v65, sub_1D77BD2A4);
    sub_1D77BD374(v37 + v29, type metadata accessor for PurchaseContext);
    v18 = v64;
    sub_1D7828788(v64);
    v8 = v66;
    if (v67(v18, 1, v66) == 1)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1D78B6784();
  __break(1u);
  return result;
}

uint64_t sub_1D77BB9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  sub_1D78B3854();

  swift_beginAccess();
  v7 = *(v3 + 24);
  if (*(v7 + 16) && (v8 = sub_1D777BBB4(a1, a2), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = type metadata accessor for PurchaseContext();
    v13 = *(v12 - 8);
    sub_1D77BD50C(v11 + *(v13 + 72) * v10, a3, type metadata accessor for PurchaseContext);
    (*(v13 + 56))(a3, 0, 1, v12);
  }

  else
  {
    v14 = type metadata accessor for PurchaseContext();
    (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
  }

  swift_endAccess();

  sub_1D78B3864();
}

uint64_t sub_1D77BBB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v35 = a1;
  v38 = sub_1D78B5254();
  v41 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B52A4();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PurchaseContext();
  v8 = *(v7 - 8);
  v34 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D78B5264();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7748F58(0, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v31 - v15;

  sub_1D78B3854();

  sub_1D77BD50C(a3, v16, type metadata accessor for PurchaseContext);
  (*(v8 + 56))(v16, 0, 1, v7);
  swift_beginAccess();
  v17 = v33;

  v18 = v16;
  v19 = v35;
  sub_1D7827DC0(v18, v35, v17);
  swift_endAccess();
  sub_1D7788448();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E7F88], v10);
  v31 = sub_1D78B6134();
  (*(v11 + 8))(v13, v10);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = v32;
  sub_1D77BD50C(a3, v32, type metadata accessor for PurchaseContext);
  v22 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v23 = swift_allocObject();
  v23[2] = v20;
  v23[3] = v19;
  v23[4] = v17;
  sub_1D777044C(v21, v23 + v22);
  aBlock[4] = sub_1D77BD574;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_19_0;
  v24 = _Block_copy(aBlock);

  v25 = v36;
  sub_1D78B5274();
  v42 = MEMORY[0x1E69E7CC0];
  sub_1D7749084(&qword_1EE090300, MEMORY[0x1E69E7F60]);
  v26 = MEMORY[0x1E69E7F60];
  sub_1D7748F58(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D77415C8(&qword_1EE090030, &qword_1EE090040, v26);
  v28 = v37;
  v27 = v38;
  sub_1D78B6324();
  v29 = v31;
  MEMORY[0x1DA7033B0](0, v25, v28, v24);
  _Block_release(v24);

  (*(v41 + 8))(v28, v27);
  (*(v39 + 8))(v25, v40);

  sub_1D78B3864();
}

void sub_1D77BC148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7748F58(0, &qword_1EE0904C8, sub_1D77BD124, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D78B3F24();
    sub_1D78B43A4();

    sub_1D77BD124(0);
    v11 = v10;
    v12 = *(v10 - 8);
    if ((*(v12 + 48))(v9, 1, v10) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1D7748F58(0, &qword_1EC9CA110, sub_1D77BD5DC, MEMORY[0x1E69E6F90]);
      sub_1D77BD5DC();
      v14 = v13 - 8;
      v15 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D78BCAB0;
      v17 = (v16 + v15);
      v18 = *(v14 + 56);
      *v17 = a2;
      v17[1] = a3;
      sub_1D77BD50C(a4, v17 + v18, type metadata accessor for PurchaseContext);

      sub_1D77FF0F0(v16);
      swift_setDeallocating();
      sub_1D77BD374(v17, sub_1D77BD5DC);
      swift_deallocClassInstance();
      sub_1D78B4364();

      (*(v12 + 8))(v9, v11);
      v19 = sub_1D78B4014();
      sub_1D78B40D4();
    }
  }
}

uint64_t sub_1D77BC460()
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B6094();
  sub_1D774FE1C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D78BCAB0;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  sub_1D78B6504();
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1D775ABD4();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_1D78B42C4();
}

uint64_t sub_1D77BC598(uint64_t a1, uint64_t a2)
{
  v24 = sub_1D78B5254();
  v27 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D78B52A4();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D78B5264();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7748F58(0, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - v14;

  sub_1D78B3854();

  swift_beginAccess();
  sub_1D782B08C(a1, a2, v15);
  swift_endAccess();
  sub_1D77B9AA8(v15);
  sub_1D7788448();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E7F88], v9);
  v16 = sub_1D78B6134();
  (*(v10 + 8))(v12, v9);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = sub_1D77BD4AC;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_12;
  v19 = _Block_copy(aBlock);

  sub_1D78B5274();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1D7749084(&qword_1EE090300, MEMORY[0x1E69E7F60]);
  v20 = MEMORY[0x1E69E7F60];
  sub_1D7748F58(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D77415C8(&qword_1EE090030, &qword_1EE090040, v20);
  v21 = v24;
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v8, v5, v19);
  _Block_release(v19);

  (*(v27 + 8))(v5, v21);
  (*(v25 + 8))(v8, v26);

  sub_1D78B3864();
}

void sub_1D77BCA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7748F58(0, &qword_1EE0904C8, sub_1D77BD124, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D78B3F24();
    sub_1D78B43A4();

    sub_1D77BD124(0);
    v9 = v8;
    v10 = *(v8 - 8);
    if ((*(v10 + 48))(v7, 1, v8) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1D77BD4B8(0, &qword_1EE08FA50, MEMORY[0x1E69E6F90]);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1D78BCAB0;
      *(v11 + 32) = a2;
      *(v11 + 40) = a3;

      sub_1D78B4374();

      (*(v10 + 8))(v7, v9);
      v12 = sub_1D78B4014();
      sub_1D78B40D4();
    }
  }
}

uint64_t sub_1D77BCC94()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D77BCD10()
{
  v1 = v0;
  v2 = sub_1D78B3914();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1D78B3884();
  MEMORY[0x1EEE9AC00](v3 - 8);
  *(v0 + 24) = MEMORY[0x1E69E7CC8];
  sub_1D78B3874();
  sub_1D78B38A4();
  swift_allocObject();
  *(v0 + 32) = sub_1D78B3894();
  v4 = MEMORY[0x1E69D6420];
  sub_1D7748F58(0, &qword_1EE08FAB0, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1D78BCAB0;
  sub_1D78B3904();
  sub_1D7749084(&qword_1EE095410, MEMORY[0x1E69D6420]);
  sub_1D7748F58(0, &unk_1EE0900C0, v4, MEMORY[0x1E69E62F8]);
  sub_1D77415C8(&qword_1EE0900B8, &unk_1EE0900C0, v4);
  sub_1D78B6324();
  sub_1D7748F58(0, &unk_1EE095330, sub_1D77BD0A8, MEMORY[0x1E69D6A80]);
  swift_allocObject();

  *(v1 + 16) = sub_1D78B3F34();
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1D77BD11C;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_8;
  v7 = _Block_copy(aBlock);

  [v5 scheduleLowPriorityBlock_];
  _Block_release(v7);
  return v1;
}

unint64_t sub_1D77BD0C8()
{
  result = qword_1EE091660;
  if (!qword_1EE091660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE091660);
  }

  return result;
}

void sub_1D77BD144(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for PurchaseContextEntriesManager.StoreDescriptor;
    v8[1] = type metadata accessor for PurchaseContext();
    v8[2] = sub_1D77BD0C8();
    v8[3] = sub_1D7749084(&qword_1EE094648, type metadata accessor for PurchaseContext);
    v8[4] = sub_1D7749084(qword_1EE094650, type metadata accessor for PurchaseContext);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D77BD23C()
{
  if (!qword_1EE0901B8)
  {
    type metadata accessor for PurchaseContext();
    v0 = sub_1D78B5BF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0901B8);
    }
  }
}

void sub_1D77BD304(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D77BD374(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D77BD3D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseContext();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D77BD438()
{
  if (!qword_1EE095248)
  {
    sub_1D77BD4B8(255, &qword_1EE090010, MEMORY[0x1E69E62F8]);
    v0 = sub_1D78B4184();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE095248);
    }
  }
}

void sub_1D77BD4B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D77BD50C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D77BD574()
{
  v1 = *(type metadata accessor for PurchaseContext() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_1D77BC148(v2, v3, v4, v5);
}

void sub_1D77BD5DC()
{
  if (!qword_1EC9CA118)
  {
    type metadata accessor for PurchaseContext();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9CA118);
    }
  }
}

id sub_1D77BD654@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v10 = type metadata accessor for AlacartePaywallViewModel();
  v11 = *(a1 + v10[14]) & 0xFD;
  sub_1D78B6054();
  if ([v9 horizontalSizeClass] == 1)
  {
    [v9 userInterfaceIdiom];
  }

  __swift_project_boxed_opaque_existential_1((v3 + 64), *(v3 + 88));
  v98 = sub_1D7816520(*a1, a1[1], v9, v11 != 0);
  sub_1D77BDDAC(v98);
  v94 = v12;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1((v3 + 64), *(v3 + 88));

  MEMORY[0x1DA702FF0](32, 0xE100000000000000);
  MEMORY[0x1DA702FF0](a1[4], a1[5]);
  v15 = sub_1D781723C();

  sub_1D77BDDAC(v15);
  v17 = v16;
  v19 = v18;
  __swift_project_boxed_opaque_existential_1((v3 + 64), *(v3 + 88));
  v20 = sub_1D78169B8(*(a1 + v10[8]), *(a1 + v10[8] + 8), *(a1 + v10[9]), *(a1 + v10[9] + 8));
  v21 = [v9 horizontalSizeClass];
  if (v21 >= 3)
  {
    result = sub_1D78B6524();
    __break(1u);
    return result;
  }

  v91 = v15;
  v22 = dbl_1D78C0300[v21];
  __swift_project_boxed_opaque_existential_1((v3 + 64), *(v3 + 88));
  v23 = sub_1D7816FD4(*(a1 + v10[11]), *(a1 + v10[11] + 8), v9);
  sub_1D78B6144();
  v75 = v24;
  v88 = v25;
  v90 = v20;
  v26 = v11;
  if (v11)
  {
    sub_1D77BDF8C(v9);
  }

  else
  {
    v28 = [v9 horizontalSizeClass];
    v27 = 255.0;
    if (v28 == 1)
    {
      v27 = 220.0;
    }
  }

  v92 = v27;
  v29 = [v98 string];
  v30 = sub_1D78B5C74();
  v32 = v31;

  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v30 & 0xFFFFFFFFFFFFLL;
  }

  v97 = 0.0;
  v34 = 0.0;
  if (v33)
  {
    if (!v26)
    {
      goto LABEL_19;
    }

    v35 = [v9 horizontalSizeClass];
    v36 = [v9 verticalSizeClass];
    if (v35 == 2)
    {
      if (v36 != 1)
      {
LABEL_19:
        v37 = sub_1D78B6154();
        v38 = sub_1D78B6154();
        [v38 ascender];

        v39 = sub_1D78B6154();
        [v39 descender];

        sub_1D78B5F44();
        v34 = v40;

        goto LABEL_20;
      }
    }

    else if (v35 != 1 || (v36 - 1) >= 2)
    {
      goto LABEL_19;
    }

    [v9 userInterfaceIdiom];
    goto LABEL_19;
  }

LABEL_20:
  v85 = v6;
  v41 = sub_1D78B6154();
  v42 = sub_1D78B6154();
  [v42 ascender];

  v43 = sub_1D78B6154();
  [v43 descender];

  sub_1D78B5F44();
  v45 = v44;

  v99.size.width = v94;
  v99.size.height = v14;
  v99.origin.x = (v7 - v94) * 0.5;
  v99.origin.y = v34;
  v100 = CGRectIntegral(v99);
  x = v100.origin.x;
  height = v100.size.height;
  width = v100.size.width;
  y = v100.origin.y;
  v101.origin.y = v100.origin.y + CGRectGetHeight(v100) + 20.0;
  v101.size.height = 50.0;
  v101.origin.x = (v7 - v22) * 0.5;
  v101.size.width = v22;
  v102 = CGRectIntegral(v101);
  v46 = v102.origin.x;
  v47 = v102.origin.y;
  v95 = v102.size.height;
  v96 = v102.size.width;
  v48 = 0.0;
  v49 = 0.0;
  v50 = 0.0;
  if ((*(a1 + v10[13]) & 1) == 0)
  {
    v103.origin.y = v102.origin.y + CGRectGetHeight(v102) + 5.0;
    v103.origin.x = (v7 - v17) * 0.5;
    v103.size.width = v17;
    v103.size.height = v19;
    v102 = CGRectIntegral(v103);
    v97 = v102.origin.x;
    v48 = v102.origin.y;
    v49 = v102.size.width;
    v50 = v102.size.height;
  }

  rect = v49;
  v79 = v48;
  MaxY = CGRectGetMaxY(v102);
  v80 = v47;
  v81 = v46;
  v77 = v50;
  if (*(a1 + v10[12]))
  {
    v52 = v92 + v50 - (v88 + v45);
    v89 = 0.0;
    v74 = 0.0;
    v76 = 0.0;
    v73 = 0.0;
  }

  else
  {
    v104.size.width = v75;
    v104.origin.y = v45 + MaxY;
    v104.origin.x = (v7 - v75) * 0.5;
    v104.size.height = v88;
    v105 = CGRectIntegral(v104);
    v89 = v105.origin.x;
    v74 = v105.size.width;
    v76 = v105.origin.y;
    v73 = v105.size.height;
    v52 = v92 + v50;
  }

  v53 = v85 - (v8 + v52);
  v54 = 0.0;
  if (v26)
  {
    v55 = v8 + v52;
  }

  else
  {
    v53 = 0.0;
    v55 = v52;
  }

  if (v26)
  {
    v56 = v85;
  }

  else
  {
    v56 = v52;
  }

  v57 = 0;
  v58 = v7;
  v106 = CGRectIntegral(*(&v53 - 1));
  v59 = v106.origin.x;
  v93 = v106.origin.y;
  v86 = v106.size.width;
  v72 = v106.size.height;
  v106.origin.x = 0.0;
  v106.origin.y = 0.0;
  v106.size.width = v7;
  v106.size.height = v56;
  v107 = CGRectIntegral(v106);
  v60 = v107.origin.x;
  v61 = v107.origin.y;
  v62 = v107.size.width;
  v63 = v107.size.height;
  result = [v9 displayScale];
  v66 = v60;
  v67 = v61;
  v68 = v62;
  v69 = 0.0;
  v70 = 0.0;
  v71 = v63;
  if (!v26)
  {
    v70 = 1.0 / v65;
    v54 = v52 - 1.0 / v65;
    v66 = 0.0;
    v67 = 0.0;
    v68 = 0.0;
    v71 = 0.0;
    v69 = v7;
  }

  *a3 = v60;
  *(a3 + 8) = v61;
  *(a3 + 16) = v62;
  *(a3 + 24) = v63;
  *(a3 + 32) = v59;
  *(a3 + 40) = v93;
  *(a3 + 48) = v86;
  *(a3 + 56) = v72;
  *(a3 + 64) = v66;
  *(a3 + 72) = v67;
  *(a3 + 80) = v68;
  *(a3 + 88) = v71;
  *(a3 + 96) = x;
  *(a3 + 104) = y;
  *(a3 + 112) = width;
  *(a3 + 120) = height;
  *(a3 + 128) = v81;
  *(a3 + 136) = v80;
  *(a3 + 144) = v96;
  *(a3 + 152) = v95;
  *(a3 + 160) = v97;
  *(a3 + 168) = v79;
  *(a3 + 176) = rect;
  *(a3 + 184) = v77;
  *(a3 + 192) = v89;
  *(a3 + 200) = v76;
  *(a3 + 208) = v74;
  *(a3 + 216) = v73;
  *(a3 + 224) = 0;
  *(a3 + 232) = v54;
  *(a3 + 240) = v69;
  *(a3 + 248) = v70;
  *(a3 + 256) = v98;
  *(a3 + 264) = v91;
  *(a3 + 272) = v90;
  *(a3 + 280) = v23;
  return result;
}

uint64_t sub_1D77BDDAC(void *a1)
{
  v2 = sub_1D78B2FF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 string];
  v7 = sub_1D78B5C74();
  v9 = v8;

  v15[0] = v7;
  v15[1] = v9;
  sub_1D78B2FC4();
  sub_1D77BE06C();
  v10 = sub_1D78B62C4();
  v12 = v11;
  (*(v3 + 8))(v5, v2);

  v14 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v14 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    return sub_1D78B6144();
  }

  return result;
}

uint64_t sub_1D77BDF30()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocClassInstance();
}

char *sub_1D77BDF8C(void *a1)
{
  v2 = [a1 horizontalSizeClass];
  result = [a1 verticalSizeClass];
  if (v2 == 2)
  {
    if (result != 1)
    {
      return result;
    }

    return [a1 userInterfaceIdiom];
  }

  if (v2 == 1 && (result - 1) < 2)
  {
    return [a1 userInterfaceIdiom];
  }

  return result;
}

unint64_t sub_1D77BE06C()
{
  result = qword_1EE0901E0;
  if (!qword_1EE0901E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0901E0);
  }

  return result;
}

uint64_t sub_1D77BE0C0(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 96), *(a1 + 120));
  v1 = off_1F526DCD8[0];
  type metadata accessor for EntitlementsManager();
  return v1();
}

uint64_t sub_1D77BE12C(char *a1, uint64_t a2, char a3)
{
  sub_1D77BE32C(*a1);
  v5 = __swift_project_boxed_opaque_existential_1((a2 + 96), *(a2 + 120));
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *v5;
  v8 = objc_opt_self();
  swift_retain_n();
  v9 = [v8 sharedAccount];
  v10 = [v9 isUserSignedIntoiTunes];

  if (v10 && ([*(v7 + 176) isNetworkReachable] & 1) != 0)
  {
    v11 = *(v7 + 184);
    v12 = swift_allocObject();
    v12[2] = v7;
    v12[3] = sub_1D77BFEE4;
    v12[4] = v6;
    v15[4] = sub_1D77C0148;
    v15[5] = v12;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1D781E048;
    v15[3] = &block_descriptor_21;
    v13 = _Block_copy(v15);

    [v11 performEntitlementWithIgnoreCache:0 completion:v13];
    _Block_release(v13);
  }

  else
  {
    sub_1D77BEB6C(a2, a3 & 1, &unk_1F526A580, sub_1D77A3184, &block_descriptor_28);
  }
}

void sub_1D77BE32C(char a1)
{
  if (NFStoreDemoMode())
  {
    return;
  }

  if (a1)
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B60A4();

    sub_1D78B42C4();
    return;
  }

  v26 = [objc_opt_self() sharedAccount];
  v3 = [v26 isUserSignedIntoiTunes];
  v4 = [*(v1 + 24) cachedSubscription];
  if (objc_getAssociatedObject(v4, v4 + 1))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  aBlock = v33;
  v30 = v34;
  if (!*(&v34 + 1))
  {
    sub_1D7756B84(&aBlock);
    goto LABEL_16;
  }

  sub_1D77BFFAC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v5 = 0;
    v6 = 0;
    goto LABEL_17;
  }

  v5 = v28;
  v6 = [v28 integerValue];
  if (v6 == -1)
  {
    goto LABEL_24;
  }

LABEL_17:
  if (objc_getAssociatedObject(v4, ~v6))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  aBlock = v33;
  v30 = v34;
  if (!*(&v34 + 1))
  {
    sub_1D7756B84(&aBlock);
    goto LABEL_24;
  }

  sub_1D77BFFAC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:

    v9 = -118;
    goto LABEL_25;
  }

  v7 = v28;
  v8 = [v7 integerValue];

  v9 = v8 - 118;
LABEL_25:
  v27 = v1;
  v25 = (v9 ^ v6) & 1;
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D78BF690;
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  if (v3)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v3)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1DA702FF0](v11, v12);

  v13 = aBlock;
  v14 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v15 = sub_1D775ABD4();
  *(v10 + 32) = v13;
  *(v10 + 96) = v14;
  *(v10 + 104) = v15;
  *(v10 + 64) = v15;
  *(v10 + 72) = 0x65736C6166;
  *(v10 + 80) = 0xE500000000000000;
  if (v25)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v25)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  MEMORY[0x1DA702FF0](v16, v17);

  v18 = aBlock;
  *(v10 + 136) = v14;
  *(v10 + 144) = v15;
  *(v10 + 112) = v18;
  sub_1D78B60A4();
  sub_1D78B42C4();

  v19 = *(v1 + 16);
  v20 = [v26 iTunesAccountName];
  v21 = [v26 iTunesAccountDSID];
  v22 = swift_allocObject();
  *(v22 + 16) = v27;
  *(v22 + 24) = v26;
  *(v22 + 32) = v3;
  *(v22 + 33) = v25;
  v31 = sub_1D77BFF7C;
  v32 = v22;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v30 = sub_1D77BF674;
  *(&v30 + 1) = &block_descriptor_34;
  v23 = _Block_copy(&aBlock);

  v24 = v26;

  [v19 shouldShowSignedInWithDifferentiTunesAccountAlertWithiTunesAccountName:v20 iTunesAccountDSID:v21 isUserSignedIntoiTunes:v3 isBundleSubscriber:v25 completion:v23];
  _Block_release(v23);
}

uint64_t sub_1D77BE820(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1D78B31B4();
  v7 = [v6 code];

  if ((v7 & 0x8000000000000000) != 0 || v7 != *MEMORY[0x1E69B5038])
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();
    sub_1D774FE1C();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1D78BCAB0;
    aBlock[6] = a1;
    sub_1D773C9B8(0, &qword_1EE08F9F0);
    sub_1D78B6504();
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1D775ABD4();
    *(v19 + 32) = 0;
    *(v19 + 40) = 0xE000000000000000;
    sub_1D78B42C4();
  }

  else
  {
    v8 = __swift_project_boxed_opaque_existential_1((a2 + 96), *(a2 + 120));
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    v10 = a3 & 1;
    *(v9 + 24) = a3 & 1;
    v11 = *v8;
    v12 = objc_opt_self();
    swift_retain_n();
    v13 = [v12 sharedAccount];
    v14 = [v13 isUserSignedIntoiTunes];

    if (v14 && [*(v11 + 176) isNetworkReachable])
    {
      v15 = *(v11 + 184);
      v16 = swift_allocObject();
      v16[2] = v11;
      v16[3] = sub_1D77BED0C;
      v16[4] = v9;
      aBlock[4] = sub_1D77BFED8;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D781E048;
      aBlock[3] = &block_descriptor_9;
      v17 = _Block_copy(aBlock);

      [v15 performEntitlementWithIgnoreCache:0 completion:v17];
      _Block_release(v17);
    }

    else
    {
      sub_1D77BEB6C(a2, v10, &unk_1F526A4B8, sub_1D77A2CD4, &block_descriptor_11);
    }
  }
}

void sub_1D77BEB6C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *__swift_project_boxed_opaque_existential_1((a1 + 96), *(a1 + 120));
  v9 = [objc_opt_self() sharedAccount];
  v10 = [v9 isUserSignedIntoiTunes];

  if (v10)
  {
    v11 = *(v8 + 24);
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    *(v12 + 24) = 0;
    v14[4] = a4;
    v14[5] = v12;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1D7781488;
    v14[3] = a5;
    v13 = _Block_copy(v14);

    [v11 refreshBundleSubscriptionWithCachePolicy:2 hideBundleDetectionUI:a2 & 1 completion:v13];
    _Block_release(v13);
  }
}

uint64_t sub_1D77BECA4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);

  return swift_deallocClassInstance();
}

void sub_1D77BED50(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, char a9)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D78BCAB0;
  aBlock = 0;
  v28 = 0xE000000000000000;
  if (a1)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (a1)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x1DA702FF0](v16, v17);

  v18 = aBlock;
  v19 = v28;
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = sub_1D775ABD4();
  *(v15 + 32) = v18;
  *(v15 + 40) = v19;
  sub_1D78B60A4();
  sub_1D78B42C4();

  if (a1)
  {
    if (a5 && a3)
    {
      sub_1D77BF008(a4, a5, a2, a3);
    }

    [*(a6 + 16) clearAllAppStorePurchases];
    v20 = *(a6 + 24);

    [v20 clearBundleSubscription];
  }

  else
  {
    v21 = *(a6 + 16);
    v22 = [a7 iTunesAccountName];
    v23 = [a7 iTunesAccountDSID];
    v31 = sub_1D77BFFF8;
    v32 = a6;
    aBlock = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_1D77BF5E8;
    v30 = &block_descriptor_37;
    v24 = _Block_copy(&aBlock);

    [v21 shouldShowiTunesSignedOutAlertWithiTunesAccountName:v22 iTunesAccountDSID:v23 isUserSignedIntoiTunes:a8 & 1 isBundleSubscriber:a9 & 1 completion:v24];
    _Block_release(v24);
  }
}

uint64_t sub_1D77BF008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1D77C0000();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  sub_1D78B5054();
  swift_allocObject();

  v10 = sub_1D78B5004();

  sub_1D78B5034();

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  v11 = v5[10];
  v12 = v5[11];
  __swift_project_boxed_opaque_existential_1(v5 + 7, v11);
  (*(v12 + 88))(v10, v11, v12);
}

void sub_1D77BF1A0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D78BCAB0;
  v16 = 0;
  v17 = 0xE000000000000000;
  if (a1)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (a1)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1DA702FF0](v8, v9);

  v10 = v16;
  v11 = v17;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1D775ABD4();
  *(v7 + 32) = v10;
  *(v7 + 40) = v11;
  sub_1D78B60A4();
  sub_1D78B42C4();

  if (a1)
  {
    if (a3)
    {
      sub_1D77BF47C();
    }

    [*(a4 + 16) clearAllAppStorePurchases];
    v12 = *(a4 + 24);

    [v12 clearBundleSubscription];
  }

  else
  {
    v13 = *(a4 + 40);
    sub_1D78B60A4();
    sub_1D78B42C4();
    sub_1D78B60A4();
    sub_1D78B42C4();
    if (*(v13 + 240) == 1)
    {
      v14 = *(v13 + 232);
      v20 = sub_1D77C0170;
      v21 = v13;
      v16 = MEMORY[0x1E69E9820];
      v17 = 1107296256;
      v18 = sub_1D779ECCC;
      v19 = &block_descriptor_47_0;
      v15 = _Block_copy(&v16);

      [v14 enqueueBlock_];
      _Block_release(v15);
    }

    else
    {
      sub_1D78B60A4();
      sub_1D78B42C4();
    }

    sub_1D779DCD8();
  }
}

uint64_t sub_1D77BF47C()
{
  sub_1D77C0064();
  sub_1D78B5054();
  swift_allocObject();

  v1 = sub_1D78B5004();

  sub_1D78B5034();

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  (*(v3 + 88))(v1, v2, v3);
}

uint64_t sub_1D77BF5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = sub_1D78B5C74();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4(a2, v5, v7);
}

uint64_t sub_1D77BF674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = sub_1D78B5C74();
    v9 = v8;
    if (v4)
    {
LABEL_3:
      v10 = sub_1D78B5C74();
      v4 = v11;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:

  v6(a2, v7, v9, v10, v4);
}

void sub_1D77BF738(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  sub_1D78B60A4();
  sub_1D78B42C4();
  if (*(v1 + 240) == 1)
  {
    v2 = *(v1 + 232);
    v4[4] = sub_1D77C005C;
    v4[5] = v1;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 1107296256;
    v4[2] = sub_1D779ECCC;
    v4[3] = &block_descriptor_43;
    v3 = _Block_copy(v4);

    [v2 enqueueBlock_];
    _Block_release(v3);
  }

  else
  {
    sub_1D78B60A4();
    sub_1D78B42C4();
  }

  sub_1D779DCD8();
}

void sub_1D77BF8DC(uint64_t a1)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  __swift_project_boxed_opaque_existential_1((a1 + 136), *(a1 + 160));
  v2 = sub_1D78B4874();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 rootViewController];

    if (v4)
    {
      v5 = sub_1D78B60B4();
      v6 = [objc_allocWithZone(MEMORY[0x1E698C7B0]) init];
      [v6 setIgnoreAccountConversion_];
      v7 = sub_1D78B5C44();
      [v6 setDebugReason_];

      v8 = [objc_allocWithZone(MEMORY[0x1E698CC58]) initWithAccount:0 presentingViewController:v5 options:v6];
      v9 = [v8 performAuthentication];
      v11[4] = sub_1D77C00C0;
      v11[5] = a1;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 1107296256;
      v11[2] = sub_1D7780F60;
      v11[3] = &block_descriptor_50;
      v10 = _Block_copy(v11);

      [v9 addFinishBlock_];
      _Block_release(v10);
    }
  }
}

void sub_1D77BFB20(void *a1, id a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a2;
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();
    sub_1D774FE1C();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D78BCAB0;
    sub_1D773C9B8(0, &qword_1EE08F9F0);
    sub_1D78B6504();
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1D775ABD4();
    *(v6 + 32) = 0;
    *(v6 + 40) = 0xE000000000000000;
    sub_1D78B42C4();

    v7 = sub_1D78B31B4();
    v8 = [v7 fc_isAuthenticationUserCancelled];

    if (v8)
    {
    }

    else
    {

      sub_1D78B4224();
    }
  }

  else if (a1)
  {
    v9 = [a1 account];
    if (v9)
    {

      v10 = objc_opt_self();
      v11 = [v10 sharedAccount];
      [v11 reloadiTunesAccount];

      v12 = *__swift_project_boxed_opaque_existential_1((a3 + 96), *(a3 + 120));
      v13 = [v10 sharedAccount];
      LODWORD(v11) = [v13 isUserSignedIntoiTunes];

      if (v11)
      {
        v14 = *(v12 + 24);
        v15 = swift_allocObject();
        *(v15 + 16) = v12;
        *(v15 + 24) = 0;
        aBlock[4] = sub_1D77A3184;
        aBlock[5] = v15;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D7781488;
        aBlock[3] = &block_descriptor_57;
        v16 = _Block_copy(aBlock);

        [v14 refreshBundleSubscriptionWithCachePolicy:2 hideBundleDetectionUI:0 completion:v16];
        _Block_release(v16);
      }
    }
  }
}

uint64_t sub_1D77BFE20(void *a1)
{
  sub_1D77C00D0();
  sub_1D78B5054();
  swift_allocObject();
  v2 = sub_1D78B5004();
  v3 = a1[10];
  v4 = a1[11];
  __swift_project_boxed_opaque_existential_1(a1 + 7, v3);
  (*(v4 + 88))(v2, v3, v4);
}

void sub_1D77BFF28()
{
  if (!qword_1EE08F9C0)
  {
    v0 = sub_1D78B62A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08F9C0);
    }
  }
}

unint64_t sub_1D77BFFAC()
{
  result = qword_1EE08FBD0;
  if (!qword_1EE08FBD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08FBD0);
  }

  return result;
}

unint64_t sub_1D77C0000()
{
  result = qword_1EC9CA120;
  if (!qword_1EC9CA120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA120);
  }

  return result;
}

unint64_t sub_1D77C0064()
{
  result = qword_1EC9CA128;
  if (!qword_1EC9CA128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA128);
  }

  return result;
}

unint64_t sub_1D77C00D0()
{
  result = qword_1EC9CA130;
  if (!qword_1EC9CA130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA130);
  }

  return result;
}

id sub_1D77C0174()
{
  type metadata accessor for Images();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EE0905E0 = result;
  return result;
}

void sub_1D77C01C8()
{
  if (qword_1EE0905D8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE0905E0;
  v1 = sub_1D78B5C44();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  qword_1EC9D9E18 = v2;
}

void sub_1D77C02BC(uint64_t a1)
{
  v2 = sub_1D78B5C44();
  v3 = [objc_opt_self() systemImageNamed_];

  if (v3)
  {
    [v3 imageWithTintColor:a1 renderingMode:1];
  }

  else
  {
    __break(1u);
  }
}

void static Images.checkmarkCircleFill(tint:)(uint64_t a1)
{
  v2 = sub_1D78B5C44();
  v3 = [objc_opt_self() systemImageNamed_];

  if (v3)
  {
    [v3 imageWithTintColor:a1 renderingMode:1];
  }

  else
  {
    __break(1u);
  }
}

void sub_1D77C0424(uint64_t a1, SEL *a2, void *a3)
{
  v4 = [objc_opt_self() *a2];
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    v7 = [v6 blackColor];
    v8 = [v6 whiteColor];
    v9 = [v6 ts:v7 dynamicColor:v8 withDarkStyleVariant:?];

    v10 = [v5 imageWithTintColor:v9 renderingMode:1];
    *a3 = v10;
  }

  else
  {
    __break(1u);
  }
}

id sub_1D77C0520()
{
  result = [objc_opt_self() premiumSealInner];
  if (result)
  {
    qword_1EE09C2A8 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id Images.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Images.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Images();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Images.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Images();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1D77C0668(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D78B6534();
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

  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1D77D9874(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v15;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA703700](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v6 channelID];
      v9 = sub_1D78B5C74();
      v11 = v10;

      v13 = *(v15 + 16);
      v12 = *(v15 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D77D9874((v12 > 1), v13 + 1, 1);
      }

      ++v5;
      *(v15 + 16) = v13 + 1;
      v14 = v15 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

CGFloat sub_1D77C07B4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v166 = a1;
  sub_1D776F504(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v164 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v129 - v10;
  v12 = *a2;
  v13 = *(a2 + 56);
  v14 = *(a2 + 80);
  [v14 horizontalSizeClass];
  v154 = v13;
  sub_1D78B6054();
  v16 = v12 - v15 + -66.0;
  v17 = __swift_project_boxed_opaque_existential_1(v4 + 7, v4[10]);
  v18 = sub_1D7859910(v14, *v17);
  v19 = 109.0;
  if (!v18)
  {
    v19 = 0.0;
  }

  x = v19;
  v20 = 27.0;
  if (!v18)
  {
    v20 = 0.0;
  }

  y = v20;
  __swift_project_boxed_opaque_existential_1(v4 + 7, v4[10]);
  v153 = sub_1D7859A84(v14);
  v22 = v21;
  __swift_project_boxed_opaque_existential_1(v4 + 7, v4[10]);
  v149 = sub_1D7859C68(v14);
  v24 = v23;
  v25 = __swift_project_boxed_opaque_existential_1(v4 + 7, v4[10]);
  v26 = *v25;
  v27 = (*v25 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler);
  v28 = v27[3];
  v29 = v27[4];
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v30 = OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_viewModel;
  v31 = type metadata accessor for BundlePaywallViewModel(0);
  v32 = (v26 + v30 + *(v31 + 40));
  v33 = (*(v29 + 64))(*v32, v32[1], v14, v28, v29);
  sub_1D78B6144();
  v35 = v34;
  v37 = v36;

  v38 = v35 + 120.0;
  if (v35 + 120.0 <= 158.0)
  {
    v38 = 158.0;
  }

  v145 = v38;
  if (v37 <= 30.0)
  {
    v37 = 30.0;
  }

  __swift_project_boxed_opaque_existential_1(v4 + 7, v4[10]);
  v141 = sub_1D7859F78(v14);
  v40 = v39;
  v41 = v4[10];
  v165 = v4;
  __swift_project_boxed_opaque_existential_1(v4 + 7, v41);
  v42 = sub_1D785A298(v14);
  v43 = v166;
  v137 = v42;
  v45 = v44;
  [v14 horizontalSizeClass];
  v140 = v40;
  v46 = 11.0;
  if (v40 <= 0.0)
  {
    v47 = 0.0;
  }

  else
  {
    v47 = 11.0;
  }

  v139 = v47;
  v144 = v37;
  if (v37 <= 0.0)
  {
    v48 = 0.0;
  }

  else
  {
    v48 = 11.0;
  }

  v143 = v48;
  v148 = v24;
  if (v24 <= 0.0)
  {
    v49 = 0.0;
  }

  else
  {
    v49 = 11.0;
  }

  v147 = v49;
  if (v22 <= 0.0)
  {
    v50 = 0.0;
  }

  else
  {
    v50 = 11.0;
  }

  v135 = v45;
  if (v45 <= 0.0)
  {
    v46 = 0.0;
  }

  v134 = v46;
  v168 = v14;
  v51 = [v14 userInterfaceStyle];
  v52 = 68;
  if (v51 == 2)
  {
    v52 = 72;
  }

  v167 = v31;
  sub_1D776F538(v43 + *(v31 + v52), v11);
  v53 = sub_1D78B3294();
  v54 = *(v53 - 8);
  v55 = *(v54 + 48);
  v136 = v53;
  v56 = v55(v11, 1);
  v159 = v12;
  if (v56 == 1)
  {
    v57 = 0.0;
  }

  else
  {
    v57 = v12;
  }

  sub_1D77C12C8(v11);
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  if (v57 > 0.0)
  {
    v172.origin.x = (v16 - v57) * 0.5;
    v172.size.height = *v43;
    v172.origin.y = 0.0;
    v172.size.width = v57;
    *&v58 = CGRectIntegral(v172);
  }

  v62 = x;
  v162 = v59;
  v163 = v58;
  v161 = v60;
  v160 = v61;
  v173.origin.y = CGRectGetMaxY(*&v58) + v43[1];
  v173.origin.x = (v16 - v62) * 0.5;
  v173.size.width = v62;
  v173.size.height = y;
  v174 = CGRectIntegral(v173);
  v63 = v153;
  x = v174.origin.x;
  y = v174.origin.y;
  width = v174.size.width;
  height = v174.size.height;
  v175.origin.y = v50 + CGRectGetMaxY(v174);
  v175.origin.x = (v16 - v63) * 0.5;
  v175.size.width = v63;
  v175.size.height = v22;
  v176 = CGRectIntegral(v175);
  v64 = v149;
  v153 = v176.origin.x;
  v152 = v176.origin.y;
  v151 = v176.size.width;
  v150 = v176.size.height;
  v177.origin.y = v147 + CGRectGetMaxY(v176);
  v177.origin.x = (v16 - v64) * 0.5;
  v177.size.width = v64;
  v177.size.height = v148;
  v178 = CGRectIntegral(v177);
  v65 = v145;
  v149 = v178.origin.x;
  v148 = v178.origin.y;
  v147 = v178.size.width;
  v146 = v178.size.height;
  v179.origin.y = v143 + CGRectGetMaxY(v178);
  v179.origin.x = (v16 - v65) * 0.5;
  v179.size.width = v65;
  v179.size.height = v144;
  v180 = CGRectIntegral(v179);
  v66 = v141;
  v145 = v180.origin.x;
  v144 = v180.origin.y;
  v143 = v180.size.width;
  v142 = v180.size.height;
  v181.origin.y = v139 + CGRectGetMaxY(v180);
  v181.origin.x = (v16 - v66) * 0.5;
  v181.size.width = v66;
  v181.size.height = v140;
  v182 = CGRectIntegral(v181);
  v141 = v182.origin.x;
  v140 = v182.origin.y;
  v139 = v182.size.width;
  v138 = v182.size.height;
  MaxY = CGRectGetMaxY(v182);
  v68 = v167;
  if (*(v43 + v167[25]))
  {
    v69 = v135;
  }

  else
  {
    v69 = 0.0;
  }

  v70 = v137;
  v71 = v134 + MaxY;
  v72 = (v16 - v137) * 0.5;
  v183 = CGRectIntegral(*(&v69 - 3));
  v73 = v183.origin.x;
  v74 = v183.origin.y;
  v75 = v183.size.height;
  v137 = v183.size.width;
  v184.size.height = CGRectGetMaxY(v183) + 24.0;
  v184.origin.x = v154 + 33.0;
  v184.origin.y = 0.0;
  v184.size.width = v16;
  v185 = CGRectIntegral(v184);
  v76 = v185.origin.x;
  v77 = v185.origin.y;
  v78 = v185.size.width;
  v79 = v185.size.height;
  v186.size.height = CGRectGetHeight(v185);
  v186.origin.x = 0.0;
  v186.origin.y = 0.0;
  v186.size.width = v159;
  v187 = CGRectIntegral(v186);
  v80 = v187.origin.x;
  v154 = v187.origin.y;
  v135 = v187.size.width;
  v134 = v187.size.height;
  v81 = v165;
  v83 = v165[5];
  v82 = v165[6];
  __swift_project_boxed_opaque_existential_1(v165 + 2, v83);
  v84 = v43;
  v85 = v168;
  v159 = COERCE_DOUBLE((*(*(v82 + 8) + 48))(v43[2], v43[3], v168, v83));
  v86 = v81[5];
  v132 = v81[6];
  v133 = __swift_project_boxed_opaque_existential_1(v81 + 2, v86);
  v87 = sub_1D787443C();
  v89 = v88;
  v90 = v84[7];
  v131 = v84[6];
  v130 = v90;
  v91 = v84 + v68[9];
  v92 = v164;
  v93 = v136;
  (*(v54 + 16))(v164, v91, v136);
  (*(v54 + 56))(v92, 0, 1, v93);
  v136 = (*(*(v132 + 8) + 56))(v87, v89, v85, v131, v130, v92, v86);

  sub_1D77C12C8(v92);
  v95 = v81[5];
  v94 = v81[6];
  __swift_project_boxed_opaque_existential_1(v81 + 2, v95);
  v96 = v167;
  v164 = (*(*(v94 + 8) + 64))(*(v84 + v167[10]), *(v84 + v167[10] + 8), v85, v95);
  sub_1D774584C((v81 + 2), &v169);
  v98 = v170;
  v97 = v171;
  __swift_project_boxed_opaque_existential_1(&v169, v170);
  v99 = (v84 + v96[12]);
  if (v99[1])
  {
    v100 = *v99;
    v101 = v99[1];
  }

  else
  {
    v100 = 0;
    v101 = 0xE000000000000000;
  }

  v102 = *(v97 + 8);
  v103 = *(v102 + 80);

  v104 = v103(v100, v101, v168, v98, v102);

  __swift_destroy_boxed_opaque_existential_1(&v169);
  sub_1D774584C((v165 + 2), &v169);
  v105 = v170;
  v106 = v171;
  __swift_project_boxed_opaque_existential_1(&v169, v170);
  v107 = (v166 + v167[15]);
  if (v107[1])
  {
    v108 = *v107;
    v109 = v107[1];
  }

  else
  {
    v108 = 0;
    v109 = 0xE000000000000000;
  }

  v110 = *(v106 + 8);
  v111 = *(v110 + 96);

  v112 = v111(v108, v109, v168, v105, v110);

  __swift_destroy_boxed_opaque_existential_1(&v169);
  v113 = v154;
  *a3 = v80;
  *(a3 + 8) = v113;
  v114 = v134;
  *(a3 + 16) = v135;
  *(a3 + 24) = v114;
  *(a3 + 32) = v76;
  *(a3 + 40) = v77;
  *(a3 + 48) = v78;
  *(a3 + 56) = v79;
  v115 = v162;
  *(a3 + 64) = v163;
  *(a3 + 72) = v115;
  v116 = v160;
  *(a3 + 80) = v161;
  *(a3 + 88) = v116;
  v117 = y;
  *(a3 + 96) = x;
  *(a3 + 104) = v117;
  v118 = height;
  *(a3 + 112) = width;
  *(a3 + 120) = v118;
  v119 = v152;
  *(a3 + 128) = v153;
  *(a3 + 136) = v119;
  v120 = v150;
  *(a3 + 144) = v151;
  *(a3 + 152) = v120;
  v121 = v148;
  *(a3 + 160) = v149;
  *(a3 + 168) = v121;
  v122 = v146;
  *(a3 + 176) = v147;
  *(a3 + 184) = v122;
  v123 = v144;
  *(a3 + 192) = v145;
  *(a3 + 200) = v123;
  v124 = v142;
  *(a3 + 208) = v143;
  *(a3 + 216) = v124;
  v125 = v140;
  *(a3 + 224) = v141;
  *(a3 + 232) = v125;
  v126 = v138;
  *(a3 + 240) = v139;
  *(a3 + 248) = v126;
  *(a3 + 256) = v73;
  *(a3 + 264) = v74;
  result = v137;
  *(a3 + 272) = v137;
  *(a3 + 280) = v75;
  v128 = v136;
  *(a3 + 288) = v159;
  *(a3 + 296) = v128;
  *(a3 + 304) = v164;
  *(a3 + 312) = v104;
  *(a3 + 320) = v112;
  return result;
}

uint64_t sub_1D77C1264()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1D77C12C8(uint64_t a1)
{
  sub_1D776F504(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D77C1370(uint64_t a1, void *a2)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B6094();
  sub_1D774FE1C();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D78BCB50;
  v4 = [a2 identifier];
  v5 = sub_1D78B5C74();
  v7 = v6;

  v8 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D775ABD4();
  *(v3 + 64) = v9;
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  sub_1D78B6504();
  *(v3 + 96) = v8;
  *(v3 + 104) = v9;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0xE000000000000000;
  sub_1D78B42C4();
}

uint64_t sub_1D77C14E0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1D77C1580@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ColorPalette();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_1F5271630;
  *a1 = result;
  return result;
}

uint64_t sub_1D77C15C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773C9B8(0, &qword_1EE095CE8);
  result = sub_1D78B39F4();
  if (v7)
  {
    v4 = type metadata accessor for BaseStyler();
    v5 = swift_allocObject();
    result = sub_1D7741E34(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F5268528;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PaywallModel.tag.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 <= 3)
  {
    if (*(v0 + 16) > 1u)
    {
      return swift_unknownObjectRetain();
    }

    if (!*(v0 + 16))
    {
      goto LABEL_8;
    }

    v5 = [v1 sourceChannel];
  }

  else
  {
    if (*(v0 + 16) > 5u)
    {
      if (v3 == 6 || v3 == 7)
      {
        return swift_unknownObjectRetain();
      }

LABEL_8:
      swift_unknownObjectRetain();
      return v2;
    }

    if (v3 == 4)
    {
      return swift_unknownObjectRetain();
    }

    v5 = [v1 puzzleType];
  }

  return v5;
}

uint64_t PaywallModel.purchaseIDs.getter()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 200);
  v37[10] = *(v0 + 184);
  v37[11] = v2;
  v38 = *(v0 + 216);
  v3 = *(v0 + 104);
  v4 = *(v0 + 136);
  v37[6] = *(v0 + 120);
  v37[7] = v4;
  v37[8] = *(v0 + 152);
  v37[9] = v1;
  v5 = *(v0 + 40);
  v6 = *(v0 + 72);
  v37[2] = *(v0 + 56);
  v37[3] = v6;
  v37[4] = *(v0 + 88);
  v37[5] = v3;
  v37[0] = *(v0 + 24);
  v37[1] = v5;
  v7 = sub_1D77C19C8(v37);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v9 = nullsub_1(v37);
      v11 = *v9;
      v10 = v9[1];
      sub_1D7777D44(0, &qword_1EE08FA50, MEMORY[0x1E69E6F90]);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1D78BCAB0;
      *(v8 + 32) = v11;
      *(v8 + 40) = v10;

      return v8;
    }

    v21 = nullsub_1(v37);
    v31 = *(v21 + 112);
    v32 = *(v21 + 128);
    v33 = *(v21 + 144);
    *&v34 = *(v21 + 160);
    v27 = *(v21 + 48);
    v28 = *(v21 + 64);
    v29 = *(v21 + 80);
    v30 = *(v21 + 96);
    v24 = *v21;
    v25 = *(v21 + 16);
    v26 = *(v21 + 32);
    v22 = Offer.purchaseID()();
    if (v22.value._object)
    {
      sub_1D7777D44(0, &qword_1EE08FA50, MEMORY[0x1E69E6F90]);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1D78BCAB0;
      *(v8 + 32) = v22;
      return v8;
    }

    return 0;
  }

  if (v7)
  {
    v12 = nullsub_1(v37);
    v13 = v12[1];
    if (v13)
    {
      v14 = *v12;
      sub_1D7777D44(0, &qword_1EE08FA50, MEMORY[0x1E69E6F90]);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1D78BCAB0;
      *(v8 + 32) = v14;
      *(v8 + 40) = v13;
      v15 = *(v0 + 168);
      v16 = *(v0 + 200);
      v34 = *(v0 + 184);
      v35 = v16;
      v36 = *(v0 + 216);
      v17 = *(v0 + 104);
      v18 = *(v0 + 136);
      v30 = *(v0 + 120);
      v31 = v18;
      v32 = *(v0 + 152);
      v33 = v15;
      v19 = *(v0 + 40);
      v20 = *(v0 + 72);
      v26 = *(v0 + 56);
      v27 = v20;
      v28 = *(v0 + 88);
      v29 = v17;
      v24 = *(v0 + 24);
      v25 = v19;
      nullsub_1(&v24);

      return v8;
    }

    return 0;
  }

  v8 = *nullsub_1(v37);

  return v8;
}

uint64_t sub_1D77C19D0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    v3 = 0xEB00000000646565;
    v4 = 0x466C656E6E616863;
    if (a3 == 2)
    {
      v4 = 0x6565466F69647561;
      v3 = 0xE900000000000064;
    }

    v7 = 0xE700000000000000;
    v8 = 0x656C6369747261;
    if (a3)
    {
      v8 = 0x6664506575737369;
      v7 = 0xE800000000000000;
    }

    v9 = a3 <= 1u;
  }

  else
  {
    v3 = 0xED00006461656874;
    v4 = 0x73614D7961646F74;
    v5 = 0xE800000000000000;
    v6 = 0x64656546646F6F66;
    if (a3 != 7)
    {
      v6 = 0x657069636572;
      v5 = 0xE600000000000000;
    }

    if (a3 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0xEC00000064656546;
    v8 = 0x656E697A6167616DLL;
    if (a3 != 4)
    {
      v8 = 0x656C7A7A7570;
      v7 = 0xE600000000000000;
    }

    v9 = a3 <= 5u;
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v9)
  {
    v11 = v7;
  }

  else
  {
    v11 = v3;
  }

  MEMORY[0x1DA702FF0](v10, v11);
}

uint64_t PurchaseModel.description.getter()
{
  v1 = *(v0 + 176);
  v9[10] = *(v0 + 160);
  v9[11] = v1;
  v10 = *(v0 + 192);
  v2 = *(v0 + 112);
  v9[6] = *(v0 + 96);
  v9[7] = v2;
  v3 = *(v0 + 144);
  v9[8] = *(v0 + 128);
  v9[9] = v3;
  v4 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v4;
  v5 = *(v0 + 80);
  v9[4] = *(v0 + 64);
  v9[5] = v5;
  v6 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v6;
  v7 = sub_1D77C19C8(v9);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      nullsub_1(v9);
      return 0x7365636976726573;
    }

    else
    {
      nullsub_1(v9);
      return 0xD000000000000011;
    }
  }

  else if (v7)
  {
    nullsub_1(v9);
    return 0x6574726163616C61;
  }

  else
  {
    nullsub_1(v9);
    return 0x656C646E7562;
  }
}

uint64_t sub_1D77C1C24()
{
  v1 = *(v0 + 176);
  v9[10] = *(v0 + 160);
  v9[11] = v1;
  v10 = *(v0 + 192);
  v2 = *(v0 + 112);
  v9[6] = *(v0 + 96);
  v9[7] = v2;
  v3 = *(v0 + 144);
  v9[8] = *(v0 + 128);
  v9[9] = v3;
  v4 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v4;
  v5 = *(v0 + 80);
  v9[4] = *(v0 + 64);
  v9[5] = v5;
  v6 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v6;
  v7 = sub_1D77C19C8(v9);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      nullsub_1(v9);
      return 0x7365636976726573;
    }

    else
    {
      nullsub_1(v9);
      return 0xD000000000000011;
    }
  }

  else if (v7)
  {
    nullsub_1(v9);
    return 0x6574726163616C61;
  }

  else
  {
    nullsub_1(v9);
    return 0x656C646E7562;
  }
}

id sub_1D77C1D1C()
{
  v1 = *v0;
  if (*(v0 + 16) <= 3u)
  {
    if (*(v0 + 16) > 1u || !*(v0 + 16))
    {
      return swift_unknownObjectRetain();
    }

    v3 = [v1 sourceChannel];
  }

  else
  {
    if (*(v0 + 16) > 5u || *(v0 + 16) == 4)
    {
      return swift_unknownObjectRetain();
    }

    v3 = [v1 puzzleType];
  }

  return v3;
}

uint64_t PaywallHostModel.description.getter()
{
  v1 = *(v0 + 16);
  if (v1 <= 3)
  {
    v2 = 0x466C656E6E616863;
    if (v1 == 2)
    {
      v2 = 0x6565466F69647561;
    }

    v4 = 0x656C6369747261;
    if (*(v0 + 16))
    {
      v4 = 0x6664506575737369;
    }

    v5 = *(v0 + 16) <= 1u;
  }

  else
  {
    v2 = 0x73614D7961646F74;
    v3 = 0x64656546646F6F66;
    if (v1 != 7)
    {
      v3 = 0x657069636572;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x656E697A6167616DLL;
    if (v1 != 4)
    {
      v4 = 0x656C7A7A7570;
    }

    v5 = *(v0 + 16) <= 5u;
  }

  if (v5)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

id PaywallModel.hostModel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1D77C1F0C(v2, v3, v4);
}

id sub_1D77C1F0C(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 3u)
  {
    if (a3 <= 5u)
    {
      if (a3 != 4 && a3 != 5)
      {
        return result;
      }
    }

    else if (a3 != 6 && a3 != 7)
    {
      if (a3 != 8)
      {
        return result;
      }

      v3 = result;
    }

    goto LABEL_19;
  }

  if (a3 > 1u)
  {
    if (a3 != 2 && a3 != 3)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (!a3)
  {
    swift_unknownObjectRetain();
LABEL_19:

    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t PaywallModel.purchaseModel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 200);
  v16[10] = *(v1 + 184);
  v16[11] = v3;
  v17 = *(v1 + 216);
  v4 = *(v1 + 104);
  v5 = *(v1 + 136);
  v16[6] = *(v1 + 120);
  v16[7] = v5;
  v16[8] = *(v1 + 152);
  v16[9] = v2;
  v6 = *(v1 + 40);
  v7 = *(v1 + 72);
  v16[2] = *(v1 + 56);
  v16[3] = v7;
  v16[4] = *(v1 + 88);
  v16[5] = v4;
  v16[0] = *(v1 + 24);
  v16[1] = v6;
  v8 = *(v1 + 168);
  v9 = *(v1 + 200);
  *(a1 + 160) = *(v1 + 184);
  *(a1 + 176) = v9;
  *(a1 + 192) = *(v1 + 216);
  v10 = *(v1 + 104);
  v11 = *(v1 + 136);
  *(a1 + 96) = *(v1 + 120);
  *(a1 + 112) = v11;
  *(a1 + 128) = *(v1 + 152);
  *(a1 + 144) = v8;
  v12 = *(v1 + 40);
  v13 = *(v1 + 72);
  *(a1 + 32) = *(v1 + 56);
  *(a1 + 48) = v13;
  *(a1 + 64) = *(v1 + 88);
  *(a1 + 80) = v10;
  *a1 = *(v1 + 24);
  *(a1 + 16) = v12;
  return sub_1D77C20B0(v16, v15);
}

__n128 PaywallModel.init(hostModel:purchaseModel:paywallType:softPaywallPosition:fcPaywallType:contentType:paywallSubtype:availableInAppPurchaseIdentifiers:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = *a1;
  v9 = a2[8];
  *(a9 + 168) = a2[9];
  v10 = a2[11];
  *(a9 + 184) = a2[10];
  *(a9 + 200) = v10;
  v11 = a2[4];
  *(a9 + 104) = a2[5];
  v12 = a2[7];
  *(a9 + 120) = a2[6];
  *(a9 + 136) = v12;
  *(a9 + 152) = v9;
  v13 = *a2;
  *(a9 + 40) = a2[1];
  result = a2[2];
  v15 = a2[3];
  *(a9 + 56) = result;
  *(a9 + 72) = v15;
  *(a9 + 88) = v11;
  v16 = *a4;
  v17 = *a6;
  v18 = *a7;
  *(a9 + 16) = *(a1 + 16);
  *(a9 + 216) = *(a2 + 192);
  *(a9 + 24) = v13;
  *(a9 + 242) = v16;
  *(a9 + 224) = a3;
  *(a9 + 232) = a5;
  *(a9 + 241) = v17;
  *(a9 + 240) = v18;
  *(a9 + 248) = a8;
  return result;
}

uint64_t PaywallModel.purchaseID.getter()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 200);
  v39[10] = *(v0 + 184);
  v39[11] = v2;
  v40 = *(v0 + 216);
  v3 = *(v0 + 104);
  v4 = *(v0 + 136);
  v39[6] = *(v0 + 120);
  v39[7] = v4;
  v39[8] = *(v0 + 152);
  v39[9] = v1;
  v5 = *(v0 + 40);
  v6 = *(v0 + 72);
  v39[2] = *(v0 + 56);
  v39[3] = v6;
  v39[4] = *(v0 + 88);
  v39[5] = v3;
  v39[0] = *(v0 + 24);
  v39[1] = v5;
  v7 = sub_1D77C19C8(v39);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v11 = nullsub_1(v39);
      v13 = *v11;
      v12 = v11[1];
      sub_1D7777D44(0, &qword_1EE08FA50, MEMORY[0x1E69E6F90]);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D78BCAB0;
      *(v9 + 32) = v13;
      *(v9 + 40) = v12;
LABEL_9:

      goto LABEL_12;
    }

    v23 = nullsub_1(v39);
    v33 = *(v23 + 112);
    v34 = *(v23 + 128);
    v35 = *(v23 + 144);
    *&v36 = *(v23 + 160);
    v29 = *(v23 + 48);
    v30 = *(v23 + 64);
    v31 = *(v23 + 80);
    v32 = *(v23 + 96);
    v26 = *v23;
    v27 = *(v23 + 16);
    v28 = *(v23 + 32);
    v24 = Offer.purchaseID()();
    if (v24.value._object)
    {
      sub_1D7777D44(0, &qword_1EE08FA50, MEMORY[0x1E69E6F90]);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D78BCAB0;
      *(v9 + 32) = v24;
      goto LABEL_12;
    }

    return 0;
  }

  if (v7)
  {
    v14 = nullsub_1(v39);
    v15 = v14[1];
    if (v15)
    {
      v16 = *v14;
      sub_1D7777D44(0, &qword_1EE08FA50, MEMORY[0x1E69E6F90]);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D78BCAB0;
      *(v9 + 32) = v16;
      *(v9 + 40) = v15;
      v17 = *(v0 + 168);
      v18 = *(v0 + 200);
      v36 = *(v0 + 184);
      v37 = v18;
      v38 = *(v0 + 216);
      v19 = *(v0 + 104);
      v20 = *(v0 + 136);
      v32 = *(v0 + 120);
      v33 = v20;
      v34 = *(v0 + 152);
      v35 = v17;
      v21 = *(v0 + 40);
      v22 = *(v0 + 72);
      v28 = *(v0 + 56);
      v29 = v22;
      v30 = *(v0 + 88);
      v31 = v19;
      v26 = *(v0 + 24);
      v27 = v21;
      nullsub_1(&v26);
      goto LABEL_9;
    }

    return 0;
  }

  v8 = nullsub_1(v39);
  v9 = *v8;
  v10 = *(*v8 + 16);

  if (v10)
  {
LABEL_12:
    v10 = *(v9 + 32);

    return v10;
  }

  return v10;
}

uint64_t PaywallModel.headline.getter()
{
  if (*(v0 + 16))
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void PaywallModel.buyParams.getter()
{
  v1 = type metadata accessor for OfferAction();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 168);
  v6 = *(v0 + 200);
  v55 = *(v0 + 184);
  v56 = v6;
  v57 = *(v0 + 216);
  v7 = *(v0 + 104);
  v8 = *(v0 + 136);
  v51 = *(v0 + 120);
  v52 = v8;
  v53 = *(v0 + 152);
  v54 = v5;
  v9 = *(v0 + 40);
  v10 = *(v0 + 72);
  v47 = *(v0 + 56);
  v48 = v10;
  v49 = *(v0 + 88);
  v50 = v7;
  v45 = *(v0 + 24);
  v46 = v9;
  v11 = *(v0 + 168);
  v12 = *(v0 + 200);
  v58[10] = *(v0 + 184);
  v58[11] = v12;
  v59 = *(v0 + 216);
  v13 = *(v0 + 104);
  v14 = *(v0 + 136);
  v58[6] = *(v0 + 120);
  v58[7] = v14;
  v58[8] = *(v0 + 152);
  v58[9] = v11;
  v15 = *(v0 + 40);
  v16 = *(v0 + 72);
  v58[2] = *(v0 + 56);
  v58[3] = v16;
  v58[4] = *(v0 + 88);
  v58[5] = v13;
  v58[0] = *(v0 + 24);
  v58[1] = v15;
  v17 = sub_1D77C19C8(v58);
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = nullsub_1(v58);
      v34 = v47;
      v35 = v48;
      v32 = v45;
      v33 = v46;
      v38 = v51;
      v39 = v52;
      v36 = v49;
      v37 = v50;
      v44 = v57;
      v42 = v55;
      v43 = v56;
      v40 = v53;
      v41 = v54;
      v19 = nullsub_1(&v32);
      sub_1D77C3348(v19, v31, sub_1D77C33E0);
      sub_1D778D0B0(v18 + 24);
    }

    else
    {
      v20 = *(nullsub_1(v58) + 32);
      v21 = *(v20 + 16);
      if (v21)
      {
        v22 = v20 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
        v42 = v55;
        v43 = v56;
        v44 = v57;
        v38 = v51;
        v39 = v52;
        v40 = v53;
        v41 = v54;
        v34 = v47;
        v35 = v48;
        v36 = v49;
        v37 = v50;
        v32 = v45;
        v33 = v46;
        v23 = nullsub_1(&v32);
        sub_1D77C3348(v23, v31, sub_1D77C3318);
        v24 = 0;
        while (v24 < *(v20 + 16))
        {
          sub_1D77C3348(v22 + *(v2 + 72) * v24, v4, type metadata accessor for OfferAction);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload == 1)
            {
              sub_1D77826E8();

              v28 = sub_1D78B3294();
              (*(*(v28 - 8) + 8))(v4, v28);
            }
          }

          else
          {
            v25 = *(v4 + 2);
            v26 = *(v4 + 10);
            v29[1] = *(v4 + 6);
            v29[2] = v26;
            v30 = v4[90];

            if ((v30 - 1) < 2)
            {
              sub_1D77C33B0(&v45);
              return;
            }
          }

          if (v21 == ++v24)
          {
            sub_1D77C33B0(&v45);
            return;
          }
        }

        __break(1u);
      }
    }
  }

  else
  {
    nullsub_1(v58);
  }
}

__n128 PaywallModel.offer.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 168);
  v4 = *(v1 + 200);
  v82[10] = *(v1 + 184);
  v82[11] = v4;
  v83 = *(v1 + 216);
  v5 = *(v1 + 104);
  v6 = *(v1 + 136);
  v82[6] = *(v1 + 120);
  v82[7] = v6;
  v82[8] = *(v1 + 152);
  v82[9] = v3;
  v7 = *(v1 + 40);
  v8 = *(v1 + 72);
  v82[2] = *(v1 + 56);
  v82[3] = v8;
  v82[4] = *(v1 + 88);
  v82[5] = v5;
  v82[0] = *(v1 + 24);
  v82[1] = v7;
  v9 = sub_1D77C19C8(v82);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v31 = nullsub_1(v82);
      v32 = *(v31 + 16);
      v33 = *(v1 + 24);
      v34 = *(v1 + 88);
      v35 = *(v1 + 72);
      v66 = *(v1 + 56);
      *v67 = v35;
      v36 = *(v1 + 40);
      v64 = v33;
      v65 = v36;
      v37 = *(v1 + 152);
      v38 = *(v1 + 136);
      v69 = *(v1 + 120);
      v70 = v38;
      v39 = *(v1 + 104);
      *&v67[16] = v34;
      v68 = v39;
      v75 = *(v1 + 216);
      v40 = *(v1 + 200);
      v73 = *(v1 + 184);
      v74 = v40;
      v41 = *(v1 + 168);
      v71 = v37;
      v72 = v41;
      v42 = nullsub_1(&v64);
      sub_1D77C3348(v42, v63, sub_1D77C33E0);

      v21 = *(v31 + 96);
      v22 = *(v31 + 72);
      v23 = *(v31 + 80);
      v24 = *(v31 + 64);
      v25 = *(v31 + 56);
      v26 = *(v31 + 40);
      v27 = *(v31 + 24);
      v43 = *(v31 + 152);
      v78 = *(v31 + 136);
      v79 = v43;
      v80 = *(v31 + 168);
      v81 = *(v31 + 184);
      v29 = *(v31 + 104);
      v30 = *(v31 + 120);
    }

    else
    {
      v44 = nullsub_1(v82);
      v21 = *(v44 + 72);
      v22 = *(v44 + 48);
      v24 = *(v44 + 40);
      v25 = *(v44 + 32);
      v61 = *(v44 + 16);
      v62 = *(v44 + 56);
      v60 = *v44;
      v45 = *(v1 + 88);
      v46 = *(v1 + 152);
      v47 = *(v1 + 136);
      v69 = *(v1 + 120);
      v70 = v47;
      v48 = *(v1 + 104);
      *&v67[16] = v45;
      v68 = v48;
      v75 = *(v1 + 216);
      v49 = *(v1 + 200);
      v73 = *(v1 + 184);
      v74 = v49;
      v50 = *(v1 + 72);
      v66 = *(v1 + 56);
      *v67 = v50;
      v51 = *(v1 + 40);
      v52 = *(v1 + 168);
      v71 = v46;
      v72 = v52;
      v64 = *(v1 + 24);
      v65 = v51;
      v53 = nullsub_1(&v64);
      sub_1D77C3348(v53, v63, sub_1D77C3318);
      v27 = v60;
      v26 = v61;
      v23 = v62;
      v54 = *(v44 + 128);
      v78 = *(v44 + 112);
      v79 = v54;
      v80 = *(v44 + 144);
      v81 = *(v44 + 160);
      v29 = *(v44 + 80);
      v30 = *(v44 + 96);
    }

    goto LABEL_8;
  }

  if (!v9)
  {
    v10 = nullsub_1(v82);
    v11 = *(v1 + 24);
    v12 = *(v1 + 88);
    v13 = *(v1 + 72);
    v66 = *(v1 + 56);
    *v67 = v13;
    v14 = *(v1 + 40);
    v64 = v11;
    v65 = v14;
    v15 = *(v1 + 152);
    v16 = *(v1 + 136);
    v69 = *(v1 + 120);
    v70 = v16;
    v17 = *(v1 + 104);
    *&v67[16] = v12;
    v68 = v17;
    v75 = *(v1 + 216);
    v18 = *(v1 + 200);
    v73 = *(v1 + 184);
    v74 = v18;
    v19 = *(v1 + 168);
    v71 = v15;
    v72 = v19;
    v20 = nullsub_1(&v64);
    sub_1D77C3348(v20, v63, sub_1D77C34F8);

    v21 = *(v10 + 88);
    v22 = *(v10 + 64);
    v23 = *(v10 + 72);
    v24 = *(v10 + 56);
    v25 = *(v10 + 48);
    v27 = *(v10 + 16);
    v26 = *(v10 + 32);
    v28 = *(v10 + 144);
    v78 = *(v10 + 128);
    v79 = v28;
    v80 = *(v10 + 160);
    v81 = *(v10 + 176);
    v29 = *(v10 + 96);
    v30 = *(v10 + 112);
LABEL_8:
    v76 = v29;
    v77 = v30;
    v64 = v27;
    v65 = v26;
    *&v66 = v25;
    BYTE8(v66) = v24;
    v67[0] = v22;
    *&v67[8] = v23;
    *&v67[24] = v21;
    v70 = v78;
    v71 = v79;
    v72 = v80;
    *&v73 = v81;
    v68 = v29;
    v69 = v30;
    nullsub_1(&v64);
    goto LABEL_9;
  }

  nullsub_1(v82);
  sub_1D775F3AC(&v64);
LABEL_9:
  v55 = v72;
  *(a1 + 128) = v71;
  *(a1 + 144) = v55;
  *(a1 + 160) = v73;
  v56 = v68;
  *(a1 + 64) = *&v67[16];
  *(a1 + 80) = v56;
  v57 = v70;
  *(a1 + 96) = v69;
  *(a1 + 112) = v57;
  v58 = v65;
  *a1 = v64;
  *(a1 + 16) = v58;
  result = *v67;
  *(a1 + 32) = v66;
  *(a1 + 48) = result;
  return result;
}

uint64_t PaywallModel.paywallHostType.getter@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  if (v3 > 3)
  {
    if (*(v1 + 16) <= 5u)
    {
      if (v3 == 4)
      {
        *a1 = 2;
        *(a1 + 8) = 2;
        return result;
      }

      v4 = 4;
    }

    else if (v3 == 6)
    {
      v4 = 5;
    }

    else
    {
      if (v3 == 7)
      {
        *a1 = result;
        *(a1 + 8) = 1;
        return swift_unknownObjectRetain();
      }

      v4 = 6;
    }

    goto LABEL_19;
  }

  if (*(v1 + 16) > 1u)
  {
    if (v3 != 2)
    {
      *a1 = result;
      *(a1 + 8) = 0;
      return swift_unknownObjectRetain();
    }

    v4 = 3;
    goto LABEL_19;
  }

  if (*(v1 + 16))
  {
    v4 = 1;
LABEL_19:
    *a1 = v4;
    goto LABEL_20;
  }

  *a1 = 0;
LABEL_20:
  *(a1 + 8) = 2;
  return result;
}

uint64_t PaywallModel.paywallHostDescription.getter()
{
  v1 = *(v0 + 16);
  if (v1 <= 3)
  {
    v2 = 0x466C656E6E616863;
    if (v1 == 2)
    {
      v2 = 0x6565466F69647561;
    }

    v4 = 0x656C6369747261;
    if (*(v0 + 16))
    {
      v4 = 0x6664506575737369;
    }

    v5 = *(v0 + 16) <= 1u;
  }

  else
  {
    v2 = 0x73614D7961646F74;
    v3 = 0x64656546646F6F66;
    if (v1 != 7)
    {
      v3 = 0x657069636572;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x656E697A6167616DLL;
    if (v1 != 4)
    {
      v4 = 0x656C7A7A7570;
    }

    v5 = *(v0 + 16) <= 5u;
  }

  if (v5)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t PaywallModel.purchaseType.getter()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 200);
  v11[10] = *(v0 + 184);
  v11[11] = v2;
  v12 = *(v0 + 216);
  v3 = *(v0 + 104);
  v4 = *(v0 + 136);
  v11[6] = *(v0 + 120);
  v11[7] = v4;
  v11[8] = *(v0 + 152);
  v11[9] = v1;
  v5 = *(v0 + 40);
  v6 = *(v0 + 72);
  v11[2] = *(v0 + 56);
  v11[3] = v6;
  v11[4] = *(v0 + 88);
  v11[5] = v3;
  v11[0] = *(v0 + 24);
  v11[1] = v5;
  v7 = sub_1D77C19C8(v11);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v9 = nullsub_1(v11);
      if (v9[14])
      {
        if (v9[19] == 0xD000000000000019 && 0x80000001D78CF0C0 == v9[20])
        {
          return 3;
        }

        v10 = sub_1D78B6724();
      }

      else
      {
        v10 = AMSMarketingItem.isCIPOffer()();
      }

      if (v10)
      {
        return 3;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      nullsub_1(v11);
      return 5;
    }
  }

  else if (v7)
  {
    nullsub_1(v11);
    return 0;
  }

  else if (*(nullsub_1(v11) + 8))
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

uint64_t PaywallModel.conversionLocation.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2 > 3)
  {
    if (v2 == 7)
    {
      v3 = 16;
    }

    else
    {
      v3 = 17;
    }

    if (v2 == 6)
    {
      v4 = 15;
    }

    else
    {
      v4 = v3;
    }

    if (v2 == 4)
    {
      v5 = 10;
    }

    else
    {
      v5 = 14;
    }

    if (*(v1 + 16) <= 5u)
    {
      LOBYTE(v6) = v5;
    }

    else
    {
      LOBYTE(v6) = v4;
    }

    goto LABEL_22;
  }

  if (*(v1 + 16) > 1u)
  {
    if (v2 == 2)
    {
      LOBYTE(v6) = 12;
    }

    else
    {
      LOBYTE(v6) = 2;
    }

    goto LABEL_22;
  }

  if (*(v1 + 16))
  {
    LOBYTE(v6) = 13;
    goto LABEL_22;
  }

  v7 = *(v1 + 224);
  if (v7 < 3)
  {
    v6 = 0x10301u >> (8 * v7);
LABEL_22:
    *a1 = v6;
    return result;
  }

  result = sub_1D78B6764();
  __break(1u);
  return result;
}

uint64_t PaywallModel.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 224);
  v5 = *(v0 + 240);
  v6 = *(v0 + 241);
  *&v20[0] = 0;
  *(&v20[0] + 1) = 0xE000000000000000;
  sub_1D78B6454();
  MEMORY[0x1DA702FF0](0xD00000000000001BLL, 0x80000001D78D3580);
  v7 = *(v0 + 184);
  v20[9] = *(v0 + 168);
  v20[10] = v7;
  v20[11] = *(v0 + 200);
  v21 = *(v0 + 216);
  v8 = *(v0 + 120);
  v20[5] = *(v0 + 104);
  v20[6] = v8;
  v9 = *(v0 + 152);
  v20[7] = *(v0 + 136);
  v20[8] = v9;
  v10 = *(v0 + 40);
  v11 = *(v0 + 72);
  v20[2] = *(v0 + 56);
  v20[3] = v11;
  v20[4] = *(v0 + 88);
  v20[0] = *(v0 + 24);
  v20[1] = v10;
  v12 = sub_1D77C19C8(v20);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      nullsub_1(v20);
      v13 = 0xEE00656C646E7542;
      v14 = 0x7365636976726573;
    }

    else
    {
      nullsub_1(v20);
      v13 = 0x80000001D78D3510;
      v14 = 0xD000000000000011;
    }
  }

  else if (v12)
  {
    nullsub_1(v20);
    v13 = 0xE800000000000000;
    v14 = 0x6574726163616C61;
  }

  else
  {
    nullsub_1(v20);
    v13 = 0xE600000000000000;
    v14 = 0x656C646E7562;
  }

  MEMORY[0x1DA702FF0](v14, v13);

  MEMORY[0x1DA702FF0](0x6C6177796150202CLL, 0xEF3D65707954206CLL);
  if (v4 >= 3)
  {
    result = sub_1D78B6764();
    __break(1u);
  }

  else
  {
    MEMORY[0x1DA702FF0](*&aNone_3[8 * v4], 0xE400000000000000);

    MEMORY[0x1DA702FF0](0xD000000000000012, 0x80000001D78D35A0);
    if (v5)
    {
      v15 = 0x646572616873;
    }

    else
    {
      v15 = 0x647261646E617473;
    }

    if (v5)
    {
      v16 = 0xE600000000000000;
    }

    else
    {
      v16 = 0xE800000000000000;
    }

    MEMORY[0x1DA702FF0](v15, v16);

    MEMORY[0x1DA702FF0](0xD000000000000015, 0x80000001D78D35C0);
    if (v6)
    {
      if (v6 == 1)
      {
        v17 = 0xE500000000000000;
        v18 = 0x6F69647541;
      }

      else
      {
        v17 = 0xE900000000000072;
        v18 = 0x657061707377654ELL;
      }
    }

    else
    {
      v17 = 0xE700000000000000;
      v18 = 0x746C7561666544;
    }

    MEMORY[0x1DA702FF0](v18, v17);

    MEMORY[0x1DA702FF0](0xD000000000000013, 0x80000001D78D35E0);
    sub_1D77C19D0(v1, v2, v3);
    MEMORY[0x1DA702FF0](41, 0xE100000000000000);
    return 0;
  }

  return result;
}

ValueMetadata *sub_1D77C3318()
{
  result = qword_1EE08E658[0];
  if (!qword_1EE08E658[0])
  {
    result = &type metadata for Offer;
    atomic_store(&type metadata for Offer, qword_1EE08E658);
  }

  return result;
}

uint64_t sub_1D77C3348(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D77C33E0()
{
  if (!qword_1EC9CADD0)
  {
    sub_1D77C3454();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC9CADD0);
    }
  }
}

void sub_1D77C3454()
{
  if (!qword_1EC9CA140)
  {
    sub_1D77C34AC();
    v0 = sub_1D78B62A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CA140);
    }
  }
}

unint64_t sub_1D77C34AC()
{
  result = qword_1EE08FEE0;
  if (!qword_1EE08FEE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08FEE0);
  }

  return result;
}

void sub_1D77C34F8()
{
  if (!qword_1EE090020)
  {
    sub_1D7777D44(255, &qword_1EE090010, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE090020);
    }
  }
}

__n128 __swift_memcpy193_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1D77C35D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 193))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 192);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D77C3620(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 192) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 193) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 193) = 0;
    }

    if (a2)
    {
      *(result + 192) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D77C36B0(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D77C3700(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t sub_1D77C3754(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D77C3788(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 17))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 16);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D77C37D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
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

__n128 __swift_memcpy256_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_1D77C3870(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 248);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D77C38CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1D77D98B4(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D77D98B4((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1D778D0A0(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1D77C39CC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D78B6534();
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
  result = sub_1D77D98D4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v18;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      v6 = MEMORY[0x1E69D6CF8];
      do
      {
        v7 = MEMORY[0x1DA703700](v5, a1);
        v18 = v3;
        v9 = *(v3 + 16);
        v8 = *(v3 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1D77D98D4((v8 > 1), v9 + 1, 1);
          v3 = v18;
        }

        ++v5;
        v16 = sub_1D78B3524();
        v17 = v6;
        *&v15 = v7;
        *(v3 + 16) = v9 + 1;
        sub_1D7741E34(&v15, v3 + 40 * v9 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v10 = (a1 + 32);
      v11 = MEMORY[0x1E69D6CF8];
      do
      {
        v12 = *v10;
        v18 = v3;
        v13 = *(v3 + 16);
        v14 = *(v3 + 24);

        if (v13 >= v14 >> 1)
        {
          sub_1D77D98D4((v14 > 1), v13 + 1, 1);
          v3 = v18;
        }

        v16 = sub_1D78B3524();
        v17 = v11;
        *&v15 = v12;
        *(v3 + 16) = v13 + 1;
        sub_1D7741E34(&v15, v3 + 40 * v13 + 32);
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

char *sub_1D77C3B84()
{
  sub_1D77C4DD4(0, &qword_1EC9CA148, MEMORY[0x1E69D6E78], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v90 = &v82 - v1;
  v2 = MEMORY[0x1E69D6E30];
  sub_1D77C4E9C(0, &qword_1EC9CA150, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6E30]);
  v87 = *(v3 - 8);
  v88 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v86 = &v82 - v4;
  v5 = MEMORY[0x1E69E6370];
  v6 = MEMORY[0x1E69D6EF0];
  sub_1D77C4E9C(0, &qword_1EC9CA158, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], v2);
  v94 = v7;
  v92 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v82 - v8;
  v9 = sub_1D78B3604();
  v84 = *(v9 - 8);
  v85 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D78B3674();
  v13 = *(v12 - 8);
  v99 = v12;
  v100 = v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v95 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v93 = &v82 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v89 = &v82 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v96 = &v82 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v98 = &v82 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v82 - v24;
  v83 = "roupProvider";
  v82 = "dising Item Keys";
  sub_1D77C4DD4(0, &qword_1EC9CA160, sub_1D77C4E38, MEMORY[0x1E69E6F90]);
  v27 = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D78BCAB0;
  sub_1D77C4E9C(0, &qword_1EC9CA170, v5, v6, MEMORY[0x1E69D6E50]);
  v30 = v29;
  if (qword_1EC9C85D8 != -1)
  {
    swift_once();
  }

  sub_1D775BF98(0, &qword_1EE08FA00, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v32 = v31;
  v33 = swift_allocObject();
  v101 = xmmword_1D78C0D70;
  *(v33 + 16) = xmmword_1D78C0D70;
  v34 = sub_1D78B35E4();

  v97 = v34;
  *(v33 + 32) = sub_1D78B3614();
  (*(v84 + 13))(v11, *MEMORY[0x1E69D6D78], v85);
  v35 = *(v92 + 104);
  LODWORD(v92) = *MEMORY[0x1E69D6E28];
  v35(v91);
  v36 = sub_1D78B3654();
  *(v28 + 56) = v30;
  *(v28 + 64) = sub_1D77C4EF0(&qword_1EC9CA178, &qword_1EC9CA170, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  *(v28 + 32) = v36;
  v94 = v25;
  sub_1D78B3664();
  v85 = v27;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1D78BCB50;
  sub_1D77C4E9C(0, &qword_1EC9CA180, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6E50]);
  v91 = v38;
  if (qword_1EC9C85E0 != -1)
  {
    swift_once();
  }

  v83 = "g Item Keys Override";
  v84 = "AMS Marketing Item";
  v39 = swift_allocObject();
  *(v39 + 16) = v101;

  *(v39 + 32) = sub_1D78B3614();
  v40 = v86;
  v41 = *(v87 + 104);
  v42 = v88;
  v41(v86, v92, v88);
  v43 = v91;
  v44 = sub_1D78B3644();
  *(v37 + 56) = v43;
  v45 = sub_1D77C4EF0(&qword_1EC9CA188, &qword_1EC9CA180, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0]);
  *(v37 + 64) = v45;
  *(v37 + 32) = v44;
  if (qword_1EC9C85E8 != -1)
  {
    swift_once();
  }

  v46 = swift_allocObject();
  v87 = v32;
  v47 = v46;
  *(v46 + 16) = v101;

  *(v47 + 32) = sub_1D78B3614();
  v41(v40, v92, v42);
  v48 = v91;
  v49 = sub_1D78B3644();
  *(v37 + 96) = v48;
  *(v37 + 104) = v45;
  *(v37 + 72) = v49;
  sub_1D78B3664();
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1D78C0D80;
  if (qword_1EC9C8500 != -1)
  {
    swift_once();
  }

  v51 = swift_allocObject();
  *(v51 + 16) = v101;

  *(v51 + 32) = sub_1D78B3614();
  v52 = sub_1D78B3524();
  swift_allocObject();
  v53 = sub_1D78B3534();
  v54 = MEMORY[0x1E69D6CF8];
  *(v50 + 56) = v52;
  *(v50 + 64) = v54;
  *(v50 + 32) = v53;
  if (qword_1EC9C8508 != -1)
  {
    swift_once();
  }

  v55 = swift_allocObject();
  *(v55 + 16) = v101;

  *(v55 + 32) = sub_1D78B3614();
  swift_allocObject();
  v56 = sub_1D78B3534();
  *(v50 + 96) = v52;
  *(v50 + 104) = v54;
  *(v50 + 72) = v56;
  if (qword_1EC9C8510 != -1)
  {
    swift_once();
  }

  v57 = swift_allocObject();
  *(v57 + 16) = v101;

  *(v57 + 32) = sub_1D78B3614();
  swift_allocObject();
  v58 = sub_1D78B3534();
  *(v50 + 136) = v52;
  *(v50 + 144) = v54;
  *(v50 + 112) = v58;
  if (qword_1EC9C8518 != -1)
  {
    swift_once();
  }

  v59 = swift_allocObject();
  *(v59 + 16) = v101;

  *(v59 + 32) = sub_1D78B3614();
  swift_allocObject();
  v60 = sub_1D78B3534();
  *(v50 + 176) = v52;
  *(v50 + 184) = v54;
  *(v50 + 152) = v60;
  if (qword_1EC9C8520 != -1)
  {
    swift_once();
  }

  v61 = swift_allocObject();
  *(v61 + 16) = v101;

  *(v61 + 32) = sub_1D78B3614();
  swift_allocObject();
  v62 = sub_1D78B3534();
  *(v50 + 216) = v52;
  *(v50 + 224) = v54;
  *(v50 + 192) = v62;
  sub_1D78B3664();
  v63 = v89;
  *&v101 = *(v100 + 16);
  (v101)(v89, v94, v99);
  v64 = sub_1D777AE38(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v66 = *(v64 + 2);
  v65 = *(v64 + 3);
  v67 = v66 + 1;
  if (v66 >= v65 >> 1)
  {
    v64 = sub_1D777AE38(v65 > 1, v66 + 1, 1, v64);
  }

  v68 = v90;
  *(v64 + 2) = v67;
  v69 = *(v100 + 32);
  v70 = (*(v100 + 80) + 32) & ~*(v100 + 80);
  v71 = *(v100 + 72);
  v72 = v63;
  v73 = v99;
  v69(&v64[v70 + v71 * v66], v72, v99);
  (v101)(v93, v98, v73);
  v74 = *(v64 + 3);
  v75 = v66 + 2;
  if (v75 > (v74 >> 1))
  {
    v64 = sub_1D777AE38(v74 > 1, v75, 1, v64);
  }

  *(v64 + 2) = v75;
  v76 = v99;
  v69(&v64[v70 + v71 * v67], v93, v99);
  sub_1D77C49CC(v68);
  v77 = *(v100 + 48);
  if (v77(v68, 1, v76) == 1)
  {
    (v101)(v95, v96, v76);
    if (v77(v68, 1, v76) != 1)
    {
      sub_1D77C4F54(v68);
    }
  }

  else
  {
    v69(v95, v68, v76);
  }

  v79 = *(v64 + 2);
  v78 = *(v64 + 3);
  if (v79 >= v78 >> 1)
  {
    v64 = sub_1D777AE38(v78 > 1, v79 + 1, 1, v64);
  }

  v80 = *(v100 + 8);
  v80(v96, v76);
  v80(v98, v76);
  v80(v94, v76);
  *(v64 + 2) = v79 + 1;
  v69(&v64[v70 + v79 * v71], v95, v76);
  return v64;
}

uint64_t sub_1D77C49CC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  (*(v4 + 16))(&v26, v3, v4);
  v5 = v26;
  if (v26 > 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    v26 = MEMORY[0x1E69E7CC0];
    v10 = *(v5 + 16);
    if (v10)
    {
      v25 = a1;
      sub_1D78B35E4();
      v24 = v5;
      v11 = (v5 + 56);
      do
      {
        v12 = *v11;

        v14 = sub_1D77C4FE0(v13);
        v16 = v15;

        v17 = sub_1D77C5388(v12);
        v19 = v18;

        v20 = swift_allocObject();
        v20[2] = v14;
        v20[3] = v16;
        v20[4] = v17;
        v20[5] = v19;
        sub_1D78B36C4();
        swift_allocObject();
        sub_1D78B36B4();
        sub_1D775BF98(0, &qword_1EE08FA00, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1D78C0D70;
        *(v21 + 32) = sub_1D78B3614();
        sub_1D78B3524();
        swift_allocObject();
        sub_1D78B3534();
        MEMORY[0x1DA703120]();
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D78B5F04();
        }

        v11 += 11;
        sub_1D78B5F24();
        --v10;
      }

      while (v10);
      v9 = v26;
      v5 = v24;
      a1 = v25;
    }

    sub_1D775DDC0(v5);
    if (v9 >> 62)
    {
      if (sub_1D78B6534())
      {
        goto LABEL_13;
      }
    }

    else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_13:
      sub_1D77C39CC(v9);

      sub_1D78B3664();
      v22 = sub_1D78B3674();
      return (*(*(v22 - 8) + 56))(a1, 0, 1, v22);
    }

    v23 = sub_1D78B3674();
    return (*(*(v23 - 8) + 56))(a1, 1, 1, v23);
  }

  v6 = sub_1D78B3674();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, 1, 1, v6);
}

void sub_1D77C4DD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D77C4E38()
{
  result = qword_1EC9CA168;
  if (!qword_1EC9CA168)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC9CA168);
  }

  return result;
}

void sub_1D77C4E9C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D77C4EF0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D77C4E9C(255, a2, a3, a4, MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D77C4F54(uint64_t a1)
{
  sub_1D77C4DD4(0, &qword_1EC9CA148, MEMORY[0x1E69D6E78], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D77C4FE0(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (v5)
  {
    v10 = v5;
LABEL_10:
    v5 = (v10 - 1) & v10;
    if (*(a1 + 16))
    {
      v12 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v10)))));
      v14 = *v12;
      v13 = v12[1];

      v15 = sub_1D777BBB4(v14, v13);
      if (v16)
      {
        v17 = *(a1 + 56) + 24 * v15;
        if (*(v17 + 16) == 1)
        {
          v29 = *v17;
          v18 = *(v17 + 8);

          MEMORY[0x1DA702FF0](v14, v13);

          MEMORY[0x1DA702FF0](2243106, 0xE300000000000000);
          MEMORY[0x1DA702FF0]();
          MEMORY[0x1DA702FF0](34, 0xE100000000000000);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1D777AD14(0, *(v9 + 2) + 1, 1, v9);
          }

          v20 = *(v9 + 2);
          v19 = *(v9 + 3);
          v21 = v20 + 1;
          v22 = v29;
          if (v20 >= v19 >> 1)
          {
            v9 = sub_1D777AD14((v19 > 1), v20 + 1, 1, v9);
            v22 = v29;
          }

          result = sub_1D77C5618(v22, v18, 1);
        }

        else
        {
          MEMORY[0x1DA702FF0](v14, v13);

          MEMORY[0x1DA702FF0](14882, 0xE200000000000000);
          v23 = sub_1D78B66E4();
          MEMORY[0x1DA702FF0](v23);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1D777AD14(0, *(v9 + 2) + 1, 1, v9);
            v9 = result;
          }

          v20 = *(v9 + 2);
          v24 = *(v9 + 3);
          v21 = v20 + 1;
          if (v20 >= v24 >> 1)
          {
            result = sub_1D777AD14((v24 > 1), v20 + 1, 1, v9);
            v9 = result;
          }
        }

        *(v9 + 2) = v21;
        v25 = &v9[16 * v20];
        *(v25 + 4) = 34;
        *(v25 + 5) = 0xE100000000000000;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      sub_1D775BF98(0, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1D77C559C();
      v26 = sub_1D78B5C24();
      v28 = v27;

      MEMORY[0x1DA702FF0](v26, v28);

      MEMORY[0x1DA702FF0](125, 0xE100000000000000);
      return 123;
    }

    v10 = *(v2 + 8 * v11);
    ++v8;
    if (v10)
    {
      v8 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D77C5388(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = (result + 32);
      v3 = MEMORY[0x1E69E7CC0];
      do
      {
        v4 = *v2;

        sub_1D78B6454();

        v5 = sub_1D77C4FE0(v4);
        v7 = v6;

        MEMORY[0x1DA702FF0](v5, v7);

        MEMORY[0x1DA702FF0](125, 0xE100000000000000);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1D777AD14(0, *(v3 + 2) + 1, 1, v3);
        }

        v9 = *(v3 + 2);
        v8 = *(v3 + 3);
        if (v9 >= v8 >> 1)
        {
          v3 = sub_1D777AD14((v8 > 1), v9 + 1, 1, v3);
        }

        *(v3 + 2) = v9 + 1;
        v10 = &v3[16 * v9];
        *(v10 + 4) = 0xD000000000000019;
        *(v10 + 5) = 0x80000001D78D39E0;
        ++v2;
        --v1;
      }

      while (v1);
    }

    sub_1D775BF98(0, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D77C559C();
    v11 = sub_1D78B5C24();
    v13 = v12;

    MEMORY[0x1DA702FF0](v11, v13);

    MEMORY[0x1DA702FF0](93, 0xE100000000000000);
    return 91;
  }

  return result;
}

unint64_t sub_1D77C559C()
{
  result = qword_1EE090000;
  if (!qword_1EE090000)
  {
    sub_1D775BF98(255, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE090000);
  }

  return result;
}

uint64_t sub_1D77C5618(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1D77C5628()
{
  v1 = *(v0 + 128);
  v6[6] = *(v0 + 112);
  v6[7] = v1;
  v7 = *(v0 + 144);
  v2 = *(v0 + 64);
  v6[2] = *(v0 + 48);
  v6[3] = v2;
  v3 = *(v0 + 96);
  v6[4] = *(v0 + 80);
  v6[5] = v3;
  v4 = *(v0 + 32);
  v6[0] = *(v0 + 16);
  v6[1] = v4;
  sub_1D77CAEFC(v6);

  return swift_deallocClassInstance();
}

uint64_t (*PaywallViewController.delegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D77CB388;
}

uint64_t PaywallViewController.isBeingUsedAsPlugin.getter()
{
  v1 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PaywallViewController.isBeingUsedAsPlugin.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_isBeingUsedAsPlugin;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D77C58A0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*PaywallViewController.pluggableDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_pluggableDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D77C59A8;
}

id sub_1D77C59BC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = *(v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_purchasingSpinnerViewControllerFactory + 24);
    v8 = *(v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_purchasingSpinnerViewControllerFactory + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_purchasingSpinnerViewControllerFactory), v7);
    v14 = a2;
    v9 = v2;
    v10 = (*(v8 + 8))(&v14, v7, v8);
    v11 = *(v2 + v3);
    *(v9 + v3) = v10;
    v5 = v10;

    v4 = 0;
  }

  v12 = v4;
  return v5;
}

Swift::Void __swiftcall PaywallViewController.viewDidLoad()()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = &v0[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_viewProvider];
    swift_beginAccess();
    v4 = *(v3 + 3);
    v5 = *(v3 + 4);
    v6 = __swift_project_boxed_opaque_existential_1(v3, v4);
    v7 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v6);
    v9 = v13 - v8;
    (*(v7 + 16))(v13 - v8);
    v10 = (*(v5 + 8))(v4, v5);
    (*(v7 + 8))(v9, v4);
    [v2 addSubview_];

    sub_1D774584C(v3, v13);
    v11 = v14;
    v12 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v12 + 40))(v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall PaywallViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1);
  v3 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_viewProvider;
  swift_beginAccess();
  sub_1D774584C(v1 + v3, v6);
  v4 = v7;
  v5 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v5 + 48))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v6);
}

Swift::Void __swiftcall PaywallViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v76.receiver = v2;
  v76.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v76, sel_viewDidAppear_, a1);
  v4 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_viewProvider;
  swift_beginAccess();
  sub_1D774584C(&v2[v4], &v60);
  v5 = *(&v61 + 1);
  v6 = v62;
  __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
  (*(v6 + 56))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(&v60);
  v7 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  if ((v2[v7] & 1) == 0)
  {
    v8 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8];
    ObjectType = swift_getObjectType();
    v10 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208];
    v11 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176];
    v56 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192];
    v57 = v10;
    v12 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208];
    v13 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240];
    v58 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224];
    v59 = v13;
    v14 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144];
    v15 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112];
    v52 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128];
    v53 = v14;
    v16 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144];
    v17 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176];
    v54 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160];
    v55 = v17;
    v18 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80];
    v19 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48];
    v48 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64];
    v49 = v18;
    v20 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80];
    v21 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112];
    v50 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96];
    v51 = v21;
    v22 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16];
    v45[0] = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel];
    v45[1] = v22;
    v23 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48];
    v25 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel];
    v24 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16];
    v46 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32];
    v47 = v23;
    v41 = v56;
    v42 = v12;
    v26 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240];
    v43 = v58;
    v44 = v26;
    v37 = v52;
    v38 = v16;
    v39 = v54;
    v40 = v11;
    v33 = v48;
    v34 = v20;
    v35 = v50;
    v36 = v15;
    v29 = v25;
    v30 = v24;
    v31 = v46;
    v32 = v19;
    v27 = *(v8 + 32);
    sub_1D7772AE8(v45, &v60);
    v27(&v29, ObjectType, v8);
    v72 = v41;
    v73 = v42;
    v74 = v43;
    v75 = v44;
    v68 = v37;
    v69 = v38;
    v70 = v39;
    v71 = v40;
    v64 = v33;
    v65 = v34;
    v66 = v35;
    v67 = v36;
    v60 = v29;
    v61 = v30;
    v62 = v31;
    v63 = v32;
    sub_1D7772B44(&v60);
  }

  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_sceneStateManager], *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_sceneStateManager + 24]);
  sub_1D77CB208(&unk_1EE0939E8, v28, type metadata accessor for PaywallViewController);
  sub_1D78B3E64();
  __swift_destroy_boxed_opaque_existential_1(&v60);
}

Swift::Void __swiftcall PaywallViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v14.receiver = v2;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewDidDisappear_, a1);
  v4 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_viewProvider;
  swift_beginAccess();
  sub_1D774584C(&v2[v4], v11);
  v5 = v12;
  v6 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v6 + 72))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v11);
  v7 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  if ((v2[v7] & 1) == 0)
  {
    v8 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8];
    ObjectType = swift_getObjectType();
    (*(v8 + 40))(ObjectType, v8);
  }

  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_sceneStateManager], *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_sceneStateManager + 24]);
  sub_1D77CB208(&unk_1EE0939E8, v10, type metadata accessor for PaywallViewController);
  sub_1D78B3E74();
}

uint64_t PaywallViewController.layout(paywallType:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1D77CB1B8(0, &qword_1EE090120, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1D78B41F4();
  v2 = sub_1D78B3924();
  *(swift_allocObject() + 16) = a1;
  type metadata accessor for CGSize(0);
  v3 = sub_1D78B40A4();

  return v3;
}

Swift::Void __swiftcall PaywallViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_traitCollectionDidChange_, isa);
  v3 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_viewProvider;
  swift_beginAccess();
  sub_1D774584C(v1 + v3, v6);
  v4 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v5 = [v1 traitCollection];
  (*(v4 + 88))();

  __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1D77C666C(SEL *a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, *a1);
  v3 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224];
  sub_1D77CB1B8(0, &qword_1EE090120, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1D78B41F4();
  v4 = sub_1D78B3924();
  *(swift_allocObject() + 16) = v3;
  type metadata accessor for CGSize(0);
  sub_1D78B40A4();
}

void sub_1D77C67C4(void *a1, uint64_t a2, const char **a3)
{
  v8.receiver = a1;
  v8.super_class = swift_getObjectType();
  v4 = *a3;
  v5 = v8.receiver;
  objc_msgSendSuper2(&v8, v4);
  v6 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224];
  sub_1D77CB1B8(0, &qword_1EE090120, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1D78B41F4();
  v7 = sub_1D78B3924();
  *(swift_allocObject() + 16) = v6;
  type metadata accessor for CGSize(0);
  sub_1D78B40A4();
}

uint64_t sub_1D77C68F0(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
  ObjectType = swift_getObjectType();
  v4 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
  v5 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
  v51 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
  v52 = v4;
  v6 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
  v7 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
  v53 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
  v54 = v7;
  v8 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
  v9 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
  v47 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
  v48 = v8;
  v10 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
  v11 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
  v49 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
  v50 = v11;
  v12 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
  v13 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
  v43 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
  v44 = v12;
  v14 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
  v15 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
  v45 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
  v46 = v15;
  v16 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
  v40[0] = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
  v40[1] = v16;
  v17 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
  v19 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
  v18 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
  v41 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
  v42 = v17;
  v36 = v51;
  v37 = v6;
  v20 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
  v38 = v53;
  v39 = v20;
  v32 = v47;
  v33 = v10;
  v34 = v49;
  v35 = v5;
  v28 = v43;
  v29 = v14;
  v30 = v45;
  v31 = v9;
  v24 = v19;
  v25 = v18;
  v26 = v41;
  v27 = v13;
  v21 = *(v2 + 112);
  sub_1D7772AE8(v40, v55);
  v22 = v21(&v24, ObjectType, v2);
  v55[12] = v36;
  v55[13] = v37;
  v55[14] = v38;
  v55[15] = v39;
  v55[8] = v32;
  v55[9] = v33;
  v55[10] = v34;
  v55[11] = v35;
  v55[4] = v28;
  v55[5] = v29;
  v55[6] = v30;
  v55[7] = v31;
  v55[0] = v24;
  v55[1] = v25;
  v55[2] = v26;
  v55[3] = v27;
  sub_1D7772B44(v55);
  return v22;
}

uint64_t sub_1D77C6A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_layoutOptionsProvider + 24);
  v6 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_layoutOptionsProvider + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_layoutOptionsProvider), v5);
  (*(v6 + 8))(v54, a3, v5, v6);
  v62 = v54[6];
  v63 = v54[7];
  v64 = v55;
  v58 = v54[2];
  v59 = v54[3];
  v60 = v54[4];
  v61 = v54[5];
  v56 = v54[0];
  v57 = v54[1];
  v7 = sub_1D77CB0B4(&v56);
  if (v7 == 1)
  {
    sub_1D7782B38();
    swift_allocError();
    *v8 = 1;
    sub_1D77CB050(0, &qword_1EE0951E0, type metadata accessor for CGSize, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B40F4();
  }

  v51 = v62;
  v52 = v63;
  v53 = v64;
  v47 = v58;
  v48 = v59;
  v49 = v60;
  v50 = v61;
  v45 = v56;
  v46 = v57;
  v10 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_lastPaywallLayout;
  v11 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_lastPaywallLayout);
  if (v11)
  {
    v12 = *(v11 + 112);
    v41[5] = *(v11 + 96);
    v41[6] = v12;
    v41[7] = *(v11 + 128);
    v42 = *(v11 + 144);
    v13 = *(v11 + 48);
    v41[1] = *(v11 + 32);
    v41[2] = v13;
    v14 = *(v11 + 80);
    v41[3] = *(v11 + 64);
    v41[4] = v14;
    v41[0] = *(v11 + 16);
    v15 = *(v11 + 128);
    v38 = *(v11 + 112);
    v39 = v15;
    v40 = *(v11 + 144);
    v16 = *(v11 + 64);
    v34 = *(v11 + 48);
    v35 = v16;
    v17 = *(v11 + 96);
    v36 = *(v11 + 80);
    v37 = v17;
    v18 = *(v11 + 32);
    v32 = *(v11 + 16);
    v33 = v18;
    v30[6] = v62;
    v30[7] = v63;
    v31 = v64;
    v30[2] = v58;
    v30[3] = v59;
    v30[4] = v60;
    v30[5] = v61;
    v30[0] = v56;
    v30[1] = v57;

    sub_1D77CB0EC(v41, &v29);
    v19 = _s16NewsSubscription20PaywallLayoutOptionsV2eeoiySbAC_ACtFZ_0(&v32, v30);
    v43[6] = v38;
    v43[7] = v39;
    v44 = v40;
    v43[2] = v34;
    v43[3] = v35;
    v43[4] = v36;
    v43[5] = v37;
    v43[0] = v32;
    v43[1] = v33;
    sub_1D77CAEFC(v43);
    if (v19)
    {
      sub_1D77CB148(v54, qword_1EE093BF8, &type metadata for PaywallLayoutOptions);
      v20 = *(v11 + 152);

      return v20;
    }
  }

  MEMORY[0x1EEE9AC00](v7);
  type metadata accessor for CGSize(0);
  sub_1D78B41F4();
  sub_1D773F004(0, &qword_1EE08FE10);
  v21 = sub_1D78B6104();
  type metadata accessor for PaywallViewController();
  v22 = sub_1D78B40A4();

  type metadata accessor for PaywallCachedLayout();
  v23 = swift_allocObject();
  v24 = v52;
  *(v23 + 112) = v51;
  *(v23 + 128) = v24;
  v25 = v53;
  v26 = v48;
  *(v23 + 48) = v47;
  *(v23 + 64) = v26;
  v27 = v50;
  *(v23 + 80) = v49;
  *(v23 + 96) = v27;
  v28 = v46;
  *(v23 + 16) = v45;
  *(v23 + 32) = v28;
  *(v23 + 144) = v25;
  *(v23 + 152) = v22;
  *(a2 + v10) = v23;

  return v22;
}

uint64_t sub_1D77C6EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_viewProvider;
  swift_beginAccess();
  sub_1D774584C(a1 + v8, v19);
  v9 = v20;
  v10 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v11 = *(a2 + 112);
  v17[6] = *(a2 + 96);
  v17[7] = v11;
  v18 = *(a2 + 128);
  v12 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v12;
  v13 = *(a2 + 80);
  v17[4] = *(a2 + 64);
  v17[5] = v13;
  v14 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v14;
  v15 = (*(v10 + 80))(v17, a3, a4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v15;
}

uint64_t sub_1D77C6F98()
{
  sub_1D77CB208(&unk_1EE08FC20, 255, type metadata accessor for CGSize);
  sub_1D78B3B24();
  sub_1D77CB050(0, &qword_1EE0951E0, type metadata accessor for CGSize, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

uint64_t sub_1D77C707C()
{
  v1 = v0;
  v2 = sub_1D78B3014();
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  v27 = 0x6168436465646461;
  v28 = 0xEF7344496C656E6ELL;
  sub_1D78B63F4();
  if (!*(v3 + 16) || (v4 = sub_1D777BD70(v23), (v5 & 1) == 0))
  {

    sub_1D777BDB4(v23);
LABEL_10:
    v29 = 0u;
    v30 = 0u;
    return sub_1D77CB148(&v29, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8);
  }

  sub_1D777BE08(*(v3 + 56) + 32 * v4, &v29);
  sub_1D777BDB4(v23);

  if (!*(&v30 + 1))
  {
    return sub_1D77CB148(&v29, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8);
  }

  sub_1D7782F60();
  result = swift_dynamicCast();
  if (result)
  {
    v7 = v27;
    v8 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
    v23[10] = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
    v23[11] = v8;
    v9 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
    v23[12] = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
    v23[13] = v9;
    v10 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
    v23[6] = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
    v23[7] = v10;
    v11 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
    v23[8] = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
    v23[9] = v11;
    v12 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
    v23[2] = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
    v23[3] = v12;
    v13 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
    v23[4] = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
    v23[5] = v13;
    v14 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
    v23[0] = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
    v23[1] = v14;
    v15 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
    v25 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 232);
    v26 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 248);
    v24 = v15;
    v16 = [PaywallModel.tag.getter() identifier];
    swift_unknownObjectRelease();
    v17 = sub_1D78B5C74();
    v19 = v18;

    LOBYTE(v17) = sub_1D7832E64(v17, v19, v7);

    if (v17)
    {
      v20 = v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_delegate;
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v21 = *(v20 + 8);
        ObjectType = swift_getObjectType();
        (*(v21 + 8))(v15, ObjectType, v21);
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

id PaywallViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D78B5C44();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id PaywallViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D77C7650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = objc_opt_self();

  v12 = [v11 sharedAccount];
  v13 = [v12 activeiTunesAccount];

  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = v13;
  if (![v14 isAuthenticated])
  {

    if (([v14 ams_isLocalAccount] & 1) == 0)
    {
      v15 = v14;
      goto LABEL_9;
    }

LABEL_7:
    v15 = 0;
LABEL_9:
    v16 = [objc_allocWithZone(MEMORY[0x1E698C7B0]) init];
    [v16 setIgnoreAccountConversion_];
    v17 = sub_1D78B5C44();
    [v16 setDebugReason_];

    v18 = [objc_allocWithZone(MEMORY[0x1E698CC58]) initWithAccount:v15 presentingViewController:a5 options:v16];
    v19 = [v18 performAuthentication];
    v20 = swift_allocObject();
    v20[2] = a3;
    v20[3] = a4;
    v20[4] = a5;
    v20[5] = sub_1D7788F48;
    v20[6] = v10;
    v23[4] = sub_1D77CB034;
    v23[5] = v20;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 1107296256;
    v23[2] = sub_1D7780F60;
    v23[3] = &block_descriptor_99;
    v21 = _Block_copy(v23);

    v22 = a5;

    [v19 addFinishBlock_];
    _Block_release(v21);

    return;
  }

  sub_1D77C793C(a5, sub_1D7788F48, v10);
}

uint64_t sub_1D77C793C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D78B5254();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D78B52A4();
  v10 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D773F004(0, &qword_1EE08FE10);
  v13 = sub_1D78B6104();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  aBlock[4] = sub_1D77CB044;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_105;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  sub_1D78B5274();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D77CB208(&qword_1EE090300, 255, MEMORY[0x1E69E7F60]);
  sub_1D77CB050(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D775F4A4();
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v12, v9, v15);
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v19);
}

void sub_1D77C7C3C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D77C59BC(&OBJC_IVAR____TtC16NewsSubscription21PaywallViewController____lazy_storage___purchasingSpinner, 0);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_1D7782FF8;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D775FB6C;
  v9[3] = &block_descriptor_111;
  v8 = _Block_copy(v9);

  [a1 presentViewController:v6 animated:1 completion:v8];
  _Block_release(v8);
}

void sub_1D77C7D48(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v8 = a2;
    sub_1D7782B38();
    v9 = swift_allocError();
    *v10 = v8;
    v11 = v8;
    v12 = v8;
    (a3)(v9);

LABEL_3:

    return;
  }

  if (!a1)
  {
    sub_1D7782B38();
    v8 = swift_allocError();
    *v17 = 0;
    a3();
    goto LABEL_3;
  }

  v16 = [objc_opt_self() sharedAccount];
  [v16 reloadiTunesAccount];

  sub_1D77C793C(a5, a6, a7);
}

uint64_t sub_1D77C7E90()
{
  sub_1D77CB1B8(0, &qword_1EE0951C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4174();
}

void sub_1D77C7F08(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_1D77C59BC(&OBJC_IVAR____TtC16NewsSubscription21PaywallViewController____lazy_storage___purchasingSpinner, 0);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D7757030;
  *(v6 + 24) = v4;
  v8[4] = sub_1D7782BC8;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D775FB6C;
  v8[3] = &block_descriptor_89;
  v7 = _Block_copy(v8);

  [v5 dismissViewControllerAnimated:1 completion:v7];
  _Block_release(v7);
}

uint64_t sub_1D77C8050(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(a3, ObjectType, v10);
    result = swift_unknownObjectRelease();
  }

  if (!*(a4 + 16))
  {
    v12 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_webOptinFlowManager + 24);
    v13 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_webOptinFlowManager + 32);
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_webOptinFlowManager), v12);
    v26 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
    v27 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
    v28 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
    v29 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
    v22 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
    v23 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
    v24 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
    v25 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
    v18 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
    v19 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
    v20 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
    v21 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
    v14 = PaywallModel.tag.getter();
    (*(v13 + 8))(v14, v7, a4, v12, v13, v15, v16, v17, v18, *(&v18 + 1), v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1));
    return swift_unknownObjectRelease();
  }

  return result;
}

void PaywallViewController.eventHandler(_:webAccessAuthenticationDidObtainAccessToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208];
  v42 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192];
  v43 = v9;
  v10 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240];
  v44 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224];
  v45 = v10;
  v11 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144];
  v38 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128];
  v39 = v11;
  v12 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176];
  v40 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160];
  v41 = v12;
  v13 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80];
  v34 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64];
  v35 = v13;
  v14 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112];
  v36 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96];
  v37 = v14;
  v15 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16];
  v30 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel];
  v31 = v15;
  v16 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48];
  v32 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32];
  v33 = v16;
  v17 = sub_1D77C59BC(&OBJC_IVAR____TtC16NewsSubscription21PaywallViewController____lazy_storage___verificationSpinner, 1);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  v19 = v43;
  *(v18 + 240) = v42;
  *(v18 + 256) = v19;
  v20 = v45;
  *(v18 + 272) = v44;
  *(v18 + 288) = v20;
  v21 = v39;
  *(v18 + 176) = v38;
  *(v18 + 192) = v21;
  v22 = v41;
  *(v18 + 208) = v40;
  *(v18 + 224) = v22;
  v23 = v35;
  *(v18 + 112) = v34;
  *(v18 + 128) = v23;
  v24 = v37;
  *(v18 + 144) = v36;
  *(v18 + 160) = v24;
  v25 = v31;
  *(v18 + 48) = v30;
  *(v18 + 64) = v25;
  v26 = v33;
  *(v18 + 80) = v32;
  *(v18 + 96) = v26;
  aBlock[4] = sub_1D77CAA6C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_10;
  v27 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_1D7772AE8(&v30, &v28);

  [v4 presentViewController:v17 animated:1 completion:v27];
  _Block_release(v27);
}

void PaywallViewController.eventHandler(_:webAccessAuthenticationDidComplete:from:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = sub_1D77C59BC(&OBJC_IVAR____TtC16NewsSubscription21PaywallViewController____lazy_storage___verificationSpinner, 1);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v4;
  *(v8 + 32) = a4;
  v11[4] = sub_1D77CAB1C;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D775FB6C;
  v11[3] = &block_descriptor_19_1;
  v9 = _Block_copy(v11);
  v10 = v4;

  [v7 dismissViewControllerAnimated:1 completion:v9];
  _Block_release(v9);
}

uint64_t sub_1D77C846C(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    sub_1D7788D34();
    sub_1D78B5054();
    swift_allocObject();
    sub_1D78B5004();
    sub_1D78B5014();
  }

  else
  {
    v5 = a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(a3, ObjectType, v6);
      swift_unknownObjectRelease();
    }

    PaywallModel.tag.getter();
    sub_1D7788D90();
    sub_1D78B5054();
    swift_allocObject();
    sub_1D78B5004();
    sub_1D78B5014();
  }
}

uint64_t sub_1D77C8670()
{
  sub_1D77CB1B8(0, &qword_1EE0951C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4174();
}

void sub_1D77C8704(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = sub_1D77C59BC(&OBJC_IVAR____TtC16NewsSubscription21PaywallViewController____lazy_storage___verificationSpinner, 1);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v4;
  *(v8 + 32) = a4;
  v11[4] = sub_1D77CB35C;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D775FB6C;
  v11[3] = &block_descriptor_59_2;
  v9 = _Block_copy(v11);
  v10 = v4;

  [v7 dismissViewControllerAnimated:1 completion:v9];
  _Block_release(v9);
}

Swift::Void __swiftcall PaywallViewController.sceneWillEnterForeground()()
{
  v1 = v0;
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 window];

    if (v4)
    {

      v5 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8];
      ObjectType = swift_getObjectType();
      v7 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208];
      v8 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176];
      v52 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192];
      v53 = v7;
      v9 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208];
      v10 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240];
      v54 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224];
      v55 = v10;
      v11 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144];
      v12 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112];
      v48 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128];
      v49 = v11;
      v13 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144];
      v14 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176];
      v50 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160];
      v51 = v14;
      v15 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80];
      v16 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48];
      v44 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64];
      v45 = v15;
      v17 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80];
      v18 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112];
      v46 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96];
      v47 = v18;
      v19 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16];
      v41[0] = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel];
      v41[1] = v19;
      v20 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48];
      v22 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel];
      v21 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16];
      v42 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32];
      v43 = v20;
      v37 = v52;
      v38 = v9;
      v23 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240];
      v39 = v54;
      v40 = v23;
      v33 = v48;
      v34 = v13;
      v35 = v50;
      v36 = v8;
      v29 = v44;
      v30 = v17;
      v31 = v46;
      v32 = v12;
      v25 = v22;
      v26 = v21;
      v27 = v42;
      v28 = v16;
      v24 = *(v5 + 32);
      sub_1D7772AE8(v41, v56);
      v24(&v25, ObjectType, v5);
      v56[12] = v37;
      v56[13] = v38;
      v56[14] = v39;
      v56[15] = v40;
      v56[8] = v33;
      v56[9] = v34;
      v56[10] = v35;
      v56[11] = v36;
      v56[4] = v29;
      v56[5] = v30;
      v56[6] = v31;
      v56[7] = v32;
      v56[0] = v25;
      v56[1] = v26;
      v56[2] = v27;
      v56[3] = v28;
      sub_1D7772B44(v56);
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall PaywallViewController.sceneDidEnterBackground()()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {

      v4 = *&v0[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8];
      ObjectType = swift_getObjectType();
      (*(v4 + 40))(ObjectType, v4);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D77C8A44()
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE447E0](ObjectType);
}

uint64_t sub_1D77C8A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE447D8](a1, a2, a3, a4, a5, ObjectType);
}

uint64_t sub_1D77C8B00()
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE447F0](ObjectType);
}

uint64_t sub_1D77C8B3C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE447E8](a1, a2, ObjectType);
}

void sub_1D77C8B98()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {

      v4 = *&v0[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8];
      ObjectType = swift_getObjectType();
      (*(v4 + 40))(ObjectType, v4);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D77C8C34(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE447F8](a1, a2, ObjectType);
}

uint64_t sub_1D77C8C8C(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE44810](a1, ObjectType);
}

uint64_t sub_1D77C8CDC()
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE447D0](ObjectType);
}

void PaywallViewController.initialize(completion:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  v4 = sub_1D78B42C4();
  MEMORY[0x1EEE9AC00](v4);
  type metadata accessor for CGSize(0);
  sub_1D78B41F4();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  v6 = sub_1D78B4014();
  sub_1D78B4094();

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  v8 = sub_1D78B4014();
  sub_1D78B40D4();
}

void PaywallViewController.relayout(completion:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  v4 = sub_1D78B42C4();
  MEMORY[0x1EEE9AC00](v4);
  type metadata accessor for CGSize(0);
  sub_1D78B41F4();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  v6 = sub_1D78B4014();
  sub_1D78B4094();

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  v8 = sub_1D78B4014();
  sub_1D78B40D4();
}

uint64_t sub_1D77C90BC(uint64_t a1)
{
  swift_getObjectType();
  v2 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
  sub_1D77CB1B8(0, &qword_1EE090120, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1D78B41F4();
  v3 = sub_1D78B3924();
  *(swift_allocObject() + 16) = v2;
  type metadata accessor for CGSize(0);
  v4 = sub_1D78B40A4();

  return v4;
}

uint64_t sub_1D77C91D0(double *a1, uint64_t (*a2)(uint64_t, double, double))
{
  v3 = *a1;
  v4 = a1[1];
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D78BCAB0;
  sub_1D77CAF50();
  sub_1D78B6504();
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D775ABD4();
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  sub_1D78B60A4();
  sub_1D78B42C4();

  return a2(v6, v3, v4);
}

uint64_t sub_1D77C9324(uint64_t a1, uint64_t (*a2)(uint64_t, double, double))
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B6094();
  sub_1D774FE1C();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D78BCAB0;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  sub_1D78B6504();
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1D775ABD4();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_1D78B42C4();

  return a2(v4, 0.0, 0.0);
}

Swift::Void __swiftcall PaywallViewController.pluginDidStartImpression()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
  v4 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
  v48 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
  v49 = v3;
  v5 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
  v6 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
  v50 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
  v51 = v6;
  v7 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
  v8 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
  v44 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
  v45 = v7;
  v9 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
  v10 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
  v46 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
  v47 = v10;
  v11 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
  v12 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
  v40 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
  v41 = v11;
  v13 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
  v14 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
  v42 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
  v43 = v14;
  v15 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
  v37[0] = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
  v37[1] = v15;
  v16 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
  v18 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
  v17 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
  v38 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
  v39 = v16;
  v33 = v48;
  v34 = v5;
  v19 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
  v35 = v50;
  v36 = v19;
  v29 = v44;
  v30 = v9;
  v31 = v46;
  v32 = v4;
  v25 = v40;
  v26 = v13;
  v27 = v42;
  v28 = v8;
  v21 = v18;
  v22 = v17;
  v23 = v38;
  v24 = v12;
  v20 = *(v1 + 32);
  sub_1D7772AE8(v37, v52);
  v20(&v21, ObjectType, v1);
  v52[12] = v33;
  v52[13] = v34;
  v52[14] = v35;
  v52[15] = v36;
  v52[8] = v29;
  v52[9] = v30;
  v52[10] = v31;
  v52[11] = v32;
  v52[4] = v25;
  v52[5] = v26;
  v52[6] = v27;
  v52[7] = v28;
  v52[0] = v21;
  v52[1] = v22;
  v52[2] = v23;
  v52[3] = v24;
  sub_1D7772B44(v52);
}

uint64_t PaywallViewController.pluginDidImpress(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
  ObjectType = swift_getObjectType();
  return (*(v5 + 48))(a1, a2, ObjectType, v5);
}

uint64_t sub_1D77C96B4(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_pluggableDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1D77C9724(uint64_t *a1))()
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
  v5 = *v1;
  v6 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_pluggableDelegate;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_1D77CB388;
}

void sub_1D77C97C8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
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

uint64_t sub_1D77C9850()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1D77C9898(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_isBeingUsedAsPlugin;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

uint64_t sub_1D77C9968()
{
  v1 = *v0;
  v2 = *(*v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
  v6 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
  v5 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
  v42[2] = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
  v42[3] = v4;
  v42[0] = v6;
  v42[1] = v5;
  v7 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
  v9 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
  v8 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
  v42[6] = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
  v42[7] = v7;
  v42[4] = v9;
  v42[5] = v8;
  v10 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
  v12 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
  v11 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
  v42[10] = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
  v42[11] = v10;
  v42[8] = v12;
  v42[9] = v11;
  v13 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
  v15 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
  v14 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
  v42[14] = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
  v42[15] = v13;
  v42[12] = v15;
  v42[13] = v14;
  v16 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
  v38 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
  v39 = v16;
  v17 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
  v40 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
  v41 = v17;
  v18 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
  v34 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
  v35 = v18;
  v19 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
  v36 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
  v37 = v19;
  v20 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
  v30 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
  v31 = v20;
  v21 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
  v32 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
  v33 = v21;
  v22 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
  v26 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
  v27 = v22;
  v23 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
  v28 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
  v29 = v23;
  v24 = *(v2 + 32);
  sub_1D7772AE8(v42, v43);
  v24(&v26, ObjectType, v2);
  v43[12] = v38;
  v43[13] = v39;
  v43[14] = v40;
  v43[15] = v41;
  v43[8] = v34;
  v43[9] = v35;
  v43[10] = v36;
  v43[11] = v37;
  v43[4] = v30;
  v43[5] = v31;
  v43[6] = v32;
  v43[7] = v33;
  v43[0] = v26;
  v43[1] = v27;
  v43[2] = v28;
  v43[3] = v29;
  return sub_1D7772B44(v43);
}

uint64_t sub_1D77C9ABC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
  ObjectType = swift_getObjectType();
  return (*(v5 + 48))(a1, a2, ObjectType, v5);
}

void sub_1D77C9BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v10 = type metadata accessor for PurchaseContext();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = *a4;
  v41 = v13;
  v42 = a2;
  v40 = v12;
  if (a3 > 1)
  {
    if ((a3 - 2) < 2)
    {
      v14 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208];
      v56 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192];
      v57 = v14;
      v15 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240];
      v58 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224];
      v59 = v15;
      v16 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144];
      v52 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128];
      v53 = v16;
      v17 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176];
      v54 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160];
      v55 = v17;
      v18 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80];
      v48 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64];
      v49 = v18;
      v19 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112];
      v50 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96];
      v51 = v19;
      v20 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16];
      v44 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel];
      v45 = v20;
      v21 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48];
      v46 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32];
      v47 = v21;
      PaywallModel.buyParams.getter();
      a3 = v22;
      v23 = 0;
LABEL_11:
      v33 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_purchasePresenter + 24];
      v34 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_purchasePresenter + 32];
      __swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_purchasePresenter], v33);
      BYTE8(v44) = v23;
      v43 = v40;
      *&v44 = a3;
      (*(v34 + 8))(v5, a1, 0, &v44, &v43, v33, v34);
      sub_1D7770378(a1, &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      v35 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v36 = swift_allocObject();
      v37 = v42;
      *(v36 + 16) = v5;
      *(v36 + 24) = v37;
      sub_1D777044C(&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35);
      v38 = v5;
      v39 = sub_1D78B4014();
      sub_1D78B4094();

      sub_1D7781F70(a3, v23);
      return;
    }

    if (a3 != 4)
    {
      if (a3 == 5)
      {
        v24 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208];
        v56 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192];
        v57 = v24;
        v25 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240];
        v58 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224];
        v59 = v25;
        v26 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144];
        v52 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128];
        v53 = v26;
        v27 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176];
        v54 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160];
        v55 = v27;
        v28 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80];
        v48 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64];
        v49 = v28;
        v29 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112];
        v50 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96];
        v51 = v29;
        v30 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16];
        v44 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel];
        v45 = v30;
        v31 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48];
        v46 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32];
        v47 = v31;
        PaywallModel.buyParams.getter();
        a3 = v32;
        v23 = 3;
        goto LABEL_11;
      }

      goto LABEL_12;
    }

LABEL_10:
    a3 = 0;
    v23 = 4;
    goto LABEL_11;
  }

  if (!a3)
  {
    v23 = 2;
    goto LABEL_11;
  }

  if (a3 == 1)
  {
    goto LABEL_10;
  }

LABEL_12:
  sub_1D78B6764();
  __break(1u);
}

void sub_1D77C9EF0()
{
  *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_isBeingUsedAsPlugin) = 0;
  *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_pluggableDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_layoutSize;
  sub_1D77CB050(0, &qword_1EE0953B0, type metadata accessor for CGSize, MEMORY[0x1E69D6538]);
  swift_allocObject();
  *(v0 + v1) = sub_1D78B3AE4();
  *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController____lazy_storage___verificationSpinner) = 0;
  *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController____lazy_storage___purchasingSpinner) = 0;
  *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_lastPaywallLayout) = 0;
  sub_1D78B6524();
  __break(1u);
}

uint64_t _s16NewsSubscription21PaywallViewControllerC018eventHandlerBundleB12DidSubscribeyyAA0c5EventG4Type_pF_0()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
  v3 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
  v88 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
  v89 = v3;
  v4 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
  v90 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
  v91 = v4;
  v5 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
  v84 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
  v85 = v5;
  v6 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
  v86 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
  v87 = v6;
  v7 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
  v80 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
  v81 = v7;
  v8 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
  v82 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
  v83 = v8;
  v9 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
  v78 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
  v79 = v9;
  v10 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
  v93 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 232);
  v94 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 248);
  v92 = v10;
  v11 = [PaywallModel.tag.getter() isPuzzleType];
  swift_unknownObjectRelease();
  if (v11)
  {
    goto LABEL_33;
  }

  v57 = v0;
  v12 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paidAccessChecker);
  v13 = v2[11];
  v73 = v2[10];
  v74 = v13;
  v14 = v2[13];
  v75 = v2[12];
  v76 = v14;
  v15 = v2[7];
  v69 = v2[6];
  v70 = v15;
  v16 = v2[9];
  v71 = v2[8];
  v72 = v16;
  v17 = v2[3];
  v65 = v2[2];
  v66 = v17;
  v18 = v2[5];
  v67 = v2[4];
  v68 = v18;
  v19 = v2[1];
  v63 = *v2;
  v64 = v19;
  v10 = *(v2 + 28);
  *&v77[8] = *(v2 + 232);
  *&v77[24] = *(v2 + 31);
  *v77 = v10;
  v20 = PaywallModel.tag.getter();
  v21 = [v12 purchaseProvider];
  if ([swift_unknownObjectRetain() tagType] == 3)
  {
    v22 = [v20 asSection];
    if (!v22 || (v23 = [v22 parentID], swift_unknownObjectRelease(), !v23))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_9;
    }
  }

  else
  {
    v23 = [v20 identifier];
  }

  v24 = sub_1D78B5C74();
  v26 = v25;

  v27 = [v21 purchasedTagIDs];
  v28 = sub_1D78B5F64();

  LOBYTE(v27) = sub_1D7832E64(v24, v26, v28);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v27)
  {
    swift_unknownObjectRelease();
LABEL_32:
    v1 = v57;
LABEL_33:
    v39 = v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_delegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v41 = *(v39 + 8);
      ObjectType = swift_getObjectType();
      (*(v41 + 8))(v10, ObjectType, v41);
      return swift_unknownObjectRelease();
    }

    return result;
  }

LABEL_9:
  v29 = [objc_msgSend(v12 bundleSubscriptionProvider];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v29, v29 + 1))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v59 = 0u;
    v60 = 0u;
  }

  v61 = v59;
  v62 = v60;
  v30 = MEMORY[0x1E69E7CA0];
  if (!*(&v60 + 1))
  {
    sub_1D77CB148(&v61, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_17;
  }

  sub_1D773F004(0, &qword_1EE08FBD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v31 = 0;
    v33 = 0;
    goto LABEL_18;
  }

  v31 = v58;
  v32 = [v58 integerValue];
  if (v32 == -1)
  {

    goto LABEL_29;
  }

  v33 = v32;
LABEL_18:
  if (objc_getAssociatedObject(v29, ~v33))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v59 = 0u;
    v60 = 0u;
  }

  v61 = v59;
  v62 = v60;
  if (!*(&v60 + 1))
  {
    sub_1D77CB148(&v61, &qword_1EE08F9C0, v30 + 8);
LABEL_26:

    if (v33)
    {
      goto LABEL_29;
    }

LABEL_27:
    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  sub_1D773F004(0, &qword_1EE08FBD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v34 = v58;
  v35 = [v34 integerValue];

  if (((v35 ^ v33) & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_29:
  v36 = [objc_msgSend(v12 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v37 = [v20 identifier];
  if (!v37)
  {
    sub_1D78B5C74();
    v37 = sub_1D78B5C44();
  }

  v38 = [v36 containsTagID_];

  swift_unknownObjectRelease();
  if (v38)
  {
    goto LABEL_32;
  }

LABEL_35:
  v43 = MEMORY[0x1E69E6158];
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1D78BCAB0;
  v45 = v2[13];
  v75 = v2[12];
  v76 = v45;
  v46 = v2[15];
  *v77 = v2[14];
  *&v77[16] = v46;
  v47 = v2[9];
  v71 = v2[8];
  v72 = v47;
  v48 = v2[11];
  v73 = v2[10];
  v74 = v48;
  v49 = v2[5];
  v67 = v2[4];
  v68 = v49;
  v50 = v2[7];
  v69 = v2[6];
  v70 = v50;
  v51 = v2[1];
  v63 = *v2;
  v64 = v51;
  v52 = v2[3];
  v65 = v2[2];
  v66 = v52;
  v53 = [PaywallModel.tag.getter() identifier];
  swift_unknownObjectRelease();
  v54 = sub_1D78B5C74();
  v56 = v55;

  *(v44 + 56) = v43;
  *(v44 + 64) = sub_1D775ABD4();
  *(v44 + 32) = v54;
  *(v44 + 40) = v56;
  sub_1D78B60A4();
  sub_1D78B42C4();
}

void sub_1D77CA6AC(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 3u)
  {
    if (a3 <= 5u)
    {
      if (a3 != 4 && a3 != 5)
      {
        return;
      }
    }

    else if (a3 != 6 && a3 != 7)
    {
      if (a3 != 8)
      {
        return;
      }
    }

    goto LABEL_19;
  }

  if (a3 > 1u)
  {
    if (a3 != 2 && a3 != 3)
    {
      return;
    }

    goto LABEL_19;
  }

  if (!a3)
  {
    swift_unknownObjectRelease();
LABEL_19:

    swift_unknownObjectRelease();
    return;
  }
}

void sub_1D77CA77C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned __int8 a25)
{
  if (a25 > 1u)
  {
    if (a25 == 2)
    {

      a11 = a14;
      v26 = a15;
    }

    else
    {
      if (a25 != 3)
      {
        return;
      }

      v26 = a12;
    }
  }

  else
  {
    if (a25)
    {
      if (a25 == 1)
      {
      }

      return;
    }

    a11 = a13;
    v26 = a14;
  }

  sub_1D77CA9CC(a11, v26);
}

uint64_t sub_1D77CA9CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D77CAA6C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  ObjectType = swift_getObjectType();
  v5 = *(v0 + 256);
  v14[12] = *(v0 + 240);
  v14[13] = v5;
  v6 = *(v0 + 288);
  v14[14] = *(v0 + 272);
  v14[15] = v6;
  v7 = *(v0 + 192);
  v14[8] = *(v0 + 176);
  v14[9] = v7;
  v8 = *(v0 + 224);
  v14[10] = *(v0 + 208);
  v14[11] = v8;
  v9 = *(v0 + 128);
  v14[4] = *(v0 + 112);
  v14[5] = v9;
  v10 = *(v0 + 160);
  v14[6] = *(v0 + 144);
  v14[7] = v10;
  v11 = *(v0 + 64);
  v14[0] = *(v0 + 48);
  v14[1] = v11;
  v12 = *(v0 + 96);
  v14[2] = *(v0 + 80);
  v14[3] = v12;
  return (*(v1 + 96))(v2, v3, v14, ObjectType, v1);
}

void sub_1D77CAB28(void *a1)
{
  v2 = v1;
  aBlock[0] = a1;
  v3 = a1;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  type metadata accessor for ASWebAuthenticationSessionError(0);
  if ((swift_dynamicCast() & 1) == 0 || (aBlock[0] = v9, sub_1D77CB208(&unk_1EC9C9F70, 255, type metadata accessor for ASWebAuthenticationSessionError), sub_1D78B3184(), v9, v9 != 1))
  {
    v4 = sub_1D77C59BC(&OBJC_IVAR____TtC16NewsSubscription21PaywallViewController____lazy_storage___verificationSpinner, 1);
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    aBlock[4] = sub_1D77CAFAC;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D775FB6C;
    aBlock[3] = &block_descriptor_77_1;
    v6 = _Block_copy(aBlock);
    v7 = v2;

    [v4 dismissViewControllerAnimated:1 completion:v6];
    _Block_release(v6);
  }
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t keypath_setTm(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a1 + 8);
  v6 = *a2 + *a5;
  swift_beginAccess();
  *(v6 + 8) = v5;
  return swift_unknownObjectWeakAssign();
}

void sub_1D77CAF50()
{
  if (!qword_1EE08F278)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE08F278);
    }
  }
}

void sub_1D77CB050(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D77CB0B4(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D77CB148(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D77CB1B8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D77CB1B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D77CB208(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_16NewsSubscription21PaywallViewControllerC6ErrorsO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D77CB268(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D77CB2BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *PurchaseTransactionError.storeKitError.getter()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    return 0;
  }

  v2 = v1;
  return v1;
}

uint64_t PurchaseTransactionError.amsPurchaseError.getter()
{
  v1 = *v0;
  if (*v0 >> 62 != 1)
  {
    return 0;
  }

  v2 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  v3 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
  return v2;
}

unint64_t get_enum_tag_for_layout_string_16NewsSubscription24PurchaseTransactionErrorO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t get_enum_tag_for_layout_string_16NewsSubscription14PurchaseResultO(void *a1)
{
  v1 = *a1 >> 59;
  if ((v1 & 4) != 0)
  {
    return (*a1 >> 3) + 4;
  }

  else
  {
    return v1 & 6 | (*a1 >> 2) & 1;
  }
}

uint64_t sub_1D77CB464(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1C && *(a1 + 8))
  {
    return (*a1 + 28);
  }

  v3 = ((((*a1 >> 57) & 0x18 | *a1 & 7) >> 2) & 0xFFFFFFE7 | (8 * (*a1 & 3))) ^ 0x1F;
  if (v3 >= 0x1B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D77CB4C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1B)
  {
    *result = a2 - 28;
    if (a3 >= 0x1C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 3 | (4 * (-a2 & 0x1F));
      *result = (v3 | (v3 << 57)) & 0x3000000000000007;
    }
  }

  return result;
}

void *sub_1D77CB52C(void *result, uint64_t a2)
{
  if (a2 < 4)
  {
    *result = ((a2 << 59) | (4 * a2)) & 0x1000000000000004 | *result & 0xCFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (8 * (a2 - 4)) | 0x2000000000000000;
  }

  return result;
}

uint64_t sub_1D77CB580(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D77CB5DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1D77CB63C(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

id sub_1D77CB678(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_1D778D0A0(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v3(&v11, v13);

  sub_1D7756B84(v13);
  v4 = ObjectType;
  if (ObjectType)
  {
    v5 = __swift_project_boxed_opaque_existential_1(&v11, ObjectType);
    v6 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v5);
    v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_1D78B6704();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void *FamilySharingLandingPageLauncher.__allocating_init(configurationManager:familyEligibilityProvider:offerManager:router:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[9] = a3;
  v10[10] = a4;
  sub_1D77476F4(a5, (v10 + 4));
  return v10;
}

void *FamilySharingLandingPageLauncher.init(configurationManager:familyEligibilityProvider:offerManager:router:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[9] = a3;
  v5[10] = a4;
  sub_1D77476F4(a5, (v5 + 4));
  return v5;
}

Swift::Void __swiftcall FamilySharingLandingPageLauncher.showFamilySetupLandingPage()()
{
  v1 = [*(v0 + 16) configuration];
  if (v1)
  {
    v2 = v1;
    if ([v1 respondsToSelector_])
    {
      v9 = [v2 paidBundleConfig];
      swift_unknownObjectRelease();
      if ([v9 isFamilySharingSetupEnabled])
      {
        v3 = [*(v0 + 24) requestFamilyEligibility];
        v4 = swift_allocObject();
        swift_weakInit();
        v5 = swift_allocObject();
        *(v5 + 16) = v4;
        *(v5 + 24) = v9;
        aBlock[4] = sub_1D77CBC50;
        aBlock[5] = v5;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D77CB678;
        aBlock[3] = &block_descriptor_11;
        v6 = _Block_copy(aBlock);
        v7 = v9;

        v8 = [v3 then_];
        _Block_release(v6);
      }

      else
      {
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_1D77CBA94@<D0>(uint64_t a1@<X0>, void *a2@<X2>, _OWORD *a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_1D77CBC58(a1, Strong, a2);
    v10 = v9;
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D774FE1C();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D78BCAB0;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1D775ABD4();
    v12 = 0x6E756F6620746F4ELL;
    if (v10)
    {
      v12 = v8;
    }

    v13 = 0xE900000000000064;
    if (v10)
    {
      v13 = v10;
    }

    *(v11 + 32) = v12;
    *(v11 + 40) = v13;

    sub_1D78B60A4();
    sub_1D78B42C4();

    if (v10)
    {
      v14 = v7[7];
      v15 = v7[8];
      __swift_project_boxed_opaque_existential_1(v7 + 4, v14);
      (*(v15 + 8))(v8, v10, 0, 0, 0, 0, v14, v15);
    }
  }

  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

uint64_t sub_1D77CBC58(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D779C6B0(a1, v20);
  if (!v21)
  {
    sub_1D7756B84(v20);
    goto LABEL_9;
  }

  sub_1D77BFFAC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = v19;
  if (![v19 BOOLValue])
  {

LABEL_9:
    v13 = *(a2 + 80);
    ObjectType = swift_getObjectType();
    v20[0] = 6;
    v15 = *(v13 + 24);
    swift_unknownObjectRetain();
    v16 = v15(v20, ObjectType, v13);
    swift_unknownObjectRelease();
    if (v16)
    {
      v17 = [a3 endOfPurchaseServicesBundleFamilySharingSetupArticleID];
      if (!v17)
      {
        return 0;
      }
    }

    else
    {
      v17 = [a3 endOfPurchaseFamilySharingSetupArticleID];
      if (!v17)
      {
        return 0;
      }
    }

    v5 = v17;
    v12 = sub_1D78B5C74();
    goto LABEL_14;
  }

  v6 = *(a2 + 80);
  v7 = swift_getObjectType();
  v20[0] = 6;
  v8 = *(v6 + 24);
  swift_unknownObjectRetain();
  v9 = v8(v20, v7, v6);
  swift_unknownObjectRelease();
  if ((v9 & 1) == 0)
  {
    v10 = [a3 endOfPurchaseNoFamilySharingSetupArticleID];
    if (v10)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v10 = [a3 endOfPurchaseServicesBundleNoFamilySharingSetupArticleID];
  if (!v10)
  {
LABEL_16:

    return 0;
  }

LABEL_6:
  v11 = v10;
  v12 = sub_1D78B5C74();

LABEL_14:
  return v12;
}

uint64_t FamilySharingLandingPageLauncher.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t FamilySharingLandingPageLauncher.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1D77CBF70(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v64 = a3;
  v7 = sub_1D78B3294();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D776F504(0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v57 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v56 - v12;
  v13 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_badgeImageView];
  v67 = type metadata accessor for BundlePaywallRenderModel();
  v14 = *(a1 + *(v67 + 24));
  sub_1D78B51F4();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v17 = sub_1D78B5C44();

  v59 = v13;
  [v13 setAccessibilityLabel_];

  [v13 setIsAccessibilityElement_];
  v60 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_titleTextView];
  [v60 setAttributedText_];
  v61 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_subscribeButton];
  [v61 setAttributedTitle:*(a2 + 304) forState:0];
  v62 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_offersButton];
  [v62 setAttributedTitle:*(a2 + 312) forState:0];
  v63 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_webAuthButton];
  [v63 setAttributedTitle:*(a2 + 320) forState:0];
  v18 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  v19 = *MEMORY[0x1E69DB670];
  v20 = type metadata accessor for BundlePaywallViewModel(0);
  v21 = sub_1D78B3214();
  v22 = [v18 mutableString];
  v58 = a1;
  v23 = sub_1D78B5C44();
  v24 = [v22 rangeOfString_];
  v26 = v25;

  [v18 addAttribute:v19 value:v21 range:{v24, v26}];
  v27 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_descriptionTextView];
  v28 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v66 = v18;
  v29 = [v28 initWithAttributedString_];
  [v27 setAttributedText_];

  [a4 setFrame_];
  [*&a4[OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_contentView] setFrame_];
  v30 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_headerImageView];
  [v30 setFrame_];
  [v59 setFrame_];
  [v60 setFrame_];
  [v27 setFrame_];
  [v61 setFrame_];
  [v62 setFrame_];
  v31 = v63;
  [v63 setFrame_];
  v32 = v58;
  [v31 setHidden_];
  sub_1D78B51F4();
  v33 = [a4 layer];
  objc_opt_self();
  v34 = [swift_dynamicCastObjCClassUnconditional() stillImageLayer];

  v35 = v64;
  [v34 setImage_];

  if ([v35 horizontalSizeClass] == 1 || objc_msgSend(v35, sel_verticalSizeClass) == 1)
  {
    v36 = 84;
  }

  else
  {
    v36 = 88;
  }

  v37 = v32;
  v38 = v65;
  sub_1D776F538(v32 + *(v20 + v36), v65);
  v39 = *(v68 + 48);
  v40 = v39(v38, 1, v69);
  sub_1D77C12C8(v38);
  if (v40 == 1)
  {
    [v30 frame];
    v71.origin.x = 0.0;
    v71.origin.y = 0.0;
    v71.size.width = 0.0;
    v71.size.height = 0.0;
    if (!CGRectEqualToRect(v70, v71))
    {
      v48 = *(v37 + *(v67 + 20));
    }

    sub_1D78B51F4();
  }

  else
  {
    v41 = v67;
    v42 = *(v37 + *(v67 + 20));
    v43 = [a4 layer];
    objc_opt_self();
    v44 = v37;
    v45 = [swift_dynamicCastObjCClassUnconditional() stillImageLayer];

    [v45 setImage_];
    v46 = [a4 layer];
    objc_opt_self();
    v47 = [swift_dynamicCastObjCClassUnconditional() player];

    if (v47)
    {
    }

    else
    {
      v49 = v57;
      sub_1D776F538(v44 + *(v41 + 28), v57);
      v50 = v69;
      if (v39(v49, 1, v69) == 1)
      {

        sub_1D77C12C8(v49);
      }

      else
      {
        v51 = v68;
        v52 = v56;
        (*(v68 + 32))(v56, v49, v50);
        v53 = objc_allocWithZone(MEMORY[0x1E6988098]);
        v54 = sub_1D78B3214();
        v55 = [v53 initWithURL_];

        sub_1D77E8D60(v55);
        (*(v51 + 8))(v52, v50);
      }
    }
  }
}

double static PremiumSealView.preferredSize.getter()
{
  if (sub_1D78B5244())
  {
    return 56.0;
  }

  v1 = [objc_opt_self() currentTraitCollection];
  v2 = [v1 horizontalSizeClass];

  result = 68.0;
  if (v2 == 1)
  {
    return 56.0;
  }

  return result;
}

id sub_1D77CC7FC()
{
  v1 = OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_outerTintColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void (*sub_1D77CC850(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_outerTintColor;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1D77CC8D8;
}

id sub_1D77CC8E4(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  swift_beginAccess();
  v10 = *(v8 + v9);
  *(v8 + v9) = v7;
  v11 = v7;

  return [*(v8 + *a6) setTintColor_];
}

id sub_1D77CC968()
{
  v1 = OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_innerTintColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void (*sub_1D77CC9BC(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_innerTintColor;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1D77CCA44;
}

void sub_1D77CCA50(void **a1, char a2, void *a3)
{
  v5 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    [*(v5[3] + *a3) setTintColor_];
  }

  free(v5);
}

id PremiumSealView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PremiumSealView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_1D77CCB90()
{
  [v0 setAlpha_];
  CGAffineTransformMakeScale(&aBlock, 0.5, 0.5);
  a = aBlock.a;
  b = aBlock.b;
  c = aBlock.c;
  d = aBlock.d;
  tx = aBlock.tx;
  ty = aBlock.ty;
  v7 = *&v0[OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_outerImageView];
  CGAffineTransformRotate(&v15, &aBlock, -0.872664626);
  aBlock = v15;
  [v7 setTransform_];
  v8 = *&v0[OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_innerImageView];
  aBlock.a = a;
  aBlock.b = b;
  aBlock.c = c;
  aBlock.d = d;
  aBlock.tx = tx;
  aBlock.ty = ty;
  [v8 setTransform_];
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  v10 = objc_allocWithZone(MEMORY[0x1E69DD278]);
  *&aBlock.tx = sub_1D77CD510;
  *&aBlock.ty = v9;
  *&aBlock.a = MEMORY[0x1E69E9820];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_1D775FB6C;
  *&aBlock.d = &block_descriptor_12;
  v11 = _Block_copy(&aBlock);
  v12 = v0;

  v13 = [v10 initWithDuration:v11 controlPoint1:0.416 controlPoint2:0.17 animations:{0.17, 0.83, 0.83}];
  _Block_release(v11);
  [v13 startAnimation];

  v14 = sub_1D77CCE90();
  [v14 startAnimation];
}

id sub_1D77CCD84()
{
  *(v0 + OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_isHidingSeal) = 1;
  [*(v0 + OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_outerImageView) setHidden_];
  v1 = *(v0 + OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_innerImageView);

  return [v1 setHidden_];
}

id PremiumSealView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PremiumSealView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D77CCE90()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:35.0 damping:12.0 initialVelocity:{0.0, 0.0}];
  [v0 ts_settlingDuration];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v0 timingParameters:v1];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_1D77CD524;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1D775FB6C;
  v6[3] = &block_descriptor_14;
  v4 = _Block_copy(v6);

  [v2 addAnimations_];
  _Block_release(v4);

  return v2;
}

void sub_1D77CCFE4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_outerImageView);
    v4 = 0x3FF0000000000000;
    v5 = 0;
    v6 = 0;
    v7 = 0x3FF0000000000000;
    v8 = 0;
    v9 = 0;
    v2 = Strong;
    [v1 setTransform_];
    v3 = *&v2[OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_innerImageView];
    v4 = 0x3FF0000000000000;
    v5 = 0;
    v6 = 0;
    v7 = 0x3FF0000000000000;
    v8 = 0;
    v9 = 0;
    [v3 setTransform_];
  }
}

void sub_1D77CD090(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_outerImageView);
  v3 = sub_1D77CD170();
  [v2 setImage_];

  v4 = *(a1 + OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_innerImageView);
  if (qword_1EE0905F8 != -1)
  {
    swift_once();
  }

  v5 = [qword_1EE09C2A8 imageWithRenderingMode_];
  [v4 setImage_];
}

id sub_1D77CD170()
{
  v0 = [objc_opt_self() sharedAccount];
  v1 = [v0 supportedContentLanguage];

  if (v1 == 1)
  {
    if (qword_1EC9C8480 != -1)
    {
      swift_once();
    }

    v2 = &qword_1EC9D9E20;
  }

  else
  {
    if (qword_1EE0905E8 != -1)
    {
      swift_once();
    }

    v2 = &qword_1EE09C2A0;
  }

  v3 = [*v2 imageWithRenderingMode_];

  return v3;
}

void _s16NewsSubscription15PremiumSealViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_outerTintColor;
  v2 = objc_opt_self();
  *(v0 + v1) = [v2 labelColor];
  v3 = OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_innerTintColor;
  *(v0 + v3) = [v2 systemPinkColor];
  *(v0 + OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_isHidingSeal) = 1;
  v4 = OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_outerImageView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v5 = OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_innerImageView;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  sub_1D78B6524();
  __break(1u);
}

id keypath_getTm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t PurchaseFailedAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t PurchaseFailedAlert.message.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PurchaseFailedAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t PurchaseFailedAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

uint64_t sub_1D77CD780()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D77CD89C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D77CD8BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 1);
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

  *(result + 72) = v3;
  return result;
}

uint64_t sub_1D77CD908(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v29 = a1;
  v30 = a2;
  sub_1D77CF76C(0, &qword_1EC9CA2A0, MEMORY[0x1E69D7980]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v23 - v7;
  sub_1D77CF6F0();
  v28 = v9;
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v33 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69D87F8];
  sub_1D77CF76C(0, &qword_1EC9CA2A8, MEMORY[0x1E69D87F8]);
  sub_1D77CF9E0(&qword_1EC9CA2B0, &qword_1EC9CA2A8, v11);
  v12 = sub_1D78B5FD4();
  result = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_1D77D98F4(0, v12 & ~(v12 >> 63), 0);
    v34 = v36;
    sub_1D78B5FC4();
    if ((v12 & 0x8000000000000000) == 0)
    {
      v14 = v6;
      v15 = 0;
      v26 = (v14 + 16);
      v27 = (v14 + 8);
      v23[1] = v31 + 32;
      v24 = v12;
      v25 = v8;
      while (!__OFADD__(v15, 1))
      {
        v32 = v15 + 1;
        v16 = sub_1D78B5FF4();
        (*v26)(v8);
        v16(v35, 0);
        v29(v8);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v17 = v8;
        v18 = v5;
        (*v27)(v17, v5);
        v19 = v34;
        v36 = v34;
        v21 = *(v34 + 16);
        v20 = *(v34 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D77D98F4(v20 > 1, v21 + 1, 1);
          v19 = v36;
        }

        *(v19 + 16) = v21 + 1;
        v22 = (*(v31 + 80) + 32) & ~*(v31 + 80);
        v34 = v19;
        (*(v31 + 32))(v19 + v22 + *(v31 + 72) * v21, v33, v28);
        sub_1D78B5FE4();
        ++v15;
        v5 = v18;
        v8 = v25;
        if (v32 == v24)
        {
          return v34;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v27)(v8, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_1D77CDCD4(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v37 = a1;
  v38 = a2;
  sub_1D77CF978(0, &qword_1EC9CA2C0, sub_1D77CE220, &type metadata for HideMyEmailSignupModel, MEMORY[0x1E69D76A0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v31 - v9;
  sub_1D77CF978(0, &qword_1EC9CA2B8, sub_1D77CE1C8, &type metadata for HideMyEmailSignupLayoutModel, MEMORY[0x1E69D7BF0]);
  v36 = v11;
  v39 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v41 = v31 - v12;
  v13 = MEMORY[0x1E69D7980];
  sub_1D77CF76C(0, &qword_1EC9CA2A0, MEMORY[0x1E69D7980]);
  v15 = v14;
  v16 = sub_1D77CF9E0(&unk_1EC9CA2C8, &qword_1EC9CA2A0, v13);
  v17 = sub_1D78B5FD4();
  result = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v44 = MEMORY[0x1E69E7CC0];
    sub_1D77D9944(0, v17 & ~(v17 >> 63), 0);
    v42 = v44;
    sub_1D78B5FC4();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v19 = v8;
      v20 = 0;
      v34 = (v19 + 16);
      v35 = (v19 + 8);
      v31[1] = v39 + 32;
      v32 = v17;
      v33 = v10;
      while (!__OFADD__(v20, 1))
      {
        v40 = v20 + 1;
        v21 = v15;
        v22 = v5;
        v23 = v16;
        v24 = v21;
        v25 = v23;
        v26 = sub_1D78B5FF4();
        (*v34)(v10);
        v26(v43, 0);
        v37(v10);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v35)(v10, v7);
        v27 = v42;
        v44 = v42;
        v29 = *(v42 + 16);
        v28 = *(v42 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1D77D9944(v28 > 1, v29 + 1, 1);
          v27 = v44;
        }

        *(v27 + 16) = v29 + 1;
        v30 = (*(v39 + 80) + 32) & ~*(v39 + 80);
        v42 = v27;
        (*(v39 + 32))(v27 + v30 + *(v39 + 72) * v29, v41, v36);
        v5 = v22;
        v15 = v24;
        v16 = v25;
        sub_1D78B5FE4();
        ++v20;
        v10 = v33;
        if (v40 == v32)
        {
          return v42;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v35)(v10, v7);

    __break(1u);
  }

  return result;
}

unint64_t sub_1D77CE118()
{
  result = qword_1EE090CA0;
  if (!qword_1EE090CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE090CA0);
  }

  return result;
}

unint64_t sub_1D77CE170()
{
  result = qword_1EE090900;
  if (!qword_1EE090900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE090900);
  }

  return result;
}

unint64_t sub_1D77CE1C8()
{
  result = qword_1EE091FA0;
  if (!qword_1EE091FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE091FA0);
  }

  return result;
}

unint64_t sub_1D77CE220()
{
  result = qword_1EE093668;
  if (!qword_1EE093668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE093668);
  }

  return result;
}

double sub_1D77CE274@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>, CGFloat a3@<D0>)
{
  sub_1D78B4994();
  v7 = v6 + -60.0;
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  v8 = sub_1D77BA068();
  sub_1D78B49A4();
  v68 = v8;
  [v8 boundingRectWithSize:3 options:0 context:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v71.origin.x = 30.0;
  v71.size.height = 30.0;
  v69 = v7;
  v70 = a3;
  v71.origin.y = a3;
  v71.size.width = v7;
  v17 = CGRectGetMaxY(v71) + 14.0;
  sub_1D78B49A4();
  v19 = v18;
  v72.origin.x = v10;
  v72.origin.y = v12;
  v72.size.width = v14;
  v72.size.height = v16;
  v73.size.height = CGRectGetHeight(v72);
  v73.origin.x = 0.0;
  v73.origin.y = v17;
  v73.size.width = v19;
  v74 = CGRectIntegral(v73);
  x = v74.origin.x;
  y = v74.origin.y;
  width = v74.size.width;
  height = v74.size.height;
  v24 = *__swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_1D778AF9C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BF690;
  v26 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v27 = sub_1D773F004(0, &qword_1EE08FC10);
  v28 = v26;
  v29 = sub_1D78B61B4();
  v30 = MEMORY[0x1E69DB688];
  *(inited + 40) = v29;
  v31 = *v30;
  *(inited + 64) = v27;
  *(inited + 72) = v31;
  v32 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v33 = v31;
  v34 = [v32 init];
  [v34 setAlignment_];
  v35 = sub_1D773F004(0, &qword_1EC9CA0F8);
  *(inited + 80) = v34;
  v36 = *MEMORY[0x1E69DB650];
  *(inited + 104) = v35;
  *(inited + 112) = v36;
  v37 = *(v24 + 64);
  v38 = v36;
  v39 = [v37 tertiaryColor];
  v40 = sub_1D77BAD38(v39);

  *(inited + 144) = sub_1D773F004(0, &qword_1EE08FC00);
  if (!v40)
  {
    v40 = [objc_opt_self() labelColor];
  }

  *(inited + 120) = v40;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4();
  swift_arrayDestroy();
  v41 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v42 = sub_1D78B5C44();
  type metadata accessor for Key(0);
  sub_1D778B060();
  v43 = sub_1D78B5BB4();

  v44 = [v41 initWithString:v42 attributes:v43];

  sub_1D78B49A4();
  [v44 boundingRectWithSize:3 options:0 context:?];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v75.origin.x = x;
  v75.origin.y = y;
  v75.size.width = width;
  v75.size.height = height;
  v66 = x;
  v67 = width;
  v53 = CGRectGetMaxY(v75) + 10.0;
  sub_1D78B49A4();
  v54 = height;
  v55 = y;
  v57 = v56;
  v76.origin.x = v46;
  v76.origin.y = v48;
  v76.size.width = v50;
  v76.size.height = v52;
  v77.size.height = CGRectGetHeight(v76);
  v77.origin.x = 0.0;
  v77.origin.y = v53;
  v77.size.width = v57;
  v78 = CGRectIntegral(v77);
  v58 = v78.origin.x;
  v59 = v78.origin.y;
  v60 = v78.size.width;
  v61 = v78.size.height;
  sub_1D78B4994();
  v63 = v62;
  v79.origin.x = v58;
  v79.origin.y = v59;
  v79.size.width = v60;
  v79.size.height = v61;
  MaxY = CGRectGetMaxY(v79);

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v63;
  *(a2 + 24) = MaxY + 25.0;
  *(a2 + 32) = 0x403E000000000000;
  *(a2 + 40) = v70;
  *(a2 + 48) = v69;
  *(a2 + 56) = 0x403E000000000000;
  result = v67;
  *(a2 + 64) = v66;
  *(a2 + 72) = v55;
  *(a2 + 80) = v67;
  *(a2 + 88) = v54;
  *(a2 + 96) = v58;
  *(a2 + 104) = v59;
  *(a2 + 112) = v60;
  *(a2 + 120) = v61;
  return result;
}

uint64_t sub_1D77CE6E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v65 = a3;
  sub_1D77CF978(0, &qword_1EC9CA2B8, sub_1D77CE1C8, &type metadata for HideMyEmailSignupLayoutModel, MEMORY[0x1E69D7BF0]);
  v7 = v6;
  v112 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v54 - v8;
  sub_1D77CF76C(0, &qword_1EC9CA2A0, MEMORY[0x1E69D7980]);
  sub_1D78B46F4();
  sub_1D77CF7F0(&v103, v109);
  sub_1D77CF7F0(v109, v110);
  v107 = v110[2];
  v108[0] = v111[0];
  *(v108 + 9) = *(v111 + 9);
  v106 = v110[1];
  v105 = v110[0];
  sub_1D78B49A4();
  v113.origin.x = v10 * 0.5 + -107.5;
  v113.size.width = 215.0;
  v113.size.height = 44.0;
  v113.origin.y = 30.0;
  v114 = CGRectIntegral(v113);
  x = v114.origin.x;
  y = v114.origin.y;
  width = v114.size.width;
  height = v114.size.height;
  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  v14 = sub_1D77BA458();
  v15 = sub_1D78B6154();
  [v15 ascender];
  v17 = v16;

  v18 = sub_1D78B6154();
  [v18 capHeight];
  v20 = v19;

  v21 = v20 - v17 + 30.0;
  sub_1D78B49A4();
  v62 = v14;
  [v14 boundingRectWithSize:3 options:0 context:?];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v60 = y;
  v61 = x;
  v115.origin.x = x;
  v115.origin.y = y;
  v59 = width;
  v115.size.width = width;
  v115.size.height = height;
  v30 = v21 + CGRectGetMaxY(v115);
  sub_1D78B49A4();
  v32 = v31;
  v116.origin.x = v23;
  v116.origin.y = v25;
  v116.size.width = v27;
  v116.size.height = v29;
  v117.size.height = CGRectGetHeight(v116);
  v33 = 0.0;
  v117.origin.x = 0.0;
  v117.origin.y = v30;
  v117.size.width = v32;
  v118 = CGRectIntegral(v117);
  v34 = v118.origin.x;
  v35 = v118.origin.y;
  v36 = v118.size.width;
  v37 = v118.size.height;
  sub_1D78B4994();
  v39 = v38;
  v119.origin.x = v34;
  v119.origin.y = v35;
  v58 = v36;
  v119.size.width = v36;
  v119.size.height = v37;
  v120.size.height = CGRectGetMaxY(v119) + 20.0;
  v120.origin.x = 0.0;
  v120.origin.y = 0.0;
  v120.size.width = v39;
  v121 = CGRectIntegral(v120);
  v40 = v121.origin.x;
  v41 = v121.origin.y;
  v42 = v121.size.width;
  v43 = v121.size.height;
  v68[2] = a1;
  v68[3] = a2;
  v44 = sub_1D77CDCD4(sub_1D77CF84C, v68);
  v57 = v3;
  v63 = a1;
  v64 = a2;
  sub_1D77CE274(a2, v104, 0.0);
  v122.origin.x = v40;
  v122.origin.y = v41;
  v122.size.width = v42;
  v122.size.height = v43;
  v56 = CGRectGetHeight(v122);
  v55 = CGRectGetHeight(v104[0]);
  v66 = v44;
  v45 = *(v44 + 16);
  if (v45)
  {
    v46 = v112 + 16;
    v112 = *(v112 + 16);
    v47 = v66 + ((*(v46 + 64) + 32) & ~*(v46 + 64));
    v48 = *(v46 + 56);
    v49 = (v46 - 8);
    (v112)(v9, v47, v7);
    while (1)
    {
      sub_1D78B4904();
      v82[6] = v100;
      v82[7] = v101;
      v83[0] = v102[0];
      *(v83 + 9) = *(v102 + 9);
      v82[2] = v96;
      v82[3] = v97;
      v82[4] = v98;
      v82[5] = v99;
      v82[0] = v94;
      v82[1] = v95;
      v84[6] = v100;
      v84[7] = v101;
      v85[0] = v102[0];
      *(v85 + 9) = *(v102 + 9);
      v84[2] = v96;
      v84[3] = v97;
      v84[4] = v98;
      v84[5] = v99;
      v84[0] = v94;
      v84[1] = v95;
      if (sub_1D77CF86C(v84) > 1)
      {
        nullsub_1(v84);
        sub_1D77CF874(v82);
        (*v49)(v9, v7);
      }

      else
      {
        nullsub_1(v84);
        sub_1D77CF874(v82);
        sub_1D78B4904();
        (*v49)(v9, v7);
        v78[6] = v75;
        v78[7] = v76;
        v79[0] = v77[0];
        *(v79 + 9) = *(v77 + 9);
        v78[2] = v71;
        v78[3] = v72;
        v78[4] = v73;
        v78[5] = v74;
        v78[0] = v69;
        v78[1] = v70;
        v80[6] = v75;
        v80[7] = v76;
        v81[0] = v77[0];
        *(v81 + 9) = *(v77 + 9);
        v80[2] = v71;
        v80[3] = v72;
        v80[4] = v73;
        v80[5] = v74;
        v80[0] = v69;
        v80[1] = v70;
        sub_1D77CF86C(v80);
        v50 = nullsub_1(v80);
        sub_1D77CF874(v78);
        v33 = v33 + *(v50 + 16);
      }

      v47 += v48;
      if (!--v45)
      {
        break;
      }

      (v112)(v9, v47, v7);
    }
  }

  v51 = v56 + v55 + v33;
  sub_1D78B4994();
  sub_1D77CE274(v64, v84, fmax((v52 - v51) * 0.28, 40.0));
  *v85 = v40;
  *(v85 + 1) = v41;
  *&v85[1] = v42;
  *(&v85[1] + 1) = v43;
  v86 = v61;
  v87 = v60;
  v88 = v59;
  v89 = height;
  v90 = v34;
  v91 = v35;
  v92 = v58;
  v93 = v37;
  nullsub_1(v84);
  sub_1D77CF8C8(v84, v82);
  sub_1D77CE170();
  sub_1D77CE1C8();
  sub_1D78B49D4();

  return sub_1D77CF924(v109);
}

void sub_1D77CED98()
{
  v0 = sub_1D78B49B4();
  v1 = [v0 preferredContentSizeCategory];

  LOBYTE(v0) = sub_1D78B6164();
  if (v0)
  {
    sub_1D78B4984();
    v3 = v2;
  }

  else
  {
    sub_1D78B4994();
    v3 = v4 * 0.3;
  }

  sub_1D77CF978(0, &qword_1EC9CA2C0, sub_1D77CE220, &type metadata for HideMyEmailSignupModel, MEMORY[0x1E69D76A0]);
  sub_1D78B4594();
  v5 = v91;
  v6 = v92;
  v7 = v93;
  v8 = v94;
  v9 = v95;
  v10 = v97 >> 6;
  v58 = v96;
  if (!v10)
  {
    v98 = v91;
    v99 = v92;
    v100 = v93;
    v101 = v94;
    v102 = v95;
    v103 = v96;
    v104 = v97 & 1;
    v15 = v97;
    sub_1D78B4594();
    v105 = v60;
    v106 = v61;
    v107 = v62;
    v108 = v63;
    v16 = sub_1D78235CC();
    v18 = v17;
    sub_1D77CFA8C(&v105);
    sub_1D77CFAEC(&v98, &v64, v3);
    sub_1D77CFA24(v5, v6, v7, v8, v9, v58, v15);
    *&v82 = v16;
    *(&v82 + 1) = v18;
    v89 = v70;
    *v90 = v71;
    *&v90[16] = v72;
    v85 = v66;
    v86 = v67;
    v87 = v68;
    v88 = v69;
    v83 = v64;
    v84 = v65;
    sub_1D77D02B0(&v82);
    v79 = v88;
    v80 = v89;
    v81[0] = *v90;
    *(v81 + 9) = *&v90[9];
    v75 = v84;
    v76 = v85;
    v77 = v86;
    v78 = v87;
    v73 = v82;
    v74 = v83;
    goto LABEL_8;
  }

  if (v10 == 1)
  {
    v98 = v91;
    v99 = v92;
    v100 = v93;
    v101 = v94;
    v102 = v95;
    v103 = v96;
    v104 = v97 & 1;
    v11 = v97;
    sub_1D78B4594();
    v105 = v60;
    v106 = v61;
    v107 = v62;
    v108 = v63;
    v12 = sub_1D78235CC();
    v14 = v13;
    sub_1D77CFA8C(&v105);
    sub_1D77CFAEC(&v98, &v64, v3);
    sub_1D77CFA24(v5, v6, v7, v8, v9, v58, v11);
    *&v82 = v12;
    *(&v82 + 1) = v14;
    v89 = v70;
    *v90 = v71;
    *&v90[16] = v72;
    v85 = v66;
    v86 = v67;
    v87 = v68;
    v88 = v69;
    v83 = v64;
    v84 = v65;
    sub_1D77D02A4(&v82);
    v79 = v88;
    v80 = v89;
    v81[0] = *v90;
    *(v81 + 9) = *&v90[9];
    v75 = v84;
    v76 = v85;
    v77 = v86;
    v78 = v87;
    v73 = v82;
    v74 = v83;
LABEL_8:
    sub_1D77CE1C8();
    sub_1D78B48F4();
    return;
  }

  v57 = v95;
  v55 = v93;
  v56 = v94;
  v19 = v92;
  v54 = v97;
  v20 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v20 setLineBreakMode_];
  sub_1D778AF9C();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D78BF690;
  v22 = *MEMORY[0x1E69DB648];
  *(v21 + 32) = *MEMORY[0x1E69DB648];
  v23 = sub_1D773F004(0, &qword_1EE08FC10);
  v24 = v22;
  *(v21 + 40) = sub_1D78B61B4();
  v25 = *MEMORY[0x1E69DB650];
  *(v21 + 64) = v23;
  *(v21 + 72) = v25;
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 labelColor];
  v29 = sub_1D773F004(0, &qword_1EE08FC00);
  *(v21 + 80) = v28;
  v30 = *MEMORY[0x1E69DB688];
  *(v21 + 104) = v29;
  *(v21 + 112) = v30;
  *(v21 + 144) = sub_1D773F004(0, &unk_1EE08FCD8);
  *(v21 + 120) = v20;
  v31 = v30;
  v32 = v20;
  sub_1D77FED68(v21);
  swift_setDeallocating();
  sub_1D778AFF4();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v33 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v34 = sub_1D78B5C44();
  sub_1D77CFA24(v5, v19, v55, v56, v57, v58, v54);
  type metadata accessor for Key(0);
  sub_1D778B060();
  v35 = sub_1D78B5BB4();

  v36 = [v33 initWithString:v34 attributes:v35];

  sub_1D78B49A4();
  [v36 boundingRectWithSize:3 options:0 context:{v37 - (v3 + 19.0 + 3.0), 1.79769313e308}];
  x = v109.origin.x;
  y = v109.origin.y;
  width = v109.size.width;
  height = v109.size.height;
  v42 = CGRectGetWidth(v109);
  v110.origin.x = x;
  v110.origin.y = y;
  v110.size.width = width;
  v110.size.height = height;
  v111.size.height = CGRectGetHeight(v110);
  v111.origin.y = 13.0;
  v111.origin.x = v3 + 19.0 + 3.0;
  v111.size.width = v42;
  v112 = CGRectIntegral(v111);
  v43 = v112.origin.x;
  v44 = v112.origin.y;
  v45 = v112.size.width;
  v46 = v112.size.height;
  v47 = CGRectGetMaxY(v112) + 13.0;
  v113.origin.y = v47 * 0.5 + -9.5;
  v113.size.width = 19.0;
  v113.size.height = 19.0;
  v113.origin.x = v3;
  v114 = CGRectIntegral(v113);
  v59 = v114.origin.x;
  v48 = v114.origin.y;
  v49 = v114.size.width;
  v50 = v114.size.height;
  sub_1D78B4594();
  v64 = v105;
  v65 = v106;
  v66 = v107;
  LOBYTE(v67) = v108;
  v51 = sub_1D78235CC();
  v53 = v52;
  sub_1D77CFA8C(&v64);
  *&v82 = v51;
  *(&v82 + 1) = v53;
  *&v83 = v47;
  *(&v83 + 1) = v43;
  *&v84 = v44;
  *(&v84 + 1) = v45;
  *&v85 = v46;
  *(&v85 + 1) = v59;
  *&v86 = v48;
  *(&v86 + 1) = v49;
  *&v87 = v50;
  sub_1D77CFAE0(&v82);
  v79 = v88;
  v80 = v89;
  v81[0] = *v90;
  *(v81 + 9) = *&v90[9];
  v75 = v84;
  v76 = v85;
  v77 = v86;
  v78 = v87;
  v73 = v82;
  v74 = v83;
  sub_1D77CE1C8();
  sub_1D78B48F4();
}