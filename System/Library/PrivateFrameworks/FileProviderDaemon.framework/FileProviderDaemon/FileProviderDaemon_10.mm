uint64_t sub_1CF0B0228()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1CF0B0348()
{
  v1 = type metadata accessor for VFSItem(0);
  v45 = *(*(v1 - 1) + 80);
  v41 = *(*(v1 - 1) + 64);
  v2 = sub_1CF9E5A58();
  v43 = *(v2 - 8);
  v44 = v2;
  v40 = *(v43 + 80);
  v39 = *(v43 + 64);
  v42 = (v45 + 16) & ~v45;
  v3 = v0 + v42;
  v4 = *(v0 + v42 + 40);

  v5 = v0 + v42 + v1[7];
  v6 = type metadata accessor for ItemMetadata();
  v7 = v6[7];
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v10(v5 + v6[8], v8);
  v11 = *(v5 + v6[14] + 8);

  v12 = v6[30];
  if (!(*(v9 + 48))(v5 + v12, 1, v8))
  {
    v10(v5 + v12, v8);
  }

  v13 = *(v5 + v6[31]);

  v14 = *(v5 + v6[33]);

  v15 = (v5 + v6[34]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_1CEFE4714(*v15, v16);
  }

  v17 = *(v5 + v6[38] + 8);

  v18 = v3 + v1[8];
  v19 = *(v18 + 16);
  if (v19 != 1)
  {

    v20 = *(v18 + 48);

    v21 = *(v18 + 64);

    v22 = *(v18 + 88);

    v23 = *(v18 + 120);

    v24 = *(v18 + 136);

    v25 = *(v18 + 152);

    v26 = *(v18 + 168);

    v27 = *(v18 + 184);

    if (*(v18 + 192))
    {

      v28 = *(v18 + 200);
    }

    v29 = *(v18 + 224);

    v30 = *(v18 + 240);
  }

  v31 = v1[12];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v32 - 8) + 48))(v3 + v31, 1, v32) && !(*(v43 + 48))(v3 + v31, 1, v44))
  {
    (*(v43 + 8))(v3 + v31, v44);
  }

  v33 = (v42 + v41 + v40) & ~v40;
  v34 = (v39 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v43 + 8))(v0 + v33, v44);

  v36 = *(v0 + v35);

  v37 = *(v0 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0B0710()
{
  v1 = type metadata accessor for VFSItem(0);
  v43 = *(*(v1 - 1) + 80);
  v41 = *(*(v1 - 1) + 64);
  v2 = sub_1CF9E5A58();
  v44 = *(v2 - 8);
  v45 = v2;
  v40 = *(v44 + 80);
  v39 = *(v44 + 64);
  v3 = *(v0 + 16);

  v42 = (v43 + 24) & ~v43;
  v4 = v0 + v42;
  v5 = *(v0 + v42 + 40);

  v6 = v0 + v42 + v1[7];
  v7 = type metadata accessor for ItemMetadata();
  v8 = v7[7];
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v6 + v8, v9);
  v11(v6 + v7[8], v9);
  v12 = *(v6 + v7[14] + 8);

  v13 = v7[30];
  if (!(*(v10 + 48))(v6 + v13, 1, v9))
  {
    v11(v6 + v13, v9);
  }

  v14 = *(v6 + v7[31]);

  v15 = *(v6 + v7[33]);

  v16 = (v6 + v7[34]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_1CEFE4714(*v16, v17);
  }

  v18 = *(v6 + v7[38] + 8);

  v19 = v4 + v1[8];
  v20 = *(v19 + 16);
  if (v20 != 1)
  {

    v21 = *(v19 + 48);

    v22 = *(v19 + 64);

    v23 = *(v19 + 88);

    v24 = *(v19 + 120);

    v25 = *(v19 + 136);

    v26 = *(v19 + 152);

    v27 = *(v19 + 168);

    v28 = *(v19 + 184);

    if (*(v19 + 192))
    {

      v29 = *(v19 + 200);
    }

    v30 = *(v19 + 224);

    v31 = *(v19 + 240);
  }

  v32 = v1[12];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v33 - 8) + 48))(v4 + v32, 1, v33) && !(*(v44 + 48))(v4 + v32, 1, v45))
  {
    (*(v44 + 8))(v4 + v32, v45);
  }

  v34 = (v41 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + v40 + 16) & ~v40;

  v37 = *(v0 + v35 + 8);

  (*(v44 + 8))(v0 + v36, v45);

  return swift_deallocObject();
}

uint64_t sub_1CF0B0AF0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  sub_1CEFD0A98(*(v0 + 64));
  v3 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1CF0B0B50()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1CF0B0BC0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_1CEFD0A98(*(v0 + 40));
  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1CF0B0C44()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  sub_1CEFD0A98(*(v0 + 40));

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0B0D40()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B0D7C()
{
  sub_1CEFD0A98(*(v0 + 24));

  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1CF0B0DE4()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  sub_1CEFD0A98(*(v0 + 40));

  v8 = *(v0 + 56);

  v9 = *(v0 + 72);

  v10 = *(v0 + 80);

  v11 = *(v0 + 88);

  v12 = *(v2 + 8);
  v12(v0 + v4, v1);
  v12(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0B0F10()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 3);

  sub_1CEFD0A98(*(v0 + 4));
  v6 = *(v0 + 5);

  (*(v2 + 8))(&v0[v3], v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0B0FF8()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  sub_1CEFD0A98(*(v0 + 24));
  v9 = *(v0 + 32);

  v10 = *(v0 + 56);

  v11 = *(v2 + 8);
  v11(v0 + v4, v1);
  v11(v0 + v6, v1);
  v12 = *(v0 + v7);

  v13 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0B113C()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CEFD0A98(*(v0 + 16));
  v8 = *(v0 + 24);

  v9 = *(v0 + 48);

  v10 = *(v0 + 56);

  v11 = *(v2 + 8);
  v11(v0 + v4, v1);
  v11(v0 + v6, v1);
  v12 = *(v0 + v7);

  v13 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0B1280()
{
  sub_1CEFD0A98(*(v0 + 24));

  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF0B12EC()
{
  v1 = type metadata accessor for VFSItem(0);
  v38 = *(*(v1 - 1) + 80);
  v37 = *(*(v1 - 1) + 64);
  v2 = *(v0 + 16);

  v3 = *(v0 + 32);

  v4 = v0 + ((v38 + 40) & ~v38);
  v5 = *(v4 + 40);

  v6 = v4 + v1[7];
  v7 = type metadata accessor for ItemMetadata();
  v8 = v7[7];
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v6 + v8, v9);
  v11(v6 + v7[8], v9);
  v12 = *(v6 + v7[14] + 8);

  v13 = v7[30];
  if (!(*(v10 + 48))(v6 + v13, 1, v9))
  {
    v11(v6 + v13, v9);
  }

  v14 = *(v6 + v7[31]);

  v15 = *(v6 + v7[33]);

  v16 = (v6 + v7[34]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_1CEFE4714(*v16, v17);
  }

  v18 = *(v6 + v7[38] + 8);

  v19 = v4 + v1[8];
  v20 = *(v19 + 16);
  if (v20 != 1)
  {

    v21 = *(v19 + 48);

    v22 = *(v19 + 64);

    v23 = *(v19 + 88);

    v24 = *(v19 + 120);

    v25 = *(v19 + 136);

    v26 = *(v19 + 152);

    v27 = *(v19 + 168);

    v28 = *(v19 + 184);

    if (*(v19 + 192))
    {

      v29 = *(v19 + 200);
    }

    v30 = *(v19 + 224);

    v31 = *(v19 + 240);
  }

  v32 = v1[12];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v33 - 8) + 48))(v4 + v32, 1, v33))
  {
    v34 = sub_1CF9E5A58();
    v35 = *(v34 - 8);
    if (!(*(v35 + 48))(v4 + v32, 1, v34))
    {
      (*(v35 + 8))(v4 + v32, v34);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0B164C()
{
  v1 = type metadata accessor for VFSItem(0);
  v38 = *(*(v1 - 1) + 80);
  v37 = *(*(v1 - 1) + 64);
  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = v0 + ((v38 + 40) & ~v38);
  v5 = *(v4 + 40);

  v6 = v4 + v1[7];
  v7 = type metadata accessor for ItemMetadata();
  v8 = v7[7];
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v6 + v8, v9);
  v11(v6 + v7[8], v9);
  v12 = *(v6 + v7[14] + 8);

  v13 = v7[30];
  if (!(*(v10 + 48))(v6 + v13, 1, v9))
  {
    v11(v6 + v13, v9);
  }

  v14 = *(v6 + v7[31]);

  v15 = *(v6 + v7[33]);

  v16 = (v6 + v7[34]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_1CEFE4714(*v16, v17);
  }

  v18 = *(v6 + v7[38] + 8);

  v19 = v4 + v1[8];
  v20 = *(v19 + 16);
  if (v20 != 1)
  {

    v21 = *(v19 + 48);

    v22 = *(v19 + 64);

    v23 = *(v19 + 88);

    v24 = *(v19 + 120);

    v25 = *(v19 + 136);

    v26 = *(v19 + 152);

    v27 = *(v19 + 168);

    v28 = *(v19 + 184);

    if (*(v19 + 192))
    {

      v29 = *(v19 + 200);
    }

    v30 = *(v19 + 224);

    v31 = *(v19 + 240);
  }

  v32 = v1[12];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v33 - 8) + 48))(v4 + v32, 1, v33))
  {
    v34 = sub_1CF9E5A58();
    v35 = *(v34 - 8);
    if (!(*(v35 + 48))(v4 + v32, 1, v34))
    {
      (*(v35 + 8))(v4 + v32, v34);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0B19B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5030, qword_1CFA177B0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  sub_1CEFD0A98(*(v0 + 24));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0B1A88()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_1CEFD0A98(*(v0 + 48));
  v3 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1CF0B1AE0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF0B1B30()
{
  sub_1CEFD0A98(v0[2]);
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1CF0B1B9C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  sub_1CEFD0A98(v0[6]);

  return swift_deallocObject();
}

uint64_t sub_1CF0B1BEC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  sub_1CEFD0A98(v0[6]);

  return swift_deallocObject();
}

uint64_t sub_1CF0B1C3C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_1CEFD0A98(*(v0 + 48));
  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1CF0B1C94()
{
  sub_1CEFD0A98(*(v0 + 16));
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1CF0B1CEC()
{
  sub_1CEFD0A98(v0[3]);
  v1 = v0[4];

  v2 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1CF0B1D34()
{
  sub_1CEFD0A98(*(v0 + 24));
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF0B1D84()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF0B1DF0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1CF0B1E44()
{
  v1 = *(v0 + 16);

  sub_1CF8F99BC(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1CF0B1E94()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1CF0B1EEC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0) - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = *(v0 + 24);

  v5 = *(v0 + 48);

  v6 = *(v0 + 56);

  v7 = sub_1CF9E5CF8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v2, 1, v7))
  {
    (*(v8 + 8))(v0 + v2, v7);
  }

  v9 = (v3 + v2 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 35) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + ((v9 + 17) & 0xFFFFFFFFFFFFFFF8));

  v12 = *(v0 + v10 + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0B205C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF0B20A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1CF0B2104()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1CF0B216C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1CF0B21CC()
{
  v1 = *(v0 + 24);

  sub_1CEFD0A98(*(v0 + 32));

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);
  swift_unknownObjectRelease();
  v4 = *(v0 + 72);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF0B223C()
{
  v1 = type metadata accessor for VFSItem(0);
  v44 = *(*(v1 - 1) + 80);
  v42 = *(*(v1 - 1) + 64);
  v2 = *(v0 + 24);

  sub_1CEFD0A98(*(v0 + 32));

  v43 = (v44 + 48) & ~v44;
  v3 = v0 + v43;
  v4 = *(v0 + v43 + 40);

  v5 = v0 + v43 + v1[7];
  v6 = type metadata accessor for ItemMetadata();
  v7 = v6[7];
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v10(v5 + v6[8], v8);
  v11 = *(v5 + v6[14] + 8);

  v12 = v6[30];
  if (!(*(v9 + 48))(v5 + v12, 1, v8))
  {
    v10(v5 + v12, v8);
  }

  v13 = *(v5 + v6[31]);

  v14 = *(v5 + v6[33]);

  v15 = (v5 + v6[34]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_1CEFE4714(*v15, v16);
  }

  v17 = *(v5 + v6[38] + 8);

  v18 = v3 + v1[8];
  v19 = *(v18 + 16);
  if (v19 != 1)
  {

    v20 = *(v18 + 48);

    v21 = *(v18 + 64);

    v22 = *(v18 + 88);

    v23 = *(v18 + 120);

    v24 = *(v18 + 136);

    v25 = *(v18 + 152);

    v26 = *(v18 + 168);

    v27 = *(v18 + 184);

    if (*(v18 + 192))
    {

      v28 = *(v18 + 200);
    }

    v29 = *(v18 + 224);

    v30 = *(v18 + 240);
  }

  v31 = v1[12];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v32 - 8) + 48))(v3 + v31, 1, v32))
  {
    v33 = sub_1CF9E5A58();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v3 + v31, 1, v33))
    {
      (*(v34 + 8))(v3 + v31, v33);
    }
  }

  v35 = (v42 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 31) & 0xFFFFFFFFFFFFFFF8;
  v38 = *(v0 + v35);
  swift_unknownObjectRelease();
  v39 = *(v0 + v36);
  swift_unknownObjectRelease();

  v40 = *(v0 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1CF0B25FC()
{
  v1 = type metadata accessor for VFSItem(0);
  v41 = *(*(v1 - 1) + 80);
  v39 = *(*(v1 - 1) + 64);
  v2 = *(v0 + 16);

  v40 = (v41 + 24) & ~v41;
  v3 = v0 + v40;
  v4 = *(v0 + v40 + 40);

  v5 = v0 + v40 + v1[7];
  v6 = type metadata accessor for ItemMetadata();
  v7 = v6[7];
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v10(v5 + v6[8], v8);
  v11 = *(v5 + v6[14] + 8);

  v12 = v6[30];
  if (!(*(v9 + 48))(v5 + v12, 1, v8))
  {
    v10(v5 + v12, v8);
  }

  v13 = *(v5 + v6[31]);

  v14 = *(v5 + v6[33]);

  v15 = (v5 + v6[34]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_1CEFE4714(*v15, v16);
  }

  v17 = *(v5 + v6[38] + 8);

  v18 = v3 + v1[8];
  v19 = *(v18 + 16);
  if (v19 != 1)
  {

    v20 = *(v18 + 48);

    v21 = *(v18 + 64);

    v22 = *(v18 + 88);

    v23 = *(v18 + 120);

    v24 = *(v18 + 136);

    v25 = *(v18 + 152);

    v26 = *(v18 + 168);

    v27 = *(v18 + 184);

    if (*(v18 + 192))
    {

      v28 = *(v18 + 200);
    }

    v29 = *(v18 + 224);

    v30 = *(v18 + 240);
  }

  v31 = v1[12];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v32 - 8) + 48))(v3 + v31, 1, v32))
  {
    v33 = sub_1CF9E5A58();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v3 + v31, 1, v33))
    {
      (*(v34 + 8))(v3 + v31, v33);
    }
  }

  v35 = (v39 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = *(v0 + v35);

  sub_1CEFD0A98(*(v0 + v36));

  return swift_deallocObject();
}

