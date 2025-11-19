double sub_1D6201D30@<D0>(__int128 *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v28 = a3;
  sub_1D5EA74B8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = 0;
  v51 = *(a1 + 18);
  v11 = a1[7];
  v48 = a1[6];
  v49 = v11;
  v50 = a1[8];
  v12 = a1[3];
  v44 = a1[2];
  v45 = v12;
  v13 = a1[5];
  v46 = a1[4];
  v47 = v13;
  v14 = a1[1];
  v42 = *a1;
  v43 = v14;
  v15 = a2[6];
  v16 = a2[7];
  v17 = a2[4];
  v57 = a2[5];
  v58 = v15;
  v59[0] = v16;
  *(v59 + 9) = *(a2 + 121);
  v18 = a2[3];
  v54 = a2[2];
  v55 = v18;
  v56 = v17;
  v19 = a2[1];
  v52 = *a2;
  v53 = v19;
  v20 = MEMORY[0x1E69E7CC0];
  do
  {
    v21 = byte_1F50F7280[v10 + 32];
    v40[5] = v57;
    v40[6] = v58;
    v41[0] = v59[0];
    *(v41 + 9) = *(v59 + 9);
    v40[2] = v54;
    v40[3] = v55;
    v40[4] = v56;
    v40[0] = v52;
    v40[1] = v53;
    v36 = v48;
    v37 = v49;
    v38 = v50;
    v39 = v51;
    v32 = v44;
    v33 = v45;
    v34 = v46;
    v35 = v47;
    v30 = v42;
    v31 = v43;
    sub_1D5ECF2C4(&v52, v29);
    sub_1D5FBAE1C(&v42, v29);
    sub_1D62014B8(v21, v40, &v30, v9);
    v22 = type metadata accessor for FormatInspectionItem(0);
    (*(*(v22 - 8) + 56))(v9, 0, 1, v22);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1D698C0A8(0, v20[2] + 1, 1, v20);
    }

    v24 = v20[2];
    v23 = v20[3];
    if (v24 >= v23 >> 1)
    {
      v20 = sub_1D698C0A8(v23 > 1, v24 + 1, 1, v20);
    }

    ++v10;
    v20[2] = v24 + 1;
    sub_1D5E4F52C(v9, v20 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24);
  }

  while (v10 != 11);
  sub_1D6795150(0x646E616D6D6F43, 0xE700000000000000, 0, 0, v20, &v30);

  result = *&v30;
  v26 = v31;
  v27 = v28;
  *v28 = v30;
  v27[1] = v26;
  *(v27 + 4) = v32;
  return result;
}

uint64_t sub_1D6202014()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

id sub_1D62020BC(void *a1, uint64_t a2)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v6, v8).n128_u64[0];
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 dataProvider];
  if (v12)
  {
    v13 = v12;
    v37 = a2;
    if ([v12 isRawFileConsumable])
    {
      v14 = [v13 filePath];
      if (v14)
      {
        v35 = v3;
        v36 = a1;
        v15 = v14;
        sub_1D726207C();

        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        sub_1D725840C();

        v17 = sub_1D725844C();
        (*(v7 + 8))(v11, v6);
        v18 = sub_1D726203C();

        v38[0] = 0;
        v2 = [ObjCClassFromMetadata packageWithContentsOfURL:v17 type:v18 options:0 error:v38];

        if (v2)
        {
          v19 = v38[0];
        }

        else
        {
          v32 = v38[0];
          sub_1D725829C();

          swift_willThrow();
        }

LABEL_15:
        swift_unknownObjectRelease();

        return v2;
      }
    }

    v20 = [v13 data];
    if (v20)
    {
      v35 = v3;
      v36 = a1;
      v21 = v20;
      v22 = sub_1D725867C();
      v24 = v23;

      v25 = swift_getObjCClassFromMetadata();
      v26 = sub_1D725865C();
      v27 = sub_1D726203C();

      v38[0] = 0;
      v2 = [v25 packageWithData:v26 type:v27 options:0 error:v38];

      if (v2)
      {
        v28 = v38[0];
      }

      else
      {
        v31 = v38[0];
        sub_1D725829C();

        swift_willThrow();
      }

      sub_1D5B952F8(v22, v24);
      goto LABEL_15;
    }

    sub_1D620247C();
    swift_allocError();
    *v30 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {

    sub_1D620247C();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();
  }

  return v2;
}

unint64_t sub_1D620247C()
{
  result = qword_1EC8853C0;
  if (!qword_1EC8853C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8853C0);
  }

  return result;
}

unint64_t sub_1D62024E4()
{
  result = qword_1EC8853C8;
  if (!qword_1EC8853C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8853C8);
  }

  return result;
}

uint64_t sub_1D6202538(uint64_t a1)
{
  sub_1D5B54630(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v29 - v6;
  v8 = type metadata accessor for FeedWeather(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *v1;
  v12 = *(v1 + 8);
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = (v15 >> 3) & 7;
  if (v16 <= 1)
  {
    if (v16)
    {
      sub_1D67507D8(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v11);
      if (!v2)
      {
        if (qword_1EDF3AF88 != -1)
        {
          swift_once();
        }

        v23 = qword_1EDF3AF90;
        sub_1D5B5A498(0, &qword_1EDF043B0);
        v24 = *v11;
        v25 = v11[1];
        v26 = objc_allocWithZone(MEMORY[0x1E6985C40]);

        v27 = [v26 initWithLatitude:v24 longitude:v25];
        sub_1D726324C();

        type metadata accessor for FormatCommandAction();
        swift_allocObject();
        a1 = sub_1D62029B4(v23, v7);
        sub_1D60B12DC(v11);
      }
    }

    else
    {
      sub_1D6750B04(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v30);
      if (!v2)
      {
        v19 = *(&v30[0] + 1);
        a1 = sub_1D6896CAC(*&v30[0], a1, v13, v12, v14);
        swift_unknownObjectRelease();
      }
    }
  }

  else if (v16 == 2)
  {
    sub_1D67505CC(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v30);
    if (!v2)
    {
      v20 = *&v30[0];
      v21 = FCFeedDescriptor.feedTag.getter();
      a1 = sub_1D6896CAC(v21, a1, v13, v12, v14);
      swift_unknownObjectRelease();
    }
  }

  else if (v16 == 3)
  {
    sub_1D67505CC(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v30);
    if (!v2)
    {
      v17 = *&v30[0];
      v18 = [objc_msgSend(*&v30[0] backingTag)];
      swift_unknownObjectRelease();
      if (v18)
      {
        a1 = sub_1D6896CAC(v18, a1, v13, v12, v14);

        swift_unknownObjectRelease();
      }

      else
      {
        a1 = type metadata accessor for FormatLayoutError();
        sub_1D5D285FC();
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }
    }
  }

  else
  {
    sub_1D6750380(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v30);
    if (!v2)
    {
      v32[0] = v30[0];
      v32[1] = v30[1];
      v33 = v31;
      sub_1D6896A54(v32, a1, v13, v12, v14, v15 & 0xC7);
      a1 = v28;
      sub_1D62058A0(v32);
    }
  }

  return a1;
}

uint64_t sub_1D62029B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E6968FB0];
  sub_1D5B54630(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v10);
  v12 = v31 - v11;
  *(v3 + 16) = sub_1D725F7AC();
  *(v3 + 24) = v13;
  *(v3 + 32) = 0;
  v31[0] = v6;
  sub_1D62058F4(a2, v12, &qword_1EDF45B40, v6, sub_1D5B54630);
  v14 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  sub_1D5EB8540(v12, v15 + v14);
  *(v3 + 40) = sub_1D6205964;
  *(v3 + 48) = v15;
  sub_1D62058F4(a2, v12, &qword_1EDF45B40, v6, sub_1D5B54630);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  sub_1D5EB8540(v12, v16 + v14);
  *(v3 + 56) = sub_1D6205A0C;
  *(v3 + 64) = v16;
  v17 = a2;
  v18 = a2;
  v19 = v31[0];
  v33 = sub_1D5B54630;
  sub_1D62058F4(v17, v12, &qword_1EDF45B40, v31[0], sub_1D5B54630);
  v31[1] = v9;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  sub_1D5EB8540(v12, v20 + v14);
  *(v3 + 72) = sub_1D6205AB0;
  *(v3 + 80) = v20;
  v32 = v18;
  sub_1D62058F4(v18, v12, &qword_1EDF45B40, v19, sub_1D5B54630);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  sub_1D5EB8540(v12, v21 + v14);
  *(v3 + 88) = sub_1D6206C90;
  *(v3 + 96) = v21;

  v22 = v19;
  v23 = v33;
  sub_1D62058F4(v18, v12, &qword_1EDF45B40, v19, v33);
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  sub_1D5EB8540(v12, v24 + v14);
  *(v3 + 104) = sub_1D6205B78;
  *(v3 + 112) = v24;

  v25 = v32;
  sub_1D62058F4(v32, v12, &qword_1EDF45B40, v22, v23);
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  sub_1D5EB8540(v12, v26 + v14);
  *(v3 + 120) = sub_1D6205BB4;
  *(v3 + 128) = v26;

  v27 = v25;
  sub_1D62058F4(v25, v12, &qword_1EDF45B40, v22, v23);
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  sub_1D5EB8540(v12, v28 + v14);
  *(v3 + 136) = sub_1D6205C44;
  *(v3 + 144) = v28;
  sub_1D5EB8540(v27, v12);
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  sub_1D5EB8540(v12, v29 + v14);
  *(v3 + 152) = sub_1D6205C94;
  *(v3 + 160) = v29;
  swift_retain_n();
  return v3;
}

uint64_t sub_1D6202DC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 16) = sub_1D725F7AC();
  *(v3 + 24) = v6;
  *(v3 + 32) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v3 + 40) = sub_1D62067B4;
  *(v3 + 48) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v3 + 56) = sub_1D6206828;
  *(v3 + 64) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v3 + 72) = sub_1D6206430;
  *(v3 + 80) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v3 + 88) = sub_1D6206C94;
  *(v3 + 96) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v3 + 104) = sub_1D5C00104;
  *(v3 + 112) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v3 + 120) = sub_1D6206C8C;
  *(v3 + 128) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v3 + 136) = sub_1D6206C94;
  *(v3 + 144) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v3 + 152) = sub_1D62068A0;
  *(v3 + 160) = v14;
  swift_retain_n();
  swift_unknownObjectRetain_n();
  return v3;
}

uint64_t sub_1D6202F80(uint64_t a1, char a2)
{
  v3 = v2;
  *(v3 + 16) = sub_1D725F7AC();
  *(v3 + 24) = v6;
  *(v3 + 32) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2 & 1;
  *(v3 + 40) = sub_1D6206640;
  *(v3 + 48) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2 & 1;
  *(v3 + 56) = sub_1D62066BC;
  *(v3 + 64) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2 & 1;
  *(v3 + 72) = sub_1D620673C;
  *(v3 + 80) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2 & 1;
  *(v3 + 88) = sub_1D6206C94;
  *(v3 + 96) = v10;

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2 & 1;
  *(v3 + 104) = sub_1D5C00104;
  *(v3 + 112) = v11;

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2 & 1;
  *(v3 + 120) = sub_1D6206C8C;
  *(v3 + 128) = v12;

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2 & 1;
  *(v3 + 136) = sub_1D6206C94;
  *(v3 + 144) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2 & 1;
  *(v3 + 152) = sub_1D62067A8;
  *(v3 + 160) = v14;
  swift_retain_n();
  return v3;
}

uint64_t sub_1D62031B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 16) = sub_1D725F7AC();
  *(v4 + 24) = v8;
  *(v4 + 32) = 0;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  *(v4 + 40) = sub_1D6206494;
  *(v4 + 48) = v9;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  *(v4 + 56) = sub_1D620650C;
  *(v4 + 64) = v10;
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  *(v4 + 72) = sub_1D6206588;
  *(v4 + 80) = v11;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  *(v4 + 88) = sub_1D6206C94;
  *(v4 + 96) = v12;
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  *(v4 + 104) = sub_1D5C00104;
  *(v4 + 112) = v13;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  *(v4 + 120) = sub_1D6206C8C;
  *(v4 + 128) = v14;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  *(v4 + 136) = sub_1D6206C94;
  *(v4 + 144) = v15;
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  *(v4 + 152) = sub_1D6206634;
  *(v4 + 160) = v16;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  return v4;
}

uint64_t sub_1D620338C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + 16) = sub_1D725F7AC();
  *(v5 + 24) = v10;
  *(v5 + 32) = 0;
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  *(v5 + 40) = sub_1D620626C;
  *(v5 + 48) = v11;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  *(v5 + 56) = sub_1D6206278;
  *(v5 + 64) = v12;
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  *(v5 + 72) = sub_1D6206298;
  *(v5 + 80) = v13;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  *(v5 + 88) = sub_1D6206C94;
  *(v5 + 96) = v14;

  sub_1D620630C(a2);
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  *(v5 + 104) = sub_1D5C00104;
  *(v5 + 112) = v15;

  sub_1D620630C(a2);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  *(v5 + 120) = sub_1D6206354;
  *(v5 + 128) = v16;

  sub_1D620630C(a2);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  *(v5 + 136) = sub_1D6206358;
  *(v5 + 144) = v17;
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  *(v5 + 152) = sub_1D62063B8;
  *(v5 + 160) = v18;

  sub_1D620630C(a2);

  sub_1D620630C(a2);

  sub_1D620630C(a2);

  sub_1D620630C(a2);
  return v5;
}

uint64_t sub_1D6203604(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 16) = sub_1D725F7AC();
  *(v3 + 24) = v6;
  *(v3 + 32) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v3 + 40) = sub_1D62063C4;
  *(v3 + 48) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v3 + 56) = sub_1D62063FC;
  *(v3 + 64) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v3 + 72) = sub_1D6206430;
  *(v3 + 80) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v3 + 88) = sub_1D6206C94;
  *(v3 + 96) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v3 + 104) = sub_1D5C00104;
  *(v3 + 112) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v3 + 120) = sub_1D6206C8C;
  *(v3 + 128) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v3 + 136) = sub_1D6206C94;
  *(v3 + 144) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v3 + 152) = sub_1D6206448;
  *(v3 + 160) = v14;
  swift_retain_n();
  swift_unknownObjectRetain_n();
  return v3;
}

uint64_t sub_1D62037BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 16) = sub_1D725F7AC();
  *(v3 + 24) = v6;
  *(v3 + 32) = 0;
  v7 = swift_allocObject();
  v8 = *a2;
  *(v7 + 40) = *(a2 + 16);
  v9 = *(a2 + 48);
  *(v7 + 56) = *(a2 + 32);
  *(v7 + 72) = v9;
  *(v7 + 16) = a1;
  *(v7 + 87) = *(a2 + 63);
  *(v7 + 24) = v8;
  *(v3 + 40) = sub_1D620600C;
  *(v3 + 48) = v7;
  v10 = swift_allocObject();
  v11 = *a2;
  *(v10 + 40) = *(a2 + 16);
  v12 = *(a2 + 48);
  *(v10 + 56) = *(a2 + 32);
  *(v10 + 72) = v12;
  *(v10 + 16) = a1;
  *(v10 + 87) = *(a2 + 63);
  *(v10 + 24) = v11;
  *(v3 + 56) = sub_1D620609C;
  *(v3 + 64) = v10;
  v13 = swift_allocObject();
  v14 = *a2;
  *(v13 + 40) = *(a2 + 16);
  v15 = *(a2 + 48);
  *(v13 + 56) = *(a2 + 32);
  *(v13 + 72) = v15;
  *(v13 + 16) = a1;
  *(v13 + 87) = *(a2 + 63);
  *(v13 + 24) = v14;
  *(v3 + 72) = sub_1D6206130;
  *(v3 + 80) = v13;
  v16 = swift_allocObject();
  v17 = *a2;
  *(v16 + 40) = *(a2 + 16);
  v18 = *(a2 + 48);
  *(v16 + 56) = *(a2 + 32);
  *(v16 + 72) = v18;
  *(v16 + 16) = a1;
  *(v16 + 87) = *(a2 + 63);
  *(v16 + 24) = v17;
  *(v3 + 88) = sub_1D6206C94;
  *(v3 + 96) = v16;

  sub_1D62058F4(a2, v32, &qword_1EDF0FCC0, &type metadata for CommandShareContent, sub_1D5B49CBC);
  v19 = swift_allocObject();
  v20 = *a2;
  *(v19 + 40) = *(a2 + 16);
  v21 = *(a2 + 48);
  *(v19 + 56) = *(a2 + 32);
  *(v19 + 72) = v21;
  *(v19 + 16) = a1;
  *(v19 + 87) = *(a2 + 63);
  *(v19 + 24) = v20;
  *(v3 + 104) = sub_1D5C00104;
  *(v3 + 112) = v19;

  sub_1D62058F4(a2, v32, &qword_1EDF0FCC0, &type metadata for CommandShareContent, sub_1D5B49CBC);
  v22 = swift_allocObject();
  v23 = *a2;
  *(v22 + 40) = *(a2 + 16);
  v24 = *(a2 + 48);
  *(v22 + 56) = *(a2 + 32);
  *(v22 + 72) = v24;
  *(v22 + 16) = a1;
  *(v22 + 87) = *(a2 + 63);
  *(v22 + 24) = v23;
  *(v3 + 120) = sub_1D6206C8C;
  *(v3 + 128) = v22;

  sub_1D62058F4(a2, v32, &qword_1EDF0FCC0, &type metadata for CommandShareContent, sub_1D5B49CBC);
  v25 = swift_allocObject();
  v26 = *a2;
  *(v25 + 40) = *(a2 + 16);
  v27 = *(a2 + 48);
  *(v25 + 56) = *(a2 + 32);
  *(v25 + 72) = v27;
  *(v25 + 16) = a1;
  *(v25 + 87) = *(a2 + 63);
  *(v25 + 24) = v26;
  *(v3 + 136) = sub_1D6206C94;
  *(v3 + 144) = v25;
  v28 = swift_allocObject();
  v29 = *a2;
  *(v28 + 40) = *(a2 + 16);
  v30 = *(a2 + 48);
  *(v28 + 56) = *(a2 + 32);
  *(v28 + 72) = v30;
  *(v28 + 16) = a1;
  *(v28 + 87) = *(a2 + 63);
  *(v28 + 24) = v29;
  *(v3 + 152) = sub_1D6206224;
  *(v3 + 160) = v28;

  sub_1D62058F4(a2, v32, &qword_1EDF0FCC0, &type metadata for CommandShareContent, sub_1D5B49CBC);

  sub_1D62058F4(a2, v32, &qword_1EDF0FCC0, &type metadata for CommandShareContent, sub_1D5B49CBC);

  sub_1D62058F4(a2, v32, &qword_1EDF0FCC0, &type metadata for CommandShareContent, sub_1D5B49CBC);

  sub_1D62058F4(a2, v32, &qword_1EDF0FCC0, &type metadata for CommandShareContent, sub_1D5B49CBC);
  return v3;
}

uint64_t sub_1D6203B70(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = v4;
  *(v5 + 16) = sub_1D725F7AC();
  *(v5 + 24) = v10;
  *(v5 + 32) = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v5 + 40) = sub_1D6205D4C;
  *(v5 + 48) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v5 + 56) = sub_1D6205D58;
  *(v5 + 64) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  *(v5 + 72) = sub_1D6205D78;
  *(v5 + 80) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v5 + 88) = sub_1D6206C94;
  *(v5 + 96) = v14;

  sub_1D6205DEC(a2, a3, a4);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  *(v5 + 104) = sub_1D5C00104;
  *(v5 + 112) = v15;

  sub_1D6205DEC(a2, a3, a4);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v5 + 120) = sub_1D6206C8C;
  *(v5 + 128) = v16;

  sub_1D6205DEC(a2, a3, a4);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v5 + 136) = sub_1D6206C94;
  *(v5 + 144) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v5 + 152) = sub_1D6205E84;
  *(v5 + 160) = v18;

  sub_1D6205DEC(a2, a3, a4);

  sub_1D6205DEC(a2, a3, a4);

  sub_1D6205DEC(a2, a3, a4);

  sub_1D6205DEC(a2, a3, a4);
  return v5;
}

uint64_t sub_1D6203E08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 16) = sub_1D725F7AC();
  *(v3 + 24) = v6;
  *(v3 + 32) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v3 + 40) = sub_1D6206B04;
  *(v3 + 48) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v3 + 56) = sub_1D6206B3C;
  *(v3 + 64) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v3 + 72) = sub_1D6206430;
  *(v3 + 80) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v3 + 88) = sub_1D6206C94;
  *(v3 + 96) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v3 + 104) = sub_1D5C00104;
  *(v3 + 112) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v3 + 120) = sub_1D6206C8C;
  *(v3 + 128) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v3 + 136) = sub_1D6206C94;
  *(v3 + 144) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v3 + 152) = sub_1D6206C84;
  *(v3 + 160) = v14;
  swift_retain_n();
  swift_retain_n();
  return v3;
}

uint64_t sub_1D6203FC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 16) = sub_1D725F7AC();
  *(v3 + 24) = v6;
  *(v3 + 32) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v3 + 40) = sub_1D62069E4;
  *(v3 + 48) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v3 + 56) = sub_1D6206A38;
  *(v3 + 64) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v3 + 72) = sub_1D6206430;
  *(v3 + 80) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v3 + 88) = sub_1D6206C94;
  *(v3 + 96) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v3 + 104) = sub_1D5C00104;
  *(v3 + 112) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v3 + 120) = sub_1D6206C8C;
  *(v3 + 128) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v3 + 136) = sub_1D6206C94;
  *(v3 + 144) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v3 + 152) = sub_1D6206A88;
  *(v3 + 160) = v14;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  return v3;
}

uint64_t sub_1D6204178(uint64_t a1, void *a2)
{
  v3 = v2;
  *(v3 + 16) = sub_1D725F7AC();
  *(v3 + 24) = v6;
  *(v3 + 32) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v3 + 40) = sub_1D62068E0;
  *(v3 + 48) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v3 + 56) = sub_1D6206928;
  *(v3 + 64) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v3 + 72) = sub_1D6206430;
  *(v3 + 80) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v3 + 88) = sub_1D6206C94;
  *(v3 + 96) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v3 + 104) = sub_1D5C00104;
  *(v3 + 112) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v3 + 120) = sub_1D6206C8C;
  *(v3 + 128) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v3 + 136) = sub_1D6206C94;
  *(v3 + 144) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v3 + 152) = sub_1D620696C;
  *(v3 + 160) = v14;
  swift_retain_n();
  v15 = a2;
  return v3;
}

uint64_t sub_1D6204340()
{
  swift_getObjectType();
  sub_1D72585BC();
  return sub_1D725D92C() & 1;
}

uint64_t sub_1D62043B4()
{
  swift_getObjectType();
  sub_1D72585BC();
  return sub_1D725D97C();
}

uint64_t sub_1D6204434(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E6968FB0];
  sub_1D5B54630(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v11 - v6;
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1D7263D4C();

  v11 = 0x28646E616D6D6F43;
  v12 = 0xE800000000000000;
  v8 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v8);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D62058F4(a2, v7, &qword_1EDF45B40, v3, sub_1D5B54630);
  v9 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v9);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return v11;
}

uint64_t sub_1D62045A4()
{
  sub_1D7263D4C();

  v0 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v0);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D5B49CBC(0, &unk_1EC88D670);
  v1 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v1);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

uint64_t sub_1D62046A0()
{
  sub_1D7263D4C();

  v0 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v0);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D5B49CBC(0, &qword_1EDF43BE0);

  v1 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v1);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

uint64_t sub_1D62047A4(uint64_t a1, uint64_t a2)
{
  sub_1D7263D4C();

  v3 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D620630C(a2);
  sub_1D5B49CBC(0, &qword_1EDF0BE48);
  v4 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v4);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

uint64_t sub_1D62048BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t, uint64_t))
{
  sub_1D7263D4C();

  v8 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v8);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  a5(0, a3, a4);
  swift_unknownObjectRetain();
  v9 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v9);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

uint64_t sub_1D62049CC(uint64_t a1, uint64_t a2)
{
  *&v9 = 0;
  *(&v9 + 1) = 0xE000000000000000;
  sub_1D7263D4C();

  v13 = 0x28646E616D6D6F43;
  v14 = 0xE800000000000000;
  v3 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  v4 = *(a2 + 48);
  v11 = *(a2 + 32);
  v12[0] = v4;
  *(v12 + 15) = *(a2 + 63);
  v5 = *(a2 + 16);
  v9 = *a2;
  v10 = v5;
  sub_1D62058F4(a2, v8, &qword_1EDF0FCC0, &type metadata for CommandShareContent, sub_1D5B49CBC);
  sub_1D5B49CBC(0, &qword_1EDF0FCC0);
  v6 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v6);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return v13;
}

uint64_t sub_1D6204AFC(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 a4)
{
  sub_1D7263D4C();

  v7 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v7);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D6205DEC(a2, a3, a4);
  sub_1D5B49CBC(0, qword_1EDF0FF38);
  v8 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v8);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

uint64_t sub_1D6204C14()
{
  sub_1D7263D4C();

  v0 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v0);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D5B54630(0, &qword_1EC8853F8, type metadata accessor for Commands.RemoveIssues.Prompt);

  v1 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v1);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

uint64_t sub_1D6204D20()
{
  sub_1D7263D4C();

  v0 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v0);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D6206A90();

  v1 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v1);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

uint64_t sub_1D6204E10(uint64_t a1, void *a2)
{
  sub_1D7263D4C();

  v3 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D6206974(0, &qword_1EDF3C6B8, MEMORY[0x1E69E6720]);
  v4 = a2;
  v5 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v5);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

uint64_t sub_1D6205110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  swift_getObjectType();
  a6(0);
  return sub_1D725D92C() & 1;
}

uint64_t sub_1D6205198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  swift_getObjectType();
  a6(0);
  return sub_1D725D97C();
}

uint64_t sub_1D6205224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void, uint64_t, uint64_t))
{
  swift_getObjectType();
  a8(0, a6, a7);
  return sub_1D725D92C() & 1;
}

uint64_t sub_1D62052C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void, uint64_t, uint64_t))
{
  swift_getObjectType();
  a8(0, a6, a7);
  return sub_1D725D97C();
}

