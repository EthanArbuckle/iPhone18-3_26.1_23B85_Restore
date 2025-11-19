unint64_t sub_24A3B92FC()
{
  result = qword_27EF40E00;
  if (!qword_27EF40E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40E00);
  }

  return result;
}

uint64_t sub_24A3B936C(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v5 = type metadata accessor for FMFLocation();
  v6 = *(*(v5 - 1) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v7);
  v12 = &v26[-v11 - 8];
  v13 = *(v4 + 16);
  if (v13 != *(v3 + 16))
  {
    goto LABEL_28;
  }

  if (!v13 || v4 == v3)
  {
    v23 = 1;
    return v23 & 1;
  }

  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = v4 + v14;
  v16 = v3 + v14;
  v25 = *(v10 + 72);
  while (1)
  {
    sub_24A415EC8(v15, v12, type metadata accessor for FMFLocation);
    sub_24A415EC8(v16, v9, type metadata accessor for FMFLocation);
    v17 = *(v12 + 1);
    v18 = *(v9 + 1);
    if (v17)
    {
      if (!v18 || (*v12 != *v9 || v17 != v18) && (sub_24A4AC270() & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v18)
    {
      goto LABEL_27;
    }

    v19 = v5[11];
    memcpy(v33, &v12[v19], 0x161uLL);
    v20 = v5[11];
    memcpy(v34, &v9[v20], 0x161uLL);
    memcpy(v32, &v12[v19], 0x161uLL);
    memcpy(&v32[360], &v9[v20], 0x161uLL);
    memcpy(v35, &v12[v19], 0x161uLL);
    if (sub_24A3B9C24(v35) == 1)
    {
      break;
    }

    memcpy(v31, v32, 0x161uLL);
    memcpy(v29, v32, 0x161uLL);
    memcpy(v30, &v32[360], 0x161uLL);
    if (sub_24A3B9C24(v30) == 1)
    {
      memcpy(v28, v32, 0x161uLL);
      sub_24A37B740(v33, v27, &qword_27EF3F840, &qword_24A4B6598);
      sub_24A37B740(v34, v27, &qword_27EF3F840, &qword_24A4B6598);
      sub_24A37B740(v31, v27, &qword_27EF3F840, &qword_24A4B6598);
      sub_24A3C36E0(v28);
      goto LABEL_26;
    }

    memcpy(v28, &v32[360], 0x161uLL);
    sub_24A37B740(v33, v27, &qword_27EF3F840, &qword_24A4B6598);
    sub_24A37B740(v34, v27, &qword_27EF3F840, &qword_24A4B6598);
    sub_24A37B740(v31, v27, &qword_27EF3F840, &qword_24A4B6598);
    v21 = sub_24A3D7468(v29, v28);
    memcpy(v26, v28, 0x161uLL);
    sub_24A3C36E0(v26);
    memcpy(v27, v29, 0x161uLL);
    sub_24A3C36E0(v27);
    memcpy(v28, v32, 0x161uLL);
    sub_24A37EF2C(v28, &qword_27EF3F840, &qword_24A4B6598);
    if ((v21 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_17:
    if (v12[16] != v9[16] || v12[33] != v9[33] || v12[v5[10]] != v9[v5[10]])
    {
      goto LABEL_27;
    }

    v22 = v12[v5[9]] ^ v9[v5[9]];
    sub_24A415F30(v9, type metadata accessor for FMFLocation);
    sub_24A415F30(v12, type metadata accessor for FMFLocation);
    if ((v22 & 1) == 0)
    {
      v16 += v25;
      v15 += v25;
      if (--v13)
      {
        continue;
      }
    }

    v23 = v22 ^ 1;
    return v23 & 1;
  }

  memcpy(v30, &v32[360], 0x161uLL);
  if (sub_24A3B9C24(v30) == 1)
  {
    memcpy(v31, v32, 0x161uLL);
    sub_24A37B740(v33, v29, &qword_27EF3F840, &qword_24A4B6598);
    sub_24A37B740(v34, v29, &qword_27EF3F840, &qword_24A4B6598);
    sub_24A37EF2C(v31, &qword_27EF3F840, &qword_24A4B6598);
    goto LABEL_17;
  }

  sub_24A37B740(v33, v31, &qword_27EF3F840, &qword_24A4B6598);
  sub_24A37B740(v34, v31, &qword_27EF3F840, &qword_24A4B6598);
LABEL_26:
  memcpy(v30, v32, 0x2C9uLL);
  sub_24A37EF2C(v30, &qword_27EF3F8E0, &unk_24A4B6950);
LABEL_27:
  sub_24A415F30(v9, type metadata accessor for FMFLocation);
  sub_24A415F30(v12, type metadata accessor for FMFLocation);
LABEL_28:
  v23 = 0;
  return v23 & 1;
}

unint64_t sub_24A3B98AC()
{
  result = qword_27EF40DD0;
  if (!qword_27EF40DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40DD0);
  }

  return result;
}

void sub_24A3B9900(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v8 = sub_24A4AB820();
  [v13 setLocalizedDateFormatFromTemplate_];

  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(type metadata accessor for FMFLocation() - 8);
    v11 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v12 = *(v10 + 72);
    do
    {
      sub_24A3BBDD8(v11, a2, v13, a3, a4);
      v11 += v12;
      --v9;
    }

    while (v9);
  }
}

uint64_t sub_24A3B9A38()
{
  v1 = *v0;
  v2 = 0x7472656C61;
  v3 = 0x746E6F4361746164;
  v4 = 0x6174536863746566;
  if (v1 != 3)
  {
    v4 = 0x52646E616D6D6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F43726576726573;
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

uint64_t sub_24A3B9AF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 353))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 304);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A3B9B40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A3B9B88(uint64_t a1)
{
  v2 = sub_24A3B98AC();

  return MEMORY[0x2821FE718](a1, v2);
}

id FMFLocation.location.getter()
{
  v1 = type metadata accessor for FMFLocation();
  memcpy(v5, (v0 + *(v1 + 44)), 0x161uLL);
  v2 = 0;
  if (sub_24A3B9C24(v5) != 1)
  {
    v2 = v5[38];
    v3 = v5[38];
  }

  return v2;
}

uint64_t sub_24A3B9C24(uint64_t a1)
{
  v1 = *(a1 + 304);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24A3B9C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F1C8, &unk_24A4B7C70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A3B9CCC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
    return result;
  }

  v8 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = sub_24A3C9CEC(&qword_27EF3F7A0, &qword_24A4B6430);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for FMFAlert()
{
  result = qword_27EF3F6B0;
  if (!qword_27EF3F6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A3B9EB4()
{
  sub_24A3B9F74();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_24A3B9F74()
{
  if (!qword_27EF3F6C0)
  {
    sub_24A4AA9D0();
    v0 = sub_24A4ABDF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF3F6C0);
    }
  }
}

uint64_t FMFLocation.label.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FMFLocation();
  memcpy(__dst, (v1 + *(v3 + 44)), 0x161uLL);
  if (sub_24A3B9C24(__dst) == 1)
  {
    v4 = 0;
    result = 0;
    v6 = 0;
  }

  else
  {
    v4 = __dst[40];
    v6 = __dst[42];
  }

  *a1 = v4;
  *(a1 + 8) = result;
  *(a1 + 16) = v6;
  return result;
}

void *FMFLocation.address.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for FMFLocation();
  memcpy(__dst, (v1 + *(v3 + 44)), 0x161uLL);
  if (sub_24A3B9C24(__dst) == 1)
  {
    sub_24A3BAFB0(v5);
    return memcpy(a1, v5, 0x130uLL);
  }

  else
  {
    memcpy(a1, __dst, 0x130uLL);
    return sub_24A37B740(__dst, v5, &unk_27EF404E0, &unk_24A4B5230);
  }
}

uint64_t sub_24A3BA0E8()
{
  *&v67[0] = 60;
  *(&v67[0] + 1) = 0xE100000000000000;
  v1 = *v0;
  v2 = sub_24A4AC420();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  v70 = v0;
  sub_24A3BAF14();
  v3 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v3);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v4 = v67[0];
  *&v67[0] = 0x6E69776F6C6C6F66;
  *(&v67[0] + 1) = 0xEB00000000203A67;
  v5 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_following);
  if (v5)
  {
    v6 = *(v5 + 16);
  }

  else
  {
    v6 = 0;
  }

  v70 = v6;
  LOBYTE(v71) = v5 == 0;
  sub_24A3C9CEC(&qword_27EF3F0F0, &qword_24A4B4940);
  v7 = sub_24A4AB870();
  MEMORY[0x24C217D50](v7);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](*&v67[0], *(&v67[0] + 1));

  *&v67[0] = 0x7265776F6C6C6F66;
  *(&v67[0] + 1) = 0xEB00000000203A73;
  v8 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_followers);
  if (v8)
  {
    v9 = *(v8 + 16);
  }

  else
  {
    v9 = 0;
  }

  v70 = v9;
  LOBYTE(v71) = v8 == 0;
  v10 = sub_24A4AB870();
  MEMORY[0x24C217D50](v10);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](*&v67[0], *(&v67[0] + 1));

  sub_24A4ABF50();

  *&v67[0] = 0xD000000000000011;
  *(&v67[0] + 1) = 0x800000024A4AF230;
  v11 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_futureFollowing);
  if (v11)
  {
    v12 = *(v11 + 16);
  }

  else
  {
    v12 = 0;
  }

  v70 = v12;
  LOBYTE(v71) = v11 == 0;
  v13 = sub_24A4AB870();
  MEMORY[0x24C217D50](v13);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](*&v67[0], *(&v67[0] + 1));

  sub_24A4ABF50();

  *&v67[0] = 0xD000000000000011;
  *(&v67[0] + 1) = 0x800000024A4AF250;
  v14 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_futureFollowers);
  if (v14)
  {
    v15 = *(v14 + 16);
  }

  else
  {
    v15 = 0;
  }

  v70 = v15;
  LOBYTE(v71) = v14 == 0;
  v16 = sub_24A4AB870();
  MEMORY[0x24C217D50](v16);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](*&v67[0], *(&v67[0] + 1));

  sub_24A4ABF50();

  *&v67[0] = 0x4F676E69646E6570;
  *(&v67[0] + 1) = 0xEF203A7372656666;
  v17 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_pendingOffers);
  if (v17)
  {
    v18 = *(v17 + 16);
  }

  else
  {
    v18 = 0;
  }

  v70 = v18;
  LOBYTE(v71) = v17 == 0;
  v19 = sub_24A4AB870();
  MEMORY[0x24C217D50](v19);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](*&v67[0], *(&v67[0] + 1));

  *&v67[0] = 0x6E6F697461636F6CLL;
  *(&v67[0] + 1) = 0xEB00000000203A73;
  v20 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locations);
  if (v20)
  {
    v21 = *(v20 + 16);
  }

  else
  {
    v21 = 0;
  }

  v70 = v21;
  LOBYTE(v71) = v20 == 0;
  v22 = sub_24A4AB870();
  MEMORY[0x24C217D50](v22);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](*&v67[0], *(&v67[0] + 1));

  sub_24A4ABF50();

  *&v67[0] = 0xD000000000000013;
  *(&v67[0] + 1) = 0x800000024A4AF270;
  v23 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locatesInProgress);
  if (v23)
  {
    v24 = *(v23 + 16);
  }

  else
  {
    v24 = 0;
  }

  v70 = v24;
  LOBYTE(v71) = v23 == 0;
  v25 = sub_24A4AB870();
  MEMORY[0x24C217D50](v25);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](*&v67[0], *(&v67[0] + 1));

  *&v67[0] = 0x203A736C6562616CLL;
  *(&v67[0] + 1) = 0xE800000000000000;
  v26 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_labels);
  if (v26)
  {
    v27 = *(v26 + 16);
  }

  else
  {
    v27 = 0;
  }

  v70 = v27;
  LOBYTE(v71) = v26 == 0;
  v28 = sub_24A4AB870();
  MEMORY[0x24C217D50](v28);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](*&v67[0], *(&v67[0] + 1));

  sub_24A4ABF50();

  *&v67[0] = 0xD000000000000013;
  *(&v67[0] + 1) = 0x800000024A4AF290;
  v29 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_labelledLocations);
  if (v29)
  {
    v30 = *(v29 + 16);
  }

  else
  {
    v30 = 0;
  }

  v70 = v30;
  LOBYTE(v71) = v29 == 0;
  v31 = sub_24A4AB870();
  MEMORY[0x24C217D50](v31);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](*&v67[0], *(&v67[0] + 1));

  *&v67[0] = 0x3A73656369766564;
  *(&v67[0] + 1) = 0xE900000000000020;
  v32 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_devices);
  if (v32)
  {
    v33 = *(v32 + 16);
  }

  else
  {
    v33 = 0;
  }

  v70 = v33;
  LOBYTE(v71) = v32 == 0;
  v34 = sub_24A4AB870();
  MEMORY[0x24C217D50](v34);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](*&v67[0], *(&v67[0] + 1));

  sub_24A4ABF50();

  strcpy(v67, "preferences: ");
  HIWORD(v67[0]) = -4864;
  if (*(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences + 16))
  {
    v35 = 0x6C696E2D6E6F6ELL;
  }

  else
  {
    v35 = 7104878;
  }

  if (*(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences + 16))
  {
    v36 = 0xE700000000000000;
  }

  else
  {
    v36 = 0xE300000000000000;
  }

  MEMORY[0x24C217D50](v35, v36);

  MEMORY[0x24C217D50](8233, 0xE200000000000000);
  v37 = v67[0];
  v67[0] = v4;

  MEMORY[0x24C217D50](v37, *(&v37 + 1));

  v70 = 0x7365727574616566;
  v71 = 0xEA0000000000203ALL;
  v38 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_features);
  *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_features + 8);
  v39 = sub_24A4AB870();
  MEMORY[0x24C217D50](v39);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](0x7365727574616566, 0xEA0000000000203ALL);

  v68 = 0x203A6F666E49796DLL;
  v69 = 0xE800000000000000;
  if (*(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo))
  {
    v40 = 0x6C696E2D6E6F6ELL;
  }

  else
  {
    v40 = 7104878;
  }

  if (*(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo))
  {
    v41 = 0xE700000000000000;
  }

  else
  {
    v41 = 0xE300000000000000;
  }

  MEMORY[0x24C217D50](v40, v41);

  MEMORY[0x24C217D50](8233, 0xE200000000000000);

  MEMORY[0x24C217D50](v68, v69);

  v42 = *&v67[0];
  v43 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 208);
  v67[12] = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 192);
  v67[13] = v43;
  v67[14] = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 224);
  v44 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 144);
  v67[8] = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 128);
  v67[9] = v44;
  v45 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 176);
  v67[10] = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 160);
  v67[11] = v45;
  v46 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 80);
  v67[4] = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 64);
  v67[5] = v46;
  v47 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 112);
  v67[6] = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 96);
  v67[7] = v47;
  v48 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 16);
  v67[0] = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config);
  v67[1] = v48;
  v49 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 48);
  v67[2] = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 32);
  v67[3] = v49;
  v50 = sub_24A387AB8(v67);
  v51 = v50 == 1;
  if (v50 == 1)
  {
    v52 = 7104878;
  }

  else
  {
    v52 = 0x6C696E2D6E6F6ELL;
  }

  if (v51)
  {
    v53 = 0xE300000000000000;
  }

  else
  {
    v53 = 0xE700000000000000;
  }

  MEMORY[0x24C217D50](v52, v53);

  MEMORY[0x24C217D50](8233, 0xE200000000000000);

  MEMORY[0x24C217D50](0x203A6769666E6F63, 0xE800000000000000);

  sub_24A4ABF50();

  v54 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnMeByMe);
  if (v54)
  {
    v55 = *(v54 + 16);
  }

  v56 = sub_24A4AB870();
  MEMORY[0x24C217D50](v56);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](0xD000000000000018, 0x800000024A4AF2B0);

  sub_24A4ABF50();

  v57 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnMeByFriends);
  if (v57)
  {
    v58 = *(v57 + 16);
  }

  v59 = sub_24A4AB870();
  MEMORY[0x24C217D50](v59);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](0xD00000000000001DLL, 0x800000024A4AF2D0);

  sub_24A4ABF50();

  v60 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnFriendsByMe);
  if (v60)
  {
    v61 = *(v60 + 16);
  }

  v62 = sub_24A4AB870();
  MEMORY[0x24C217D50](v62);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](0xD00000000000001DLL, 0x800000024A4AF2F0);

  sub_24A4ABF50();

  v63 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnFriendsByFriends);
  if (v63)
  {
    v64 = *(v63 + 16);
  }

  v65 = sub_24A4AB870();
  MEMORY[0x24C217D50](v65);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](0xD000000000000022, 0x800000024A4AF310);

  return v42;
}

unint64_t sub_24A3BAF14()
{
  result = qword_27EF3F0E8;
  if (!qword_27EF3F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F0E8);
  }

  return result;
}

uint64_t sub_24A3BAF68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

double sub_24A3BAFB0(_OWORD *a1)
{
  result = 0.0;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_24A3BB004(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 168);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A3BB05C()
{
  v10 = sub_24A4ABD50();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24A4ABD10();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_24A4AB6E0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
  sub_24A4AB6B0();
  v11 = MEMORY[0x277D84F90];
  sub_24A37F064(&qword_27EF402C0, MEMORY[0x277D85230]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_24A4ABD90();
  qword_27EF40770 = result;
  return result;
}

uint64_t sub_24A3BB2D8(uint64_t a1)
{
  v3 = sub_24A4AB690();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A4AB6E0();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v1[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_updateQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v1;
  aBlock[4] = sub_24A3B1458;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D885C0;
  v13 = _Block_copy(aBlock);

  v14 = v1;
  sub_24A4AB6B0();
  v18 = MEMORY[0x277D84F90];
  sub_24A38D32C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v17);
}

uint64_t sub_24A3BB5A0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *FMLocationShiftingRequest.init(identifier:location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = a1;
  v3[4] = a2;
  return v3;
}

uint64_t sub_24A3BB640(uint64_t a1, void *a2, uint64_t a3)
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A4AB630();
  sub_24A378E18(v6, qword_27EF4E260);
  v7 = sub_24A4AB600();
  v8 = sub_24A4ABCE0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24A376000, v7, v8, "FMFRefreshController: initClientRequest completed", v9, 2u);
    MEMORY[0x24C219130](v9, -1, -1);
  }

  if (a2 || !a1)
  {
    v14 = a2;
    v15 = sub_24A4AB600();
    v16 = sub_24A4ABCC0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      v19 = a2;
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v20 = sub_24A4AB870();
      v22 = sub_24A37BD58(v20, v21, &v23);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_24A376000, v15, v16, "FMFRefreshController: initClient completed with error: %s", v17, 0xCu);
      sub_24A37EEE0(v18);
      MEMORY[0x24C219130](v18, -1, -1);
      MEMORY[0x24C219130](v17, -1, -1);
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_24A43DAE8(a2);
      result = swift_unknownObjectRelease();
    }
  }

  else
  {
    *(a3 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_initializedOnce) = 1;

    v10 = sub_24A4AB600();
    v11 = sub_24A4ABCE0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24A376000, v10, v11, "FMFRefreshController: received snapshot initClient response", v12, 2u);
      MEMORY[0x24C219130](v12, -1, -1);
    }

    sub_24A3BB91C(a1);
    if ((*(a3 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_isSnapshotMode) & 1) == 0)
    {
      sub_24A3AE1EC(0.0);
    }
  }

  *(a3 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_initializationInProgress) = 0;
  return result;
}

