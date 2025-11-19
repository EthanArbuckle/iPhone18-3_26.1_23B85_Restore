uint64_t sub_1D1120238()
{
}

uint64_t sub_1D11202DC()
{
  v0 = sub_1D138E5CC();

  return v0;
}

uint64_t sub_1D1120388()
{
  sub_1D11202DC();

  return swift_deallocClassInstance();
}

uint64_t sub_1D11203C0()
{
  sub_1D138EB6C();
  sub_1D13908CC();
  type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryCell();
  sub_1D1121650(&qword_1EC609BC8, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryCell);
  sub_1D13908AC();
  sub_1D138E08C();
  sub_1D13908AC();
  sub_1D138E71C();
  return sub_1D13908CC();
}

uint64_t sub_1D1120478@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1D138F3FC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1D138E73C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11216A0(0, &qword_1EC60B320, MEMORY[0x1E69A36F8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  if (*(v1 + qword_1EC60B2F0) == 1)
  {
    (*(v5 + 56))(v10, 1, 1, v4);
    a1[3] = sub_1D138E76C();
    a1[4] = sub_1D1121650(&qword_1EC60B328, MEMORY[0x1E69A3700]);
    __swift_allocate_boxed_opaque_existential_1(a1);

    return sub_1D138E75C();
  }

  else
  {
    v12 = *(v1 + qword_1EC60B2D8);
    if (v12)
    {
      v13 = *(v1 + qword_1EC60B2E0);
      v14 = v12;
      sub_1D138E72C();
      (*(v5 + 16))(v10, v7, v4);
      (*(v5 + 56))(v10, 0, 1, v4);
      a1[3] = sub_1D138E76C();
      a1[4] = sub_1D1121650(&qword_1EC60B328, MEMORY[0x1E69A3700]);
      __swift_allocate_boxed_opaque_existential_1(a1);
      sub_1D138E74C();
      sub_1D1121704(v10, &qword_1EC60B320, MEMORY[0x1E69A36F8]);
      return (*(v5 + 8))(v7, v4);
    }

    else
    {

      sub_1D138F37C();
      v15 = sub_1D138DE3C();
      swift_allocObject();
      v16 = sub_1D138DE1C();
      a1[3] = v15;
      result = sub_1D1121650(&qword_1EC60B610, MEMORY[0x1E69A34C8]);
      a1[4] = result;
      *a1 = v16;
    }
  }

  return result;
}

uint64_t sub_1D11208E4()
{
  v0 = sub_1D138E6BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138E60C();
  v4 = sub_1D138E6AC();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1D1120A1C()
{
  sub_1D1109C38();

  return swift_deallocClassInstance();
}

uint64_t sub_1D1120B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v33 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  v6 = *(v33 - 8);
  v7 = MEMORY[0x1EEE9AC00](v33);
  v27 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v7);
  v26 = &v25 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v13 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v25 = v3;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1D10FD934(0, v13, 0);
    v15 = 0;
    v34 = v35;
    v31 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v32 = v13;
    v16 = *(a2 + 16);
    v17 = *(v6 + 72);
    v29 = v17;
    v30 = a1 + v31;
    do
    {
      v18 = v30 + v17 * v15++;
      sub_1D111EC40(v18, v12);
      v19 = 0;
      while (v16 != v19)
      {
        sub_1D138ED5C();
        sub_1D1121650(&qword_1EC60A938, MEMORY[0x1E69A3910]);
        ++v19;
        if (sub_1D139011C())
        {
          v12[49] = 1;
          v20 = v27;
          sub_1D111EC40(v12, v27);
          v21 = v26;
          sub_1D10E4184(v26, v20);
          sub_1D111ECA4(v21);
          break;
        }
      }

      v22 = v34;
      v35 = v34;
      v24 = *(v34 + 16);
      v23 = *(v34 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1D10FD934(v23 > 1, v24 + 1, 1);
        v22 = v35;
      }

      *(v22 + 16) = v24 + 1;
      v34 = v22;
      v17 = v29;
      sub_1D10F0DFC(v12, v22 + v31 + v24 * v29);
    }

    while (v15 != v32);
    return v34;
  }

  return result;
}

uint64_t sub_1D1120DF4(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  v61 = a4;
  v57 = a3;
  v6 = sub_1D138ED5C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v53 - v11;
  v73 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  v12 = *(v73 - 8);
  v13 = MEMORY[0x1EEE9AC00](v73);
  v54 = (&v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v69 = &v53 - v18;
  v19 = *(a1 + 16);
  if (!v19)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v76 = MEMORY[0x1E69E7CC0];
  v55 = v10;
  v59 = v19;
  sub_1D10FD934(0, v19, 0);
  v67 = v76;
  v65 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v60 = a1 + v65;
  v20 = 0;
  v70 = v7 + 32;
  v71 = (v7 + 16);
  v56 = (v7 + 8);
  v21 = *(v12 + 72);
  v62 = a2;
  v22 = v73;
  v23 = v69;
  v72 = v21;
  while (1)
  {
    v66 = v20;
    v24 = v60 + v21 * v20;
    sub_1D111EC40(v24, v23);
    v25 = *(v24 + *(v22 + 52));
    v68 = v25;
    if (!v25)
    {
      v34 = 0;
      v35 = *(a2 + 16);
      while (v35 != v34)
      {
        v36 = v34 + 1;
        sub_1D1121650(&qword_1EC60A938, MEMORY[0x1E69A3910]);
        v37 = sub_1D139011C();
        v23 = v69;
        v34 = v36;
        if (v37)
        {
          v69[49] = 1;
          v38 = v54;
          sub_1D111EC40(v23, v54);
          sub_1D10E4184(v17, v38);
          v23 = v69;
          sub_1D111ECA4(v17);
          break;
        }
      }

      v22 = v73;
      v25 = v68;
      goto LABEL_26;
    }

    v26 = v64;
    v27 = sub_1D1120B00(v25, a2, v57);
    v64 = v26;

    v28 = *(v27 + 16);
    v63 = v27;
    if (v28)
    {
      v75 = MEMORY[0x1E69E7CC0];
      sub_1D10FDD9C(0, v28, 0);
      v29 = v55;
      v30 = v75;
      v31 = v27 + v65;
      do
      {
        sub_1D111EC40(v31, v17);
        (*v71)(v29, &v17[*(v73 + 48)], v6);
        sub_1D111ECA4(v17);
        v75 = v30;
        v33 = *(v30 + 16);
        v32 = *(v30 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1D10FDD9C(v32 > 1, v33 + 1, 1);
          v29 = v55;
          v30 = v75;
        }

        *(v30 + 16) = v33 + 1;
        (*(v7 + 32))(v30 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v33, v29, v6);
        v31 += v72;
        --v28;
      }

      while (v28);
      a2 = v62;
      v25 = v68;
      v23 = v69;
    }

    else
    {
      v30 = MEMORY[0x1E69E7CC0];
    }

    v39 = *(v30 + 16);

    v58 = v39;
    if (v39)
    {
      break;
    }

LABEL_24:

LABEL_25:
    v22 = v73;
    v47 = *(v73 + 52);

    *(v23 + v47) = v63;
LABEL_26:
    *v61 = v25 != 0;
    v48 = v67;
    v76 = v67;
    v50 = *(v67 + 16);
    v49 = *(v67 + 24);
    if (v50 >= v49 >> 1)
    {
      sub_1D10FD934(v49 > 1, v50 + 1, 1);
      v23 = v69;
      v48 = v76;
    }

    v51 = v66 + 1;
    *(v48 + 16) = v50 + 1;
    v20 = v51;
    v67 = v48;
    v52 = v48 + v65 + v50 * v72;
    v21 = v72;
    sub_1D10F0DFC(v23, v52);
    if (v20 == v59)
    {
      return v67;
    }
  }

  v41 = 0;
  while (v41 < *(v30 + 16))
  {
    v42 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v43 = a2;
    v44 = *(v7 + 72);
    (*(v7 + 16))(v74, v30 + v42 + v44 * v41++, v6);
    v45 = v43 + v42;
    v46 = *(v43 + 16) + 1;
    while (--v46)
    {
      sub_1D1121650(&qword_1EC60A938, MEMORY[0x1E69A3910]);
      v45 += v44;
      if (sub_1D139011C())
      {
        (*v56)(v74, v6);
        a2 = v62;

        v25 = v68;
        v23 = v69;
        v69[49] = 1;
        goto LABEL_25;
      }
    }

    result = (*v56)(v74, v6);
    a2 = v62;
    v25 = v68;
    v23 = v69;
    if (v41 == v58)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D1121464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v6[12] = a4;
  v6[13] = a5;
  v10 = qword_1EE069F90;

  if (v10 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  sub_1D11216A0(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D139E700;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1D1089930();
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  v12 = sub_1D13901AC();
  v14 = v13;

  v15 = [objc_opt_self() linkColor];
  type metadata accessor for TextItemCell();
  sub_1D1121650(&unk_1EC60F720, type metadata accessor for TextItemCell);
  v6[10] = sub_1D138DECC();
  v6[11] = v16;
  v6[2] = v12;
  v6[3] = v14;
  v17 = MEMORY[0x1E69E7CC0];
  v6[4] = 0;
  v6[5] = v15;
  v6[6] = a3;
  v6[7] = v17;
  v6[8] = 0;
  v6[9] = 0;
  return v6;
}

uint64_t sub_1D1121650(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D11216A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D1121704(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D11216A0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D1121774()
{
  if (qword_1EE06AF70 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE06BB58;
  v1 = OBJC_IVAR___HRProfileManager_currentProfile;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = [v2 healthRecordsStore];

  v4 = [objc_opt_self() imageManagerWithHealthRecordsStore_];
  qword_1EE069558 = v4;
}

id static HRBrandImageManager.shared.getter()
{
  if (qword_1EE069550 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE069558;

  return v1;
}

uint64_t sub_1D11218A8(uint64_t *a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 248) = a3;
  *(v5 + 152) = a2;
  *(v5 + 160) = a4;
  v6 = *a1;
  *(v5 + 168) = v4;
  *(v5 + 176) = v6;
  *(v5 + 184) = *(a1 + 1);
  *(v5 + 200) = a1[3];
  sub_1D13905AC();
  *(v5 + 208) = sub_1D139059C();
  v8 = sub_1D139055C();
  *(v5 + 216) = v8;
  *(v5 + 224) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D112195C, v8, v7);
}

uint64_t sub_1D112195C()
{
  if (*(v0 + 248))
  {
    [swift_getObjCClassFromObject() defaultLogoDimension];
    v2 = v1;
  }

  else
  {
    v2 = *(v0 + 152);
  }

  v3 = *(v0 + 168);
  v11 = *(v0 + 160);
  v4 = objc_allocWithZone(MEMORY[0x1E696BFB8]);
  v5 = sub_1D139012C();
  v6 = sub_1D139012C();
  v7 = [v4 initWithExternalID:v5 batchID:v6];
  *(v0 + 232) = v7;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1D1121B20;
  v8 = swift_continuation_init();
  sub_1D1121D3C();
  *(v0 + 136) = v9;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D1121DF8;
  *(v0 + 104) = &block_descriptor_17;
  *(v0 + 112) = v8;
  [v3 retrieveLogoForBrand:v7 size:v11 options:v0 + 80 completion:v2];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D1121B20()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  v3 = *(v1 + 224);
  v4 = *(v1 + 216);
  if (v2)
  {
    v5 = sub_1D1121CC4;
  }

  else
  {
    v5 = sub_1D1121C50;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D1121C50()
{

  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D1121CC4()
{
  v1 = *(v0 + 232);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

void sub_1D1121D3C()
{
  if (!qword_1EC60B338)
  {
    sub_1D1121DAC();
    sub_1D10922EC();
    v0 = sub_1D139061C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60B338);
    }
  }
}

unint64_t sub_1D1121DAC()
{
  result = qword_1EE06A540;
  if (!qword_1EE06A540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE06A540);
  }

  return result;
}

void *sub_1D1121DF8(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1D10922EC();
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1121EDC@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 meaningfulDate];
  if (v3)
  {
    v4 = v3;
    sub_1D138D52C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D138D57C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_1D1121FC4(uint64_t result)
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

  result = sub_1D10F7284(result, v10, 1, v3);
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

uint64_t sub_1D11220F8(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1D13910DC();
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

  v15 = sub_1D13910DC();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1D1124628(result);
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

void *sub_1D11221F0(void *result)
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

  result = sub_1D10F776C(result, v10, 1, v3);
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

  sub_1D10FAA88(0, &qword_1EC60A0A0);
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

uint64_t sub_1D11223B0(uint64_t result, uint64_t (*a2)(void), unint64_t *a3)
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

  sub_1D10FAA88(0, a3);
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

void *sub_1D112255C(void *result)
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

  result = sub_1D10F8B6C(result, v10, 1, v3);
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

  sub_1D1124780(0, &qword_1EC60AD10, &qword_1EC609BE8, off_1E83DAD48, MEMORY[0x1E69E62F8]);
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

uint64_t sub_1D1122680(uint64_t result)
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

  result = sub_1D139122C();
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

  sub_1D1124780(0, &qword_1EC60B378, &qword_1EC609A90, 0x1E69DC708, MEMORY[0x1E69E6720]);
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

void *sub_1D11227D4(void *result)
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

  result = sub_1D10F99DC(result, v10, 1, v3);
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

  sub_1D10FA090();
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

uint64_t sub_1D1122940(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
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

void (*sub_1D1122AB0(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC15HealthRecordsUI8TipsView_titleText;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1D1122B38;
}

void sub_1D1122B7C(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  *v8 = a1;
  v8[1] = a2;

  v10 = a4(v9);
  if (v8[1])
  {

    v11 = sub_1D139012C();
  }

  else
  {
    v11 = 0;
  }

  [v10 setText_];
}

void (*sub_1D1122C40(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC15HealthRecordsUI8TipsView_subtitleText;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1D1122CC8;
}

void sub_1D1122CE0(void **a1, char a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a1;
  v6 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v7 = v5[3] + v5[4];
    v8 = a3(v6);
    if (*(v7 + 8))
    {

      v9 = sub_1D139012C();
    }

    else
    {
      v9 = 0;
    }

    [v8 setText_];
  }

  free(v5);
}

void *sub_1D1122D98()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI8TipsView_attributedSubtitleText;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*sub_1D1122E0C(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC15HealthRecordsUI8TipsView_attributedSubtitleText;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1D1122E94;
}

void sub_1D1122EB4(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(void), SEL *a7)
{
  v9 = *a1;
  v10 = *a2;
  v11 = *a5;
  swift_beginAccess();
  v12 = *(v10 + v11);
  *(v10 + v11) = v9;
  v13 = v9;

  v14 = a6();
  v15 = *(v10 + v11);
  [v14 *a7];
}

void *sub_1D1122F50()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI8TipsView_image;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D1122FC4(void *a1, uint64_t *a2, uint64_t (*a3)(void), SEL *a4)
{
  v8 = *a2;
  swift_beginAccess();
  v9 = *(v4 + v8);
  *(v4 + v8) = a1;
  v10 = a1;

  v11 = a3();
  v12 = *(v4 + v8);
  [v11 *a4];
}

void (*sub_1D1123064(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC15HealthRecordsUI8TipsView_image;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1D11230EC;
}

void sub_1D112310C(void **a1, char a2, uint64_t (*a3)(uint64_t), SEL *a4)
{
  v7 = *a1;
  v8 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v9 = v7[3];
    v10 = v7[4];
    v11 = a3(v8);
    v12 = *(v9 + v10);
    [v11 *a4];
  }

  free(v7);
}

id TipsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TipsView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC15HealthRecordsUI8TipsView_titleText];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v4[OBJC_IVAR____TtC15HealthRecordsUI8TipsView_subtitleText];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI8TipsView_attributedSubtitleText] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI8TipsView_image] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI8TipsView____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI8TipsView____lazy_storage___subtitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI8TipsView____lazy_storage___imageView] = 0;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for TipsView();
  v11 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = sub_1D1123478();
  [v11 addSubview_];

  v13 = sub_1D11235E4();
  [v11 addSubview_];

  v14 = sub_1D1123748();
  [v11 addSubview_];

  sub_1D11238C8(v11);
  v15 = sub_1D1123BF4(v11);
  v16 = sub_1D1123F18(v11);
  v17 = objc_opt_self();
  sub_1D11220F8(v15, sub_1D11133CC);
  sub_1D11220F8(v16, sub_1D11133CC);
  sub_1D106F934(0, &qword_1EC609690);
  v18 = sub_1D139044C();

  [v17 activateConstraints_];

  return v11;
}

id sub_1D1123478()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI8TipsView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI8TipsView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI8TipsView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    [v5 setLineBreakMode_];
    [v5 setNumberOfLines_];
    sub_1D106F934(0, &qword_1EC60E670);
    v6 = sub_1D1390C6C();
    [v5 setFont_];

    [v5 setAdjustsFontForContentSizeCategory_];
    v7 = [objc_opt_self() labelColor];
    [v5 setTextColor_];

    v8 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1D11235E4()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI8TipsView____lazy_storage___subtitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI8TipsView____lazy_storage___subtitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI8TipsView____lazy_storage___subtitleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    [v5 setLineBreakMode_];
    [v5 setNumberOfLines_];
    sub_1D106F934(0, &qword_1EC60E670);
    v6 = sub_1D1390C6C();
    [v5 setFont_];

    [v5 setAdjustsFontForContentSizeCategory_];
    v7 = [objc_opt_self() secondaryLabelColor];
    [v5 setTextColor_];

    v8 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1D1123748()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI8TipsView____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI8TipsView____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI8TipsView____lazy_storage___imageView);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    [v5 setContentMode_];

    LODWORD(v6) = 1148846080;
    [v5 setContentHuggingPriority:0 forAxis:v6];
    LODWORD(v7) = 1148846080;
    [v5 setContentCompressionResistancePriority:0 forAxis:v7];
    sub_1D106F934(0, &qword_1EE06A540);
    v8 = sub_1D1390CFC();
    [v5 setImage_];

    v9 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_1D11238C8(char *a1)
{
  v19 = MEMORY[0x1E69E7CC0];
  v2 = sub_1D1123478();
  v3 = [v2 leadingAnchor];

  v4 = sub_1D1123748();
  v5 = [v4 trailingAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:11.0];
  MEMORY[0x1D3885D90]();
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();
  v7 = OBJC_IVAR____TtC15HealthRecordsUI8TipsView____lazy_storage___titleLabel;
  v8 = [*&a1[OBJC_IVAR____TtC15HealthRecordsUI8TipsView____lazy_storage___titleLabel] trailingAnchor];
  v9 = [a1 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:-13.0];

  MEMORY[0x1D3885D90]();
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();
  v11 = [*&a1[v7] topAnchor];
  v12 = [a1 topAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  MEMORY[0x1D3885D90]();
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();
  v14 = [*&a1[v7] bottomAnchor];
  v15 = sub_1D11235E4();
  v16 = [v15 topAnchor];

  v17 = [v14 constraintEqualToAnchor_];
  MEMORY[0x1D3885D90]();
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();
  return v19;
}

uint64_t sub_1D1123BF4(char *a1)
{
  v19 = MEMORY[0x1E69E7CC0];
  v2 = sub_1D11235E4();
  v3 = [v2 leadingAnchor];

  v4 = sub_1D1123478();
  v5 = [v4 leadingAnchor];

  v6 = [v3 constraintEqualToAnchor_];
  MEMORY[0x1D3885D90]();
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();
  v7 = OBJC_IVAR____TtC15HealthRecordsUI8TipsView____lazy_storage___subtitleLabel;
  v8 = [*&a1[OBJC_IVAR____TtC15HealthRecordsUI8TipsView____lazy_storage___subtitleLabel] trailingAnchor];
  v9 = OBJC_IVAR____TtC15HealthRecordsUI8TipsView____lazy_storage___titleLabel;
  v10 = [*&a1[OBJC_IVAR____TtC15HealthRecordsUI8TipsView____lazy_storage___titleLabel] trailingAnchor];
  v11 = [v8 constraintEqualToAnchor_];

  MEMORY[0x1D3885D90]();
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();
  v12 = [*&a1[v7] topAnchor];
  v13 = [*&a1[v9] bottomAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  MEMORY[0x1D3885D90]();
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();
  v15 = [*&a1[v7] bottomAnchor];
  v16 = [a1 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:-11.0];

  MEMORY[0x1D3885D90]();
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();
  return v19;
}

uint64_t sub_1D1123F18(char *a1)
{
  v10 = MEMORY[0x1E69E7CC0];
  v2 = sub_1D1123748();
  v3 = [v2 topAnchor];

  v4 = [a1 topAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  MEMORY[0x1D3885D90]();
  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();
  v6 = [*&a1[OBJC_IVAR____TtC15HealthRecordsUI8TipsView____lazy_storage___imageView] leadingAnchor];
  v7 = [a1 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:13.0];

  MEMORY[0x1D3885D90]();
  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();
  return v10;
}

void sub_1D11240C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1D1123478();

    MEMORY[0x1D3885C10](0x656C7469542ELL, 0xE600000000000000);
    v3 = sub_1D139012C();

    [v2 setAccessibilityIdentifier_];

    v4 = sub_1D11235E4();

    MEMORY[0x1D3885C10](0x6C7469746275532ELL, 0xE900000000000065);
    v6 = sub_1D139012C();

    [v4 setAccessibilityIdentifier_];
  }

  else
  {
    v5 = sub_1D1123478();
    [v5 setAccessibilityIdentifier_];

    v6 = sub_1D11235E4();
    [v6 setAccessibilityIdentifier_];
  }
}

id TipsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1D1124628(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1D13910DC();
LABEL_9:
  result = sub_1D139122C();
  *v1 = result;
  return result;
}

void sub_1D11246C8()
{
  v1 = (v0 + OBJC_IVAR____TtC15HealthRecordsUI8TipsView_titleText);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC15HealthRecordsUI8TipsView_subtitleText);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI8TipsView_attributedSubtitleText) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI8TipsView_image) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI8TipsView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI8TipsView____lazy_storage___subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI8TipsView____lazy_storage___imageView) = 0;
  sub_1D13913BC();
  __break(1u);
}

void sub_1D1124780(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D106F934(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D11247E8()
{
  if ((*(v0 + 120) & 1) == 0 && *(v0 + 121) == 1)
  {
    swift_beginAccess();
    v1 = *(v0 + 128);
    v2 = *(v1 + 16);

    if (v2)
    {
      v3 = 0;
      v4 = v1 + 40;
      while (v3 < *(v1 + 16))
      {
        ++v3;
        v5 = *(v4 - 8);

        v5(v6);

        v4 += 16;
        if (v2 == v3)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      *(v0 + 128) = MEMORY[0x1E69E7CC0];
    }
  }
}

void sub_1D11248C4(uint64_t a1, uint64_t a2)
{
  sub_1D1124AE4();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5, v8);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  swift_beginAccess();
  v11 = *(a2 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 128) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1D10F888C(0, v11[2] + 1, 1, v11);
    *(a2 + 128) = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1D10F888C((v13 > 1), v14 + 1, 1, v11);
  }

  v11[2] = v14 + 1;
  v15 = &v11[2 * v14];
  v15[4] = sub_1D1124B48;
  v15[5] = v10;
  *(a2 + 128) = v11;
  swift_endAccess();
  sub_1D11247E8();
}

uint64_t sub_1D1124A88()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

void sub_1D1124AE4()
{
  if (!qword_1EC60B380)
  {
    v0 = sub_1D139058C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60B380);
    }
  }
}

uint64_t sub_1D1124BA8()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v2 = *(v0 + 16);
    type metadata accessor for OnboardingTileAppearanceManager();
    v1 = swift_allocObject();
    *(v1 + 16) = v2;
    v3 = objc_allocWithZone(MEMORY[0x1E696C210]);
    v4 = v2;
    v5 = sub_1D139012C();
    v6 = [v3 initWithCategory:0 domainName:v5 healthStore:v4];

    *(v1 + 24) = v6;
    *(v0 + 32) = v1;
  }

  return v1;
}