uint64_t sub_1CF0B297C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1CF0B29D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1CF0B2A34()
{
  v1 = type metadata accessor for VFSItem(0);
  v39 = *(*(v1 - 1) + 80);
  v37 = *(*(v1 - 1) + 64);
  v2 = *(v0 + 16);

  sub_1CEFD0A98(*(v0 + 24));
  v38 = (v39 + 32) & ~v39;
  v3 = v0 + v38;
  v4 = *(v0 + v38 + 40);

  v5 = v0 + v38 + v1[7];
  v6 = type metadata accessor for ItemMetadata();
  v7 = v6[7];
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v10(v5 + v6[8], v8);
  v11 = *(v5 + v6[14] + 8);

  v12 = v6[30];
  if (!(*(v9 + 48))(v5 + v12, 1, v8))
  {
    v10(v5 + v12, v8);
  }

  v13 = *(v5 + v6[31]);

  v14 = *(v5 + v6[33]);

  v15 = (v5 + v6[34]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_1CEFE4714(*v15, v16);
  }

  v17 = *(v5 + v6[38] + 8);

  v18 = v3 + v1[8];
  v19 = *(v18 + 16);
  if (v19 != 1)
  {

    v20 = *(v18 + 48);

    v21 = *(v18 + 64);

    v22 = *(v18 + 88);

    v23 = *(v18 + 120);

    v24 = *(v18 + 136);

    v25 = *(v18 + 152);

    v26 = *(v18 + 168);

    v27 = *(v18 + 184);

    if (*(v18 + 192))
    {

      v28 = *(v18 + 200);
    }

    v29 = *(v18 + 224);

    v30 = *(v18 + 240);
  }

  v31 = v1[12];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v32 - 8) + 48))(v3 + v31, 1, v32))
  {
    v33 = sub_1CF9E5A58();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v3 + v31, 1, v33))
    {
      (*(v34 + 8))(v3 + v31, v33);
    }
  }

  v35 = *(v0 + ((((v37 + v38 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0B2DB4()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = sub_1CF9E6068();
  (*(*(v8 - 8) + 8))(v0 + v2, v8);

  v9 = *(v0 + v3 + 8);

  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_1CF0B2F40()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  v6 = sub_1CF9E6068();
  (*(*(v6 - 8) + 8))(v5, v6);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_1CF0B3080()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 24);

  v6 = *(v0 + 56);

  (*(v2 + 8))(v0 + v3, v1);
  sub_1CEFD0A98(*(v0 + v4));

  return swift_deallocObject();
}

uint64_t sub_1CF0B3188()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1CF0B31E0()
{
  v1 = type metadata accessor for VFSItem(0);
  v38 = *(*(v1 - 1) + 80);
  v36 = *(*(v1 - 1) + 64);
  v2 = *(v0 + 16);

  v37 = (v38 + 24) & ~v38;
  v3 = v0 + v37;
  v4 = *(v0 + v37 + 40);

  v5 = v0 + v37 + v1[7];
  v6 = type metadata accessor for ItemMetadata();
  v7 = v6[7];
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v10(v5 + v6[8], v8);
  v11 = *(v5 + v6[14] + 8);

  v12 = v6[30];
  if (!(*(v9 + 48))(v5 + v12, 1, v8))
  {
    v10(v5 + v12, v8);
  }

  v13 = *(v5 + v6[31]);

  v14 = *(v5 + v6[33]);

  v15 = (v5 + v6[34]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_1CEFE4714(*v15, v16);
  }

  v17 = *(v5 + v6[38] + 8);

  v18 = v3 + v1[8];
  v19 = *(v18 + 16);
  if (v19 != 1)
  {

    v20 = *(v18 + 48);

    v21 = *(v18 + 64);

    v22 = *(v18 + 88);

    v23 = *(v18 + 120);

    v24 = *(v18 + 136);

    v25 = *(v18 + 152);

    v26 = *(v18 + 168);

    v27 = *(v18 + 184);

    if (*(v18 + 192))
    {

      v28 = *(v18 + 200);
    }

    v29 = *(v18 + 224);

    v30 = *(v18 + 240);
  }

  v31 = v1[12];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v32 - 8) + 48))(v3 + v31, 1, v32))
  {
    v33 = sub_1CF9E5A58();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v3 + v31, 1, v33))
    {
      (*(v34 + 8))(v3 + v31, v33);
    }
  }

  sub_1CEFD0A98(*(v0 + ((v36 + v37 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1CF0B3554()
{
  sub_1CF480678(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return swift_deallocObject();
}

uint64_t sub_1CF0B35B8()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 32);

  sub_1CEFD0A98(*(v0 + 40));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0B3698()
{
  v1 = type metadata accessor for VFSItem(0);
  v41 = *(*(v1 - 1) + 80);
  v39 = *(*(v1 - 1) + 64);
  v2 = *(v0 + 16);

  v40 = (v41 + 24) & ~v41;
  v3 = v0 + v40;
  v4 = *(v0 + v40 + 40);

  v5 = v0 + v40 + v1[7];
  v6 = type metadata accessor for ItemMetadata();
  v7 = v6[7];
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v10(v5 + v6[8], v8);
  v11 = *(v5 + v6[14] + 8);

  v12 = v6[30];
  if (!(*(v9 + 48))(v5 + v12, 1, v8))
  {
    v10(v5 + v12, v8);
  }

  v13 = *(v5 + v6[31]);

  v14 = *(v5 + v6[33]);

  v15 = (v5 + v6[34]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_1CEFE4714(*v15, v16);
  }

  v17 = *(v5 + v6[38] + 8);

  v18 = v3 + v1[8];
  v19 = *(v18 + 16);
  if (v19 != 1)
  {

    v20 = *(v18 + 48);

    v21 = *(v18 + 64);

    v22 = *(v18 + 88);

    v23 = *(v18 + 120);

    v24 = *(v18 + 136);

    v25 = *(v18 + 152);

    v26 = *(v18 + 168);

    v27 = *(v18 + 184);

    if (*(v18 + 192))
    {

      v28 = *(v18 + 200);
    }

    v29 = *(v18 + 224);

    v30 = *(v18 + 240);
  }

  v31 = v1[12];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v32 - 8) + 48))(v3 + v31, 1, v32))
  {
    v33 = sub_1CF9E5A58();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v3 + v31, 1, v33))
    {
      (*(v34 + 8))(v3 + v31, v33);
    }
  }

  v35 = (v39 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;

  sub_1CEFD0A98(*(v0 + v36));
  v37 = *(v0 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0B3A28()
{
  sub_1CEFD0A98(*(v0 + 16));

  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1CF0B3A70()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF0B3ACC()
{
  sub_1CEFD0A98(*(v0 + 16));
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1CF0B3B24()
{
  sub_1CEFD0A98(*(v0 + 16));
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_1CF0B3B94()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  sub_1CEFD0A98(*(v0 + 56));

  v5 = *(v0 + 96);

  return swift_deallocObject();
}

uint64_t sub_1CF0B3BFC()
{
  v1 = v0[3];

  sub_1CEFD0A98(v0[4]);
  v2 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1CF0B3C44()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  sub_1CEFD0A98(*(v0 + 40));

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  return swift_deallocObject();
}

uint64_t sub_1CF0B3CC8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1CF0B3D20()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1CF0B3D90()
{
  v1 = type metadata accessor for VFSItem(0);
  v40 = *(*(v1 - 1) + 80);
  v38 = *(*(v1 - 1) + 64);
  v39 = (v40 + 16) & ~v40;
  v2 = v0 + v39;
  v3 = *(v0 + v39 + 40);

  v4 = v0 + v39 + v1[7];
  v5 = type metadata accessor for ItemMetadata();
  v6 = v5[7];
  v7 = sub_1CF9E5CF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v4 + v6, v7);
  v9(v4 + v5[8], v7);
  v10 = *(v4 + v5[14] + 8);

  v11 = v5[30];
  if (!(*(v8 + 48))(v4 + v11, 1, v7))
  {
    v9(v4 + v11, v7);
  }

  v12 = *(v4 + v5[31]);

  v13 = *(v4 + v5[33]);

  v14 = (v4 + v5[34]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_1CEFE4714(*v14, v15);
  }

  v16 = *(v4 + v5[38] + 8);

  v17 = v2 + v1[8];
  v18 = *(v17 + 16);
  if (v18 != 1)
  {

    v19 = *(v17 + 48);

    v20 = *(v17 + 64);

    v21 = *(v17 + 88);

    v22 = *(v17 + 120);

    v23 = *(v17 + 136);

    v24 = *(v17 + 152);

    v25 = *(v17 + 168);

    v26 = *(v17 + 184);

    if (*(v17 + 192))
    {

      v27 = *(v17 + 200);
    }

    v28 = *(v17 + 224);

    v29 = *(v17 + 240);
  }

  v30 = v1[12];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v31 - 8) + 48))(v2 + v30, 1, v31))
  {
    v32 = sub_1CF9E5A58();
    v33 = *(v32 - 8);
    if (!(*(v33 + 48))(v2 + v30, 1, v32))
    {
      (*(v33 + 8))(v2 + v30, v32);
    }
  }

  v34 = (v38 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = *(v0 + v34);

  return swift_deallocObject();
}