double sub_24A3BB91C(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (*(v3 + 16))
  {
    v4 = sub_24A39B2C8(0xD000000000000017, 0x800000024A4AF510);
    if (v6)
    {
      sub_24A37EE84(*(v3 + 56) + 32 * v4, v12);
      if (swift_dynamicCast())
      {
        result = v11;
        *(v2 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_minCallbackInterval) = v11;
      }
    }
  }

  if (*(v3 + 16))
  {
    v7 = sub_24A39B2C8(0xD000000000000017, 0x800000024A4AF530);
    if (v8)
    {
      sub_24A37EE84(*(v3 + 56) + 32 * v7, v12);
      if (swift_dynamicCast())
      {
        result = v11;
        *(v2 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_maxCallbackInterval) = v11;
      }
    }
  }

  if (*(v3 + 16))
  {
    v9 = sub_24A39B2C8(0xD000000000000014, 0x800000024A4AF550);
    if (v10)
    {
      sub_24A37EE84(*(v3 + 56) + 32 * v9, v12);
      if (swift_dynamicCast())
      {
        result = v11;
        *(v2 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_callbackInterval) = v11;
      }
    }
  }

  return result;
}

uint64_t sub_24A3BBAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24A4AB690();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24A4AB6E0();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v4 + 24);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = v4;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = sub_24A3B3CF8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D85C08;
  v18 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v22 = MEMORY[0x277D84F90];
  sub_24A378620(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v16, v12, v18);
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v21);
}

uint64_t sub_24A3BBD8C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A3BBDD8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v101 = a5;
  v98 = a4;
  v99 = a2;
  v8 = sub_24A4AAAD0();
  v96 = *(v8 - 8);
  v97 = v8;
  v9 = *(v96 + 64);
  MEMORY[0x28223BE20](v8);
  v95 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for FMFFriend();
  v11 = *(v93 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v93);
  v15 = (&v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v90 - v17;
  MEMORY[0x28223BE20](v16);
  v94 = &v90 - v19;
  v100 = type metadata accessor for FMFLocation();
  v20 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v22 = (&v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24A3992EC(a1, v22, type metadata accessor for FMFLocation);
  v23 = v22[1];
  if (!v23)
  {
    return sub_24A39A7B8(v22, type metadata accessor for FMFLocation);
  }

  v91 = a3;
  v92 = v5;
  v107 = v22;
  v24 = *v22;
  v104[0] = 91;
  v104[1] = 0xE100000000000000;
  MEMORY[0x24C217D50](v24, v23);
  v105 = v104[0];
  v106 = v104[1];
  v25 = *(v99 + 16);
  if (v25)
  {
    v26 = v99 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v27 = *(v11 + 72);
    while (1)
    {
      sub_24A3992EC(v26, v15, type metadata accessor for FMFFriend);
      v28 = v24 == *v15 && v23 == v15[1];
      if (v28 || (sub_24A4AC270() & 1) != 0)
      {
        break;
      }

      sub_24A39A7B8(v15, type metadata accessor for FMFFriend);
      v26 += v27;
      if (!--v25)
      {
        goto LABEL_25;
      }
    }

    sub_24A39983C(v15, v18, type metadata accessor for FMFFriend);
    v30 = v94;
    sub_24A39983C(v18, v94, type metadata accessor for FMFFriend);
    v31 = *(v30 + *(v93 + 52));
    v32 = (v30 + *(v93 + 76));
    v33 = 0xE000000000000000;
    if (v32[1])
    {
      v34 = v32[5];
      v35 = v32[6];
      v36 = HIBYTE(v35) & 0xF;
      if ((v35 & 0x2000000000000000) == 0)
      {
        v36 = v34 & 0xFFFFFFFFFFFFLL;
      }

      if (v36)
      {
      }

      else
      {
        v34 = 0;
        v35 = 0xE000000000000000;
      }
    }

    else
    {
      v34 = 0;
      v35 = 0xE000000000000000;
    }

    v104[0] = 47;
    v104[1] = 0xE100000000000000;
    MEMORY[0x24C217D50](v34, v35);

    if (v31)
    {
      v37 = 10518754;
    }

    else
    {
      v37 = 0;
    }

    if (v31)
    {
      v33 = 0xA300000000000000;
    }

    MEMORY[0x24C217D50](v37, v33);

    MEMORY[0x24C217D50](v104[0], v104[1]);

    sub_24A39A7B8(v30, type metadata accessor for FMFFriend);
  }

LABEL_25:
  MEMORY[0x24C217D50](93, 0xE100000000000000);
  v38 = *(v100 + 44);
  v39 = v107;
  memcpy(v104, v107 + v38, 0x161uLL);
  if (sub_24A3B9C24(v104) == 1)
  {
    v103[0] = 0;
    v103[1] = 0xE000000000000000;
    sub_24A4ABF50();

    v103[0] = 0x1000000000000023;
    v103[1] = 0x800000024A4B2350;
    v102 = *(v39 + 33);
    v40 = sub_24A4AB870();
    MEMORY[0x24C217D50](v40);

    sub_24A3C9CEC(&qword_27EF3F360, &qword_24A4BA1B0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_24A4B4E10;
    memcpy(v103, (v39 + v38), 0x161uLL);
    if (sub_24A3B9C24(v103) == 1)
    {
      v42 = 0;
      v43 = 0;
    }

    else
    {
      v43 = v103[41];
      if (v103[41])
      {
        v42 = v103[40];
        v67 = sub_24A4AB880();
        v69 = v68;

        v70._countAndFlagsBits = v67;
        v70._object = v69;
        FMFDefaultLabel.init(rawValue:)(v70);
        if (v102 != 5)
        {
          v42 = FMFDefaultLabel.localizedLabel.getter();
          v72 = v71;

          v43 = v72;
        }
      }

      else
      {
        v42 = 0;
      }
    }

    *(v41 + 56) = MEMORY[0x277D837D0];
    *(v41 + 64) = sub_24A3ABD70();
    v73 = 7104878;
    if (v43)
    {
      v73 = v42;
    }

    v74 = 0xE300000000000000;
    if (v43)
    {
      v74 = v43;
    }

    *(v41 + 32) = v73;
    *(v41 + 40) = v74;
    v100 = sub_24A4AB860();
    v76 = v75;

    goto LABEL_47;
  }

  v44 = v104[38];
  v45 = [v44 timestamp];
  v46 = v95;
  sub_24A4AAAA0();

  v47 = sub_24A4AAA60();
  (*(v96 + 8))(v46, v97);
  v48 = [v91 stringFromDate_];

  v99 = sub_24A4AB850();
  v97 = v49;

  v103[0] = 0;
  v103[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v103[0] = 0x100000000000002ELL;
  v103[1] = 0x800000024A4B2380;
  v102 = *(v39 + 33);
  v50 = sub_24A4AB870();
  MEMORY[0x24C217D50](v50);

  v100 = v103[0];
  sub_24A3C9CEC(&qword_27EF3F360, &qword_24A4BA1B0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_24A4BA890;
  [v44 coordinate];
  v52 = MEMORY[0x277D839F8];
  v53 = MEMORY[0x277D83A80];
  *(v51 + 56) = MEMORY[0x277D839F8];
  *(v51 + 64) = v53;
  *(v51 + 32) = v54;
  [v44 coordinate];
  *(v51 + 96) = v52;
  *(v51 + 104) = v53;
  *(v51 + 72) = v55;
  v56 = MEMORY[0x277D837D0];
  *(v51 + 136) = MEMORY[0x277D837D0];
  v57 = sub_24A3ABD70();
  *(v51 + 144) = v57;
  v58 = v97;
  *(v51 + 112) = v99;
  *(v51 + 120) = v58;
  memcpy(v103, (v39 + v38), 0x161uLL);
  if (sub_24A3B9C24(v103) == 1 || (v59 = v103[41]) == 0)
  {
    v66 = (v51 + 152);
    *(v51 + 176) = v56;
    *(v51 + 184) = v57;
  }

  else
  {
    v60 = v56;
    v61 = v103[40];
    v62 = sub_24A4AB880();
    v64 = v63;

    v65._countAndFlagsBits = v62;
    v65._object = v64;
    FMFDefaultLabel.init(rawValue:)(v65);
    if (v102 == 5)
    {
      v66 = (v51 + 152);
      *(v51 + 176) = v60;
      *(v51 + 184) = v57;
LABEL_45:
      *v66 = v61;
      goto LABEL_46;
    }

    v61 = FMFDefaultLabel.localizedLabel.getter();
    v78 = v77;

    v66 = (v51 + 152);
    *(v51 + 176) = v60;
    *(v51 + 184) = v57;
    if (v78)
    {
      v59 = v78;
      goto LABEL_45;
    }
  }

  *v66 = 7104878;
  v59 = 0xE300000000000000;
LABEL_46:
  *(v51 + 160) = v59;
  v100 = sub_24A4AB860();
  v76 = v79;

LABEL_47:
  v80 = v101;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v81 = sub_24A4AB630();
  sub_24A378E18(v81, qword_27EF4E260);
  v82 = v105;
  v83 = v106;

  v84 = sub_24A4AB600();
  v85 = sub_24A4ABCE0();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v103[0] = v87;
    *v86 = 136315650;
    *(v86 + 4) = sub_24A37BD58(v98, v80, v103);
    *(v86 + 12) = 2080;
    v88 = sub_24A37BD58(v82, v83, v103);

    *(v86 + 14) = v88;
    *(v86 + 22) = 2080;
    v89 = sub_24A37BD58(v100, v76, v103);

    *(v86 + 24) = v89;
    _os_log_impl(&dword_24A376000, v84, v85, "👀 FMFSecureLocCtrl: %s location for %s: %s", v86, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v87, -1, -1);
    MEMORY[0x24C219130](v86, -1, -1);
  }

  else
  {
  }

  return sub_24A39A7B8(v107, type metadata accessor for FMFLocation);
}

uint64_t sub_24A3BC89C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t (*a6)(void)@<X6>, uint64_t a7@<X8>)
{
  v29 = a6;
  v13 = a3(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v25 - v17;
  v19 = *(a2 + 16);
  if (v19)
  {
    v27 = v15;
    v28 = a7;
    v20 = a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v26 = v16;
    v21 = *(v16 + 72);
    while (1)
    {
      sub_24A399284(v20, v18, a4);
      v22 = a1(v18);
      if (v7)
      {
        return sub_24A39A758(v18, a5);
      }

      if (v22)
      {
        break;
      }

      sub_24A39A758(v18, a5);
      v20 += v21;
      if (!--v19)
      {
        v23 = 1;
        a7 = v28;
        goto LABEL_10;
      }
    }

    a7 = v28;
    sub_24A3997D4(v18, v28, v29);
    v23 = 0;
LABEL_10:
    v16 = v26;
    v15 = v27;
  }

  else
  {
    v23 = 1;
  }

  return (*(v16 + 56))(a7, v23, 1, v15);
}

uint64_t sub_24A3BCA40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_24A3BCAA8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_24A3C9CEC(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_24A3BCBC4(char *a1, int64_t a2, char a3)
{
  result = sub_24A3BCAA8(a1, a2, a3, *v3, &qword_27EF3F510, &unk_24A4B6900);
  *v3 = result;
  return result;
}

uint64_t sub_24A3BCC3C(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 40);
    ObjectType = swift_getObjectType();
    v5 = *(a1 + 56);
    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    sub_24A4ABD70();
    (*(v3 + 56))(v6, 0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A3BCD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v22 = a2;
  v4 = type metadata accessor for FMFLocation();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  v10 = *(a1 + 16);
  v23 = a1;
  if (v10)
  {
    v11 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v12 = *(v6 + 72);
    do
    {
      sub_24A3B4B10(v11, v8);
      v13 = v8[1];
      if (!v13 || (v14 = *v8, memcpy(v25, v8 + *(v4 + 44), 0x161uLL), sub_24A3B9C24(v25) == 1))
      {
        sub_24A3B4B74(v8);
      }

      else
      {
        v15 = v25[38];

        v16 = v15;
        sub_24A3B4B74(v8);
        type metadata accessor for FMLocationShiftingRequest();
        v17 = swift_allocObject();
        v17[2] = v16;
        v17[3] = v14;
        v17[4] = v13;
        MEMORY[0x24C217E50]();
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24A4ABAA0();
        }

        sub_24A4ABAE0();
        v9 = v26;
      }

      v11 += v12;
      --v10;
    }

    while (v10);
  }

  v18 = swift_allocObject();
  v19 = v22;
  v18[2] = v23;
  v18[3] = v19;
  v18[4] = v24;

  sub_24A3BBAB0(v9, sub_24A3B4B04, v18);
}

uint64_t sub_24A3BCF50()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

Swift::Void __swiftcall FMFManager.didReceive(friends:fromServer:)(Swift::OpaquePointer friends, Swift::Bool fromServer)
{
  v3 = v2;
  v54 = fromServer;
  rawValue = friends._rawValue;
  v4 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = &v48 - v6;
  v7 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v48 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  v16 = type metadata accessor for FMFFriend();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v49 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v52 = &v48 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v48 - v22;
  v24 = OBJC_IVAR____TtC7FMFCore10FMFManager_selectedFriend;
  swift_beginAccess();
  sub_24A37B740(v3 + v24, v15, &qword_27EF3F2D0, &qword_24A4B4F50);
  v53 = v17;
  v25 = *(v17 + 48);
  if (v25(v15, 1, v16) != 1)
  {
    v33 = sub_24A3997D4(v15, v23, type metadata accessor for FMFFriend);
    MEMORY[0x28223BE20](v33);
    v48 = v23;
    *(&v48 - 2) = v23;
    sub_24A3BC89C(sub_24A431FF8, rawValue, type metadata accessor for FMFFriend, type metadata accessor for FMFFriend, type metadata accessor for FMFFriend, type metadata accessor for FMFFriend, v13);
    if (v25(v13, 1, v16) == 1)
    {
      sub_24A37EF2C(v13, &qword_27EF3F2D0, &qword_24A4B4F50);
      v34 = *(v3 + 128);
      v35 = v51;
      (*(v53 + 56))(v51, 1, 1, v16);
      v36 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_selectedFriend;
      swift_beginAccess();

      sub_24A43F22C(v35, v34 + v36);
      swift_endAccess();
    }

    else
    {
      v37 = v13;
      v38 = v52;
      sub_24A3997D4(v37, v52, type metadata accessor for FMFFriend);
      if (*(v3 + 224) == 1)
      {
        v39 = sub_24A3A290C();
        v26 = rawValue;
        if (v39)
        {
          v40 = sub_24A4ABB70();
          v41 = v50;
          (*(*(v40 - 8) + 56))(v50, 1, 1, v40);
          v42 = v49;
          sub_24A399284(v38, v49, type metadata accessor for FMFFriend);
          v43 = (*(v53 + 80) + 40) & ~*(v53 + 80);
          v44 = swift_allocObject();
          v44[2] = 0;
          v44[3] = 0;
          v44[4] = v3;
          sub_24A3997D4(v42, v44 + v43, type metadata accessor for FMFFriend);

          sub_24A432370(0, 0, v41, &unk_24A4BA2B8, v44);
        }

        sub_24A39A758(v38, type metadata accessor for FMFFriend);
        goto LABEL_15;
      }

      sub_24A39A758(v38, type metadata accessor for FMFFriend);
    }

    v26 = rawValue;
LABEL_15:
    sub_24A39A758(v48, type metadata accessor for FMFFriend);
    goto LABEL_16;
  }

  sub_24A37EF2C(v15, &qword_27EF3F2D0, &qword_24A4B4F50);
  v26 = rawValue;
  if ((*(v3 + 225) & 1) == 0 && *(v3 + 224) == 1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v27 = *(v3 + 40);
      ObjectType = swift_getObjectType();
      v29 = (*(v27 + 128))(v3, v26, ObjectType, v27);
      swift_unknownObjectRelease();
      if (sub_24A3A290C())
      {
LABEL_6:
        v30 = sub_24A4ABB70();
        v31 = v50;
        (*(*(v30 - 8) + 56))(v50, 1, 1, v30);
        v32 = swift_allocObject();
        v32[2] = 0;
        v32[3] = 0;
        v32[4] = v3;
        v32[5] = v29;

        sub_24A432D64(0, 0, v31, &unk_24A4BA2A8, v32);

        goto LABEL_16;
      }
    }

    else
    {

      v29 = v26;
      if (sub_24A3A290C())
      {
        goto LABEL_6;
      }
    }

    if (*(v3 + 200))
    {
      v47 = *(v3 + 200);

      sub_24A466B38(v29, 0, 0, 0);
    }
  }

LABEL_16:
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v45 = *(v3 + 40);
    v46 = swift_getObjectType();
    (*(v45 + 32))(v3, v26, v54, v46, v45);
    swift_unknownObjectRelease();
  }

  if (*(v3 + 225) == 1 && (*(v3 + 226) & 1) == 0 && v54)
  {
    *(v3 + 226) = 1;
    sub_24A436774(v26, 0);
  }
}

uint64_t sub_24A3BD6E0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A3BD734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v142 = type metadata accessor for FMFFriend();
  v145 = *(v142 - 1);
  v7 = *(v145 + 64);
  v8 = MEMORY[0x28223BE20](v142);
  v134 = v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = (v131 - v10);
  v12 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v141 = v131 - v17;
  v18 = *(a2 + 584);

  v19 = sub_24A4156A8(a1, v18);

  if (v19)
  {
    *a3 = 0;
    return result;
  }

  v132 = a3;
  v133 = v3;
  v21 = *(a2 + 576);
  *(a2 + 576) = 0;

  v22 = *(a2 + 624);
  *(a2 + 624) = 0;

  v23 = *(a1 + 16);
  v24 = MEMORY[0x277D84F90];
  v140 = a2;
  v137 = v16;
  v138 = v23;
  v136 = a1;
  if (v23)
  {
    v146[0] = MEMORY[0x277D84F90];
    sub_24A3BEBEC(0, v23, 0);
    v24 = v146[0];
    v139 = sub_24A3C9CEC(&qword_27EF40578, &qword_24A4BD230);
    v25 = (a1 + 48);
    a2 = v23;
    do
    {
      v26 = *v25;
      v143 = v24;
      if (v26)
      {
        if (v26 == 1)
        {
          v144 = 0xE700000000000000;
          v27 = 0x776F6C6C616873;
        }

        else
        {
          v144 = 0xE400000000000000;
          v27 = 1885693284;
        }
      }

      else
      {
        v144 = 0xE400000000000000;
        v27 = 1701736302;
      }

      v28 = *(v25 - 2);
      v29 = *(v25 - 1);
      v30 = sub_24A4AC090();
      swift_bridgeObjectRetain_n();

      v31 = sub_24A39B2C8(v28, v29);
      v24 = v32;

      if (v24)
      {
        goto LABEL_87;
      }

      v30[(v31 >> 6) + 8] |= 1 << v31;
      v33 = (v30[6] + 16 * v31);
      *v33 = v28;
      v33[1] = v29;
      v34 = (v30[7] + 16 * v31);
      v35 = v144;
      *v34 = v27;
      v34[1] = v35;

      v36 = v30[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      v30[2] = v38;
      v24 = v143;
      v146[0] = v143;
      v40 = *(v143 + 16);
      v39 = *(v143 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_24A3BEBEC((v39 > 1), v40 + 1, 1);
        v24 = v146[0];
      }

      v25 += 24;
      *(v24 + 16) = v40 + 1;
      *(v24 + 8 * v40 + 32) = v30;
      --a2;
    }

    while (a2);
    a2 = v140;
  }

  if (qword_27EF3EBF8 != -1)
  {
    goto LABEL_91;
  }

  while (1)
  {
    v41 = sub_24A4AB630();
    v42 = sub_24A378E18(v41, qword_27EF4E260);

    v43 = sub_24A4AB600();
    v44 = sub_24A4ABCE0();

    v45 = os_log_type_enabled(v43, v44);
    v131[1] = v42;
    if (v45)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v146[0] = v47;
      *v46 = 136315138;
      v48 = sub_24A3C9CEC(&qword_27EF3F4D8, &unk_24A4BAC90);
      v49 = MEMORY[0x24C217E90](v24, v48);
      v24 = v50;

      v51 = sub_24A37BD58(v49, v24, v146);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_24A376000, v43, v44, "FMFDataManager: Locate in progress (in) - %s", v46, 0xCu);
      sub_24A37EEE0(v47);
      MEMORY[0x24C219130](v47, -1, -1);
      MEMORY[0x24C219130](v46, -1, -1);
    }

    else
    {
    }

    if (v138)
    {
      v52 = 0;
      v139 = (v136 + 4);
      v136 = (v145 + 56);
      v144 = MEMORY[0x277D84F98];
      v135 = (v145 + 48);
      while (1)
      {
        v54 = v139 + 24 * v52;
        v55 = *v54;
        v56 = *(v54 + 8);
        LODWORD(v143) = *(v54 + 16);

        v57 = sub_24A390DA0();
        a2 = *(v57 + 16);
        if (a2)
        {
          v58 = 0;
          while (v58 < *(v57 + 16))
          {
            sub_24A3992EC(v57 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v58, v11, type metadata accessor for FMFFriend);
            v59 = *v11 == v55 && v11[1] == v56;
            if (v59 || (sub_24A4AC270() & 1) != 0)
            {

              v61 = v141;
              sub_24A39983C(v11, v141, type metadata accessor for FMFFriend);
              v60 = 0;
              goto LABEL_35;
            }

            ++v58;
            sub_24A39A7B8(v11, type metadata accessor for FMFFriend);
            if (a2 == v58)
            {
              goto LABEL_33;
            }
          }

          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

LABEL_33:

        v60 = 1;
        v61 = v141;
LABEL_35:
        v62 = v142;
        (*v136)(v61, v60, 1, v142);
        v63 = v137;
        v24 = &qword_24A4B4F50;
        sub_24A37B740(v61, v137, &qword_27EF3F2D0, &qword_24A4B4F50);
        v59 = (*v135)(v63, 1, v62) == 1;
        v64 = v61;
        a2 = v140;
        if (!v59)
        {
          break;
        }

        sub_24A37EF2C(v64, &qword_27EF3F2D0, &qword_24A4B4F50);

        v53 = v63;
LABEL_23:
        ++v52;
        sub_24A37EF2C(v53, &qword_27EF3F2D0, &qword_24A4B4F50);
        if (v52 == v138)
        {
          goto LABEL_49;
        }
      }

      v65 = v134;
      sub_24A39983C(v63, v134, type metadata accessor for FMFFriend);
      if (*(a2 + 672) == 1)
      {
        v66 = *(v65 + v142[11]);
        if (v66 != 2 && (v66 & 1) != 0)
        {
          goto LABEL_46;
        }

        v67 = *(v65 + v142[12]);
        if (v67 != 2 && (v67 & 1) != 0)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v68 = *(v65 + v142[12]);
        if (v68 != 2 && (v68 & 1) != 0 && *(v65 + v142[13]) != 1)
        {
LABEL_46:

          v71 = v65;
          goto LABEL_47;
        }
      }

      v69 = v144;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v146[0] = v69;
      sub_24A3BE4BC(v55, v56, v143, v55, v56, isUniquelyReferenced_nonNull_native);

      v144 = v146[0];
      v71 = v134;
LABEL_47:
      sub_24A39A7B8(v71, type metadata accessor for FMFFriend);
      v53 = v141;
      goto LABEL_23;
    }

    v144 = MEMORY[0x277D84F98];
LABEL_49:
    v149 = MEMORY[0x277D84F90];
    v72 = *(*(a2 + 584) + 16);
    if (v72)
    {

      v73 = (v145 + 48);
      v74 = MEMORY[0x277D84F90];
      do
      {
        v77 = *(v73 - 2);
        v76 = *(v73 - 1);
        v78 = *v73;
        v79 = v144;
        v80 = *(v144 + 16);

        if (v80 && (, v81 = sub_24A39B2C8(v77, v76), v83 = v82, , (v83 & 1) != 0))
        {

          v84 = *(v79 + 56) + 24 * v81;
          v85 = *v84;
          v86 = *(v84 + 8);
          v87 = *(v84 + 16);
          swift_bridgeObjectRetain_n();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v74 = sub_24A3BEA68(0, *(v74 + 2) + 1, 1, v74);
          }

          v89 = *(v74 + 2);
          v88 = *(v74 + 3);
          if (v89 >= v88 >> 1)
          {
            v74 = sub_24A3BEA68((v88 > 1), v89 + 1, 1, v74);
          }

          *(v74 + 2) = v89 + 1;
          v90 = &v74[24 * v89];
          *(v90 + 4) = v85;
          *(v90 + 5) = v86;
          v90[48] = v87;
          v91 = v85;
          v92 = v144;
          v93 = sub_24A39B2C8(v91, v86);
          v95 = v94;

          if (v95)
          {
            v96 = swift_isUniquelyReferenced_nonNull_native();
            v146[0] = v92;
            if (!v96)
            {
              sub_24A4A8628();
              v92 = v146[0];
            }

            v97 = *(*(v92 + 48) + 16 * v93 + 8);

            v98 = *(*(v92 + 56) + 24 * v93 + 8);

            v144 = v92;
            sub_24A4A9BC4(v93, v92);
          }
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v74 = sub_24A3BEA68(0, *(v74 + 2) + 1, 1, v74);
          }

          v100 = *(v74 + 2);
          v99 = *(v74 + 3);
          if (v100 >= v99 >> 1)
          {
            v74 = sub_24A3BEA68((v99 > 1), v100 + 1, 1, v74);
          }

          *(v74 + 2) = v100 + 1;
          v75 = &v74[24 * v100];
          *(v75 + 4) = v77;
          *(v75 + 5) = v76;
          v75[48] = v78;
        }

        v73 += 24;
        --v72;
      }

      while (v72);

      v149 = v74;
      a2 = v140;
    }

    sub_24A3BE628(v101);
    v102 = v149;
    v103 = *(v149 + 2);
    if (!v103)
    {
      break;
    }

    v148 = MEMORY[0x277D84F90];

    sub_24A3BEBEC(0, v103, 0);
    v104 = v148;
    v145 = sub_24A3C9CEC(&qword_27EF40578, &qword_24A4BD230);
    v143 = v102;
    v24 = v102 + 48;
    while (1)
    {
      a2 = *(v24 - 16);
      v11 = *(v24 - 8);
      v105 = *v24;
      v147[0] = a2;
      v147[1] = v11;
      if (v105)
      {
        if (v105 == 1)
        {
          v106 = 0xE700000000000000;
          v107 = 0x776F6C6C616873;
        }

        else
        {
          v106 = 0xE400000000000000;
          v107 = 1885693284;
        }
      }

      else
      {
        v106 = 0xE400000000000000;
        v107 = 1701736302;
      }

      v146[0] = v107;
      v146[1] = v106;
      swift_bridgeObjectRetain_n();
      v108 = sub_24A4AB890();
      v110 = v109;
      v147[2] = v108;
      v147[3] = v109;
      v111 = sub_24A4AC090();

      v112 = sub_24A39B2C8(a2, v11);
      if (v113)
      {
        break;
      }

      v111[(v112 >> 6) + 8] |= 1 << v112;
      v114 = (v111[6] + 16 * v112);
      *v114 = a2;
      v114[1] = v11;
      v115 = (v111[7] + 16 * v112);
      *v115 = v108;
      v115[1] = v110;
      v116 = v111[2];
      v37 = __OFADD__(v116, 1);
      v117 = v116 + 1;
      if (v37)
      {
        goto LABEL_90;
      }

      v111[2] = v117;

      sub_24A37EF2C(v147, &qword_27EF405D8, &unk_24A4BACF8);

      v148 = v104;
      v119 = *(v104 + 16);
      v118 = *(v104 + 24);
      if (v119 >= v118 >> 1)
      {
        sub_24A3BEBEC((v118 > 1), v119 + 1, 1);
        v104 = v148;
      }

      v24 += 24;
      *(v104 + 16) = v119 + 1;
      *(v104 + 8 * v119 + 32) = v111;
      if (!--v103)
      {
        a2 = v140;
        v102 = v143;
        goto LABEL_82;
      }
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    swift_once();
  }

  v104 = MEMORY[0x277D84F90];