uint64_t sub_1D1124C84()
{
  v41 = *v0;
  v1 = type metadata accessor for OnboardingViewIdentifier();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11259F0();
  v5 = *(v4 - 8);
  v35 = v4;
  v36 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1125AEC();
  v9 = *(v8 - 8);
  v33 = v8;
  v34 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1125C7C();
  v13 = *(v12 - 8);
  v37 = v12;
  v38 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1125D68();
  v17 = *(v16 - 8);
  v39 = v16;
  v40 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v0[3];
  sub_1D1125B80();
  sub_1D1125E4C(&qword_1EC60CCD0, sub_1D1125B80);
  sub_1D138F86C();
  sub_1D1124BA8();
  swift_storeEnumTagMultiPayload();
  v20 = sub_1D1099830();

  sub_1D1125EF8(v3, type metadata accessor for OnboardingViewIdentifier);
  v43 = v20;
  sub_1D1125A84();
  sub_1D1125E4C(&qword_1EC60B398, sub_1D1125A84);
  v21 = sub_1D138F80C();

  v43 = v21;
  v42 = 1;
  sub_1D138F82C();

  sub_1D1125E4C(&qword_1EC60B3C0, sub_1D1125AEC);
  sub_1D1125E4C(&qword_1EC60B3C8, sub_1D11259F0);
  v22 = v33;
  v23 = v35;
  sub_1D138F83C();
  (*(v36 + 8))(v7, v23);
  (*(v34 + 8))(v11, v22);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v26 = v41;
  *(v25 + 16) = v24;
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1D1125E04;
  *(v27 + 24) = v25;
  sub_1D1125E4C(&qword_1EC60B3D8, sub_1D1125C7C);
  v28 = v37;
  sub_1D138F84C();

  (*(v38 + 8))(v15, v28);
  sub_1D1125E4C(&qword_1EC60B3E0, sub_1D1125D68);
  v29 = v39;
  v30 = sub_1D138F80C();
  (*(v40 + 8))(v19, v29);
  return v30;
}

uint64_t sub_1D1125270(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D138F0BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v12 = _s15HealthRecordsUI34LabsOnboardingTileDisplayEvaluatorC027meetsConditionsToShowPinnedD3Tip9listItems07nonListP0SbSayAA25UserDomainConceptViewDataVG_AItFZ_0(a1);
    sub_1D138F06C();
    v13 = sub_1D138F0AC();
    v14 = sub_1D13907DC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29[0] = v28;
      *v15 = 136446722;
      v29[4] = a5;
      swift_getMetatypeMetadata();
      v16 = sub_1D13901EC();
      v18 = sub_1D11DF718(v16, v17, v29);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2082;
      if (v12)
      {
        v19 = 1702195828;
      }

      else
      {
        v19 = 0x65736C6166;
      }

      if (v12)
      {
        v20 = 0xE400000000000000;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      v21 = sub_1D11DF718(v19, v20, v29);

      *(v15 + 14) = v21;
      *(v15 + 22) = 2082;
      if (a3)
      {
        v22 = 0x65736C6166;
      }

      else
      {
        v22 = 1702195828;
      }

      if (a3)
      {
        v23 = 0xE500000000000000;
      }

      else
      {
        v23 = 0xE400000000000000;
      }

      v24 = sub_1D11DF718(v22, v23, v29);

      *(v15 + 24) = v24;
      _os_log_impl(&dword_1D101F000, v13, v14, "[%{public}s]: Conditions for showing tip: meetsConditions: %{public}s, !hasDismissed: %{public}s", v15, 0x20u);
      v25 = v28;
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v25, -1, -1);
      MEMORY[0x1D38882F0](v15, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    v26 = v12 & (a3 ^ 1);
  }

  else
  {
    v26 = 0;
  }

  return v26 & 1;
}

uint64_t LabsOnboardingTileDisplayEvaluator.deinit()
{

  return v0;
}

uint64_t LabsOnboardingTileDisplayEvaluator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _s15HealthRecordsUI34LabsOnboardingTileDisplayEvaluatorC027meetsConditionsToShowPinnedD3Tip9listItems07nonListP0SbSayAA25UserDomainConceptViewDataVG_AItFZ_0(uint64_t a1)
{
  sub_1D1125E94(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v38 = &v30 - v3;
  v4 = sub_1D138D57C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v30 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v12 = type metadata accessor for UserDomainConceptViewData();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = a1;

  sub_1D11224D8(v16);
  result = v39;
  v37 = *(v39 + 16);
  if (v37)
  {
    v18 = 0;
    v19 = *(a1 + 16);
    v33 = v39 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v34 = v39;
    v32 = *(v12 + 36);
    v20 = (v5 + 48);
    v30 = v19;
    v31 = (v5 + 32);
    v21 = (v5 + 8);
    while (1)
    {
      if (v18 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v22 = v13;
      sub_1D10DC904(v33 + *(v13 + 72) * v18, v15);
      v23 = v38;
      sub_1D106A1D8(v15 + v32, v38);
      v24 = *v20;
      if ((*v20)(v23, 1, v4) == 1)
      {
        v25 = [v15[1] modificationDate];
        sub_1D138D52C();

        v26 = v38;
        if (v24(v38, 1, v4) != 1)
        {
          sub_1D109AC18(v26);
        }
      }

      else
      {
        (*v31)(v11, v23, v4);
      }

      v27 = v35;
      sub_1D138D56C();
      v28 = v36;
      sub_1D138D49C();
      v29 = *v21;
      (*v21)(v27, v4);
      LOBYTE(v27) = sub_1D138D4FC();
      v29(v28, v4);
      v29(v11, v4);
      sub_1D1125EF8(v15, type metadata accessor for UserDomainConceptViewData);
      if (v27)
      {
        break;
      }

      ++v18;
      v13 = v22;
      result = v34;
      if (v37 == v18)
      {
        goto LABEL_10;
      }
    }

    if (v37 >= 6 && !v30)
    {
      return 1;
    }
  }

  else
  {
LABEL_10:
  }

  return 0;
}

void sub_1D11259F0()
{
  if (!qword_1EC60B388)
  {
    sub_1D1125A84();
    sub_1D1125E4C(&qword_1EC60B398, sub_1D1125A84);
    v0 = sub_1D138F52C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60B388);
    }
  }
}

void sub_1D1125A84()
{
  if (!qword_1EC60B390)
  {
    sub_1D10922EC();
    v0 = sub_1D138F62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60B390);
    }
  }
}

void sub_1D1125AEC()
{
  if (!qword_1EC60B3A0)
  {
    sub_1D1125B80();
    sub_1D1125E4C(&qword_1EC60CCD0, sub_1D1125B80);
    v0 = sub_1D138F55C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60B3A0);
    }
  }
}

void sub_1D1125B80()
{
  if (!qword_1EC60B3A8)
  {
    sub_1D1125BE8();
    v0 = sub_1D138F62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60B3A8);
    }
  }
}

void sub_1D1125BE8()
{
  if (!qword_1EC60CCC0)
  {
    sub_1D1125E94(255, &qword_1EC60B3B0, type metadata accessor for UserDomainConceptViewData, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60CCC0);
    }
  }
}

void sub_1D1125C7C()
{
  if (!qword_1EC60B3B8)
  {
    sub_1D1125AEC();
    sub_1D11259F0();
    sub_1D1125E4C(&qword_1EC60B3C0, sub_1D1125AEC);
    sub_1D1125E4C(&qword_1EC60B3C8, sub_1D11259F0);
    v0 = sub_1D138F4FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60B3B8);
    }
  }
}

void sub_1D1125D68()
{
  if (!qword_1EC60B3D0)
  {
    sub_1D1125C7C();
    sub_1D1125E4C(&qword_1EC60B3D8, sub_1D1125C7C);
    v0 = sub_1D138F54C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60B3D0);
    }
  }
}