uint64_t sub_1CF0B4110()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF0B4158()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  v4 = v0[10];

  if (v0[11])
  {
    v5 = v0[12];
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0B41B8()
{
  sub_1CF901FB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF0B4200()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0B4238()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0B4314()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B434C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_1CF0B4394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for VFSCounters(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for DBCounters();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for SnapshotCounters();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1CF0B44D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for VFSCounters(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for DBCounters();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for SnapshotCounters();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1CF0B57A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CF9E5D98();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CF0B580C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CF9E5D98();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1CF0B5A9C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1CF0B5B30()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B5B68()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0B5BA8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF0B5C18()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B5C90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0B5CD0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  sub_1CEFD0A98(*(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1CF0B5D4C()
{
  v1 = type metadata accessor for VFSItem(0);
  v40 = *(*(v1 - 1) + 80);
  v38 = *(*(v1 - 1) + 64);
  v2 = v0[3];

  v3 = v0[4];

  sub_1CEFD0A98(v0[5]);
  v39 = (v40 + 48) & ~v40;
  v4 = v0 + v39;
  v5 = *(v0 + v39 + 40);

  v6 = v0 + v39 + v1[7];
  v7 = type metadata accessor for ItemMetadata();
  v8 = v7[7];
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(&v6[v8], v9);
  v11(&v6[v7[8]], v9);
  v12 = *&v6[v7[14] + 8];

  v13 = v7[30];
  if (!(*(v10 + 48))(&v6[v13], 1, v9))
  {
    v11(&v6[v13], v9);
  }

  v14 = *&v6[v7[31]];

  v15 = *&v6[v7[33]];

  v16 = &v6[v7[34]];
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_1CEFE4714(*v16, v17);
  }

  v18 = *&v6[v7[38] + 8];

  v19 = &v4[v1[8]];
  v20 = *(v19 + 2);
  if (v20 != 1)
  {

    v21 = *(v19 + 6);

    v22 = *(v19 + 8);

    v23 = *(v19 + 11);

    v24 = *(v19 + 15);

    v25 = *(v19 + 17);

    v26 = *(v19 + 19);

    v27 = *(v19 + 21);

    v28 = *(v19 + 23);

    if (*(v19 + 24))
    {

      v29 = *(v19 + 25);
    }

    v30 = *(v19 + 28);

    v31 = *(v19 + 30);
  }

  v32 = v1[12];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v33 - 8) + 48))(&v4[v32], 1, v33))
  {
    v34 = sub_1CF9E5A58();
    v35 = *(v34 - 8);
    if (!(*(v35 + 48))(&v4[v32], 1, v34))
    {
      (*(v35 + 8))(&v4[v32], v34);
    }
  }

  v36 = *(v0 + ((v38 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1CF0B60C8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF0B6100()
{
  MEMORY[0x1D386CEF0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0B6138()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0B6178()
{
  v1 = sub_1CF9E6448();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 32);

  sub_1CEFD0A98(*(v0 + 56));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0B6254()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0B6298()
{
  sub_1CEFD0A98(*(v0 + 24));
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF0B62E8()
{
  sub_1CEFD0A98(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0B6328()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0B637C()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[11];

  v4 = v0[15];

  v5 = v0[16];

  v6 = v0[18];

  v7 = v0[23];
  if (v7 >> 60 != 15 && (v7 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(v0[22], v7);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0B6440()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B6478()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_1CF0B64E8()
{
  sub_1CEFD0994(*(v0 + 16), *(v0 + 24), *(v0 + 25));

  return swift_deallocObject();
}

uint64_t sub_1CF0B6530()
{
  sub_1CEFD0A98(*(v0 + 32));
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF0B65AC()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0B65E4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1CF0B6634()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1CF0B66A0()
{
  v1 = type metadata accessor for VFSItem(0);
  v39 = *(*(v1 - 1) + 80);
  v38 = *(*(v1 - 1) + 64);
  v2 = v0[2];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0 + ((v39 + 48) & ~v39);
  v6 = *(v5 + 5);

  v7 = &v5[v1[7]];
  v8 = type metadata accessor for ItemMetadata();
  v9 = v8[7];
  v10 = sub_1CF9E5CF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(&v7[v9], v10);
  v12(&v7[v8[8]], v10);
  v13 = *&v7[v8[14] + 8];

  v14 = v8[30];
  if (!(*(v11 + 48))(&v7[v14], 1, v10))
  {
    v12(&v7[v14], v10);
  }

  v15 = *&v7[v8[31]];

  v16 = *&v7[v8[33]];

  v17 = &v7[v8[34]];
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_1CEFE4714(*v17, v18);
  }

  v19 = *&v7[v8[38] + 8];

  v20 = &v5[v1[8]];
  v21 = *(v20 + 2);
  if (v21 != 1)
  {

    v22 = *(v20 + 6);

    v23 = *(v20 + 8);

    v24 = *(v20 + 11);

    v25 = *(v20 + 15);

    v26 = *(v20 + 17);

    v27 = *(v20 + 19);

    v28 = *(v20 + 21);

    v29 = *(v20 + 23);

    if (*(v20 + 24))
    {

      v30 = *(v20 + 25);
    }

    v31 = *(v20 + 28);

    v32 = *(v20 + 30);
  }

  v33 = v1[12];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v34 - 8) + 48))(&v5[v33], 1, v34))
  {
    v35 = sub_1CF9E5A58();
    v36 = *(v35 - 8);
    if (!(*(v36 + 48))(&v5[v33], 1, v35))
    {
      (*(v36 + 8))(&v5[v33], v35);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0B6A08()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for VFSItem(0);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v78 = *(v6 + 64);
  v8 = *(v0 + 24);

  v9 = v0 + v2;
  v79 = v5;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else if (!(*(v6 + 48))(v9, 1, v5))
  {
    v10 = v0;
    v11 = v7;
    v12 = *(v9 + 40);

    v13 = v9 + *(v5 + 28);
    v14 = type metadata accessor for ItemMetadata();
    v15 = v14[7];
    v16 = sub_1CF9E5CF8();
    v17 = *(v16 - 8);
    v18 = *(v17 + 8);
    v18(v13 + v15, v16);
    v18(v13 + v14[8], v16);
    v19 = *(v13 + v14[14] + 8);

    v20 = v14[30];
    if (!(*(v17 + 48))(v13 + v20, 1, v16))
    {
      v18(v13 + v20, v16);
    }

    v21 = *(v13 + v14[31]);

    v22 = *(v13 + v14[33]);

    v23 = (v13 + v14[34]);
    v24 = v23[1];
    if (v24 >> 60 != 15)
    {
      sub_1CEFE4714(*v23, v24);
    }

    v25 = *(v13 + v14[38] + 8);

    v5 = v79;
    v26 = v9 + *(v79 + 32);
    v27 = *(v26 + 16);
    v7 = v11;
    v0 = v10;
    v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
    if (v27 != 1)
    {

      v28 = *(v26 + 48);

      v29 = *(v26 + 64);

      v30 = *(v26 + 88);

      v31 = *(v26 + 120);

      v32 = *(v26 + 136);

      v33 = *(v26 + 152);

      v34 = *(v26 + 168);

      v35 = *(v26 + 184);

      if (*(v26 + 192))
      {

        v36 = *(v26 + 200);
      }

      v37 = *(v26 + 224);

      v38 = *(v26 + 240);
    }

    v39 = *(v79 + 48);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
    if (!(*(*(v40 - 8) + 48))(v9 + v39, 1, v40))
    {
      v41 = sub_1CF9E5A58();
      v42 = *(v41 - 8);
      if (!(*(v42 + 48))(v9 + v39, 1, v41))
      {
        (*(v42 + 8))(v9 + v39, v41);
      }
    }
  }

  v43 = *(v0 + v3);

  v44 = *(v0 + v4);

  v45 = v0 + v7;
  v46 = *(v0 + v7 + 40);

  v47 = v0 + v7 + *(v5 + 28);
  v48 = type metadata accessor for ItemMetadata();
  v49 = v48[7];
  v50 = sub_1CF9E5CF8();
  v51 = *(v50 - 8);
  v52 = *(v51 + 8);
  v52(v47 + v49, v50);
  v52(v47 + v48[8], v50);
  v53 = *(v47 + v48[14] + 8);

  v54 = v48[30];
  if (!(*(v51 + 48))(v47 + v54, 1, v50))
  {
    v52(v47 + v54, v50);
  }

  v55 = *(v47 + v48[31]);

  v56 = *(v47 + v48[33]);

  v57 = (v47 + v48[34]);
  v58 = v57[1];
  if (v58 >> 60 != 15)
  {
    sub_1CEFE4714(*v57, v58);
  }

  v59 = *(v47 + v48[38] + 8);

  v60 = v45 + *(v79 + 32);
  v61 = *(v60 + 16);
  if (v61 != 1)
  {

    v62 = *(v60 + 48);

    v63 = *(v60 + 64);

    v64 = *(v60 + 88);

    v65 = *(v60 + 120);

    v66 = *(v60 + 136);

    v67 = *(v60 + 152);

    v68 = *(v60 + 168);

    v69 = *(v60 + 184);

    if (*(v60 + 192))
    {

      v70 = *(v60 + 200);
    }

    v71 = *(v60 + 224);

    v72 = *(v60 + 240);
  }

  v73 = *(v79 + 48);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v74 - 8) + 48))(v45 + v73, 1, v74))
  {
    v75 = sub_1CF9E5A58();
    v76 = *(v75 - 8);
    if (!(*(v76 + 48))(v45 + v73, 1, v75))
    {
      (*(v76 + 8))(v45 + v73, v75);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0B711C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1CF0B7164()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF0B71C4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1CF0B721C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1CF0B72A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1CF0B72F4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF0B733C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1CF0B7390()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1CF0B764C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B7684()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0B76BC()
{
  v1 = sub_1CF9E6118();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  sub_1CEFE4714(*(v0 + v5), *(v0 + v5 + 8));
  v6 = *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0B778C()
{
  v1 = sub_1CF9E6118();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  v6 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0B7854()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0B78A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0B78DC()
{
  v1 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1CF0B7914()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF0B794C()
{
  v1 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1CF0B79A8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF0B79F0()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF0B7A30()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0B7A68()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF0B7AA0()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B7AD8()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 4);

  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);
  v8 = *&v0[v6 + 8];

  v9 = *&v0[((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8];

  return swift_deallocObject();
}

uint64_t sub_1CF0B7BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StagedRemoteVersion(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8) >> 60;
      v15 = ((4 * v14) & 0xC) == 0;
      v16 = ((4 * v14) & 0xC | (v14 >> 2)) ^ 0xF;
      if (v15)
      {
        return 0;
      }

      else
      {
        return v16;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1CF0B7D20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for StagedRemoteVersion(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      v15 = (a1 + *(a4 + 24));
      *v15 = 0;
      v15[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1CF0B7E44(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1CF9E5A58();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1CF0B7EF0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1CF9E5A58();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

BOOL sub_1CF0B7F9C(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1CF0B7FF0()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF0B80AC()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1CF0B80F8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF0B8130()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF0B8168()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_1CF0B81B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0B81F0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1CF0B8268()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_1CF0B82B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0B82F0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1CF0B8348()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v4 = *(v0 + 5);
  v3 = *(v0 + 6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = (*(v6 + 80) + 96) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = type metadata accessor for SnapshotItem();
  v53 = *(*(v9 - 1) + 80);
  v51 = *(*(v9 - 1) + 64);
  v10 = *(v0 + 8);

  v11 = *(v0 + 10);

  v12 = *(v0 + 11);

  (*(v6 + 8))(&v0[v7], AssociatedTypeWitness);
  v52 = (v7 + v8 + v53) & ~v53;
  v13 = &v0[v52];
  v14 = swift_getAssociatedTypeWitness();
  v15 = *(*(v14 - 8) + 8);
  v15(&v0[v52], v14);
  v15(&v0[v52 + v9[9]], v14);
  v16 = &v0[v52 + v9[10]];
  v17 = swift_getAssociatedTypeWitness();
  (*(*(v17 - 8) + 8))(v16, v17);
  v54 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v18 = type metadata accessor for FileItemVersion();
  v19 = *&v16[v18[13]];

  (*(*(v54 - 8) + 8))(&v16[v18[14]], v54);
  v20 = *&v16[v18[15]];

  v21 = *&v16[v18[16] + 8];

  v22 = *&v0[v52 + 8 + v9[11]];

  v23 = &v0[v52 + v9[12]];
  v24 = type metadata accessor for ItemMetadata();
  v25 = v24[7];
  v26 = sub_1CF9E5CF8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 8);
  v28(&v23[v25], v26);
  v28(&v23[v24[8]], v26);
  v29 = *&v23[v24[14] + 8];

  v30 = v24[30];
  if (!(*(v27 + 48))(&v23[v30], 1, v26))
  {
    v28(&v23[v30], v26);
  }

  v31 = *&v23[v24[31]];

  v32 = *&v23[v24[33]];

  v33 = &v23[v24[34]];
  v34 = v33[1];
  if (v34 >> 60 != 15)
  {
    sub_1CEFE4714(*v33, v34);
  }

  v35 = *&v23[v24[38] + 8];

  v36 = &v13[v9[13]];
  v37 = *(v36 + 2);
  if (v37 != 1)
  {

    v38 = *(v36 + 6);

    v39 = *(v36 + 8);

    v40 = *(v36 + 11);

    v41 = *(v36 + 15);

    v42 = *(v36 + 17);

    v43 = *(v36 + 19);

    v44 = *(v36 + 21);

    v45 = *(v36 + 23);

    if (*(v36 + 24))
    {

      v46 = *(v36 + 25);
    }

    v47 = *(v36 + 28);

    v48 = *(v36 + 30);
  }

  sub_1CF07638C(*&v13[v9[17]], *&v13[v9[17] + 8]);
  v49 = *&v0[(v51 + v52 + 7) & 0xFFFFFFFFFFFFFFF8];

  return swift_deallocObject();
}

uint64_t sub_1CF0B883C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B8874()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF0B88BC()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 64);

  v7 = *(v0 + 72);

  v8 = *(v0 + 88);

  (*(v2 + 8))(v0 + v3, v1);
  v9 = *(v0 + v4);

  v10 = *(v0 + v5);

  v11 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1CF0B89D4()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 152) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 8);

  v8 = *(v0 + 9);

  v9 = *(v0 + 10);

  v10 = *(v0 + 11);

  v11 = *(v0 + 13);

  v12 = *(v0 + 14);

  v13 = *(v0 + 15);

  v14 = *(v0 + 16);

  v15 = *(v0 + 18);

  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);
  v16 = *&v0[v6];

  return swift_deallocObject();
}

uint64_t sub_1CF0B8B14()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1CF0B8B64()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 104) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 9);

  v8 = *(v0 + 10);

  v9 = *(v0 + 12);

  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);
  v10 = *&v0[v6];

  v11 = *&v0[(v6 + 15) & 0xFFFFFFFFFFFFFFF8];

  return swift_deallocObject();
}

uint64_t sub_1CF0B8C7C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0B8CBC()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 136) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 8);

  v8 = *(v0 + 10);

  v9 = *(v0 + 11);

  v10 = *(v0 + 12);

  v11 = *(v0 + 14);

  v12 = *(v0 + 15);

  v13 = *(v0 + 16);

  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);
  v14 = *&v0[v6];

  return swift_deallocObject();
}

uint64_t sub_1CF0B8DDC()
{
  v1 = (type metadata accessor for StagedRemoteVersion(0) - 8);
  v2 = (*(*v1 + 80) + 80) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = (((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  v9 = *(v0 + 72);

  v10 = (v0 + v2);

  v11 = v1[7];
  v12 = *(v5 + 8);
  v12(v10 + v11, v4);
  v13 = *(v0 + v3);

  v14 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  v12((v0 + v6), v4);
  v15 = *(v0 + v7);

  v16 = *(v0 + v8);

  v17 = *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1CF0B8FC4()
{
  v1 = (type metadata accessor for StagedRemoteVersion(0) - 8);
  v2 = (*(*v1 + 80) + 64) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v2;

  v7 = v1[7];
  v8 = sub_1CF9E5A58();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = *(v0 + v3);

  v10 = *(v0 + v5);

  v11 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1CF0B9110()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1CF0B9290()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF0B92C8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

unint64_t sub_1CF0B9308(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

uint64_t sub_1CF0B9318()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_1CF0B9370()
{
  v36 = *(v0 + 16);
  v37 = *(v0 + 40);
  v1 = (type metadata accessor for Bouncing.BouncingContext() - 8);
  v30 = (*(*v1 + 80) + 80) & ~*(*v1 + 80);
  v2 = v30 + *(*v1 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = (type metadata accessor for ItemState() - 8);
  v38 = (v2 + *(*v4 + 80)) & ~*(*v4 + 80);
  v33 = *(*v4 + 64);
  v34 = swift_getAssociatedTypeWitness();
  v35 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for FileItemVersion();
  v32 = *(*(v5 - 1) + 80);
  v31 = *(*(v5 - 1) + 64);
  v6 = *(v0 + 72);

  v7 = swift_getAssociatedTypeWitness();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v30, v7);
  v9 = *(v0 + v30 + v1[15] + 8);

  v8(v0 + v30 + v1[16], v7);
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v38, AssociatedTypeWitness);
  v10 = *(v0 + v38 + v4[11] + 8);

  v11 = v0 + v38 + v4[12];
  v12 = type metadata accessor for ItemMetadata();
  v13 = v12[7];
  v14 = sub_1CF9E5CF8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(v11 + v13, v14);
  v16(v11 + v12[8], v14);
  v17 = *(v11 + v12[14] + 8);

  v18 = v12[30];
  if (!(*(v15 + 48))(v11 + v18, 1, v14))
  {
    v16(v11 + v18, v14);
  }

  v19 = *(v11 + v12[31]);

  v20 = *(v11 + v12[33]);

  v21 = (v11 + v12[34]);
  v22 = v21[1];
  if (v22 >> 60 != 15)
  {
    sub_1CEFE4714(*v21, v22);
  }

  v23 = (v38 + v33 + v32) & ~v32;
  v24 = *(v11 + v12[38] + 8);

  (*(*(v34 - 8) + 8))(v0 + v23);
  v25 = *(v0 + v23 + v5[13]);

  (*(*(v35 - 8) + 8))(v0 + v23 + v5[14]);
  v26 = *(v0 + v23 + v5[15]);

  v27 = *(v0 + v23 + v5[16] + 8);

  v28 = *(v0 + ((v31 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1CF0B9890()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v3 = (type metadata accessor for FileItemVersion() - 8);
  v4 = (*(*v3 + 80) + 96) & ~*(*v3 + 80);
  v5 = v4 + *(*v3 + 64);
  v6 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = (type metadata accessor for ItemState() - 8);
  v8 = (v5 + *(*v7 + 80)) & ~*(*v7 + 80);
  v33 = *(*v7 + 64);
  v9 = *(v0 + 8);

  v10 = *(v0 + 9);

  v11 = *(v0 + 11);

  v12 = &v0[v4];
  v13 = v8;
  (*(*(AssociatedTypeWitness - 8) + 8))(v12, AssociatedTypeWitness);
  v14 = *&v12[v3[15]];

  (*(*(v35 - 8) + 8))(&v12[v3[16]], v35);
  v15 = *&v12[v3[17]];

  v16 = *&v12[v3[18] + 8];

  (*(*(v6 - 8) + 8))(&v0[v8], v6);
  v17 = *&v0[v8 + 8 + v7[11]];

  v18 = &v0[v8 + v7[12]];
  v19 = type metadata accessor for ItemMetadata();
  v20 = v19[7];
  v21 = sub_1CF9E5CF8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 8);
  v23(&v18[v20], v21);
  v23(&v18[v19[8]], v21);
  v24 = *&v18[v19[14] + 8];

  v25 = v19[30];
  if (!(*(v22 + 48))(&v18[v25], 1, v21))
  {
    v23(&v18[v25], v21);
  }

  v26 = *&v18[v19[31]];

  v27 = *&v18[v19[33]];

  v28 = &v18[v19[34]];
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_1CEFE4714(*v28, v29);
  }

  v30 = *&v18[v19[38] + 8];

  v31 = *&v0[(v33 + v13 + 7) & 0xFFFFFFFFFFFFFFF8];

  return swift_deallocObject();
}

uint64_t sub_1CF0B9C9C()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF0B9CD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0B9D0C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1CF0B9D64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v44 = type metadata accessor for ItemPropagationResult();
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v43 = TupleTypeMetadata2;
  v4 = *(sub_1CF9E8238() - 8);
  v45 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v5 = (*(v4 + 64) + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for FileItemVersion();
  v46 = v5;
  v49 = *(*(v8 - 1) + 80);
  v9 = (v5 + v49 + 8) & ~v49;
  v10 = *(*(v8 - 1) + 64);
  v11 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for ItemState();
  v48 = *(*(v12 - 8) + 80);
  v13 = (v9 + v10 + v48) & ~v48;
  v47 = *(*(v12 - 8) + 64);
  v14 = (v0 + v45);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    if (!(*(*(v44 - 8) + 48))(v14, 1, v44))
    {
      (*(*(v1 - 8) + 8))(v14, v1);
      v15 = v14 + *(v44 + 44);
      v16 = *(v15 + 3);
      if (v16 >> 60 != 15 && (v16 & 0xF000000000000000) != 0xB000000000000000)
      {
        sub_1CEFE4714(*(v15 + 2), v16);
      }
    }
  }

  v18 = *(v0 + v46);

  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v9, AssociatedTypeWitness);
  v19 = *(v0 + v9 + v8[13]);

  (*(*(v7 - 8) + 8))(v0 + v9 + v8[14], v7);
  v20 = *(v0 + v9 + v8[15]);

  v21 = *(v0 + v9 + v8[16] + 8);

  v22 = v13;
  (*(*(v11 - 8) + 8))(v0 + v13, v11);
  v23 = *(v0 + v13 + *(v12 + 36) + 8);

  v24 = v0 + v13 + *(v12 + 40);
  v25 = type metadata accessor for ItemMetadata();
  v26 = v25[7];
  v27 = sub_1CF9E5CF8();
  v28 = *(v27 - 8);
  v29 = *(v28 + 8);
  v29(v24 + v26, v27);
  v29(v24 + v25[8], v27);
  v30 = *(v24 + v25[14] + 8);

  v31 = v25[30];
  if (!(*(v28 + 48))(v24 + v31, 1, v27))
  {
    v29(v24 + v31, v27);
  }

  v32 = *(v24 + v25[31]);

  v33 = *(v24 + v25[33]);

  v34 = (v24 + v25[34]);
  v35 = v34[1];
  if (v35 >> 60 != 15)
  {
    sub_1CEFE4714(*v34, v35);
  }

  v36 = (v47 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = *(v24 + v25[38] + 8);

  v39 = *(v0 + v36);

  v40 = *(v0 + v37);

  v41 = *(v0 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0BA380()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0BA3D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0BA440()
{
  v1 = *(v0 + 48);
  if (v1 >> 60 != 15 && (v1 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 40), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0BA4A4()
{
  v1 = *(v0 + 56);
  if (v1 > 0xC)
  {
    if (*(v0 + 56) > 0xEu)
    {
      if (v1 != 15)
      {
        if (v1 == 16)
        {
        }

        goto LABEL_17;
      }
    }

    else if (v1 != 13 && v1 != 14)
    {
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    goto LABEL_17;
  }

  if (*(v0 + 56) <= 2u)
  {
    if (v1 != 1 && v1 != 2)
    {
      goto LABEL_17;
    }

LABEL_12:
    v2 = *(v0 + 24);

    goto LABEL_17;
  }

  if (v1 == 3 || v1 == 5)
  {
    goto LABEL_12;
  }

LABEL_17:

  return swift_deallocObject();
}

uint64_t sub_1CF0BA558()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0BA590()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_1CF0BA6EC(id a1, char a2)
{
  if (a2)
  {
  }
}

_DWORD *sub_1CF0BA754@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1CF0BA780@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_1CF0BA850(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1CF0BA864(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

BOOL sub_1CF0BA8B0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1CF0BA664(*a1, *a2);
}

uint64_t sub_1CF0BA8C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_1CF0BA674(a1, *v2);
}

unint64_t sub_1CF0BA8D4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF08BAD4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1CF0BA900(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

__CFString *defaultsKeyForErrorInjectionCategory(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return @"base";
  }
}

uint64_t errorInjectionCategoryByName(const char *a1)
{
  if (!strcmp(a1, [@"base" UTF8String]))
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

id FPDAppStoreServiceXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4C8C038];
  v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4C68CD8];
  FPSetOperationClientOnXPCInterface();
  [v0 setInterface:v1 forSelector:sel_startOperation_toFetchAppStoreIconsForAppBundleIDs_desiredSizeToScale_completionHandler_ argumentIndex:0 ofReply:0];

  return v0;
}

void sub_1CF0BB434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_1CF0BBFD0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x34u);
}

uint64_t fp_configuration_store_int_check(void *a1, void *a2, uint64_t a3, int a4, int a5, int a6)
{
  LODWORD(v7) = a5;
  v20 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = [a1 levelForFactor:v11 withNamespaceName:a3];
  v13 = v12;
  if (v12 && [v12 levelOneOfCase] == 13)
  {
    a4 = [v13 longValue];
  }

  else
  {
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v18 = 138543362;
      v19 = v11;
      _os_log_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_INFO, "[INFO] Unable to load value for %{public}@", &v18, 0xCu);
    }
  }

  if (a4 >= a6)
  {
    v15 = a6;
  }

  else
  {
    v15 = a4;
  }

  if (a4 <= v7)
  {
    v7 = v7;
  }

  else
  {
    v7 = v15;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t fp_configuration_store_BOOL_check(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 levelForFactor:a2 withNamespaceName:@"COREOS_FPFS_CONFIG"];
  v5 = v4;
  if (v4 && [v4 levelOneOfCase] == 10)
  {
    a3 = [v5 BOOLeanValue];
  }

  return a3;
}

double fp_configuration_store_double_check(void *a1, void *a2, double a3, double a4, double a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = [a1 levelForFactor:v9 withNamespaceName:@"COREOS_FPFS_CONFIG"];
  v11 = v10;
  if (v10 && [v10 levelOneOfCase] == 15)
  {
    [v11 doubleValue];
    a3 = v12;
  }

  else
  {
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = 138543362;
      v18 = v9;
      _os_log_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_INFO, "[INFO] Unable to load value for %{public}@", &v17, 0xCu);
    }
  }

  if (a3 < a5)
  {
    v14 = a3;
  }

  else
  {
    v14 = a5;
  }

  if (a3 > a4)
  {
    a4 = v14;
  }

  v15 = *MEMORY[0x1E69E9840];
  return a4;
}

uint64_t fp_configuration_store_int64_check(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = [a1 levelForFactor:v11 withNamespaceName:a3];
  v13 = v12;
  if (v12 && [v12 levelOneOfCase] == 13)
  {
    a4 = [v13 longValue];
  }

  else
  {
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v18 = 138543362;
      v19 = v11;
      _os_log_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_INFO, "[INFO] Unable to load value for %{public}@", &v18, 0xCu);
    }
  }

  if (a4 >= a6)
  {
    v15 = a6;
  }

  else
  {
    v15 = a4;
  }

  if (a4 > a5)
  {
    a5 = v15;
  }

  v16 = *MEMORY[0x1E69E9840];
  return a5;
}

id fp_configuration_store_string_check(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 levelForFactor:a2 withNamespaceName:@"COREOS_FPFS_CONFIG"];
  v7 = v6;
  if (v6 && [v6 levelOneOfCase] == 11)
  {
    v8 = [v7 stringValue];
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v9;
}

void sub_1CF0C09A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*result + 40);
  return result;
}

void sub_1CF0C11FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CF0CD938(_Unwind_Exception *a1)
{
  __fp_leave_section_Debug();
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

id OUTLINED_FUNCTION_12(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (*(a1 + 40) + 8);

  return objc_loadWeakRetained(v3);
}

void OUTLINED_FUNCTION_16(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void sub_1CF0D1F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44)
{
  objc_destroyWeak((v45 + 32));
  objc_destroyWeak((v44 + 32));
  objc_destroyWeak((v49 + 32));
  objc_destroyWeak((v48 + 32));
  objc_destroyWeak((v47 + 32));
  objc_destroyWeak(&a39);
  objc_destroyWeak(&a44);
  objc_destroyWeak((v46 + 32));
  objc_destroyWeak((v50 - 136));
  objc_destroyWeak((v50 - 128));
  objc_destroyWeak((v50 - 120));
  __fp_leave_section_Debug();
  _Unwind_Resume(a1);
}

void sub_1CF0D47B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id objectForKeyOfClass(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKey:a2];
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void OUTLINED_FUNCTION_5_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_1CF0DB690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CF0DC038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id internalUserDefaults()
{
  if (internalUserDefaults_onceToken != -1)
  {
    internalUserDefaults_cold_1();
  }

  v1 = internalUserDefaults_defaults;

  return v1;
}

void sub_1CF0DD790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_sync_exit(v17);
  _Unwind_Resume(a1);
}

void __internalUserDefaults_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.fileproviderd"];
  v1 = internalUserDefaults_defaults;
  internalUserDefaults_defaults = v0;
}

void sub_1CF0DE4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1CF0DE96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1CF0DFAE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CF0E0B40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1CF0E0E78(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);
  objc_destroyWeak((v2 + 32));
  _Unwind_Resume(a1);
}

void firstUnlockNotificationCallback(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2[6];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __firstUnlockNotificationCallback_block_invoke;
  block[3] = &unk_1E83BE068;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

void pastBuddyNotificationCallback(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2[6];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __pastBuddyNotificationCallback_block_invoke;
  block[3] = &unk_1E83BE068;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

void sub_1CF0E2654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, id a21)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a21);
  _Unwind_Resume(a1);
}

uint64_t __firstUnlockNotificationCallback_block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_INFO, "[INFO] Device was first unlocked", v4, 2u);
  }

  return [*(a1 + 32) _computeUnlockedStatusAndSetup];
}

uint64_t __pastBuddyNotificationCallback_block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_INFO, "[INFO] Device setup has been run", v4, 2u);
  }

  return [*(a1 + 32) _computeUnlockedStatusAndSetup];
}

void sub_1CF0E3C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1CF0E55BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_9_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*(*(result + 48) + 8) + 40);
  return result;
}

void sub_1CF0E7000(_Unwind_Exception *a1)
{
  __fp_leave_section_Debug();
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void sub_1CF0E716C(_Unwind_Exception *a1)
{
  __fp_leave_section_Debug();
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void sub_1CF0E73D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CF0E7C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CF0EAC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void registerClaim(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if (initRequestDictionary_onceToken != -1)
  {
    registerClaim_cold_1();
  }

  v4 = requestPerClaimID;
  objc_sync_enter(v4);
  [requestPerClaimID setObject:v3 forKeyedSubscript:v5];
  objc_sync_exit(v4);
}

void unregisterClaim(void *a1)
{
  v2 = a1;
  if (initRequestDictionary_onceToken != -1)
  {
    registerClaim_cold_1();
  }

  v1 = requestPerClaimID;
  objc_sync_enter(v1);
  [requestPerClaimID setObject:0 forKeyedSubscript:v2];
  objc_sync_exit(v1);
}

void __initRequestDictionary_block_invoke()
{
  v0 = objc_opt_new();
  v1 = requestPerClaimID;
  requestPerClaimID = v0;
}

void sub_1CF0EDC04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CF0EE408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void firstUnlockNotificationCallback_0()
{
  v0 = +[FPDAccessControlStore sharedStore];
  [v0 reopenDatabaseAfterUnlock];
}

void sub_1CF0F02E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CF0F05DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t checkBundleRecord(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 bundleIdentifier];
  if (!v5)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v3;
      v16 = 2112;
      v17 = v4;
      v8 = "[WARNING] containing bundle %@ for consumer %@ has no bundle identifier";
      v9 = v7;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 22;
LABEL_8:
      _os_log_impl(&dword_1CEFC7000, v9, v10, v8, &v14, v11);
    }

LABEL_9:

    v6 = 0;
    goto LABEL_10;
  }

  if (([v4 hasPrefix:v5] & 1) == 0)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v14 = 138412802;
      v15 = v3;
      v16 = 2112;
      v17 = v4;
      v18 = 2112;
      v19 = v5;
      v8 = "[INFO] containing bundle %@ for consumer %@ has surprising bundle identifier %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_INFO;
      v11 = 32;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v6 = 1;
