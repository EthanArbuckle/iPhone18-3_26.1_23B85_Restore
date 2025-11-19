uint64_t sub_1D12B5E60(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D12B5F60, 0, 0);
}

uint64_t sub_1D12B5F60()
{
  *(v0 + 96) = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D12B5FD0, 0, 0);
}

uint64_t sub_1D12B5FD0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D12B6034(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D12B6134, 0, 0);
}

uint64_t sub_1D12B6134()
{
  v1 = v0[7];
  v2 = sub_1D110A99C(v0[14]);

  v0[12] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D12B5FD0, 0, 0);
}

uint64_t sub_1D12B61C0(uint64_t a1)
{
  v3 = *v1;

  *(v3 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D12B5FD0, 0, 0);
}

uint64_t sub_1D12B62C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D138D5EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(a2 + 16))(a1, a2);
  v9 = [v8 UUID];

  sub_1D138D5CC();
  v10 = sub_1D138D59C();
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  v15[0] = v10;
  v15[1] = v12;
  MEMORY[0x1D3885C10](95, 0xE100000000000000);
  v13 = (*(a2 + 32))(a1, a2);
  MEMORY[0x1D3885C10](v13);

  return v15[0];
}

uint64_t sub_1D12B6444(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 16))(a3, a4);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = v6;
    v6 = [v8 meaningfulDateDisplayStringWithPreferredForm:a1 showTime:a2 & 1];
    v10 = sub_1D139016C();
  }

  else
  {
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v10 = sub_1D138D1CC();
  }

  return v10;
}

uint64_t sub_1D12B6584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D12B9874(0, &qword_1EE06B500, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = *(a2 + 16);
  v10 = v9(a1, a2);
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = [v11 meaningfulDate];
    if (v12)
    {
      v13 = v12;
      sub_1D138D52C();

      v14 = sub_1D138D57C();
      (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
    }

    else
    {

      v20 = sub_1D138D57C();
      (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
    }

    return sub_1D112A184(v8, a3);
  }

  else
  {

    v15 = v9(a1, a2);
    v16 = [v15 startDate];

    sub_1D138D52C();
    v17 = sub_1D138D57C();
    v18 = *(*(v17 - 8) + 56);

    return v18(a3, 0, 1, v17);
  }
}

void *sub_1D12B6804()
{
  v1 = *(v0 + 16);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v1;
    v4 = [v2 results];
    if (!v4 || ((v5 = v4, sub_1D106F934(0, &qword_1EC60B898), v6 = sub_1D139045C(), v5, v6 >> 62) ? (v7 = sub_1D13910DC()) : (v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v7))
    {

      return 0;
    }
  }

  return v2;
}

void *sub_1D12B68E0()
{
  v1 = *v0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v1;
    v4 = [v2 results];
    if (!v4 || ((v5 = v4, sub_1D106F934(0, &qword_1EC60B898), v6 = sub_1D139045C(), v5, v6 >> 62) ? (v7 = sub_1D13910DC()) : (v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v7))
    {

      return 0;
    }
  }

  return v2;
}

uint64_t sub_1D12B69BC()
{
  v1 = *v0;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    v5 = [v3 FHIRIdentifier];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 identifier];

      v8 = sub_1D139016C();
      return v8;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1D12B6ACC()
{
  v1 = *(v0 + 16);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    v5 = [v3 FHIRIdentifier];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 identifier];

      v8 = sub_1D139016C();
      return v8;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1D12B6B88()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return swift_deallocClassInstance();
}

unint64_t sub_1D12B6C1C()
{
  result = qword_1EC60EC48;
  if (!qword_1EC60EC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60EC48);
  }

  return result;
}

uint64_t sub_1D12B6C70(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 432) = a4;
  *(v5 + 440) = v4;
  *(v5 + 185) = a3;
  *(v5 + 416) = a1;
  *(v5 + 424) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D12B6C98, 0, 0);
}

uint64_t sub_1D12B6C98()
{
  v1 = *(v0 + 416);
  v2 = sub_1D12B8D50(v1);
  *(v0 + 186) = v2 & 1;
  *(v0 + 448) = v3;
  *(v0 + 456) = v4;
  v5 = [v1 value];
  if (!v5 || (v6 = v5, v7 = [v5 inspectableValue], v6, !v7) || (v8 = objc_msgSend(v7, sel_codedValueCollection), *(v0 + 464) = v8, v7, !v8))
  {
LABEL_6:
    v9 = [*(v0 + 416) value];
    *(v0 + 504) = v9;
    if (v9)
    {
      v10 = v9;
      v11 = *(v0 + 416);
      v12 = [v11 displayNameForGroupByConcept];
      v13 = sub_1D139016C();
      v15 = v14;

      *(v0 + 512) = v13;
      *(v0 + 520) = v15;
      v16 = [v11 meaningfulDateTitle];
      v17 = sub_1D139016C();
      v19 = v18;

      *(v0 + 528) = v17;
      *(v0 + 536) = v19;
      v20 = objc_opt_self();
      v21 = [v11 referenceRanges];
      *(v0 + 544) = v21;
      v22 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
      v23 = [objc_allocWithZone(MEMORY[0x1E696C1A8]) initWithHealthStore_];
      *(v0 + 552) = v23;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_1D12B7498;
      v24 = swift_continuation_init();
      sub_1D12B9328();
      *(v0 + 136) = v25;
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1D12B814C;
      *(v0 + 104) = &block_descriptor_57;
      *(v0 + 112) = v24;
      [v20 parseValueCollection:v10 referenceRanges:v21 healthRecordsStore:v23 withCompletion:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    else
    {

      v26 = *(v0 + 8);
      v27 = MEMORY[0x1E69E7CC0];

      return v26(v27);
    }
  }

  if (v2)
  {

    goto LABEL_6;
  }

  v28 = *(v0 + 432);
  v29 = *(v0 + 440);
  v30 = *(v0 + 185);
  v32 = *(v0 + 416);
  v31 = *(v0 + 424);

  v33 = [v8 codedValues];
  v34 = sub_1D106F934(0, &qword_1EC60B128);
  v35 = sub_1D139045C();
  *(v0 + 472) = v35;

  *(v0 + 272) = *(v28 + 8);
  *(v0 + 280) = *(v28 + 16);
  *(v0 + 288) = *(v28 + 24);
  v36 = swift_allocObject();
  *(v36 + 16) = v29;
  *(v36 + 24) = v32;
  *(v36 + 32) = v31;
  *(v36 + 40) = v30;
  v37 = *(v28 + 32);
  v38 = *(v28 + 16);
  *(v36 + 48) = *v28;
  *(v36 + 64) = v38;
  *(v36 + 80) = v37;
  v39 = swift_allocObject();
  *(v0 + 480) = v39;
  *(v39 + 16) = &unk_1D13AE090;
  *(v39 + 24) = v36;
  v40 = v32;
  v41 = v31;
  sub_1D12B95C4(v0 + 272, v0 + 392, sub_1D12B955C);
  sub_1D12B95C4(v0 + 280, v0 + 400, sub_1D116BC24);
  sub_1D12B95C4(v0 + 288, v0 + 408, sub_1D12B962C);
  v42 = swift_task_alloc();
  *(v0 + 488) = v42;
  sub_1D10E3C10();
  *v42 = v0;
  v42[1] = sub_1D12B7194;

  return MEMORY[0x1EEE0DDB0](&unk_1D13AE0A0, v39, v35, v34, v43);
}

uint64_t sub_1D12B7194(uint64_t a1)
{
  *(*v1 + 496) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D12B72D0, 0, 0);
}

void sub_1D12B72D0()
{
  v1 = v0[62];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v14 = v0[58];

    v15 = v0[1];

    v15(v4);
    return;
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  while (v3 < *(v1 + 16))
  {
    v5 = *(v1 + 32 + 8 * v3);
    v6 = *(v5 + 16);
    v7 = v4[2];
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      goto LABEL_25;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v8 <= v4[3] >> 1)
    {
      if (*(v5 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v7 <= v8)
      {
        v10 = v7 + v6;
      }

      else
      {
        v10 = v7;
      }

      v4 = sub_1D10F7434(isUniquelyReferenced_nonNull_native, v10, 1, v4);
      if (*(v5 + 16))
      {
LABEL_15:
        if ((v4[3] >> 1) - v4[2] < v6)
        {
          goto LABEL_27;
        }

        sub_1D1080EA4(0, &qword_1EC609E28);
        swift_arrayInitWithCopy();

        if (v6)
        {
          v11 = v4[2];
          v12 = __OFADD__(v11, v6);
          v13 = v11 + v6;
          if (v12)
          {
            goto LABEL_28;
          }

          v4[2] = v13;
        }

        goto LABEL_4;
      }
    }

    if (v6)
    {
      goto LABEL_26;
    }

LABEL_4:
    if (v2 == ++v3)
    {
      v0 = v16;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_1D12B7498()
{

  return MEMORY[0x1EEE6DFA0](sub_1D12B7578, 0, 0);
}

uint64_t sub_1D12B7578()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v9 = *(v0 + 144);
  *(v0 + 560) = v9;
  v3 = *(v0 + 168);
  *(v0 + 576) = *(v0 + 160);
  *(v0 + 584) = v3;
  *(v0 + 592) = *(v0 + 176);
  *(v0 + 187) = *(v0 + 184);

  v4 = v9;

  v5 = swift_task_alloc();
  *(v0 + 600) = v5;
  *v5 = v0;
  v5[1] = sub_1D12B7688;
  v7 = *(v0 + 416);
  v6 = *(v0 + 424);

  return sub_1D10B7244(v7, v6);
}

uint64_t sub_1D12B7688(uint64_t a1)
{
  *(*v1 + 608) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D12B7788, 0, 0);
}

uint64_t sub_1D12B7788()
{
  v49 = v0;
  v1 = *(v0 + 592);
  v2 = *(v0 + 185);
  HKMedicalRecord.categoryKind.getter(&v48);
  v3 = v48;
  if (v2 == 3)
  {
    v46 = v48;
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 187);
    v5 = *(v0 + 584);
    v6 = (v0 + 568);
    v42 = *(v0 + 608);
    v44 = *(v0 + 560);
    v38 = *(v0 + 512);
    v40 = *(v0 + 528);
    v7 = *(v0 + 432);
    v8 = *(v0 + 416);
    if (*(v0 + 186))
    {
      v9 = *(v0 + 456);
    }

    else
    {
      v9 = *(v0 + 576);
    }

    if (*(v0 + 186))
    {
      v6 = (v0 + 448);
    }

    v10 = *v6;
    v11 = sub_1D138D1CC();
    v35 = v12;
    v36 = v11;
    v13 = sub_1D12B8E98(v10, v9, v5, v1, v4);
    v15 = v14;

    sub_1D12B9494();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D139E700;
    *(v0 + 320) = *(v7 + 1);
    *(v0 + 328) = *(v7 + 2);
    *(v0 + 336) = *(v7 + 3);
    v18 = *v7;
    v17 = v7[1];
    *(v0 + 264) = *(v7 + 32);
    *(v0 + 232) = v18;
    *(v0 + 248) = v17;
    sub_1D12B94FC();
    swift_allocObject();
    sub_1D12B95C4(v0 + 320, v0 + 368, sub_1D12B955C);
    sub_1D12B95C4(v0 + 328, v0 + 376, sub_1D116BC24);
    sub_1D12B95C4(v0 + 336, v0 + 384, sub_1D12B962C);
    v19 = sub_1D138F6EC();
    *(v16 + 56) = &type metadata for MedicalRecordTimelineChartValueViewData;
    *(v16 + 64) = sub_1D12B9694();
    v20 = swift_allocObject();
    *(v16 + 32) = v20;
    *(v20 + 16) = v8;
    *(v20 + 24) = v46;
    *(v20 + 32) = v38;
    *(v20 + 48) = v40;
    *(v20 + 64) = v42;
    *(v20 + 72) = v36;
    *(v20 + 80) = v35;
    *(v20 + 88) = v13;
    *(v20 + 96) = v15;
    *(v20 + 104) = v19;
    v21 = v8;
  }

  else
  {
    v47 = *(v0 + 187);
    v43 = *(v0 + 584);
    v45 = *(v0 + 608);
    v22 = (v0 + 568);
    v41 = *(v0 + 560);
    v37 = *(v0 + 512);
    v39 = *(v0 + 528);
    v23 = *(v0 + 432);
    v24 = *(v0 + 416);
    if (*(v0 + 186))
    {
      v25 = *(v0 + 456);
    }

    else
    {
      v25 = *(v0 + 576);
    }

    if (*(v0 + 186))
    {
      v22 = (v0 + 448);
    }

    v26 = *v22;
    sub_1D12B9494();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D139E700;
    *(v0 + 296) = *(v23 + 1);
    *(v0 + 304) = *(v23 + 2);
    *(v0 + 312) = *(v23 + 3);
    v28 = *v23;
    v27 = v23[1];
    *(v0 + 224) = *(v23 + 32);
    *(v0 + 192) = v28;
    *(v0 + 208) = v27;
    sub_1D12B94FC();
    swift_allocObject();
    sub_1D12B95C4(v0 + 296, v0 + 344, sub_1D12B955C);
    sub_1D12B95C4(v0 + 304, v0 + 352, sub_1D116BC24);
    sub_1D12B95C4(v0 + 312, v0 + 360, sub_1D12B962C);
    v29 = sub_1D138F6EC();
    *(v16 + 56) = &type metadata for MedicalRecordTimelineViewData;
    *(v16 + 64) = sub_1D1116170();
    v30 = swift_allocObject();
    *(v16 + 32) = v30;
    *(v30 + 16) = 5;
    *(v30 + 24) = v3;
    *(v30 + 32) = v24;
    *(v30 + 40) = v37;
    *(v30 + 56) = v39;
    *(v30 + 72) = v45;
    *(v30 + 80) = v26;
    *(v30 + 88) = v25;
    *(v30 + 96) = v43;
    *(v30 + 104) = v1;
    *(v30 + 112) = v41;
    *(v30 + 120) = v47;
    *(v30 + 128) = v29;
    v31 = v24;
  }

  v32 = *(v0 + 504);

  v33 = *(v0 + 8);

  return v33(v16);
}

uint64_t sub_1D12B7C10(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 49) = a3;
  *(v4 + 192) = a1;
  *(v4 + 200) = a4;
  v7 = swift_task_alloc();
  *(v4 + 208) = v7;
  *v7 = v4;
  v7[1] = sub_1D12B7CBC;

  return sub_1D10B7244(a1, a2);
}

uint64_t sub_1D12B7CBC(uint64_t a1)
{
  *(*v1 + 216) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D12B7DBC, 0, 0);
}

uint64_t sub_1D12B7DBC()
{
  v30 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  if (*(v0 + 49) == 3)
  {
    HKMedicalRecord.categoryKind.getter(&v29);
    v27 = v29;
    v4 = [v2 preferredDisplayName];
    v5 = sub_1D139016C();
    v7 = v6;

    v8 = [v2 meaningfulDateTitle];
    v9 = sub_1D139016C();
    v11 = v10;

    *(v0 + 120) = *(v3 + 1);
    *(v0 + 128) = *(v3 + 2);
    *(v0 + 136) = *(v3 + 3);
    v12 = *v3;
    v13 = v3[1];
    *(v0 + 88) = *(v3 + 32);
    *(v0 + 72) = v13;
    *(v0 + 56) = v12;
    sub_1D12B94FC();
    swift_allocObject();
    v14 = v1;
    sub_1D12B95C4(v0 + 120, v0 + 168, sub_1D12B955C);
    sub_1D12B95C4(v0 + 128, v0 + 176, sub_1D116BC24);
    sub_1D12B95C4(v0 + 136, v0 + 184, sub_1D12B962C);
    v15 = sub_1D138F6EC();
    sub_1D12B9494();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D139E700;
  }

  else
  {
    HKMedicalRecord.categoryKind.getter(&v28);
    v27 = v28;
    v17 = [v2 displayNameForGroupByConcept];
    v5 = sub_1D139016C();
    v7 = v18;

    v19 = [v2 meaningfulDateTitle];
    v9 = sub_1D139016C();
    v11 = v20;

    sub_1D12B9494();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D139E700;
    *(v0 + 96) = *(v3 + 1);
    *(v0 + 104) = *(v3 + 2);
    *(v0 + 112) = *(v3 + 3);
    v22 = *v3;
    v21 = v3[1];
    *(v0 + 48) = *(v3 + 32);
    *(v0 + 16) = v22;
    *(v0 + 32) = v21;
    sub_1D12B94FC();
    swift_allocObject();
    v14 = v1;
    sub_1D12B95C4(v0 + 96, v0 + 144, sub_1D12B955C);
    sub_1D12B95C4(v0 + 104, v0 + 152, sub_1D116BC24);
    sub_1D12B95C4(v0 + 112, v0 + 160, sub_1D12B962C);
    v15 = sub_1D138F6EC();
  }

  *(v16 + 56) = &type metadata for MedicalRecordTimelineViewData;
  *(v16 + 64) = sub_1D1116170();
  v23 = swift_allocObject();
  *(v16 + 32) = v23;
  *(v23 + 16) = 4;
  *(v23 + 24) = v27;
  *(v23 + 32) = v2;
  *(v23 + 40) = v5;
  *(v23 + 48) = v7;
  *(v23 + 56) = v9;
  *(v23 + 64) = v11;
  *(v23 + 72) = v1;
  *(v23 + 80) = 0u;
  *(v23 + 96) = 0u;
  *(v23 + 105) = 0u;
  *(v23 + 128) = v15;
  v24 = *(v0 + 192);

  v25 = *(v0 + 8);

  return v25(v16);
}

uint64_t sub_1D12B814C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v8 = sub_1D139016C();
  v10 = v9;
  v11 = sub_1D139016C();
  v12 = *(*(v7 + 64) + 40);
  *v12 = a2;
  *(v12 + 8) = v8;
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  *(v12 + 32) = v13;
  *(v12 + 40) = a5;
  v14 = a2;

  return MEMORY[0x1EEE6DED8](v7);
}

uint64_t sub_1D12B81F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 392) = a4;
  *(v6 + 400) = a6;
  *(v6 + 185) = a5;
  *(v6 + 376) = a2;
  *(v6 + 384) = a3;
  *(v6 + 368) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D12B821C, 0, 0);
}

uint64_t sub_1D12B821C()
{
  v1 = [*(v0 + 368) codings];
  sub_1D106F934(0, &qword_1EC609D38);
  v2 = sub_1D139045C();

  if (v2 >> 62)
  {
    v3 = sub_1D13910DC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = *(v0 + 368);
    v5 = [v4 value];
    v6 = objc_opt_self();
    v7 = [v6 inspectableValueCollectionSingleWithValue_];
    *(v0 + 408) = v7;

    v8 = [v4 referenceRanges];
    *(v0 + 416) = v8;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1D12B8470;
    v9 = swift_continuation_init();
    sub_1D12B9328();
    *(v0 + 136) = v10;
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1D12B814C;
    *(v0 + 104) = &block_descriptor_25_1;
    *(v0 + 112) = v9;
    [v6 parseUncodedValueCollection:v7 referenceRanges:v8 withCompletion:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v11 = *(v0 + 8);
    v12 = MEMORY[0x1E69E7CC0];

    return v11(v12);
  }
}

uint64_t sub_1D12B8470()
{

  return MEMORY[0x1EEE6DFA0](sub_1D12B8550, 0, 0);
}

uint64_t sub_1D12B8550()
{
  v1 = *(v0 + 416);
  v8 = *(v0 + 144);
  *(v0 + 424) = v8;
  v2 = *(v0 + 168);
  *(v0 + 440) = *(v0 + 160);
  *(v0 + 448) = v2;
  *(v0 + 456) = *(v0 + 176);
  *(v0 + 186) = *(v0 + 184);

  v3 = v8;
  v4 = swift_task_alloc();
  *(v0 + 464) = v4;
  *v4 = v0;
  v4[1] = sub_1D12B8648;
  v6 = *(v0 + 384);
  v5 = *(v0 + 392);

  return sub_1D10B7244(v6, v5);
}

uint64_t sub_1D12B8648(uint64_t a1)
{
  *(*v1 + 472) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D12B8748, 0, 0);
}