uint64_t sub_1D1125E0C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 8), *(a1 + 16));
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D1125E4C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D1125E94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D1125EF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1D1125F58()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI29UDCRecordsTableViewController____lazy_storage___modePicker;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI29UDCRecordsTableViewController____lazy_storage___modePicker);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI29UDCRecordsTableViewController____lazy_storage___modePicker);
  }

  else
  {
    v4 = sub_1D1125FBC(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D1125FBC(uint64_t a1)
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D10FD984(0, 2, 0);
  v2 = v19;
  v3 = sub_1D11261C4(0);
  v4 = MEMORY[0x1E69E6158];
  v18 = MEMORY[0x1E69E6158];
  *&v17 = v3;
  *(&v17 + 1) = v5;
  v7 = *(v19 + 16);
  v6 = *(v19 + 24);
  if (v7 >= v6 >> 1)
  {
    sub_1D10FD984((v6 > 1), v7 + 1, 1);
    v2 = v19;
  }

  *(v2 + 16) = v7 + 1;
  sub_1D109E39C(&v17, (v2 + 32 * v7 + 32));
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v8 = sub_1D138D1CC();
  v18 = v4;
  *&v17 = v8;
  *(&v17 + 1) = v9;
  v11 = *(v2 + 16);
  v10 = *(v2 + 24);
  if (v11 >= v10 >> 1)
  {
    sub_1D10FD984((v10 > 1), v11 + 1, 1);
  }

  v12 = v19;
  *(v19 + 16) = v11 + 1;
  sub_1D109E39C(&v17, (v12 + 32 * v11 + 32));
  v13 = objc_allocWithZone(MEMORY[0x1E69DCF38]);
  v14 = sub_1D139044C();

  v15 = [v13 initWithItems_];

  [v15 setSelectedSegmentIndex_];
  [v15 addTarget:a1 action:sel_modePickerDidChange_ forControlEvents:4096];
  [v15 sizeToFit];
  return v15;
}

uint64_t sub_1D11261C4(char a1)
{
  if (a1)
  {
    if (qword_1EE06AD00 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_6;
  }

  if (qword_1EE06AD00 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_1D138D1CC();
}

void sub_1D112633C()
{
  v1 = sub_1D1125F58();
  v2 = [v1 selectedSegmentIndex];

  if (v2 > 1)
  {
    __break(1u);
  }

  else
  {
    v3 = byte_1F4D04838[v2 + 32];
    *(v0 + OBJC_IVAR____TtC15HealthRecordsUI29UDCRecordsTableViewController_preferredSegment) = v3;
    v4 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI29UDCRecordsTableViewController_additionalPredicate);
    v5 = v4;
    v6 = sub_1D11263FC(v4, v3);

    sub_1D10DE8FC(v6);
  }
}

unint64_t sub_1D11263FC(void *a1, char a2)
{
  if (a2)
  {
    v3 = [objc_opt_self() diagnosticTestResultType];
    v4 = [objc_opt_self() predicateForDiagnosticTestResultWithReferenceRangeStatus_];
    v5 = v4;
    if (a1)
    {
      sub_1D11280D4(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1D139E6E0;
      *(v6 + 32) = v5;
      *(v6 + 40) = a1;
      sub_1D106F934(0, &qword_1EE06B790);
      v7 = a1;
      v8 = v5;
      v9 = sub_1D139044C();

      v10 = [objc_opt_self() andPredicateWithSubpredicates_];
    }

    else
    {
      v10 = v4;
    }

    sub_1D1127D60(0, &qword_1EC60B428, sub_1D1127FE8, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D139E700;
    *(inited + 32) = v3;
    *(inited + 40) = v10;
    v18 = v10;
    v19 = v3;
    v16 = sub_1D109B2FC(inited);
    swift_setDeallocating();
    sub_1D1128078(inited + 32);
  }

  else if (a1)
  {
    v11 = objc_opt_self();
    v12 = a1;
    v13 = [v11 diagnosticTestResultType];
    sub_1D1127D60(0, &qword_1EC60B428, sub_1D1127FE8, MEMORY[0x1E69E6F90]);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_1D139E700;
    *(v14 + 32) = v13;
    v15 = v14 + 32;
    *(v14 + 40) = v12;
    v16 = sub_1D109B2FC(v14);
    swift_setDeallocating();
    sub_1D1128078(v15);
  }

  else
  {
    return 0;
  }

  return v16;
}

void sub_1D1126780()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI29UDCRecordsTableViewController____lazy_storage___modePicker);
}

id sub_1D11267C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UDCRecordsTableViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for UDCRecordsTableViewController()
{
  result = qword_1EC60B400;
  if (!qword_1EC60B400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D11268FC()
{
  result = qword_1EC60B410;
  if (!qword_1EC60B410)
  {
    sub_1D11280D4(255, &qword_1EC60B418, &type metadata for UDCRecordsTableViewController.ModeSegment, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B410);
  }

  return result;
}

void *sub_1D1126978@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_1D11269B8()
{
  result = qword_1EC60B420;
  if (!qword_1EC60B420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B420);
  }

  return result;
}

char *sub_1D1126A0C(void *a1, void *a2, void *a3)
{
  v151 = a2;
  v6 = sub_1D139091C();
  v157 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E6720];
  sub_1D1127D60(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v155 = &v144 - v11;
  sub_1D10817FC();
  v153 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v154 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D138D5EC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v147 = &v144 - v19;
  sub_1D1127D60(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], v9);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v156 = &v144 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v152 = &v144 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v144 - v25;
  v3[OBJC_IVAR____TtC15HealthRecordsUI29UDCRecordsTableViewController_preferredSegment] = 0;
  v27 = OBJC_IVAR____TtC15HealthRecordsUI29UDCRecordsTableViewController_additionalPredicate;
  *&v3[OBJC_IVAR____TtC15HealthRecordsUI29UDCRecordsTableViewController_additionalPredicate] = 0;
  *&v3[OBJC_IVAR____TtC15HealthRecordsUI29UDCRecordsTableViewController____lazy_storage___modePicker] = 0;
  v160 = v3;
  *&v3[v27] = a3;
  v28 = a3;
  v159 = a1;
  v29 = [a1 categoryTypes];
  sub_1D106F934(0, &qword_1EE06B6C0);
  v164 = sub_1D139045C();

  result = [objc_opt_self() allSupportedRecordCategories];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v31 = result;
  sub_1D106F934(0, &qword_1EE06B730);
  v32 = sub_1D139045C();

  v161 = v15;
  v162 = v26;
  v150 = v6;
  v149 = v8;
  v158 = v14;
  v144 = v18;
  if (v32 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
  {
    v34 = 0;
    v163 = v32 & 0xC000000000000001;
    while (1)
    {
      if (v163)
      {
        v35 = MEMORY[0x1D3886B70](v34, v32);
      }

      else
      {
        if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v35 = *(v32 + 8 * v34 + 32);
      }

      v36 = v35;
      v37 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      v38 = [v35 categoryType];
      v39 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      *&v166 = v39;
      MEMORY[0x1EEE9AC00](v39);
      v143 = &v166;
      v40 = sub_1D10F289C(sub_1D1127DC4, (&v144 - 4), v164);

      if (v40)
      {

        goto LABEL_18;
      }

      ++v34;
      if (v37 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  v36 = 0;
LABEL_18:
  v41 = v158;
  (*(v161 + 56))(v162, 1, 1, v158);
  v42 = v160;
  v43 = &v160[OBJC_IVAR___HRMedicalRecordTimelineViewController_overrideTitle];
  *v43 = 0;
  *(v43 + 1) = 0;
  *&v42[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayItemProvider] = 0;
  *&v42[OBJC_IVAR___HRMedicalRecordTimelineViewController_observer] = 0;
  *&v42[OBJC_IVAR___HRMedicalRecordTimelineViewController_account] = 0;
  v44 = OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept;
  *&v42[OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept] = 0;
  v42[OBJC_IVAR___HRMedicalRecordTimelineViewController_chartLoaded] = 0;
  *&v42[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___contentStatusView] = 0;
  *&v42[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___clinicalAccountStore] = 0;
  *&v42[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataProvider] = 0;
  *&v42[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___accountStateProvider] = 0;
  *&v42[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSourceProvider] = 0;
  *&v42[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSource] = 0;
  *&v42[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncObserver] = 0;
  *&v42[OBJC_IVAR___HRMedicalRecordTimelineViewController_queryReturnedCancellable] = 0;
  *&v42[OBJC_IVAR___HRMedicalRecordTimelineViewController_accountStateCancellable] = 0;
  *&v42[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionStateCancellable] = 0;
  *&v42[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerStateCancellable] = 0;
  v45 = &v42[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState];
  *v45 = 0;
  v45[8] = 1;
  v46 = &v42[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState];
  *v46 = 0;
  v46[8] = 1;
  v47 = &v42[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientView];
  sub_1D138E37C();
  v48 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v49 = v36;
  v50 = v159;
  v164 = v159;
  v51 = v151;
  v52 = [v48 init];
  v53 = MEMORY[0x1E69A3658];
  *v47 = v52;
  *(v47 + 1) = v53;
  v42[OBJC_IVAR___HRMedicalRecordTimelineViewController_showGradientBackgroundForAllRecordsRoom] = 0;
  *&v42[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientSubscriber] = 0;
  *&v42[OBJC_IVAR___HRMedicalRecordTimelineViewController_profile] = v51;
  *&v42[OBJC_IVAR___HRMedicalRecordTimelineViewController_category] = v36;
  v54 = v162;
  sub_1D1127E2C(v162, &v42[OBJC_IVAR___HRMedicalRecordTimelineViewController_accountId]);
  *&v42[OBJC_IVAR___HRMedicalRecordTimelineViewController_conceptIdentifier] = 0;
  *&v42[OBJC_IVAR___HRMedicalRecordTimelineViewController_userDomainConcept] = v50;
  v55 = v41;
  *&v42[OBJC_IVAR___HRMedicalRecordTimelineViewController_additionalPredicatesPerSampleType] = 0;
  v42[OBJC_IVAR___HRMedicalRecordTimelineViewController_isDisplayingRemovedRecords] = 0;
  v42[OBJC_IVAR___HRMedicalRecordTimelineViewController_showExportButton] = 0;
  v42[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncActive] = 0;
  *&v42[OBJC_IVAR___HRMedicalRecordTimelineViewController_preloadedRemovedRecords] = 0;
  v56 = *&v42[v44];
  v57 = &v42[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayState];
  *v57 = 0;
  *(v57 + 1) = 0;
  *(v57 + 2) = v56;
  *(v57 + 3) = v36;
  v57[32] = 0;
  v58 = objc_opt_self();
  v59 = v56;
  v60 = v49;
  v61 = v51;
  v62 = v60;
  v151 = v164;
  v63 = v161;
  v64 = [v58 clearColor];
  v167 = sub_1D138E90C();
  v168 = MEMORY[0x1E69A3750];
  __swift_allocate_boxed_opaque_existential_1(&v166);
  sub_1D138E8FC();
  sub_1D102CC18(&v166, &v42[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientColorProvider]);
  v164 = v61;
  v148 = [v61 healthStore];
  v65 = v152;
  sub_1D1127E2C(v54, v152);
  v66 = (v63 + 48);
  v67 = *(v63 + 48);
  v68 = v36;
  if (v67(v65, 1, v41) == 1)
  {
    sub_1D1127EC0(v65, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D1127D60);
    v152 = 0;
  }

  else
  {
    v69 = v147;
    (*(v63 + 32))(v147, v65, v41);
    v70 = objc_opt_self();
    v71 = sub_1D138D5AC();
    v152 = [v70 predicateForRecordsFromClinicalAccountIdentifier_];

    (*(v63 + 8))(v69, v55);
  }

  v72 = v154;
  v73 = v62;
  if (v68 && (v74 = [v62 additionalPredicatesForCategory]) != 0)
  {
    v75 = v74;
    sub_1D106F934(0, &qword_1EE06B780);
    sub_1D106F934(0, &qword_1EE06B790);
    sub_1D1127F80();
    v76 = sub_1D138FFFC();
  }

  else
  {
    v76 = 0;
  }

  v147 = sub_1D107D710(v77, v68);
  v78 = v153[16];
  sub_1D1127E2C(v162, &v72[v78]);
  if (v68)
  {
    v79 = 2;
LABEL_29:
    sub_1D1127EC0(&v72[v78], &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D1127D60);
    goto LABEL_30;
  }

  v79 = 1;
  if (v67(&v72[v78], 1, v55) != 1)
  {
    goto LABEL_29;
  }

  v79 = 0;
LABEL_30:
  v145 = v79;
  v153 = v67;
  v154 = v66;
  v163 = v68;
  v80 = v76;
  if (!v76)
  {
    v80 = sub_1D109B2FC(MEMORY[0x1E69E7CC0]);
  }

  type metadata accessor for TimelinePagingDataSource();
  v81 = swift_allocObject();
  *(v81 + 2) = MEMORY[0x1E69E7CD0];
  v146 = v73;
  v82 = MEMORY[0x1E69E7CC0];
  *(v81 + 3) = sub_1D109B408(MEMORY[0x1E69E7CC0]);
  *(v81 + 4) = 0;
  v83 = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_oldestSampleDate;
  v84 = sub_1D138D57C();
  (*(*(v84 - 8) + 56))(&v81[v83], 1, 1, v84);
  *&v81[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_removedRecords] = v82;
  v81[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_hasRemovedRecordsSection] = 0;
  v81[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_fetching] = 0;
  *&v81[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_reloadTrigger] = 0;
  *&v81[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_perTypeFilter] = 0;
  sub_1D138F48C();
  v85 = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_changeObservers;
  sub_1D106F934(0, &qword_1EC609AA8);
  v86 = sub_1D1390F2C();
  v87 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v88 = sub_1D139012C();
  v89 = [v87 initWithName:v88 loggingCategory:v86];

  *&v81[v85] = v89;
  v90 = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_queryReturned;
  LOBYTE(v166) = 0;
  sub_1D1127F20();
  swift_allocObject();
  *&v81[v90] = sub_1D138F6EC();
  v91 = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_dateFormatter;
  v92 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v92 setDateStyle_];
  [v92 setTimeStyle_];

  *&v81[v91] = v92;
  v93 = &v81[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_identifier];
  *v93 = 0xD000000000000023;
  *(v93 + 1) = 0x80000001D13BD160;
  v94 = v148;
  *&v81[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_healthStore] = v148;
  v81[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_timelineStyle] = v145;
  v95 = &v81[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_conceptIdentifier];
  *v95 = 0;
  v95[8] = 1;
  v96 = v159;
  *&v81[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_userDomainConcept] = v159;
  *&v81[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_perTypePredicates] = v80;
  v97 = v152;
  *&v81[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_globalFilter] = v152;
  v98 = objc_allocWithZone(MEMORY[0x1E696C1C0]);
  v99 = v97;
  v100 = v151;
  v101 = v94;

  v102 = [v98 init];
  type metadata accessor for TimelineRecordFetcher();
  swift_allocObject();
  v151 = v100;
  v103 = v99;
  v104 = sub_1D130A840(v102, v147, 0, 1, v96, v80, v97, 0, 0);
  *&v81[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_repository] = v104;
  type metadata accessor for TimelineViewDataProvider();
  v105 = swift_allocObject();
  *(v105 + 16) = v101;
  *(v105 + 24) = 0;
  *(v105 + 32) = 0;
  *(v105 + 40) = 0;
  *(v105 + 48) = 0;
  *(v105 + 56) = v163;
  *&v81[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_viewDataProvider] = v105;
  *(v105 + 64) = 0;
  v81[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_showRemovedRecordsOnTimeline] = 0;
  v106 = *(v104 + 120);
  v107 = v146;
  v108 = v101;
  [v106 registerObserver_];
  v109 = sub_1D13905DC();
  v110 = v155;
  (*(*(v109 - 8) + 56))(v155, 1, 1, v109);
  v111 = swift_allocObject();
  swift_weakInit();
  sub_1D13905AC();

  v112 = sub_1D139059C();
  v113 = swift_allocObject();
  v114 = MEMORY[0x1E69E85E0];
  v113[2] = v112;
  v113[3] = v114;
  v113[4] = v111;

  sub_1D107877C(0, 0, v110, &unk_1D139EAA8, v113);

  v115 = v160;
  *&v160[OBJC_IVAR___HRMedicalRecordTimelineViewController_timelinePagedDataSource] = v81;
  v116 = [objc_allocWithZone(MEMORY[0x1E69DC840]) init];
  v117 = type metadata accessor for MedicalRecordTimelineViewController();
  v165.receiver = v115;
  v165.super_class = v117;
  v118 = objc_msgSendSuper2(&v165, sel_initWithCollectionViewLayout_, v116);

  v119 = v118;
  sub_1D1072338();

  sub_1D138F6CC();

  v120 = BYTE8(v166);
  v121 = &v119[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState];
  *v121 = v166;
  v121[8] = v120;

  sub_1D138F6CC();

  v122 = v166;
  v123 = BYTE8(v166);
  if (v166 <= 1)
  {
    v124 = 1;
  }

  else
  {
    v124 = v166;
  }

  if (!BYTE8(v166))
  {
    v122 = v124;
  }

  v125 = &v119[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState];
  *v125 = v122;
  v125[8] = v123;
  v126 = v162;
  v127 = v156;
  sub_1D1127E2C(v162, v156);
  v128 = v158;
  if ((v153)(v127, 1, v158) == 1)
  {
    sub_1D1127EC0(v127, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D1127D60);
  }

  else
  {
    v129 = v161;
    v130 = v144;
    (*(v161 + 32))(v144, v127, v128);
    sub_1D107B54C(v130);
    (*(v129 + 8))(v130, v128);
  }

  v131 = v149;
  sub_1D107A01C();

  sub_1D1127EC0(v126, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D1127D60);
  v132 = qword_1EE06AD00;
  v133 = v119;
  if (v132 != -1)
  {
    swift_once();
  }

  v143 = 0xE000000000000000;
  v134 = sub_1D138D1CC();
  v136 = v135;
  v137 = &v133[OBJC_IVAR___HRMedicalRecordTimelineViewController_overrideTitle];
  swift_beginAccess();
  *v137 = v134;
  v137[1] = v136;

  v138 = [v133 navigationItem];
  v139 = sub_1D1125F58();
  v140 = v157;
  v141 = v150;
  (*(v157 + 104))(v131, *MEMORY[0x1E69A3878], v150);
  v142 = sub_1D139090C();

  (*(v140 + 8))(v131, v141);
  return v133;
}

void sub_1D1127D60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D1127E2C(uint64_t a1, uint64_t a2)
{
  sub_1D1127D60(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1127EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D1127F20()
{
  if (!qword_1EE06A738)
  {
    v0 = sub_1D138F6DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06A738);
    }
  }
}

unint64_t sub_1D1127F80()
{
  result = qword_1EE06B778;
  if (!qword_1EE06B778)
  {
    sub_1D106F934(255, &qword_1EE06B780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06B778);
  }

  return result;
}

void sub_1D1127FE8()
{
  if (!qword_1EC60B430)
  {
    sub_1D106F934(255, &qword_1EE06B780);
    sub_1D106F934(255, &qword_1EE06B790);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60B430);
    }
  }
}

uint64_t sub_1D1128078(uint64_t a1)
{
  sub_1D1127FE8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D11280D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_1D1128124()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI14MultiValueView____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI14MultiValueView____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI14MultiValueView____lazy_storage___stackView);
  }

  else
  {
    v4 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
    sub_1D106F934(0, &qword_1EC609680);
    v5 = sub_1D139044C();
    v6 = [v4 initWithArrangedSubviews_];

    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    [v6 setAxis_];
    [v6 setDistribution_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1D1128214(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI14MultiValueView_viewData] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI14MultiValueView____lazy_storage___stackView] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for MultiValueView();
  v9 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  LODWORD(v10) = 1144750080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v10];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = sub_1D1128124();
  [v9 addSubview_];

  sub_1D1128398();
  return v9;
}

void sub_1D1128398()
{
  v1 = objc_opt_self();
  sub_1D1082CC4(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D139F5B0;
  v3 = sub_1D1128124();
  v4 = [v3 leadingAnchor];

  v5 = [v0 leadingAnchor];
  v6 = [v4 constraintEqualToAnchor_];

  *(v2 + 32) = v6;
  v7 = OBJC_IVAR____TtC15HealthRecordsUI14MultiValueView____lazy_storage___stackView;
  v8 = [*&v0[OBJC_IVAR____TtC15HealthRecordsUI14MultiValueView____lazy_storage___stackView] trailingAnchor];
  v9 = [v0 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v2 + 40) = v10;
  v11 = [*&v0[v7] topAnchor];
  v12 = [v0 topAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v2 + 48) = v13;
  v14 = [*&v0[v7] bottomAnchor];
  v15 = [v0 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v2 + 56) = v16;
  sub_1D106F934(0, &qword_1EC609690);
  v17 = sub_1D139044C();

  [v1 activateConstraints_];
}

void sub_1D1128614()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI14MultiValueView_viewData);
  if (v1)
  {

    v2 = sub_1D1128124();
    v3 = [v2 arrangedSubviews];

    sub_1D106F934(0, &qword_1EC609680);
    v4 = sub_1D139045C();

    v37 = v1;
    if (v4 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D13910DC())
    {
      v38 = OBJC_IVAR____TtC15HealthRecordsUI14MultiValueView____lazy_storage___stackView;
      if (i)
      {
        v6 = 0;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x1D3886B70](v6, v4);
          }

          else
          {
            if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_23;
            }

            v7 = *(v4 + 8 * v6 + 32);
          }

          v8 = v7;
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          [*(v39 + v38) removeArrangedSubview_];

          ++v6;
          if (v9 == i)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
      }

      else
      {
LABEL_13:

        v10 = v37;
        v11 = *(v37 + 16);
        if (!v11)
        {
LABEL_20:

          return;
        }

        v12 = 0;
        v13 = (v37 + 32);
        v14 = &selRef_deselectRowAtIndexPath_animated_;
        v15 = 0x1FAECA000;
        v16 = &selRef_hasSectionLocalizedContent;
        v36 = *(v37 + 16);
        while (v12 < *(v10 + 16))
        {
          v23 = *v13;
          v24 = *(v13 + 1);
          v41[2] = *(v13 + 2);
          v41[0] = v23;
          v41[1] = v24;
          v25 = *(v13 + 3);
          v26 = *(v13 + 4);
          v27 = *(v13 + 5);
          *&v42[13] = *(v13 + 93);
          v41[4] = v26;
          *v42 = v27;
          v41[3] = v25;
          v28 = v15;
          memmove(__dst, v13, 0x65uLL);
          v29 = objc_allocWithZone(type metadata accessor for SingleValueView());
          sub_1D1128A74(v41, v40);
          v4 = [v29 v14[213]];
          [v4 (v28 + 1466)];
          v31 = *(v4 + OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView_viewData + 16);
          v30 = *(v4 + OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView_viewData + 32);
          v44[0] = *(v4 + OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView_viewData);
          v44[1] = v31;
          v44[2] = v30;
          v33 = *(v4 + OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView_viewData + 64);
          v32 = *(v4 + OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView_viewData + 80);
          v34 = *(v4 + OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView_viewData + 93);
          v44[3] = *(v4 + OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView_viewData + 48);
          *(v45 + 13) = v34;
          v44[4] = v33;
          v45[0] = v32;
          memmove((v4 + OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView_viewData), __dst, 0x65uLL);
          sub_1D1128A74(__dst, v40);
          sub_1D1128AD0(v44);
          sub_1D11C2EA8();
          v35 = v16;
          [*(v39 + v38) v16[287]];
          if (v12 == *(v10 + 16) - 1)
          {
            sub_1D1128B50(__dst);
          }

          else
          {
            v17 = *(v39 + v38);
            v18 = objc_allocWithZone(MEMORY[0x1E69A44A8]);
            v19 = v17;
            v20 = [v18 v14[213]];
            HKUIOnePixel();
            [v20 setSeparatorThickness_];
            v21 = v14;
            v22 = [objc_opt_self() separatorColor];
            [v20 setColor_];

            v14 = v21;
            [v20 setTranslatesAutoresizingMaskIntoConstraints_];
            [v19 v35 + 896];
            sub_1D1128B50(__dst);

            v11 = v36;
            v10 = v37;
          }

          ++v12;
          v13 += 104;
          v15 = 0x1FAECA000uLL;
          v16 = &selRef_hasSectionLocalizedContent;
          if (v11 == v12)
          {
            goto LABEL_20;
          }
        }
      }

      __break(1u);
LABEL_25:
      ;
    }
  }
}