LABEL_82:

  v120 = sub_24A4AB600();
  v121 = sub_24A4ABCE0();

  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v146[0] = v123;
    *v122 = 136315138;
    v124 = sub_24A3C9CEC(&qword_27EF3F4D8, &unk_24A4BAC90);
    v125 = MEMORY[0x24C217E90](v104, v124);
    v127 = v126;

    v128 = sub_24A37BD58(v125, v127, v146);

    *(v122 + 4) = v128;

    _os_log_impl(&dword_24A376000, v120, v121, "FMFDataManager: Locate in progress (out) - %s", v122, 0xCu);
    sub_24A37EEE0(v123);
    MEMORY[0x24C219130](v123, -1, -1);
    MEMORY[0x24C219130](v122, -1, -1);
  }

  else
  {
  }

  v129 = v132;
  v130 = *(a2 + 584);
  *(a2 + 584) = v102;

  *v129 = 1;
  return result;
}

uint64_t sub_24A3BE4BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_24A39B2C8(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_24A4A8628();
      v15 = v23;
      goto LABEL_8;
    }

    sub_24A4A4B74(v20, a6 & 1);
    v24 = *v7;
    v15 = sub_24A39B2C8(a4, a5);
    if ((v21 & 1) != (v25 & 1))
    {
LABEL_16:
      result = sub_24A4AC2B0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v7;
  if (v21)
  {
    v27 = v26[7] + 24 * v15;
    v28 = *(v27 + 8);
    *v27 = a1;
    *(v27 + 8) = a2;
    *(v27 + 16) = a3;
  }

  else
  {
    sub_24A4A8244(v15, a4, a5, a1, a2, a3, v26);
  }
}

uint64_t sub_24A3BE654(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t *, uint64_t, int64_t, uint64_t))
{
  v5 = *(result + 16);
  v6 = *v3;
  v7 = *(*v3 + 16);
  v8 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = a2;
  v10 = result;
  v11 = *v3;
  if (!swift_isUniquelyReferenced_nonNull_native() || (v12 = *(v6 + 24) >> 1, v12 < v8))
  {
    v6 = v4();
    v12 = *(v6 + 24) >> 1;
  }

  v13 = *(v6 + 16);
  v14 = v12 - v13;
  result = a3(&v46, v6 + 24 * v13 + 32, v12 - v13, v10);
  if (result < v5)
  {
    goto LABEL_12;
  }

  v17 = result;
  if (result)
  {
    v18 = *(v6 + 16);
    v19 = __OFADD__(v18, result);
    v20 = v18 + result;
    if (v19)
    {
      __break(1u);
LABEL_16:
      v23 = (v16 + 64) >> 6;
      if (v23 <= v8 + 1)
      {
        v24 = v8 + 1;
      }

      else
      {
        v24 = (v16 + 64) >> 6;
      }

      v25 = v24 - 1;
      do
      {
        v26 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_46:
          __break(1u);
          return result;
        }

        if (v26 >= v23)
        {
          v49 = v25;
          v50 = 0;
          goto LABEL_10;
        }

        v27 = *(v15 + 8 * v26);
        ++v8;
      }

      while (!v27);
      v21 = (v27 - 1) & v27;
      v22 = __clz(__rbit64(v27)) | (v26 << 6);
      v8 = v26;
      goto LABEL_24;
    }

    *(v6 + 16) = v20;
  }

  result = v46;
  if (v17 != v14)
  {
    goto LABEL_10;
  }

LABEL_13:
  v10 = *(v6 + 16);
  v15 = v47;
  v16 = v48;
  v8 = v49;
  v45 = v47;
  v42 = v48;
  if (!v50)
  {
    goto LABEL_16;
  }

  v21 = (v50 - 1) & v50;
  v22 = __clz(__rbit64(v50)) | (v49 << 6);
  v23 = (v48 + 64) >> 6;
LABEL_24:
  v44 = result;
  v28 = *(result + 56) + 24 * v22;
  v30 = *v28;
  v29 = *(v28 + 8);
  v31 = *(v28 + 16);

  v32 = v45;
LABEL_26:
  while (1)
  {
    v33 = *(v6 + 24);
    v34 = v33 >> 1;
    if ((v33 >> 1) < v10 + 1)
    {
      break;
    }

    if (v10 < v34)
    {
      goto LABEL_28;
    }

LABEL_25:
    *(v6 + 16) = v10;
  }

  v40 = (v4)(v33 > 1, v10 + 1, 1, v6);
  v32 = v45;
  v6 = v40;
  v34 = *(v40 + 24) >> 1;
  if (v10 >= v34)
  {
    goto LABEL_25;
  }

LABEL_28:
  v43 = v34;
  while (1)
  {
    v35 = v6 + 32 + 24 * v10;
    *v35 = v30;
    *(v35 + 8) = v29;
    *(v35 + 16) = v31;
    ++v10;
    if (!v21)
    {
      break;
    }

    result = v44;
LABEL_36:
    v38 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v39 = *(result + 56) + 24 * (v38 | (v8 << 6));
    v30 = *v39;
    v29 = *(v39 + 8);
    v31 = *(v39 + 16);

    v32 = v45;
    if (v10 == v43)
    {
      v10 = v43;
      *(v6 + 16) = v43;
      goto LABEL_26;
    }
  }

  v36 = v8;
  result = v44;
  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v37 >= v23)
    {
      break;
    }

    v21 = *(v32 + 8 * v37);
    ++v36;
    if (v21)
    {
      v8 = v37;
      goto LABEL_36;
    }
  }

  if (v23 <= v8 + 1)
  {
    v41 = v8 + 1;
  }

  else
  {
    v41 = v23;
  }

  v48 = v42;
  v49 = v41 - 1;
  v50 = 0;
  *(v6 + 16) = v10;
LABEL_10:
  result = sub_24A3A13C0();
  *v3 = v6;
  return result;
}

char *sub_24A3BE94C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_24A3C9CEC(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_24A3BEA8C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 56) + 24 * (v17 | (v12 << 6));
      v20 = *v18;
      v19 = *(v18 + 8);
      LOBYTE(v18) = *(v18 + 16);
      *v11 = v20;
      *(v11 + 8) = v19;
      *(v11 + 16) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_24A3BEBEC(void *a1, int64_t a2, char a3)
{
  result = sub_24A3BEC2C(a1, a2, a3, *v3, &qword_27EF3F4D0, &qword_24A4B5738, &qword_27EF3F4D8, &unk_24A4BAC90);
  *v3 = result;
  return result;
}

void *sub_24A3BEC2C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_24A3C9CEC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_24A3C9CEC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void sub_24A3BEDCC(int a1)
{
  v2 = v1;
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v12 = sub_24A4AB630();
        sub_24A378E18(v12, qword_27EF4E260);
        v13 = sub_24A4AB600();
        v14 = sub_24A4ABCE0();
        if (!os_log_type_enabled(v13, v14))
        {
          goto LABEL_30;
        }

        v15 = swift_slowAlloc();
        *v15 = 0;
        v16 = "FMFMyLocationController: location manager didChangeAuthorization: NOT DETERMINED";
        v17 = v14;
        v18 = v13;
        v19 = v15;
        v20 = 2;
        goto LABEL_29;
      case 1:
        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v21 = sub_24A4AB630();
        sub_24A378E18(v21, qword_27EF4E260);
        v4 = sub_24A4AB600();
        v5 = sub_24A4ABCE0();
        if (!os_log_type_enabled(v4, v5))
        {
          goto LABEL_24;
        }

        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = "FMFMyLocationController: location manager didChangeAuthorization: RESTRICTED";
        goto LABEL_23;
      case 2:
        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v3 = sub_24A4AB630();
        sub_24A378E18(v3, qword_27EF4E260);
        v4 = sub_24A4AB600();
        v5 = sub_24A4ABCE0();
        if (!os_log_type_enabled(v4, v5))
        {
          goto LABEL_24;
        }

        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = "FMFMyLocationController: location manager didChangeAuthorization: DENIED";
LABEL_23:
        _os_log_impl(&dword_24A376000, v4, v5, v7, v6, 2u);
        MEMORY[0x24C219130](v6, -1, -1);
LABEL_24:

        sub_24A45BD48();
        goto LABEL_31;
    }