uint64_t _s8NewsFeed18FormatGroupBindingV7CommandO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = (v5 >> 3) & 7;
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      if (v10 == 3)
      {
        if ((v9 & 0x38) == 0x18)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      }

      if ((v9 & 0x38) == 0x20)
      {
        v18 = *a1;
        v19 = v2;
        v20 = v4;
        v21 = v5 & 0xC7;
        v14 = v7;
        v15 = v6;
        v16 = v8;
        v17 = v9 & 0xC7;
        sub_1D5E1DDA8(v7, v6, v8, v9, sub_1D5E1DA1C, sub_1D5E1DA1C);
        sub_1D5E1DDA8(v3, v2, v4, v5, sub_1D5E1DA1C, sub_1D5E1DA1C);
        sub_1D5E1DDA8(v3, v2, v4, v5, sub_1D5E1DA1C, sub_1D5E1DA1C);
        sub_1D5E1DDA8(v7, v6, v8, v9, sub_1D5E1DA1C, sub_1D5E1DA1C);
        v11 = _s8NewsFeed24FormatSportsEventBindingV7CommandO2eeoiySbAE_AEtFZ_0(&v18, &v14);
        goto LABEL_13;
      }

      sub_1D5E1DE60(*a1, v2, v4, v5 & 0xC7, sub_1D5E1DA1C);
LABEL_17:
      sub_1D5E1DDA8(v7, v6, v8, v9, sub_1D5E1DA1C, sub_1D5E1DA1C);
      sub_1D5E1DDA8(v3, v2, v4, v5, sub_1D5E1DE10, sub_1D5E1DE10);
      sub_1D5E1DDA8(v7, v6, v8, v9, sub_1D5E1DE10, sub_1D5E1DE10);
      v12 = 0;
      return v12 & 1;
    }

    if ((v9 & 0x38) == 0x10)
    {
      goto LABEL_10;
    }

LABEL_8:
    sub_1D5E1DA1C(*a1, v2, v4);
    goto LABEL_17;
  }

  if (v10)
  {
    if ((v9 & 0x38) == 8)
    {
      sub_1D5E1DDA8(*a1, v2, v4, v5, sub_1D5E1DE10, sub_1D5E1DE10);
      sub_1D5E1DDA8(v7, v6, v8, v9, sub_1D5E1DE10, sub_1D5E1DE10);
      v12 = 1;
      return v12 & 1;
    }

    goto LABEL_17;
  }

  if ((v9 & 0x38) != 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  v18 = *a1;
  v19 = v2;
  LOBYTE(v20) = v4;
  v14 = v7;
  v15 = v6;
  LOBYTE(v16) = v8;
  sub_1D5E1DDA8(v7, v6, v8, v9, sub_1D5E1DA1C, sub_1D5E1DA1C);
  sub_1D5E1DDA8(v3, v2, v4, v5, sub_1D5E1DA1C, sub_1D5E1DA1C);
  sub_1D5E1DDA8(v3, v2, v4, v5, sub_1D5E1DA1C, sub_1D5E1DA1C);
  sub_1D5E1DDA8(v7, v6, v8, v9, sub_1D5E1DA1C, sub_1D5E1DA1C);
  v11 = _s8NewsFeed16FormatTagBindingV7CommandO2eeoiySbAE_AEtFZ_0(&v18, &v14);
LABEL_13:
  v12 = v11;
  sub_1D5E1DDA8(v3, v2, v4, v5, sub_1D5E1DE10, sub_1D5E1DE10);
  sub_1D5E1DDA8(v7, v6, v8, v9, sub_1D5E1DE10, sub_1D5E1DE10);
  sub_1D5E1DDA8(v7, v6, v8, v9, sub_1D5E1DE10, sub_1D5E1DE10);
  sub_1D5E1DDA8(v3, v2, v4, v5, sub_1D5E1DE10, sub_1D5E1DE10);
  return v12 & 1;
}

unint64_t sub_1D620570C(uint64_t a1)
{
  result = sub_1D6205734();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6205734()
{
  result = qword_1EC8853D0;
  if (!qword_1EC8853D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8853D0);
  }

  return result;
}

unint64_t sub_1D6205788(void *a1)
{
  a1[1] = sub_1D5C6D9D4();
  a1[2] = sub_1D62057C0();
  result = sub_1D6205814();
  a1[3] = result;
  return result;
}

unint64_t sub_1D62057C0()
{
  result = qword_1EDF104C0;
  if (!qword_1EDF104C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF104C0);
  }

  return result;
}

unint64_t sub_1D6205814()
{
  result = qword_1EC8853D8;
  if (!qword_1EC8853D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8853D8);
  }

  return result;
}

uint64_t sub_1D62058F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D6205964()
{
  sub_1D5B54630(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);

  return sub_1D6204340();
}

double sub_1D6205AB0@<D0>(void (*a1)(uint64_t (*)(), void *)@<X2>, uint64_t a2@<X8>)
{
  sub_1D5B54630(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v6 = v2 + ((*(*(v5 - 8) + 80) + 24) & ~*(*(v5 - 8) + 80));
  v8[2] = *(v2 + 16);
  v8[3] = v6;
  a1(sub_1D5C00104, v8);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1D6205BB4@<X0>(uint64_t a1@<X8>)
{
  sub_1D5B54630(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v2 = sub_1D725D38C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

double sub_1D6205C44@<D0>(uint64_t a1@<X8>)
{
  sub_1D5B54630(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1D6205C94()
{
  sub_1D5B54630(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v2 = *(v1 - 8);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_1D6204434(v3, v4);
}

void sub_1D6205D14(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return;
      }

      goto LABEL_4;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
LABEL_8:

    return;
  }

  if (a3 == 3)
  {
LABEL_4:
    swift_unknownObjectRelease();
  }
}

double sub_1D6205D78@<D0>(void (*a1)(uint64_t (*)(), void *)@<X2>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 40);
  v8 = *(v2 + 24);
  v9 = v5;
  v7[2] = v4;
  v7[3] = &v8;
  a1(sub_1D5C00104, v7);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

id sub_1D6205DEC(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1D6205E00(result, a2, a3);
  }

  return result;
}

id sub_1D6205E00(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return result;
      }

      return swift_unknownObjectRetain();
    }

    return result;
  }

  if (a3 == 2)
  {
    return result;
  }

  if (a3 == 3)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t objectdestroy_25Tm()
{

  v1 = *(v0 + 40);
  if (v1 != 255)
  {
    sub_1D6205D14(*(v0 + 24), *(v0 + 32), v1);
  }

  return swift_deallocObject();
}

void sub_1D6205E94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v9 = (a9 >> 21) & 7;
  if (v9 > 3)
  {
    if (((a9 >> 21) & 7) > 5)
    {
      if (v9 != 6)
      {
        return;
      }
    }

    else if (v9 != 4)
    {
LABEL_11:

      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    if (((a9 >> 21) & 7) <= 1)
    {
      if (v9)
      {
        swift_unknownObjectRelease();

        sub_1D6205FF8(a2, a3, a4, a5, a6);
      }

      else
      {
        swift_unknownObjectRelease();
      }

      return;
    }

    if (v9 == 2)
    {
      goto LABEL_11;
    }
  }
}

uint64_t sub_1D6205FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
  }

  return result;
}

double sub_1D6206130@<D0>(void (*a1)(uint64_t (*)(), void *)@<X2>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 40);
  v6 = *(v2 + 72);
  v9[2] = *(v2 + 56);
  v10[0] = v6;
  *(v10 + 15) = *(v2 + 87);
  v9[0] = *(v2 + 24);
  v9[1] = v5;
  v8[2] = v4;
  v8[3] = v9;
  a1(sub_1D5C00104, v8);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t objectdestroy_49Tm()
{

  if ((*(v0 + 90) >> 3) <= 0x1Eu)
  {
    sub_1D6205E94(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88) | (*(v0 + 90) << 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1D6206224()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 72);
  v5[2] = *(v0 + 56);
  v6[0] = v3;
  *(v6 + 15) = *(v0 + 87);
  v5[0] = *(v0 + 24);
  v5[1] = v2;
  return sub_1D62049CC(v1, v5);
}

double sub_1D6206298@<D0>(void (*a1)(uint64_t (*)(), void *)@<X2>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 40);
  v8 = *(v2 + 24);
  v9 = v5;
  v7[2] = v4;
  v7[3] = &v8;
  a1(sub_1D5C00104, v7);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1D620630C(uint64_t result)
{
  if (result != 1)
  {
    swift_unknownObjectRetain();

    return swift_unknownObjectRetain();
  }

  return result;
}

double sub_1D6206358@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t objectdestroy_73Tm()
{

  if (*(v0 + 24) != 1)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return swift_deallocObject();
}

double sub_1D6206588@<D0>(void (*a1)(uint64_t (*)(), void *)@<X2>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v7 = *(v2 + 24);
  v6[2] = v4;
  v6[3] = &v7;
  a1(sub_1D5C00104, v6);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t objectdestroy_121Tm()
{

  return swift_deallocObject();
}

double sub_1D620673C@<D0>(void (*a1)(uint64_t (*)(), void *)@<X2>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v7 = *(v2 + 24);
  v6[2] = v4;
  v6[3] = &v7;
  a1(sub_1D5C00104, v6);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void sub_1D6206974(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5B5A498(255, &qword_1EDF3C6C0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D6206A90()
{
  if (!qword_1EC8853E8)
  {
    sub_1D6206974(255, &qword_1EDF1AE40, MEMORY[0x1E69E62F8]);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8853E8);
    }
  }
}

double sub_1D6206B70@<D0>(void (*a1)(uint64_t, void *)@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  v8 = *(v3 + 24);
  v7[2] = v5;
  v7[3] = &v8;
  a1(a2, v7);
  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_1D6206BC8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D725D38C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t objectdestroy_97Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D6206CAC(void *a1)
{
  v3 = [objc_msgSend(*(v1 + 16) appConfiguration)];
  swift_unknownObjectRelease();
  v4 = [v3 difficultyDescriptions];
  sub_1D5BAFAD8();
  sub_1D5F750EC();
  v5 = sub_1D7261D3C();

  v6 = [a1 difficulty];
  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  v8 = v7;
  if (*(v5 + 16) && (v9 = sub_1D6D62E90(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v5 + 56) + 16 * v9);

    return v11;
  }

  else
  {

    return 0;
  }
}

unint64_t FormatBindingDateTimeExpressionLogicCompare.dateTime.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return sub_1D5F33D5C(v2);
}

uint64_t _s8NewsFeed43FormatBindingDateTimeExpressionLogicCompareV2eeoiySbAC_ACtFZ_0(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 1);
  LOBYTE(v14) = *a1;
  LOBYTE(v13) = v3;
  v5 = FormatOperator.rawValue.getter();
  v7 = v6;
  if (v5 == FormatOperator.rawValue.getter() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1D72646CC();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v13 = v4;
  v14 = v2;
  sub_1D5F33D5C(v2);
  sub_1D5F33D5C(v4);
  v11 = static FormatDateTime.== infix(_:_:)(&v14, &v13);
  sub_1D5F33D8C(v13);
  sub_1D5F33D8C(v14);
  return v11 & 1;
}

uint64_t _s8NewsFeed36FormatBindingDateTimeExpressionLogicO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = *a2;
  v5 = a2[1];
  v7 = *a1;
  if (v7 == 12)
  {
    if (v6 != 12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v7 != 13)
    {
      if ((v6 & 0xFE) != 0xC)
      {
        v15[0] = *a1;
        v16 = v3;
        v13[0] = v6;
        v14 = v5;
        v10 = v4;
        v11 = v3;
        sub_1D620757C(v6, v5);
        sub_1D620757C(v4, v11);
        sub_1D620757C(v4, v11);
        sub_1D620757C(v6, v5);
        v8 = _s8NewsFeed43FormatBindingDateTimeExpressionLogicCompareV2eeoiySbAC_ACtFZ_0(v15, v13);
        sub_1D6207594(v10, v11);
        sub_1D6207594(v6, v5);
        sub_1D6207594(v6, v5);
        sub_1D6207594(v10, v11);
        return v8 & 1;
      }

      goto LABEL_8;
    }

    if (v6 != 13)
    {
LABEL_8:
      v9 = a1[1];
      sub_1D620757C(*a1, v3);
      sub_1D620757C(v6, v5);
      sub_1D6207594(v4, v9);
      sub_1D6207594(v6, v5);
      v8 = 0;
      return v8 & 1;
    }
  }

  sub_1D6207594(*a1, v3);
  sub_1D6207594(v6, v5);
  v8 = 1;
  return v8 & 1;
}

unint64_t sub_1D62070F8(uint64_t a1)
{
  result = sub_1D6207120();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6207120()
{
  result = qword_1EC885400;
  if (!qword_1EC885400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885400);
  }

  return result;
}

unint64_t sub_1D62071B4()
{
  result = qword_1EC885408;
  if (!qword_1EC885408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885408);
  }

  return result;
}

unint64_t sub_1D6207208(uint64_t a1)
{
  result = sub_1D6207230();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6207230()
{
  result = qword_1EC885410;
  if (!qword_1EC885410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885410);
  }

  return result;
}

uint64_t sub_1D62072C4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6207318()
{
  result = qword_1EDF1C0E8;
  if (!qword_1EDF1C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1C0E8);
  }

  return result;
}

unint64_t sub_1D620736C()
{
  result = qword_1EDF06158;
  if (!qword_1EDF06158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06158);
  }

  return result;
}

unint64_t sub_1D62073C0()
{
  result = qword_1EC885418;
  if (!qword_1EC885418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885418);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed36FormatBindingDateTimeExpressionLogicO(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0xC)
  {
    return v1 - 11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6207428(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF3 && a1[16])
  {
    return (*a1 + 243);
  }

  v3 = *a1;
  if (v3 >= 0xC)
  {
    v4 = v3 - 11;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6207470(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 243;
    if (a3 >= 0xF3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 13;
    }
  }

  return result;
}

void *sub_1D62074B4(void *result, unsigned int a2)
{
  if (a2 > 0xF4)
  {
    *result = a2 - 245;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = a2 + 11;
  }

  return result;
}

uint64_t sub_1D62074E8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF5 && a1[16])
  {
    return (*a1 + 245);
  }

  v3 = *a1;
  v4 = v3 >= 0xC;
  v5 = v3 - 12;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D620752C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF4)
  {
    *result = a2 - 245;
    *(result + 8) = 0;
    if (a3 >= 0xF5)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF5)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 11;
    }
  }

  return result;
}

unint64_t sub_1D620757C(unint64_t result, unint64_t a2)
{
  if ((result & 0xFE) != 0xC)
  {
    return sub_1D5F33D5C(a2);
  }

  return result;
}

unint64_t sub_1D6207594(unint64_t result, unint64_t a2)
{
  if ((result & 0xFE) != 0xC)
  {
    return sub_1D5F33D8C(a2);
  }

  return result;
}

uint64_t sub_1D62075AC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FeedCursorGroup();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1D725AA4C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D62076A8(uint64_t *a1)
{
  v1 = *a1;
  v8[5] = sub_1D6F73BA4();
  v8[2] = *(v1 + 80);
  v8[3] = *(v1 + 88);
  type metadata accessor for FeedCursorGroup();
  v2 = sub_1D72627FC();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_1D5B874E4(sub_1D62077B4, v8, v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v4);

  v6 = sub_1D5B86020(v5);

  return v6;
}

uint64_t _s8NewsFeed24FormatAccessibilityValueO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 0x14)
  {
    switch(v2)
    {
      case 0x15u:
        if (v3 != 21)
        {
          goto LABEL_23;
        }

        break;
      case 0x16u:
        if (v3 != 22)
        {
          goto LABEL_23;
        }

        break;
      case 0x17u:
        if (v3 != 23)
        {
          goto LABEL_23;
        }

        break;
      default:
        goto LABEL_16;
    }

LABEL_21:
    v8 = 1;
    return v8 & 1;
  }

  switch(v2)
  {
    case 0x12u:
      if (v3 != 18)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 0x13u:
      if (v3 != 19)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 0x14u:
      if (v3 == 20)
      {
        goto LABEL_21;
      }

LABEL_23:
      v8 = 0;
      return v8 & 1;
  }

LABEL_16:
  if ((v3 - 18) < 6)
  {
    goto LABEL_23;
  }

  v4 = FormatAccessibilityTrait.rawValue.getter();
  v6 = v5;
  if (v4 == FormatAccessibilityTrait.rawValue.getter() && v6 == v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

unint64_t sub_1D6207940(uint64_t a1)
{
  result = sub_1D6207968();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6207968()
{
  result = qword_1EC885420;
  if (!qword_1EC885420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885420);
  }

  return result;
}

unint64_t sub_1D62079BC(void *a1)
{
  a1[1] = sub_1D62079F4();
  a1[2] = sub_1D6207A48();
  result = sub_1D6207A9C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D62079F4()
{
  result = qword_1EC885428;
  if (!qword_1EC885428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885428);
  }

  return result;
}

unint64_t sub_1D6207A48()
{
  result = qword_1EC885430;
  if (!qword_1EC885430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885430);
  }

  return result;
}

unint64_t sub_1D6207A9C()
{
  result = qword_1EC885438;
  if (!qword_1EC885438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885438);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatAccessibilityValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 23;
  if (a2 + 23 >= 0xFFFF00)
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

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 23;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 23;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 0x12)
  {
    v8 = v7 - 17;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    return v8 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FormatAccessibilityValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 23;
  if (a3 + 23 >= 0xFFFF00)
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

  if (a3 < 0xE9)
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D6207C48(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x12)
  {
    return v1 - 17;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D6207C5C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 17;
  }

  return result;
}

uint64_t sub_1D6207C7C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_scale] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_edge] = 0x3FF0000000000000;
  v5 = &v1[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentBounds];
  *v5 = 0u;
  v5[1] = 0u;
  v6 = &v1[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_canvasOffset];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v1[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_selectionFrame];
  *v7 = 0u;
  v7[1] = 0u;
  v8 = &v1[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_metricSelectionFrame];
  *v8 = 0u;
  v8[1] = 0u;
  v9 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_markerLayer;
  *&v2[v9] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v54 = MEMORY[0x1E69E7CC0];
  v10 = 21;
  result = sub_1D7263ECC();
  v12 = 0;
  v13 = 0;
  while (1)
  {
    if (v13)
    {
      goto LABEL_22;
    }

    [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
    sub_1D7263E9C();
    sub_1D7263EDC();
    sub_1D7263EEC();
    result = sub_1D7263EAC();
    v13 = v12 == 20;
    if (v12 != 20)
    {
      break;
    }

    v12 = 0;
LABEL_3:
    if (!--v10)
    {
      goto LABEL_9;
    }
  }

  if (!__OFADD__(v12++, 1))
  {
    goto LABEL_3;
  }

  __break(1u);
LABEL_9:
  *&v2[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_markerLabels] = v54;
  v15 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentView;
  *&v2[v15] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v16 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_selectionView;
  *&v2[v16] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v17 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_metricSelectionView;
  *&v2[v17] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v2[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_direction] = a1 & 1;
  v18 = objc_allocWithZone(type metadata accessor for DebugFormatRulerIndicatorView());
  *&v2[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_indicatorView] = sub_1D675882C(a1 & 1);
  v53.receiver = v2;
  v53.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v53, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v19 setUserInteractionEnabled_];
  v20 = objc_opt_self();
  v21 = [v20 secondarySystemBackgroundColor];
  [v19 setBackgroundColor_];

  v22 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentView;
  [*&v19[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentView] setClipsToBounds_];
  [v19 addSubview_];
  v23 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_selectionView;
  v24 = *&v19[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_selectionView];
  v25 = [v20 systemBlueColor];
  v26 = [v25 colorWithAlphaComponent_];

  [v24 setBackgroundColor_];
  [*&v19[v22] addSubview_];
  v27 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_metricSelectionView;
  v28 = *&v19[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_metricSelectionView];
  v51 = v20;
  v29 = [v20 systemYellowColor];
  v30 = [v29 colorWithAlphaComponent_];

  [v28 setBackgroundColor_];
  v52 = v22;
  [*&v19[v22] addSubview_];
  v31 = *&v19[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_markerLabels];
  if (!(v31 >> 62))
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = &unk_1EC885000;
    if (v32)
    {
      goto LABEL_11;
    }

LABEL_18:
    v39 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_markerLayer;
    v40 = *&v19[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_markerLayer];
    v41 = objc_opt_self();
    v42 = v40;
    v43 = [v41 mainScreen];
    [v43 scale];
    v45 = v44;

    [v42 setLineWidth_];
    v46 = *&v19[v39];
    v47 = [v51 separatorColor];
    v48 = [v47 CGColor];

    [v46 setStrokeColor_];
    v49 = [*&v19[v52] layer];
    [v49 addSublayer_];

    [v19 addSubview_];
    v50 = [objc_allocWithZone(MEMORY[0x1E69DCD28]) initWithTarget:v19 action:sel_didUpdatePan_];
    [v50 setMinimumNumberOfTouches_];
    [v50 setMaximumNumberOfTouches_];
    [v19 addGestureRecognizer_];

    return v19;
  }

  v32 = sub_1D7263BFC();
  v33 = &unk_1EC885000;
  if (!v32)
  {
    goto LABEL_18;
  }

LABEL_11:
  result = objc_opt_self();
  if (v32 >= 1)
  {
    v34 = result;

    v35 = 0;
    do
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x1DA6FB460](v35, v31);
      }

      else
      {
        v36 = *(v31 + 8 * v35 + 32);
      }

      v37 = v36;
      ++v35;
      v38 = [v34 systemFontOfSize_];
      [v37 setFont_];

      [v19 addSubview_];
    }

    while (v32 != v35);

    v33 = &unk_1EC885000;
    goto LABEL_18;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

id sub_1D6208348()
{
  v82.receiver = v0;
  v82.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v82, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = objc_opt_self();
  [v2 begin];
  result = [v2 setDisableActions_];
  v4 = *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_markerLabels];
  v80 = v2;
  if (v4 >> 62)
  {
    result = sub_1D7263BFC();
    v5 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1DA6FB460](v6, v4);
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    ++v6;
    [v7 setText_];
    v9 = v8;
    v81[1] = 0;
    v81[2] = 0;
    v81[0] = 0x3FF0000000000000;
    v81[3] = 0x3FF0000000000000;
    v81[4] = 0;
    v81[5] = 0;
    [v9 setTransform_];
    [v9 setFrame_];
  }

  while (v5 != v6);
LABEL_10:
  v10 = *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_markerLayer];
  sub_1D6208930();
  v12 = v11;
  [v10 setPath_];

  v13 = *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_selectionView];
  v14 = &v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_selectionFrame];
  v15 = *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_selectionFrame];
  v16 = *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_selectionFrame + 8];
  v17 = *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_selectionFrame + 16];
  v18 = *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_selectionFrame + 24];
  if (v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_direction])
  {
    MinY = CGRectGetMinY(*&v15);
    v20 = &v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentBounds];
    v21 = MinY - CGRectGetMinY(*&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentBounds]);
    [v0 frame];
    v22 = v21 - CGRectGetMinY(v83);
    Height = CGRectGetHeight(*v14);
    [v0 bounds];
    v24 = 0.0;
    [v13 setFrame_];
    v25 = *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_metricSelectionView];
    v26 = &v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_metricSelectionFrame];
    v27 = CGRectGetMinY(*&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_metricSelectionFrame]);
    v28 = v27 - CGRectGetMinY(*v20);
    [v0 frame];
    v29 = v28 - CGRectGetMinY(v85);
    v30 = CGRectGetHeight(*v26);
    [v0 bounds];
    [v25 setFrame_];
    v31 = *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_indicatorView];
    v32 = [v0 superview];
    Width = 0.0;
    if (v32)
    {
      v34 = v32;
      [v32 bounds];
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;

      v87.origin.x = v36;
      v87.origin.y = v38;
      v87.size.width = v40;
      v87.size.height = v42;
      Width = CGRectGetWidth(v87);
    }

    [v0 bounds];
    v43 = CGRectGetHeight(v88);
    [v0 bounds];
    v44 = CGRectGetWidth(v89);
    v45 = [v0 superview];
    v46 = v80;
    if (v45)
    {
      v47 = v45;
      [v45 bounds];
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v55 = v54;

      v90.origin.x = v49;
      v90.origin.y = v51;
      v90.size.width = v53;
      v90.size.height = v55;
      v24 = CGRectGetWidth(v90);
    }

    [v31 setFrame_];
  }

  else
  {
    MinX = CGRectGetMinX(*&v15);
    v57 = &v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentBounds];
    v58 = MinX - CGRectGetMinX(*&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentBounds]);
    [v0 frame];
    v59 = v58 - CGRectGetMinX(v91);
    v60 = CGRectGetWidth(*v14);
    [v0 bounds];
    v61 = 0.0;
    [v13 setFrame_];
    v62 = *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_metricSelectionView];
    v63 = &v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_metricSelectionFrame];
    v64 = CGRectGetMinX(*&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_metricSelectionFrame]);
    v65 = v64 - CGRectGetMinX(*v57);
    [v0 frame];
    v66 = v65 - CGRectGetMinX(v93);
    v67 = CGRectGetWidth(*v63);
    [v0 bounds];
    [v62 setFrame_];
    v68 = *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_indicatorView];
    [v0 bounds];
    v69 = CGRectGetWidth(v95);
    v70 = [v0 superview];
    if (v70)
    {
      v71 = v70;
      [v70 bounds];
      v73 = v72;
      v75 = v74;
      v77 = v76;
      v79 = v78;

      v96.origin.x = v73;
      v96.origin.y = v75;
      v96.size.width = v77;
      v96.size.height = v79;
      v61 = CGRectGetHeight(v96);
    }

    [v68 setFrame_];
    v46 = v80;
  }

  return [v46 commit];
}