uint64_t sub_1D12B8748()
{
  v60 = v0;
  v1 = *(v0 + 368);
  HKMedicalRecord.categoryKind.getter(&v59);
  v2 = v59;
  v3 = [v1 ontologyConcept];
  v4 = [v3 localizedPreferredName];

  if (!v4)
  {
    sub_1D106F934(0, &qword_1EC60B0A8);
    v4 = [swift_getObjCClassFromMetadata() defaultDisplayString];
  }

  v5 = sub_1D139016C();
  v7 = v6;

  v8 = *(v0 + 456);
  v9 = *(v0 + 440);
  v10 = *(v0 + 185);
  v11 = [*(v0 + 384) meaningfulDateTitle];
  v12 = sub_1D139016C();
  v14 = v13;

  v58 = v14;
  if (v10 == 3)
  {
    v50 = v12;
    v52 = v5;
    v54 = v7;
    v56 = v2;
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 186);
    v16 = *(v0 + 448);
    v17 = *(v0 + 432);
    v47 = *(v0 + 472);
    v49 = *(v0 + 424);
    v18 = *(v0 + 400);
    v19 = *(v0 + 384);
    v20 = sub_1D138D1CC();
    v45 = v21;
    v46 = v20;
    v22 = sub_1D12B8E98(v17, v9, v16, v8, v15);
    v24 = v23;

    sub_1D12B9494();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D139E700;
    *(v0 + 296) = *(v18 + 1);
    *(v0 + 304) = *(v18 + 2);
    *(v0 + 312) = *(v18 + 3);
    v27 = *v18;
    v26 = v18[1];
    *(v0 + 264) = *(v18 + 32);
    *(v0 + 232) = v27;
    *(v0 + 248) = v26;
    sub_1D12B94FC();
    swift_allocObject();
    sub_1D12B95C4(v0 + 296, v0 + 344, sub_1D12B955C);
    sub_1D12B95C4(v0 + 304, v0 + 352, sub_1D116BC24);
    sub_1D12B95C4(v0 + 312, v0 + 360, sub_1D12B962C);
    v28 = sub_1D138F6EC();
    *(v25 + 56) = &type metadata for MedicalRecordTimelineChartValueViewData;
    *(v25 + 64) = sub_1D12B9694();
    v29 = swift_allocObject();
    *(v25 + 32) = v29;
    *(v29 + 16) = v19;
    *(v29 + 24) = v56;
    *(v29 + 32) = v52;
    *(v29 + 40) = v54;
    *(v29 + 48) = v50;
    *(v29 + 56) = v58;
    *(v29 + 64) = v47;
    *(v29 + 72) = v46;
    *(v29 + 80) = v45;
    *(v29 + 88) = v22;
    *(v29 + 96) = v24;
    *(v29 + 104) = v28;
    v30 = v47;
    v31 = v19;
  }

  else
  {
    v57 = *(v0 + 186);
    v53 = *(v0 + 472);
    v55 = *(v0 + 448);
    v48 = *(v0 + 432);
    v51 = *(v0 + 424);
    v32 = *(v0 + 400);
    v33 = v7;
    v34 = *(v0 + 384);
    sub_1D12B9494();
    v35 = v12;
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D139E700;
    *(v0 + 272) = *(v32 + 1);
    *(v0 + 280) = *(v32 + 2);
    *(v0 + 288) = *(v32 + 3);
    v37 = *v32;
    v36 = v32[1];
    *(v0 + 224) = *(v32 + 32);
    *(v0 + 192) = v37;
    *(v0 + 208) = v36;
    sub_1D12B94FC();
    swift_allocObject();
    sub_1D12B95C4(v0 + 272, v0 + 320, sub_1D12B955C);
    sub_1D12B95C4(v0 + 280, v0 + 328, sub_1D116BC24);
    sub_1D12B95C4(v0 + 288, v0 + 336, sub_1D12B962C);
    v38 = sub_1D138F6EC();
    *(v25 + 56) = &type metadata for MedicalRecordTimelineViewData;
    *(v25 + 64) = sub_1D1116170();
    v39 = swift_allocObject();
    *(v25 + 32) = v39;
    *(v39 + 16) = 5;
    *(v39 + 24) = v2;
    *(v39 + 32) = v34;
    *(v39 + 40) = v5;
    *(v39 + 48) = v33;
    *(v39 + 56) = v35;
    *(v39 + 64) = v58;
    *(v39 + 72) = v53;
    *(v39 + 80) = v48;
    *(v39 + 88) = v9;
    *(v39 + 96) = v55;
    *(v39 + 104) = v8;
    *(v39 + 112) = v51;
    *(v39 + 120) = v57;
    *(v39 + 128) = v38;
    v40 = v34;
  }

  v41 = *(v0 + 424);
  v42 = *(v0 + 408);

  v43 = *(v0 + 8);

  return v43(v25);
}

uint64_t sub_1D12B8C58(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1D10E04E0;

  return v7(v4);
}

id sub_1D12B8D50(void *a1)
{
  result = [a1 value];
  if (result)
  {
    v3 = result;
    v4 = [result inspectableValue];

    if (v4)
    {
      v5 = [v4 codedValueCollection];

      if (v5)
      {
        v6 = [v5 canonicalBloodPressureDisplay];

        if (v6)
        {
          v7 = sub_1D139016C();
          v9 = v8;

          v10 = HIBYTE(v9) & 0xF;
          if ((v9 & 0x2000000000000000) == 0)
          {
            v10 = v7 & 0xFFFFFFFFFFFFLL;
          }

          if (v10)
          {
            v11 = [a1 primaryConcept];
            v12 = [v11 groupByConcept];

            v13 = [v12 chartsBloodPressure];
            return v13;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D12B8E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_1D12B9874(0, &qword_1EC60DF40, MEMORY[0x1E6969770]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  if (a5)
  {
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    return sub_1D138D1CC();
  }

  else if (a2)
  {
    if (a4)
    {
      v14 = sub_1D138D67C();
      (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
      sub_1D10F48A8();
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1D139E710;
      v16 = MEMORY[0x1E69E6158];
      *(v15 + 56) = MEMORY[0x1E69E6158];
      v17 = sub_1D1089930();
      *(v15 + 32) = a1;
      *(v15 + 40) = a2;
      *(v15 + 96) = v16;
      *(v15 + 104) = v17;
      *(v15 + 64) = v17;
      *(v15 + 72) = a3;
      *(v15 + 80) = a4;
      v18 = qword_1EE06AD00;

      if (v18 != -1)
      {
        swift_once();
      }

      v19 = sub_1D138D1CC();
      if (*(v15 + 16))
      {
        v20 = sub_1D139019C();

        sub_1D10CD608(v12);
      }

      else
      {
        v20 = v19;
        sub_1D10CD608(v12);
      }

      return v20;
    }

    else
    {

      return a1;
    }
  }

  else
  {
    return a1;
  }
}

uint64_t sub_1D12B9150(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D12B9170, 0, 0);
}

uint64_t sub_1D12B9170()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  sub_1D12B98C8();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D139E700;
  v4 = [v1 preferredDisplayName];
  v5 = sub_1D139016C();
  v7 = v6;

  *(v0 + 56) = *(v2 + 1);
  *(v0 + 64) = *(v2 + 2);
  *(v0 + 72) = *(v2 + 3);
  v8 = *v2;
  v9 = v2[1];
  *(v0 + 48) = *(v2 + 32);
  *(v0 + 16) = v8;
  *(v0 + 32) = v9;
  sub_1D12B94FC();
  swift_allocObject();
  sub_1D12B95C4(v0 + 56, v0 + 80, sub_1D12B955C);
  sub_1D12B95C4(v0 + 64, v0 + 80, sub_1D116BC24);
  sub_1D12B95C4(v0 + 72, v0 + 80, sub_1D12B962C);
  v10 = sub_1D138F6EC();
  *(v3 + 32) = 11;
  *(v3 + 40) = 8;
  *(v3 + 48) = v1;
  *(v3 + 56) = v5;
  *(v3 + 64) = v7;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0;
  *(v3 + 144) = v10;
  v11 = v1;
  v12 = *(v0 + 8);

  return v12(v3);
}

void sub_1D12B9328()
{
  if (!qword_1EC60EC50)
  {
    sub_1D12B9390();
    v0 = sub_1D139061C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EC50);
    }
  }
}

void sub_1D12B9390()
{
  if (!qword_1EC60EC58)
  {
    sub_1D12B9414();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC60EC58);
    }
  }
}

void sub_1D12B9414()
{
  if (!qword_1EC60C550)
  {
    sub_1D106F934(255, &qword_1EC60C558);
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60C550);
    }
  }
}

void sub_1D12B9494()
{
  if (!qword_1EC60AB90)
  {
    sub_1D1080EA4(255, &qword_1EC609E28);
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60AB90);
    }
  }
}

void sub_1D12B94FC()
{
  if (!qword_1EC609A28)
  {
    v0 = sub_1D138F6DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609A28);
    }
  }
}

void sub_1D12B955C()
{
  if (!qword_1EC6099C0)
  {
    sub_1D106F934(255, &qword_1EC609988);
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6099C0);
    }
  }
}

uint64_t sub_1D12B95C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D12B962C()
{
  if (!qword_1EC6099D0)
  {
    sub_1D106F934(255, &qword_1EE06B730);
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6099D0);
    }
  }
}

unint64_t sub_1D12B9694()
{
  result = qword_1EC60EC60;
  if (!qword_1EC60EC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60EC60);
  }

  return result;
}

uint64_t sub_1D12B96E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D10EC930;

  return sub_1D12B81F0(a1, v4, v5, v6, v7, v1 + 48);
}

uint64_t sub_1D12B97AC(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D108077C;

  return sub_1D12B8C58(a1, a2, v6);
}

void sub_1D12B9874(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D12B98C8()
{
  if (!qword_1EC60EC68)
  {
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EC68);
    }
  }
}

id NSAttributedString.init(leadingImage:text:font:displayScale:imageTintColor:textColor:adjustsImageSizeForAccessibilityContentSizeCategory:)(void *a1, double a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, char a8)
{
  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v15 = sub_1D139012C();

  v16 = [v14 initWithLeadingImage:a1 text:v15 font:a5 displayScale:a6 imageTintColor:a7 textColor:a8 & 1 adjustsImageSizeForAccessibilityContentSizeCategory:a2];

  return v16;
}

id NSAttributedString.init(image:font:displayScale:tintColor:adjustsImageSizeForAccessibilityContentSizeCategory:)(void *a1, void *a2, void *a3, char a4, double a5)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:a1 font:a2 displayScale:a3 tintColor:a4 & 1 adjustsImageSizeForAccessibilityContentSizeCategory:a5];

  return v8;
}

id sub_1D12B9A80(double a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v13 = sub_1D139016C();
  v15 = v14;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  return _sSo18NSAttributedStringC15HealthRecordsUIE12leadingImage4text4font12displayScale14imageTintColor0hN007adjustsg27SizeForAccessibilityContentP8CategoryABSo7UIImageC_SSSo6UIFontC12CoreGraphics7CGFloatVSo7UIColorCSgASSbtcfc_0(v16, v13, v15, v17, a7, a8, a1);
}

id NSAttributedString.init(image:font:displayScale:tintColor:adjustsImageSizeForAccessibilityContentSizeCategory:)(void *a1, void *a2, void *a3, char a4)
{
  v31 = a3;
  v7 = sub_1D139160C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() textAttachmentWithImage_];
  [v11 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  [a2 descender];
  v12 = *(v8 + 104);
  v12(v10, *MEMORY[0x1E69E7048], v7);
  sub_1D138D86C();
  v14 = v13;
  sub_1D138D86C();
  v16 = v15;
  v17 = *(v8 + 8);
  v17(v10, v7);
  [a1 size];
  [a1 size];
  [a2 lineHeight];
  [a2 lineHeight];
  v12(v10, *MEMORY[0x1E69E7040], v7);
  sub_1D138D86C();
  v19 = v18;
  sub_1D138D86C();
  v21 = v20;
  v17(v10, v7);
  v22 = v31;
  [v11 setBounds_];
  if (v22)
  {
    sub_1D106F934(0, &qword_1EC60C410);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = v22;
    v25 = [ObjCClassFromMetadata attributedStringWithAttachment_];
    v26 = *MEMORY[0x1E69DB650];
    v27 = v24;
    [v25 addAttribute:v26 value:v27 range:{0, objc_msgSend(v25, sel_length)}];

    v28 = [v32 initWithAttributedString_];
    v29 = a2;
    a1 = v27;
    a2 = v27;
  }

  else
  {
    v29 = [objc_opt_self() attributedStringWithAttachment_];
    v28 = [v32 initWithAttributedString_];
  }

  return v28;
}

id sub_1D12B9E9C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, char a6)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  return NSAttributedString.init(image:font:displayScale:tintColor:adjustsImageSizeForAccessibilityContentSizeCategory:)(v9, v10, a5, a6);
}

id sub_1D12B9F14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v9 = sub_1D139016C();
  v11 = v10;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = _sSo18NSAttributedStringC15HealthRecordsUIE010attributedB17WithLeadingSymbol4text0J5Color6symbol0lK015useLargeSpacingABSS_So7UIColorCSgSo7UIImageCSgALSbtFZ_0(v9, v11, a4, a5, a6);

  return v15;
}

id _sSo18NSAttributedStringC15HealthRecordsUIE010attributedB17WithLeadingSymbol4text0J5Color6symbol0lK015useLargeSpacingABSS_So7UIColorCSgSo7UIImageCSgALSbtFZ_0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (!a4)
  {
    v28 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v29 = sub_1D139012C();
    v30 = [v28 initWithString_];

    return v30;
  }

  v37 = a4;
  v9 = [v37 imageWithRenderingMode_];
  v10 = [objc_opt_self() textAttachmentWithImage_];

  sub_1D106F934(0, &qword_1EC60C410);
  v36 = v10;
  v11 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
  v12 = MEMORY[0x1E69DB650];
  if (!a3)
  {

    MEMORY[0x1D3885C10](a1, a2);

    v32 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v33 = sub_1D139012C();

    v20 = [v32 initWithString_];

    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v34 = v20;
    goto LABEL_8;
  }

  sub_1D12BA6C4(0, &qword_1EC60C418, sub_1D118A210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E700;
  v14 = *v12;
  *(inited + 32) = *v12;
  *(inited + 40) = a3;
  v35 = a3;
  v15 = v14;
  v16 = sub_1D109D974(inited);
  swift_setDeallocating();
  sub_1D12BA718(inited + 32, sub_1D118A210);

  MEMORY[0x1D3885C10](a1, a2);

  sub_1D10988B8(v16);

  v17 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v18 = sub_1D139012C();

  type metadata accessor for Key(0);
  sub_1D106F8DC();
  v19 = sub_1D138FFEC();

  v20 = [v17 initWithString:v18 attributes:v19];

  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1D12BA6C4(0, &qword_1EC60F520, sub_1D106F814);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1D139E700;
  v22 = *MEMORY[0x1E69DB650];
  *(v21 + 32) = *MEMORY[0x1E69DB650];
  *(v21 + 64) = sub_1D106F934(0, &qword_1EE06B6E0);
  *(v21 + 40) = a5;
  v23 = a5;
  v24 = v20;
  v25 = v23;
  v26 = v22;
  sub_1D109B2B4(v21);
  swift_setDeallocating();
  sub_1D12BA718(v21 + 32, sub_1D106F814);
  type metadata accessor for Key(0);
  sub_1D106F8DC();
  v27 = sub_1D138FFEC();

  [v11 addAttributes:v27 range:{0, objc_msgSend(v11, sel_length)}];

LABEL_8:
  [v11 appendAttributedString_];

  return v11;
}

id _sSo18NSAttributedStringC15HealthRecordsUIE12leadingImage4text4font12displayScale14imageTintColor0hN007adjustsg27SizeForAccessibilityContentP8CategoryABSo7UIImageC_SSSo6UIFontC12CoreGraphics7CGFloatVSo7UIColorCSgASSbtcfc_0(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, double a7)
{
  sub_1D106F934(0, &qword_1EC60C410);
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:a1 font:a4 displayScale:a5 tintColor:1 adjustsImageSizeForAccessibilityContentSizeCategory:a7];
  MEMORY[0x1D3885C10](a2, a3);

  sub_1D12BA6C4(0, &qword_1EC60F520, sub_1D106F814);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E700;
  v16 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  *(inited + 64) = sub_1D106F934(0, &qword_1EE06B6E0);
  *(inited + 40) = a6;
  v17 = v16;
  v18 = a6;
  sub_1D109B2B4(inited);
  swift_setDeallocating();
  sub_1D12BA718(inited + 32, sub_1D106F814);
  v19 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v20 = sub_1D139012C();

  type metadata accessor for Key(0);
  sub_1D106F8DC();
  v21 = sub_1D138FFEC();

  v22 = [v19 initWithString:v20 attributes:v21];

  [v14 appendAttributedString_];
  v23 = *MEMORY[0x1E69DB648];
  v24 = a4;
  [v14 addAttribute:v23 value:v24 range:{0, objc_msgSend(v14, sel_length)}];

  v25 = [v28 initWithAttributedString_];
  return v25;
}

void sub_1D12BA6C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D13915DC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D12BA718(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

CGSize __swiftcall CGSize.inset(by:)(UIEdgeInsets by)
{
  v3 = v1 - by.left - by.right;
  v4 = v2 - by.top - by.bottom;
  v5 = v3;
  result.height = v4;
  result.width = v5;
  return result;
}

double CGSize.rounded(_:toScaleOf:)(int a1, id a2)
{
  [a2 displayScale];
  sub_1D138D86C();
  v4 = v3;
  [a2 displayScale];
  sub_1D138D86C();
  return v4;
}

{
  v3 = [a2 traitCollection];
  sub_1D138D87C();
  v5 = v4;

  v6 = [a2 traitCollection];
  sub_1D138D87C();

  return v5;
}

double CGSize.rounded(_:toScale:)()
{
  sub_1D138D86C();
  v1 = v0;
  sub_1D138D86C();
  return v1;
}

CGSize __swiftcall CGSize.outset(by:)(NSDirectionalEdgeInsets by)
{
  v3 = by.leading + v1 + by.trailing;
  v4 = by.top + v2 + by.bottom;
  v5 = v3;
  result.height = v4;
  result.width = v5;
  return result;
}

double CGSize.maxDimension.getter(double result, double a2)
{
  if (result <= a2)
  {
    return a2;
  }

  return result;
}

CGSize __swiftcall CGSize.scaled(for:)(UIFont a1)
{
  v2 = v1;
  [(objc_class *)a1.super.isa _scaledValueForValue:?];
  v5 = v4;
  [(objc_class *)a1.super.isa _scaledValueForValue:v2];
  v7 = v6;
  v8 = v5;
  result.height = v7;
  result.width = v8;
  return result;
}

uint64_t TransientConceptType.hashValue.getter()
{
  v1 = *v0;
  sub_1D139177C();
  MEMORY[0x1D38870E0](v1);
  return sub_1D13917CC();
}

uint64_t TransientConceptForChart.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TransientConceptForChart.displayName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void __swiftcall TransientConceptForChart.init(conceptIdentifier:conceptType:displayName:chartsBloodPressure:hidesOutOfRangeFilter:)(HealthRecordsUI::TransientConceptForChart *__return_ptr retstr, Swift::String conceptIdentifier, HealthRecordsUI::TransientConceptType conceptType, Swift::String displayName, Swift::Bool chartsBloodPressure, Swift::Bool hidesOutOfRangeFilter)
{
  v6 = *conceptType;
  retstr->conceptIdentifier = conceptIdentifier;
  retstr->conceptType = v6;
  retstr->displayName = displayName;
  retstr->chartsBloodPressure = chartsBloodPressure;
  retstr->hidesOutOfRangeFilter = hidesOutOfRangeFilter;
}

uint64_t TransientConceptForChart.hash(into:)()
{
  v1 = *(v0 + 16);
  sub_1D139027C();
  MEMORY[0x1D38870E0](v1);
  sub_1D139027C();
  sub_1D139179C();
  return sub_1D139179C();
}

uint64_t TransientConceptForChart.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1D139177C();
  sub_1D139027C();
  MEMORY[0x1D38870E0](v1);
  sub_1D139027C();
  sub_1D139179C();
  sub_1D139179C();
  return sub_1D13917CC();
}