LABEL_25:
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v23 = sub_24A4AB630();
    sub_24A378E18(v23, qword_27EF4E260);
    v13 = sub_24A4AB600();
    v24 = sub_24A4ABCE0();
    if (!os_log_type_enabled(v13, v24))
    {
      goto LABEL_30;
    }

    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = a1;
    v16 = "FMFMyLocationController: location manager didChangeAuthorization: UNKNOWN: %d";
    v17 = v24;
    v18 = v13;
    v19 = v15;
    v20 = 8;
LABEL_29:
    _os_log_impl(&dword_24A376000, v18, v17, v16, v19, v20);
    MEMORY[0x24C219130](v15, -1, -1);
LABEL_30:

    goto LABEL_31;
  }

  if ((a1 - 3) > 1)
  {
    goto LABEL_25;
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A4AB630();
  sub_24A378E18(v8, qword_27EF4E260);
  v9 = sub_24A4AB600();
  v10 = sub_24A4ABCE0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24A376000, v9, v10, "FMFMyLocationController: location manager didChangeAuthorization: AUTHORIZED", v11, 2u);
    MEMORY[0x24C219130](v11, -1, -1);
  }

  [*(v2 + OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_locationManager) startUpdatingLocation];
LABEL_31:
  v25 = objc_opt_self();
  v26 = [*(v2 + OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_locationManager) accuracyAuthorization] != 0;
  v27 = sub_24A4AB820();
  v28 = sub_24A4AB820();
  [v25 setBool:v26 forKey:v27 inDomain:v28];
}

uint64_t sub_24A3BF2E0(unint64_t a1)
{
  v4 = v1;
  v6 = sub_24A4AAB20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v11 = sub_24A4AB630();
  sub_24A378E18(v11, qword_27EF4E260);

  v12 = sub_24A4AB600();
  v13 = sub_24A4ABCE0();

  v14 = a1 >> 62;
  if (!os_log_type_enabled(v12, v13))
  {

    goto LABEL_14;
  }

  v2 = swift_slowAlloc();
  v3 = swift_slowAlloc();
  v43 = v3;
  *v2 = 136315138;
  if (v14)
  {
    goto LABEL_25;
  }

  for (result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; result = sub_24A4AC060())
  {
    v39 = v7;
    v40 = v6;
    v38 = v4;
    if (!result)
    {
      v19 = 0;
      v21 = 0;
      goto LABEL_13;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x24C218380](0, a1);
      goto LABEL_10;
    }

    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v16 = *(a1 + 32);
LABEL_10:
    v17 = v16;
    v18 = [v16 debugDescription];

    v19 = sub_24A4AB850();
    v21 = v20;

LABEL_13:
    v41 = v19;
    v42 = v21;
    sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
    v22 = sub_24A4AB870();
    v24 = sub_24A37BD58(v22, v23, &v43);

    *(v2 + 4) = v24;
    _os_log_impl(&dword_24A376000, v12, v13, "FMFMyLocationController: location manager didUpdateLocations: %s", v2, 0xCu);
    sub_24A37EEE0(v3);
    MEMORY[0x24C219130](v3, -1, -1);
    MEMORY[0x24C219130](v2, -1, -1);

    v7 = v39;
    v6 = v40;
    v4 = v38;
LABEL_14:
    if (v14)
    {
      result = sub_24A4AC060();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x24C218380](0, a1);
      goto LABEL_19;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v25 = *(a1 + 32);
LABEL_19:
      v26 = v25;
      v27 = swift_allocObject();
      *(v27 + 16) = v4;
      *(v27 + 24) = v26;
      v28 = v26;
      v29 = v4;
      sub_24A4AAB10();
      v30 = sub_24A4AAAF0();
      v32 = v31;
      (*(v7 + 8))(v10, v6);
      type metadata accessor for FMLocationShiftingRequest();
      v33 = swift_allocObject();
      v33[2] = v28;
      v33[3] = v30;
      v33[4] = v32;
      v34 = *&v29[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_locationShifter];
      sub_24A3C9CEC(&unk_27EF403B0, &qword_24A4BA190);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_24A4BB800;
      *(v35 + 32) = v33;
      v36 = swift_allocObject();
      v36[2] = v28;
      v36[3] = sub_24A45C7D0;
      v36[4] = v27;
      v37 = v28;

      sub_24A3BBAB0(v35, sub_24A3C2190, v36);
    }

    __break(1u);
LABEL_25:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A3BF734()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A3BF778@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a2;
  v23 = a6;
  v10 = sub_24A4ABDF0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  if (*a4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = *a5;
  if (*(*a5 + 16) && (v16 = sub_24A3AE6B8(a1), (v17 & 1) != 0))
  {
    sub_24A37EE84(*(v15 + 56) + 32 * v16, v24);
  }

  else
  {
    memset(v24, 0, sizeof(v24));
  }

  swift_endAccess();
  sub_24A3C9CEC(&qword_27EF3F808, &unk_24A4BA6D0);
  v18 = swift_dynamicCast();
  v19 = *(a3 - 8);
  v20 = *(v19 + 56);
  if (v18)
  {
    v20(v14, 0, 1, a3);
    return (*(v19 + 32))(v23, v14, a3);
  }

  else
  {
    v20(v14, 1, 1, a3);
    (*(v11 + 8))(v14, v10);
    return (*(v19 + 16))(v23, v22, a3);
  }
}

uint64_t sub_24A3BF9A8(char *a1)
{
  v1 = *a1;
  if (qword_27EF3EC08 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  return sub_24A4ABD70();
}

uint64_t sub_24A3BFACC(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connection))
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connection + 8);
    v3 = *(result + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connection);
    ObjectType = swift_getObjectType();
    sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_24A4B4E10;
    v6 = *(v1 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topic);
    v7 = *(v1 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topic + 8);
    *(v5 + 32) = v6;
    *(v5 + 40) = v7;
    v8 = *(v2 + 32);
    swift_unknownObjectRetain();

    v8(v5, ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24A3BFBD8(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_24A4ABA50();
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v1 setEnabledTopics_];
}

uint64_t sub_24A3BFC44()
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A4AB630();
  sub_24A378E18(v1, qword_27EF4E260);
  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A376000, v2, v3, "FMFSecureLocationCtrl: start refreshing", v4, 2u);
    MEMORY[0x24C219130](v4, -1, -1);
  }

  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[14];
  v8 = v0[15];

  (*(v8 + 104))(v6, *MEMORY[0x277D09048], v7);
  sub_24A4AADF0();
  v9 = sub_24A4AB3B0();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = *(MEMORY[0x277D09498] + 4);
  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v0;
  v13[1] = sub_24A3F5FA4;
  v14 = v0[17];

  return MEMORY[0x28215FBB8](v14);
}

uint64_t sub_24A3BFDF0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v4 = *(type metadata accessor for FMFFriend() - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = *(*(sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = sub_24A4AAD40();
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();
  v10 = sub_24A4AAD70();
  v2[14] = v10;
  v11 = *(v10 - 8);
  v2[15] = v11;
  v12 = *(v11 + 64) + 15;
  v2[16] = swift_task_alloc();
  v13 = *(*(sub_24A4AADE0() - 8) + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3BFC44, v1, 0);
}

uint64_t sub_24A3C0000()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 208);
  *(v0 + 40) = v2;
  if (v2)
  {
    v3 = *(*(v1 + 88) + 56);

    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    sub_24A4ABD70();

    v4 = *(v0 + 16);
    *(v0 + 48) = v4;
    v5 = swift_task_alloc();
    *(v0 + 56) = v5;
    *v5 = v0;
    v5[1] = sub_24A434C0C;

    return sub_24A3BFDF0(v4);
  }

  else
  {
    **(v0 + 24) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_24A3C0160()
{
  v112 = v0;
  v1 = v0[5];
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = v0[19];
    v3 = v0[20];
    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v6 = *(v3 + 72);
    v7 = v1 + v5;
    v107 = MEMORY[0x277D84F90];
    do
    {
      v8 = v0[24];
      sub_24A3A0ADC(v7, v8);
      v9 = v0[24];
      if ((*(v8 + *(v4 + 36)) & 2) != 0)
      {
        sub_24A39976C(v9, v0[22], type metadata accessor for FMFFriend);
        v10 = v107;
        v111 = v107;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24A39E574(0, *(v107 + 16) + 1, 1);
          v10 = v111;
        }

        v12 = *(v10 + 16);
        v11 = *(v10 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_24A39E574(v11 > 1, v12 + 1, 1);
          v10 = v111;
        }

        v13 = v0[22];
        *(v10 + 16) = v12 + 1;
        v107 = v10;
        sub_24A39976C(v13, v10 + v5 + v12 * v6, type metadata accessor for FMFFriend);
      }

      else
      {
        sub_24A39A638(v9, type metadata accessor for FMFFriend);
      }

      v7 += v6;
      --v2;
    }

    while (v2);
  }

  else
  {
    v107 = MEMORY[0x277D84F90];
  }

  v14 = *(v107 + 16);
  v109 = v14;
  if (!v14)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_30:
    v0[25] = v18;
    if (qword_27EF3EBF8 != -1)
    {
      goto LABEL_65;
    }

    goto LABEL_31;
  }

  v104 = v0[23];
  v15 = v0[20];
  v16 = v107 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = *(v15 + 72);
  v18 = MEMORY[0x277D84F90];
  while (1)
  {
    v19 = v0[23];
    sub_24A3A0ADC(v16, v19);
    v20 = sub_24A3F5BAC(*(v104 + 32));
    sub_24A39A638(v19, type metadata accessor for FMFFriend);
    v21 = *(v20 + 16);
    v22 = v18[2];
    v23 = v22 + v21;
    if (__OFADD__(v22, v21))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v23 <= v18[3] >> 1)
    {
      if (*(v20 + 16))
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v22 <= v23)
      {
        v25 = v22 + v21;
      }

      else
      {
        v25 = v22;
      }

      v18 = sub_24A3C0C78(isUniquelyReferenced_nonNull_native, v25, 1, v18);
      if (*(v20 + 16))
      {
LABEL_25:
        v26 = (v18[3] >> 1) - v18[2];
        v27 = *(sub_24A4AB220() - 8);
        if (v26 < v21)
        {
          goto LABEL_62;
        }

        v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
        v29 = *(v27 + 72);
        swift_arrayInitWithCopy();

        if (v21)
        {
          v30 = v18[2];
          v31 = __OFADD__(v30, v21);
          v32 = v30 + v21;
          if (v31)
          {
            goto LABEL_63;
          }

          v18[2] = v32;
        }

        goto LABEL_15;
      }
    }

    if (v21)
    {
      goto LABEL_60;
    }

LABEL_15:
    v16 += v17;
    if (!--v14)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  swift_once();
LABEL_31:
  v33 = sub_24A4AB630();
  sub_24A378E18(v33, qword_27EF4E260);

  v34 = sub_24A4AB600();
  v35 = sub_24A4ABCE0();
  v105 = v0;
  v98 = v18;
  if (os_log_type_enabled(v34, v35))
  {
    v36 = v0[18];
    v38 = v0[15];
    v37 = v0[16];
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v111 = v40;
    *v39 = 134218242;
    *(v39 + 4) = v18[2];

    *(v39 + 12) = 2080;
    (*(v37 + 104))(v36, *MEMORY[0x277D08FE0], v38);
    sub_24A4069B8(&qword_27EF3FA08, MEMORY[0x277D08FF0]);
    v41 = sub_24A4AC240();
    v43 = v42;
    (*(v37 + 8))(v36, v38);
    v44 = sub_24A37BD58(v41, v43, &v111);

    *(v39 + 14) = v44;
    _os_log_impl(&dword_24A376000, v34, v35, "FMFSecureLocationCtrl: setup location stream for: %ld friends, mode: %s", v39, 0x16u);
    sub_24A37EEE0(v40);
    MEMORY[0x24C219130](v40, -1, -1);
    MEMORY[0x24C219130](v39, -1, -1);
  }

  else
  {
  }

  v45 = v109;
  v46 = v0;
  if (v109)
  {
    v47 = v0[20];
    v102 = v0[21];
    v48 = v0[6];
    v49 = v107 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
    v100 = *(v47 + 72);
    do
    {
      v109 = v45;
      v58 = v46[21];
      sub_24A3A0ADC(v49, v58);
      v59 = *v58;
      v60 = *(v102 + 8);
      v18 = *(v102 + 32);
      swift_beginAccess();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v61 = v48[15];
      v62 = swift_isUniquelyReferenced_nonNull_native();
      v111 = v48[15];
      v63 = v111;
      v0 = v48;
      v48[15] = 0x8000000000000000;
      v65 = sub_24A39B2C8(v59, v60);
      v66 = v63[2];
      v67 = (v64 & 1) == 0;
      v68 = v66 + v67;
      if (__OFADD__(v66, v67))
      {
        goto LABEL_61;
      }

      v69 = v64;
      if (v63[3] >= v68)
      {
        if (v62)
        {
          if (v64)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_24A4A863C();
          v63 = v111;
          if (v69)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        sub_24A4A4B88(v68, v62);
        v63 = v111;
        v70 = sub_24A39B2C8(v59, v60);
        if ((v69 & 1) != (v71 & 1))
        {

          return sub_24A4AC2B0();
        }

        v65 = v70;
        if (v69)
        {
LABEL_36:
          v50 = v63[7] + 32 * v65;
          v51 = *(v50 + 8);
          v52 = *(v50 + 16);
          *v50 = v59;
          *(v50 + 8) = v60;
          *(v50 + 16) = v18;
          *(v50 + 24) = 0;
          *(v50 + 26) = 0;

          goto LABEL_37;
        }
      }

      v63[(v65 >> 6) + 8] |= 1 << v65;
      v72 = (v63[6] + 16 * v65);
      *v72 = v59;
      v72[1] = v60;
      v73 = v63[7] + 32 * v65;
      *v73 = v59;
      *(v73 + 8) = v60;
      *(v73 + 16) = v18;
      *(v73 + 24) = 0;
      *(v73 + 26) = 0;
      v74 = v63[2];
      v31 = __OFADD__(v74, 1);
      v75 = v74 + 1;
      if (v31)
      {
        goto LABEL_64;
      }

      v63[2] = v75;

LABEL_37:
      v46 = v105;
      v53 = v105[21];
      v54 = v105[8];
      v55 = v105[6];
      v0[15] = v63;
      swift_endAccess();

      v56 = sub_24A4AAAD0();
      (*(*(v56 - 8) + 56))(v54, 1, 1, v56);
      sub_24A4244D4(v59, v60, v54, 0);
      v57 = v54;
      v48 = v0;
      sub_24A37EF2C(v57, &qword_27EF3F460, &unk_24A4B53B0);
      sub_24A39A638(v53, type metadata accessor for FMFFriend);
      v49 += v100;
      v45 = v109 - 1;
    }

    while (v109 != 1);
  }

  v76 = *(v46[6] + 112);
  v46[26] = v76;
  v77 = v46;
  if (v76)
  {
    (*(v46[16] + 104))(v46[17], *MEMORY[0x277D08FE0], v46[15]);
    v78 = *(MEMORY[0x277D093F0] + 4);

    v79 = swift_task_alloc();
    v46[27] = v79;
    *v79 = v46;
    v79[1] = sub_24A3FA428;
    v80 = v46[17];
    v81 = v46[10];

    return MEMORY[0x28215FB18](v81, v98, v80, 1);
  }

  else
  {

    v96 = v46[24];
    v97 = v46[23];
    v99 = v46[22];
    v101 = v46[21];
    v103 = v46[18];
    v106 = v46[17];
    v82 = v46[13];
    v83 = v77[14];
    v85 = v77[11];
    v84 = v77[12];
    v86 = v77[7];
    v108 = v77[10];
    v110 = v77[8];
    v87 = v77[6];
    v88 = sub_24A3C9CEC(&qword_27EF3FA48, &qword_24A4B72C0);
    (*(*(v88 - 8) + 56))(v83, 1, 1, v88);
    v89 = sub_24A4ABB70();
    (*(*(v89 - 8) + 56))(v86, 1, 1, v89);
    sub_24A37B740(v83, v82, &qword_27EF3FA30, &qword_24A4B72A8);
    v90 = sub_24A4069B8(&qword_27EF3FA50, type metadata accessor for FMFSecureLocationController);
    v91 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    v92 = (v84 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
    v93 = swift_allocObject();
    *(v93 + 16) = v87;
    *(v93 + 24) = v90;
    sub_24A37BE24(v82, v93 + v91, &qword_27EF3FA30, &qword_24A4B72A8);
    *(v93 + v92) = v87;
    swift_retain_n();
    sub_24A432D64(0, 0, v86, &unk_24A4B72D0, v93);

    sub_24A37EF2C(v83, &qword_27EF3FA30, &qword_24A4B72A8);

    v94 = v77[1];

    return v94();
  }
}

size_t sub_24A3C0C34(size_t a1, int64_t a2, char a3)
{
  result = sub_24A39E398(a1, a2, a3, *v3, &qword_27EF3F4A8, &unk_24A4B6910, MEMORY[0x277D092D8]);
  *v3 = result;
  return result;
}

uint64_t sub_24A3C0CA0(void *a1, void *a2, char a3)
{
  v7 = sub_24A4AB690();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24A4AB6E0();
  v12 = *(v23 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v23);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&v3[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_myLocationUpdatingQueue];
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = v3;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  aBlock[4] = sub_24A45C7D8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8A2F0;
  v17 = _Block_copy(aBlock);
  v18 = v3;
  v19 = a1;
  v20 = a2;
  sub_24A4AB6B0();
  v24 = MEMORY[0x277D84F90];
  sub_24A37EF8C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v15, v11, v17);
  _Block_release(v17);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v23);
}

uint64_t sub_24A3C0F78()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A3C0FC0()
{
  v1 = v0[2];
  v2 = v0[4];
  if (v0[3])
  {
    v3 = v0[3];
  }

  else
  {
    v3 = v0[4];
  }

  v4 = v0[2];
  return sub_24A3C0CA0(v3, v2, 0);
}