LABEL_10:

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1CF0F0CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __accessControlBaseURL_block_invoke()
{
  v0 = MEMORY[0x1E695DFF8];
  if (accessControlDirectory_onceToken != -1)
  {
    __accessControlBaseURL_block_invoke_cold_1();
  }

  v1 = accessControlDirectory_dir;
  v4 = [v1 stringByAppendingPathComponent:@"AccessControl"];
  v2 = [v0 fileURLWithPath:v4 isDirectory:0];
  v3 = accessControlBaseURL_url;
  accessControlBaseURL_url = v2;
}

void __accessControlDirectory_block_invoke()
{
  v0 = [MEMORY[0x1E695DFF8] fp_supportDirectory];
  v1 = [v0 path];
  v2 = accessControlDirectory_dir;
  accessControlDirectory_dir = v1;

  v3 = [MEMORY[0x1E696AC08] defaultManager];
  if (([v3 fileExistsAtPath:accessControlDirectory_dir isDirectory:0] & 1) == 0)
  {
    v8 = 0;
    v4 = [v3 createDirectoryAtPath:accessControlDirectory_dir withIntermediateDirectories:1 attributes:0 error:&v8];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = fp_current_or_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __accessControlDirectory_block_invoke_cold_1(v5);
      }

      fp_simulate_crash();
      v7 = fp_current_or_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        __accessControlDirectory_block_invoke_cold_2();
      }
    }
  }
}

id containingApplicationRecord(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 containingBundleRecord];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }
  }

  v2 = 0;
LABEL_7:

  return v2;
}

void OUTLINED_FUNCTION_3_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_1CF0F1BB0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);
  __fp_leave_section_Debug();
  _Unwind_Resume(a1);
}

void sub_1CF0F2030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  objc_sync_exit(v18);
  __fp_leave_section_Debug();
  _Unwind_Resume(a1);
}

void sub_1CF0F2158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  objc_sync_exit(v10);
  __fp_leave_section_Debug();
  _Unwind_Resume(a1);
}

void sub_1CF0F276C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  objc_sync_exit(obj);
  __fp_leave_section_Debug();
  _Unwind_Resume(a1);
}

void sub_1CF0F2A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  objc_sync_exit(v20);
  __fp_leave_section_Debug();
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_5_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_1CF0F33D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CF0F43C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CF0F6BD4(_Unwind_Exception *a1)
{
  __fp_leave_section_Notice();
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void sub_1CF0F873C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void sub_1CF0F99F0(_Unwind_Exception *a1)
{
  __fp_leave_section_Debug();
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void sub_1CF0F9D94(_Unwind_Exception *a1)
{
  __fp_leave_section_Debug();
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void __providedItemsOperationQueue_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = providedItemsOperationQueue_operationQueue;
  providedItemsOperationQueue_operationQueue = v0;

  [providedItemsOperationQueue_operationQueue setMaxConcurrentOperationCount:1];
  v2 = objc_opt_new();
  v3 = fileCoordinationProviderByURL;
  fileCoordinationProviderByURL = v2;
}

void ___executableNameIsBlockedForMaterialization_block_invoke()
{
  v26 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v0 addSuiteNamed:@"com.apple.fileproviderd"];
  v1 = [MEMORY[0x1E695DFA8] setWithArray:&unk_1F4C628E0];
  v2 = _executableNameIsBlockedForMaterialization_blockedProcesses;
  _executableNameIsBlockedForMaterialization_blockedProcesses = v1;

  v3 = [v0 arrayForKey:@"vfs-materialization.exclude.processes"];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [_executableNameIsBlockedForMaterialization_blockedProcesses addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  v9 = [v0 arrayForKey:@"vfs-materialization.include.processes"];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [_executableNameIsBlockedForMaterialization_blockedProcesses removeObject:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void OUTLINED_FUNCTION_13_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void sub_1CF103880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  objc_sync_exit(v16);
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void addRootPathKeys(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v4 rootURLs];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * v10) fp_realpathURL];
          v12 = [v11 path];
          [v3 setObject:v5 forKeyedSubscript:v12];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void removeRootPathKeys(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && a2)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [a2 rootURLs];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v12 + 1) + 8 * v8) fp_realpathURL];
          v10 = [v9 path];
          [v3 removeObjectForKey:v10];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1CF1042E8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  __fp_leave_section_Notice();
  _Unwind_Resume(a1);
}

void sub_1CF104C0C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  __fp_leave_section_Notice();
  _Unwind_Resume(a1);
}

void sub_1CF107498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id obj, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  objc_sync_exit(obj);
  __fp_leave_section_Notice();
  _Unwind_Resume(a1);
}

void sub_1CF10880C(_Unwind_Exception *a1)
{
  __fp_leave_section_Debug();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_1CF10A164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  objc_sync_exit(v44);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose((v45 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_13_1(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void OUTLINED_FUNCTION_15_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

void sub_1CF10EAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CF10F0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CF110BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CF110E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__54(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1CF1116A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CF111864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __schedulers_block_invoke()
{
  v0 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  v1 = schedulers_allSchedulers;
  schedulers_allSchedulers = v0;
}

void __internalQueueForBGST_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.fileproviderd.bgst-manipulation", v2);
  v1 = internalQueueForBGST_bgstQueue;
  internalQueueForBGST_bgstQueue = v0;
}

id fp_resolver_log()
{
  if (fp_resolver_log_once != -1)
  {
    fp_resolver_log_cold_1();
  }

  v1 = fp_resolver_log_logger;

  return v1;
}

void __fp_resolver_log_block_invoke()
{
  v0 = os_log_create("com.apple.FileProvider", "Resolver");
  v1 = fp_resolver_log_logger;
  fp_resolver_log_logger = v0;
}

id FPSerialNumber()
{
  if (FPSerialNumber_pred[0] != -1)
  {
    FPSerialNumber_cold_1();
  }

  v1 = FPSerialNumber_SerialNumber;

  return v1;
}

void __FPSerialNumber_block_invoke()
{
  if (fpfs_is_internal_build())
  {
    v4 = 0;
    v0 = MGCopyAnswerWithError();
    v1 = v0;
    if (v0 && [v0 length])
    {
      v2 = v1;
      v3 = FPSerialNumber_SerialNumber;
      FPSerialNumber_SerialNumber = v2;
    }

    else
    {
      v3 = fp_current_or_default_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __FPSerialNumber_block_invoke_cold_1(&v4);
      }
    }
  }
}

void FPLogApplicationVersions(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 URL];
    v7 = [v6 fp_shortDescription];
    v8 = [v4 URL];
    v9 = [v8 fp_shortDescription];
    v11 = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEFAULT, "[NOTICE] applicationForCaller=%{public}@, applicationForRunningProvider=%{public}@", &v11, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t FPGetRelation(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (([v3 isEqual:v4] & 1) == 0)
  {
    v6 = [v3 bundleVersion];
    v7 = [v4 bundleVersion];
    v8 = v7;
    if (v6)
    {
      if (!v7)
      {
        v11 = fp_current_or_default_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEFAULT, "[NOTICE] Application version for running provider not found.", &v18, 2u);
        }

        FPLogApplicationVersions(v3, v4);
        goto LABEL_19;
      }

      if ([v6 isEqualToString:v7])
      {
        v9 = fp_current_or_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          FPGetRelation_cold_1();
        }

        v5 = 0;
        goto LABEL_24;
      }

      v12 = [MEMORY[0x1E6963608] defaultWorkspace];
      v13 = [v12 isVersion:v6 greaterThanOrEqualToVersion:v8];

      v14 = fp_current_or_default_log();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        if (v15)
        {
          v18 = 138412546;
          v19 = v6;
          v20 = 2112;
          v21 = v8;
          _os_log_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEFAULT, "[NOTICE] callerVersion > runningVersion, returning FPVersionRelationCallerNewer. %@ > %@", &v18, 0x16u);
        }

LABEL_19:
        v5 = 1;
LABEL_24:

        goto LABEL_25;
      }

      if (v15)
      {
        v18 = 138412546;
        v19 = v6;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEFAULT, "[NOTICE] callerVersion < runningVersion, returning FPVersionRelationCallerOlder. %@ < %@", &v18, 0x16u);
      }
    }

    else
    {
      v10 = fp_current_or_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEFAULT, "[NOTICE] Application version for calling provider not found.", &v18, 2u);
      }

      FPLogApplicationVersions(v3, v4);
    }

    v5 = 2;
    goto LABEL_24;
  }

  v5 = 0;
LABEL_25:

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1CF11BBD0(_Unwind_Exception *a1)
{
  __fp_pop_log();
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void sub_1CF11F0F4(_Unwind_Exception *a1)
{
  __fp_pop_log();
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void sub_1CF1281A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void hasNonUploadedFiles(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 count])
  {
    v5 = [v3 lastObject];
    [v3 removeLastObject];
    v6 = [v5 defaultBackend];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __hasNonUploadedFiles_block_invoke;
    v7[3] = &unk_1E83C0948;
    v9 = v4;
    v8 = v3;
    [v6 hasNonUploadedFilesWithCompletionHandler:v7];
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

void sub_1CF13778C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a63, 8);
  _Unwind_Resume(a1);
}

void sub_1CF14B1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  __fp_pop_log();
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Unwind_Resume(a1);
}

uint64_t __hasNonUploadedFiles_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return hasNonUploadedFiles(*(a1 + 32), *(a1 + 40));
  }
}

uint64_t OUTLINED_FUNCTION_0_7(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = result;
  *(a2 + 22) = 2080;
  return result;
}

void OUTLINED_FUNCTION_3_6(uint64_t a1, uint64_t a2)
{
  *(a2 + 22) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v2;
  *(a2 + 34) = 0;
  *(a2 + 42) = v2;
  *(a2 + 44) = 0;
}

void OUTLINED_FUNCTION_11_1(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = v2;
  *(a2 + 32) = v3;
  *(a2 + 34) = 0;
}

void OUTLINED_FUNCTION_23(uint64_t a1, uint64_t a2)
{
  *(a2 + 34) = v3;
  *(a2 + 42) = v2;
  *(a2 + 44) = 0;
}

id FPDFPCKServiceXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4C8C450];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v1 setWithObjects:{v2, v3, v4, objc_opt_class(), 0}];
  [v0 setClasses:v5 forSelector:sel_prepareFPCKForDomain_domainUserInfo_domainRootURL_databaseBackupPath_accessingPaths_urls_volumeRole_options_reason_fpfs_iCDPackageDetection_completionHandler_ argumentIndex:1 ofReply:0];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v0 setClasses:v8 forSelector:sel_prepareFPCKForDomain_domainUserInfo_domainRootURL_databaseBackupPath_accessingPaths_urls_volumeRole_options_reason_fpfs_iCDPackageDetection_completionHandler_ argumentIndex:4 ofReply:0];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [v0 setClasses:v11 forSelector:sel_prepareFPCKForDomain_domainUserInfo_domainRootURL_databaseBackupPath_accessingPaths_urls_volumeRole_options_reason_fpfs_iCDPackageDetection_completionHandler_ argumentIndex:5 ofReply:0];

  v12 = FPDFPCKUpdateReceivingXPCInterface();
  [v0 setInterface:v12 forSelector:sel_runFPCKWithPauseHandler_contentBarrier_completionHandler_ argumentIndex:0 ofReply:0];

  return v0;
}

id FPDFPCKUpdateReceivingXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4C7CE00];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v1 setWithObjects:{v2, v3, v4, v5, objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:sel_saveCheckpointWithReport_ argumentIndex:0 ofReply:0];

  return v0;
}

void sub_1CF14D028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void sub_1CF14DB24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CF14EA08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  __fp_leave_section_Debug();
  _Unwind_Resume(a1);
}

void __appStoreServiceConnection_block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __appStoreServiceConnection_block_invoke_cold_1(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void __appStoreServiceConnection_block_invoke_124()
{
  v0 = fp_current_or_default_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __appStoreServiceConnection_block_invoke_124_cold_1();
  }
}

void __hardcodedUUIDs_block_invoke()
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"/System/Library/PrivateFrameworks/DocumentManagerUICore.framework";
  v0 = [MEMORY[0x1E6967518] _dmIdentifier];
  v5[1] = @"/System/Library/PrivateFrameworks/DesktopServicesPriv.framework";
  v6[0] = v0;
  v1 = [MEMORY[0x1E6967518] _dsIdentifier];
  v6[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = hardcodedUUIDs_ret;
  hardcodedUUIDs_ret = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1CF153064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getDEExtensionManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getDEExtensionManagerClass_softClass;
  v7 = getDEExtensionManagerClass_softClass;
  if (!getDEExtensionManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getDEExtensionManagerClass_block_invoke;
    v3[3] = &unk_1E83C0CC0;
    v3[4] = &v4;
    __getDEExtensionManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CF155288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CF1556D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

Class __getDEExtensionManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!DiagnosticExtensionsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __DiagnosticExtensionsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E83C0CE0;
    v6 = 0;
    DiagnosticExtensionsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!DiagnosticExtensionsLibraryCore_frameworkLibrary)
  {
    __getDEExtensionManagerClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("DEExtensionManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDEExtensionManagerClass_block_invoke_cold_1();
  }

  getDEExtensionManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __DiagnosticExtensionsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DiagnosticExtensionsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fpfs_fsevent_stream_open(const char *a1, uint64_t a2, uint64_t a3, const __CFArray *a4, FSEventStreamEventId a5, FSEventStreamCreateFlags a6, void *a7, CFTimeInterval a8)
{
  v15 = a7;
  v16 = malloc_type_calloc(1uLL, 0x68uLL, 0x10A0040A8140769uLL);
  v17 = v16;
  if (v16)
  {
    snprintf(v16, 0x41uLL, "%s", a1);
    *(v17 + 80) = a2;
    *(v17 + 88) = a3;
    *(v17 + 96) = 0;
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      fpfs_fsevent_stream_open_cold_1(v17, v18);
    }

    context.version = 0;
    memset(&context.retain, 0, 24);
    context.info = v17;
    v19 = FSEventStreamCreate(0, _internalFSEventStreamCallback, &context, a4, a5, a8, a6);
    *(v17 + 72) = v19;
    FSEventStreamSetDispatchQueue(v19, v15);
  }

  return v17;
}

uint64_t _internalFSEventStreamCallback(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(a2 + 80))(result, *(a2 + 88));
  }

  return result;
}

uint64_t fpfs_fsevent_stream_get_wrapped(uint64_t result)
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void fpfs_fsevent_stream_flush(uint64_t a1)
{
  if (a1)
  {
    FSEventStreamFlushSync(*(a1 + 72));
  }
}

void fpfs_fsevent_stream_suspend(uint64_t a1)
{
  if (a1)
  {
    v2 = fp_current_or_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      fpfs_fsevent_stream_suspend_cold_1(a1, v2);
    }

    os_unfair_lock_lock((a1 + 96));
    FSEventStreamStop(*(a1 + 72));
    os_unfair_lock_unlock((a1 + 96));
  }
}

void fpfs_fsevent_stream_resume(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 96));
    FSEventStreamStart(*(a1 + 72));

    os_unfair_lock_unlock((a1 + 96));
  }
}

void fpfs_fsevent_stream_close(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 96));
    v2 = *(a1 + 72);
    *(a1 + 72) = 0;
    FSEventStreamStop(v2);
    os_unfair_lock_unlock((a1 + 96));
    FSEventStreamInvalidate(v2);
    FSEventStreamRelease(v2);

    free(a1);
  }
}

void sub_1CF1595E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CF15A008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void fseventsCallback(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v46 = *MEMORY[0x1E69E9840];
  v11 = objc_autoreleasePoolPush();
  if (a3)
  {
    context = v11;
    v35 = a2;
    v12 = v35[14];
    v37 = fpfs_adopt_log();
    v13 = a4;
    v33 = objc_opt_new();
    v36 = v13;
    if (v13 && [v13 count] == a3)
    {
      v14 = a3 - 1;
      if (a3 >= 1)
      {
        v32 = 0;
        while (1)
        {
          v15 = objc_autoreleasePoolPush();
          if (*(v35 + 81) != 1)
          {
            break;
          }

          v16 = fp_current_or_default_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v39 = (v14 + 1);
            _os_log_debug_impl(&dword_1CEFC7000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] draining %zd fsevents", buf, 0xCu);
          }

          v17 = 1;
LABEL_18:

          objc_autoreleasePoolPop(v15);
          if (v17 != 7 && v17)
          {
            goto LABEL_29;
          }

          if (--v14 >= 0xFFFFFFFFFFFFFFFELL)
          {
            goto LABEL_28;
          }
        }

        v18 = *(a5 + 4 * v14);
        v19 = [v36 objectAtIndexedSubscript:v14];
        v16 = [v19 objectForKey:@"path"];

        v20 = [v36 objectAtIndexedSubscript:v14];
        v34 = [v20 objectForKey:@"fileID"];

        v21 = [v36 objectAtIndexedSubscript:v14];
        v22 = [v21 objectForKey:@"docID"];

        v23 = -[FPFSChangeRecord initWithPath:fileID:docID:flags:eventID:]([FPFSChangeRecord alloc], "initWithPath:fileID:docID:flags:eventID:", v16, [v34 unsignedLongLongValue], objc_msgSend(v22, "unsignedIntValue"), v18, *(a6 + 8 * v14));
        v24 = v35;
        objc_sync_enter(v24);
        if (*(v35 + 86) == 1)
        {
          v25 = ([(FPFSChangeRecord *)v23 flags]>> 19) & 1;
          if ((v25 & v32) != 0)
          {
            objc_sync_exit(v24);

            v17 = 7;
            v32 = 1;
LABEL_17:

            goto LABEL_18;
          }

          v32 |= v25;
        }

        objc_sync_exit(v24);

        v26 = fp_current_or_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218498;
          v39 = (v14 + 1);
          v40 = 2048;
          v41 = a3;
          v42 = 2112;
          v43 = v23;
          _os_log_debug_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] Enqueuing event: %zd/%zd %@", buf, 0x20u);
        }

        [v33 insertObject:v23 atIndex:0];
        v17 = 0;
        goto LABEL_17;
      }

      LOBYTE(v32) = 0;
LABEL_28:
      [v35 queueEvents:v33 markSelfEncountered:v32 & 1];
    }

    else
    {
      v27 = [MEMORY[0x1E696AD60] string];
      v28 = 0;
      do
      {
        [v27 appendFormat:@"<id:%llu, flg:0x%x> ", *(a6 + 8 * v28), *(a5 + 4 * v28)];
        ++v28;
      }

      while (a3 != v28);
      v29 = fp_current_or_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218754;
        v39 = v36;
        v40 = 2048;
        v41 = a3;
        v42 = 2048;
        v43 = [v36 count];
        v44 = 2112;
        v45 = v27;
        _os_log_error_impl(&dword_1CEFC7000, v29, OS_LOG_TYPE_ERROR, "[ERROR] Dropping FSEvent, eventPaths=%p with numEvents=%zd (eventInfo.count=%lu): %@", buf, 0x2Au);
      }

      [v35 resetWithReason:7 newFSEventID:-1];
    }