void sub_1D6208930()
{
  v1 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_scale;
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_edge] / *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_scale];
  if (COERCE__INT64(fabs(v2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v3 = v0;
  v4 = v2;
  if (v2 < 2)
  {
    return;
  }

  CGPathCreateMutable();
  v56 = *&v3[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_markerLabels];
  if (v4 + 0x4000000000000000 >= 0)
  {
    v5 = -v4;
    v6 = 2 * v4;
    if (v6 >= v5)
    {
      v7 = &v3[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentBounds];
      v8 = v3[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_direction];

      v52 = v6;
      while (1)
      {
        v9 = *&v3[v1] * v5;
        v10 = *v7;
        v11 = *(v7 + 1);
        v12 = *(v7 + 2);
        v13 = *(v7 + 3);
        if (v8)
        {
          MinY = CGRectGetMinY(*&v10);
          [v3 frame];
          if (MinY + CGRectGetMinY(v63) < v9)
          {
            v15 = CGRectGetMinY(*v7);
            [v3 frame];
            MaxY = CGRectGetMaxY(v64);
            goto LABEL_13;
          }
        }

        else
        {
          MinX = CGRectGetMinX(*&v10);
          [v3 frame];
          if (MinX + CGRectGetMinX(v65) < v9)
          {
            v15 = CGRectGetMinX(*v7);
            [v3 frame];
            MaxY = CGRectGetMaxX(v66);
LABEL_13:
            if (v9 < v15 + MaxY)
            {
              v18 = MEMORY[0x1E69E7CC0];
              if (*&v3[v1] > 0.0)
              {
                [v3 bounds];
                v19 = CGRectGetWidth(v67) / *&v3[v1];
                v18 = &unk_1F5112780;
                if (v19 > 100.0)
                {
                  v18 = &unk_1F51127D0;
                  if (v19 > 200.0)
                  {
                    v18 = &unk_1F5112820;
                    if (v19 > 500.0)
                    {
                      if (v19 > 1000.0)
                      {
                        v18 = &unk_1F51128C0;
                      }

                      else
                      {
                        v18 = &unk_1F5112870;
                      }
                    }
                  }
                }
              }

              v20 = *(v18 + 2);
              if (v20)
              {
                v21 = (v18 + 48);
                while (1)
                {
                  v22 = *(v21 - 2);
                  if (!v22)
                  {
                    __break(1u);
LABEL_47:
                    __break(1u);
                    goto LABEL_48;
                  }

                  if (v5 == 0x8000000000000000 && v22 == -1)
                  {
                    goto LABEL_47;
                  }

                  if (!(v5 % v22))
                  {
                    break;
                  }

                  v21 += 24;
                  if (!--v20)
                  {
                    goto LABEL_28;
                  }
                }

                v24 = *(v21 - 1);
                v25 = *v21;

                v26 = *v7;
                v27 = *(v7 + 1);
                v28 = *(v7 + 2);
                v29 = *(v7 + 3);
                if (v8)
                {
                  v30 = v9 - CGRectGetMinY(*&v26);
                  [v3 frame];
                  v31 = v30 - CGRectGetMinY(v68);
                  [v3 bounds];
                  Height = v24 * CGRectGetHeight(v69);
                  v33 = 0.0;
                }

                else
                {
                  v34 = v9 - CGRectGetMinX(*&v26);
                  [v3 frame];
                  v31 = v34 - CGRectGetMinX(v70);
                  [v3 bounds];
                  v33 = (1.0 - v24) * CGRectGetHeight(v71);
                  [v3 bounds];
                  Height = CGRectGetHeight(v72);
                }

                sub_1D620967C();
                v35 = swift_allocObject();
                *(v35 + 16) = xmmword_1D7270C10;
                *(v35 + 32) = v31;
                *(v35 + 40) = v33;
                *(v35 + 48) = v31;
                *(v35 + 56) = Height;
                v58 = 0;
                v59 = 0;
                v57 = 0x3FF0000000000000;
                v60 = 0x3FF0000000000000;
                v61 = 0;
                v62 = 0;
                sub_1D7262F3C();

                v6 = v52;
                if (v25)
                {
                  v36 = sub_1D62090B0(sub_1D5EC4BFC, sub_1D5EC4C00);
                  v6 = v52;
                  if (v36)
                  {
                    *&t1.a = 32;
                    t1.b = -1.7573882e159;
                    v37 = v9 / *&v3[v1];
                    if (COERCE__INT64(fabs(v37)) > 0x7FEFFFFFFFFFFFFFLL)
                    {
                      goto LABEL_54;
                    }

                    if (v37 <= -9.22337204e18)
                    {
                      goto LABEL_55;
                    }

                    if (v37 >= 9.22337204e18)
                    {
                      goto LABEL_56;
                    }

                    v38 = v36;
                    *&t2.a = v37;
                    v39 = sub_1D72644BC();
                    MEMORY[0x1DA6F9910](v39);

                    v40 = sub_1D726203C();

                    [v38 setText_];

                    v41 = *&v3[v1] * v22;
                    v42 = v38;
                    [v3 bounds];
                    [v42 setFrame_];
                    if (v8)
                    {
                      v43 = [v42 layer];
                      [v43 setAnchorPoint_];

                      CGAffineTransformMakeRotation(&t1, -3.14159265);
                      tx = t1.tx;
                      ty = t1.ty;
                      v50 = *&t1.c;
                      v51 = *&t1.a;
                      [v42 bounds];
                      v46 = CGRectGetHeight(v74);
                      CGAffineTransformMakeTranslation(&t1, 0.0, v46);
                      v47 = *&t1.a;
                      v48 = *&t1.c;
                      v49 = *&t1.tx;
                      *&t1.a = v51;
                      *&t1.c = v50;
                      t1.tx = tx;
                      t1.ty = ty;
                      *&t2.a = v47;
                      *&t2.c = v48;
                      *&t2.tx = v49;
                      CGAffineTransformConcat(&v53, &t1, &t2);
                      t1 = v53;
                      [v42 setTransform_];
                    }

                    v6 = v52;
                  }
                }
              }

              else
              {
LABEL_28:
              }
            }
          }
        }

        if (v5 == v6)
        {

          return;
        }

        if (__OFADD__(v5++, 1))
        {
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }
      }
    }

    goto LABEL_53;
  }

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
}

uint64_t sub_1D62090B0(uint64_t (*a1)(uint64_t), uint64_t (*a2)(void))
{
  if (!(*v2 >> 62))
  {
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 0;
  }

  v7 = a1;
  v8 = sub_1D7263BFC();
  a1 = v7;
  if (!v8)
  {
    return 0;
  }

LABEL_3:
  result = sub_1D62096EC(a1);
  if (!result)
  {
    if (*v2 >> 62)
    {
      v9 = sub_1D7263BFC();
      v6 = __OFSUB__(v9, 1);
      result = v9 - 1;
      if (!v6)
      {
        return a2();
      }
    }

    else
    {
      v5 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v6 = __OFSUB__(v5, 1);
      result = v5 - 1;
      if (!v6)
      {
        return a2();
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D6209164(void *a1)
{
  v2 = v1;
  v4 = [a1 state];
  if (v4 > 5)
  {
    return;
  }

  if (((1 << v4) & 0x39) != 0)
  {
    v5 = *&v1[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_indicatorView];
    v6 = MEMORY[0x1E69E7CC0];
LABEL_25:
    *&v5[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerIndicatorView_selections] = v6;

    [v5 setNeedsLayout];
    return;
  }

  v5 = *&v1[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_indicatorView];
  v7 = [a1 numberOfTouches];
  if (v7 < 0)
  {
    goto LABEL_32;
  }

  v8 = v7;
  v6 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    goto LABEL_25;
  }

  v36 = v5;
  v39 = MEMORY[0x1E69E7CC0];
  sub_1D69990C4(0, v7, 0);
  v9 = 0;
  v10 = *&v2[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentView];
  v6 = v39;
  v11 = &v2[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentBounds];
  v38 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_scale;
  v37 = v2[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_direction];
  while (1)
  {
    [a1 locationOfTouch:v9 inView:{v10, v36}];
    v13 = v12;
    [v10 frame];
    MaxX = CGRectGetMaxX(v41);
    if (v13 >= 0.0)
    {
      if (v13 < MaxX)
      {
        goto LABEL_12;
      }

LABEL_11:
      v13 = MaxX;
      goto LABEL_12;
    }

    v13 = 0.0;
    if (MaxX <= 0.0)
    {
      goto LABEL_11;
    }

LABEL_12:
    v15 = *v11;
    v16 = *(v11 + 1);
    v17 = *(v11 + 2);
    v18 = *(v11 + 3);
    if (v37)
    {
      MinY = CGRectGetMinY(*&v15);
      [v2 frame];
      v20 = CGRectGetMinY(v42);
      v21 = *&v2[v38];
      v22 = ceil((v13 + MinY + v20) / v21);
      v23 = v21 * v22;
      v24 = CGRectGetMinY(*v11);
      [v2 frame];
      v25 = CGRectGetMinY(v43);
    }

    else
    {
      MinX = CGRectGetMinX(*&v15);
      [v2 frame];
      v27 = CGRectGetMinX(v44);
      v28 = *&v2[v38];
      v22 = ceil((v13 + MinX + v27) / v28);
      v23 = v28 * v22;
      v24 = CGRectGetMinX(*v11);
      [v2 frame];
      v25 = CGRectGetMinX(v45);
    }

    v29 = v23 - (v24 + v25);
    v30 = v29 > 0.0 ? v29 : 0.0;
    if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v22 <= -9.22337204e18)
    {
      goto LABEL_30;
    }

    if (v22 >= 9.22337204e18)
    {
      goto LABEL_31;
    }

    [v2 bounds];
    Height = CGRectGetHeight(v46);
    v33 = *(v39 + 16);
    v32 = *(v39 + 24);
    if (v33 >= v32 >> 1)
    {
      v35 = Height;
      sub_1D69990C4((v32 > 1), v33 + 1, 1);
      Height = v35;
    }

    ++v9;
    *(v39 + 16) = v33 + 1;
    v34 = v39 + 24 * v33;
    *(v34 + 32) = v22;
    *(v34 + 40) = v30;
    *(v34 + 48) = Height;
    if (v8 == v9)
    {
      v5 = v36;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

unint64_t sub_1D6209628()
{
  result = qword_1EC8854A8;
  if (!qword_1EC8854A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8854A8);
  }

  return result;
}

void sub_1D620967C()
{
  if (!qword_1EDF01D08)
  {
    type metadata accessor for CGPoint(255);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF01D08);
    }
  }
}

uint64_t sub_1D62096EC(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = a1(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    v6 = v5 - 1;
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6209760()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_scale) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_edge) = 0x3FF0000000000000;
  v2 = (v0 + OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentBounds);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = (v0 + OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_canvasOffset);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_selectionFrame);
  *v4 = 0u;
  v4[1] = 0u;
  v5 = (v0 + OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_metricSelectionFrame);
  *v5 = 0u;
  v5[1] = 0u;
  v6 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_markerLayer;
  *(v1 + v6) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v15 = MEMORY[0x1E69E7CC0];
  v7 = 21;
  sub_1D7263ECC();
  v8 = 0;
  v9 = 0;
  while (!v9)
  {
    [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
    sub_1D7263E9C();
    sub_1D7263EDC();
    sub_1D7263EEC();
    sub_1D7263EAC();
    v9 = v8 == 20;
    if (v8 == 20)
    {
      v8 = 0;
    }

    else if (__OFADD__(v8++, 1))
    {
      __break(1u);
      break;
    }

    if (!--v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_10:
  *(v1 + OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_markerLabels) = v15;
  v11 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentView;
  *(v1 + v11) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v12 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_selectionView;
  *(v1 + v12) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v13 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_metricSelectionView;
  *(v1 + v13) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

uint64_t sub_1D62099A8(uint64_t result)
{
  v2 = *(v1 + 48);
  v4 = (v2 & 0xF0) == 48;
  v3 = ((2 * *(v1 + 49)) | ((v2 & 8) != 0));
  v4 = v4 && v3 == 2;
  if (v4)
  {
    return sub_1D62921EC(result);
  }

  return result;
}

uint64_t FormatTextNodeBinding.bindChildren(binder:context:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 48);
  if (((1 << ((2 * (*(v2 + 49) & 0x7F)) | ((v5 & 8) != 0))) & 0x6FFB) == 0)
  {
    if (((2 * (*(v2 + 49) & 0x7F)) | (v5 >> 3) & 1) == 2)
    {
      v6 = v5 >> 4;
      if (((1 << v6) & 0x1EF7) != 0)
      {
        return result;
      }

      if (v6 == 3)
      {
        *&v11 = *v2;
        *(&v11 + 1) = v3;
        LOWORD(v12) = v4;
        return sub_1D62B416C(a2);
      }
    }

    if ((v3 & 0x80) != 0)
    {
      v7 = result;
      v14 = v3 & 0x3F;
      sub_1D5B49474(0, &qword_1EDF329A8);
      if (swift_dynamicCast())
      {
        v9 = *(&v12 + 1);
        v10 = v13;
        __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
        (*(v10 + 8))(v7, a2, v9, v10);
        return __swift_destroy_boxed_opaque_existential_1(&v11);
      }

      else
      {
        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        return sub_1D5BFB774(&v11, &qword_1EDF329A0, &qword_1EDF329A8);
      }
    }
  }

  return result;
}

uint64_t FormatFloat.bindChildren(binder:context:)(uint64_t result, uint64_t a2)
{
  v3 = *v2 >> 61;
  if (v3 > 2)
  {
    if (v3 != 3)
    {
      return result;
    }
  }

  else if (v3 < 2)
  {
    return result;
  }

  v4 = result;

  FormatFloat.bind(binder:context:)(v4, a2);
}

uint64_t FormatAccessibilityContent.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = *v2;
  v6 = *v2 >> 62;
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = (v5 & 0x3FFFFFFFFFFFFFFFLL);
      v8 = v7[2];
      v9 = v7[3];
      v10 = v7[4];

      sub_1D6209D40(v4, a2, v8, v9, v10);
    }
  }

  else
  {
    v11 = *(v5 + 32);
    v19[0] = *(v5 + 16);
    v12 = *(v5 + 48);
    v19[1] = v11;
    v19[2] = v12;
    v20 = *(v5 + 64);
    v13 = *(v5 + 32);
    v15 = *(v5 + 16);
    v16 = v13;
    v17 = *(v5 + 48);
    v18 = *(v5 + 64);
    sub_1D5FD78CC(v19, v14);
    FormatTextNodeBinding.bind(binder:context:)(v4, a2);
    return sub_1D5FD7B18(v19);
  }

  return result;
}

void sub_1D6209D40(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (*(a3 + 66))
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 & 0xFFFFFFF8 | (*(a3 + 64) >> 11) & 7;
  if (v10 <= 3)
  {
    if ((v10 - 1) < 2)
    {
      goto LABEL_21;
    }

    if (v10)
    {
      if (*(a3 + 32) != 1 || (*(a3 + 16) & 0xF000000000000007) == 0xF000000000000007)
      {
        goto LABEL_21;
      }

      v11 = a4;

      FormatTextContent.bind(binder:context:)(a1, a2);

      if (v5)
      {
        return;
      }
    }

    else
    {
      v11 = a4;
      FormatGroupBinding.Command.bind(binder:context:)(a1, a2);
      if (v5)
      {
        return;
      }
    }
  }

  else
  {
    if (((1 << v10) & 0x330) != 0)
    {
      goto LABEL_21;
    }

    v11 = a4;
    if (v10 == 6)
    {
      FormatSportsEventBinding.Command.bind(binder:context:)(a1, a2);
      if (v5)
      {
        return;
      }
    }

    else
    {
      FormatString.bind(binder:context:)(a1, a2);
      if (v5)
      {
        return;
      }
    }
  }

  a4 = v11;
LABEL_21:
  sub_1D621E8B0(a1, a2, a4);
  if (!v5)
  {
    if (a5 >> 62)
    {
      if (a5 >> 62 == 1)
      {
        sub_1D6209D40(a1, a2, *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10), *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x18), *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x20));
      }
    }

    else
    {
      FormatTextNodeBinding.bind(binder:context:)(a1, a2);
    }
  }
}

void sub_1D6209F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FormatCommandBinding.bind(binder:context:)(a1, a2);
  if (!v4)
  {
    sub_1D6226080(a1, a2, a4);

    FormatSyncImageContent.bind(binder:context:)(a1, a2);
  }
}

void sub_1D6209FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t))
{
  FormatCommandBinding.bind(binder:context:)(a1, a2);
  if (!v7)
  {
    sub_1D623C390(a1, a2, a4, a6);

    a7(a1, a2);
  }
}

uint64_t FormatCommandValue.bind(binder:context:)(unint64_t a1, uint64_t a2)
{

  FormatCommand.bind(binder:context:)(a1, a2);

  if (!v3)
  {
    v7 = *(v2 + 8);
    v8 = type metadata accessor for FormatCommandValue.CaseValue();
    Array<A>.bind(binder:context:)(a1, a2, v7, v8, &off_1F5142238);
    v9 = type metadata accessor for FormatCommandValue.DefaultValue();
    return sub_1D623DAD4(a1, a2, v9);
  }

  return result;
}

uint64_t FormatAccessibilityData.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  if ((*v2 & 0x8000000000000000) != 0)
  {
    v5 = result;
    v6 = *((*v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v7 = *(v6 + 24);

    sub_1D6220CF8(v5, a2, v7);
    if (!v3)
    {
      sub_1D6251CF0(v5, a2, *(v6 + 32));
    }
  }

  return result;
}

uint64_t FormatCommandActionValue.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = type metadata accessor for FormatCommandActionValue.CaseValue();
  result = Array<A>.bind(binder:context:)(a1, a2, v6, v7, &off_1F5142228);
  if (!v3)
  {
    v9 = type metadata accessor for FormatCommandActionValue.DefaultValue();
    return sub_1D623DAD4(a1, a2, v9);
  }

  return result;
}

uint64_t sub_1D620A2DC(uint64_t result, uint64_t a2)
{
  if ((*v2 & 0x8000000000000000) != 0)
  {
    v5 = result;
    v6 = *((*v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v7 = *(v6 + 24);

    sub_1D6220CF8(v5, a2, v7);
    if (!v3)
    {
      sub_1D6251CF0(v5, a2, *(v6 + 32));
    }
  }

  return result;
}

uint64_t FormatAccessibilityNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  v19 = *(v2 + 32);
  v20 = *(v2 + 40);
  sub_1D5D07778(v19, v20);
  FormatAccessibilityProperty.bind(binder:context:)(a1, a2);
  result = sub_1D5D06D9C(v19, v20);
  if (!v3)
  {
    result = swift_beginAccess();
    v8 = *(v2 + 98);
    if ((v8 >> 1) <= 0x7Eu)
    {
      v9 = *(v2 + 96) | (*(v2 + 98) << 16);
      v11 = *(v2 + 48);
      v10 = *(v2 + 56);
      v12 = *(v2 + 64);
      v13 = v4[9];
      v15 = v4[10];
      v14 = v4[11];
      v17 = v14;
      v18 = v4[7];
      if (((v8 << 16) & 0x800000) != 0)
      {
        sub_1D5D0A5BC(v11, v10, v12, v13, v15, v14, v9);
        FormatCommandBinding.bind(binder:context:)(a1, a2);
      }

      else
      {
        sub_1D5D0A5BC(v11, v10, v12, v13, v15, v14, v9);
        sub_1D620B270(a1, a2, v11);
      }

      result = sub_1D5C67600(v11, v18, v12, v13, v15, v17, v9);
    }

    if (v4[13])
    {
      v16 = v4[17];

      sub_1D5DEA234(v16);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v16);
    }
  }

  return result;
}

uint64_t FormatAccessibilityProperty.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = *v2;
  if (*(v2 + 8))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*v2 >> 60) & 3 | v6;
  if (v7 <= 2)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  if (v7 <= 4)
  {
    if (v7 != 3)
    {
LABEL_9:
      if (v5 >> 62)
      {
        if (v5 >> 62 != 1)
        {
          return result;
        }

        v8 = (v5 & 0x3FFFFFFFFFFFFFFFLL);
LABEL_16:
        v9 = v8[2];
        v10 = v8[3];
        v11 = v8[4];

        sub_1D6209D40(v4, a2, v9, v10, v11);
      }

LABEL_18:
      v12 = *(v5 + 32);
      v22 = *(v5 + 16);
      v13 = *(v5 + 48);
      v23 = v12;
      v24 = v13;
      v25 = *(v5 + 64);
      v14 = *(v5 + 32);
      v18 = *(v5 + 16);
      v19 = v14;
      v20 = *(v5 + 48);
      v21 = *(v5 + 64);
      sub_1D5FD78CC(&v22, v17);
      FormatTextNodeBinding.bind(binder:context:)(v4, a2);
      return sub_1D5FD7B18(&v22);
    }

LABEL_13:
    if (v5 >> 62)
    {
      if (v5 >> 62 != 1)
      {
        return result;
      }

      v8 = (v5 & 0xFFFFFFFFFFFFFFFLL);
      goto LABEL_16;
    }

    v5 &= 0xCFFFFFFFFFFFFFFFLL;
    goto LABEL_18;
  }

  if (v7 == 5)
  {
    goto LABEL_13;
  }

  LOBYTE(v18) = *v2;
  sub_1D5B49474(0, &qword_1EDF329A8);
  if (swift_dynamicCast())
  {
    v15 = *(&v23 + 1);
    v16 = v24;
    __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
    (*(v16 + 8))(v4, a2, v15, v16);
    return __swift_destroy_boxed_opaque_existential_1(&v22);
  }

  else
  {
    *&v24 = 0;
    v23 = 0u;
    v22 = 0u;
    return sub_1D5BFB774(&v22, &qword_1EDF329A0, &qword_1EDF329A8);
  }
}

void FormatComputedInvalidation.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(v2 + 48) | (*(v2 + 50) << 16);
  if ((v4 & 0x80000000) == 0)
  {
    sub_1D620B270(a1, a2, v3);
    return;
  }

  v5 = *(v2 + 24);
  v6 = (v4 >> 13) & 8 | (v4 >> 11) & 7;
  if (v6 <= 3)
  {
    if ((v6 - 1) < 2)
    {
      return;
    }

    if (!v6)
    {
      v10 = (v5 >> 3) & 7;
      if (v10 <= 1)
      {
        if (v10)
        {
          v11 = 0;
        }

        else
        {
          v11 = *(v2 + 16) == 1;
        }

        if (!v11 || (v3 & 0xF000000000000007) == 0xF000000000000007)
        {
          return;
        }
      }

      else
      {
        if (v10 != 2 && v10 != 3 && v5 >> 6 && v5 >> 6 != 1)
        {
          v7 = v5 & 7;
LABEL_10:
          if (v7 == 1 && (*(v2 + 8) & 0xF000000000000007) != 0xF000000000000007)
          {
            v9 = a1;
LABEL_37:

            FormatTextContent.bind(binder:context:)(v9, a2);

            return;
          }

          return;
        }

        if (*(v2 + 16) != 1 || (v3 & 0xF000000000000007) == 0xF000000000000007)
        {
          return;
        }
      }

      v9 = a1;
      goto LABEL_37;
    }
  }

  else
  {
    if (((1 << v6) & 0x330) != 0)
    {
      return;
    }

    if (v6 != 6)
    {
      FormatString.bind(binder:context:)(a1, a2);
      return;
    }

    if (v5 >> 6 && v5 >> 6 != 1)
    {
      v7 = v5 & 0x3F;
      goto LABEL_10;
    }
  }

  if (*(v2 + 16) == 1 && (v3 & 0xF000000000000007) != 0xF000000000000007)
  {
    v9 = a1;
    goto LABEL_37;
  }
}

uint64_t FormatFlexBoxNodeItem.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  v11 = v2[4];
  v10 = v2[5];

  sub_1D62B41FC(a2, v6);
  if (v3)
  {
  }

  else
  {
    sub_1D62B4820(a2, v7);

    sub_1D62B41FC(a2, v8);
    sub_1D62B4820(a2, v9);

    sub_1D5DEA234(v11);

    if (v11 >= 3)
    {
      sub_1D620B270(a1, a2, v11);
    }

    sub_1D623A698(a1, a2, v10);
    sub_1D5CBF568(v11);
  }
}

uint64_t FormatAdMetricsNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v13 = *(v2 + 48);
  sub_1D5C82CD8(v13);
  FormatSize.bind(binder:context:)(a1, a2);
  result = sub_1D5C92A8C(v13);
  if (!v3)
  {
    swift_beginAccess();
    v8 = *(v2 + 64);

    sub_1D620EA64(a1, a2, v8);

    result = swift_beginAccess();
    v9 = v4[10];
    if (v9 >> 62 == 1)
    {
      v10 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[10]);
      sub_1D5EB1500(v10);

      sub_1D624919C(a1, a2, v10, v11);
      sub_1D5EB15C4(v10);

      result = sub_1D5EB15C4(v9);
    }

    if (v4[12])
    {
      v12 = v4[16];

      sub_1D5DEA234(v12);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v12);
    }
  }

  return result;
}

unint64_t FormatSize.bind(binder:context:)(unint64_t result, uint64_t a2)
{
  v4 = *v2;
  v6 = result;
  switch((*v2 >> 59) & 0x1E | (*v2 >> 2) & 1)
  {
    case 1uLL:
      v11 = v4 & 0xFFFFFFFFFFFFFFBLL;
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);

      sub_1D5C07390(v13);
      sub_1D620B270(v6, a2, v12);
      if (v3)
      {
        goto LABEL_10;
      }

      if (v13)
      {
        if (v13 == 1)
        {

          v14 = 1;
        }

        else
        {
          sub_1D620B270(v6, a2, v13);
LABEL_10:

          v14 = v13;
        }
      }

      else
      {

        v14 = 0;
      }

      return sub_1D5C08648(v14);
    case 2uLL:
      v8 = v4 & 0xFFFFFFFFFFFFFFBLL;
      v10 = *(v8 + 16);
      v9 = *(v8 + 24);
      *&v31 = v10;
      sub_1D5D0A048(v10);
      sub_1D5D0A048(v9);
      sub_1D5D0A048(v10);
      FormatDimensionSizingValue.bind(binder:context:)(v6, a2);
      sub_1D5D09FB0(v10);
      if (!v3)
      {
        *&v31 = v9;
        sub_1D5D0A048(v9);
        FormatDimensionSizingValue.bind(binder:context:)(v6, a2);
        sub_1D5D09FB0(v9);
      }

      sub_1D5D09FB0(v10);
      return sub_1D5D09FB0(v9);
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 0xCuLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
      v4 &= 0xFFFFFFFFFFFFFFBuLL;
      goto LABEL_3;
    case 9uLL:
      v15 = v4 & 0xFFFFFFFFFFFFFFBLL;
      v16 = *(v15 + 24);
      if (*(v15 + 16))
      {

        FormatTextNodeStyle.bind(binder:context:)(v6, a2);
        if (v3)
        {
          goto LABEL_35;
        }
      }

      else
      {
      }

      sub_1D62B41FC(a2, v16);
LABEL_35:

    case 0xAuLL:
      v24 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      goto LABEL_28;
    case 0xBuLL:
      sub_1D5B49474(0, &qword_1EDF329A8);
      if (swift_dynamicCast())
      {
        v17 = *(&v32 + 1);
        v18 = v33;
        __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
        (*(v18 + 8))(v6, a2, v17, v18);
        return __swift_destroy_boxed_opaque_existential_1(&v31);
      }

      else
      {
        v33 = 0;
        v31 = 0u;
        v32 = 0u;
        return sub_1D5BFB774(&v31, &qword_1EDF329A0, &qword_1EDF329A8);
      }

    case 0xDuLL:
      v24 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
LABEL_28:

      sub_1D620B270(v6, a2, v24);

    case 0xEuLL:
      v28 = v4 & 0xFFFFFFFFFFFFFFBLL;
      v29 = *(v28 + 24);
      if (v29)
      {
        if (v29 == 1)
        {
          v30 = 1;
        }

        else
        {
          if (v29 == 2)
          {
            return sub_1D5CBF568(2uLL);
          }

          sub_1D5DEA234(*(v28 + 24));
          sub_1D620B270(v6, a2, v29);
          v30 = v29;
        }
      }

      else
      {
        v30 = 0;
      }

      return sub_1D5CBF568(v30);
    case 0xFuLL:
      v19 = v4 & 0xFFFFFFFFFFFFFFBLL;
      v20 = *(v19 + 24);
      *&v31 = *(v19 + 16);
      *(&v31 + 1) = v20;
      sub_1D5C82CD8(v31);
      sub_1D62B48BC(v20);
      FormatSponsoredBannerSizing.bind(binder:context:)(v6, a2);
      sub_1D5C92A8C(v31);
      return sub_1D62B48D0(v20);
    case 0x10uLL:
      v21 = v4 & 0xFFFFFFFFFFFFFFBLL;
      v23 = *(v21 + 16);
      v22 = *(v21 + 24);

      sub_1D5C82CD8(v22);
      sub_1D62484AC(v6, a2, v23, v22);

      return sub_1D5C92A8C(v22);
    case 0x14uLL:
      v25 = v4 & 0xFFFFFFFFFFFFFFBLL;
      v26 = *(v25 + 16);
      v27 = *(v25 + 24);

      sub_1D620B270(v6, a2, v26);
      if (!v3)
      {
        sub_1D620B270(v6, a2, v27);
      }

    case 0x15uLL:
    case 0x16uLL:
      return result;
    default:
LABEL_3:
      v7 = *(v4 + 16);

      sub_1D620B270(v6, a2, v7);
  }
}