uint64_t sub_24A3C0FFC(void *a1, void *a2, void *a3)
{
  v6 = sub_24A4AB690();
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24A4AB6E0();
  v10 = *(v21 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v21);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
  v14 = sub_24A4ABD60();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a1;
  v15[4] = a3;
  aBlock[4] = sub_24A3C0FC0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8A2A0;
  v16 = _Block_copy(aBlock);
  v17 = a1;
  v18 = a3;
  v19 = a2;

  sub_24A4AB6B0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24A37EF8C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v13, v9, v16);
  _Block_release(v16);

  (*(v22 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v21);
}

uint64_t sub_24A3C12F0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_24A3C1340(uint64_t a1)
{
  v2 = sub_24A4AB710();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v7 = sub_24A4AB630();
  sub_24A378E18(v7, qword_27EF4E260);
  v8 = sub_24A4AB600();
  v9 = sub_24A4ABCE0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_24A376000, v8, v9, "FMFRefreshController: refreshTimerFired", v10, 2u);
    MEMORY[0x24C219130](v10, -1, -1);
  }

  v11 = *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshQueue);
  *v6 = v11;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v12 = v11;
  LOBYTE(v11) = sub_24A4AB730();
  v13 = (*(v3 + 8))(v6, v2);
  if (v11)
  {
    v14 = MEMORY[0x24C2189A0](v13);
    sub_24A3C1548(a1, sub_24A3D2718, 0);
    objc_autoreleasePoolPop(v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24A3C1548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v40 - v8;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A4AB630();
  sub_24A378E18(v10, qword_27EF4E260);
  v11 = sub_24A4AB600();
  v12 = sub_24A4ABCE0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_24A376000, v11, v12, "FMFRefreshController: sending refreshClient request…", v13, 2u);
    MEMORY[0x24C219130](v13, -1, -1);
  }

  v14 = *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshReason);
  v15 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_selectedFriend;
  swift_beginAccess();
  sub_24A3A4548(a1 + v15, v9);
  v16 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_tapContexts;
  swift_beginAccess();
  v17 = *(a1 + v16);
  v18 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_liveSessionStatistics;
  swift_beginAccess();
  v19 = *(a1 + v18);
  v20 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_legacyFallbackData;
  swift_beginAccess();
  v21 = *(a1 + v20);
  refreshed = type metadata accessor for FMFInitRefreshClientRequest();
  v23 = *(refreshed + 48);
  v24 = *(refreshed + 52);
  v25 = swift_allocObject();
  sub_24A3A4548(v9, v25 + qword_27EF4E2F0);
  *(v25 + qword_27EF4E2F8) = v17;
  *(v25 + qword_27EF4E300) = v19;
  *(v25 + qword_27EF4E308) = v21;
  v26 = (v25 + qword_27EF4E310);
  v27 = MEMORY[0x277D84F90];
  *v26 = MEMORY[0x277D84F90];
  v26[1] = v27;
  v26[2] = v27;
  *(v25 + qword_27EF4E318) = 0;
  v28 = type metadata accessor for FMFFriend();
  if ((*(*(v28 - 8) + 48))(v9, 1, v28) != 1)
  {
    if (v14 == 2)
    {

      v30 = 0x800000024A4AF570;
      v29 = 0xD000000000000017;
      goto LABEL_13;
    }

    v41 = 0;
    v42 = 0xE000000000000000;

    sub_24A4ABF50();
    v43 = v14 & 1;
    sub_24A4AC030();
    v31 = 0xD000000000000018;
    v32 = 0x800000024A4AF590;
LABEL_12:
    MEMORY[0x24C217D50](v31, v32);
    v29 = v41;
    v30 = v42;
    goto LABEL_13;
  }

  if (v14 != 2)
  {
    v41 = 0;
    v42 = 0xE000000000000000;

    sub_24A4ABF50();
    v43 = v14 & 1;
    sub_24A4AC030();
    v31 = 0x687365726665722FLL;
    v32 = 0xEE00746E65696C43;
    goto LABEL_12;
  }

  v29 = 0x4368736572666572;
  v30 = 0xED0000746E65696CLL;
LABEL_13:
  v33 = sub_24A3A45B8(v29, v30);
  sub_24A37EF2C(v9, &qword_27EF3F2D0, &qword_24A4B4F50);
  v34 = *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_interactionController + 24);
  v35 = *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_interactionController + 32);
  sub_24A37EACC((a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_interactionController), v34);
  v36 = swift_allocObject();
  v36[2] = a2;
  v36[3] = a3;
  v36[4] = a1;
  v37 = *(v35 + 64);
  v38 = type metadata accessor for FMFInitRefreshClientResponse();

  v37(v33, sub_24A3D582C, v36, v38, v34, v35);
}

uint64_t sub_24A3C1A58()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A3C1AA8(uint64_t a1)
{
  v2 = sub_24A3C1E10();

  return MEMORY[0x2821FE718](a1, v2);
}

unint64_t sub_24A3C1AE4(char a1)
{
  result = 0x7972746E756F63;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x437972746E756F63;
      break;
    case 3:
      result = 0x614E746565727473;
      break;
    case 4:
      result = 0x6441746565727473;
      break;
    case 5:
      result = 0x7974696C61636F6CLL;
      break;
    case 6:
      result = 0x646F436574617473;
      break;
    case 7:
      result = 0x6F436C6174736F70;
      break;
    case 8:
      result = 0x6B72616D646E616CLL;
      break;
    case 9:
    case 16:
    case 18:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x6E49664F61657261;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0xD000000000000013;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FMFAddress.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A3C1E10()
{
  result = qword_27EF40D70;
  if (!qword_27EF40D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40D70);
  }

  return result;
}

uint64_t sub_24A3C1E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24A4AB690();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24A4AB6E0();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v4 + qword_27EF407B0);
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = sub_24A45AB28;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8A0C0;
  v18 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v22 = MEMORY[0x277D84F90];
  sub_24A37F064(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v16, v12, v18);
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v21);
}

uint64_t sub_24A3C2148()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_24A3C21A0(unint64_t a1, void *a2, void (*a3)(void *))
{
  if (a1 >> 62)
  {
    v5 = a1;
    v6 = a2;
    v7 = sub_24A4AC060();
    a2 = v6;
    v8 = v7;
    a1 = v5;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = a2;
    goto LABEL_8;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = *(MEMORY[0x24C218380](0, a1) + 16);
    swift_unknownObjectRelease();
    v9 = v10;
    goto LABEL_9;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v4 = *(*(a1 + 32) + 16);
LABEL_8:
  v9 = v4;
LABEL_9:
  v11 = v9;
  a3(v9);
}

id sub_24A3C22A0(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v55 = a5;
  v56 = a2;
  v8 = type metadata accessor for FMFLocation();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v54 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v53 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v51 = &v51 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v51 - v18;
  v20 = a1;
  if (!a1)
  {
    v20 = a3;
  }

  memcpy(v59, (a4 + 16), 0x130uLL);
  v21 = *(a4 + 336);
  v22 = *(a4 + 344);
  v23 = *(a4 + 352);
  *(v19 + 3) = 0;
  v19[32] = 1;
  v24 = v8[8];
  v25 = sub_24A4AAB20();
  (*(*(v25 - 8) + 56))(&v19[v24], 1, 1, v25);
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 0;
  memcpy(v63, v59, 0x130uLL);
  v63[38] = v20;
  LOBYTE(v63[39]) = 0;
  *(&v63[39] + 1) = *v62;
  HIDWORD(v63[39]) = *&v62[3];
  v63[40] = v21;
  v63[41] = v22;
  LOWORD(v63[42]) = v23;
  *(&v63[42] + 2) = v60;
  HIWORD(v63[42]) = v61;
  v63[43] = 0;
  LOBYTE(v63[44]) = 0;
  nullsub_1(v63);
  memcpy(&v19[v8[11]], v63, 0x161uLL);
  v19[33] = 0;
  v19[v8[9]] = 0;
  v19[v8[10]] = 0;
  v52 = v9;
  (*(v9 + 56))(v19, 0, 1, v8);
  v26 = OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_myLocation;
  v27 = v56;
  swift_beginAccess();
  v28 = a1;
  sub_24A37B740(v59, v57, &unk_27EF404E0, &unk_24A4B5230);

  sub_24A3C28C8(v19, v27 + v26);
  swift_endAccess();
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v29 = sub_24A4AB630();
  sub_24A378E18(v29, qword_27EF4E260);
  v30 = v27;
  v31 = sub_24A4AB600();
  v32 = sub_24A4ABCE0();

  v33 = os_log_type_enabled(v31, v32);
  v34 = v54;
  if (v33)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v58 = v36;
    *v35 = 136315138;
    v37 = v27 + v26;
    v38 = v51;
    sub_24A37B740(v37, v51, &qword_27EF3F480, &unk_24A4B8C20);
    if ((*(v52 + 48))(v38, 1, v8))
    {
      v39 = 7104878;
      sub_24A3C29F0(v38);
    }

    else
    {
      sub_24A3B4B10(v38, v34);
      sub_24A3C29F0(v38);
      memcpy(v57, (v34 + v8[11]), 0x161uLL);
      if (sub_24A3B9C24(v57) != 1)
      {
        v48 = v57[38];
        sub_24A3B4B74(v34);
        v49 = [v48 description];

        v39 = sub_24A4AB850();
        v40 = v50;

        goto LABEL_11;
      }

      v39 = 7104878;
      sub_24A3B4B74(v34);
    }

    v40 = 0xE300000000000000;
LABEL_11:
    v27 = v56;
    v41 = sub_24A37BD58(v39, v40, &v58);

    *(v35 + 4) = v41;
    _os_log_impl(&dword_24A376000, v31, v32, "FMFMyLocationController: Updated server adjusted location to %s", v35, 0xCu);
    sub_24A37EEE0(v36);
    MEMORY[0x24C219130](v36, -1, -1);
    MEMORY[0x24C219130](v35, -1, -1);
  }

  v42 = &v30[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v43 = *(v42 + 1);
    ObjectType = swift_getObjectType();
    v45 = v27 + v26;
    v46 = v53;
    sub_24A37B740(v45, v53, &qword_27EF3F480, &unk_24A4B8C20);
    (*(v43 + 8))(v46, ObjectType, v43);
    swift_unknownObjectRelease();
    sub_24A3C29F0(v46);
  }

  return [v55 signal];
}

uint64_t sub_24A3C2838(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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
      *(result + 168) = (a2 - 1);
      return result;
    }

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A3C28C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A3C2938(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24A3C2950(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 353) = 1;
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
      *(result + 304) = (a2 - 1);
      return result;
    }

    *(result + 353) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A3C29F0(uint64_t a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A3C2A58(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v4 + 88))(v1, a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t FMFLocation.debugDescription.getter()
{
  v1 = v0;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v43 = 0xD00000000000001ALL;
  v44 = 0x800000024A4AFFF0;
  if (v0[1])
  {
    v2 = *v0;
    v3 = v0[1];
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x24C217D50](v2, v3);

  MEMORY[0x24C217D50](0x3A6C6562616C202CLL, 0xEA00000000002720);
  v4 = type metadata accessor for FMFLocation();
  v5 = v4[11];
  memcpy(__dst, v0 + v5, 0x161uLL);
  if (sub_24A3B9C24(__dst) == 1 || (v6 = __dst[41]) == 0)
  {
    v12 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    v7 = __dst[40];
    v8 = sub_24A4AB880();
    v10 = v9;

    v11._countAndFlagsBits = v8;
    v11._object = v10;
    FMFDefaultLabel.init(rawValue:)(v11);
    if (LOBYTE(v39[0]) == 5)
    {
      v12 = v7;
    }

    else
    {
      v32 = FMFDefaultLabel.localizedLabel.getter();
      v34 = v33;

      v12 = v32;
      v6 = v34;
    }
  }

  MEMORY[0x24C217D50](v12, v6);

  MEMORY[0x24C217D50](2108455, 0xE300000000000000);
  v14 = v43;
  v13 = v44;
  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v40 = 0x676E697461636F6CLL;
  v41 = 0xEA0000000000203ALL;
  if (*(v1 + 16))
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (*(v1 + 16))
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v15, v16);

  MEMORY[0x24C217D50](0x656372756F73202CLL, 0xEA0000000000203ALL);
  LOBYTE(v39[0]) = *(v1 + 33);
  v17 = sub_24A4AB870();
  MEMORY[0x24C217D50](v17);

  MEMORY[0x24C217D50](8236, 0xE200000000000000);

  MEMORY[0x24C217D50](v40, v41);

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v37 = 0x6E6F697461636F6CLL;
  v38 = 0xEA0000000000203ALL;
  memcpy(v39, v1 + v5, 0x161uLL);
  memcpy(v36, v1 + v5, 0x161uLL);
  sub_24A37B740(v39, v35, &qword_27EF3F840, &qword_24A4B6598);
  sub_24A3C9CEC(&qword_27EF3F840, &qword_24A4B6598);
  v18 = sub_24A4AB870();
  MEMORY[0x24C217D50](v18);

  MEMORY[0x24C217D50](0x6E6F69746F6D202CLL, 0xEA0000000000203ALL);
  v19 = 0;
  if ((v1[4] & 1) == 0)
  {
    v19 = v1[3];
  }

  v36[0] = v19;
  v20 = sub_24A4AC240();
  MEMORY[0x24C217D50](v20);

  MEMORY[0x24C217D50](8236, 0xE200000000000000);
  v21 = v37;
  v22 = v38;
  v36[0] = v14;
  v36[1] = v13;

  MEMORY[0x24C217D50](v21, v22);

  v24 = v36[0];
  v23 = v36[1];
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  sub_24A4ABF50();

  strcpy(v36, "livePending: ");
  HIWORD(v36[1]) = -4864;
  if (*(v1 + v4[9]))
  {
    v25 = 1702195828;
  }

  else
  {
    v25 = 0x65736C6166;
  }

  if (*(v1 + v4[9]))
  {
    v26 = 0xE400000000000000;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v25, v26);

  MEMORY[0x24C217D50](0x61506576696C202CLL, 0xEE00203A64657375);
  if (*(v1 + v4[10]))
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (*(v1 + v4[10]))
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v27, v28);

  v29 = v36[0];
  v30 = v36[1];
  v36[0] = v24;
  v36[1] = v23;

  MEMORY[0x24C217D50](v29, v30);

  MEMORY[0x24C217D50](62, 0xE100000000000000);

  return v36[0];
}

uint64_t sub_24A3C3038()
{
  v1 = sub_24A4AAAD0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v41, v0, 0x130uLL);
  v6 = *(v0 + 304);
  v36 = *(v0 + 312);
  v37 = *(v0 + 344);
  sub_24A3C9CEC(&qword_27EF3F360, &qword_24A4BA1B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24A4B5060;
  sub_24A3C34E4(v41, v40);

  [v6 coordinate];
  v8 = MEMORY[0x277D839F8];
  v9 = MEMORY[0x277D83A80];
  *(v7 + 56) = MEMORY[0x277D839F8];
  *(v7 + 64) = v9;
  *(v7 + 32) = v10;
  [v6 coordinate];
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 72) = v11;
  [v6 horizontalAccuracy];
  *(v7 + 136) = v8;
  *(v7 + 144) = v9;
  *(v7 + 112) = v12;
  v13 = sub_24A4AB860();
  v40[0] = 0xD000000000000014;
  v40[1] = 0x800000024A4AF7A0;
  MEMORY[0x24C217D50](v13);

  MEMORY[0x24C217D50](8236, 0xE200000000000000);
  v14 = v40[0];
  v15 = v40[1];
  v40[0] = 0x6D617473656D6974;
  v40[1] = 0xEB00000000203A70;
  v16 = [v6 timestamp];
  sub_24A4AAAA0();

  sub_24A3819E8(&qword_27EF3F368, MEMORY[0x277CC9578]);
  v17 = sub_24A4AC240();
  v19 = v18;
  (*(v2 + 8))(v5, v1);
  MEMORY[0x24C217D50](v17, v19);

  v20 = v40[0];
  v21 = v40[1];
  v40[0] = v14;
  v40[1] = v15;

  MEMORY[0x24C217D50](v20, v21);

  v22 = v40[0];
  v23 = v40[1];
  v40[0] = 0;
  v40[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v40[0] = 0xD000000000000012;
  v40[1] = 0x800000024A4AF7C0;
  if (v36)
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (v36)
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v24, v25);

  MEMORY[0x24C217D50](8236, 0xE200000000000000);
  v26 = v40[0];
  v27 = v40[1];
  v40[0] = v22;
  v40[1] = v23;

  MEMORY[0x24C217D50](v26, v27);

  v29 = v40[0];
  v28 = v40[1];
  v40[0] = 0;
  v40[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v38 = 0x3A73736572646461;
  v39 = 0xE900000000000020;
  memcpy(v40, v41, sizeof(v40));
  sub_24A3C9CEC(&unk_27EF404E0, &unk_24A4B5230);
  v30 = sub_24A4AB870();
  MEMORY[0x24C217D50](v30);

  MEMORY[0x24C217D50](0xD000000000000012, 0x800000024A4AF7E0);
  v40[0] = v37;
  sub_24A3C9CEC(&qword_27EF3F330, &qword_24A4B5248);
  v31 = sub_24A4AB870();
  MEMORY[0x24C217D50](v31);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  v32 = v38;
  v33 = v39;
  v40[0] = v29;
  v40[1] = v28;

  MEMORY[0x24C217D50](v32, v33);

  return v40[0];
}

uint64_t sub_24A3C34E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&unk_27EF404E0, &unk_24A4B5230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t FMFAddress.debugDescription.getter()
{
  v1 = *v0;

  sub_24A4ABF50();

  sub_24A3C9CEC(&qword_27EF3F3E0, &qword_24A4B54A0);
  v2 = sub_24A4AB870();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  return 0xD000000000000016;
}

uint64_t FMLocationShiftingRequest.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_24A3C3654()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A3C3694()
{
  memcpy(__dst, (v0 + 16), 0x161uLL);
  sub_24A3C36E0(__dst);
  return swift_deallocClassInstance();
}

void *sub_24A3C3758@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24A3C3770@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_24A4AB850();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_24A3C37E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 40);
  v6 = sub_24A3C9CEC(&qword_27EF3EF80, &qword_24A4B40D8);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24A3C3868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 40);
  v7 = sub_24A3C9CEC(&qword_27EF3EF80, &qword_24A4B40D8);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_24A3C38F0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C3954()
{
  v1 = *(v0 + 24);

  sub_24A37EEE0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24A3C399C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  sub_24A37EEE0((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24A3C39EC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A3C3A64()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A3C3AF4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C3B2C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v16 = sub_24A3C9CEC(&qword_27EF3F7A0, &qword_24A4B6430);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[10];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_24A3C3CD4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5] + 8) = a2;
    return result;
  }

  v13 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = sub_24A3C9CEC(&qword_27EF3F7A0, &qword_24A4B6430);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_24A3C3EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_24A4AAAD0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24A3C3F74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
  }

  else
  {
    v7 = sub_24A4AAAD0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A3C4014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24A3C40D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
  }

  else
  {
    v7 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A3C417C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A3C41C4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C41FC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 67, 7);
}