LABEL_29:

    __fp_pop_log();
    v11 = context;
  }

  objc_autoreleasePoolPop(v11);
  v30 = *MEMORY[0x1E69E9840];
}

void sub_1CF15B2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void fpfs_generate_fsevent_at()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = MEMORY[0x1E696AEC0];
  v2 = [v0 UUIDString];
  v3 = [v1 stringWithFormat:@".notify.%@.nosync", v2];

  [v3 fileSystemRepresentation];
  v5 = v3;
  v4 = v3;
  fpfs_openat();
}

uint64_t __fpfs_generate_fsevent_at_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) fileSystemRepresentation];

  return unlinkat(v1, v2, 0);
}

NSObject *fpfs_set_unlock_timer_handler(int a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dup(a1);
  if (v7 < 0)
  {
    v6[2](v6);
    v10 = 0;
  }

  else
  {
    v8 = v7;
    v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v5);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __fpfs_set_unlock_timer_handler_block_invoke;
    block[3] = &unk_1E83C0F40;
    v18 = v8;
    v17 = v6;
    v10 = v9;
    v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
    dispatch_source_set_event_handler(v10, v11);

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __fpfs_set_unlock_timer_handler_block_invoke_2;
    handler[3] = &__block_descriptor_36_e5_v8__0l;
    v15 = v8;
    dispatch_source_set_cancel_handler(v10, handler);
    v12 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(v10, v12, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_resume(v10);
  }

  return v10;
}

uint64_t __fpfs_set_unlock_timer_handler_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = fpfs_file_is_flocked();
  if ((result & 1) == 0)
  {
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

NSObject *fpfs_set_unlock_handler(int a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dup(a1);
  if ((v7 & 0x80000000) != 0)
  {
    v6[2](v6);
    v11 = 0;
  }

  else
  {
    v8 = v7;
    v9 = dispatch_source_create(MEMORY[0x1E69E9728], v7, 0x141uLL, v5);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __fpfs_set_unlock_handler_block_invoke;
    handler[3] = &unk_1E83C0F40;
    v17 = v8;
    v10 = v6;
    v16 = v10;
    dispatch_source_set_event_handler(v9, handler);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __fpfs_set_unlock_handler_block_invoke_2;
    v13[3] = &__block_descriptor_36_e5_v8__0l;
    v14 = v8;
    dispatch_source_set_cancel_handler(v9, v13);
    dispatch_resume(v9);
    if (fpfs_file_is_flocked())
    {
      v11 = v9;
    }

    else
    {
      dispatch_source_cancel(v9);
      v10[2](v10);
      v11 = 0;
    }
  }

  return v11;
}

uint64_t __fpfs_set_unlock_handler_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = fpfs_file_is_flocked();
  if ((result & 1) == 0)
  {
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

fp_task_tracker *fp_task_tracker_create(const char *a1)
{
  v2 = objc_alloc_init(fp_task_tracker);
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = "unlabeled";
  }

  v2->label = strdup(v3);
  v4 = dispatch_group_create();
  group = v2->group;
  v2->group = v4;

  return v2;
}

uint64_t __fp_task_tracker_async_and_qos_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void fp_task_tracker_cancel(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    fp_task_tracker_cancel_cold_1();
  }

  atomic_store(1u, v1 + 24);
}

void fp_task_tracker_sync(void *a1, void *a2, void *a3)
{
  v10 = a1;
  v5 = a2;
  v6 = a3;
  if (!v10)
  {
    fp_task_tracker_sync_cold_1();
  }

  v7 = v6;
  dispatch_group_enter(*(v10 + 2));
  v8 = atomic_load(v10 + 24);
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  v9[2]();
  dispatch_group_leave(*(v10 + 2));
}

id fileProviderDirectory()
{
  v0 = [MEMORY[0x1E695DFF8] fp_supportDirectory];
  v1 = [v0 path];

  v2 = [MEMORY[0x1E696AC08] defaultManager];
  if (([v2 fileExistsAtPath:v1 isDirectory:0] & 1) == 0)
  {
    v7 = 0;
    v3 = [v2 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:&v7];
    v4 = v7;
    if ((v3 & 1) == 0)
    {
      v5 = fp_current_or_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        fileProviderDirectory_cold_1(v4);
      }
    }
  }

  return v1;
}

id alternateContentsPlistURL()
{
  if (alternateContentsPlistURL_onceToken != -1)
  {
    alternateContentsPlistURL_cold_1();
  }

  v1 = alternateContentsPlistURL_url;

  return v1;
}

id pausedSyncItemslistURL()
{
  if (pausedSyncItemslistURL_onceToken != -1)
  {
    pausedSyncItemslistURL_cold_1();
  }

  v1 = pausedSyncItemslistURL_url;

  return v1;
}

void __alternateContentsPlistURL_block_invoke()
{
  v0 = MEMORY[0x1E695DFF8];
  v4 = fileProviderDirectory();
  v1 = [v4 stringByAppendingPathComponent:@"AlternateContents.plist"];
  v2 = [v0 fileURLWithPath:v1 isDirectory:0];
  v3 = alternateContentsPlistURL_url;
  alternateContentsPlistURL_url = v2;
}

void __pausedSyncItemslistURL_block_invoke()
{
  v0 = MEMORY[0x1E695DFF8];
  v4 = fileProviderDirectory();
  v1 = [v4 stringByAppendingPathComponent:@"pausedSyncItems.plist"];
  v2 = [v0 fileURLWithPath:v1 isDirectory:0];
  v3 = pausedSyncItemslistURL_url;
  pausedSyncItemslistURL_url = v2;
}

void sub_1CF16CF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CF16F050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CF176B8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

BOOL fsevents_docidpath_parse(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = (a1 + 6);
  do
  {
    v8 = *(v7 - 6);
    ++v7;
  }

  while (v8 == 47);
  if (strncmp(v7 - 7, ".docid/", 7uLL))
  {
    return 0;
  }

  __endptr = v7;
  if ((*v7 - 48) <= 9)
  {
    *__error() = 0;
    strtoll(v7, &__endptr, 10);
    if (*__error())
    {
      return 0;
    }

    v7 = __endptr + 1;
    if (*__endptr != 47)
    {
      return 0;
    }
  }

  if (strncmp(v7, "changed/", 8uLL))
  {
    return 0;
  }

  v10 = v7 + 8;
  __endptr = v10;
  *__error() = 0;
  v11 = strtoll(v10, &__endptr, 10);
  if (*__error())
  {
    return 0;
  }

  *a2 = v11;
  v12 = __endptr;
  if (strncmp(__endptr, "/src=", 5uLL))
  {
    return 0;
  }

  v13 = v12 + 5;
  __endptr = v13;
  *__error() = 0;
  v14 = strtoll(v13, &__endptr, 10);
  if (*__error())
  {
    return 0;
  }

  *a3 = v14;
  v15 = __endptr;
  if (strncmp(__endptr, ",dst=", 5uLL))
  {
    return 0;
  }

  v16 = v15 + 5;
  __endptr = v16;
  *__error() = 0;
  v17 = strtoll(v16, &__endptr, 10);
  if (*__error())
  {
    return 0;
  }

  *a4 = v17;
  return *__endptr == 0;
}

void sub_1CF1775C0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 + 192), 8);
  _Block_object_dispose((v1 + 240), 8);
  _Block_object_dispose((v1 + 288), 8);
  _Unwind_Resume(a1);
}