uint64_t sub_1D12BAC28()
{
  v1 = *(v0 + 16);
  sub_1D139027C();
  MEMORY[0x1D38870E0](v1);
  sub_1D139027C();
  sub_1D139179C();
  return sub_1D139179C();
}

uint64_t sub_1D12BACA4()
{
  v1 = *(v0 + 16);
  sub_1D139177C();
  sub_1D139027C();
  MEMORY[0x1D38870E0](v1);
  sub_1D139027C();
  sub_1D139179C();
  sub_1D139179C();
  return sub_1D13917CC();
}

uint64_t _s15HealthRecordsUI24TransientConceptForChartV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 41);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v7)
    {
      return 0;
    }
  }

  else
  {
    v12 = sub_1D139162C();
    result = 0;
    if ((v12 & 1) == 0 || v2 != v7)
    {
      return result;
    }
  }

  if (v3 == v8 && v4 == v9)
  {
    if (v5 != v10)
    {
      return 0;
    }

    return v6 ^ v11 ^ 1u;
  }

  v14 = sub_1D139162C();
  result = 0;
  if ((v14 & 1) != 0 && ((v5 ^ v10) & 1) == 0)
  {
    return v6 ^ v11 ^ 1u;
  }

  return result;
}

unint64_t sub_1D12BAE4C()
{
  result = qword_1EC60EC70;
  if (!qword_1EC60EC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60EC70);
  }

  return result;
}

unint64_t sub_1D12BAEA4()
{
  result = qword_1EC60EC78;
  if (!qword_1EC60EC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60EC78);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D12BAF6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_1D12BAFB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1D12BB0C4(uint64_t *a1, id *a2, uint64_t a3, SEL *a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v10 = v4;
    v11 = [objc_allocWithZone(sub_1D138DFAC()) initWithFrame_];
    [v11 setNumberOfLines_];
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    v12 = *a2;
    sub_1D138DF9C();
    sub_1D138DF8C();
    v13 = [objc_opt_self() *a4];
    [v11 setTextColor_];

    v14 = *(v10 + v5);
    *(v10 + v5) = v11;
    v7 = v11;

    v6 = 0;
  }

  v15 = v6;
  return v7;
}

id sub_1D12BB1DC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView_item;
  swift_beginAccess();
  sub_1D10A71C0(v0 + v2, v15);
  if (!v15[3])
  {
    sub_1D10A72B8(v15);
    goto LABEL_10;
  }

  sub_1D10A7254();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_1D13911EC();

    v15[0] = 0xD000000000000026;
    v15[1] = 0x80000001D13CA400;
    sub_1D10A71C0(v0 + v2, v13);
    sub_1D10D14A8();
    v12 = sub_1D139020C();
    MEMORY[0x1D3885C10](v12);

    result = sub_1D13913BC();
    __break(1u);
    return result;
  }

  v3 = sub_1D12BB064();
  v4 = v3;
  if (v14 == 1)
  {
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v5 = sub_1D139012C();

    [v4 setText_];

    v6 = 1;
    v4 = v5;
  }

  else
  {
    [v3 setText_];
    v6 = 0;
  }

  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView_needsToLayoutFirstHeader) = v6;
  v7 = sub_1D12BB084();
  v8 = sub_1D139012C();
  [v7 setText_];

  v9 = sub_1D12BB0A4();
  v10 = sub_1D139012C();

  [v9 setText_];

  return sub_1D12BB814();
}

id sub_1D12BB4BC(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView_needsToLayoutFirstHeader] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView____lazy_storage___recordsHeadingLabel] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView____lazy_storage___subtitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView_customConstraints] = MEMORY[0x1E69E7CC0];
  v9 = &v4[OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView_item];
  v10 = type metadata accessor for RecordTitleWithSubtitleView();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v16.receiver = v4;
  v16.super_class = v10;
  v11 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = sub_1D12BB064();
  [v11 addSubview_];

  v13 = sub_1D12BB084();
  [v11 addSubview_];

  v14 = sub_1D12BB0A4();
  [v11 addSubview_];

  sub_1D12BB814();
  return v11;
}

void sub_1D12BB6D8(void *a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for RecordTitleWithSubtitleView();
  objc_msgSendSuper2(&v7, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = v3;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v3 || (sub_1D106F934(0, &qword_1EE06B758), v5 = a1, v6 = sub_1D1390D8C(), v5, v4, (v6 & 1) == 0))
  {
LABEL_7:
    sub_1D12BB814();
  }
}

id sub_1D12BB814()
{
  v1 = objc_opt_self();
  v2 = OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView_customConstraints;
  sub_1D106F934(0, &qword_1EC609690);

  v3 = sub_1D139044C();

  [v1 deactivateConstraints_];

  *&v0[v2] = sub_1D12BB914();

  v4 = sub_1D139044C();

  [v1 activateConstraints_];

  return [v0 setNeedsLayout];
}

uint64_t sub_1D12BB914()
{
  v1 = v0[OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView_needsToLayoutFirstHeader];
  sub_1D106F424();
  v2 = &selRef_hasSectionLocalizedContent;
  if (v1 == 1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D139FBC0;
    v4 = sub_1D12BB064();
    v5 = [v4 topAnchor];

    v6 = [v0 &selRef_setTitle_forState_];
    v7 = [v5 constraintEqualToAnchor:v6 constant:10.0];

    *(v3 + 32) = v7;
    v8 = OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView____lazy_storage___recordsHeadingLabel;
    v9 = [*&v0[OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView____lazy_storage___recordsHeadingLabel] leadingAnchor];
    v10 = [v0 leadingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10 constant:2.0];

    *(v3 + 40) = v11;
    v12 = [v0 trailingAnchor];
    v13 = [*&v0[v8] trailingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:2.0];

    *(v3 + 48) = v14;
    v15 = sub_1D12BB084();
    v16 = [v15 &selRef_setTitle_forState_];

    v17 = [*&v0[v8] bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:10.0];

    *(v3 + 56) = v18;
    v19 = OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView____lazy_storage___titleLabel;
    v20 = [*&v0[OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView____lazy_storage___titleLabel] leadingAnchor];
    v21 = [*&v0[v8] leadingAnchor];
    v22 = [v20 constraintEqualToAnchor_];

    *(v3 + 64) = v22;
    v23 = [*&v0[v19] trailingAnchor];
    v24 = [*&v0[v8] trailingAnchor];
    v25 = [v23 constraintEqualToAnchor_];

    *(v3 + 72) = v25;
    v26 = sub_1D12BB0A4();
    v27 = [v26 topAnchor];

    v28 = [*&v0[v19] bottomAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:4.0];

    *(v3 + 80) = v29;
    v30 = &v0[OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView____lazy_storage___subtitleLabel];
    v31 = [*&v0[OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView____lazy_storage___subtitleLabel] leadingAnchor];
    v32 = [*&v0[v19] leadingAnchor];
    v2 = &selRef_hasSectionLocalizedContent;
    v33 = [v31 constraintEqualToAnchor_];

    *(v3 + 88) = v33;
    v34 = [*v30 trailingAnchor];
    v35 = [*&v0[v19] trailingAnchor];
    v36 = [v34 constraintLessThanOrEqualToAnchor_];

    *(v3 + 96) = v36;
    v37 = (v3 + 104);
  }

  else
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D13A0750;
    v38 = sub_1D12BB084();
    v39 = [v38 topAnchor];

    v40 = [v0 topAnchor];
    v41 = [v39 constraintEqualToAnchor:v40 constant:10.0];

    *(v3 + 32) = v41;
    v42 = OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView____lazy_storage___titleLabel;
    v43 = [*&v0[OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView____lazy_storage___titleLabel] leadingAnchor];
    v44 = [v0 leadingAnchor];
    v45 = [v43 constraintEqualToAnchor:v44 constant:2.0];

    *(v3 + 40) = v45;
    v46 = [v0 trailingAnchor];
    v47 = [*&v0[v42] trailingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47 constant:2.0];

    *(v3 + 48) = v48;
    v49 = sub_1D12BB0A4();
    v50 = [v49 topAnchor];

    v51 = [*&v0[v42] bottomAnchor];
    v52 = [v50 constraintEqualToAnchor:v51 constant:4.0];

    *(v3 + 56) = v52;
    v30 = &v0[OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView____lazy_storage___subtitleLabel];
    v53 = [*&v0[OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView____lazy_storage___subtitleLabel] leadingAnchor];
    v54 = [*&v0[v42] leadingAnchor];
    v55 = [v53 constraintEqualToAnchor_];

    *(v3 + 64) = v55;
    v56 = [*v30 trailingAnchor];
    v57 = [*&v0[v42] trailingAnchor];
    v58 = [v56 constraintLessThanOrEqualToAnchor_];

    *(v3 + 72) = v58;
    v37 = (v3 + 80);
  }

  v59 = [v0 bottomAnchor];
  v60 = [*v30 bottomAnchor];
  v61 = [v59 v2[439]];

  *v37 = v61;
  return v3;
}

id sub_1D12BC004()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecordTitleWithSubtitleView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D12BC0D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView_item;
  swift_beginAccess();
  return sub_1D10A71C0(v3 + v4, a1);
}

uint64_t sub_1D12BC134(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI27RecordTitleWithSubtitleView_item;
  swift_beginAccess();
  sub_1D10B1300(a1, v3 + v4);
  swift_endAccess();
  sub_1D12BB1DC();
  return sub_1D10A72B8(a1);
}

id (*sub_1D12BC1A4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_1D12BC20C;
}

id sub_1D12BC20C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D12BB1DC();
  }

  return result;
}

uint64_t sub_1D12BC25C(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1D1247E34(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_1D12C48F8(v10, a2, a3);
  return sub_1D13912BC();
}

uint64_t sub_1D12BC2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v45 = a4;
  sub_1D12C7424();
  v44 = v7;
  v42 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  sub_1D12C7344();
  v41 = v12;
  v40 = *(v12 - 8);
  v13 = v40;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  sub_1D138FB2C();
  v52 = sub_1D138FCDC();
  v53 = v19;
  v54 = v20 & 1;
  v55 = v21;
  v49 = a1;
  v50 = a2;
  v51 = a3;
  sub_1D12C749C(0, &qword_1EC60ED50);
  sub_1D12C75B0(&qword_1EC60ED80, &qword_1EC60ED50, &type metadata for RegistryList, sub_1D12C7508);
  v39 = v18;
  sub_1D138FE6C();
  sub_1D138FB2C();
  v52 = sub_1D138FCDC();
  v53 = v22;
  v54 = v23 & 1;
  v55 = v24;
  v46 = a1;
  v47 = a2;
  v48 = a3;
  sub_1D12C749C(0, &qword_1EC60ED70);
  sub_1D12C75B0(&qword_1EC60ED98, &qword_1EC60ED70, &type metadata for SandboxView, sub_1D12C7660);
  v37 = v11;
  sub_1D138FE6C();
  v25 = *(v13 + 16);
  v38 = v15;
  v26 = v41;
  v25(v15, v18, v41);
  v28 = v42;
  v27 = v43;
  v29 = *(v42 + 16);
  v30 = v44;
  v29(v43, v11, v44);
  v31 = v45;
  v25(v45, v15, v26);
  sub_1D12C81D8(0, &qword_1EC60ED40, sub_1D12C7344, sub_1D12C7424);
  v29(&v31[*(v32 + 48)], v27, v30);
  v33 = *(v28 + 8);
  v33(v37, v30);
  v34 = *(v40 + 8);
  v34(v39, v26);
  v33(v27, v30);
  return (v34)(v38, v26);
}

uint64_t sub_1D12BC79C@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  type metadata accessor for EntriesDataSource(0);
  sub_1D12C755C(&qword_1EC60DA60, type metadata accessor for EntriesDataSource);
  v4 = sub_1D138FA2C();
  v6 = v5;
  v7 = sub_1D138F66C();
  *a2 = v4;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = a1;
}

uint64_t sub_1D12BC850@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  type metadata accessor for EntriesDataSource(0);
  sub_1D12C755C(&qword_1EC60DA60, type metadata accessor for EntriesDataSource);
  v4 = sub_1D138FA2C();
  v6 = v5;
  v7 = sub_1D138F66C();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = sub_1D12BCC64;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = v7;
  *(a2 + 48) = a1;
}

uint64_t sub_1D12BC91C()
{
  sub_1D12C7308(0);
  sub_1D12C755C(&qword_1EC60ED78, sub_1D12C7308);
  return sub_1D138FC3C();
}

uint64_t sub_1D12BC9BC(uint64_t a1)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1D138F7BC();

    MEMORY[0x1EEE9AC00](v1);
    sub_1D12C7918();
    sub_1D12C8A98(&qword_1EC60EDE0, sub_1D12C7918, sub_1D12C7B84);
    sub_1D138FC5C();
  }

  else
  {
    type metadata accessor for EntriesDataSource(0);
    sub_1D12C755C(&qword_1EC60DA60, type metadata accessor for EntriesDataSource);
    result = sub_1D138FA1C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D12BCB60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D138F7BC();

  return v1;
}

uint64_t sub_1D12BCBD4(void **a1)
{
  v1 = *a1;
  sub_1D12C7A58();
  sub_1D12C7AAC();
  v2 = v1;
  return sub_1D138F9CC();
}

uint64_t sub_1D12BCC64()
{
  type metadata accessor for SandboxViewModel(0);
  swift_allocObject();
  return sub_1D12C0690();
}

uint64_t sub_1D12BCC9C@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  sub_1D12C7C54();
  v35 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2 - 8);
  v36 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v33 = v32 - v5;
  sub_1D12C7D38();
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v34 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v32 - v10;
  v32[2] = type metadata accessor for SandboxViewModel(0);
  v32[1] = sub_1D12C755C(&qword_1EC60EE38, type metadata accessor for SandboxViewModel);
  sub_1D138F96C();
  swift_getKeyPath();
  sub_1D138F9FC();

  v42 = v44;
  v43 = v45;
  sub_1D138FB2C();
  *&v39 = sub_1D138FCDC();
  *(&v39 + 1) = v12;
  v40 = v13 & 1;
  v41 = v14;
  v38 = v1;
  sub_1D106F934(0, &qword_1EC60B040);
  sub_1D12C7E6C();
  sub_1D12C7BF4(&qword_1EC60EE28);
  sub_1D12C7F5C();
  v32[0] = v11;
  sub_1D138FE0C();
  v39 = *v1;
  v15 = swift_allocObject();
  v16 = v1[1];
  *(v15 + 16) = *v1;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(v1 + 32);
  v17 = &v11[*(v7 + 44)];
  sub_1D138F99C();
  sub_1D12C8170(&v39, &v44, sub_1D12C8070);
  sub_1D12C8104();
  sub_1D13905BC();
  *v17 = &unk_1D13AE788;
  *(v17 + 1) = v15;
  sub_1D138FB2C();
  v18 = swift_allocObject();
  v19 = v1[1];
  *(v18 + 16) = *v1;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(v1 + 32);
  sub_1D12C8170(&v39, &v44, sub_1D12C8070);
  sub_1D12C8104();
  v20 = v33;
  sub_1D138FDDC();
  sub_1D138F95C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D138F7BC();

  v21 = v44;
  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  v24 = v20;
  v25 = &v20[*(v35 + 44)];
  *v25 = KeyPath;
  v25[1] = sub_1D12C8158;
  v25[2] = v23;
  v26 = v32[0];
  v27 = v34;
  sub_1D12C8170(v32[0], v34, sub_1D12C7D38);
  v28 = v36;
  sub_1D12C8170(v24, v36, sub_1D12C7C54);
  v29 = v37;
  sub_1D12C8170(v27, v37, sub_1D12C7D38);
  sub_1D12C81D8(0, &qword_1EC60EE48, sub_1D12C7D38, sub_1D12C7C54);
  sub_1D12C8170(v28, v29 + *(v30 + 48), sub_1D12C7C54);
  sub_1D12C8254(v24, sub_1D12C7C54);
  sub_1D12C8254(v26, sub_1D12C7D38);
  sub_1D12C8254(v28, sub_1D12C7C54);
  return sub_1D12C8254(v27, sub_1D12C7D38);
}

uint64_t sub_1D12BD284@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D138F7BC();

  *a1 = v3;
  return result;
}

uint64_t sub_1D12BD304(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v2 = v1;
  return sub_1D138F7CC();
}

uint64_t sub_1D12BD37C()
{
  type metadata accessor for SandboxViewModel(0);
  sub_1D12C755C(&qword_1EC60EE38, type metadata accessor for SandboxViewModel);
  sub_1D138F95C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D138F7BC();

  swift_getKeyPath();
  sub_1D12C4304(0, &qword_1EC60B048, &qword_1EC60B040, 0x1E696C308, MEMORY[0x1E69E62F8]);
  sub_1D12C7B00();
  sub_1D12C7BF4(&qword_1EC60EE28);
  return sub_1D138FE3C();
}

uint64_t sub_1D12BD534@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D138FB1C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = *a1;
  sub_1D138FB0C();
  sub_1D138FAFC();
  v6 = [v5 identifier];
  sub_1D139016C();

  sub_1D138FAEC();

  sub_1D138FAFC();
  [v5 schemaVersion];
  sub_1D138FADC();
  sub_1D138FAFC();
  [v5 availableVersion];
  sub_1D138FADC();
  sub_1D138FAFC();
  sub_1D138FB3C();
  result = sub_1D138FCDC();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_1D12BD708(uint64_t a1)
{
  v1[4] = a1;
  sub_1D13905AC();
  v1[5] = sub_1D139059C();
  v3 = sub_1D139055C();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D12BD7A0, v3, v2);
}

uint64_t sub_1D12BD7A0()
{
  v1 = *(v0 + 32);
  *(v0 + 64) = *(v1 + 16);
  *(v0 + 72) = *(v1 + 24);
  *(v0 + 112) = *(v1 + 32);
  *(v0 + 80) = type metadata accessor for SandboxViewModel(0);
  *(v0 + 88) = sub_1D12C755C(&qword_1EC60EE38, type metadata accessor for SandboxViewModel);
  *(v0 + 96) = sub_1D138F95C();
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_1D12BD8B8;

  return sub_1D12BE4A4();
}

uint64_t sub_1D12BD8B8()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1D12BD9FC, v3, v2);
}

