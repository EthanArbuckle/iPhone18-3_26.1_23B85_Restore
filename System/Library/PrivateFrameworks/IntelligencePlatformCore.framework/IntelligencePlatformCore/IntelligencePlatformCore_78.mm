uint64_t sub_1C4B0200C(uint64_t a1, unsigned __int8 a2)
{
  v5 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v59 = &v58 - v7;
  v8 = type metadata accessor for FutureLifeEventStructs.LocationRelationshipType(0);
  v66 = *(v8 - 1);
  v9 = *(v66 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v58 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v58 - v16;
  v71 = sub_1C4EF9D38();
  v68 = *(v71 - 8);
  v17 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v67 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C456902C(&qword_1EC0C3430, &qword_1C4F51390);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v58 - v25;
  result = MEMORY[0x1EEE9AC00](v24);
  v29 = &v58 - v28;
  if (*(a1 + 16))
  {
    v70 = *(a1 + 16);
    if (sub_1C465B984(a2, &unk_1F43D1000))
    {
      v30 = v72;
      result = sub_1C4B93B08(a1, v29);
      if (v30)
      {
        return result;
      }

      sub_1C4DA9C20(v29);
      sub_1C4B93BAC(a1, v26);
      v72 = 0;
      sub_1C4DA9D30(v26);
    }

    v31 = v67;
    v32 = *(v68 + 16);
    v33 = a1 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
    v63 = (v68 + 8);
    v64 = v32;
    v34 = MEMORY[0x1E69E7CC0];
    v68 += 16;
    v60 = *(v68 + 56);
    v61 = v2;
    v35 = v70;
    v62 = v12;
    if (v70)
    {
      while (1)
      {
        v69 = v33;
        v70 = v35;
        v64(v31);
        v36 = sub_1C4EFEEF8();
        sub_1C440BAA8(v15, 1, 1, v36);
        v37 = &v15[v8[5]];
        sub_1C4EFD1F8();
        v38 = v8[6];
        if (qword_1EDDFED40 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Source();
        v40 = sub_1C442B738(v39, qword_1EDDFD2A8);
        sub_1C449ED64(v40, &v15[v38]);
        v41 = &v15[v8[7]];
        sub_1C4EFE5E8();
        v42 = &v15[v8[8]];
        *v42 = 0;
        *(v42 + 1) = 0;
        v43 = &v15[v8[9]];
        v44 = type metadata accessor for FutureLifeEventStructs.Place(0);
        sub_1C440BAA8(v43, 1, 1, v44);
        v45 = v72;
        sub_1C4B93D68(v23);
        v72 = v45;
        if (v45)
        {
          break;
        }

        sub_1C440BAA8(v23, 0, 1, v44);
        sub_1C4B04A54(v23, v43);
        if (sub_1C44157D4(v43, 1, v44))
        {
          sub_1C4420C3C(v23, &qword_1EC0C3430, &qword_1C4F51390);
          v31 = v67;
          (*v63)(v67, v71);
        }

        else
        {
          v46 = v59;
          sub_1C4EFE418();
          sub_1C4420C3C(v23, &qword_1EC0C3430, &qword_1C4F51390);
          v47 = v67;
          (*v63)(v67, v71);
          sub_1C440BAA8(v46, 0, 1, v36);
          v48 = *(v44 + 20);
          v31 = v47;
          sub_1C449A970(v46, v43 + v48);
        }

        v2 = v61;
        v49 = v65;
        sub_1C4B04AC4(v15, v65);
        v50 = v49;
        v51 = v62;
        sub_1C4B04AC4(v50, v62);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458C814(0, *(v34 + 16) + 1, 1, v34);
          v34 = v54;
        }

        v53 = *(v34 + 16);
        v52 = *(v34 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_1C458C814(v52 > 1, v53 + 1, 1, v34);
          v34 = v55;
        }

        *(v34 + 16) = v53 + 1;
        sub_1C4B04AC4(v51, v34 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v53);
        v33 = v69 + v60;
        v35 = v70 - 1;
        if (v70 == 1)
        {
          goto LABEL_17;
        }
      }

      (*v63)(v67, v71);
      sub_1C4B049FC(v15, type metadata accessor for FutureLifeEventStructs.LocationRelationshipType);
    }

    else
    {
LABEL_17:
      v56 = *(type metadata accessor for FutureLifeEventStructs.CommuteActivity(0) + 64);
      v57 = *(v2 + v56);

      *(v2 + v56) = v34;
      return sub_1C4DB3310();
    }
  }

  return result;
}

uint64_t sub_1C4B02618(char a1)
{
  v61 = sub_1C4EF9488();
  v3 = *(v61 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v58 - v9;
  v11 = sub_1C456902C(&qword_1EC0C3430, &qword_1C4F51390);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v58 - v16;
  v62 = type metadata accessor for FutureLifeEventStructs.CommuteActivity(0);
  v63 = v1;
  sub_1C445FFF0(v1 + v62[13], v17, &qword_1EC0C3430, &qword_1C4F51390);
  v18 = type metadata accessor for FutureLifeEventStructs.Place(0);
  if (sub_1C44157D4(v17, 1, v18) || (v19 = &v17[*(v18 + 36)], v20 = type metadata accessor for FutureLifeEventStructs.AddressRelationshipType(0), sub_1C44157D4(v19, 1, v20)))
  {
    v21 = v17;
LABEL_4:
    sub_1C4420C3C(v21, &qword_1EC0C3430, &qword_1C4F51390);
    goto LABEL_5;
  }

  v39 = (v19 + *(v20 + 104));
  v40 = *v39;
  v41 = v39[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4420C3C(v17, &qword_1EC0C3430, &qword_1C4F51390);
  if (!v41)
  {
    goto LABEL_5;
  }

  sub_1C445FFF0(v63 + v62[14], v15, &qword_1EC0C3430, &qword_1C4F51390);
  if (sub_1C44157D4(v15, 1, v18) || (v60 = v40, v42 = &v15[*(v18 + 36)], sub_1C44157D4(v42, 1, v20)))
  {

    v21 = v15;
    goto LABEL_4;
  }

  v43 = (v42 + *(v20 + 104));
  v44 = *v43;
  v45 = v43[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4420C3C(v15, &qword_1EC0C3430, &qword_1C4F51390);
  if (v45)
  {
    v74 = 0;
    v75 = 0xE000000000000000;
    v58 = v41;
    sub_1C4F02248();

    LOBYTE(v74) = a1;
    ActivityType.value.getter();
    v74 = v46;
    v75 = v47;
    v72 = 0x295D5A2D415B28;
    v73 = 0xE700000000000000;
    v70 = 3220512;
    v71 = 0xE300000000000000;
    v68 = v46;
    v69 = v47;
    v66 = v46;
    v67 = v47;
    v48 = sub_1C4EF9E48();
    sub_1C440BAA8(v10, 1, 1, v48);
    sub_1C4415EA8();
    sub_1C4F02028();
    v59 = v44;
    sub_1C4420C3C(v10, &unk_1EC0B7610, &unk_1C4F17610);
    v49 = sub_1C4F02008();
    v51 = v50;

    v74 = v49;
    v75 = v51;
    sub_1C4EF9448();
    v52 = sub_1C4F01FF8();
    v54 = v53;
    (*(v3 + 8))(v6, v61);

    v74 = v52;
    v75 = v54;
    v55 = sub_1C4F01FD8();
    v57 = v56;

    v74 = v55;
    v75 = v57;
    MEMORY[0x1C6940010](0x206D6F726620, 0xE600000000000000);
    MEMORY[0x1C6940010](v60, v58);

    MEMORY[0x1C6940010](544175136, 0xE400000000000000);
    MEMORY[0x1C6940010](v59, v45);
    goto LABEL_6;
  }

LABEL_5:
  v74 = 0x20657275747546;
  v75 = 0xE700000000000000;
  LOBYTE(v72) = a1;
  ActivityType.value.getter();
  v72 = v22;
  v73 = v23;
  v70 = 0x295D5A2D415B28;
  v71 = 0xE700000000000000;
  v68 = 3220512;
  v69 = 0xE300000000000000;
  v66 = v22;
  v67 = v23;
  v64 = v22;
  v65 = v23;
  v24 = sub_1C4EF9E48();
  sub_1C440BAA8(v10, 1, 1, v24);
  sub_1C4415EA8();
  sub_1C4F02028();
  sub_1C4420C3C(v10, &unk_1EC0B7610, &unk_1C4F17610);
  v25 = sub_1C4F02008();
  v27 = v26;

  v72 = v25;
  v73 = v27;
  sub_1C4EF9448();
  v28 = sub_1C4F01FF8();
  v30 = v29;
  (*(v3 + 8))(v6, v61);

  v72 = v28;
  v73 = v30;
  v31 = sub_1C4F01FD8();
  v33 = v32;

  MEMORY[0x1C6940010](v31, v33);
LABEL_6:

  v34 = v74;
  v35 = v75;
  v36 = (v63 + v62[9]);
  v37 = v36[1];

  *v36 = v34;
  v36[1] = v35;
  return result;
}

uint64_t sub_1C4B02CA4()
{
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448();
  }

  v3 = type metadata accessor for SourceIdPrefix();
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.TransportationActivity(v4);
  sub_1C44099C4(v5);
  v6 = sub_1C44079C0();
  sub_1C4E181D4(v6, v7, v8, v9, v10, v11, v12, v13, v30, v31);
  sub_1C44036BC();
  if (!v0)
  {
    v14 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0(v14);
    v15 = sub_1C441114C();
    sub_1C4B014E8(v15, v16, v17, v18, v19, v20);
    if (!v1)
    {
      v21 = sub_1C441114C();
      sub_1C4B01698(v21, v2, v22, v23, v24);
      v25 = sub_1C44136DC();
      sub_1C4B869B0(v25, v26);
      if (v2[16])
      {

        v28 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v28 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v28, v29, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDF914();

      sub_1C4B05100();
      sub_1C4DDF93C();
    }
  }

  return sub_1C44176E4();
}

void sub_1C4B02E5C()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448();
  }

  v3 = type metadata accessor for SourceIdPrefix();
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.WorkingActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4E258F8();
  sub_1C44036BC();
  if (!v0)
  {
    v6 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0(v6);
    v7 = sub_1C441241C();
    sub_1C4B014E8(v7, v8, v9, v10, v11, v12);
    if (!v1)
    {
      v13 = sub_1C441241C();
      sub_1C4B01698(v13, v2, v14, v15, v16);
      if (v2[16])
      {

        v17 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v17 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v17, v18, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WorkingActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDF964();

      sub_1C4B05100();
      sub_1C4DDF98C();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

void sub_1C4B02FF4()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448();
  }

  v3 = type metadata accessor for SourceIdPrefix();
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.MeetingActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4E22D00();
  sub_1C44036BC();
  if (!v0)
  {
    v6 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0(v6);
    v7 = sub_1C441241C();
    sub_1C4B014E8(v7, v8, v9, v10, v11, v12);
    if (!v1)
    {
      v13 = sub_1C441241C();
      sub_1C4B01698(v13, v2, v14, v15, v16);
      if (v2[16])
      {

        v17 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v17 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v17, v18, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15MeetingActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDF9B4();

      sub_1C4B05100();
      sub_1C4DDF9DC();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

void sub_1C4B0318C()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448();
  }

  v3 = type metadata accessor for SourceIdPrefix();
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.ShoppingActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4E0DA30();
  sub_1C44036BC();
  if (!v0)
  {
    v6 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0(v6);
    v7 = sub_1C441241C();
    sub_1C4B014E8(v7, v8, v9, v10, v11, v12);
    if (!v1)
    {
      v13 = sub_1C441241C();
      sub_1C4B01698(v13, v2, v14, v15, v16);
      if (v2[16])
      {

        v17 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v17 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v17, v18, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFA04();

      sub_1C4B05100();
      sub_1C4DDFA2C();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

void sub_1C4B03324()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448();
  }

  v3 = type metadata accessor for SourceIdPrefix();
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.SleepingActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4DFDE34();
  sub_1C44036BC();
  if (!v0)
  {
    v6 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0(v6);
    v7 = sub_1C441241C();
    sub_1C4B014E8(v7, v8, v9, v10, v11, v12);
    if (!v1)
    {
      v13 = sub_1C441241C();
      sub_1C4B01698(v13, v2, v14, v15, v16);
      if (v2[16])
      {

        v17 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v17 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v17, v18, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFA54();

      sub_1C4B05100();
      sub_1C4DDFA7C();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

void sub_1C4B034BC()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448();
  }

  v3 = type metadata accessor for SourceIdPrefix();
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.ReadingActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4E0572C();
  sub_1C44036BC();
  if (!v0)
  {
    v6 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0(v6);
    v7 = sub_1C441241C();
    sub_1C4B014E8(v7, v8, v9, v10, v11, v12);
    if (!v1)
    {
      v13 = sub_1C441241C();
      sub_1C4B01698(v13, v2, v14, v15, v16);
      if (v2[16])
      {

        v17 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v17 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v17, v18, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFAA4();

      sub_1C4B05100();
      sub_1C4DDFACC();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

uint64_t sub_1C4B03654()
{
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448();
  }

  v3 = type metadata accessor for SourceIdPrefix();
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.GamingActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4DF6668();
  sub_1C44036BC();
  if (!v0)
  {
    v6 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0(v6);
    v7 = sub_1C441114C();
    sub_1C4B014E8(v7, v8, v9, v10, v11, v12);
    if (!v1)
    {
      v13 = sub_1C441114C();
      sub_1C4B01698(v13, v2, v14, v15, v16);
      v17 = sub_1C44136DC();
      sub_1C48189CC(v17);
      if (v2[16])
      {

        v19 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v19 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v19, v20, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFAF4();

      sub_1C4B05100();
      sub_1C4DDFB1C();
    }
  }

  return sub_1C44176E4();
}

void sub_1C4B0380C()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448();
  }

  v3 = type metadata accessor for SourceIdPrefix();
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.ExercisingActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4E1E24C();
  sub_1C44036BC();
  if (!v0)
  {
    v6 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0(v6);
    v7 = sub_1C441241C();
    sub_1C4B014E8(v7, v8, v9, v10, v11, v12);
    if (!v1)
    {
      v13 = sub_1C441241C();
      sub_1C4B01698(v13, v2, v14, v15, v16);
      if (v2[16])
      {

        v17 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v17 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v17, v18, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18ExercisingActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFB44();

      sub_1C4B05100();
      sub_1C4DDFB6C();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

uint64_t sub_1C4B039A4()
{
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448();
  }

  v3 = type metadata accessor for SourceIdPrefix();
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.CommuteActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4E01E28();
  sub_1C44036BC();
  if (!v0)
  {
    v6 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0(v6);
    v7 = sub_1C441114C();
    sub_1C4B014E8(v7, v8, v9, v10, v11, v12);
    if (!v1)
    {
      v13 = sub_1C441114C();
      sub_1C4B01698(v13, v2, v14, v15, v16);
      sub_1C44136DC();
      sub_1C4684054();
      if (v2[16])
      {

        v18 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v18 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v18, v19, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFB94();

      sub_1C4B05100();
      sub_1C4DDFBBC();
    }
  }

  return sub_1C44176E4();
}

void sub_1C4B03B5C()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448();
  }

  v3 = type metadata accessor for SourceIdPrefix();
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.DiningActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4DF9014();
  sub_1C44036BC();
  if (!v0)
  {
    v6 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0(v6);
    v7 = sub_1C441241C();
    sub_1C4B014E8(v7, v8, v9, v10, v11, v12);
    if (!v1)
    {
      v13 = sub_1C441241C();
      sub_1C4B01698(v13, v2, v14, v15, v16);
      if (v2[16])
      {

        v17 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v17 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v17, v18, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFBE4();

      sub_1C4B05100();
      sub_1C4DDFC0C();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

void sub_1C4B03CF4()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448();
  }

  v3 = type metadata accessor for SourceIdPrefix();
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.AttendingAPerformanceActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4DF1510();
  sub_1C44036BC();
  if (!v0)
  {
    v6 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0(v6);
    v7 = sub_1C441241C();
    sub_1C4B014E8(v7, v8, v9, v10, v11, v12);
    if (!v1)
    {
      v13 = sub_1C441241C();
      sub_1C4B01698(v13, v2, v14, v15, v16);
      if (v2[16])
      {

        v17 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v17 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v17, v18, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFC34();

      sub_1C4B05100();
      sub_1C4DDFC5C();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

void sub_1C4B03E8C()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448();
  }

  v3 = type metadata accessor for SourceIdPrefix();
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.StationaryActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4E0B2F0();
  sub_1C44036BC();
  if (!v0)
  {
    v6 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0(v6);
    v7 = sub_1C441241C();
    sub_1C4B014E8(v7, v8, v9, v10, v11, v12);
    if (!v1)
    {
      v13 = sub_1C441241C();
      sub_1C4B01698(v13, v2, v14, v15, v16);
      if (v2[16])
      {

        v17 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v17 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v17, v18, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFC84();

      sub_1C4B05100();
      sub_1C4DDFCAC();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

void sub_1C4B04024()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448();
  }

  v3 = type metadata accessor for SourceIdPrefix();
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.LocationVisitActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4E1BAB4();
  sub_1C44036BC();
  if (!v0)
  {
    v6 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0(v6);
    v7 = sub_1C441241C();
    sub_1C4B014E8(v7, v8, v9, v10, v11, v12);
    if (!v1)
    {
      v13 = sub_1C441241C();
      sub_1C4B01698(v13, v2, v14, v15, v16);
      if (v2[16])
      {

        v17 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v17 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v17, v18, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs21LocationVisitActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFCD4();

      sub_1C4B05100();
      sub_1C4DDFCFC();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

void sub_1C4B041BC()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448();
  }

  v3 = type metadata accessor for SourceIdPrefix();
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.WalkingActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4E03FAC();
  sub_1C44036BC();
  if (!v0)
  {
    v6 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0(v6);
    v7 = sub_1C441241C();
    sub_1C4B014E8(v7, v8, v9, v10, v11, v12);
    if (!v1)
    {
      v13 = sub_1C441241C();
      sub_1C4B01698(v13, v2, v14, v15, v16);
      if (v2[16])
      {

        v17 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v17 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v17, v18, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFD24();

      sub_1C4B05100();
      sub_1C4DDFD4C();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

void sub_1C4B04354()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448();
  }

  v3 = type metadata accessor for SourceIdPrefix();
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.RunningActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4E0725C();
  sub_1C44036BC();
  if (!v0)
  {
    v6 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0(v6);
    v7 = sub_1C441241C();
    sub_1C4B014E8(v7, v8, v9, v10, v11, v12);
    if (!v1)
    {
      v13 = sub_1C441241C();
      sub_1C4B01698(v13, v2, v14, v15, v16);
      if (v2[16])
      {

        v17 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v17 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v17, v18, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFD74();

      sub_1C4B05100();
      sub_1C4DDFD9C();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

void sub_1C4B044EC()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448();
  }

  v3 = type metadata accessor for SourceIdPrefix();
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.OnThePhoneActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4E089DC();
  sub_1C44036BC();
  if (!v0)
  {
    v6 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0(v6);
    v7 = sub_1C441241C();
    sub_1C4B014E8(v7, v8, v9, v10, v11, v12);
    if (!v1)
    {
      v13 = sub_1C441241C();
      sub_1C4B01698(v13, v2, v14, v15, v16);
      if (v2[16])
      {

        v17 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v17 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v17, v18, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFDC4();

      sub_1C4B05100();
      sub_1C4DDFDEC();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

void sub_1C4B04684()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448();
  }

  v3 = type metadata accessor for SourceIdPrefix();
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.FacetimeActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4DFB724();
  sub_1C44036BC();
  if (!v0)
  {
    v6 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0(v6);
    v7 = sub_1C441241C();
    sub_1C4B014E8(v7, v8, v9, v10, v11, v12);
    if (!v1)
    {
      v13 = sub_1C441241C();
      sub_1C4B01698(v13, v2, v14, v15, v16);
      if (v2[16])
      {

        v17 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v17 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v17, v18, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFE14();

      sub_1C4B05100();
      sub_1C4DDFE3C();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

uint64_t sub_1C4B049FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4B04A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C3430, &qword_1C4F51390);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4B04AC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FutureLifeEventStructs.LocationRelationshipType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4B04B28(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C4EFF0C8();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v85 = sub_1C4EF9D38();
  v15 = sub_1C43FCDF8(v85);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v15);
  v84 = &v65[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x1EEE9AC00](v20);
  v78 = &v65[-v23];
  MEMORY[0x1EEE9AC00](v22);
  v83 = &v65[-v24];
  v66 = *a1;
  v68 = (v3 + *(sub_1C456902C(&qword_1EC0B8D48, &qword_1C4F0E190) + 32));
  v25 = v68[2];
  v26 = *(v25 + 16);
  if (v26)
  {
    v29 = *(v9 + 16);
    v27 = v9 + 16;
    v28 = v29;
    v30 = v25 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
    v31 = *(v27 + 56);
    v70 = v17 + 16;
    v92 = (v27 - 8);
    v82 = v17 + 32;
    v74 = v17;
    v69 = v17 + 8;
    v32 = MEMORY[0x1E69E7CC0];
    v76 = v27;
    v77 = v6;
    v75 = a2;
    v73 = v14;
    v72 = v29;
    v71 = v31;
    do
    {
      v28(v14, v30, v6);
      if (*(a2 + 16) && (sub_1C44E3664(), (v34 & 1) != 0))
      {
        v35 = *(a2 + 56);
        v36 = v74;
        v80 = *(v74 + 72);
        v81 = v32;
        v37 = *(v74 + 16);
        v38 = v78;
        v39 = v85;
        v37(v78, v35 + v80 * v33, v85);
        (*v92)(v14, v6);
        v40 = *(v36 + 32);
        v41 = v83;
        v42 = v38;
        v43 = v81;
        v40(v83, v42, v39);
        v37(v84, v41, v39);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v79 = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C458B324(0, *(v43 + 16) + 1, 1, v43);
          v43 = v51;
        }

        v46 = *(v43 + 16);
        v45 = *(v43 + 24);
        v47 = v43;
        v14 = v73;
        v28 = v72;
        if (v46 >= v45 >> 1)
        {
          sub_1C458B324(v45 > 1, v46 + 1, 1, v43);
          v47 = v52;
        }

        v48 = *(v36 + 8);
        v49 = v36;
        v50 = v85;
        v48(v83, v85);
        *(v47 + 16) = v46 + 1;
        v32 = v47;
        v79(v47 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + v46 * v80, v84, v50);
        v6 = v77;
        a2 = v75;
        v31 = v71;
      }

      else
      {
        (*v92)(v14, v6);
      }

      v30 += v31;
      --v26;
    }

    while (v26);
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  v53 = type metadata accessor for FutureActivityEventWithLocations(0);
  v54 = v68 + *(v53 + 24);
  v55 = *v68;
  v56 = v68[1];
  if (v54[*(sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0) + 32)] == 154)
  {
    *(&v87 + 1) = type metadata accessor for FutureLifeEventStructs.CommuteActivity(0);
    v88 = sub_1C4B05CD8(&qword_1EC0C3390, type metadata accessor for FutureLifeEventStructs.CommuteActivity);
    sub_1C4422F90(&v86);
    v57 = v67;
    sub_1C4B0481C(v32, v55, v56);
    if (!v57)
    {

      sub_1C441D670(&v86, v89);
      v60 = v90;
      v61 = v91;
      sub_1C4409678(v89, v90);
      v62 = (v68 + *(v53 + 28));
      v63 = v62[1];
      *&v86 = *v62;
      *(&v86 + 1) = v63;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](58, 0xE100000000000000);
      MEMORY[0x1C6940010](v55, v56);
      v64 = v86;
      LOBYTE(v86) = v66;
      v58 = (*(v61 + 24))(v64, *(&v86 + 1), &v86, v60, v61);

      sub_1C440962C(v89);
      return v58;
    }

    sub_1C47C41F8(&v86);
  }

  else
  {
  }

  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  sub_1C4B05C70(&v86);
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C4B05100()
{
  v0 = sub_1C4EF9648();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = sub_1C4EF9F88();
  v10 = sub_1C43FCDF8(v9);
  v37 = v11;
  v39 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  v17 = type metadata accessor for LifeEventStructs.DateRelationshipType(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_1C4DEEB28();
  sub_1C4EF9F58();
  if (qword_1EDDF4920 != -1)
  {
    sub_1C4400CB0();
  }

  sub_1C4EF9EA8();
  v21 = sub_1C44CDAD4();
  v23 = v22;
  v36 = *(v3 + 8);
  v36(v8, v0);
  v38 = *(v37 + 8);
  v38(v16, v39);
  v24 = (v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_startTime);
  v25 = *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_startTime + 8);
  *v24 = v21;
  v24[1] = v23;

  sub_1C4EF9AD8();
  v26 = sub_1C4F019E8();
  sub_1C440B204(v26, v27, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_imputedStartTime);
  LODWORD(v23) = *(sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0) + 28);
  sub_1C4EF9F58();
  sub_1C4EF9EA8();
  v28 = sub_1C44CDAD4();
  v30 = v29;
  v36(v8, v0);
  v38(v16, v39);
  v31 = (v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_endTime);
  v32 = *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_endTime + 8);
  *v31 = v28;
  v31[1] = v30;

  sub_1C4EF9AD8();
  v33 = sub_1C4F019E8();
  sub_1C440B204(v33, v34, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_imputedEndTime);
  return v20;
}

uint64_t sub_1C4B053A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C4EF9648();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v44 = sub_1C4EF9F88();
  v11 = sub_1C43FCDF8(v44);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  v43 = a1;
  sub_1C4DA9E40(a1);
  sub_1C4EF9F58();
  if (qword_1EDDF4920 != -1)
  {
    sub_1C4400CB0();
  }

  sub_1C4EF9EA8();
  v19 = sub_1C44CDAD4();
  v21 = v20;
  v42 = *(v5 + 8);
  v42(v10, v2);
  v41 = *(v13 + 8);
  v41(v18, v44);
  v22 = type metadata accessor for FutureLifeEventStructs.DateRelationshipType(0);
  v23 = (a1 + v22[8]);
  v24 = v23[1];

  *v23 = v19;
  v23[1] = v21;
  sub_1C4EF9AD8();
  v25 = sub_1C4F019E8();
  v27 = v26;
  v28 = (a1 + v22[10]);
  v29 = v28[1];

  *v28 = v25;
  v28[1] = v27;
  LODWORD(v28) = *(sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0) + 28);
  sub_1C4EF9F58();
  sub_1C4EF9EA8();
  v30 = sub_1C44CDAD4();
  v32 = v31;
  v42(v10, v2);
  v41(v18, v44);
  v33 = (a1 + v22[12]);
  v34 = v33[1];

  *v33 = v30;
  v33[1] = v32;
  sub_1C4EF9AD8();
  v35 = sub_1C4F019E8();
  v37 = v36;
  v38 = (v43 + v22[14]);
  v39 = v38[1];

  *v38 = v35;
  v38[1] = v37;
  return result;
}

double sub_1C4B0565C@<D0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + *(sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0) + 32));
  switch(v4 >> 5)
  {
    case 0u:
      if (v4 - 11 < 2 || v4 == 18)
      {
        sub_1C441A468();
        sub_1C4B04684();
        if (!v2)
        {
          v7 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.FacetimeActivity(v7);
          v8 = &unk_1EC0C3398;
          v9 = type metadata accessor for LifeEventStructs.FacetimeActivity;
          goto LABEL_19;
        }
      }

      else
      {
        if (v4 != 17)
        {
          goto LABEL_24;
        }

        sub_1C441A468();
        sub_1C4B044EC();
        if (!v2)
        {
          v14 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.OnThePhoneActivity(v14);
          v8 = &unk_1EC0C33A0;
          v9 = type metadata accessor for LifeEventStructs.OnThePhoneActivity;
          goto LABEL_19;
        }
      }

      break;
    case 1u:
      v10 = v4 & 0x1F;
      if (v10)
      {
        if (v10 == 1)
        {
          sub_1C441A468();
          sub_1C4B041BC();
          if (!v2)
          {
            v15 = sub_1C442A8A4();
            *(a1 + 24) = type metadata accessor for LifeEventStructs.WalkingActivity(v15);
            v8 = &unk_1EC0C33B8;
            v9 = type metadata accessor for LifeEventStructs.WalkingActivity;
            goto LABEL_19;
          }
        }

        else
        {
          if (v10 != 2)
          {
            goto LABEL_24;
          }

          sub_1C441A468();
          sub_1C4B04354();
          if (!v2)
          {
            v11 = sub_1C442A8A4();
            *(a1 + 24) = type metadata accessor for LifeEventStructs.RunningActivity(v11);
            v8 = &unk_1EC0C33B0;
            v9 = type metadata accessor for LifeEventStructs.RunningActivity;
            goto LABEL_19;
          }
        }
      }

      else
      {
        sub_1C441A468();
        sub_1C4B0380C();
        if (!v2)
        {
          v16 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.ExercisingActivity(v16);
          v8 = &unk_1EC0C33E0;
          v9 = type metadata accessor for LifeEventStructs.ExercisingActivity;
          goto LABEL_19;
        }
      }

      break;
    case 2u:
LABEL_17:
      sub_1C441A468();
      sub_1C4B02CA4();
      if (!v2)
      {
        v13 = sub_1C442A8A4();
        *(a1 + 24) = type metadata accessor for LifeEventStructs.TransportationActivity(v13);
        v8 = &unk_1EC0C3420;
        v9 = type metadata accessor for LifeEventStructs.TransportationActivity;
        goto LABEL_19;
      }

      break;
    case 4u:
      switch(v4)
      {
        case 0x81u:
          sub_1C441A468();
          sub_1C4B02E5C();
          if (v2)
          {
            return result;
          }

          v12 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.WorkingActivity(v12);
          v8 = &unk_1EC0C3418;
          v9 = type metadata accessor for LifeEventStructs.WorkingActivity;
          break;
        case 0x82u:
          sub_1C441A468();
          sub_1C4B02FF4();
          if (v2)
          {
            return result;
          }

          v18 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.MeetingActivity(v18);
          v8 = &unk_1EC0C3410;
          v9 = type metadata accessor for LifeEventStructs.MeetingActivity;
          break;
        case 0x85u:
          sub_1C441A468();
          sub_1C4B0318C();
          if (v2)
          {
            return result;
          }

          v23 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.ShoppingActivity(v23);
          v8 = &unk_1EC0C3408;
          v9 = type metadata accessor for LifeEventStructs.ShoppingActivity;
          break;
        case 0x87u:
          sub_1C441A468();
          sub_1C4B03324();
          if (v2)
          {
            return result;
          }

          v24 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.SleepingActivity(v24);
          v8 = &unk_1EC0C3400;
          v9 = type metadata accessor for LifeEventStructs.SleepingActivity;
          break;
        case 0x89u:
          sub_1C441A468();
          sub_1C4B034BC();
          if (v2)
          {
            return result;
          }

          v19 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.ReadingActivity(v19);
          v8 = &unk_1EC0C33F8;
          v9 = type metadata accessor for LifeEventStructs.ReadingActivity;
          break;
        case 0x8Bu:
          sub_1C441A468();
          sub_1C4B03654();
          if (v2)
          {
            return result;
          }

          v21 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.GamingActivity(v21);
          v8 = &unk_1EC0C33E8;
          v9 = type metadata accessor for LifeEventStructs.GamingActivity;
          break;
        case 0x95u:
          sub_1C441A468();
          sub_1C4B03E8C();
          if (v2)
          {
            return result;
          }

          v22 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.StationaryActivity(v22);
          v8 = &unk_1EC0C33C0;
          v9 = type metadata accessor for LifeEventStructs.StationaryActivity;
          break;
        case 0x98u:
          goto LABEL_17;
        case 0x9Au:
          sub_1C441A468();
          sub_1C4B039A4();
          if (v2)
          {
            return result;
          }

          v26 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.CommuteActivity(v26);
          v8 = &unk_1EC0C33D8;
          v9 = type metadata accessor for LifeEventStructs.CommuteActivity;
          break;
        case 0x9Bu:
          sub_1C441A468();
          sub_1C4B03CF4();
          if (v2)
          {
            return result;
          }

          v25 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.AttendingAPerformanceActivity(v25);
          v8 = &unk_1EC0C33C8;
          v9 = type metadata accessor for LifeEventStructs.AttendingAPerformanceActivity;
          break;
        case 0x9Cu:
          sub_1C441A468();
          sub_1C4B03B5C();
          if (v2)
          {
            return result;
          }

          v17 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.DiningActivity(v17);
          v8 = &unk_1EC0C33D0;
          v9 = type metadata accessor for LifeEventStructs.DiningActivity;
          break;
        case 0x9Du:
          sub_1C441A468();
          sub_1C4B04024();
          if (v2)
          {
            return result;
          }

          v20 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.LocationVisitActivity(v20);
          v8 = &unk_1EDDF59C0;
          v9 = type metadata accessor for LifeEventStructs.LocationVisitActivity;
          break;
        default:
          goto LABEL_24;
      }

LABEL_19:
      *(a1 + 32) = sub_1C4B05CD8(v8, v9);
      *a1 = 0;
      break;
    default:
LABEL_24:
      *(a1 + 32) = 0;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      break;
  }

  return result;
}

uint64_t sub_1C4B05C70(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C3480, &unk_1C4F40B58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4B05CD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4B05D20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v423 = a2;
  v422 = a1;
  v4 = sub_1C456902C(&qword_1EC0C3438, &qword_1C4F51398);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v405 - v8;
  v10 = type metadata accessor for SGContactStructs.LocationRelationshipType(0);
  v11 = sub_1C43FCDF8(v10);
  v431 = v12;
  v432 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD08();
  v439 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v438 = &v405 - v18;
  v19 = sub_1C456902C(&qword_1EC0C3440, &qword_1C4F7AAE0);
  sub_1C43FBD18(v19);
  v21 = *(v20 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v22);
  v430 = &v405 - v23;
  v429 = type metadata accessor for SGContactStructs.Place(0);
  v24 = sub_1C43FBCE0(v429);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FD2D8();
  v434 = v27;
  v28 = sub_1C456902C(&qword_1EC0C3448, &unk_1C4F7AAC0);
  sub_1C43FBD18(v28);
  v30 = *(v29 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v405 - v32;
  v34 = sub_1C456902C(&qword_1EC0C3450, &unk_1C4F7AAD0);
  sub_1C43FBD18(v34);
  v36 = *(v35 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v37);
  v39 = sub_1C43FD2C8(&v405 - v38);
  v417 = type metadata accessor for SGContactStructs.SoftwareRelationshipType(v39);
  v40 = sub_1C43FBCE0(v417);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FD2D8();
  v44 = sub_1C43FD2C8(v43);
  v420 = type metadata accessor for SGContactStructs.Software(v44);
  v45 = sub_1C43FBCE0(v420);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FD2D8();
  v49 = sub_1C43FD2C8(v48);
  v443 = type metadata accessor for SGContactStructs.IdentifierRelationshipType(v49);
  v50 = sub_1C43FCDF8(v443);
  v441 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FD2D8();
  v440 = v54;
  v55 = sub_1C456902C(&unk_1EC0BAD50, &unk_1C4F168E0);
  v56 = sub_1C43FBD18(v55);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBD08();
  v424 = (v59 - v60);
  MEMORY[0x1EEE9AC00](v61);
  v427 = (&v405 - v62);
  v426 = sub_1C4EF9648();
  v63 = sub_1C43FCDF8(v426);
  v425 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FD2D8();
  v68 = sub_1C43FD2C8(v67);
  v69 = type metadata accessor for SGContactStructs.AddressRelationshipType(v68);
  v70 = sub_1C43FCDF8(v69);
  v444 = v71;
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v70);
  sub_1C43FBD08();
  v76 = v74 - v75;
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v405 - v78;
  MEMORY[0x1EEE9AC00](v80);
  v445 = &v405 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v405 - v83;
  v428 = type metadata accessor for SGContactStructs.Person(0);
  v85 = sub_1C43FBCE0(v428);
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v85);
  sub_1C43FD2D8();
  v433 = v88;
  v89 = [v2 postalAddresses];
  sub_1C4461BB8(0, &qword_1EDDDB958, 0x1E6999258);
  sub_1C441C97C();
  v419 = v90;
  sub_1C4F01678();

  v91 = sub_1C4428DA0();

  if (v91)
  {
    v408 = v33;
    v92 = [v2 name];
    if (!v92)
    {
      sub_1C465B58C();
      swift_allocError();
      *v123 = 0;
      swift_willThrow();
      return v91;
    }

    v93 = v92;
    v446 = v76;
    v412 = v9;
    v414 = sub_1C456902C(&qword_1EC0B8400, &unk_1C4F175E0);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_1C4F0CE60;
    v95 = [v93 fullName];
    v96 = sub_1C4F01138();
    v411 = v93;
    v98 = v97;

    *(v94 + 56) = MEMORY[0x1E69E6158];
    v99 = sub_1C44D5840();
    *(v94 + 64) = v99;
    *(v94 + 32) = v96;
    *(v94 + 40) = v98;
    v410 = v3;
    v100 = [v3 recordId];
    v101 = [v100 numericValue];

    v448 = v101;
    v102 = sub_1C4F02858();
    *(v94 + 96) = MEMORY[0x1E69E6158];
    *(v94 + 104) = v99;
    v413 = v99;
    *(v94 + 72) = v102;
    *(v94 + 80) = v103;
    v104 = sub_1C4F01168();
    v91 = v105;
    v106 = HIBYTE(v105) & 0xF;
    if ((v105 & 0x2000000000000000) == 0)
    {
      v106 = v104 & 0xFFFFFFFFFFFFLL;
    }

    if (!v106)
    {

      sub_1C465B58C();
      swift_allocError();
      *v124 = 0;
      swift_willThrow();
      sub_1C4435358();
      return v91;
    }

    if (qword_1EDDE9228 != -1)
    {
      swift_once();
    }

    v107 = type metadata accessor for SourceIdPrefix();
    sub_1C442B738(v107, qword_1EDE2CEE8);
    String.base64EncodedSHA(withPrefix:)();
    v109 = v108;
    v111 = v110;

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v112 = v442;
    sub_1C4E42CD0(v109, v111, v113, v114, v115, v116, v117, v118, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416);
    if (v112)
    {
      sub_1C4435358();

      return v91;
    }

    v409 = v107;
    v406 = v109;
    v407 = v111;
    v442 = 0;
    v125 = v411;
    sub_1C465B638(v411, &selRef_prefix);
    sub_1C440D158();
    v126 = v428;
    sub_1C43FC7E4(v428[11]);
    *v109 = v91;
    *(v109 + 8) = v111;
    sub_1C465B638(v125, &selRef_firstName);
    sub_1C440D158();
    sub_1C43FC7E4(v126[9]);
    *v109 = v91;
    *(v109 + 8) = v111;
    sub_1C465B638(v125, &selRef_middleName);
    sub_1C440D158();
    sub_1C43FC7E4(v126[13]);
    *v109 = v91;
    *(v109 + 8) = v111;
    sub_1C465B638(v125, &selRef_lastName);
    sub_1C440D158();
    sub_1C43FC7E4(v126[15]);
    *v109 = v91;
    *(v109 + 8) = v111;
    sub_1C465B638(v125, &selRef_suffix);
    sub_1C440D158();
    sub_1C43FC7E4(v126[17]);
    *v109 = v91;
    *(v109 + 8) = v111;
    v448 = MEMORY[0x1E69E7CC0];
    v127 = v410;
    v91 = [v410 phones];
    sub_1C4461BB8(0, &qword_1EC0C3458, 0x1E6999250);
    sub_1C441C97C();
    v128 = sub_1C4F01678();

    v129 = sub_1C4428DA0();
    if (v129)
    {
      if (v129 < 1)
      {
        __break(1u);
        goto LABEL_127;
      }

      v130 = 0;
      v131 = MEMORY[0x1E69E7CC0];
      v435 = (v128 & 0xC000000000000001);
      v436 = v129;
      v437 = v128;
      do
      {
        if (v435)
        {
          v132 = MEMORY[0x1C6940F90](v130, v128);
        }

        else
        {
          v132 = *(v128 + 8 * v130 + 32);
        }

        v133 = v132;
        v134 = [v132 phoneNumber];
        sub_1C4F01138();

        v135 = String.normalizedContactHandle()();

        sub_1C4EFEEF8();
        sub_1C43FCF64();
        sub_1C440BAA8(v136, v137, v138, v139);
        v140 = &v84[v69[5]];
        sub_1C4EFD1D8();
        v141 = v69[6];
        if (qword_1EDDFD068 != -1)
        {
          sub_1C4419B48();
          swift_once();
        }

        v142 = type metadata accessor for Source();
        sub_1C442B738(v142, qword_1EDDFD070);
        sub_1C44079D8();
        sub_1C448D028(v143, &v84[v141], v144);
        v145 = &v84[v69[7]];
        sub_1C4EFE518();
        sub_1C43FC4E8(v69[8]);
        v146 = &v84[v69[9]];
        sub_1C4EFE478();
        v147 = v69[11];
        v148 = &v84[v69[10]];
        sub_1C4EFE5A8();
        sub_1C43FC4E8(v69[12]);
        v149 = &v84[v69[13]];
        sub_1C4EFE4B8();
        sub_1C43FC4E8(v69[14]);
        v150 = &v84[v69[15]];
        sub_1C4EFEDE8();
        sub_1C43FC4E8(v69[16]);
        v151 = &v84[v69[17]];
        sub_1C4EFEA58();
        sub_1C43FC4E8(v69[18]);
        v152 = &v84[v69[19]];
        sub_1C4EFE8D8();
        sub_1C43FC4E8(v69[20]);
        v153 = &v84[v69[21]];
        sub_1C4EFE378();
        sub_1C43FC4E8(v69[22]);
        v154 = &v84[v69[23]];
        sub_1C4EFECD8();
        sub_1C43FC4E8(v69[24]);
        v155 = &v84[v69[25]];
        sub_1C4EFE688();
        sub_1C43FC4E8(v69[26]);
        *v148 = v135;
        sub_1C44136F8();
        sub_1C448D028(v84, v445, v156);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458F168(0, *(v131 + 16) + 1, 1, v131);
          v131 = v164;
        }

        v158 = *(v131 + 16);
        v157 = *(v131 + 24);
        if (v158 >= v157 >> 1)
        {
          v165 = sub_1C43FCFE8(v157);
          sub_1C458F168(v165, v158 + 1, 1, v131);
          v131 = v166;
        }

        ++v130;

        *(v131 + 16) = v158 + 1;
        sub_1C43FBF6C();
        sub_1C4412428(v131 + v159);
        sub_1C4B07AC0(v160, v161, v162);
        sub_1C4432934();
        sub_1C4B07B20(v84, v163);
        v128 = v437;
      }

      while (v436 != v130);

      v448 = v131;
      v127 = v410;
    }

    else
    {
    }

    v109 = v443;
    v167 = [v127 emailAddresses];
    sub_1C4461BB8(0, &qword_1EC0C3460, 0x1E6999200);
    sub_1C441C97C();
    v168 = sub_1C4F01678();

    v169 = sub_1C4428DA0();
    if (!v169)
    {

      v171 = MEMORY[0x1E69E7CC0];
      goto LABEL_44;
    }

    v91 = v169;
    sub_1C44300F8(MEMORY[0x1E69E7CC0]);
    sub_1C459ED48();
    if ((v91 & 0x8000000000000000) == 0)
    {
      v170 = 0;
      v171 = v447;
      v436 = v168 & 0xC000000000000001;
      v437 = v91;
      v445 = v168;
      do
      {
        if (v436)
        {
          v172 = MEMORY[0x1C6940F90](v170, v168);
        }

        else
        {
          v172 = *(v168 + 8 * v170 + 32);
        }

        v173 = v172;
        sub_1C4EFEEF8();
        sub_1C43FCF64();
        sub_1C440BAA8(v174, v175, v176, v177);
        v178 = &v79[v69[5]];
        sub_1C4EFD1D8();
        v179 = v69[6];
        if (qword_1EDDFD068 != -1)
        {
          sub_1C4419B48();
          swift_once();
        }

        v180 = type metadata accessor for Source();
        sub_1C442B738(v180, qword_1EDDFD070);
        sub_1C44079D8();
        sub_1C448D028(v181, &v79[v179], v182);
        v183 = &v79[v69[7]];
        sub_1C4EFE518();
        v184 = v69[9];
        v185 = &v79[v69[8]];
        sub_1C4EFE478();
        sub_1C44036C8(v69[10]);
        v186 = &v79[v69[11]];
        sub_1C4EFE5A8();
        sub_1C44036C8(v69[12]);
        v187 = &v79[v69[13]];
        sub_1C4EFE4B8();
        sub_1C44036C8(v69[14]);
        v188 = &v79[v69[15]];
        sub_1C4EFEDE8();
        sub_1C44036C8(v69[16]);
        v189 = &v79[v69[17]];
        sub_1C4EFEA58();
        sub_1C44036C8(v69[18]);
        v190 = &v79[v69[19]];
        sub_1C4EFE8D8();
        sub_1C44036C8(v69[20]);
        v191 = &v79[v69[21]];
        sub_1C4EFE378();
        sub_1C44036C8(v69[22]);
        v192 = &v79[v69[23]];
        sub_1C4EFECD8();
        sub_1C44036C8(v69[24]);
        v193 = &v79[v69[25]];
        sub_1C4EFE688();
        sub_1C44036C8(v69[26]);
        v194 = [v173 emailAddress];
        sub_1C4F01138();

        v195 = String.normalizedContactHandle()();

        *v185 = v195;
        v447 = v171;
        v197 = *(v171 + 16);
        v196 = *(v171 + 24);
        if (v197 >= v196 >> 1)
        {
          sub_1C43FCFE8(v196);
          sub_1C459ED48();
          v171 = v447;
        }

        ++v170;
        *(v171 + 16) = v197 + 1;
        sub_1C43FBF6C();
        sub_1C4412428(v171 + v198);
        sub_1C4B07AC0(v79, v199, v200);
        v168 = v445;
      }

      while (v437 != v170);

      v109 = v443;
LABEL_44:
      sub_1C49D4BF0(v171);
      v201 = v448;
      v202 = v428[24];
      v127 = v433;
      v203 = *&v433[v202];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      *&v127[v202] = v201;
      sub_1C4E4DF38();
      v204 = [v410 birthday];
      v205 = v426;
      v206 = v425;
      v207 = v424;
      if (v204)
      {
        v208 = v204;
        v127 = [v204 dateComponents];

        if (v127)
        {
          sub_1C4EF9598();

          v209 = 0;
        }

        else
        {
          v209 = 1;
        }

        v210 = v427;
        sub_1C440BAA8(v207, v209, 1, v205);
        sub_1C4B07B78(v207, v210);
        if (sub_1C44157D4(v210, 1, v205) != 1)
        {
          v214 = v418;
          (*(v206 + 32))(v418, v210, v205);
          sub_1C44CDAD4();
          sub_1C440D158();
          v215 = &v433[v428[21]];
          v216 = v215[1];

          *v215 = v210;
          v215[1] = v214;
          v127 = v214;
          sub_1C4EF95D8();
          if (v217)
          {
            (*(v206 + 8))(v214, v205);
          }

          else
          {
            v218 = sub_1C44CE310();
            v220 = v219;
            (*(v206 + 8))(v127, v205);
            v109 = v443;
            if (!v220)
            {
              goto LABEL_56;
            }

            v221 = &v433[v428[23]];
            v222 = v221[1];

            *v221 = v218;
            v221[1] = v220;
          }

          v109 = v443;
          goto LABEL_56;
        }
      }

      else
      {
        v210 = v427;
        sub_1C43FCF64();
        sub_1C440BAA8(v211, v212, v213, v205);
      }

      sub_1C4B079E8(v210);
LABEL_56:
      v91 = [v410 socialProfiles];
      sub_1C4461BB8(0, &qword_1EC0C3468, 0x1E6999298);
      sub_1C441C97C();
      v223 = sub_1C4F01678();

      v224 = sub_1C4428DA0();
      if (!v224)
      {

        v227 = MEMORY[0x1E69E7CC0];
        goto LABEL_69;
      }

      v225 = v224;
      v437 = v201;
      sub_1C44300F8(MEMORY[0x1E69E7CC0]);
      sub_1C459ECF0();
      if ((v225 & 0x8000000000000000) == 0)
      {
        v226 = 0;
        v444 = (v223 & 0xC000000000000001);
        v445 = v223;
        v227 = v447;
        do
        {
          if (v444)
          {
            v228 = MEMORY[0x1C6940F90](v226, v223);
          }

          else
          {
            v228 = *(v223 + 8 * v226 + 32);
          }

          v229 = v228;
          sub_1C4EFEEF8();
          v230 = v440;
          sub_1C43FCF64();
          sub_1C440BAA8(v231, v232, v233, v234);
          v235 = v230 + *(v109 + 20);
          sub_1C4EFD258();
          v236 = *(v109 + 24);
          if (qword_1EDDFD068 != -1)
          {
            sub_1C4419B48();
            swift_once();
          }

          v237 = type metadata accessor for Source();
          sub_1C442B738(v237, qword_1EDDFD070);
          sub_1C44079D8();
          sub_1C448D028(v238, v230 + v236, v239);
          v240 = v230 + *(v109 + 28);
          sub_1C4EFE558();
          v241 = (v230 + *(v109 + 32));
          *v241 = 0;
          v241[1] = 0;
          v242 = v230 + *(v109 + 36);
          sub_1C4EFE658();
          v243 = *(v109 + 44);
          v244 = (v230 + *(v109 + 40));
          sub_1C4EFEBF8();
          v245 = *(v109 + 52);
          v246 = (v230 + *(v109 + 48));
          sub_1C4EFEE18();
          v247 = (v230 + *(v109 + 56));
          *v244 = sub_1C465B638(v229, &selRef_service);
          v244[1] = v248;
          *v246 = sub_1C465B638(v229, &selRef_displayName);
          v246[1] = v249;
          v250 = sub_1C465B638(v229, &selRef_username);
          v252 = v251;

          *v247 = v250;
          v247[1] = v252;
          v447 = v227;
          v254 = *(v227 + 16);
          v253 = *(v227 + 24);
          if (v254 >= v253 >> 1)
          {
            sub_1C43FCFE8(v253);
            sub_1C459ECF0();
            v227 = v447;
          }

          ++v226;
          *(v227 + 16) = v254 + 1;
          sub_1C43FBF6C();
          sub_1C4B07AC0(v230, v227 + v255 + *(v256 + 72) * v254, type metadata accessor for SGContactStructs.IdentifierRelationshipType);
          v109 = v443;
          v223 = v445;
        }

        while (v225 != v226);

LABEL_69:
        v91 = v428[25];
        v257 = v433;
        v258 = *&v433[v91];

        *&v257[v91] = v227;
        sub_1C4E4E130();
        v127 = v423;
        v259 = BYTE7(v423) & 0xF;
        v109 = v422;
        if ((v423 & 0x2000000000000000) == 0)
        {
          v259 = v422 & 0xFFFFFFFFFFFFLL;
        }

        if (!v259)
        {
LABEL_78:
          v288 = [v410 postalAddresses];
          v289 = sub_1C4F01678();

          v426 = sub_1C4428DA0();
          if (!v426)
          {
            v290 = MEMORY[0x1E69E7CC0];
LABEL_117:

            v91 = v428[27];
            v397 = v433;
            v398 = *&v433[v91];

            *(v397 + v91) = v290;
            sub_1C4E4E338();
            LOBYTE(v447) = 1;
            v399 = v442;
            sub_1C4E44C64();
            if (!v399)
            {
              v91 = v400;

              sub_1C4435358();
              sub_1C442D294();
              sub_1C4B07B20(v397, v404);
              return v91;
            }

            sub_1C4435358();
            sub_1C442D294();
            v402 = v397;
            goto LABEL_121;
          }

          v425 = v289 & 0xC000000000000001;
          v424 = "r the contacts UUID query.";
          v290 = MEMORY[0x1E69E7CC0];
          v291 = 4;
          v423 = xmmword_1C4F0F830;
          v422 = v289;
          while (1)
          {
            v292 = v425;
            sub_1C4431590(v291 - 4, v425 == 0);
            v293 = v292 ? MEMORY[0x1C6940F90](v291 - 4, v289) : *(v289 + 8 * v291);
            if (__OFADD__(v291 - 4, 1))
            {
              break;
            }

            v443 = v291 - 3;
            v444 = v293;
            v441 = v291;
            v294 = [v293 components];
            v295 = swift_allocObject();
            *(v295 + 16) = v423;
            sub_1C465B638(v294, &selRef_street);
            v91 = MEMORY[0x1E69E6158];
            v296 = v413;
            *(v295 + 56) = MEMORY[0x1E69E6158];
            *(v295 + 64) = v296;
            sub_1C440D79C();
            if (v299)
            {
              v300 = 0xE000000000000000;
            }

            else
            {
              v300 = v297;
            }

            *(v295 + 32) = v298;
            *(v295 + 40) = v300;
            sub_1C465B638(v294, &selRef_subLocality);
            *(v295 + 96) = v91;
            *(v295 + 104) = v296;
            sub_1C440D79C();
            if (v299)
            {
              v303 = 0xE000000000000000;
            }

            else
            {
              v303 = v301;
            }

            *(v295 + 72) = v302;
            *(v295 + 80) = v303;
            sub_1C465B638(v294, &selRef_city);
            *(v295 + 136) = v91;
            *(v295 + 144) = v296;
            sub_1C440D79C();
            if (v299)
            {
              v306 = 0xE000000000000000;
            }

            else
            {
              v306 = v304;
            }

            *(v295 + 112) = v305;
            *(v295 + 120) = v306;
            sub_1C465B638(v294, &selRef_subAdministrativeArea);
            *(v295 + 176) = v91;
            *(v295 + 184) = v296;
            sub_1C440D79C();
            if (v299)
            {
              v309 = 0xE000000000000000;
            }

            else
            {
              v309 = v307;
            }

            *(v295 + 152) = v308;
            *(v295 + 160) = v309;
            sub_1C465B638(v294, &selRef_state);
            *(v295 + 216) = v91;
            *(v295 + 224) = v296;
            sub_1C440D79C();
            if (v299)
            {
              v312 = 0xE000000000000000;
            }

            else
            {
              v312 = v310;
            }

            *(v295 + 192) = v311;
            *(v295 + 200) = v312;
            sub_1C465B638(v294, &selRef_postalCode);
            *(v295 + 256) = v91;
            *(v295 + 264) = v296;
            sub_1C440D79C();
            if (v299)
            {
              v315 = 0xE000000000000000;
            }

            else
            {
              v315 = v313;
            }

            *(v295 + 232) = v314;
            *(v295 + 240) = v315;
            v445 = v294;
            sub_1C465B638(v294, &selRef_country);
            *(v295 + 296) = v91;
            *(v295 + 304) = v296;
            sub_1C440D79C();
            if (v299)
            {
              v318 = 0xE000000000000000;
            }

            else
            {
              v318 = v316;
            }

            *(v295 + 272) = v317;
            *(v295 + 280) = v318;
            sub_1C4F01168();
            if (qword_1EDDE9300 != -1)
            {
              swift_once();
            }

            sub_1C442B738(v409, qword_1EDE2D050);
            String.base64EncodedSHA(withPrefix:)();

            v319 = v442;
            sub_1C4E441DC();
            if (v319)
            {

              goto LABEL_120;
            }

            v440 = v290;
            v442 = 0;
            sub_1C4EFEEF8();
            v320 = v446;
            sub_1C43FCF64();
            v437 = v321;
            sub_1C440BAA8(v322, v323, v324, v321);
            v325 = v320 + v69[5];
            sub_1C4EFD1D8();
            v326 = v320 + v69[6];
            if (qword_1EDDFD068 != -1)
            {
              sub_1C4419B48();
              swift_once();
            }

            v327 = type metadata accessor for Source();
            sub_1C442B738(v327, qword_1EDDFD070);
            sub_1C44079D8();
            v435 = v329;
            v436 = v328;
            sub_1C448D028(v328, v326, v330);
            v331 = v320 + v69[7];
            sub_1C4EFE518();
            v332 = (v320 + v69[8]);
            *v332 = 0;
            v332[1] = 0;
            v333 = v320 + v69[9];
            sub_1C4EFE478();
            v334 = (v320 + v69[10]);
            *v334 = 0;
            v334[1] = 0;
            v335 = v320 + v69[11];
            sub_1C4EFE5A8();
            v336 = v69[13];
            v337 = (v446 + v69[12]);
            sub_1C43FF56C();
            sub_1C4EFE4B8();
            v338 = v69[15];
            v339 = (v446 + v69[14]);
            sub_1C43FF56C();
            sub_1C4EFEDE8();
            v340 = v69[17];
            v341 = (v446 + v69[16]);
            sub_1C43FF56C();
            sub_1C4EFEA58();
            v342 = v69[19];
            v343 = (v446 + v69[18]);
            sub_1C43FF56C();
            sub_1C4EFE8D8();
            v344 = v69[21];
            v345 = (v446 + v69[20]);
            sub_1C43FF56C();
            sub_1C4EFE378();
            v346 = v69[23];
            v347 = (v446 + v69[22]);
            sub_1C43FF56C();
            sub_1C4EFECD8();
            v348 = v69[25];
            v349 = (v446 + v69[24]);
            sub_1C43FF56C();
            sub_1C4EFE688();
            v350 = v445;
            v427 = (v446 + v69[26]);
            *v337 = sub_1C465B638(v445, &selRef_street);
            v337[1] = v351;
            v352 = v446;
            *v339 = sub_1C465B638(v350, &selRef_subLocality);
            v339[1] = v353;
            *v341 = sub_1C465B638(v350, &selRef_city);
            v341[1] = v354;
            *v343 = sub_1C465B638(v350, &selRef_subAdministrativeArea);
            v343[1] = v355;
            *v345 = sub_1C465B638(v350, &selRef_state);
            v345[1] = v356;
            *v347 = sub_1C465B638(v350, &selRef_postalCode);
            v347[1] = v357;
            *v349 = sub_1C465B638(v350, &selRef_country);
            v349[1] = v358;
            v359 = sub_1C465B638(v350, &selRef_isoCountryCode);
            v360 = v427;
            *v427 = v359;
            v360[1] = v361;
            sub_1C44136F8();
            v362 = v430;
            sub_1C448D028(v352, v430, v363);
            v364 = sub_1C43FC024();
            sub_1C440BAA8(v364, v365, v366, v69);
            v367 = v434;
            sub_1C4E44A48(v362);
            v368 = v438;
            sub_1C43FCF64();
            sub_1C440BAA8(v369, v370, v371, v372);
            v373 = v432;
            v374 = v368 + v432[5];
            sub_1C4EFD1F8();
            sub_1C448D028(v436, v368 + v373[6], v435);
            v375 = v368 + v373[7];
            sub_1C4EFE5E8();
            v376 = v373[9];
            v377 = (v368 + v373[8]);
            sub_1C43FCF64();
            v378 = v429;
            sub_1C440BAA8(v379, v380, v381, v429);
            v382 = v444;
            *v377 = sub_1C4B07A50(v382);
            v377[1] = v383;
            v384 = v412;
            sub_1C448D028(v367, v412, type metadata accessor for SGContactStructs.Place);
            v385 = sub_1C43FC024();
            sub_1C440BAA8(v385, v386, v387, v378);
            sub_1C4E44B54(v384);
            sub_1C448D028(v368, v439, type metadata accessor for SGContactStructs.LocationRelationshipType);
            v290 = v440;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C458F1E8(0, *(v290 + 16) + 1, 1, v290);
              v290 = v394;
            }

            v388 = v441;
            v390 = *(v290 + 16);
            v389 = *(v290 + 24);
            v289 = v422;
            if (v390 >= v389 >> 1)
            {
              v395 = sub_1C43FCFE8(v389);
              sub_1C458F1E8(v395, v390 + 1, 1, v290);
              v290 = v396;
            }

            sub_1C4B07B20(v367, type metadata accessor for SGContactStructs.Place);
            *(v290 + 16) = v390 + 1;
            sub_1C43FBF6C();
            sub_1C4B07AC0(v439, v290 + v391 + *(v392 + 72) * v390, type metadata accessor for SGContactStructs.LocationRelationshipType);
            sub_1C4B07B20(v438, type metadata accessor for SGContactStructs.LocationRelationshipType);
            sub_1C4432934();
            sub_1C4B07B20(v352, v393);
            v291 = v388 + 1;
            if (v443 == v426)
            {
              goto LABEL_117;
            }
          }

          __break(1u);
          goto LABEL_125;
        }

        if (qword_1EDDE9358 == -1)
        {
LABEL_73:
          sub_1C442B738(v409, qword_1EDE2D098);
          String.base64EncodedSHA(withPrefix:)();
          v260 = v421;
          v261 = v442;
          sub_1C4E436F4();
          v262 = v420;
          if (v261)
          {

LABEL_120:
            sub_1C4435358();
            sub_1C442D294();
            v402 = v433;
LABEL_121:
            sub_1C4B07B20(v402, v401);
            return v91;
          }

          v442 = 0;
          v263 = (v260 + *(v420 + 36));
          v264 = v263[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

          *v263 = v109;
          v263[1] = v127;
          sub_1C4EFEEF8();
          v265 = v416;
          sub_1C43FCF64();
          sub_1C440BAA8(v266, v267, v268, v269);
          v270 = v417;
          v271 = v265 + *(v417 + 20);
          sub_1C4EFD228();
          v272 = *(v270 + 24);
          if (qword_1EDDFD068 != -1)
          {
            sub_1C4419B48();
            swift_once();
          }

          v273 = type metadata accessor for Source();
          sub_1C442B738(v273, qword_1EDDFD070);
          sub_1C44079D8();
          sub_1C448D028(v274, v265 + v272, v275);
          v276 = *(v270 + 28);
          sub_1C43FCF64();
          sub_1C440BAA8(v277, v278, v279, v262);
          v280 = v415;
          sub_1C448D028(v260, v415, type metadata accessor for SGContactStructs.Software);
          v281 = sub_1C43FC024();
          sub_1C440BAA8(v281, v282, v283, v262);
          sub_1C4E43FC0(v280);
          v284 = v408;
          sub_1C448D028(v265, v408, type metadata accessor for SGContactStructs.SoftwareRelationshipType);
          v285 = sub_1C43FC024();
          sub_1C440BAA8(v285, v286, v287, v270);
          sub_1C4E440D0(v284);
          sub_1C4B07B20(v265, type metadata accessor for SGContactStructs.SoftwareRelationshipType);
          sub_1C4B07B20(v260, type metadata accessor for SGContactStructs.Software);
          goto LABEL_78;
        }

LABEL_129:
        swift_once();
        goto LABEL_73;
      }

LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (qword_1EDDFECB0 != -1)
  {
LABEL_125:
    swift_once();
  }

  v119 = sub_1C4F00978();
  sub_1C442B738(v119, qword_1EDDFECB8);
  v120 = sub_1C4F00968();
  v121 = sub_1C4F01CF8();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    *v122 = 0;
    _os_log_impl(&dword_1C43F8000, v120, v121, "SGContact has no associated address", v122, 2u);
    MEMORY[0x1C6942830](v122, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C4B079E8(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0BAD50, &unk_1C4F168E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4B07A50(void *a1)
{
  v2 = [a1 label];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C4B07AC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4B07B20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4B07B78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0BAD50, &unk_1C4F168E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SGContactSourceIngestor()
{
  result = qword_1EDDE1C48;
  if (!qword_1EDDE1C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4B07C7C()
{
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  v1 = [objc_opt_self() serviceForContacts];
  *(v0 + 184) = v1;
  *(v0 + 200) = 0;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_1C4B07DC8;
  v2 = swift_continuation_init();
  *(v0 + 136) = sub_1C456902C(&unk_1EC0C3470, &qword_1C4F51448);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1C4B0833C;
  *(v0 + 104) = &unk_1F43FC4A8;
  *(v0 + 112) = v2;
  [v1 allContactsLimitedTo:10000 withCompletion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1C4B07DC8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_1C4B0803C;
  }

  else
  {
    v3 = sub_1C4B07ED8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C4B07ED8()
{
  v0[20] = v0[21];
  v2 = v0[22];
  v1 = v0[23];
  v3 = v2 + *(type metadata accessor for SGContactSourceIngestor() + 20);
  v4 = *(v3 + *(type metadata accessor for PhaseStores() + 24));
  v5 = swift_task_alloc();
  v5[2] = v0 + 20;
  v5[3] = v2;
  v5[4] = v0 + 18;
  v5[5] = v1;
  v5[6] = v0 + 19;
  v5[7] = v0 + 25;
  GraphStore.tripleInsertingTransaction(transactionBody:)(sub_1C4B08A18, v5);
  v6 = v0[22];
  v7 = v0[23];

  sub_1C4EF9AE8();
  sub_1C46460F4();
  swift_unknownObjectRelease();
  v8 = v0[20];

  sub_1C4B080C0(v6, v0 + 19, v0 + 18);
  sub_1C43FBDA0();

  return v9();
}

uint64_t sub_1C4B0803C()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_1C4B080C0(v3, v0 + 19, v0 + 18);
  v4 = v0[24];
  sub_1C43FBDA0();

  return v5();
}

uint64_t sub_1C4B080C0(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for SGContactSourceIngestor();
  sub_1C4430B24(a1 + *(v11 + 20), v10, type metadata accessor for Configuration);
  v10[*(v7 + 28)] = *(a1 + *(v11 + 24));
  Pipeline.StatusStore.currentSessionId()();
  sub_1C47CE078(v10);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v13 = sub_1C4F01108();

  *(inited + 48) = v13;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  v14 = *a2;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  result = *a3 - *a2;
  if (__OFSUB__(*a3, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

uint64_t sub_1C4B0833C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1C4409678((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1C467BF20(v4, v5);
  }

  else
  {
    sub_1C4461BB8(0, &qword_1EDDDB838, 0x1E69991F0);
    v7 = sub_1C4F01678();

    return sub_1C467BF1C(v4, v7);
  }
}

void sub_1C4B083E4(void (*a1)(uint64_t)@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, void *a5@<X5>, void *a6@<X6>, _BYTE *a7@<X7>, _BYTE *a8@<X8>)
{
  v9 = v8;
  v49[1] = *MEMORY[0x1E69E9840];
  v13 = *a2;
  v44 = *a2 & 0xC000000000000001;
  v45 = sub_1C4428DA0();
  v43 = v13 & 0xFFFFFFFFFFFFFF8;
  v47 = v13;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = 0;
  for (i = a3; ; a3 = i)
  {
    if (v45 == v14)
    {

      v30 = a7;
      v31 = a8;
      goto LABEL_25;
    }

    if (v44)
    {
      v15 = MEMORY[0x1C6940F90](v14, v47);
    }

    else
    {
      if (v14 >= *(v43 + 16))
      {
        goto LABEL_27;
      }

      v15 = *(v47 + 8 * v14 + 32);
    }

    v16 = v15;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    sub_1C4ACEC54();
    if (v9)
    {
      break;
    }

    if (__OFADD__(*a4, 1))
    {
      goto LABEL_28;
    }

    ++*a4;
    v17 = objc_autoreleasePoolPush();
    v18 = a3 + *(type metadata accessor for SGContactSourceIngestor() + 20);
    v19 = *(v18 + *(type metadata accessor for Configuration() + 20));
    if (qword_1EDDFA648 != -1)
    {
      v38 = v19;
      swift_once();
      v19 = v38;
    }

    v20 = vmovn_s64(vceqq_s64(vandq_s8(xmmword_1EDDFA650, v19), xmmword_1EDDFA650));
    if (v20.i32[0] & v20.i32[1])
    {
      v21 = [v16 recordId];
      v49[0] = 0;
      v22 = [a5 originFromRecordId:v21 error:v49];

      if (v22)
      {
        v23 = v49[0];
        v24 = sub_1C4B08A3C(v22);
        if (v25)
        {
          sub_1C4B05D20(v24, v25);

          goto LABEL_18;
        }
      }

      else
      {
        v26 = v49[0];
        v27 = sub_1C4EF97A8();

        swift_willThrow();
      }
    }

    sub_1C4B05D20(0, 0xE000000000000000);
LABEL_18:
    sub_1C4812140();
    v29 = v28;

    a1(v29);
    v9 = 0;

    if (__OFADD__(*a6, 1))
    {
      goto LABEL_29;
    }

    ++*a6;
    objc_autoreleasePoolPop(v17);

    ++v14;
  }

  v31 = a8;
  v49[0] = v9;
  v32 = v9;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (swift_dynamicCast())
  {

    sub_1C465B58C();
    v33 = swift_allocError();
    *v34 = v48[1];
    v35 = *(type metadata accessor for SGContactSourceIngestor() + 20);
    v48[0] = 1;
    static Transformers.reportError(error:context:config:pipelineType:)(v33, 0x6361746E6F434753, 0xE900000000000074, a3 + v35, v48);

    v30 = a7;
  }

  else
  {

    v36 = *(type metadata accessor for SGContactSourceIngestor() + 20);
    LOBYTE(v49[0]) = 1;
    static Transformers.reportError(error:context:config:pipelineType:)(v9, 0x6361746E6F434753, 0xE900000000000074, a3 + v36, v49);

    v30 = a7;
    *a7 = 1;
  }

LABEL_25:
  *v31 = *v30;
  v37 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C4B08878()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4665934;

  return sub_1C4B07C5C();
}

uint64_t sub_1C4B08908(uint64_t a1)
{
  result = sub_1C4B089D4(qword_1EDDE1C70);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B0894C(uint64_t a1)
{
  result = sub_1C4B089D4(&qword_1EDDE1C58);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B08990(uint64_t a1)
{
  result = sub_1C4B089D4(&qword_1EDDE1C60);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B089D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SGContactSourceIngestor();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4B08A3C(void *a1)
{
  v1 = [a1 bundleId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C4B08AA0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_1C4409678((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1C467BF20(v5, v6);
  }

  else
  {
    swift_unknownObjectRetain();

    return sub_1C467BF1C(v5, a2);
  }
}

uint64_t sub_1C4B08B2C()
{
  v1 = sub_1C45B1F9C(v0, &selRef_title);
  v3 = sub_1C441C460(v1, v2);
  if (v5)
  {
    v6 = 0xE000000000000000;
  }

  else
  {
    v6 = v4;
  }

  MEMORY[0x1C6940010](v3, v6);

  v7 = sub_1C45B1F9C(v0, &selRef_notes);
  v9 = sub_1C441C460(v7, v8);
  if (v5)
  {
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = v10;
  }

  MEMORY[0x1C6940010](v9, v11);

  v12 = sub_1C45B1F9C(v0, &selRef_uniqueKey);
  v14 = sub_1C441C460(v12, v13);
  if (v5)
  {
    v16 = 0xE000000000000000;
  }

  else
  {
    v16 = v15;
  }

  MEMORY[0x1C6940010](v14, v16);

  sub_1C465B58C();
  swift_allocError();
  *v17 = 0;
  return swift_willThrow();
}

uint64_t sub_1C4B08CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a3;
  v4[26] = v3;
  v4[23] = a1;
  v4[24] = a2;
  return sub_1C43FEB04();
}

uint64_t sub_1C4B08CC8()
{
  sub_1C4404D98();
  if (!sub_1C4B0E7B0(*(v0 + 208)) || (v1 = sub_1C4428DA0(), , !v1))
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDE2DE10);
    v7 = sub_1C4F00968();
    v8 = sub_1C4F01CF8();
    if (sub_1C4402B64(v8))
    {
      *swift_slowAlloc() = 0;
      sub_1C43FFFD8(&dword_1C43F8000, v9, v10, "SGEvent has no associated address");
      sub_1C43FBE2C();
    }

    sub_1C43FBCF0();
    sub_1C4402234();

    __asm { BRAA            X2, X16 }
  }

  v2 = *(v0 + 208);
  sub_1C4B09728();
  v4 = v3;
  *(v0 + 216) = sub_1C4B08B2C();
  *(v0 + 224) = v5;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 136) = 0xD000000000000011;
  *(v0 + 144) = 0x80000001C4FB1830;
  v13 = swift_task_alloc();
  *(v13 + 16) = v0 + 136;
  v14 = sub_1C44CE068(sub_1C44CE790, v13, v4);

  if (v14)
  {
    v15 = swift_task_alloc();
    *(v0 + 232) = v15;
    *v15 = v0;
    v15[1] = sub_1C4B08F98;
    v16 = *(v0 + 200);
    v17 = *(v0 + 208);
    v18 = *(v0 + 192);
    sub_1C4402234();

    return sub_1C4B0999C();
  }

  else
  {
    v21 = swift_task_alloc();
    *(v0 + 256) = v21;
    *v21 = v0;
    v21[1] = sub_1C4B092F4;
    v22 = *(v0 + 200);
    v23 = *(v0 + 208);
    v24 = *(v0 + 184);
    v25 = *(v0 + 192);
    sub_1C4402234();

    return sub_1C4B0BBF4();
  }
}

uint64_t sub_1C4B08F98()
{
  sub_1C43FCF70();
  sub_1C441246C();
  v4 = v3;
  sub_1C43FBE64();
  *v5 = v4;
  v7 = *(v6 + 232);
  v8 = *v2;
  sub_1C43FBDAC();
  *v9 = v8;
  v4[30] = v0;

  if (v0)
  {
    v10 = v4[28];
  }

  else
  {
    v4[31] = v1;
  }

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C4B090A8()
{
  sub_1C4404D98();
  v1 = *(v0 + 248);
  v2 = type metadata accessor for SGEventStructs.TransportationActivity(0);
  v3 = sub_1C4B0E94C(&unk_1EC0C3490, type metadata accessor for SGEventStructs.TransportationActivity);
  sub_1C4423A0C(v0 + 16, &qword_1EC0C3480, &unk_1C4F40B58);
  *(v0 + 16) = v1;
  *(v0 + 24) = *(v0 + 168);
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  v4 = *(v0 + 240);
  sub_1C44306F8();
  if (*(v0 + 120))
  {
    v5 = *(v0 + 216);
    sub_1C441D670((v0 + 96), v0 + 56);
    v6 = *(v0 + 88);
    sub_1C4409678((v0 + 56), *(v0 + 80));
    v7 = sub_1C440D7A8();
    v9 = v8(v7);
    v10 = *(v0 + 224);
    sub_1C4423A0C(v0 + 16, &qword_1EC0C3480, &unk_1C4F40B58);

    sub_1C440962C((v0 + 56));
    if (v4)
    {
      sub_1C43FC560();

      return v11();
    }
  }

  else
  {
    v13 = *(v0 + 224);

    sub_1C4423A0C(v0 + 96, &qword_1EC0C3480, &unk_1C4F40B58);
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDE2DE10);
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CF8();
    if (sub_1C4402B64(v16))
    {
      *swift_slowAlloc() = 0;
      sub_1C43FFFD8(&dword_1C43F8000, v17, v18, "No event could be extracfted from SGEvent");
      sub_1C43FBE2C();
    }

    sub_1C4423A0C(v0 + 16, &qword_1EC0C3480, &unk_1C4F40B58);
    v9 = MEMORY[0x1E69E7CC0];
  }

  sub_1C43FBCF0();

  return v19(v9);
}

uint64_t sub_1C4B092F4()
{
  sub_1C43FCF70();
  sub_1C441246C();
  v4 = v3;
  sub_1C43FBE64();
  *v5 = v4;
  v7 = *(v6 + 256);
  v8 = *v2;
  sub_1C43FBDAC();
  *v9 = v8;
  v4[33] = v0;

  if (v0)
  {
    v10 = v4[28];
  }

  else
  {
    v4[34] = v1;
  }

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C4B09404()
{
  sub_1C4404D98();
  v1 = *(v0 + 272);
  v2 = type metadata accessor for SGEventStructs.CalendarEvent(0);
  v3 = sub_1C4B0E94C(&qword_1EC0C3488, type metadata accessor for SGEventStructs.CalendarEvent);
  sub_1C4423A0C(v0 + 16, &qword_1EC0C3480, &unk_1C4F40B58);
  *(v0 + 16) = v1;
  *(v0 + 24) = *(v0 + 152);
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  v4 = *(v0 + 264);
  sub_1C44306F8();
  if (*(v0 + 120))
  {
    v5 = *(v0 + 216);
    sub_1C441D670((v0 + 96), v0 + 56);
    v6 = *(v0 + 88);
    sub_1C4409678((v0 + 56), *(v0 + 80));
    v7 = sub_1C440D7A8();
    v9 = v8(v7);
    v10 = *(v0 + 224);
    sub_1C4423A0C(v0 + 16, &qword_1EC0C3480, &unk_1C4F40B58);

    sub_1C440962C((v0 + 56));
    if (v4)
    {
      sub_1C43FC560();

      return v11();
    }
  }

  else
  {
    v13 = *(v0 + 224);

    sub_1C4423A0C(v0 + 96, &qword_1EC0C3480, &unk_1C4F40B58);
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDE2DE10);
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CF8();
    if (sub_1C4402B64(v16))
    {
      *swift_slowAlloc() = 0;
      sub_1C43FFFD8(&dword_1C43F8000, v17, v18, "No event could be extracfted from SGEvent");
      sub_1C43FBE2C();
    }

    sub_1C4423A0C(v0 + 16, &qword_1EC0C3480, &unk_1C4F40B58);
    v9 = MEMORY[0x1E69E7CC0];
  }

  sub_1C43FBCF0();

  return v19(v9);
}

uint64_t sub_1C4B09650()
{
  sub_1C43FBCD4();
  sub_1C4423A0C(v0 + 16, &qword_1EC0C3480, &unk_1C4F40B58);
  v1 = *(v0 + 240);
  sub_1C43FBDA0();

  return v2();
}

uint64_t sub_1C4B096BC()
{
  sub_1C43FBCD4();
  sub_1C4423A0C(v0 + 16, &qword_1EC0C3480, &unk_1C4F40B58);
  v1 = *(v0 + 264);
  sub_1C43FBDA0();

  return v2();
}

void sub_1C4B09728()
{
  v1 = sub_1C4B0E744(v0);
  if (v1)
  {
    v2 = v1;
    v3 = 0;
    v4 = *(v1 + 16);
    v24 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v4 == v3)
      {

        return;
      }

      if (v3 >= *(v2 + 16))
      {
        __break(1u);
        return;
      }

      v5 = *(v2 + 8 * v3 + 32);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02198();
      if (!*(v5 + 16))
      {
        break;
      }

      v6 = sub_1C457AA70(v25);
      if ((v7 & 1) == 0)
      {
        break;
      }

      sub_1C442B870(*(v5 + 56) + 32 * v6, v26);
      sub_1C457E804(v25);
      if (swift_dynamicCast())
      {
        v25[0] = 0x6570797440;
        v25[1] = 0xE500000000000000;
        sub_1C4415EA8();
        v8 = sub_1C4F02058();

        v9 = *(v8 + 16);
        if (!v9)
        {

          goto LABEL_11;
        }

        v10 = (v8 + 32 * v9);
        v21 = v10[1];
        v22 = *v10;
        v11 = v10[3];
        v20 = v10[2];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        v12 = MEMORY[0x1C693FEF0](v22, v21, v20, v11);
        v23 = v13;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = *(v24 + 16);
          sub_1C443D664();
          v24 = v18;
        }

        v15 = *(v24 + 16);
        v14 = *(v24 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1C43FCFE8(v14);
          sub_1C443D664();
          v24 = v19;
        }

        ++v3;
        *(v24 + 16) = v15 + 1;
        v16 = v24 + 16 * v15;
        *(v16 + 32) = v12;
        *(v16 + 40) = v23;
      }

      else
      {

LABEL_11:
        ++v3;
      }
    }

    sub_1C457E804(v25);
    goto LABEL_11;
  }
}

uint64_t sub_1C4B0999C()
{
  sub_1C43FBCD4();
  v28 = *MEMORY[0x1E69E9840];
  v1[50] = v2;
  v1[51] = v0;
  v1[48] = v3;
  v1[49] = v4;
  v1[47] = v5;
  v6 = *(*(sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610) - 8) + 64);
  v1[52] = sub_1C43FBE7C();
  v7 = sub_1C4EF9648();
  v1[53] = v7;
  sub_1C43FCF7C(v7);
  v1[54] = v8;
  v10 = *(v9 + 64);
  v1[55] = sub_1C43FBE7C();
  v11 = sub_1C4EF9F88();
  v1[56] = v11;
  sub_1C43FCF7C(v11);
  v1[57] = v12;
  v14 = *(v13 + 64);
  v1[58] = sub_1C43FBE7C();
  v15 = sub_1C4EF9CD8();
  v1[59] = v15;
  sub_1C43FCF7C(v15);
  v1[60] = v16;
  v18 = *(v17 + 64) + 15;
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v19 = sub_1C4EF98F8();
  v1[63] = v19;
  sub_1C43FCF7C(v19);
  v1[64] = v20;
  v22 = *(v21 + 64);
  v1[65] = sub_1C43FBE7C();
  v23 = *MEMORY[0x1E69E9840];
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

uint64_t sub_1C4B0A270()
{
  sub_1C43FCF70();
  v3 = v2;
  v16 = *MEMORY[0x1E69E9840];
  v4 = *v1;
  sub_1C43FBE64();
  *v5 = v4;
  v7 = *(v6 + 544);
  v8 = *v1;
  sub_1C43FBDAC();
  *v9 = v8;
  v4[69] = v0;

  if (v0)
  {
    v10 = v4[67];
  }

  else
  {
    v4[70] = v3;
  }

  v11 = *MEMORY[0x1E69E9840];
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C4B0A3B4()
{
  v327 = *MEMORY[0x1E69E9840];
  v2 = v0[66];
  v3 = v0[51];
  v4 = *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs22TransportationActivity_hasLocationRelationship);
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs22TransportationActivity_hasLocationRelationship) = v0[70];

  sub_1C4E61AF0();
  v5 = v3;
  sub_1C4B09728();
  v6 = *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs22TransportationActivity_sgeventType);
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs22TransportationActivity_sgeventType) = v7;

  v8 = sub_1C4B0E8F4(v3);
  if (!v8)
  {
    __break(1u);
  }

  v9 = v8;
  *&v320 = *(v8 + 16);
  if (!v320)
  {
LABEL_20:
    v28 = v0[67];

LABEL_21:
    v29 = v0[65];
    v31 = v0[61];
    v30 = v0[62];
    v32 = v0[58];
    v33 = v0[55];
    v34 = v0[52];

    sub_1C43FBCF0();
    v36 = v0[66];
    v37 = *MEMORY[0x1E69E9840];

    return v35(v36);
  }

  v10 = 0;
  v318 = v8 + 32;
  v11 = MEMORY[0x1E69E7CC0];
  v315 = v8;
  v316 = v0;
  while (1)
  {
    if (v10 >= *(v9 + 16))
    {
      __break(1u);
      goto LABEL_113;
    }

    v12 = *(v318 + 16 * v10 + 8);
    v0[26] = *(v318 + 16 * v10);
    v0[27] = v12;
    v13 = sub_1C4415EA8();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v317 = v13;
    v1 = sub_1C4F02058();
    v14 = *(v1 + 16);
    if (v14)
    {
      v323 = v10;
      sub_1C44CD9C0();
      v15 = 0;
      v5 = v11;
      v16 = (v1 + 56);
      while (v15 < *(v1 + 16))
      {
        v17 = *(v16 - 3);
        v18 = *(v16 - 2);
        v20 = *(v16 - 1);
        v19 = *v16;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v21 = MEMORY[0x1C693FEF0](v17, v18, v20, v19);
        v23 = v22;

        v25 = v5[2];
        v24 = v5[3];
        if (v25 >= v24 >> 1)
        {
          sub_1C43FCFE8(v24);
          sub_1C44CD9C0();
        }

        ++v15;
        v5[2] = v25 + 1;
        v26 = &v5[2 * v25];
        v26[4] = v21;
        v26[5] = v23;
        v16 += 4;
        if (v14 == v15)
        {

          v9 = v315;
          v0 = v316;
          v11 = MEMORY[0x1E69E7CC0];
          v10 = v323;
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

    v5 = v11;
LABEL_13:
    if (v5[2] == 2)
    {
      v27 = v5[4] == 20307 && v5[5] == 0xE200000000000000;
      if (v27 || (sub_1C4F02938() & 1) != 0)
      {
        break;
      }
    }

    ++v10;

    if (v10 == v320)
    {
      goto LABEL_20;
    }
  }

  v39 = v0[67];

  sub_1C45A323C(1, 1, v5);
  v16 = v5[6];
  v15 = v5[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v40 = sub_1C4F00978();
  sub_1C442B738(v40, qword_1EDE2DE10);
  sub_1C44042C4();
  v41 = swift_allocObject();
  *(v41 + 16) = v16;
  *(v41 + 24) = v15;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v42 = sub_1C4F00968();
  v43 = sub_1C4F01CC8();
  v44 = sub_1C440F54C();
  *(v44 + 16) = 32;
  v45 = sub_1C440F54C();
  *(v45 + 16) = 8;
  sub_1C44042C4();
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1C4AD7104;
  *(v46 + 24) = v41;
  sub_1C44042C4();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_1C4AD71F0;
  *(v47 + 24) = v46;
  sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
  inited = swift_initStackObject();
  v320 = xmmword_1C4F0C890;
  *(inited + 16) = xmmword_1C4F0C890;
  *(inited + 32) = sub_1C44549EC;
  *(inited + 40) = v44;
  *(inited + 48) = sub_1C44549F4;
  *(inited + 56) = v45;
  *(inited + 64) = sub_1C4454B88;
  *(inited + 72) = v47;
  swift_setDeallocating();
  sub_1C49E1614();
  if (os_log_type_enabled(v42, v43))
  {
    v49 = swift_slowAlloc();
    v325 = swift_slowAlloc();
    *v49 = 136315138;
    v50 = sub_1C43FE5F8();
    *(v49 + 4) = sub_1C441D828(v50, v51, v52);
    _os_log_impl(&dword_1C43F8000, v42, v43, "SGEventExtenstion: schema.org tag value (%s)", v49, 0xCu);
    sub_1C440962C(v325);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v53 = objc_opt_self();
  swift_bridgeObjectRetain_n();
  sub_1C43FE5F8();
  sub_1C4B3C50C();
  v55 = v54;
  v57 = v56;
  v58 = sub_1C4EF9A38();
  sub_1C4434000(v55, v57);
  v316[45] = 0;
  v59 = [v53 JSONObjectWithData:v58 options:0 error:v316 + 45];

  v60 = v316[45];
  if (!v59)
  {
    v80 = v316[66];
    v81 = v60;

    sub_1C4EF97A8();

    swift_willThrow();

    v82 = v316;
    goto LABEL_37;
  }

  v61 = v60;
  sub_1C4F02078();
  swift_unknownObjectRelease();
  sub_1C456902C(&qword_1EC0C34A0, &qword_1C4F3EFE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_41:
    sub_1C44042C4();
    v91 = swift_allocObject();
    *(v91 + 16) = v16;
    *(v91 + 24) = v15;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v92 = sub_1C4F00968();
    v93 = sub_1C4F01CD8();
    v94 = sub_1C440F54C();
    *(v94 + 16) = 32;
    v95 = sub_1C440F54C();
    *(v95 + 16) = 8;
    sub_1C44042C4();
    v96 = swift_allocObject();
    *(v96 + 16) = sub_1C4B00DB4;
    *(v96 + 24) = v91;
    sub_1C44042C4();
    v97 = swift_allocObject();
    *(v97 + 16) = sub_1C4B0E9F8;
    *(v97 + 24) = v96;
    v98 = swift_initStackObject();
    *(v98 + 16) = v320;
    *(v98 + 32) = sub_1C44549F4;
    *(v98 + 40) = v94;
    *(v98 + 48) = sub_1C44549F4;
    *(v98 + 56) = v95;
    *(v98 + 64) = sub_1C4454C38;
    *(v98 + 72) = v97;
    swift_setDeallocating();
    sub_1C49E1614();
    if (os_log_type_enabled(v92, v93))
    {
      v99 = swift_slowAlloc();
      v326 = swift_slowAlloc();
      *v99 = 136315138;
      v100 = sub_1C43FE5F8();
      v103 = sub_1C441D828(v100, v101, v102);

      *(v99 + 4) = v103;
      _os_log_impl(&dword_1C43F8000, v92, v93, "SGEventExtenstion: schema.org tag value cannot be deserialized: (%s)", v99, 0xCu);
      sub_1C440962C(v326);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v0 = v316;
    goto LABEL_21;
  }

  sub_1C443294C();
  swift_bridgeObjectRelease_n();
  v62 = v316[46];
  sub_1C45A323C(0, 1, v62);
  v323 = v62;
  v63 = *(v62 + 32);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v64 = sub_1C4B0E36C(0x72656469766F7270, 0xE800000000000000, v63);
  if (v64)
  {
    v65 = v64;
    v66 = v316[66];
    v67 = sub_1C440F190();
    v69 = sub_1C4B0E424(v67, v68, v65);
    v71 = v70;

    sub_1C4433DA8(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs22TransportationActivity_iataCode);
    *v72 = v69;
    v72[1] = v71;
  }

  v73 = sub_1C4B0E36C(0x7461767265736572, 0xEE00726F466E6F69, v63);

  if (!v73)
  {
    v104 = v316[69];
LABEL_80:
    v223 = MEMORY[0x1E69E7CC0];
    goto LABEL_81;
  }

  v74 = sub_1C4B0E36C(0x72656469766F7270, 0xE800000000000000, v73);
  if (v74)
  {
    v75 = v74;
    v76 = (v316[66] + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs22TransportationActivity_iataCode);
    v77 = v76[1];
    if (v77)
    {
      v78 = *v76;
      v79 = v76[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      v105 = sub_1C440F190();
      v78 = sub_1C4B0E424(v105, v106, v75);
      v77 = v107;
    }

    v108 = v76[1];
    *v76 = v78;
    v76[1] = v77;
  }

  v109 = v316[66];
  v110 = (v109 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs22TransportationActivity_iataCode);
  v111 = *(v109 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs22TransportationActivity_iataCode + 8);
  if (v111)
  {
    v112 = *v110;
    v113 = v110[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v114 = sub_1C4B0E424(0x754E746867696C66, 0xEC0000007265626DLL, v73);
    v116 = v114;
    if (v115)
    {
      v117 = v316;
      v316[38] = v114;
      v316[39] = v115;
      v316[40] = v112;
      v316[41] = v111;
      v316[42] = 0;
      v316[43] = 0xE000000000000000;
      v313 = v317;
      v314 = v317;
      v116 = v316 + 38;
      v312 = v317;
      v311 = MEMORY[0x1E69E6158];
      sub_1C4F02008();
      sub_1C4404274();
    }

    else
    {

      v112 = 0;
      v117 = v316;
    }

    v118 = (v117[66] + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs22TransportationActivity_flightNumber);
    v119 = v118[1];
    *v118 = v116;
    v118[1] = v112;

    v109 = v117[66];
  }

  v120 = (v109 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs22TransportationActivity_flightNumber);
  v121 = *(v109 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs22TransportationActivity_flightNumber + 8);
  if (v121)
  {
    v122 = v316[52];
    v123 = *v120;
    v316[28] = *v120;
    v316[29] = v121;
    v316[30] = 0x5D392D305E5BLL;
    v316[31] = 0xE600000000000000;
    v316[32] = 0;
    v316[33] = 0xE000000000000000;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v316[34] = v123;
    v316[35] = v121;
    v316[36] = v123;
    v316[37] = v121;
    v124 = sub_1C4EF9E48();
    sub_1C440BAA8(v122, 1, 1, v124);
    sub_1C43FEAF8();
    v125 = MEMORY[0x1E69E6158];
    sub_1C4F02028();
    sub_1C4423A0C(v122, &unk_1EC0B7610, &unk_1C4F17610);
    v313 = v317;
    v314 = v317;
    v311 = v125;
    v312 = v317;
    sub_1C443294C();
    sub_1C4F02008();
    sub_1C4469224();
    v126 = v120[1];
    *v120 = (v316 + 28);
    v120[1] = v316;
  }

  v127 = sub_1C4B0E36C(0x416C617669727261, 0xEE0074726F707269, v73);
  if (v127)
  {
    v128 = v127;
    v321 = v73;
    v129 = sub_1C4413710();
    v131 = sub_1C4B0E424(v129, v130, v128);
    v133 = v132;
    v134 = sub_1C440F190();
    v136 = sub_1C4B0E424(v134, v135, v128);
    v138 = v137;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v139 = sub_1C43FD024();
    MEMORY[0x1C6940010](v139);

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v140 = sub_1C43FD024();
    MEMORY[0x1C6940010](v140);

    if (qword_1EDDE9368 != -1)
    {
      sub_1C441A47C();
      swift_once();
    }

    v141 = v316;
    v142 = v316[69];
    v143 = type metadata accessor for SourceIdPrefix();
    sub_1C442B738(v143, &qword_1EDE2D0C8);
    String.base64EncodedSHA(withPrefix:)();
    sub_1C440A034();
    v144 = type metadata accessor for SGEventStructs.Place(0);
    sub_1C43FD23C(v144);
    swift_allocObject();
    v145 = sub_1C43FD024();
    sub_1C4E59528(v145, v146, v147, v148, v149, v150, v151, v152, v311, v312, v313, v314, v315, v316, v317, v318, v321, 6, v322, v62);
    if (v142)
    {
      v154 = v141[66];

      v82 = v141;
      goto LABEL_37;
    }

    v155 = v153;
    v156 = (v153 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs5Place_name);
    v157 = *(v153 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs5Place_name + 8);
    *v156 = v131;
    v156[1] = v133;

    v318 = v155;
    v158 = (v155 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs5Place_iataCode);
    v159 = *(v155 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs5Place_iataCode + 8);
    *v158 = v136;
    v158[1] = v138;

    v160 = type metadata accessor for SGEventStructs.LocationRelationshipType(0);
    sub_1C43FD23C(v160);
    swift_allocObject();
    sub_1C4E58DE0();
    v161 = sub_1C4415BDC();
    v162 = v161;
    if (v161)
    {
      v163 = [v161 stringValue];

      sub_1C4F01138();
      sub_1C4404274();
    }

    sub_1C443294C();
    v73 = v320;
    sub_1C440BF18(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs24LocationRelationshipType_latitude);
    *v164 = v162;
    v164[1] = 0;

    v165 = sub_1C4410540();
    v166 = v165;
    if (v165)
    {
      v167 = [v165 stringValue];

      sub_1C4F01138();
      sub_1C4404274();
    }

    sub_1C443F32C();
    sub_1C440BF18(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs24LocationRelationshipType_longitude);
    *v168 = v166;
    v168[1] = 0;

    sub_1C4E526B0(v169);
    sub_1C441B024();
    v173 = sub_1C4B0E36C(v170, v171, v172);
    if (v173)
    {
      v174 = v173;
      v175 = type metadata accessor for SGEventStructs.AddressRelationshipType(0);
      sub_1C43FD23C(v175);
      v176 = swift_allocObject();
      v177 = sub_1C4E560A4();
      v178 = sub_1C44052CC();
      sub_1C44079F0(v178, v179);

      v180 = sub_1C43FD574();
      v182 = sub_1C4B0E36C(v180, v181, v174);
      if (v182)
      {
        v176 = v182;
        v183 = sub_1C4413710();
        sub_1C4B0E424(v183, v184, v176);
        sub_1C440A034();
        v185 = (v177 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs23AddressRelationshipType_country);
        v186 = *(v177 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs23AddressRelationshipType_country + 8);
        *v185 = v318;
        v185[1] = 0;
      }

      v187 = sub_1C43FD574();
      v189 = sub_1C4B0E694(v187, v188, v174);
      if (v190)
      {
        sub_1C44079F0(v189, v190);
      }

      sub_1C4426D9C();
      sub_1C4469224();
      v191 = (v177 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs23AddressRelationshipType_postalCode);
      v192 = *(v177 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs23AddressRelationshipType_postalCode + 8);
      *v191 = v176;
      v191[1] = v318;

      sub_1C4E526D8(v193);

      sub_1C443294C();
      v73 = v320;
      sub_1C443F32C();
    }

    sub_1C441B024();
    sub_1C4B0E694(v194, v195, v196);
    sub_1C4404274();

    v197 = v316[66];

    sub_1C4E52700(v198);

    v104 = 0;
  }

  else
  {
    v104 = v316[69];
  }

  v199 = sub_1C4B0E36C(0xD000000000000010, 0x80000001C4FB1850, v73);

  if (!v199)
  {
    goto LABEL_80;
  }

  v200 = sub_1C4413710();
  v202 = sub_1C4B0E424(v200, v201, v199);
  v1 = v203;
  v204 = sub_1C440F190();
  v206 = sub_1C4B0E424(v204, v205, v199);
  v208 = v207;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v209 = sub_1C43FD024();
  MEMORY[0x1C6940010](v209);

  if (v208)
  {
    v0 = v206;
  }

  else
  {
    v0 = 0;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v210 = sub_1C43FD024();
  MEMORY[0x1C6940010](v210);

  if (qword_1EDDE9368 != -1)
  {
    sub_1C441A47C();
    swift_once();
  }

  v211 = type metadata accessor for SourceIdPrefix();
  sub_1C442B738(v211, &qword_1EDE2D0C8);
  String.base64EncodedSHA(withPrefix:)();
  sub_1C440A034();
  v212 = type metadata accessor for SGEventStructs.Place(0);
  sub_1C43FD23C(v212);
  swift_allocObject();
  v213 = sub_1C43FD024();
  sub_1C4E59528(v213, v214, v215, v216, v217, v218, v219, v220, v311, v312, v313, v314, v315, v316, v317, v318, v202, *(&v320 + 1), v322, v323);
  if (v104)
  {
    v82 = v316;
    v222 = v316[66];

    goto LABEL_37;
  }

  v278 = (v221 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs5Place_iataCode);
  v279 = *(v221 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs5Place_iataCode + 8);
  *v278 = v206;
  v278[1] = v208;

  sub_1C442F390(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs5Place_name);
  *v280 = v320;
  v280[1] = v1;

  v281 = type metadata accessor for SGEventStructs.LocationRelationshipType(0);
  sub_1C43FD23C(v281);
  swift_allocObject();
  sub_1C4E58DE0();
  v282 = sub_1C4415BDC();
  v5 = v282;
  if (v282)
  {
    v0 = [v282 stringValue];

    sub_1C4F01138();
    sub_1C4404274();
  }

LABEL_113:
  v223 = MEMORY[0x1E69E7CC0];
  sub_1C440BF18(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs24LocationRelationshipType_latitude);
  *v283 = v5;
  v283[1] = 0;

  v284 = sub_1C4410540();
  v285 = v284;
  if (v284)
  {
    v0 = [v284 stringValue];

    sub_1C4F01138();
    sub_1C4404274();
  }

  sub_1C44507B8();
  sub_1C440BF18(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs24LocationRelationshipType_longitude);
  *v286 = v285;
  v286[1] = 0;

  sub_1C4E526B0(v287);
  sub_1C441B024();
  v291 = sub_1C4B0E36C(v288, v289, v290);
  if (v291)
  {
    v292 = v291;
    sub_1C443F32C();
    v293 = v1 & 0xFFFFFFFFFFFFLL | 0x4373000000000000;
    v294 = type metadata accessor for SGEventStructs.AddressRelationshipType(0);
    sub_1C43FD23C(v294);
    v295 = swift_allocObject();
    sub_1C4E560A4();
    v296 = sub_1C44052CC();
    sub_1C44079F0(v296, v297);

    v298 = sub_1C4B0E36C(v293, 0xEE007972746E756FLL, v292);
    if (v298)
    {
      v295 = v298;
      v299 = sub_1C4413710();
      sub_1C4B0E424(v299, v300, v295);
      sub_1C440A034();
      sub_1C442F390(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs23AddressRelationshipType_country);
      *v301 = v0;
      v301[1] = 0;
    }

    v302 = sub_1C4B0E694(v293, 0xEE007972746E756FLL, v292);
    if (v303)
    {
      sub_1C44079F0(v302, v303);
    }

    sub_1C4426D9C();
    sub_1C4469224();
    sub_1C442F390(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs23AddressRelationshipType_postalCode);
    *v304 = v295;
    v304[1] = v0;

    sub_1C4E526D8(v305);

    sub_1C44507B8();
  }

  sub_1C441B024();
  sub_1C4B0E694(v306, v307, v308);
  sub_1C4404274();

  v309 = v316[66];

  sub_1C4E52728(v310);

  v104 = 0;
LABEL_81:
  v324 = v223;
  *&v320 = *(v323 + 16);
  if (!v320)
  {
LABEL_108:
    v0 = v316;
    v275 = v316[66];

    v276 = *(v275 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs22TransportationActivity_hasAttendee);
    *(v275 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs22TransportationActivity_hasAttendee) = v223;

    sub_1C4E61B68();
    goto LABEL_21;
  }

  v224 = 0;
  while (1)
  {
    sub_1C45A323C(v224, 1, v323);
    v225 = *(v323 + 8 * v224 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v226 = sub_1C4B0E36C(0x6465767265736572, 0xEE0074656B636954, v225);
    v319 = v223;
    if (v226)
    {
      v227 = v226;
      v228 = sub_1C442E520();
      v230 = sub_1C4B0E36C(v228, v229, v227);
      if (v230)
      {
        v231 = v230;
        v232 = sub_1C4413710();
        v234 = sub_1C4B0E694(v232, v233, v231);
        v236 = v235;
      }

      else
      {
        v234 = 0;
        v236 = 0;
      }

      v237 = sub_1C442E520();
      v239 = sub_1C4B0E694(v237, v238, v227);
      v241 = v240;

      if (v241)
      {

        v234 = v239;
        v236 = v241;
      }
    }

    else
    {
      v234 = 0;
      v236 = 0;
    }

    v242 = sub_1C442E520();
    v244 = sub_1C4B0E36C(v242, v243, v225);
    if (v244)
    {
      v245 = v244;
      if (!v236)
      {
        v246 = sub_1C4413710();
        v234 = sub_1C4B0E694(v246, v247, v245);
        v236 = v248;
      }
    }

    v249 = sub_1C442E520();
    v251 = sub_1C4B0E694(v249, v250, v225);
    v253 = v252;

    if (v253)
    {

      v234 = v251;
      v236 = v253;
    }

    v254 = v316[47];
    v255 = v316[48];
    if (v236)
    {
      v256 = v234;
    }

    else
    {
      v256 = 0;
    }

    if (v236)
    {
      v257 = v236;
    }

    else
    {
      v257 = 0xE000000000000000;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v256, v257);

    MEMORY[0x1C6940010](v254, v255);
    if (qword_1EDDE9228 != -1)
    {
      swift_once();
    }

    v258 = type metadata accessor for SourceIdPrefix();
    sub_1C442B738(v258, qword_1EDE2CEE8);
    String.base64EncodedSHA(withPrefix:)();
    sub_1C440A034();
    v259 = type metadata accessor for SGEventStructs.Person(0);
    sub_1C43FD23C(v259);
    swift_allocObject();
    v260 = sub_1C43FD024();
    sub_1C4E5E3CC(v260, v261, v262, v263, v264, v265, v266, v267, v311, v312, v313, v314, v315, v316, v317, v319, v320, *(&v320 + 1), v322, v323);
    if (v104)
    {
      break;
    }

    v269 = (v268 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs6Person_name);
    v270 = *(v268 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs6Person_name + 8);
    *v269 = v234;
    v269[1] = v236;

    v271 = type metadata accessor for SGEventStructs.ParticipationRelationshipType(0);
    sub_1C43FD23C(v271);
    swift_allocObject();
    sub_1C4E6159C();

    v273 = sub_1C4E52750(v272);
    MEMORY[0x1C6940330](v273);
    v274 = *((v324 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v324 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v274 >> 1)
    {
      sub_1C43FCFE8(v274);
      sub_1C4F016D8();
    }

    ++v224;
    sub_1C4F01748();
    v223 = v324;

    v104 = 0;
    if (v320 == v224)
    {
      goto LABEL_108;
    }
  }

  v82 = v316;
  v277 = v316[66];

LABEL_37:
  v83 = v82[65];
  v84 = v82[61];
  v85 = v82[62];
  v86 = v82[58];
  v87 = v82[55];
  v88 = v316[52];

  sub_1C43FBDA0();
  v90 = *MEMORY[0x1E69E9840];

  return v89();
}

void sub_1C4B0BB1C()
{
  sub_1C4404D98();
  v12 = *MEMORY[0x1E69E9840];
  v1 = v0[66];

  v2 = v0[69];
  v3 = v0[65];
  v5 = v0[61];
  v4 = v0[62];
  v6 = v0[58];
  v7 = v0[55];
  v8 = v0[52];

  sub_1C43FBDA0();
  v9 = *MEMORY[0x1E69E9840];
  sub_1C4402234();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C4B0BBF4()
{
  sub_1C43FBCD4();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v7 = sub_1C4EF9648();
  v1[9] = v7;
  sub_1C43FCF7C(v7);
  v1[10] = v8;
  v10 = *(v9 + 64);
  v1[11] = sub_1C43FBE7C();
  v11 = sub_1C4EF9F88();
  v1[12] = v11;
  sub_1C43FCF7C(v11);
  v1[13] = v12;
  v14 = *(v13 + 64);
  v1[14] = sub_1C43FBE7C();
  v15 = sub_1C4EF9CD8();
  v1[15] = v15;
  sub_1C43FCF7C(v15);
  v1[16] = v16;
  v18 = *(v17 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v19 = sub_1C4EF98F8();
  v1[21] = v19;
  sub_1C43FCF7C(v19);
  v1[22] = v20;
  v22 = *(v21 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v23, v24, v25);
}

uint64_t sub_1C4B0C438()
{
  sub_1C43FCF70();
  sub_1C441246C();
  v4 = v3;
  sub_1C43FBE64();
  *v5 = v4;
  v7 = *(v6 + 208);
  v8 = *v2;
  sub_1C43FBDAC();
  *v9 = v8;
  *(v4 + 216) = v0;

  if (!v0)
  {
    *(v4 + 224) = v1;
  }

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C4B0C540()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[5];
  v4 = *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs13CalendarEvent_hasLocationRelationship);
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs13CalendarEvent_hasLocationRelationship) = v0[28];

  sub_1C4E67914();
  v5 = sub_1C4B0DF70(v3);
  if (v1)
  {
    v6 = v0[25];

    v8 = v0[23];
    v7 = v0[24];
    v10 = v0[19];
    v9 = v0[20];
    sub_1C44346D0();

    sub_1C43FC560();

    return v11();
  }

  else
  {
    v14 = v0[23];
    v13 = v0[24];
    v16 = v0[19];
    v15 = v0[20];
    v18 = v0[17];
    v17 = v0[18];
    v19 = v0[14];
    v20 = v0[11];
    sub_1C4E525E8(v5);

    sub_1C43FBCF0();
    v22 = v0[25];

    return v21(v22);
  }
}

uint64_t sub_1C4B0C6D4()
{
  sub_1C4404D98();
  v1 = v0[25];

  v2 = v0[27];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[19];
  v5 = v0[20];
  sub_1C44346D0();

  sub_1C43FBDA0();

  return v7();
}

uint64_t sub_1C4B0C78C()
{
  v1 = v0;
  v2 = sub_1C4EF9F88();
  v3 = sub_1C43FCDF8(v2);
  v55 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = sub_1C4EF9CD8();
  v8 = sub_1C43FCDF8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v54 - v21;
  v23 = type metadata accessor for SGEventStructs.DateRelationshipType(0);
  sub_1C43FD23C(v23);
  swift_allocObject();
  v24 = sub_1C4E5D5CC();
  v25 = [v0 start];
  if (v25)
  {
    v26 = v25;
    sub_1C4EF9C78();

    (*(v10 + 32))(v22, v19, v7);
    LOBYTE(v26) = [v1 isAllDay];
    sub_1C4EF9F58();
    v27 = Date.dateComponentsJSONString(isAllDay:calendar:)(v26);
    v29 = v28;
    v30 = *(v55 + 8);
    v31 = sub_1C44057DC();
    v32(v31);
    sub_1C4433DA8(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs20DateRelationshipType_startTime);
    *v33 = v27;
    v33[1] = v29;

    sub_1C4EF9AD8();
    v34 = sub_1C4F019E8();
    v36 = v35;
    (*(v10 + 8))(v22, v7);
    sub_1C4433DA8(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs20DateRelationshipType_imputedStartTime);
    *v37 = v34;
    v37[1] = v36;
  }

  v38 = v55;
  v39 = [v1 end];
  if (v39)
  {
    v40 = v39;
    v41 = v54;
    sub_1C4EF9C78();

    (*(v10 + 32))(v16, v41, v7);
    LOBYTE(v40) = [v1 isAllDay];
    sub_1C4EF9F58();
    v42 = Date.dateComponentsJSONString(isAllDay:calendar:)(v40);
    v44 = v43;
    v45 = *(v38 + 8);
    v46 = sub_1C44057DC();
    v47(v46);
    sub_1C4433DA8(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs20DateRelationshipType_endTime);
    *v48 = v42;
    v48[1] = v44;

    sub_1C4EF9AD8();
    v49 = sub_1C4F019E8();
    v51 = v50;
    (*(v10 + 8))(v16, v7);
    sub_1C4433DA8(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs20DateRelationshipType_imputedEndTime);
    *v52 = v49;
    v52[1] = v51;
  }

  return v24;
}

uint64_t sub_1C4B0CB20(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0x7261646E656C6143;
  switch(v1)
  {
    case 0:
      result = 1818845517;
      break;
    case 1:
      result = 0x746361746E6F43;
      break;
    case 2:
      return result;
    case 3:
      v3 = 1936942413;
      goto LABEL_9;
    case 4:
      result = 0x7463617265746E49;
      break;
    case 5:
      result = 0x724F616D65686353;
      break;
    case 6:
      v3 = 1348625751;
LABEL_9:
      result = v3 | 0x65676100000000;
      break;
    default:
      result = 0x6E776F6E6B6E55;
      break;
  }

  return result;
}

uint64_t sub_1C4B0CC04(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return sub_1C43FEB04();
}

uint64_t sub_1C4B0CC1C()
{
  v88 = v0;
  *(v0 + 144) = MEMORY[0x1E69E7CC0];
  v1 = v0 + 144;
  v2 = sub_1C4B0E7B0(*(v0 + 176));
  *(v0 + 184) = v2;
  if (!v2)
  {
LABEL_41:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v2);
  }

  v3 = sub_1C4428DA0();
  *(v0 + 192) = v3;
  if (!v3)
  {
LABEL_34:

    sub_1C43FBCF0();
    sub_1C43FD0C0();

    __asm { BRAA            X2, X16 }
  }

  v4 = 0;
  v78 = v0 + 80;
  for (i = &selRef_address; ; i = v57)
  {
    v6 = *(v0 + 184) & 0xC000000000000001;
    sub_1C4431590(v4, v6 == 0);
    v7 = *(v0 + 184);
    if (v6)
    {
      v2 = MEMORY[0x1C6940F90](v4, v7);
    }

    else
    {
      v2 = *(v7 + 8 * v4 + 32);
    }

    v8 = v2;
    *(v0 + 200) = v2;
    *(v0 + 208) = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    *(v0 + 80) = 0;
    *(v0 + 88) = 0xE000000000000000;
    v9 = sub_1C45B1F9C(v2, i);
    v11 = sub_1C441C460(v9, v10);
    if (v13)
    {
      v14 = 0xE000000000000000;
    }

    else
    {
      v14 = v12;
    }

    MEMORY[0x1C6940010](v11, v14);

    [v8 latitude];
    sub_1C4F01A28();
    [v8 longitude];
    sub_1C4F01A28();
    v16 = *(v0 + 80);
    v15 = *(v0 + 88);
    if (qword_1EDDE9368 != -1)
    {
      sub_1C441A47C();
      swift_once();
    }

    v17 = type metadata accessor for SourceIdPrefix();
    sub_1C442B738(v17, &qword_1EDE2D0C8);
    String.base64EncodedSHA(withPrefix:)();
    v19 = v18;
    v21 = v20;

    v22 = type metadata accessor for SGEventStructs.Place(0);
    sub_1C43FD23C(v22);
    swift_allocObject();
    sub_1C4E59528(v19, v21, v23, v24, v25, v26, v27, v28, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
    *(v0 + 216) = v29;
    *(v0 + 224) = 0;
    v30 = sub_1C45B1F9C(v8, i);
    if (v31)
    {
      sub_1C44079F0(v30, v31);
    }

    v32 = *(v0 + 168);
    if (v32)
    {
      break;
    }

LABEL_22:
    v42 = *(v0 + 200);
    v43 = type metadata accessor for SGEventStructs.LocationRelationshipType(0);
    sub_1C43FD23C(v43);
    swift_allocObject();
    sub_1C4E58DE0();
    [v42 latitude];
    sub_1C444FF54();
    if (v44 <= 0x7FEFFFFFFFFFFFFFLL)
    {
      [*(v0 + 200) latitude];
      v45 = sub_1C4F019E8();
      sub_1C44079F0(v45, v46);
    }

    [*(v0 + 200) longitude];
    sub_1C444FF54();
    if (v47 <= 0x7FEFFFFFFFFFFFFFLL)
    {
      [*(v0 + 200) longitude];
      v48 = sub_1C4F019E8();
      sub_1C44079F0(v48, v49);
    }

    v50 = *(v0 + 216);
    v51 = *(v0 + 200);

    sub_1C4E526B0(v52);
    v53 = *(v43 + 48);
    v54 = *(v43 + 52);
    swift_allocObject();
    sub_1C4E58DE0();
    v55 = sub_1C45B1F9C(v51, &selRef_label);
    if (v56)
    {
      sub_1C44079F0(v55, v56);
    }

    v57 = i;
    v58 = *(v0 + 216);

    v60 = sub_1C4E527A0(v59);
    MEMORY[0x1C6940330](v60);
    sub_1C44237E4();
    if (v38)
    {
      sub_1C43FCFE8(v61);
      sub_1C4F016D8();
    }

    v63 = *(v0 + 208);
    v62 = *(v0 + 216);
    v64 = v1;
    v65 = *(v0 + 192);
    v66 = *(v0 + 200);
    sub_1C43FD574();
    v67 = v64;
    sub_1C4F01748();
    v68 = *(v0 + 144);

    if (v63 == v65)
    {
      v69 = *(v0 + 184);
      goto LABEL_34;
    }

    v4 = *(v0 + 208);
    v1 = v67;
  }

  v33 = v32;
  v34 = sub_1C4B0E820(v8);
  v36 = sub_1C444B290(v34, v35);
  if (v38)
  {
    v39 = *(v0 + 168);
LABEL_21:

    goto LABEL_22;
  }

  if (sub_1C488C520(v36, v37))
  {
    v39 = *(v0 + 168);
    v40 = sub_1C43FD574();
    sub_1C441DFEC(v40, v41);
    goto LABEL_21;
  }

  v72 = *(v0 + 168);
  sub_1C43FD574();
  v73 = sub_1C4EF9A38();
  sub_1C445E998(v73);
  *(v0 + 16) = v74;
  *(v0 + 56) = v0 + 152;
  sub_1C4425F48();
  *(v0 + 136) = sub_1C456902C(&unk_1EC0BB3C0, &unk_1C4F1F520);
  sub_1C4433720();
  *(v0 + 88) = 1107296256;
  sub_1C4411158(&unk_1F43FC660);
  [v72 resolveMapItemFromHandle:v1 completionHandler:?];
  sub_1C43FD0C0();

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1C4B0D13C()
{
  sub_1C43FBCD4();
  v1 = *v0;
  sub_1C43FBE64();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 256) = *(v4 + 48);
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4B0D240()
{
  v122 = v0;
  v1 = *(v0 + 152);
  v2 = v0 + 80;
  v3 = v0 + 144;
  v117 = v0 + 152;
  v4 = *(v0 + 248);
  if (v1)
  {

    if ([v1 _hasMUID])
    {
      if (qword_1EDDFECB0 != -1)
      {
LABEL_49:
        swift_once();
      }

      v5 = *(v0 + 200);
      v6 = sub_1C4F00978();
      sub_1C442B738(v6, qword_1EDDFECB8);
      v7 = v5;
      swift_unknownObjectRetain();
      v8 = sub_1C4F00968();
      v9 = sub_1C4F01CC8();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = *(v0 + 200);
        v11 = swift_slowAlloc();
        v121[0] = swift_slowAlloc();
        *v11 = 136380931;
        *(v0 + 80) = sub_1C45B1F9C(v10, &selRef_address);
        *(v0 + 88) = v12;
        sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
        v13 = sub_1C4F01198();
        v15 = v3;
        v16 = sub_1C441D828(v13, v14, v121);

        *(v11 + 4) = v16;
        *(v11 + 12) = 2081;
        v17 = [v1 description];
        v18 = sub_1C4F01138();
        v20 = v19;

        v21 = v18;
        v3 = v15;
        v22 = sub_1C441D828(v21, v20, v121);

        *(v11 + 14) = v22;
        _os_log_impl(&dword_1C43F8000, v8, v9, "GeoMapItem for %{private}s is %{private}s", v11, 0x16u);
        swift_arrayDestroy();
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      v24 = *(v0 + 232);
      v23 = *(v0 + 240);
      v25 = *(v0 + 216);
      v4 = *(v0 + 168);
      v26 = type metadata accessor for SGEventStructs.IdentifierRelationshipType(0);
      sub_1C43FD23C(v26);
      swift_allocObject();
      sub_1C4E5395C();
      *(v0 + 80) = [v1 _muid];
      v27 = sub_1C4F02858();
      sub_1C44079F0(v27, v28);

      sub_1C442F390(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs26IdentifierRelationshipType_identifierType);
      *v29 = xmmword_1C4F1F440;

      sub_1C4E52778(v30);

      swift_unknownObjectRelease();
      v31 = v24;
      v32 = v23;
      goto LABEL_10;
    }

    v35 = *(v0 + 232);
    v33 = *(v0 + 240);
    v4 = *(v0 + 168);
    swift_unknownObjectRelease();
    v31 = v35;
  }

  else
  {
    v34 = *(v0 + 232);
    v33 = *(v0 + 240);

    v31 = v34;
  }

  v32 = v33;
LABEL_10:
  sub_1C441DFEC(v31, v32);

  v36 = *(v0 + 224);
  v37 = type metadata accessor for SGEventStructs.LocationRelationshipType(0);
  v38 = &selRef_localizedName;
  v118 = v37;
  v119 = v2;
  while (1)
  {
    do
    {
      v120 = v36;
      v39 = *(v0 + 200);
      v40 = *(v37 + 48);
      v41 = *(v37 + 52);
      swift_allocObject();
      sub_1C4E58DE0();
      [v39 v38[99]];
      sub_1C444FF54();
      if (v42 <= 0x7FEFFFFFFFFFFFFFLL)
      {
        [*(v0 + 200) v38[99]];
        v43 = sub_1C4F019E8();
        sub_1C44079F0(v43, v44);
      }

      [*(v0 + 200) longitude];
      sub_1C444FF54();
      if (v45 <= 0x7FEFFFFFFFFFFFFFLL)
      {
        [*(v0 + 200) longitude];
        v46 = sub_1C4F019E8();
        sub_1C44079F0(v46, v47);
      }

      v48 = *(v0 + 216);
      v49 = *(v0 + 200);

      sub_1C4E526B0(v50);
      v51 = *(v37 + 48);
      v52 = *(v37 + 52);
      swift_allocObject();
      sub_1C4E58DE0();
      v53 = sub_1C45B1F9C(v49, &selRef_label);
      if (v54)
      {
        sub_1C44079F0(v53, v54);
      }

      v1 = v38;
      v55 = *(v0 + 216);

      v57 = sub_1C4E527A0(v56);
      MEMORY[0x1C6940330](v57);
      v58 = *((*(v0 + 144) & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((*(v0 + 144) & 0xFFFFFFFFFFFFFF8) + 0x10) >= v58 >> 1)
      {
        sub_1C43FCFE8(v58);
        sub_1C4F016D8();
      }

      v59 = v3;
      v60 = *(v0 + 208);
      v3 = *(v0 + 216);
      v62 = *(v0 + 192);
      v61 = *(v0 + 200);
      v63 = v59;
      sub_1C4F01748();
      v64 = *(v0 + 144);

      if (v60 == v62)
      {
        v102 = *(v0 + 184);

        sub_1C43FBCF0();
        sub_1C4409BA4();

        __asm { BRAA            X2, X16 }
      }

      sub_1C4460398();
      v65 = *(v0 + 184);
      if (v61)
      {
        v66 = MEMORY[0x1C6940F90](v59, v65);
      }

      else
      {
        v66 = *(v65 + 8 * v59 + 32);
      }

      v67 = v66;
      v38 = v1;
      *(v0 + 200) = v66;
      *(v0 + 208) = v59 + 1;
      v2 = v119;
      if (__OFADD__(v59, 1))
      {
        __break(1u);
        goto LABEL_49;
      }

      *(v0 + 80) = 0;
      *(v0 + 88) = 0xE000000000000000;
      v68 = sub_1C45B1F9C(v66, &selRef_address);
      v70 = sub_1C441C460(v68, v69);
      if (v72)
      {
        v73 = 0xE000000000000000;
      }

      else
      {
        v73 = v71;
      }

      MEMORY[0x1C6940010](v70, v73);

      [v67 v1 + 504];
      sub_1C4F01A28();
      [v67 longitude];
      sub_1C43FBC98();
      sub_1C4F01A28();
      v75 = *(v0 + 80);
      v74 = *(v0 + 88);
      if (qword_1EDDE9368 != -1)
      {
        sub_1C441A47C();
        swift_once();
      }

      v76 = type metadata accessor for SourceIdPrefix();
      sub_1C442B738(v76, &qword_1EDE2D0C8);
      String.base64EncodedSHA(withPrefix:)();
      v78 = v77;
      v80 = v79;

      v81 = type metadata accessor for SGEventStructs.Place(0);
      sub_1C43FD23C(v81);
      swift_allocObject();
      v82 = v120;
      sub_1C4E59528(v78, v80, v83, v84, v85, v86, v87, v88, v116, v117, v118, v119, v120, v121[0], v121[1], v121[2], v121[3], v121[4], v121[5], v121[6]);
      *(v0 + 216) = v89;
      *(v0 + 224) = v82;
      if (v82)
      {
        v105 = *(v0 + 184);

        sub_1C43FC560();
        sub_1C4409BA4();

        __asm { BRAA            X1, X16 }
      }

      v90 = sub_1C45B1F9C(v67, &selRef_address);
      if (v91)
      {
        sub_1C44079F0(v90, v91);
      }

      v36 = 0;
      v92 = *(v0 + 168);
      v3 = v63;
      v37 = v118;
    }

    while (!v92);
    v93 = v92;
    v94 = sub_1C4B0E820(v67);
    v96 = sub_1C444B290(v94, v95);
    if (v98)
    {
      v99 = *(v0 + 168);
      goto LABEL_38;
    }

    v100 = v96;
    v101 = v97;
    if (!sub_1C488C520(v96, v97))
    {
      break;
    }

    v99 = *(v0 + 168);
    sub_1C441DFEC(v100, v101);
LABEL_38:

    v36 = 0;
  }

  v108 = *(v0 + 168);
  v109 = sub_1C4EF9A38();
  v110 = sub_1C445E998(v109);
  *(v0 + 16) = v111;
  *(v0 + 56) = v117;
  v112 = sub_1C4425F48(v110);
  *(v0 + 136) = sub_1C456902C(&unk_1EC0BB3C0, &unk_1C4F1F520);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1C4B08AA0;
  *(v0 + 104) = &unk_1F43FC660;
  *(v0 + 112) = v112;
  [v108 resolveMapItemFromHandle:v38 completionHandler:v2];
  sub_1C4409BA4();

  return MEMORY[0x1EEE6DEC8](v113);
}

uint64_t sub_1C4B0DF70(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1;
  v3 = sub_1C45B1F9C(v2, &selRef_displayName);
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = 0xE000000000000000;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  v8 = [v2 handleIdentifier];
  v9 = sub_1C4F01138();
  v11 = v10;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v9, v11);

  v12 = [v2 handles];
  v13 = sub_1C4F01678();

  if (v13[2])
  {
    v14 = v13[4];
    v6 = v13[5];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v14 = 0;
  }

  v64 = v7;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v14, v6);

  if (qword_1EDDE9230 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for SourceIdPrefix();
  sub_1C442B738(v16, &qword_1EDE2CF00);
  String.base64EncodedSHA(withPrefix:)();
  v15 = v17;
  v19 = v18;

  v20 = type metadata accessor for SGEventStructs.Person(0);
  sub_1C43FD23C(v20);
  swift_allocObject();
  sub_1C4E5E3CC(v15, v19, v21, v22, v23, v24, v25, v26, v57, v58, v59, v61, v5, v64, v65, v66, v67, v68, v69, v70);
  if (v1)
  {
  }

  else
  {
    v15 = v27;
    v28 = sub_1C45B1F9C(v2, &selRef_displayName);
    sub_1C44079F0(v28, v29);

    v30 = [v2 handleIdentifier];
    v31 = sub_1C4F01138();
    v33 = v32;

    v34 = (v15 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs6Person_handleIdentifier);
    v35 = *(v15 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs6Person_handleIdentifier + 8);
    *v34 = v31;
    v34[1] = v33;

    v36 = MEMORY[0x1E69E7CC0];
    v63 = MEMORY[0x1E69E7CC0];
    v37 = [v2 handles];
    v38 = sub_1C4F01678();

    v39 = *(v38 + 16);
    if (v39)
    {
      v60 = v15;
      v62 = v2;
      v40 = type metadata accessor for SGEventStructs.AddressRelationshipType(0);
      v41 = (v38 + 40);
      do
      {
        v42 = *(v41 - 1);
        v43 = *v41;
        v44 = *(v40 + 48);
        v45 = *(v40 + 52);
        swift_allocObject();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v46 = sub_1C4E560A4();
        v47 = [objc_allocWithZone(MEMORY[0x1E6996728]) init];
        v48 = sub_1C4F01108();
        v49 = [v47 typeOfHandleString_];

        v50 = &OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs23AddressRelationshipType_emailAddress;
        if (v49 != 1)
        {
          v50 = &OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs23AddressRelationshipType_phoneNumber;
        }

        v51 = (v46 + *v50);
        v52 = v51[1];
        *v51 = v42;
        v51[1] = v43;

        MEMORY[0x1C6940330](v53);
        v54 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v54 >> 1)
        {
          sub_1C43FCFE8(v54);
          sub_1C4F016D8();
        }

        sub_1C4F01748();

        v41 += 2;
        --v39;
      }

      while (v39);
      v2 = v62;
      v36 = v63;
      v15 = v60;
    }

    v55 = *(v15 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs6Person_hasContactInformation);
    *(v15 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs6Person_hasContactInformation) = v36;

    sub_1C4E5DD80();
  }

  return v15;
}

uint64_t sub_1C4B0E36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v3 = sub_1C445FAA8(a1, a2), (v4 & 1) != 0))
  {
    sub_1C446C02C(v3, v4, v5, v6, v7, v8, v9);
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v12[0] = v13;
  v12[1] = v14;
  if (*(&v14 + 1))
  {
    sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
    if (swift_dynamicCast())
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C4423A0C(v12, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    return 0;
  }
}

uint64_t sub_1C4B0E424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_1C445FAA8(a1, a2), (v5 & 1) != 0))
  {
    sub_1C442B870(*(a3 + 56) + 32 * v4, &v10);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v7[0] = v10;
  v7[1] = v11;
  if (!*(&v11 + 1))
  {
    sub_1C4423A0C(v7, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    return 0;
  }

  sub_1C44482AC(v7, v9);
  sub_1C442B870(v9, v7);
  if (sub_1C4414698())
  {

    goto LABEL_11;
  }

  sub_1C442B870(v9, &v8);
  sub_1C456902C(&qword_1EC0C34A8, &unk_1C4F51480);
  if (!swift_dynamicCast())
  {
    sub_1C440962C(v9);
    return 0;
  }

  sub_1C440962C(v7);
LABEL_11:
  sub_1C44482AC(v9, v7);
  if (sub_1C4414698())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void *sub_1C4B0E560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v3 = sub_1C445FAA8(a1, a2), (v4 & 1) != 0))
  {
    sub_1C446C02C(v3, v4, v5, v6, v7, v8, v9);
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  sub_1C4B0E994(v17, v15, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  if (!v16)
  {
    sub_1C4423A0C(v15, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_10;
  }

  sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    sub_1C4423A0C(v17, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    return 0;
  }

  v10 = v14;
  v11 = sub_1C4F01EB8();
  v12 = sub_1C4F01EE8();
  sub_1C4423A0C(v17, &qword_1EC0BCD10, &qword_1C4F0C8C0);

  if (v12)
  {

    return 0;
  }

  return v10;
}

uint64_t sub_1C4B0E694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v3 = sub_1C445FAA8(a1, a2), (v4 & 1) != 0))
  {
    sub_1C446C02C(v3, v4, v5, v6, v7, v8, v9);
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v12[0] = v13;
  v12[1] = v14;
  if (*(&v14 + 1))
  {
    if (swift_dynamicCast())
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C4423A0C(v12, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    return 0;
  }
}

uint64_t sub_1C4B0E744(void *a1)
{
  v1 = [a1 schemaOrg];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C456902C(&qword_1EC0C34B0, &qword_1C4F40190);
  v3 = sub_1C4F01678();

  return v3;
}

uint64_t sub_1C4B0E7B0(void *a1)
{
  v1 = [a1 locations];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C4461BB8(0, &qword_1EDDDBB18, 0x1E6999228);
  v3 = sub_1C4F01678();

  return v3;
}

uint64_t sub_1C4B0E820(void *a1)
{
  v1 = [a1 handle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4EF9A68();

  return v3;
}

uint64_t sub_1C4B0E884(void *a1)
{
  v2 = [a1 externalKey];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C4B0E8F4(void *a1)
{
  v1 = [a1 tags];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01678();

  return v3;
}

uint64_t sub_1C4B0E94C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4B0E994(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(sub_1C456902C(a3, a4) - 8) + 16);
  v6 = sub_1C43FBC98();
  v7(v6);
  return a2;
}

uint64_t type metadata accessor for SGEventSourceIngestor()
{
  result = qword_1EDDE33B8;
  if (!qword_1EDDE33B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4B0EA70()
{
  sub_1C43FBCD4();
  v1[39] = v0;
  v2 = type metadata accessor for SGEventSourceIngestor();
  v1[40] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4B0EB08()
{
  sub_1C43FCF70();
  v0[34] = 0;
  v0[35] = 0;
  v1 = objc_opt_self();
  v0[43] = [v1 serviceForContacts];
  v2 = [v1 serviceForEvents];
  v0[44] = v2;
  v0[2] = v0;
  v0[7] = v0 + 36;
  v0[3] = sub_1C4B0EC6C;
  v3 = swift_continuation_init();
  v0[25] = sub_1C456902C(&qword_1EC0C34B8, &qword_1C4F51538);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1C4B10040;
  v0[21] = &unk_1F43FC6E8;
  v0[22] = v3;
  [v2 allEventsLimitedTo:10000 withCompletion:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C4B0EC6C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 360) = *(v3 + 48);
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4B0ED6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1C4405098();
  sub_1C44142CC();
  v18 = v15[44];
  v19 = v15[36];
  v15[46] = v19;
  swift_unknownObjectRelease();
  v20 = sub_1C4428DA0();
  v15[47] = v20;
  v15[48] = 0;
  v21 = v15[46];
  if (!v20)
  {
    v38 = v15[46];

    sub_1C442BED4();
    sub_1C441CD60();
    swift_unknownObjectRelease();
    sub_1C43FF578();
    sub_1C4B0FDB8(v19, v39, v40);

    sub_1C43FBDA0();
LABEL_15:
    sub_1C43FD0C0();

    return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14);
  }

  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x1C6940F90](0);
  }

  else
  {
    if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_20;
    }

    v22 = *(v21 + 32);
  }

  v14 = v22;
  v15[49] = v22;
  v15[50] = 1;
  if (sub_1C4F01948())
  {
    if (qword_1EDDFD028 == -1)
    {
LABEL_7:
      v23 = sub_1C443537C();
      sub_1C442B738(v23, qword_1EDE2DE10);
      sub_1C441A490();
      sub_1C4415C08(v24, v25, v26);
      v27 = sub_1C4F00968();
      v28 = sub_1C4F01CF8();
      v29 = sub_1C4430110(v28);
      v30 = v15[42];
      if (v29)
      {
        sub_1C4425F78();
        sub_1C4402BBC();
        sub_1C44057F8();
        *v16 = 136315138;
        sub_1C441A490();
        sub_1C444FF60(v31, v32, v33);
        sub_1C4420224();
        sub_1C4B10414(v30, v34);
        sub_1C4640C7C();
        v35 = sub_1C440FB50();
        sub_1C4404698(v35);
        sub_1C43FEB14();
        *(v16 + 4) = v17;
        sub_1C4408F80(&dword_1C43F8000, v36, v37, "%s going to defer");
        sub_1C4406614();
        sub_1C43FFD4C();
      }

      else
      {
        sub_1C440B224();
      }

      sub_1C442E530();
      sub_1C4400CD0();
      sub_1C4B103CC(v47, v48);
      sub_1C440E690();
      sub_1C441056C();
      swift_willThrow();

      swift_unknownObjectRelease();
      sub_1C4417700();

      sub_1C43FBDA0();
      goto LABEL_15;
    }

LABEL_20:
    sub_1C43FE9B4();
    goto LABEL_7;
  }

  v41 = v15[43];
  v15[34] = 1;
  sub_1C4411170([v14 recordId]);
  v15[10] = v42;
  v15[15] = v15 + 37;
  v15[11] = sub_1C4B0F074;
  swift_continuation_init();
  v43 = sub_1C456902C(&qword_1EC0C34C0, &unk_1C4F51540);
  sub_1C442D2AC(v43);
  v15[27] = 1107296256;
  sub_1C4407A00(&unk_1F43FC710);
  sub_1C43FC81C(v44, sel_originFromRecordId_withCompletion_);
  sub_1C43FD0C0();

  return MEMORY[0x1EEE6DEC8](v45);
}

uint64_t sub_1C4B0F074()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 416) = *(v3 + 112);
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4B0F174()
{
  sub_1C43FCF70();
  v1 = v0[51];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[37];
  v0[53] = v4;

  v5 = [v4 fromPerson];
  v0[54] = v5;
  v6 = *(v3 + *(v2 + 28));
  v7 = swift_task_alloc();
  v0[55] = v7;
  *v7 = v0;
  v7[1] = sub_1C4B0F250;
  v8 = v0[49];
  v9 = v0[39];

  return sub_1C4B08CB0(v5, v6, v9);
}

uint64_t sub_1C4B0F250()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C43FBE64();
  *v6 = v5;
  v8 = *(v7 + 440);
  v9 = *v1;
  sub_1C43FBE64();
  *v10 = v9;
  *(v5 + 448) = v0;

  if (!v0)
  {
    *(v5 + 456) = v3;
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C4B0F364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1C4405098();
  sub_1C44142CC();
  v16 = v14[57];
  v18 = v14[53];
  v17 = v14[54];
  v20 = v14[48];
  v19 = v14[49];
  v21 = v14[39];
  v22 = *(v21 + *(type metadata accessor for PhaseStores() + 24));
  sub_1C4B46D4C();

  v24 = v20 + 1;
  if (__OFADD__(v20, 1))
  {
    __break(1u);
LABEL_21:
    v31 = MEMORY[0x1C6940F90](v22);
    goto LABEL_7;
  }

  v14[35] = v24;
  v22 = v14[50];
  v14[48] = v24;
  v25 = v14[46];
  if (v22 == v14[47])
  {
    v26 = v14[46];

    sub_1C442BED4();
    sub_1C441CD60();
    swift_unknownObjectRelease();
    sub_1C43FF578();
    sub_1C4B0FDB8(v22, v27, v28);

    sub_1C43FBDA0();
LABEL_17:
    sub_1C43FD0C0();

    return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14);
  }

  if ((v25 & 0xC000000000000001) != 0)
  {
    goto LABEL_21;
  }

  sub_1C43FC1D8(v23, v25);
  if (v30)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v31 = *(v29 + 8 * v22 + 32);
LABEL_7:
  v16 = v31;
  v19 = (v22 + 1);
  v14[49] = v31;
  v14[50] = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  if (sub_1C4F01948())
  {
    if (qword_1EDDFD028 == -1)
    {
LABEL_10:
      v32 = sub_1C443537C();
      sub_1C442B738(v32, qword_1EDE2DE10);
      sub_1C441A490();
      sub_1C4415C08(v33, v34, v35);
      v36 = sub_1C4F00968();
      v37 = sub_1C4F01CF8();
      v38 = sub_1C4430110(v37);
      v39 = v14[42];
      if (v38)
      {
        sub_1C4425F78();
        sub_1C4402BBC();
        sub_1C44057F8();
        *v19 = 136315138;
        sub_1C441A490();
        sub_1C444FF60(v40, v41, v42);
        sub_1C4420224();
        sub_1C4B10414(v39, v43);
        sub_1C4640C7C();
        v44 = sub_1C440FB50();
        sub_1C4404698(v44);
        sub_1C43FEB14();
        *(v19 + 1) = v15;
        sub_1C4408F80(&dword_1C43F8000, v45, v46, "%s going to defer");
        sub_1C4406614();
        sub_1C43FFD4C();
      }

      else
      {
        sub_1C440B224();
      }

      sub_1C442E530();
      sub_1C4400CD0();
      sub_1C4B103CC(v52, v53);
      sub_1C440E690();
      sub_1C441056C();
      swift_willThrow();

      swift_unknownObjectRelease();
      sub_1C4417700();

      sub_1C43FBDA0();
      goto LABEL_17;
    }

LABEL_24:
    sub_1C43FE9B4();
    goto LABEL_10;
  }

  sub_1C4432960();
  sub_1C4411170([v16 recordId]);
  v14[10] = v47;
  sub_1C4413720();
  v48 = sub_1C456902C(&qword_1EC0C34C0, &unk_1C4F51540);
  sub_1C442D2AC(v48);
  v14[27] = 1107296256;
  sub_1C4407A00(&unk_1F43FC710);
  sub_1C43FC81C(v49, sel_originFromRecordId_withCompletion_);
  sub_1C43FD0C0();

  return MEMORY[0x1EEE6DEC8](v50);
}

uint64_t sub_1C4B0F670()
{
  sub_1C43FCF70();
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];
  swift_willThrow();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v4 = v0[45];
  v6 = v0[41];
  v5 = v0[42];
  v7 = v0[39];
  sub_1C43FF578();
  sub_1C4B0FDB8(v8, v9, v10);

  sub_1C43FBDA0();

  return v11();
}

uint64_t sub_1C4B0F708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1C4405098();
  sub_1C44142CC();
  v17 = v14[51];
  v18 = v14[52];
  v19 = v14[49];
  swift_willThrow();

  v21 = v14[50];
  v22 = v14[46];
  if (v21 == v14[47])
  {
    v23 = v14[46];

    sub_1C442BED4();
    sub_1C441CD60();
    swift_unknownObjectRelease();
    sub_1C43FF578();
    sub_1C4B0FDB8(v21, v24, v25);

    sub_1C43FBDA0();
LABEL_16:
    sub_1C43FD0C0();

    return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x1C6940F90](v14[50]);
  }

  else
  {
    sub_1C43FC1D8(v20, v22);
    if (v27)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v28 = *(v26 + 8 * v21 + 32);
  }

  v17 = v28;
  v15 = v21 + 1;
  v14[49] = v28;
  v14[50] = v21 + 1;
  if (__OFADD__(v21, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  if (sub_1C4F01948())
  {
    if (qword_1EDDFD028 == -1)
    {
LABEL_9:
      v29 = sub_1C443537C();
      sub_1C442B738(v29, qword_1EDE2DE10);
      sub_1C441A490();
      sub_1C4415C08(v30, v31, v32);
      v33 = sub_1C4F00968();
      v34 = sub_1C4F01CF8();
      v35 = sub_1C4430110(v34);
      v36 = v14[42];
      if (v35)
      {
        sub_1C4425F78();
        sub_1C4402BBC();
        sub_1C44057F8();
        *v15 = 136315138;
        sub_1C441A490();
        sub_1C444FF60(v37, v38, v39);
        sub_1C4420224();
        sub_1C4B10414(v36, v40);
        sub_1C4640C7C();
        v41 = sub_1C440FB50();
        sub_1C4404698(v41);
        sub_1C43FEB14();
        *(v15 + 4) = v16;
        sub_1C4408F80(&dword_1C43F8000, v42, v43, "%s going to defer");
        sub_1C4406614();
        sub_1C43FFD4C();
      }

      else
      {
        sub_1C440B224();
      }

      sub_1C442E530();
      sub_1C4400CD0();
      sub_1C4B103CC(v49, v50);
      sub_1C440E690();
      sub_1C441056C();
      swift_willThrow();

      swift_unknownObjectRelease();
      sub_1C4417700();

      sub_1C43FBDA0();
      goto LABEL_16;
    }

LABEL_22:
    sub_1C43FE9B4();
    goto LABEL_9;
  }

  sub_1C4432960();
  sub_1C4411170([v17 recordId]);
  v14[10] = v44;
  sub_1C4413720();
  v45 = sub_1C456902C(&qword_1EC0C34C0, &unk_1C4F51540);
  sub_1C442D2AC(v45);
  v14[27] = 1107296256;
  sub_1C4407A00(&unk_1F43FC710);
  sub_1C43FC81C(v46, sel_originFromRecordId_withCompletion_);
  sub_1C43FD0C0();

  return MEMORY[0x1EEE6DEC8](v47);
}

uint64_t sub_1C4B0F9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C4405098();
  a21 = v24;
  a22 = v25;
  sub_1C44142CC();
  a20 = v22;
  v26 = 0x746E6576454753;
  v27 = *(v22 + 448);

  *(v22 + 304) = v27;
  v28 = v27;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  v29 = swift_dynamicCast();
  v30 = *(v22 + 448);
  v31 = *(v22 + 424);
  v32 = *(v22 + 392);
  if ((v29 & 1) == 0)
  {
    v40 = *(v22 + 368);
    v41 = *(v22 + 312);

    LOBYTE(a10) = 1;
    static Transformers.reportError(error:context:config:pipelineType:)(v30, 0x746E6576454753, 0xE700000000000000, v41, &a10);

    goto LABEL_5;
  }

  v33 = *(v22 + 312);

  v34 = *(v22 + 464);
  sub_1C465B58C();
  v35 = swift_allocError();
  *v36 = v34;
  LOBYTE(a10) = 1;
  static Transformers.reportError(error:context:config:pipelineType:)(v35, 0x746E6576454753, 0xE700000000000000, v33, &a10);

  v26 = *(v22 + 400);
  v38 = *(v22 + 368);
  if (v26 == *(v22 + 376))
  {
    v39 = *(v22 + 368);

LABEL_5:
    sub_1C442BED4();
    sub_1C441CD60();
    swift_unknownObjectRelease();
    sub_1C43FF578();
    sub_1C4B0FDB8(v26, v42, v43);

    sub_1C43FBDA0();
LABEL_6:
    sub_1C43FD0C0();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
  }

  if ((v38 & 0xC000000000000001) != 0)
  {
    v55 = MEMORY[0x1C6940F90](*(v22 + 400));
  }

  else
  {
    sub_1C43FC1D8(v37, v38);
    if (v54)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v55 = *(v53 + 8 * v26 + 32);
  }

  v35 = v55;
  v32 = (v26 + 1);
  *(v22 + 392) = v55;
  *(v22 + 400) = v26 + 1;
  if (__OFADD__(v26, 1))
  {
    __break(1u);
    goto LABEL_24;
  }

  if (sub_1C4F01948())
  {
    if (qword_1EDDFD028 == -1)
    {
LABEL_15:
      v56 = sub_1C443537C();
      sub_1C442B738(v56, qword_1EDE2DE10);
      sub_1C441A490();
      sub_1C4415C08(v57, v58, v59);
      v60 = sub_1C4F00968();
      v61 = sub_1C4F01CF8();
      v62 = sub_1C4430110(v61);
      v63 = *(v22 + 336);
      if (v62)
      {
        sub_1C4425F78();
        sub_1C4402BBC();
        sub_1C44057F8();
        *v32 = 136315138;
        sub_1C441A490();
        sub_1C444FF60(v64, v65, v66);
        sub_1C4420224();
        sub_1C4B10414(v63, v67);
        sub_1C4640C7C();
        v68 = sub_1C440FB50();
        sub_1C4404698(v68);
        sub_1C43FEB14();
        *(v32 + 1) = v23;
        sub_1C4408F80(&dword_1C43F8000, v69, v70, "%s going to defer");
        sub_1C4406614();
        sub_1C43FFD4C();
      }

      else
      {
        sub_1C440B224();
      }

      sub_1C442E530();
      sub_1C4400CD0();
      sub_1C4B103CC(v76, v77);
      sub_1C440E690();
      sub_1C441056C();
      swift_willThrow();

      swift_unknownObjectRelease();
      sub_1C4417700();

      sub_1C43FBDA0();
      goto LABEL_6;
    }

LABEL_25:
    sub_1C43FE9B4();
    goto LABEL_15;
  }

  sub_1C4432960();
  sub_1C4411170([v35 recordId]);
  *(v22 + 80) = v71;
  sub_1C4413720();
  v72 = sub_1C456902C(&qword_1EC0C34C0, &unk_1C4F51540);
  sub_1C442D2AC(v72);
  *(v22 + 216) = 1107296256;
  sub_1C4407A00(&unk_1F43FC710);
  sub_1C43FC81C(v73, sel_originFromRecordId_withCompletion_);
  sub_1C43FD0C0();

  return MEMORY[0x1EEE6DEC8](v74);
}

uint64_t sub_1C4B0FDB8(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C4B10474(a1, v10, type metadata accessor for Configuration);
  v10[*(v7 + 28)] = *(a1 + *(type metadata accessor for SGEventSourceIngestor() + 24));
  Pipeline.StatusStore.currentSessionId()();
  sub_1C4B10414(v10, type metadata accessor for Pipeline.StatusStore);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v12 = sub_1C4F01108();

  *(inited + 48) = v12;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  v13 = *a2;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  result = *a3 - *a2;
  if (__OFSUB__(*a3, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

uint64_t sub_1C4B10040(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1C4409678((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1C467BF20(v4, v5);
  }

  else
  {
    sub_1C4461BB8(0, &qword_1EDDDB858, 0x1E6999210);
    v7 = sub_1C4F01678();

    return sub_1C467BF1C(v4, v7);
  }
}

uint64_t sub_1C4B100E8()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4B10170;

  return sub_1C4B0EA70();
}

uint64_t sub_1C4B10170()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1C43FBE64();
  *v4 = v3;

  sub_1C43FBDA0();

  return v5();
}

uint64_t sub_1C4B102C4(uint64_t a1)
{
  result = sub_1C4B103CC(qword_1EDDE33E0, type metadata accessor for SGEventSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B1031C(uint64_t a1)
{
  result = sub_1C4B103CC(&qword_1EDDE33C8, type metadata accessor for SGEventSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B10374(uint64_t a1)
{
  result = sub_1C4B103CC(&qword_1EDDE33D0, type metadata accessor for SGEventSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B103CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4B10414(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C4B10474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ShipmentFullFillmentMatcher.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShipmentFullFillmentMatcher() + 20);
  sub_1C43FD90C();
  return sub_1C44718CC(v1 + v4, a1);
}

uint64_t type metadata accessor for ShipmentFullFillmentMatcher()
{
  result = qword_1EC0C34D8;
  if (!qword_1EC0C34D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShipmentFullFillmentMatcher.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ShipmentFullFillmentMatcher();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ShipmentFullFillmentMatcher.entityClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShipmentFullFillmentMatcher() + 32);
  v4 = sub_1C4EFD548();
  v5 = sub_1C43FBCE0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t ShipmentFullFillmentMatcher.init(stores:source:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for ShipmentFullFillmentMatcher();
  *(a4 + v8[7]) = 1056964608;
  v9 = a4 + v8[8];
  sub_1C4EFD218();
  sub_1C440053C();
  sub_1C448566C(a1, a4);
  v10 = v8[5];
  sub_1C43FD90C();
  result = sub_1C448566C(a2, a4 + v11);
  *(a4 + v8[6]) = v7;
  return result;
}

float sub_1C4B106D0(uint64_t a1, uint64_t a2)
{
  v92 = a2;
  v3 = sub_1C4EFEEF8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v87 - v9;
  v11 = type metadata accessor for EntityTriple(0);
  v96 = *(v11 - 8);
  v97 = v11;
  v12 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v93 = &v87 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v88 = &v87 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v94 = &v87 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v87 - v21;
  v23 = 0;
  v24 = *(a1 + 16);
  v90 = a1;
  v91 = v24;
  v25 = (v4 + 8);
  v89 = MEMORY[0x1E69E7CC0];
  v95 = v7;
  while (v91 != v23)
  {
    v26 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v27 = *(v96 + 72);
    sub_1C44718CC(v90 + v26 + v27 * v23, v22);
    v28 = *(v97 + 20);
    sub_1C4EFE558();
    sub_1C4B13544(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v100 == v98 && v101 == v99)
    {
      (*v25)(v10, v3);

LABEL_10:
      sub_1C448566C(v22, v87);
      v31 = v89;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v102 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = *(v31 + 16);
        sub_1C459DCC0();
        v31 = v102;
      }

      v34 = v31;
      v35 = *(v31 + 16);
      if (v35 >= *(v34 + 24) >> 1)
      {
        sub_1C459DCC0();
        v34 = v102;
      }

      ++v23;
      *(v34 + 16) = v35 + 1;
      v89 = v34;
      sub_1C448566C(v87, v34 + v26 + v35 * v27);
      v7 = v95;
    }

    else
    {
      v30 = sub_1C4F02938();
      (*v25)(v10, v3);

      if (v30)
      {
        goto LABEL_10;
      }

      sub_1C44DBD5C(v22, type metadata accessor for EntityTriple);
      ++v23;
      v7 = v95;
    }
  }

  v36 = v89;
  v37 = *(v89 + 16);
  if (v37)
  {
    v100 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v38 = v100;
    v39 = v36 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
    v40 = *(v96 + 72);
    do
    {
      v41 = v93;
      sub_1C44718CC(v39, v93);
      v42 = (v41 + *(v97 + 32));
      v43 = *v42;
      v44 = v42[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v41, type metadata accessor for EntityTriple);
      v100 = v38;
      v45 = *(v38 + 16);
      if (v45 >= *(v38 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v38 = v100;
      }

      *(v38 + 16) = v45 + 1;
      v46 = v38 + 16 * v45;
      *(v46 + 32) = v43;
      *(v46 + 40) = v44;
      v39 += v40;
      --v37;
    }

    while (v37);

    v7 = v95;
  }

  else
  {

    v38 = MEMORY[0x1E69E7CC0];
  }

  sub_1C4499940(v38, v47, v48, v49, v50, v51, v52, v53, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
  v90 = v54;
  v55 = 0;
  v56 = *(v92 + 16);
  v91 = MEMORY[0x1E69E7CC0];
  while (v56 != v55)
  {
    v57 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v58 = *(v96 + 72);
    sub_1C44718CC(v92 + v57 + v58 * v55, v94);
    v59 = *(v97 + 20);
    sub_1C4EFE558();
    sub_1C4B13544(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v100 == v98 && v101 == v99)
    {
      (*v25)(v7, v3);
    }

    else
    {
      v61 = sub_1C4F02938();
      (*v25)(v7, v3);

      if ((v61 & 1) == 0)
      {
        sub_1C44DBD5C(v94, type metadata accessor for EntityTriple);
        ++v55;
        v7 = v95;
        continue;
      }
    }

    sub_1C448566C(v94, v88);
    v62 = v91;
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v102 = v62;
    if ((v63 & 1) == 0)
    {
      v64 = *(v62 + 16);
      sub_1C459DCC0();
      v62 = v102;
    }

    v65 = *(v62 + 16);
    if (v65 >= *(v62 + 24) >> 1)
    {
      sub_1C459DCC0();
      v62 = v102;
    }

    ++v55;
    *(v62 + 16) = v65 + 1;
    v91 = v62;
    sub_1C448566C(v88, v62 + v57 + v65 * v58);
    v7 = v95;
  }

  v66 = v91;
  v67 = *(v91 + 16);
  if (v67)
  {
    v100 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v68 = v100;
    v69 = v66 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
    v70 = *(v96 + 72);
    do
    {
      v71 = v93;
      sub_1C44718CC(v69, v93);
      v72 = (v71 + *(v97 + 32));
      v73 = *v72;
      v74 = v72[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v71, type metadata accessor for EntityTriple);
      v100 = v68;
      v75 = *(v68 + 16);
      if (v75 >= *(v68 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v68 = v100;
      }

      *(v68 + 16) = v75 + 1;
      v76 = v68 + 16 * v75;
      *(v76 + 32) = v73;
      *(v76 + 40) = v74;
      v69 += v70;
      --v67;
    }

    while (v67);
  }

  else
  {

    v68 = MEMORY[0x1E69E7CC0];
  }

  sub_1C4499940(v68, v77, v78, v79, v80, v81, v82, v83, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
  if (*(v90 + 16))
  {
    v85 = sub_1C4A32590(v84, v90);

    result = 1.0;
    if (v85)
    {
      return 0.0;
    }
  }

  else
  {

    return 1.0;
  }

  return result;
}

float sub_1C4B10FAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t), uint64_t (*a6)(void))
{
  v130 = a2;
  v131 = a6;
  v120 = a5;
  v134 = a4;
  v133 = a3(0);
  v7 = sub_1C43FCDF8(v133);
  v128 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  v119 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  v122 = &v118 - v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  v135 = &v118 - v15;
  v16 = sub_1C4EFEEF8();
  v17 = sub_1C43FCDF8(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBFDC();
  v126 = v22;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  v132 = type metadata accessor for EntityTriple(0);
  v24 = sub_1C43FCDF8(v132);
  v127 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBFDC();
  v121 = v28;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v29);
  v124 = &v118 - v30;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v118 - v32;
  v34 = 0;
  v125 = a1;
  v129 = *(a1 + 16);
  v35 = (v19 + 8);
  v123 = MEMORY[0x1E69E7CC0];
  while (v129 != v34)
  {
    sub_1C4417720();
    v37 = *(v36 + 72);
    sub_1C44032D8();
    sub_1C44718CC(v38, v33);
    v39 = *(v132 + 20);
    sub_1C4EFE558();
    sub_1C4400CE8();
    sub_1C4B13544(&off_1EDDFCCA8, v40);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v138 == v136 && v139 == v137)
    {
      v45 = sub_1C4413754();
      v46(v45);

LABEL_10:
      sub_1C448566C(v33, v121);
      v47 = v123;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v140 = v47;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C44032F0();
        sub_1C459DCC0();
        v47 = v140;
      }

      v49 = *(v47 + 16);
      if (v49 >= *(v47 + 24) >> 1)
      {
        sub_1C459DCC0();
        v47 = v140;
      }

      ++v34;
      *(v47 + 16) = v49 + 1;
      v123 = v47;
      sub_1C44032D8();
      sub_1C448566C(v121, v50);
    }

    else
    {
      v42 = sub_1C4F02938();
      v43 = sub_1C4413754();
      v44(v43);

      if (v42)
      {
        goto LABEL_10;
      }

      sub_1C44DBD5C(v33, type metadata accessor for EntityTriple);
      ++v34;
    }
  }

  v51 = v123;
  v52 = *(v123 + 16);
  if (v52)
  {
    v138 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v53 = v138;
    sub_1C4417720();
    v56 = v51 + (v55 & ~v54);
    v58 = *(v57 + 72);
    do
    {
      v59 = v124;
      sub_1C44718CC(v56, v124);
      v60 = (v59 + *(v132 + 32));
      v62 = *v60;
      v61 = v60[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v59, type metadata accessor for EntityTriple);
      v138 = v53;
      v63 = *(v53 + 16);
      if (v63 >= *(v53 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v53 = v138;
      }

      *(v53 + 16) = v63 + 1;
      v64 = v53 + 16 * v63;
      *(v64 + 32) = v62;
      *(v64 + 40) = v61;
      v56 += v58;
      --v52;
    }

    while (v52);
  }

  else
  {

    v53 = MEMORY[0x1E69E7CC0];
  }

  sub_1C4499940(v53, v65, v66, v67, v68, v69, v70, v71, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
  v129 = v72;
  v73 = 0;
  v74 = *(v130 + 16);
  v132 = MEMORY[0x1E69E7CC0];
  while (v74 != v73)
  {
    sub_1C4417720();
    v77 = v76 & ~v75;
    v79 = *(v78 + 72);
    sub_1C44718CC(v130 + v77 + v79 * v73, v135);
    v80 = *(v133 + 20);
    v81 = v126;
    sub_1C4EFE558();
    sub_1C4400CE8();
    sub_1C4B13544(&off_1EDDFCCA8, v82);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v138 == v136 && v139 == v137)
    {
      v87 = sub_1C4413754();
      v88(v87);
    }

    else
    {
      v84 = sub_1C4F02938();
      v85 = v81;
      v86 = v84;
      (*v35)(v85, v16);

      if ((v86 & 1) == 0)
      {
        sub_1C44DBD5C(v135, v131);
        ++v73;
        continue;
      }
    }

    sub_1C448566C(v135, v122);
    v89 = v132;
    v90 = swift_isUniquelyReferenced_nonNull_native();
    v140 = v89;
    if ((v90 & 1) == 0)
    {
      v91 = sub_1C44032F0();
      v120(v91);
      v89 = v140;
    }

    v93 = *(v89 + 16);
    v92 = *(v89 + 24);
    if (v93 >= v92 >> 1)
    {
      (v120)(v92 > 1, v93 + 1, 1);
      v89 = v140;
    }

    ++v73;
    *(v89 + 16) = v93 + 1;
    v132 = v89;
    sub_1C448566C(v122, v89 + v77 + v93 * v79);
  }

  v94 = v132;
  v95 = *(v132 + 16);
  if (v95)
  {
    v138 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v96 = v138;
    sub_1C4417720();
    v99 = v94 + (v98 & ~v97);
    v101 = *(v100 + 72);
    v102 = v119;
    do
    {
      sub_1C44718CC(v99, v102);
      v103 = (v102 + *(v133 + 32));
      v105 = *v103;
      v104 = v103[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v102, v131);
      v138 = v96;
      v106 = *(v96 + 16);
      if (v106 >= *(v96 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v96 = v138;
      }

      *(v96 + 16) = v106 + 1;
      v107 = v96 + 16 * v106;
      *(v107 + 32) = v105;
      *(v107 + 40) = v104;
      v99 += v101;
      --v95;
    }

    while (v95);
  }

  else
  {

    v96 = MEMORY[0x1E69E7CC0];
  }

  sub_1C4499940(v96, v108, v109, v110, v111, v112, v113, v114, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
  if (*(v129 + 16))
  {
    v116 = sub_1C4A32590(v115, v129);

    result = 1.0;
    if (v116)
    {
      return 0.0;
    }
  }

  else
  {

    return 1.0;
  }

  return result;
}

uint64_t sub_1C4B117CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a2;
  v73 = a1;
  v71 = a3;
  v70 = sub_1C4EF9CD8();
  v74 = *(v70 - 8);
  v4 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFF0C8();
  v75 = *(v6 - 8);
  v76 = v6;
  v7 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v65 - v12;
  v14 = type metadata accessor for EntityTriple(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C456902C(&unk_1EC0BC900, &unk_1C4F142D0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v65 - v20;
  v22 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v65 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v65 - v30;
  v32 = v77;
  result = sub_1C4ACED24();
  if (!v32)
  {
    v65 = v28;
    v66 = v25;
    v67 = 0;
    v68 = v9;
    v77 = v17;
    v34 = v75;
    v35 = v31;
    v36 = v72;
    if (v72)
    {
      sub_1C44F1938(v72, v21);
      v37 = type metadata accessor for GraphTriple(0);
      v38 = v13;
      if (sub_1C44157D4(v21, 1, v37) == 1)
      {
        sub_1C4420C3C(v21, &unk_1EC0BC900, &unk_1C4F142D0);
        v39 = 1;
      }

      else
      {
        (*(v34 + 16))(v31, v21, v76);
        sub_1C44DBD5C(v21, type metadata accessor for GraphTriple);
        v39 = 0;
      }

      v40 = v73;
      v41 = v74;
    }

    else
    {
      v39 = 1;
      v40 = v73;
      v41 = v74;
      v38 = v13;
    }

    sub_1C440BAA8(v35, v39, 1, v76);
    sub_1C44D0BD8(v40, v38);
    if (sub_1C44157D4(v38, 1, v14) == 1)
    {
      sub_1C4420C3C(v38, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v42 = sub_1C4F00978();
      sub_1C442B738(v42, qword_1EDE2DE10);
      v43 = sub_1C4F00968();
      v44 = sub_1C4F01CD8();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1C43F8000, v43, v44, "Merchant Matcher: skipping entityTriples are empty", v45, 2u);
        MEMORY[0x1C6942830](v45, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v46 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v35, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      v47 = v3;
      sub_1C448566C(v38, v77);
      if (v36)
      {
        v48 = sub_1C4B10FAC(v40, v36, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, sub_1C459D7C8, type metadata accessor for GraphTriple);
      }

      else
      {
        v48 = 0.0;
      }

      v49 = v71;
      v50 = v76;
      v51 = v68;
      v52 = v65;
      v74 = type metadata accessor for ShipmentFullFillmentMatcher();
      v53 = *(v47 + *(v74 + 28));
      if (v48 <= v53)
      {
        sub_1C4EFF008();
        v50 = v76;
        sub_1C4420C3C(v35, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v52, 0, 1, v50);
        sub_1C44DDDBC(v52, v35);
        v48 = v53;
      }

      v76 = v47;
      v54 = v66;
      sub_1C457E858(v35, v66);
      v55 = sub_1C44157D4(v54, 1, v50);
      v73 = v35;
      if (v55 == 1)
      {
        sub_1C4420C3C(v54, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        v56 = v75;
        (*(v75 + 32))(v51, v54, v50);
        sub_1C4EFD218();
        v57 = type metadata accessor for EntityMatch(0);
        v58 = v50;
        v59 = *(v56 + 16);
        v60 = v77;
        v59(v49 + v57[5], v77, v50);
        v59(v49 + v57[6], v51, v50);
        v61 = v69;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v63 = v62;
        (*(v41 + 8))(v61, v70);
        (*(v56 + 8))(v51, v58);
        sub_1C44DBD5C(v60, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v73, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v64 = *(v76 + *(v74 + 24));
        *(v49 + v57[7]) = v48;
        *(v49 + v57[8]) = v63;
        *(v49 + v57[9]) = v64;
        *(v49 + v57[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4B11F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v76 = a1;
  v70 = a3;
  v72 = sub_1C4EF9CD8();
  v69 = *(v72 - 8);
  v4 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFF0C8();
  v73 = *(v6 - 8);
  v74 = v6;
  v7 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EntityTriple(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v63 - v19;
  v21 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v63 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v63 - v29;
  v31 = v77;
  result = sub_1C4ACED24();
  if (!v31)
  {
    v64 = v27;
    v65 = v24;
    v66 = 0;
    v67 = v9;
    v68 = v13;
    v33 = v73;
    v34 = v74;
    v77 = v30;
    if (v75)
    {
      v35 = v75;
      sub_1C44D0BD8(v75, v20);
      v36 = v33;
      if (sub_1C44157D4(v20, 1, v10) == 1)
      {
        sub_1C4420C3C(v20, &qword_1EC0BA590, &qword_1C4F1F430);
        v37 = 1;
      }

      else
      {
        (*(v33 + 16))(v77, v20, v34);
        sub_1C44DBD5C(v20, type metadata accessor for EntityTriple);
        v37 = 0;
      }
    }

    else
    {
      v35 = 0;
      v37 = 1;
      v36 = v73;
    }

    v38 = v76;
    sub_1C440BAA8(v77, v37, 1, v34);
    sub_1C44D0BD8(v38, v17);
    if (sub_1C44157D4(v17, 1, v10) == 1)
    {
      sub_1C4420C3C(v17, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v39 = sub_1C4F00978();
      sub_1C442B738(v39, qword_1EDE2DE10);
      v40 = sub_1C4F00968();
      v41 = sub_1C4F01CD8();
      v42 = os_log_type_enabled(v40, v41);
      v43 = v77;
      if (v42)
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_1C43F8000, v40, v41, "Merchant Matcher: skipping entityTriples are empty", v44, 2u);
        MEMORY[0x1C6942830](v44, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v45 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v43, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C448566C(v17, v68);
      if (v35)
      {
        v46 = sub_1C4B106D0(v38, v35);
      }

      else
      {
        v46 = 0.0;
      }

      v47 = v70;
      v48 = v67;
      v49 = v64;
      v75 = type metadata accessor for ShipmentFullFillmentMatcher();
      v76 = v3;
      v50 = *(v3 + *(v75 + 28));
      v51 = v77;
      if (v46 <= v50)
      {
        sub_1C4EFF008();
        sub_1C4420C3C(v51, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v49, 0, 1, v34);
        sub_1C44DDDBC(v49, v51);
        v46 = v50;
      }

      v52 = v65;
      sub_1C457E858(v51, v65);
      if (sub_1C44157D4(v52, 1, v34) == 1)
      {
        sub_1C4420C3C(v52, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v36 + 32))(v48, v52, v34);
        sub_1C4EFD218();
        v53 = v48;
        v54 = v34;
        v55 = type metadata accessor for EntityMatch(0);
        v56 = v36;
        v57 = *(v36 + 16);
        v58 = v68;
        v57(v47 + v55[5], v68, v54);
        v57(v47 + v55[6], v53, v54);
        v59 = v71;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v61 = v60;
        (*(v69 + 8))(v59, v72);
        (*(v56 + 8))(v53, v54);
        sub_1C44DBD5C(v58, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v51, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v62 = *(v76 + *(v75 + 24));
        *(v47 + v55[7]) = v46;
        *(v47 + v55[8]) = v61;
        *(v47 + v55[9]) = v62;
        *(v47 + v55[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4B12694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a2;
  v73 = a1;
  v71 = a3;
  v70 = sub_1C4EF9CD8();
  v74 = *(v70 - 8);
  v4 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFF0C8();
  v75 = *(v6 - 8);
  v76 = v6;
  v7 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v65 - v12;
  v14 = type metadata accessor for EntityTriple(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C456902C(&unk_1EC0BCAE0, &unk_1C4F142A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v65 - v20;
  v22 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v65 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v65 - v30;
  v32 = v77;
  result = sub_1C4ACED24();
  if (!v32)
  {
    v65 = v28;
    v66 = v25;
    v67 = 0;
    v68 = v9;
    v77 = v17;
    v34 = v75;
    v35 = v31;
    v36 = v72;
    if (v72)
    {
      sub_1C486854C(v72, v21);
      v37 = type metadata accessor for ConstructionGraphTriple(0);
      v38 = v13;
      if (sub_1C44157D4(v21, 1, v37) == 1)
      {
        sub_1C4420C3C(v21, &unk_1EC0BCAE0, &unk_1C4F142A0);
        v39 = 1;
      }

      else
      {
        (*(v34 + 16))(v31, v21, v76);
        sub_1C44DBD5C(v21, type metadata accessor for ConstructionGraphTriple);
        v39 = 0;
      }

      v40 = v73;
      v41 = v74;
    }

    else
    {
      v39 = 1;
      v40 = v73;
      v41 = v74;
      v38 = v13;
    }

    sub_1C440BAA8(v35, v39, 1, v76);
    sub_1C44D0BD8(v40, v38);
    if (sub_1C44157D4(v38, 1, v14) == 1)
    {
      sub_1C4420C3C(v38, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v42 = sub_1C4F00978();
      sub_1C442B738(v42, qword_1EDE2DE10);
      v43 = sub_1C4F00968();
      v44 = sub_1C4F01CD8();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1C43F8000, v43, v44, "Merchant Matcher: skipping entityTriples are empty", v45, 2u);
        MEMORY[0x1C6942830](v45, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v46 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v35, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      v47 = v3;
      sub_1C448566C(v38, v77);
      if (v36)
      {
        v48 = sub_1C4B10FAC(v40, v36, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, sub_1C459DC78, type metadata accessor for ConstructionGraphTriple);
      }

      else
      {
        v48 = 0.0;
      }

      v49 = v71;
      v50 = v76;
      v51 = v68;
      v52 = v65;
      v74 = type metadata accessor for ShipmentFullFillmentMatcher();
      v53 = *(v47 + *(v74 + 28));
      if (v48 <= v53)
      {
        sub_1C4EFF008();
        v50 = v76;
        sub_1C4420C3C(v35, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v52, 0, 1, v50);
        sub_1C44DDDBC(v52, v35);
        v48 = v53;
      }

      v76 = v47;
      v54 = v66;
      sub_1C457E858(v35, v66);
      v55 = sub_1C44157D4(v54, 1, v50);
      v73 = v35;
      if (v55 == 1)
      {
        sub_1C4420C3C(v54, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        v56 = v75;
        (*(v75 + 32))(v51, v54, v50);
        sub_1C4EFD218();
        v57 = type metadata accessor for EntityMatch(0);
        v58 = v50;
        v59 = *(v56 + 16);
        v60 = v77;
        v59(v49 + v57[5], v77, v50);
        v59(v49 + v57[6], v51, v50);
        v61 = v69;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v63 = v62;
        (*(v41 + 8))(v61, v70);
        (*(v56 + 8))(v51, v58);
        sub_1C44DBD5C(v60, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v73, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v64 = *(v76 + *(v74 + 24));
        *(v49 + v57[7]) = v48;
        *(v49 + v57[8]) = v63;
        *(v49 + v57[9]) = v64;
        *(v49 + v57[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t ShipmentFullFillmentMatcher.execute()()
{
  *(v1 + 24) = v0;
  v2 = *(*(sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0) - 8) + 64) + 15;
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4B12ED8, 0, 0);
}

uint64_t sub_1C4B12ED8()
{
  v44 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
  v4 = type metadata accessor for ShipmentFullFillmentMatcher();
  v5 = *(v4 + 24);
  LOBYTE(v43[0]) = *(v2 + v5);
  v6 = *(v4 + 32);
  v7 = sub_1C4EFD548();
  sub_1C43FBCE0(v7);
  v9 = *(v8 + 16);
  v9(v1, v2 + v6, v7);
  sub_1C43FBD94();
  sub_1C440BAA8(v10, v11, v12, v7);
  sub_1C44ABA54(v43, v1);
  sub_1C4420C3C(v1, &qword_1EC0B8568, &unk_1C4F319B0);
  v13 = *(v2 + v5);
  switch(*(v2 + v5))
  {
    case 1:
    case 3:
      v42 = v9;
      v14 = v0[3];
      v15 = swift_task_alloc();
      *(v15 + 16) = v14;
      sub_1C43FD8E4();
      sub_1C44AC170(v16, v17, v18, v19, v20, v21);

      if (v14)
      {
        goto LABEL_10;
      }

      if (*(v13 + *(sub_1C43FF150() + 28)) != 1)
      {
        goto LABEL_11;
      }

      v22 = *(v2 + v5);
      v23 = swift_task_alloc();
      *(v23 + 16) = v15;
      v24 = sub_1C4B1343C;
      goto LABEL_9;
    case 2:
      v42 = v9;
      v27 = v0[3];
      v28 = swift_task_alloc();
      *(v28 + 16) = v27;
      sub_1C43FD8E4();
      sub_1C46CE408(v29, v30, v31, v32, v33, v34);

      if (v1)
      {
LABEL_10:
        v35 = v0[4];

        v36 = v0[1];
      }

      else
      {
        if (*(v27 + *(sub_1C43FF150() + 28)) == 1)
        {
          v22 = *(v2 + v5);
          v23 = swift_task_alloc();
          *(v23 + 16) = v28;
          v24 = sub_1C4B1358C;
LABEL_9:
          sub_1C44C6BB4(v2 + v6, v22, 0, 1, v24, v23);
        }

LABEL_11:
        v37 = v0[3];
        v38 = v0[4];
        sub_1C4EF9AE8();
        sub_1C43FBD94();
        sub_1C464BE60();
        LOBYTE(v43[0]) = *(v2 + v5);
        v42(v38, v2 + v6, v7);
        sub_1C43FBD94();
        sub_1C440BAA8(v39, v40, v41, v7);
        sub_1C44A8814(v43, v38);
        sub_1C4420C3C(v38, &qword_1EC0B8568, &unk_1C4F319B0);

        v36 = v0[1];
      }

      result = v36();
      break;
    default:
      v43[0] = 0;
      v43[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x676E6974726F6241, 0xE900000000000020);
      v0[2] = v4;
      sub_1C456902C(&qword_1EC0BA4E8, &qword_1C4F51560);
      v25 = sub_1C4F01198();
      MEMORY[0x1C6940010](v25);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v2 + v5));
      result = sub_1C4F024A8();
      break;
  }

  return result;
}

uint64_t sub_1C4B132D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5();
  if (!v5)
  {
    type metadata accessor for EntityMatch(0);
    sub_1C43FBD94();
    return sub_1C440BAA8(v7, v8, v9, v10);
  }

  return result;
}

uint64_t sub_1C4B1334C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return ShipmentFullFillmentMatcher.execute()();
}

uint64_t sub_1C4B1346C(uint64_t a1)
{
  result = sub_1C4B13544(&qword_1EC0C34C8, type metadata accessor for ShipmentFullFillmentMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B134C4(uint64_t a1)
{
  result = sub_1C4B13544(&qword_1EC0C34D0, type metadata accessor for ShipmentFullFillmentMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B13544(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4B135A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69B8A58]) init];
  v7 = objc_allocWithZone(MEMORY[0x1E69B8DB8]);
  v8 = v6;
  v9 = [v7 init];
  v10 = swift_allocObject();
  *(v10 + 72) = sub_1C4461BB8(0, &unk_1EDDF0560, 0x1E69B8A58);
  *(v10 + 80) = &off_1F43F72C0;
  *(v10 + 48) = v8;
  *(v10 + 112) = sub_1C4461BB8(0, &qword_1EDDF0450, 0x1E69B8DB8);
  *(v10 + 120) = &off_1F43F7318;
  *(v10 + 88) = v9;
  *(v10 + 16) = 1;
  *(v10 + 24) = xmmword_1C4F51620;
  *(v10 + 40) = &unk_1F43D6D60;
  *(v10 + 152) = xmmword_1C4F51630;

  *(v10 + 168) = 0x312E302E31;
  *(v10 + 176) = 0xE500000000000000;
  *(v10 + 128) = a1;
  *(v10 + 136) = a2;
  *(v10 + 144) = a3;
  return v10;
}

uint64_t sub_1C4B136E8()
{
  sub_1C43FBCD4();
  v1[52] = v2;
  v1[53] = v0;
  v1[51] = v3;
  v4 = sub_1C4EFF9F8();
  v1[54] = v4;
  sub_1C43FCF7C(v4);
  v1[55] = v5;
  v7 = *(v6 + 64);
  v1[56] = sub_1C43FBE7C();
  v8 = sub_1C4EFE1C8();
  v1[57] = v8;
  sub_1C43FCF7C(v8);
  v1[58] = v9;
  v1[59] = *(v10 + 64);
  v1[60] = sub_1C43FE604();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v11 = sub_1C456902C(&qword_1EC0B9790, &unk_1C4F0F7C0);
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  v1[64] = sub_1C43FBE7C();
  v14 = type metadata accessor for LOIBasedSegment(0);
  v1[65] = v14;
  sub_1C43FCF7C(v14);
  v1[66] = v15;
  v1[67] = *(v16 + 64);
  v1[68] = sub_1C43FE604();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v17 = sub_1C4F00978();
  v1[72] = v17;
  sub_1C43FCF7C(v17);
  v1[73] = v18;
  v20 = *(v19 + 64);
  v1[74] = sub_1C43FE604();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v21 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v21, v22, v23);
}

uint64_t sub_1C4B13964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C44249CC();
  v23 = *(v22 + 664);
  sub_1C4F00198();
  v24 = sub_1C4F00968();
  v25 = sub_1C4F01CF8();
  if (sub_1C4402B64(v25))
  {
    v26 = sub_1C43FCED0();
    sub_1C43FBD24(v26);
    sub_1C4402B48();
    _os_log_impl(v27, v28, v29, v30, v31, 2u);
    sub_1C43FE9D4();
  }

  v32 = *(v22 + 664);
  v33 = *(v22 + 584);
  v34 = *(v22 + 576);
  v35 = *(v22 + 520);
  v36 = *(v22 + 512);
  v37 = *(v22 + 416);

  v38 = *(v33 + 8);
  *(v22 + 672) = v38;
  v39 = sub_1C4402B58();
  v38(v39);
  sub_1C442E860(v37, v22 + 16);
  sub_1C456902C(&qword_1EC0B9798, &unk_1C4F17040);
  if (!swift_dynamicCast())
  {
    v63 = *(v22 + 512);
    v64 = *(v22 + 408);
    sub_1C44102A4(v63, v40, v41, *(v22 + 520));
    sub_1C4420C3C(v63, &qword_1EC0B9790, &unk_1C4F0F7C0);
LABEL_41:
    v147 = type metadata accessor for InferredActivitySegment();
    sub_1C44102A4(v64, v148, v149, v147);
    sub_1C4407A18();

    sub_1C43FBDA0();
    sub_1C440FB70();

    return v151(v150, v151, v152, v153, v154, v155, v156, v157, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  v42 = *(v22 + 568);
  v43 = *(v22 + 520);
  v44 = *(v22 + 512);
  sub_1C43FBD94();
  sub_1C440BAA8(v45, v46, v47, v43);
  sub_1C46CB668(v44, v42);
  v48 = *(v43 + 24);
  sub_1C4460050(v42 + v48, v22 + 56, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  v49 = *(v22 + 80);
  sub_1C4420C3C(v22 + 56, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  if (!v49)
  {
    v65 = *(v22 + 656);
    sub_1C4F00198();
    v66 = sub_1C4F00968();
    v67 = sub_1C4F01CF8();
    if (sub_1C43FCEA4(v67))
    {
      v68 = sub_1C43FCED0();
      sub_1C43FBD24(v68);
      sub_1C44057CC();
      _os_log_impl(v69, v70, v71, v72, v73, 2u);
      sub_1C43FE9D4();
    }

    v74 = *(v22 + 656);
    goto LABEL_35;
  }

  sub_1C4460050(v42 + v48, v22 + 136, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  if (!*(v22 + 160))
  {
    sub_1C4420C3C(v22 + 136, &qword_1EC0B97A0, &qword_1C4F0F7D0);
    *(v22 + 96) = 0u;
    *(v22 + 112) = 0u;
    *(v22 + 128) = 0;
    goto LABEL_16;
  }

  v50 = *(v22 + 168);
  sub_1C4409678((v22 + 136), *(v22 + 160));
  v51 = *(v50 + 32);
  v52 = sub_1C43FBEF8();
  v53(v52);
  sub_1C46CB91C(v22 + 136);
  if (!*(v22 + 120))
  {
LABEL_16:
    sub_1C4420C3C(v22 + 96, &qword_1EC0BB380, &unk_1C4F1F2E0);
    goto LABEL_17;
  }

  sub_1C4420C3C(v22 + 96, &qword_1EC0BB380, &unk_1C4F1F2E0);
  sub_1C4460050(v42 + v48, v22 + 336, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  if (!*(v22 + 360))
  {
    v128 = &qword_1EC0B97A0;
    v129 = &qword_1C4F0F7D0;
    v130 = v22 + 336;
LABEL_31:
    sub_1C4420C3C(v130, v128, v129);
    goto LABEL_32;
  }

  v54 = *(v22 + 368);
  sub_1C4409678((v22 + 336), *(v22 + 360));
  v55 = *(v54 + 32);
  v56 = sub_1C43FBEF8();
  v57(v56);
  sub_1C46CB91C(v22 + 336);
  if (!*(v22 + 320))
  {
    v128 = &qword_1EC0BB380;
    v129 = &unk_1C4F1F2E0;
    v130 = v22 + 296;
    goto LABEL_31;
  }

  v58 = *(v22 + 328);
  sub_1C4409678((v22 + 296), *(v22 + 320));
  v59 = *(v58 + 24);
  v60 = sub_1C43FBEF8();
  v62 = v61(v60);
  sub_1C440962C((v22 + 296));
  if (v62)
  {
LABEL_32:
    v131 = *(v22 + 648);
    sub_1C4F00198();
    v66 = sub_1C4F00968();
    v132 = sub_1C4F01CF8();
    if (sub_1C43FCEA4(v132))
    {
      v133 = sub_1C43FCED0();
      sub_1C43FBD24(v133);
      sub_1C44057CC();
      _os_log_impl(v134, v135, v136, v137, v138, 2u);
      sub_1C43FE9D4();
    }

    v139 = *(v22 + 648);
LABEL_35:
    v140 = *(v22 + 584);
    v141 = *(v22 + 576);
    v142 = *(v22 + 568);
    v64 = *(v22 + 408);

    v143 = sub_1C43FBEF8();
    v38(v143);
    v144 = v142;
LABEL_40:
    sub_1C46CB73C(v144);
    goto LABEL_41;
  }

LABEL_17:
  v75 = *(v22 + 568);
  *(v22 + 728) = *(*(v22 + 520) + 20);
  sub_1C4EF9B78();
  if (v76 > 10800.0)
  {
    v77 = *(v22 + 640);
    v78 = *(v22 + 568);
    v79 = *(v22 + 560);
    sub_1C4F00198();
    v80 = sub_1C4402B58();
    sub_1C46CB798(v80, v81);
    v82 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C44024DC();
    v84 = os_log_type_enabled(v82, v83);
    v85 = *(v22 + 560);
    if (v84)
    {
      v86 = sub_1C43FD084();
      sub_1C4402F1C(v86, 3.852e-34);
      v88 = v87;
      sub_1C46CB73C(v85);
      *(v86 + 4) = v88;
      sub_1C4416FE0(&dword_1C43F8000, v89, v90, "currSegment duration of %f is greater than maxDurationOfShoppingActivityInSeconds");
      sub_1C43FBE2C();
    }

    else
    {

      sub_1C46CB73C(v85);
    }

    v107 = *(v22 + 640);
LABEL_38:
    v145 = *(v22 + 568);
    v64 = *(v22 + 408);
    v146 = *(v22 + 584) + 8;
    (v38)(v107, *(v22 + 576));
LABEL_39:
    v144 = v145;
    goto LABEL_40;
  }

  v91 = *(v22 + 568);
  sub_1C4EF9B78();
  if (v92 < 1200.0)
  {
    v93 = *(v22 + 632);
    v94 = *(v22 + 568);
    v95 = *(v22 + 552);
    sub_1C4F00198();
    v96 = sub_1C4402B58();
    sub_1C46CB798(v96, v97);
    v98 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C44024DC();
    v100 = os_log_type_enabled(v98, v99);
    v101 = *(v22 + 552);
    if (v100)
    {
      v102 = sub_1C43FD084();
      sub_1C4402F1C(v102, 3.852e-34);
      v104 = v103;
      sub_1C46CB73C(v101);
      *(v102 + 4) = v104;
      sub_1C4416FE0(&dword_1C43F8000, v105, v106, "currSegment duration of %f is less than minDurationOfShoppingActivityInSeconds");
      sub_1C43FBE2C();
    }

    else
    {

      sub_1C46CB73C(v101);
    }

    v107 = *(v22 + 632);
    goto LABEL_38;
  }

  v108 = *(v22 + 544);
  v109 = *(v22 + 536);
  v110 = *(v22 + 528);
  v111 = *(v22 + 504);
  sub_1C46CB798(*(v22 + 568), v108);
  v112 = (*(v110 + 80) + 16) & ~*(v110 + 80);
  v113 = swift_allocObject();
  sub_1C46CB668(v108, v113 + v112);
  sub_1C4EFE1B8();
  sub_1C4460050(v42 + v48, v22 + 256, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  if (*(v22 + 280))
  {
    v114 = *(v22 + 288);
    sub_1C4409678((v22 + 256), *(v22 + 280));
    v115 = *(v114 + 32);
    v116 = sub_1C4402B58();
    v117(v116);
    sub_1C46CB91C(v22 + 256);
    if (*(v22 + 240))
    {
      v118 = *(v22 + 248);
      sub_1C4409678((v22 + 216), *(v22 + 240));
      v119 = *(v118 + 16);
      v120 = sub_1C4402B58();
      v121(v120);
      if (*(v22 + 200))
      {
        v122 = *(v22 + 208);
        sub_1C4409678((v22 + 176), *(v22 + 200));
        v123 = *(v122 + 32);
        v124 = sub_1C4402B58();
        v126 = v125(v124);
        a14 = v127;
        a15 = v126;
        sub_1C440962C((v22 + 176));
        sub_1C440962C((v22 + 216));
        goto LABEL_48;
      }

      sub_1C440962C((v22 + 216));
      v159 = &unk_1EC0BB388;
      v160 = &unk_1C4F1F2F0;
      v161 = v22 + 176;
    }

    else
    {
      v159 = &qword_1EC0BB380;
      v160 = &unk_1C4F1F2E0;
      v161 = v22 + 216;
    }
  }

  else
  {
    v159 = &qword_1EC0B97A0;
    v160 = &qword_1C4F0F7D0;
    v161 = v22 + 256;
  }

  sub_1C4420C3C(v161, v159, v160);
  a14 = 0;
  a15 = 0;
LABEL_48:
  a13 = *(v22 + 496);
  v162 = *(v22 + 488);
  a17 = *(v22 + 480);
  a18 = *(v22 + 624);
  v164 = *(v22 + 464);
  v163 = *(v22 + 472);
  v165 = *(v22 + 448);
  v166 = *(v22 + 456);
  v167 = *(v22 + 440);
  a16 = *(v22 + 432);
  v168 = *(v22 + 424);
  (*(v164 + 16))(v162, *(v22 + 504), v166);
  v169 = (*(v164 + 80) + 40) & ~*(v164 + 80);
  v170 = swift_allocObject();
  *(v170 + 2) = v168;
  *(v170 + 3) = a15;
  *(v170 + 4) = a14;
  (*(v164 + 32))(&v170[v169], v162, v166);

  sub_1C4EFE1B8();
  sub_1C456902C(&qword_1EC0B97A8, &unk_1C4F0F7E0);
  v171 = sub_1C4EFE178();
  sub_1C43FCF7C(v171);
  v173 = *(v172 + 72);
  v175 = (*(v174 + 80) + 32) & ~*(v174 + 80);
  *(swift_allocObject() + 16) = xmmword_1C4F0D130;
  sub_1C4EFE1A8();
  (*(v167 + 104))(v165, *MEMORY[0x1E69A9A98], a16);
  sub_1C4F016E8();

  v176 = *(v167 + 8);
  v177 = sub_1C44057DC();
  v178(v177);
  sub_1C4EFE188();
  v180 = v179;
  *(v22 + 680) = v179;
  sub_1C4F00198();
  v181 = sub_1C4F00968();
  v182 = sub_1C4F01CF8();
  if (sub_1C4402B64(v182))
  {
    v183 = sub_1C43FD084();
    *v183 = 134217984;
    *(v183 + 4) = v180;
    sub_1C4402B48();
    _os_log_impl(v184, v185, v186, v187, v188, 0xCu);
    sub_1C43FE9D4();
  }

  v189 = *(v22 + 624);
  v190 = *(v22 + 584);
  v191 = *(v22 + 576);

  *(v22 + 688) = (v190 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v192 = sub_1C4402B58();
  v38(v192);
  if (v180 < 0.6)
  {
    v145 = *(v22 + 568);
    v194 = *(v22 + 496);
    v193 = *(v22 + 504);
    v195 = *(v22 + 456);
    v64 = *(v22 + 408);
    v196 = *(*(v22 + 464) + 8);
    v196(*(v22 + 480), v195);
    v196(v194, v195);
    v196(v193, v195);
    goto LABEL_39;
  }

  *(v22 + 696) = *(*(v22 + 424) + 144);
  v197 = swift_task_alloc();
  *(v22 + 704) = v197;
  *v197 = v22;
  v197[1] = sub_1C4B1447C;
  v198 = *(v22 + 568);
  sub_1C440FB70();

  return sub_1C4B150E4();
}

uint64_t sub_1C4B1447C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v2 = v1;
  v4 = *(v3 + 704);
  v5 = *v0;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v7 + 712) = v8;

  v9 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4B14560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C44249CC();
  if (v22[89] >= 0.75)
  {
    v53 = swift_task_alloc();
    *(v22 + 90) = v53;
    *v53 = v22;
    v53[1] = sub_1C4B147AC;
    v54 = *(v22 + 87);
    v55 = *(v22 + 71);
    sub_1C440FB70();

    return sub_1C4B15D6C();
  }

  else
  {
    v27 = *(v22 + 77);
    sub_1C4F00198();
    sub_1C4F00968();
    v28 = sub_1C4F01CF8();
    if (sub_1C4402B64(v28))
    {
      v29 = *(v22 + 89);
      v30 = sub_1C43FD084();
      *v30 = 134217984;
      *(v30 + 4) = v29;
      sub_1C4402B48();
      _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
      sub_1C43FE9D4();
    }

    v36 = *(v22 + 86);
    v37 = *(v22 + 84);
    v38 = *(v22 + 77);
    sub_1C4425F94();
    v39 = sub_1C4402B58();
    v37(v39);
    v40 = *(v23 + 8);
    v40(v25, v26);
    v40(v24, v26);
    v40(a16, v26);
    sub_1C46CB73C(a17);
    v41 = type metadata accessor for InferredActivitySegment();
    sub_1C44102A4(a18, v42, v43, v41);
    sub_1C4407A18();

    sub_1C43FBDA0();
    sub_1C440FB70();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }
}

uint64_t sub_1C4B147AC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v2 = v1;
  *(v1 + 400) = v3;
  *(v1 + 384) = v4;
  *(v1 + 392) = v5;
  *(v1 + 376) = v0;
  v7 = *(v6 + 720);
  v8 = *v0;
  sub_1C43FBDAC();
  *v9 = v8;
  *(v11 + 732) = v10;

  v12 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C4B1489C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C44249CC();
  if (*(v22 + 732))
  {
    v27 = *(v22 + 592);
    sub_1C4F00198();
    sub_1C4F00968();
    v28 = sub_1C4F01CF8();
    if (sub_1C4402B64(v28))
    {
      v29 = sub_1C43FCED0();
      sub_1C43FBD24(v29);
      sub_1C4402B48();
      _os_log_impl(v30, v31, v32, v33, v34, 2u);
      sub_1C43FE9D4();
    }

    v35 = *(v22 + 688);
    v36 = *(v22 + 672);
    v37 = *(v22 + 592);
    sub_1C4425F94();
    v38 = sub_1C4402B58();
    v36(v38);
    v39 = *(v23 + 8);
    v39(v25, v26);
    v39(v24, v26);
    v39(a16, v26);
LABEL_13:
    sub_1C46CB73C(a17);
    v95 = type metadata accessor for InferredActivitySegment();
    sub_1C44102A4(a18, v96, v97, v95);
    goto LABEL_14;
  }

  if (*(v22 + 384) >= 1800.0 || *(v22 + 392) >= 1800.0)
  {
    v71 = *(v22 + 608);
    v72 = *(v22 + 424);
    sub_1C4F00198();

    v73 = sub_1C4F00968();
    v74 = sub_1C4F01CF8();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = sub_1C441BC74(v75, 3.8522e-34);
      *(v76 + 22) = v77;
      *(v76 + 24) = 0x409C200000000000;
      sub_1C4402B48();
      _os_log_impl(v78, v79, v80, v81, v82, 0x20u);
      sub_1C43FE9D4();
    }

    v83 = *(v22 + 688);
    v84 = *(v22 + 672);
    v85 = *(v22 + 608);
    v86 = *(v22 + 576);
    v88 = *(v22 + 496);
    v87 = *(v22 + 504);
    v89 = *(v22 + 480);
    v90 = v73;
    v92 = *(v22 + 456);
    v91 = *(v22 + 464);
    a17 = *(v22 + 568);
    a18 = *(v22 + 408);

    v93 = sub_1C4402B58();
    v84(v93);
    v94 = *(v91 + 8);
    v94(v89, v92);
    v94(v88, v92);
    v94(v87, v92);
    goto LABEL_13;
  }

  v40 = *(v22 + 600);
  sub_1C4F00198();
  v41 = sub_1C4F00968();
  v42 = sub_1C4F01CF8();
  if (sub_1C43FCEA4(v42))
  {
    v43 = swift_slowAlloc();
    sub_1C441BC74(v43, 3.8521e-34);
    sub_1C44057CC();
    _os_log_impl(v44, v45, v46, v47, v48, 0x16u);
    sub_1C43FE9D4();
  }

  v49 = *(v22 + 680);
  v50 = *(v22 + 672);
  v51 = *(v22 + 600);
  v52 = *(v22 + 576);
  v53 = *(v22 + 568);
  a17 = *(v22 + 504);
  a18 = *(v22 + 728);
  a15 = *(v22 + 688);
  a16 = *(v22 + 496);
  v54 = *(v22 + 480);
  v55 = v41;
  v57 = *(v22 + 456);
  v56 = *(v22 + 464);
  v58 = *(v22 + 424);
  v59 = *(v22 + 408);

  v50(v51, v52);
  v60 = *(v56 + 8);
  v60(v54, v57);
  v60(a16, v57);
  v60(a17, v57);
  v61 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v61);
  v63 = *(v62 + 16);
  v63(v59, v53, v61);
  v64 = type metadata accessor for InferredActivitySegment();
  v63(v59 + v64[5], v53 + a18, v61);
  sub_1C46CB73C(v53);
  v65 = *(v58 + 168);
  v66 = *(v58 + 176);
  *(v59 + v64[6]) = *(v58 + 16);
  *(v59 + v64[7]) = v49;
  v67 = (v59 + v64[8]);
  *v67 = v65;
  v67[1] = v66;
  sub_1C43FBD94();
  sub_1C440BAA8(v68, v69, v70, v64);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_14:
  sub_1C4407A18();

  sub_1C43FBDA0();
  sub_1C440FB70();

  return v99(v98, v99, v100, v101, v102, v103, v104, v105, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

double sub_1C4B14D1C(uint64_t a1)
{
  v2 = sub_1C4F00978();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = type metadata accessor for LOIBasedSegment(0);
  sub_1C4460050(a1 + *(v7 + 24), v14, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  if (v15)
  {
    v8 = sub_1C4B70BBC();
    sub_1C46CB91C(v14);
  }

  else
  {
    sub_1C4420C3C(v14, &qword_1EC0B97A0, &qword_1C4F0F7D0);
    v8 = 0.0;
  }

  sub_1C4F00198();
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = v8;
    _os_log_impl(&dword_1C43F8000, v9, v10, "storedVisitConfidence for shopping = %f", v11, 0xCu);
    MEMORY[0x1C6942830](v11, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return v8;
}

double sub_1C4B14ED8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1C4F00978();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a1 + 40);
  if (a3)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0;
  }

  if (a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v26[0] = v12;
  v26[1] = v13;
  v25 = v26;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = sub_1C44CE068(sub_1C44CE790, v24, v11);

  v15 = 0.0;
  if (v14)
  {
    v16 = *(a1 + 128);
    v17._countAndFlagsBits = 0x494F506F6547;
    v17._object = 0xE600000000000000;
    v18 = ConfidenceService.confidence(source:signalType:)(v17, 0);
    sub_1C4EFE188();
    v15 = v18 * v19;
  }

  sub_1C4F00198();
  v20 = sub_1C4F00968();
  v21 = sub_1C4F01CF8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = v15;
    _os_log_impl(&dword_1C43F8000, v20, v21, "shoppingConfidenceDueToGeoPoi = %f", v22, 0xCu);
    MEMORY[0x1C6942830](v22, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  return v15;
}

uint64_t sub_1C4B150E4()
{
  sub_1C43FBCD4();
  v0[25] = v1;
  v0[26] = v2;
  v3 = sub_1C4F00978();
  v0[27] = v3;
  sub_1C43FCF7C(v3);
  v0[28] = v4;
  v6 = *(v5 + 64);
  v0[29] = sub_1C43FBE7C();
  v7 = sub_1C456902C(&qword_1EC0C1B98, &unk_1C4F461E0);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  v0[30] = sub_1C43FBE7C();
  v10 = sub_1C456902C(&qword_1EC0B8AF0, &unk_1C4F0DF20);
  v0[31] = v10;
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  v0[32] = sub_1C43FBE7C();
  v13 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  v0[33] = v13;
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64);
  v0[34] = sub_1C43FE604();
  v0[35] = swift_task_alloc();
  v16 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v0[36] = v16;
  sub_1C43FBD18(v16);
  v18 = *(v17 + 64);
  v0[37] = sub_1C43FBE7C();
  v19 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1C4B15250()
{
  v1 = v0[26];
  v2 = *(type metadata accessor for LOIBasedSegment(0) + 20);
  v3 = sub_1C4EF9CD8();
  sub_1C4575ED0();
  v4 = sub_1C4410584();
  if (v4)
  {
    v74 = v0[37];
    v75 = v0[36];
    v5 = v0[34];
    v6 = v0[35];
    v7 = v0[33];
    v8 = v0[26];
    v76 = v0[25];
    sub_1C43FCE64();
    v10 = v9;
    v12 = *(v11 + 16);
    v12(v6);
    v13 = sub_1C440BF24();
    v12(v13);
    v14 = sub_1C44089C8();
    sub_1C4460050(v14, v15, v16, v17);
    v72 = *(v7 + 48);
    v18 = *(v10 + 32);
    v19 = sub_1C43FF584();
    v20 = v18(v19);
    v28 = sub_1C441C46C(v20, v21, v22, v23, v24, v25, v26, v27, v72);
    v2(v28);
    v29 = sub_1C44089C8();
    v31 = sub_1C44CD9E0(v29, v30, &qword_1EC0B84B0, qword_1C4F0CDE0);
    v39 = sub_1C4435398(v31, v32, v33, v34, v35, v36, v37, v38, v73, v74, v75);
    v18(v39);
    v40 = sub_1C44057DC();
    v2(v40);
    v0[10] = sub_1C456902C(&qword_1EC0C1BB0, &qword_1C4F46228);
    v0[11] = sub_1C4B16D30();
    v41 = sub_1C4422F90(v0 + 7);
    sub_1C4422480(v41);
    v0[38] = v3;
    if (v3)
    {
      sub_1C4420C3C(v0[37], &qword_1EC0B84B8, &unk_1C4F0D4F0);
      sub_1C47C41F8(v0 + 7);
      sub_1C44603BC();
      v42 = sub_1C4F00968();
      v43 = sub_1C4F01CF8();
      if (sub_1C4402B64(v43))
      {
        v44 = sub_1C43FCED0();
        sub_1C4405D10(v44);
        sub_1C442BEF0(&dword_1C43F8000, v45, (v10 + 32), "Unable to fetch motion state events for calculating walkingToStationaryRatio");
        sub_1C43FBE2C();
      }

      v46 = v0[38];
      v48 = v0[28];
      v47 = v0[29];
      v49 = v0[27];

      v50 = *(v48 + 8);
      v51 = sub_1C4404BCC();
      v52(v51);
      if (!v46)
      {
        sub_1C440962C(v0 + 2);
      }

      sub_1C43FC838();

      sub_1C43FBDA0();
      sub_1C440405C();

      __asm { BRAA            X1, X16 }
    }

    sub_1C4420C3C(v0[37], &qword_1EC0B84B8, &unk_1C4F0D4F0);
    sub_1C441D670((v0 + 7), (v0 + 2));
    v55 = v0[6];
    sub_1C4409678(v0 + 2, v0[5]);
    sub_1C43FCE64();
    v57 = *(v56 + 64);
    sub_1C43FBE7C();
    sub_1C4418A44();
    v58();
    v59 = *(v55 + 8);
    v0[15] = sub_1C44411D4();
    v0[16] = swift_getAssociatedConformanceWitness();
    sub_1C4422F90(v0 + 12);
    sub_1C4404BCC();
    sub_1C4F019A8();

    v0[39] = 0;
    v0[40] = 0;
    sub_1C4433DB4();
    v0[43] = sub_1C43FD730();
    v60 = sub_1C4F01F48();
    v0[44] = v60;
    sub_1C43FCF7C(v60);
    v0[45] = v61;
    v63 = *(v62 + 64);
    v0[46] = sub_1C43FBE7C();
    v64 = sub_1C43FD730();
    v0[47] = v64;
    sub_1C43FCF7C(v64);
    v0[48] = v65;
    v0[49] = *(v66 + 64);
    v0[50] = sub_1C43FBE7C();
    v67 = *(MEMORY[0x1E69E85B0] + 4);
    swift_task_alloc();
    sub_1C43FBE70();
    v0[51] = v68;
    *v68 = v69;
    sub_1C441A4A8(v68);
    sub_1C440405C();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6D8D0](v4);
}

uint64_t sub_1C4B15708()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v6 = *(v5 + 408);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;

  if (v0)
  {
    v9 = sub_1C4B15B94;
  }

  else
  {
    v10 = *(v3 + 400);

    v9 = sub_1C4B1580C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1C4B1580C()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 344);
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 312);
    v4 = *(v0 + 320);
    (*(*(v0 + 360) + 8))(v1, *(v0 + 352));

    sub_1C440962C((v0 + 96));
    v5 = 0.0;
    if (v4 != 0.0 && v3 != 0.0)
    {
      v5 = *(v0 + 320) / (*(v0 + 320) + *(v0 + 312));
    }

    sub_1C440962C((v0 + 16));
    sub_1C43FC838();

    sub_1C43FBDA0();
    v7.n128_f64[0] = v5;

    return v6(v7);
  }

  else
  {
    v10 = *(v0 + 240);
    v9 = *(v0 + 248);
    *(v0 + 160) = v2;
    v11 = sub_1C4422F90((v0 + 136));
    (*(*(v2 - 8) + 32))(v11, v1, v2);

    sub_1C44482AC((v0 + 136), (v0 + 168));
    if (swift_dynamicCast())
    {
      v15 = *(v0 + 312);
      v14 = *(v0 + 320);
      v17 = *(v0 + 248);
      v16 = *(v0 + 256);
      v18 = *(v0 + 240);
      sub_1C43FBD94();
      sub_1C440BAA8(v19, v20, v21, v17);
      sub_1C44CD9E0(v18, v16, &qword_1EC0B8AF0, &unk_1C4F0DF20);
      v22 = v16 + *(v17 + 28);
      sub_1C4EF9AD8();
      v24 = v23;
      sub_1C4EF9AD8();
      v26 = v24 - v25;
      v27 = *(v16 + *(v17 + 32));
      v28 = sub_1C4404BCC();
      sub_1C4420C3C(v28, v29, &unk_1C4F0DF20);
      v30 = v14 + v26;
      v31 = v15 + v26;
      if (v27 != 2)
      {
        v31 = v15;
      }

      if (v27 == 4)
      {
        v31 = v15;
      }

      else
      {
        v30 = v14;
      }

      *(v0 + 312) = v31;
      *(v0 + 320) = v30;
    }

    else
    {
      v32 = *(v0 + 240);
      sub_1C44102A4(v32, v12, v13, *(v0 + 248));
      sub_1C4420C3C(v32, &qword_1EC0C1B98, &unk_1C4F461E0);
    }

    sub_1C4433DB4();
    *(v0 + 344) = sub_1C43FD730();
    v33 = sub_1C4F01F48();
    *(v0 + 352) = v33;
    sub_1C43FCF7C(v33);
    *(v0 + 360) = v34;
    v36 = *(v35 + 64);
    *(v0 + 368) = sub_1C43FBE7C();
    v37 = sub_1C43FD730();
    *(v0 + 376) = v37;
    sub_1C43FCF7C(v37);
    *(v0 + 384) = v38;
    *(v0 + 392) = *(v39 + 64);
    *(v0 + 400) = sub_1C43FBE7C();
    v40 = *(MEMORY[0x1E69E85B0] + 4);
    swift_task_alloc();
    sub_1C43FBE70();
    *(v0 + 408) = v41;
    *v41 = v42;
    v43 = sub_1C441A4A8(v41);

    return MEMORY[0x1EEE6D8D0](v43);
  }
}

uint64_t sub_1C4B15B94()
{
  v3 = v1[49];
  v4 = v1[50];
  v5 = v1[47];
  v6 = v1[48];
  v8 = v1[41];
  v7 = v1[42];
  sub_1C43FBE7C();
  sub_1C444B2A0();
  v2();
  swift_getAssociatedConformanceWitness();
  sub_1C43FF584();
  v9 = sub_1C4F028C8();
  if (v9)
  {
    v4 = v9;
    (*(v1[48] + 8))(v0, v1[47]);
  }

  else
  {
    v10 = v1[47];
    sub_1C44057DC();
    v11 = swift_allocError();
    v13 = sub_1C444FF78(v11, v12);
    (v2)(v13);
  }

  v14 = v1[50];
  v15 = v1[46];

  sub_1C440962C(v1 + 12);
  sub_1C44603BC();
  v16 = sub_1C4F00968();
  sub_1C4F01CF8();
  sub_1C44024DC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = sub_1C43FCED0();
    sub_1C4405D10(v18);
    sub_1C442BEF0(&dword_1C43F8000, v19, v14, "Unable to fetch motion state events for calculating walkingToStationaryRatio");
    sub_1C43FBE2C();
  }

  v20 = v1[38];
  v22 = v1[28];
  v21 = v1[29];
  v23 = v1[27];

  v24 = *(v22 + 8);
  v25 = sub_1C43FBEF8();
  v26(v25);
  if (!v20)
  {
    sub_1C440962C(v1 + 2);
  }

  sub_1C43FC838();

  sub_1C43FBDA0();
  v28.n128_u64[0] = 0;

  return v27(v28);
}

uint64_t sub_1C4B15D6C()
{
  sub_1C43FBCD4();
  v0[25] = v1;
  v0[26] = v2;
  v3 = sub_1C4F00978();
  v0[27] = v3;
  sub_1C43FCF7C(v3);
  v0[28] = v4;
  v6 = *(v5 + 64);
  v0[29] = sub_1C43FE604();
  v0[30] = swift_task_alloc();
  v7 = sub_1C456902C(&qword_1EC0C1B98, &unk_1C4F461E0);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  v0[31] = sub_1C43FBE7C();
  v10 = sub_1C456902C(&qword_1EC0B8AF0, &unk_1C4F0DF20);
  v0[32] = v10;
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  v0[33] = sub_1C43FBE7C();
  v13 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  v0[34] = v13;
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64);
  v0[35] = sub_1C43FE604();
  v0[36] = swift_task_alloc();
  v16 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v0[37] = v16;
  sub_1C43FBD18(v16);
  v18 = *(v17 + 64);
  v0[38] = sub_1C43FBE7C();
  v19 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1C4B15EE4()
{
  v1 = v0[26];
  v2 = *(type metadata accessor for LOIBasedSegment(0) + 20);
  v3 = sub_1C4EF9CD8();
  sub_1C4575ED0();
  v4 = sub_1C4410584();
  if (v4)
  {
    v74 = v0[38];
    v75 = v0[37];
    v5 = v0[35];
    v6 = v0[36];
    v7 = v0[34];
    v8 = v0[26];
    v76 = v0[25];
    sub_1C43FCE64();
    v10 = v9;
    v12 = *(v11 + 16);
    v12(v6);
    v13 = sub_1C440BF24();
    v12(v13);
    v14 = sub_1C44089C8();
    sub_1C4460050(v14, v15, v16, v17);
    v72 = *(v7 + 48);
    v18 = *(v10 + 32);
    v19 = sub_1C43FF584();
    v20 = v18(v19);
    v28 = sub_1C441C46C(v20, v21, v22, v23, v24, v25, v26, v27, v72);
    v2(v28);
    v29 = sub_1C44089C8();
    v31 = sub_1C44CD9E0(v29, v30, &qword_1EC0B84B0, qword_1C4F0CDE0);
    v39 = sub_1C4435398(v31, v32, v33, v34, v35, v36, v37, v38, v73, v74, v75);
    v18(v39);
    v40 = sub_1C44057DC();
    v2(v40);
    v0[10] = sub_1C456902C(&qword_1EC0C1BB0, &qword_1C4F46228);
    v0[11] = sub_1C4B16D30();
    v41 = sub_1C4422F90(v0 + 7);
    sub_1C4422480(v41);
    v0[39] = v3;
    if (v3)
    {
      sub_1C4420C3C(v0[38], &qword_1EC0B84B8, &unk_1C4F0D4F0);
      sub_1C47C41F8(v0 + 7);
      sub_1C44603BC();
      v42 = sub_1C4F00968();
      v43 = sub_1C4F01CF8();
      if (sub_1C4402B64(v43))
      {
        v44 = sub_1C43FCED0();
        sub_1C4405D10(v44);
        sub_1C442BEF0(&dword_1C43F8000, v45, (v10 + 32), "Unable to fetch motion state events for calculating walkingToStationaryRatio");
        sub_1C43FBE2C();
      }

      v46 = v0[39];
      v48 = v0[28];
      v47 = v0[29];
      v49 = v0[27];

      v50 = *(v48 + 8);
      v51 = sub_1C4404BCC();
      v52(v51);
      if (!v46)
      {
        sub_1C440962C(v0 + 2);
      }

      sub_1C4415C20();

      sub_1C441E670();
      sub_1C440405C();

      __asm { BRAA            X4, X16 }
    }

    sub_1C4420C3C(v0[38], &qword_1EC0B84B8, &unk_1C4F0D4F0);
    sub_1C441D670((v0 + 7), (v0 + 2));
    v55 = v0[6];
    sub_1C4409678(v0 + 2, v0[5]);
    sub_1C43FCE64();
    v57 = *(v56 + 64);
    sub_1C43FBE7C();
    sub_1C4418A44();
    v58();
    v59 = *(v55 + 8);
    v0[15] = sub_1C44411D4();
    v0[16] = swift_getAssociatedConformanceWitness();
    sub_1C4422F90(v0 + 12);
    sub_1C4404BCC();
    sub_1C4F019A8();

    v0[40] = 0;
    v0[41] = 0;
    sub_1C4436644();
    v0[44] = sub_1C43FD730();
    v60 = sub_1C4F01F48();
    v0[45] = v60;
    sub_1C43FCF7C(v60);
    v0[46] = v61;
    v63 = *(v62 + 64);
    v0[47] = sub_1C43FBE7C();
    v64 = sub_1C43FD730();
    v0[48] = v64;
    sub_1C43FCF7C(v64);
    v0[49] = v65;
    v0[50] = *(v66 + 64);
    v0[51] = sub_1C43FBE7C();
    v67 = *(MEMORY[0x1E69E85B0] + 4);
    swift_task_alloc();
    sub_1C43FBE70();
    v0[52] = v68;
    *v68 = v69;
    sub_1C441A4A8(v68);
    sub_1C440405C();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6D8D0](v4);
}

uint64_t sub_1C4B163A0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v6 = *(v5 + 416);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;

  if (v0)
  {
    v9 = sub_1C4B16940;
  }

  else
  {
    v10 = *(v3 + 408);

    v9 = sub_1C4B164A4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1C4B164A4()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 352);
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 320);
    v4 = *(v0 + 328);
    (*(*(v0 + 368) + 8))(v1, *(v0 + 360));

    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    sub_1C440962C((v0 + 16));
    sub_1C440962C((v0 + 96));
    v5 = *(v0 + 304);
    v7 = *(v0 + 280);
    v6 = *(v0 + 288);
    v8 = *(v0 + 264);
    v10 = *(v0 + 240);
    v9 = *(v0 + 248);
    v11 = *(v0 + 232);

    v12 = *(v0 + 8);

    return v12(v4, v3, 0);
  }

  else
  {
    v15 = *(v0 + 248);
    v14 = *(v0 + 256);
    *(v0 + 160) = v2;
    v16 = sub_1C4422F90((v0 + 136));
    (*(*(v2 - 8) + 32))(v16, v1, v2);

    sub_1C44482AC((v0 + 136), (v0 + 168));
    if (swift_dynamicCast())
    {
      v19 = *(v0 + 256);
      v20 = *(v0 + 264);
      v21 = *(v0 + 248);
      sub_1C43FBD94();
      sub_1C440BAA8(v22, v23, v24, v19);
      sub_1C44CD9E0(v21, v20, &qword_1EC0B8AF0, &unk_1C4F0DF20);
      v25 = *(v20 + *(v19 + 32));
      if (v25 == 1)
      {
        v50 = *(v0 + 320);
        v51 = *(v0 + 264);
        v52 = v51 + *(*(v0 + 256) + 28);
        sub_1C4EF9AD8();
        v54 = v53;
        sub_1C4EF9AD8();
        v56 = v55;
        sub_1C4420C3C(v51, &qword_1EC0B8AF0, &unk_1C4F0DF20);
        v57 = v54 - v56;
        if (v50 >= v54 - v56)
        {
          v57 = v50;
        }

        v33 = *(v0 + 328);
      }

      else
      {
        if (v25 == 2)
        {
          v26 = *(v0 + 328);
          v27 = *(v0 + 264);
          v28 = v27 + *(*(v0 + 256) + 28);
          sub_1C4EF9AD8();
          v30 = v29;
          sub_1C4EF9AD8();
          v32 = v31;
          sub_1C4420C3C(v27, &qword_1EC0B8AF0, &unk_1C4F0DF20);
          if (v26 >= v30 - v32)
          {
            v33 = v26;
          }

          else
          {
            v33 = v30 - v32;
          }
        }

        else
        {
          sub_1C4420C3C(*(v0 + 264), &qword_1EC0B8AF0, &unk_1C4F0DF20);
          v33 = *(v0 + 328);
        }

        v57 = *(v0 + 320);
      }

      *(v0 + 320) = v57;
      *(v0 + 328) = v33;
    }

    else
    {
      v34 = *(v0 + 248);
      v35 = *(v0 + 240);
      sub_1C44102A4(v34, v17, v18, *(v0 + 256));
      sub_1C4420C3C(v34, &qword_1EC0C1B98, &unk_1C4F461E0);
      sub_1C4F00198();
      v36 = sub_1C4F00968();
      v37 = sub_1C4F01CF8();
      if (sub_1C4402B64(v37))
      {
        v38 = sub_1C43FCED0();
        sub_1C43FBD24(v38);
        sub_1C4402B48();
        _os_log_impl(v39, v40, v41, v42, v43, 2u);
        sub_1C43FE9D4();
      }

      v44 = *(v0 + 240);
      v45 = *(v0 + 216);
      v46 = *(v0 + 224);

      v47 = *(v46 + 8);
      v48 = sub_1C4402B58();
      v49(v48);
    }

    sub_1C4436644();
    *(v0 + 352) = sub_1C43FD730();
    v58 = sub_1C4F01F48();
    *(v0 + 360) = v58;
    sub_1C43FCF7C(v58);
    *(v0 + 368) = v59;
    v61 = *(v60 + 64);
    *(v0 + 376) = sub_1C43FBE7C();
    v62 = sub_1C43FD730();
    *(v0 + 384) = v62;
    sub_1C43FCF7C(v62);
    *(v0 + 392) = v63;
    *(v0 + 400) = *(v64 + 64);
    *(v0 + 408) = sub_1C43FBE7C();
    v65 = *(MEMORY[0x1E69E85B0] + 4);
    swift_task_alloc();
    sub_1C43FBE70();
    *(v0 + 416) = v66;
    *v66 = v67;
    v68 = sub_1C441A4A8(v66);

    return MEMORY[0x1EEE6D8D0](v68);
  }
}

uint64_t sub_1C4B16940()
{
  v3 = v1[50];
  v4 = v1[51];
  v5 = v1[48];
  v6 = v1[49];
  v8 = v1[42];
  v7 = v1[43];
  sub_1C43FBE7C();
  sub_1C444B2A0();
  v2();
  swift_getAssociatedConformanceWitness();
  sub_1C43FF584();
  v9 = sub_1C4F028C8();
  if (v9)
  {
    v4 = v9;
    (*(v1[49] + 8))(v0, v1[48]);
  }

  else
  {
    v10 = v1[48];
    sub_1C44057DC();
    v11 = swift_allocError();
    v13 = sub_1C444FF78(v11, v12);
    (v2)(v13);
  }

  v14 = v1[51];
  v15 = v1[47];

  sub_1C440962C(v1 + 12);
  sub_1C44603BC();
  v16 = sub_1C4F00968();
  sub_1C4F01CF8();
  sub_1C44024DC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = sub_1C43FCED0();
    sub_1C4405D10(v18);
    sub_1C442BEF0(&dword_1C43F8000, v19, v14, "Unable to fetch motion state events for calculating walkingToStationaryRatio");
    sub_1C43FBE2C();
  }

  v20 = v1[39];
  v22 = v1[28];
  v21 = v1[29];
  v23 = v1[27];

  v24 = *(v22 + 8);
  v25 = sub_1C43FBEF8();
  v26(v25);
  if (!v20)
  {
    sub_1C440962C(v1 + 2);
  }

  sub_1C4415C20();

  v27 = sub_1C441E670();

  return v28(v27);
}

void *sub_1C4B16B1C()
{
  v1 = v0[5];

  sub_1C440962C(v0 + 6);
  sub_1C440962C(v0 + 11);
  v2 = v0[16];

  v3 = v0[17];

  v4 = v0[18];

  v5 = v0[22];

  return v0;
}

uint64_t sub_1C4B16B6C()
{
  sub_1C4B16B1C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4B16BC4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442E8C4;

  return sub_1C4B136E8();
}

double sub_1C4B16C70()
{
  v1 = type metadata accessor for LOIBasedSegment(0);
  sub_1C43FBD18(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_1C4B14D1C(v3);
}

double sub_1C4B16CCC()
{
  v1 = sub_1C4EFE1C8();
  sub_1C43FBD18(v1);
  v3 = *(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];

  return sub_1C4B14ED8(v4, v5, v6);
}

unint64_t sub_1C4B16D30()
{
  result = qword_1EDDDE958;
  if (!qword_1EDDDE958)
  {
    sub_1C4572308(&qword_1EC0C1BB0, &qword_1C4F46228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDE958);
  }

  return result;
}

uint64_t SimpleBlockingFunction.init(predicates:relationshipPredicates:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1C4B16DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4F00978();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C4EFB5F8();
  v14 = sub_1C43FCDF8(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C442C730();
  sub_1C4EFD868();
  v19 = *(a3 + 16);
  sub_1C46BC6FC();
  sub_1C4EFB5D8();
  if (v3)
  {
    v20 = *(v16 + 8);
    v21 = sub_1C43FC1C0();
    return v22(v21);
  }

  else
  {
    v24 = *(v16 + 8);
    v25 = sub_1C43FC1C0();
    v26(v25);
    sub_1C4F00178();
    v27 = sub_1C4F00968();
    v28 = sub_1C4F01CB8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = sub_1C43FCED0();
      *v29 = 0;
      _os_log_impl(&dword_1C43F8000, v27, v28, "SiriRemembersViewGenerator: finished database migration.", v29, 2u);
      sub_1C43FBE2C();
    }

    return (*(v8 + 8))(v12, v5);
  }
}

uint64_t sub_1C4B16FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  return sub_1C446C37C(sub_1C4B18820, v6);
}

void sub_1C4B16FF4()
{
  sub_1C43FE96C();
  v40 = v3;
  v41 = v2;
  v42 = v4;
  v43 = v5;
  v7 = v6;
  v8 = sub_1C4F00978();
  v9 = sub_1C43FCDF8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBD08();
  v44 = (v14 - v15);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C440D124();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  sub_1C4F00178();
  v20 = sub_1C4F00968();
  v21 = sub_1C4F01CB8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = sub_1C43FCED0();
    *v22 = 0;
    _os_log_impl(&dword_1C43F8000, v20, v21, "SiriRemembersViewGenerator: drop indexes.", v22, 2u);
    sub_1C43FBE2C();
  }

  v23 = *(v11 + 8);
  v23(v19, v8);
  sub_1C4B17324();
  if (!v0)
  {
    v27 = v24;
    v28 = v25;
    v38 = v26;
    v39 = v7;
    sub_1C4F00178();
    v29 = sub_1C4F00968();
    v30 = sub_1C4F01CB8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = sub_1C43FCED0();
      v37 = v28;
      *v31 = 0;
      _os_log_impl(&dword_1C43F8000, v29, v30, "SiriRemembersViewGenerator: clear all tables.", v31, 2u);
      v28 = v37;
      sub_1C43FBE2C();
    }

    v23(v1, v8);
    sub_1C448DE08(&unk_1F43DC1E0);
    sub_1C46A9F14(v32);

    sub_1C4F00178();
    v33 = sub_1C4F00968();
    v34 = sub_1C4F01CB8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = sub_1C43FCED0();
      *v35 = 0;
      _os_log_impl(&dword_1C43F8000, v33, v34, "SiriRemembersViewGenerator: restore indexes.", v35, 2u);
      sub_1C43FBE2C();
    }

    v23(v44, v8);
    sub_1C4B17950(v39, v27, v28, v38, v41, v42, v43, v40);
  }

  sub_1C43FBC80();
}

void sub_1C4B17324()
{
  sub_1C43FE96C();
  v2 = sub_1C4EFB768();
  v3 = sub_1C43FCDF8(v2);
  v67 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4F00978();
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C442C730();
  sub_1C4F00178();
  v15 = sub_1C4F00968();
  v16 = sub_1C4F01CC8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = sub_1C43FCED0();
    *v17 = 0;
    _os_log_impl(&dword_1C43F8000, v15, v16, "SiriRemembersViewGenerator: SiriRemembersDatabaseTable: dropping indexes", v17, 2u);
    sub_1C43FBE2C();
  }

  (*(v12 + 8))(v0, v9);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x80000001C4FB1AD0;
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 48) = 0xD000000000000020;
  *(inited + 56) = 0x80000001C4FB1AF0;
  v19 = sub_1C46A9F90(0, 0, 0x7865646E69, 0xE500000000000000);
  if (v1)
  {
    swift_setDeallocating();
    sub_1C44DEE40();
LABEL_17:
    sub_1C43FBC80();
  }

  else
  {
    v20 = v19;
    v64 = v2;
    v65 = v8;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v21 = sub_1C4B18330(v20, inited);

    swift_setDeallocating();
    sub_1C44DEE40();
    v22 = *(v21 + 64);
    v23 = *(v21 + 32);
    sub_1C43FD030();
    sub_1C440D3F4();

    v24 = 0;
    if (v8)
    {
      while (1)
      {
        v25 = v24;
LABEL_10:
        sub_1C440B24C();
        v26 = *(v21 + 48);
        v27 = *(v21 + 56);
        sub_1C441772C(v28);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4411180();
        sub_1C4EFBF58();
        sub_1C43FF594();

        v24 = v25;
      }
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);

        v58 = sub_1C4408FA0();
        v59(v58);

        goto LABEL_17;
      }

      if (v25 >= inited)
      {
        break;
      }

      ++v24;
      if (*(v21 + 64 + 8 * v25))
      {
        goto LABEL_10;
      }
    }

    v29 = sub_1C46A9F90(0, 0, 0x656C626174, 0xE500000000000000);
    v30 = sub_1C4B184F4(v29);

    v31 = *(v30 + 64);
    v32 = *(v30 + 32);
    sub_1C43FD030();
    sub_1C440D3F4();

    v33 = 0;
    v66 = v30;
    while (1)
    {
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v34 >= inited)
      {
        break;
      }

      ++v33;
      if (*(v30 + 64 + 8 * v34))
      {
        while (1)
        {
          sub_1C440B24C();
          v35 = *(v30 + 48);
          v36 = *(v30 + 56);
          sub_1C441772C(v37);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4411180();
          sub_1C4EFBF68();
          sub_1C43FF594();

          v30 = v66;
        }
      }
    }

    v38 = sub_1C46A9F90(0, 0, 0x72656767697274, 0xE700000000000000);
    v39 = v38;
    v41 = v38 + 64;
    v40 = *(v38 + 64);
    v42 = *(v38 + 32);
    sub_1C43FD030();
    v45 = v44 & v43;
    v47 = (v46 + 63) >> 6;
    v67 += 8;
    v48 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v49 = 0;
    v61 = v47;
    v62 = v41;
    for (i = v48; v45; v47 = v61)
    {
      v50 = v49;
LABEL_23:
      v51 = (v50 << 10) | (16 * __clz(__rbit64(v45)));
      v52 = (*(v39 + 48) + v51);
      v53 = *v52;
      v54 = v52[1];
      v55 = *(*(v39 + 56) + v51 + 8);
      strcpy(v68, "DROP TRIGGER ");
      v69 = -4864;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v53, v54);
      sub_1C4EFB758();
      sub_1C4EFBFF8();
      v45 &= v45 - 1;

      v56 = sub_1C4408FA0();
      v57(v56);
      v49 = v50;
      v41 = v62;
      v39 = i;
    }

    while (1)
    {
      v50 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v50 >= v47)
      {

        goto LABEL_17;
      }

      v45 = *(v41 + 8 * v50);
      ++v49;
      if (v45)
      {
        goto LABEL_23;
      }
    }

LABEL_28:
    __break(1u);
  }
}