uint64_t sub_24A3C424C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  if (v0[8])
  {

    v4 = v0[9];
  }

  return MEMORY[0x2821FE8E8](v0, 83, 7);
}

uint64_t sub_24A3C42CC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A3C4358()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A3C4390()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C43C8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A3C4410()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A3C44CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A3C451C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C4554()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C458C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24A3C45FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  if (*(v0 + 56))
  {
    v5 = *(v0 + 64);
  }

  v6 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24A3C466C()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A3C46BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A3C4714()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  if (v0[5])
  {
    v4 = v0[6];
  }

  v5 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A3C4774()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24A3C47DC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A3C4830()
{
  v1 = type metadata accessor for FMFLocation();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v67 = *(*(v1 - 8) + 64);
  v65 = (v67 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v3;
  v5 = *(v0 + v3 + 8);

  v6 = *(v1 + 32);
  v7 = sub_24A4AAB20();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v10 = (v2 + 16 + v66) & ~v2;
  v11 = (v4 + *(v1 + 44));
  v12 = v11[38];
  if (v12)
  {
    if (v11[21])
    {
      v13 = *v11;

      v14 = v11[2];

      v15 = v11[4];

      v16 = v11[6];

      v17 = v11[8];

      v18 = v11[10];

      v19 = v11[12];

      v20 = v11[14];

      v21 = v11[16];

      v22 = v11[18];

      v23 = v11[20];

      v24 = v11[21];

      v25 = v11[23];

      v26 = v11[25];

      v27 = v11[27];

      v28 = v11[29];

      v29 = v11[31];

      v30 = v11[33];

      v31 = v11[35];

      v32 = v11[37];

      v12 = v11[38];
    }

    v33 = v11[41];

    v34 = v11[43];
  }

  v35 = *(v0 + v65);

  v36 = *(v0 + v66 + 8);

  v37 = v0 + v10;
  v38 = *(v0 + v10 + 8);

  v39 = *(v1 + 32);
  if (!v9(v0 + v10 + v39, 1, v7))
  {
    (*(v8 + 8))(v37 + v39, v7);
  }

  v40 = (v37 + *(v1 + 44));
  v41 = v40[38];
  if (v41)
  {
    if (v40[21])
    {
      v42 = *v40;

      v43 = v40[2];

      v44 = v40[4];

      v45 = v40[6];

      v46 = v40[8];

      v47 = v40[10];

      v48 = v40[12];

      v49 = v40[14];

      v50 = v40[16];

      v51 = v40[18];

      v52 = v40[20];

      v53 = v40[21];

      v54 = v40[23];

      v55 = v40[25];

      v56 = v40[27];

      v57 = v40[29];

      v58 = v40[31];

      v59 = v40[33];

      v60 = v40[35];

      v61 = v40[37];

      v41 = v40[38];
    }

    v62 = v40[41];

    v63 = v40[43];
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v67, v2 | 7);
}

uint64_t sub_24A3C4B9C()
{
  v1 = type metadata accessor for FMFLocation();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v67 = *(*(v1 - 8) + 64) + 7;
  v66 = (v67 + v3) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v1 + 32);
  v8 = sub_24A4AAB20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v11 = (v2 + v66 + 8) & ~v2;
  v12 = (v5 + *(v1 + 44));
  v13 = v12[38];
  if (v13)
  {
    if (v12[21])
    {
      v14 = *v12;

      v15 = v12[2];

      v16 = v12[4];

      v17 = v12[6];

      v18 = v12[8];

      v19 = v12[10];

      v20 = v12[12];

      v21 = v12[14];

      v22 = v12[16];

      v23 = v12[18];

      v24 = v12[20];

      v25 = v12[21];

      v26 = v12[23];

      v27 = v12[25];

      v28 = v12[27];

      v29 = v12[29];

      v30 = v12[31];

      v31 = v12[33];

      v32 = v12[35];

      v33 = v12[37];

      v13 = v12[38];
    }

    v34 = v12[41];

    v35 = v12[43];
  }

  v36 = *(v0 + v66);

  v37 = v0 + v11;
  v38 = *(v0 + v11 + 8);

  v39 = *(v1 + 32);
  if (!v10(v0 + v11 + v39, 1, v8))
  {
    (*(v9 + 8))(v37 + v39, v8);
  }

  v40 = (v37 + *(v1 + 44));
  v41 = v40[38];
  if (v41)
  {
    if (v40[21])
    {
      v42 = *v40;

      v43 = v40[2];

      v44 = v40[4];

      v45 = v40[6];

      v46 = v40[8];

      v47 = v40[10];

      v48 = v40[12];

      v49 = v40[14];

      v50 = v40[16];

      v51 = v40[18];

      v52 = v40[20];

      v53 = v40[21];

      v54 = v40[23];

      v55 = v40[25];

      v56 = v40[27];

      v57 = v40[29];

      v58 = v40[31];

      v59 = v40[33];

      v60 = v40[35];

      v61 = v40[37];

      v41 = v40[38];
    }

    v62 = v40[41];

    v63 = v40[43];
  }

  v64 = (v67 + v11) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v64 + 8, v2 | 7);
}

uint64_t sub_24A3C4F08()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A3C4F58()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24A3C4FC0()
{
  v1 = type metadata accessor for FMFLocation();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v70 = *(*(v1 - 8) + 64) + 7;
  v69 = (v70 + v3) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 2);

  v5 = *(v0 + 4);

  v6 = *(v0 + 5);

  v7 = &v0[v3];
  v8 = *&v0[v3 + 8];

  v9 = *(v1 + 32);
  v10 = sub_24A4AAB20();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(&v7[v9], 1, v10))
  {
    (*(v11 + 8))(&v7[v9], v10);
  }

  v13 = (v2 + v69 + 8) & ~v2;
  v14 = &v7[*(v1 + 44)];
  v15 = *(v14 + 38);
  if (v15)
  {
    if (*(v14 + 21))
    {
      v16 = *v14;

      v17 = *(v14 + 2);

      v18 = *(v14 + 4);

      v19 = *(v14 + 6);

      v20 = *(v14 + 8);

      v21 = *(v14 + 10);

      v22 = *(v14 + 12);

      v23 = *(v14 + 14);

      v24 = *(v14 + 16);

      v25 = *(v14 + 18);

      v26 = *(v14 + 20);

      v27 = *(v14 + 21);

      v28 = *(v14 + 23);

      v29 = *(v14 + 25);

      v30 = *(v14 + 27);

      v31 = *(v14 + 29);

      v32 = *(v14 + 31);

      v33 = *(v14 + 33);

      v34 = *(v14 + 35);

      v35 = *(v14 + 37);

      v15 = *(v14 + 38);
    }

    v36 = *(v14 + 41);

    v37 = *(v14 + 43);
  }

  v38 = *&v0[v69];

  v39 = &v0[v13];
  v40 = *&v0[v13 + 8];

  v41 = *(v1 + 32);
  if (!v12(&v0[v13 + v41], 1, v10))
  {
    (*(v11 + 8))(&v39[v41], v10);
  }

  v42 = &v39[*(v1 + 44)];
  v43 = *(v42 + 38);
  if (v43)
  {
    if (*(v42 + 21))
    {
      v44 = *v42;

      v45 = *(v42 + 2);

      v46 = *(v42 + 4);

      v47 = *(v42 + 6);

      v48 = *(v42 + 8);

      v49 = *(v42 + 10);

      v50 = *(v42 + 12);

      v51 = *(v42 + 14);

      v52 = *(v42 + 16);

      v53 = *(v42 + 18);

      v54 = *(v42 + 20);

      v55 = *(v42 + 21);

      v56 = *(v42 + 23);

      v57 = *(v42 + 25);

      v58 = *(v42 + 27);

      v59 = *(v42 + 29);

      v60 = *(v42 + 31);

      v61 = *(v42 + 33);

      v62 = *(v42 + 35);

      v63 = *(v42 + 37);

      v43 = *(v42 + 38);
    }

    v64 = *(v42 + 41);

    v65 = *(v42 + 43);
  }

  v66 = (v70 + v13) & 0xFFFFFFFFFFFFFFF8;
  v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v67 + 8, v2 | 7);
}

uint64_t sub_24A3C534C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A3C5394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24A3C545C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A3C550C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[6];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(a1 + v12, a2, v10);
  }

  v13 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[10];
    goto LABEL_11;
  }

  v15 = sub_24A3C9CEC(&qword_27EF3F7A0, &qword_24A4B6430);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_24A3C56A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24A3C5704(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24A3C5768@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_24A3C57B0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_24A3C57F4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A3C5844@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24A3C5898@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7FMFCore10FMFManager_selectedFriend;
  swift_beginAccess();
  return sub_24A37B740(v3 + v4, a2, &qword_27EF3F2D0, &qword_24A4B4F50);
}

uint64_t sub_24A3C5908@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7FMFCore10FMFManager_isInitialized;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24A3C5960(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7FMFCore10FMFManager_isInitialized;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  return sub_24A3A3944(v5);
}

uint64_t sub_24A3C59BC()
{
  v1 = type metadata accessor for FMFLocation();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v1 + 32);
  v9 = sub_24A4AAB20();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  v11 = (v6 + *(v1 + 44));
  v12 = v11[38];
  if (v12)
  {
    if (v11[21])
    {
      v13 = *v11;

      v14 = v11[2];

      v15 = v11[4];

      v16 = v11[6];

      v17 = v11[8];

      v18 = v11[10];

      v19 = v11[12];

      v20 = v11[14];

      v21 = v11[16];

      v22 = v11[18];

      v23 = v11[20];

      v24 = v11[21];

      v25 = v11[23];

      v26 = v11[25];

      v27 = v11[27];

      v28 = v11[29];

      v29 = v11[31];

      v30 = v11[33];

      v31 = v11[35];

      v32 = v11[37];

      v12 = v11[38];
    }

    v33 = v11[41];

    v34 = v11[43];
  }

  v35 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = *(v0 + v35);

  return MEMORY[0x2821FE8E8](v0, v35 + 8, v2 | 7);
}

uint64_t sub_24A3C5BDC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C5C14()
{
  v1 = type metadata accessor for FMFLocation();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v1 + 32);
  v8 = sub_24A4AAB20();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = (v5 + *(v1 + 44));
  v11 = v10[38];
  if (v11)
  {
    if (v10[21])
    {
      v12 = *v10;

      v13 = v10[2];

      v14 = v10[4];

      v15 = v10[6];

      v16 = v10[8];

      v17 = v10[10];

      v18 = v10[12];

      v19 = v10[14];

      v20 = v10[16];

      v21 = v10[18];

      v22 = v10[20];

      v23 = v10[21];

      v24 = v10[23];

      v25 = v10[25];

      v26 = v10[27];

      v27 = v10[29];

      v28 = v10[31];

      v29 = v10[33];

      v30 = v10[35];

      v31 = v10[37];

      v11 = v10[38];
    }

    v32 = v10[41];

    v33 = v10[43];
  }

  v34 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = *(v0 + v34);

  v37 = *(v0 + v35 + 8);

  return MEMORY[0x2821FE8E8](v0, v35 + 16, v2 | 7);
}

uint64_t sub_24A3C5E40()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A3C5E80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A3C5EB8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A3C5F00()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A3C5F84()
{
  v1 = (type metadata accessor for FMReverseGeocodingRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + v3 + 8);

  v7 = v1[8];
  v8 = sub_24A4AAB80();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v3 + v7, v8);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + v10 + 8);

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v2 | 7);
}

uint64_t sub_24A3C60D8()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  if (v0[25])
  {
    v2 = v0[4];

    v3 = v0[6];

    v4 = v0[8];

    v5 = v0[10];

    v6 = v0[12];

    v7 = v0[14];

    v8 = v0[16];

    v9 = v0[18];

    v10 = v0[20];

    v11 = v0[22];

    v12 = v0[24];

    v13 = v0[25];

    v14 = v0[27];

    v15 = v0[29];

    v16 = v0[31];

    v17 = v0[33];

    v18 = v0[35];

    v19 = v0[37];

    v20 = v0[39];

    v21 = v0[41];
  }

  return MEMORY[0x2821FE8E8](v0, 336, 7);
}

uint64_t sub_24A3C61C0()
{
  v1 = (type metadata accessor for FMReverseGeocodingRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v6 + 8);

  v8 = v1[8];
  v9 = sub_24A4AAB80();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  if (*(v0 + v4))
  {
    v11 = *(v0 + v4 + 8);
  }

  v12 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + v12);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v2 | 7);
}

uint64_t sub_24A3C6330()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[11];

  v7 = v0[13];

  v8 = v0[15];

  v9 = v0[17];

  v10 = v0[19];

  v11 = v0[21];

  v12 = v0[23];

  v13 = v0[24];

  v14 = v0[26];

  v15 = v0[28];

  v16 = v0[30];

  v17 = v0[32];

  v18 = v0[34];

  v19 = v0[36];

  v20 = v0[38];

  v21 = v0[40];

  if (v0[41])
  {
    v22 = v0[42];
  }

  return MEMORY[0x2821FE8E8](v0, 344, 7);
}

uint64_t sub_24A3C6424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24A3C64E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A3C6590()
{
  v1 = type metadata accessor for FMFFriend();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 40);

  v11 = v1[8];
  v12 = sub_24A4AAAD0();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v6 + v11, v12);
  }

  v14 = *(v6 + v1[16]);

  v15 = *(v6 + v1[17]);

  v16 = (v6 + v1[19]);
  if (v16[1])
  {

    v17 = v16[3];

    v18 = v16[6];
  }

  v19 = v6 + v1[20];
  v20 = type metadata accessor for FMFLocation();
  if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    v21 = *(v19 + 8);

    v22 = *(v20 + 32);
    v23 = sub_24A4AAB20();
    v24 = *(v23 - 8);
    if (!(*(v24 + 48))(v19 + v22, 1, v23))
    {
      (*(v24 + 8))(v19 + v22, v23);
    }

    v25 = (v19 + *(v20 + 44));
    v26 = v25[38];
    if (v26)
    {
      if (v25[21])
      {
        v27 = *v25;

        v28 = v25[2];

        v29 = v25[4];

        v30 = v25[6];

        v31 = v25[8];

        v32 = v25[10];

        v33 = v25[12];

        v34 = v25[14];

        v35 = v25[16];

        v36 = v25[18];

        v37 = v25[20];

        v38 = v25[21];

        v39 = v25[23];

        v40 = v25[25];

        v41 = v25[27];

        v42 = v25[29];

        v43 = v25[31];

        v44 = v25[33];

        v45 = v25[35];

        v46 = v25[37];

        v26 = v25[38];
      }

      v47 = v25[41];

      v48 = v25[43];
    }
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_24A3C68CC()
{
  v1 = type metadata accessor for FMFFriend();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 40);

  v11 = v1[8];
  v12 = sub_24A4AAAD0();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v6 + v11, v12);
  }

  v14 = *(v6 + v1[16]);

  v15 = *(v6 + v1[17]);

  v16 = (v6 + v1[19]);
  if (v16[1])
  {

    v17 = v16[3];

    v18 = v16[6];
  }

  v19 = v6 + v1[20];
  v20 = type metadata accessor for FMFLocation();
  if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    v21 = *(v19 + 8);

    v22 = *(v20 + 32);
    v23 = sub_24A4AAB20();
    v24 = *(v23 - 8);
    if (!(*(v24 + 48))(v19 + v22, 1, v23))
    {
      (*(v24 + 8))(v19 + v22, v23);
    }

    v25 = (v19 + *(v20 + 44));
    v26 = v25[38];
    if (v26)
    {
      if (v25[21])
      {
        v27 = *v25;

        v28 = v25[2];

        v29 = v25[4];

        v30 = v25[6];

        v31 = v25[8];

        v32 = v25[10];

        v33 = v25[12];

        v34 = v25[14];

        v35 = v25[16];

        v36 = v25[18];

        v37 = v25[20];

        v38 = v25[21];

        v39 = v25[23];

        v40 = v25[25];

        v41 = v25[27];

        v42 = v25[29];

        v43 = v25[31];

        v44 = v25[33];

        v45 = v25[35];

        v46 = v25[37];

        v26 = v25[38];
      }

      v47 = v25[41];

      v48 = v25[43];
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24A3C6BFC()
{
  v1 = v0[3];

  if (v0[4])
  {

    v2 = v0[6];

    v3 = v0[8];

    v4 = v0[10];
  }

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

uint64_t sub_24A3C6C68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24A3C6CC4(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_delegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24A3C6D28()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A3C6D68()
{
  MEMORY[0x24C219220](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C6DA0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A3C6DF0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A3C6E48()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A3C6E98()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C6ED0()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 67, 7);
}

uint64_t sub_24A3C6F18()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A3C6F94()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C6FCC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24A3C7004()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A3C703C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A3C7074()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A3C70C4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24A3C7124()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C718C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A3C71D4()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A3C72C0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_24A406830(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24A3C7340()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A3C73A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C73E0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  v7 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24A3C744C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C7490()
{
  v1 = type metadata accessor for FMFFriend();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 40);

  v11 = v1[8];
  v12 = sub_24A4AAAD0();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v6 + v11, v12);
  }

  v14 = *(v6 + v1[16]);

  v15 = *(v6 + v1[17]);

  v16 = (v6 + v1[19]);
  if (v16[1])
  {

    v17 = v16[3];

    v18 = v16[6];
  }

  v19 = v6 + v1[20];
  v20 = type metadata accessor for FMFLocation();
  if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    v21 = *(v19 + 8);

    v22 = *(v20 + 32);
    v23 = sub_24A4AAB20();
    v24 = *(v23 - 8);
    if (!(*(v24 + 48))(v19 + v22, 1, v23))
    {
      (*(v24 + 8))(v19 + v22, v23);
    }

    v25 = (v19 + *(v20 + 44));
    v26 = v25[38];
    if (v26)
    {
      if (v25[21])
      {
        v27 = *v25;

        v28 = v25[2];

        v29 = v25[4];

        v30 = v25[6];

        v31 = v25[8];

        v32 = v25[10];

        v33 = v25[12];

        v34 = v25[14];

        v35 = v25[16];

        v36 = v25[18];

        v37 = v25[20];

        v38 = v25[21];

        v39 = v25[23];

        v40 = v25[25];

        v41 = v25[27];

        v42 = v25[29];

        v43 = v25[31];

        v44 = v25[33];

        v45 = v25[35];

        v46 = v25[37];

        v26 = v25[38];
      }

      v47 = v25[41];

      v48 = v25[43];
    }
  }

  v49 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = *(v0 + v49 + 8);

  return MEMORY[0x2821FE8E8](v0, v49 + 16, v2 | 7);
}