uint64_t sub_1D12BD9FC()
{

  sub_1D138F95C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D138F7BC();

  v1 = v0[2];
  if (!v1)
  {
    goto LABEL_10;
  }

  if (v1 >> 62)
  {
    if (sub_1D13910DC())
    {
      goto LABEL_4;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_4:
  result = sub_1D138F95C();
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1D3886B70](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

  swift_getKeyPath();
  swift_getKeyPath();
  v0[3] = v4;
  sub_1D138F7CC();
LABEL_10:
  v5 = v0[1];

  return v5();
}

void sub_1D12BDB98(__int128 *a1)
{
  sub_1D12C436C(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12[-v3];
  type metadata accessor for SandboxViewModel(0);
  sub_1D12C755C(&qword_1EC60EE38, type metadata accessor for SandboxViewModel);
  sub_1D138F95C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D138F7BC();

  v5 = v13;
  v6 = sub_1D13905DC();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v13 = *a1;
  sub_1D13905AC();
  sub_1D12C8170(&v13, v12, sub_1D12C8070);
  sub_1D12C8104();
  v7 = v5;
  v8 = sub_1D139059C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  v11 = a1[1];
  *(v9 + 32) = *a1;
  *(v9 + 48) = v11;
  *(v9 + 64) = *(a1 + 32);
  *(v9 + 72) = v7;
  sub_1D107877C(0, 0, v4, &unk_1D13AE7C8, v9);
}

uint64_t sub_1D12BDDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D12C436C(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v5[4] = swift_task_alloc();
  v5[5] = sub_1D13905AC();
  v5[6] = sub_1D139059C();
  v7 = sub_1D139055C();
  v5[7] = v7;
  v5[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D12BDEF0, v7, v6);
}

uint64_t sub_1D12BDEF0()
{
  type metadata accessor for SandboxViewModel(0);
  sub_1D12C755C(&qword_1EC60EE38, type metadata accessor for SandboxViewModel);
  v0[9] = sub_1D138F95C();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1D12BDFF8;
  v2 = v0[3];

  return sub_1D12BFB20(v2);
}

uint64_t sub_1D12BDFF8()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1D12BE13C, v3, v2);
}

uint64_t sub_1D12BE13C()
{
  v1 = v0[2];

  v2 = *v1;
  if (*v1)
  {
    v3 = v0[4];
    v4 = sub_1D13905DC();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    swift_retain_n();
    v5 = sub_1D139059C();
    v6 = swift_allocObject();
    v7 = MEMORY[0x1E69E85E0];
    v6[2] = v5;
    v6[3] = v7;
    v6[4] = v2;
    sub_1D107877C(0, 0, v3, &unk_1D13AE7D0, v6);

    v8 = v0[1];

    return v8();
  }

  else
  {
    type metadata accessor for EntriesDataSource(0);
    sub_1D12C755C(&qword_1EC60DA60, type metadata accessor for EntriesDataSource);

    return sub_1D138FA1C();
  }
}

uint64_t sub_1D12BE2EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D138F7BC();

  return v1;
}

uint64_t sub_1D12BE3C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D138F7BC();

  return v1;
}

uint64_t sub_1D12BE430()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D138F7BC();

  return v1;
}

uint64_t sub_1D12BE4A4()
{
  v1[10] = v0;
  v2 = sub_1D138F0BC();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v3 = sub_1D138D57C();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v4 = sub_1D138CF3C();
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();
  sub_1D13901DC();
  v1[20] = swift_task_alloc();
  sub_1D1219C30();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v5 = sub_1D138D39C();
  v1[24] = v5;
  v1[25] = *(v5 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  sub_1D13905AC();
  v1[28] = sub_1D139059C();
  v7 = sub_1D139055C();
  v1[29] = v7;
  v1[30] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D12BE728, v7, v6);
}

uint64_t sub_1D12BE728()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  sub_1D138D38C();
  v4 = *(v2 + 48);
  v0[31] = v4;
  v0[32] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v3, 1, v1);
  if (v5 == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = v0[27];
    v8 = v0[24];
    v9 = v0[25];
    v10 = v0[23];
    v11 = *(v9 + 32);
    v0[33] = v11;
    v0[34] = (v9 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v11(v7, v10, v8);
    v12 = [objc_opt_self() ephemeralSessionConfiguration];
    v0[35] = [objc_opt_self() sessionWithConfiguration_];

    v13 = swift_task_alloc();
    v0[36] = v13;
    *v13 = v0;
    v13[1] = sub_1D12BE8A8;
    v5 = v0[27];
    v6 = 0;
  }

  return MEMORY[0x1EEDC6268](v5, v6);
}

uint64_t sub_1D12BE8A8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v6[37] = a1;
  v6[38] = a2;
  v6[39] = v3;

  if (v3)
  {
    v7 = v6[29];
    v8 = v6[30];
    v9 = sub_1D12BF5E4;
  }

  else
  {

    v7 = v6[29];
    v8 = v6[30];
    v9 = sub_1D12BE9D4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

void sub_1D12BE9D4()
{
  v115 = v0;
  sub_1D13901BC();
  v1 = sub_1D139018C();
  if (!v2)
  {
    goto LABEL_117;
  }

  v3 = v1;
  v4 = v2;
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 136);

  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  sub_1D138CF2C();
  sub_1D10940C8();
  v8 = sub_1D1390F6C();
  (*(v6 + 8))(v5, v7);
  v9 = v8;

  v111 = *(v8 + 16);
  v113 = MEMORY[0x1E69E7CC0];
  if (!v111)
  {

LABEL_101:
    v88 = *(v0 + 312);

    v114[0] = sub_1D11132A4(v89);
    sub_1D12BC25C(v114, sub_1D12C4C88, sub_1D12C4A1C);
    if (v88)
    {
    }

    else
    {
      v90 = *(v0 + 296);
      v91 = *(v0 + 304);
      v92 = *(v0 + 280);
      v93 = *(v0 + 200);
      v110 = *(v0 + 192);
      v112 = *(v0 + 216);

      v94 = v114[0];
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 72) = v94;

      sub_1D138F7CC();
      sub_1D1083DAC(v90, v91);

      (*(v93 + 8))(v112, v110);

      v95 = *(v0 + 8);

      v95();
    }

    return;
  }

  v10 = 0;
  v11 = *(v0 + 200);
  v109 = v8 + 32;
  v97 = (v11 + 56);
  v98 = (v11 + 16);
  v99 = (v11 + 8);
  v96 = (*(v0 + 120) + 8);
  v108 = v8;
  while (v10 < *(v9 + 16))
  {
    v12 = (v109 + 16 * v10);
    v13 = *v12;
    v14 = v12[1];

    if (sub_1D139033C())
    {
      v15 = sub_1D12C706C(1);
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v13 = MEMORY[0x1D3885B80](v15, v17, v19, v21);
      v14 = v22;
      v9 = v108;
    }

    *(v0 + 32) = v13;
    *(v0 + 40) = v14;
    *(v0 + 48) = 44;
    *(v0 + 56) = 0xE100000000000000;
    v23 = sub_1D1390F7C();

    if (v23[2] < 2uLL)
    {

      goto LABEL_5;
    }

    v24 = sub_1D139012C();

    if (v23[2] < 3uLL)
    {
      goto LABEL_107;
    }

    v25 = sub_1D139012C();

    v26 = v23[2];
    if (v26 < 5)
    {
      goto LABEL_108;
    }

    if (v26 == 5)
    {
      goto LABEL_109;
    }

    v28 = v23[6];
    v27 = v23[7];
    v29 = HIBYTE(v27) & 0xF;
    v30 = v28 & 0xFFFFFFFFFFFFLL;
    if ((v27 & 0x2000000000000000) != 0)
    {
      v31 = HIBYTE(v27) & 0xF;
    }

    else
    {
      v31 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (!v31)
    {

      goto LABEL_5;
    }

    if ((v27 & 0x1000000000000000) != 0)
    {

      v34 = sub_1D12C6850(v28, v27, 10);
      v54 = v53;

      if (v54)
      {
LABEL_75:

LABEL_83:
        v9 = v108;
        goto LABEL_5;
      }

      goto LABEL_78;
    }

    if ((v27 & 0x2000000000000000) != 0)
    {
      v114[0] = v23[6];
      v114[1] = v27 & 0xFFFFFFFFFFFFFFLL;
      if (v28 == 43)
      {
        if (!v29)
        {
          goto LABEL_113;
        }

        if (--v29)
        {
          v34 = 0;
          v44 = v114 + 1;
          while (1)
          {
            v45 = *v44 - 48;
            if (v45 > 9)
            {
              break;
            }

            v46 = 10 * v34;
            if ((v34 * 10) >> 64 != (10 * v34) >> 63)
            {
              break;
            }

            v34 = v46 + v45;
            if (__OFADD__(v46, v45))
            {
              break;
            }

            ++v44;
            if (!--v29)
            {
              goto LABEL_74;
            }
          }
        }
      }

      else if (v28 == 45)
      {
        if (!v29)
        {
          goto LABEL_112;
        }

        if (--v29)
        {
          v34 = 0;
          v38 = v114 + 1;
          while (1)
          {
            v39 = *v38 - 48;
            if (v39 > 9)
            {
              break;
            }

            v40 = 10 * v34;
            if ((v34 * 10) >> 64 != (10 * v34) >> 63)
            {
              break;
            }

            v34 = v40 - v39;
            if (__OFSUB__(v40, v39))
            {
              break;
            }

            ++v38;
            if (!--v29)
            {
              goto LABEL_74;
            }
          }
        }
      }

      else if (v29)
      {
        v34 = 0;
        v49 = v114;
        while (1)
        {
          v50 = *v49 - 48;
          if (v50 > 9)
          {
            break;
          }

          v51 = 10 * v34;
          if ((v34 * 10) >> 64 != (10 * v34) >> 63)
          {
            break;
          }

          v34 = v51 + v50;
          if (__OFADD__(v51, v50))
          {
            break;
          }

          v49 = (v49 + 1);
          if (!--v29)
          {
            goto LABEL_74;
          }
        }
      }
    }

    else
    {
      if ((v28 & 0x1000000000000000) != 0)
      {
        v32 = ((v27 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v32 = sub_1D139128C();
      }

      v33 = *v32;
      if (v33 == 43)
      {
        if (v30 < 1)
        {
          goto LABEL_114;
        }

        v29 = v30 - 1;
        if (v30 != 1)
        {
          v34 = 0;
          if (!v32)
          {
            goto LABEL_65;
          }

          v41 = v32 + 1;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v34;
            if ((v34 * 10) >> 64 != (10 * v34) >> 63)
            {
              break;
            }

            v34 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v29)
            {
              goto LABEL_74;
            }
          }
        }
      }

      else if (v33 == 45)
      {
        if (v30 < 1)
        {
          goto LABEL_115;
        }

        v29 = v30 - 1;
        if (v30 != 1)
        {
          v34 = 0;
          if (!v32)
          {
            goto LABEL_65;
          }

          v35 = v32 + 1;
          while (1)
          {
            v36 = *v35 - 48;
            if (v36 > 9)
            {
              break;
            }

            v37 = 10 * v34;
            if ((v34 * 10) >> 64 != (10 * v34) >> 63)
            {
              break;
            }

            v34 = v37 - v36;
            if (__OFSUB__(v37, v36))
            {
              break;
            }

            ++v35;
            if (!--v29)
            {
              goto LABEL_74;
            }
          }
        }
      }

      else if (v30)
      {
        v34 = 0;
        if (!v32)
        {
LABEL_65:
          LOBYTE(v29) = 0;
          goto LABEL_74;
        }

        while (1)
        {
          v47 = *v32 - 48;
          if (v47 > 9)
          {
            break;
          }

          v48 = 10 * v34;
          if ((v34 * 10) >> 64 != (10 * v34) >> 63)
          {
            break;
          }

          v34 = v48 + v47;
          if (__OFADD__(v48, v47))
          {
            break;
          }

          ++v32;
          if (!--v30)
          {
            goto LABEL_65;
          }
        }
      }
    }

    v34 = 0;
    LOBYTE(v29) = 1;
LABEL_74:
    v52 = v29;

    if (v52)
    {
      goto LABEL_75;
    }

LABEL_78:
    if (v23[2] < 4uLL)
    {
      goto LABEL_110;
    }

    v55 = v23[10];
    v56 = v23[11];

    v57 = sub_1D12BF820(v55, v56);
    if (v58)
    {
      goto LABEL_82;
    }

    if (v23[2] < 7uLL)
    {
      goto LABEL_111;
    }

    v59 = v57;
    v60 = v23[16];
    v61 = v23[17];

    v62 = sub_1D12BF820(v60, v61);
    if (v63)
    {
LABEL_82:

      goto LABEL_83;
    }

    if (v23[2] < 8uLL)
    {
      goto LABEL_116;
    }

    v100 = v62;
    v101 = v59;
    v104 = v24;
    v102 = *(v0 + 248);
    v64 = *(v0 + 192);
    v65 = *(v0 + 176);

    sub_1D138D38C();

    if (v102(v65, 1, v64) == 1)
    {
      v66 = *(v0 + 176);

      sub_1D12C8254(v66, sub_1D1219C30);
      v9 = v108;
    }

    else
    {
      v67 = *(v0 + 248);
      v68 = *(v0 + 208);
      v69 = *(v0 + 192);
      v70 = *(v0 + 168);
      (*(v0 + 264))(v68, *(v0 + 176), v69);
      (*v98)(v70, v68, v69);
      (*v97)(v70, 0, 1, v69);
      v105 = v104;
      v103 = v25;
      sub_1D138D56C();
      v106 = sub_1D139012C();

      v71 = sub_1D139012C();

      if (v67(v70, 1, v69) == 1)
      {
        v72 = 0;
      }

      else
      {
        v73 = *(v0 + 192);
        v74 = *(v0 + 168);
        v72 = sub_1D138D30C();
        (*v99)(v74, v73);
      }

      v75 = *(v0 + 128);
      v107 = *(v0 + 112);
      v76 = objc_allocWithZone(MEMORY[0x1E696C308]);
      v77 = sub_1D138D4EC();
      v78 = [v76 initWithIdentifier:v105 schemaType:v103 schemaVersion:v101 availableVersion:v34 availableRegion:v106 availableLocale:v71 availableURL:v72 availableChecksum:0 availableSize:v100 date:v77];

      v79 = v78;
      (*v96)(v75, v107);
      v80 = [v78 identifier];
      v81 = sub_1D139016C();
      v83 = v82;

      if (v81 == 0x6E6F697473657551 && v83 == 0xEE0073657269616ELL)
      {

        v9 = v108;
      }

      else
      {
        v84 = sub_1D139162C();

        v9 = v108;
        if ((v84 & 1) == 0)
        {
          v85 = v79;
          MEMORY[0x1D3885D90]();
          if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D13904BC();
          }

          v86 = *(v0 + 208);
          v87 = *(v0 + 192);
          sub_1D13904FC();

          (*v99)(v86, v87);
          goto LABEL_5;
        }
      }

      (*v99)(*(v0 + 208), *(v0 + 192));
    }

LABEL_5:
    if (++v10 == v111)
    {

      goto LABEL_101;
    }
  }

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
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
}

uint64_t sub_1D12BF5E4()
{
  v1 = v0[39];
  v2 = v0[35];
  v3 = v0[27];
  v4 = v0[24];
  v5 = v0[25];

  (*(v5 + 8))(v3, v4);
  sub_1D138F06C();
  v6 = v1;
  v7 = sub_1D138F0AC();
  v8 = sub_1D13907FC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[39];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1D101F000, v7, v8, "Error fetching sandbox manifest: %@", v10, 0xCu);
    sub_1D10B8240(v11);
    MEMORY[0x1D38882F0](v11, -1, -1);
    MEMORY[0x1D38882F0](v10, -1, -1);
  }

  v14 = v0[39];
  v16 = v0[12];
  v15 = v0[13];
  v17 = v0[11];

  (*(v16 + 8))(v15, v17);
  swift_getKeyPath();
  swift_getKeyPath();
  v0[8] = v14;

  sub_1D138F7CC();

  v18 = v0[1];

  return v18();
}