id sub_1D11289D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiValueView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D1128AD0(uint64_t a1)
{
  sub_1D1082CC4(0, &qword_1EC60B448, &type metadata for UserDomainConceptFeedItemViewData, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ClinicalAccountLoginUpgradeAction()
{
  result = qword_1EC60B450;
  if (!qword_1EC60B450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D1128C18()
{
  sub_1D138D5EC();
  if (v0 <= 0x3F)
  {
    sub_1D112A0B0(319, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D1128CEC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D1128CEC()
{
  if (!qword_1EC6099F8)
  {
    sub_1D106F934(255, &qword_1EC609A00);
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6099F8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15HealthRecordsUI33ClinicalAccountLoginUpgradeActionV0H0O(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D1128D78(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1128DCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_1D1128E28(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1D1128E58()
{
  v1 = MEMORY[0x1E69E6720];
  sub_1D112A0B0(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - v3;
  sub_1D112A0B0(0, &qword_1EE06B500, MEMORY[0x1E6969530], v1);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_1D138D57C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ClinicalAccountLoginUpgradeAction();
  result = 0;
  if (*(v0 + *(v12 + 20)) == 1)
  {
    sub_1D106A1D8(v0 + *(v12 + 24), v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1D112A114(v7, &qword_1EE06B500, MEMORY[0x1E6969530]);
      if (qword_1EE06AD00 != -1)
      {
        swift_once();
      }

      return sub_1D138D1CC();
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      v14 = objc_opt_self();
      v15 = sub_1D138D4EC();
      v16 = [v14 localizedStringFromDate:v15 dateStyle:1 timeStyle:0];

      v17 = sub_1D139016C();
      v19 = v18;

      v20 = sub_1D138D67C();
      (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
      sub_1D112A0B0(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1D139E700;
      *(v21 + 56) = MEMORY[0x1E69E6158];
      *(v21 + 64) = sub_1D1089930();
      *(v21 + 32) = v17;
      *(v21 + 40) = v19;
      if (qword_1EE06AD00 != -1)
      {
        swift_once();
      }

      v22 = sub_1D138D1CC();
      if (*(v21 + 16))
      {
        v23 = sub_1D139019C();
      }

      else
      {
        v23 = v22;
      }

      sub_1D112A114(v4, &qword_1EC60DF40, MEMORY[0x1E6969770]);
      (*(v9 + 8))(v11, v8);
      return v23;
    }
  }

  return result;
}

id sub_1D11292FC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v73 = a3;
  v74 = a4;
  v77 = a5;
  v78 = a2;
  sub_1D112A0B0(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v67 - v7;
  v9 = sub_1D138D57C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v67 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v67 - v17;
  v19 = type metadata accessor for ClinicalAccountLoginUpgradeAction();
  v75 = *(v19 - 8);
  v76 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a1 provenance];
  v23 = [v22 type];

  if (v23)
  {

LABEL_6:
    v30 = 1;
    v32 = v76;
    v31 = v77;
    return (*(v75 + 56))(v31, v30, 1, v32);
  }

  v67 = v16;
  v68 = v18;
  v69 = v21;
  v70 = v8;
  v71 = v10;
  v72 = v9;
  v24 = v78;
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v26 = result;
    v27 = [result healthAppHiddenOrNotInstalled];

    v28 = a1;
    v29 = v74;
    if (v27)
    {

      goto LABEL_6;
    }

    v33 = v24;
    if (v24)
    {

      v34 = 3;
LABEL_23:
      v45 = v76;
      v46 = v69;
      *&v69[*(v76 + 20)] = v34;
      v47 = [v28 identifier];
      sub_1D138D5CC();

      v48 = [v28 lastFetchDate];
      if (v48)
      {
        v49 = v70;
        v50 = v48;
        sub_1D138D52C();

        v51 = 0;
        v28 = v50;
      }

      else
      {
        v51 = 1;
        v49 = v70;
      }

      (*(v71 + 56))(v49, v51, 1, v72);
      sub_1D112A184(v49, v46 + *(v45 + 24));
      *(v46 + *(v45 + 28)) = v33;
      v52 = v77;
      sub_1D10A447C(v46, v77);
      v32 = v45;
      v31 = v52;
      v30 = 0;
      return (*(v75 + 56))(v31, v30, 1, v32);
    }

    v35 = [a1 newerAvailableGateway];
    if (v35)
    {
      v34 = v35;
      if (!v29)
      {
        goto LABEL_23;
      }

      v36 = v13;
      v37 = [v35 gatewayID];
      v38 = sub_1D139016C();
      v40 = v39;

      if (v38 == v73 && v40 == v29)
      {

        v33 = 0;
        v41 = v68;
      }

      else
      {
        v42 = sub_1D139162C();

        v41 = v68;
        if ((v42 & 1) == 0)
        {
          v33 = 0;
          goto LABEL_23;
        }

        v33 = 0;
      }
    }

    else
    {

      v36 = v13;
      v41 = v68;
    }

    v43 = [v28 needsRelogin];
    v44 = v67;
    if ((v43 & 1) != 0 || ![v28 state])
    {
      v34 = 0;
      goto LABEL_23;
    }

    if ([v28 needsScopeUpgrade])
    {
      v34 = 2;
      goto LABEL_23;
    }

    v53 = [v28 failedFetchAttemptsCount];
    if (v53)
    {
      v54 = v53;
      v55 = [v28 lastFetchDate];
      if (v55)
      {
        v56 = v55;
        sub_1D138D52C();

        v57 = v71;
        v58 = v44;
        v59 = v72;
        (*(v71 + 32))(v41, v58, v72);
        sub_1D106F934(0, &qword_1EE06B6C0);
        v60 = sub_1D1390D6C();
        v61 = [v60 compare_];

        if (v61 != -1)
        {
          (*(v57 + 8))(v41, v59);

          goto LABEL_6;
        }

        sub_1D138D56C();
        sub_1D138D4CC();
        v65 = v64;

        v66 = *(v57 + 8);
        v66(v36, v59);
        v66(v41, v59);
        if (v65 > 604800.0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        sub_1D106F934(0, &qword_1EE06B6C0);
        v62 = sub_1D1390D6C();
        v63 = [v62 compare_];

        if (v63 == -1)
        {
LABEL_35:
          v34 = 1;
          v33 = 0;
          goto LABEL_23;
        }
      }
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1129980()
{
  v1 = *(v0 + *(type metadata accessor for ClinicalAccountLoginUpgradeAction() + 20));
  if (v1 <= 2)
  {
    if (qword_1EE06AD00 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_9;
  }

  if (v1 == 3)
  {
    if (qword_1EE06AD00 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_9;
  }

  if (qword_1EE06AD00 != -1)
  {
LABEL_9:
    swift_once();
  }

  return sub_1D138D1CC();
}

uint64_t sub_1D1129B08()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0xD00000000000001FLL;
      }

      return 0x2079617765746167;
    }

    return 0x70752065706F6373;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0xD000000000000013;
      }

      return 0x2079617765746167;
    }

    return 0x6E69676F6CLL;
  }
}

uint64_t sub_1D1129BC8(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 1)
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        return v3 == 3;
      }

LABEL_10:
      if (v3 >= 4)
      {
        sub_1D106F934(0, &qword_1EE06B0C0);
        return sub_1D1390D8C() & 1;
      }

      return 0;
    }

    if (v3 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v2)
    {
      if (v2 == 1)
      {
        return v3 == 1;
      }

      goto LABEL_10;
    }

    if (v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D1129C7C()
{
  sub_1D112A0B0(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for ClinicalAccountLoginUpgradeAction();
  v5 = *(v0 + *(v4 + 20));
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
LABEL_13:
        if (qword_1EE06AD00 == -1)
        {
          return sub_1D138D1CC();
        }

        goto LABEL_21;
      }

      return 0;
    }

    if (qword_1EE06AD00 == -1)
    {
      return sub_1D138D1CC();
    }

LABEL_21:
    swift_once();
    return sub_1D138D1CC();
  }

  if (v5 == 2)
  {
    if (qword_1EE06AD00 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_21;
  }

  if (v5 != 3)
  {
    goto LABEL_13;
  }

  v6 = *(v0 + *(v4 + 28));
  if (!v6)
  {
    return 0;
  }

  v7 = sub_1D138D67C();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_1D112A0B0(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D139E700;
  v9 = v6;
  v10 = [v9 title];
  v11 = sub_1D139016C();
  v13 = v12;

  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1D1089930();
  *(v8 + 32) = v11;
  *(v8 + 40) = v13;
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v14 = sub_1D138D1CC();
  if (*(v8 + 16))
  {
    v15 = sub_1D139019C();

    sub_1D112A114(v3, &qword_1EC60DF40, MEMORY[0x1E6969770]);
  }

  else
  {
    v15 = v14;
    sub_1D112A114(v3, &qword_1EC60DF40, MEMORY[0x1E6969770]);
  }

  return v15;
}

void sub_1D112A0B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D112A114(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D112A0B0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D112A184(uint64_t a1, uint64_t a2)
{
  sub_1D112A0B0(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D112A218(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1D112A290()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController____lazy_storage___shouldEnableAddAccounts;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController____lazy_storage___shouldEnableAddAccounts);
  if (v2 == 2)
  {
    v3 = [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_profile) healthStore];
    LOBYTE(v2) = [v3 supportsHealthRecords];

    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

id SettingsViewController.init(with:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accounts] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accountsDisambiguator] = 0;
  v1[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_isLoadingAccounts] = 0;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_appSourceModels] = v2;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_researchStudySourceModels] = v2;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_sourceLoadingToken] = 0;
  v3 = OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_factory;
  if (qword_1EE069ED0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v4 = qword_1EE06AA70;
  *&v1[v3] = qword_1EE06AA70;
  v1[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController____lazy_storage___shouldEnableAddAccounts] = 2;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_sourceListDataSource] = 0;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accountStateCancellable] = 0;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_profile] = a1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SettingsViewController();
  v5 = v4;
  return objc_msgSendSuper2(&v8, sel_initWithStyle_, 2);
}

void sub_1D112A460(void *a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accounts) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accountsDisambiguator) = 0;
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_isLoadingAccounts) = 0;
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_appSourceModels) = v2;
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_researchStudySourceModels) = v2;
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_sourceLoadingToken) = 0;
  v3 = OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_factory;
  if (qword_1EE069ED0 != -1)
  {
    swift_once();
  }

  *(v1 + v3) = qword_1EE06AA70;
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController____lazy_storage___shouldEnableAddAccounts) = 2;
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_sourceListDataSource) = 0;
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accountStateCancellable) = 0;
  sub_1D13913BC();
  __break(1u);
}