uint64_t sub_24A3C77D0()
{
  v1 = type metadata accessor for FMFFriend();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  v8 = *(v0 + 6);

  v9 = &v0[v3];
  v10 = *&v0[v3 + 8];

  v11 = *&v0[v3 + 24];

  v12 = *&v0[v3 + 32];

  v13 = *&v0[v3 + 40];

  v14 = v1[8];
  v15 = sub_24A4AAAD0();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(&v0[v3 + v14], 1, v15))
  {
    (*(v16 + 8))(&v9[v14], v15);
  }

  v17 = *&v9[v1[16]];

  v18 = *&v9[v1[17]];

  v19 = &v9[v1[19]];
  if (*(v19 + 1))
  {

    v20 = *(v19 + 3);

    v21 = *(v19 + 6);
  }

  v22 = &v9[v1[20]];
  v23 = type metadata accessor for FMFLocation();
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    v24 = *(v22 + 1);

    v25 = *(v23 + 32);
    v26 = sub_24A4AAB20();
    v27 = *(v26 - 8);
    if (!(*(v27 + 48))(&v22[v25], 1, v26))
    {
      (*(v27 + 8))(&v22[v25], v26);
    }

    v28 = &v22[*(v23 + 44)];
    v29 = *(v28 + 38);
    if (v29)
    {
      if (*(v28 + 21))
      {
        v30 = *v28;

        v31 = *(v28 + 2);

        v32 = *(v28 + 4);

        v33 = *(v28 + 6);

        v34 = *(v28 + 8);

        v35 = *(v28 + 10);

        v36 = *(v28 + 12);

        v37 = *(v28 + 14);

        v38 = *(v28 + 16);

        v39 = *(v28 + 18);

        v40 = *(v28 + 20);

        v41 = *(v28 + 21);

        v42 = *(v28 + 23);

        v43 = *(v28 + 25);

        v44 = *(v28 + 27);

        v45 = *(v28 + 29);

        v46 = *(v28 + 31);

        v47 = *(v28 + 33);

        v48 = *(v28 + 35);

        v49 = *(v28 + 37);

        v29 = *(v28 + 38);
      }

      v50 = *(v28 + 41);

      v51 = *(v28 + 43);
    }
  }

  v52 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = *&v0[v52 + 8];

  return MEMORY[0x2821FE8E8](v0, v52 + 16, v2 | 7);
}

uint64_t sub_24A3C7B28()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A3C7B70()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24A3C7BC8()
{
  v1 = type metadata accessor for FMFLocationAlert();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v50 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = v0 + v3 + v1[12];
  v9 = type metadata accessor for FMFSchedule();
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = *(v9 + 40);
    v11 = sub_24A4AABE0();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v8 + v10, 1, v11))
    {
      (*(v12 + 8))(v8 + v10, v11);
    }
  }

  v13 = *(v6 + v1[13] + 8);

  v14 = *(v6 + v1[14] + 8);

  v15 = *(v6 + v1[16]);

  v16 = *(v6 + v1[17]);

  v17 = *(v6 + v1[18]);

  v18 = *(v6 + v1[19] + 8);

  v19 = *(v6 + v1[20] + 8);

  v20 = *(v6 + v1[22] + 8);

  v21 = (v6 + v1[23]);
  if (v21[21])
  {
    v22 = *v21;

    v23 = v21[2];

    v24 = v21[4];

    v25 = v21[6];

    v26 = v21[8];

    v27 = v21[10];

    v28 = v21[12];

    v29 = v21[14];

    v30 = v21[16];

    v31 = v21[18];

    v32 = v21[20];

    v33 = v21[21];

    v34 = v21[23];

    v35 = v21[25];

    v36 = v21[27];

    v37 = v21[29];

    v38 = v21[31];

    v39 = v21[33];

    v40 = v21[35];

    v41 = v21[37];
  }

  v42 = v1[26];
  v43 = sub_24A4AAAD0();
  v44 = *(v43 - 8);
  v45 = *(v44 + 48);
  if (!v45(v6 + v42, 1, v43))
  {
    (*(v44 + 8))(v6 + v42, v43);
  }

  v46 = v1[27];
  if (!v45(v6 + v46, 1, v43))
  {
    (*(v44 + 8))(v6 + v46, v43);
  }

  v47 = (v50 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = *(v0 + v47 + 8);

  return MEMORY[0x2821FE8E8](v0, v47 + 16, v2 | 7);
}

uint64_t sub_24A3C7F84()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24A3C8068()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C80A0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24A3C815C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24A3C8230()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A3C8268()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v6 = *(v0 + v4);

  sub_24A49B34C(*(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16));

  return MEMORY[0x2821FE8E8](v0, v5 + 17, v2 | 7);
}