uint64_t sub_1D12BF820(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1D139128C();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1D12C6850(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1D12BFB20(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_1D138F0BC();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_1D13905AC();
  v2[25] = sub_1D139059C();
  v5 = sub_1D139055C();
  v2[26] = v5;
  v2[27] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D12BFC2C, v5, v4);
}

uint64_t sub_1D12BFC2C()
{
  v27 = v0;
  v1 = [objc_opt_self() isMainThread];
  if (v1)
  {
    v2 = *(v0 + 144);
    sub_1D138F06C();
    v3 = v2;
    v4 = sub_1D138F0AC();
    v5 = sub_1D13907DC();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 192);
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    if (v6)
    {
      v10 = *(v0 + 144);
      v25 = *(v0 + 192);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26 = v12;
      *v11 = 136315138;
      v13 = [v10 identifier];
      v14 = sub_1D139016C();
      v16 = v15;

      v17 = sub_1D11DF718(v14, v16, &v26);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_1D101F000, v4, v5, "downloading and inserting %s entries", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1D38882F0](v12, -1, -1);
      MEMORY[0x1D38882F0](v11, -1, -1);

      v18 = *(v8 + 8);
      v18(v25, v9);
    }

    else
    {

      v18 = *(v8 + 8);
      v18(v7, v9);
    }

    *(v0 + 224) = v18;
    v19 = *(v0 + 144);
    v20 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    v21 = [objc_allocWithZone(MEMORY[0x1E69A30C8]) initWithHealthStore_];
    *(v0 + 232) = v21;

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 248) = 1;

    sub_1D138F7CC();
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1D12BFF3C;
    v22 = swift_continuation_init();
    sub_1D12C47E8();
    *(v0 + 136) = v23;
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1D131A144;
    *(v0 + 104) = &block_descriptor_58;
    *(v0 + 112) = v22;
    [v21 updateOntologyWithEntry:v19 completion:v0 + 80];
    v1 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1D12BFF3C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  v3 = *(v1 + 216);
  v4 = *(v1 + 208);
  if (v2)
  {
    v5 = sub_1D12C02B8;
  }

  else
  {
    v5 = sub_1D12C006C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D12C006C()
{
  v24 = v0;
  v1 = *(v0 + 144);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 250) = 0;

  sub_1D138F7CC();
  sub_1D138F06C();
  v2 = v1;
  v3 = sub_1D138F0AC();
  v4 = sub_1D139081C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 232);
  v7 = *(v0 + 224);
  v8 = *(v0 + 184);
  v9 = *(v0 + 160);
  if (v5)
  {
    v22 = *(v0 + 184);
    v10 = *(v0 + 144);
    v21 = *(v0 + 160);
    v11 = swift_slowAlloc();
    v20 = v7;
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    v13 = [v10 identifier];
    v14 = sub_1D139016C();
    v16 = v15;

    v17 = sub_1D11DF718(v14, v16, &v23);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_1D101F000, v3, v4, "successfully updated ontology with sandbox %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1D38882F0](v12, -1, -1);
    MEMORY[0x1D38882F0](v11, -1, -1);

    v20(v22, v21);
  }

  else
  {

    v7(v8, v9);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D12C02B8()
{
  v1 = *(v0 + 240);

  swift_willThrow();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 249) = 0;

  sub_1D138F7CC();
  sub_1D138F06C();
  v2 = v1;
  v3 = sub_1D138F0AC();
  v4 = sub_1D13907FC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 240);
  v7 = *(v0 + 232);
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D101F000, v3, v4, "error manually updating ontology: %@", v8, 0xCu);
    sub_1D10B8240(v9);
    MEMORY[0x1D38882F0](v9, -1, -1);
    MEMORY[0x1D38882F0](v8, -1, -1);
  }

  else
  {
  }

  (*(v0 + 224))(*(v0 + 176), *(v0 + 160));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D12C04B4()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUIP33_766154230A8DC4663A59392D072AE21B16SandboxViewModel__selectedEntry;
  sub_1D12C4304(0, &qword_1EC60ECE0, &qword_1EC60B040, 0x1E696C308, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15HealthRecordsUIP33_766154230A8DC4663A59392D072AE21B16SandboxViewModel__availableEntries;
  sub_1D12C4290();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC15HealthRecordsUIP33_766154230A8DC4663A59392D072AE21B16SandboxViewModel__error;
  sub_1D12C436C(0, &qword_1EC60ECF8, sub_1D12C43D0, MEMORY[0x1E695C070]);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC15HealthRecordsUIP33_766154230A8DC4663A59392D072AE21B16SandboxViewModel__isDownloading;
  sub_1D12C92B8(0, &qword_1EE06A698, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return swift_deallocClassInstance();
}

uint64_t sub_1D12C0690()
{
  sub_1D12C92B8(0, &qword_1EE06A698, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  v29 = *(v1 - 8);
  v30 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v28 = &v24 - v2;
  sub_1D12C436C(0, &qword_1EC60ECF8, sub_1D12C43D0, MEMORY[0x1E695C070]);
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v24 - v4;
  sub_1D12C4290();
  v24 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12C4304(0, &qword_1EC60ECE0, &qword_1EC60B040, 0x1E696C308, MEMORY[0x1E695C070]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  v14 = OBJC_IVAR____TtC15HealthRecordsUIP33_766154230A8DC4663A59392D072AE21B16SandboxViewModel__selectedEntry;
  v15 = sub_1D139012C();
  v16 = sub_1D139012C();
  v17 = [objc_allocWithZone(MEMORY[0x1E696C308]) initWithIdentifier:v15 schemaType:v16 schemaVersion:0 availableURL:0];

  v31 = v17;
  sub_1D106F934(0, &qword_1EC60B040);
  sub_1D138F77C();
  (*(v11 + 32))(v0 + v14, v13, v10);
  v18 = OBJC_IVAR____TtC15HealthRecordsUIP33_766154230A8DC4663A59392D072AE21B16SandboxViewModel__availableEntries;
  v31 = 0;
  sub_1D12C44E8(0, &qword_1EC60ECF0, MEMORY[0x1E69E6720]);
  sub_1D138F77C();
  (*(v6 + 32))(v0 + v18, v8, v24);
  v19 = OBJC_IVAR____TtC15HealthRecordsUIP33_766154230A8DC4663A59392D072AE21B16SandboxViewModel__error;
  v31 = 0;
  sub_1D12C43D0(0);
  v20 = v25;
  sub_1D138F77C();
  (*(v26 + 32))(v0 + v19, v20, v27);
  v21 = OBJC_IVAR____TtC15HealthRecordsUIP33_766154230A8DC4663A59392D072AE21B16SandboxViewModel__isDownloading;
  LOBYTE(v31) = 0;
  v22 = v28;
  sub_1D138F77C();
  (*(v29 + 32))(v0 + v21, v22, v30);
  return v0;
}

uint64_t sub_1D12C0AB8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SandboxViewModel(0);
  result = sub_1D138F67C();
  *a1 = result;
  return result;
}

uint64_t sub_1D12C0AF8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v9 = sub_1D138FACC();
  sub_1D12C0F44(a1, &v43);
  v25 = *&v44[16];
  v26 = *&v44[32];
  v23 = v43;
  v24 = *v44;
  v28[1] = *v44;
  v28[2] = *&v44[16];
  v28[3] = *&v44[32];
  v28[4] = *&v44[48];
  v27 = *&v44[48];
  v28[0] = v43;
  sub_1D12C8170(&v23, v40, sub_1D12C8608);
  sub_1D12C8254(v28, sub_1D12C8608);
  *&v22[23] = v24;
  *&v22[39] = v25;
  *&v22[55] = v26;
  *&v22[71] = v27;
  *&v22[7] = v23;
  v3 = sub_1D138FC2C();
  KeyPath = swift_getKeyPath();
  v8 = sub_1D138FACC();
  LOBYTE(v11[0]) = 1;
  sub_1D12C1118(a1, &v43);
  v33 = *&v44[48];
  v34 = *&v44[64];
  v29 = v43;
  v30 = *v44;
  v31 = *&v44[16];
  v32 = *&v44[32];
  v35 = *&v44[80];
  v36[0] = v43;
  v36[1] = *v44;
  v36[2] = *&v44[16];
  v36[3] = *&v44[32];
  v36[4] = *&v44[48];
  v36[5] = *&v44[64];
  v36[6] = *&v44[80];
  sub_1D12C8170(&v29, v40, sub_1D12C8820);
  sub_1D12C8254(v36, sub_1D12C8820);
  *&v21[55] = v32;
  *&v21[71] = v33;
  *&v21[87] = v34;
  *&v21[103] = v35;
  *&v21[7] = v29;
  *&v21[23] = v30;
  *&v21[39] = v31;
  v5 = sub_1D138FBEC();
  v6 = swift_getKeyPath();
  v37[0] = v9;
  v37[1] = 0;
  v38[0] = 1;
  *&v38[65] = *&v22[64];
  *&v38[49] = *&v22[48];
  *&v38[33] = *&v22[32];
  *&v38[1] = *v22;
  *&v38[17] = *&v22[16];
  *&v38[80] = *&v22[79];
  *&v38[88] = KeyPath;
  v39 = v3;
  __src[2] = *&v38[16];
  __src[3] = *&v38[32];
  __src[5] = *&v38[64];
  __src[6] = *&v38[80];
  __src[4] = *&v38[48];
  __src[0] = v9;
  __src[1] = *v38;
  v40[0] = v8;
  v40[1] = 0;
  v41[0] = 1;
  *&v41[49] = *&v21[48];
  *&v41[33] = *&v21[32];
  *&v41[17] = *&v21[16];
  *&v41[1] = *v21;
  *&v41[112] = *&v21[111];
  *&v41[97] = *&v21[96];
  *&v41[81] = *&v21[80];
  *&v41[65] = *&v21[64];
  *&v41[120] = v6;
  v42 = v5;
  *(&__src[8] + 8) = *v41;
  *(&__src[7] + 8) = v8;
  *(&__src[12] + 8) = *&v41[64];
  *(&__src[11] + 8) = *&v41[48];
  *(&__src[10] + 8) = *&v41[32];
  *(&__src[9] + 8) = *&v41[16];
  *&__src[7] = v3;
  *(&__src[16] + 1) = v5;
  *(&__src[15] + 8) = *&v41[112];
  *(&__src[14] + 8) = *&v41[96];
  *(&__src[13] + 8) = *&v41[80];
  memcpy(a2, __src, 0x110uLL);
  *&v44[65] = *&v21[64];
  *&v44[81] = *&v21[80];
  *v45 = *&v21[96];
  *&v44[1] = *v21;
  *&v44[17] = *&v21[16];
  *&v44[33] = *&v21[32];
  v43 = v8;
  v44[0] = 1;
  *&v44[49] = *&v21[48];
  *&v45[15] = *&v21[111];
  v46 = v6;
  v47 = v5;
  sub_1D12C8170(v37, v11, sub_1D12C84F4);
  sub_1D12C8170(v40, v11, sub_1D12C870C);
  sub_1D12C8254(&v43, sub_1D12C870C);
  v15 = *&v22[32];
  v16 = *&v22[48];
  *v17 = *&v22[64];
  v13 = *v22;
  v11[0] = v9;
  v11[1] = 0;
  v12 = 1;
  v14 = *&v22[16];
  *&v17[15] = *&v22[79];
  v18 = KeyPath;
  v19 = v3;
  return sub_1D12C8254(v11, sub_1D12C84F4);
}

uint64_t sub_1D12C0F44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  sub_1D139016C();

  sub_1D10940C8();
  v5 = sub_1D138FCEC();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [a1 currentVersion];
  if (v12 && v12 != -1)
  {
    [a1 currentVersion];
    sub_1D1082D14();
    sub_1D139100C();
  }

  v13 = sub_1D138FCEC();
  v15 = v14;
  v16 = v9 & 1;
  v21 = v9 & 1;
  v18 = v17 & 1;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v16;
  *(a2 + 24) = v11;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v13;
  *(a2 + 56) = v14;
  *(a2 + 64) = v17 & 1;
  *(a2 + 72) = v19;
  sub_1D113EED8(v5, v7, v16);

  sub_1D113EED8(v13, v15, v18);

  sub_1D113EE84(v13, v15, v18);

  sub_1D113EE84(v5, v7, v21);
}

uint64_t sub_1D12C1118@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D138FCBC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1D138D57C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1D138FB1C();
  v7 = [a1 schemaType];
  sub_1D139016C();

  sub_1D10940C8();
  v8 = sub_1D138FCEC();
  v27 = v10;
  v28 = v9;
  v26 = v11;
  sub_1D138FB0C();
  sub_1D138FAFC();
  [a1 schemaVersion];
  sub_1D138FADC();
  sub_1D138FAFC();
  sub_1D138FB3C();
  v12 = sub_1D138FCDC();
  v14 = v13;
  LOBYTE(v7) = v15;
  v17 = v16;
  v18 = [a1 currentVersionDate];
  sub_1D138D52C();

  sub_1D138FCAC();
  v19 = sub_1D138FCCC();
  v21 = v20;
  v23 = v22 & 1;
  *a2 = v8;
  *(a2 + 8) = v28;
  *(a2 + 16) = v26 & 1;
  *(a2 + 24) = v27;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14;
  *(a2 + 48) = v7 & 1;
  *(a2 + 56) = v17;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  *(a2 + 80) = v19;
  *(a2 + 88) = v20;
  *(a2 + 96) = v22 & 1;
  *(a2 + 104) = v24;
  sub_1D113EED8(v8, v28, v26 & 1);

  sub_1D113EED8(v12, v14, v7 & 1);

  sub_1D113EED8(v19, v21, v23);

  sub_1D113EE84(v19, v21, v23);

  sub_1D113EE84(v12, v14, v7 & 1);

  sub_1D113EE84(v8, v28, v26 & 1);
}

void *sub_1D12C1468@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1D138FB5C();
  v10 = 1;
  sub_1D12C0AF8(v3, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_1D12C8170(__dst, &v7, sub_1D12C84B8);
  sub_1D12C8254(v12, sub_1D12C84B8);
  memcpy(&v9[7], __dst, 0x110uLL);
  v5 = v10;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  return memcpy((a1 + 17), v9, 0x117uLL);
}

uint64_t sub_1D12C1544(void *a1)
{
  sub_1D12C88CC();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16[0] = sub_1D12C174C(a1);
  v13 = v16;
  v14 = sub_1D12C24E8;
  v15 = 0;
  sub_1D12C897C();
  sub_1D12C8A98(&qword_1EC60EF00, sub_1D12C897C, sub_1D12C8B14);
  sub_1D138FC5C();

  v7 = [a1 identifier];
  v8 = sub_1D139016C();
  v10 = v9;

  v16[0] = v8;
  v16[1] = v10;
  sub_1D12C755C(&qword_1EC60EF10, sub_1D12C88CC);
  sub_1D10940C8();
  sub_1D138FD4C();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D12C174C(void *a1)
{
  sub_1D1219C30();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v156 = &v155 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v157 = &v155 - v5;
  sub_1D12C436C(0, &qword_1EC60EF20, type metadata accessor for EntryDetail.EntryDetailRow, MEMORY[0x1E69E6F90]);
  v6 = type metadata accessor for EntryDetail.EntryDetailRow(0);
  v166 = v6;
  v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 72);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D13AE2F0;
  v158 = v9;
  v10 = (v9 + v7);
  v167 = a1;
  v11 = [a1 identifier];
  v12 = sub_1D139016C();
  v14 = v13;

  v15 = *(v6 + 24);
  v16 = sub_1D138D57C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v19 = v17 + 56;
  v18(&v10[v15], 1, 1, v16);
  v163 = v19;
  v20 = v18;
  *v10 = 0x696669746E656449;
  *(v10 + 1) = 0xEA00000000007265;
  *(v10 + 2) = v12;
  *(v10 + 3) = v14;
  v21 = v8;
  v22 = &v10[v8];
  v23 = [a1 schemaType];
  v24 = sub_1D139016C();
  v26 = v25;

  v27 = v166;
  v20(&v22[*(v166 + 24)], 1, 1, v16);
  *v22 = 0x7954616D65686353;
  *(v22 + 1) = 0xEA00000000006570;
  *(v22 + 2) = v24;
  *(v22 + 3) = v26;
  v28 = &v10[2 * v21];
  v29 = v167;
  v168 = [v167 schemaVersion];
  v160 = sub_1D1082D14();
  v30 = sub_1D139100C();
  v32 = v31;
  v20(&v28[*(v27 + 24)], 1, 1, v16);
  strcpy(v28, "SchemaVersion");
  *(v28 + 7) = -4864;
  *(v28 + 2) = v30;
  *(v28 + 3) = v32;
  v162 = v10;
  v33 = &v10[3 * v21];
  v34 = v29;
  [v29 settings];
  v35 = HKStringFromOntologyShardSettings();
  v36 = sub_1D139016C();
  v38 = v37;

  v39 = &v33[*(v166 + 24)];
  v164 = v16;
  v165 = v20;
  v20(v39, 1, 1, v16);
  *v33 = 0x73676E6974746553;
  *(v33 + 1) = 0xE800000000000000;
  *(v33 + 2) = v36;
  *(v33 + 3) = v38;
  v40 = [v34 slot];
  v41 = 1701736302;
  v42 = 0xE400000000000000;
  if (*MEMORY[0x1E696BBE0] != v40)
  {
    v168 = [v34 slot];
    v41 = sub_1D139100C();
    v42 = v43;
  }

  v44 = v21;
  v45 = 4 * v21;
  v46 = v162;
  v47 = v162 + 4 * v21;
  v48 = v165;
  v49 = v166;
  v50 = v164;
  v165(&v47[*(v166 + 24)], 1, 1, v164);
  *v47 = 1953459283;
  v159 = 0xE400000000000000;
  *(v47 + 1) = 0xE400000000000000;
  *(v47 + 2) = v41;
  *(v47 + 3) = v42;
  v161 = v44;
  v51 = v46 + v45 + v44;
  v52 = sub_1D12C8B7C([v167 desiredState]);
  v54 = v53;
  v55 = *(v49 + 24);
  v56 = [v167 desiredStateDate];
  sub_1D138D52C();

  v48((v51 + v55), 0, 1, v50);
  v57 = v167;
  strcpy(v51, "DesiredState");
  *(v51 + 13) = 0;
  *(v51 + 14) = -5120;
  *(v51 + 16) = v52;
  *(v51 + 24) = v54;
  v58 = [v57 currentVersion];
  if (v58)
  {
    if (v58 == -1)
    {
      v159 = 0xEC00000064656E69;
      v59 = 0x6D72657465646E75;
    }

    else
    {
      v168 = [v57 currentVersion];
      v59 = sub_1D139100C();
      v159 = v60;
    }
  }

  else
  {
    v59 = 1701736302;
  }

  v61 = v162;
  v62 = v162 + 6 * v161;
  v63 = v161;
  v64 = v166;
  v65 = *(v166 + 24);
  v66 = [v57 currentVersionDate];
  sub_1D138D52C();

  v67 = v164;
  v68 = v165;
  v165(&v62[v65], 0, 1, v164);
  strcpy(v62, "CurrentVersion");
  v62[15] = -18;
  v69 = v159;
  *(v62 + 2) = v59;
  *(v62 + 3) = v69;
  v155 = v61 - v63;
  v70 = &v61[v63] - v63;
  v71 = [v167 currentRegion];
  v72 = sub_1D139016C();
  v74 = v73;

  v75 = *(v64 + 24);
  v76 = [v167 currentRegionDate];
  sub_1D138D52C();

  v68((v70 + v75), 0, 1, v67);
  v77 = v167;
  strcpy(v70, "CurrentRegion");
  *(v70 + 14) = -4864;
  *(v70 + 16) = v72;
  *(v70 + 24) = v74;
  v78 = [v77 currentLocale];
  if (v78)
  {
    v79 = v78;
    v80 = sub_1D139016C();
    v82 = v81;
  }

  else
  {
    v80 = 0;
    v82 = 0;
  }

  v83 = v161;
  v84 = &v162[v161];
  v85 = *(v166 + 24);
  v86 = [v77 currentLocaleDate];
  sub_1D138D52C();

  v165(&v84[v85], 0, 1, v164);
  strcpy(v84, "CurrentLocale");
  *(v84 + 7) = -4864;
  *(v84 + 2) = v80;
  *(v84 + 3) = v82;
  v87 = [v77 availableVersion];
  if (v87)
  {
    if (v87 == -1)
    {
      v159 = 0xEC00000064656E69;
      v88 = 0x6D72657465646E75;
    }

    else
    {
      v168 = [v77 availableVersion];
      v88 = sub_1D139100C();
      v159 = v89;
    }
  }

  else
  {
    v159 = 0xE400000000000000;
    v88 = 1701736302;
  }

  v90 = v162;
  v91 = v162 + 9 * v83;
  v92 = v166;
  v93 = *(v166 + 24);
  v94 = [v77 availableVersionDate];
  sub_1D138D52C();

  v95 = v164;
  v165(&v91[v93], 0, 1, v164);
  *v91 = 0xD000000000000010;
  *(v91 + 1) = 0x80000001D13CA5A0;
  v96 = v159;
  *(v91 + 2) = v88;
  *(v91 + 3) = v96;
  v97 = v90 + 10 * v83;
  v98 = sub_1D12C8B7C([v167 availableState]);
  v100 = v99;
  v101 = *(v92 + 24);
  v102 = [v167 availableStateDate];
  sub_1D138D52C();

  v103 = v95;
  v104 = v165;
  v165((v97 + v101), 0, 1, v103);
  strcpy(v97, "AvailableState");
  *(v97 + 15) = -18;
  *(v97 + 16) = v98;
  *(v97 + 24) = v100;
  v105 = v90 + 11 * v83;
  v106 = v83;
  v107 = [v167 availableRegion];
  v108 = sub_1D139016C();
  v110 = v109;

  v111 = *(v92 + 24);
  v112 = [v167 availableRegionDate];
  sub_1D138D52C();

  v104(&v105[v111], 0, 1, v164);
  v113 = v167;
  *v105 = 0x6C62616C69617641;
  *(v105 + 1) = 0xEF6E6F6967655265;
  *(v105 + 2) = v108;
  *(v105 + 3) = v110;
  v114 = [v113 availableLocale];
  if (v114)
  {
    v115 = v114;
    v116 = sub_1D139016C();
    v118 = v117;
  }

  else
  {
    v116 = 0;
    v118 = 0;
  }

  v120 = v156;
  v119 = v157;
  v121 = v162 + 12 * v106;
  v122 = *(v166 + 24);
  v123 = [v113 availableLocaleDate];
  sub_1D138D52C();

  v124 = 1;
  v165(&v121[v122], 0, 1, v164);
  *v121 = 0x6C62616C69617641;
  *(v121 + 1) = 0xEF656C61636F4C65;
  *(v121 + 2) = v116;
  *(v121 + 3) = v118;
  v125 = [v113 availableURL];
  if (v125)
  {
    v126 = v125;
    sub_1D138D33C();

    v124 = 0;
  }

  v127 = sub_1D138D39C();
  v128 = *(v127 - 8);
  (*(v128 + 56))(v120, v124, 1, v127);
  sub_1D10C7940(v120, v119);
  if ((*(v128 + 48))(v119, 1, v127) == 1)
  {
    sub_1D12C8254(v119, sub_1D1219C30);
    v129 = 0;
    v130 = 0;
  }

  else
  {
    v129 = sub_1D138D2DC();
    v130 = v131;
    (*(v128 + 8))(v119, v127);
  }

  v132 = v162 + 13 * v106;
  v133 = *(v166 + 24);
  v134 = [v113 availableURLDate];
  sub_1D138D52C();

  v165(&v132[v133], 0, 1, v164);
  strcpy(v132, "AvailableURL");
  v132[13] = 0;
  *(v132 + 7) = -5120;
  *(v132 + 2) = v129;
  *(v132 + 3) = v130;
  v135 = [v113 availableChecksum];
  if (v135)
  {
    v136 = v135;
    v137 = sub_1D139016C();
    v139 = v138;
  }

  else
  {
    v137 = 0;
    v139 = 0;
  }

  v140 = v161;
  v141 = (v162 + 14 * v161);
  v142 = v166;
  v143 = *(v166 + 24);
  v144 = [v113 availableChecksumDate];
  sub_1D138D52C();

  v145 = v141 + v143;
  v147 = v164;
  v146 = v165;
  v165(v145, 0, 1, v164);
  *v141 = 0xD000000000000011;
  v141[1] = 0x80000001D13CA5C0;
  v141[2] = v137;
  v141[3] = v139;
  v148 = v155 + 16 * v140;
  v168 = [v113 availableSize];
  v149 = sub_1D139100C();
  v151 = v150;
  v152 = *(v142 + 24);
  v153 = [v113 availableSizeDate];
  sub_1D138D52C();

  v146((v148 + v152), 0, 1, v147);
  strcpy(v148, "AvailableSize");
  *(v148 + 14) = -4864;
  *(v148 + 16) = v149;
  *(v148 + 24) = v151;
  return v158;
}