void sub_1CF1779CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Block_object_dispose((v29 - 128), 8);
  _Block_object_dispose((v29 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t checkFault(uint64_t fd, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 + 116);
  v9 = v8 & 0x40000020;
  if ((v8 & 0x40000020) == 0x20)
  {
    *a3 |= 0x1000000uLL;
    goto LABEL_18;
  }

  if ((v8 & 0x40000000) != 0)
  {
    if ((*(v7 + 4) & 0xF000) == 0x8000 && *(v7 + 104))
    {
      if (!fpfs_supports_partial_materialization())
      {
        v12 = 32;
        goto LABEL_11;
      }

      v10 = lseek(fd, 0, 4);
      v11 = lseek(fd, 0, 3);
      if (!v10 && v11 == *(v7 + 96))
      {
        v12 = 0x8000000000;
LABEL_11:
        *a3 |= v12;
      }
    }

    if ((*(v7 + 4) & 0xF000) == 0x4000)
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v29 = 1;
      fpfs_fopendir();
      v13 = *(v27 + 24);
      _Block_object_dispose(&v26, 8);
      if ((v13 & 1) == 0)
      {
        *a3 |= 0x40uLL;
      }
    }

    if (*(a4 + 3) == 1)
    {
      *a3 |= 0x80000000uLL;
    }

    if ((fpck_validate_decmpfs_xattr(fd, a4, a3) & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

LABEL_18:
  v14 = *(a4 + 16);
  if ((*(v14 + 44) & 0x20) == 0)
  {
    v15 = 0;
    goto LABEL_42;
  }

  if (*(v14 + 40) == 3)
  {
    v15 = 0;
    if ((fpfs_eviction_properties() & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v15 = 1;
  }

  v26 = 0;
  if ((fpfs_get_purgeable_info() & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v26 && v26 != *(*(a4 + 16) + 160))
  {
    *a3 |= 0x40000000000000uLL;
  }

  *a3 |= 0x20000000000uLL;
  if (*(a4 + 3) == 1)
  {
    *a3 |= 0x100000000uLL;
  }

  if (*(a4 + 4) == 1)
  {
    *a3 |= 0x400000000uLL;
  }

  v16 = *(a4 + 16);
  if ((*(v16 + 44) & 0x80) != 0 && *(v16 + 240) != 0x8000)
  {
    *a3 |= 0x80000000000000uLL;
  }

  v17 = *(v16 + 96);
  if (v17)
  {
    v18 = *(v16 + 240);
    if (v18 == 2048 || v18 == 1024)
    {
      v19 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v17];
      v20 = [MEMORY[0x1E695DF00] now];
      [v20 timeIntervalSinceDate:v19];
      v22 = v21;

      if (v22 >= 7776000.0)
      {
        *a3 |= 0x100000000000000uLL;
      }
    }
  }

  if ((fpck_validate_decmpfs_xattr(fd, a4, a3) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_42:
  if (!v9 && (v15 & 1) == 0 && (fgetxattr(fd, "com.apple.decmpfs", 0, 0, 0, 32) & 0x8000000000000000) == 0)
  {
    *a3 |= 8uLL;
  }

  if ((*(*(a4 + 24) + 4) & 0xF000) == 0x4000 && *(a4 + 4) == 1)
  {
    v23 = *(*(a4 + 16) + 44);
    if (*(a4 + 5) == 1)
    {
      if ((v23 & 0x100) != 0)
      {
        v24 = 0x1000000000;
LABEL_57:
        result = 0;
        *a3 |= v24;
        return result;
      }
    }

    else if (*(a4 + 3) == 1)
    {
      if ((v23 & 0x100) != 0)
      {
        v24 = 0x800000000;
        goto LABEL_57;
      }
    }

    else if ((v23 & 0x100) == 0)
    {
      v24 = 0x200000000;
      goto LABEL_57;
    }
  }

  return 0;
}

void sub_1CF17823C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t checkContent(int a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  bzero(__buf, 0x400uLL);
  bzero(&__s2, 0x400uLL);
  v7 = *(a4 + 24);
  if ((*(v7 + 116) & 0x40000020) == 0 && (*(v7 + 4) & 0xF000) == 0x8000)
  {
    if (lseek(a1, 0, 4))
    {
      lseek(a1, 0, 0);
    }

    else
    {
      v25 = pread(a1, __buf, 0x400uLL, 0);
      if (v25 < 0)
      {
        if (*__error() != 1 || *(*(a4 + 16) + 208) > 2u)
        {
          v22 = 0xFFFFFFFFLL;
          goto LABEL_25;
        }
      }

      else if (v25 && !memcmp(__buf, &__s2, v25))
      {
        *a3 |= 0x80uLL;
      }
    }
  }

  v8 = v6;
  v9 = [v8 pathExtension];
  v10 = [v9 lowercaseString];

  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"wal", @"download", 0}];
  if ([v10 length])
  {
    v32 = 0u;
    v33 = 0u;
    __s2 = 0u;
    v31 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&__s2 objects:__buf count:16];
    if (v13)
    {
      v14 = *v31;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v12);
          }

          if ([v10 containsString:*(*(&__s2 + 1) + 8 * i)])
          {

            goto LABEL_24;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&__s2 objects:__buf count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    if ((*(*(a4 + 24) + 116) & 0x40000020) == 0)
    {
      v35 = *MEMORY[0x1E6982F40];
      v36[0] = [MEMORY[0x1E6982C40] fp_cachedTypeWithIdentifier:@"com.apple.icloud-file-fault"];
      v16 = *(a4 + 24);
      v17 = *(v16 + 4) & 0xF000;
      if (v17 == 0x4000)
      {
        if (!*(*(a4 + 16) + 144))
        {
          v26 = *a3;
          if (*(a4 + 5))
          {
            v27 = v26 | 0x200000;
          }

          else
          {
            v27 = v26 | 0x400000;
          }

          *a3 = v27;
        }
      }

      else if (v17 == 0x8000 && *(v16 + 96) <= 0)
      {
        v18 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:v10 conformingToType:*MEMORY[0x1E6982E48]];
        if (v18)
        {
          v19 = &v35;
          v20 = 1;
          while (1)
          {
            v21 = v20;
            if ([v18 conformsToType:*v19])
            {
              break;
            }

            v20 = 0;
            v19 = v36;
            if ((v21 & 1) == 0)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
LABEL_22:
          *a3 |= 0x100000uLL;
        }
      }

      for (j = 1; j != -1; --j)
      {
      }
    }
  }

LABEL_24:

  v22 = 0;
LABEL_25:

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t checkPermissions(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) + 16);
  if (v5 != getuid())
  {
    v6 = 0x40000;
    if (!v5)
    {
      v6 = 0x20000;
    }

    *a2 |= v6;
  }

  v7 = *(*(a3 + 16) + 208);
  v8 = v7 > 4;
  v9 = (1 << v7) & 0x19;
  if (v8 || v9 == 0)
  {
    *a2 |= 0x800000uLL;
  }

  return 0;
}

uint64_t checkSideFault(const char *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*(*(a4 + 24) + 4) & 0xF000) == 0x8000)
  {
    bzero(v8, 0x2FEuLL);
    if (basename_r(a1, v8))
    {
      result = _CFURLCStringIsPromiseName();
      if (result)
      {
        result = 0;
        *a3 |= 0x80000uLL;
      }
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t checkDetachedRoot(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((*(v2 + 45) & 0x40) != 0)
  {
    if ((*(a2 + 7) & 1) == 0)
    {
      *a1 |= 0x400000000000uLL;
    }

    if (*(a2 + 1) == 1)
    {
      *a1 |= 0x800000000000uLL;
    }

    if (*(a2 + 8) == 1)
    {
      *a1 |= 0x1000000000000uLL;
    }

    if (*(a2 + 9) == 1)
    {
      *a1 |= 0x2000000000000uLL;
    }

    if ((*(v2 + 45) & 1) == 0)
    {
      *a1 |= 0x4000000000000uLL;
    }
  }

  return 0;
}

uint64_t checkMetadata(int a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 24);
  if ((*(v6 + 4) & 0xF000) == 0x8000 && *(v6 + 6) >= 2u)
  {
    *a2 |= 0x4000000000uLL;
  }

  v7 = *(v6 + 80);
  if (fpfs_is_busy_date())
  {
    *a2 |= 0x8000000000000uLL;
  }

  v8 = fgetxattr(a1, "com.apple.metadata:_kMDItemUserTags", 0, 0, 0, 0);
  if (v8 < 0)
  {
    if (*__error() == 93)
    {
LABEL_14:
      v12 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    if (!v8)
    {
      v12 = 0;
      *a2 |= 0x100uLL;
      goto LABEL_18;
    }

    v9 = malloc_type_malloc(v8, 0xEDA52B46uLL);
    if (v9)
    {
      v10 = v9;
      v11 = fpfs_fgetxattr_checked();
      if ((v11 & 0x8000000000000000) == 0)
      {
        v22.st_ino = v11;
        *&v22.st_dev = v10;
        value[0] = 0uLL;
        *&v22.st_uid = fpfs_get_finder_info() < 0;
        if ((fpfs_deserialize_tags() & 0x80000000) != 0)
        {
          *a2 |= 0x100uLL;
        }

        free(v10);
        goto LABEL_14;
      }

      free(v10);
    }
  }

  v12 = 0xFFFFFFFFLL;
LABEL_18:
  *&v22.st_dev = 0uLL;
  if (fgetxattr(a1, "com.apple.lastuseddate#PS", &v22, 0x10uLL, 0, 0) < 0)
  {
    if (*__error() == 93)
    {
      v12 = v12;
    }

    else
    {
      v12 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    value[0] = 0uLL;
    if ((fpfs_deserialize_last_use_date() & 0x80000000) != 0)
    {
      *a2 |= 0x200uLL;
    }
  }

  memset(value, 0, sizeof(value));
  v13 = fgetxattr(a1, "com.apple.metadata:kMDItemFavoriteRank", value, 0x80uLL, 0, 0);
  if (v13 < 0)
  {
    if (*__error() != 93)
    {
      v12 = 0xFFFFFFFFLL;
      goto LABEL_37;
    }

    if (fgetxattr(a1, "com.apple.favorite-rank.number#PS", 0, 0, 0, 0) < 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    if (!v13 || (*&v22.st_dev = 0, (fpfs_deserialize_favorite_rank() & 0x80000000) != 0))
    {
      *a2 |= 0x400uLL;
    }

    if (fgetxattr(a1, "com.apple.favorite-rank.number#PS", 0, 0, 0, 0) < 0)
    {
      goto LABEL_33;
    }
  }

  *a2 |= 0x80000000000uLL;
LABEL_33:
  memset(&v22, 0, sizeof(v22));
  if ((fstat(a1, &v22) & 0x80000000) == 0 && (v22.st_mode & 0xF000) != 0x4000)
  {
    *a2 |= 0x100000000000uLL;
  }

LABEL_37:
  v14 = fgetxattr(a1, "com.apple.fileprovider.before-bounce#PX", 0, 0, 0, 0);
  if (v14 < 0)
  {
    goto LABEL_47;
  }

  v15 = v14;
  if (!v14)
  {
    *a2 |= 0x200000000000uLL;
    goto LABEL_47;
  }

  v16 = malloc_type_malloc(v14 + 1, 0xC69BD107uLL);
  if (!v16)
  {
    goto LABEL_46;
  }

  v17 = v16;
  if (fgetxattr(a1, "com.apple.fileprovider.before-bounce#PX", v16, v15, 0, 0) != v15)
  {
    free(v17);
LABEL_46:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_47;
  }

  v17[v15] = 0;
  if (!*v17)
  {
    *a2 |= 0x200000000000uLL;
  }

  free(v17);
LABEL_47:
  if (*(*(a3 + 16) + 40) == 2)
  {
    if (fgetxattr(a1, "com.apple.icon.folder#S", 0, 0, 0, 0) < 0)
    {
      v19 = *__error() != 93;
    }

    else
    {
      *&v22.st_dev = 0uLL;
      finder_info = fpfs_get_finder_info();
      v19 = finder_info >> 31;
      if ((finder_info & 0x80000000) == 0 && (v22.st_dev & 0x10) == 0)
      {
        *a2 |= 0x200000000000000uLL;
      }
    }

    if (v19)
    {
      v12 = 0xFFFFFFFFLL;
    }

    else
    {
      v12 = v12;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t checkDocumentTracking(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 10))
  {
    return 0;
  }

  v6 = *(*(a3 + 24) + 116);
  v7 = *(a3 + 32);
  if ((fpfs_should_be_tracked_internal() & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v6 & 0x40) == 0)
  {
    return 0;
  }

  *a2 |= 0x800uLL;
  v8 = *(a3 + 16);
  if (*(v8 + 16))
  {
    v9 = **(a3 + 24);
    v10 = GSLibraryResolveDocumentId2();
    if (v10)
    {
      if (v10 == *v8)
      {
        return 0;
      }

      v11 = 0x10000;
    }

    else
    {
      v12 = *__error();
      if ((v12 - 16) <= 0x36 && ((1 << (v12 - 16)) & 0x40000000080001) != 0)
      {
        v11 = 0x8000;
      }

      else
      {
        if (v12 != 2)
        {
          return 0;
        }

        v11 = 0x4000;
      }
    }
  }

  else
  {
    v11 = 0x2000;
  }

  result = 0;
  *a2 |= v11;
  return result;
}

uint64_t checkInvariants(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a4 + 6) == 1 && (*(*(a4 + 16) + 45) & 1) != 0 && ((fpfs_fget_parent_syncroot() & 0x80000000) != 0 || (fpfs_pkg_is_demoted() & 0x80000000) != 0))
  {
    goto LABEL_27;
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1 + 104];
  v9 = checkContent(a2, v8, a3, a4);

  if (v9 < 0)
  {
    goto LABEL_27;
  }

  checkPermissions(v10, a3, a4);
  checkDetachedRoot(a3, a4);
  if (*(a4 + 1) != 1)
  {
    if ((*(*(a4 + 24) + 4) & 0xF000) == 0x4000)
    {
      if ((fpfs_pkg_is_promoted() & 0x80000000) != 0)
      {
        goto LABEL_27;
      }

      if (fpfs_filename_contains_ext())
      {
        if ((fpfs_pkg_system_lookup() & 0x80000000) != 0)
        {
          goto LABEL_27;
        }
      }

      if ((fpfs_get_finder_info_buffer() & 0x80000000) != 0)
      {
        goto LABEL_27;
      }

      fpfs_finder_info_deserialize();
    }

    if ((checkFault(a2, 0, a3, a4) & 0x80000000) == 0 && (*a4 != 1 || (checkSideFault((a1 + 104), v15, a3, a4) & 0x80000000) == 0 && (checkMetadata(a2, a3, a4) & 0x80000000) == 0 && ((*(a3 + 6) & 8) != 0 || (checkDocumentTracking(a2, a3, a4) & 0x80000000) == 0)))
    {
LABEL_26:
      result = 0;
      goto LABEL_28;
    }

LABEL_27:
    result = 0xFFFFFFFFLL;
    goto LABEL_28;
  }

  if (*a4 != 1)
  {
    goto LABEL_26;
  }

  v11 = *(a4 + 16);
  v12 = *(v11 + 44);
  if (v12)
  {
    *a3 |= 0x20000000uLL;
    v12 = *(v11 + 44);
  }

  if ((v12 & 0x20) == 0)
  {
    goto LABEL_26;
  }

  result = 0;
  *a3 |= 0x40000000uLL;
LABEL_28:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fpck_validate_decmpfs_xattr(uint64_t a1, uint64_t a2, void *a3)
{
  if (!(*(*(a2 + 24) + 116) & 0x40000000 | *(*(a2 + 16) + 44) & 0x20))
  {
    return 0;
  }

  if ((fpfs_fget_decmpf_info() & 0x80000000) != 0 && *__error() != 93 && *__error() != 34)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a3 |= 2uLL;
  return result;
}

uint64_t ___is_empty_directory_block_invoke(uint64_t a1, uint64_t a2)
{
  result = strcasecmp((a2 + 21), ".Trash");
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return 1;
  }

  return result;
}

char *wharf_step_file_system_representation(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E83C1C70[a1];
  }
}

uint64_t fpfs_wharf_open(uint64_t a1, const char *a2, const char *a3)
{
  *(a1 + 12) = 0x3FFFFFFFFLL;
  if ((asprintf(a1, "%s/wharf", a2) & 0x80000000) == 0 && ((mkdir(*a1, 0x1EDu) & 0x80000000) == 0 || *__error() == 17))
  {
    v5 = open(*a1, 33028);
    *(a1 + 12) = v5;
    if ((v5 & 0x80000000) == 0)
    {
      memset(&v16, 0, sizeof(v16));
      if ((fstat(v5, &v16) & 0x80000000) == 0)
      {
        v6 = 0;
        *(a1 + 8) = v16.st_dev;
        while (1)
        {
          if (v6 > 1)
          {
            if (v6 == 3)
            {
              v7 = "oldVersions";
            }

            else
            {
              v7 = "delete";
            }
          }

          else
          {
            v7 = "ingest";
            if (v6)
            {
              v17.st_dev = 0;
              v8 = *(a1 + 12);
              if (fpfs_num_entries_at())
              {
                v9 = 1;
              }

              else
              {
                v9 = v17.st_dev == 0;
              }

              if (!v9)
              {
                fpfs_wharf_delete_item_at(a1, *(a1 + 12), "propagate");
              }

              v7 = "propagate";
            }
          }

          if (mkdirat(*(a1 + 12), v7, 0x1EDu) < 0 && *__error() != 17)
          {
            goto LABEL_30;
          }

          v10 = openat(*(a1 + 12), v7, 33028);
          if (v10 < 0)
          {
            goto LABEL_30;
          }

          v11 = v10;
          if (*(a1 + 16))
          {
            fcntl(v10, 64, *(a1 + 16));
          }

          memset(&v17, 0, sizeof(v17));
          if (fstat(v11, &v17) < 0)
          {
            break;
          }

          close(v11);
          if (*(a1 + 8) != v17.st_dev)
          {
            v14 = 18;
            goto LABEL_29;
          }

          *(a1 + 8 * v6++ + 24) = v17.st_ino;
          if (v6 == 4)
          {
            v12 = strdup(a3);
            result = 0;
            *(a1 + 56) = v12;
            return result;
          }
        }

        v14 = *__error();
        close(v11);
LABEL_29:
        *__error() = v14;
      }

LABEL_30:
      v15 = *__error();
      close(*(a1 + 12));
      *(a1 + 12) = -1;
      *__error() = v15;
    }

    free(*a1);
    *a1 = 0;
  }

  return 0xFFFFFFFFLL;
}

void fpfs_wharf_close(uint64_t a1)
{
  close(*(a1 + 12));
  *(a1 + 12) = -1;
  free(*a1);
  free(*(a1 + 56));
  *a1 = 0;
}

uint64_t fpfs_wharf_cleanup_item(int a1)
{
  if ((fpfs_fchflags() & 0x80000000) != 0)
  {
    v3 = fpfs_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      fpfs_wharf_cleanup_item_cold_5();
    }
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
    if (fstat(a1, &v8) < 0)
    {
      v4 = fpfs_current_or_default_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        fpfs_wharf_cleanup_item_cold_4();
      }
    }

    else if ((v8.st_mode & 0x1FF | 0x180) != (v8.st_mode & 0x1FF) && fchmod(a1, v8.st_mode & 0x7F | 0x180) < 0)
    {
      v7 = fpfs_current_or_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        fpfs_wharf_cleanup_item_cold_1();
      }
    }

    else if ((fpfs_clear_acl() & 0x80000000) != 0)
    {
      v5 = fpfs_current_or_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        fpfs_wharf_cleanup_item_cold_3();
      }
    }

    else
    {
      if ((fpfs_delete_xattrs() & 0x80000000) == 0)
      {
        return 0;
      }

      v6 = fpfs_current_or_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        fpfs_wharf_cleanup_item_cold_2();
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t fpfs_wharf_fcopyfileat(uint64_t a1, int a2, int a3, char *a4)
{
  if (a3 == 2)
  {
    return fpfs_fchdir();
  }

  v7 = *(a1 + 12);

  return fclonefileat(a2, v7, a4, 0);
}

uint64_t __fpfs_wharf_fcopyfileat_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  v2 = **(a1 + 32);
  if (snprintf(__str, 0x400uLL, "%s/%s", v2, *(a1 + 40)) < 1024)
  {
    src = 0;
    v4 = copyfile_state_alloc();
    copyfile_state_set(v4, 6u, fpfs_wharf_fcopyfileat_status_cb);
    copyfile_state_set(v4, 7u, &src);
    v3 = copyfile(".", __str, v4, 0x10C8000u);
    copyfile_state_free(v4);
    if ((v3 & 0x80000000) != 0)
    {
      v5 = src;
      if (src)
      {
        *__error() = v5;
      }
    }
  }

  else
  {
    *__error() = 63;
    v3 = 0xFFFFFFFFLL;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t fpfs_wharf_fcopyfileat_status_cb(int a1, int a2, uint64_t a3, const char *a4, uint64_t a5, int *a6)
{
  result = 0;
  if (a1 == 1 && a2 == 3)
  {
    v18 = v6;
    v19 = v7;
    v12 = *__error();
    memset(&v17, 0, sizeof(v17));
    if ((lstat(a4, &v17) & 0x80000000) == 0)
    {
      v13 = v17.st_mode & 0xF000;
      if (v13 != 0x4000)
      {
        if (v13 == 0x8000)
        {
          if ((v17.st_flags & 0x20) != 0 && v12 == 9)
          {
            v15 = fpfs_current_or_default_log();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              fpfs_wharf_fcopyfileat_status_cb_cold_2(v15);
            }

            return 1;
          }
        }

        else if (v13 != 40960)
        {
          v14 = fpfs_current_or_default_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            fpfs_wharf_fcopyfileat_status_cb_cold_3(v14);
          }

          return 1;
        }
      }
    }

    v16 = fpfs_current_or_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      fpfs_wharf_fcopyfileat_status_cb_cold_1(v16);
    }

    *a6 = *__error();
    return 2;
  }

  return result;
}

uint64_t fpfs_wharf_mark_ingest_purgeable(uint64_t a1, uint64_t a2)
{
  v4 = _fpfs_wharf_mark_ingest_purgeable(a1, 0, a2);
  if (_fpfs_wharf_mark_ingest_purgeable(a1, 3u, a2) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v4;
  }
}

uint64_t _fpfs_wharf_mark_ingest_purgeable(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a2 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E83C1C70[a2];
  }

  v26 = openat(*(a1 + 12), v5, 1048832);
  if (v26 < 0)
  {
    goto LABEL_26;
  }

  v6 = malloc_type_malloc(0x8000uLL, 0x57B3AD82uLL);
  if (!v6)
  {
    close(v26);
    *__error() = 12;
LABEL_26:
    v21 = 0xFFFFFFFFLL;
    goto LABEL_29;
  }

  v7 = v6;
  v28 = 0x20000000000;
  v27 = xmmword_1CF9F4DFC;
  v8 = getattrlistbulk(v26, &v27, v6, 0x8000uLL, 0x28uLL);
  if (v8 < 0)
  {
LABEL_24:
    v21 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
    v25 = v5;
    while (v9)
    {
      v10 = 0;
      do
      {
        v11 = &v7[v10];
        v12 = *&v7[v10];
        if ((~*&v7[v10 + 4] & 0x801) == 0 && (a2 == 3 || *(v11 + 4) <= a3) && ((v11[21] & 2) == 0 || (v11[48] & 8) == 0))
        {
          v14 = *(v11 + 6);
          v13 = v11 + 24;
          v15 = &v13[v14];
          if (!v13[v14 + (*(v13 + 1) - 1)])
          {
            v16 = fpfs_set_purgeable_non_evictable_at();
            v17 = fpfs_current_or_default_log();
            v18 = v17;
            if (v16 < 0)
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                v19 = *__error();
                *buf = 136315650;
                v30 = v25;
                v31 = 2082;
                v32 = v15;
                v33 = 1024;
                v34 = v19;
                _os_log_error_impl(&dword_1CEFC7000, v18, OS_LOG_TYPE_ERROR, "Failed to mark wharf/%s item %{public}s as purgeable: %{errno}d", buf, 0x1Cu);
              }
            }

            else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v30 = v25;
              v31 = 2082;
              v32 = v15;
              _os_log_impl(&dword_1CEFC7000, v18, OS_LOG_TYPE_INFO, "Marked wharf/%s item %{public}s as purgeable", buf, 0x16u);
            }
          }
        }

        v10 += v12;
        --v9;
      }

      while (v9);
      v27 = xmmword_1CF9F4DFC;
      v28 = 0x20000000000;
      v20 = getattrlistbulk(v26, &v27, v7, 0x8000uLL, 0x28uLL);
      v9 = v20;
      if (v20 < 0)
      {
        goto LABEL_24;
      }
    }

    v21 = 0;
  }

  free(v7);
  v22 = *__error();
  close(v26);
  *__error() = v22;