uint64_t sub_24A3C8314()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v7 = *(v0 + v5 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24A3C8498(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24A3C84A8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t KoreaFeatureFlag.hashValue.getter()
{
  sub_24A4AC360();
  MEMORY[0x24C218780](0);
  return sub_24A4AC3A0();
}

uint64_t sub_24A3C8554()
{
  sub_24A4AC360();
  MEMORY[0x24C218780](0);
  return sub_24A4AC3A0();
}

uint64_t sub_24A3C85C0()
{
  sub_24A4AC360();
  MEMORY[0x24C218780](0);
  return sub_24A4AC3A0();
}

unint64_t sub_24A3C8604()
{
  result = qword_27EF3ED10;
  if (!qword_27EF3ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3ED10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KoreaFeatureFlag(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for KoreaFeatureFlag(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

_DWORD *sub_24A3C879C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_24A3C87B8(uint64_t a1, id *a2)
{
  result = sub_24A4AB830();
  *a2 = 0;
  return result;
}

uint64_t sub_24A3C8830(uint64_t a1, id *a2)
{
  v3 = sub_24A4AB840();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24A3C88B0@<X0>(uint64_t *a1@<X8>)
{
  sub_24A4AB850();
  v2 = sub_24A4AB820();

  *a1 = v2;
  return result;
}

BOOL sub_24A3C88FC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_24A3C893C(uint64_t a1)
{
  v2 = sub_24A3AA0FC(&qword_27EF3EDC0, type metadata accessor for SecureLocationsStewieError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_24A3C89A8(uint64_t a1)
{
  v2 = sub_24A3AA0FC(&qword_27EF3EDC0, type metadata accessor for SecureLocationsStewieError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_24A3C8A14(void *a1, uint64_t a2)
{
  v4 = sub_24A3AA0FC(&qword_27EF3EDC0, type metadata accessor for SecureLocationsStewieError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_24A3C8AC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3AA0FC(&qword_27EF3EDC0, type metadata accessor for SecureLocationsStewieError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_24A3C8B44()
{
  v2 = *v0;
  sub_24A4AC360();
  sub_24A4AB7E0();
  return sub_24A4AC3A0();
}

uint64_t sub_24A3C8BB8(uint64_t a1)
{
  v2 = sub_24A3AA0FC(&qword_27EF3EDE0, type metadata accessor for FileAttributeKey);
  v3 = sub_24A3AA0FC(&qword_27EF3EDE8, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24A3C8D04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A4AB820();

  *a2 = v5;
  return result;
}

uint64_t sub_24A3C8D4C(uint64_t a1)
{
  v2 = sub_24A3AA0FC(&qword_27EF3EDD0, type metadata accessor for FileProtectionType);
  v3 = sub_24A3AA0FC(&qword_27EF3EDD8, type metadata accessor for FileProtectionType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24A3C8E98(uint64_t a1)
{
  v2 = sub_24A3AA0FC(&qword_27EF3ED88, type metadata accessor for SecureLocationsStewieError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24A3C8F04(uint64_t a1)
{
  v2 = sub_24A3AA0FC(&qword_27EF3ED88, type metadata accessor for SecureLocationsStewieError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24A3C8F74(uint64_t a1)
{
  v2 = sub_24A3AA0FC(&qword_27EF3EDC0, type metadata accessor for SecureLocationsStewieError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_24A3C8FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A3AA0FC(&qword_27EF3EDC0, type metadata accessor for SecureLocationsStewieError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_24A3C9064()
{
  v1 = *v0;
  v2 = sub_24A4AB850();
  v3 = MEMORY[0x24C217DE0](v2);

  return v3;
}

uint64_t sub_24A3C90A0()
{
  v1 = *v0;
  sub_24A4AB850();
  sub_24A4AB8F0();
}

uint64_t sub_24A3C90F4()
{
  v1 = *v0;
  sub_24A4AB850();
  sub_24A4AC360();
  sub_24A4AB8F0();
  v2 = sub_24A4AC3A0();

  return v2;
}

uint64_t sub_24A3C9168(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24A4AB850();
  v6 = v5;
  if (v4 == sub_24A4AB850() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A4AC270();
  }

  return v9 & 1;
}

unint64_t sub_24A3C9400()
{
  result = qword_27EF3EDB0;
  if (!qword_27EF3EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3EDB0);
  }

  return result;
}

Swift::String __swiftcall FMFSchedule.DaysOfWeek.description()()
{
  v4 = *v0;
  v1 = sub_24A4AC240();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

void *sub_24A3C9634@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_24A3C9660@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_24A3C9754()
{
  *v0;
  *v0;
  *v0;
  sub_24A4AB8F0();
}

uint64_t sub_24A3C9870@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A3CC468();
  *a2 = result;
  return result;
}

void sub_24A3C98A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000072;
  v4 = 0x756F487472617473;
  v5 = 0xE800000000000000;
  v6 = 0x737961446E617073;
  if (v2 != 5)
  {
    v6 = 0x7A5465636E6566;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6E694D646E65;
  if (v2 != 3)
  {
    v8 = 0x6557664F73796164;
    v7 = 0xEA00000000006B65;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6E694D7472617473;
  if (v2 != 1)
  {
    v10 = 0x72756F48646E65;
    v9 = 0xE700000000000000;
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

uint64_t sub_24A3C9984()
{
  v1 = *v0;
  v2 = 0x756F487472617473;
  v3 = 0x737961446E617073;
  if (v1 != 5)
  {
    v3 = 0x7A5465636E6566;
  }

  v4 = 0x6E694D646E65;
  if (v1 != 3)
  {
    v4 = 0x6557664F73796164;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E694D7472617473;
  if (v1 != 1)
  {
    v5 = 0x72756F48646E65;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24A3C9A64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A3CC468();
  *a1 = result;
  return result;
}

uint64_t sub_24A3C9A98(uint64_t a1)
{
  v2 = sub_24A3CA450();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A3C9AD4(uint64_t a1)
{
  v2 = sub_24A3CA450();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMFSchedule.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FMFSchedule() + 40);

  return sub_24A3C9C7C(v3, a1);
}

uint64_t sub_24A3C9C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3EF80, &qword_24A4B40D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A3C9CEC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t FMFSchedule.timeZone.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FMFSchedule() + 40);

  return sub_24A3C9D78(a1, v3);
}

uint64_t sub_24A3C9D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3EF80, &qword_24A4B40D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t FMFSchedule.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24A3C9CEC(&qword_27EF3EF80, &qword_24A4B40D8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  v6 = *(type metadata accessor for FMFSchedule() + 40);
  v7 = sub_24A4AABE0();
  v8 = *(*(v7 - 8) + 56);
  v8((a1 + v6), 1, 1, v7);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_24A4B40B0;
  *(a1 + 32) = xmmword_24A4B40C0;
  sub_24A4AABD0();
  v8(v5, 0, 1, v7);
  return sub_24A3C9D78(v5, a1 + v6);
}

uint64_t FMFSchedule.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v4 = sub_24A3C9CEC(&qword_27EF3EF80, &qword_24A4B40D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v42 - v6;
  v8 = sub_24A3C9CEC(&qword_27EF3EF88, &qword_24A4B40E0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  v13 = type metadata accessor for FMFSchedule();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = (&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v15 + 48);
  v19 = sub_24A4AABE0();
  v20 = *(*(v19 - 8) + 56);
  v46 = v17;
  v44 = v18;
  v20(v17 + v18, 1, 1, v19);
  v22 = a1[3];
  v21 = a1[4];
  v45 = a1;
  sub_24A37EACC(a1, v22);
  sub_24A3CA450();
  sub_24A4AC3C0();
  if (v2)
  {
    v23 = v46;
    sub_24A37EEE0(v45);
    return sub_24A37EF2C(v23 + v44, &qword_27EF3EF80, &qword_24A4B40D8);
  }

  else
  {
    v24 = v7;
    v25 = v43;
    v26 = v9;
    v54 = 0;
    v27 = sub_24A4AC150();
    v28 = v8;
    v29 = v46;
    *v46 = v27;
    v53 = 1;
    v29[1] = sub_24A4AC150();
    v52 = 2;
    v29[2] = sub_24A4AC150();
    v51 = 3;
    v29[3] = sub_24A4AC150();
    v50 = 5;
    v29[5] = sub_24A4AC150();
    v49 = 4;
    v29[4] = sub_24A4AC150();
    v48 = 6;
    sub_24A4AC120();
    v42 = v12;
    sub_24A4AAB90();

    sub_24A3C9D78(v24, v29 + v44);
    v44 = FMFSchedule.debugDescription.getter();
    v32 = v31;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v33 = sub_24A4AB630();
    sub_24A378E18(v33, qword_27EF4E260);

    v34 = sub_24A4AB600();
    v35 = sub_24A4ABCE0();

    v36 = v26;
    if (os_log_type_enabled(v34, v35))
    {
      v37 = swift_slowAlloc();
      v38 = v35;
      v39 = swift_slowAlloc();
      v47 = v39;
      *v37 = 136315138;
      v40 = sub_24A37BD58(v44, v32, &v47);
      v44 = v28;
      v41 = v40;

      *(v37 + 4) = v41;
      _os_log_impl(&dword_24A376000, v34, v38, "FMFCore.FMFSchedule: initialized with coder %s", v37, 0xCu);
      sub_24A37EEE0(v39);
      MEMORY[0x24C219130](v39, -1, -1);
      MEMORY[0x24C219130](v37, -1, -1);

      v29 = v46;
      (*(v36 + 8))(v42, v44);
    }

    else
    {

      (*(v26 + 8))(v42, v28);
    }

    sub_24A3CBAFC(v29, v25);
    sub_24A37EEE0(v45);
    return sub_24A3CBB60(v29);
  }
}

unint64_t sub_24A3CA450()
{
  result = qword_27EF3EF90;
  if (!qword_27EF3EF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3EF90);
  }

  return result;
}

uint64_t FMFSchedule.debugDescription.getter()
{
  v1 = sub_24A3C9CEC(&qword_27EF3EF80, &qword_24A4B40D8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - v3;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_24A4ABF50();
  MEMORY[0x24C217D50](60, 0xE100000000000000);
  MEMORY[0x24C217D50](0x6465686353464D46, 0xEB00000000656C75);
  MEMORY[0x24C217D50](0x487472617473203ALL, 0xED0000203A72756FLL);
  v18 = *v0;
  v5 = sub_24A4AC240();
  MEMORY[0x24C217D50](v5);

  MEMORY[0x24C217D50](0x694D747261747320, 0xEB00000000203A6ELL);
  v18 = v0[1];
  v6 = sub_24A4AC240();
  MEMORY[0x24C217D50](v6);

  MEMORY[0x24C217D50](0x72756F48646E6520, 0xEA0000000000203ALL);
  v18 = v0[2];
  v7 = sub_24A4AC240();
  MEMORY[0x24C217D50](v7);

  MEMORY[0x24C217D50](0x3A6E694D646E6520, 0xE900000000000020);
  v18 = v0[3];
  v8 = sub_24A4AC240();
  MEMORY[0x24C217D50](v8);

  v10 = v19;
  v9 = v20;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_24A4ABF50();
  MEMORY[0x24C217D50](0x57664F7379616420, 0xED0000203A6B6565);
  v18 = v0[4];
  sub_24A4AC030();
  MEMORY[0x24C217D50](0x7961446E61707320, 0xEB00000000203A73);
  v18 = v0[5];
  v11 = sub_24A4AC240();
  MEMORY[0x24C217D50](v11);

  MEMORY[0x24C217D50](0x6E6F5A656D697420, 0xEB00000000203A65);
  v12 = type metadata accessor for FMFSchedule();
  sub_24A3C9C7C(v0 + *(v12 + 40), v4);
  v13 = sub_24A4AB870();
  MEMORY[0x24C217D50](v13);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  v14 = v19;
  v15 = v20;
  v19 = v10;
  v20 = v9;

  MEMORY[0x24C217D50](v14, v15);

  return v19;
}

uint64_t FMFSchedule.init(fmlSchedule:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24A3C9CEC(&qword_27EF3EF80, &qword_24A4B40D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v40 - v6;
  v8 = sub_24A4AAED0();
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A4AB170();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v45 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - v17;
  v19 = *(type metadata accessor for FMFSchedule() + 40);
  v20 = sub_24A4AABE0();
  v21 = *(v20 - 8);
  v41 = *(v21 + 56);
  v42 = v19;
  v40 = v21 + 56;
  v41(a2 + v19, 1, 1, v20);
  sub_24A4AB110();
  v22 = sub_24A4AB150();
  v23 = *(v13 + 8);
  result = v23(v18, v12);
  if (v22 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  *a2 = v22;
  sub_24A4AB110();
  v25 = sub_24A4AB160();
  result = v23(v18, v12);
  if (v25 < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  a2[1] = v25;
  sub_24A4AB0F0();
  v26 = sub_24A4AB150();
  result = v23(v18, v12);
  if (v26 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  a2[2] = v26;
  sub_24A4AB0F0();
  v27 = sub_24A4AB160();
  result = v23(v18, v12);
  if ((v27 & 0x8000000000000000) == 0)
  {
    a2[3] = v27;
    sub_24A4AB0E0();
    v28 = sub_24A4AAEC0();
    (*(v43 + 8))(v11, v44);
    a2[4] = v28;
    sub_24A4AB120();
    v41(v7, 0, 1, v20);
    sub_24A3C9D78(v7, a2 + v42);
    sub_24A4AB0F0();
    v29 = sub_24A4AB150();
    v23(v18, v12);
    v30 = v45;
    sub_24A4AB110();
    v31 = sub_24A4AB150();
    v23(v30, v12);
    if (v29 < v31)
    {
      v32 = sub_24A4AB130();
      result = (*(*(v32 - 8) + 8))(a1, v32);
      v33 = 1;
LABEL_12:
      a2[5] = v33;
      return result;
    }

    sub_24A4AB0F0();
    v34 = sub_24A4AB150();
    v23(v18, v12);
    sub_24A4AB110();
    v35 = sub_24A4AB150();
    v23(v30, v12);
    if (v34 == v35)
    {
      sub_24A4AB0F0();
      v36 = sub_24A4AB160();
      v23(v18, v12);
      sub_24A4AB110();
      v37 = sub_24A4AB160();
      v38 = sub_24A4AB130();
      (*(*(v38 - 8) + 8))(a1, v38);
      result = v23(v30, v12);
      if (v36 < v37)
      {
        v33 = 1;
        goto LABEL_12;
      }
    }

    else
    {
      v39 = sub_24A4AB130();
      result = (*(*(v39 - 8) + 8))(a1, v39);
    }

    v33 = 0;
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_24A3CAD34@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v49 = sub_24A4AAED0();
  v47 = *(v49 - 8);
  v2 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v46 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v45 = &v40 - v5;
  v6 = sub_24A4AB170();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v50 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v51 = &v40 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v17 = sub_24A3C9CEC(&qword_27EF3EF80, &qword_24A4B40D8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v40 - v19;
  v21 = sub_24A4AABE0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v42 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v40 - v26;
  v28 = type metadata accessor for FMFSchedule();
  sub_24A3C9C7C(v1 + *(v28 + 40), v20);
  v29 = *(v22 + 48);
  v30 = v29(v20, 1, v21);
  v43 = v27;
  if (v30 == 1)
  {
    sub_24A4AABD0();
    v31 = v22;
    if (v29(v20, 1, v21) != 1)
    {
      sub_24A37EF2C(v20, &qword_27EF3EF80, &qword_24A4B40D8);
    }
  }

  else
  {
    (*(v22 + 32))(v27, v20, v21);
    v31 = v22;
  }

  result = *v1;
  if ((*v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v1[1] & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_24A4AB140();
  result = v1[2];
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v1[3] & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_24A4AB140();
  result = v1[4];
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (result <= 0xFF)
  {
    v33 = v45;
    sub_24A4AAEB0();
    v34 = v44;
    v35 = *(v44 + 16);
    v35(v11, v16, v6);
    v40 = v11;
    v41 = v16;
    v35(v50, v51, v6);
    v36 = v47;
    v37 = v49;
    (*(v47 + 16))(v46, v33, v49);
    v38 = v43;
    (*(v31 + 16))(v42, v43, v21);
    sub_24A4AB100();
    (*(v36 + 8))(v33, v37);
    v39 = *(v34 + 8);
    v39(v51, v6);
    v39(v41, v6);
    return (*(v31 + 8))(v38, v21);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t FMFSchedule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24A3C9CEC(&qword_27EF3EF80, &qword_24A4B40D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for FMFSchedule();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v11 + 40);
  v15 = sub_24A4AABE0();
  v16 = *(*(v15 - 8) + 56);
  v16(v13 + v14, 1, 1, v15);
  if (a1)
  {
    v17 = a1;
    result = [v17 startHour];
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      *v13 = result;
      result = [v17 startMin];
      if ((result & 0x8000000000000000) == 0)
      {
        v13[1] = result;
        result = [v17 endHour];
        if ((result & 0x8000000000000000) == 0)
        {
          v13[2] = result;
          result = [v17 endMin];
          if ((result & 0x8000000000000000) == 0)
          {
            v13[3] = result;
            v13[4] = [v17 daysOfWeek];
            result = [v17 spanDays];
            if ((result & 0x8000000000000000) == 0)
            {
              v13[5] = result;
              v19 = [v17 timeZone];
              v25 = v8;
              v20 = v14;
              v21 = v16;
              v22 = a2;
              v23 = v19;
              sub_24A4AABC0();

              v21(v7, 0, 1, v15);
              sub_24A3C9D78(v7, v13 + v20);
              sub_24A3CBAFC(v13, v22);
              (*(v9 + 56))(v22, 0, 1, v25);
              return sub_24A3CBB60(v13);
            }

            goto LABEL_14;
          }

LABEL_13:
          __break(1u);
LABEL_14:
          __break(1u);
          return result;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  sub_24A37EF2C(v13 + v14, &qword_27EF3EF80, &qword_24A4B40D8);
  return (*(v9 + 56))(a2, 1, 1, v8);
}

id sub_24A3CB4CC()
{
  v1 = sub_24A3C9CEC(&qword_27EF3EF80, &qword_24A4B40D8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14 - v3;
  v5 = sub_24A4AABE0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x277D07BD8]) init];
  if ((*v0 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = result;
  result = [result setStartHour_];
  if ((v0[1] & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = [v11 setStartMin_];
  if ((v0[2] & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = [v11 setEndHour_];
  if ((v0[3] & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v11 setEndMin_];
  result = [v11 setDaysOfWeek_];
  if ((v0[5] & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  [v11 setSpanDays_];
  v12 = type metadata accessor for FMFSchedule();
  sub_24A3C9C7C(v0 + *(v12 + 40), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_24A37EF2C(v4, &qword_27EF3EF80, &qword_24A4B40D8);
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v13 = sub_24A4AABB0();
    [v11 setTimeZone_];

    (*(v6 + 8))(v9, v5);
  }

  return v11;
}

uint64_t FMFSchedule.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A3C9CEC(&qword_27EF3EF80, &qword_24A4B40D8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v28 - v7;
  v9 = sub_24A3C9CEC(&qword_27EF3EF98, &qword_24A4B40E8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v28 - v12;
  v14 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A3CA450();
  sub_24A4AC3D0();
  v15 = *v3;
  LOBYTE(v28[0]) = 0;
  sub_24A4AC1E0();
  if (v2)
  {
    return (*(v10 + 8))(v13, v9);
  }

  v16 = v3[1];
  LOBYTE(v28[0]) = 1;
  sub_24A4AC1E0();
  v17 = v3[2];
  LOBYTE(v28[0]) = 2;
  sub_24A4AC1E0();
  v18 = v3[3];
  LOBYTE(v28[0]) = 3;
  sub_24A4AC1E0();
  v19 = v3[4];
  LOBYTE(v28[0]) = 4;
  sub_24A4AC1E0();
  v21 = v3[5];
  LOBYTE(v28[0]) = 5;
  sub_24A4AC1E0();
  v22 = type metadata accessor for FMFSchedule();
  sub_24A3C9C7C(v3 + *(v22 + 40), v8);
  v23 = sub_24A4AABE0();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v8, 1, v23) == 1)
  {
    sub_24A37EF2C(v8, &qword_27EF3EF80, &qword_24A4B40D8);
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v25 = sub_24A4AABA0();
    v26 = v27;
    (*(v24 + 8))(v8, v23);
  }

  v28[0] = v25;
  v28[1] = v26;
  v29 = 6;
  sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
  sub_24A38D258();
  sub_24A4AC1F0();

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_24A3CBAFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFSchedule();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A3CBB60(uint64_t a1)
{
  v2 = type metadata accessor for FMFSchedule();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A3CBBBC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_24A3CBC30(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_24A37BD58(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

_BYTE **sub_24A3CBC8C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_24A3CBC9C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t _s7FMFCore11FMFScheduleV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_24A4AABE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A3C9CEC(&qword_27EF3EF80, &qword_24A4B40D8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = sub_24A3C9CEC(&qword_27EF3EFF8, &qword_24A4B44D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5])
  {
    v22 = 0;
    return v22 & 1;
  }

  v18 = v15;
  v19 = *(type metadata accessor for FMFSchedule() + 40);
  v20 = *(v18 + 48);
  sub_24A3C9C7C(a1 + v19, v17);
  sub_24A3C9C7C(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) != 1)
  {
    sub_24A3C9C7C(v17, v12);
    if (v21(&v17[v20], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v20], v4);
      sub_24A3CC4B4();
      v22 = sub_24A4AB810();
      v24 = *(v5 + 8);
      v24(v8, v4);
      v24(v12, v4);
      sub_24A37EF2C(v17, &qword_27EF3EF80, &qword_24A4B40D8);
      return v22 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_14;
  }

  if (v21(&v17[v20], 1, v4) != 1)
  {
LABEL_14:
    sub_24A37EF2C(v17, &qword_27EF3EFF8, &qword_24A4B44D0);
    v22 = 0;
    return v22 & 1;
  }

  sub_24A37EF2C(v17, &qword_27EF3EF80, &qword_24A4B40D8);
  v22 = 1;
  return v22 & 1;
}

unint64_t sub_24A3CC028()
{
  result = qword_27EF3EFA8;
  if (!qword_27EF3EFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3EFA8);
  }

  return result;
}

unint64_t sub_24A3CC080()
{
  result = qword_27EF3EFB0;
  if (!qword_27EF3EFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3EFB0);
  }

  return result;
}

unint64_t sub_24A3CC0D8()
{
  result = qword_27EF3EFB8;
  if (!qword_27EF3EFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3EFB8);
  }

  return result;
}

unint64_t sub_24A3CC130()
{
  result = qword_27EF3EFC0;
  if (!qword_27EF3EFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3EFC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFSchedule.DaysOfWeek(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FMFSchedule.DaysOfWeek(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for FMFSchedule.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FMFSchedule.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24A3CC364()
{
  result = qword_27EF3EFE0;
  if (!qword_27EF3EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3EFE0);
  }

  return result;
}

unint64_t sub_24A3CC3BC()
{
  result = qword_27EF3EFE8;
  if (!qword_27EF3EFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3EFE8);
  }

  return result;
}

unint64_t sub_24A3CC414()
{
  result = qword_27EF3EFF0;
  if (!qword_27EF3EFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3EFF0);
  }

  return result;
}

uint64_t sub_24A3CC468()
{
  v0 = sub_24A4AC0C0();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24A3CC4B4()
{
  result = qword_27EF3F000;
  if (!qword_27EF3F000)
  {
    sub_24A4AABE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F000);
  }

  return result;
}

uint64_t sub_24A3CC50C()
{
  qword_27EF3F010 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_none");

  return swift_unknownObjectRetain();
}

uint64_t sub_24A3CC548()
{
  qword_27EF3F018 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

const char *FMOSActivity.init(_:parent:options:)@<X0>(const char *description@<X0>, char a2@<W2>, os_activity_t *a3@<X3>, os_activity_flag_t *a4@<X4>, os_activity_t *a5@<X8>)
{
  if (a2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!description)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*a3)
  {
    v6 = _os_activity_create(&dword_24A376000, description, *a3, *a4);
    description = swift_unknownObjectRelease();
    *a5 = v6;
    return description;
  }

LABEL_7:
  __break(1u);
  return description;
}

uint64_t sub_24A3CC640@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift_once();
    a3 = v6;
    a2 = v5;
  }

  *a3 = *a2;

  return swift_unknownObjectRetain();
}

uint64_t FMOSActivity.apply(execute:)(const void *a1)
{
  result = _Block_copy(a1);
  v3 = *v1;
  if (v3)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_24A3CC7F4;
    *(v6 + 24) = v5;
    v9[4] = sub_24A37CE0C;
    v9[5] = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_24A37CDDC;
    v9[3] = &unk_285D85418;
    v7 = _Block_copy(v9);

    os_activity_apply(v3, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

const void *static FMOSActivity.start(_:execute:)(const char *a1, int a2, char a3, void *aBlock)
{
  result = _Block_copy(aBlock);
  v7 = result;
  if (qword_27EF3EB98 == -1)
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = swift_once();
  if (a3)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (!a1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = _os_activity_create(&dword_24A376000, a1, qword_27EF3F018, OS_ACTIVITY_FLAG_DEFAULT);
  v9 = _Block_copy(v7);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_24A3CCE10;
  *(v11 + 24) = v10;
  v13[4] = sub_24A3CCE14;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_24A37CDDC;
  v13[3] = &unk_285D85490;
  v12 = _Block_copy(v13);

  os_activity_apply(v8, v12);
  _Block_release(v12);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  _Block_release(v7);
  result = swift_unknownObjectRelease();
  if (v12)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

unint64_t sub_24A3CCA18()
{
  result = qword_27EF3F020;
  if (!qword_27EF3F020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F020);
  }

  return result;
}

unint64_t sub_24A3CCA70()
{
  result = qword_27EF3F028;
  if (!qword_27EF3F028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F028);
  }

  return result;
}

unint64_t sub_24A3CCAC8()
{
  result = qword_27EF3F030;
  if (!qword_27EF3F030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F030);
  }

  return result;
}

unint64_t sub_24A3CCB20()
{
  result = qword_27EF3F038;
  if (!qword_27EF3F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F038);
  }

  return result;
}

BOOL sub_24A3CCBB0(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_24A3CCBE0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
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

int *sub_24A3CCC0C@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_24A3CCCE4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_24A3CCD40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMOSActivity.Options(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FMOSActivity.Options(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t type metadata accessor for FMFSaveFavoritesRequest()
{
  result = qword_27EF3F0A0;
  if (!qword_27EF3F0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24A3CCEB8()
{
  v1 = *(v0 + qword_27EF4DFD0);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = *(v0 + qword_27EF4DFD0);

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  if (v4)
  {
LABEL_8:
    while (1)
    {
      v11 = __clz(__rbit64(v4)) | (v8 << 6);
      v12 = (*(v1 + 48) + 16 * v11);
      v13 = *v12;
      v14 = v12[1];
      v15 = *(*(v1 + 56) + 8 * v11);
      v35[0] = 25705;
      v35[1] = 0xE200000000000000;
      v35[2] = v13;
      v35[3] = v14;
      v35[5] = MEMORY[0x277D837D0];
      v36[0] = 0x726564726FLL;
      v36[5] = MEMORY[0x277D83B88];
      v36[1] = 0xE500000000000000;
      v36[2] = v15;
      sub_24A3C9CEC(&unk_27EF40370, &qword_24A4B4720);
      v16 = sub_24A4AC090();

      sub_24A3CD35C(v35, &v32);
      v17 = v32;
      v18 = v33;
      result = sub_24A39B2C8(v32, v33);
      if (v19)
      {
        break;
      }

      *(v16 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v20 = (v16[6] + 16 * result);
      *v20 = v17;
      v20[1] = v18;
      result = sub_24A3A60B4(v34, (v16[7] + 32 * result));
      v21 = v16[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_21;
      }

      v16[2] = v23;
      sub_24A3CD35C(v36, &v32);
      v24 = v32;
      v25 = v33;
      result = sub_24A39B2C8(v32, v33);
      if (v26)
      {
        break;
      }

      *(v16 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v27 = (v16[6] + 16 * result);
      *v27 = v24;
      v27[1] = v25;
      result = sub_24A3A60B4(v34, (v16[7] + 32 * result));
      v28 = v16[2];
      v22 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v22)
      {
        goto LABEL_21;
      }

      v16[2] = v29;

      sub_24A3C9CEC(&qword_27EF3F0B0, &qword_24A4B4728);
      swift_arrayDestroy();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24A3ED8DC(0, v9[2] + 1, 1, v9);
        v9 = result;
      }

      v31 = v9[2];
      v30 = v9[3];
      if (v31 >= v30 >> 1)
      {
        result = sub_24A3ED8DC((v30 > 1), v31 + 1, 1, v9);
        v9 = result;
      }

      v4 &= v4 - 1;
      v9[2] = v31 + 1;
      v9[v31 + 4] = v16;
      if (!v4)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 >= v5)
      {

        *(&v34[0] + 1) = sub_24A3C9CEC(&qword_27EF3F0B8, &qword_24A4B4730);
        v32 = v9;
        swift_beginAccess();
        sub_24A3A6CEC(&v32, 0x657469726F766166, 0xE900000000000073);
        return swift_endAccess();
      }

      v4 = *(v1 + 64 + 8 * v10);
      ++v8;
      if (v4)
      {
        v8 = v10;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_24A3CD220()
{
  v0 = sub_24A4AAC20();
  v1 = *(v0 + qword_27EF3FC00);

  v2 = *(v0 + qword_27EF3FC08);

  v3 = *(v0 + qword_27EF3FC10);

  v4 = *(v0 + qword_27EF3FC18);

  v5 = *(v0 + qword_27EF3FC20);

  v6 = qword_27EF4E0D8;
  v7 = sub_24A4AAAD0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + qword_27EF4DFD0);

  return v0;
}

uint64_t sub_24A3CD300()
{
  v0 = *sub_24A3CD220();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A3CD35C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F0B0, &qword_24A4B4728);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SPSecureLocationsManager.currentStewieState()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_24A3CD43C, 0, 0);
}

uint64_t sub_24A3CD43C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D089C0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = sub_24A4AAE50();
  *v3 = v0;
  v3[1] = sub_24A3CD530;
  v5 = *(v0 + 16);

  return MEMORY[0x28215EC68](v5, 0xD000000000000014, 0x800000024A4AF0C0, sub_24A3CD7B4, v1, v4);
}

uint64_t sub_24A3CD530()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24A3CD66C, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_24A3CD66C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

void sub_24A3CD6D0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  v8[4] = sub_24A3CFD28;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_24A3CDA38;
  v8[3] = &unk_285D856A0;
  v7 = _Block_copy(v8);

  [a2 currentStewieStateWithCompletion_];
  _Block_release(v7);
}

void sub_24A3CD7BC(unint64_t a1, void *a2)
{
  v4 = sub_24A4AAE50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10[1] = a2;
    v9 = a2;
    sub_24A4AA6D0();
  }

  else
  {
    sub_24A3CD8D8(a1, v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_24A4AA6E0();
    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_24A3CD8D8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 >= 0xA)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v5 = sub_24A4AB630();
    sub_24A378E18(v5, qword_27EF4E260);
    v6 = sub_24A4AB600();
    v7 = sub_24A4ABCC0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = a1;
      _os_log_impl(&dword_24A376000, v6, v7, "FMNetworkUtil: (SPSecureLocationsManager+StewieStateProvider): Failed to map SP Stewie services state %ld to FML one.", v8, 0xCu);
      MEMORY[0x24C219130](v8, -1, -1);
    }

    v4 = MEMORY[0x277D09138];
  }

  else
  {
    v4 = qword_278FE1108[a1];
  }

  v9 = *v4;
  v10 = sub_24A4AAE50();
  v11 = *(*(v10 - 8) + 104);

  return v11(a2, v9, v10);
}

void sub_24A3CDA38(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}