uint64_t sub_1D12C2518@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  sub_1D106A23C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D138D57C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12C8F0C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v52 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  *v14 = sub_1D138FACC();
  *(v14 + 1) = 0;
  v14[16] = 1;
  sub_1D12C9308();
  sub_1D12C29D8(a1, &v14[*(v15 + 44)]);
  v16 = type metadata accessor for EntryDetail.EntryDetailRow(0);
  sub_1D12C8170(a1 + *(v16 + 24), v5, sub_1D106A23C);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D12C8254(v5, sub_1D106A23C);
    v50 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    KeyPath = 0;
    v47 = 0;
    v20 = 0;
    v49 = 0;
    v21 = 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v50 = sub_1D138FACC();
    v46 = v6;
    v22 = sub_1D138D4EC();
    v23 = HKDiagnosticStringFromDate();

    v24 = sub_1D139016C();
    v26 = v25;

    v60 = v24;
    v61 = v26;
    sub_1D10940C8();
    v17 = sub_1D138FCEC();
    v18 = v27;
    v19 = v28;
    LOBYTE(v24) = v29 & 1;
    sub_1D113EED8(v17, v27, v29 & 1);

    sub_1D113EE84(v17, v18, v24);

    LOBYTE(v60) = 1;
    LOBYTE(v54) = 1;
    v53 = v24;
    v21 = 1;
    v49 = 1;
    v47 = sub_1D138FD6C();
    KeyPath = swift_getKeyPath();
    v30 = v9;
    v20 = v24;
    (*(v7 + 8))(v30, v46);
  }

  v46 = v19;
  v31 = v52;
  sub_1D1029880(v14, v52);
  v32 = v51;
  sub_1D1029880(v31, v51);
  sub_1D12C81D8(0, &qword_1EC60EF60, sub_1D12C8F0C, sub_1D12C90DC);
  v34 = v32 + *(v33 + 48);
  v35 = v50;
  v54 = v50;
  v55 = v21;
  v36 = v21;
  v37 = v49;
  *&v56 = v49;
  *(&v56 + 1) = v17;
  *&v57 = v18;
  *(&v57 + 1) = v20;
  *&v58 = v19;
  v38 = v18;
  v39 = v17;
  v40 = KeyPath;
  v41 = v47;
  *(&v58 + 1) = KeyPath;
  v59 = v47;
  *(v34 + 80) = v47;
  v42 = v55;
  *v34 = v54;
  *(v34 + 16) = v42;
  v43 = v57;
  *(v34 + 32) = v56;
  *(v34 + 48) = v43;
  *(v34 + 64) = v58;
  sub_1D12C8170(&v54, &v60, sub_1D12C90DC);
  sub_1D10298E4(v14);
  v60 = v35;
  v61 = 0;
  v62 = v36;
  v63 = 0;
  v64 = v37;
  v65 = v39;
  v66 = v38;
  v67 = v20;
  v68 = v46;
  v69 = v40;
  v70 = v41;
  sub_1D12C8254(&v60, sub_1D12C90DC);
  return sub_1D10298E4(v31);
}

uint64_t sub_1D12C29D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D138FBAC();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D12C9044();
  v50 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v42[-v11];
  v12 = a1[1];
  v53 = *a1;
  v54 = v12;
  sub_1D10940C8();

  v13 = sub_1D138FCEC();
  v15 = v14;
  v17 = v16;
  sub_1D138FC1C();
  v18 = sub_1D138FC9C();
  v44 = v19;
  v45 = v18;
  v43 = v20;
  v46 = v21;

  sub_1D113EE84(v13, v15, v17 & 1);

  if (a1[3])
  {
    v22 = a1[2];
    v23 = a1[3];
  }

  else
  {
    v23 = 0xE300000000000000;
    v22 = 7104878;
  }

  v53 = v22;
  v54 = v23;

  v24 = sub_1D138FCEC();
  v26 = v25;
  v53 = v24;
  v54 = v25;
  v28 = v27 & 1;
  v55 = v27 & 1;
  v56 = v29;
  sub_1D138FB9C();
  v30 = v51;
  v31 = v48;
  sub_1D138FD1C();
  (*(v47 + 8))(v6, v31);
  sub_1D113EE84(v24, v26, v28);

  LOBYTE(v53) = v43 & 1;
  v52 = 1;
  v32 = *(v8 + 16);
  v34 = v49;
  v33 = v50;
  v32(v49, v30, v50);
  v35 = v53;
  v36 = v44;
  v37 = v45;
  *a2 = v45;
  *(a2 + 8) = v36;
  *(a2 + 16) = v35;
  v38 = v52;
  *(a2 + 24) = v46;
  *(a2 + 32) = 0;
  *(a2 + 40) = v38;
  sub_1D12C8FD4();
  v32((a2 + *(v39 + 64)), v34, v33);
  sub_1D113EED8(v37, v36, v35);
  v40 = *(v8 + 8);

  v40(v51, v33);
  v40(v34, v33);
  sub_1D113EE84(v37, v36, v53);
}

uint64_t sub_1D12C2D5C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1D138FB5C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1D12C8E0C();
  return sub_1D12C2518(v1, a1 + *(v3 + 44));
}

uint64_t sub_1D12C2DA4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1D12C2DB8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D138F7BC();

  *a1 = v3;
  return result;
}

uint64_t sub_1D12C2E38()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D138F7CC();
}