uint64_t sub_1D620B270(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = v4 - 1;
    v8 = (a3 + 40);
    if (*(a3 + 40))
    {
      goto LABEL_4;
    }

LABEL_3:
    v9 = *(v8 - 1);
    sub_1D62B72CC(v9, 0);

    FormatFloat.bind(binder:context:)(v6, a2);
    sub_1D62B72BC(v9, 0);

    if (!v3)
    {
LABEL_4:
      while (v7)
      {
        --v7;
        v8 += 16;
        if ((*v8 & 1) == 0)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return result;
}

unint64_t sub_1D620B334(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return result;
  }

  v7 = result;
  v19 = (a3 + 32);
  while (1)
  {
    v8 = *v19++;
    v9 = v8 >> 61;
    if ((v8 >> 61) <= 2)
    {
      break;
    }

    if (v9 == 3)
    {
      sub_1D5ECF0E0(v8);

      FormatColor.bind(binder:context:)(v7, a2);
      if (v4)
      {
        goto LABEL_65;
      }

      goto LABEL_16;
    }

    if (v9 == 4)
    {

      sub_1D5ECF0E0(v8);

      FormatColor.bind(binder:context:)(v7, a2);
      if (v4)
      {
        goto LABEL_70;
      }

LABEL_16:
      result = sub_1D5ECF11C(v8);
    }

LABEL_4:
    if (!--v5)
    {
      return result;
    }
  }

  if ((v8 >> 61) < 2)
  {
    goto LABEL_4;
  }

  v11 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v10 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v12 = v11 >> 61;
  if ((v11 >> 61) <= 1)
  {
    if (v12)
    {
      sub_1D5ECF0E0(v8);

      FormatColorExpression.bindChildren(binder:context:)(v7, a2);
      if (v4)
      {
LABEL_57:

        goto LABEL_65;
      }
    }

    else
    {
      sub_1D5ECF0E0(v8);

      FormatColorExpression.bindChildren(binder:context:)(v7, a2);
      if (v4)
      {
        goto LABEL_57;
      }
    }

    FormatColorExpression.bindChildren(binder:context:)(v7, a2);
    v4 = 0;
    goto LABEL_48;
  }

  if (v12 != 2)
  {
    if (v12 != 3)
    {
      v15 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5ECF0E0(v8);

      FormatColor.bind(binder:context:)(v7, a2);
      if (v4)
      {

        goto LABEL_64;
      }

      v16 = v15 >> 61;
      if ((v15 >> 61) <= 1)
      {
        FormatColorExpression.bindChildren(binder:context:)(v7, a2);
        FormatColorExpression.bindChildren(binder:context:)(v7, a2);
        v4 = 0;
      }

      else if (v16 == 2)
      {

        FormatColorExpression.bindChildren(binder:context:)(v7, a2);
      }

      else if (v16 != 3)
      {

        FormatColor.bind(binder:context:)(v7, a2);

        FormatColorExpression.bindChildren(binder:context:)(v7, a2);
      }

      goto LABEL_48;
    }

    goto LABEL_13;
  }

  v13 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v14 = v13 >> 61;
  if ((v13 >> 61) <= 1)
  {
    v18 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    if (!v14)
    {
      sub_1D5ECF0E0(v8);

      FormatColorExpression.bindChildren(binder:context:)(v7, a2);
      if (v4)
      {
        goto LABEL_63;
      }

      FormatColorExpression.bindChildren(binder:context:)(v7, a2);
      v4 = 0;
      goto LABEL_44;
    }

    sub_1D5ECF0E0(v8);

    FormatColorExpression.bindChildren(binder:context:)(v7, a2);
    if (v4)
    {
LABEL_63:

      goto LABEL_65;
    }

    goto LABEL_43;
  }

  if (v14 != 2)
  {
    if (v14 == 3)
    {
LABEL_13:
      sub_1D5ECF0E0(v8);

      goto LABEL_48;
    }

    sub_1D5ECF0E0(v8);

    v18 = v10;

    FormatColor.bind(binder:context:)(v7, a2);
    if (v4)
    {

      goto LABEL_64;
    }

LABEL_43:
    FormatColorExpression.bindChildren(binder:context:)(v7, a2);
    goto LABEL_44;
  }

  v17 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) >> 61;
  if (v17 <= 1)
  {
    v18 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    if (v17)
    {
      sub_1D5ECF0E0(v8);

      FormatColorExpression.bindChildren(binder:context:)(v7, a2);
      if (v4)
      {
LABEL_66:

LABEL_64:

LABEL_65:

        return sub_1D5ECF11C(v8);
      }
    }

    else
    {
      sub_1D5ECF0E0(v8);

      FormatColorExpression.bindChildren(binder:context:)(v7, a2);
      if (v4)
      {
        goto LABEL_66;
      }
    }

    FormatColorExpression.bindChildren(binder:context:)(v7, a2);
    v4 = 0;

    goto LABEL_44;
  }

  if (v17 == 2)
  {

    sub_1D5ECF0E0(v8);

    v18 = v10;

    FormatColorExpression.bindChildren(binder:context:)(v7, a2);
    if (v4)
    {

      goto LABEL_70;
    }

    goto LABEL_45;
  }

  if (v17 == 3)
  {
    goto LABEL_13;
  }

  sub_1D5ECF0E0(v8);

  swift_retain_n();

  v18 = v10;

  FormatColor.bind(binder:context:)(v7, a2);
  if (!v4)
  {

    FormatColorExpression.bindChildren(binder:context:)(v7, a2);

LABEL_44:

LABEL_45:
    v10 = v18;
LABEL_48:
    sub_1D620B334(v7, a2, v10);

    result = sub_1D5ECF11C(v8);
    if (v4)
    {
      return result;
    }

    goto LABEL_4;
  }

LABEL_70:

  return sub_1D5ECF11C(v8);
}