LABEL_29:
  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t fpfs_wharf_create(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, int a6, uint64_t *a7)
{
  v78 = *MEMORY[0x1E69E9840];
  memset(v77, 0, sizeof(v77));
  v76 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  *__str = 0u;
  if (a6)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  v12 = a3[11];
  v38 = a3[10];
  v39 = v12;
  v13 = a3[13];
  v40 = a3[12];
  v41 = v13;
  v14 = a3[7];
  v34 = a3[6];
  v35 = v14;
  v15 = a3[9];
  v36 = a3[8];
  v37 = v15;
  v16 = a3[3];
  v30 = a3[2];
  v31 = v16;
  v17 = a3[5];
  v32 = a3[4];
  v33 = v17;
  v18 = a3[1];
  v28 = *a3;
  v29 = v18;
  WORD4(v28) = 511;
  DWORD1(v28) &= ~0x100u;
  if (a2)
  {
    snprintf(__str, 0xFFuLL, "%s/%llu", "propagate", a2);
  }

  else
  {
    strcpy(__str, "propagate/");
    memset(uu, 0, sizeof(uu));
    MEMORY[0x1D386CFF0](uu);
    uuid_unparse(uu, (__str | 0xA));
  }

  fpfs_wharf_delete_item_at(a1, *(a1 + 12), __str);
  if (*(a3 + 1))
  {
    v19 = *(a1 + 12);
    v20 = *a7;
    if ((fpfs_create_dataless_fault_at() & 0x80000000) == 0 || *__error() == 17)
    {
      goto LABEL_12;
    }

LABEL_25:
    result = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  if (*a3 != 2)
  {
    v61 = 0u;
    memset(v62, 0, sizeof(v62));
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    *uu = 0u;
    build_item_name(v11, a2, uu);
    memset(&v27, 0, sizeof(v27));
    if (fstatat(*(a1 + 12), uu, &v27, 32) < 0)
    {
      goto LABEL_25;
    }

    v23 = v27.st_mode & 0xF000;
    if (*a3 == 4)
    {
      if (v23 != 40960)
      {
        if (*(a3 + 2) <= 1024)
        {
          v26 = *(a1 + 12);
          result = fpfs_openat();
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_26;
          }

          goto LABEL_12;
        }

        v24 = 63;
        goto LABEL_20;
      }
    }

    else if (v23 == 40960)
    {
      v24 = 79;
LABEL_20:
      *__error() = v24;
      goto LABEL_25;
    }

    if (v23 == 0x4000)
    {
      v42 = MEMORY[0x1E69E9820];
      v43 = 3221225472;
      v44 = __fpfs_wharf_copyfileat_block_invoke;
      v45 = &__block_descriptor_48_e5_i8__0l;
      v46 = uu;
      v47 = __str;
      if ((fpfs_fchdir() & 0x80000000) != 0)
      {
        goto LABEL_25;
      }
    }

    else if (clonefileat(*(a1 + 12), uu, *(a1 + 12), __str, 1u) < 0)
    {
      goto LABEL_25;
    }
  }

LABEL_12:
  v21 = *(a1 + 12);
  result = fpfs_openat();
LABEL_26:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t build_item_name(unsigned int a1, uint64_t a2, char *__str)
{
  if (a1 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E83C1C70[a1];
  }

  return snprintf(__str, 0xFFuLL, "%s/%llu", v3, a2);
}

uint64_t fpfs_wharf_delete_item_at(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  *uu = 0;
  v11 = 0;
  MEMORY[0x1D386CFF0](uu);
  v9[0] = *"delete/";
  memset(&v9[1], 0, 239);
  v6 = strlen(v9);
  uuid_unparse(uu, v9 + v6);
  result = MEMORY[0x1D386BA20](a2, a3, *(a1 + 12), v9, 0);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __fpfs_wharf_create_block_invoke(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  bzero(v7, 0x401uLL);
  *__error() = 0;
  v4 = read(a2, v7, *(*(a1 + 32) + 16));
  if (v4 == *(*(a1 + 32) + 16))
  {
    v7[v4] = 0;
    result = symlinkat(v7, *(*(a1 + 40) + 12), *(a1 + 48));
  }

  else
  {
    if (!*__error())
    {
      *__error() = 22;
    }

    result = 0xFFFFFFFFLL;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __fpfs_wharf_create_block_invoke_2(uint64_t a1, int a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *__str = 0u;
  memset(&v12, 0, sizeof(v12));
  if (fstat(a2, &v12) < 0)
  {
    goto LABEL_18;
  }

  snprintf(__str, 0xFFuLL, "%s/%llu", "propagate", v12.st_ino);
  v3 = *(*(a1 + 40) + 12);
  if ((MEMORY[0x1D386BA20](v3, *(a1 + 48), v3, __str, 0) & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (**(a1 + 56) == 2)
  {
    v4 = *(a1 + 64);
    if ((fpfs_filename_contains_ext() & 1) != 0 || (v5 = *(a1 + 64), fpfs_path_is_safe_save_temp_filename()))
    {
      if ((fpfs_pkg_demote() & 0x80000000) != 0)
      {
        goto LABEL_18;
      }
    }
  }

  LOBYTE(v12.st_dev) = *(a1 + 80);
  st_dev = v12.st_dev;
  v7 = **(a1 + 56);
  if (LOBYTE(v12.st_dev) == 1)
  {
    if (v7 == 3)
    {
      LOBYTE(v12.st_dev) = 1;
    }

    else
    {
      v9 = *(*(a1 + 72) + 8);
      if ((fpfs_should_be_tracked() & 0x80000000) != 0)
      {
        goto LABEL_18;
      }

      if ((v12.st_dev & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (v7 == 3)
    {
      fpfs_pkg_enable_dirstat();
    }

    if ((st_dev & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if ((fpfs_track_document() & 0x80000000) != 0)
  {
LABEL_18:
    result = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

LABEL_14:
  v11 = *(a1 + 32);
  result = fpfs_fgethandle();
LABEL_19:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __fpfs_wharf_create_block_invoke_3(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 44) & 1) == 0 && *(a2 + 16))
  {
    v4 = *(a1 + 40);
    fpfs_untrack_document();
    *(a2 + 16) = 0;
  }

  memset(&v6, 0, sizeof(v6));
  if (fstat(*(a1 + 40), &v6) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (*(*(a1 + 32) + 16))(*(a1 + 32), a2, (v6.st_mode & 0xF000) == 0x4000);
  }
}

uint64_t fpfs_wharf_resurrect(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = malloc_type_calloc(0x306uLL, 1uLL, 0x5D4C4514uLL);
  if (fgetxattr(a2, "com.apple.fileprovider.resurrection_info", v9, 0x306uLL, 0, 0) <= 9)
  {
    *__error() = 22;
    *__error() = 93;
LABEL_8:
    free(v9);
    result = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  v9[773] = 0;
  if ((fpfs_unset_dataless_cmpfs_attrs() & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  bzero(v16, 0x2FEuLL);
  basename_r(v9 + 8, v16);
  v10 = *(a1 + 8);
  v11 = *v9;
  if ((fpfs_openbyid() & 0x80000000) != 0)
  {
    if (!a6)
    {
      goto LABEL_8;
    }

    v13 = *(a1 + 8);
    v14 = fpfs_openbyid();
    free(v9);
    result = (v14 >> 31);
  }

  else
  {
    free(v9);
    result = 0;
  }

LABEL_9:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __fpfs_wharf_resurrect_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if ((fpfs_fget_parent_syncroot() & 0x80000000) != 0)
  {
LABEL_8:
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    while (v17[3])
    {
      if ((*(v4 + 16))(v4))
      {
        _Block_object_dispose(&v16, 8);
        return fpfs_wharf_resurrect_bounce(*(a1 + 48), *(a1 + 56), *(a1 + 64), a2, *(a1 + 72));
      }

      v6 = *(v5 + 8);
      v7 = v17[3];
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __fpfs_wharf_parent_dir_in_domain_block_invoke;
      v14 = &unk_1E83C1C30;
      v15 = &v16;
      fpfs_openbyid();
    }

    memset(&v10, 0, sizeof(v10));
    if (fstat(a2, &v10) < 0)
    {
      goto LABEL_8;
    }

    v8 = (*(v4 + 16))(v4, v10.st_ino);
    _Block_object_dispose(&v16, 8);
    if (v8)
    {
      return fpfs_wharf_resurrect_bounce(*(a1 + 48), *(a1 + 56), *(a1 + 64), a2, *(a1 + 72));
    }
  }

  *__error() = 22;
  return 0xFFFFFFFFLL;
}

uint64_t fpfs_wharf_resurrect_bounce(char *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v10 = 2;
  while (MEMORY[0x1D386BA20](a5, a2, a4, a1, 4))
  {
    if (*__error() != 17)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = fpfs_extension_in_filename();
    if (v11)
    {
      v12 = v11;
      v13 = v11 - a3;
      v14 = ".";
    }

    else
    {
      v13 = strlen(a3);
      v12 = "";
      v14 = "";
    }

    if (snprintf(a1, 0x2FEuLL, "%*s %d%s%s", v13, a3, v10, v14, v12) >= 766)
    {
      *__error() = 63;
    }

    if (++v10 == 99)
    {
      *__error() = 22;
      return 0xFFFFFFFFLL;
    }
  }

  return fpfs_openat();
}

uint64_t __fpfs_wharf_delete_resurrectable_at_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v7 = *(a1 + 88);
  v6 = *(a1 + 80);
  v3 = *(a1 + 32);
  return fpfs_fgetfileattrs();
}

uint64_t __fpfs_wharf_delete_resurrectable_at_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 != 1)
  {
    if ((v3 & 0xFFFFFFFE) == 2)
    {
      return fpfs_wharf_delete_item_at(*(a1 + 40), *(a1 + 80), *(a1 + 48));
    }

    return unlinkat(*(a1 + 80), *(a1 + 48), 0);
  }

  if (*(a2 + 144) > 1u)
  {
    return unlinkat(*(a1 + 80), *(a1 + 48), 0);
  }

  if ((*(a2 + 44) & 0x40) != 0)
  {
    return unlinkat(*(a1 + 80), *(a1 + 48), 0);
  }

  v5 = *(a1 + 80);
  v6 = *(a1 + 48);
  v11 = *(a1 + 56);
  if ((fpfs_openat() & 0x80000000) != 0)
  {
    return unlinkat(*(a1 + 80), *(a1 + 48), 0);
  }

  v7 = *(a1 + 64);
  v8 = *(a2 + 44);
  if (!fpfs_item_handle_gencmp())
  {
    return fpfs_wharf_delete_item_at(*(a1 + 40), *(a1 + 80), *(a1 + 48));
  }

  if ((*(a2 + 45) & 0x80) != 0)
  {
    return 0;
  }

  v9 = *(a1 + 32);
  return fpfs_wharf_resurrect(*(a1 + 40), *(a1 + 84), *(a1 + 80), *(a1 + 48), a2, *(a1 + 72));
}

uint64_t fpfs_wharf_delete_wharfed_item(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, 255);
  build_item_name(a2, a3, v6);
  result = fpfs_wharf_delete_item_at(a1, *(a1 + 12), v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __fpfs_wharf_gc_deleted_items_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  memset(&v6, 0, sizeof(v6));
  if ((fstatat(a2, (a3 + 21), &v6, 32) & 0x80000000) == 0)
  {
    v4 = *(a1 + 32);
    fpfs_recursive_unlinkat();
  }

  return 0;
}

uint64_t __fpfs_wharf_inject_old_content_to_id_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__str = 0u;
  snprintf(__str, 0xFFuLL, "%s/%llu", "oldVersions", *(a1 + 40));
  memset(&v9, 0, sizeof(v9));
  if (fstatat(*(*(a1 + 48) + 12), __str, &v9, 32) < 0)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = *(*(a1 + 48) + 12);
    v7 = *(a1 + 64);
    v8 = *(a1 + 68);
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    result = fpfs_openat();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __fpfs_wharf_inject_old_content_to_id_block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v2 = *(a1 + 32);
  return fpfs_fgethandle();
}

uint64_t __fpfs_wharf_inject_old_content_to_id_block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 20) == *(a1 + 48))
  {
    v3 = *(a1 + 52);
    v2 = *(a1 + 56);
    v4 = *(a1 + 60);
    v5 = *(a1 + 40);
    v7 = *(a1 + 32);
    return fpfs_materialize();
  }

  else
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }
}

uint64_t fpfs_wharf_get_eviction_urgency(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(__str, 0, 255);
  build_item_name(a3, a2, __str);
  memset(&v7, 0, sizeof(v7));
  if (fstatat(*(a1 + 12), __str, &v7, 32) < 0)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = *(a1 + 12);
    result = fpfs_openat();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fpfs_wharf_get_last_used_date(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(__str, 0, 255);
  build_item_name(a3, a2, __str);
  memset(&v7, 0, sizeof(v7));
  if (fstatat(*(a1 + 12), __str, &v7, 32) < 0)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = *(a1 + 12);
    result = fpfs_openat();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fpfs_wharf_delete_old_version_captured_content(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  memset(v19, 0, sizeof(v19));
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *__str = 0u;
  snprintf(__str, 0xFFuLL, "%s/%llu", "oldVersions", a2);
  result = unlinkat(*(a1 + 12), __str, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __fpfs_wharf_copyfileat_block_invoke(uint64_t a1)
{
  src = 0;
  v2 = copyfile_state_alloc();
  copyfile_state_set(v2, 6u, fpfs_wharf_fcopyfileat_status_cb);
  copyfile_state_set(v2, 7u, &src);
  v3 = copyfile(*(a1 + 32), *(a1 + 40), v2, 0x10C8000u);
  copyfile_state_free(v2);
  if ((v3 & 0x80000000) != 0)
  {
    v4 = src;
    if (src)
    {
      *__error() = v4;
    }
  }

  return v3;
}

uint64_t __fpfs_wharf_resurrect_bounce_block_invoke()
{
  if ((fpfs_set_resurrected() & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  return fpfs_make_fsevent();
}

uint64_t __fpfs_wharf_item_preserve_at_block_invoke(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 44))
  {
    v3 = *MEMORY[0x1E69E9840];

    return ftruncate(a2, 0);
  }

  else
  {
    v5 = *(a1 + 40);
    bzero(__s, 0x2FEuLL);
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = (v2 + 272);
    }

    basename_r(v6, __s);
    v7 = strlen(__s);
    v8 = malloc_type_calloc(v7 + 9, 1uLL, 0x942DB0E3uLL);
    strlcpy(v8 + 8, __s, v7 + 1);
    memset(&v11, 0, sizeof(v11));
    bzero(v12, 0x400uLL);
    v9 = dirname_r(v6, v12);
    if (lstat(v9, &v11) < 0 || (*v8 = v11.st_ino, (fpfs_set_dataless_cmpfs_attrs() & 0x80000000) != 0) || (fpfs_fsetxattr() & 0x80000000) != 0)
    {
      free(v8);
      result = 0xFFFFFFFFLL;
    }

    else
    {
      free(v8);
      result = 0;
    }

    v10 = *MEMORY[0x1E69E9840];
  }

  return result;
}

void sub_1CF183E44(_Unwind_Exception *a1)
{
  __fp_leave_section_Debug();
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void sub_1CF184148(_Unwind_Exception *a1)
{
  __fp_leave_section_Debug();
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void __indexingScheduler_block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x1E698E478]) initWithIdentifier:@"com.apple.fileprovider.indexing"];
  [v2 setPriority:2];
  [v2 setScheduleAfter:0.0];
  [v2 setTrySchedulingBefore:60.0];
  [v2 setRequiresProtectionClass:1];
  v0 = [[FPDSharedSystemScheduler alloc] initWithTaskRequest:v2 options:0];
  v1 = indexingScheduler_scheduler;
  indexingScheduler_scheduler = v0;
}

void OUTLINED_FUNCTION_9_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void sub_1CF185320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CF18636C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a33);
  objc_destroyWeak((v33 - 120));
  _Unwind_Resume(a1);
}

void sub_1CF187064(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 80));
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void sub_1CF18733C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  objc_sync_exit(v12);
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void sub_1CF187658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v17 - 48));
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void sub_1CF188598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

char *sub_1CF189010()
{
  v2 = v0[4];
  if (v2 < 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = 0;
  v4 = v0[3];
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = -1;
    v7 = v3;
    while (1)
    {
      if (v7 + 64) <= 0x7F && ((v4 >> v7))
      {
        if (v6 < 0)
        {
          v8 = v7 * *v0;
          if ((v7 * *v0) >> 64 != v8 >> 63)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v8 <= v0[2])
          {
            v6 = v0[2];
          }

          else
          {
            v6 = v7 * *v0;
          }
        }

        goto LABEL_5;
      }

      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_5:
      if (v2 == ++v7)
      {
        if (v6 < 0)
        {
          return v5;
        }

        v14 = v2 * *v0;
        if ((v2 * *v0) >> 64 == v14 >> 63)
        {
          if (v14 >= v0[1])
          {
            v1 = v0[1];
          }

          else
          {
            v1 = v2 * *v0;
          }

          if (v1 >= v6)
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
LABEL_31:
              v16 = *(v5 + 2);
              v15 = *(v5 + 3);
              if (v16 >= v15 >> 1)
              {
                v5 = sub_1CF1F6594((v15 > 1), v16 + 1, 1, v5);
              }

              *(v5 + 2) = v16 + 1;
              v17 = &v5[16 * v16];
              *(v17 + 4) = v6;
              *(v17 + 5) = v1;
              return v5;
            }

LABEL_41:
            v5 = sub_1CF1F6594(0, *(v5 + 2) + 1, 1, v5);
            goto LABEL_31;
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

    v9 = v7 * *v0;
    if ((v7 * *v0) >> 64 != v9 >> 63)
    {
      goto LABEL_37;
    }

    if (v9 >= v0[1])
    {
      v10 = v0[1];
    }

    else
    {
      v10 = v7 * *v0;
    }

    if (v10 < v6)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1CF1F6594(0, *(v5 + 2) + 1, 1, v5);
    }

    v12 = *(v5 + 2);
    v11 = *(v5 + 3);
    v1 = v12 + 1;
    if (v12 >= v11 >> 1)
    {
      v5 = sub_1CF1F6594((v11 > 1), v12 + 1, 1, v5);
    }

    v3 = v7 + 1;
    *(v5 + 2) = v1;
    v13 = &v5[16 * v12];
    *(v13 + 4) = v6;
    *(v13 + 5) = v10;
  }

  while (v2 - 1 != v7);
  return v5;
}

uint64_t sub_1CF189218()
{
  v1 = 0x657A697362;
  v2 = *v0;
  v3 = 0x7472617473;
  v4 = 0x736B636F6C62;
  if (v2 != 3)
  {
    v4 = 0x746E756F6362;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0x657A69736CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CF189298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CF18F830(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CF1892D8(uint64_t a1)
{
  v2 = sub_1CF192BE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF189314(uint64_t a1)
{
  v2 = sub_1CF192BE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF189350(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD650, &qword_1CF9FA008);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF192BE8();
  sub_1CF9E82A8();
  v11 = *v3;
  v17[15] = 0;
  sub_1CF9E7EE8();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v17[14] = 1;
  sub_1CF9E7EE8();
  v13 = v3[2];
  v17[13] = 2;
  sub_1CF9E7EE8();
  v14 = v3[3];
  v17[12] = 3;
  sub_1CF9E7F68();
  v16 = v3[4];
  v17[11] = 4;
  sub_1CF9E7EE8();
  return (*(v6 + 8))(v9, v5);
}

double sub_1CF189530@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CF18F9D0(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1CF1895D0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](v1);
  MEMORY[0x1D386A470](v2);
  MEMORY[0x1D386A470](v3);
  MEMORY[0x1D386A4A0](v4);
  MEMORY[0x1D386A470](v5);
  return sub_1CF9E8228();
}

uint64_t sub_1CF189660()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x1D386A470](*v0);
  MEMORY[0x1D386A470](v1);
  MEMORY[0x1D386A470](v2);
  MEMORY[0x1D386A4A0](v3);
  return MEMORY[0x1D386A470](v4);
}

uint64_t sub_1CF1896C4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](v1);
  MEMORY[0x1D386A470](v2);
  MEMORY[0x1D386A470](v3);
  MEMORY[0x1D386A4A0](v4);
  MEMORY[0x1D386A470](v5);
  return sub_1CF9E8228();
}

uint64_t sub_1CF189750(void *a1, unint64_t a2)
{
  *&v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD2C0, &qword_1CF9F7888);
  *&v43 = *(v44 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v42 = &v36 - v5;
  *&v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD2C8, &qword_1CF9F7890);
  *&v40 = *(v41 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD2D0, &qword_1CF9F7898);
  v38 = *(v9 - 8);
  v39 = v9;
  v10 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD2D8, &qword_1CF9F78A0);
  v37 = *(v13 - 8);
  v14 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD2E0, &qword_1CF9F78A8);
  v45 = *(v17 - 8);
  v46 = v17;
  v18 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v36 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1906E4();
  sub_1CF9E82A8();
  v22 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v26 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    if (v22 == 2)
    {
      LOBYTE(v47) = 2;
      sub_1CF1907E0();
      v27 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v43 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v44 = v27;
      v28 = v46;
      sub_1CF9E7E18();
      v47 = v44;
      v48 = v43;
      v49 = v26;
      sub_1CF190A20();
      v29 = v41;
      sub_1CF9E7F08();
      (*(v40 + 8))(v8, v29);
    }

    else
    {
      LOBYTE(v47) = 3;
      sub_1CF190738();
      v33 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v40 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v41 = v33;
      v34 = v42;
      v28 = v46;
      sub_1CF9E7E18();
      v47 = v41;
      v48 = v40;
      v49 = v26;
      sub_1CF190A20();
      v35 = v44;
      sub_1CF9E7F08();
      (*(v43 + 8))(v34, v35);
    }
  }

  else
  {
    if (!v22)
    {
      v23 = *(a2 + 16);
      LOBYTE(v47) = 0;
      sub_1CF1908DC();
      v24 = v46;
      sub_1CF9E7E18();
      *&v47 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD230, &qword_1CF9F7880);
      sub_1CF190AC8(&qword_1EC4BD2F8, sub_1CF190B4C);
      sub_1CF9E7F08();
      (*(v37 + 8))(v16, v13);
      return (*(v45 + 8))(v20, v24);
    }

    v30 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v31 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    LOBYTE(v47) = 1;
    sub_1CF190834();
    v28 = v46;
    sub_1CF9E7E18();
    *&v47 = v30;
    *(&v47 + 1) = v31;
    sub_1CF190A74();
    v32 = v39;
    sub_1CF9E7F08();
    (*(v38 + 8))(v12, v32);
  }

  return (*(v45 + 8))(v20, v28);
}

uint64_t sub_1CF189D08(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v6 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v7 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v8 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v9 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    v10 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    if (v3 == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }

    MEMORY[0x1D386A470](v11);
    MEMORY[0x1D386A470](v6);
    MEMORY[0x1D386A470](v7);
    MEMORY[0x1D386A470](v8);
    MEMORY[0x1D386A4A0](v9);
    return MEMORY[0x1D386A470](v10);
  }

  else if (v3)
  {
    v12 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v13 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    MEMORY[0x1D386A470](1);

    return sub_1CF9E5BA8();
  }

  else
  {
    v4 = *(a2 + 16);
    MEMORY[0x1D386A470](0);

    return sub_1CF18F54C(a1, v4);
  }
}