uint64_t sub_1D12C2EB4(void *a1)
{
  v2 = v1;
  sub_1D12C436C(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v19 - v5;
  sub_1D12C44E8(0, &qword_1EC60ED18, MEMORY[0x1E695C070]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - v10;
  v12 = OBJC_IVAR____TtC15HealthRecordsUIP33_766154230A8DC4663A59392D072AE21B17EntriesDataSource__entries;
  v19[1] = MEMORY[0x1E69E7CC0];
  sub_1D12C4304(0, &qword_1EC60B048, &qword_1EC60B040, 0x1E696C308, MEMORY[0x1E69E62F8]);
  sub_1D138F77C();
  (*(v9 + 32))(v2 + v12, v11, v8);
  *(v2 + 16) = a1;
  v13 = sub_1D13905DC();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  sub_1D13905AC();
  v14 = a1;

  v15 = sub_1D139059C();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v2;
  sub_1D107877C(0, 0, v6, &unk_1D13AE540, v16);

  return v2;
}

uint64_t sub_1D12C3130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_1D138F0BC();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = sub_1D13905AC();
  v4[10] = sub_1D139059C();
  v6 = swift_task_alloc();
  v4[11] = v6;
  *v6 = v4;
  v6[1] = sub_1D12C323C;

  return sub_1D12C36F0();
}

uint64_t sub_1D12C323C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_1D139055C();
    v7 = v6;
    v8 = sub_1D12C3480;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_1D139055C();
    v7 = v9;
    v8 = sub_1D12C33BC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_1D12C33BC()
{
  v1 = v0[13];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[4] = v1;

  sub_1D138F7CC();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D12C3480()
{
  v25 = v0;
  v1 = *(v0 + 96);

  sub_1D138F06C();

  v2 = v1;
  v3 = sub_1D138F0AC();
  v4 = sub_1D13907FC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 56);
    v23 = *(v0 + 64);
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136446466;
    *(v0 + 16) = *v8;
    sub_1D12C71EC();
    v11 = sub_1D13901EC();
    v13 = sub_1D11DF718(v11, v12, &v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v0 + 24) = v5;
    v14 = v5;
    sub_1D10922EC();
    v15 = sub_1D13901EC();
    v17 = sub_1D11DF718(v15, v16, &v24);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1D101F000, v3, v4, "[%{public}s] Unable to load ontology registry: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v10, -1, -1);
    MEMORY[0x1D38882F0](v9, -1, -1);

    (*(v6 + 8))(v23, v7);
  }

  else
  {
    v19 = *(v0 + 56);
    v18 = *(v0 + 64);
    v20 = *(v0 + 48);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1D12C36F0()
{
  v1[19] = v0;
  sub_1D13905AC();
  v1[20] = sub_1D139059C();
  v3 = sub_1D139055C();
  v1[21] = v3;
  v1[22] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D12C3788, v3, v2);
}

uint64_t sub_1D12C3788()
{
  v1 = [*(v0[19] + 16) healthStore];
  v2 = [objc_allocWithZone(MEMORY[0x1E69A30C8]) initWithHealthStore_];
  v0[23] = v2;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D12C38E4;
  v3 = swift_continuation_init();
  sub_1D12C7234();
  v0[17] = v4;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D12C3B8C;
  v0[13] = &block_descriptor_60;
  v0[14] = v3;
  [v2 ontologyShardRegistryEntriesWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D12C38E4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_1D12C3B14;
  }

  else
  {
    v5 = sub_1D12C3A14;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D12C3A14()
{
  v6 = v0;

  v5 = sub_1D11132A4(v1);
  sub_1D12BC25C(&v5, sub_1D12C5488, sub_1D12C4B98);

  v2 = v5;
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1D12C3B14()
{
  v1 = *(v0 + 184);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D12C3B8C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1D10922EC();
    swift_allocError();
    *v5 = a3;
    v6 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    sub_1D106F934(0, &qword_1EC60B040);
    **(*(v4 + 64) + 40) = sub_1D139045C();

    return swift_continuation_throwingResume();
  }
}

BOOL sub_1D12C3C70(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a1 identifier];
  v5 = sub_1D139016C();
  v7 = v6;

  v8 = [v3 identifier];
  v9 = sub_1D139016C();
  v11 = v10;

  v12 = v5 == v9 && v7 == v11;
  if (v12 || (sub_1D139162C()) && ((, , v13 = [v2 schemaType], v14 = sub_1D139016C(), v16 = v15, v13, v17 = objc_msgSend(v3, sel_schemaType), v18 = sub_1D139016C(), v20 = v19, v17, v14 == v18) && v16 == v20 || (sub_1D139162C()))
  {

    v21 = [v2 schemaVersion];
    return [v3 schemaVersion] <= v21;
  }

  else
  {
    v23 = sub_1D139162C();

    return v23 & 1;
  }
}

uint64_t sub_1D12C3E2C()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUIP33_766154230A8DC4663A59392D072AE21B17EntriesDataSource__entries;
  sub_1D12C44E8(0, &qword_1EC60ED18, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D12C3EEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D138F67C();
  *a1 = result;
  return result;
}

uint64_t HKOntologyShardRegistryEntry.id.getter()
{
  v1 = v0;
  v2 = [v0 identifier];
  type metadata accessor for HKOntologyShardIdentifier(0);
  sub_1D139133C();

  MEMORY[0x1D3885C10](45, 0xE100000000000000);
  v3 = [v1 schemaType];
  type metadata accessor for HKOntologyShardSchemaType(0);
  sub_1D139133C();

  MEMORY[0x1D3885C10](45, 0xE100000000000000);
  [v1 schemaVersion];
  v4 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v4);

  return 0;
}

uint64_t sub_1D12C407C@<X0>(uint64_t *a1@<X8>)
{
  result = HKOntologyShardRegistryEntry.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1D12C40D0()
{
  sub_1D12C4304(319, &qword_1EC60ECE0, &qword_1EC60B040, 0x1E696C308, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1D12C4290();
    if (v1 <= 0x3F)
    {
      sub_1D12C436C(319, &qword_1EC60ECF8, sub_1D12C43D0, MEMORY[0x1E695C070]);
      if (v2 <= 0x3F)
      {
        sub_1D12C92B8(319, &qword_1EE06A698, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1D12C4290()
{
  if (!qword_1EC60ECE8)
  {
    sub_1D12C44E8(255, &qword_1EC60ECF0, MEMORY[0x1E69E6720]);
    v0 = sub_1D138F7DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60ECE8);
    }
  }
}

void sub_1D12C4304(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1D12C436C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D12C442C()
{
  sub_1D12C44E8(319, &qword_1EC60ED18, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D12C44E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D12C4304(255, &qword_1EC60B048, &qword_1EC60B040, 0x1E696C308, MEMORY[0x1E69E62F8]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D12C4580()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D138F7CC();
}

uint64_t sub_1D12C45FC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D138F7BC();

  *a1 = v3;
  return result;
}

uint64_t sub_1D12C4678(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v2 = v1;
  return sub_1D138F7CC();
}

uint64_t sub_1D12C46F4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D138F7BC();

  *a1 = v3;
  return result;
}

uint64_t sub_1D12C4774()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D138F7CC();
}

void sub_1D12C47E8()
{
  if (!qword_1EC60ED20)
  {
    sub_1D10922EC();
    v0 = sub_1D139061C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60ED20);
    }
  }
}

void *sub_1D12C486C(uint64_t a1, uint64_t a2)
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

  sub_1D12C92B8(0, &qword_1EE06A4C8, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1D12C48F8(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_1D13915BC();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D106F934(0, &qword_1EC60B040);
        v10 = sub_1D13904DC();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_1D12C4A1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 identifier];
      v11 = sub_1D139016C();
      v13 = v12;

      v14 = [v9 identifier];
      v15 = sub_1D139016C();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = sub_1D139162C();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D12C4B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
LABEL_4:
    v9 = *(v6 + 8 * v5);
    v10 = v8;
    v18 = v7;
    while (1)
    {
      v20 = v9;
      v19 = *v7;
      v11 = v19;
      v12 = v9;
      v13 = v11;
      v14 = sub_1D12C3C70(&v20, &v19);

      if (v4)
      {
        break;
      }

      if (v14)
      {
        if (!v6)
        {
          __break(1u);
          return;
        }

        v15 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v15;
        v7 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 = v18 + 8;
      --v8;
      if (v5 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1D12C4C88(id **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_107:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = v4;
LABEL_110:
      v4 = *(v107 + 2);
      if (v4 >= 2)
      {
        do
        {
          v108 = *v6;
          if (!*v6)
          {
            goto LABEL_144;
          }

          v6 = (v4 - 1);
          v109 = *&v107[16 * v4];
          v110 = v107;
          v111 = *&v107[16 * v4 + 24];
          sub_1D12C5C54((v108 + 8 * v109), (v108 + 8 * *&v107[16 * v4 + 16]), (v108 + 8 * v111), v5);
          if (v126)
          {
            break;
          }

          if (v111 < v109)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_1D1245848(v110);
          }

          if (v4 - 2 >= *(v110 + 2))
          {
            goto LABEL_134;
          }

          v112 = &v110[16 * v4];
          *v112 = v109;
          *(v112 + 1) = v111;
          sub_1D12457BC(v4 - 1);
          v107 = v110;
          v4 = *(v110 + 2);
          v6 = a3;
        }

        while (v4 > 1);
      }

LABEL_118:

      return;
    }

LABEL_140:
    v107 = sub_1D1245848(v4);
    goto LABEL_110;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v122 = v7;
      v114 = v9;
      v116 = v10;
      v4 = *v6;
      v11 = *(*v6 + 8 * v8);
      v12 = *(*v6 + 8 * v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 identifier];
      v16 = sub_1D139016C();
      v18 = v17;

      v19 = [v14 identifier];
      v20 = sub_1D139016C();
      v5 = v21;

      if (v16 == v20 && v18 == v5)
      {
        v127 = 0;
      }

      else
      {
        v127 = sub_1D139162C();
      }

      v10 = v116;
      v8 = v116 + 2;
      if (v116 + 2 >= v122)
      {
        v6 = a3;
      }

      else
      {
        v4 += 8 * v116 + 16;
        do
        {
          v124 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 identifier];
          v5 = sub_1D139016C();
          v29 = v28;

          v30 = [v26 identifier];
          v31 = sub_1D139016C();
          v33 = v32;

          if (v5 == v31 && v29 == v33)
          {

            v8 = v124;
            if (v127)
            {
              v6 = a3;
              v9 = v114;
              v10 = v116;
              goto LABEL_26;
            }
          }

          else
          {
            v23 = sub_1D139162C();

            v8 = v124;
            if ((v127 ^ v23))
            {
              goto LABEL_24;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v122 != v8);
        v8 = v122;
LABEL_24:
        v6 = a3;
        v10 = v116;
      }

      v9 = v114;
      if (v127)
      {
LABEL_26:
        if (v8 < v10)
        {
          goto LABEL_137;
        }

        if (v10 < v8)
        {
          v35 = 8 * v8 - 8;
          v36 = 8 * v10;
          v37 = v8;
          v38 = v10;
          do
          {
            if (v38 != --v37)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_143;
              }

              v40 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v35);
              *(v39 + v35) = v40;
            }

            ++v38;
            v35 -= 8;
            v36 += 8;
          }

          while (v38 < v37);
        }
      }
    }

    v41 = v6[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_136;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_135;
    }

    v60 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v60;
    }

    else
    {
      v9 = sub_1D10F7610(0, *(v60 + 2) + 1, 1, v60);
    }

    v4 = *(v9 + 2);
    v61 = *(v9 + 3);
    v62 = v4 + 1;
    if (v4 >= v61 >> 1)
    {
      v9 = sub_1D10F7610((v61 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v62;
    v63 = &v9[16 * v4];
    *(v63 + 4) = v10;
    *(v63 + 5) = v8;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v4)
    {
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_75:
          if (v69)
          {
            goto LABEL_124;
          }

          v82 = &v9[16 * v62];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_127;
          }

          v88 = &v9[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_131;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v92 = &v9[16 * v62];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_89:
        if (v87)
        {
          goto LABEL_126;
        }

        v95 = &v9[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_129;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_96:
        v4 = v65 - 1;
        if (v65 - 1 >= v62)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v6)
        {
          goto LABEL_142;
        }

        v5 = v8;
        v103 = v9;
        v104 = *&v9[16 * v4 + 32];
        v105 = *&v9[16 * v65 + 40];
        sub_1D12C5C54((*v6 + 8 * v104), (*v6 + 8 * *&v9[16 * v65 + 32]), (*v6 + 8 * v105), v64);
        if (v126)
        {
          goto LABEL_118;
        }

        if (v105 < v104)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_1D1245848(v103);
        }

        if (v4 >= *(v103 + 2))
        {
          goto LABEL_121;
        }

        v106 = &v103[16 * v4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        sub_1D12457BC(v65);
        v9 = v103;
        v62 = *(v103 + 2);
        v8 = v5;
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[16 * v62 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_122;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_123;
      }

      v77 = &v9[16 * v62];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_125;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_128;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_132;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  v42 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_138;
  }

  if (v42 >= v41)
  {
    v42 = v6[1];
  }

  if (v42 < v10)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v8 == v42)
  {
    goto LABEL_55;
  }

  v115 = v9;
  v117 = v10;
  v128 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v43 = v10 - v8;
  v120 = v42;
LABEL_44:
  v123 = v4;
  v125 = v8;
  v44 = *(v128 + 8 * v8);
  v121 = v43;
  v45 = v43;
  while (1)
  {
    v46 = *v4;
    v47 = v44;
    v48 = v46;
    v49 = [v47 identifier];
    v5 = sub_1D139016C();
    v51 = v50;

    v52 = [v48 identifier];
    v53 = sub_1D139016C();
    v55 = v54;

    if (v5 == v53 && v51 == v55)
    {

LABEL_43:
      v8 = v125 + 1;
      v4 = v123 + 8;
      v43 = v121 - 1;
      if ((v125 + 1) == v120)
      {
        v8 = v120;
        v6 = a3;
        v9 = v115;
        v10 = v117;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v57 = sub_1D139162C();

    if ((v57 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v128)
    {
      break;
    }

    v58 = *v4;
    v44 = *(v4 + 8);
    *v4 = v44;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

void sub_1D12C5488(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_98:
    v5 = v10;
    v10 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_100;
    }

    goto LABEL_138;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v12 >= v8)
    {
      v8 = v12;
    }

    else
    {
      v115 = v10;
      v13 = *v7;
      v126 = *(*v7 + 8 * v12);
      v125 = *(v13 + 8 * v11);
      v14 = v125;
      v15 = v126;
      v16 = v14;
      v17 = sub_1D12C3C70(&v126, &v125);
      if (v6)
      {

        return;
      }

      v5 = v17;

      v18 = v11;
      v19 = v11 + 2;
      v113 = v18;
      v20 = 8 * v18;
      v21 = (v13 + 8 * v18 + 16);
      while (v8 != v19)
      {
        v22 = *(v21 - 1);
        v126 = *v21;
        v125 = v22;
        v23 = v126;
        v24 = v22;
        LODWORD(v22) = sub_1D12C3C70(&v126, &v125);

        ++v19;
        ++v21;
        if ((v5 ^ v22))
        {
          v8 = v19 - 1;
          break;
        }
      }

      v7 = a3;
      v11 = v113;
      v10 = v115;
      if (v5)
      {
        if (v8 < v113)
        {
          goto LABEL_132;
        }

        if (v113 < v8)
        {
          v25 = 8 * v8 - 8;
          v26 = v8;
          v27 = v113;
          do
          {
            if (v27 != --v26)
            {
              v29 = *a3;
              if (!*a3)
              {
                goto LABEL_136;
              }

              v28 = *(v29 + v20);
              *(v29 + v20) = *(v29 + v25);
              *(v29 + v25) = v28;
            }

            ++v27;
            v25 -= 8;
            v20 += 8;
          }

          while (v27 < v26);
        }
      }
    }

    v30 = v7[1];
    if (v8 >= v30)
    {
      goto LABEL_47;
    }

    if (__OFSUB__(v8, v11))
    {
      goto LABEL_128;
    }

    if (v8 - v11 >= a4)
    {
      goto LABEL_47;
    }

    v31 = v11 + a4;
    if (__OFADD__(v11, a4))
    {
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
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      return;
    }

    if (v31 >= v30)
    {
      v31 = v7[1];
    }

    if (v31 < v11)
    {
      goto LABEL_131;
    }

    if (v8 != v31)
    {
      v114 = v11;
      v116 = v10;
      v111 = v6;
      v124 = *v7;
      v32 = *v7 + 8 * v8 - 8;
      v33 = v11 - v8;
      v119 = v31;
      do
      {
        v121 = v32;
        v122 = v8;
        v34 = *(v124 + 8 * v8);
        v120 = v33;
        v35 = v32;
        do
        {
          v36 = *v35;
          v37 = v34;
          v5 = v36;
          v38 = [v37 identifier];
          v39 = sub_1D139016C();
          v41 = v40;

          v42 = [v5 identifier];
          v43 = sub_1D139016C();
          v45 = v44;

          v46 = v39 == v43 && v41 == v45;
          if (v46 || (sub_1D139162C()) && ((, , v47 = [v37 schemaType], v48 = sub_1D139016C(), v50 = v49, v47, v51 = objc_msgSend(v5, sel_schemaType), v52 = sub_1D139016C(), v54 = v53, v51, v48 == v52) && v50 == v54 || (sub_1D139162C()))
          {

            v55 = [v37 schemaVersion];
            v56 = [v5 schemaVersion];

            if (v56 > v55)
            {
              break;
            }
          }

          else
          {
            v57 = sub_1D139162C();

            if ((v57 & 1) == 0)
            {
              break;
            }
          }

          if (!v124)
          {
            goto LABEL_133;
          }

          v58 = *v35;
          v34 = *(v35 + 8);
          *v35 = v34;
          *(v35 + 8) = v58;
          v35 -= 8;
        }

        while (!__CFADD__(v33++, 1));
        v8 = v122 + 1;
        v32 = v121 + 8;
        v33 = v120 - 1;
      }

      while (v122 + 1 != v119);
      v8 = v119;
      v6 = v111;
      v7 = a3;
      v11 = v114;
      v10 = v116;
    }

LABEL_47:
    if (v8 < v11)
    {
      goto LABEL_127;
    }

    v123 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1D10F7610(0, *(v10 + 2) + 1, 1, v10);
    }

    v61 = *(v10 + 2);
    v60 = *(v10 + 3);
    v62 = v61 + 1;
    if (v61 >= v60 >> 1)
    {
      v10 = sub_1D10F7610((v60 > 1), v61 + 1, 1, v10);
    }

    *(v10 + 2) = v62;
    v63 = &v10[16 * v61];
    *(v63 + 4) = v11;
    *(v63 + 5) = v123;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_137;
    }

    if (v61)
    {
      break;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v123;
    if (v123 >= v8)
    {
      goto LABEL_98;
    }
  }

  while (1)
  {
    v64 = v62 - 1;
    if (v62 >= 4)
    {
      v69 = &v10[16 * v62 + 32];
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_114;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_115;
      }

      v76 = &v10[16 * v62];
      v78 = *v76;
      v77 = *(v76 + 1);
      v75 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v75)
      {
        goto LABEL_117;
      }

      v75 = __OFADD__(v67, v79);
      v80 = v67 + v79;
      if (v75)
      {
        goto LABEL_120;
      }

      if (v80 >= v72)
      {
        v98 = &v10[16 * v64 + 32];
        v100 = *v98;
        v99 = *(v98 + 1);
        v75 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v75)
        {
          goto LABEL_126;
        }

        if (v67 < v101)
        {
          v64 = v62 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_67;
    }

    if (v62 == 3)
    {
      v65 = *(v10 + 4);
      v66 = *(v10 + 5);
      v75 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      v68 = v75;
LABEL_67:
      if (v68)
      {
        goto LABEL_116;
      }

      v81 = &v10[16 * v62];
      v83 = *v81;
      v82 = *(v81 + 1);
      v84 = __OFSUB__(v82, v83);
      v85 = v82 - v83;
      v86 = v84;
      if (v84)
      {
        goto LABEL_119;
      }

      v87 = &v10[16 * v64 + 32];
      v89 = *v87;
      v88 = *(v87 + 1);
      v75 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v75)
      {
        goto LABEL_122;
      }

      if (__OFADD__(v85, v90))
      {
        goto LABEL_123;
      }

      if (v85 + v90 >= v67)
      {
        if (v67 < v90)
        {
          v64 = v62 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_81;
    }

    v91 = &v10[16 * v62];
    v93 = *v91;
    v92 = *(v91 + 1);
    v75 = __OFSUB__(v92, v93);
    v85 = v92 - v93;
    v86 = v75;
LABEL_81:
    if (v86)
    {
      goto LABEL_118;
    }

    v94 = &v10[16 * v64];
    v96 = *(v94 + 4);
    v95 = *(v94 + 5);
    v75 = __OFSUB__(v95, v96);
    v97 = v95 - v96;
    if (v75)
    {
      goto LABEL_121;
    }

    if (v97 < v85)
    {
      goto LABEL_3;
    }

LABEL_88:
    v102 = v64 - 1;
    if (v64 - 1 >= v62)
    {
      break;
    }

    if (!*v7)
    {
      goto LABEL_134;
    }

    v103 = *&v10[16 * v102 + 32];
    v104 = *&v10[16 * v64 + 40];
    sub_1D12C6040((*v7 + 8 * v103), (*v7 + 8 * *&v10[16 * v64 + 32]), (*v7 + 8 * v104), v5);
    if (v6)
    {
      goto LABEL_108;
    }

    if (v104 < v103)
    {
      goto LABEL_112;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1D1245848(v10);
    }

    if (v102 >= *(v10 + 2))
    {
      goto LABEL_113;
    }

    v105 = &v10[16 * v102];
    *(v105 + 4) = v103;
    *(v105 + 5) = v104;
    v127 = v10;
    sub_1D12457BC(v64);
    v10 = v127;
    v62 = *(v127 + 16);
    if (v62 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
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
  v5 = sub_1D1245848(v5);
LABEL_100:
  v127 = v5;
  v106 = *(v5 + 16);
  if (v106 >= 2)
  {
    do
    {
      v107 = *v7;
      if (!*v7)
      {
        goto LABEL_135;
      }

      v7 = (v106 - 1);
      v108 = *(v5 + 16 * v106);
      v109 = *(v5 + 16 * (v106 - 1) + 40);
      sub_1D12C6040((v107 + 8 * v108), (v107 + 8 * *(v5 + 16 * (v106 - 1) + 32)), (v107 + 8 * v109), v10);
      if (v6)
      {
        break;
      }

      if (v109 < v108)
      {
        goto LABEL_124;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1D1245848(v5);
      }

      if (v106 - 2 >= *(v5 + 16))
      {
        goto LABEL_125;
      }

      v110 = (v5 + 16 * v106);
      *v110 = v108;
      v110[1] = v109;
      v127 = v5;
      sub_1D12457BC(v106 - 1);
      v5 = v127;
      v106 = *(v127 + 16);
      v7 = a3;
    }

    while (v106 > 1);
  }

LABEL_108:
}

uint64_t sub_1D12C5C54(void **__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[v12] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 8 * v12);
      a4 = v29;
    }

    v54 = &a4[v12];
    v13 = a4;
    if (v10 >= 8 && v5 > v6)
    {
      v49 = a4;
      v48 = v6;
LABEL_32:
      v30 = v5 - 1;
      v31 = v4;
      v32 = v54;
      v51 = v5 - 1;
      v53 = v5;
      do
      {
        v33 = *--v32;
        v34 = *v30;
        v35 = v33;
        v36 = v34;
        v37 = [v35 identifier];
        v38 = sub_1D139016C();
        v40 = v39;

        v41 = [v36 identifier];
        v42 = sub_1D139016C();
        v44 = v43;

        if (v38 == v42 && v40 == v44)
        {

          v4 = (v31 - 8);
        }

        else
        {
          v46 = sub_1D139162C();

          v4 = (v31 - 8);
          if (v46)
          {
            v13 = v49;
            if (v31 != v53)
            {
              *v4 = *v51;
            }

            if (v54 <= v49 || (v5 = v51, v51 <= v48))
            {
              v5 = v51;
              goto LABEL_49;
            }

            goto LABEL_32;
          }
        }

        v13 = v49;
        v30 = v51;
        if (v54 != v31)
        {
          *v4 = *v32;
        }

        v54 = v32;
        v31 = v4;
      }

      while (v32 > v49);
      v54 = v32;
      v5 = v53;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v54 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v50 = v4;
      while (1)
      {
        v52 = v5;
        v14 = *v13;
        v15 = *v5;
        v16 = v14;
        v17 = [v15 identifier];
        v18 = sub_1D139016C();
        v20 = v19;

        v21 = [v16 identifier];
        v22 = sub_1D139016C();
        v24 = v23;

        v25 = v18 == v22 && v20 == v24;
        if (v25)
        {
          break;
        }

        v26 = sub_1D139162C();

        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }

        v27 = v52;
        v5 = v52 + 1;
        v28 = v50;
        if (v6 != v52)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v6;
        if (v13 >= v54 || v5 >= v28)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v27 = v13;
      v25 = v6 == v13++;
      v5 = v52;
      v28 = v50;
      if (v25)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v6 = *v27;
      goto LABEL_22;
    }

LABEL_24:
    v5 = v6;
  }

LABEL_49:
  if (v5 != v13 || v5 >= (v13 + ((v54 - v13 + (v54 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * ((v54 - v13) / 8));
  }

  return 1;
}

uint64_t sub_1D12C6040(id *__dst, id *__src, id *a3, unint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = sub_1D12C3C70(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= v21 + (v44 & 0xFFFFFFFFFFFFFFF8))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = v21 + 8;
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = &v16[-a4 + 7];
    if (&v16[-a4] >= 0)
    {
      v46 = &v16[-a4];
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = &v16[v28];
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *(v31 - 1);
    v31 -= 8;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = sub_1D12C3C70(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = (v6 + 1);
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= &v51[v40 & 0xFFFFFFFFFFFFFFF8] || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

uint64_t sub_1D12C63DC()
{
  v0 = sub_1D139037C();
  v4 = sub_1D12C645C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1D12C645C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1D1390F4C();
    if (!v9 || (v10 = v9, v11 = sub_1D12C486C(v9, 0), v12 = sub_1D12C65B4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1D139026C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1D139026C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1D139128C();
LABEL_4:

  return sub_1D139026C();
}

unint64_t sub_1D12C65B4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1D12C67D4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1D139030C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1D139128C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1D12C67D4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1D13902DC();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1D12C67D4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D139031C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1D3885C40](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_1D12C6850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1D139036C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D12C63DC();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1D139128C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1D12C6DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1D12C4304(0, &qword_1EC60B048, &qword_1EC60B040, 0x1E696C308, MEMORY[0x1E69E62F8]);
  sub_1D12C79DC();
  sub_1D12C7B00();
  sub_1D12C7B84();
  sub_1D12C7BF4(&qword_1EC60EDF0);

  return sub_1D138FE4C();
}

uint64_t sub_1D12C6F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1D12C8A44(0);
  type metadata accessor for EntryDetail.EntryDetailRow(0);
  sub_1D12C755C(&qword_1EC60EEF8, sub_1D12C8A44);
  sub_1D12C8B14();
  sub_1D12C755C(&qword_1EC60EF18, type metadata accessor for EntryDetail.EntryDetailRow);

  return sub_1D138FE4C();
}

uint64_t sub_1D12C706C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  result = sub_1D139028C();
  if (__OFSUB__(result, v1))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1D13902AC();

  return sub_1D139037C();
}

uint64_t sub_1D12C7138(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D10819BC;

  return sub_1D12C3130(a1, v4, v5, v6);
}

unint64_t sub_1D12C71EC()
{
  result = qword_1EC60ED28;
  if (!qword_1EC60ED28)
  {
    type metadata accessor for EntriesDataSource(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC60ED28);
  }

  return result;
}

void sub_1D12C7234()
{
  if (!qword_1EC60ED30)
  {
    sub_1D12C4304(255, &qword_1EC60B048, &qword_1EC60B040, 0x1E696C308, MEMORY[0x1E69E62F8]);
    sub_1D10922EC();
    v0 = sub_1D139061C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60ED30);
    }
  }
}

void sub_1D12C7344()
{
  if (!qword_1EC60ED48)
  {
    sub_1D12C749C(255, &qword_1EC60ED50);
    v0 = sub_1D138FE9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60ED48);
    }
  }
}

void sub_1D12C7424()
{
  if (!qword_1EC60ED68)
  {
    sub_1D12C749C(255, &qword_1EC60ED70);
    v0 = sub_1D138FE9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60ED68);
    }
  }
}

void sub_1D12C749C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1D12C73BC(255);
    v3 = sub_1D138FA0C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1D12C7508()
{
  result = qword_1EC60ED88;
  if (!qword_1EC60ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60ED88);
  }

  return result;
}

uint64_t sub_1D12C755C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D12C75B0(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D12C749C(255, a2);
    a4();
    sub_1D12C755C(&qword_1EC60ED90, sub_1D12C73BC);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D12C7660()
{
  result = qword_1EC60EDA0;
  if (!qword_1EC60EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60EDA0);
  }

  return result;
}

uint64_t sub_1D12C76C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D12C771C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D12C7784(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D12C77E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *result = a2;
    }
  }

  return result;
}

void sub_1D12C7840()
{
  if (!qword_1EC60EDB0)
  {
    sub_1D12C7308(255);
    sub_1D12C755C(&qword_1EC60ED78, sub_1D12C7308);
    v0 = sub_1D138FC4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EDB0);
    }
  }
}

void sub_1D12C7918()
{
  if (!qword_1EC60EDB8)
  {
    sub_1D12C4304(255, &qword_1EC60B048, &qword_1EC60B040, 0x1E696C308, MEMORY[0x1E69E62F8]);
    sub_1D12C79DC();
    sub_1D12C7B00();
    v0 = sub_1D138FE5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EDB8);
    }
  }
}

void sub_1D12C79DC()
{
  if (!qword_1EC60EDC0)
  {
    sub_1D12C7A58();
    sub_1D12C7AAC();
    v0 = sub_1D138F9DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EDC0);
    }
  }
}

unint64_t sub_1D12C7A58()
{
  result = qword_1EC60EDC8;
  if (!qword_1EC60EDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60EDC8);
  }

  return result;
}

unint64_t sub_1D12C7AAC()
{
  result = qword_1EC60EDD0;
  if (!qword_1EC60EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60EDD0);
  }

  return result;
}

unint64_t sub_1D12C7B00()
{
  result = qword_1EC60EDD8;
  if (!qword_1EC60EDD8)
  {
    sub_1D12C4304(255, &qword_1EC60B048, &qword_1EC60B040, 0x1E696C308, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60EDD8);
  }

  return result;
}

uint64_t sub_1D12C7BB8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

uint64_t sub_1D12C7BF4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D106F934(255, &qword_1EC60B040);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1D12C7C48@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

void sub_1D12C7C54()
{
  if (!qword_1EC60EDF8)
  {
    sub_1D12C7CE0();
    sub_1D12C92B8(255, &qword_1EC60EE08, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v0 = sub_1D138FA0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EDF8);
    }
  }
}

void sub_1D12C7CE0()
{
  if (!qword_1EC60EE00)
  {
    v0 = sub_1D138FDEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EE00);
    }
  }
}

void sub_1D12C7D38()
{
  if (!qword_1EC60EE10)
  {
    sub_1D12C7DA0();
    sub_1D138F99C();
    v0 = sub_1D138FA0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EE10);
    }
  }
}

void sub_1D12C7DA0()
{
  if (!qword_1EC60EE18)
  {
    sub_1D106F934(255, &qword_1EC60B040);
    sub_1D12C7E6C();
    sub_1D12C7BF4(&qword_1EC60EE28);
    sub_1D12C7F5C();
    v0 = sub_1D138FE1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EE18);
    }
  }
}

void sub_1D12C7E6C()
{
  if (!qword_1EC60EE20)
  {
    sub_1D12C4304(255, &qword_1EC60B048, &qword_1EC60B040, 0x1E696C308, MEMORY[0x1E69E62F8]);
    sub_1D106F934(255, &qword_1EC60B040);
    sub_1D12C7B00();
    sub_1D12C7BF4(&qword_1EC60EE28);
    v0 = sub_1D138FE5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EE20);
    }
  }
}

unint64_t sub_1D12C7F5C()
{
  result = qword_1EC60EE30;
  if (!qword_1EC60EE30)
  {
    sub_1D12C7E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60EE30);
  }

  return result;
}