uint64_t sub_1D620BE38(uint64_t result, uint64_t a2, uint64_t a3)
{
  v11 = result;
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = a3 + 64;
    do
    {
      v6 = *(v4 - 32);
      v5 = *(v4 - 24);
      v7 = *(v4 - 16);
      sub_1D5D03180(v6, v5, v7);
      sub_1D5B49474(0, &qword_1EDF329A8);
      swift_bridgeObjectRetain_n();
      if (swift_dynamicCast())
      {
        v8 = *(&v14 + 1);
        v9 = v15;
        __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
        v10 = v16;
        (*(v9 + 8))(v11, a2, v8, v9);
        sub_1D5D07BA8(v6, v5, v7);

        result = __swift_destroy_boxed_opaque_existential_1(&v13);
        v16 = v10;
        if (v10)
        {
          return result;
        }
      }

      else
      {
        sub_1D5D07BA8(v6, v5, v7);

        v15 = 0;
        v13 = 0u;
        v14 = 0u;
        result = sub_1D5BFB774(&v13, &qword_1EDF329A0, &qword_1EDF329A8);
      }

      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D620C008(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v42 = result;
  v6 = *(a3 + 16);
  if (!v6)
  {
    return result;
  }

  for (i = (a3 + 48); ; i += 3)
  {
    v8 = *i;
    if (*i < 0)
    {
      break;
    }

LABEL_5:
    if (!--v6)
    {
      return result;
    }
  }

  v9 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v10 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v9 & 0x8000000000000000) == 0)
  {

LABEL_4:

    a5(v42, a2, v10);

    swift_bridgeObjectRelease_n();

    if (v5)
    {
      return result;
    }

    goto LABEL_5;
  }

  v11 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v12 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v11 & 0x8000000000000000) == 0)
  {

    swift_retain_n();

LABEL_44:

    a5(v42, a2, v12);
    if (v5)
    {

      swift_bridgeObjectRelease_n();
    }

    swift_bridgeObjectRelease_n();

    goto LABEL_4;
  }

  v40 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  v13 = *((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v14 = *((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v13 & 0x8000000000000000) == 0)
  {

    v15 = v14;
    swift_retain_n();

    swift_retain_n();

LABEL_42:

    a5(v42, a2, v15);
    if (v5)
    {

      swift_bridgeObjectRelease_n();
    }

    swift_bridgeObjectRelease_n();

    goto LABEL_44;
  }

  v39 = *((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  v16 = *((v13 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v17 = *((v13 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v16 & 0x8000000000000000) == 0)
  {

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

LABEL_40:

    a5(v42, a2, v17);
    if (v5)
    {

      swift_bridgeObjectRelease_n();
    }

    swift_bridgeObjectRelease_n();

    v12 = v40;
    v15 = v39;
    goto LABEL_42;
  }

  v37 = *((v13 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  v18 = v16 & 0x7FFFFFFFFFFFFFFFLL;
  v19 = *((v16 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v20 = *(v18 + 24);
  if ((v19 & 0x8000000000000000) == 0)
  {

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

LABEL_38:

    a5(v42, a2, v20);
    if (v5)
    {

      swift_bridgeObjectRelease_n();
    }

    swift_bridgeObjectRelease_n();

    v17 = v37;
    v5 = 0;
    goto LABEL_40;
  }

  v35 = *(v18 + 24);
  v21 = *((v19 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v36 = *((v19 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v21 & 0x8000000000000000) == 0)
  {

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

LABEL_36:

    a5(v42, a2, v36);
    if (v5)
    {

      swift_bridgeObjectRelease_n();
    }

    swift_bridgeObjectRelease_n();

    v5 = 0;
    v20 = v35;
    goto LABEL_38;
  }

  v22 = *((v21 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v23 = *((v21 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v22 & 0x8000000000000000) == 0)
  {

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    v24 = v23;
LABEL_34:

    a5(v42, a2, v24);
    if (v5)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_60;
    }

    swift_bridgeObjectRelease_n();

    v5 = 0;
    goto LABEL_36;
  }

  v25 = v22 & 0x7FFFFFFFFFFFFFFFLL;
  v26 = *(v25 + 16);
  v34 = *(v25 + 24);
  v33 = *((v21 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v26 & 0x8000000000000000) == 0)
  {

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();
    v24 = v23;

LABEL_32:

    a5(v42, a2, v34);
    if (v5)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_59;
    }

    swift_bridgeObjectRelease_n();

    v5 = 0;
    goto LABEL_34;
  }

  v27 = *((v26 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v32 = *((v26 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v27 & 0x8000000000000000) == 0)
  {

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();
    v24 = v23;

    swift_retain_n();

LABEL_30:

    a5(v42, a2, v32);
    if (v5)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_58;
    }

    swift_bridgeObjectRelease_n();

    v5 = 0;
    goto LABEL_32;
  }

  v28 = *((v27 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v29 = *((v27 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v28 & 0x8000000000000000) == 0)
  {

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();
    v30 = v29;
    v24 = v33;

    swift_retain_n();

    swift_retain_n();

LABEL_28:

    a5(v42, a2, v30);
    if (v5)
    {

      swift_bridgeObjectRelease_n();

      goto LABEL_58;
    }

    swift_bridgeObjectRelease_n();

    v5 = 0;
    goto LABEL_30;
  }

  v31 = *((v28 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();
  v30 = v29;
  v24 = v33;

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();

  a4(v42, a2, v31);
  if (!v5)
  {

    v5 = 0;
    goto LABEL_28;
  }

LABEL_58:

LABEL_59:

LABEL_60:
}

unint64_t sub_1D620D084(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return result;
  }

  v5 = a2;
  v6 = result;
  v7 = (a3 + 48);
  v65 = result;
  while (1)
  {
    v8 = *v7;
    if (*v7 < 2)
    {
      goto LABEL_3;
    }

    v9 = *(v8 + 16);
    v10 = *(v8 + 24);
    if (!v9)
    {

      sub_1D5D0A57C(v8);
      v11 = 0;
      goto LABEL_9;
    }

    if (v9 != 1)
    {
      break;
    }

    sub_1D5D0A57C(v8);
    v11 = 1;
LABEL_9:
    sub_1D5D0A57C(v11);

LABEL_75:

    sub_1D620D084(v6, v5, v10);
    if (v3)
    {
      sub_1D5D0A58C(v9);

      goto LABEL_88;
    }

    sub_1D5D0A58C(v9);

    result = sub_1D5D0A58C(v8);
LABEL_3:
    v7 += 3;
    if (!--v4)
    {
      return result;
    }
  }

  v13 = *(v9 + 16);
  v12 = *(v9 + 24);
  v64 = v13;
  if (!v13)
  {

    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);

    sub_1D5D0A57C(v9);
    v14 = 0;
LABEL_14:
    sub_1D5D0A57C(v14);

LABEL_73:

    v5 = a2;
    sub_1D620D084(v65, a2, v12);
    if (v3)
    {
      sub_1D5D0A58C(v64);

      sub_1D5D0A58C(v9);

      goto LABEL_87;
    }

    sub_1D5D0A58C(v64);

    sub_1D5D0A58C(v9);
    v6 = v65;
    goto LABEL_75;
  }

  if (v13 == 1)
  {

    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);

    sub_1D5D0A57C(v9);
    v14 = 1;
    goto LABEL_14;
  }

  v15 = *(v13 + 16);
  v61 = *(v13 + 24);
  v62 = v15;
  if (!v15)
  {

    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);

    sub_1D5D0A57C(v9);
    sub_1D5D0A57C(v13);

    sub_1D5D0A57C(v13);
    v16 = 0;
LABEL_19:
    sub_1D5D0A57C(v16);
    v17 = v61;

    goto LABEL_71;
  }

  if (v15 == 1)
  {

    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);

    sub_1D5D0A57C(v9);
    sub_1D5D0A57C(v13);

    sub_1D5D0A57C(v13);
    v16 = 1;
    goto LABEL_19;
  }

  v18 = *(v15 + 16);
  v59 = *(v15 + 24);
  v60 = v18;
  if (!v18)
  {

    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);

    sub_1D5D0A57C(v9);
    sub_1D5D0A57C(v13);

    sub_1D5D0A57C(v13);
    sub_1D5D0A57C(v62);

    sub_1D5D0A57C(v62);
    v19 = 0;
LABEL_24:
    sub_1D5D0A57C(v19);
    v20 = v59;

LABEL_69:

    sub_1D620D084(v65, a2, v20);
    if (v3)
    {
      sub_1D5D0A58C(v60);

      v40 = v62;
      sub_1D5D0A58C(v62);

      v39 = v64;
      sub_1D5D0A58C(v64);

      sub_1D5D0A58C(v9);

      goto LABEL_85;
    }

    sub_1D5D0A58C(v60);

    sub_1D5D0A58C(v62);
    v17 = v61;
LABEL_71:

    sub_1D620D084(v65, a2, v17);
    if (v3)
    {
      sub_1D5D0A58C(v62);

      v39 = v64;
      sub_1D5D0A58C(v64);

      sub_1D5D0A58C(v9);

      goto LABEL_86;
    }

    sub_1D5D0A58C(v62);

    sub_1D5D0A58C(v64);
    goto LABEL_73;
  }

  if (v18 == 1)
  {

    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);

    sub_1D5D0A57C(v9);
    sub_1D5D0A57C(v13);

    sub_1D5D0A57C(v13);
    sub_1D5D0A57C(v62);

    sub_1D5D0A57C(v62);
    v19 = 1;
    goto LABEL_24;
  }

  v21 = *(v18 + 16);
  v57 = *(v18 + 24);
  v58 = v21;
  if (!v21)
  {

    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);

    sub_1D5D0A57C(v9);
    sub_1D5D0A57C(v13);

    sub_1D5D0A57C(v13);
    sub_1D5D0A57C(v62);

    sub_1D5D0A57C(v62);
    sub_1D5D0A57C(v60);

    sub_1D5D0A57C(v60);
    v22 = 0;
LABEL_29:
    sub_1D5D0A57C(v22);
    v23 = v57;

LABEL_67:

    sub_1D620D084(v65, a2, v23);
    if (v3)
    {
      sub_1D5D0A58C(v58);

      v41 = v60;
      sub_1D5D0A58C(v60);

      v40 = v62;
      sub_1D5D0A58C(v62);

      v39 = v64;
      sub_1D5D0A58C(v64);

      sub_1D5D0A58C(v9);

LABEL_82:
      v42 = v41;
      goto LABEL_84;
    }

    sub_1D5D0A58C(v58);

    sub_1D5D0A58C(v60);
    v20 = v59;
    goto LABEL_69;
  }

  if (v21 == 1)
  {

    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);

    sub_1D5D0A57C(v9);
    sub_1D5D0A57C(v13);

    sub_1D5D0A57C(v13);
    sub_1D5D0A57C(v62);

    sub_1D5D0A57C(v62);
    sub_1D5D0A57C(v60);

    sub_1D5D0A57C(v60);
    v22 = 1;
    goto LABEL_29;
  }

  v24 = *(v21 + 16);
  v55 = *(v21 + 24);
  v56 = v24;
  if (v24)
  {
    if (v24 == 1)
    {

      sub_1D5D0A57C(v8);
      sub_1D5D0A57C(v9);

      sub_1D5D0A57C(v9);
      sub_1D5D0A57C(v13);

      sub_1D5D0A57C(v13);
      sub_1D5D0A57C(v62);

      sub_1D5D0A57C(v62);
      sub_1D5D0A57C(v60);

      sub_1D5D0A57C(v60);
      sub_1D5D0A57C(v58);

      sub_1D5D0A57C(v58);
      v25 = 1;
      goto LABEL_34;
    }

    v27 = *(v24 + 16);
    v53 = *(v24 + 24);
    v54 = v27;
    if (v27)
    {
      if (v27 == 1)
      {

        sub_1D5D0A57C(v8);
        sub_1D5D0A57C(v9);

        sub_1D5D0A57C(v9);
        sub_1D5D0A57C(v13);

        sub_1D5D0A57C(v13);
        sub_1D5D0A57C(v62);

        sub_1D5D0A57C(v62);
        sub_1D5D0A57C(v60);

        sub_1D5D0A57C(v60);
        sub_1D5D0A57C(v58);

        sub_1D5D0A57C(v58);
        sub_1D5D0A57C(v56);

        sub_1D5D0A57C(v56);
        v28 = 1;
        goto LABEL_39;
      }

      v30 = *(v27 + 16);
      v51 = *(v27 + 24);
      v52 = v30;
      if (v30)
      {
        if (v30 == 1)
        {

          sub_1D5D0A57C(v8);
          sub_1D5D0A57C(v9);

          sub_1D5D0A57C(v9);
          sub_1D5D0A57C(v13);

          sub_1D5D0A57C(v13);
          sub_1D5D0A57C(v62);

          sub_1D5D0A57C(v62);
          sub_1D5D0A57C(v60);

          sub_1D5D0A57C(v60);
          sub_1D5D0A57C(v58);

          sub_1D5D0A57C(v58);
          sub_1D5D0A57C(v56);

          sub_1D5D0A57C(v56);
          sub_1D5D0A57C(v54);

          sub_1D5D0A57C(v54);
          v31 = 1;
          goto LABEL_44;
        }

        v33 = *(v30 + 16);
        v49 = *(v30 + 24);
        v50 = v33;
        if (v33)
        {
          if (v33 == 1)
          {

            sub_1D5D0A57C(v8);
            sub_1D5D0A57C(v9);

            sub_1D5D0A57C(v9);
            sub_1D5D0A57C(v13);

            sub_1D5D0A57C(v13);
            sub_1D5D0A57C(v62);

            sub_1D5D0A57C(v62);
            sub_1D5D0A57C(v60);

            sub_1D5D0A57C(v60);
            sub_1D5D0A57C(v58);

            sub_1D5D0A57C(v58);
            sub_1D5D0A57C(v56);

            sub_1D5D0A57C(v56);
            sub_1D5D0A57C(v54);

            sub_1D5D0A57C(v54);
            sub_1D5D0A57C(v52);

            sub_1D5D0A57C(v52);
            v34 = 1;
            goto LABEL_49;
          }

          v36 = *(v33 + 16);
          v47 = *(v33 + 24);
          v48 = v36;
          if (v36)
          {
            if (v36 == 1)
            {

              sub_1D5D0A57C(v8);
              sub_1D5D0A57C(v9);

              sub_1D5D0A57C(v9);
              sub_1D5D0A57C(v13);

              sub_1D5D0A57C(v13);
              sub_1D5D0A57C(v62);

              sub_1D5D0A57C(v62);
              sub_1D5D0A57C(v60);

              sub_1D5D0A57C(v60);
              sub_1D5D0A57C(v58);

              sub_1D5D0A57C(v58);
              sub_1D5D0A57C(v56);

              sub_1D5D0A57C(v56);
              sub_1D5D0A57C(v54);

              sub_1D5D0A57C(v54);
              sub_1D5D0A57C(v52);

              sub_1D5D0A57C(v52);
              sub_1D5D0A57C(v50);

              sub_1D5D0A57C(v50);
              v37 = 1;
              goto LABEL_54;
            }

            v45 = *(v36 + 16);
            v46 = *(v36 + 24);

            sub_1D5D0A57C(v8);
            sub_1D5D0A57C(v9);

            sub_1D5D0A57C(v9);
            sub_1D5D0A57C(v13);

            sub_1D5D0A57C(v13);
            sub_1D5D0A57C(v62);

            sub_1D5D0A57C(v62);
            sub_1D5D0A57C(v60);

            sub_1D5D0A57C(v60);
            sub_1D5D0A57C(v58);

            sub_1D5D0A57C(v58);
            sub_1D5D0A57C(v56);

            sub_1D5D0A57C(v56);
            sub_1D5D0A57C(v54);

            sub_1D5D0A57C(v54);
            sub_1D5D0A57C(v52);

            sub_1D5D0A57C(v52);
            sub_1D5D0A57C(v50);

            sub_1D5D0A57C(v50);
            sub_1D5D0A57C(v48);

            sub_1D5D0A57C(v48);
            sub_1D5D0A57C(v45);

            sub_1D62490FC(v65, a2, v45, v46);
            if (!v3)
            {
              sub_1D5D0A58C(v45);

              sub_1D5D0A58C(v48);
              v38 = v47;
              goto LABEL_57;
            }

            sub_1D5D0A58C(v48);

            sub_1D5D0A58C(v50);

            sub_1D5D0A58C(v52);

            sub_1D5D0A58C(v54);

            sub_1D5D0A58C(v56);

            sub_1D5D0A58C(v58);

            sub_1D5D0A58C(v60);

            sub_1D5D0A58C(v62);

            sub_1D5D0A58C(v13);

            sub_1D5D0A58C(v9);

            sub_1D5D0A58C(v45);

            sub_1D5D0A58C(v48);
LABEL_95:
            sub_1D5D0A58C(v50);
LABEL_96:
            sub_1D5D0A58C(v52);
            v44 = v54;
LABEL_97:
            sub_1D5D0A58C(v44);
            v39 = v64;
            v40 = v62;
            v41 = v60;
            v43 = v58;
LABEL_98:
            sub_1D5D0A58C(v56);
            sub_1D5D0A58C(v43);
            goto LABEL_82;
          }

          sub_1D5D0A57C(v8);
          sub_1D5D0A57C(v9);

          sub_1D5D0A57C(v9);
          sub_1D5D0A57C(v13);

          sub_1D5D0A57C(v13);
          sub_1D5D0A57C(v62);

          sub_1D5D0A57C(v62);
          sub_1D5D0A57C(v60);

          sub_1D5D0A57C(v60);
          sub_1D5D0A57C(v58);

          sub_1D5D0A57C(v58);
          sub_1D5D0A57C(v56);

          sub_1D5D0A57C(v56);
          sub_1D5D0A57C(v54);

          sub_1D5D0A57C(v54);
          sub_1D5D0A57C(v52);

          sub_1D5D0A57C(v52);
          sub_1D5D0A57C(v50);

          sub_1D5D0A57C(v50);
          v37 = 0;
LABEL_54:
          sub_1D5D0A57C(v37);
          v38 = v47;

LABEL_57:

          sub_1D620D084(v65, a2, v38);
          if (v3)
          {
            sub_1D5D0A58C(v48);

            sub_1D5D0A58C(v50);

            sub_1D5D0A58C(v52);

            sub_1D5D0A58C(v54);

            sub_1D5D0A58C(v56);

            sub_1D5D0A58C(v58);

            sub_1D5D0A58C(v60);

            sub_1D5D0A58C(v62);

            sub_1D5D0A58C(v64);

            sub_1D5D0A58C(v9);

            goto LABEL_95;
          }

          sub_1D5D0A58C(v48);

          sub_1D5D0A58C(v50);
          v35 = v49;
        }

        else
        {

          sub_1D5D0A57C(v8);
          sub_1D5D0A57C(v9);

          sub_1D5D0A57C(v9);
          sub_1D5D0A57C(v13);

          sub_1D5D0A57C(v13);
          sub_1D5D0A57C(v62);

          sub_1D5D0A57C(v62);
          sub_1D5D0A57C(v60);

          sub_1D5D0A57C(v60);
          sub_1D5D0A57C(v58);

          sub_1D5D0A57C(v58);
          sub_1D5D0A57C(v56);

          sub_1D5D0A57C(v56);
          sub_1D5D0A57C(v54);

          sub_1D5D0A57C(v54);
          sub_1D5D0A57C(v52);

          sub_1D5D0A57C(v52);
          v34 = 0;
LABEL_49:
          sub_1D5D0A57C(v34);
          v35 = v49;
        }

        sub_1D620D084(v65, a2, v35);
        if (v3)
        {
          sub_1D5D0A58C(v50);

          sub_1D5D0A58C(v52);

          sub_1D5D0A58C(v54);

          sub_1D5D0A58C(v56);

          sub_1D5D0A58C(v58);

          sub_1D5D0A58C(v60);

          sub_1D5D0A58C(v62);

          sub_1D5D0A58C(v64);

          sub_1D5D0A58C(v9);

          goto LABEL_96;
        }

        sub_1D5D0A58C(v50);

        sub_1D5D0A58C(v52);
        v32 = v51;
      }

      else
      {

        sub_1D5D0A57C(v8);
        sub_1D5D0A57C(v9);

        sub_1D5D0A57C(v9);
        sub_1D5D0A57C(v13);

        sub_1D5D0A57C(v13);
        sub_1D5D0A57C(v62);

        sub_1D5D0A57C(v62);
        sub_1D5D0A57C(v60);

        sub_1D5D0A57C(v60);
        sub_1D5D0A57C(v58);

        sub_1D5D0A57C(v58);
        sub_1D5D0A57C(v56);

        sub_1D5D0A57C(v56);
        sub_1D5D0A57C(v54);

        sub_1D5D0A57C(v54);
        v31 = 0;
LABEL_44:
        sub_1D5D0A57C(v31);
        v32 = v51;
      }

      sub_1D620D084(v65, a2, v32);
      if (v3)
      {
        sub_1D5D0A58C(v52);

        v44 = v54;
        sub_1D5D0A58C(v54);

        sub_1D5D0A58C(v56);

        sub_1D5D0A58C(v58);

        sub_1D5D0A58C(v60);

        sub_1D5D0A58C(v62);

        sub_1D5D0A58C(v64);

        sub_1D5D0A58C(v9);

        goto LABEL_97;
      }

      sub_1D5D0A58C(v52);

      sub_1D5D0A58C(v54);
      v29 = v53;
    }

    else
    {

      sub_1D5D0A57C(v8);
      sub_1D5D0A57C(v9);

      sub_1D5D0A57C(v9);
      sub_1D5D0A57C(v13);

      sub_1D5D0A57C(v13);
      sub_1D5D0A57C(v62);

      sub_1D5D0A57C(v62);
      sub_1D5D0A57C(v60);

      sub_1D5D0A57C(v60);
      sub_1D5D0A57C(v58);

      sub_1D5D0A57C(v58);
      sub_1D5D0A57C(v56);

      sub_1D5D0A57C(v56);
      v28 = 0;
LABEL_39:
      sub_1D5D0A57C(v28);
      v29 = v53;
    }

    sub_1D620D084(v65, a2, v29);
    if (v3)
    {
      sub_1D5D0A58C(v54);

      sub_1D5D0A58C(v56);

      sub_1D5D0A58C(v58);

      v41 = v60;
      sub_1D5D0A58C(v60);

      v40 = v62;
      sub_1D5D0A58C(v62);

      v39 = v64;
      sub_1D5D0A58C(v64);

      sub_1D5D0A58C(v9);

      v43 = v58;

      goto LABEL_98;
    }

    sub_1D5D0A58C(v54);

    sub_1D5D0A58C(v56);
    v26 = v55;
  }

  else
  {

    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);

    sub_1D5D0A57C(v9);
    sub_1D5D0A57C(v13);

    sub_1D5D0A57C(v13);
    sub_1D5D0A57C(v62);

    sub_1D5D0A57C(v62);
    sub_1D5D0A57C(v60);

    sub_1D5D0A57C(v60);
    sub_1D5D0A57C(v58);

    sub_1D5D0A57C(v58);
    v25 = 0;
LABEL_34:
    sub_1D5D0A57C(v25);
    v26 = v55;
  }

  sub_1D620D084(v65, a2, v26);
  if (!v3)
  {

    sub_1D5D0A58C(v56);

    sub_1D5D0A58C(v58);
    v23 = v57;
    goto LABEL_67;
  }

  sub_1D5D0A58C(v56);

  sub_1D5D0A58C(v58);

  sub_1D5D0A58C(v60);

  v40 = v62;
  sub_1D5D0A58C(v62);

  v39 = v64;
  sub_1D5D0A58C(v64);

  sub_1D5D0A58C(v9);

  sub_1D5D0A58C(v58);
  v42 = v60;
LABEL_84:
  sub_1D5D0A58C(v42);
LABEL_85:
  sub_1D5D0A58C(v40);
LABEL_86:
  sub_1D5D0A58C(v39);
LABEL_87:
  sub_1D5D0A58C(v9);
LABEL_88:

  return sub_1D5D0A58C(v8);
}

uint64_t sub_1D620E744(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = a3 + 64; ; i += 40)
    {
      v8 = v4;

      swift_retain_n();

      FormatColor.bind(binder:context:)(v6, a2);
      if (v3)
      {
        break;
      }

      FormatFloat.bind(binder:context:)(v6, a2);

      v4 = v8 - 1;
      if (v8 == 1)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1D620E8A0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return result;
  }

  v6 = result;
  for (i = (a3 + 48); ; i += 3)
  {
    v9 = *(i - 2);
    v8 = *(i - 1);
    v10 = *i;
    if ((~v9 & 0xF000000000000007) == 0)
    {
      sub_1D5CFCFAC(*(i - 2));
      sub_1D5D04BD4(v8);
      sub_1D5D04BD4(v10);
      if ((~v8 & 0xF000000000000007) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    sub_1D5CFCFAC(v9);
    sub_1D5D04BD4(v8);
    sub_1D5D04BD4(v10);
    sub_1D5CFCFAC(v9);
    FormatColor.bind(binder:context:)(v6, a2);
    if (v3)
    {
      break;
    }

    if ((~v8 & 0xF000000000000007) == 0)
    {
LABEL_7:
      if ((~v10 & 0xF000000000000007) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_13;
    }

LABEL_11:

    FormatFloat.bind(binder:context:)(v6, a2);

    if (v3)
    {
      goto LABEL_16;
    }

    if ((~v10 & 0xF000000000000007) == 0)
    {
LABEL_3:
      sub_1D5C84FF4(v9);
      sub_1D5C8500C(v8);
      result = sub_1D5C8500C(v10);
      goto LABEL_4;
    }

LABEL_13:

    FormatFloat.bind(binder:context:)(v6, a2);

    sub_1D5C84FF4(v9);
    sub_1D5C8500C(v8);
    result = sub_1D5C8500C(v10);
    if (v3)
    {
      return result;
    }

LABEL_4:
    if (!--v4)
    {
      return result;
    }
  }

LABEL_16:
  sub_1D5C84FF4(v9);
  sub_1D5C8500C(v8);
  return sub_1D5C8500C(v10);
}

unint64_t sub_1D620EA64(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = (a3 + 32);
    while (1)
    {
      v8 = *v7++;
      sub_1D5CFEC98(v8);
      FormatAdjustment.bind(binder:context:)(v6, a2);
      v9 = v8;
      if (v3)
      {
        break;
      }

      result = sub_1D5CFED88(v9);
      if (!--v4)
      {
        return result;
      }
    }

    return sub_1D5CFED88(v9);
  }

  return result;
}

unint64_t sub_1D620EAF8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return result;
  }

  v5 = a2;
  v6 = result;
  v7 = (a3 + 48);
  v45 = result;
  while (1)
  {
    v8 = *v7;
    if (*v7 >> 62 != 1)
    {
      goto LABEL_3;
    }

    v9 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v10 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (v9 >> 62)
    {
      break;
    }

    sub_1D5EB1500(v8);
    v16 = v9;
LABEL_25:
    sub_1D5EB1500(v16);

LABEL_68:

    sub_1D620EAF8(v6, v5, v10);
    if (v3)
    {
      sub_1D5EB15C4(v9);

      goto LABEL_81;
    }

    sub_1D5EB15C4(v9);

    result = sub_1D5EB15C4(v8);
LABEL_3:
    v7 += 3;
    if (!--v4)
    {
      return result;
    }
  }

  if (v9 >> 62 != 1)
  {

    sub_1D5EB1500(v8);
    if (v9 == 0x8000000000000000)
    {
      v16 = 0x8000000000000000;
    }

    else
    {
      v16 = 0x8000000000000008;
    }

    goto LABEL_25;
  }

  v12 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v11 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v44 = v12;
  if (!(v12 >> 62))
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    v17 = v12;
LABEL_30:
    sub_1D5EB1500(v17);

LABEL_66:
    v5 = a2;

    sub_1D620EAF8(v45, a2, v11);
    if (v3)
    {
      sub_1D5EB15C4(v44);

      sub_1D5EB15C4(v9);

      goto LABEL_80;
    }

    sub_1D5EB15C4(v44);

    sub_1D5EB15C4(v9);
    v6 = v45;
    goto LABEL_68;
  }

  if (v12 >> 62 != 1)
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    if (v12 == 0x8000000000000000)
    {
      v17 = 0x8000000000000000;
    }

    else
    {
      v17 = 0x8000000000000008;
    }

    goto LABEL_30;
  }

  v41 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v42 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if (!(v42 >> 62))
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    v18 = v42;
LABEL_35:
    sub_1D5EB1500(v18);
    v19 = v41;

LABEL_64:

    sub_1D620EAF8(v45, a2, v19);
    if (v3)
    {
      sub_1D5EB15C4(v42);

      v27 = v44;
      sub_1D5EB15C4(v44);

      sub_1D5EB15C4(v9);

      goto LABEL_79;
    }

    sub_1D5EB15C4(v42);

    sub_1D5EB15C4(v44);
    goto LABEL_66;
  }

  if (v42 >> 62 != 1)
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    if (v42 == 0x8000000000000000)
    {
      v18 = 0x8000000000000000;
    }

    else
    {
      v18 = 0x8000000000000008;
    }

    goto LABEL_35;
  }

  v39 = *((v42 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v40 = *((v42 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if (!(v40 >> 62))
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    sub_1D5EB1500(v42);

    sub_1D5EB1500(v42);
    v20 = v40;
LABEL_40:
    sub_1D5EB1500(v20);
    v21 = v39;

LABEL_62:

    sub_1D620EAF8(v45, a2, v21);
    if (v3)
    {
      sub_1D5EB15C4(v40);

      v28 = v42;
      sub_1D5EB15C4(v42);

      v27 = v44;
      sub_1D5EB15C4(v44);

      sub_1D5EB15C4(v9);

      goto LABEL_78;
    }

    sub_1D5EB15C4(v40);

    sub_1D5EB15C4(v42);
    v19 = v41;
    goto LABEL_64;
  }

  if (v40 >> 62 != 1)
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    sub_1D5EB1500(v42);

    sub_1D5EB1500(v42);
    if (v40 == 0x8000000000000000)
    {
      v20 = 0x8000000000000000;
    }

    else
    {
      v20 = 0x8000000000000008;
    }

    goto LABEL_40;
  }

  v37 = *((v40 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v38 = *((v40 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if (!(v38 >> 62))
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    sub_1D5EB1500(v42);

    sub_1D5EB1500(v42);
    sub_1D5EB1500(v40);

    sub_1D5EB1500(v40);
    v22 = v38;
LABEL_45:
    sub_1D5EB1500(v22);
    v23 = v37;

LABEL_60:

    sub_1D620EAF8(v45, a2, v23);
    if (v3)
    {
      sub_1D5EB15C4(v38);

      sub_1D5EB15C4(v40);

      v28 = v42;
      sub_1D5EB15C4(v42);

      v27 = v44;
      sub_1D5EB15C4(v44);

      sub_1D5EB15C4(v9);

LABEL_76:
      v29 = v40;
      goto LABEL_77;
    }

    sub_1D5EB15C4(v38);

    sub_1D5EB15C4(v40);
    v21 = v39;
    goto LABEL_62;
  }

  if (v38 >> 62 != 1)
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    sub_1D5EB1500(v42);

    sub_1D5EB1500(v42);
    sub_1D5EB1500(v40);

    sub_1D5EB1500(v40);
    if (v38 == 0x8000000000000000)
    {
      v22 = 0x8000000000000000;
    }

    else
    {
      v22 = 0x8000000000000008;
    }

    goto LABEL_45;
  }

  v13 = *((v38 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v35 = *((v38 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v36 = v13;
  if (!(v13 >> 62))
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    sub_1D5EB1500(v42);

    sub_1D5EB1500(v42);
    sub_1D5EB1500(v40);

    sub_1D5EB1500(v40);
    sub_1D5EB1500(v38);

    sub_1D5EB1500(v38);
    v24 = v36;
LABEL_50:
    sub_1D5EB1500(v24);
    v25 = v35;

LABEL_58:

    sub_1D620EAF8(v45, a2, v25);
    if (v3)
    {
      sub_1D5EB15C4(v36);

      sub_1D5EB15C4(v38);

      sub_1D5EB15C4(v40);

      v28 = v42;
      sub_1D5EB15C4(v42);

      v27 = v44;
      sub_1D5EB15C4(v44);

      sub_1D5EB15C4(v9);

      sub_1D5EB15C4(v38);
      goto LABEL_76;
    }

    sub_1D5EB15C4(v36);

    sub_1D5EB15C4(v38);
    v23 = v37;
    goto LABEL_60;
  }

  if (v13 >> 62 != 1)
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    sub_1D5EB1500(v42);

    sub_1D5EB1500(v42);
    sub_1D5EB1500(v40);

    sub_1D5EB1500(v40);
    sub_1D5EB1500(v38);

    sub_1D5EB1500(v38);
    if (v36 == 0x8000000000000000)
    {
      v24 = 0x8000000000000000;
    }

    else
    {
      v24 = 0x8000000000000008;
    }

    goto LABEL_50;
  }

  v14 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v33 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v34 = v14;
  if (!(v14 >> 62))
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    sub_1D5EB1500(v42);

    sub_1D5EB1500(v42);
    sub_1D5EB1500(v40);

    sub_1D5EB1500(v40);
    sub_1D5EB1500(v38);

    sub_1D5EB1500(v38);
    sub_1D5EB1500(v36);

    sub_1D5EB1500(v36);
    v26 = v34;
    goto LABEL_55;
  }

  if (v14 >> 62 != 1)
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    sub_1D5EB1500(v42);

    sub_1D5EB1500(v42);
    sub_1D5EB1500(v40);

    sub_1D5EB1500(v40);
    sub_1D5EB1500(v38);

    sub_1D5EB1500(v38);
    sub_1D5EB1500(v36);

    sub_1D5EB1500(v36);
    if (v34 == 0x8000000000000000)
    {
      v26 = 0x8000000000000000;
    }

    else
    {
      v26 = 0x8000000000000008;
    }

LABEL_55:
    sub_1D5EB1500(v26);
    v15 = v33;

LABEL_56:

    sub_1D620EAF8(v45, a2, v15);
    if (v3)
    {
      sub_1D5EB15C4(v34);

      sub_1D5EB15C4(v36);

      sub_1D5EB15C4(v38);

      v30 = v40;
      sub_1D5EB15C4(v40);

      v28 = v42;
      sub_1D5EB15C4(v42);

      v27 = v44;
      sub_1D5EB15C4(v44);

      sub_1D5EB15C4(v9);

      goto LABEL_85;
    }

    sub_1D5EB15C4(v34);

    sub_1D5EB15C4(v36);
    v25 = v35;
    goto LABEL_58;
  }

  v31 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v32 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

  sub_1D5EB1500(v8);
  sub_1D5EB1500(v9);

  sub_1D5EB1500(v9);
  sub_1D5EB1500(v12);

  sub_1D5EB1500(v12);
  sub_1D5EB1500(v42);

  sub_1D5EB1500(v42);
  sub_1D5EB1500(v40);

  sub_1D5EB1500(v40);
  sub_1D5EB1500(v38);

  sub_1D5EB1500(v38);
  sub_1D5EB1500(v36);

  sub_1D5EB1500(v36);
  sub_1D5EB1500(v34);

  sub_1D5EB1500(v34);
  sub_1D5EB1500(v31);

  sub_1D624919C(v45, a2, v31, v32);
  if (!v3)
  {
    sub_1D5EB15C4(v31);

    sub_1D5EB15C4(v34);
    v15 = v33;
    goto LABEL_56;
  }

  sub_1D5EB15C4(v31);

  sub_1D5EB15C4(v34);

  sub_1D5EB15C4(v36);

  sub_1D5EB15C4(v38);

  v30 = v40;
  sub_1D5EB15C4(v40);

  v28 = v42;
  sub_1D5EB15C4(v42);

  v27 = v44;
  sub_1D5EB15C4(v44);

  sub_1D5EB15C4(v9);

  sub_1D5EB15C4(v34);
LABEL_85:
  sub_1D5EB15C4(v36);
  sub_1D5EB15C4(v38);
  v29 = v30;
LABEL_77:
  sub_1D5EB15C4(v29);
LABEL_78:
  sub_1D5EB15C4(v28);
LABEL_79:
  sub_1D5EB15C4(v27);
LABEL_80:
  sub_1D5EB15C4(v9);
LABEL_81:

  return sub_1D5EB15C4(v8);
}

uint64_t sub_1D620F94C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = result;
  v5 = *(a3 + 16);
  if (v5)
  {
    sub_1D5B49474(0, &qword_1EDF329A8);
    v7 = a3 + 56;
    do
    {

      swift_bridgeObjectRetain_n();
      if (swift_dynamicCast())
      {
        v16 = v4;
        v9 = *(&v14 + 1);
        v8 = v15;
        __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
        v10 = v16;
        (*(v8 + 8))(v11, a2, v9, v8);
        v4 = v10;

        result = __swift_destroy_boxed_opaque_existential_1(&v13);
        if (v10)
        {
          return result;
        }
      }

      else
      {

        v15 = 0;
        v13 = 0u;
        v14 = 0u;
        result = sub_1D5BFB774(&v13, &qword_1EDF329A0, &qword_1EDF329A8);
      }

      v7 += 32;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1D620FAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v380 = a2;
  v381 = type metadata accessor for FormatOption();
  v7 = *(v381 - 8);
  MEMORY[0x1EEE9AC00](v381, v8);
  v10 = &v337 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v337 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v351 = &v337 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v337 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v337 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v352 = &v337 - v28;
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  MEMORY[0x1EEE9AC00](v31, v32);
  v356 = &v337 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v354 = &v337 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v337 - v39;
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  v363 = &v337 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v359 = &v337 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  MEMORY[0x1EEE9AC00](&v337 - v51, v52);
  v360 = &v337 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v355 = &v337 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v349 = &v337 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v350 = &v337 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v362 = &v337 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v358 = &v337 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v348 = &v337 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v377 = &v337 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  MEMORY[0x1EEE9AC00](v77, v78);
  v361 = &v337 - v79;
  MEMORY[0x1EEE9AC00](v80, v81);
  v357 = &v337 - v86;
  if (!*(a3 + 16))
  {
    return;
  }

  v87 = *(a3 + 16);
  v346 = v21;
  v347 = v14;
  v342 = v25;
  v344 = v10;
  v88 = (a3 + 32);
  v371 = (v7 + 48);
  v372 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
  v370 = (v7 + 56);
  v89 = &protocol descriptor for FormatBindable;
  v368 = a1;
  v343 = v83;
  v339 = v40;
  v340 = v85;
  v341 = v84;
  v345 = v82;
  v90 = v87;
  while (1)
  {
    v91 = v88[1];
    v396 = *v88;
    v397 = v91;
    v92 = v88[3];
    v398 = v88[2];
    v399 = v92;
    v93 = v88[5];
    v400 = v88[4];
    v401[0] = v93;
    *(v401 + 10) = *(v88 + 90);
    v95 = *(&v396 + 1);
    v94 = v396;
    v97 = *(&v397 + 1);
    v96 = v397;
    v99 = *(&v398 + 1);
    v98 = v398;
    v100 = (WORD4(v401[1]) >> 12) & 3;
    v101 = v399;
    if (v100)
    {
      v102 = *(&v399 + 1);
      v379 = *(&v400 + 1);
      v103 = v400;
      v104 = v100 == 1;
      v382 = WORD4(v401[1]);
      v402 = v90;
      v384 = *&v401[1];
      v378 = v401[0];
      v105 = v399 >> 14;
      if (v104)
      {
        if (v399 >> 14)
        {
          if (v105 == 1)
          {
            v374 = v88;
            v383 = v4;
            v106 = v400;
            v386 = v396;
            v387 = v397;
            v385 = 5;
            v107 = v396;
            v369 = *(&v398 + 1);
            v108 = v397;
            v109 = v398;
            v110 = *(&v397 + 1);
            v111 = v399;
            sub_1D60B2AC8(&v396, &v391);
            sub_1D5E1DA6C(v107, *(&v107 + 1), v108, v110, v109, v369, v111);
            v112 = v383;
            v113 = sub_1D703E0C8(&v386, &v385);
            if (v112)
            {
              goto LABEL_163;
            }

            v114 = v113;
            v373 = v102;
            v376 = v106;
            v383 = 0;
            v115 = v402;
            v116 = v380;
            v117 = v362;
            v367 = *(&v107 + 1);
            v375 = v107;
            FormatOptionCollection.subscript.getter(v107, *(&v107 + 1), v362);
            if ((*v371)(v117, 1, v381) == 1)
            {

              sub_1D5B6EF64(v117, &qword_1EDF337F0, type metadata accessor for FormatOption);
              v88 = v374;
              if ((*(v116 + 48) & 1) == 0)
              {
                goto LABEL_152;
              }

              v118 = v358;
              (*v370)(v358, 1, 1, v381);
              sub_1D5B6EF64(v118, &qword_1EDF337F0, type metadata accessor for FormatOption);
              v90 = v115;
            }

            else
            {
              v166 = v117;
              v167 = v346;
              sub_1D5D5E33C(v166, v346, type metadata accessor for FormatOption);
              *&v391 = v167[2];

              FormatOptionValue.type.getter(&v386);
              v168 = sub_1D6183C84(v386, v114);
              v134 = v114;
              v88 = v374;
              if ((v168 & 1) == 0)
              {
                goto LABEL_153;
              }

              v90 = v115;
              swift_bridgeObjectRelease_n();
              v169 = v358;
              sub_1D5D5E33C(v167, v358, type metadata accessor for FormatOption);
              (*v370)(v169, 0, 1, v381);
              sub_1D5B6EF64(v169, &qword_1EDF337F0, type metadata accessor for FormatOption);
            }

            v4 = v383;
            v143 = v384;
            v89 = &protocol descriptor for FormatBindable;
            v103 = v376;
            v102 = v373;
          }

          else
          {
            switch((v399 >> 7) & 0x7E | (v399 >> 3) & 1)
            {
              case 2u:
                v376 = v400;
                v373 = *(&v399 + 1);
                v374 = v88;
                v383 = v4;
                *(v395 + 10) = *(v88 + 90);
                v252 = v88[4];
                v253 = v88[5];
                v254 = v88[2];
                v393 = v88[3];
                v394 = v252;
                v395[0] = v253;
                v255 = v88[1];
                v391 = *v88;
                *v392 = v255;
                *&v392[16] = v254;
                WORD4(v395[1]) &= 0xCFFFu;
                v256 = v396;
                v257 = *(&v398 + 1);
                v258 = v397;
                v259 = v398;
                v260 = *(&v397 + 1);
                v261 = v399;
                sub_1D62B7260(&v391, &v386);
                v391 = v256;
                *v392 = __PAIR128__(v260, v258);
                v364 = v259;
                *&v392[16] = __PAIR128__(v257, v259);
                v369 = v257;
                LODWORD(v367) = v261 & 0xFFFFFFF7;
                LOBYTE(v393) = v261 & 0xF7;
                v262 = v380;
                v263 = v383;
                FormatGroupBinding.Text.bind(binder:context:)(v368, v380);
                if (v263)
                {
                  goto LABEL_163;
                }

                v391 = v256;
                *v392 = __PAIR128__(v260, v258);
                *&v392[16] = v364;
                *&v392[24] = v369;
                LOBYTE(v393) = v367;
                FormatGroupBinding.Text.bind(binder:context:)(v368, v262);
                v4 = 0;
                v90 = v402;
                v102 = v373;
                v88 = v374;
                v143 = v384;
                v89 = &protocol descriptor for FormatBindable;
                v103 = v376;
                break;
              case 3u:
              case 4u:
                v373 = *(&v399 + 1);
                v383 = v4;
                v376 = v400;
                v386 = v396;
                v387 = v397;
                v385 = 5;
                v367 = *(&v396 + 1);
                v225 = v396;
                v226 = v397;
                v227 = v398;
                v228 = *(&v397 + 1);
                v229 = v399;
                sub_1D60B2AC8(&v396, &v391);
                v375 = v225;
                v230 = v225;
                v231 = v367;
                v364 = v227;
                v365 = v228;
                v338 = v229;
                sub_1D5E1DA6C(v230, v367, v226, v228, v227, v99, v229);

                v366 = v226;

                v232 = v383;
                v233 = sub_1D703E0C8(&v386, &v385);
                if (v232)
                {
                  goto LABEL_161;
                }

                v234 = v350;
                sub_1D6BEBFEC(v375, v231, v233, 1, v350);
                v235 = v366;

                sub_1D5B6EF64(v234, &qword_1EDF337F0, type metadata accessor for FormatOption);
                *&v391 = v375;
                *(&v391 + 1) = v231;
                *v392 = v235;
                LOBYTE(v386) = 5;
                sub_1D5E1DA6C(v375, v231, v235, v365, v364, v99, v338);

                v236 = sub_1D703E0C8(&v391, &v386);
                v237 = v349;
                sub_1D6BEBFEC(v375, v231, v236, 1, v349);
                v4 = 0;

                sub_1D5B6EF64(v237, &qword_1EDF337F0, type metadata accessor for FormatOption);
                v89 = &protocol descriptor for FormatBindable;
                v102 = v373;
                v143 = v384;
                v103 = v376;
                goto LABEL_93;
              case 0xCu:
                v246 = v89;
                *(v395 + 10) = *(v88 + 90);
                v247 = v88[4];
                v248 = v88[5];
                v249 = v88[2];
                v393 = v88[3];
                v394 = v247;
                v395[0] = v248;
                v250 = v88[1];
                v391 = *v88;
                *v392 = v250;
                *&v392[16] = v249;
                WORD4(v395[1]) &= 0xCFFFu;
                v251 = BYTE8(v396);
                sub_1D62B7260(&v391, &v386);
                if ((v251 & 0x80) == 0)
                {
                  v89 = v246;
LABEL_141:
                  v90 = v402;
                  v143 = v384;
                  break;
                }

                LODWORD(v375) = v251 & 0x3F;
                LOBYTE(v386) = v251 & 0x3F;
                v89 = v246;
                sub_1D5B49474(0, &qword_1EDF329A8);
                if (swift_dynamicCast())
                {
                  v383 = v4;
                  v298 = *&v392[8];
                  v297 = *&v392[16];
                  __swift_project_boxed_opaque_existential_1(&v391, *&v392[8]);
                  v299 = v383;
                  (*(v297 + 8))(v368, v380, v298, v297);
                  if (v299)
                  {
                    goto LABEL_167;
                  }

                  __swift_destroy_boxed_opaque_existential_1(&v391);
                  v89 = &protocol descriptor for FormatBindable;
                  v4 = 0;
                }

                else
                {
                  memset(v392, 0, 24);
                  v391 = 0u;
                  sub_1D5BFB774(&v391, &qword_1EDF329A0, &qword_1EDF329A8);
                }

                LOBYTE(v386) = v375;
                if (!swift_dynamicCast())
                {
                  memset(v392, 0, 24);
                  v391 = 0u;
                  sub_1D5BFB774(&v391, &qword_1EDF329A0, &qword_1EDF329A8);
                  goto LABEL_141;
                }

                v303 = *&v392[8];
                v304 = *&v392[16];
                __swift_project_boxed_opaque_existential_1(&v391, *&v392[8]);
                (*(v304 + 8))(v368, v380, v303, v304);
                if (v4)
                {
LABEL_167:
                  __swift_destroy_boxed_opaque_existential_1(&v391);
                  sub_1D60B2A74(&v396);
                  return;
                }

                __swift_destroy_boxed_opaque_existential_1(&v391);
                v89 = &protocol descriptor for FormatBindable;
                v143 = v384;
                v4 = 0;
LABEL_93:
                v90 = v402;
                break;
              default:
                goto LABEL_27;
            }
          }
        }

        else
        {
LABEL_27:
          *(v395 + 10) = *(v88 + 90);
          v139 = v88[4];
          v140 = v88[5];
          v141 = v88[2];
          v393 = v88[3];
          v394 = v139;
          v395[0] = v140;
          v142 = v88[1];
          v391 = *v88;
          *v392 = v142;
          *&v392[16] = v141;
          WORD4(v395[1]) &= 0xCFFFu;
          sub_1D62B7260(&v391, &v386);
          v143 = v384;
        }

        v170 = v382;
        if (v382 >> 14)
        {
          if (v382 >> 14 == 1)
          {
            *&v391 = v102;
            *(&v391 + 1) = v103;
            *v392 = v379;
            LOBYTE(v386) = 5;
            sub_1D5E1DA6C(v102, v103, v379, v378, *(&v378 + 1), v143, v382 & 0xCFFF);
            v171 = sub_1D703E0C8(&v391, &v386);
            if (v4)
            {
              goto LABEL_163;
            }

            v172 = v171;
            v173 = v380;
            v174 = v103;
            v175 = v360;
            v176 = v102;
            v376 = v174;
            FormatOptionCollection.subscript.getter(v102, v174, v360);
            if ((*v371)(v175, 1, v381) == 1)
            {

              sub_1D5B6EF64(v175, &qword_1EDF337F0, type metadata accessor for FormatOption);
              if ((*(v173 + 48) & 1) == 0)
              {
                goto LABEL_155;
              }

              v177 = 1;
              v178 = v355;
              goto LABEL_82;
            }

            v216 = v175;
            v217 = v351;
            sub_1D5D5E33C(v216, v351, type metadata accessor for FormatOption);
            *&v391 = *(v217 + 16);

            FormatOptionValue.type.getter(&v386);
            if (sub_1D6183C84(v386, v172))
            {
              swift_bridgeObjectRelease_n();
              v218 = v217;
              v178 = v355;
LABEL_81:
              sub_1D5D5E33C(v218, v178, type metadata accessor for FormatOption);
              v177 = 0;
LABEL_82:
              (*v370)(v178, v177, 1, v381);
              sub_1D5B6EF64(v178, &qword_1EDF337F0, type metadata accessor for FormatOption);
              sub_1D60B2A74(&v396);
              v89 = &protocol descriptor for FormatBindable;
              v4 = 0;
              v90 = v402;
              goto LABEL_4;
            }

            type metadata accessor for FormatDerivedDataError();
            sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
            swift_allocError();
            v314 = v217;
            v321 = v320;
            v323 = *v314;
            v322 = v314[1];
            *&v391 = v314[2];

            FormatOptionValue.type.getter(&v386);
            v324 = v386;
            *v321 = v323;
            *(v321 + 8) = v322;
            *(v321 + 16) = v324;
            *(v321 + 24) = v172;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
LABEL_159:

            sub_1D62B51D0(v314, type metadata accessor for FormatOption);
            goto LABEL_163;
          }

          v179 = v4;
          v180 = v103;
          v181 = v379;
          v374 = v88;
          if ((((v382 & 0xF00) >> 7) & 0xFFFFFFFE | (v382 >> 3) & 1) - 3 >= 2)
          {
            v383 = v179;
          }

          else
          {
            *&v391 = v102;
            *(&v391 + 1) = v180;
            *v392 = v379;
            LOBYTE(v386) = 5;
            sub_1D5E1DA6C(v102, v180, v379, v378, *(&v378 + 1), v143, v382 & 0xCFFF);

            v182 = sub_1D703E0C8(&v391, &v386);
            if (v179)
            {
              goto LABEL_154;
            }

            v183 = v345;
            v184 = v102;
            sub_1D6BEBFEC(v102, v180, v182, 1, v345);
            v383 = 0;
            v185 = v379;

            v186 = v183;
            v181 = v185;
            sub_1D5B6EF64(v186, &qword_1EDF337F0, type metadata accessor for FormatOption);
            v102 = v184;
            v143 = v384;
            v170 = v382;
          }

          v382 = v170 & 0xFFF;
          *&v391 = v102;
          *(&v391 + 1) = v180;
          v187 = v378;
          *v392 = v181;
          *&v392[8] = v378;
          *&v392[24] = v143;
          LOWORD(v393) = v170 & 0xFFF;
          v188 = v181;
          v189 = v368;
          v190 = v380;
          v191 = v383;
          FormatTextNodeBinding.bindChildren(binder:context:)(v368, v380);
          if (v191)
          {
            goto LABEL_163;
          }

          *&v386 = v102;
          *(&v386 + 1) = v180;
          v387 = v188;
          v388 = v187;
          v389 = v384;
          v390 = v382;
          v192 = v189;
          v193 = v190;
LABEL_73:
          FormatTextNodeBinding.bind(binder:context:)(v192, v193);
          v4 = 0;
          sub_1D60B2A74(&v396);
          v89 = &protocol descriptor for FormatBindable;
          v90 = v402;
          v88 = v374;
          goto LABEL_4;
        }
      }

      else
      {
        v376 = v400;
        if (v399 >> 14)
        {
          v373 = *(&v399 + 1);
          v375 = v396;
          if (v105 == 1)
          {
            v383 = v4;
            v386 = v396;
            v387 = v397;
            v385 = 5;
            v127 = v396;
            v128 = v397;
            v129 = v398;
            v130 = *(&v397 + 1);
            v131 = v399;
            sub_1D60B2AC8(&v396, &v391);
            sub_1D5E1DA6C(v127, *(&v127 + 1), v128, v130, v129, v99, v131);
            v132 = v383;
            v133 = sub_1D703E0C8(&v386, &v385);
            v383 = v132;
            if (v132)
            {
              goto LABEL_156;
            }

            v134 = v133;
            v135 = v380;
            v136 = v363;
            v367 = *(&v127 + 1);
            FormatOptionCollection.subscript.getter(v127, *(&v127 + 1), v363);
            if ((*v371)(v136, 1, v381) == 1)
            {

              sub_1D5B6EF64(v136, &qword_1EDF337F0, type metadata accessor for FormatOption);
              if ((*(v135 + 48) & 1) == 0)
              {
LABEL_152:
                type metadata accessor for FormatLayoutError();
                sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
                swift_allocError();
                v306 = v367;
                *v307 = v375;
                v307[1] = v306;
                swift_storeEnumTagMultiPayload();
                swift_willThrow();

                goto LABEL_163;
              }

              v137 = v359;
              (*v370)(v359, 1, 1, v381);
              v138 = v137;
            }

            else
            {
              v195 = v136;
              v167 = v347;
              sub_1D5D5E33C(v195, v347, type metadata accessor for FormatOption);
              *&v391 = v167[2];

              FormatOptionValue.type.getter(&v386);
              if ((sub_1D6183C84(v386, v134) & 1) == 0)
              {
LABEL_153:
                type metadata accessor for FormatDerivedDataError();
                sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
                swift_allocError();
                v309 = v308;
                v310 = *v167;
                v311 = v167[1];
                *&v391 = v167[2];

                FormatOptionValue.type.getter(&v386);
                v312 = v386;
                *v309 = v310;
                *(v309 + 8) = v311;
                *(v309 + 16) = v312;
                *(v309 + 24) = v134;
                swift_storeEnumTagMultiPayload();
                swift_willThrow();

                sub_1D62B51D0(v167, type metadata accessor for FormatOption);
                goto LABEL_163;
              }

              swift_bridgeObjectRelease_n();
              v196 = v359;
              sub_1D5D5E33C(v167, v359, type metadata accessor for FormatOption);
              (*v370)(v196, 0, 1, v381);
              v138 = v196;
            }

            sub_1D5B6EF64(v138, &qword_1EDF337F0, type metadata accessor for FormatOption);
            v90 = v402;
            v4 = v383;
            v159 = v384;
            v89 = &protocol descriptor for FormatBindable;
            v103 = v376;
            v102 = v373;
          }

          else
          {
            v353 = v399 & 0x3FFF;
            v364 = v398;
            v365 = *(&v397 + 1);
            v366 = v397;
            v369 = *(&v398 + 1);
            switch((v399 >> 7) & 0x7E | (v399 >> 3) & 1)
            {
              case 2u:
                v383 = v4;
                *(v395 + 10) = *(v88 + 90);
                v275 = v88[4];
                v276 = v88[5];
                v277 = v88[2];
                v393 = v88[3];
                v394 = v275;
                v395[0] = v276;
                v278 = v88[1];
                v391 = *v88;
                *v392 = v278;
                *&v392[16] = v277;
                WORD4(v395[1]) &= 0xCFFFu;
                v279 = v396;
                v280 = v397;
                v281 = *(&v398 + 1);
                v282 = v399;
                sub_1D62B7260(&v391, &v386);
                v283 = v282 & 0xF7;
                v391 = v279;
                v164 = *(&v279 + 1);
                *v392 = v280;
                *&v392[8] = v365;
                *&v392[16] = v364;
                *&v392[24] = v281;
                LOBYTE(v393) = v283;
                v165 = v380;
                v284 = v383;
                FormatGroupBinding.Text.bind(binder:context:)(v368, v380);
                v4 = v284;
                if (v284)
                {
                  goto LABEL_163;
                }

                v89 = &protocol descriptor for FormatBindable;
                goto LABEL_38;
              case 3u:
              case 4u:
                v386 = v396;
                v387 = v397;
                v385 = 5;
                v367 = *(&v396 + 1);
                v238 = v396;
                v239 = v397;
                v338 = v399;
                sub_1D60B2AC8(&v396, &v391);
                v240 = v99;
                v164 = v367;
                sub_1D5E1DA6C(v238, v367, v239, v365, v364, v240, v338);

                v241 = sub_1D703E0C8(&v386, &v385);
                if (v4)
                {
                  goto LABEL_161;
                }

                v242 = v341;
                sub_1D6BEBFEC(v375, v164, v241, 1, v341);
                v243 = v366;

                sub_1D5B6EF64(v242, &qword_1EDF337F0, type metadata accessor for FormatOption);
                *&v391 = v375;
                *(&v391 + 1) = v164;
                *v392 = v243;
                LOBYTE(v386) = 5;
                sub_1D5E1DA6C(v375, v164, v243, v365, v364, v369, v338);

                v244 = sub_1D703E0C8(&v391, &v386);
                v245 = v339;
                sub_1D6BEBFEC(v375, v164, v244, 1, v339);

                sub_1D5B6EF64(v245, &qword_1EDF337F0, type metadata accessor for FormatOption);
                v165 = v380;
                v90 = v402;
                v89 = &protocol descriptor for FormatBindable;
                v4 = 0;
                goto LABEL_38;
              case 0xCu:
                v264 = v89;
                *(v395 + 10) = *(v88 + 90);
                v265 = v88[4];
                v266 = v88[5];
                v267 = v88[2];
                v393 = v88[3];
                v394 = v265;
                v395[0] = v266;
                v268 = v88[1];
                v391 = *v88;
                *v392 = v268;
                *&v392[16] = v267;
                WORD4(v395[1]) &= 0xCFFFu;
                v269 = *(&v396 + 1);
                sub_1D62B7260(&v391, &v386);
                v164 = v269;
                if ((v269 & 0x80) != 0)
                {
                  LOBYTE(v386) = v269 & 0x3F;
                  v300 = v264;
                  sub_1D5B49474(0, &qword_1EDF329A8);
                  if (swift_dynamicCast())
                  {
                    v301 = *&v392[8];
                    v302 = *&v392[16];
                    __swift_project_boxed_opaque_existential_1(&v391, *&v392[8]);
                    (*(v302 + 8))(v368, v380, v301, v302);
                    if (v4)
                    {
                      goto LABEL_168;
                    }

                    __swift_destroy_boxed_opaque_existential_1(&v391);
                    v164 = v269;
                    v89 = v264;
                    v165 = v380;
                  }

                  else
                  {
                    memset(v392, 0, 24);
                    v391 = 0u;
                    sub_1D5BFB774(&v391, &qword_1EDF329A0, &qword_1EDF329A8);
                    v165 = v380;
                    v164 = v269;
                    v89 = v300;
                  }

                  v90 = v402;
                }

                else
                {
                  v89 = v264;
                  v165 = v380;
                }

LABEL_38:
                *&v391 = v375;
                *(&v391 + 1) = v164;
                *v392 = v366;
                *&v392[8] = v365;
                *&v392[16] = v364;
                *&v392[24] = v369;
                LOWORD(v393) = v353;
                FormatTextNodeBinding.bindChildren(binder:context:)(v368, v165);
                if (v4)
                {
                  goto LABEL_163;
                }

                v102 = v373;
                v159 = v384;
                v103 = v376;
                break;
              default:
                *(v395 + 10) = *(v88 + 90);
                v160 = v88[4];
                v161 = v88[5];
                v162 = v88[2];
                v393 = v88[3];
                v394 = v160;
                v395[0] = v161;
                v163 = v88[1];
                v391 = *v88;
                *v392 = v163;
                *&v392[16] = v162;
                WORD4(v395[1]) &= 0xCFFFu;
                v164 = *(&v396 + 1);
                sub_1D62B7260(&v391, &v386);
                v165 = v380;
                goto LABEL_38;
            }
          }
        }

        else
        {
          *(v395 + 10) = *(v88 + 90);
          v155 = v88[4];
          v156 = v88[5];
          v157 = v88[2];
          v393 = v88[3];
          v394 = v155;
          v395[0] = v156;
          v158 = v88[1];
          v391 = *v88;
          *v392 = v158;
          *&v392[16] = v157;
          WORD4(v395[1]) &= 0xCFFFu;
          v159 = *&v401[1];
          sub_1D62B7260(&v391, &v386);
        }

        v197 = v382;
        if (v382 >> 14)
        {
          if (v382 >> 14 == 1)
          {
            *&v391 = v102;
            *(&v391 + 1) = v103;
            *v392 = v379;
            LOBYTE(v386) = 5;
            sub_1D5E1DA6C(v102, v103, v379, v378, *(&v378 + 1), v159, v382 & 0xCFFF);
            v198 = sub_1D703E0C8(&v391, &v386);
            if (v4)
            {
              goto LABEL_163;
            }

            v199 = v198;
            v200 = v380;
            v201 = v103;
            v202 = v356;
            v176 = v102;
            FormatOptionCollection.subscript.getter(v102, v201, v356);
            if ((*v371)(v202, 1, v381) == 1)
            {

              sub_1D5B6EF64(v202, &qword_1EDF337F0, type metadata accessor for FormatOption);
              if ((*(v200 + 48) & 1) == 0)
              {
LABEL_155:
                type metadata accessor for FormatLayoutError();
                sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
                swift_allocError();
                *v313 = v176;
                v313[1] = v376;
                swift_storeEnumTagMultiPayload();
                swift_willThrow();

                goto LABEL_163;
              }

              v177 = 1;
              v178 = v354;
              goto LABEL_82;
            }

            v219 = v344;
            sub_1D5D5E33C(v202, v344, type metadata accessor for FormatOption);
            *&v391 = v219[2];

            FormatOptionValue.type.getter(&v386);
            if ((sub_1D6183C84(v386, v199) & 1) == 0)
            {
              type metadata accessor for FormatDerivedDataError();
              sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
              swift_allocError();
              v326 = v325;
              v328 = *v219;
              v327 = v219[1];
              *&v391 = v219[2];

              FormatOptionValue.type.getter(&v386);
              v329 = v386;
              *v326 = v328;
              *(v326 + 8) = v327;
              *(v326 + 16) = v329;
              *(v326 + 24) = v199;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();

              sub_1D62B51D0(v219, type metadata accessor for FormatOption);
              goto LABEL_163;
            }

            swift_bridgeObjectRelease_n();
            v218 = v219;
            v178 = v354;
            goto LABEL_81;
          }

          v203 = v4;
          v204 = v103;
          v205 = v379;
          v374 = v88;
          if ((((v382 & 0xF00) >> 7) & 0xFFFFFFFE | (v382 >> 3) & 1) - 3 >= 2)
          {
            v210 = v203;
          }

          else
          {
            *&v391 = v102;
            *(&v391 + 1) = v204;
            *v392 = v379;
            LOBYTE(v386) = 5;
            sub_1D5E1DA6C(v102, v204, v379, v378, *(&v378 + 1), v159, v382 & 0xCFFF);

            v206 = sub_1D703E0C8(&v391, &v386);
            if (v203)
            {
LABEL_154:

              sub_1D60B2A74(&v396);
              return;
            }

            v207 = v343;
            v208 = v102;
            sub_1D6BEBFEC(v102, v204, v206, 1, v343);
            v383 = 0;
            v209 = v379;

            sub_1D5B6EF64(v207, &qword_1EDF337F0, type metadata accessor for FormatOption);
            v210 = v383;
            v159 = v384;
            v211 = v208;
            v205 = v209;
            v102 = v211;
            v197 = v382;
          }

          LODWORD(v383) = v197 & 0xFFF;
          *&v391 = v102;
          *(&v391 + 1) = v204;
          v212 = v378;
          *v392 = v205;
          *&v392[8] = v378;
          *&v392[24] = v159;
          LOWORD(v393) = v197 & 0xFFF;
          v213 = v205;
          v214 = v368;
          v215 = v380;
          FormatTextNodeBinding.bindChildren(binder:context:)(v368, v380);
          if (v210)
          {
            goto LABEL_163;
          }

          *&v386 = v102;
          *(&v386 + 1) = v204;
          v387 = v213;
          v388 = v212;
          v389 = v384;
          v390 = v383;
          v192 = v214;
          v193 = v215;
          goto LABEL_73;
        }
      }

      goto LABEL_3;
    }

    if (!(v399 >> 14))
    {
      goto LABEL_4;
    }

    if (v399 >> 14 == 1)
    {
      v119 = v90;
      v386 = v396;
      v387 = v397;
      v385 = 5;
      v120 = v396;
      sub_1D60B2AC8(&v396, &v391);
      sub_1D60B2AC8(&v396, &v391);
      v121 = sub_1D703E0C8(&v386, &v385);
      if (v4)
      {
        goto LABEL_163;
      }

      v122 = v121;
      v383 = 0;
      v402 = v119;
      v123 = v380;
      v124 = v361;
      v367 = *(&v120 + 1);
      v375 = v120;
      FormatOptionCollection.subscript.getter(v120, *(&v120 + 1), v361);
      if ((*v371)(v124, 1, v381) == 1)
      {

        sub_1D5B6EF64(v124, &qword_1EDF337F0, type metadata accessor for FormatOption);
        if ((*(v123 + 48) & 1) == 0)
        {
          goto LABEL_152;
        }

        v125 = 1;
        v126 = v357;
      }

      else
      {
        v194 = v352;
        sub_1D5D5E33C(v124, v352, type metadata accessor for FormatOption);
        *&v391 = *(v194 + 16);

        FormatOptionValue.type.getter(&v386);
        if ((sub_1D6183C84(v386, v122) & 1) == 0)
        {
          type metadata accessor for FormatDerivedDataError();
          sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
          swift_allocError();
          v314 = v194;
          v316 = v315;
          v318 = *v314;
          v317 = v314[1];
          *&v391 = v314[2];

          FormatOptionValue.type.getter(&v386);
          v319 = v386;
          *v316 = v318;
          *(v316 + 8) = v317;
          *(v316 + 16) = v319;
          *(v316 + 24) = v122;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          goto LABEL_159;
        }

        swift_bridgeObjectRelease_n();
        v126 = v357;
        sub_1D5D5E33C(v194, v357, type metadata accessor for FormatOption);
        v125 = 0;
      }

      (*v370)(v126, v125, 1, v381);
      sub_1D5B6EF64(v126, &qword_1EDF337F0, type metadata accessor for FormatOption);
      sub_1D60B2A74(&v396);
      v90 = v402;
      v4 = v383;
      v89 = &protocol descriptor for FormatBindable;
      goto LABEL_4;
    }

    v144 = (v399 >> 7) & 0x7E | (v399 >> 3) & 1;
    if (v144 <= 7)
    {
      break;
    }

    if (v144 <= 11)
    {
      if ((v144 - 9) >= 3)
      {
        goto LABEL_90;
      }

      goto LABEL_111;
    }

    if (v144 != 12)
    {
      if (v144 != 13)
      {
        goto LABEL_90;
      }

      goto LABEL_111;
    }

    v270 = BYTE8(v396);
    if ((BYTE8(v396) & 0x80) != 0)
    {
      v271 = v4;
      v272 = v90;
      LOBYTE(v386) = BYTE8(v396) & 0x3F;
      sub_1D5B49474(0, &qword_1EDF329A8);
      if (swift_dynamicCast())
      {
        v273 = *&v392[8];
        v274 = *&v392[16];
        __swift_project_boxed_opaque_existential_1(&v391, *&v392[8]);
        (*(v274 + 8))(v368, v380, v273, v274);
        if (v271)
        {
          __swift_destroy_boxed_opaque_existential_1(&v391);
LABEL_156:
          sub_1D60B2A74(&v396);
          return;
        }

        __swift_destroy_boxed_opaque_existential_1(&v391);
        v89 = &protocol descriptor for FormatBindable;
      }

      else
      {
        memset(v392, 0, 24);
        v391 = 0u;
        sub_1D5BFB774(&v391, &qword_1EDF329A0, &qword_1EDF329A8);
      }

      v90 = v272;
      v4 = v271;
      v292 = v270 >> 6;
      if (!(v270 >> 6))
      {
        goto LABEL_3;
      }
    }

    else
    {
      v292 = BYTE8(v396) >> 6;
      if (!(BYTE8(v396) >> 6))
      {
        goto LABEL_3;
      }
    }

    if (v292 == 1)
    {
      goto LABEL_3;
    }

    LOBYTE(v386) = v270 & 0x3F;
    sub_1D5B49474(0, &qword_1EDF329A8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      memset(v392, 0, 24);
      v391 = 0u;
      sub_1D5BFB774(&v391, &qword_1EDF329A0, &qword_1EDF329A8);
      goto LABEL_3;
    }

    v293 = v4;
    v294 = v90;
    v295 = *&v392[8];
    v296 = *&v392[16];
    __swift_project_boxed_opaque_existential_1(&v391, *&v392[8]);
    (*(v296 + 8))(v368, v380, v295, v296);
    if (v293)
    {
      goto LABEL_167;
    }

    __swift_destroy_boxed_opaque_existential_1(&v391);
    sub_1D60B2A74(&v396);
    v89 = &protocol descriptor for FormatBindable;
    v90 = v294;
    v4 = 0;
LABEL_4:
    v88 += 7;
    if (!--v90)
    {
      return;
    }
  }

  if (v144 > 2)
  {
    if ((v144 - 5) >= 3)
    {
      v369 = *(&v398 + 1);
      v338 = v399;
      v365 = *(&v397 + 1);
      v374 = v88;
      v145 = v398;
      v386 = v396;
      v387 = v397;
      v385 = 5;
      v146 = v396;
      v147 = v397;
      sub_1D60B2AC8(&v396, &v391);
      sub_1D60B2AC8(&v396, &v391);

      v366 = v147;

      v148 = sub_1D703E0C8(&v386, &v385);
      if (v4)
      {
        goto LABEL_161;
      }

      v149 = v148;
      v383 = 0;
      v150 = v90;
      v151 = v380;
      v367 = *(&v146 + 1);
      v375 = v146;
      FormatOptionCollection.subscript.getter(v146, *(&v146 + 1), v377);
      v152 = v377;
      if ((*v371)(v377, 1, v381) == 1)
      {

        sub_1D5B6EF64(v152, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v89 = &protocol descriptor for FormatBindable;
        if ((*(v151 + 48) & 1) == 0)
        {
          type metadata accessor for FormatLayoutError();
          sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          swift_allocError();
          v335 = v367;
          *v336 = v375;
          v336[1] = v335;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          goto LABEL_162;
        }

        v153 = 1;
        v154 = v340;
        v90 = v150;
      }

      else
      {
        v285 = v152;
        v286 = v342;
        sub_1D5D5E33C(v285, v342, type metadata accessor for FormatOption);
        *&v391 = v286[2];

        FormatOptionValue.type.getter(&v386);
        v287 = v149;
        v89 = &protocol descriptor for FormatBindable;
        if ((sub_1D6183C84(v386, v149) & 1) == 0)
        {
          type metadata accessor for FormatDerivedDataError();
          sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
          swift_allocError();
          v331 = v330;
          v314 = v342;
          v332 = *v342;
          v333 = v342[1];
          *&v391 = v342[2];

          FormatOptionValue.type.getter(&v386);
          v334 = v386;
          *v331 = v332;
          *(v331 + 8) = v333;
          *(v331 + 16) = v334;
          *(v331 + 24) = v287;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          goto LABEL_159;
        }

        v90 = v150;

        swift_bridgeObjectRelease_n();
        v154 = v340;
        sub_1D5D5E33C(v342, v340, type metadata accessor for FormatOption);
        v153 = 0;
      }

      (*v370)(v154, v153, 1, v381);
      sub_1D5B6EF64(v154, &qword_1EDF337F0, type metadata accessor for FormatOption);
      v4 = v383;
      v96 = v366;
      v95 = v367;
      v98 = v145;
      v88 = v374;
      v94 = v375;
      v97 = v365;
      v101 = v338;
      v99 = v369;
    }

LABEL_111:
    if (v144 > 4)
    {
      goto LABEL_3;
    }

    if ((v144 - 3) < 2)
    {
      v402 = v90;
      *&v386 = v94;
      *(&v386 + 1) = v95;
      v387 = v96;
      v385 = 5;
      v288 = v94;
      v289 = v95;
      sub_1D60B2AC8(&v396, &v391);

      v290 = sub_1D703E0C8(&v386, &v385);
      if (!v4)
      {
        v291 = v348;
        sub_1D6BEBFEC(v288, v289, v290, 1, v348);

        sub_1D5B6EF64(v291, &qword_1EDF337F0, type metadata accessor for FormatOption);
        sub_1D60B2A74(&v396);
        v89 = &protocol descriptor for FormatBindable;
        v90 = v402;
        v4 = 0;
        goto LABEL_4;
      }

LABEL_161:

LABEL_162:

      goto LABEL_163;
    }

    if (v144 == 1)
    {
      goto LABEL_3;
    }

LABEL_122:
    *&v391 = v94;
    *(&v391 + 1) = v95;
    *v392 = v96;
    *&v392[8] = v97;
    *&v392[16] = v98;
    *&v392[24] = v99;
    LOBYTE(v393) = v101 & 0xF7;
    FormatGroupBinding.Text.bind(binder:context:)(v368, v380);
    if (v4)
    {
      goto LABEL_163;
    }

    sub_1D60B2A74(&v396);
    v89 = &protocol descriptor for FormatBindable;
    goto LABEL_4;
  }

  if (!v144)
  {
LABEL_90:
    sub_1D5E1DA6C(v396, *(&v396 + 1), v397, *(&v397 + 1), v398, *(&v398 + 1), v399);
LABEL_3:
    sub_1D60B2A74(&v396);
    goto LABEL_4;
  }

  if (v144 == 1)
  {
    goto LABEL_111;
  }

  v374 = v88;
  v367 = *(&v396 + 1);
  v375 = v396;
  v221 = *(&v397 + 1);
  v220 = v397;
  v369 = *(&v398 + 1);
  v222 = v398;
  v223 = v399;
  sub_1D5E1DA6C(v396, *(&v396 + 1), v397, *(&v397 + 1), v398, *(&v398 + 1), v399);
  v101 = v223;
  v224 = v223 >> 4;
  if (((1 << v224) & 0x1EF7) != 0)
  {
    v95 = v367;
    v96 = v220;
    v99 = v369;
    v98 = v222;
    v88 = v374;
    v94 = v375;
    v97 = v221;
    goto LABEL_122;
  }

  v95 = v367;
  v94 = v375;
  v96 = v220;
  if (v224 == 3)
  {
    *&v391 = v375;
    *(&v391 + 1) = v367;
    *v392 = v220;
    sub_1D62B416C(v380);
    if (v4)
    {
      goto LABEL_163;
    }

    goto LABEL_144;
  }

  if ((v367 & 0x80) == 0)
  {
    v98 = v222;
    v97 = v221;
    v99 = v369;
    v88 = v374;
    goto LABEL_122;
  }

  LOBYTE(v386) = v367 & 0x3F;
  sub_1D5B49474(0, &qword_1EDF329A8);
  if (!swift_dynamicCast())
  {
    memset(v392, 0, 24);
    v391 = 0u;
    sub_1D5BFB774(&v391, &qword_1EDF329A0, &qword_1EDF329A8);
    goto LABEL_144;
  }

  v305 = *&v392[8];
  v384 = *&v392[16];
  __swift_project_boxed_opaque_existential_1(&v391, *&v392[8]);
  (*(v384 + 8))(v368, v380, v305);
  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_1(&v391);
LABEL_144:
    v95 = v367;
    v96 = v220;
    v99 = v369;
    v98 = v222;
    v88 = v374;
    v94 = v375;
    v97 = v221;
    v101 = v223;
    goto LABEL_122;
  }

LABEL_168:
  __swift_destroy_boxed_opaque_existential_1(&v391);
LABEL_163:
  sub_1D60B2A74(&v396);
}

uint64_t sub_1D62125B0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = *(a3 + 16);
  if (!v51)
  {
    return result;
  }

  v6 = result;
  v7 = 0;
  v52 = a3 + 32;
  while (2)
  {
    v8 = v52 + 40 * v7;
    v10 = *v8;
    v9 = *(v8 + 8);
    v12 = *(v8 + 16);
    v11 = *(v8 + 24);
    ++v7;
    v55 = v12;
    v53 = *(v8 + 32);
    v54 = v9;
    switch(v53)
    {
      case 1u:
        v25 = *(v10 + 16);

        if (!v25)
        {
          goto LABEL_80;
        }

        v26 = (v10 + 40);
        while (1)
        {
          if ((*v26 & 1) == 0)
          {
            v27 = *(v26 - 1);
            swift_retain_n();
            FormatFloat.bind(binder:context:)(v6, a2);
            sub_1D62B72BC(v27, 0);

            if (v4)
            {
              break;
            }
          }

          v26 += 16;
          if (!--v25)
          {
            goto LABEL_80;
          }
        }

        v46 = v10;
        v47 = v54;
        v48 = v55;
        v49 = v11;
        v50 = 1;
        return sub_1D5ECEF00(v46, v47, v48, v49, v50);
      case 2u:
        v28 = *(v10 + 16);

        if (!v28)
        {
          goto LABEL_80;
        }

        v29 = (v10 + 40);
        while (2)
        {
          if (*v29)
          {
            goto LABEL_42;
          }

          v30 = *(v29 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v6, a2);
          if (!v4)
          {
            sub_1D62B72BC(v30, 0);

LABEL_42:
            v29 += 16;
            if (!--v28)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v30, 0);

        v46 = v10;
        v47 = v54;
        v48 = v55;
        v49 = v11;
        v50 = 2;
        return sub_1D5ECEF00(v46, v47, v48, v49, v50);
      case 3u:
        v16 = *(v10 + 16);

        if (!v16)
        {
          goto LABEL_80;
        }

        v17 = (v10 + 40);
        while (2)
        {
          if (*v17)
          {
            goto LABEL_16;
          }

          v18 = *(v17 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v6, a2);
          if (!v4)
          {
            sub_1D62B72BC(v18, 0);

LABEL_16:
            v17 += 16;
            if (!--v16)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v18, 0);

        v46 = v10;
        v47 = v54;
        v48 = v55;
        v49 = v11;
        v50 = 3;
        return sub_1D5ECEF00(v46, v47, v48, v49, v50);
      case 4u:
        v34 = *(v10 + 16);

        if (!v34)
        {
          goto LABEL_80;
        }

        v35 = (v10 + 40);
        while (2)
        {
          if (*v35)
          {
            goto LABEL_55;
          }

          v36 = *(v35 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v6, a2);
          if (!v4)
          {
            sub_1D62B72BC(v36, 0);

LABEL_55:
            v35 += 16;
            if (!--v34)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v36, 0);

        v46 = v10;
        v47 = v54;
        v48 = v55;
        v49 = v11;
        v50 = 4;
        return sub_1D5ECEF00(v46, v47, v48, v49, v50);
      case 5u:
        v37 = *(v10 + 16);

        if (!v37)
        {
          goto LABEL_80;
        }

        v38 = (v10 + 40);
        while (2)
        {
          if (*v38)
          {
            goto LABEL_62;
          }

          v39 = *(v38 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v6, a2);
          if (!v4)
          {
            sub_1D62B72BC(v39, 0);

LABEL_62:
            v38 += 16;
            if (!--v37)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v39, 0);

        v46 = v10;
        v47 = v54;
        v48 = v55;
        v49 = v11;
        v50 = 5;
        return sub_1D5ECEF00(v46, v47, v48, v49, v50);
      case 6u:
        v31 = *(v10 + 16);

        if (!v31)
        {
          goto LABEL_80;
        }

        v32 = (v10 + 40);
        while (2)
        {
          if (*v32)
          {
            goto LABEL_49;
          }

          v33 = *(v32 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v6, a2);
          if (!v4)
          {
            sub_1D62B72BC(v33, 0);

LABEL_49:
            v32 += 16;
            if (!--v31)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v33, 0);

        v46 = v10;
        v47 = v54;
        v48 = v55;
        v49 = v11;
        v50 = 6;
        return sub_1D5ECEF00(v46, v47, v48, v49, v50);
      case 7u:
        v43 = *(v10 + 16);

        if (!v43)
        {
          goto LABEL_80;
        }

        v44 = (v10 + 40);
        while (2)
        {
          if (*v44)
          {
            goto LABEL_76;
          }

          v45 = *(v44 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v6, a2);
          if (!v4)
          {
            sub_1D62B72BC(v45, 0);

LABEL_76:
            v44 += 16;
            if (!--v43)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v45, 0);

        v46 = v10;
        v47 = v54;
        v48 = v55;
        v49 = v11;
        v50 = 7;
        return sub_1D5ECEF00(v46, v47, v48, v49, v50);
      case 8u:
        v22 = *(v10 + 16);

        if (!v22)
        {
          goto LABEL_80;
        }

        v23 = (v10 + 40);
        while (2)
        {
          if (*v23)
          {
            goto LABEL_29;
          }

          v24 = *(v23 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v6, a2);
          if (!v4)
          {
            sub_1D62B72BC(v24, 0);

LABEL_29:
            v23 += 16;
            if (!--v22)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v24, 0);

        v46 = v10;
        v47 = v54;
        v48 = v55;
        v49 = v11;
        v50 = 8;
        return sub_1D5ECEF00(v46, v47, v48, v49, v50);
      case 9u:
        v40 = *(v10 + 16);

        if (!v40)
        {
          goto LABEL_80;
        }

        v41 = (v10 + 40);
        while (2)
        {
          if (*v41)
          {
            goto LABEL_69;
          }

          v42 = *(v41 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v6, a2);
          if (!v4)
          {
            sub_1D62B72BC(v42, 0);

LABEL_69:
            v41 += 16;
            if (!--v40)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v42, 0);

        v46 = v10;
        v47 = v54;
        v48 = v55;
        v49 = v11;
        v50 = 9;
        return sub_1D5ECEF00(v46, v47, v48, v49, v50);
      case 0xAu:
        v13 = *(v10 + 16);

        if (!v13)
        {
          goto LABEL_80;
        }

        v14 = (v10 + 40);
        while (2)
        {
          if (*v14)
          {
            goto LABEL_9;
          }

          v15 = *(v14 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v6, a2);
          if (!v4)
          {
            sub_1D62B72BC(v15, 0);

LABEL_9:
            v14 += 16;
            if (!--v13)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v15, 0);

        v46 = v10;
        v47 = v54;
        v48 = v55;
        v49 = v11;
        v50 = 10;
        return sub_1D5ECEF00(v46, v47, v48, v49, v50);
      case 0xBu:
        v19 = *(v10 + 16);

        if (!v19)
        {
          goto LABEL_80;
        }

        v20 = (v10 + 40);
        while (2)
        {
          if (*v20)
          {
            goto LABEL_23;
          }

          v21 = *(v20 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v6, a2);
          if (!v4)
          {
            sub_1D62B72BC(v21, 0);

LABEL_23:
            v20 += 16;
            if (!--v19)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v21, 0);

        v46 = v10;
        v47 = v54;
        v48 = v55;
        v49 = v11;
        v50 = 11;
        return sub_1D5ECEF00(v46, v47, v48, v49, v50);
      case 0xCu:
        goto LABEL_81;
      default:

        sub_1D620B270(v6, a2, v10);
        if (!v4)
        {
          sub_1D620B270(v6, a2, v9);
          sub_1D620B270(v6, a2, v12);
          sub_1D620B270(v6, a2, v11);
          v4 = 0;
LABEL_80:
          result = sub_1D5ECEF00(v10, v54, v55, v11, v53);
LABEL_81:
          if (v7 == v51)
          {
            return result;
          }

          continue;
        }

        v46 = v10;
        v47 = v9;
        v48 = v12;
        v49 = v11;
        v50 = 0;
        return sub_1D5ECEF00(v46, v47, v48, v49, v50);
    }
  }
}

uint64_t sub_1D6212DD8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = a3 + 32;
    while (1)
    {
      v7 += 8;

      FormatColor.bind(binder:context:)(v6, a2);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1D6212E6C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v13 = result;
  v5 = *(a3 + 16);
  if (v5)
  {
    sub_1D5D0ACAC(0, &qword_1EDF1B018, &type metadata for FormatSourceItemTipTrait, MEMORY[0x1E69E62F8]);
    v8 = v7;
    sub_1D5B49474(0, &qword_1EDF329A8);
    v9 = (a3 + 48);
    do
    {
      v19 = *v9;

      swift_bridgeObjectRetain_n();
      if (swift_dynamicCast())
      {
        v10 = v8;
        v15 = v4;
        v12 = *(&v17 + 1);
        v11 = v18;
        __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
        (*(v11 + 8))(v13, a2, v12, v11);
        v4 = v15;

        result = __swift_destroy_boxed_opaque_existential_1(&v16);
        if (v15)
        {
          return result;
        }

        v8 = v10;
      }

      else
      {

        v18 = 0;
        v16 = 0u;
        v17 = 0u;
        result = sub_1D5BFB774(&v16, &qword_1EDF329A0, &qword_1EDF329A8);
      }

      v9 += 3;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1D6213004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FormatOption() - 8;
  MEMORY[0x1EEE9AC00](v7, v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  if (v12)
  {
    v13 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    while (1)
    {
      sub_1D62B50EC(v13, v11, type metadata accessor for FormatOption);
      v15[1] = *(v11 + 2);

      FormatOptionValue.bind(binder:context:)(a1, a2);
      if (v3)
      {
        break;
      }

      sub_1D62B51D0(v11, type metadata accessor for FormatOption);
      v13 += v14;
      if (!--v12)
      {
        return;
      }
    }

    sub_1D62B51D0(v11, type metadata accessor for FormatOption);
  }
}

uint64_t sub_1D6213184(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = *(a3 + 16);
  if (!v41)
  {
    return result;
  }

  v6 = result;
  v7 = 0;
  v42 = a3 + 32;
  while (1)
  {
    v8 = v42 + 56 * v7;
    v9 = *v8;
    v10 = *(v8 + 8);
    v12 = *(v8 + 16);
    v11 = *(v8 + 24);
    v14 = *(v8 + 32);
    v13 = *(v8 + 40);
    v15 = *(v8 + 48);
    if (v15 <= 2)
    {
      break;
    }

    if (v15 == 3)
    {
      v46 = *(v8 + 24);
      v43 = *(v8 + 40);
      sub_1D62B7654(*v8, *(v8 + 8), *(v8 + 16), v11, v14, v13, 3u);

      sub_1D620B270(v6, a2, v9);
      if (v4)
      {

        v32 = v9;
        v33 = v10;
        v34 = v12;
        v35 = v46;
        v36 = v14;
        v37 = v43;
        v38 = 3;
        return sub_1D62B772C(v32, v33, v34, v35, v36, v37, v38);
      }

      sub_1D620B270(v6, a2, v10);
      v45 = v14;
      v39 = v10;

      sub_1D620B270(v6, a2, v12);
      sub_1D620B270(v6, a2, v46);
      v20 = 0;
LABEL_26:
      v10 = v39;

      v21 = v43;
LABEL_44:
      result = sub_1D62B772C(v9, v10, v12, v46, v45, v21, v15);
      v4 = v20;
      goto LABEL_45;
    }

    if (v15 == 4)
    {
      v46 = *(v8 + 24);
      v44 = *(v8 + 40);
      sub_1D62B7654(*v8, *(v8 + 8), *(v8 + 16), v11, v14, v13, 4u);

      sub_1D620B270(v6, a2, v9);
      if (v4)
      {

        v32 = v9;
        v33 = v10;
        v34 = v12;
        v35 = v46;
        v36 = v14;
        v37 = v44;
        v38 = 4;
        return sub_1D62B772C(v32, v33, v34, v35, v36, v37, v38);
      }

      sub_1D620B270(v6, a2, v10);

      sub_1D620B270(v6, a2, v12);
      sub_1D620B270(v6, a2, v46);
      v45 = v14;
      sub_1D620B270(v6, a2, v14);
      v20 = 0;
      LOBYTE(v15) = 4;
      v21 = v44;
      goto LABEL_44;
    }

LABEL_45:
    if (++v7 == v41)
    {
      return result;
    }
  }

  v43 = *(v8 + 40);
  v45 = *(v8 + 32);
  v46 = *(v8 + 24);
  if (!*(v8 + 48))
  {
    v22 = *(v9 + 16);
    sub_1D62B7654(v9, v10, v12, v11, *(v8 + 32), v13, 0);
    v40 = v9;
    if (v22)
    {
      v23 = (v9 + 40);
      v24 = v4;
      while (1)
      {
        if ((*v23 & 1) == 0)
        {
          v25 = *(v23 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v6, a2);
          sub_1D62B72BC(v25, 0);

          if (v24)
          {
            goto LABEL_47;
          }
        }

        v23 += 16;
        if (!--v22)
        {
          goto LABEL_28;
        }
      }
    }

    v24 = v4;
LABEL_28:
    v26 = *(v10 + 16);
    if (v26)
    {
      v27 = (v10 + 40);
      while (1)
      {
        if ((*v27 & 1) == 0)
        {
          v28 = *(v27 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v6, a2);
          sub_1D62B72BC(v28, 0);

          if (v24)
          {
            break;
          }
        }

        v27 += 16;
        if (!--v26)
        {
          goto LABEL_34;
        }
      }

LABEL_47:
      v32 = v40;
      v33 = v10;
      v34 = v12;
      v36 = v45;
      v35 = v46;
      v37 = v43;
      v38 = 0;
      return sub_1D62B772C(v32, v33, v34, v35, v36, v37, v38);
    }

LABEL_34:
    v20 = v24;
    LOBYTE(v15) = 0;
    goto LABEL_43;
  }

  if (v15 != 1)
  {
    sub_1D62B7654(v9, v10, v12, v11, v14, v13, 2u);

    sub_1D620B270(v6, a2, v9);
    if (v4)
    {

      v32 = v9;
      v33 = v10;
      v34 = v12;
      v35 = v46;
      v36 = v14;
      v37 = v43;
      v38 = 2;
      return sub_1D62B772C(v32, v33, v34, v35, v36, v37, v38);
    }

    sub_1D620B270(v6, a2, v10);

    sub_1D620B270(v6, a2, v12);
    sub_1D620B270(v6, a2, v46);
    v39 = v10;

    sub_1D620B270(v6, a2, v45);
    sub_1D620B270(v6, a2, v43);
    v20 = 0;
    goto LABEL_26;
  }

  v16 = *(v9 + 16);
  sub_1D62B7654(v9, v10, v12, v11, *(v8 + 32), v13, 1u);
  v40 = v9;
  if (v16)
  {
    v17 = (v9 + 40);
    v18 = v4;
    while (1)
    {
      if ((*v17 & 1) == 0)
      {
        v19 = *(v17 - 1);
        swift_retain_n();
        FormatFloat.bind(binder:context:)(v6, a2);
        if (v18)
        {
          sub_1D62B72BC(v19, 0);

          return sub_1D62B772C(v40, v10, v12, v46, v45, v43, 1u);
        }

        sub_1D62B72BC(v19, 0);
      }

      v17 += 16;
      if (!--v16)
      {
        goto LABEL_36;
      }
    }
  }

  v18 = v4;
LABEL_36:
  v29 = *(v10 + 16);
  if (!v29)
  {
LABEL_42:
    v20 = v18;
    LOBYTE(v15) = 1;
LABEL_43:
    v21 = v43;
    v9 = v40;
    goto LABEL_44;
  }

  v30 = (v10 + 40);
  while (1)
  {
    if ((*v30 & 1) == 0)
    {
      v31 = *(v30 - 1);
      swift_retain_n();
      FormatFloat.bind(binder:context:)(v6, a2);
      sub_1D62B72BC(v31, 0);

      if (v18)
      {
        break;
      }
    }

    v30 += 16;
    if (!--v29)
    {
      goto LABEL_42;
    }
  }

  v32 = v40;
  v33 = v10;
  v34 = v12;
  v36 = v45;
  v35 = v46;
  v37 = v43;
  v38 = 1;
  return sub_1D62B772C(v32, v33, v34, v35, v36, v37, v38);
}

void sub_1D621397C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v194 = a1;
  v7 = type metadata accessor for FormatOption();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v180 = &v173 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v179 = &v173 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v173 - v16);
  MEMORY[0x1EEE9AC00](v18, v19);
  v182 = &v173 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v181 = &v173 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v173 - v26);
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v185 = &v173 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  v186 = &v173 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v184 = &v173 - v39;
  v40 = *(a3 + 16);
  if (!v40)
  {
    return;
  }

  v187 = (v8 + 56);
  v188 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
  v175 = v17;
  v176 = v27;
  v227 = a2;
  v41 = v194;
  v189 = v7;
  v42 = (a3 + 32);
  v178 = v38;
  while (1)
  {
    v44 = *v42++;
    v43 = v44;
    v45 = v44 >> 62;
    if (v44 >> 62)
    {
      if (v45 == 1)
      {

        FormatAnimationNodeSpringAnimation.bind(binder:context:)(v41, v227);
        if (v4)
        {
          goto LABEL_241;
        }

        goto LABEL_4;
      }

      v55 = v41;
      v56 = *((v43 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v57 = *(v56 + 16);

      v58 = v55;
      sub_1D621397C(v55, v227, v57);
      if (v4)
      {
LABEL_241:

        goto LABEL_289;
      }

      v59 = *(v56 + 120);
      v209 = *(v56 + 104);
      v210 = v59;
      v211[0] = *(v56 + 136);
      *(v211 + 9) = *(v56 + 145);
      v60 = *(v56 + 56);
      v205 = *(v56 + 40);
      v206 = v60;
      v61 = *(v56 + 88);
      v207 = *(v56 + 72);
      v208 = v61;
      v204 = *(v56 + 24);
      memmove(&__dst, (v56 + 24), 0x89uLL);
      if (sub_1D60486AC(&__dst) == 1)
      {

LABEL_60:

        v41 = v58;
        goto LABEL_4;
      }

      v63 = __dst;
      if (__dst)
      {
        v202 = v210;
        v203[0] = v211[0];
        *(v203 + 9) = *(v211 + 9);
        v198 = v206;
        v199 = v207;
        v200 = v208;
        v201 = v209;
        v196 = v204;
        v197 = v205;
        sub_1D62B4994(&v196, v195);
        sub_1D620B270(v58, v227, v63);
        v64 = v213;
        if (!v213)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v202 = v210;
        v203[0] = v211[0];
        *(v203 + 9) = *(v211 + 9);
        v198 = v206;
        v199 = v207;
        v200 = v208;
        v201 = v209;
        v196 = v204;
        v197 = v205;
        sub_1D62B4994(&v196, v195);
        v64 = v213;
        if (!v213)
        {
LABEL_44:
          if (v214)
          {
            sub_1D620B270(v58, v227, v214);
          }

          if (v215)
          {
            sub_1D620B270(v58, v227, v215);
          }

          if (v216)
          {
            sub_1D620B270(v58, v227, v216);
          }

          if (v217)
          {
            sub_1D620B270(v58, v227, v217);
          }

          if (v219 != 255)
          {
            v196 = v218;
            LOBYTE(v197) = v219 & 1;
            sub_1D6189668(v218, *(&v218 + 1), v219);
            sub_1D60ECF10(v227);
            sub_1D5D2F2C8(v196, *(&v196 + 1), v197);
          }

          v69 = v224;
          if (v224 != 255 && (v224 & 1) != 0)
          {
            v191 = v40;
            v192 = v42;
            v70 = v220;
            v71 = v221;
            v72 = v227;
            v193 = v222;
            v190 = v223;
            sub_1D618903C(v220, v221, v222, v223, 1);
            sub_1D620B270(v58, v72, v70);
            sub_1D620B270(v58, v72, v71);
            sub_1D620B270(v58, v72, v193);
            v73 = v58;
            v74 = v190;
            sub_1D620B270(v73, v72, v190);
            v4 = 0;
            sub_1D62B4B50(v70, v71, v193, v74, v69);
            v58 = v194;
            v40 = v191;
            v42 = v192;
          }

          if (v226 != 255)
          {
            v196 = v225;
            LOBYTE(v197) = v226 & 1;
            sub_1D6189668(v225, *(&v225 + 1), v226);
            sub_1D60ECF10(v227);
            sub_1D5D2F2C8(v196, *(&v196 + 1), v197);
          }

          sub_1D5D0ABCC(&v204, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
          goto LABEL_60;
        }
      }

      sub_1D620B270(v58, v227, v64);
      goto LABEL_44;
    }

    v191 = v40;
    v192 = v42;
    v46 = *(v43 + 16);
    v48 = *(v46 + 16);
    v47 = *(v46 + 24);
    v50 = *(v46 + 32);
    v49 = *(v46 + 40);
    v51 = *(v46 + 48);
    v193 = *(v46 + 56);
    v52 = *(v46 + 64);
    v190 = v43;
    if (v52 > 5)
    {
      break;
    }

    v53 = v227;
    if (v52 <= 2)
    {
      if (v52)
      {
        if (v52 == 1)
        {
          if (v48)
          {

            v54 = v49;
            sub_1D62B753C(v48, v47, v50, v49, v51, v193, 1u);

            sub_1D620B270(v194, v53, v48);
            if (v4)
            {
              goto LABEL_286;
            }

            if (!v47)
            {
              goto LABEL_120;
            }
          }

          else
          {

            v54 = v49;
            sub_1D62B753C(0, v47, v50, v49, v51, v193, 1u);
            if (!v47)
            {
LABEL_120:
              if (v50)
              {

                sub_1D620B270(v194, v53, v50);
                if (v4)
                {
LABEL_286:

                  v165 = v48;
                  v166 = v47;
                  v167 = v50;
                  v168 = v54;
                  v169 = v51;
                  v170 = v193;
                  v172 = 1;
                  goto LABEL_288;
                }

                v83 = v48;
                v84 = v47;
                v85 = v50;
              }

              else
              {
                v83 = v48;
                v84 = v47;
                v85 = 0;
              }

              v92 = v54;
              v93 = v51;
              v94 = v193;
              v95 = 1;
              goto LABEL_189;
            }
          }

          sub_1D620B270(v194, v53, v47);
          if (v4)
          {
            goto LABEL_286;
          }

          goto LABEL_120;
        }

        if (v48)
        {

          v79 = v49;
          sub_1D62B753C(v48, v47, v50, v49, v51, v193, 2u);

          sub_1D620B270(v194, v53, v48);
          if (v4)
          {
            goto LABEL_287;
          }

          if (!v47)
          {
            goto LABEL_144;
          }
        }

        else
        {

          v79 = v49;
          sub_1D62B753C(0, v47, v50, v49, v51, v193, 2u);
          if (!v47)
          {
LABEL_144:
            if (v50)
            {

              sub_1D620B270(v194, v53, v50);
              if (v4)
              {
LABEL_287:

                v165 = v48;
                v166 = v47;
                v167 = v50;
                v168 = v79;
                v169 = v51;
                v170 = v193;
                v172 = 2;
                goto LABEL_288;
              }

              v83 = v48;
              v84 = v47;
              v85 = v50;
            }

            else
            {
              v83 = v48;
              v84 = v47;
              v85 = 0;
            }

            v92 = v79;
            v93 = v51;
            v94 = v193;
            v95 = 2;
            goto LABEL_189;
          }
        }

        sub_1D620B270(v194, v53, v47);
        if (v4)
        {
          goto LABEL_287;
        }

        goto LABEL_144;
      }

      if (v48)
      {

        v75 = v49;
        sub_1D62B753C(v48, v47, v50, v49, v51, v193, 0);

        sub_1D620B270(v194, v53, v48);
        if (v4)
        {
          goto LABEL_280;
        }

        if (!v47)
        {
          goto LABEL_96;
        }
      }

      else
      {

        v75 = v49;
        sub_1D62B753C(0, v47, v50, v49, v51, v193, 0);
        if (!v47)
        {
LABEL_96:
          if (v50)
          {

            sub_1D620B270(v194, v53, v50);
            if (v4)
            {
LABEL_280:

              v165 = v48;
              v166 = v47;
              v167 = v50;
              v168 = v75;
              v169 = v51;
              v170 = v193;
              v172 = 0;
              goto LABEL_288;
            }

            v83 = v48;
            v84 = v47;
            v85 = v50;
          }

          else
          {
            v83 = v48;
            v84 = v47;
            v85 = 0;
          }

          v92 = v75;
          v93 = v51;
          v94 = v193;
          v95 = 0;
          goto LABEL_189;
        }
      }

      sub_1D620B270(v194, v53, v47);
      if (v4)
      {
        goto LABEL_280;
      }

      goto LABEL_96;
    }

    if (v52 == 3)
    {
      if (v48)
      {

        v77 = v49;
        sub_1D62B753C(v48, v47, v50, v49, v51, v193, 3u);

        sub_1D620B270(v194, v53, v48);
        if (v4)
        {
          goto LABEL_281;
        }

        if (!v47)
        {
          goto LABEL_108;
        }
      }

      else
      {

        v77 = v49;
        sub_1D62B753C(0, v47, v50, v49, v51, v193, 3u);
        if (!v47)
        {
LABEL_108:
          if (v50)
          {

            sub_1D620B270(v194, v53, v50);
            if (v4)
            {
LABEL_281:

              v165 = v48;
              v166 = v47;
              v167 = v50;
              v168 = v77;
              v169 = v51;
              v170 = v193;
              v172 = 3;
              goto LABEL_288;
            }

            v83 = v48;
            v84 = v47;
            v85 = v50;
          }

          else
          {
            v83 = v48;
            v84 = v47;
            v85 = 0;
          }

          v92 = v77;
          v93 = v51;
          v94 = v193;
          v95 = 3;
          goto LABEL_189;
        }
      }

      sub_1D620B270(v194, v53, v47);
      if (v4)
      {
        goto LABEL_281;
      }

      goto LABEL_108;
    }

    if (v52 == 4)
    {
      v177 = v51;
      v174 = v49;
      if (v48)
      {

        v65 = v51;
        v66 = v193;
        sub_1D62B753C(v48, v47, v50, v49, v65, v193, 4u);
        sub_1D5D615EC(v48);
        v67 = v194;
        sub_1D620B270(v194, v53, v48);
        if (v4)
        {
          sub_1D5CDE22C(v48);

          v165 = v48;
          v166 = v47;
          v167 = v50;
          v168 = v174;
          v169 = v177;
          goto LABEL_253;
        }

        sub_1D620B270(v67, v53, v47);
        v4 = 0;
        sub_1D5CDE22C(v48);
        v51 = v177;
        if (!v50)
        {
LABEL_132:
          if (!v51)
          {
            v83 = v48;
            v84 = v47;
            v85 = v50;
            v92 = v174;
            v93 = 0;
            v94 = v193;
            goto LABEL_188;
          }

          v89 = v51;
          v66 = v88;
          v90 = v194;
          sub_1D620B270(v194, v53, v89);
          if (!v4)
          {
            sub_1D620B270(v90, v53, v66);
            v4 = 0;
            v91 = v177;
            sub_1D5CDE22C(v177);
            v83 = v48;
            v84 = v47;
            v85 = v50;
            v92 = v174;
            v93 = v91;
            v94 = v66;
LABEL_188:
            v95 = 4;
            goto LABEL_189;
          }

          v171 = v177;
          sub_1D5CDE22C(v177);

          v165 = v48;
          v166 = v47;
          v167 = v50;
          v168 = v174;
          v169 = v171;
LABEL_253:
          v170 = v66;
LABEL_254:
          v172 = 4;
          goto LABEL_288;
        }
      }

      else
      {

        sub_1D62B753C(0, v47, v50, v49, v51, v193, 4u);
        if (!v50)
        {
          goto LABEL_132;
        }
      }

      v86 = v174;

      v87 = v194;
      sub_1D620B270(v194, v53, v50);
      if (!v4)
      {
        sub_1D620B270(v87, v53, v86);
        v4 = 0;
        sub_1D5CDE22C(v50);
        v51 = v177;
        goto LABEL_132;
      }

      sub_1D5CDE22C(v50);

      v165 = v48;
      v166 = v47;
      v167 = v50;
      v168 = v86;
      v169 = v177;
      v170 = v193;
      goto LABEL_254;
    }

    if (v48)
    {

      v81 = v49;
      sub_1D62B753C(v48, v47, v50, v49, v51, v193, 5u);

      sub_1D620B270(v194, v53, v48);
      if (v4)
      {
        goto LABEL_278;
      }

      if (v47)
      {
LABEL_154:

        sub_1D620B270(v194, v53, v47);
        if (v4)
        {
          goto LABEL_278;
        }
      }
    }

    else
    {

      v81 = v49;
      sub_1D62B753C(0, v47, v50, v49, v51, v193, 5u);
      if (v47)
      {
        goto LABEL_154;
      }
    }

    if (v50)
    {

      sub_1D620B270(v194, v53, v50);
      if (v4)
      {
LABEL_278:

        v165 = v48;
        v166 = v47;
        v167 = v50;
        v168 = v81;
        v169 = v51;
        v170 = v193;
        v172 = 5;
        goto LABEL_288;
      }

      v83 = v48;
      v84 = v47;
      v85 = v50;
    }

    else
    {
      v83 = v48;
      v84 = v47;
      v85 = 0;
    }

    v92 = v81;
    v93 = v51;
    v94 = v193;
    v95 = 5;
LABEL_189:
    sub_1D62B4A44(v83, v84, v85, v92, v93, v94, v95);
    v96 = *(v46 + 88);
    v42 = v192;
    v41 = v194;
    if (v96 != 255 && (v96 & 1) != 0)
    {
      v98 = *(v46 + 72);
      v97 = *(v46 + 80);
      sub_1D6189668(v98, v97, *(v46 + 88));
      v177 = sub_1D5E26E28(&unk_1F50F65D0);
      v99 = *(v53 + v188);
      v100 = *(v99 + 16);
      swift_beginAccess();
      v101 = *(*(v100 + 16) + 16);
      v193 = v97;
      if (v101)
      {
        sub_1D5B69D90(v98, v97);
        if (v102)
        {
          v174 = v98;
          swift_endAccess();
          v103 = v182;
          sub_1D5D25108(v182);
          v104 = v103;
          v105 = v181;
          sub_1D5D5E33C(v104, v181, type metadata accessor for FormatOption);
          v106 = v186;
          sub_1D5D5E33C(v105, v186, type metadata accessor for FormatOption);
          goto LABEL_197;
        }
      }

      swift_endAccess();
      swift_beginAccess();
      if (*(*(v99 + 24) + 16) && (sub_1D5B69D90(v98, v97), (v107 & 1) != 0))
      {
        v174 = v98;
        swift_endAccess();
        v106 = v186;
        sub_1D5D25108(v186);
LABEL_197:
        v108 = *v187;
        v109 = v189;
        (*v187)(v106, 0, 1, v189);
        v110 = v106;
        v111 = v176;
        sub_1D5D5E33C(v110, v176, type metadata accessor for FormatOption);
        __dst = v111[2];
        FormatOptionValue.type.getter(&v204);
        v112 = v177;
        if ((sub_1D6183C84(v204, v177) & 1) == 0)
        {
          v227 = type metadata accessor for FormatDerivedDataError();
          sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
          swift_allocError();
          v156 = v155;
          v157 = v111[1];
          v194 = *v111;
          __dst = v111[2];

          FormatOptionValue.type.getter(&v204);
          v158 = v204;
          *v156 = v194;
          *(v156 + 8) = v157;
          *(v156 + 16) = v158;
          *(v156 + 24) = v112;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_1D60107F0(v174, v193, v96);
LABEL_248:

          sub_1D62B51D0(v111, type metadata accessor for FormatOption);
          goto LABEL_289;
        }

        sub_1D60107F0(v174, v193, v96);
        v113 = v184;
        sub_1D5D5E33C(v111, v184, type metadata accessor for FormatOption);
        v108(v113, 0, 1, v109);
        v114 = v113;
        v53 = v227;
        v41 = v194;
      }

      else
      {
        v183 = v46;
        swift_endAccess();
        v115 = v186;
        v116 = *v187;
        v117 = v189;
        (*v187)(v186, 1, 1, v189);

        sub_1D5B6EF64(v115, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v118 = *(v53 + 48);
        v119 = v194;
        if (v118 != 1)
        {
          goto LABEL_249;
        }

        sub_1D60107F0(v98, v193, v96);
        v114 = v184;
        v116(v184, 1, 1, v117);
        v46 = v183;
        v41 = v119;
        v53 = v227;
      }

      sub_1D5B6EF64(v114, &qword_1EDF337F0, type metadata accessor for FormatOption);
      v42 = v192;
    }

    v120 = *(v46 + 112);
    if (v120 != 255 && (v120 & 1) != 0)
    {
      v98 = *(v46 + 96);
      v121 = *(v46 + 104);
      sub_1D6189668(v98, v121, *(v46 + 112));
      v177 = sub_1D5E26E28(&unk_1F50F65F8);
      v122 = *(v53 + v188);
      v123 = *(v122 + 16);
      swift_beginAccess();
      v124 = *(*(v123 + 16) + 16);
      v183 = v46;
      v193 = v121;
      if (v124)
      {
        sub_1D5B69D90(v98, v121);
        if (v125)
        {
          swift_endAccess();
          v126 = v180;
          sub_1D5D25108(v180);
          v127 = v126;
          v128 = v179;
          sub_1D5D5E33C(v127, v179, type metadata accessor for FormatOption);
          v129 = v185;
          sub_1D5D5E33C(v128, v185, type metadata accessor for FormatOption);
          goto LABEL_210;
        }
      }

      swift_endAccess();
      swift_beginAccess();
      if (*(*(v122 + 24) + 16) && (sub_1D5B69D90(v98, v121), (v130 & 1) != 0))
      {
        swift_endAccess();
        v129 = v185;
        sub_1D5D25108(v185);
LABEL_210:
        v131 = *v187;
        v132 = v189;
        (*v187)(v129, 0, 1, v189);
        v133 = v129;
        v111 = v175;
        sub_1D5D5E33C(v133, v175, type metadata accessor for FormatOption);
        __dst = v111[2];
        FormatOptionValue.type.getter(&v204);
        v134 = v177;
        if ((sub_1D6183C84(v204, v177) & 1) == 0)
        {
          v227 = type metadata accessor for FormatDerivedDataError();
          sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
          swift_allocError();
          v160 = v159;
          v161 = v111[1];
          v194 = *v111;
          __dst = v111[2];

          FormatOptionValue.type.getter(&v204);
          v162 = v204;
          *v160 = v194;
          *(v160 + 8) = v161;
          *(v160 + 16) = v162;
          *(v160 + 24) = v134;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_1D60107F0(v98, v193, v120);
          goto LABEL_248;
        }

        sub_1D60107F0(v98, v193, v120);
        v135 = v178;
        sub_1D5D5E33C(v111, v178, type metadata accessor for FormatOption);
        v131(v135, 0, 1, v132);
        v41 = v194;
      }

      else
      {
        v174 = v4;
        swift_endAccess();
        v136 = *v187;
        v137 = v185;
        v138 = v189;
        (*v187)(v185, 1, 1, v189);

        sub_1D5B6EF64(v137, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v139 = *(v53 + 48);
        v140 = v194;
        if (v139 != 1)
        {
LABEL_249:
          type metadata accessor for FormatLayoutError();
          sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          swift_allocError();
          v163 = v193;
          *v164 = v98;
          v164[1] = v163;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          goto LABEL_289;
        }

        sub_1D60107F0(v98, v193, v120);
        v135 = v178;
        v136(v178, 1, 1, v138);
        v41 = v140;
        v4 = v174;
      }

      sub_1D5B6EF64(v135, &qword_1EDF337F0, type metadata accessor for FormatOption);
      v42 = v192;
      v46 = v183;
    }

    v141 = *(v46 + 200);
    v142 = *(v46 + 232);
    v210 = *(v46 + 216);
    v211[0] = v142;
    *(v211 + 9) = *(v46 + 241);
    v143 = *(v46 + 136);
    v144 = *(v46 + 168);
    v206 = *(v46 + 152);
    v207 = v144;
    v208 = *(v46 + 184);
    v209 = v141;
    v204 = *(v46 + 120);
    v205 = v143;
    memmove(&__dst, (v46 + 120), 0x89uLL);
    if (sub_1D60486AC(&__dst) == 1)
    {

      v40 = v191;
      goto LABEL_4;
    }

    v145 = __dst;
    v40 = v191;
    if (__dst)
    {
      v202 = v210;
      v203[0] = v211[0];
      *(v203 + 9) = *(v211 + 9);
      v198 = v206;
      v199 = v207;
      v200 = v208;
      v201 = v209;
      v196 = v204;
      v197 = v205;
      sub_1D62B4994(&v196, v195);
      sub_1D620B270(v41, v227, v145);
      if (v4)
      {
        goto LABEL_245;
      }

      v146 = v213;
      if (v213)
      {
LABEL_221:
        sub_1D620B270(v41, v227, v146);
        if (v4)
        {
          goto LABEL_245;
        }
      }
    }

    else
    {
      v202 = v210;
      v203[0] = v211[0];
      *(v203 + 9) = *(v211 + 9);
      v198 = v206;
      v199 = v207;
      v200 = v208;
      v201 = v209;
      v196 = v204;
      v197 = v205;
      sub_1D62B4994(&v196, v195);
      v146 = v213;
      if (v213)
      {
        goto LABEL_221;
      }
    }

    if (v214)
    {
      sub_1D620B270(v41, v227, v214);
      if (v4)
      {
        goto LABEL_245;
      }
    }

    if (v215)
    {
      sub_1D620B270(v41, v227, v215);
      if (v4)
      {
        goto LABEL_245;
      }
    }

    if (v216)
    {
      sub_1D620B270(v41, v227, v216);
      if (v4)
      {
        goto LABEL_245;
      }
    }

    if (v217)
    {
      sub_1D620B270(v41, v227, v217);
      if (v4)
      {
        goto LABEL_245;
      }
    }

    if (v219 != 255)
    {
      v196 = v218;
      LOBYTE(v197) = v219 & 1;
      sub_1D6189668(v218, *(&v218 + 1), v219);
      sub_1D60ECF10(v227);
      if (v4)
      {
        goto LABEL_243;
      }

      sub_1D5D2F2C8(v196, *(&v196 + 1), v197);
    }

    v147 = v224;
    if (v224 != 255 && (v224 & 1) != 0)
    {
      v149 = v220;
      v148 = v221;
      v150 = v227;
      v151 = v41;
      v152 = v222;
      v193 = v223;
      sub_1D618903C(v220, v221, v222, v223, 1);
      sub_1D620B270(v151, v150, v149);
      if (v4)
      {
        sub_1D62B4B50(v149, v148, v152, v193, v147);
        goto LABEL_245;
      }

      sub_1D620B270(v151, v150, v148);
      sub_1D620B270(v151, v150, v152);
      v153 = v151;
      v154 = v193;
      sub_1D620B270(v153, v150, v193);
      v4 = 0;
      sub_1D62B4B50(v149, v148, v152, v154, v147);
      v41 = v194;
      v40 = v191;
      v42 = v192;
    }

    if (v226 != 255)
    {
      v196 = v225;
      LOBYTE(v197) = v226 & 1;
      sub_1D6189668(v225, *(&v225 + 1), v226);
      sub_1D60ECF10(v227);
      if (v4)
      {
LABEL_243:
        sub_1D5D2F2C8(v196, *(&v196 + 1), v197);
LABEL_245:

        sub_1D5D0ABCC(&v204, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
        goto LABEL_289;
      }

      sub_1D5D2F2C8(v196, *(&v196 + 1), v197);
    }

    sub_1D5D0ABCC(&v204, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);

LABEL_4:
    if (!--v40)
    {
      return;
    }
  }

  v53 = v227;
  if (v52 <= 8)
  {
    if (v52 != 6)
    {
      if (v52 == 7)
      {
        if (v48)
        {

          v62 = v49;
          sub_1D62B753C(v48, v47, v50, v49, v51, v193, 7u);

          sub_1D620B270(v194, v53, v48);
          if (v4)
          {
            goto LABEL_282;
          }

          if (!v47)
          {
            goto LABEL_126;
          }
        }

        else
        {

          v62 = v49;
          sub_1D62B753C(0, v47, v50, v49, v51, v193, 7u);
          if (!v47)
          {
LABEL_126:
            if (v50)
            {

              sub_1D620B270(v194, v53, v50);
              if (v4)
              {
LABEL_282:

                v165 = v48;
                v166 = v47;
                v167 = v50;
                v168 = v62;
                v169 = v51;
                v170 = v193;
                v172 = 7;
                goto LABEL_288;
              }

              v83 = v48;
              v84 = v47;
              v85 = v50;
            }

            else
            {
              v83 = v48;
              v84 = v47;
              v85 = 0;
            }

            v92 = v62;
            v93 = v51;
            v94 = v193;
            v95 = 7;
            goto LABEL_189;
          }
        }

        sub_1D620B270(v194, v53, v47);
        if (v4)
        {
          goto LABEL_282;
        }

        goto LABEL_126;
      }

      if (v48)
      {

        v80 = v49;
        sub_1D62B753C(v48, v47, v50, v49, v51, v193, 8u);

        sub_1D620B270(v194, v53, v48);
        if (v4)
        {
          goto LABEL_283;
        }

        if (!v47)
        {
          goto LABEL_150;
        }
      }

      else
      {

        v80 = v49;
        sub_1D62B753C(0, v47, v50, v49, v51, v193, 8u);
        if (!v47)
        {
LABEL_150:
          if (v50)
          {

            sub_1D620B270(v194, v53, v50);
            if (v4)
            {
LABEL_283:

              v165 = v48;
              v166 = v47;
              v167 = v50;
              v168 = v80;
              v169 = v51;
              v170 = v193;
              v172 = 8;
              goto LABEL_288;
            }

            v83 = v48;
            v84 = v47;
            v85 = v50;
          }

          else
          {
            v83 = v48;
            v84 = v47;
            v85 = 0;
          }

          v92 = v80;
          v93 = v51;
          v94 = v193;
          v95 = 8;
          goto LABEL_189;
        }
      }

      sub_1D620B270(v194, v53, v47);
      if (v4)
      {
        goto LABEL_283;
      }

      goto LABEL_150;
    }

    if (v48)
    {

      v76 = v49;
      sub_1D62B753C(v48, v47, v50, v49, v51, v193, 6u);

      sub_1D620B270(v194, v53, v48);
      if (v4)
      {
        goto LABEL_285;
      }

      if (!v47)
      {
        goto LABEL_102;
      }
    }

    else
    {

      v76 = v49;
      sub_1D62B753C(0, v47, v50, v49, v51, v193, 6u);
      if (!v47)
      {
LABEL_102:
        if (v50)
        {

          sub_1D620B270(v194, v53, v50);
          if (v4)
          {
LABEL_285:

            v165 = v48;
            v166 = v47;
            v167 = v50;
            v168 = v76;
            v169 = v51;
            v170 = v193;
            v172 = 6;
            goto LABEL_288;
          }

          v83 = v48;
          v84 = v47;
          v85 = v50;
        }

        else
        {
          v83 = v48;
          v84 = v47;
          v85 = 0;
        }

        v92 = v76;
        v93 = v51;
        v94 = v193;
        v95 = 6;
        goto LABEL_189;
      }
    }

    sub_1D620B270(v194, v53, v47);
    if (v4)
    {
      goto LABEL_285;
    }

    goto LABEL_102;
  }

  if (v52 == 9)
  {
    if (v48)
    {

      v78 = v49;
      sub_1D62B753C(v48, v47, v50, v49, v51, v193, 9u);

      sub_1D620B270(v194, v53, v48);
      if (v4)
      {
        goto LABEL_279;
      }

      if (!v47)
      {
        goto LABEL_114;
      }
    }

    else
    {

      v78 = v49;
      sub_1D62B753C(0, v47, v50, v49, v51, v193, 9u);
      if (!v47)
      {
LABEL_114:
        if (v50)
        {

          sub_1D620B270(v194, v53, v50);
          if (v4)
          {
LABEL_279:

            v165 = v48;
            v166 = v47;
            v167 = v50;
            v168 = v78;
            v169 = v51;
            v170 = v193;
            v172 = 9;
            goto LABEL_288;
          }

          v83 = v48;
          v84 = v47;
          v85 = v50;
        }

        else
        {
          v83 = v48;
          v84 = v47;
          v85 = 0;
        }

        v92 = v78;
        v93 = v51;
        v94 = v193;
        v95 = 9;
        goto LABEL_189;
      }
    }

    sub_1D620B270(v194, v53, v47);
    if (v4)
    {
      goto LABEL_279;
    }

    goto LABEL_114;
  }

  if (v52 == 10)
  {
    if (v48)
    {

      v68 = v49;
      sub_1D62B753C(v48, v47, v50, v49, v51, v193, 0xAu);

      sub_1D620B270(v194, v53, v48);
      if (v4)
      {
        goto LABEL_284;
      }

      if (!v47)
      {
        goto LABEL_138;
      }
    }

    else
    {

      v68 = v49;
      sub_1D62B753C(0, v47, v50, v49, v51, v193, 0xAu);
      if (!v47)
      {
LABEL_138:
        if (v50)
        {

          sub_1D620B270(v194, v53, v50);
          if (v4)
          {
LABEL_284:

            v165 = v48;
            v166 = v47;
            v167 = v50;
            v168 = v68;
            v169 = v51;
            v170 = v193;
            v172 = 10;
            goto LABEL_288;
          }

          v83 = v48;
          v84 = v47;
          v85 = v50;
        }

        else
        {
          v83 = v48;
          v84 = v47;
          v85 = 0;
        }

        v92 = v68;
        v93 = v51;
        v94 = v193;
        v95 = 10;
        goto LABEL_189;
      }
    }

    sub_1D620B270(v194, v53, v47);
    if (v4)
    {
      goto LABEL_284;
    }

    goto LABEL_138;
  }

  if (v48)
  {

    v82 = v49;
    sub_1D62B753C(v48, v47, v50, v49, v51, v193, 0xBu);

    sub_1D620B270(v194, v53, v48);
    if (v4)
    {
      goto LABEL_277;
    }

    if (!v47)
    {
      goto LABEL_162;
    }
  }

  else
  {

    v82 = v49;
    sub_1D62B753C(0, v47, v50, v49, v51, v193, 0xBu);
    if (!v47)
    {
      goto LABEL_162;
    }
  }

  sub_1D620B270(v194, v53, v47);
  if (v4)
  {
    goto LABEL_277;
  }

LABEL_162:
  if (!v50)
  {
    v83 = v48;
    v84 = v47;
    v85 = 0;
    goto LABEL_186;
  }

  sub_1D620B270(v194, v53, v50);
  if (!v4)
  {

    v83 = v48;
    v84 = v47;
    v85 = v50;
LABEL_186:
    v92 = v82;
    v93 = v51;
    v94 = v193;
    v95 = 11;
    goto LABEL_189;
  }

LABEL_277:

  v165 = v48;
  v166 = v47;
  v167 = v50;
  v168 = v82;
  v169 = v51;
  v170 = v193;
  v172 = 11;
LABEL_288:
  sub_1D62B4A44(v165, v166, v167, v168, v169, v170, v172);
LABEL_289:
}