uint64_t sub_1CF189E20()
{
  v1 = *v0;
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](v1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF189E68()
{
  v1 = *v0;
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](v1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF189EAC()
{
  v1 = 0x726F746365726964;
  v2 = 0x7373656C61746164;
  if (*v0 != 2)
  {
    v2 = 0x657372617073;
  }

  if (*v0)
  {
    v1 = 1701603686;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CF189F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CF18FBEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CF189F48(uint64_t a1)
{
  v2 = sub_1CF1906E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF189F84(uint64_t a1)
{
  v2 = sub_1CF1906E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF189FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E656469736572 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CF9E8048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CF18A068(uint64_t a1)
{
  v2 = sub_1CF1907E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF18A0A4(uint64_t a1)
{
  v2 = sub_1CF1907E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF18A104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6572646C696863 && a2 == 0xEE00656D614E7942)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CF9E8048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CF18A194(uint64_t a1)
{
  v2 = sub_1CF1908DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF18A1D0(uint64_t a1)
{
  v2 = sub_1CF1908DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF18A224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CF9E8048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CF18A2AC(uint64_t a1)
{
  v2 = sub_1CF190834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF18A2E8(uint64_t a1)
{
  v2 = sub_1CF190834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF18A324()
{
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](0);
  return sub_1CF9E8228();
}

uint64_t sub_1CF18A368()
{
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](0);
  return sub_1CF9E8228();
}

uint64_t sub_1CF18A3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CF9E8048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CF18A440(uint64_t a1)
{
  v2 = sub_1CF190738();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF18A47C(uint64_t a1)
{
  v2 = sub_1CF190738();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1CF18A4B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1CF18FD54(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1CF18A50C()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CF189D08(v3, v1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF18A55C()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CF189D08(v3, v1);
  return sub_1CF9E8228();
}

void sub_1CF18A5A0(unint64_t a1, int a2, void *a3, unint64_t a4)
{
  v5 = v4;
  LODWORD(v92) = a2;
  v100 = *MEMORY[0x1E69E9840];
  v96 = sub_1CF9E6938();
  v9 = *(v96 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v95 = v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E5A58();
  v93 = *(v12 - 1);
  v94 = v12;
  v13 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v88 - v17;
  v19 = sub_1CF9E5648();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v24 = v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 >> 62) - 2 >= 2)
  {
    if (a4 >> 62)
    {
      v39 = *((a4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v40 = *((a4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1CF9E5A18();
      v41 = sub_1CF9E6888();

      v42 = sub_1CF9E5B48();
      [a3 createFileAtPath:v41 contents:v42 attributes:0];

      goto LABEL_53;
    }

    v91 = v22;
    v33 = *(a4 + 16);

    v34 = sub_1CF9E5928();
    v96 = a3;
    *&v97 = 0;
    v35 = [a3 createDirectoryAtURL:v34 withIntermediateDirectories:1 attributes:0 error:&v97];

    if ((v35 & 1) == 0)
    {
      v66 = v97;

      sub_1CF9E57F8();

      swift_willThrow();
      goto LABEL_53;
    }

    v95 = v33;
    v36 = v97;
    if (v92)
    {
      sub_1CF9E5638();
      sub_1CF9E5628();
      v38 = v93;
      v37 = v94;
      (*(v93 + 16))(v18, a1, v94);
      sub_1CF9E58F8();
      if (v4)
      {

        (*(v38 + 8))(v18, v37);
        (*(v20 + 8))(v24, v91);
        goto LABEL_53;
      }

      (*(v38 + 8))(v18, v37);
      (*(v20 + 8))(v24, v91);
    }

    v67 = v95;
    v68 = 0;
    v70 = v95 + 64;
    v69 = *(v95 + 8);
    v71 = 1 << v95[32];
    v72 = -1;
    if (v71 < 64)
    {
      v72 = ~(-1 << v71);
    }

    v73 = v72 & v69;
    v74 = (v71 + 63) >> 6;
    v93 += 8;
    if ((v72 & v69) != 0)
    {
      while (1)
      {
        v75 = v68;
LABEL_48:
        v76 = __clz(__rbit64(v73)) | (v75 << 6);
        v77 = (*(v67 + 6) + 16 * v76);
        v78 = *v77;
        v79 = v77[1];
        v80 = *(*(v67 + 7) + 8 * v76);

        sub_1CF9E5968();

        sub_1CF18A5A0(v15, 0, v96, v80);
        if (v5)
        {
          break;
        }

        v73 &= v73 - 1;
        (*v93)(v15, v94);

        v68 = v75;
        v67 = v95;
        if (!v73)
        {
          goto LABEL_45;
        }
      }

      (*v93)(v15, v94);
    }

    else
    {
      while (1)
      {
LABEL_45:
        v75 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
        }

        if (v75 >= v74)
        {
          break;
        }

        v73 = *&v70[8 * v75];
        ++v68;
        if (v73)
        {
          goto LABEL_48;
        }
      }
    }

LABEL_53:
    v81 = *MEMORY[0x1E69E9840];
    return;
  }

  v88[0] = a4;
  v25 = *((a4 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
  v26 = *((a4 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v98[0] = *((a4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v98[1] = v26;
  v99 = v25;
  v27 = sub_1CF189010();
  v28 = a1;
  sub_1CF9E5A18();
  v29 = sub_1CF9E6888();

  [a3 createFileAtPath:v29 contents:0 attributes:0];

  v88[1] = v28;
  sub_1CF9E5A18();
  v30 = sub_1CF9E6888();

  v31 = [objc_opt_self() fileHandleForWritingAtPath_];

  if (!v31)
  {
    *&v97 = 0;
    *(&v97 + 1) = 0xE000000000000000;
    sub_1CF9E7948();

    *&v97 = 0xD000000000000020;
    *(&v97 + 1) = 0x80000001CFA2D8D0;
    v85 = sub_1CF9E5A18();
    MEMORY[0x1D3868CC0](v85);

    LODWORD(v87) = 0;
    v84 = 261;
    goto LABEL_66;
  }

  MEMORY[0x1EEE9AC00](v32);
  v86 = v31;
  v87 = v98;
  sub_1CEFE1894(sub_1CF190BA0);
  if (v4)
  {

    goto LABEL_53;
  }

  v93 = *(v27 + 2);
  v94 = v31;
  if (!v93)
  {
LABEL_36:

    goto LABEL_53;
  }

  v43 = 0;
  v91 = v27;
  v92 = (v9 + 8);
  v44 = v27 + 40;
  while (1)
  {
    if (v43 >= *(v27 + 2))
    {
      goto LABEL_55;
    }

    v45 = *(v44 - 1);
    v46 = *v44 - v45;
    if (__OFSUB__(*v44, v45))
    {
      goto LABEL_56;
    }

    v47 = *v44 - v45;
    sub_1CF9E6B18();
    v48 = v95;
    sub_1CF9E6928();
    v49 = sub_1CF9E68C8();
    v51 = v50;
    (*v92)(v48, v96);
    if (v51 >> 60 == 15)
    {
      goto LABEL_64;
    }

    v53 = v51 >> 62;
    if ((v51 >> 62) <= 1)
    {
      break;
    }

    if (v53 == 2)
    {
      v90 = 0;
      v54 = *(v49 + 16);
      v89 = *(v49 + 24);
      v55 = sub_1CF9E5498();
      if (v55)
      {
        v56 = sub_1CF9E54C8();
        if (__OFSUB__(v54, v56))
        {
          goto LABEL_60;
        }

        v55 += v54 - v56;
      }

      if (__OFSUB__(v89, v54))
      {
        goto LABEL_58;
      }

      v57 = sub_1CF9E54B8();
      if (!v55)
      {
        goto LABEL_63;
      }

      MEMORY[0x1EEE9AC00](v57);
      v88[-4] = v94;
      v88[-3] = v55;
      v86 = v46;
      v87 = v45;
      v58 = sub_1CF190BEC;
LABEL_31:
      v64 = v58;
      v65 = v90;
      goto LABEL_34;
    }

    *(&v97 + 6) = 0;
    *&v97 = 0;
    MEMORY[0x1EEE9AC00](v52);
    v88[-4] = v94;
    v88[-3] = &v97;
    v86 = v46;
    v87 = v45;
LABEL_33:
    v64 = sub_1CF193300;
    v65 = 0;
LABEL_34:
    sub_1CF5162A0(v64);
    if (v65)
    {

      sub_1CEFE48D8(v49, v51);
      goto LABEL_53;
    }

    sub_1CEFE48D8(v49, v51);
    ++v43;
    v44 += 2;
    v27 = v91;
    if (v93 == v43)
    {
      goto LABEL_36;
    }
  }

  if (!v53)
  {
    *&v97 = v49;
    WORD4(v97) = v51;
    BYTE10(v97) = BYTE2(v51);
    BYTE11(v97) = BYTE3(v51);
    BYTE12(v97) = BYTE4(v51);
    BYTE13(v97) = BYTE5(v51);
    MEMORY[0x1EEE9AC00](v52);
    v88[-4] = v94;
    v88[-3] = &v97;
    v86 = v46;
    v87 = v45;
    goto LABEL_33;
  }

  v90 = 0;
  if (v49 > v49 >> 32)
  {
    goto LABEL_57;
  }

  v59 = sub_1CF9E5498();
  if (v59)
  {
    v60 = v59;
    v61 = sub_1CF9E54C8();
    if (__OFSUB__(v49, v61))
    {
      goto LABEL_59;
    }

    v62 = v49 - v61 + v60;
    v63 = sub_1CF9E54B8();
    if (!v62)
    {
      goto LABEL_62;
    }

    MEMORY[0x1EEE9AC00](v63);
    v88[-4] = v94;
    v88[-3] = v62;
    v86 = v46;
    v87 = v45;
    v58 = sub_1CF193300;
    goto LABEL_31;
  }

  sub_1CF9E54B8();
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  *&v97 = 0;
  *(&v97 + 1) = 0xE000000000000000;
  sub_1CF9E7948();

  *&v97 = 0xD000000000000020;
  *(&v97 + 1) = 0x80000001CFA2D900;
  v82 = sub_1CF18B5CC(v88[0]);
  MEMORY[0x1D3868CC0](v82);

  MEMORY[0x1D3868CC0](544497952, 0xE400000000000000);
  v83 = sub_1CF9E5A18();
  MEMORY[0x1D3868CC0](v83);

  LODWORD(v87) = 0;
  v84 = 269;
LABEL_66:
  v86 = v84;
  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF18B04C(unint64_t a1, char a2, unint64_t a3)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1CF9E5D98();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E5A58();
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  v18 = [objc_opt_self() defaultManager];
  if (a2)
  {
    v37 = v3;
    v38 = a3;
    v36 = a1;
    v19 = NSTemporaryDirectory();
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    sub_1CF9E58C8();

    v20 = sub_1CF9E5D88();
    MEMORY[0x1D3867FB0](v20);
    (*(v39 + 8))(v10, v40);
    sub_1CF9E5968();

    v21 = v41;
    (*(v41 + 40))(v17, v14, v11);
    v22 = sub_1CF9E5928();
    v42[0] = 0;
    LODWORD(v19) = [v18 removeItemAtURL:v22 error:v42];

    v40 = v11;
    if (v19)
    {
      v23 = v42[0];
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v26 = v42[0];
      v27 = sub_1CF9E57F8();

      swift_willThrow();
      v25 = 0;
      v24 = v38;
    }

    sub_1CF18A5A0(v17, 1, v18, v24);
    if (v25)
    {
      v29 = sub_1CF9E5928();
      v42[0] = 0;
      v30 = [v18 removeItemAtURL:v29 error:v42];

      if (v30)
      {
        v31 = v42[0];
      }

      else
      {
        v33 = v42[0];
        v34 = sub_1CF9E57F8();

        swift_willThrow();
      }

      swift_willThrow();
    }

    else
    {
      MEMORY[0x1EEE9AC00](v28);
      v32 = v36;
      *(&v36 - 2) = v17;
      *(&v36 - 1) = v32;
      sub_1CEFE1894(sub_1CF190C64);
    }

    (*(v21 + 8))(v17, v40);
  }

  else
  {
    sub_1CF18A5A0(a1, 1, v18, a3);
  }

  v35 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF18B448@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  sub_1CF9E5A18();
  (*(v5 + 8))(v9, v4);
  sub_1CF9E5A18();
  v10 = sub_1CF9E6978();

  v11 = sub_1CF9E6978();

  v12 = MEMORY[0x1D386BA20](4294967294, v10 + 32, 4294967294, v11 + 32, 4);

  *a2 = v12;
  return result;
}

uint64_t sub_1CF18B5CC(unint64_t a1)
{
  v2 = sub_1CF9E6938();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v9 = a1 & 0x3FFFFFFFFFFFFFFFLL;
      v10 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v24 = *(v9 + 32);
      v26 = *(v9 + 16);
      v11 = 0x73656C617461642ELL;
      v12 = 0xEA00000000002873;
    }

    else
    {
      v19 = a1 & 0x3FFFFFFFFFFFFFFFLL;
      v20 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v25 = *(v19 + 32);
      v27 = *(v19 + 16);
      v11 = 0x286573726170732ELL;
      v12 = 0xE800000000000000;
    }

    MEMORY[0x1D3868CC0](v11, v12);
    sub_1CF9E7B58();
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    return 0;
  }

  else
  {
    if (!v4)
    {
      v5 = *(a1 + 16);
      v28 = 0x6F7463657269642ELL;
      v6 = sub_1CF9E6648();
      MEMORY[0x1D3868CC0](v6);

      v7 = 41;
      v8 = 0xE100000000000000;
LABEL_19:
      MEMORY[0x1D3868CC0](v7, v8);
      return v28;
    }

    v13 = a1 & 0x3FFFFFFFFFFFFFFFLL;
    v14 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v15 = *(v13 + 24);
    sub_1CEFE42D4(v14, v15);
    sub_1CF9E6918();
    v16 = sub_1CF9E68D8();
    v18 = v17;
    sub_1CEFE4714(v14, v15);
    if (v18)
    {
      v28 = 0x2228656C69662ELL;
      MEMORY[0x1D3868CC0](v16, v18);

      v7 = 10530;
      v8 = 0xE200000000000000;
      goto LABEL_19;
    }

    sub_1CF9E7948();

    v28 = 0xD000000000000010;
    v22 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v22 != 2 || !__OFSUB__(*(v14 + 24), *(v14 + 16)))
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    else if (!v22)
    {
      goto LABEL_18;
    }

    if (!__OFSUB__(HIDWORD(v14), v14))
    {
LABEL_18:
      v23 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v23);

      v7 = 0x293E736574796220;
      v8 = 0xE800000000000000;
      goto LABEL_19;
    }

    __break(1u);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1CF18B8DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF18B8FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CF18BA2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 28);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1CF18BA80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 28) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1CF18BC94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1CF18BCF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
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

unint64_t sub_1CF18BD8C()
{
  result = qword_1EC4BCFA0;
  if (!qword_1EC4BCFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BCFA0);
  }

  return result;
}

BOOL sub_1CF18BDE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1CF18BE0C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF18BE40(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EDEAB6C8, type metadata accessor for NSFileProviderError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1CF18BEAC(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EDEAB6C8, type metadata accessor for NSFileProviderError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1CF18BF18(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1CF18BF84(uint64_t a1, id *a2)
{
  result = sub_1CF9E5B68();
  *a2 = 0;
  return result;
}

uint64_t sub_1CF18C014(uint64_t a1, id *a2)
{
  v3 = sub_1CF9E5B78();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1CF18C0B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1CF9E5B88();
  v4 = v3;
  v5 = sub_1CF9E5B48();
  result = sub_1CEFE4714(v2, v4);
  *a1 = v5;
  return result;
}

uint64_t sub_1CF18C100(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1CF9E5B88();
  v6 = v5;
  v7 = sub_1CF9E5B88();
  v9 = v8;
  v10 = sub_1CF328660(v4, v6, v7, v8);
  sub_1CEFE4714(v7, v9);
  sub_1CEFE4714(v4, v6);
  return v10 & 1;
}

uint64_t sub_1CF18C184()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1CF9E5E88();
}

uint64_t sub_1CF18C1D0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1CF9E5E78();
}

uint64_t sub_1CF18C228()
{
  sub_1CF9E81D8();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1CF9E5E78();
  return sub_1CF9E8228();
}

uint64_t sub_1CF18C290(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EDEA38C8, type metadata accessor for PQLSqliteError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1CF18C2FC(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EDEA38C8, type metadata accessor for PQLSqliteError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1CF18C368(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EDEA38C0, type metadata accessor for PQLSqliteError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1CF18C3F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = *v2 & *a1;
  result = sub_1CF9E7798();
  if (result)
  {
    v6 = 0;
  }

  else
  {
    *v2 = v5 & ~v4;
  }

  *a2 = v6;
  *(a2 + 8) = result & 1;
  return result;
}

uint64_t sub_1CF18C46C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2 & *a1;
  *v2 |= *a1;
  result = sub_1CF9E7798();
  if (result)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  *a2 = v6;
  *(a2 + 8) = result & 1;
  return result;
}

uint64_t sub_1CF18C4D4(uint64_t a1, id *a2)
{
  result = sub_1CF9E6898();
  *a2 = 0;
  return result;
}

uint64_t sub_1CF18C54C(uint64_t a1, id *a2)
{
  v3 = sub_1CF9E68A8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1CF18C5CC@<X0>(uint64_t *a1@<X8>)
{
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v2 = sub_1CF9E6888();

  *a1 = v2;
  return result;
}

uint64_t sub_1CF18C610()
{
  v1 = *v0;
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](v1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF18C658()
{
  v1 = *v0;
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](v1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF18C69C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1CEFF8C8C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1CF18C6DC@<X0>(_DWORD *a1@<X8>)
{
  v2 = sub_1CF94814C();

  *a1 = v2;
  return result;
}

uint64_t sub_1CF18C72C()
{
  sub_1CF18DC7C(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);

  return sub_1CF9E57C8();
}

uint64_t sub_1CF18C798(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1CF18C804(void *a1, uint64_t a2)
{
  v4 = sub_1CF18DC7C(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1CF18C894(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CF18DC7C(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1CF18C910(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EC4BD688, type metadata accessor for URLFileProtection);
  v3 = sub_1CF18DC7C(&unk_1EC4BD690, type metadata accessor for URLFileProtection);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CF18C9CC(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EC4BD278, type metadata accessor for NSFileProviderPage);
  v3 = sub_1CF18DC7C(&qword_1EC4BD280, type metadata accessor for NSFileProviderPage);
  v4 = sub_1CF1909CC();

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CF18CA8C(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EDEAB550, type metadata accessor for NSFileProviderItemIdentifier);
  v3 = sub_1CF18DC7C(&qword_1EC4BD2B8, type metadata accessor for NSFileProviderItemIdentifier);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CF18CB48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1CF9E5B48();
  result = sub_1CEFE4714(v3, v4);
  *a2 = v5;
  return result;
}

uint64_t sub_1CF18CB94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1CF9E5E68();
}

uint64_t sub_1CF18CC10()
{
  sub_1CF18DC7C(&qword_1EDEA38C0, type metadata accessor for PQLSqliteError);

  return sub_1CF9E57C8();
}

uint64_t sub_1CF18CC7C(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EDEA38C0, type metadata accessor for PQLSqliteError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1CF18CCE8(void *a1, uint64_t a2)
{
  v4 = sub_1CF18DC7C(&qword_1EDEA38C0, type metadata accessor for PQLSqliteError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1CF18CD78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CF18DC7C(&qword_1EDEA38C0, type metadata accessor for PQLSqliteError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1CF18CE04()
{
  sub_1CF18DC7C(&qword_1EDEA3900, type metadata accessor for CSIndexError);

  return sub_1CF9E57C8();
}

uint64_t sub_1CF18CE70(uint64_t a1)
{
  v2 = sub_1CF18DC7C(&qword_1EDEA3900, type metadata accessor for CSIndexError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1CF18CEDC(void *a1, uint64_t a2)
{
  v4 = sub_1CF18DC7C(&qword_1EDEA3900, type metadata accessor for CSIndexError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1CF18CF6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CF18DC7C(&qword_1EDEA3900, type metadata accessor for CSIndexError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1CF18CFE8()
{
  v2 = *v0;
  sub_1CF9E81D8();
  sub_1CF9E6758();
  return sub_1CF9E8228();
}