uint64_t sub_1D12C7FDC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D10819BC;

  return sub_1D12BD708(v0 + 16);
}

void sub_1D12C8070()
{
  if (!qword_1EC60EE40)
  {
    type metadata accessor for EntriesDataSource(255);
    sub_1D12C755C(&qword_1EC60DA60, type metadata accessor for EntriesDataSource);
    v0 = sub_1D138FA3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EE40);
    }
  }
}

uint64_t objectdestroy_77Tm()
{

  sub_1D12C7FD4();

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D12C8170(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D12C81D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D12C8254(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D12C82B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D108077C;

  return sub_1D12BDDF8(a1, v4, v5, (v1 + 4), v6);
}

void sub_1D12C8394()
{
  if (!qword_1EC60EE58)
  {
    sub_1D12C7918();
    sub_1D12C8A98(&qword_1EC60EDE0, sub_1D12C7918, sub_1D12C7B84);
    v0 = sub_1D138FC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EE58);
    }
  }
}

void sub_1D12C84F4()
{
  if (!qword_1EC60EE80)
  {
    sub_1D12C8574();
    sub_1D12C86A0(255, &qword_1EC60EEA8, &qword_1EC60EEB0, MEMORY[0x1E6980F50]);
    v0 = sub_1D138FA0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EE80);
    }
  }
}

void sub_1D12C8574()
{
  if (!qword_1EC60EE88)
  {
    sub_1D12C8608(255);
    sub_1D12C755C(&qword_1EC60EEA0, sub_1D12C8608);
    v0 = sub_1D138FDFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EE88);
    }
  }
}

void sub_1D12C863C()
{
  if (!qword_1EC60EE98)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC60EE98);
    }
  }
}

void sub_1D12C86A0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D12C92B8(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1D138FBBC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D12C870C()
{
  if (!qword_1EC60EEB8)
  {
    sub_1D12C878C();
    sub_1D12C86A0(255, &qword_1EC60EEA8, &qword_1EC60EEB0, MEMORY[0x1E6980F50]);
    v0 = sub_1D138FA0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EEB8);
    }
  }
}

void sub_1D12C878C()
{
  if (!qword_1EC60EEC0)
  {
    sub_1D12C8820(255);
    sub_1D12C755C(&qword_1EC60EED8, sub_1D12C8820);
    v0 = sub_1D138FDFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EEC0);
    }
  }
}

void sub_1D12C8854()
{
  if (!qword_1EC60EED0)
  {
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC60EED0);
    }
  }
}

void sub_1D12C88CC()
{
  if (!qword_1EC60EEE0)
  {
    sub_1D12C897C();
    sub_1D12C8A98(&qword_1EC60EF00, sub_1D12C897C, sub_1D12C8B14);
    v0 = sub_1D138FC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EEE0);
    }
  }
}

void sub_1D12C897C()
{
  if (!qword_1EC60EEE8)
  {
    sub_1D12C8A44(255);
    type metadata accessor for EntryDetail.EntryDetailRow(255);
    sub_1D12C755C(&qword_1EC60EEF8, sub_1D12C8A44);
    v0 = sub_1D138FE5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EEE8);
    }
  }
}

uint64_t sub_1D12C8A98(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D12C8B7C(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x646574726F706D49;
      }

      goto LABEL_8;
    }

    return 0x646567617453;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x746F6D6552206E4FLL;
      }

LABEL_8:
      MEMORY[0x1D3885C10](0x2064696C61766E49, 0xE800000000000000);
      type metadata accessor for HKOntologyShardState(0);
      sub_1D139133C();
      return 0;
    }

    return 0x6E776F6E6B6E55;
  }
}

void sub_1D12C8CAC()
{
  sub_1D12C92B8(319, &qword_1EE06A660, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D106A23C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D12C8D5C()
{
  if (!qword_1EC60EF40)
  {
    sub_1D12C84B8(255);
    sub_1D12C755C(&qword_1EC60EF48, sub_1D12C84B8);
    v0 = sub_1D138FE2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EF40);
    }
  }
}

void sub_1D12C8E0C()
{
  if (!qword_1EC60EF50)
  {
    sub_1D12C8E74(255);
    v0 = sub_1D138F9AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EF50);
    }
  }
}

void sub_1D12C8EB0(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1D12C81D8(255, a3, a4, a5);
    v6 = sub_1D138FEAC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D12C8F0C()
{
  if (!qword_1EC60EF68)
  {
    sub_1D12C8FA0(255);
    sub_1D12C755C(&qword_1EC60EF88, sub_1D12C8FA0);
    v0 = sub_1D138FDFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EF68);
    }
  }
}

void sub_1D12C8FD4()
{
  if (!qword_1EC60EF78)
  {
    sub_1D12C9044();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC60EF78);
    }
  }
}

void sub_1D12C9044()
{
  if (!qword_1EC60EF80)
  {
    sub_1D138FBAC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC60EF80);
    }
  }
}

void sub_1D12C9110()
{
  if (!qword_1EC60EF98)
  {
    sub_1D12C9190();
    sub_1D12C86A0(255, &qword_1EC60EFC0, &qword_1EC60EFC8, MEMORY[0x1E69815C0]);
    v0 = sub_1D138FA0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EF98);
    }
  }
}

void sub_1D12C9190()
{
  if (!qword_1EC60EFA0)
  {
    sub_1D12C9224(255);
    sub_1D12C755C(&qword_1EC60EFB8, sub_1D12C9224);
    v0 = sub_1D138FDFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EFA0);
    }
  }
}

void sub_1D12C9258()
{
  if (!qword_1EC60EFB0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60EFB0);
    }
  }
}

void sub_1D12C92B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D12C9308()
{
  if (!qword_1EC60EFD0)
  {
    sub_1D12C8FA0(255);
    v0 = sub_1D138F9AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EFD0);
    }
  }
}

void sub_1D12C9370()
{
  if (!qword_1EC60EFE0)
  {
    sub_1D12C8E74(255);
    sub_1D12C755C(&qword_1EC60EFE8, sub_1D12C8E74);
    v0 = sub_1D138FE2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EFE0);
    }
  }
}

uint64_t sub_1D12C940C()
{
  type metadata accessor for TopAlignedIconListCell();
  sub_1D12CA22C();
  return sub_1D138DECC();
}

uint64_t sub_1D12C9440(uint64_t a1)
{
  v2 = sub_1D12CA280();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1D12C948C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI22TopAlignedIconListCell_item;
  swift_beginAccess();
  sub_1D10B1300(a1, v1 + v3);
  swift_endAccess();
  sub_1D10A71C0(v1 + v3, v10);
  if (v11)
  {
    sub_1D10A7254();
    if (swift_dynamicCast())
    {
      v12[0] = v6;
      v12[1] = v7;
      v12[2] = v8;
      v13 = v9;
      sub_1D12C96B4(v12);
      sub_1D12CA0E4(v12);
    }

    v4 = a1;
  }

  else
  {
    sub_1D10A72B8(a1);
    v4 = v10;
  }

  return sub_1D10A72B8(v4);
}

void (*sub_1D12C9568(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA8uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI22TopAlignedIconListCell_item;
  *(v3 + 152) = v1;
  *(v3 + 160) = v4;
  swift_beginAccess();
  return sub_1D12C95F4;
}

void sub_1D12C95F4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D10A71C0(*(v3 + 19) + *(v3 + 20), (v3 + 112));
    if (*(v3 + 17))
    {
      sub_1D10A7254();
      if (swift_dynamicCast())
      {
        v4 = *(v3 + 72);
        *v3 = *(v3 + 56);
        *(v3 + 1) = v4;
        *(v3 + 2) = *(v3 + 88);
        *(v3 + 6) = *(v3 + 13);
        sub_1D12C96B4(v3);
        sub_1D12CA0E4(v3);
      }
    }

    else
    {
      sub_1D10A72B8((v3 + 112));
    }
  }

  free(v3);
}

void sub_1D12C96B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D138F3FC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1D38864F0](v6);

  sub_1D138F3BC();
  sub_1D106F934(0, &qword_1EC60E670);
  sub_1D1390C6C();
  v9 = sub_1D138F2FC();
  sub_1D138F2CC();
  v9(v57, 0);

  sub_1D138F29C();
  sub_1D1390C6C();
  v10 = sub_1D138F34C();
  sub_1D138F2CC();
  v10(v57, 0);
  v11 = [objc_opt_self() secondaryLabelColor];
  v12 = sub_1D138F34C();
  sub_1D138F2DC();
  v12(v57, 0);
  v13 = [objc_opt_self() hk:45.0 transparentInterfaceImageWithSize:45.0];
  sub_1D138F3CC();
  v14 = sub_1D138F28C();
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    v17 = [v15 textLayoutGuide];
    if (v17)
    {
      v18 = v17;
      v19 = [v16 imageLayoutGuide];
      if (v19)
      {
        v52 = v5;
        v55 = v4;
        v56 = v19;
        v54 = v14;
        [v16 setTranslatesAutoresizingMaskIntoConstraints_];
        v20 = [v2 contentView];
        [v20 addSubview_];

        v21 = [v2 contentView];
        [v16 hk:v21 alignConstraintsWithView:?];

        v22 = [v2 separatorLayoutGuide];
        v23 = [v22 leadingAnchor];

        v24 = [v18 &selRef_hrui_insurance + 1];
        v25 = [v23 constraintEqualToAnchor_];

        [v25 setActive_];
        v26 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
        [v26 setImage_];
        v27 = v26;
        [v27 setTranslatesAutoresizingMaskIntoConstraints_];
        v28 = [v2 contentView];
        [v28 addSubview_];

        v51 = objc_opt_self();
        sub_1D106F424();
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1D139F5B0;
        v30 = [v27 topAnchor];
        v53 = v18;
        v31 = [v18 topAnchor];
        v32 = [v30 constraintEqualToAnchor_];

        *(v29 + 32) = v32;
        v33 = [v27 leadingAnchor];
        v34 = v56;
        v35 = [v56 leadingAnchor];
        v36 = [v33 constraintEqualToAnchor_];

        *(v29 + 40) = v36;
        v37 = [v27 widthAnchor];
        v38 = [v34 widthAnchor];
        v39 = [v37 constraintEqualToAnchor_];

        *(v29 + 48) = v39;
        v40 = [v27 heightAnchor];

        v41 = [v34 heightAnchor];
        v42 = [v40 constraintEqualToAnchor_];

        *(v29 + 56) = v42;
        sub_1D106F934(0, &qword_1EC609690);
        v43 = sub_1D139044C();

        [v51 activateConstraints_];

        v44 = *&v2[OBJC_IVAR____TtC15HealthRecordsUI22TopAlignedIconListCell_iconView];
        *&v2[OBJC_IVAR____TtC15HealthRecordsUI22TopAlignedIconListCell_iconView] = v27;
        if (v44)
        {
          v45 = v27;
          [v44 removeFromSuperview];
        }

        else
        {
          v46 = v27;
        }

        v47 = v52;
        v48 = *&v2[OBJC_IVAR____TtC15HealthRecordsUI22TopAlignedIconListCell_listContentView];
        *&v2[OBJC_IVAR____TtC15HealthRecordsUI22TopAlignedIconListCell_listContentView] = v16;
        v49 = v55;
        v50 = v54;
        [v48 removeFromSuperview];

        (*(v47 + 8))(v8, v49);
      }

      else
      {
        (*(v5 + 8))(v8, v4);
      }
    }

    else
    {
      (*(v5 + 8))(v8, v4);
    }
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }
}

id sub_1D12C9EA4(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC15HealthRecordsUI22TopAlignedIconListCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI22TopAlignedIconListCell_iconView] = 0;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI22TopAlignedIconListCell_listContentView] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for TopAlignedIconListCell();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1D12C9F64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TopAlignedIconListCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D12CA018@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI22TopAlignedIconListCell_item;
  swift_beginAccess();
  return sub_1D10A71C0(v1 + v3, a1);
}

void (*sub_1D12CA074(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1D12C9568(v2);
  return sub_1D10B0564;
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

uint64_t sub_1D12CA130(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D12CA178(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1D12CA1D8()
{
  result = qword_1EC60F008;
  if (!qword_1EC60F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60F008);
  }

  return result;
}

unint64_t sub_1D12CA22C()
{
  result = qword_1EC60E7E0;
  if (!qword_1EC60E7E0)
  {
    type metadata accessor for TopAlignedIconListCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60E7E0);
  }

  return result;
}

unint64_t sub_1D12CA280()
{
  result = qword_1EC60F010;
  if (!qword_1EC60F010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60F010);
  }

  return result;
}

unint64_t HKClinicalSharingOnboardingFlowType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

void sub_1D12CA344()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC60F018 = v1;
  unk_1EC60F020 = v3;
}

void sub_1D12CA41C()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC60F028 = v1;
  unk_1EC60F030 = v3;
}

void sub_1D12CA4F4()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC60F038 = v1;
  unk_1EC60F040 = v3;
}

void sub_1D12CA5CC()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC60F048 = v1;
  unk_1EC60F050 = v3;
}

void sub_1D12CA6A4()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC60F058 = v1;
  unk_1EC60F060 = v3;
}

void sub_1D12CA77C()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC60F068 = v1;
  unk_1EC60F070 = v3;
}

void sub_1D12CA854()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC60F078 = v1;
  unk_1EC60F080 = v3;
}

void sub_1D12CA92C()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC60F088 = v1;
  unk_1EC60F090 = v3;
}

void sub_1D12CAA04()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC60F098 = v1;
  unk_1EC60F0A0 = v3;
}

void sub_1D12CAADC()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC60F0A8 = v1;
  unk_1EC60F0B0 = v3;
}

void sub_1D12CABB4()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC60F0B8 = v1;
  unk_1EC60F0C0 = v3;
}

void sub_1D12CAC8C()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC60F0C8 = v1;
  unk_1EC60F0D0 = v3;
}

void sub_1D12CAD64()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC60F0D8 = v1;
  unk_1EC60F0E0 = v3;
}

void sub_1D12CAE3C()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC60F0E8 = v1;
  unk_1EC60F0F0 = v3;
}

void sub_1D12CAF14()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC60F0F8 = v1;
  unk_1EC60F100 = v3;
}

void sub_1D12CAFEC()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC60F108 = v1;
  unk_1EC60F110 = v3;
}

id sub_1D12CB0C4()
{
  v1 = OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController____lazy_storage___logoView;
  v2 = *(v0 + OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController____lazy_storage___logoView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController____lazy_storage___logoView);
  }

  else
  {
    v4 = [objc_allocWithZone(WDBrandLogoView) initWithSize_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t ClinicalSharingOnboardingInformationalViewController.init(onboardingSession:flowType:selectedAccount:delegate:)(char *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_1D138F0BC();
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController_gatewayProxyToTry;
  *&v4[OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController_gatewayProxyToTry] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController_accountStateCancellable] = 0;
  *&v4[OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController____lazy_storage___logoView] = 0;
  *&v4[OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController_onboardingSession] = a1;
  *&v4[OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController_flowType] = a2;
  *&v4[OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController_selectedAccount] = a3;
  v12 = *&a1[OBJC_IVAR___WDClinicalAccountOnboardingSession_profile];
  v55 = a3;
  v54 = a1;
  v13 = [v12 onboardingManager];
  v14 = [v13 getPendingOnboardingGatewayAndClear];

  v15 = *&v4[v11];
  *&v4[v11] = v14;

  swift_unknownObjectWeakAssign();
  if ((a2 - 1) < 2)
  {
    v16 = a3;
    if (a3)
    {
      v53 = a3;
      v17 = qword_1EC608E08;
      v18 = v55;
      if (v17 != -1)
      {
        swift_once();
      }

      sub_1D10F48A8();
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1D139E700;
      v20 = [v18 title];
      v21 = sub_1D139016C();
      v23 = v22;

      *(v19 + 56) = MEMORY[0x1E69E6158];
      *(v19 + 64) = sub_1D1089930();
      *(v19 + 32) = v21;
      *(v19 + 40) = v23;
      sub_1D13901AC();
      if (qword_1EC608DC0 != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&dword_1EC60E248);
      os_unfair_lock_unlock(&dword_1EC60E248);
      v24 = [v18 title];
      v25 = sub_1D139016C();
      v27 = v26;

      if (qword_1EC608EB8 != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&dword_1EC610468);

      os_unfair_lock_unlock(&dword_1EC610468);
      swift_beginAccess();
      swift_beginAccess();
      v28 = sub_1D1378CC0(v25, v27, 48.0);
      swift_endAccess();
      swift_endAccess();

      v29 = [v28 scaledToTargetSize_];

      v16 = v53;
LABEL_24:
      if (qword_1EC608E10 != -1)
      {
        swift_once();
      }

      v33 = unk_1EC60F040;

      goto LABEL_27;
    }

    sub_1D138F06C();
    v34 = sub_1D138F0AC();
    v35 = sub_1D139081C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1D101F000, v34, v35, "ClinicalSharingOnboardingInformationalViewController: there is no selected account.", v36, 2u);
      MEMORY[0x1D38882F0](v36, -1, -1);
    }

    (*(v52 + 8))(v10, v53);
    if (qword_1EC608E00 != -1)
    {
      swift_once();
    }

    a2 = qword_1EC60F018;
    v37 = qword_1EE06A528;

    if (v37 != -1)
    {
      swift_once();
    }

    v38 = qword_1EE06B6C8;
    v39 = sub_1D139012C();
    v29 = [objc_opt_self() imageNamed:v39 inBundle:v38];

    if (v29)
    {
      goto LABEL_24;
    }

    goto LABEL_38;
  }

  if (a2)
  {
LABEL_39:
    v56 = a2;
    result = sub_1D139169C();
    __break(1u);
    return result;
  }

  v16 = a3;
  if (qword_1EC608E00 != -1)
  {
    swift_once();
  }

  a2 = qword_1EC60F018;
  v30 = qword_1EE06A528;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = qword_1EE06B6C8;
  v32 = sub_1D139012C();
  v29 = [objc_opt_self() imageNamed:v32 inBundle:v31];

  if (!v29)
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v33 = 0;
LABEL_27:
  v40 = sub_1D139012C();

  if (v16)
  {
    if (v33)
    {
      v41 = sub_1D139012C();
    }

    else
    {
      v41 = 0;
    }

    v43 = type metadata accessor for ClinicalSharingOnboardingInformationalViewController();
    v57.receiver = v4;
    v57.super_class = v43;
    v44 = objc_msgSendSuper2(&v57, sel_initWithTitle_detailText_icon_contentLayout_, v40, v41, 0, 2);

    v45 = v44;
    sub_1D12CD308();
    v46 = sub_1D12CB0C4();
    [v46 setImage_];

    v47 = [*(*&v45[OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController_onboardingSession] + OBJC_IVAR___WDClinicalAccountOnboardingSession_profile) healthStore];
    v48 = [objc_allocWithZone(MEMORY[0x1E696C1A8]) initWithHealthStore_];

    v40 = [objc_allocWithZone(WDClinicalSourcesDataProvider) initWithHealthRecordsStore_];
    v42 = sub_1D12CB0C4();
    v49 = v55;
    [v42 fetchBrandable:v55 dataProvider:v40];

    swift_unknownObjectRelease();
  }

  else
  {
    if (v33)
    {
      v42 = sub_1D139012C();
    }

    else
    {
      v42 = 0;
    }

    v50 = type metadata accessor for ClinicalSharingOnboardingInformationalViewController();
    v58.receiver = v4;
    v58.super_class = v50;
    v45 = objc_msgSendSuper2(&v58, sel_initWithTitle_detailText_icon_contentLayout_, v40, v42, v29, 2);

    swift_unknownObjectRelease();
  }

  return v45;
}