id SettingsViewController.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accountStateCancellable])
  {

    sub_1D138F64C();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for SettingsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D112A728()
{
  v1 = type metadata accessor for SettingsViewController();
  v45.receiver = v0;
  v45.super_class = v1;
  objc_msgSendSuper2(&v45, sel_viewDidLoad);
  if (qword_1EE06AD08 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v2 = sub_1D139012C();

  [v0 setTitle_];

  v3 = [v0 navigationItem];
  v44[8] = sub_1D112AD3C();
  v44[3] = v1;
  v44[0] = v0;
  v4 = v0;
  v5 = _sSo15UIBarButtonItemC15HealthRecordsUIE014makeTapToRadarC06target6actionABSgypSg_10ObjectiveC8SelectorVSgtFZ_0(v44, sel_tapToRadar_);
  sub_1D1096BE0(v44);
  v6 = 0;
  v44[9] = v5;
  v44[0] = MEMORY[0x1E69E7CC0];
  while (v6 != 2)
  {
    v7 = v44[v6++ + 8];
    if (v7)
    {
      v8 = v7;
      MEMORY[0x1D3885D90]();
      if (*((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
    }
  }

  sub_1D1124780(0, &qword_1EC60B378, &qword_1EC609A90, 0x1E69DC708, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  sub_1D106F934(0, &qword_1EC609A90);
  v9 = sub_1D139044C();

  [v3 setRightBarButtonItems_];

  v10 = [v4 tableView];
  if (!v10)
  {
    __break(1u);
    goto LABEL_21;
  }

  v11 = v10;
  [v10 _setTopPadding_];

  v12 = [v4 tableView];
  if (!v12)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = v12;
  [v12 _setSectionContentInset_];

  v14 = [v4 tableView];
  if (!v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v15 = v14;
  [v14 _setSectionCornerRadius_];

  v16 = [v4 tableView];
  if (!v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v16;
  type metadata accessor for StandardTableViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = sub_1D139012C();
  [v17 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v19];

  v20 = [v4 tableView];
  if (!v20)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v21 = v20;
  type metadata accessor for NoAppTableViewCell();
  v22 = swift_getObjCClassFromMetadata();
  v23 = sub_1D139012C();
  [v21 registerClass:v22 forCellReuseIdentifier:v23];

  v24 = [v4 tableView];
  if (!v24)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v25 = v24;
  type metadata accessor for SourceTableViewCell();
  v26 = swift_getObjCClassFromMetadata();
  v27 = sub_1D139012C();
  [v25 registerClass:v26 forCellReuseIdentifier:v27];

  v28 = [v4 tableView];
  if (!v28)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v29 = v28;
  type metadata accessor for AccountTableViewCell();
  v30 = swift_getObjCClassFromMetadata();
  v31 = sub_1D139012C();
  [v29 registerClass:v30 forCellReuseIdentifier:v31];

  v32 = [v4 tableView];
  if (!v32)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v33 = v32;
  type metadata accessor for AddAccountTableViewCell();
  v34 = swift_getObjCClassFromMetadata();
  v35 = sub_1D139012C();
  [v33 registerClass:v34 forCellReuseIdentifier:v35];

  v36 = [v4 tableView];
  if (!v36)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v37 = v36;
  type metadata accessor for LoadingTableViewCell();
  v38 = swift_getObjCClassFromMetadata();
  v39 = sub_1D139012C();
  [v37 registerClass:v38 forCellReuseIdentifier:v39];

  v40 = [v4 tableView];
  if (v40)
  {
    v41 = v40;
    v42 = sub_1D139044C();
    v43 = HKUIJoinStringsForAutomationIdentifier();

    [v41 setAccessibilityIdentifier_];
    sub_1D112AE94();
    sub_1D112B320();
    return;
  }

LABEL_29:
  __break(1u);
}

id sub_1D112AD3C()
{
  result = [v0 navigationController];
  if (result)
  {
    v2 = result;
    v3 = [result viewControllers];

    sub_1D106F934(0, &unk_1EC6099E0);
    v4 = sub_1D139045C();

    if (v4 >> 62)
    {
      result = sub_1D13910DC();
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_4:
        if ((v4 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1D3886B70](0, v4);
        }

        else
        {
          if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v5 = *(v4 + 32);
        }

        v6 = v5;

        v7 = v0;
        v8 = sub_1D1390D8C();

        if (v8)
        {
          return [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v7 action:sel_closeButtonTapped];
        }

        return 0;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D112AE94()
{
  sub_1D112EF70(0, &qword_1EE06A620, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v20 - v2;
  sub_1D1080870();
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE06AF70 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE06BB58;
  v8 = [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_profile) healthRecordsStore];
  v21 = v0;
  v9 = v8;
  v10 = [v8 healthStore];

  v11 = [v10 profileIdentifier];
  v24 = *(v7 + OBJC_IVAR___HRProfileManager_lock);
  MEMORY[0x1EEE9AC00](v12);
  *(&v20 - 2) = v7;
  *(&v20 - 1) = v11;
  sub_1D138D96C();
  type metadata accessor for AccountStateProvider();
  sub_1D112F2FC(&qword_1EE06B048, MEMORY[0x1E69A3B50]);

  sub_1D138ED0C();

  v13 = *(v25 + 24);

  v25 = v13;
  sub_1D106F934(0, &qword_1EE06B760);
  v14 = sub_1D1390A7C();
  v24 = v14;
  v15 = sub_1D1390A2C();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  sub_1D112F230();
  sub_1D112F2FC(&qword_1EC6099A8, sub_1D112F230);
  sub_1D10809F0(&qword_1EE06A610, &qword_1EE06B760);
  sub_1D138F8BC();
  sub_1D10D5C04(v3);

  swift_allocObject();
  v16 = v21;
  swift_unknownObjectWeakInit();
  sub_1D112F2FC(&qword_1EC6099B8, sub_1D1080870);
  v17 = v23;
  v18 = sub_1D138F90C();

  (*(v22 + 8))(v6, v17);
  *(v16 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accountStateCancellable) = v18;
}

void sub_1D112B320()
{
  v1 = v0;
  sub_1D112EF70(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v18 - v3);
  v5 = objc_opt_self();
  if (![v5 isMainThread])
  {
    __break(1u);
    goto LABEL_14;
  }

  if (![v5 isMainThread])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_isLoadingAccounts;
  if ((v1[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_isLoadingAccounts] & 1) == 0)
  {
    v7 = sub_1D13905DC();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    sub_1D13905AC();
    v8 = v1;
    v9 = sub_1D139059C();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E85E0];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v8;
    sub_1D107877C(0, 0, v4, &unk_1D13A25F0, v10);
  }

  sub_1D112C904();
  v4 = &selRef_removeObserver_name_object_;
  v12 = [v1 tableView];
  if (!v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = v12;
  v13 = -1.0;
  if ((v1[v6] & 1) == 0)
  {
    v14 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accounts];
    if (!(v14 >> 62))
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_9;
    }

LABEL_15:
    v15 = sub_1D13910DC();
LABEL_9:
    v13 = 0.0;
    if (!v15)
    {
      v13 = -1.0;
    }
  }

  [v5 _setTopPadding_];

  v16 = [v1 v4[422]];
  if (v16)
  {
    v17 = v16;
    [v16 reloadData];

    return;
  }

LABEL_17:
  __break(1u);
}

void sub_1D112B5BC(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for SettingsViewController();
  objc_msgSendSuper2(&v9, sel_viewDidAppear_, a1 & 1);
  v3 = [*&v1[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_profile] healthRecordsStore];
  v4 = [v3 healthStore];

  v5 = [objc_allocWithZone(MEMORY[0x1E696C2C0]) initWithHealthStore_];
  v6 = [objc_opt_self() zeroBadge];
  v8[4] = sub_1D112B768;
  v8[5] = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D112A218;
  v8[3] = &block_descriptor_18;
  v7 = _Block_copy(v8);
  [v5 setBadge:v6 forDomain:3 completion:v7];
  _Block_release(v7);

  if (qword_1EE06A170 != -1)
  {
    swift_once();
  }

  sub_1D1223978(0, 1, 0);
}

uint64_t sub_1D112B768(uint64_t a1, void *a2)
{
  v3 = sub_1D138F0BC();
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = a2;
    sub_1D138F07C();
    v9 = a2;
    v10 = sub_1D138F0AC();
    v11 = sub_1D13907FC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136446210;
      v19[1] = a2;
      v14 = a2;
      sub_1D10922EC();
      sub_1D13916AC();
      v15 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_1D139101C();
      swift_unknownObjectRelease();
      v16 = sub_1D139020C();
      v18 = sub_1D11DF718(v16, v17, &v20);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_1D101F000, v10, v11, "Error clearing badge for health records: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1D38882F0](v13, -1, -1);
      MEMORY[0x1D38882F0](v12, -1, -1);
    }

    else
    {
    }

    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

id sub_1D112BA6C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_profile) healthRecordsStore];
  v2 = [v1 healthStore];

  return v2;
}

id sub_1D112BACC()
{
  v1 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_profile];
  v2 = [v1 clinicalSourcesDataProvider];
  v3 = sub_1D139012C();
  v4 = [v2 appSourceRequestingAuthorizationForClinicalTypeWithBundleIdentifier_];

  if (!v4)
  {
    return 0;
  }

  v5 = [objc_allocWithZone(WDClinicalAuthorizationSettingsViewController) initWithProfile:v1 source:v4];
  v6 = [v0 navigationController];
  if (v6)
  {
    v7 = v6;
    [v6 pushViewController:v5 animated:1];
  }

  return v5;
}

id SettingsViewController.__allocating_init(usingInsetStyling:)(char a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithUsingInsetStyling_];
}

id SettingsViewController.__allocating_init(style:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithStyle_];
}

id SettingsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D139012C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_1D112BDF0()
{
  v1 = [*(*v0 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_profile) healthRecordsStore];
  v2 = [v1 healthStore];

  return v2;
}

void sub_1D112BE68(uint64_t a1)
{
  v96 = sub_1D138D5EC();
  v90 = *(v96 - 8);
  v2 = MEMORY[0x1EEE9AC00](v96);
  v95 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v86 - v4;
  v6 = sub_1D138F0BC();
  v93 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v92 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v86 - v9;
  v12 = *a1;
  v11 = *(a1 + 8);
  v13 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (!v12)
    {

      return;
    }

    v91 = v6;
    v86 = v12;
    v94 = v11;
    sub_1D138F07C();
    sub_1D112F344(v12, v11);
    v16 = v15;
    v17 = v11;
    v18 = sub_1D138F0AC();
    v19 = sub_1D13907DC();

    v87 = v12;
    v88 = v17;
    sub_1D1080A3C(v12, v17);
    v20 = os_log_type_enabled(v18, v19);
    v89 = v16;
    if (v20)
    {
      v17 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v100 = v21;
      *v17 = 136446466;
      ObjectType = swift_getObjectType();
      sub_1D112F384();
      v22 = sub_1D139020C();
      v24 = sub_1D11DF718(v22, v23, &v100);

      *(v17 + 4) = v24;
      *(v17 + 6) = 2082;
      ObjectType = 0;
      v99 = 0xE000000000000000;
      v97 = v13;
      type metadata accessor for HKClinicalAccountStateChangeType(0);
      sub_1D139133C();
      v25 = sub_1D11DF718(ObjectType, v99, &v100);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_1D101F000, v18, v19, "%{public}s: accountStateDidChange change: %{public}s)", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v21, -1, -1);
      MEMORY[0x1D38882F0](v17, -1, -1);
    }

    v26 = *(v93 + 8);
    v27 = v91;
    v26(v10, v91);
    v28 = v88;
    if (v13 >= 2)
    {
      if (v13 == 3)
      {
        v29 = OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accounts;
        v19 = *(v89 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accounts);
        ObjectType = MEMORY[0x1E69E7CC0];
        if (v19 >> 62)
        {
          v46 = sub_1D13910DC();
        }

        else
        {
          v46 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v46)
        {
          v79 = MEMORY[0x1E69E7CC0];
LABEL_49:

          v17 = v89;
          *(v89 + v29) = v79;

          type metadata accessor for ClinicalAccountsDisambiguator();
          swift_allocObject();

          *(v17 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accountsDisambiguator) = ClinicalAccountsDisambiguator.init(with:)();

          v80 = [v17 tableView];
          if (v80)
          {
            v81 = v80;
            v82 = -1.0;
            if ((*(v17 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_isLoadingAccounts) & 1) == 0)
            {
              v83 = *(v17 + v29);
              v84 = v83 >> 62 ? sub_1D13910DC() : *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v82 = 0.0;
              if (!v84)
              {
                v82 = -1.0;
              }
            }

            [v81 _setTopPadding_];

            v78 = [v17 tableView];
            if (v78)
            {
              goto LABEL_56;
            }

LABEL_69:
            __break(1u);
            return;
          }

LABEL_68:
          __break(1u);
          goto LABEL_69;
        }

        v86 = v29;
        v47 = 0;
        v92 = (v19 & 0xFFFFFFFFFFFFFF8);
        v93 = v19 & 0xC000000000000001;
        v28 = (v90 + 8);
        v91 = v19;
        while (1)
        {
          if (v93)
          {
            v49 = MEMORY[0x1D3886B70](v47, v19);
          }

          else
          {
            if (v47 >= *(v92 + 2))
            {
              goto LABEL_60;
            }

            v49 = *(v19 + 8 * v47 + 32);
          }

          v50 = v49;
          v17 = (v47 + 1);
          if (__OFADD__(v47, 1))
          {
            break;
          }

          v51 = v46;
          v52 = [v49 identifier];
          sub_1D138D5CC();

          v53 = [v94 identifier];
          v54 = v5;
          v55 = v95;
          sub_1D138D5CC();

          sub_1D112F2FC(&qword_1EC6098A0, MEMORY[0x1E69695A8]);
          v56 = v96;
          v57 = sub_1D139011C();
          v29 = *v28;
          v58 = v55;
          v5 = v54;
          (*v28)(v58, v56);
          (v29)(v54, v56);
          if (v57)
          {
          }

          else
          {
            sub_1D13912AC();
            v29 = *(ObjectType + 16);
            sub_1D13912EC();
            sub_1D13912FC();
            sub_1D13912BC();
          }

          v46 = v51;
          ++v47;
          v48 = v17 == v51;
          v19 = v91;
          if (v48)
          {
            v79 = ObjectType;
            v28 = v88;
            v29 = v86;
            goto LABEL_49;
          }
        }

        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      if (v13 == 2)
      {
        v92 = OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accounts;
        v29 = *(v89 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accounts);
        if (!(v29 >> 62))
        {
          v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_10;
        }

LABEL_61:
        v30 = sub_1D13910DC();
LABEL_10:
        v31 = MEMORY[0x1E69E7CC0];
        if (v30)
        {
          ObjectType = MEMORY[0x1E69E7CC0];

          p_ObjectType = &ObjectType;
          sub_1D13912DC();
          if (v30 < 0)
          {
            __break(1u);
            goto LABEL_64;
          }

          v33 = 0;
          v93 = v29 & 0xC000000000000001;
          v34 = (v90 + 8);
          v35 = v29;
          do
          {
            if (v93)
            {
              v36 = MEMORY[0x1D3886B70](v33, v29);
            }

            else
            {
              v36 = *(v29 + 8 * v33 + 32);
            }

            v37 = v36;
            v38 = [v36 identifier];
            sub_1D138D5CC();

            v39 = v94;
            v40 = [v39 identifier];
            v41 = v95;
            sub_1D138D5CC();

            LOBYTE(v40) = sub_1D138D5BC();
            v42 = *v34;
            v43 = v41;
            v44 = v96;
            (*v34)(v43, v96);
            v42(v5, v44);
            if (v40)
            {
              v45 = v37;
            }

            else
            {
              v45 = v39;
            }

            ++v33;
            sub_1D13912AC();
            sub_1D13912EC();
            sub_1D13912FC();
            sub_1D13912BC();
            v29 = v35;
          }

          while (v30 != v33);

          v31 = ObjectType;
          v28 = v88;
        }

        v17 = v89;
        v73 = v92;
        *&v92[v89] = v31;

        type metadata accessor for ClinicalAccountsDisambiguator();
        swift_allocObject();

        *(v17 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accountsDisambiguator) = ClinicalAccountsDisambiguator.init(with:)();

        p_ObjectType = &selRef_removeObserver_name_object_;
        v74 = [v17 tableView];
        if (!v74)
        {
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        v19 = v74;
        v75 = -1.0;
        if (*(v17 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_isLoadingAccounts))
        {
LABEL_45:
          [v19 _setTopPadding_];

          v78 = [v17 p_ObjectType[422]];
          if (v78)
          {
LABEL_56:
            v85 = v78;
            [v78 reloadData];

            v71 = v87;
            v72 = v28;
            goto LABEL_57;
          }

          goto LABEL_67;
        }

        v76 = *&v73[v17];
        if (!(v76 >> 62))
        {
          v77 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_43;
        }

LABEL_64:
        v77 = sub_1D13910DC();
LABEL_43:
        v75 = 0.0;
        if (!v77)
        {
          v75 = -1.0;
        }

        goto LABEL_45;
      }

      v59 = v92;
      sub_1D138F07C();
      v60 = v86;
      v61 = v94;
      v62 = sub_1D138F0AC();
      v63 = sub_1D13907FC();
      sub_1D1080A3C(v87, v28);
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        ObjectType = v65;
        *v64 = 136446210;
        v100 = v13;
        type metadata accessor for HKClinicalAccountStateChangeType(0);
        v66 = sub_1D139020C();
        v68 = sub_1D11DF718(v66, v67, &ObjectType);

        *(v64 + 4) = v68;
        _os_log_impl(&dword_1D101F000, v62, v63, "Unexpected state change: %{public}s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
        v69 = v65;
        v28 = v88;
        MEMORY[0x1D38882F0](v69, -1, -1);
        MEMORY[0x1D38882F0](v64, -1, -1);
      }

      v26(v59, v27);
    }

    v70 = v89;
    sub_1D112B320();

    v71 = v87;
    v72 = v28;
LABEL_57:
    sub_1D1080A3C(v71, v72);
  }
}

void sub_1D112C904()
{
  if ([objc_opt_self() isMainThread])
  {
    v1 = OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_sourceLoadingToken;
    [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_sourceLoadingToken) cancel];
    v2 = [objc_allocWithZone(WDCancellationToken) init];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
    v4 = v2;

    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    v7 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_profile);
    v8 = v4;
    v9 = [v7 healthRecordsStore];
    v10 = [v9 healthStore];

    v11 = [objc_opt_self() allTypes];
    sub_1D106F934(0, &qword_1EC60A9A8);
    v12 = sub_1D139045C();

    v13 = sub_1D12DF018(v12);

    v14 = [objc_allocWithZone(MEMORY[0x1E696BF50]) initWithHealthStore_];
    sub_1D112DA68(v13);

    sub_1D106F934(0, &qword_1EC60B520);
    sub_1D10809F0(&qword_1EC60B528, &qword_1EC60B520);
    v15 = sub_1D13906AC();

    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    v17[2] = sub_1D112F088;
    v17[3] = v6;
    v17[4] = v10;
    v17[5] = v16;
    v20[4] = sub_1D112F090;
    v20[5] = v17;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 1107296256;
    v20[2] = sub_1D112EA30;
    v20[3] = &block_descriptor_47;
    v18 = _Block_copy(v20);

    v19 = v10;

    [v14 fetchSourcesRequestingAuthorizationForTypes:v15 completion:v18];
    _Block_release(v18);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D112CC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a4;
  v5 = sub_1D138F0BC();
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = sub_1D13905AC();
  v4[29] = sub_1D139059C();

  return MEMORY[0x1EEE6DFA0](sub_1D112CD18, 0, 0);
}

uint64_t sub_1D112CD18()
{
  *(v0 + 240) = sub_1D139059C();
  v2 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D112CDA4, v2, v1);
}

uint64_t sub_1D112CDA4()
{
  v1 = v0[24];

  v2 = OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_isLoadingAccounts;
  v0[31] = OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_isLoadingAccounts;
  v1[v2] = 1;
  v3 = [v1 tableView];
  if (!v3)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  v6 = v3;
  v7 = v1[v2];
  v8 = v0[24];
  v9 = -1.0;
  if ((v7 & 1) == 0)
  {
    v10 = *&v8[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accounts];
    if (v10 >> 62)
    {
      v11 = sub_1D13910DC();
      v8 = v0[24];
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = 0.0;
    if (!v11)
    {
      v9 = -1.0;
    }
  }

  [v6 _setTopPadding_];

  v3 = [v8 tableView];
  if (!v3)
  {
    goto LABEL_13;
  }

  v12 = v3;
  [v3 reloadData];

  v13 = sub_1D139055C();
  v5 = v14;
  v0[32] = v13;
  v0[33] = v14;
  v3 = sub_1D112CF04;
  v4 = v13;

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D112CF04()
{
  v1 = [*(v0[24] + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_profile) healthRecordsStore];
  v2 = [v1 healthStore];

  v3 = [objc_allocWithZone(MEMORY[0x1E69A3F10]) initWithHealthStore_];
  v0[34] = v3;

  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_1D112D084;
  v4 = swift_continuation_init();
  sub_1D112F17C();
  v0[17] = v5;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D11E0CA4;
  v0[13] = &block_descriptor_68;
  v0[14] = v4;
  [v3 fetchAllAccountsWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D112D084()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  v3 = *(v1 + 264);
  v4 = *(v1 + 256);
  if (v2)
  {
    v5 = sub_1D112D468;
  }

  else
  {
    v5 = sub_1D112D1B4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D112D1D8()
{
  *(v0 + 296) = sub_1D139059C();
  v2 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D112D264, v2, v1);
}

uint64_t sub_1D112D264()
{
  v1 = v0[36];
  v2 = v0[31];
  v3 = v0[24];

  v4 = OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accounts;
  *&v3[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accounts] = v1;

  type metadata accessor for ClinicalAccountsDisambiguator();
  swift_allocObject();

  *&v3[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accountsDisambiguator] = ClinicalAccountsDisambiguator.init(with:)();

  v3[v2] = 0;
  v5 = [v3 tableView];
  if (!v5)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  v8 = v5;
  v9 = v0[24];
  v10 = -1.0;
  if ((v9[v0[31]] & 1) == 0)
  {
    v11 = *&v3[v4];
    if (v11 >> 62)
    {
      v12 = sub_1D13910DC();
      v9 = v0[24];
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = 0.0;
    if (!v12)
    {
      v10 = -1.0;
    }
  }

  [v8 _setTopPadding_];

  v5 = [v9 tableView];
  if (!v5)
  {
    goto LABEL_13;
  }

  v13 = v5;
  [v5 reloadData];

  v6 = v0[32];
  v7 = v0[33];
  v5 = sub_1D112D3F4;

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D112D3F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D112D468()
{
  v22 = v0;
  v2 = v0[34];
  v1 = v0[35];
  swift_willThrow();

  sub_1D138F06C();
  v3 = v1;
  v4 = sub_1D138F0AC();
  v5 = sub_1D13907FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[35];
    v7 = v0[26];
    v20 = v0[27];
    v8 = v0[25];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v0[23] = v6;
    v21 = v10;
    *v9 = 136446210;
    v11 = v6;
    sub_1D10922EC();
    sub_1D13916AC();
    v12 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_1D139101C();
    swift_unknownObjectRelease();
    v13 = sub_1D139020C();
    v15 = sub_1D11DF718(v13, v14, &v21);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_1D101F000, v4, v5, "Failed to fetch clincial accounts, error: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1D38882F0](v10, -1, -1);
    MEMORY[0x1D38882F0](v9, -1, -1);

    (*(v7 + 8))(v20, v8);
  }

  else
  {
    v17 = v0[26];
    v16 = v0[27];
    v18 = v0[25];

    (*(v17 + 8))(v16, v18);
  }

  return MEMORY[0x1EEE6DFA0](sub_1D112D68C, 0, 0);
}

uint64_t sub_1D112D68C()
{
  *(v0 + 304) = sub_1D139059C();
  v2 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D112D718, v2, v1);
}

uint64_t sub_1D112D718()
{
  v1 = v0[31];
  v2 = v0[24];

  v3 = OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accounts;
  *&v2[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accounts] = MEMORY[0x1E69E7CC0];

  type metadata accessor for ClinicalAccountsDisambiguator();
  swift_allocObject();

  *&v2[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accountsDisambiguator] = ClinicalAccountsDisambiguator.init(with:)();

  v2[v1] = 0;
  v4 = [v2 tableView];
  if (!v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v4, v5, v6);
  }

  v7 = v4;
  v8 = v0[24];
  v9 = -1.0;
  if ((v8[v0[31]] & 1) == 0)
  {
    v10 = *&v2[v3];
    if (v10 >> 62)
    {
      v11 = sub_1D13910DC();
      v8 = v0[24];
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = 0.0;
    if (!v11)
    {
      v9 = -1.0;
    }
  }

  [v7 _setTopPadding_];

  v4 = [v8 tableView];
  if (!v4)
  {
    goto LABEL_13;
  }

  v12 = v4;
  [v4 reloadData];

  v5 = v0[32];
  v6 = v0[33];
  v4 = sub_1D112D8B0;

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D112D8B0()
{
  v1 = *(v0 + 280);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1D112D924(char a1, uint64_t a2, void *a3)
{
  if (![objc_opt_self() isMainThread])
  {
    __break(1u);
    goto LABEL_12;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  if (([a3 isCancelled] & 1) == 0)
  {
    v7 = OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_sourceLoadingToken;
    v8 = *&v6[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_sourceLoadingToken];
    if (v8)
    {
      sub_1D106F934(0, &qword_1EC60B540);
      v9 = v8;
      v10 = a3;
      v11 = sub_1D1390D8C();

      if (v11)
      {
        v12 = *&v6[v7];
        *&v6[v7] = 0;

        if (a1)
        {
          v13 = [v6 tableView];
          if (v13)
          {
            v14 = v13;
            [v13 reloadData];

            goto LABEL_9;
          }

LABEL_12:
          __break(1u);
          return;
        }
      }
    }
  }

LABEL_9:
}

void sub_1D112DA68(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_6;
  }

  if (!sub_1D13910DC())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D112F0D4();
  v3 = sub_1D13911AC();
LABEL_6:
  if (sub_1D106F934(0, &qword_1EC60B520) == MEMORY[0x1E69E6158])
  {
    if (v2)
    {

      sub_1D139108C();
      sub_1D106F934(0, &qword_1EC60A9A8);
      sub_1D10809F0(&qword_1EC60A9B8, &qword_1EC60A9A8);
      sub_1D139070C();
      v1 = v38;
      v8 = v39;
      v9 = v40;
      v10 = v41;
      v11 = v42;
    }

    else
    {
      v30 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v30;
      v31 = -v30;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v11 = v32 & *(v1 + 56);

      v10 = 0;
    }

    while (1)
    {
      if (v1 < 0)
      {
        if (!sub_1D139110C())
        {
LABEL_55:
          sub_1D102CC30();

          return;
        }

        sub_1D106F934(0, &qword_1EC60A9A8);
        swift_dynamicCast();
        v35 = v37;
      }

      else
      {
        if (v11)
        {
          v33 = v10;
        }

        else
        {
          v36 = v10;
          do
          {
            v33 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_58;
            }

            if (v33 >= ((v9 + 64) >> 6))
            {
              goto LABEL_55;
            }

            v11 = *(v8 + 8 * v33);
            ++v36;
          }

          while (!v11);
          v10 = v33;
        }

        v34 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v35 = *(*(v1 + 48) + ((v33 << 9) | (8 * v34)));
      }

      sub_1D112ED38(v35);
    }
  }

  if (v2)
  {

    sub_1D139108C();
    sub_1D106F934(0, &qword_1EC60A9A8);
    sub_1D10809F0(&qword_1EC60A9B8, &qword_1EC60A9A8);
    sub_1D139070C();
    v1 = v38;
    v4 = v39;
    v5 = v40;
    v6 = v41;
    v7 = v42;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_1D139110C())
    {
      goto LABEL_55;
    }

    sub_1D106F934(0, &qword_1EC60A9A8);
    swift_dynamicCast();
    v19 = v37;
LABEL_29:
    v22 = sub_1D1390D7C();
    v23 = -1 << *(v3 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      do
      {
        if (++v25 == v27 && (v26 & 1) != 0)
        {
          __break(1u);
          goto LABEL_57;
        }

        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v25);
      }

      while (v29 == -1);
      v17 = __clz(__rbit64(~v29)) + (v25 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v19;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v37 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v37;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_55;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t sub_1D112DF94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = sub_1D138FECC();
  v55 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D138FF0C();
  v52 = *(v14 - 8);
  v53 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D138F0BC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v37 = v54;
    if (a1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {

        if (sub_1D13910DC())
        {
LABEL_8:
          sub_1D106F934(0, &qword_1EE06B760);
          v38 = sub_1D1390A7C();
          v39 = swift_allocObject();
          v39[2] = a5;
          v39[3] = a1;
          v39[4] = a6;
          v61 = sub_1D112F0C8;
          v62 = v39;
          aBlock = MEMORY[0x1E69E9820];
          v58 = 1107296256;
          v59 = sub_1D10CBD3C;
          v60 = &block_descriptor_59;
          v40 = _Block_copy(&aBlock);
          v41 = a5;

          v36 = v51;
          sub_1D138FEEC();
          aBlock = MEMORY[0x1E69E7CC0];
          sub_1D112F2FC(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
          sub_1D112EF70(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
          sub_1D1080CD4();
          sub_1D139103C();
          MEMORY[0x1D3886400](0, v36, v37, v40);
          _Block_release(v40);

          goto LABEL_12;
        }
      }

      else
      {
        v42 = *(a1 + 16);

        if (v42)
        {
          goto LABEL_8;
        }
      }
    }

    sub_1D106F934(0, &qword_1EE06B760);
    v43 = sub_1D1390A7C();
    v44 = swift_allocObject();
    *(v44 + 16) = a3;
    *(v44 + 24) = a4;
    v61 = sub_1D112F09C;
    v62 = v44;
    aBlock = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    v59 = sub_1D10CBD3C;
    v60 = &block_descriptor_53;
    v45 = _Block_copy(&aBlock);

    v36 = v51;
    sub_1D138FEEC();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1D112F2FC(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
    sub_1D112EF70(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D1080CD4();
    sub_1D139103C();
    MEMORY[0x1D3886400](0, v36, v37, v45);
    _Block_release(v45);

    goto LABEL_12;
  }

  v20 = a2;
  sub_1D138F07C();
  v21 = a2;
  v22 = sub_1D138F0AC();
  v23 = sub_1D13907FC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v49 = a4;
    v26 = v25;
    v56 = v25;
    aBlock = a2;
    *v24 = 136446210;
    v27 = a2;
    sub_1D10922EC();
    sub_1D13916AC();
    v48 = a3;
    v28 = HKSensitiveLogItem();
    v50 = v12;
    swift_unknownObjectRelease();
    sub_1D139101C();
    swift_unknownObjectRelease();
    v29 = sub_1D139020C();
    v31 = sub_1D11DF718(v29, v30, &v56);
    a3 = v48;

    *(v24 + 4) = v31;
    v12 = v50;
    _os_log_impl(&dword_1D101F000, v22, v23, "Failed to fetch sorted app sources requiring authorization with error: %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v32 = v26;
    a4 = v49;
    MEMORY[0x1D38882F0](v32, -1, -1);
    MEMORY[0x1D38882F0](v24, -1, -1);
  }

  (*(v17 + 8))(v19, v16);
  sub_1D106F934(0, &qword_1EE06B760);
  v33 = sub_1D1390A7C();
  v34 = swift_allocObject();
  *(v34 + 16) = a3;
  *(v34 + 24) = a4;
  v61 = sub_1D112F3D8;
  v62 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = sub_1D10CBD3C;
  v60 = &block_descriptor_65;
  v35 = _Block_copy(&aBlock);

  v36 = v51;
  sub_1D138FEEC();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1D112F2FC(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
  sub_1D112EF70(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1080CD4();
  v37 = v54;
  sub_1D139103C();
  MEMORY[0x1D3886400](0, v36, v37, v35);
  _Block_release(v35);

LABEL_12:
  (*(v55 + 8))(v37, v12);
  return (*(v52 + 8))(v36, v53);
}

void sub_1D112E810(uint64_t a1, uint64_t a2)
{
  sub_1D12E17FC(a2);
  sub_1D106F934(0, &qword_1EE06B760);
  v3 = sub_1D1390A7C();
  v4 = objc_allocWithZone(MEMORY[0x1E69A44D0]);
  sub_1D106F934(0, &qword_1EC609E10);
  v5 = sub_1D139044C();

  v6 = [v4 initWithHealthStore:a1 sources:v5 queue:v3];

  [v6 setShouldFetchAppIcons_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_sourceListDataSource;
    v10 = *(Strong + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_sourceListDataSource);
    *(Strong + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_sourceListDataSource) = v6;
    if (v10)
    {
      sub_1D106F934(0, &qword_1EC60B530);
      v11 = v6;
      v12 = v10;
      v13 = sub_1D1390D8C();

      if (v13)
      {

LABEL_8:
        goto LABEL_9;
      }

      [v12 unregisterObserver_];
      v15 = *&v8[v9];
      if (!v15)
      {
LABEL_7:

        v12 = v10;
        goto LABEL_8;
      }
    }

    else
    {
      v14 = v6;
      v15 = v6;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    [v15 registerObserver_];
    goto LABEL_7;
  }

LABEL_9:
  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    v18 = *(v16 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_sourceListDataSource);

    [v18 fetchSources];
  }
}

uint64_t sub_1D112EA30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1D106F934(0, &qword_1EC609E10);
    sub_1D10809F0(&qword_1EC609E30, &qword_1EC609E10);
    v4 = sub_1D13906BC();
  }

  v6 = a3;
  v5(v4, a3);
}

void SettingsViewController.sourceListDataSourceDidUpdate(_:)(void *a1)
{
  v3 = [a1 sources];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 orderedAppSources];

    sub_1D106F934(0, &qword_1EC60B4B8);
    v6 = sub_1D139045C();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  *&v1[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_appSourceModels] = v6;

  v7 = [a1 sources];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 orderedResearchStudySources];

    sub_1D106F934(0, &qword_1EC60B4B8);
    v10 = sub_1D139045C();
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  *&v1[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_researchStudySourceModels] = v10;

  v11 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_sourceLoadingToken];
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_sourceLoadingToken] = 0;

  v12 = [v1 tableView];
  if (v12)
  {
    v13 = v12;
    [v12 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_1D112ED38(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1D1390D7C();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_1D106F934(0, &qword_1EC60B520);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_1D1390D8C();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D112EF70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D112EFD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D108077C;

  return sub_1D112CC40(a1, v4, v5, v6);
}

void sub_1D112F0D4()
{
  if (!qword_1EC60B538)
  {
    sub_1D106F934(255, &qword_1EC60B520);
    sub_1D10809F0(&qword_1EC60B528, &qword_1EC60B520);
    v0 = sub_1D13911BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60B538);
    }
  }
}

void sub_1D112F17C()
{
  if (!qword_1EC60D1B0)
  {
    sub_1D1124780(255, &qword_1EC60A9F8, &qword_1EC609A00, 0x1E69A3F00, MEMORY[0x1E69E62F8]);
    sub_1D10922EC();
    v0 = sub_1D139061C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D1B0);
    }
  }
}

uint64_t block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  return sub_1D109F94C(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D112F230()
{
  if (!qword_1EE06A760)
  {
    sub_1D112F2A8(255, &qword_1EE06B5D0);
    v0 = sub_1D138F6AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06A760);
    }
  }
}

void sub_1D112F2A8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D1390F3C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1D112F2FC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1D112F344(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

unint64_t sub_1D112F384()
{
  result = qword_1EC60B548;
  if (!qword_1EC60B548)
  {
    type metadata accessor for SettingsViewController();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC60B548);
  }

  return result;
}

double sub_1D112F45C@<D0>(unsigned __int8 a1@<W1>, uint64_t *a2@<X8>)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      a2[3] = &_s15LayoutConstantsV12ChartCLayoutVN;
      a2[4] = &off_1F4D08D20;
      v5 = swift_allocObject();
      *a2 = v5;
      *(v5 + 16) = 0;
      *(v5 + 24) = xmmword_1D13A2600;
      result = 5.0;
      *(v5 + 40) = xmmword_1D13A2610;
      *(v5 + 56) = 0x402E000000000000;
      *(v5 + 64) = 1;
      *(v5 + 72) = 0x3FE0000000000000;
      *(v5 + 80) = &unk_1F4D04970;
      *(v5 + 88) = &unk_1F4D049B8;
      return result;
    }
  }

  else if (a1 >= 2u)
  {
    a2[3] = &_s15LayoutConstantsV12ChartBLayoutVN;
    a2[4] = &off_1F4D08CC0;
    v3 = swift_allocObject();
    *a2 = v3;
    result = 20.0;
    *(v3 + 16) = xmmword_1D13A2600;
    *(v3 + 32) = xmmword_1D13A2610;
    *(v3 + 48) = 0x402E000000000000;
    *(v3 + 56) = 1;
    *(v3 + 64) = 0x3FE0000000000000;
    *(v3 + 72) = &unk_1F4D048F0;
    *(v3 + 80) = &unk_1F4D04930;
    *(v3 + 88) = 1;
    *(v3 + 96) = 0;
    return result;
  }

  a2[3] = &_s15LayoutConstantsV12ChartALayoutVN;
  a2[4] = &off_1F4D08C60;
  v6 = swift_allocObject();
  *a2 = v6;
  result = 20.0;
  *(v6 + 16) = xmmword_1D13A2620;
  *(v6 + 32) = xmmword_1D13A2630;
  *(v6 + 48) = &unk_1F4D04A00;
  *(v6 + 56) = &unk_1F4D04A30;
  return result;
}

uint64_t sub_1D112F5DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D112F624(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D112F6A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D112F6EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1D112F770(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D112F7B8(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

uint64_t type metadata accessor for ClinicalSharingOnboardingSelectWhatToShareDataSource()
{
  result = qword_1EC60B580;
  if (!qword_1EC60B580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D112F910()
{
  sub_1D1132590();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1D112F9F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D138F7BC();

  return v1;
}

id sub_1D112FA6C(void *a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v66 = a4;
  v67 = a5;
  v71 = a3;
  v69 = a2;
  v72 = a1;
  v7 = sub_1D138F0BC();
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D138D5EC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1132590();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_1EC60B558;
  *(v6 + qword_1EC60B558) = 0;
  v19 = MEMORY[0x1E69E7CC0];
  *(v6 + qword_1EC60B560) = MEMORY[0x1E69E7CC0];
  *(v6 + qword_1EC60B568) = v19;
  v20 = qword_1EC60B570;
  type metadata accessor for ClinicalSharingSelectedDataTypesContext();
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E7CD0];
  *(v21 + 32) = 0;
  *(v21 + 16) = v19;
  *(v21 + 24) = v22;
  *(v21 + 40) = 0;
  *(v21 + 48) = 0;
  v70 = v20;
  *(v6 + v20) = v21;
  v23 = qword_1EC60B578;
  v74 = 0;
  sub_1D138F77C();
  v24 = v6 + v23;
  v25 = v69;
  v26 = v17;
  v27 = v72;
  (*(v15 + 32))(v24, v26, v14);
  *(v6 + qword_1EC62F958) = 0;
  *(v6 + qword_1EC62F968) = 0;
  *(v6 + qword_1EC60B550) = v27;
  *(v6 + qword_1EC62F950) = v25;
  if (v25)
  {
    v28 = v25;
    v29 = v27;
    v30 = v28;
    v31 = [v30 identifier];
    sub_1D138D5CC();

    sub_1D138D59C();
    (*(v10 + 8))(v12, v9);
    v32 = objc_allocWithZone(MEMORY[0x1E696C438]);
    v33 = sub_1D139012C();

    v34 = [v32 initForClinicalAccountIdentifier_];

    v35 = objc_allocWithZone(MEMORY[0x1E696C430]);
    v36 = v29;
    v37 = [v35 initWithHealthStore:v36 recipientIdentifier:v34];

    v27 = v72;
    v38 = *(v6 + v18);
    *(v6 + v18) = v37;
  }

  else
  {
    v39 = v27;
  }

  v40 = MEMORY[0x1E69E7CC0];
  v73 = MEMORY[0x1E69E7CC0];
  v41 = v71;
  if (v71)
  {
    goto LABEL_7;
  }

  type metadata accessor for ClinicalSharingTurnOnAllDataTypesDataSource();
  swift_allocObject();
  v42 = sub_1D113C138();
  v43 = sub_1D10F776C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v45 = v43[2];
  v44 = v43[3];
  v46 = v45 + 1;
  if (v45 >= v44 >> 1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v43[2] = v46;
    v47 = MEMORY[0x1E69A3698];
    v48 = &v43[2 * v45];
    v48[4] = v42;
    v48[5] = v47;
    v73 = v43;
LABEL_7:
    v49 = *(v6 + v70);
    type metadata accessor for ClinicalSharingSelectableDataTypesDataSourceProviding();
    v50 = swift_allocObject();
    *(v50 + 32) = v40;
    *(v50 + 16) = v27;
    v51 = objc_opt_self();
    v52 = v27;

    result = [v51 sharedInstanceForHealthStore_];
    if (!result)
    {
      break;
    }

    *(v50 + 24) = result;
    *(v50 + 48) = v49;
    *(v50 + 40) = v41 & 1;
    v54 = sub_1D138ED3C();
    v55 = sub_1D12FAAFC(v54);

    *(v6 + qword_1EC62F960) = v55;

    v57 = sub_1D110A1B8(v56);

    sub_1D11221F0(v57);
    v6 = sub_1D138E88C();
    v58 = *(v6 + qword_1EC60B570);
    v46 = swift_allocObject();
    swift_weakInit();
    v27 = *(v58 + 40);
    v40 = *(v58 + 48);
    *(v58 + 40) = sub_1D1138D54;
    *(v58 + 48) = v46;

    sub_1D102CC60(v27);

    if (v41)
    {
      sub_1D1130200(0);
    }

    v42 = *(v6 + qword_1EC62F960);
    if (v42 >> 62)
    {
      v59 = sub_1D13910DC();
      v45 = v68;
      if (!v59)
      {
LABEL_17:
        sub_1D138F06C();
        v60 = sub_1D138F0AC();
        v61 = sub_1D139081C();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_1D101F000, v60, v61, "There was not a first selectable data type data source", v62, 2u);
          MEMORY[0x1D38882F0](v62, -1, -1);

          sub_1D102CC60(v66);
        }

        else
        {

          sub_1D102CC60(v66);
        }

        (*(v64 + 8))(v45, v65);
        return v6;
      }
    }

    else
    {
      v45 = v68;
      if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }
    }

    if ((v42 & 0xC000000000000001) != 0)
    {

      MEMORY[0x1D3886B70](0, v42);

      goto LABEL_15;
    }

    v44 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v44)
    {

LABEL_15:
      type metadata accessor for ClinicalSharingSelectableDatatypesDataSource();
      sub_1D138E1DC();

      sub_1D102CC60(v66);

      return v6;
    }

    __break(1u);
LABEL_24:
    v43 = sub_1D10F776C((v44 > 1), v46, 1, v43);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D11301A8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D1130D20();
  }

  return result;
}

void sub_1D1130200(char a1)
{
  v2 = v1;
  v4 = sub_1D138F0BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D138D5EC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + qword_1EC62F950);
  if (v12)
  {
    v13 = v12;
    v14 = [v13 identifier];
    sub_1D138D5CC();

    sub_1D138D59C();
    (*(v9 + 8))(v11, v8);
    v15 = objc_allocWithZone(MEMORY[0x1E696C438]);
    v16 = sub_1D139012C();

    v17 = [v15 initForClinicalAccountIdentifier_];

    v18 = [objc_allocWithZone(MEMORY[0x1E696C430]) initWithHealthStore:*(v2 + qword_1EC60B550) recipientIdentifier:v17];
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = a1 & 1;
    aBlock[4] = sub_1D1138CF0;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D1133074;
    aBlock[3] = &block_descriptor_30_0;
    v21 = _Block_copy(aBlock);

    [v18 fetchSharingAuthorizationsWithCompletion_];
    _Block_release(v21);
  }

  else
  {
    sub_1D138F06C();
    v22 = sub_1D138F0AC();
    v23 = sub_1D13907FC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315138;
      v26 = sub_1D139184C();
      v28 = sub_1D11DF718(v26, v27, aBlock);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1D101F000, v22, v23, "%s account was nil", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1D38882F0](v25, -1, -1);
      MEMORY[0x1D38882F0](v24, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1D1130600(char a1)
{
  sub_1D1138C8C(0, &qword_1EC60AAA8, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v44 - v4;
  v6 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  v63 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v62 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v44 - v9;
  v55 = sub_1D138E52C();
  v58 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = *(v1 + qword_1EC62F960);
    if (v12 >> 62)
    {
      goto LABEL_58;
    }

    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v44[1] = v1;
    if (v13)
    {
      v14 = 0;
      v49 = v12 & 0xC000000000000001;
      v45 = v12 & 0xFFFFFFFFFFFFFF8;
      v46 = v12;
      v44[2] = v12 + 32;
      v52 = v58 + 8;
      v53 = v58 + 16;
      v15 = (v63 + 56);
      v16 = MEMORY[0x1E69E7CC0];
      v47 = v13;
      v61 = v5;
      do
      {
        if (v49)
        {
          v17 = v14;
          v18 = MEMORY[0x1D3886B70](v14, v46);
          v19 = __OFADD__(v17, 1);
          v1 = v17 + 1;
          if (v19)
          {
            goto LABEL_56;
          }
        }

        else
        {
          if (v14 >= *(v45 + 16))
          {
            goto LABEL_57;
          }

          v20 = v14;

          v19 = __OFADD__(v20, 1);
          v1 = v20 + 1;
          if (v19)
          {
            goto LABEL_56;
          }
        }

        v50 = v1;
        v1 = v18;
        v12 = v18;
        v21 = sub_1D138E57C();
        v22 = v21;
        v57 = *(v21 + 16);
        if (v57)
        {
          v48 = v12;
          v23 = 0;
          v56 = v21 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
          v51 = v21;
          do
          {
            if (v23 >= *(v22 + 16))
            {
              goto LABEL_55;
            }

            v12 = v16;
            v24 = v58;
            v25 = *(v58 + 72);
            v60 = v23;
            v26 = v55;
            v1 = v54;
            (*(v58 + 16))(v54, v56 + v25 * v23, v55);
            v27 = sub_1D138E4EC();
            (*(v24 + 8))(v1, v26);
            v28 = v27;
            v29 = *(v27 + 16);
            if (v29)
            {
              v59 = v28;
              v30 = v28 + 32;
              v16 = v12;
              v12 = &qword_1EC60F6A0;
              while (1)
              {
                sub_1D1072E70(v30, v64);
                sub_1D1080EA4(0, &qword_1EC60F6A0);
                v31 = swift_dynamicCast();
                v32 = *v15;
                if (v31)
                {
                  v32(v5, 0, 1, v6);
                  sub_1D10F0DFC(v5, v10);
                  v33 = *&v10[*(v6 + 52)];
                  if (v33)
                  {
                    v5 = v6;
                    v6 = v15;
                    v34 = v10;
                    v1 = *(v33 + 16);
                    v10 = v16[2];
                    v12 = &v10[v1];
                    if (__OFADD__(v10, v1))
                    {
                      __break(1u);
LABEL_52:
                      __break(1u);
LABEL_53:
                      __break(1u);
LABEL_54:
                      __break(1u);
LABEL_55:
                      __break(1u);
LABEL_56:
                      __break(1u);
LABEL_57:
                      __break(1u);
LABEL_58:
                      v13 = sub_1D13910DC();
                      goto LABEL_4;
                    }

                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    if (!isUniquelyReferenced_nonNull_native || v12 > (v16[3] >> 1))
                    {
                      if (v10 <= v12)
                      {
                        v36 = &v10[v1];
                      }

                      else
                      {
                        v36 = v10;
                      }

                      v16 = sub_1D10F7738(isUniquelyReferenced_nonNull_native, v36, 1, v16);
                    }

                    v10 = v34;
                    v12 = &qword_1EC60F6A0;
                    v15 = v6;
                    if (*(v33 + 16))
                    {
                      if (((v16[3] >> 1) - v16[2]) < v1)
                      {
                        goto LABEL_53;
                      }

                      v6 = v5;
                      swift_arrayInitWithCopy();
                      sub_1D111ECA4(v10);

                      if (v1)
                      {
                        v37 = v16[2];
                        v19 = __OFADD__(v37, v1);
                        v38 = v37 + v1;
                        v5 = v61;
                        if (v19)
                        {
                          goto LABEL_54;
                        }

                        v16[2] = v38;
                      }

                      else
                      {
                        v5 = v61;
                      }
                    }

                    else
                    {
                      sub_1D111ECA4(v10);

                      v6 = v5;
                      v5 = v61;
                      if (v1)
                      {
                        goto LABEL_52;
                      }
                    }
                  }

                  else
                  {
                    sub_1D1138A40(v10, v62, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v16 = sub_1D10F7738(0, v16[2] + 1, 1, v16);
                    }

                    v40 = v16[2];
                    v39 = v16[3];
                    v1 = v40 + 1;
                    if (v40 >= v39 >> 1)
                    {
                      v16 = sub_1D10F7738(v39 > 1, v40 + 1, 1, v16);
                    }

                    sub_1D111ECA4(v10);
                    v16[2] = v1;
                    sub_1D10F0DFC(v62, v16 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v40);
                  }
                }

                else
                {
                  v32(v5, 1, 1, v6);
                  sub_1D1138EDC(v5, &qword_1EC60AAA8, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
                }

                v30 += 40;
                if (!--v29)
                {

                  v22 = v51;
                  goto LABEL_16;
                }
              }
            }

            v16 = v12;
LABEL_16:
            v23 = v60 + 1;
          }

          while (v60 + 1 != v57);
        }

        v14 = v50;
      }

      while (v50 != v47);
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    sub_1D1335A40(v16, 0);
  }

  else
  {
    v41 = *(v1 + qword_1EC60B570);
    v42 = *(v41 + 16);
    *(v41 + 16) = MEMORY[0x1E69E7CC0];

    sub_1D133575C(v42);
  }
}

uint64_t sub_1D1130D20()
{
  v146 = sub_1D138FF3C();
  v179 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v145 = (&v137 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1138C8C(0, &qword_1EC60AAA8, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v137 - v3;
  v166 = sub_1D138E52C();
  v159 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v165 = &v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v171 = &v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v163 = &v137 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v160 = &v137 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v183 = &v137 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v182 = &v137 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v175 = &v137 - v18;
  v19 = sub_1D138ED5C();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v178 = &v137 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v167 = &v137 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v150 = &v137 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v137 - v28;
  v154 = v0;
  v153 = qword_1EC60B570;
  v30 = *(*(v0 + qword_1EC60B570) + 16);
  v31 = *(v30 + 16);
  v32 = MEMORY[0x1E69E7CC0];
  v184 = v6;
  v173 = v7;
  v180 = v27;
  v177 = v20;
  if (v31)
  {
    v189 = MEMORY[0x1E69E7CC0];

    sub_1D10FDD9C(0, v31, 0);
    v33 = v189;
    v34 = *(v7 + 80);
    v181 = v30;
    v35 = v30 + ((v34 + 32) & ~v34);
    v185 = *(v7 + 72);
    v36 = (v20 + 16);
    do
    {
      v37 = v175;
      sub_1D1138A40(v35, v175, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
      (*v36)(v29, v37 + *(v184 + 48), v19);
      sub_1D111ECA4(v37);
      v189 = v33;
      v38 = v19;
      v40 = *(v33 + 16);
      v39 = *(v33 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1D10FDD9C(v39 > 1, v40 + 1, 1);
        v33 = v189;
      }

      *(v33 + 16) = v40 + 1;
      (*(v177 + 32))(v33 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v40, v29, v38);
      v35 += v185;
      --v31;
      v19 = v38;
    }

    while (v31);

    v6 = v184;
    v7 = v173;
    v20 = v177;
    v32 = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();

  v41 = sub_1D1138730();

  v42 = sub_1D1138730();

  v43 = *(v41 + 16);

  if (v43)
  {

    v44 = 1;
  }

  else
  {
    v45 = *(v42 + 16);

    v44 = v45 != 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v189) = v44;
  v46 = v154;

  sub_1D138F7CC();
  v139 = *(v46 + qword_1EC62F960);
  if (v139 >> 62)
  {
    goto LABEL_112;
  }

  for (result = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10); result; result = sub_1D13910DC())
  {
    v140 = result;
    v48 = v139;
    v147 = v139 & 0xC000000000000001;
    v144 = sub_1D106F934(0, &qword_1EE06B760);
    v138 = v48 & 0xFFFFFFFFFFFFFF8;
    v137 = v48 + 32;
    v49 = 0;
    v158 = v159 + 16;
    v7 += 56;
    v157 = (v159 + 8);
    v181 = (v20 + 16);
    v174 = v20 + 32;
    v170 = (v20 + 8);
    v143 = *MEMORY[0x1E69E8020];
    v142 = (v179 + 13);
    v141 = (v179 + 1);
    v172 = v4;
    v176 = v7;
    while (1)
    {
      if (v147)
      {
        v149 = MEMORY[0x1D3886B70](v49, v139);
        v50 = __OFADD__(v49, 1);
        v51 = v49 + 1;
        if (v50)
        {
          goto LABEL_109;
        }
      }

      else
      {
        if (v49 >= *(v138 + 16))
        {
          goto LABEL_111;
        }

        v149 = *(v137 + 8 * v49);

        v50 = __OFADD__(v49, 1);
        v51 = v49 + 1;
        if (v50)
        {
          goto LABEL_109;
        }
      }

      v148 = v51;
      v190 = v32;

      v52 = sub_1D138E57C();

      v164 = *(v52 + 16);
      if (v164)
      {
        break;
      }

      v54 = v32;
      v185 = v32;
LABEL_44:

      v80 = v54[2];
      v179 = v54;
      if (v80)
      {
        v81 = 0;
        v169 = v54 + 4;
        v82 = MEMORY[0x1E69E7CC0];
        while (v81 < v179[2])
        {
          v83 = v169[v81];
          v84 = *(v83 + 16);
          v7 = v82[2];
          v6 = v7 + v84;
          if (__OFADD__(v7, v84))
          {
            goto LABEL_103;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v6 > v82[3] >> 1)
          {
            if (v7 <= v6)
            {
              v86 = v7 + v84;
            }

            else
            {
              v86 = v7;
            }

            v82 = sub_1D10F7738(isUniquelyReferenced_nonNull_native, v86, 1, v82);
          }

          v6 = v184;
          v7 = v176;
          if (*(v83 + 16))
          {
            if ((v82[3] >> 1) - v82[2] < v84)
            {
              goto LABEL_107;
            }

            swift_arrayInitWithCopy();

            if (v84)
            {
              v87 = v82[2];
              v50 = __OFADD__(v87, v84);
              v88 = v87 + v84;
              if (v50)
              {
                goto LABEL_108;
              }

              v82[2] = v88;
            }
          }

          else
          {

            if (v84)
            {
              goto LABEL_104;
            }
          }

          if (v80 == ++v81)
          {
            goto LABEL_62;
          }
        }

        goto LABEL_102;
      }

      v82 = MEMORY[0x1E69E7CC0];
LABEL_62:

      v89 = v82[2];
      if (v89)
      {
        v189 = MEMORY[0x1E69E7CC0];
        sub_1D10FD934(0, v89, 0);
        v90 = 0;
        v164 = v189;
        v161 = (*(v173 + 80) + 32) & ~*(v173 + 80);
        v156 = v82 + v161;
        v91 = v180;
        v152 = v82;
        v155 = v89;
        while (v90 < v82[2])
        {
          v92 = *(v173 + 72);
          v162 = v90;
          v179 = v92;
          v93 = v163;
          sub_1D1138A40(&v156[v92 * v90], v163, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
          v94 = v171;
          sub_1D1138A40(v93, v171, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
          v95 = *(v94 + *(v6 + 52));
          if (v95)
          {
            v96 = *(*(*(v154 + v153) + 16) + 16);
            v169 = v95;
            if (v96)
            {
              v186 = MEMORY[0x1E69E7CC0];

              sub_1D10FDD9C(0, v96, 0);
              v98 = v186;
              v168 = v97;
              v99 = v97 + v161;
              v100 = v160;
              v101 = v150;
              do
              {
                v102 = v91;
                v103 = v175;
                sub_1D1138A40(v99, v175, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
                (*v181)(v101, v103 + *(v184 + 48), v102);
                sub_1D111ECA4(v103);
                v186 = v98;
                v105 = *(v98 + 16);
                v104 = *(v98 + 24);
                if (v105 >= v104 >> 1)
                {
                  sub_1D10FDD9C(v104 > 1, v105 + 1, 1);
                  v100 = v160;
                  v98 = v186;
                }

                *(v98 + 16) = v105 + 1;
                (*(v177 + 32))(v98 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v105, v101, v102);
                v99 += v179;
                --v96;
                v91 = v102;
              }

              while (v96);

              v94 = v171;
              v20 = v177;
              v7 = v176;
              v82 = v152;
              v95 = v169;
            }

            else
            {
              v98 = MEMORY[0x1E69E7CC0];
              v100 = v160;
            }

            *(v94 + 49) = 0;
            v117 = v95[2];
            v6 = v184;
            if (v117)
            {
              v118 = 0;
              v119 = v95 + v161;
              v168 = v95 + v161;
              while (v118 < v95[2])
              {
                v120 = v118 + 1;
                (*v181)(v178, v119 + v118 * v179 + *(v6 + 48), v91);
                v121 = 0;
                v122 = *(v98 + 16);
                while (v122 != v121)
                {
                  v123 = v121 + 1;
                  sub_1D1138D0C(&qword_1EC60A938, MEMORY[0x1E69A3910]);
                  v124 = sub_1D139011C();
                  v121 = v123;
                  if (v124)
                  {
                    v91 = v180;
                    (*v170)(v178, v180);
                    sub_1D111ECA4(v163);

                    v94 = v171;
                    *(v171 + 49) = 1;
                    v6 = v184;
                    v100 = v160;
                    v7 = v176;
                    goto LABEL_93;
                  }
                }

                v91 = v180;
                (*v170)(v178, v180);
                v118 = v120;
                v125 = v120 == v117;
                v6 = v184;
                v100 = v160;
                v7 = v176;
                v95 = v169;
                v119 = v168;
                if (v125)
                {
                  goto LABEL_88;
                }
              }

              goto LABEL_106;
            }

LABEL_88:
            sub_1D111ECA4(v163);

            v94 = v171;
          }

          else
          {
            v106 = *(*(v154 + v153) + 24);
            if (*(v106 + 16))
            {
              v107 = *(v6 + 48);
              v108 = *(v154 + v153);
              sub_1D1138D0C(&qword_1EC60A930, MEMORY[0x1E69A3910]);
              v151 = v108;

              v169 = v107;
              v109 = sub_1D139006C();
              v110 = -1 << *(v106 + 32);
              v111 = v109 & ~v110;
              if ((*(v106 + 56 + ((v111 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v111))
              {
                v168 = ~v110;
                v112 = *(v20 + 72);
                v113 = *(v20 + 16);
                do
                {
                  v114 = v167;
                  v115 = v180;
                  v113(v167, *(v106 + 48) + v112 * v111, v180);
                  sub_1D1138D0C(&qword_1EC60A938, MEMORY[0x1E69A3910]);
                  v116 = sub_1D139011C();
                  (*v170)(v114, v115);
                  if (v116)
                  {
                    break;
                  }

                  v111 = (v111 + 1) & v168;
                }

                while (((*(v106 + 56 + ((v111 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v111) & 1) != 0);
              }

              else
              {
                v116 = 0;
              }

              v6 = v184;
              v94 = v171;
              v91 = v180;
              v20 = v177;
              v7 = v176;
              v82 = v152;
            }

            else
            {
              v116 = 0;
            }

            sub_1D111ECA4(v163);
            *(v94 + 49) = v116 & 1;
            v100 = v160;
          }

LABEL_93:
          sub_1D10F0DFC(v94, v100);
          v126 = v164;
          v189 = v164;
          v128 = *(v164 + 16);
          v127 = *(v164 + 24);
          if (v128 >= v127 >> 1)
          {
            sub_1D10FD934(v127 > 1, v128 + 1, 1);
            v100 = v160;
            v126 = v189;
          }

          v129 = v162 + 1;
          *(v126 + 16) = v128 + 1;
          v164 = v126;
          v130 = v100;
          v90 = v129;
          sub_1D10F0DFC(v130, v126 + v161 + v128 * v179);
          if (v90 == v155)
          {

            v131 = v164;
            goto LABEL_98;
          }
        }

        goto LABEL_105;
      }

      v131 = MEMORY[0x1E69E7CC0];
LABEL_98:
      v132 = sub_1D110AD2C(v131);

      v189 = v132;

      sub_1D11220B8(v133);
      v134 = sub_1D1390A7C();
      v135 = v145;
      *v145 = v134;
      v136 = v146;
      (*v142)(v135, v143, v146);
      LOBYTE(v132) = sub_1D138FF5C();
      (*v141)(v135, v136);
      if ((v132 & 1) == 0)
      {
        goto LABEL_110;
      }

      sub_1D138E5AC();

      v49 = v148;
      v32 = MEMORY[0x1E69E7CC0];
      if (v148 == v140)
      {
        return result;
      }
    }

    v53 = 0;
    v185 = v32;
    v54 = v32;
    v162 = v52;
    while (v53 < *(v52 + 16))
    {
      v179 = v54;
      v55 = v52 + ((*(v159 + 80) + 32) & ~*(v159 + 80));
      v56 = *(v159 + 72);
      v169 = v53;
      (*(v159 + 16))(v165, v55 + v56 * v53, v166);
      v57 = sub_1D138E4EC();
      v58 = *(v57 + 16);
      if (v58)
      {
        v168 = v57;
        v59 = v57 + 32;
        do
        {
          sub_1D1072E70(v59, &v189);
          sub_1D1072E70(&v189, &v186);
          sub_1D1080EA4(0, &qword_1EC60F6A0);
          v60 = swift_dynamicCast();
          v61 = *v7;
          if (v60)
          {
            v61(v4, 0, 1, v6);
            v62 = v182;
            sub_1D10F0DFC(v4, v182);
            sub_1D1138A40(v62, v183, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v32 = sub_1D10F7738(0, v32[2] + 1, 1, v32);
            }

            v64 = v32[2];
            v63 = v32[3];
            if (v64 >= v63 >> 1)
            {
              v32 = sub_1D10F7738(v63 > 1, v64 + 1, 1, v32);
            }

            sub_1D111ECA4(v182);
            __swift_destroy_boxed_opaque_existential_1Tm(&v189);
            v32[2] = v64 + 1;
            sub_1D10F0DFC(v183, v32 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v64);
          }

          else
          {
            v61(v4, 1, 1, v6);
            sub_1D1138EDC(v4, &qword_1EC60AAA8, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
            sub_1D1072E70(&v189, &v186);
            v65 = v185;
            v66 = swift_isUniquelyReferenced_nonNull_native();
            v190 = v65;
            if ((v66 & 1) == 0)
            {
              v65 = sub_1D10F75F4(0, v65[2] + 1, 1, v65);
              v190 = v65;
            }

            v68 = v65[2];
            v67 = v65[3];
            if (v68 >= v67 >> 1)
            {
              v185 = sub_1D10F75F4((v67 > 1), v68 + 1, 1, v65);
              v190 = v185;
            }

            else
            {
              v185 = v65;
            }

            __swift_destroy_boxed_opaque_existential_1Tm(&v189);
            v69 = v187;
            v70 = v188;
            v71 = __swift_mutable_project_boxed_opaque_existential_1(&v186, v187);
            MEMORY[0x1EEE9AC00](v71);
            v73 = &v137 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v74 + 16))(v73);
            sub_1D125DA54(v68, v73, &v190, v69, v70);
            __swift_destroy_boxed_opaque_existential_1Tm(&v186);
            v6 = v184;
            v190 = v185;
            v4 = v172;
            v7 = v176;
          }

          v59 += 40;
          --v58;
        }

        while (v58);
      }

      v75 = *v157;

      v75(v165, v166);
      v54 = v179;
      v76 = swift_isUniquelyReferenced_nonNull_native();
      v52 = v162;
      v77 = v169;
      if ((v76 & 1) == 0)
      {
        v54 = sub_1D10F8A20(0, v54[2] + 1, 1, v54);
      }

      v79 = v54[2];
      v78 = v54[3];
      if (v79 >= v78 >> 1)
      {
        v54 = sub_1D10F8A20((v78 > 1), v79 + 1, 1, v54);
      }

      v53 = v77 + 1;
      v54[2] = v79 + 1;
      v54[v79 + 4] = v32;
      if (v53 == v164)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    ;
  }

  return result;
}

uint64_t sub_1D113236C()
{

  v1 = qword_1EC60B578;
  sub_1D1132590();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t sub_1D1132454()
{
  v0 = sub_1D138E87C();

  v1 = qword_1EC60B578;
  sub_1D1132590();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1D113253C()
{
  sub_1D1132454();

  return swift_deallocClassInstance();
}

void sub_1D1132590()
{
  if (!qword_1EE06A698)
  {
    v0 = sub_1D138F7DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06A698);
    }
  }
}

uint64_t sub_1D11325F4(unint64_t a1, void (**a2)(char *, char *, uint64_t), unint64_t a3, int a4)
{
  v56 = a4;
  v62 = a2;
  v6 = sub_1D138F0BC();
  v59 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D138FECC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D138FF0C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1138C8C(0, &qword_1EC60B5A8, MEMORY[0x1E69A3910], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v50 - v17;
  v19 = sub_1D138ED5C();
  v20 = *(v19 - 8);
  v60 = v19;
  v61 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v63 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v22 = a1;
    v59 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_26;
    }

    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v50 = a3;
    v51 = v14;
    v52 = v12;
    v53 = v13;
    v54 = v10;
    v55 = v9;
    v24 = MEMORY[0x1E69E7CC0];
    if (v23)
    {
      v12 = v23;
      v9 = 0;
      a3 = v22 & 0xC000000000000001;
      v14 = v60;
      v25 = (v61 + 48);
      v62 = (v61 + 32);
      v10 = v59;
      v58 = v22 & 0xC000000000000001;
      do
      {
        if (a3)
        {
          MEMORY[0x1D3886B70](v9, v22);
          v13 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v9 >= *(v10 + 16))
          {
            goto LABEL_25;
          }

          v26 = *(v22 + 8 * v9 + 32);
          v13 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            v23 = sub_1D13910DC();
            goto LABEL_4;
          }
        }

        sub_1D138ED6C();
        if ((*v25)(v18, 1, v14) == 1)
        {
          sub_1D1138EDC(v18, &qword_1EC60B5A8, MEMORY[0x1E69A3910]);
        }

        else
        {
          v27 = v12;
          v28 = v22;
          v29 = *v62;
          (*v62)(v63, v18, v14);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_1D10F78B8(0, *(v24 + 2) + 1, 1, v24);
          }

          v31 = *(v24 + 2);
          v30 = *(v24 + 3);
          if (v31 >= v30 >> 1)
          {
            v24 = sub_1D10F78B8(v30 > 1, v31 + 1, 1, v24);
          }

          *(v24 + 2) = v31 + 1;
          v14 = v60;
          v29(&v24[((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v31], v63, v60);
          v22 = v28;
          v12 = v27;
          a3 = v58;
          v10 = v59;
        }

        ++v9;
      }

      while (v13 != v12);
    }

    sub_1D106F934(0, &qword_1EE06B760);
    v32 = sub_1D1390A7C();
    v33 = swift_allocObject();
    *(v33 + 16) = v50;
    *(v33 + 24) = v56 & 1;
    *(v33 + 32) = v24;
    aBlock[4] = sub_1D1138CFC;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D10CBD3C;
    aBlock[3] = &block_descriptor_36;
    v34 = _Block_copy(aBlock);

    v35 = v57;
    sub_1D138FEEC();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D1138D0C(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
    sub_1D1138C8C(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D1080CD4();
    v36 = v52;
    v37 = v55;
    sub_1D139103C();
    MEMORY[0x1D3886400](0, v35, v36, v34);
    _Block_release(v34);

    (*(v54 + 8))(v36, v37);
    return (*(v51 + 8))(v35, v53);
  }

  else
  {
    v39 = v59;
    sub_1D138F06C();
    v40 = v62;
    v41 = v62;
    v42 = sub_1D138F0AC();
    v43 = sub_1D13907FC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock[0] = v45;
      *v44 = 136315138;
      aBlock[6] = v40;
      v46 = v40;
      sub_1D1138E80(0, &qword_1EE06B078, &qword_1EE06B690, MEMORY[0x1E69E7280], sub_1D1080EA4);
      v47 = sub_1D139020C();
      v49 = sub_1D11DF718(v47, v48, aBlock);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_1D101F000, v42, v43, "Error fetching selected authorization identifiers: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x1D38882F0](v45, -1, -1);
      MEMORY[0x1D38882F0](v44, -1, -1);
    }

    return (*(v39 + 8))(v8, v6);
  }
}

uint64_t sub_1D1132D90(uint64_t a1, char a2)
{
  v3 = sub_1D138F0BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v8 = result;
  sub_1D138F06C();
  v9 = sub_1D138F0AC();
  v10 = sub_1D139081C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1D101F000, v9, v10, "Successfully fetched selected authorization identifiers.", v11, 2u);
    MEMORY[0x1D38882F0](v11, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  if ((a2 & 1) != 0 || *(v8 + qword_1EC62F968) == 1)
  {
    v12 = qword_1EC60B560;
    swift_beginAccess();
    *(v8 + v12) = MEMORY[0x1E69E7CC0];

    *(v8 + qword_1EC62F968) = 0;
  }

  v13 = qword_1EC60B560;
  swift_beginAccess();

  sub_1D1122504(v14);
  result = swift_endAccess();
  v15 = *(v8 + qword_1EC62F960);
  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_9;
    }
  }

  result = sub_1D13910DC();
  v16 = result;
  if (!result)
  {
  }

LABEL_9:
  if (v16 < 1)
  {
    __break(1u);
  }

  else
  {
    v17 = qword_1EC60B570;

    v18 = 0;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1D3886B70](v18, v15);
      }

      else
      {
      }

      ++v18;
      v19 = *(v8 + v13);
      v20 = *(v8 + v17);

      sub_1D111F0F8(v19, v20);
    }

    while (v16 != v18);
  }

  return result;
}

uint64_t sub_1D1133088()
{
  v1 = v0;
  v2 = *v0;
  sub_1D1138C8C(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_1D13905DC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1D13905AC();

  v7 = sub_1D139059C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v1;
  v8[5] = v2;
  sub_1D107877C(0, 0, v5, &unk_1D13A2848, v8);
}

uint64_t sub_1D11331F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1D138F0BC();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = sub_1D13905AC();
  v5[8] = sub_1D139059C();
  v7 = swift_task_alloc();
  v5[9] = v7;
  *v7 = v5;
  v7[1] = sub_1D1133304;

  return sub_1D1133A58();
}

uint64_t sub_1D1133304()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {
    v4 = sub_1D139055C();

    return MEMORY[0x1EEE6DFA0](sub_1D1133650, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 88) = v5;
    *v5 = v2;
    v5[1] = sub_1D113348C;

    return sub_1D11343DC(1);
  }
}

uint64_t sub_1D113348C()
{
  *(*v1 + 96) = v0;

  v3 = sub_1D139055C();
  if (v0)
  {
    v4 = sub_1D1133854;
  }

  else
  {
    v4 = sub_1D11335E8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1D11335E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1133650()
{
  v22 = v0;
  v1 = v0[10];

  sub_1D138F06C();
  v2 = v1;
  v3 = sub_1D138F0AC();
  v4 = sub_1D13907FC();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];
  if (v5)
  {
    v20 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136315394;
    v12 = sub_1D139184C();
    v19 = v6;
    v14 = sub_1D11DF718(v12, v13, &v21);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_1D101F000, v3, v4, "%s Failed to persist sharing changes: %@", v9, 0x16u);
    sub_1D10B8240(v10);
    MEMORY[0x1D38882F0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1D38882F0](v11, -1, -1);
    MEMORY[0x1D38882F0](v9, -1, -1);

    (*(v7 + 8))(v19, v20);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1D1133854()
{
  v22 = v0;
  v1 = v0[12];

  sub_1D138F06C();
  v2 = v1;
  v3 = sub_1D138F0AC();
  v4 = sub_1D13907FC();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];
  if (v5)
  {
    v20 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136315394;
    v12 = sub_1D139184C();
    v19 = v6;
    v14 = sub_1D11DF718(v12, v13, &v21);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_1D101F000, v3, v4, "%s Failed to persist sharing changes: %@", v9, 0x16u);
    sub_1D10B8240(v10);
    MEMORY[0x1D38882F0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1D38882F0](v11, -1, -1);
    MEMORY[0x1D38882F0](v9, -1, -1);

    (*(v7 + 8))(v19, v20);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1D1133A58()
{
  v1[5] = v0;
  v2 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_1D138ED5C();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = sub_1D13905AC();
  v1[13] = sub_1D139059C();
  v5 = sub_1D139055C();
  v1[14] = v5;
  v1[15] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D1133BAC, v5, v4);
}

uint64_t sub_1D1133BAC()
{
  v1 = *(*(v0[5] + qword_1EC60B570) + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[10];
    v4 = v0[7];
    v19 = v0[6];
    v20 = MEMORY[0x1E69E7CC0];

    sub_1D10FDD9C(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v18 = *(v4 + 72);
    do
    {
      v6 = v0[11];
      v8 = v0[8];
      v7 = v0[9];
      sub_1D1138A40(v5, v8, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
      (*(v3 + 16))(v6, v8 + *(v19 + 48), v7);
      sub_1D111ECA4(v8);
      v10 = *(v20 + 16);
      v9 = *(v20 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1D10FDD9C(v9 > 1, v10 + 1, 1);
      }

      v11 = v0[11];
      v12 = v0[9];
      *(v20 + 16) = v10 + 1;
      (*(v3 + 32))(v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v5 += v18;
      --v2;
    }

    while (v2);
  }

  swift_beginAccess();

  v13 = sub_1D1138730();
  v0[16] = v13;

  v14 = sub_1D1138730();
  v0[17] = v14;

  if (*(v13 + 16) || *(v14 + 16))
  {
    v15 = swift_task_alloc();
    v0[18] = v15;
    *v15 = v0;
    v15[1] = sub_1D1133E9C;

    return sub_1D11347AC(v13);
  }

  else
  {

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1D1133E9C()
{
  v2 = *v1;
  v2[19] = v0;

  if (v0)
  {
    v3 = v2[14];
    v4 = v2[15];

    return MEMORY[0x1EEE6DFA0](sub_1D11342B4, v3, v4);
  }

  else
  {

    v5 = swift_task_alloc();
    v2[20] = v5;
    *v5 = v2;
    v5[1] = sub_1D1134014;
    v6 = v2[17];

    return sub_1D1134C84(v6);
  }
}

uint64_t sub_1D1134014()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1D113434C;
  }

  else
  {

    v5 = sub_1D1134138;
    v3 = 0;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D1134138()
{
  *(v0 + 176) = sub_1D139059C();
  v2 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D11341C4, v2, v1);
}

uint64_t sub_1D11341C4()
{
  v1 = v0[5];

  *(v1 + qword_1EC62F968) = 1;
  v2 = v0[14];
  v3 = v0[15];

  return MEMORY[0x1EEE6DFA0](sub_1D113423C, v2, v3);
}

uint64_t sub_1D113423C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D11342B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D113434C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D11343DC(uint64_t a1)
{
  v3 = *v1;
  v2[2] = a1;
  v2[3] = v3;
  v2[4] = sub_1D13905AC();
  v2[5] = sub_1D139059C();
  v5 = sub_1D139055C();
  v2[6] = v5;
  v2[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D113449C, v5, v4);
}

uint64_t sub_1D113449C()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = sub_1D139059C();
  v0[8] = v3;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1D11345AC;
  v6 = MEMORY[0x1E69E85E0];
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, v3, v6, 0xD00000000000001ALL, 0x80000001D13BD930, sub_1D11360B0, v4, v7);
}

uint64_t sub_1D11345AC()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1D1134734;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1D11346D0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D11346D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1134734()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D11347AC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = sub_1D138F0BC();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_1D13905AC();
  v2[9] = sub_1D139059C();
  v5 = sub_1D139055C();
  v2[10] = v5;
  v2[11] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D11348CC, v5, v4);
}

uint64_t sub_1D11348CC()
{
  v24 = v0;
  v1 = *(v0[3] + qword_1EC60B558);
  v0[12] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = v0[2];
    v4 = v1;
    v5 = sub_1D139059C();
    v0[13] = v5;
    v6 = swift_task_alloc();
    v0[14] = v6;
    v6[2] = v4;
    v6[3] = v3;
    v6[4] = v2;
    v7 = swift_task_alloc();
    v0[15] = v7;
    *v7 = v0;
    v7[1] = sub_1D1134B60;
    v8 = MEMORY[0x1E69E85E0];
    v9 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v7, v5, v8, 0xD00000000000002CLL, 0x80000001D13BD980, sub_1D1138B0C, v6, v9);
  }

  else
  {

    sub_1D138F06C();
    v10 = sub_1D138F0AC();
    v11 = sub_1D13907FC();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      v18 = sub_1D139184C();
      v20 = sub_1D11DF718(v18, v19, &v23);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1D101F000, v10, v11, "%s authorizationStore was nil", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1D38882F0](v17, -1, -1);
      MEMORY[0x1D38882F0](v16, -1, -1);
    }

    (*(v14 + 8))(v13, v15);

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1D1134B60()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1D1138F64;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1D1138F5C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D1134C84(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = sub_1D138F0BC();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_1D13905AC();
  v2[9] = sub_1D139059C();
  v5 = sub_1D139055C();
  v2[10] = v5;
  v2[11] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D1134DA4, v5, v4);
}

uint64_t sub_1D1134DA4()
{
  v24 = v0;
  v1 = *(v0[3] + qword_1EC60B558);
  v0[12] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = v0[2];
    v4 = v1;
    v5 = sub_1D139059C();
    v0[13] = v5;
    v6 = swift_task_alloc();
    v0[14] = v6;
    v6[2] = v4;
    v6[3] = v3;
    v6[4] = v2;
    v7 = swift_task_alloc();
    v0[15] = v7;
    *v7 = v0;
    v7[1] = sub_1D1135038;
    v8 = MEMORY[0x1E69E85E0];
    v9 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v7, v5, v8, 0xD000000000000029, 0x80000001D13BD950, sub_1D1138874, v6, v9);
  }

  else
  {

    sub_1D138F06C();
    v10 = sub_1D138F0AC();
    v11 = sub_1D13907FC();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      v18 = sub_1D139184C();
      v20 = sub_1D11DF718(v18, v19, &v23);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1D101F000, v10, v11, "%s authorizationStore was nil", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1D38882F0](v17, -1, -1);
      MEMORY[0x1D38882F0](v16, -1, -1);
    }

    (*(v14 + 8))(v13, v15);

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1D1135038()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1D11351D0;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1D113515C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D113515C()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D11351D0()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1D1135264(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v43 = a4;
  v44 = a6;
  v42 = a1;
  v13 = sub_1D138ED5C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11360B8();
  v40 = *(v17 - 8);
  v41 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v38 = v18;
  v39 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a3 + 16);
  if (v19)
  {
    v34 = a5;
    v35 = a7;
    v36 = a2;
    v37 = a8;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D13912DC();
    v21 = *(v14 + 16);
    v20 = v14 + 16;
    v45 = v21;
    v22 = a3 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v23 = *(v20 + 56);
    do
    {
      v45(v16, v22, v13);
      sub_1D138ED2C();
      (*(v20 - 8))(v16, v13);
      sub_1D13912AC();
      sub_1D13912EC();
      sub_1D13912FC();
      sub_1D13912BC();
      v22 += v23;
      --v19;
    }

    while (v19);
    a2 = v36;
    v24 = v37;
    a7 = v35;
  }

  else
  {
    v24 = a8;
  }

  sub_1D106F934(0, &qword_1EC60B5A0);
  v25 = sub_1D139044C();

  v27 = v39;
  v26 = v40;
  v28 = v41;
  (*(v40 + 16))(v39, v42, v41);
  v29 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v30 = (v38 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  (*(v26 + 32))(v31 + v29, v27, v28);
  v32 = v44;
  *(v31 + v30) = v43;
  aBlock[4] = v32;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D112A218;
  aBlock[3] = a7;
  v33 = _Block_copy(aBlock);

  [a2 *v24];
  _Block_release(v33);
}

uint64_t sub_1D11355A4(char a1, void *a2, uint64_t a3)
{
  v6 = sub_1D138F0BC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v36 - v11;
  if (a1)
  {
    sub_1D138F06C();
    v13 = sub_1D138F0AC();
    v14 = sub_1D139081C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v38 = v16;
      *v15 = 136315138;
      v17 = sub_1D139184C();
      v19 = sub_1D11DF718(v17, v18, &v38);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1D101F000, v13, v14, "[%s] Successfully removed Authorization Identifiers", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1D38882F0](v16, -1, -1);
      MEMORY[0x1D38882F0](v15, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
    sub_1D11360B8();
    return sub_1D139057C();
  }

  else
  {
    sub_1D138F06C();
    v21 = a2;
    v22 = sub_1D138F0AC();
    v23 = sub_1D139081C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38 = v25;
      *v24 = 136315394;
      v26 = sub_1D139184C();
      v28 = sub_1D11DF718(v26, v27, &v38);
      v36[1] = a3;
      v29 = v28;

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      v37 = a2;
      v30 = a2;
      sub_1D1138E80(0, &qword_1EE06B078, &qword_1EE06B690, MEMORY[0x1E69E7280], sub_1D1080EA4);
      v31 = sub_1D139020C();
      v33 = sub_1D11DF718(v31, v32, &v38);

      *(v24 + 14) = v33;
      _os_log_impl(&dword_1D101F000, v22, v23, "[%s] Error removing Authorization Identifiers %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v25, -1, -1);
      MEMORY[0x1D38882F0](v24, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    v34 = a2;
    if (!a2)
    {
      type metadata accessor for HKError(0);
      v37 = 0;
      sub_1D11388C4(MEMORY[0x1E69E7CC0]);
      sub_1D1138D0C(&qword_1EC609570, type metadata accessor for HKError);
      sub_1D138D29C();
      v34 = v38;
    }

    v38 = v34;
    v35 = a2;
    sub_1D11360B8();
    return sub_1D139056C();
  }
}

void sub_1D11359B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D11360B8();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = [objc_allocWithZone(MEMORY[0x1E69A3F78]) init];
  (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v12 + ((v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_1D1136228;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1135F2C;
  aBlock[3] = &block_descriptor_19;
  v13 = _Block_copy(aBlock);

  [v10 shareHealthDataWithOptions:0 reason:a2 completion:v13];

  _Block_release(v13);
}

uint64_t sub_1D1135B9C(uint64_t a1, void *a2)
{
  v3 = sub_1D138F0BC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - v8;
  if (a2)
  {
    v10 = a2;
    sub_1D138F06C();
    v11 = a2;
    v12 = sub_1D138F0AC();
    v13 = sub_1D139081C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v35 = v15;
      *v14 = 136315394;
      v16 = sub_1D139184C();
      v18 = sub_1D11DF718(v16, v17, &v35);
      v33 = v3;
      v19 = v18;

      *(v14 + 4) = v19;
      *(v14 + 12) = 2080;
      v34 = a2;
      v20 = a2;
      sub_1D1080EA4(0, &qword_1EE06B690);
      v21 = sub_1D139020C();
      v23 = sub_1D11DF718(v21, v22, &v35);

      *(v14 + 14) = v23;
      _os_log_impl(&dword_1D101F000, v12, v13, "[%s] Error sharing to clinicalSharingClient: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v15, -1, -1);
      MEMORY[0x1D38882F0](v14, -1, -1);

      (*(v4 + 8))(v9, v33);
    }

    else
    {

      (*(v4 + 8))(v9, v3);
    }

    v35 = a2;
    sub_1D11360B8();
    return sub_1D139056C();
  }

  else
  {
    sub_1D138F06C();
    v24 = sub_1D138F0AC();
    v25 = sub_1D139081C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v27;
      *v26 = 136315138;
      v28 = sub_1D139184C();
      v30 = sub_1D11DF718(v28, v29, &v35);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1D101F000, v24, v25, "[%s] Successfully shared to clinicalSharingClient", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1D38882F0](v27, -1, -1);
      MEMORY[0x1D38882F0](v26, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    sub_1D11360B8();
    return sub_1D139057C();
  }
}

uint64_t sub_1D1135F40(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (a2)
  {
    sub_1D106F934(0, a4);
    v5 = sub_1D139045C();
  }

  v7 = a3;
  v6(v5, a3);
}

uint64_t sub_1D1135FDC()
{
  v0 = sub_1D138E6BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138E60C();
  v4 = sub_1D138E6AC();
  (*(v1 + 8))(v3, v0);
  return v4;
}

void sub_1D11360B8()
{
  if (!qword_1EC60B590)
  {
    sub_1D1080EA4(255, &qword_1EE06B690);
    v0 = sub_1D139058C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60B590);
    }
  }
}

uint64_t sub_1D1136134@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D138F7BC();

  *a1 = v3;
  return result;
}

uint64_t sub_1D11361B4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D138F7CC();
}

uint64_t sub_1D1136228(uint64_t a1, void *a2)
{
  sub_1D11360B8();

  return sub_1D1135B9C(a1, a2);
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D11362EC(uint64_t a1, uint64_t a2)
{
  sub_1D139177C();
  sub_1D139027C();
  v4 = sub_1D13917CC();

  return sub_1D1136364(a1, a2, v4);
}

unint64_t sub_1D1136364(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1D139162C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

double sub_1D113641C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  sub_1D139177C();
  v6 = *a1;
  v7 = a1[2];
  v8 = a1[3];
  MEMORY[0x1D38870E0](*a1);
  sub_1D1390D9C();
  v26 = v2;
  v27 = a2;
  v29 = v7;
  sub_1D139179C();
  if (v8)
  {
    sub_1D139027C();
  }

  v10 = a1[6];
  v9 = a1[7];
  v30 = a1[4];
  v28 = a1[5];
  sub_1D139027C();
  sub_1D123F520(&v32, v10);
  sub_1D123F520(&v32, v9);
  sub_1D1390D9C();
  v11 = sub_1D13917CC();
  v12 = -1 << *(v5 + 32);
  v13 = v11 & ~v12;
  if (((*(v5 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_22:
    *(v27 + 64) = 0;
    result = 0.0;
    *(v27 + 32) = 0u;
    *(v27 + 48) = 0u;
    *v27 = 0u;
    *(v27 + 16) = 0u;
    return result;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(v5 + 48) + 72 * v13;
    v32 = *v15;
    v17 = *(v15 + 32);
    v16 = *(v15 + 48);
    v18 = *(v15 + 64);
    v33 = *(v15 + 16);
    v34 = v17;
    v36 = v18;
    v35 = v16;
    if (v32 != v6)
    {
      goto LABEL_7;
    }

    sub_1D106F934(0, &qword_1EE06B0C0);
    sub_1D1082914(&v32, v31);
    if ((sub_1D1390D8C() & 1) == 0)
    {
      goto LABEL_6;
    }

    if (*(&v33 + 1))
    {
      break;
    }

    if (!v8)
    {
      goto LABEL_14;
    }

LABEL_6:
    sub_1D1080D98(&v32);
LABEL_7:
    v13 = (v13 + 1) & v14;
    if (((*(v5 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (!v8 || v33 != __PAIR128__(v8, v29) && (sub_1D139162C() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_14:
  if (v34 != __PAIR128__(v28, v30) && (sub_1D139162C() & 1) == 0 || (sub_1D1335054(v35, v10) & 1) == 0 || (sub_1D1335054(*(&v35 + 1), v9) & 1) == 0)
  {
    goto LABEL_6;
  }

  v19 = sub_1D1390D8C();
  sub_1D1080D98(&v32);
  if ((v19 & 1) == 0)
  {
    goto LABEL_7;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v26;
  v31[0] = *v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D10E8D60();
    v21 = v31[0];
  }

  v22 = *(v21 + 48) + 72 * v13;
  v23 = *(v22 + 48);
  *(v27 + 32) = *(v22 + 32);
  *(v27 + 48) = v23;
  *(v27 + 64) = *(v22 + 64);
  v24 = *(v22 + 16);
  *v27 = *v22;
  *(v27 + 16) = v24;
  sub_1D1136CBC(v13);
  *v26 = v31[0];
  return result;
}

uint64_t sub_1D1136714(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = sub_1D139111C();

    if (v5)
    {
      v6 = sub_1D1136B54();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  sub_1D106F934(0, &qword_1EC609A00);
  v9 = sub_1D1390D7C();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = sub_1D1390D8C();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D10E9168();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_1D1137094(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_1D11368AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D138ED5C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D1138D0C(&qword_1EC60A930, MEMORY[0x1E69A3910]);
  v31 = a1;
  v10 = sub_1D139006C();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1D1138D0C(&qword_1EC60A938, MEMORY[0x1E69A3910]);
      v19 = sub_1D139011C();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D10E8F08();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1D1137234(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1D1136B54()
{
  v1 = v0;

  v2 = sub_1D13910DC();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1D10E5F78(v3, v2);
  v13 = v4;

  v5 = sub_1D1390D7C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_1D106F934(0, &qword_1EC609A00);
    while (1)
    {
      v9 = *(*(v4 + 48) + 8 * v7);
      v10 = sub_1D1390D8C();

      if (v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v11 = *(*(v4 + 48) + 8 * v7);
  sub_1D1137094(v7);
  result = sub_1D1390D8C();
  if (result)
  {
    *v1 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D1136CBC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D139105C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v37 = v4;
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48) + 72 * v6;
        v12 = *(v10 + 32);
        v11 = *(v10 + 48);
        v13 = *(v10 + 16);
        v43 = *(v10 + 64);
        v41 = v12;
        v42 = v11;
        v39 = *v10;
        v40 = v13;
        sub_1D139177C();
        v14 = *(&v40 + 1);
        MEMORY[0x1D38870E0](v39);
        sub_1D1082914(&v39, v38);
        sub_1D1390D9C();
        sub_1D139179C();
        if (v14)
        {
          sub_1D139027C();
        }

        v15 = v42;
        sub_1D139027C();
        if (v15 >> 62)
        {
          v32 = sub_1D13910DC();
          MEMORY[0x1D38870E0](v32);
          result = sub_1D13910DC();
          v16 = result;
          if (!result)
          {
            goto LABEL_17;
          }
        }

        else
        {
          result = MEMORY[0x1D38870E0](*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10));
          v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v16)
          {
            goto LABEL_17;
          }
        }

        if (v16 < 1)
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          return result;
        }

        if ((v15 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v16; ++i)
          {
            MEMORY[0x1D3886B70](i, v15);
            sub_1D1390D9C();
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v18 = (v15 + 32);
          do
          {
            v19 = *v18++;
            v20 = v19;
            sub_1D1390D9C();

            --v16;
          }

          while (v16);
        }

LABEL_17:
        v21 = *(&v42 + 1);
        if (*(&v42 + 1) >> 62)
        {
          v33 = sub_1D13910DC();
          MEMORY[0x1D38870E0](v33);
          result = sub_1D13910DC();
          v22 = result;
          if (!result)
          {
            goto LABEL_26;
          }
        }

        else
        {
          result = MEMORY[0x1D38870E0](*((*(&v42 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10));
          v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v22)
          {
            goto LABEL_26;
          }
        }

        if (v22 < 1)
        {
          goto LABEL_43;
        }

        if ((v21 & 0xC000000000000001) != 0)
        {
          for (j = 0; j != v22; ++j)
          {
            MEMORY[0x1D3886B70](j, v21);
            sub_1D1390D9C();
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v24 = (v21 + 32);
          do
          {
            v25 = *v24++;
            v26 = v25;
            sub_1D1390D9C();

            --v22;
          }

          while (v22);
        }

LABEL_26:
        sub_1D1390D9C();
        v27 = sub_1D13917CC();
        sub_1D1080D98(&v39);
        v28 = v27 & v7;
        if (v2 >= v9)
        {
          v4 = v37;
          if (v28 < v9)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v4 = v37;
          if (v28 >= v9)
          {
            goto LABEL_31;
          }
        }

        if (v2 >= v28)
        {
LABEL_31:
          v29 = *(v3 + 48);
          v30 = (v29 + 72 * v2);
          v31 = (v29 + 72 * v6);
          if (v2 != v6 || v30 >= v31 + 72)
          {
            memmove(v30, v31, 0x48uLL);
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v34 = *(v3 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    goto LABEL_44;
  }

  *(v3 + 16) = v36;
  ++*(v3 + 36);
  return result;
}

unint64_t sub_1D1137094(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D139105C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1D1390D7C();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}